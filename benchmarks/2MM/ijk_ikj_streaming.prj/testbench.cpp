// testbench_2mm_tiny.cpp
// 4×4 test for manual verification

#include <iostream>
#include <iomanip>
#include <cmath>

extern "C" {
    void two_mm_stream_ijk_ikj(float *A, float *B, float *C, float *D);
}

void print_4x4(const char* name, float *mat, int stride) {
    std::cout << name << ":" << std::endl;
    for (int i = 0; i < 4; i++) {
        for (int j = 0; j < 4; j++) {
            std::cout << std::setw(7) << std::setprecision(2) << std::fixed
                      << mat[i * stride + j] << " ";
        }
        std::cout << std::endl;
    }
    std::cout << std::endl;
}

int main() {
    // Allocate 64×64 (required by kernel) but use 4×4
    const int M = 64, N = 64, K = 64, P = 64;
    
    float *A = new float[M * K]();
    float *B = new float[K * N]();
    float *C = new float[N * P]();
    float *D = new float[M * P]();
    
    std::cout << "4×4 Test for 2MM: D = (A @ B) @ C" << std::endl;
    std::cout << "===================================" << std::endl << std::endl;
    
    // Simple identity-like matrices
    // A = [[1 0 0 0],     B = [[1 2 0 0],     C = [[2 0 0 0],
    //      [0 2 0 0],          [3 4 0 0],          [0 3 0 0],
    //      [0 0 3 0],          [0 0 0 0],          [0 0 0 0],
    //      [0 0 0 4]]          [0 0 0 0]]          [0 0 0 0]]
    
    A[0 * K + 0] = 1.0f;
    A[1 * K + 1] = 2.0f;
    A[2 * K + 2] = 3.0f;
    A[3 * K + 3] = 4.0f;
    
    B[0 * N + 0] = 1.0f;
    B[0 * N + 1] = 2.0f;
    B[1 * N + 0] = 3.0f;
    B[1 * N + 1] = 4.0f;
    
    C[0 * P + 0] = 2.0f;
    C[1 * P + 1] = 3.0f;
    
    // Expected:
    // T = A @ B = [[1 2 0 0],
    //              [6 8 0 0],
    //              [0 0 0 0],
    //              [0 0 0 0]]
    //
    // D = T @ C = [[2 6 0 0],
    //              [12 24 0 0],
    //              [0 0 0 0],
    //              [0 0 0 0]]
    
    print_4x4("Input A", A, K);
    print_4x4("Input B", B, N);
    print_4x4("Input C", C, P);
    
    std::cout << "Expected T = A @ B:" << std::endl;
    std::cout << "   1.00    2.00    0.00    0.00" << std::endl;
    std::cout << "   6.00    8.00    0.00    0.00" << std::endl;
    std::cout << "   0.00    0.00    0.00    0.00" << std::endl;
    std::cout << "   0.00    0.00    0.00    0.00" << std::endl << std::endl;
    
    std::cout << "Expected D = T @ C:" << std::endl;
    std::cout << "   2.00    6.00    0.00    0.00" << std::endl;
    std::cout << "  12.00   24.00    0.00    0.00" << std::endl;
    std::cout << "   0.00    0.00    0.00    0.00" << std::endl;
    std::cout << "   0.00    0.00    0.00    0.00" << std::endl << std::endl;
    
    // Run kernel
    std::cout << "Running HLS kernel..." << std::endl;
    two_mm_stream_ijk_ikj(A, B, C, D);
    
    print_4x4("Output D (HLS)", D, P);
    
    // Verify
    float expected[4][4] = {
        {2.0f, 6.0f, 0.0f, 0.0f},
        {12.0f, 24.0f, 0.0f, 0.0f},
        {0.0f, 0.0f, 0.0f, 0.0f},
        {0.0f, 0.0f, 0.0f, 0.0f}
    };
    
    bool pass = true;
    for (int i = 0; i < 4; i++) {
        for (int j = 0; j < 4; j++) {
            float diff = fabs(D[i * P + j] - expected[i][j]);
            if (diff > 1e-3) {
                std::cout << "ERROR at [" << i << "][" << j << "]: "
                          << "expected " << expected[i][j]
                          << ", got " << D[i * P + j] << std::endl;
                pass = false;
            }
        }
    }
    
    if (pass) {
        std::cout << "\n✓ TEST PASSED!" << std::endl;
    } else {
        std::cout << "\n✗ TEST FAILED!" << std::endl;
    }
    
    delete[] A;
    delete[] B;
    delete[] C;
    delete[] D;
    
    return pass ? 0 : 1;
}