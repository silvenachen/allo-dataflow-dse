
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

void mm1_stage_0(
  float v0[64][64],
  float v1[64][64],
  hls::stream< float >& v2
) {	// L2
  l_S_i_0_i: for (int i = 0; i < 64; i++) {	// L4
    l_S_j_0_j: for (int j = 0; j < 64; j++) {	// L5
      float c_val;	// L6
      c_val = (float)0.000000;	// L7
      l_S_k_0_k: for (int k = 0; k < 64; k++) {	// L8
      #pragma HLS pipeline II=1 // if we comment it, I would expect a large fifo is needed
        // #pragma HLS unroll
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

void mm2_stage_0(
  float v13[64][64],
  float v14[64][64],
  hls::stream< float >& v15
) {	// L22
  l_S_i_0_i1: for (int i1 = 0; i1 < 64; i1++) {	// L24
    float t_row[64];	// L25
    l_S_k_0_k1: for (int k1 = 0; k1 < 64; k1++) {	// L26
    #pragma HLS pipeline II=1
      float v19 = v15.read();	// L27
      t_row[k1] = v19;	// L28
    }
    float d_row[64];	// L30
    for (int v21 = 0; v21 < 64; v21++) {	// L31
      d_row[v21] = (float)0.000000;	// L31
    }
    l_S_k_1_k2: for (int k2 = 0; k2 < 64; k2++) {	// L32
      float v23 = t_row[k2];	// L33
      float t_val;	// L34
      t_val = v23;	// L35
      l_S_j_1_j1: for (int j1 = 0; j1 < 64; j1++) {	// L36
      #pragma HLS pipeline II=1
        float v26 = v13[k2][j1];	// L37
        float v27 = t_val;	// L38
        float v28 = v27 * v26;	// L39
        float v29 = d_row[j1];	// L40
        float v30 = v29 + v28;	// L41
        d_row[j1] = v30;	// L42
      }
    }
    l_S_j_3_j2: for (int j2 = 0; j2 < 64; j2++) {	// L45
    #pragma HLS pipeline II=1
      float v32 = d_row[j2];	// L46
      v14[i1][j2] = v32;	// L47
    }
  }
}

void load_buf0(
  float v33[4096],
  float v34[64][64]
) {	//
  l_S_load_buf0_load_buf0_l_0: for (int load_buf0_l_0 = 0; load_buf0_l_0 < 64; load_buf0_l_0++) {	//
    l_load_buf0_l_1: for (int load_buf0_l_1 = 0; load_buf0_l_1 < 64; load_buf0_l_1++) {	//
    #pragma HLS pipeline II=1
      float v37 = v33[((load_buf0_l_0 * 64) + load_buf0_l_1)];	//
      v34[load_buf0_l_0][load_buf0_l_1] = v37;	//
    }
  }
}

void load_buf1(
  float v38[4096],
  float v39[64][64]
) {	//
  l_S_load_buf1_load_buf1_l_0: for (int load_buf1_l_0 = 0; load_buf1_l_0 < 64; load_buf1_l_0++) {	//
    l_load_buf1_l_1: for (int load_buf1_l_1 = 0; load_buf1_l_1 < 64; load_buf1_l_1++) {	//
    #pragma HLS pipeline II=1
      float v42 = v38[((load_buf1_l_0 * 64) + load_buf1_l_1)];	//
      v39[load_buf1_l_0][load_buf1_l_1] = v42;	//
    }
  }
}

void load_buf2(
  float v43[4096],
  float v44[64][64]
) {	//
  l_S_load_buf2_load_buf2_l_0: for (int load_buf2_l_0 = 0; load_buf2_l_0 < 64; load_buf2_l_0++) {	//
    l_load_buf2_l_1: for (int load_buf2_l_1 = 0; load_buf2_l_1 < 64; load_buf2_l_1++) {	//
    #pragma HLS pipeline II=1
      float v47 = v43[((load_buf2_l_0 * 64) + load_buf2_l_1)];	//
      v44[load_buf2_l_0][load_buf2_l_1] = v47;	//
    }
  }
}

void store_res3(
  float v48[64][64],
  float v49[4096]
) {	//
  l_S_store_res3_store_res3_l_0: for (int store_res3_l_0 = 0; store_res3_l_0 < 64; store_res3_l_0++) {	//
    l_store_res3_l_1: for (int store_res3_l_1 = 0; store_res3_l_1 < 64; store_res3_l_1++) {	//
    #pragma HLS pipeline II=1
      float v52 = v48[store_res3_l_0][store_res3_l_1];	//
      v49[((store_res3_l_0 * 64) + store_res3_l_1)] = v52;	//
    }
  }
}

void two_mm_stream_ijk_ikj(
  float *v53,
  float *v54,
  float *v55,
  float *v56
) {	// L52
  #pragma HLS interface m_axi port=v53 offset=slave bundle=gmem0 depth=4096
  #pragma HLS interface m_axi port=v54 offset=slave bundle=gmem1 depth=4096
  #pragma HLS interface m_axi port=v55 offset=slave bundle=gmem2 depth=4096
  #pragma HLS interface m_axi port=v56 offset=slave bundle=gmem3 depth=4096
  #pragma HLS dataflow
  float buf0[64][64];	//
  load_buf0(v53, buf0);	//
  float buf1[64][64];	//
  load_buf1(v54, buf1);	//
  float buf2[64][64];	//
  load_buf2(v55, buf2);	//
  float buf3[64][64];	//
  hls::stream< float > v61;
  #pragma HLS stream variable=v61 depth=4	// L53
  mm1_stage_0(buf0, buf1, v61);	// L54
  mm2_stage_0(buf2, buf3, v61);	// L55
  store_res3(buf3, v56);	//
}


} // extern "C"
