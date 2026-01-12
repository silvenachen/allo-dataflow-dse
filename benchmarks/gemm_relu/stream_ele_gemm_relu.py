# element wise streaming GEMM + ReLU benchmark
import tempfile
import allo
from allo.ir.types import float32, Stream
import allo.dataflow as df
import allo.backend.hls as hls
import numpy as np

Ty = float32
M, N, K = 64, 64, 64

@df.region()
def top(A: Ty[M, K], B: Ty[K, N], Y: Ty[M, N]):
    pipe: Stream[Ty, 4]

    @df.kernel(mapping=[1], args=[A, B])
    def gemm_stage(local_A: Ty[M, K], local_B: Ty[K, N]):
        for i in range(M):
            for j in range(N):
                c: Ty = 0
                for k in range(K):
                    c += local_A[i, k] * local_B[k, j]
                pipe.put(c)
    
    @df.kernel(mapping=[1], args=[Y])
    def relu_stage(local_Y: Ty[M, N]):
        for i in range(M):
            for j in range(N):
                c: Ty = pipe.get()
                local_Y[i, j] = c if c > 0 else 0

def test_streaming_gemm_relu():
    A = np.random.rand(M, K).astype(np.float32)
    B = np.random.rand(K, N).astype(np.float32)
    Y = np.zeros((M, N), dtype=np.float32)

    sim_mod = df.build(top, target="simulator")
    sim_mod(A, B, Y)
    output_ref = np.maximum(np.dot(A, B), 0)
    np.testing.assert_allclose(Y, output_ref, rtol=1e-5)
    print("Dataflow Simulator Passed!")

    if hls.is_available("vitis_hls"):
        with tempfile.TemporaryDirectory() as tmpdir:
            hls_mod = df.build(
                top,
                target="vitis_hls",
                mode="csim",
                project="stream_ele_gemm_relu.prj",
            )
            print("HLS Stream Project generated.")

if __name__ == "__main__":
    test_streaming_gemm_relu()
