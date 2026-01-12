#ifndef KERNEL_H
#define KERNEL_H

extern "C" {
void kernel_gemm_relu(
  float *v33,
  float *v34,
  float *v35
);
} // extern "C"

#endif // KERNEL_H
