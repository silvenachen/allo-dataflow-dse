# benchmarks/gemm_relu/dataflow/row_wise_streaming.py
"""
Design 2: Row-wise Streaming (Correct Old API)
Token: Row (N elements)
FIFO: depth=4
"""

import allo
from allo.ir.types import float32
import allo.dataflow as df
import numpy as np

Ty = float32
M, N, K = 64, 64, 64


@df.region()
def gemm_relu_row_wise():
    """Row-wise streaming: i→k→j"""
    pipe = df.pipe(dtype=Ty, shape=(N,), depth=4)
    
    @df.kernel(mapping=[1])
    def gemm_stage(A: Ty[M, K], B: Ty[K, N]):
        for i in range(M):
            c_row: Ty[N] = 0  
            for k in range(K):
                a_val: Ty = A[i, k]
                for j in range(N):
                    c_row[j] += a_val * B[k, j]
            pipe.put(c_row)  
    
    @df.kernel(mapping=[1])
    def relu_stage(Y: Ty[M, N]):
        for i in range(M):
            c_row: Ty[N] = pipe.get()  # Receive entire row
            for j in range(N):
                Y[i, j] = c_row[j] if c_row[j] > 0 else 0


def test():
    
    # A = np.random.randn(M, K).astype(np.float32)
    # B = np.random.randn(K, N).astype(np.float32)
    # Y = np.zeros((M, N), dtype=np.float32)
    
    # mod = df.build(gemm_relu_row_wise, target="simulator")
    # mod(A, B, Y)
    
    # golden = np.maximum(A @ B, 0)
    # np.testing.assert_allclose(Y, golden, rtol=1e-2)
    # print("✓ Simulator passed")
    
    hls_mod = df.build(
        gemm_relu_row_wise,
        target="vitis_hls",
        mode="csim",
        project="row_wise_streaming.prj"
    )
    print("✓ HLS project generated")


if __name__ == "__main__":
    test()