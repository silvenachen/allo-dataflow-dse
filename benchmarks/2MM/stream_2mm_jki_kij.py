import allo
from allo.ir.types import float32
import allo.dataflow as df
import numpy as np
import allo.backend.hls as hls

M, N, K, P = 64, 64, 64, 64
Ty = float32

@df.region()
def two_mm_stream_jki_kij():
    pipe = df.pipe(dtype=Ty, shape=(M,), depth=4)

    @df.kernel(mapping=[1])
    def mm1_stage(A: Ty[M, K], B: Ty[K, N]):
        for j in range(N):
            c_col: Ty[M] = 0  
            for k in range(K):
                for i in range(M):
                    c_col[i] += A[i, k] * B[k, j]
            pipe.put(c_col)

    @df.kernel(mapping=[1])
    def mm2_stage(C: Ty[N, P], Out: Ty[M, P]):
        out_buffer: Ty[M, P] = 0
        for k in range(N):
            c_col: Ty[M] = pipe.get()
            for i in range(M):
                for j in range(P):
                    out_buffer[i, j] += c_col[i] * C[k, j]
        for i in range(M):
            for j in range(P):
                Out[i, j] = out_buffer[i, j]

def test():
    A = np.random.random((M, K)).astype(np.float32)
    B = np.random.random((K, N)).astype(np.float32)
    C = np.random.random((N, P)).astype(np.float32)
    D = np.zeros((M, P), dtype=np.float32)
    golden = np.dot(np.dot(A, B), C)

    mod = df.build(two_mm_stream_jki_kij, target="simulator")
    print(mod.module)
    mod(A, B, C, D)
    np.testing.assert_allclose(D, golden, rtol=1e-2)
    print("Simulator passed")

    hls_mod = df.build(
        two_mm_stream_jki_kij,
        target="vitis_hls",
        mode="csim",
        project="jki_kij_streaming.prj"
    )
    print("HLS project generated")

if __name__ == "__main__":
    test()