// testbench.cpp
// Testbench for GEMM-ReLU kernel verification

#include <iostream>
#include <cmath>
#include <cstdlib>
#include <ctime>
#include <iomanip>

using namespace std;

// External kernel function
extern "C" {
    void kernel_gemm_relu(
        float *A,
        float *B,
        float *Y
    );
}

// Golden reference: GEMM
void gemm_golden(float *A, float *B, float *C, int M, int N, int K) {
    for (int i = 0; i < M; i++) {
        for (int j = 0; j < N; j++) {
            float sum = 0.0f;
            for (int k = 0; k < K; k++) {
                sum += A[i * K + k] * B[k * N + j];
            }
            C[i * N + j] = sum;
        }
    }
}

// Golden reference: ReLU
void relu_golden(float *C, float *Y, int M, int N) {
    for (int i = 0; i < M * N; i++) {
        Y[i] = (C[i] > 0.0f) ? C[i] : 0.0f;
    }
}

// Verify results
bool verify_results(float *hw_output, float *golden_output, int size, float tolerance = 1e-3) {
    int errors = 0;
    float max_error = 0.0f;
    
    for (int i = 0; i < size; i++) {
        float error = fabs(hw_output[i] - golden_output[i]);
        if (error > tolerance) {
            if (errors < 10) {  // Only print first 10 errors
                cout << "Mismatch at index " << i << ": "
                     << "HW = " << hw_output[i] << ", "
                     << "Golden = " << golden_output[i] << ", "
                     << "Error = " << error << endl;
            }
            errors++;
            if (error > max_error) {
                max_error = error;
            }
        }
    }
    
    if (errors > 0) {
        cout << "Total errors: " << errors << " / " << size << endl;
        cout << "Max error: " << max_error << endl;
        return false;
    }
    
    return true;
}

// Print matrix (partial)
void print_matrix(const char* name, float *matrix, int rows, int cols, int max_display = 4) {
    cout << name << " (showing " << max_display << "x" << max_display << "):" << endl;
    for (int i = 0; i < min(max_display, rows); i++) {
        for (int j = 0; j < min(max_display, cols); j++) {
            cout << setw(8) << setprecision(3) << matrix[i * cols + j] << " ";
        }
        cout << endl;
    }
    cout << endl;
}

int main() {
    const int M = 64;
    const int N = 64;
    const int K = 64;
    
    cout << "========================================" << endl;
    cout << "GEMM-ReLU Testbench" << endl;
    cout << "========================================" << endl;
    cout << "Problem size: M=" << M << ", N=" << N << ", K=" << K << endl;
    cout << endl;
    
    // Allocate memory
    float *A = new float[M * K];
    float *B = new float[K * N];
    float *Y_hw = new float[M * N];        // Hardware output
    float *C_golden = new float[M * N];    // Golden GEMM result
    float *Y_golden = new float[M * N];    // Golden ReLU result
    
    // Initialize random seed
    srand(time(NULL));
    
    cout << "Initializing input matrices..." << endl;
    
    // Initialize A with random values in [-2, 2]
    for (int i = 0; i < M * K; i++) {
        A[i] = ((float)rand() / RAND_MAX) * 4.0f - 2.0f;
    }
    
    // Initialize B with random values in [-2, 2]
    for (int i = 0; i < K * N; i++) {
        B[i] = ((float)rand() / RAND_MAX) * 4.0f - 2.0f;
    }
    
    // Initialize output to zero
    for (int i = 0; i < M * N; i++) {
        Y_hw[i] = 0.0f;
        C_golden[i] = 0.0f;
        Y_golden[i] = 0.0f;
    }
    
    // Print input matrices (partial)
    print_matrix("Input A", A, M, K);
    print_matrix("Input B", B, K, N);
    
    // Run golden reference
    cout << "Running golden reference..." << endl;
    gemm_golden(A, B, C_golden, M, N, K);
    relu_golden(C_golden, Y_golden, M, N);
    
    print_matrix("Golden GEMM output (before ReLU)", C_golden, M, N);
    print_matrix("Golden ReLU output", Y_golden, M, N);
    
    // Run hardware kernel
    cout << "Running hardware kernel..." << endl;
    kernel_gemm_relu(A, B, Y_hw);
    
    print_matrix("Hardware output", Y_hw, M, N);
    
    // Verify results
    cout << "========================================" << endl;
    cout << "Verifying results..." << endl;
    cout << "========================================" << endl;
    
    bool passed = verify_results(Y_hw, Y_golden, M * N);
    
    if (passed) {
        cout << "✓ TEST PASSED!" << endl;
        cout << "Hardware output matches golden reference." << endl;
    } else {
        cout << "✗ TEST FAILED!" << endl;
        cout << "Hardware output does not match golden reference." << endl;
    }
    
    // Cleanup
    delete[] A;
    delete[] B;
    delete[] Y_hw;
    delete[] C_golden;
    delete[] Y_golden;
    
    return passed ? 0 : 1;
}