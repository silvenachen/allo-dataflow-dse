import numpy as np
import allo
from allo.ir.types import float32, Stream
import allo.dataflow as df
import allo.backend.hls as hls

# define the algorithm: GEMM followed by ReLU
def gemm_stage(A: float32[64, 64], B: float32[64, 64], C: float32[64, 64]):
    for i, j, k in allo.grid(64, 64, 64):
        C[i, j] += A[i, k] * B[k, j]

def relu_stage(C: float32[64, 64], Y: float32[64, 64]):
    for i, j in allo.grid(64, 64):
        Y[i, j] = C[i, j] if C[i, j] > 0 else 0

def kernel_gemm_relu(
    A: float32[64, 64], B: float32[64, 64]
) -> float32[64, 64]:
    C: float32[64, 64] = 0
    Y: float32[64, 64]
    gemm_stage(A, B, C)
    relu_stage(C, Y)
    return Y

# i, j, k order kept for gemm
s_gemm = allo.customize(gemm_stage)
s_gemm.pipeline("k")
s_relu = allo.customize(relu_stage)
s_relu.pipeline("j")

schedule = allo.customize(kernel_gemm_relu)
schedule.compose(s_gemm)
schedule.compose(s_relu)


# s_gemm = allo.customize(gemm_stage)
# s_gemm.reorder("k", "j")
# s_gemm.pipeline("j")

# s_relu = allo.customize(relu_stage)
# s_relu.pipeline("j")

# schedule = allo.customize(kernel_gemm_relu)
# schedule.compose(s_gemm)
# schedule.compose(s_relu)
# print(schedule.module)
# sim_mod = schedule.build()
# A_np = np.random.rand(64, 64).astype(np.float32)
# B_np = np.random.rand(64, 64).astype(np.float32)
# output_ref = np.maximum(np.dot(A_np, B_np), 0)
# output = sim_mod(A_np, B_np)
# np.testing.assert_allclose(output_ref, output, rtol=1e-5)
# print("GEMM + ReLU computation is correct!")

if hls.is_available("vitis_hls"):
    hls_mod = schedule.build(target="vitis_hls", mode = "csim", project="ijk_pipelined_gemm_relu.prj")
print("HLS C project generated.")