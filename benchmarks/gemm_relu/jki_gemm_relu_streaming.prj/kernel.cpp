
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
    float c_col[64];	// L5
    for (int v5 = 0; v5 < 64; v5++) {	// L6
      # pragma HLS unroll
      c_col[v5] = (float)0.000000;	// L6
    }
    l_S_k_0_k: for (int k = 0; k < 64; k++) {	// L7
      l_S_i_0_i: for (int i = 0; i < 64; i++) {	// L8
      #pragma HLS pipeline II=1
        float v8 = v0[i][k];	// L9
        float v9 = v1[k][j];	// L10
        float v10 = v8 * v9;	// L11
        float v11 = c_col[i];	// L12
        float v12 = v11 + v10;	// L13
        c_col[i] = v12;	// L14
      }
    }
    l_S_i_2_i1: for (int i1 = 0; i1 < 64; i1++) {	// L17
    #pragma HLS pipeline II=1
      float v14 = c_col[i1];	// L18
      v2.write(v14);	// L19
    }
  }
}

void relu_stage_0(
  float v15[64][64],
  hls::stream< float >& v16
) {	// L24
  l_S_j_0_j1: for (int j1 = 0; j1 < 64; j1++) {	// L26
    l_S_i_0_i2: for (int i2 = 0; i2 < 64; i2++) {	// L27
    #pragma HLS pipeline II=1
      float v19 = v16.read();	// L28
      bool v20 = v19 > (float)0.000000;	// L29
      float v21 = v20 ? (float)v19 : (float)(float)0.000000;	// L30
      v15[i2][j1] = v21;	// L31
    }
  }
}

void load_buf0(
  float v22[4096],
  float v23[64][64]
) {	//
  l_S_load_buf0_load_buf0_l_0: for (int load_buf0_l_0 = 0; load_buf0_l_0 < 64; load_buf0_l_0++) {	//
    l_load_buf0_l_1: for (int load_buf0_l_1 = 0; load_buf0_l_1 < 64; load_buf0_l_1++) {	//
    #pragma HLS pipeline II=1
      float v26 = v22[((load_buf0_l_0 * 64) + load_buf0_l_1)];	//
      v23[load_buf0_l_0][load_buf0_l_1] = v26;	//
    }
  }
}

void load_buf1(
  float v27[4096],
  float v28[64][64]
) {	//
  l_S_load_buf1_load_buf1_l_0: for (int load_buf1_l_0 = 0; load_buf1_l_0 < 64; load_buf1_l_0++) {	//
    l_load_buf1_l_1: for (int load_buf1_l_1 = 0; load_buf1_l_1 < 64; load_buf1_l_1++) {	//
    #pragma HLS pipeline II=1
      float v31 = v27[((load_buf1_l_0 * 64) + load_buf1_l_1)];	//
      v28[load_buf1_l_0][load_buf1_l_1] = v31;	//
    }
  }
}

void store_res2(
  float v32[64][64],
  float v33[4096]
) {	//
  l_S_store_res2_store_res2_l_0: for (int store_res2_l_0 = 0; store_res2_l_0 < 64; store_res2_l_0++) {	//
    l_store_res2_l_1: for (int store_res2_l_1 = 0; store_res2_l_1 < 64; store_res2_l_1++) {	//
    #pragma HLS pipeline II=1
      float v36 = v32[store_res2_l_0][store_res2_l_1];	//
      v33[((store_res2_l_0 * 64) + store_res2_l_1)] = v36;	//
    }
  }
}

void gemm_relu_stream_jki(
  float *v37,
  float *v38,
  float *v39
) {	// L36
  #pragma HLS interface m_axi port=v37 offset=slave bundle=gmem0 depth=4096
  #pragma HLS interface m_axi port=v38 offset=slave bundle=gmem1 depth=4096
  #pragma HLS interface m_axi port=v39 offset=slave bundle=gmem2 depth=4096
  #pragma HLS dataflow
  float buf0[64][64];	//
  load_buf0(v37, buf0);	//
  float buf1[64][64];	//
  load_buf1(v38, buf1);	//
  float buf2[64][64];	//
  hls::stream< float > v43;
  #pragma HLS stream variable=v43 depth=4	// L37
  gemm_stage_0(buf0, buf1, v43);	// L38
  relu_stage_0(buf2, v43);	// L39
  store_res2(buf2, v39);	//
}


} // extern "C"
