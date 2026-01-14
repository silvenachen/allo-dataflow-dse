
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

void mm1_stage(
  float v0[64][64],
  float v1[64][64],
  float v2[64][64]
) {	// L2
  l_S_i_j_k_0_i: for (int i = 0; i < 64; i++) {	// L3
    l_k: for (int k = 0; k < 64; k++) {	// L4
      l_j: for (int j = 0; j < 64; j++) {	// L5
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

void mm2_stage(
  float v11[64][64],
  float v12[64][64],
  float v13[64][64]
) {	// L17
  l_S_i_j_k_0_i1: for (int i1 = 0; i1 < 64; i1++) {	// L18
    l_k1: for (int k1 = 0; k1 < 64; k1++) {	// L19
      l_j1: for (int j1 = 0; j1 < 64; j1++) {	// L20
      #pragma HLS pipeline II=1
        float v17 = v11[i1][k1];	// L21
        float v18 = v12[k1][j1];	// L22
        float v19 = v17 * v18;	// L23
        float v20 = v13[i1][j1];	// L24
        float v21 = v20 + v19;	// L25
        v13[i1][j1] = v21;	// L26
      }
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

void load_buf2(
  float v32[4096],
  float v33[64][64]
) {	//
  l_S_load_buf2_load_buf2_l_0: for (int load_buf2_l_0 = 0; load_buf2_l_0 < 64; load_buf2_l_0++) {	//
    l_load_buf2_l_1: for (int load_buf2_l_1 = 0; load_buf2_l_1 < 64; load_buf2_l_1++) {	//
    #pragma HLS pipeline II=1
      float v36 = v32[((load_buf2_l_0 * 64) + load_buf2_l_1)];	//
      v33[load_buf2_l_0][load_buf2_l_1] = v36;	//
    }
  }
}

void store_res3(
  float v37[64][64],
  float v38[4096]
) {	//
  l_S_store_res3_store_res3_l_0: for (int store_res3_l_0 = 0; store_res3_l_0 < 64; store_res3_l_0++) {	//
    l_store_res3_l_1: for (int store_res3_l_1 = 0; store_res3_l_1 < 64; store_res3_l_1++) {	//
    #pragma HLS pipeline II=1
      float v41 = v37[store_res3_l_0][store_res3_l_1];	//
      v38[((store_res3_l_0 * 64) + store_res3_l_1)] = v41;	//
    }
  }
}

void kernel_2mm(
  float *v42,
  float *v43,
  float *v44,
  float *v45
) {	// L32
  #pragma HLS interface m_axi port=v42 offset=slave bundle=gmem0 depth=4096
  #pragma HLS interface m_axi port=v43 offset=slave bundle=gmem1 depth=4096
  #pragma HLS interface m_axi port=v44 offset=slave bundle=gmem2 depth=4096
  #pragma HLS interface m_axi port=v45 offset=slave bundle=gmem3 depth=4096
  float buf0[64][64];	//
  load_buf0(v42, buf0);	//
  float buf1[64][64];	//
  load_buf1(v43, buf1);	//
  float buf2[64][64];	//
  load_buf2(v44, buf2);	//
  float C[64][64];	// L35
  for (int v50 = 0; v50 < 64; v50++) {	// L36
    for (int v51 = 0; v51 < 64; v51++) {	// L36
      C[v50][v51] = (float)0.000000;	// L36
    }
  }
  float E[64][64];	// L37
  for (int v53 = 0; v53 < 64; v53++) {	// L38
    for (int v54 = 0; v54 < 64; v54++) {	// L38
      E[v53][v54] = (float)0.000000;	// L38
    }
  }
  mm1_stage(buf0, buf1, C);	// L39
  mm2_stage(C, buf2, E);	// L40
  store_res3(E, v45);	//
}


} // extern "C"
