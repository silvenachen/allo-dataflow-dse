
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
  float C_buffer[64][64];	// L23
  l_S_j_0_j1: for (int j1 = 0; j1 < 64; j1++) {	// L24
    float v18[64];
    for (int iv0 = 0; iv0 < 64; ++iv0) {
      v18[iv0] = v15.read();
    }
	// L25
    l_S_i_0_i1: for (int i1 = 0; i1 < 64; i1++) {	// L26
    #pragma HLS pipeline II=1
      float v20 = v18[i1];	// L27
      C_buffer[i1][j1] = v20;	// L28
    }
  }
  l_S_j_2_j2: for (int j2 = 0; j2 < 64; j2++) {	// L31
    float d_col[64];	// L32
    for (int v23 = 0; v23 < 64; v23++) {	// L33
      d_col[v23] = (float)0.000000;	// L33
    }
    l_S_k_2_k1: for (int k1 = 0; k1 < 64; k1++) {	// L34
      l_S_i_2_i2: for (int i2 = 0; i2 < 64; i2++) {	// L35
      #pragma HLS pipeline II=1
        float v26 = C_buffer[i2][k1];	// L36
        float v27 = v13[k1][j2];	// L37
        float v28 = v26 * v27;	// L38
        float v29 = d_col[i2];	// L39
        float v30 = v29 + v28;	// L40
        d_col[i2] = v30;	// L41
      }
    }
    l_S_i_4_i3: for (int i3 = 0; i3 < 64; i3++) {	// L44
    #pragma HLS pipeline II=1
      float v32 = d_col[i3];	// L45
      v14[i3][j2] = v32;	// L46
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

void two_mm_stream_jki_jki(
  float *v53,
  float *v54,
  float *v55,
  float *v56
) {	// L51
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
  #pragma HLS stream variable=v61 depth=4	// L52
  mm1_stage_0(buf0, buf1, v61);	// L53
  mm2_stage_0(buf2, buf3, v61);	// L54
  store_res3(buf3, v56);	//
}


} // extern "C"
