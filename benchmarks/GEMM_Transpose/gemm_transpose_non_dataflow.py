"""
Algorithm Definition: 
A: [M x K]
B: [K x N]
C: [M x N] = A @ B
D = C ^ T

"""

import allo
from allo.ir.types import float32
import numpy as np
import allo.backend.hls as hls

M, N, K = 64, 64, 64
Ty = float32

def gemm_stage(A: Ty[M, K], B: Ty[K, N], C: Ty[M, N]):
    for i, j, k in allo.grid(M, N, K):
        C[i, j] += A[i, k] * B[k, j]

def transpose_stage(C: Ty[M, N], D: Ty[N, M]):
    for i, j in allo.grid(M, N):
        D[j, i] = C[i, j]

def kernel_gemm_transpose(
    A: Ty[M, K], B: Ty[K, N]
) -> Ty[N, M]:
    C: Ty[M, N] = 0
    D: Ty[N, M]
    gemm_stage(A, B, C)
    transpose_stage(C, D)
    return D

# schedule
s_gemm = allo.customize(gemm_stage)
s_gemm.reorder("k", "j")
s_gemm.pipeline("j")

s_transpose = allo.customize(transpose_stage)
s_transpose.pipeline("i")
s_transpose.partition("transpose_stage:C", dim=0, partition_type=2)
s_transpose.partition("transpose_stage:D", dim=1, partition_type=2)

schedule = allo.customize(kernel_gemm_transpose)
schedule.compose(s_gemm)
schedule.compose(s_transpose)

print(schedule.module)

# verify functionality
A_np = np.random.rand(M, K).astype(np.float32)
B_np = np.random.rand(K, N).astype(np.float32)
output_ref = np.dot(A_np, B_np).T
sim_mod = schedule.build()
output = sim_mod(A_np, B_np)
np.testing.assert_allclose(output, output_ref, rtol=1e-5, atol=1e-5)
print("GEMM with Transpose passed correctness check.")

if hls.is_available("vitis_hls"):
    # build for Vitis HLS
    hls_mod = schedule.build(target="vitis_hls", mode="csim", project="naive_pipelined_gemm_transpose.prj")
    print("Vitis HLS build completed.")