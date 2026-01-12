
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

void gemm_stage_0(
  float v0[64][64],
  float v1[64][64],
  hls::stream< float >& v2
) {	// L2
  l_S_i_0_i: for (int i = 0; i < 64; i++) {	// L4
    l_S_j_0_j: for (int j = 0; j < 64; j++) {	// L5
      float c;	// L6
      c = (float)0.000000;	// L7
      l_S_k_0_k: for (int k = 0; k < 64; k++) {	// L8
        float v7 = v0[i][k];	// L9
        float v8 = v1[k][j];	// L10
        float v9 = v7 * v8;	// L11
        float v10 = c;	// L12
        float v11 = v10 + v9;	// L13
        c = v11;	// L14
      }
      float v12 = c;	// L16
      v2.write(v12);	// L17
    }
  }
}

void relu_stage_0(
  float v13[64][64],
  hls::stream< float >& v14
) {	// L22
  l_S_i_0_i1: for (int i1 = 0; i1 < 64; i1++) {	// L24
    l_S_j_0_j1: for (int j1 = 0; j1 < 64; j1++) {	// L25
      float v17 = v14.read();	// L26
      float c1;	// L27
      c1 = v17;	// L28
      float v19 = c1;	// L29
      bool v20 = v19 > (float)0.000000;	// L30
      float v21 = v20 ? (float)v19 : (float)(float)0.000000;	// L32
      v13[i1][j1] = v21;	// L33
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

void top(
  float *v37,
  float *v38,
  float *v39
) {	// L38
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
  #pragma HLS stream variable=v43 depth=4	// L39
  gemm_stage_0(buf0, buf1, v43);	// L40
  relu_stage_0(buf2, v43);	// L41
  store_res2(buf2, v39);	//
}


} // extern "C"
