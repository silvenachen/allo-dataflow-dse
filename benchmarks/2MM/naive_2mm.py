import allo
from allo.ir.types import float32
import numpy as np
import allo.backend.hls as hls

M, N, K, P = 64, 64, 64, 64
Ty = float32

# define the algorithm: 2MM
def mm1_stage(A: Ty[M, K], B: Ty[K, N], C: Ty[M, N]):
    for i, j, k in allo.grid(M, N, K):
        C[i, j] += A[i, k] * B[k, j]

def mm2_stage(C: Ty[M, N], D: Ty[N, P], E: Ty[M, P]):
    for i, j, k in allo.grid(M, P, N):
        E[i, j] += C[i, k] * D[k, j]

def kernel_2mm(
    A: Ty[M, K], B: Ty[K, N], D: Ty[N, P]
) -> Ty[M, P]:
    C: Ty[M, N] = 0
    E: Ty[M, P] = 0
    mm1_stage(A, B, C)
    mm2_stage(C, D, E)
    return E

# schedule
#mm1: i->k->j
s_mm1 = allo.customize(mm1_stage)
s_mm1.reorder("k", "j")
s_mm1.pipeline("j")

#mm2: i->k->j
s_mm2 = allo.customize(mm2_stage)
s_mm2.reorder("k", "j")
s_mm2.pipeline("j")

schedule = allo.customize(kernel_2mm)
schedule.compose(s_mm1)
schedule.compose(s_mm2)
print(schedule.module)
# verify functionality
A_np = np.random.rand(M, K).astype(np.float32)
B_np = np.random.rand(K, N).astype(np.float32)
D_np = np.random.rand(N, P).astype(np.float32)
intermediate = np.dot(A_np, B_np)
output_ref = np.dot(intermediate, D_np)
sim_mod = schedule.build()
output = sim_mod(A_np, B_np, D_np)
np.testing.assert_allclose(output, output_ref, rtol=1e-5, atol=1e-5)
print("2MM passed correctness check.")

mod = schedule.build(target="vitis_hls", mode="sw_emu", project="2mm_sequential_ikj_ikj.prj")

print("Sequential 2MM: GEMM1(i→k→j) + GEMM2(i→k→j)")