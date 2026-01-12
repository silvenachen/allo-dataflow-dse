
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
  hls::stream_of_blocks< float[64], 4 >& v2
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
        float v10 = a_val;	// L12
        float v11 = v1[k][j];	// L13
        float v12 = v10 * v11;	// L14
        float v13 = c_row[j];	// L15
        float v14 = v13 + v12;	// L16
        c_row[j] = v14;	// L17
      }
    }
    {
      typedef float _block_t[64];
      hls::write_lock<_block_t> _write_block(v2);
      for (int _iv0 = 0; _iv0 < 64; ++_iv0) {
        _write_block[_iv0] = c_row[_iv0];
      }
    } // write_lock released	// L20
  }
}

void relu_stage_0(
  float v15[64][64],
  hls::stream_of_blocks< float[64], 4 >& v16
) {	// L24
  l_S_i_0_i1: for (int i1 = 0; i1 < 64; i1++) {	// L26
    float v18[64];
    {
      typedef float _block_t[64];
      hls::read_lock<_block_t> _read_block(v16);
      for (int _iv0 = 0; _iv0 < 64; ++_iv0) {
        v18[_iv0] = _read_block[_iv0];
      }
    } // read_lock released	// L27
    l_S_j_0_j1: for (int j1 = 0; j1 < 64; j1++) {	// L28
      float v20 = v18[j1];	// L29
      bool v21 = v20 > (float)0.000000;	// L30
      float v22 = v21 ? (float)v20 : (float)(float)0.000000;	// L32
      v15[i1][j1] = v22;	// L33
    }
  }
}

void load_buf0(
  float v23[4096],
  float v24[64][64]
) {	//
  l_S_load_buf0_load_buf0_l_0: for (int load_buf0_l_0 = 0; load_buf0_l_0 < 64; load_buf0_l_0++) {	//
    l_load_buf0_l_1: for (int load_buf0_l_1 = 0; load_buf0_l_1 < 64; load_buf0_l_1++) {	//
    #pragma HLS pipeline II=1
      float v27 = v23[((load_buf0_l_0 * 64) + load_buf0_l_1)];	//
      v24[load_buf0_l_0][load_buf0_l_1] = v27;	//
    }
  }
}

void load_buf1(
  float v28[4096],
  float v29[64][64]
) {	//
  l_S_load_buf1_load_buf1_l_0: for (int load_buf1_l_0 = 0; load_buf1_l_0 < 64; load_buf1_l_0++) {	//
    l_load_buf1_l_1: for (int load_buf1_l_1 = 0; load_buf1_l_1 < 64; load_buf1_l_1++) {	//
    #pragma HLS pipeline II=1 
      float v32 = v28[((load_buf1_l_0 * 64) + load_buf1_l_1)];	//
      v29[load_buf1_l_0][load_buf1_l_1] = v32;	//
    }
  }
}

void store_res2(
  float v33[64][64],
  float v34[4096]
) {	//
  l_S_store_res2_store_res2_l_0: for (int store_res2_l_0 = 0; store_res2_l_0 < 64; store_res2_l_0++) {	//
    l_store_res2_l_1: for (int store_res2_l_1 = 0; store_res2_l_1 < 64; store_res2_l_1++) {	//
    #pragma HLS pipeline II=1
      float v37 = v33[store_res2_l_0][store_res2_l_1];	//
      v34[((store_res2_l_0 * 64) + store_res2_l_1)] = v37;	//
    }
  }
}

void top(
  float *v38,
  float *v39,
  float *v40
) {	// L38
  #pragma HLS interface m_axi port=v38 offset=slave bundle=gmem0 depth=4096
  #pragma HLS interface m_axi port=v39 offset=slave bundle=gmem1 depth=4096
  #pragma HLS interface m_axi port=v40 offset=slave bundle=gmem2 depth=4096
  #pragma HLS dataflow
  float buf0[64][64];	//
  load_buf0(v38, buf0);	//
  float buf1[64][64];	//
  load_buf1(v39, buf1);	//
  float buf2[64][64];	//
  // Stream of blocks: each block is float array[64]
  typedef float v44_block_t[64];
  hls::stream_of_blocks< v44_block_t, 4 > v44;	// L39
  gemm_stage_0(buf0, buf1, v44);	// L40
  relu_stage_0(buf2, v44);	// L41
  store_res2(buf2, v40);	//
}


} // extern "C"
