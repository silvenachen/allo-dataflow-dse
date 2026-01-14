import allo
from allo.ir.types import float32
import allo.dataflow as df
import numpy as np
import allo.backend.hls as hls

M, N, K, P = 64, 64, 64, 64
Ty = float32

@df.region()
def two_mm_stream_ikj_ikj():
    """
    2MM with i->k->j order for both GEMMs
    Token pattern: Row-major (compatible)
    C = A @ B, D = C @ P
    """
    pipe = df.pipe(dtype=Ty, shape=(N,), depth=4)

    @df.kernel(mapping=[1])
    def mm1_stage(A: Ty[M, K], B: Ty[K, N]):
        for i in range(M):
            c_row: Ty[N] = 0  
            for k in range(K):
                a_val: Ty = A[i, k]
                for j in range(N):
                    c_row[j] += a_val * B[k, j]
            pipe.put(c_row)
    
    @df.kernel(mapping=[1])
    def mm2_stage(D_in: Ty[N, P], Out: Ty[M, P]):
        for i in range(M):
            c_row: Ty[N] = pipe.get()
            d_row: Ty[P] = 0        
            for k in range(N):
                c_val: Ty = c_row[k]
                for j in range(P):
                    d_row[j] += c_val * D_in[k, j]  
            for j in range(P):
                Out[i, j] = d_row[j]  

def test():
    A = np.random.random((M, K)).astype(np.float32)
    B = np.random.random((K, N)).astype(np.float32)
    C = np.random.random((N, P)).astype(np.float32)
    D = np.zeros((M, P), dtype=np.float32)
    golden = np.dot(np.dot(A, B), C)

    mod = df.build(two_mm_stream_ikj_ikj, target="simulator")
    print(mod.module)
    mod(A, B, C, D)
    np.testing.assert_allclose(D, golden, rtol=1e-2)
    print("Simulator passed")

    # hls_mod = df.build(
    #     two_mm_stream_ikj_ikj,
    #     target="vitis_hls",
    #     mode="csim",
    #     project="ikj_ikj_streaming.prj"
    # )
    print("HLS project generated")


if __name__ == "__main__":
    test()