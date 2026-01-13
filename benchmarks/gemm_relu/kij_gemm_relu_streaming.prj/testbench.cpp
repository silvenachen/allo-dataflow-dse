// testbench_tiny.cpp
// Ultra simple 4x4 test for manual verification

#include <iostream>
#include <iomanip>
#include <cmath>

using namespace std;

extern "C" {
    void gemm_relu_stream_kij(float *A, float *B, float *Y);
}

void print_matrix_full(const char* name, float *matrix, int rows, int cols) {
    cout << name << ":" << endl;
    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < cols; j++) {
            cout << setw(8) << setprecision(3) << matrix[i * cols + j] << " ";
        }
        cout << endl;
    }
    cout << endl;
}

int main() {
    // Note: Still need to allocate 64x64 for the kernel,
    // but we'll only use the top-left 4x4 for verification
    const int M = 64;
    const int N = 64;
    const int K = 64;
    
    float *A = new float[M * K];
    float *B = new float[K * N];
    float *Y = new float[M * N];
    
    // Initialize all to zero first
    for (int i = 0; i < M * K; i++) A[i] = 0.0f;
    for (int i = 0; i < K * N; i++) B[i] = 0.0f;
    for (int i = 0; i < M * N; i++) Y[i] = 0.0f;
    
    // Simple 4x4 test
    // A = [1 2 0 0]    B = [1 0 0 0]
    //     [3 4 0 0]        [0 1 0 0]
    //     [0 0 0 0]        [0 0 0 0]
    //     [0 0 0 0]        [0 0 0 0]
    
    // Expected C = A @ B = [1 2 0 0]
    //                      [3 4 0 0]
    //                      [0 0 0 0]
    //                      [0 0 0 0]
    
    // After ReLU (all positive, so same)
    
    cout << "Simple 4x4 Test (rest zeros)" << endl;
    cout << "============================" << endl;
    
    A[0 * K + 0] = 1.0f;  // A[0][0]
    A[0 * K + 1] = 2.0f;  // A[0][1]
    A[1 * K + 0] = 3.0f;  // A[1][0]
    A[1 * K + 1] = 4.0f;  // A[1][1]
    
    B[0 * N + 0] = 1.0f;  // B[0][0]
    B[1 * N + 1] = 1.0f;  // B[1][1]
    
    // Print 4x4 region of inputs
    cout << "Input A (4x4 region):" << endl;
    for (int i = 0; i < 4; i++) {
        for (int k = 0; k < 4; k++) {
            cout << setw(6) << A[i * K + k] << " ";
        }
        cout << endl;
    }
    cout << endl;
    
    cout << "Input B (4x4 region):" << endl;
    for (int k = 0; k < 4; k++) {
        for (int j = 0; j < 4; j++) {
            cout << setw(6) << B[k * N + j] << " ";
        }
        cout << endl;
    }
    cout << endl;
    
    cout << "Expected output Y (4x4):" << endl;
    cout << "   1.0    2.0    0.0    0.0" << endl;
    cout << "   3.0    4.0    0.0    0.0" << endl;
    cout << "   0.0    0.0    0.0    0.0" << endl;
    cout << "   0.0    0.0    0.0    0.0" << endl;
    cout << endl;
    
    // Run kernel
    gemm_relu_stream_kij(A, B, Y);
    
    // Print 4x4 region of output
    cout << "Hardware output Y (4x4 region):" << endl;
    for (int i = 0; i < 4; i++) {
        for (int j = 0; j < 4; j++) {
            cout << setw(6) << setprecision(1) << fixed << Y[i * N + j] << " ";
        }
        cout << endl;
    }
    cout << endl;
    
    // Manual verification
    bool pass = true;
    float expected[4][4] = {
        {1.0f, 2.0f, 0.0f, 0.0f},
        {3.0f, 4.0f, 0.0f, 0.0f},
        {0.0f, 0.0f, 0.0f, 0.0f},
        {0.0f, 0.0f, 0.0f, 0.0f}
    };
    
    for (int i = 0; i < 4; i++) {
        for (int j = 0; j < 4; j++) {
            if (fabs(Y[i * N + j] - expected[i][j]) > 1e-3) {
                cout << "ERROR at [" << i << "][" << j << "]: "
                     << "expected " << expected[i][j]
                     << ", got " << Y[i * N + j] << endl;
                pass = false;
            }
        }
    }
    
    if (pass) {
        cout << "✓ TEST PASSED!" << endl;
    } else {
        cout << "✗ TEST FAILED!" << endl;
    }
    
    delete[] A;
    delete[] B;
    delete[] Y;
    
    return pass ? 0 : 1;
}