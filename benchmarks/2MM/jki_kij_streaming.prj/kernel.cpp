
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
  l_S_j_0_j: for (int j = 0; j < 64; j++) {	// L4
    float c_col[64];	// L5
    for (int v5 = 0; v5 < 64; v5++) {	// L6
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
    for (int iv0 = 0; iv0 < 64; ++iv0) {
      v2.write(c_col[iv0]);
    }
	// L17
  }
}

void mm2_stage_0(
  float v13[64][64],
  float v14[64][64],
  hls::stream< float >& v15
) {	// L21
  float out_buffer[64][64];	// L23
  for (int v17 = 0; v17 < 64; v17++) {	// L24
    for (int v18 = 0; v18 < 64; v18++) {	// L24
      out_buffer[v17][v18] = (float)0.000000;	// L24
    }
  }
  l_S_k_0_k1: for (int k1 = 0; k1 < 64; k1++) {	// L25
    float v20[64];
    for (int iv0 = 0; iv0 < 64; ++iv0) {
      v20[iv0] = v15.read();
    }
	// L26
    l_S_i_0_i1: for (int i1 = 0; i1 < 64; i1++) {	// L27
      l_S_j_0_j1: for (int j1 = 0; j1 < 64; j1++) {	// L28
      #pragma HLS pipeline II=1
        float v23 = v20[i1];	// L29
        float v24 = v13[k1][j1];	// L30
        float v25 = v23 * v24;	// L31
        float v26 = out_buffer[i1][j1];	// L32
        float v27 = v26 + v25;	// L33
        out_buffer[i1][j1] = v27;	// L34
      }
    }
  }
  l_S_i_3_i2: for (int i2 = 0; i2 < 64; i2++) {	// L38
    l_S_j_3_j2: for (int j2 = 0; j2 < 64; j2++) {	// L39
    #pragma HLS pipeline II=1
      float v30 = out_buffer[i2][j2];	// L40
      v14[i2][j2] = v30;	// L41
    }
  }
}

void load_buf0(
  float v31[4096],
  float v32[64][64]
) {	//
  l_S_load_buf0_load_buf0_l_0: for (int load_buf0_l_0 = 0; load_buf0_l_0 < 64; load_buf0_l_0++) {	//
    l_load_buf0_l_1: for (int load_buf0_l_1 = 0; load_buf0_l_1 < 64; load_buf0_l_1++) {	//
    #pragma HLS pipeline II=1
      float v35 = v31[((load_buf0_l_0 * 64) + load_buf0_l_1)];	//
      v32[load_buf0_l_0][load_buf0_l_1] = v35;	//
    }
  }
}

void load_buf1(
  float v36[4096],
  float v37[64][64]
) {	//
  l_S_load_buf1_load_buf1_l_0: for (int load_buf1_l_0 = 0; load_buf1_l_0 < 64; load_buf1_l_0++) {	//
    l_load_buf1_l_1: for (int load_buf1_l_1 = 0; load_buf1_l_1 < 64; load_buf1_l_1++) {	//
    #pragma HLS pipeline II=1
      float v40 = v36[((load_buf1_l_0 * 64) + load_buf1_l_1)];	//
      v37[load_buf1_l_0][load_buf1_l_1] = v40;	//
    }
  }
}

void load_buf2(
  float v41[4096],
  float v42[64][64]
) {	//
  l_S_load_buf2_load_buf2_l_0: for (int load_buf2_l_0 = 0; load_buf2_l_0 < 64; load_buf2_l_0++) {	//
    l_load_buf2_l_1: for (int load_buf2_l_1 = 0; load_buf2_l_1 < 64; load_buf2_l_1++) {	//
    #pragma HLS pipeline II=1
      float v45 = v41[((load_buf2_l_0 * 64) + load_buf2_l_1)];	//
      v42[load_buf2_l_0][load_buf2_l_1] = v45;	//
    }
  }
}

void store_res3(
  float v46[64][64],
  float v47[4096]
) {	//
  l_S_store_res3_store_res3_l_0: for (int store_res3_l_0 = 0; store_res3_l_0 < 64; store_res3_l_0++) {	//
    l_store_res3_l_1: for (int store_res3_l_1 = 0; store_res3_l_1 < 64; store_res3_l_1++) {	//
    #pragma HLS pipeline II=1
      float v50 = v46[store_res3_l_0][store_res3_l_1];	//
      v47[((store_res3_l_0 * 64) + store_res3_l_1)] = v50;	//
    }
  }
}

void two_mm_stream_jki_kij(
  float *v51,
  float *v52,
  float *v53,
  float *v54
) {	// L46
  #pragma HLS interface m_axi port=v51 offset=slave bundle=gmem0 depth=4096
  #pragma HLS interface m_axi port=v52 offset=slave bundle=gmem1 depth=4096
  #pragma HLS interface m_axi port=v53 offset=slave bundle=gmem2 depth=4096
  #pragma HLS interface m_axi port=v54 offset=slave bundle=gmem3 depth=4096
  #pragma HLS dataflow
  float buf0[64][64];	//
  load_buf0(v51, buf0);	//
  float buf1[64][64];	//
  load_buf1(v52, buf1);	//
  float buf2[64][64];	//
  load_buf2(v53, buf2);	//
  float buf3[64][64];	//
  hls::stream< float > v59;
  #pragma HLS stream variable=v59 depth=4	// L47
  mm1_stage_0(buf0, buf1, v59);	// L48
  mm2_stage_0(buf2, buf3, v59);	// L49
  store_res3(buf3, v54);	//
}


} // extern "C"
