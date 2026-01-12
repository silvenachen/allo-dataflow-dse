
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
#include <hls_streamofblocks.h>
#include <math.h>
#include <stdint.h>
using namespace std;

extern "C" {

void gemm_stage(
  float v0[64][64],
  float v1[64][64],
  float v2[64][64]
) {	// L2
  l_S_i_j_k_0_i: for (int i = 0; i < 64; i++) {	// L3
    l_j: for (int j = 0; j < 64; j++) {	// L4
      l_k: for (int k = 0; k < 64; k++) {	// L5
      #pragma HLS pipeline II=1
        float v6 = v0[i][k];	// L6
        float v7 = v1[k][j];	// L7
        float v8 = v6 * v7;	// L8
        float v9 = v2[i][j];	// L9
        float v10 = v9 + v8;	// L10
        v2[i][j] = v10;	// L11
      }
    }
  }
}

void relu_stage(
  float v11[64][64],
  float v12[64][64]
) {	// L17
  l_S_i_j_0_i1: for (int i1 = 0; i1 < 64; i1++) {	// L18
    l_j1: for (int j1 = 0; j1 < 64; j1++) {	// L19
    #pragma HLS pipeline II=1
      float v15 = v11[i1][j1];	// L20
      bool v16 = v15 > (float)0.000000;	// L23
      float v17 = v16 ? (float)v15 : (float)(float)0.000000;	// L24
      v12[i1][j1] = v17;	// L25
    }
  }
}

void load_buf0(
  float v18[4096],
  float v19[64][64]
) {	//
  l_S_load_buf0_load_buf0_l_0: for (int load_buf0_l_0 = 0; load_buf0_l_0 < 64; load_buf0_l_0++) {	//
    l_load_buf0_l_1: for (int load_buf0_l_1 = 0; load_buf0_l_1 < 64; load_buf0_l_1++) {	//
    #pragma HLS pipeline II=1
      float v22 = v18[((load_buf0_l_0 * 64) + load_buf0_l_1)];	//
      v19[load_buf0_l_0][load_buf0_l_1] = v22;	//
    }
  }
}

void load_buf1(
  float v23[4096],
  float v24[64][64]
) {	//
  l_S_load_buf1_load_buf1_l_0: for (int load_buf1_l_0 = 0; load_buf1_l_0 < 64; load_buf1_l_0++) {	//
    l_load_buf1_l_1: for (int load_buf1_l_1 = 0; load_buf1_l_1 < 64; load_buf1_l_1++) {	//
    #pragma HLS pipeline II=1
      float v27 = v23[((load_buf1_l_0 * 64) + load_buf1_l_1)];	//
      v24[load_buf1_l_0][load_buf1_l_1] = v27;	//
    }
  }
}

void store_res2(
  float v28[64][64],
  float v29[4096]
) {	//
  l_S_store_res2_store_res2_l_0: for (int store_res2_l_0 = 0; store_res2_l_0 < 64; store_res2_l_0++) {	//
    l_store_res2_l_1: for (int store_res2_l_1 = 0; store_res2_l_1 < 64; store_res2_l_1++) {	//
    #pragma HLS pipeline II=1
      float v32 = v28[store_res2_l_0][store_res2_l_1];	//
      v29[((store_res2_l_0 * 64) + store_res2_l_1)] = v32;	//
    }
  }
}

void kernel_gemm_relu(
  float *v33,
  float *v34,
  float *v35
) {	// L30
  #pragma HLS interface m_axi port=v33 offset=slave bundle=gmem0 depth=4096
  #pragma HLS interface m_axi port=v34 offset=slave bundle=gmem1 depth=4096
  #pragma HLS interface m_axi port=v35 offset=slave bundle=gmem2 depth=4096
  float buf0[64][64];	//
  load_buf0(v33, buf0);	//
  float buf1[64][64];	//
  load_buf1(v34, buf1);	//
  float C[64][64];	// L33
  for (int v39 = 0; v39 < 64; v39++) {	// L34
    for (int v40 = 0; v40 < 64; v40++) {	// L34
      C[v39][v40] = (float)0.000000;	// L34
    }
  }
  float Y[64][64];	// L35
  gemm_stage(buf0, buf1, C);	// L36
  relu_stage(C, Y);	// L37
  store_res2(Y, v35);	//
}


} // extern "C"
