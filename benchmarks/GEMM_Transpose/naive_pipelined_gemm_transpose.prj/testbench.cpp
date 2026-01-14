// testbench.cpp
#include <iostream>
#include <cmath>
#include <cstdlib>
#include <cstring>

using namespace std;

// Declare the kernel function
extern "C" {
void kernel_gemm_transpose(
  float *v31,
  float *v32,
  float *v33
);
}

// Golden reference implementation
void golden_gemm_transpose(
    float A[64][64],
    float B[64][64],
    float D_golden[64][64]
) {
    // Compute C = A @ B
    float C[64][64];
    for (int i = 0; i < 64; i++) {
        for (int j = 0; j < 64; j++) {
            C[i][j] = 0.0f;
            for (int k = 0; k < 64; k++) {
                C[i][j] += A[i][k] * B[k][j];
            }
        }
    }
    
    // Compute D = C^T
    for (int i = 0; i < 64; i++) {
        for (int j = 0; j < 64; j++) {
            D_golden[j][i] = C[i][j];
        }
    }
}

// Check results with tolerance
bool check_results(float *D, float D_golden[64][64], float tolerance = 1e-3) {
    int errors = 0;
    float max_error = 0.0f;
    
    for (int i = 0; i < 64; i++) {
        for (int j = 0; j < 64; j++) {
            float diff = fabs(D[i * 64 + j] - D_golden[i][j]);
            if (diff > max_error) {
                max_error = diff;
            }
            if (diff > tolerance) {
                if (errors < 10) {  // Print first 10 errors
                    cout << "Mismatch at D[" << i << "][" << j << "]: "
                         << "HLS = " << D[i * 64 + j] 
                         << ", Golden = " << D_golden[i][j]
                         << ", Diff = " << diff << endl;
                }
                errors++;
            }
        }
    }
    
    cout << "Max error: " << max_error << endl;
    cout << "Total errors: " << errors << " / " << 64*64 << endl;
    
    return (errors == 0);
}

int main() {
    cout << "========================================" << endl;
    cout << "  GEMM-Transpose Testbench" << endl;
    cout << "========================================" << endl;
    
    // Allocate memory (1D arrays for HLS interface)
    float *A = new float[64 * 64];
    float *B = new float[64 * 64];
    float *D = new float[64 * 64];
    
    // Allocate 2D arrays for golden reference
    float A_2d[64][64];
    float B_2d[64][64];
    float D_golden[64][64];
    
    // Initialize inputs with random values
    cout << "\nInitializing inputs..." << endl;
    srand(42);  // Fixed seed for reproducibility
    
    for (int i = 0; i < 64; i++) {
        for (int j = 0; j < 64; j++) {
            // Small random values to avoid overflow
            float val_a = (rand() % 200 - 100) / 100.0f;  // Range: [-1, 1]
            float val_b = (rand() % 200 - 100) / 100.0f;
            
            A[i * 64 + j] = val_a;
            B[i * 64 + j] = val_b;
            A_2d[i][j] = val_a;
            B_2d[i][j] = val_b;
        }
    }
    
    // Initialize output to zero
    memset(D, 0, 64 * 64 * sizeof(float));
    
    // Run golden reference
    cout << "Running golden reference..." << endl;
    golden_gemm_transpose(A_2d, B_2d, D_golden);
    
    // Run HLS kernel
    cout << "Running HLS kernel..." << endl;
    kernel_gemm_transpose(A, B, D);
    
    // Check results
    cout << "\nChecking results..." << endl;
    bool passed = check_results(D, D_golden);
    
    // Print result
    cout << "\n========================================" << endl;
    if (passed) {
        cout << "  TEST PASSED!" << endl;
    } else {
        cout << "  TEST FAILED!" << endl;
    }
    cout << "========================================" << endl;
    
    // Cleanup
    delete[] A;
    delete[] B;
    delete[] D;
    
    return passed ? 0 : 1;
}