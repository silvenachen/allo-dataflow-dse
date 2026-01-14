
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
    float c_row[64];	// L5
    for (int v5 = 0; v5 < 64; v5++) {	// L6
      c_row[v5] = (float)0.000000;	// L6
    }
    l_S_k_0_k: for (int k = 0; k < 64; k++) {	// L7
      float v7 = v0[i][k];	// L8
      float a_val;	// L9
      a_val = v7;	// L10
      l_S_j_0_j: for (int j = 0; j < 64; j++) {	// L11
      #pragma HLS pipeline II=1
        float v10 = v1[k][j];	// L12
        float v11 = a_val;	// L13
        float v12 = v11 * v10;	// L14
        float v13 = c_row[j];	// L15
        float v14 = v13 + v12;	// L16
        c_row[j] = v14;	// L17
      }
    }
    for (int iv0 = 0; iv0 < 64; ++iv0) {
      v2.write(c_row[iv0]);
    }
	// L20
  }
}

void mm2_stage_0(
  float v15[64][64],
  float v16[64][64],
  hls::stream< float >& v17
) {	// L24
  l_S_i_0_i1: for (int i1 = 0; i1 < 64; i1++) {	// L26
    float v19[64];
    for (int iv0 = 0; iv0 < 64; ++iv0) {
      v19[iv0] = v17.read();
    }
	// L27
    float d_row[64];	// L28
    for (int v21 = 0; v21 < 64; v21++) {	// L29
      d_row[v21] = (float)0.000000;	// L29
    }
    l_S_k_0_k1: for (int k1 = 0; k1 < 64; k1++) {	// L30
      float v23 = v19[k1];	// L31
      float c_val;	// L32
      c_val = v23;	// L33
      l_S_j_0_j1: for (int j1 = 0; j1 < 64; j1++) {	// L34
      #pragma HLS pipeline II=1
        float v26 = v15[k1][j1];	// L35
        float v27 = c_val;	// L36
        float v28 = v27 * v26;	// L37
        float v29 = d_row[j1];	// L38
        float v30 = v29 + v28;	// L39
        d_row[j1] = v30;	// L40
      }
    }
    l_S_j_2_j2: for (int j2 = 0; j2 < 64; j2++) {	// L43
    #pragma HLS pipeline II=1
      float v32 = d_row[j2];	// L44
      v16[i1][j2] = v32;	// L45
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

void two_mm_stream_ikj_ikj(
  float *v53,
  float *v54,
  float *v55,
  float *v56
) {	// L50
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
  #pragma HLS stream variable=v61 depth=4	// L51
  mm1_stage_0(buf0, buf1, v61);	// L52
  mm2_stage_0(buf2, buf3, v61);	// L53
  store_res3(buf3, v56);	//
}


} // extern "C"
