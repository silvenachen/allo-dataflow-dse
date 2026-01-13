
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

void gemm_stage_0(
  float v0[64][64],
  float v1[64][64],
  hls::stream< float >& v2
) {	// L2
  l_S_j_0_j: for (int j = 0; j < 64; j++) {	// L4
    l_S_i_0_i: for (int i = 0; i < 64; i++) {	// L5
      float c_val;	// L6
      c_val = (float)0.000000;	// L7
      l_S_k_0_k: for (int k = 0; k < 64; k++) {	// L8
      #pragma HLS pipeline II=1
        float v7 = v0[i][k];	// L9
        float v8 = v1[k][j];	// L10
        float v9 = v7 * v8;	// L11
        float v10 = c_val;	// L12
        float v11 = v10 + v9;	// L13
        c_val = v11;	// L14
      }
      float v12 = c_val;	// L16
      v2.write(v12);	// L17
    }
  }
}

void relu_stage_0(
  float v13[64][64],
  hls::stream< float >& v14
) {	// L22
  l_S_j_0_j1: for (int j1 = 0; j1 < 64; j1++) {	// L24
    l_S_i_0_i1: for (int i1 = 0; i1 < 64; i1++) {	// L25
    #pragma HLS pipeline II=1
      float v17 = v14.read();	// L26
      bool v18 = v17 > (float)0.000000;	// L27
      float v19 = v18 ? (float)v17 : (float)(float)0.000000;	// L28
      v13[i1][j1] = v19;	// L29
    }
  }
}

void load_buf0(
  float v20[4096],
  float v21[64][64]
) {	//
  l_S_load_buf0_load_buf0_l_0: for (int load_buf0_l_0 = 0; load_buf0_l_0 < 64; load_buf0_l_0++) {	//
    l_load_buf0_l_1: for (int load_buf0_l_1 = 0; load_buf0_l_1 < 64; load_buf0_l_1++) {	//
    #pragma HLS pipeline II=1
      float v24 = v20[((load_buf0_l_0 * 64) + load_buf0_l_1)];	//
      v21[load_buf0_l_0][load_buf0_l_1] = v24;	//
    }
  }
}

void load_buf1(
  float v25[4096],
  float v26[64][64]
) {	//
  l_S_load_buf1_load_buf1_l_0: for (int load_buf1_l_0 = 0; load_buf1_l_0 < 64; load_buf1_l_0++) {	//
    l_load_buf1_l_1: for (int load_buf1_l_1 = 0; load_buf1_l_1 < 64; load_buf1_l_1++) {	//
    #pragma HLS pipeline II=1
      float v29 = v25[((load_buf1_l_0 * 64) + load_buf1_l_1)];	//
      v26[load_buf1_l_0][load_buf1_l_1] = v29;	//
    }
  }
}

void store_res2(
  float v30[64][64],
  float v31[4096]
) {	//
  l_S_store_res2_store_res2_l_0: for (int store_res2_l_0 = 0; store_res2_l_0 < 64; store_res2_l_0++) {	//
    l_store_res2_l_1: for (int store_res2_l_1 = 0; store_res2_l_1 < 64; store_res2_l_1++) {	//
    #pragma HLS pipeline II=1
      float v34 = v30[store_res2_l_0][store_res2_l_1];	//
      v31[((store_res2_l_0 * 64) + store_res2_l_1)] = v34;	//
    }
  }
}

void gemm_relu_stream_jik(
  float *v35,
  float *v36,
  float *v37
) {	// L34
  #pragma HLS interface m_axi port=v35 offset=slave bundle=gmem0 depth=4096
  #pragma HLS interface m_axi port=v36 offset=slave bundle=gmem1 depth=4096
  #pragma HLS interface m_axi port=v37 offset=slave bundle=gmem2 depth=4096
  #pragma HLS dataflow
  float buf0[64][64];	//
  load_buf0(v35, buf0);	//
  float buf1[64][64];	//
  load_buf1(v36, buf1);	//
  float buf2[64][64];	//
  hls::stream< float > v41;
  #pragma HLS stream variable=v41 depth=4	// L35
  gemm_stage_0(buf0, buf1, v41);	// L36
  relu_stage_0(buf2, v41);	// L37
  store_res2(buf2, v37);	//
}


} // extern "C"
