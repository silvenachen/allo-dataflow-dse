import allo
from allo.ir.types import float32
import allo.dataflow as df
import numpy as np
import allo.backend.hls as hls

M, N, K, P = 64, 64, 64, 64
Ty = float32

@df.region()
def two_mm_stream_jki_jki():
    """
    2MM with j->k->i order for both GEMMs
    Token pattern: Row-major (compatible)
    C = A @ B, D = C @ P
    """
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
    def mm2_stage(D_in: Ty[N, P], Out: Ty[M, P]): 
        # Buffer entire C matrix
        C_buffer: Ty[M, N]
        for j in range(N):
            c_col: Ty[M] = pipe.get()
            for i in range(M):
                C_buffer[i, j] = c_col[i]
        for j in range(P):
            d_col: Ty[M] = 0
            for k in range(N):
                for i in range(M):
                    d_col[i] += C_buffer[i, k] * D_in[k, j]
            for i in range(M):
                Out[i, j] = d_col[i]

def test():
    A = np.random.random((M, K)).astype(np.float32)
    B = np.random.random((K, N)).astype(np.float32)
    C = np.random.random((N, P)).astype(np.float32)
    D = np.zeros((M, P), dtype=np.float32)
    golden = np.dot(np.dot(A, B), C)

    mod = df.build(two_mm_stream_jki_jki, target="simulator")
    print(mod.module)
    mod(A, B, C, D)
    np.testing.assert_allclose(D, golden, rtol=1e-2)
    print("Simulator passed")

    hls_mod = df.build(
        two_mm_stream_jki_jki,
        target="vitis_hls",
        mode="csim",
        project="jki_jki_streaming.prj"
    )
    print("HLS project generated")


if __name__ == "__main__":
    test()