
//===------------------------------------------------------------*- C++ -*-===//
//
// Automatically generated file for High-level Synthesis (HLS).
//
//===----------------------------------------------------------------------===//
#include <algorithm>
#include <ap_axi_sdata.h>
#include <ap_fixed.h>
#include <ap_int.h>
#include <hls_math.h>
#include <hls_stream.h>
#include <math.h>
#include <stdint.h>
using namespace std;

extern "C" {

void gemm_stage(
  float v0[64][64],
  float v1[64][64],
  float v2[64][64]
) {	// L4
  #pragma HLS array_partition variable=v2 dim=1 
  #pragma HLS array_partition variable=v2 dim=2 
  #pragma HLS inline off

  l_S_i_j_k_0_i: for (int i = 0; i < 64; i++) {	// L5
    l_k: for (int k = 0; k < 64; k++) {	// L6
      l_j: for (int j = 0; j < 64; j++) {	// L7
      #pragma HLS pipeline II=1
        float v6 = v0[i][k];	// L8
        float v7 = v1[k][j];	// L9
        float v8 = v6 * v7;	// L10
        float v9 = v2[i][j];	// L11
        float v10 = v9 + v8;	// L12
        v2[i][j] = v10;	// L13
      }
    }
  }
}

void transpose_stage(
  float v11[64][64],
  float v12[64][64]
) {	// L19
  #pragma HLS inline off
  #pragma HLS array_partition variable=v11 dim=1 
  #pragma HLS array_partition variable=v11 dim=2 

  #pragma HLS array_partition variable=v12 dim=1 

  l_S_i_j_0_i1: for (int i1 = 0; i1 < 64; i1++) {	// L20
  #pragma HLS pipeline II=1
    l_j1: for (int j1 = 0; j1 < 64; j1++) {	// L21
      float v15 = v11[i1][j1];	// L22
      v12[j1][i1] = v15;	// L23
    }
  }
}

void load_buf0(
  float v16[4096],
  float v17[64][64]
) {	//
  l_S_load_buf0_load_buf0_l_0: for (int load_buf0_l_0 = 0; load_buf0_l_0 < 64; load_buf0_l_0++) {	//
    l_load_buf0_l_1: for (int load_buf0_l_1 = 0; load_buf0_l_1 < 64; load_buf0_l_1++) {	//
    #pragma HLS pipeline II=1
      float v20 = v16[((load_buf0_l_0 * 64) + load_buf0_l_1)];	//
      v17[load_buf0_l_0][load_buf0_l_1] = v20;	//
    }
  }
}

void load_buf1(
  float v21[4096],
  float v22[64][64]
) {	//
  l_S_load_buf1_load_buf1_l_0: for (int load_buf1_l_0 = 0; load_buf1_l_0 < 64; load_buf1_l_0++) {	//
    l_load_buf1_l_1: for (int load_buf1_l_1 = 0; load_buf1_l_1 < 64; load_buf1_l_1++) {	//
    #pragma HLS pipeline II=1
      float v25 = v21[((load_buf1_l_0 * 64) + load_buf1_l_1)];	//
      v22[load_buf1_l_0][load_buf1_l_1] = v25;	//
    }
  }
}

void store_res2(
  float v26[64][64],
  float v27[4096]
) {	//
  #pragma HLS array_partition variable=v26 dim=1 

  l_S_store_res2_store_res2_l_0: for (int store_res2_l_0 = 0; store_res2_l_0 < 64; store_res2_l_0++) {	//
    l_store_res2_l_1: for (int store_res2_l_1 = 0; store_res2_l_1 < 64; store_res2_l_1++) {	//
    #pragma HLS pipeline II=1
      float v30 = v26[store_res2_l_0][store_res2_l_1];	//
      v27[((store_res2_l_0 * 64) + store_res2_l_1)] = v30;	//
    }
  }
}

void kernel_gemm_transpose(
  float *v31,
  float *v32,
  float *v33
) {	// L28
  #pragma HLS interface m_axi port=v31 offset=slave bundle=gmem0
  #pragma HLS interface m_axi port=v32 offset=slave bundle=gmem1
  #pragma HLS interface m_axi port=v33 offset=slave bundle=gmem2
  float buf0[64][64];	//
  load_buf0(v31, buf0);	//
  float buf1[64][64];	//
  load_buf1(v32, buf1);	//
  float C[64][64];	// L31
  #pragma HLS array_partition variable=C dim=1 
  #pragma HLS array_partition variable=C dim=2 

  for (int v37 = 0; v37 < 64; v37++) {	// L32
    for (int v38 = 0; v38 < 64; v38++) {	// L32
      C[v37][v38] = (float)0.000000;	// L32
    }
  }
  float D[64][64];	// L33
  #pragma HLS array_partition variable=D dim=1 

  gemm_stage(buf0, buf1, C);	// L34
  transpose_stage(C, D);	// L35
  store_res2(D, v33);	//
}


} // extern "C"
