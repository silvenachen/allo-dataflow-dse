
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
    float t_row[64];	// L5
    for (int v5 = 0; v5 < 64; v5++) {	// L6
      t_row[v5] = (float)0.000000;	// L6
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
        float v13 = t_row[j];	// L15
        float v14 = v13 + v12;	// L16
        t_row[j] = v14;	// L17
      }
    }
    for (int iv0 = 0; iv0 < 64; ++iv0) {
      v2.write(t_row[iv0]);
    }
	// L20
  }
}

void mm2_stage_0(
  float v15[64][64],
  float v16[64][64],
  hls::stream< float >& v17
) {	// L24
  float T_buffer[64][64];	// L26
  l_S_i_0_i1: for (int i1 = 0; i1 < 64; i1++) {	// L27
    float v20[64];
    for (int iv0 = 0; iv0 < 64; ++iv0) {
      v20[iv0] = v17.read();
    }
	// L28
    l_S_j_0_j1: for (int j1 = 0; j1 < 64; j1++) {	// L29
    #pragma HLS pipeline II=1
      float v22 = v20[j1];	// L30
      T_buffer[i1][j1] = v22;	// L31
    }
  }
  l_S_j_2_j2: for (int j2 = 0; j2 < 64; j2++) {	// L34
    float d_col[64];	// L35
    for (int v25 = 0; v25 < 64; v25++) {	// L36
      d_col[v25] = (float)0.000000;	// L36
    }
    l_S_k_2_k1: for (int k1 = 0; k1 < 64; k1++) {	// L37
      l_S_i_2_i2: for (int i2 = 0; i2 < 64; i2++) {	// L38
      #pragma HLS pipeline II=1
        float v28 = T_buffer[i2][k1];	// L39
        float v29 = v15[k1][j2];	// L40
        float v30 = v28 * v29;	// L41
        float v31 = d_col[i2];	// L42
        float v32 = v31 + v30;	// L43
        d_col[i2] = v32;	// L44
      }
    }
    l_S_i_4_i3: for (int i3 = 0; i3 < 64; i3++) {	// L47
    #pragma HLS pipeline II=1
      float v34 = d_col[i3];	// L48
      v16[i3][j2] = v34;	// L49
    }
  }
}

void load_buf0(
  float v35[4096],
  float v36[64][64]
) {	//
  l_S_load_buf0_load_buf0_l_0: for (int load_buf0_l_0 = 0; load_buf0_l_0 < 64; load_buf0_l_0++) {	//
    l_load_buf0_l_1: for (int load_buf0_l_1 = 0; load_buf0_l_1 < 64; load_buf0_l_1++) {	//
    #pragma HLS pipeline II=1
      float v39 = v35[((load_buf0_l_0 * 64) + load_buf0_l_1)];	//
      v36[load_buf0_l_0][load_buf0_l_1] = v39;	//
    }
  }
}

void load_buf1(
  float v40[4096],
  float v41[64][64]
) {	//
  l_S_load_buf1_load_buf1_l_0: for (int load_buf1_l_0 = 0; load_buf1_l_0 < 64; load_buf1_l_0++) {	//
    l_load_buf1_l_1: for (int load_buf1_l_1 = 0; load_buf1_l_1 < 64; load_buf1_l_1++) {	//
    #pragma HLS pipeline II=1
      float v44 = v40[((load_buf1_l_0 * 64) + load_buf1_l_1)];	//
      v41[load_buf1_l_0][load_buf1_l_1] = v44;	//
    }
  }
}

void load_buf2(
  float v45[4096],
  float v46[64][64]
) {	//
  l_S_load_buf2_load_buf2_l_0: for (int load_buf2_l_0 = 0; load_buf2_l_0 < 64; load_buf2_l_0++) {	//
    l_load_buf2_l_1: for (int load_buf2_l_1 = 0; load_buf2_l_1 < 64; load_buf2_l_1++) {	//
    #pragma HLS pipeline II=1
      float v49 = v45[((load_buf2_l_0 * 64) + load_buf2_l_1)];	//
      v46[load_buf2_l_0][load_buf2_l_1] = v49;	//
    }
  }
}

void store_res3(
  float v50[64][64],
  float v51[4096]
) {	//
  l_S_store_res3_store_res3_l_0: for (int store_res3_l_0 = 0; store_res3_l_0 < 64; store_res3_l_0++) {	//
    l_store_res3_l_1: for (int store_res3_l_1 = 0; store_res3_l_1 < 64; store_res3_l_1++) {	//
    #pragma HLS pipeline II=1
      float v54 = v50[store_res3_l_0][store_res3_l_1];	//
      v51[((store_res3_l_0 * 64) + store_res3_l_1)] = v54;	//
    }
  }
}

void two_mm_stream_ikj_jki(
  float *v55,
  float *v56,
  float *v57,
  float *v58
) {	// L54
  #pragma HLS interface m_axi port=v55 offset=slave bundle=gmem0 depth=4096
  #pragma HLS interface m_axi port=v56 offset=slave bundle=gmem1 depth=4096
  #pragma HLS interface m_axi port=v57 offset=slave bundle=gmem2 depth=4096
  #pragma HLS interface m_axi port=v58 offset=slave bundle=gmem3 depth=4096
  #pragma HLS dataflow
  float buf0[64][64];	//
  load_buf0(v55, buf0);	//
  float buf1[64][64];	//
  load_buf1(v56, buf1);	//
  float buf2[64][64];	//
  load_buf2(v57, buf2);	//
  float buf3[64][64];	//
  hls::stream< float > v63;
  #pragma HLS stream variable=v63 depth=4	// L55
  mm1_stage_0(buf0, buf1, v63);	// L56
  mm2_stage_0(buf2, buf3, v63);	// L57
  store_res3(buf3, v58);	//
}


} // extern "C"
