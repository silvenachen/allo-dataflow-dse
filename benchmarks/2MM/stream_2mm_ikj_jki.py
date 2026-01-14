import allo
from allo.ir.types import float32
import allo.dataflow as df
import numpy as np

M, N, K, P = 64, 64, 64, 64
Ty = float32

@df.region()
def two_mm_stream_ikj_jki():
    pipe = df.pipe(dtype=Ty, shape=(N,), depth=4)

    @df.kernel(mapping=[1])
    def mm1_stage(A: Ty[M, K], B: Ty[K, N]):
        """
        GEMM1: i→k→j order
        Produces T row by row: T[0,:], T[1,:], ..., T[63,:]
        """
        for i in range(M):
            t_row: Ty[N] = 0
            for k in range(K):
                a_val: Ty = A[i, k]
                for j in range(N):
                    t_row[j] += a_val * B[k, j]
            pipe.put(t_row)
    
    @df.kernel(mapping=[1])
    def mm2_stage(C: Ty[N, P], Out: Ty[M, P]):
        # Buffer entire T matrix
        T_buffer: Ty[M, N]
        for i in range(M):
            t_row: Ty[N] = pipe.get()
            for j in range(N):
                T_buffer[i, j] = t_row[j]
        
        # Compute in j→k→i order WITH local buffer
        for j in range(P):
            d_col: Ty[M] = 0
            for k in range(N):
                for i in range(M):
                    d_col[i] += T_buffer[i, k] * C[k, j]
            
            # Write back entire column
            for i in range(M):
                Out[i, j] = d_col[i]

def test():
    A = np.random.random((M, K)).astype(np.float32)
    B = np.random.random((K, N)).astype(np.float32)
    C = np.random.random((N, P)).astype(np.float32)
    D = np.zeros((M, P), dtype=np.float32)
    golden = np.dot(np.dot(A, B), C)

    mod = df.build(two_mm_stream_ikj_jki, target="simulator")
    print(mod.module)
    mod(A, B, C, D)
    np.testing.assert_allclose(D, golden, rtol=1e-2)
    print("Simulator passed")

    hls_mod = df.build(
        two_mm_stream_ikj_jki,
        target="vitis_hls",
        mode="csim",      
        project="ikj_jki_streaming.prj"
    )
    print("HLS project generated")


if __name__ == "__main__":
    test()