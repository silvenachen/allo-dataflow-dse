# benchmark for jik order gemm_relu with element-wise streaming

import allo
from allo.ir.types import float32
import allo.dataflow as df
import numpy as np

Ty = float32
M, N, K = 64, 64, 64

@df.region()
def gemm_relu_stream_jik():
# Design j -> i -> k streaming GEMM + ReLU (output order is column-wise)
    pipe = df.pipe(dtype=Ty, shape=(), depth=4)  
    @df.kernel(mapping=[1])
    def gemm_stage(A: Ty[M, K], B: Ty[K, N]):
        for j in range(N):
            for i in range(M):
                c_val: Ty = 0  
                for k in range(K):
                    c_val += A[i, k] * B[k, j]
                pipe.put(c_val)

    # ReLU order must match the output order of GEMM
    @df.kernel(mapping=[1])
    def relu_stage(Y: Ty[M, N]):
        for j in range(N):
            for i in range(M):
                c_val: Ty = pipe.get()  
                Y[i, j] = c_val if c_val > 0 else 0

def test():
    
    A = np.random.randn(M, K).astype(np.float32)
    B = np.random.randn(K, N).astype(np.float32)
    Y = np.zeros((M, N), dtype=np.float32)
    
    mod = df.build(gemm_relu_stream_jik, target="simulator")
    mod(A, B, Y)
    
    # golden = np.maximum(A @ B, 0)
    # np.testing.assert_allclose(Y, golden, rtol=1e-2)
    # print("Simulator passed")
    print(mod.module)
    
    hls_mod = df.build(
        gemm_relu_stream_jik,
        target="vitis_hls",
        mode="csim",
        project="jik_gemm_relu_streaming.prj"
    )
    print("✓ HLS project generated")


if __name__ == "__main__":
    test()