#ifndef KERNEL_H
#define KERNEL_H

extern "C" {
void kernel_gemm_transpose(
  float *v31,
  float *v32,
  float *v33
);
} // extern "C"

#endif // KERNEL_H
