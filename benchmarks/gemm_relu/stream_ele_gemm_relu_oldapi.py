# benchmarks/gemm_relu/dataflow/element_wise_streaming.py
"""
Design 1: Element-wise Streaming (Correct Old API)
Token: Single element
FIFO: depth=4
"""

import allo
from allo.ir.types import float32
import allo.dataflow as df
import numpy as np

Ty = float32
M, N, K = 64, 64, 64


@df.region()
def gemm_relu_element_wise():
    """Element-wise streaming: i→j→k"""
    pipe = df.pipe(dtype=Ty, shape=(), depth=4)  
    
    @df.kernel(mapping=[1])
    def gemm_stage(A: Ty[M, K], B: Ty[K, N]):
        for i in range(M):
            for j in range(N):
                acc: Ty = 0
                for k in range(K):
                    acc += A[i, k] * B[k, j]
                pipe.put(acc)
    
    @df.kernel(mapping=[1])
    def relu_stage(Y: Ty[M, N]):
        for i in range(M):
            for j in range(N):
                val: Ty = pipe.get()
                Y[i, j] = val if val > 0 else 0


def test():
    # print("="*60)
    # print("Design 1: Element-wise Streaming (Correct Old API)")
    # print("="*60)
    
    # A = np.random.randn(M, K).astype(np.float32)
    # B = np.random.randn(K, N).astype(np.float32)
    # Y = np.zeros((M, N), dtype=np.float32)
    
    # mod = df.build(gemm_relu_element_wise, target="simulator")
    # mod(A, B, Y)
    
    # golden = np.maximum(A @ B, 0)
    # np.testing.assert_allclose(Y, golden, rtol=1e-5)
    # print("✓ Simulator passed")
    
    # HLS
    hls_mod = df.build(
        gemm_relu_element_wise,
        target="vitis_hls",
        mode="csim",
        project="element_wise_fifo4.prj"
    )
    print("✓ HLS project generated")


if __name__ == "__main__":
    test()