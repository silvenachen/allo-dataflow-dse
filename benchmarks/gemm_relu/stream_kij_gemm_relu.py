# benchmark for kij order gemm_relu with element-wise streaming (actually a column)

import allo
from allo.ir.types import float32
import allo.dataflow as df
import numpy as np

Ty = float32
M, N, K = 64, 64, 64

@df.region()
def gemm_relu_stream_kij():
# Design k -> i -> j streaming GEMM + ReLU (output order is column-wise)
    pipe = df.pipe(dtype=Ty, shape=(M, N), depth=1)

    @df.kernel(mapping=[1])
    def gemm_stage(A: Ty[M, K], B: Ty[K, N]):
        C_partial: Ty[M, N] = 0
        for k in range(K):
            for i in range(M):
                for j in range(N):
                    C_partial[i, j] += A[i, k] * B[k, j]
        pipe.put(C_partial)

    @df.kernel(mapping=[1])
    def relu_stage(Y: Ty[M, N]):
        C_partial: Ty[M, N] = pipe.get()
        for j in range(N):
            for i in range(M):
                Y[i, j] = C_partial[i, j] if C_partial[i, j] > 0 else 0
                    

def test():
    
    A = np.random.randn(M, K).astype(np.float32)
    B = np.random.randn(K, N).astype(np.float32)
    Y = np.zeros((M, N), dtype=np.float32)
    
    mod = df.build( gemm_relu_stream_kij, target="simulator")
    mod(A, B, Y)
    
    golden = np.maximum(A @ B, 0)
    np.testing.assert_allclose(Y, golden, rtol=1e-2)
    print(mod.module)
    print("Simulator passed")
    
    hls_mod = df.build(
         gemm_relu_stream_kij,
        target="vitis_hls",
        mode="csim",
        project="kij_gemm_relu_streaming.prj"
    )
    print("✓ HLS project generated")


if __name__ == "__main__":
    test()