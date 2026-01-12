; ModuleID = 'a.o.3.bc'
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

@l_S_store_res2_store_res2_l_0_l_store_res2_l_1_str = internal unnamed_addr constant [47 x i8] c"l_S_store_res2_store_res2_l_0_l_store_res2_l_1\00"
@l_S_load_buf1_load_buf1_l_0_l_load_buf1_l_1_str = internal unnamed_addr constant [44 x i8] c"l_S_load_buf1_load_buf1_l_0_l_load_buf1_l_1\00"
@l_S_load_buf0_load_buf0_l_0_l_load_buf0_l_1_str = internal unnamed_addr constant [44 x i8] c"l_S_load_buf0_load_buf0_l_0_l_load_buf0_l_1\00"
@p_str9 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str8 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str7 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str6 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str_2 = private unnamed_addr constant [5 x i8] c"data\00", align 512
@p_str_1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 512
@p_str = private unnamed_addr constant [9 x i8] c"mem_fifo\00", align 512
@empty = internal unnamed_addr constant [10 x i8] c"l_S_k_0_k\00"
@empty_0 = internal unnamed_addr constant [6 x i8] c"gmem2\00"
@empty_1 = internal unnamed_addr constant [6 x i8] c"gmem1\00"
@empty_2 = internal unnamed_addr constant [6 x i8] c"slave\00"
@empty_3 = internal unnamed_addr constant [6 x i8] c"gmem0\00"
@empty_4 = internal unnamed_addr constant [6 x i8] c"m_axi\00"
@empty_5 = internal unnamed_addr constant [16 x i8] c"VITIS_LOOP_27_1\00"
@empty_6 = internal unnamed_addr constant [17 x i8] c"l_store_res2_l_1\00"
@empty_7 = internal unnamed_addr constant [8 x i8] c"control\00"
@empty_8 = internal unnamed_addr constant [16 x i8] c"l_load_buf0_l_1\00"
@empty_9 = internal unnamed_addr constant [14 x i8] c"ap_ctrl_chain\00"
@empty_10 = internal unnamed_addr constant [4 x i8] c"top\00"
@empty_11 = internal unnamed_addr constant [11 x i8] c"l_S_i_0_i1\00"
@empty_12 = internal unnamed_addr constant [10 x i8] c"l_S_i_0_i\00"
@empty_13 = internal unnamed_addr constant [3 x i8] c"40\00"
@empty_14 = internal unnamed_addr constant [8 x i8] c"ap_auto\00"
@empty_15 = internal unnamed_addr constant [16 x i8] c"l_load_buf1_l_1\00"
@empty_16 = internal unnamed_addr constant [3 x i8] c"28\00"
@empty_17 = internal unnamed_addr constant [10 x i8] c"s_axilite\00"
@empty_18 = internal unnamed_addr constant [16 x i8] c"VITIS_LOOP_46_2\00"
@empty_19 = internal unnamed_addr constant [15 x i8] c"offset_noalias\00"
@empty_20 = internal unnamed_addr constant [3 x i8] c"16\00"

define void @top(i512 addrspace(1)* noalias %gmem0, i512 addrspace(1)* noalias %gmem1, i512 addrspace(1)* noalias %gmem2, i64 align 64 %v38, i64 align 64 %v39, i64 align 64 %v40) nounwind noinline {
.split:
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, i32 0, [1 x i8]* @p_str_1) nounwind
  call void (...)* @_ssdm_op_SpecTopModule([4 x i8]* @empty_10) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [14 x i8]* @empty_9, i32 0, i32 0, [1 x i8]* @p_str_1, i32 0, i32 0, [1 x i8]* @p_str_1, [1 x i8]* @p_str_1, [1 x i8]* @p_str_1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str_1, [1 x i8]* @p_str_1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i512 addrspace(1)* %gmem0, [6 x i8]* @empty_4, i32 0, i32 0, [1 x i8]* @p_str_1, i32 64, i32 4096, [6 x i8]* @empty_3, [6 x i8]* @empty_2, [1 x i8]* @p_str_1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str_1, [1 x i8]* @p_str_1) nounwind
  call void (...)* @_ssdm_op_SpecBitsMap(i512 addrspace(1)* %gmem0) nounwind, !map !423
  call void (...)* @_ssdm_op_SpecInterface(i512 addrspace(1)* %gmem1, [6 x i8]* @empty_4, i32 0, i32 0, [1 x i8]* @p_str_1, i32 64, i32 4096, [6 x i8]* @empty_1, [6 x i8]* @empty_2, [1 x i8]* @p_str_1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str_1, [1 x i8]* @p_str_1) nounwind
  call void (...)* @_ssdm_op_SpecBitsMap(i512 addrspace(1)* %gmem1) nounwind, !map !423
  call void (...)* @_ssdm_op_SpecInterface(i512 addrspace(1)* %gmem2, [6 x i8]* @empty_4, i32 0, i32 0, [1 x i8]* @p_str_1, i32 64, i32 4096, [6 x i8]* @empty_0, [6 x i8]* @empty_2, [1 x i8]* @p_str_1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str_1, [1 x i8]* @p_str_1) nounwind
  call void (...)* @_ssdm_op_SpecBitsMap(i512 addrspace(1)* %gmem2) nounwind, !map !423
  call void (...)* @_ssdm_op_SpecInterface(i64 %v38, [10 x i8]* @empty_17, i32 0, i32 0, [1 x i8]* @p_str_1, i32 0, i32 0, [8 x i8]* @empty_7, [3 x i8]* @empty_20, [1 x i8]* @p_str_1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str_1, [15 x i8]* @empty_19) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i64 %v38, [8 x i8]* @empty_14, i32 0, i32 0, [1 x i8]* @p_str_1, i32 0, i32 0, [1 x i8]* @p_str_1, [1 x i8]* @p_str_1, [1 x i8]* @p_str_1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str_1, [15 x i8]* @empty_19) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i64 %v39, [10 x i8]* @empty_17, i32 0, i32 0, [1 x i8]* @p_str_1, i32 0, i32 0, [8 x i8]* @empty_7, [3 x i8]* @empty_16, [1 x i8]* @p_str_1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str_1, [15 x i8]* @empty_19) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i64 %v39, [8 x i8]* @empty_14, i32 0, i32 0, [1 x i8]* @p_str_1, i32 0, i32 0, [1 x i8]* @p_str_1, [1 x i8]* @p_str_1, [1 x i8]* @p_str_1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str_1, [15 x i8]* @empty_19) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i64 %v40, [10 x i8]* @empty_17, i32 0, i32 0, [1 x i8]* @p_str_1, i32 0, i32 0, [8 x i8]* @empty_7, [3 x i8]* @empty_13, [1 x i8]* @p_str_1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str_1, [15 x i8]* @empty_19) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i64 %v40, [8 x i8]* @empty_14, i32 0, i32 0, [1 x i8]* @p_str_1, i32 0, i32 0, [1 x i8]* @p_str_1, [1 x i8]* @p_str_1, [1 x i8]* @p_str_1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str_1, [15 x i8]* @empty_19) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @empty_17, i32 0, i32 0, [1 x i8]* @p_str_1, i32 0, i32 0, [8 x i8]* @empty_7, [1 x i8]* @p_str_1, [1 x i8]* @p_str_1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str_1, [1 x i8]* @p_str_1) nounwind
  %v40_read = call i64 @_ssdm_op_Read.s_axilite.i64(i64 %v40) nounwind, !bitwidth !155
  call void @llvm.dbg.value(metadata !{i64 %v40_read}, i64 0, metadata !424), !dbg !425
  %v39_read = call i64 @_ssdm_op_Read.s_axilite.i64(i64 %v39) nounwind, !bitwidth !155
  call void @llvm.dbg.value(metadata !{i64 %v39_read}, i64 0, metadata !426), !dbg !427
  %v38_read = call i64 @_ssdm_op_Read.s_axilite.i64(i64 %v38) nounwind, !bitwidth !155
  call void @llvm.dbg.value(metadata !{i64 %v38_read}, i64 0, metadata !428), !dbg !429
  %buf0 = alloca [4096 x float], align 4, !bitwidth !199
  %buf1 = alloca [4096 x float], align 4, !bitwidth !199
  %buf2 = alloca [4096 x float], align 4, !bitwidth !199
  %v44_buf_data = alloca [64 x float], align 4, !bitwidth !199
  call void (...)* @_ssdm_op_SpecChannel([5 x i8]* @p_str_2, i32 0, [1 x i8]* @p_str_1, [1 x i8]* @p_str_1, i32 4, i64 1024, [64 x float]* %v44_buf_data, [64 x float]* %v44_buf_data) nounwind, !dbg !430
  call void (...)* @_ssdm_op_SpecPipoDepth([64 x float]* %v44_buf_data, i32 4, [1 x i8]* @p_str_1) nounwind, !dbg !454
  call void (...)* @_ssdm_op_SpecInterface([64 x float]* %v44_buf_data, [9 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str_1, i32 0, i32 0, [1 x i8]* @p_str_1, [1 x i8]* @p_str_1, [1 x i8]* @p_str_1, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str_1, [1 x i8]* @p_str_1) nounwind
  call void @llvm.dbg.value(metadata !{i64 %v38}, i64 0, metadata !428), !dbg !429
  call void @llvm.dbg.value(metadata !{i64 %v39}, i64 0, metadata !426), !dbg !427
  call void @llvm.dbg.value(metadata !{i64 %v40}, i64 0, metadata !424), !dbg !425
  call void @llvm.dbg.declare(metadata !{[4096 x float]* %buf0}, metadata !455), !dbg !458
  %v40_c_channel = call fastcc i64 @entry_proc(i64 %v40_read) nounwind, !bitwidth !155
  call fastcc void @load_buf0.1(i512 addrspace(1)* %gmem0, i64 %v38_read, [4096 x float]* %buf0) nounwind, !dbg !459, !bitwidth !199, !dep_idx !460, !deps !461
  call void @llvm.dbg.declare(metadata !{[4096 x float]* %buf1}, metadata !464), !dbg !465
  call fastcc void @load_buf1.1(i512 addrspace(1)* %gmem1, i64 %v39_read, [4096 x float]* %buf1) nounwind, !dbg !466, !bitwidth !199, !dep_idx !467, !deps !461
  call void @llvm.dbg.declare(metadata !{[4096 x float]* %buf2}, metadata !468), !dbg !469
  call void @llvm.dbg.declare(metadata !{[64 x float]* %v44_buf_data}, metadata !470), !dbg !471
  call fastcc void @gemm_stage_0([4096 x float]* %buf0, [4096 x float]* %buf1, [64 x float]* %v44_buf_data) nounwind, !dbg !472, !bitwidth !199, !dep_idx !2, !deps !473
  call fastcc void @relu_stage_0([4096 x float]* %buf2, [64 x float]* %v44_buf_data) nounwind, !dbg !478, !bitwidth !199, !dep_idx !479, !deps !480
  call fastcc void @store_res2.1([4096 x float]* %buf2, i512 addrspace(1)* %gmem2, i64 %v40_c_channel) nounwind, !dbg !483, !bitwidth !199, !dep_idx !484, !deps !485
  ret void, !dbg !487, !bitwidth !199
}

define internal void @store_res2.1_Pipeline_l_S_store_res2_store_res2_l_0_l_store_res2_l_1(i512 addrspace(1)* %gmem2, i58 %sext_ln105, [4096 x float]* %v33) {
newFuncRoot:
  %phi_ln109 = alloca i480, !bitwidth !488
  %store_res2_l_1 = alloca i7, !bitwidth !489
  call void @llvm.dbg.declare(metadata !{i7* %store_res2_l_1}, metadata !490)
  %store_res2_l_0 = alloca i7, !bitwidth !489
  call void @llvm.dbg.declare(metadata !{i7* %store_res2_l_0}, metadata !495)
  %indvar_flatten = alloca i13, !bitwidth !496
  %sext_ln105_read = call i58 @_ssdm_op_Read.ap_auto.i58(i58 %sext_ln105), !bitwidth !197
  %sext_ln105_cast = sext i58 %sext_ln105_read to i64, !bitwidth !497
  call void (...)* @_ssdm_op_SpecInterface(i512 addrspace(1)* %gmem2, [6 x i8]* @empty_4, i32 0, i32 0, [1 x i8]* @p_str_1, i32 64, i32 4096, [6 x i8]* @empty_0, [6 x i8]* @empty_2, [1 x i8]* @p_str_1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str_1, [1 x i8]* @p_str_1)
  store i13 0, i13* %indvar_flatten, !bitwidth !199, !dep_idx !498, !deps !499
  store i7 0, i7* %store_res2_l_0, !bitwidth !199, !dep_idx !503, !deps !504
  store i7 0, i7* %store_res2_l_1, !bitwidth !199, !dep_idx !507, !deps !508
  store i480 0, i480* %phi_ln109, !bitwidth !199, !dep_idx !511, !deps !512
  br label %0, !bitwidth !199

.exitStub:                                        ; preds = %0
  ret void, !bitwidth !199

; <label>:0                                       ; preds = %.split._crit_edge, %newFuncRoot
  %indvar_flatten_load = load i13* %indvar_flatten, !dbg !515, !bitwidth !516, !dep_idx !517, !deps !518
  %gmem2_addr = getelementptr i512 addrspace(1)* %gmem2, i64 %sext_ln105_cast, !dbg !522, !bitwidth !151
  %icmp_ln105 = icmp eq i13 %indvar_flatten_load, -4096, !dbg !515, !bitwidth !523
  %add_ln105_1 = add i13 %indvar_flatten_load, 1, !dbg !515, !bitwidth !516
  br i1 %icmp_ln105, label %.exitStub, label %.split2, !bitwidth !199

.split._crit_edge:                                ; preds = %1, %.split2
  %add_ln106 = add i7 %select_ln105, 1, !dbg !524, !bitwidth !526
  %tmp_1 = call i448 @_ssdm_op_PartSelect.i448.i480.i32.i32(i480 %select_ln105_1, i32 32, i32 479), !bitwidth !527
  %tmp_2 = call i480 @_ssdm_op_BitConcatenate.i480.i32.i448(i32 %bitcast_ln109, i448 %tmp_1), !bitwidth !528
  %select_ln109 = select i1 %icmp_ln109, i480 0, i480 %tmp_2, !dbg !529, !bitwidth !528
  store i13 %add_ln105_1, i13* %indvar_flatten, !bitwidth !199, !dep_idx !531, !deps !532
  store i7 %select_ln105_2, i7* %store_res2_l_0, !bitwidth !199, !dep_idx !536, !deps !537
  store i7 %add_ln106, i7* %store_res2_l_1, !bitwidth !199, !dep_idx !540, !deps !541
  store i480 %select_ln109, i480* %phi_ln109, !bitwidth !199, !dep_idx !544, !deps !545
  br label %0, !llvm.loop !548, !bitwidth !199

.split2:                                          ; preds = %0
  %phi_ln109_load = load i480* %phi_ln109, !dbg !515, !bitwidth !528, !dep_idx !552, !deps !553
  %store_res2_l_1_load = load i7* %store_res2_l_1, !dbg !556, !bitwidth !526, !dep_idx !557, !deps !558
  %store_res2_l_0_load = load i7* %store_res2_l_0, !dbg !561, !bitwidth !526, !dep_idx !562, !deps !563
  %add_ln105 = add i7 %store_res2_l_0_load, 1, !dbg !561, !bitwidth !526
  call void (...)* @_ssdm_op_SpecLoopName([47 x i8]* @l_S_store_res2_store_res2_l_0_l_store_res2_l_1_str)
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4096, i64 4096, i64 4096)
  %icmp_ln106 = icmp eq i7 %store_res2_l_1_load, -64, !dbg !556, !bitwidth !523
  %select_ln105 = select i1 %icmp_ln106, i7 0, i7 %store_res2_l_1_load, !dbg !515, !bitwidth !526
  %select_ln105_1 = select i1 %icmp_ln106, i480 0, i480 %phi_ln109_load, !dbg !515, !bitwidth !528
  %select_ln105_2 = select i1 %icmp_ln106, i7 %add_ln105, i7 %store_res2_l_0_load, !dbg !515, !bitwidth !526
  %trunc_ln108 = trunc i7 %select_ln105_2 to i6, !dbg !566, !bitwidth !567
  %tmp_cast = call i12 @_ssdm_op_BitConcatenate.i12.i6.i6(i6 %trunc_ln108, i6 0), !dbg !556, !bitwidth !405
  %zext_ln108 = zext i7 %select_ln105 to i12, !dbg !566, !bitwidth !568
  %add_ln108 = add i12 %tmp_cast, %zext_ln108, !dbg !566, !bitwidth !405
  %zext_ln108_1 = zext i12 %add_ln108 to i64, !dbg !566, !bitwidth !569
  %v33_addr = getelementptr [4096 x float]* %v33, i64 0, i64 %zext_ln108_1, !dbg !566, !bitwidth !199
  %trunc_ln106 = trunc i7 %select_ln105 to i4, !dbg !556, !bitwidth !570
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 0, i32 0, i32 0, [1 x i8]* @p_str_1) nounwind, !dbg !571
  call void (...)* @_ssdm_op_SpecLoopName([17 x i8]* @empty_6) nounwind, !dbg !571
  %v37 = load float* %v33_addr, align 4, !dbg !566, !bitwidth !385
  call void @llvm.dbg.value(metadata !{float %v37}, i64 0, metadata !572), !dbg !573
  %icmp_ln109 = icmp eq i4 %trunc_ln106, -1, !dbg !529, !bitwidth !523
  %bitcast_ln109 = bitcast float %v37 to i32, !dbg !529, !bitwidth !385
  %or_ln = call i512 @_ssdm_op_BitConcatenate.i512.i32.i480(i32 %bitcast_ln109, i480 %select_ln105_1), !dbg !529, !bitwidth !574
  br i1 %icmp_ln109, label %1, label %.split._crit_edge, !dbg !529, !bitwidth !199

; <label>:1                                       ; preds = %.split2
  call void @_ssdm_op_Write.m_axi.p1i512(i512 addrspace(1)* %gmem2_addr, i512 %or_ln, i64 -1) nounwind, !dbg !529, !bitwidth !199
  br label %.split._crit_edge, !dbg !529, !bitwidth !199
}

define internal fastcc void @store_res2.1([4096 x float]* nocapture %v33, i512 addrspace(1)* %gmem2, i64 %v34) {
codeRepl:
  call void (...)* @_ssdm_op_SpecInterface(i512 addrspace(1)* %gmem2, [6 x i8]* @empty_4, i32 0, i32 0, [1 x i8]* @p_str_1, i32 64, i32 4096, [6 x i8]* @empty_0, [6 x i8]* @empty_2, [1 x i8]* @p_str_1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str_1, [1 x i8]* @p_str_1) nounwind
  %v34_read = call i64 @_ssdm_op_Read.ap_auto.i64(i64 %v34), !dbg !575, !bitwidth !155
  call void @llvm.dbg.value(metadata !{i64 %v34_read}, i64 0, metadata !576), !dbg !577
  call void @llvm.dbg.value(metadata !{[4096 x float]* %v33}, i64 0, metadata !578), !dbg !575
  call void @llvm.dbg.value(metadata !{i64 %v34}, i64 0, metadata !576), !dbg !577
  %trunc_ln = call i58 @_ssdm_op_PartSelect.i58.i64.i32.i32(i64 %v34_read, i32 6, i32 63), !dbg !522, !bitwidth !197
  %sext_ln105 = sext i58 %trunc_ln to i64, !dbg !522, !bitwidth !497
  %gmem2_addr = getelementptr i512 addrspace(1)* %gmem2, i64 %sext_ln105, !dbg !522, !bitwidth !151
  %empty = call i1 @_ssdm_op_WriteReq.m_axi.p1i512(i512 addrspace(1)* %gmem2_addr, i32 256) nounwind, !dbg !522, !bitwidth !523
  call void @store_res2.1_Pipeline_l_S_store_res2_store_res2_l_0_l_store_res2_l_1(i512 addrspace(1)* %gmem2, i58 %trunc_ln, [4096 x float]* %v33), !bitwidth !199
  %empty_32 = call i1 @_ssdm_op_WriteResp.m_axi.p1i512(i512 addrspace(1)* %gmem2_addr) nounwind, !dbg !580, !bitwidth !523
  ret void, !dbg !580, !bitwidth !199
}

define internal fastcc void @relu_stage_0([4096 x float]* noalias nocapture align 512 %v15, [64 x float]* noalias %v16_0_0_0) unnamed_addr {
  %i1 = alloca i7, !bitwidth !489
  call void @llvm.dbg.declare(metadata !{i7* %i1}, metadata !581)
  call void @llvm.dbg.value(metadata !{[4096 x float]* %v15}, i64 0, metadata !583), !dbg !584
  call void @llvm.dbg.value(metadata !{[64 x float]* %v16_0_0_0}, i64 0, metadata !585), !dbg !586
  %v16_0_0_0_addr = getelementptr [64 x float]* %v16_0_0_0, i64 0, i64 0, !dbg !587, !bitwidth !199
  %v16_0_0_0_addr_1 = getelementptr [64 x float]* %v16_0_0_0, i64 0, i64 1, !dbg !587, !bitwidth !199
  %v16_0_0_0_addr_2 = getelementptr [64 x float]* %v16_0_0_0, i64 0, i64 2, !dbg !587, !bitwidth !199
  %v16_0_0_0_addr_3 = getelementptr [64 x float]* %v16_0_0_0, i64 0, i64 3, !dbg !587, !bitwidth !199
  %v16_0_0_0_addr_4 = getelementptr [64 x float]* %v16_0_0_0, i64 0, i64 4, !dbg !587, !bitwidth !199
  %v16_0_0_0_addr_5 = getelementptr [64 x float]* %v16_0_0_0, i64 0, i64 5, !dbg !587, !bitwidth !199
  %v16_0_0_0_addr_6 = getelementptr [64 x float]* %v16_0_0_0, i64 0, i64 6, !dbg !587, !bitwidth !199
  %v16_0_0_0_addr_7 = getelementptr [64 x float]* %v16_0_0_0, i64 0, i64 7, !dbg !587, !bitwidth !199
  %v16_0_0_0_addr_8 = getelementptr [64 x float]* %v16_0_0_0, i64 0, i64 8, !dbg !587, !bitwidth !199
  %v16_0_0_0_addr_9 = getelementptr [64 x float]* %v16_0_0_0, i64 0, i64 9, !dbg !587, !bitwidth !199
  %v16_0_0_0_addr_10 = getelementptr [64 x float]* %v16_0_0_0, i64 0, i64 10, !dbg !587, !bitwidth !199
  %v16_0_0_0_addr_11 = getelementptr [64 x float]* %v16_0_0_0, i64 0, i64 11, !dbg !587, !bitwidth !199
  %v16_0_0_0_addr_12 = getelementptr [64 x float]* %v16_0_0_0, i64 0, i64 12, !dbg !587, !bitwidth !199
  %v16_0_0_0_addr_13 = getelementptr [64 x float]* %v16_0_0_0, i64 0, i64 13, !dbg !587, !bitwidth !199
  %v16_0_0_0_addr_14 = getelementptr [64 x float]* %v16_0_0_0, i64 0, i64 14, !dbg !587, !bitwidth !199
  %v16_0_0_0_addr_15 = getelementptr [64 x float]* %v16_0_0_0, i64 0, i64 15, !dbg !587, !bitwidth !199
  %v16_0_0_0_addr_16 = getelementptr [64 x float]* %v16_0_0_0, i64 0, i64 16, !dbg !587, !bitwidth !199
  %v16_0_0_0_addr_17 = getelementptr [64 x float]* %v16_0_0_0, i64 0, i64 17, !dbg !587, !bitwidth !199
  %v16_0_0_0_addr_18 = getelementptr [64 x float]* %v16_0_0_0, i64 0, i64 18, !dbg !587, !bitwidth !199
  %v16_0_0_0_addr_19 = getelementptr [64 x float]* %v16_0_0_0, i64 0, i64 19, !dbg !587, !bitwidth !199
  %v16_0_0_0_addr_20 = getelementptr [64 x float]* %v16_0_0_0, i64 0, i64 20, !dbg !587, !bitwidth !199
  %v16_0_0_0_addr_21 = getelementptr [64 x float]* %v16_0_0_0, i64 0, i64 21, !dbg !587, !bitwidth !199
  %v16_0_0_0_addr_22 = getelementptr [64 x float]* %v16_0_0_0, i64 0, i64 22, !dbg !587, !bitwidth !199
  %v16_0_0_0_addr_23 = getelementptr [64 x float]* %v16_0_0_0, i64 0, i64 23, !dbg !587, !bitwidth !199
  %v16_0_0_0_addr_24 = getelementptr [64 x float]* %v16_0_0_0, i64 0, i64 24, !dbg !587, !bitwidth !199
  %v16_0_0_0_addr_25 = getelementptr [64 x float]* %v16_0_0_0, i64 0, i64 25, !dbg !587, !bitwidth !199
  %v16_0_0_0_addr_26 = getelementptr [64 x float]* %v16_0_0_0, i64 0, i64 26, !dbg !587, !bitwidth !199
  %v16_0_0_0_addr_27 = getelementptr [64 x float]* %v16_0_0_0, i64 0, i64 27, !dbg !587, !bitwidth !199
  %v16_0_0_0_addr_28 = getelementptr [64 x float]* %v16_0_0_0, i64 0, i64 28, !dbg !587, !bitwidth !199
  %v16_0_0_0_addr_29 = getelementptr [64 x float]* %v16_0_0_0, i64 0, i64 29, !dbg !587, !bitwidth !199
  %v16_0_0_0_addr_30 = getelementptr [64 x float]* %v16_0_0_0, i64 0, i64 30, !dbg !587, !bitwidth !199
  %v16_0_0_0_addr_31 = getelementptr [64 x float]* %v16_0_0_0, i64 0, i64 31, !dbg !587, !bitwidth !199
  %v16_0_0_0_addr_32 = getelementptr [64 x float]* %v16_0_0_0, i64 0, i64 32, !dbg !587, !bitwidth !199
  %v16_0_0_0_addr_33 = getelementptr [64 x float]* %v16_0_0_0, i64 0, i64 33, !dbg !587, !bitwidth !199
  %v16_0_0_0_addr_34 = getelementptr [64 x float]* %v16_0_0_0, i64 0, i64 34, !dbg !587, !bitwidth !199
  %v16_0_0_0_addr_35 = getelementptr [64 x float]* %v16_0_0_0, i64 0, i64 35, !dbg !587, !bitwidth !199
  %v16_0_0_0_addr_36 = getelementptr [64 x float]* %v16_0_0_0, i64 0, i64 36, !dbg !587, !bitwidth !199
  %v16_0_0_0_addr_37 = getelementptr [64 x float]* %v16_0_0_0, i64 0, i64 37, !dbg !587, !bitwidth !199
  %v16_0_0_0_addr_38 = getelementptr [64 x float]* %v16_0_0_0, i64 0, i64 38, !dbg !587, !bitwidth !199
  %v16_0_0_0_addr_39 = getelementptr [64 x float]* %v16_0_0_0, i64 0, i64 39, !dbg !587, !bitwidth !199
  %v16_0_0_0_addr_40 = getelementptr [64 x float]* %v16_0_0_0, i64 0, i64 40, !dbg !587, !bitwidth !199
  %v16_0_0_0_addr_41 = getelementptr [64 x float]* %v16_0_0_0, i64 0, i64 41, !dbg !587, !bitwidth !199
  %v16_0_0_0_addr_42 = getelementptr [64 x float]* %v16_0_0_0, i64 0, i64 42, !dbg !587, !bitwidth !199
  %v16_0_0_0_addr_43 = getelementptr [64 x float]* %v16_0_0_0, i64 0, i64 43, !dbg !587, !bitwidth !199
  %v16_0_0_0_addr_44 = getelementptr [64 x float]* %v16_0_0_0, i64 0, i64 44, !dbg !587, !bitwidth !199
  %v16_0_0_0_addr_45 = getelementptr [64 x float]* %v16_0_0_0, i64 0, i64 45, !dbg !587, !bitwidth !199
  %v16_0_0_0_addr_46 = getelementptr [64 x float]* %v16_0_0_0, i64 0, i64 46, !dbg !587, !bitwidth !199
  %v16_0_0_0_addr_47 = getelementptr [64 x float]* %v16_0_0_0, i64 0, i64 47, !dbg !587, !bitwidth !199
  %v16_0_0_0_addr_48 = getelementptr [64 x float]* %v16_0_0_0, i64 0, i64 48, !dbg !587, !bitwidth !199
  %v16_0_0_0_addr_49 = getelementptr [64 x float]* %v16_0_0_0, i64 0, i64 49, !dbg !587, !bitwidth !199
  %v16_0_0_0_addr_50 = getelementptr [64 x float]* %v16_0_0_0, i64 0, i64 50, !dbg !587, !bitwidth !199
  %v16_0_0_0_addr_51 = getelementptr [64 x float]* %v16_0_0_0, i64 0, i64 51, !dbg !587, !bitwidth !199
  %v16_0_0_0_addr_52 = getelementptr [64 x float]* %v16_0_0_0, i64 0, i64 52, !dbg !587, !bitwidth !199
  %v16_0_0_0_addr_53 = getelementptr [64 x float]* %v16_0_0_0, i64 0, i64 53, !dbg !587, !bitwidth !199
  %v16_0_0_0_addr_54 = getelementptr [64 x float]* %v16_0_0_0, i64 0, i64 54, !dbg !587, !bitwidth !199
  %v16_0_0_0_addr_55 = getelementptr [64 x float]* %v16_0_0_0, i64 0, i64 55, !dbg !587, !bitwidth !199
  %v16_0_0_0_addr_56 = getelementptr [64 x float]* %v16_0_0_0, i64 0, i64 56, !dbg !587, !bitwidth !199
  %v16_0_0_0_addr_57 = getelementptr [64 x float]* %v16_0_0_0, i64 0, i64 57, !dbg !587, !bitwidth !199
  %v16_0_0_0_addr_58 = getelementptr [64 x float]* %v16_0_0_0, i64 0, i64 58, !dbg !587, !bitwidth !199
  %v16_0_0_0_addr_59 = getelementptr [64 x float]* %v16_0_0_0, i64 0, i64 59, !dbg !587, !bitwidth !199
  %v16_0_0_0_addr_60 = getelementptr [64 x float]* %v16_0_0_0, i64 0, i64 60, !dbg !587, !bitwidth !199
  %v16_0_0_0_addr_61 = getelementptr [64 x float]* %v16_0_0_0, i64 0, i64 61, !dbg !587, !bitwidth !199
  %v16_0_0_0_addr_62 = getelementptr [64 x float]* %v16_0_0_0, i64 0, i64 62, !dbg !587, !bitwidth !199
  %v16_0_0_0_addr_63 = getelementptr [64 x float]* %v16_0_0_0, i64 0, i64 63, !dbg !587, !bitwidth !199
  store i7 0, i7* %i1, !dbg !594, !bitwidth !199, !dep_idx !595, !deps !596
  br label %1, !dbg !594, !bitwidth !199

; <label>:1                                       ; preds = %.split4, %0
  %i1_1 = load i7* %i1, !dbg !599, !bitwidth !526, !dep_idx !600, !deps !601
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 0, i32 1, i32 0, [1 x i8]* @p_str6)
  %icmp_ln57 = icmp eq i7 %i1_1, -64, !dbg !604, !bitwidth !523
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64)
  %add_ln57 = add i7 %i1_1, 1, !dbg !599, !bitwidth !526
  br i1 %icmp_ln57, label %2, label %.split4, !dbg !594, !llvm.loop !605, !bitwidth !199

.split4:                                          ; preds = %1
  %tmp_127 = call i13 @_ssdm_op_BitConcatenate.i13.i7.i6(i7 %i1_1, i6 0), !dbg !607, !bitwidth !516
  %zext_ln70 = zext i13 %tmp_127 to i64, !dbg !607, !bitwidth !569
  %v15_addr = getelementptr [4096 x float]* %v15, i64 0, i64 %zext_ln70, !dbg !607, !bitwidth !199
  %or_ln70 = or i13 %tmp_127, 1, !dbg !607, !bitwidth !516
  %tmp_128 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln70), !dbg !607, !bitwidth !155
  %v15_addr_1 = getelementptr [4096 x float]* %v15, i64 0, i64 %tmp_128, !dbg !607, !bitwidth !199
  %or_ln70_1 = or i13 %tmp_127, 2, !dbg !607, !bitwidth !516
  %tmp_129 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln70_1), !dbg !607, !bitwidth !155
  %v15_addr_2 = getelementptr [4096 x float]* %v15, i64 0, i64 %tmp_129, !dbg !607, !bitwidth !199
  %or_ln70_2 = or i13 %tmp_127, 3, !dbg !607, !bitwidth !516
  %tmp_130 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln70_2), !dbg !607, !bitwidth !155
  %v15_addr_3 = getelementptr [4096 x float]* %v15, i64 0, i64 %tmp_130, !dbg !607, !bitwidth !199
  %or_ln70_3 = or i13 %tmp_127, 4, !dbg !607, !bitwidth !516
  %tmp_131 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln70_3), !dbg !607, !bitwidth !155
  %v15_addr_4 = getelementptr [4096 x float]* %v15, i64 0, i64 %tmp_131, !dbg !607, !bitwidth !199
  %or_ln70_4 = or i13 %tmp_127, 5, !dbg !607, !bitwidth !516
  %tmp_132 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln70_4), !dbg !607, !bitwidth !155
  %v15_addr_5 = getelementptr [4096 x float]* %v15, i64 0, i64 %tmp_132, !dbg !607, !bitwidth !199
  %or_ln70_5 = or i13 %tmp_127, 6, !dbg !607, !bitwidth !516
  %tmp_133 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln70_5), !dbg !607, !bitwidth !155
  %v15_addr_6 = getelementptr [4096 x float]* %v15, i64 0, i64 %tmp_133, !dbg !607, !bitwidth !199
  %or_ln70_6 = or i13 %tmp_127, 7, !dbg !607, !bitwidth !516
  %tmp_134 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln70_6), !dbg !607, !bitwidth !155
  %v15_addr_7 = getelementptr [4096 x float]* %v15, i64 0, i64 %tmp_134, !dbg !607, !bitwidth !199
  %or_ln70_7 = or i13 %tmp_127, 8, !dbg !607, !bitwidth !516
  %tmp_135 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln70_7), !dbg !607, !bitwidth !155
  %v15_addr_8 = getelementptr [4096 x float]* %v15, i64 0, i64 %tmp_135, !dbg !607, !bitwidth !199
  %or_ln70_8 = or i13 %tmp_127, 9, !dbg !607, !bitwidth !516
  %tmp_136 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln70_8), !dbg !607, !bitwidth !155
  %v15_addr_9 = getelementptr [4096 x float]* %v15, i64 0, i64 %tmp_136, !dbg !607, !bitwidth !199
  %or_ln70_9 = or i13 %tmp_127, 10, !dbg !607, !bitwidth !516
  %tmp_137 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln70_9), !dbg !607, !bitwidth !155
  %v15_addr_10 = getelementptr [4096 x float]* %v15, i64 0, i64 %tmp_137, !dbg !607, !bitwidth !199
  %or_ln70_10 = or i13 %tmp_127, 11, !dbg !607, !bitwidth !516
  %tmp_138 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln70_10), !dbg !607, !bitwidth !155
  %v15_addr_11 = getelementptr [4096 x float]* %v15, i64 0, i64 %tmp_138, !dbg !607, !bitwidth !199
  %or_ln70_11 = or i13 %tmp_127, 12, !dbg !607, !bitwidth !516
  %tmp_139 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln70_11), !dbg !607, !bitwidth !155
  %v15_addr_12 = getelementptr [4096 x float]* %v15, i64 0, i64 %tmp_139, !dbg !607, !bitwidth !199
  %or_ln70_12 = or i13 %tmp_127, 13, !dbg !607, !bitwidth !516
  %tmp_140 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln70_12), !dbg !607, !bitwidth !155
  %v15_addr_13 = getelementptr [4096 x float]* %v15, i64 0, i64 %tmp_140, !dbg !607, !bitwidth !199
  %or_ln70_13 = or i13 %tmp_127, 14, !dbg !607, !bitwidth !516
  %tmp_141 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln70_13), !dbg !607, !bitwidth !155
  %v15_addr_14 = getelementptr [4096 x float]* %v15, i64 0, i64 %tmp_141, !dbg !607, !bitwidth !199
  %or_ln70_14 = or i13 %tmp_127, 15, !dbg !607, !bitwidth !516
  %tmp_142 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln70_14), !dbg !607, !bitwidth !155
  %v15_addr_15 = getelementptr [4096 x float]* %v15, i64 0, i64 %tmp_142, !dbg !607, !bitwidth !199
  %or_ln70_15 = or i13 %tmp_127, 16, !dbg !607, !bitwidth !516
  %tmp_143 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln70_15), !dbg !607, !bitwidth !155
  %v15_addr_16 = getelementptr [4096 x float]* %v15, i64 0, i64 %tmp_143, !dbg !607, !bitwidth !199
  %or_ln70_16 = or i13 %tmp_127, 17, !dbg !607, !bitwidth !516
  %tmp_144 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln70_16), !dbg !607, !bitwidth !155
  %v15_addr_17 = getelementptr [4096 x float]* %v15, i64 0, i64 %tmp_144, !dbg !607, !bitwidth !199
  %or_ln70_17 = or i13 %tmp_127, 18, !dbg !607, !bitwidth !516
  %tmp_145 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln70_17), !dbg !607, !bitwidth !155
  %v15_addr_18 = getelementptr [4096 x float]* %v15, i64 0, i64 %tmp_145, !dbg !607, !bitwidth !199
  %or_ln70_18 = or i13 %tmp_127, 19, !dbg !607, !bitwidth !516
  %tmp_146 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln70_18), !dbg !607, !bitwidth !155
  %v15_addr_19 = getelementptr [4096 x float]* %v15, i64 0, i64 %tmp_146, !dbg !607, !bitwidth !199
  %or_ln70_19 = or i13 %tmp_127, 20, !dbg !607, !bitwidth !516
  %tmp_147 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln70_19), !dbg !607, !bitwidth !155
  %v15_addr_20 = getelementptr [4096 x float]* %v15, i64 0, i64 %tmp_147, !dbg !607, !bitwidth !199
  %or_ln70_20 = or i13 %tmp_127, 21, !dbg !607, !bitwidth !516
  %tmp_148 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln70_20), !dbg !607, !bitwidth !155
  %v15_addr_21 = getelementptr [4096 x float]* %v15, i64 0, i64 %tmp_148, !dbg !607, !bitwidth !199
  %or_ln70_21 = or i13 %tmp_127, 22, !dbg !607, !bitwidth !516
  %tmp_149 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln70_21), !dbg !607, !bitwidth !155
  %v15_addr_22 = getelementptr [4096 x float]* %v15, i64 0, i64 %tmp_149, !dbg !607, !bitwidth !199
  %or_ln70_22 = or i13 %tmp_127, 23, !dbg !607, !bitwidth !516
  %tmp_150 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln70_22), !dbg !607, !bitwidth !155
  %v15_addr_23 = getelementptr [4096 x float]* %v15, i64 0, i64 %tmp_150, !dbg !607, !bitwidth !199
  %or_ln70_23 = or i13 %tmp_127, 24, !dbg !607, !bitwidth !516
  %tmp_151 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln70_23), !dbg !607, !bitwidth !155
  %v15_addr_24 = getelementptr [4096 x float]* %v15, i64 0, i64 %tmp_151, !dbg !607, !bitwidth !199
  %or_ln70_24 = or i13 %tmp_127, 25, !dbg !607, !bitwidth !516
  %tmp_152 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln70_24), !dbg !607, !bitwidth !155
  %v15_addr_25 = getelementptr [4096 x float]* %v15, i64 0, i64 %tmp_152, !dbg !607, !bitwidth !199
  %or_ln70_25 = or i13 %tmp_127, 26, !dbg !607, !bitwidth !516
  %tmp_153 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln70_25), !dbg !607, !bitwidth !155
  %v15_addr_26 = getelementptr [4096 x float]* %v15, i64 0, i64 %tmp_153, !dbg !607, !bitwidth !199
  %or_ln70_26 = or i13 %tmp_127, 27, !dbg !607, !bitwidth !516
  %tmp_154 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln70_26), !dbg !607, !bitwidth !155
  %v15_addr_27 = getelementptr [4096 x float]* %v15, i64 0, i64 %tmp_154, !dbg !607, !bitwidth !199
  %or_ln70_27 = or i13 %tmp_127, 28, !dbg !607, !bitwidth !516
  %tmp_155 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln70_27), !dbg !607, !bitwidth !155
  %v15_addr_28 = getelementptr [4096 x float]* %v15, i64 0, i64 %tmp_155, !dbg !607, !bitwidth !199
  %or_ln70_28 = or i13 %tmp_127, 29, !dbg !607, !bitwidth !516
  %tmp_156 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln70_28), !dbg !607, !bitwidth !155
  %v15_addr_29 = getelementptr [4096 x float]* %v15, i64 0, i64 %tmp_156, !dbg !607, !bitwidth !199
  %or_ln70_29 = or i13 %tmp_127, 30, !dbg !607, !bitwidth !516
  %tmp_157 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln70_29), !dbg !607, !bitwidth !155
  %v15_addr_30 = getelementptr [4096 x float]* %v15, i64 0, i64 %tmp_157, !dbg !607, !bitwidth !199
  %or_ln70_30 = or i13 %tmp_127, 31, !dbg !607, !bitwidth !516
  %tmp_158 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln70_30), !dbg !607, !bitwidth !155
  %v15_addr_31 = getelementptr [4096 x float]* %v15, i64 0, i64 %tmp_158, !dbg !607, !bitwidth !199
  %or_ln70_31 = or i13 %tmp_127, 32, !dbg !607, !bitwidth !516
  %tmp_159 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln70_31), !dbg !607, !bitwidth !155
  %v15_addr_32 = getelementptr [4096 x float]* %v15, i64 0, i64 %tmp_159, !dbg !607, !bitwidth !199
  %or_ln70_32 = or i13 %tmp_127, 33, !dbg !607, !bitwidth !516
  %tmp_160 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln70_32), !dbg !607, !bitwidth !155
  %v15_addr_33 = getelementptr [4096 x float]* %v15, i64 0, i64 %tmp_160, !dbg !607, !bitwidth !199
  %or_ln70_33 = or i13 %tmp_127, 34, !dbg !607, !bitwidth !516
  %tmp_161 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln70_33), !dbg !607, !bitwidth !155
  %v15_addr_34 = getelementptr [4096 x float]* %v15, i64 0, i64 %tmp_161, !dbg !607, !bitwidth !199
  %or_ln70_34 = or i13 %tmp_127, 35, !dbg !607, !bitwidth !516
  %tmp_162 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln70_34), !dbg !607, !bitwidth !155
  %v15_addr_35 = getelementptr [4096 x float]* %v15, i64 0, i64 %tmp_162, !dbg !607, !bitwidth !199
  %or_ln70_35 = or i13 %tmp_127, 36, !dbg !607, !bitwidth !516
  %tmp_163 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln70_35), !dbg !607, !bitwidth !155
  %v15_addr_36 = getelementptr [4096 x float]* %v15, i64 0, i64 %tmp_163, !dbg !607, !bitwidth !199
  %or_ln70_36 = or i13 %tmp_127, 37, !dbg !607, !bitwidth !516
  %tmp_164 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln70_36), !dbg !607, !bitwidth !155
  %v15_addr_37 = getelementptr [4096 x float]* %v15, i64 0, i64 %tmp_164, !dbg !607, !bitwidth !199
  %or_ln70_37 = or i13 %tmp_127, 38, !dbg !607, !bitwidth !516
  %tmp_165 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln70_37), !dbg !607, !bitwidth !155
  %v15_addr_38 = getelementptr [4096 x float]* %v15, i64 0, i64 %tmp_165, !dbg !607, !bitwidth !199
  %or_ln70_38 = or i13 %tmp_127, 39, !dbg !607, !bitwidth !516
  %tmp_166 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln70_38), !dbg !607, !bitwidth !155
  %v15_addr_39 = getelementptr [4096 x float]* %v15, i64 0, i64 %tmp_166, !dbg !607, !bitwidth !199
  %or_ln70_39 = or i13 %tmp_127, 40, !dbg !607, !bitwidth !516
  %tmp_167 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln70_39), !dbg !607, !bitwidth !155
  %v15_addr_40 = getelementptr [4096 x float]* %v15, i64 0, i64 %tmp_167, !dbg !607, !bitwidth !199
  %or_ln70_40 = or i13 %tmp_127, 41, !dbg !607, !bitwidth !516
  %tmp_168 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln70_40), !dbg !607, !bitwidth !155
  %v15_addr_41 = getelementptr [4096 x float]* %v15, i64 0, i64 %tmp_168, !dbg !607, !bitwidth !199
  %or_ln70_41 = or i13 %tmp_127, 42, !dbg !607, !bitwidth !516
  %tmp_169 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln70_41), !dbg !607, !bitwidth !155
  %v15_addr_42 = getelementptr [4096 x float]* %v15, i64 0, i64 %tmp_169, !dbg !607, !bitwidth !199
  %or_ln70_42 = or i13 %tmp_127, 43, !dbg !607, !bitwidth !516
  %tmp_170 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln70_42), !dbg !607, !bitwidth !155
  %v15_addr_43 = getelementptr [4096 x float]* %v15, i64 0, i64 %tmp_170, !dbg !607, !bitwidth !199
  %or_ln70_43 = or i13 %tmp_127, 44, !dbg !607, !bitwidth !516
  %tmp_171 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln70_43), !dbg !607, !bitwidth !155
  %v15_addr_44 = getelementptr [4096 x float]* %v15, i64 0, i64 %tmp_171, !dbg !607, !bitwidth !199
  %or_ln70_44 = or i13 %tmp_127, 45, !dbg !607, !bitwidth !516
  %tmp_172 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln70_44), !dbg !607, !bitwidth !155
  %v15_addr_45 = getelementptr [4096 x float]* %v15, i64 0, i64 %tmp_172, !dbg !607, !bitwidth !199
  %or_ln70_45 = or i13 %tmp_127, 46, !dbg !607, !bitwidth !516
  %tmp_173 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln70_45), !dbg !607, !bitwidth !155
  %v15_addr_46 = getelementptr [4096 x float]* %v15, i64 0, i64 %tmp_173, !dbg !607, !bitwidth !199
  %or_ln70_46 = or i13 %tmp_127, 47, !dbg !607, !bitwidth !516
  %tmp_174 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln70_46), !dbg !607, !bitwidth !155
  %v15_addr_47 = getelementptr [4096 x float]* %v15, i64 0, i64 %tmp_174, !dbg !607, !bitwidth !199
  %or_ln70_47 = or i13 %tmp_127, 48, !dbg !607, !bitwidth !516
  %tmp_175 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln70_47), !dbg !607, !bitwidth !155
  %v15_addr_48 = getelementptr [4096 x float]* %v15, i64 0, i64 %tmp_175, !dbg !607, !bitwidth !199
  %or_ln70_48 = or i13 %tmp_127, 49, !dbg !607, !bitwidth !516
  %tmp_176 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln70_48), !dbg !607, !bitwidth !155
  %v15_addr_49 = getelementptr [4096 x float]* %v15, i64 0, i64 %tmp_176, !dbg !607, !bitwidth !199
  %or_ln70_49 = or i13 %tmp_127, 50, !dbg !607, !bitwidth !516
  %tmp_177 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln70_49), !dbg !607, !bitwidth !155
  %v15_addr_50 = getelementptr [4096 x float]* %v15, i64 0, i64 %tmp_177, !dbg !607, !bitwidth !199
  %or_ln70_50 = or i13 %tmp_127, 51, !dbg !607, !bitwidth !516
  %tmp_178 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln70_50), !dbg !607, !bitwidth !155
  %v15_addr_51 = getelementptr [4096 x float]* %v15, i64 0, i64 %tmp_178, !dbg !607, !bitwidth !199
  %or_ln70_51 = or i13 %tmp_127, 52, !dbg !607, !bitwidth !516
  %tmp_179 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln70_51), !dbg !607, !bitwidth !155
  %v15_addr_52 = getelementptr [4096 x float]* %v15, i64 0, i64 %tmp_179, !dbg !607, !bitwidth !199
  %or_ln70_52 = or i13 %tmp_127, 53, !dbg !607, !bitwidth !516
  %tmp_180 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln70_52), !dbg !607, !bitwidth !155
  %v15_addr_53 = getelementptr [4096 x float]* %v15, i64 0, i64 %tmp_180, !dbg !607, !bitwidth !199
  %or_ln70_53 = or i13 %tmp_127, 54, !dbg !607, !bitwidth !516
  %tmp_181 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln70_53), !dbg !607, !bitwidth !155
  %v15_addr_54 = getelementptr [4096 x float]* %v15, i64 0, i64 %tmp_181, !dbg !607, !bitwidth !199
  %or_ln70_54 = or i13 %tmp_127, 55, !dbg !607, !bitwidth !516
  %tmp_182 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln70_54), !dbg !607, !bitwidth !155
  %v15_addr_55 = getelementptr [4096 x float]* %v15, i64 0, i64 %tmp_182, !dbg !607, !bitwidth !199
  %or_ln70_55 = or i13 %tmp_127, 56, !dbg !607, !bitwidth !516
  %tmp_183 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln70_55), !dbg !607, !bitwidth !155
  %v15_addr_56 = getelementptr [4096 x float]* %v15, i64 0, i64 %tmp_183, !dbg !607, !bitwidth !199
  %or_ln70_56 = or i13 %tmp_127, 57, !dbg !607, !bitwidth !516
  %tmp_184 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln70_56), !dbg !607, !bitwidth !155
  %v15_addr_57 = getelementptr [4096 x float]* %v15, i64 0, i64 %tmp_184, !dbg !607, !bitwidth !199
  %or_ln70_57 = or i13 %tmp_127, 58, !dbg !607, !bitwidth !516
  %tmp_185 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln70_57), !dbg !607, !bitwidth !155
  %v15_addr_58 = getelementptr [4096 x float]* %v15, i64 0, i64 %tmp_185, !dbg !607, !bitwidth !199
  %or_ln70_58 = or i13 %tmp_127, 59, !dbg !607, !bitwidth !516
  %tmp_186 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln70_58), !dbg !607, !bitwidth !155
  %v15_addr_59 = getelementptr [4096 x float]* %v15, i64 0, i64 %tmp_186, !dbg !607, !bitwidth !199
  %or_ln70_59 = or i13 %tmp_127, 60, !dbg !607, !bitwidth !516
  %tmp_187 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln70_59), !dbg !607, !bitwidth !155
  %v15_addr_60 = getelementptr [4096 x float]* %v15, i64 0, i64 %tmp_187, !dbg !607, !bitwidth !199
  %or_ln70_60 = or i13 %tmp_127, 61, !dbg !607, !bitwidth !516
  %tmp_188 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln70_60), !dbg !607, !bitwidth !155
  %v15_addr_61 = getelementptr [4096 x float]* %v15, i64 0, i64 %tmp_188, !dbg !607, !bitwidth !199
  %or_ln70_61 = or i13 %tmp_127, 62, !dbg !607, !bitwidth !516
  %tmp_189 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln70_61), !dbg !607, !bitwidth !155
  %v15_addr_62 = getelementptr [4096 x float]* %v15, i64 0, i64 %tmp_189, !dbg !607, !bitwidth !199
  %or_ln70_62 = or i13 %tmp_127, 63, !dbg !607, !bitwidth !516
  %tmp_190 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln70_62), !dbg !607, !bitwidth !155
  %v15_addr_63 = getelementptr [4096 x float]* %v15, i64 0, i64 %tmp_190, !dbg !607, !bitwidth !199
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @empty_11) nounwind, !dbg !611
  call void @llvm.dbg.value(metadata !{[64 x float]* %v16_0_0_0}, i64 0, metadata !612), !dbg !634
  call void @llvm.dbg.value(metadata !{[64 x float]* %v16_0_0_0}, i64 0, metadata !635), !dbg !636
  call void @llvm.dbg.value(metadata !{[64 x float]* %v16_0_0_0}, i64 0, metadata !637), !dbg !639
  call void @llvm.dbg.value(metadata !{[64 x float]* %v16_0_0_0}, i64 0, metadata !640), !dbg !642
  call void @llvm.dbg.value(metadata !{i7 %i1_1}, i64 0, metadata !581), !dbg !643
  call void (...)* @_ssdm_op_ReadReq([64 x float]* %v16_0_0_0, i32 2) nounwind, !dbg !644, !bitwidth !199
  call void (...)* @_ssdm_op_SpecInterface([64 x float]* %v16_0_0_0, [9 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str_1, i32 0, i32 0, [1 x i8]* @p_str_1, [1 x i8]* @p_str_1, [1 x i8]* @p_str_1, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str_1, [1 x i8]* @p_str_1)
  %v18_0 = load float* %v16_0_0_0_addr, align 4, !dbg !587, !bitwidth !385
  call void @llvm.dbg.value(metadata !{float %v18_0}, i64 0, metadata !645), !dbg !646
  %v18_1 = load float* %v16_0_0_0_addr_1, align 4, !dbg !587, !bitwidth !385
  call void @llvm.dbg.value(metadata !{float %v18_1}, i64 0, metadata !647), !dbg !646
  %v18_2 = load float* %v16_0_0_0_addr_2, align 4, !dbg !587, !bitwidth !385
  call void @llvm.dbg.value(metadata !{float %v18_2}, i64 0, metadata !648), !dbg !646
  %v18_3 = load float* %v16_0_0_0_addr_3, align 4, !dbg !587, !bitwidth !385
  call void @llvm.dbg.value(metadata !{float %v18_3}, i64 0, metadata !649), !dbg !646
  %v18_4 = load float* %v16_0_0_0_addr_4, align 4, !dbg !587, !bitwidth !385
  call void @llvm.dbg.value(metadata !{float %v18_4}, i64 0, metadata !650), !dbg !646
  %v18_5 = load float* %v16_0_0_0_addr_5, align 4, !dbg !587, !bitwidth !385
  call void @llvm.dbg.value(metadata !{float %v18_5}, i64 0, metadata !651), !dbg !646
  %v18_6 = load float* %v16_0_0_0_addr_6, align 4, !dbg !587, !bitwidth !385
  call void @llvm.dbg.value(metadata !{float %v18_6}, i64 0, metadata !652), !dbg !646
  %v18_7 = load float* %v16_0_0_0_addr_7, align 4, !dbg !587, !bitwidth !385
  call void @llvm.dbg.value(metadata !{float %v18_7}, i64 0, metadata !653), !dbg !646
  %v18_8 = load float* %v16_0_0_0_addr_8, align 4, !dbg !587, !bitwidth !385
  call void @llvm.dbg.value(metadata !{float %v18_8}, i64 0, metadata !654), !dbg !646
  %v18_9 = load float* %v16_0_0_0_addr_9, align 4, !dbg !587, !bitwidth !385
  call void @llvm.dbg.value(metadata !{float %v18_9}, i64 0, metadata !655), !dbg !646
  %v18_10 = load float* %v16_0_0_0_addr_10, align 4, !dbg !587, !bitwidth !385
  call void @llvm.dbg.value(metadata !{float %v18_10}, i64 0, metadata !656), !dbg !646
  %v18_11 = load float* %v16_0_0_0_addr_11, align 4, !dbg !587, !bitwidth !385
  call void @llvm.dbg.value(metadata !{float %v18_11}, i64 0, metadata !657), !dbg !646
  %v18_12 = load float* %v16_0_0_0_addr_12, align 4, !dbg !587, !bitwidth !385
  call void @llvm.dbg.value(metadata !{float %v18_12}, i64 0, metadata !658), !dbg !646
  %v18_13 = load float* %v16_0_0_0_addr_13, align 4, !dbg !587, !bitwidth !385
  call void @llvm.dbg.value(metadata !{float %v18_13}, i64 0, metadata !659), !dbg !646
  %v18_14 = load float* %v16_0_0_0_addr_14, align 4, !dbg !587, !bitwidth !385
  call void @llvm.dbg.value(metadata !{float %v18_14}, i64 0, metadata !660), !dbg !646
  %v18_15 = load float* %v16_0_0_0_addr_15, align 4, !dbg !587, !bitwidth !385
  call void @llvm.dbg.value(metadata !{float %v18_15}, i64 0, metadata !661), !dbg !646
  %v18_16 = load float* %v16_0_0_0_addr_16, align 4, !dbg !587, !bitwidth !385
  call void @llvm.dbg.value(metadata !{float %v18_16}, i64 0, metadata !662), !dbg !646
  %v18_17 = load float* %v16_0_0_0_addr_17, align 4, !dbg !587, !bitwidth !385
  call void @llvm.dbg.value(metadata !{float %v18_17}, i64 0, metadata !663), !dbg !646
  %v18_18 = load float* %v16_0_0_0_addr_18, align 4, !dbg !587, !bitwidth !385
  call void @llvm.dbg.value(metadata !{float %v18_18}, i64 0, metadata !664), !dbg !646
  %v18_19 = load float* %v16_0_0_0_addr_19, align 4, !dbg !587, !bitwidth !385
  call void @llvm.dbg.value(metadata !{float %v18_19}, i64 0, metadata !665), !dbg !646
  %v18_20 = load float* %v16_0_0_0_addr_20, align 4, !dbg !587, !bitwidth !385
  call void @llvm.dbg.value(metadata !{float %v18_20}, i64 0, metadata !666), !dbg !646
  %v18_21 = load float* %v16_0_0_0_addr_21, align 4, !dbg !587, !bitwidth !385
  call void @llvm.dbg.value(metadata !{float %v18_21}, i64 0, metadata !667), !dbg !646
  %v18_22 = load float* %v16_0_0_0_addr_22, align 4, !dbg !587, !bitwidth !385
  call void @llvm.dbg.value(metadata !{float %v18_22}, i64 0, metadata !668), !dbg !646
  %v18_23 = load float* %v16_0_0_0_addr_23, align 4, !dbg !587, !bitwidth !385
  call void @llvm.dbg.value(metadata !{float %v18_23}, i64 0, metadata !669), !dbg !646
  %v18_24 = load float* %v16_0_0_0_addr_24, align 4, !dbg !587, !bitwidth !385
  call void @llvm.dbg.value(metadata !{float %v18_24}, i64 0, metadata !670), !dbg !646
  %v18_25 = load float* %v16_0_0_0_addr_25, align 4, !dbg !587, !bitwidth !385
  call void @llvm.dbg.value(metadata !{float %v18_25}, i64 0, metadata !671), !dbg !646
  %v18_26 = load float* %v16_0_0_0_addr_26, align 4, !dbg !587, !bitwidth !385
  call void @llvm.dbg.value(metadata !{float %v18_26}, i64 0, metadata !672), !dbg !646
  %v18_27 = load float* %v16_0_0_0_addr_27, align 4, !dbg !587, !bitwidth !385
  call void @llvm.dbg.value(metadata !{float %v18_27}, i64 0, metadata !673), !dbg !646
  %v18_28 = load float* %v16_0_0_0_addr_28, align 4, !dbg !587, !bitwidth !385
  call void @llvm.dbg.value(metadata !{float %v18_28}, i64 0, metadata !674), !dbg !646
  %v18_29 = load float* %v16_0_0_0_addr_29, align 4, !dbg !587, !bitwidth !385
  call void @llvm.dbg.value(metadata !{float %v18_29}, i64 0, metadata !675), !dbg !646
  %v18_30 = load float* %v16_0_0_0_addr_30, align 4, !dbg !587, !bitwidth !385
  call void @llvm.dbg.value(metadata !{float %v18_30}, i64 0, metadata !676), !dbg !646
  %v18_31 = load float* %v16_0_0_0_addr_31, align 4, !dbg !587, !bitwidth !385
  call void @llvm.dbg.value(metadata !{float %v18_31}, i64 0, metadata !677), !dbg !646
  %v18_32 = load float* %v16_0_0_0_addr_32, align 4, !dbg !587, !bitwidth !385
  call void @llvm.dbg.value(metadata !{float %v18_32}, i64 0, metadata !678), !dbg !646
  %v18_33 = load float* %v16_0_0_0_addr_33, align 4, !dbg !587, !bitwidth !385
  call void @llvm.dbg.value(metadata !{float %v18_33}, i64 0, metadata !679), !dbg !646
  %v18_34 = load float* %v16_0_0_0_addr_34, align 4, !dbg !587, !bitwidth !385
  call void @llvm.dbg.value(metadata !{float %v18_34}, i64 0, metadata !680), !dbg !646
  %v18_35 = load float* %v16_0_0_0_addr_35, align 4, !dbg !587, !bitwidth !385
  call void @llvm.dbg.value(metadata !{float %v18_35}, i64 0, metadata !681), !dbg !646
  %v18_36 = load float* %v16_0_0_0_addr_36, align 4, !dbg !587, !bitwidth !385
  call void @llvm.dbg.value(metadata !{float %v18_36}, i64 0, metadata !682), !dbg !646
  %v18_37 = load float* %v16_0_0_0_addr_37, align 4, !dbg !587, !bitwidth !385
  call void @llvm.dbg.value(metadata !{float %v18_37}, i64 0, metadata !683), !dbg !646
  %v18_38 = load float* %v16_0_0_0_addr_38, align 4, !dbg !587, !bitwidth !385
  call void @llvm.dbg.value(metadata !{float %v18_38}, i64 0, metadata !684), !dbg !646
  %v18_39 = load float* %v16_0_0_0_addr_39, align 4, !dbg !587, !bitwidth !385
  call void @llvm.dbg.value(metadata !{float %v18_39}, i64 0, metadata !685), !dbg !646
  %v18_40 = load float* %v16_0_0_0_addr_40, align 4, !dbg !587, !bitwidth !385
  call void @llvm.dbg.value(metadata !{float %v18_40}, i64 0, metadata !686), !dbg !646
  %v18_41 = load float* %v16_0_0_0_addr_41, align 4, !dbg !587, !bitwidth !385
  call void @llvm.dbg.value(metadata !{float %v18_41}, i64 0, metadata !687), !dbg !646
  %v18_42 = load float* %v16_0_0_0_addr_42, align 4, !dbg !587, !bitwidth !385
  call void @llvm.dbg.value(metadata !{float %v18_42}, i64 0, metadata !688), !dbg !646
  %v18_43 = load float* %v16_0_0_0_addr_43, align 4, !dbg !587, !bitwidth !385
  call void @llvm.dbg.value(metadata !{float %v18_43}, i64 0, metadata !689), !dbg !646
  %v18_44 = load float* %v16_0_0_0_addr_44, align 4, !dbg !587, !bitwidth !385
  call void @llvm.dbg.value(metadata !{float %v18_44}, i64 0, metadata !690), !dbg !646
  %v18_45 = load float* %v16_0_0_0_addr_45, align 4, !dbg !587, !bitwidth !385
  call void @llvm.dbg.value(metadata !{float %v18_45}, i64 0, metadata !691), !dbg !646
  %v18_46 = load float* %v16_0_0_0_addr_46, align 4, !dbg !587, !bitwidth !385
  call void @llvm.dbg.value(metadata !{float %v18_46}, i64 0, metadata !692), !dbg !646
  %v18_47 = load float* %v16_0_0_0_addr_47, align 4, !dbg !587, !bitwidth !385
  call void @llvm.dbg.value(metadata !{float %v18_47}, i64 0, metadata !693), !dbg !646
  %v18_48 = load float* %v16_0_0_0_addr_48, align 4, !dbg !587, !bitwidth !385
  call void @llvm.dbg.value(metadata !{float %v18_48}, i64 0, metadata !694), !dbg !646
  %v18_49 = load float* %v16_0_0_0_addr_49, align 4, !dbg !587, !bitwidth !385
  call void @llvm.dbg.value(metadata !{float %v18_49}, i64 0, metadata !695), !dbg !646
  %v18_50 = load float* %v16_0_0_0_addr_50, align 4, !dbg !587, !bitwidth !385
  call void @llvm.dbg.value(metadata !{float %v18_50}, i64 0, metadata !696), !dbg !646
  %v18_51 = load float* %v16_0_0_0_addr_51, align 4, !dbg !587, !bitwidth !385
  call void @llvm.dbg.value(metadata !{float %v18_51}, i64 0, metadata !697), !dbg !646
  %v18_52 = load float* %v16_0_0_0_addr_52, align 4, !dbg !587, !bitwidth !385
  call void @llvm.dbg.value(metadata !{float %v18_52}, i64 0, metadata !698), !dbg !646
  %v18_53 = load float* %v16_0_0_0_addr_53, align 4, !dbg !587, !bitwidth !385
  call void @llvm.dbg.value(metadata !{float %v18_53}, i64 0, metadata !699), !dbg !646
  %v18_54 = load float* %v16_0_0_0_addr_54, align 4, !dbg !587, !bitwidth !385
  call void @llvm.dbg.value(metadata !{float %v18_54}, i64 0, metadata !700), !dbg !646
  %v18_55 = load float* %v16_0_0_0_addr_55, align 4, !dbg !587, !bitwidth !385
  call void @llvm.dbg.value(metadata !{float %v18_55}, i64 0, metadata !701), !dbg !646
  %v18_56 = load float* %v16_0_0_0_addr_56, align 4, !dbg !587, !bitwidth !385
  call void @llvm.dbg.value(metadata !{float %v18_56}, i64 0, metadata !702), !dbg !646
  %v18_57 = load float* %v16_0_0_0_addr_57, align 4, !dbg !587, !bitwidth !385
  call void @llvm.dbg.value(metadata !{float %v18_57}, i64 0, metadata !703), !dbg !646
  %v18_58 = load float* %v16_0_0_0_addr_58, align 4, !dbg !587, !bitwidth !385
  call void @llvm.dbg.value(metadata !{float %v18_58}, i64 0, metadata !704), !dbg !646
  %v18_59 = load float* %v16_0_0_0_addr_59, align 4, !dbg !587, !bitwidth !385
  call void @llvm.dbg.value(metadata !{float %v18_59}, i64 0, metadata !705), !dbg !646
  %v18_60 = load float* %v16_0_0_0_addr_60, align 4, !dbg !587, !bitwidth !385
  call void @llvm.dbg.value(metadata !{float %v18_60}, i64 0, metadata !706), !dbg !646
  %v18_61 = load float* %v16_0_0_0_addr_61, align 4, !dbg !587, !bitwidth !385
  call void @llvm.dbg.value(metadata !{float %v18_61}, i64 0, metadata !707), !dbg !646
  %v18_62 = load float* %v16_0_0_0_addr_62, align 4, !dbg !587, !bitwidth !385
  call void @llvm.dbg.value(metadata !{float %v18_62}, i64 0, metadata !708), !dbg !646
  %v18_63 = load float* %v16_0_0_0_addr_63, align 4, !dbg !587, !bitwidth !385
  call void @llvm.dbg.value(metadata !{float %v18_63}, i64 0, metadata !709), !dbg !646
  call void @llvm.dbg.value(metadata !{[64 x float]* %v16_0_0_0}, i64 0, metadata !710), !dbg !712
  call void @llvm.dbg.value(metadata !{[64 x float]* %v16_0_0_0}, i64 0, metadata !713), !dbg !715
  call void (...)* @_ssdm_op_Read([64 x float]* %v16_0_0_0, i32 2) nounwind, !dbg !716, !bitwidth !199
  %bitcast_ln68 = bitcast float %v18_0 to i32, !dbg !717, !bitwidth !385
  %tmp = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %bitcast_ln68, i32 23, i32 30), !dbg !717, !bitwidth !718
  %trunc_ln68 = trunc i32 %bitcast_ln68 to i23, !dbg !717, !bitwidth !719
  %icmp_ln68 = icmp ne i8 %tmp, -1, !dbg !717, !bitwidth !523
  %icmp_ln68_1 = icmp eq i23 %trunc_ln68, 0, !dbg !717, !bitwidth !523
  %or_ln68 = or i1 %icmp_ln68_1, %icmp_ln68, !dbg !717, !bitwidth !523
  %tmp_1 = fcmp ogt float %v18_0, 0.000000e+00, !dbg !717, !bitwidth !523
  %and_ln68 = and i1 %or_ln68, %tmp_1, !dbg !717, !bitwidth !523
  %select_ln69 = select i1 %and_ln68, float %v18_0, float 0.000000e+00, !dbg !720, !bitwidth !385
  store float %select_ln69, float* %v15_addr, align 4, !dbg !721, !bitwidth !199
  %bitcast_ln68_1 = bitcast float %v18_1 to i32, !dbg !717, !bitwidth !385
  %tmp_2 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %bitcast_ln68_1, i32 23, i32 30), !dbg !717, !bitwidth !718
  %trunc_ln68_1 = trunc i32 %bitcast_ln68_1 to i23, !dbg !717, !bitwidth !719
  %icmp_ln68_2 = icmp ne i8 %tmp_2, -1, !dbg !717, !bitwidth !523
  %icmp_ln68_3 = icmp eq i23 %trunc_ln68_1, 0, !dbg !717, !bitwidth !523
  %or_ln68_1 = or i1 %icmp_ln68_3, %icmp_ln68_2, !dbg !717, !bitwidth !523
  %tmp_3 = fcmp ogt float %v18_1, 0.000000e+00, !dbg !717, !bitwidth !523
  %and_ln68_1 = and i1 %or_ln68_1, %tmp_3, !dbg !717, !bitwidth !523
  %select_ln69_1 = select i1 %and_ln68_1, float %v18_1, float 0.000000e+00, !dbg !720, !bitwidth !385
  store float %select_ln69_1, float* %v15_addr_1, align 4, !dbg !721, !bitwidth !199
  %bitcast_ln68_2 = bitcast float %v18_2 to i32, !dbg !717, !bitwidth !385
  %tmp_4 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %bitcast_ln68_2, i32 23, i32 30), !dbg !717, !bitwidth !718
  %trunc_ln68_2 = trunc i32 %bitcast_ln68_2 to i23, !dbg !717, !bitwidth !719
  %icmp_ln68_4 = icmp ne i8 %tmp_4, -1, !dbg !717, !bitwidth !523
  %icmp_ln68_5 = icmp eq i23 %trunc_ln68_2, 0, !dbg !717, !bitwidth !523
  %or_ln68_2 = or i1 %icmp_ln68_5, %icmp_ln68_4, !dbg !717, !bitwidth !523
  %tmp_5 = fcmp ogt float %v18_2, 0.000000e+00, !dbg !717, !bitwidth !523
  %and_ln68_2 = and i1 %or_ln68_2, %tmp_5, !dbg !717, !bitwidth !523
  %select_ln69_2 = select i1 %and_ln68_2, float %v18_2, float 0.000000e+00, !dbg !720, !bitwidth !385
  store float %select_ln69_2, float* %v15_addr_2, align 4, !dbg !721, !bitwidth !199
  %bitcast_ln68_3 = bitcast float %v18_3 to i32, !dbg !717, !bitwidth !385
  %tmp_6 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %bitcast_ln68_3, i32 23, i32 30), !dbg !717, !bitwidth !718
  %trunc_ln68_3 = trunc i32 %bitcast_ln68_3 to i23, !dbg !717, !bitwidth !719
  %icmp_ln68_6 = icmp ne i8 %tmp_6, -1, !dbg !717, !bitwidth !523
  %icmp_ln68_7 = icmp eq i23 %trunc_ln68_3, 0, !dbg !717, !bitwidth !523
  %or_ln68_3 = or i1 %icmp_ln68_7, %icmp_ln68_6, !dbg !717, !bitwidth !523
  %tmp_7 = fcmp ogt float %v18_3, 0.000000e+00, !dbg !717, !bitwidth !523
  %and_ln68_3 = and i1 %or_ln68_3, %tmp_7, !dbg !717, !bitwidth !523
  %select_ln69_3 = select i1 %and_ln68_3, float %v18_3, float 0.000000e+00, !dbg !720, !bitwidth !385
  store float %select_ln69_3, float* %v15_addr_3, align 4, !dbg !721, !bitwidth !199
  %bitcast_ln68_4 = bitcast float %v18_4 to i32, !dbg !717, !bitwidth !385
  %tmp_8 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %bitcast_ln68_4, i32 23, i32 30), !dbg !717, !bitwidth !718
  %trunc_ln68_4 = trunc i32 %bitcast_ln68_4 to i23, !dbg !717, !bitwidth !719
  %icmp_ln68_8 = icmp ne i8 %tmp_8, -1, !dbg !717, !bitwidth !523
  %icmp_ln68_9 = icmp eq i23 %trunc_ln68_4, 0, !dbg !717, !bitwidth !523
  %or_ln68_4 = or i1 %icmp_ln68_9, %icmp_ln68_8, !dbg !717, !bitwidth !523
  %tmp_9 = fcmp ogt float %v18_4, 0.000000e+00, !dbg !717, !bitwidth !523
  %and_ln68_4 = and i1 %or_ln68_4, %tmp_9, !dbg !717, !bitwidth !523
  %select_ln69_4 = select i1 %and_ln68_4, float %v18_4, float 0.000000e+00, !dbg !720, !bitwidth !385
  store float %select_ln69_4, float* %v15_addr_4, align 4, !dbg !721, !bitwidth !199
  %bitcast_ln68_5 = bitcast float %v18_5 to i32, !dbg !717, !bitwidth !385
  %tmp_s = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %bitcast_ln68_5, i32 23, i32 30), !dbg !717, !bitwidth !718
  %trunc_ln68_5 = trunc i32 %bitcast_ln68_5 to i23, !dbg !717, !bitwidth !719
  %icmp_ln68_10 = icmp ne i8 %tmp_s, -1, !dbg !717, !bitwidth !523
  %icmp_ln68_11 = icmp eq i23 %trunc_ln68_5, 0, !dbg !717, !bitwidth !523
  %or_ln68_5 = or i1 %icmp_ln68_11, %icmp_ln68_10, !dbg !717, !bitwidth !523
  %tmp_10 = fcmp ogt float %v18_5, 0.000000e+00, !dbg !717, !bitwidth !523
  %and_ln68_5 = and i1 %or_ln68_5, %tmp_10, !dbg !717, !bitwidth !523
  %select_ln69_5 = select i1 %and_ln68_5, float %v18_5, float 0.000000e+00, !dbg !720, !bitwidth !385
  store float %select_ln69_5, float* %v15_addr_5, align 4, !dbg !721, !bitwidth !199
  %bitcast_ln68_6 = bitcast float %v18_6 to i32, !dbg !717, !bitwidth !385
  %tmp_11 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %bitcast_ln68_6, i32 23, i32 30), !dbg !717, !bitwidth !718
  %trunc_ln68_6 = trunc i32 %bitcast_ln68_6 to i23, !dbg !717, !bitwidth !719
  %icmp_ln68_12 = icmp ne i8 %tmp_11, -1, !dbg !717, !bitwidth !523
  %icmp_ln68_13 = icmp eq i23 %trunc_ln68_6, 0, !dbg !717, !bitwidth !523
  %or_ln68_6 = or i1 %icmp_ln68_13, %icmp_ln68_12, !dbg !717, !bitwidth !523
  %tmp_12 = fcmp ogt float %v18_6, 0.000000e+00, !dbg !717, !bitwidth !523
  %and_ln68_6 = and i1 %or_ln68_6, %tmp_12, !dbg !717, !bitwidth !523
  %select_ln69_6 = select i1 %and_ln68_6, float %v18_6, float 0.000000e+00, !dbg !720, !bitwidth !385
  store float %select_ln69_6, float* %v15_addr_6, align 4, !dbg !721, !bitwidth !199
  %bitcast_ln68_7 = bitcast float %v18_7 to i32, !dbg !717, !bitwidth !385
  %tmp_13 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %bitcast_ln68_7, i32 23, i32 30), !dbg !717, !bitwidth !718
  %trunc_ln68_7 = trunc i32 %bitcast_ln68_7 to i23, !dbg !717, !bitwidth !719
  %icmp_ln68_14 = icmp ne i8 %tmp_13, -1, !dbg !717, !bitwidth !523
  %icmp_ln68_15 = icmp eq i23 %trunc_ln68_7, 0, !dbg !717, !bitwidth !523
  %or_ln68_7 = or i1 %icmp_ln68_15, %icmp_ln68_14, !dbg !717, !bitwidth !523
  %tmp_14 = fcmp ogt float %v18_7, 0.000000e+00, !dbg !717, !bitwidth !523
  %and_ln68_7 = and i1 %or_ln68_7, %tmp_14, !dbg !717, !bitwidth !523
  %select_ln69_7 = select i1 %and_ln68_7, float %v18_7, float 0.000000e+00, !dbg !720, !bitwidth !385
  store float %select_ln69_7, float* %v15_addr_7, align 4, !dbg !721, !bitwidth !199
  %bitcast_ln68_8 = bitcast float %v18_8 to i32, !dbg !717, !bitwidth !385
  %tmp_15 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %bitcast_ln68_8, i32 23, i32 30), !dbg !717, !bitwidth !718
  %trunc_ln68_8 = trunc i32 %bitcast_ln68_8 to i23, !dbg !717, !bitwidth !719
  %icmp_ln68_16 = icmp ne i8 %tmp_15, -1, !dbg !717, !bitwidth !523
  %icmp_ln68_17 = icmp eq i23 %trunc_ln68_8, 0, !dbg !717, !bitwidth !523
  %or_ln68_8 = or i1 %icmp_ln68_17, %icmp_ln68_16, !dbg !717, !bitwidth !523
  %tmp_16 = fcmp ogt float %v18_8, 0.000000e+00, !dbg !717, !bitwidth !523
  %and_ln68_8 = and i1 %or_ln68_8, %tmp_16, !dbg !717, !bitwidth !523
  %select_ln69_8 = select i1 %and_ln68_8, float %v18_8, float 0.000000e+00, !dbg !720, !bitwidth !385
  store float %select_ln69_8, float* %v15_addr_8, align 4, !dbg !721, !bitwidth !199
  %bitcast_ln68_9 = bitcast float %v18_9 to i32, !dbg !717, !bitwidth !385
  %tmp_17 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %bitcast_ln68_9, i32 23, i32 30), !dbg !717, !bitwidth !718
  %trunc_ln68_9 = trunc i32 %bitcast_ln68_9 to i23, !dbg !717, !bitwidth !719
  %icmp_ln68_18 = icmp ne i8 %tmp_17, -1, !dbg !717, !bitwidth !523
  %icmp_ln68_19 = icmp eq i23 %trunc_ln68_9, 0, !dbg !717, !bitwidth !523
  %or_ln68_9 = or i1 %icmp_ln68_19, %icmp_ln68_18, !dbg !717, !bitwidth !523
  %tmp_18 = fcmp ogt float %v18_9, 0.000000e+00, !dbg !717, !bitwidth !523
  %and_ln68_9 = and i1 %or_ln68_9, %tmp_18, !dbg !717, !bitwidth !523
  %select_ln69_9 = select i1 %and_ln68_9, float %v18_9, float 0.000000e+00, !dbg !720, !bitwidth !385
  store float %select_ln69_9, float* %v15_addr_9, align 4, !dbg !721, !bitwidth !199
  %bitcast_ln68_10 = bitcast float %v18_10 to i32, !dbg !717, !bitwidth !385
  %tmp_19 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %bitcast_ln68_10, i32 23, i32 30), !dbg !717, !bitwidth !718
  %trunc_ln68_10 = trunc i32 %bitcast_ln68_10 to i23, !dbg !717, !bitwidth !719
  %icmp_ln68_20 = icmp ne i8 %tmp_19, -1, !dbg !717, !bitwidth !523
  %icmp_ln68_21 = icmp eq i23 %trunc_ln68_10, 0, !dbg !717, !bitwidth !523
  %or_ln68_10 = or i1 %icmp_ln68_21, %icmp_ln68_20, !dbg !717, !bitwidth !523
  %tmp_20 = fcmp ogt float %v18_10, 0.000000e+00, !dbg !717, !bitwidth !523
  %and_ln68_10 = and i1 %or_ln68_10, %tmp_20, !dbg !717, !bitwidth !523
  %select_ln69_10 = select i1 %and_ln68_10, float %v18_10, float 0.000000e+00, !dbg !720, !bitwidth !385
  store float %select_ln69_10, float* %v15_addr_10, align 4, !dbg !721, !bitwidth !199
  %bitcast_ln68_11 = bitcast float %v18_11 to i32, !dbg !717, !bitwidth !385
  %tmp_21 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %bitcast_ln68_11, i32 23, i32 30), !dbg !717, !bitwidth !718
  %trunc_ln68_11 = trunc i32 %bitcast_ln68_11 to i23, !dbg !717, !bitwidth !719
  %icmp_ln68_22 = icmp ne i8 %tmp_21, -1, !dbg !717, !bitwidth !523
  %icmp_ln68_23 = icmp eq i23 %trunc_ln68_11, 0, !dbg !717, !bitwidth !523
  %or_ln68_11 = or i1 %icmp_ln68_23, %icmp_ln68_22, !dbg !717, !bitwidth !523
  %tmp_22 = fcmp ogt float %v18_11, 0.000000e+00, !dbg !717, !bitwidth !523
  %and_ln68_11 = and i1 %or_ln68_11, %tmp_22, !dbg !717, !bitwidth !523
  %select_ln69_11 = select i1 %and_ln68_11, float %v18_11, float 0.000000e+00, !dbg !720, !bitwidth !385
  store float %select_ln69_11, float* %v15_addr_11, align 4, !dbg !721, !bitwidth !199
  %bitcast_ln68_12 = bitcast float %v18_12 to i32, !dbg !717, !bitwidth !385
  %tmp_23 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %bitcast_ln68_12, i32 23, i32 30), !dbg !717, !bitwidth !718
  %trunc_ln68_12 = trunc i32 %bitcast_ln68_12 to i23, !dbg !717, !bitwidth !719
  %icmp_ln68_24 = icmp ne i8 %tmp_23, -1, !dbg !717, !bitwidth !523
  %icmp_ln68_25 = icmp eq i23 %trunc_ln68_12, 0, !dbg !717, !bitwidth !523
  %or_ln68_12 = or i1 %icmp_ln68_25, %icmp_ln68_24, !dbg !717, !bitwidth !523
  %tmp_24 = fcmp ogt float %v18_12, 0.000000e+00, !dbg !717, !bitwidth !523
  %and_ln68_12 = and i1 %or_ln68_12, %tmp_24, !dbg !717, !bitwidth !523
  %select_ln69_12 = select i1 %and_ln68_12, float %v18_12, float 0.000000e+00, !dbg !720, !bitwidth !385
  store float %select_ln69_12, float* %v15_addr_12, align 4, !dbg !721, !bitwidth !199
  %bitcast_ln68_13 = bitcast float %v18_13 to i32, !dbg !717, !bitwidth !385
  %tmp_25 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %bitcast_ln68_13, i32 23, i32 30), !dbg !717, !bitwidth !718
  %trunc_ln68_13 = trunc i32 %bitcast_ln68_13 to i23, !dbg !717, !bitwidth !719
  %icmp_ln68_26 = icmp ne i8 %tmp_25, -1, !dbg !717, !bitwidth !523
  %icmp_ln68_27 = icmp eq i23 %trunc_ln68_13, 0, !dbg !717, !bitwidth !523
  %or_ln68_13 = or i1 %icmp_ln68_27, %icmp_ln68_26, !dbg !717, !bitwidth !523
  %tmp_26 = fcmp ogt float %v18_13, 0.000000e+00, !dbg !717, !bitwidth !523
  %and_ln68_13 = and i1 %or_ln68_13, %tmp_26, !dbg !717, !bitwidth !523
  %select_ln69_13 = select i1 %and_ln68_13, float %v18_13, float 0.000000e+00, !dbg !720, !bitwidth !385
  store float %select_ln69_13, float* %v15_addr_13, align 4, !dbg !721, !bitwidth !199
  %bitcast_ln68_14 = bitcast float %v18_14 to i32, !dbg !717, !bitwidth !385
  %tmp_27 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %bitcast_ln68_14, i32 23, i32 30), !dbg !717, !bitwidth !718
  %trunc_ln68_14 = trunc i32 %bitcast_ln68_14 to i23, !dbg !717, !bitwidth !719
  %icmp_ln68_28 = icmp ne i8 %tmp_27, -1, !dbg !717, !bitwidth !523
  %icmp_ln68_29 = icmp eq i23 %trunc_ln68_14, 0, !dbg !717, !bitwidth !523
  %or_ln68_14 = or i1 %icmp_ln68_29, %icmp_ln68_28, !dbg !717, !bitwidth !523
  %tmp_28 = fcmp ogt float %v18_14, 0.000000e+00, !dbg !717, !bitwidth !523
  %and_ln68_14 = and i1 %or_ln68_14, %tmp_28, !dbg !717, !bitwidth !523
  %select_ln69_14 = select i1 %and_ln68_14, float %v18_14, float 0.000000e+00, !dbg !720, !bitwidth !385
  store float %select_ln69_14, float* %v15_addr_14, align 4, !dbg !721, !bitwidth !199
  %bitcast_ln68_15 = bitcast float %v18_15 to i32, !dbg !717, !bitwidth !385
  %tmp_29 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %bitcast_ln68_15, i32 23, i32 30), !dbg !717, !bitwidth !718
  %trunc_ln68_15 = trunc i32 %bitcast_ln68_15 to i23, !dbg !717, !bitwidth !719
  %icmp_ln68_30 = icmp ne i8 %tmp_29, -1, !dbg !717, !bitwidth !523
  %icmp_ln68_31 = icmp eq i23 %trunc_ln68_15, 0, !dbg !717, !bitwidth !523
  %or_ln68_15 = or i1 %icmp_ln68_31, %icmp_ln68_30, !dbg !717, !bitwidth !523
  %tmp_30 = fcmp ogt float %v18_15, 0.000000e+00, !dbg !717, !bitwidth !523
  %and_ln68_15 = and i1 %or_ln68_15, %tmp_30, !dbg !717, !bitwidth !523
  %select_ln69_15 = select i1 %and_ln68_15, float %v18_15, float 0.000000e+00, !dbg !720, !bitwidth !385
  store float %select_ln69_15, float* %v15_addr_15, align 4, !dbg !721, !bitwidth !199
  %bitcast_ln68_16 = bitcast float %v18_16 to i32, !dbg !717, !bitwidth !385
  %tmp_31 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %bitcast_ln68_16, i32 23, i32 30), !dbg !717, !bitwidth !718
  %trunc_ln68_16 = trunc i32 %bitcast_ln68_16 to i23, !dbg !717, !bitwidth !719
  %icmp_ln68_32 = icmp ne i8 %tmp_31, -1, !dbg !717, !bitwidth !523
  %icmp_ln68_33 = icmp eq i23 %trunc_ln68_16, 0, !dbg !717, !bitwidth !523
  %or_ln68_16 = or i1 %icmp_ln68_33, %icmp_ln68_32, !dbg !717, !bitwidth !523
  %tmp_32 = fcmp ogt float %v18_16, 0.000000e+00, !dbg !717, !bitwidth !523
  %and_ln68_16 = and i1 %or_ln68_16, %tmp_32, !dbg !717, !bitwidth !523
  %select_ln69_16 = select i1 %and_ln68_16, float %v18_16, float 0.000000e+00, !dbg !720, !bitwidth !385
  store float %select_ln69_16, float* %v15_addr_16, align 4, !dbg !721, !bitwidth !199
  %bitcast_ln68_17 = bitcast float %v18_17 to i32, !dbg !717, !bitwidth !385
  %tmp_33 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %bitcast_ln68_17, i32 23, i32 30), !dbg !717, !bitwidth !718
  %trunc_ln68_17 = trunc i32 %bitcast_ln68_17 to i23, !dbg !717, !bitwidth !719
  %icmp_ln68_34 = icmp ne i8 %tmp_33, -1, !dbg !717, !bitwidth !523
  %icmp_ln68_35 = icmp eq i23 %trunc_ln68_17, 0, !dbg !717, !bitwidth !523
  %or_ln68_17 = or i1 %icmp_ln68_35, %icmp_ln68_34, !dbg !717, !bitwidth !523
  %tmp_34 = fcmp ogt float %v18_17, 0.000000e+00, !dbg !717, !bitwidth !523
  %and_ln68_17 = and i1 %or_ln68_17, %tmp_34, !dbg !717, !bitwidth !523
  %select_ln69_17 = select i1 %and_ln68_17, float %v18_17, float 0.000000e+00, !dbg !720, !bitwidth !385
  store float %select_ln69_17, float* %v15_addr_17, align 4, !dbg !721, !bitwidth !199
  %bitcast_ln68_18 = bitcast float %v18_18 to i32, !dbg !717, !bitwidth !385
  %tmp_35 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %bitcast_ln68_18, i32 23, i32 30), !dbg !717, !bitwidth !718
  %trunc_ln68_18 = trunc i32 %bitcast_ln68_18 to i23, !dbg !717, !bitwidth !719
  %icmp_ln68_36 = icmp ne i8 %tmp_35, -1, !dbg !717, !bitwidth !523
  %icmp_ln68_37 = icmp eq i23 %trunc_ln68_18, 0, !dbg !717, !bitwidth !523
  %or_ln68_18 = or i1 %icmp_ln68_37, %icmp_ln68_36, !dbg !717, !bitwidth !523
  %tmp_36 = fcmp ogt float %v18_18, 0.000000e+00, !dbg !717, !bitwidth !523
  %and_ln68_18 = and i1 %or_ln68_18, %tmp_36, !dbg !717, !bitwidth !523
  %select_ln69_18 = select i1 %and_ln68_18, float %v18_18, float 0.000000e+00, !dbg !720, !bitwidth !385
  store float %select_ln69_18, float* %v15_addr_18, align 4, !dbg !721, !bitwidth !199
  %bitcast_ln68_19 = bitcast float %v18_19 to i32, !dbg !717, !bitwidth !385
  %tmp_37 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %bitcast_ln68_19, i32 23, i32 30), !dbg !717, !bitwidth !718
  %trunc_ln68_19 = trunc i32 %bitcast_ln68_19 to i23, !dbg !717, !bitwidth !719
  %icmp_ln68_38 = icmp ne i8 %tmp_37, -1, !dbg !717, !bitwidth !523
  %icmp_ln68_39 = icmp eq i23 %trunc_ln68_19, 0, !dbg !717, !bitwidth !523
  %or_ln68_19 = or i1 %icmp_ln68_39, %icmp_ln68_38, !dbg !717, !bitwidth !523
  %tmp_38 = fcmp ogt float %v18_19, 0.000000e+00, !dbg !717, !bitwidth !523
  %and_ln68_19 = and i1 %or_ln68_19, %tmp_38, !dbg !717, !bitwidth !523
  %select_ln69_19 = select i1 %and_ln68_19, float %v18_19, float 0.000000e+00, !dbg !720, !bitwidth !385
  store float %select_ln69_19, float* %v15_addr_19, align 4, !dbg !721, !bitwidth !199
  %bitcast_ln68_20 = bitcast float %v18_20 to i32, !dbg !717, !bitwidth !385
  %tmp_39 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %bitcast_ln68_20, i32 23, i32 30), !dbg !717, !bitwidth !718
  %trunc_ln68_20 = trunc i32 %bitcast_ln68_20 to i23, !dbg !717, !bitwidth !719
  %icmp_ln68_40 = icmp ne i8 %tmp_39, -1, !dbg !717, !bitwidth !523
  %icmp_ln68_41 = icmp eq i23 %trunc_ln68_20, 0, !dbg !717, !bitwidth !523
  %or_ln68_20 = or i1 %icmp_ln68_41, %icmp_ln68_40, !dbg !717, !bitwidth !523
  %tmp_40 = fcmp ogt float %v18_20, 0.000000e+00, !dbg !717, !bitwidth !523
  %and_ln68_20 = and i1 %or_ln68_20, %tmp_40, !dbg !717, !bitwidth !523
  %select_ln69_20 = select i1 %and_ln68_20, float %v18_20, float 0.000000e+00, !dbg !720, !bitwidth !385
  store float %select_ln69_20, float* %v15_addr_20, align 4, !dbg !721, !bitwidth !199
  %bitcast_ln68_21 = bitcast float %v18_21 to i32, !dbg !717, !bitwidth !385
  %tmp_41 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %bitcast_ln68_21, i32 23, i32 30), !dbg !717, !bitwidth !718
  %trunc_ln68_21 = trunc i32 %bitcast_ln68_21 to i23, !dbg !717, !bitwidth !719
  %icmp_ln68_42 = icmp ne i8 %tmp_41, -1, !dbg !717, !bitwidth !523
  %icmp_ln68_43 = icmp eq i23 %trunc_ln68_21, 0, !dbg !717, !bitwidth !523
  %or_ln68_21 = or i1 %icmp_ln68_43, %icmp_ln68_42, !dbg !717, !bitwidth !523
  %tmp_42 = fcmp ogt float %v18_21, 0.000000e+00, !dbg !717, !bitwidth !523
  %and_ln68_21 = and i1 %or_ln68_21, %tmp_42, !dbg !717, !bitwidth !523
  %select_ln69_21 = select i1 %and_ln68_21, float %v18_21, float 0.000000e+00, !dbg !720, !bitwidth !385
  store float %select_ln69_21, float* %v15_addr_21, align 4, !dbg !721, !bitwidth !199
  %bitcast_ln68_22 = bitcast float %v18_22 to i32, !dbg !717, !bitwidth !385
  %tmp_43 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %bitcast_ln68_22, i32 23, i32 30), !dbg !717, !bitwidth !718
  %trunc_ln68_22 = trunc i32 %bitcast_ln68_22 to i23, !dbg !717, !bitwidth !719
  %icmp_ln68_44 = icmp ne i8 %tmp_43, -1, !dbg !717, !bitwidth !523
  %icmp_ln68_45 = icmp eq i23 %trunc_ln68_22, 0, !dbg !717, !bitwidth !523
  %or_ln68_22 = or i1 %icmp_ln68_45, %icmp_ln68_44, !dbg !717, !bitwidth !523
  %tmp_44 = fcmp ogt float %v18_22, 0.000000e+00, !dbg !717, !bitwidth !523
  %and_ln68_22 = and i1 %or_ln68_22, %tmp_44, !dbg !717, !bitwidth !523
  %select_ln69_22 = select i1 %and_ln68_22, float %v18_22, float 0.000000e+00, !dbg !720, !bitwidth !385
  store float %select_ln69_22, float* %v15_addr_22, align 4, !dbg !721, !bitwidth !199
  %bitcast_ln68_23 = bitcast float %v18_23 to i32, !dbg !717, !bitwidth !385
  %tmp_45 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %bitcast_ln68_23, i32 23, i32 30), !dbg !717, !bitwidth !718
  %trunc_ln68_23 = trunc i32 %bitcast_ln68_23 to i23, !dbg !717, !bitwidth !719
  %icmp_ln68_46 = icmp ne i8 %tmp_45, -1, !dbg !717, !bitwidth !523
  %icmp_ln68_47 = icmp eq i23 %trunc_ln68_23, 0, !dbg !717, !bitwidth !523
  %or_ln68_23 = or i1 %icmp_ln68_47, %icmp_ln68_46, !dbg !717, !bitwidth !523
  %tmp_46 = fcmp ogt float %v18_23, 0.000000e+00, !dbg !717, !bitwidth !523
  %and_ln68_23 = and i1 %or_ln68_23, %tmp_46, !dbg !717, !bitwidth !523
  %select_ln69_23 = select i1 %and_ln68_23, float %v18_23, float 0.000000e+00, !dbg !720, !bitwidth !385
  store float %select_ln69_23, float* %v15_addr_23, align 4, !dbg !721, !bitwidth !199
  %bitcast_ln68_24 = bitcast float %v18_24 to i32, !dbg !717, !bitwidth !385
  %tmp_47 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %bitcast_ln68_24, i32 23, i32 30), !dbg !717, !bitwidth !718
  %trunc_ln68_24 = trunc i32 %bitcast_ln68_24 to i23, !dbg !717, !bitwidth !719
  %icmp_ln68_48 = icmp ne i8 %tmp_47, -1, !dbg !717, !bitwidth !523
  %icmp_ln68_49 = icmp eq i23 %trunc_ln68_24, 0, !dbg !717, !bitwidth !523
  %or_ln68_24 = or i1 %icmp_ln68_49, %icmp_ln68_48, !dbg !717, !bitwidth !523
  %tmp_48 = fcmp ogt float %v18_24, 0.000000e+00, !dbg !717, !bitwidth !523
  %and_ln68_24 = and i1 %or_ln68_24, %tmp_48, !dbg !717, !bitwidth !523
  %select_ln69_24 = select i1 %and_ln68_24, float %v18_24, float 0.000000e+00, !dbg !720, !bitwidth !385
  store float %select_ln69_24, float* %v15_addr_24, align 4, !dbg !721, !bitwidth !199
  %bitcast_ln68_25 = bitcast float %v18_25 to i32, !dbg !717, !bitwidth !385
  %tmp_49 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %bitcast_ln68_25, i32 23, i32 30), !dbg !717, !bitwidth !718
  %trunc_ln68_25 = trunc i32 %bitcast_ln68_25 to i23, !dbg !717, !bitwidth !719
  %icmp_ln68_50 = icmp ne i8 %tmp_49, -1, !dbg !717, !bitwidth !523
  %icmp_ln68_51 = icmp eq i23 %trunc_ln68_25, 0, !dbg !717, !bitwidth !523
  %or_ln68_25 = or i1 %icmp_ln68_51, %icmp_ln68_50, !dbg !717, !bitwidth !523
  %tmp_50 = fcmp ogt float %v18_25, 0.000000e+00, !dbg !717, !bitwidth !523
  %and_ln68_25 = and i1 %or_ln68_25, %tmp_50, !dbg !717, !bitwidth !523
  %select_ln69_25 = select i1 %and_ln68_25, float %v18_25, float 0.000000e+00, !dbg !720, !bitwidth !385
  store float %select_ln69_25, float* %v15_addr_25, align 4, !dbg !721, !bitwidth !199
  %bitcast_ln68_26 = bitcast float %v18_26 to i32, !dbg !717, !bitwidth !385
  %tmp_51 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %bitcast_ln68_26, i32 23, i32 30), !dbg !717, !bitwidth !718
  %trunc_ln68_26 = trunc i32 %bitcast_ln68_26 to i23, !dbg !717, !bitwidth !719
  %icmp_ln68_52 = icmp ne i8 %tmp_51, -1, !dbg !717, !bitwidth !523
  %icmp_ln68_53 = icmp eq i23 %trunc_ln68_26, 0, !dbg !717, !bitwidth !523
  %or_ln68_26 = or i1 %icmp_ln68_53, %icmp_ln68_52, !dbg !717, !bitwidth !523
  %tmp_52 = fcmp ogt float %v18_26, 0.000000e+00, !dbg !717, !bitwidth !523
  %and_ln68_26 = and i1 %or_ln68_26, %tmp_52, !dbg !717, !bitwidth !523
  %select_ln69_26 = select i1 %and_ln68_26, float %v18_26, float 0.000000e+00, !dbg !720, !bitwidth !385
  store float %select_ln69_26, float* %v15_addr_26, align 4, !dbg !721, !bitwidth !199
  %bitcast_ln68_27 = bitcast float %v18_27 to i32, !dbg !717, !bitwidth !385
  %tmp_53 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %bitcast_ln68_27, i32 23, i32 30), !dbg !717, !bitwidth !718
  %trunc_ln68_27 = trunc i32 %bitcast_ln68_27 to i23, !dbg !717, !bitwidth !719
  %icmp_ln68_54 = icmp ne i8 %tmp_53, -1, !dbg !717, !bitwidth !523
  %icmp_ln68_55 = icmp eq i23 %trunc_ln68_27, 0, !dbg !717, !bitwidth !523
  %or_ln68_27 = or i1 %icmp_ln68_55, %icmp_ln68_54, !dbg !717, !bitwidth !523
  %tmp_54 = fcmp ogt float %v18_27, 0.000000e+00, !dbg !717, !bitwidth !523
  %and_ln68_27 = and i1 %or_ln68_27, %tmp_54, !dbg !717, !bitwidth !523
  %select_ln69_27 = select i1 %and_ln68_27, float %v18_27, float 0.000000e+00, !dbg !720, !bitwidth !385
  store float %select_ln69_27, float* %v15_addr_27, align 4, !dbg !721, !bitwidth !199
  %bitcast_ln68_28 = bitcast float %v18_28 to i32, !dbg !717, !bitwidth !385
  %tmp_55 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %bitcast_ln68_28, i32 23, i32 30), !dbg !717, !bitwidth !718
  %trunc_ln68_28 = trunc i32 %bitcast_ln68_28 to i23, !dbg !717, !bitwidth !719
  %icmp_ln68_56 = icmp ne i8 %tmp_55, -1, !dbg !717, !bitwidth !523
  %icmp_ln68_57 = icmp eq i23 %trunc_ln68_28, 0, !dbg !717, !bitwidth !523
  %or_ln68_28 = or i1 %icmp_ln68_57, %icmp_ln68_56, !dbg !717, !bitwidth !523
  %tmp_56 = fcmp ogt float %v18_28, 0.000000e+00, !dbg !717, !bitwidth !523
  %and_ln68_28 = and i1 %or_ln68_28, %tmp_56, !dbg !717, !bitwidth !523
  %select_ln69_28 = select i1 %and_ln68_28, float %v18_28, float 0.000000e+00, !dbg !720, !bitwidth !385
  store float %select_ln69_28, float* %v15_addr_28, align 4, !dbg !721, !bitwidth !199
  %bitcast_ln68_29 = bitcast float %v18_29 to i32, !dbg !717, !bitwidth !385
  %tmp_57 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %bitcast_ln68_29, i32 23, i32 30), !dbg !717, !bitwidth !718
  %trunc_ln68_29 = trunc i32 %bitcast_ln68_29 to i23, !dbg !717, !bitwidth !719
  %icmp_ln68_58 = icmp ne i8 %tmp_57, -1, !dbg !717, !bitwidth !523
  %icmp_ln68_59 = icmp eq i23 %trunc_ln68_29, 0, !dbg !717, !bitwidth !523
  %or_ln68_29 = or i1 %icmp_ln68_59, %icmp_ln68_58, !dbg !717, !bitwidth !523
  %tmp_58 = fcmp ogt float %v18_29, 0.000000e+00, !dbg !717, !bitwidth !523
  %and_ln68_29 = and i1 %or_ln68_29, %tmp_58, !dbg !717, !bitwidth !523
  %select_ln69_29 = select i1 %and_ln68_29, float %v18_29, float 0.000000e+00, !dbg !720, !bitwidth !385
  store float %select_ln69_29, float* %v15_addr_29, align 4, !dbg !721, !bitwidth !199
  %bitcast_ln68_30 = bitcast float %v18_30 to i32, !dbg !717, !bitwidth !385
  %tmp_59 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %bitcast_ln68_30, i32 23, i32 30), !dbg !717, !bitwidth !718
  %trunc_ln68_30 = trunc i32 %bitcast_ln68_30 to i23, !dbg !717, !bitwidth !719
  %icmp_ln68_60 = icmp ne i8 %tmp_59, -1, !dbg !717, !bitwidth !523
  %icmp_ln68_61 = icmp eq i23 %trunc_ln68_30, 0, !dbg !717, !bitwidth !523
  %or_ln68_30 = or i1 %icmp_ln68_61, %icmp_ln68_60, !dbg !717, !bitwidth !523
  %tmp_60 = fcmp ogt float %v18_30, 0.000000e+00, !dbg !717, !bitwidth !523
  %and_ln68_30 = and i1 %or_ln68_30, %tmp_60, !dbg !717, !bitwidth !523
  %select_ln69_30 = select i1 %and_ln68_30, float %v18_30, float 0.000000e+00, !dbg !720, !bitwidth !385
  store float %select_ln69_30, float* %v15_addr_30, align 4, !dbg !721, !bitwidth !199
  %bitcast_ln68_31 = bitcast float %v18_31 to i32, !dbg !717, !bitwidth !385
  %tmp_61 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %bitcast_ln68_31, i32 23, i32 30), !dbg !717, !bitwidth !718
  %trunc_ln68_31 = trunc i32 %bitcast_ln68_31 to i23, !dbg !717, !bitwidth !719
  %icmp_ln68_62 = icmp ne i8 %tmp_61, -1, !dbg !717, !bitwidth !523
  %icmp_ln68_63 = icmp eq i23 %trunc_ln68_31, 0, !dbg !717, !bitwidth !523
  %or_ln68_31 = or i1 %icmp_ln68_63, %icmp_ln68_62, !dbg !717, !bitwidth !523
  %tmp_62 = fcmp ogt float %v18_31, 0.000000e+00, !dbg !717, !bitwidth !523
  %and_ln68_31 = and i1 %or_ln68_31, %tmp_62, !dbg !717, !bitwidth !523
  %select_ln69_31 = select i1 %and_ln68_31, float %v18_31, float 0.000000e+00, !dbg !720, !bitwidth !385
  store float %select_ln69_31, float* %v15_addr_31, align 4, !dbg !721, !bitwidth !199
  %bitcast_ln68_32 = bitcast float %v18_32 to i32, !dbg !717, !bitwidth !385
  %tmp_63 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %bitcast_ln68_32, i32 23, i32 30), !dbg !717, !bitwidth !718
  %trunc_ln68_32 = trunc i32 %bitcast_ln68_32 to i23, !dbg !717, !bitwidth !719
  %icmp_ln68_64 = icmp ne i8 %tmp_63, -1, !dbg !717, !bitwidth !523
  %icmp_ln68_65 = icmp eq i23 %trunc_ln68_32, 0, !dbg !717, !bitwidth !523
  %or_ln68_32 = or i1 %icmp_ln68_65, %icmp_ln68_64, !dbg !717, !bitwidth !523
  %tmp_64 = fcmp ogt float %v18_32, 0.000000e+00, !dbg !717, !bitwidth !523
  %and_ln68_32 = and i1 %or_ln68_32, %tmp_64, !dbg !717, !bitwidth !523
  %select_ln69_32 = select i1 %and_ln68_32, float %v18_32, float 0.000000e+00, !dbg !720, !bitwidth !385
  store float %select_ln69_32, float* %v15_addr_32, align 4, !dbg !721, !bitwidth !199
  %bitcast_ln68_33 = bitcast float %v18_33 to i32, !dbg !717, !bitwidth !385
  %tmp_65 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %bitcast_ln68_33, i32 23, i32 30), !dbg !717, !bitwidth !718
  %trunc_ln68_33 = trunc i32 %bitcast_ln68_33 to i23, !dbg !717, !bitwidth !719
  %icmp_ln68_66 = icmp ne i8 %tmp_65, -1, !dbg !717, !bitwidth !523
  %icmp_ln68_67 = icmp eq i23 %trunc_ln68_33, 0, !dbg !717, !bitwidth !523
  %or_ln68_33 = or i1 %icmp_ln68_67, %icmp_ln68_66, !dbg !717, !bitwidth !523
  %tmp_66 = fcmp ogt float %v18_33, 0.000000e+00, !dbg !717, !bitwidth !523
  %and_ln68_33 = and i1 %or_ln68_33, %tmp_66, !dbg !717, !bitwidth !523
  %select_ln69_33 = select i1 %and_ln68_33, float %v18_33, float 0.000000e+00, !dbg !720, !bitwidth !385
  store float %select_ln69_33, float* %v15_addr_33, align 4, !dbg !721, !bitwidth !199
  %bitcast_ln68_34 = bitcast float %v18_34 to i32, !dbg !717, !bitwidth !385
  %tmp_67 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %bitcast_ln68_34, i32 23, i32 30), !dbg !717, !bitwidth !718
  %trunc_ln68_34 = trunc i32 %bitcast_ln68_34 to i23, !dbg !717, !bitwidth !719
  %icmp_ln68_68 = icmp ne i8 %tmp_67, -1, !dbg !717, !bitwidth !523
  %icmp_ln68_69 = icmp eq i23 %trunc_ln68_34, 0, !dbg !717, !bitwidth !523
  %or_ln68_34 = or i1 %icmp_ln68_69, %icmp_ln68_68, !dbg !717, !bitwidth !523
  %tmp_68 = fcmp ogt float %v18_34, 0.000000e+00, !dbg !717, !bitwidth !523
  %and_ln68_34 = and i1 %or_ln68_34, %tmp_68, !dbg !717, !bitwidth !523
  %select_ln69_34 = select i1 %and_ln68_34, float %v18_34, float 0.000000e+00, !dbg !720, !bitwidth !385
  store float %select_ln69_34, float* %v15_addr_34, align 4, !dbg !721, !bitwidth !199
  %bitcast_ln68_35 = bitcast float %v18_35 to i32, !dbg !717, !bitwidth !385
  %tmp_69 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %bitcast_ln68_35, i32 23, i32 30), !dbg !717, !bitwidth !718
  %trunc_ln68_35 = trunc i32 %bitcast_ln68_35 to i23, !dbg !717, !bitwidth !719
  %icmp_ln68_70 = icmp ne i8 %tmp_69, -1, !dbg !717, !bitwidth !523
  %icmp_ln68_71 = icmp eq i23 %trunc_ln68_35, 0, !dbg !717, !bitwidth !523
  %or_ln68_35 = or i1 %icmp_ln68_71, %icmp_ln68_70, !dbg !717, !bitwidth !523
  %tmp_70 = fcmp ogt float %v18_35, 0.000000e+00, !dbg !717, !bitwidth !523
  %and_ln68_35 = and i1 %or_ln68_35, %tmp_70, !dbg !717, !bitwidth !523
  %select_ln69_35 = select i1 %and_ln68_35, float %v18_35, float 0.000000e+00, !dbg !720, !bitwidth !385
  store float %select_ln69_35, float* %v15_addr_35, align 4, !dbg !721, !bitwidth !199
  %bitcast_ln68_36 = bitcast float %v18_36 to i32, !dbg !717, !bitwidth !385
  %tmp_71 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %bitcast_ln68_36, i32 23, i32 30), !dbg !717, !bitwidth !718
  %trunc_ln68_36 = trunc i32 %bitcast_ln68_36 to i23, !dbg !717, !bitwidth !719
  %icmp_ln68_72 = icmp ne i8 %tmp_71, -1, !dbg !717, !bitwidth !523
  %icmp_ln68_73 = icmp eq i23 %trunc_ln68_36, 0, !dbg !717, !bitwidth !523
  %or_ln68_36 = or i1 %icmp_ln68_73, %icmp_ln68_72, !dbg !717, !bitwidth !523
  %tmp_72 = fcmp ogt float %v18_36, 0.000000e+00, !dbg !717, !bitwidth !523
  %and_ln68_36 = and i1 %or_ln68_36, %tmp_72, !dbg !717, !bitwidth !523
  %select_ln69_36 = select i1 %and_ln68_36, float %v18_36, float 0.000000e+00, !dbg !720, !bitwidth !385
  store float %select_ln69_36, float* %v15_addr_36, align 4, !dbg !721, !bitwidth !199
  %bitcast_ln68_37 = bitcast float %v18_37 to i32, !dbg !717, !bitwidth !385
  %tmp_73 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %bitcast_ln68_37, i32 23, i32 30), !dbg !717, !bitwidth !718
  %trunc_ln68_37 = trunc i32 %bitcast_ln68_37 to i23, !dbg !717, !bitwidth !719
  %icmp_ln68_74 = icmp ne i8 %tmp_73, -1, !dbg !717, !bitwidth !523
  %icmp_ln68_75 = icmp eq i23 %trunc_ln68_37, 0, !dbg !717, !bitwidth !523
  %or_ln68_37 = or i1 %icmp_ln68_75, %icmp_ln68_74, !dbg !717, !bitwidth !523
  %tmp_74 = fcmp ogt float %v18_37, 0.000000e+00, !dbg !717, !bitwidth !523
  %and_ln68_37 = and i1 %or_ln68_37, %tmp_74, !dbg !717, !bitwidth !523
  %select_ln69_37 = select i1 %and_ln68_37, float %v18_37, float 0.000000e+00, !dbg !720, !bitwidth !385
  store float %select_ln69_37, float* %v15_addr_37, align 4, !dbg !721, !bitwidth !199
  %bitcast_ln68_38 = bitcast float %v18_38 to i32, !dbg !717, !bitwidth !385
  %tmp_75 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %bitcast_ln68_38, i32 23, i32 30), !dbg !717, !bitwidth !718
  %trunc_ln68_38 = trunc i32 %bitcast_ln68_38 to i23, !dbg !717, !bitwidth !719
  %icmp_ln68_76 = icmp ne i8 %tmp_75, -1, !dbg !717, !bitwidth !523
  %icmp_ln68_77 = icmp eq i23 %trunc_ln68_38, 0, !dbg !717, !bitwidth !523
  %or_ln68_38 = or i1 %icmp_ln68_77, %icmp_ln68_76, !dbg !717, !bitwidth !523
  %tmp_76 = fcmp ogt float %v18_38, 0.000000e+00, !dbg !717, !bitwidth !523
  %and_ln68_38 = and i1 %or_ln68_38, %tmp_76, !dbg !717, !bitwidth !523
  %select_ln69_38 = select i1 %and_ln68_38, float %v18_38, float 0.000000e+00, !dbg !720, !bitwidth !385
  store float %select_ln69_38, float* %v15_addr_38, align 4, !dbg !721, !bitwidth !199
  %bitcast_ln68_39 = bitcast float %v18_39 to i32, !dbg !717, !bitwidth !385
  %tmp_77 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %bitcast_ln68_39, i32 23, i32 30), !dbg !717, !bitwidth !718
  %trunc_ln68_39 = trunc i32 %bitcast_ln68_39 to i23, !dbg !717, !bitwidth !719
  %icmp_ln68_78 = icmp ne i8 %tmp_77, -1, !dbg !717, !bitwidth !523
  %icmp_ln68_79 = icmp eq i23 %trunc_ln68_39, 0, !dbg !717, !bitwidth !523
  %or_ln68_39 = or i1 %icmp_ln68_79, %icmp_ln68_78, !dbg !717, !bitwidth !523
  %tmp_78 = fcmp ogt float %v18_39, 0.000000e+00, !dbg !717, !bitwidth !523
  %and_ln68_39 = and i1 %or_ln68_39, %tmp_78, !dbg !717, !bitwidth !523
  %select_ln69_39 = select i1 %and_ln68_39, float %v18_39, float 0.000000e+00, !dbg !720, !bitwidth !385
  store float %select_ln69_39, float* %v15_addr_39, align 4, !dbg !721, !bitwidth !199
  %bitcast_ln68_40 = bitcast float %v18_40 to i32, !dbg !717, !bitwidth !385
  %tmp_79 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %bitcast_ln68_40, i32 23, i32 30), !dbg !717, !bitwidth !718
  %trunc_ln68_40 = trunc i32 %bitcast_ln68_40 to i23, !dbg !717, !bitwidth !719
  %icmp_ln68_80 = icmp ne i8 %tmp_79, -1, !dbg !717, !bitwidth !523
  %icmp_ln68_81 = icmp eq i23 %trunc_ln68_40, 0, !dbg !717, !bitwidth !523
  %or_ln68_40 = or i1 %icmp_ln68_81, %icmp_ln68_80, !dbg !717, !bitwidth !523
  %tmp_80 = fcmp ogt float %v18_40, 0.000000e+00, !dbg !717, !bitwidth !523
  %and_ln68_40 = and i1 %or_ln68_40, %tmp_80, !dbg !717, !bitwidth !523
  %select_ln69_40 = select i1 %and_ln68_40, float %v18_40, float 0.000000e+00, !dbg !720, !bitwidth !385
  store float %select_ln69_40, float* %v15_addr_40, align 4, !dbg !721, !bitwidth !199
  %bitcast_ln68_41 = bitcast float %v18_41 to i32, !dbg !717, !bitwidth !385
  %tmp_81 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %bitcast_ln68_41, i32 23, i32 30), !dbg !717, !bitwidth !718
  %trunc_ln68_41 = trunc i32 %bitcast_ln68_41 to i23, !dbg !717, !bitwidth !719
  %icmp_ln68_82 = icmp ne i8 %tmp_81, -1, !dbg !717, !bitwidth !523
  %icmp_ln68_83 = icmp eq i23 %trunc_ln68_41, 0, !dbg !717, !bitwidth !523
  %or_ln68_41 = or i1 %icmp_ln68_83, %icmp_ln68_82, !dbg !717, !bitwidth !523
  %tmp_82 = fcmp ogt float %v18_41, 0.000000e+00, !dbg !717, !bitwidth !523
  %and_ln68_41 = and i1 %or_ln68_41, %tmp_82, !dbg !717, !bitwidth !523
  %select_ln69_41 = select i1 %and_ln68_41, float %v18_41, float 0.000000e+00, !dbg !720, !bitwidth !385
  store float %select_ln69_41, float* %v15_addr_41, align 4, !dbg !721, !bitwidth !199
  %bitcast_ln68_42 = bitcast float %v18_42 to i32, !dbg !717, !bitwidth !385
  %tmp_83 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %bitcast_ln68_42, i32 23, i32 30), !dbg !717, !bitwidth !718
  %trunc_ln68_42 = trunc i32 %bitcast_ln68_42 to i23, !dbg !717, !bitwidth !719
  %icmp_ln68_84 = icmp ne i8 %tmp_83, -1, !dbg !717, !bitwidth !523
  %icmp_ln68_85 = icmp eq i23 %trunc_ln68_42, 0, !dbg !717, !bitwidth !523
  %or_ln68_42 = or i1 %icmp_ln68_85, %icmp_ln68_84, !dbg !717, !bitwidth !523
  %tmp_84 = fcmp ogt float %v18_42, 0.000000e+00, !dbg !717, !bitwidth !523
  %and_ln68_42 = and i1 %or_ln68_42, %tmp_84, !dbg !717, !bitwidth !523
  %select_ln69_42 = select i1 %and_ln68_42, float %v18_42, float 0.000000e+00, !dbg !720, !bitwidth !385
  store float %select_ln69_42, float* %v15_addr_42, align 4, !dbg !721, !bitwidth !199
  %bitcast_ln68_43 = bitcast float %v18_43 to i32, !dbg !717, !bitwidth !385
  %tmp_85 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %bitcast_ln68_43, i32 23, i32 30), !dbg !717, !bitwidth !718
  %trunc_ln68_43 = trunc i32 %bitcast_ln68_43 to i23, !dbg !717, !bitwidth !719
  %icmp_ln68_86 = icmp ne i8 %tmp_85, -1, !dbg !717, !bitwidth !523
  %icmp_ln68_87 = icmp eq i23 %trunc_ln68_43, 0, !dbg !717, !bitwidth !523
  %or_ln68_43 = or i1 %icmp_ln68_87, %icmp_ln68_86, !dbg !717, !bitwidth !523
  %tmp_86 = fcmp ogt float %v18_43, 0.000000e+00, !dbg !717, !bitwidth !523
  %and_ln68_43 = and i1 %or_ln68_43, %tmp_86, !dbg !717, !bitwidth !523
  %select_ln69_43 = select i1 %and_ln68_43, float %v18_43, float 0.000000e+00, !dbg !720, !bitwidth !385
  store float %select_ln69_43, float* %v15_addr_43, align 4, !dbg !721, !bitwidth !199
  %bitcast_ln68_44 = bitcast float %v18_44 to i32, !dbg !717, !bitwidth !385
  %tmp_87 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %bitcast_ln68_44, i32 23, i32 30), !dbg !717, !bitwidth !718
  %trunc_ln68_44 = trunc i32 %bitcast_ln68_44 to i23, !dbg !717, !bitwidth !719
  %icmp_ln68_88 = icmp ne i8 %tmp_87, -1, !dbg !717, !bitwidth !523
  %icmp_ln68_89 = icmp eq i23 %trunc_ln68_44, 0, !dbg !717, !bitwidth !523
  %or_ln68_44 = or i1 %icmp_ln68_89, %icmp_ln68_88, !dbg !717, !bitwidth !523
  %tmp_88 = fcmp ogt float %v18_44, 0.000000e+00, !dbg !717, !bitwidth !523
  %and_ln68_44 = and i1 %or_ln68_44, %tmp_88, !dbg !717, !bitwidth !523
  %select_ln69_44 = select i1 %and_ln68_44, float %v18_44, float 0.000000e+00, !dbg !720, !bitwidth !385
  store float %select_ln69_44, float* %v15_addr_44, align 4, !dbg !721, !bitwidth !199
  %bitcast_ln68_45 = bitcast float %v18_45 to i32, !dbg !717, !bitwidth !385
  %tmp_89 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %bitcast_ln68_45, i32 23, i32 30), !dbg !717, !bitwidth !718
  %trunc_ln68_45 = trunc i32 %bitcast_ln68_45 to i23, !dbg !717, !bitwidth !719
  %icmp_ln68_90 = icmp ne i8 %tmp_89, -1, !dbg !717, !bitwidth !523
  %icmp_ln68_91 = icmp eq i23 %trunc_ln68_45, 0, !dbg !717, !bitwidth !523
  %or_ln68_45 = or i1 %icmp_ln68_91, %icmp_ln68_90, !dbg !717, !bitwidth !523
  %tmp_90 = fcmp ogt float %v18_45, 0.000000e+00, !dbg !717, !bitwidth !523
  %and_ln68_45 = and i1 %or_ln68_45, %tmp_90, !dbg !717, !bitwidth !523
  %select_ln69_45 = select i1 %and_ln68_45, float %v18_45, float 0.000000e+00, !dbg !720, !bitwidth !385
  store float %select_ln69_45, float* %v15_addr_45, align 4, !dbg !721, !bitwidth !199
  %bitcast_ln68_46 = bitcast float %v18_46 to i32, !dbg !717, !bitwidth !385
  %tmp_91 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %bitcast_ln68_46, i32 23, i32 30), !dbg !717, !bitwidth !718
  %trunc_ln68_46 = trunc i32 %bitcast_ln68_46 to i23, !dbg !717, !bitwidth !719
  %icmp_ln68_92 = icmp ne i8 %tmp_91, -1, !dbg !717, !bitwidth !523
  %icmp_ln68_93 = icmp eq i23 %trunc_ln68_46, 0, !dbg !717, !bitwidth !523
  %or_ln68_46 = or i1 %icmp_ln68_93, %icmp_ln68_92, !dbg !717, !bitwidth !523
  %tmp_92 = fcmp ogt float %v18_46, 0.000000e+00, !dbg !717, !bitwidth !523
  %and_ln68_46 = and i1 %or_ln68_46, %tmp_92, !dbg !717, !bitwidth !523
  %select_ln69_46 = select i1 %and_ln68_46, float %v18_46, float 0.000000e+00, !dbg !720, !bitwidth !385
  store float %select_ln69_46, float* %v15_addr_46, align 4, !dbg !721, !bitwidth !199
  %bitcast_ln68_47 = bitcast float %v18_47 to i32, !dbg !717, !bitwidth !385
  %tmp_93 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %bitcast_ln68_47, i32 23, i32 30), !dbg !717, !bitwidth !718
  %trunc_ln68_47 = trunc i32 %bitcast_ln68_47 to i23, !dbg !717, !bitwidth !719
  %icmp_ln68_94 = icmp ne i8 %tmp_93, -1, !dbg !717, !bitwidth !523
  %icmp_ln68_95 = icmp eq i23 %trunc_ln68_47, 0, !dbg !717, !bitwidth !523
  %or_ln68_47 = or i1 %icmp_ln68_95, %icmp_ln68_94, !dbg !717, !bitwidth !523
  %tmp_94 = fcmp ogt float %v18_47, 0.000000e+00, !dbg !717, !bitwidth !523
  %and_ln68_47 = and i1 %or_ln68_47, %tmp_94, !dbg !717, !bitwidth !523
  %select_ln69_47 = select i1 %and_ln68_47, float %v18_47, float 0.000000e+00, !dbg !720, !bitwidth !385
  store float %select_ln69_47, float* %v15_addr_47, align 4, !dbg !721, !bitwidth !199
  %bitcast_ln68_48 = bitcast float %v18_48 to i32, !dbg !717, !bitwidth !385
  %tmp_95 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %bitcast_ln68_48, i32 23, i32 30), !dbg !717, !bitwidth !718
  %trunc_ln68_48 = trunc i32 %bitcast_ln68_48 to i23, !dbg !717, !bitwidth !719
  %icmp_ln68_96 = icmp ne i8 %tmp_95, -1, !dbg !717, !bitwidth !523
  %icmp_ln68_97 = icmp eq i23 %trunc_ln68_48, 0, !dbg !717, !bitwidth !523
  %or_ln68_48 = or i1 %icmp_ln68_97, %icmp_ln68_96, !dbg !717, !bitwidth !523
  %tmp_96 = fcmp ogt float %v18_48, 0.000000e+00, !dbg !717, !bitwidth !523
  %and_ln68_48 = and i1 %or_ln68_48, %tmp_96, !dbg !717, !bitwidth !523
  %select_ln69_48 = select i1 %and_ln68_48, float %v18_48, float 0.000000e+00, !dbg !720, !bitwidth !385
  store float %select_ln69_48, float* %v15_addr_48, align 4, !dbg !721, !bitwidth !199
  %bitcast_ln68_49 = bitcast float %v18_49 to i32, !dbg !717, !bitwidth !385
  %tmp_97 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %bitcast_ln68_49, i32 23, i32 30), !dbg !717, !bitwidth !718
  %trunc_ln68_49 = trunc i32 %bitcast_ln68_49 to i23, !dbg !717, !bitwidth !719
  %icmp_ln68_98 = icmp ne i8 %tmp_97, -1, !dbg !717, !bitwidth !523
  %icmp_ln68_99 = icmp eq i23 %trunc_ln68_49, 0, !dbg !717, !bitwidth !523
  %or_ln68_49 = or i1 %icmp_ln68_99, %icmp_ln68_98, !dbg !717, !bitwidth !523
  %tmp_98 = fcmp ogt float %v18_49, 0.000000e+00, !dbg !717, !bitwidth !523
  %and_ln68_49 = and i1 %or_ln68_49, %tmp_98, !dbg !717, !bitwidth !523
  %select_ln69_49 = select i1 %and_ln68_49, float %v18_49, float 0.000000e+00, !dbg !720, !bitwidth !385
  store float %select_ln69_49, float* %v15_addr_49, align 4, !dbg !721, !bitwidth !199
  %bitcast_ln68_50 = bitcast float %v18_50 to i32, !dbg !717, !bitwidth !385
  %tmp_99 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %bitcast_ln68_50, i32 23, i32 30), !dbg !717, !bitwidth !718
  %trunc_ln68_50 = trunc i32 %bitcast_ln68_50 to i23, !dbg !717, !bitwidth !719
  %icmp_ln68_100 = icmp ne i8 %tmp_99, -1, !dbg !717, !bitwidth !523
  %icmp_ln68_101 = icmp eq i23 %trunc_ln68_50, 0, !dbg !717, !bitwidth !523
  %or_ln68_50 = or i1 %icmp_ln68_101, %icmp_ln68_100, !dbg !717, !bitwidth !523
  %tmp_100 = fcmp ogt float %v18_50, 0.000000e+00, !dbg !717, !bitwidth !523
  %and_ln68_50 = and i1 %or_ln68_50, %tmp_100, !dbg !717, !bitwidth !523
  %select_ln69_50 = select i1 %and_ln68_50, float %v18_50, float 0.000000e+00, !dbg !720, !bitwidth !385
  store float %select_ln69_50, float* %v15_addr_50, align 4, !dbg !721, !bitwidth !199
  %bitcast_ln68_51 = bitcast float %v18_51 to i32, !dbg !717, !bitwidth !385
  %tmp_101 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %bitcast_ln68_51, i32 23, i32 30), !dbg !717, !bitwidth !718
  %trunc_ln68_51 = trunc i32 %bitcast_ln68_51 to i23, !dbg !717, !bitwidth !719
  %icmp_ln68_102 = icmp ne i8 %tmp_101, -1, !dbg !717, !bitwidth !523
  %icmp_ln68_103 = icmp eq i23 %trunc_ln68_51, 0, !dbg !717, !bitwidth !523
  %or_ln68_51 = or i1 %icmp_ln68_103, %icmp_ln68_102, !dbg !717, !bitwidth !523
  %tmp_102 = fcmp ogt float %v18_51, 0.000000e+00, !dbg !717, !bitwidth !523
  %and_ln68_51 = and i1 %or_ln68_51, %tmp_102, !dbg !717, !bitwidth !523
  %select_ln69_51 = select i1 %and_ln68_51, float %v18_51, float 0.000000e+00, !dbg !720, !bitwidth !385
  store float %select_ln69_51, float* %v15_addr_51, align 4, !dbg !721, !bitwidth !199
  %bitcast_ln68_52 = bitcast float %v18_52 to i32, !dbg !717, !bitwidth !385
  %tmp_103 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %bitcast_ln68_52, i32 23, i32 30), !dbg !717, !bitwidth !718
  %trunc_ln68_52 = trunc i32 %bitcast_ln68_52 to i23, !dbg !717, !bitwidth !719
  %icmp_ln68_104 = icmp ne i8 %tmp_103, -1, !dbg !717, !bitwidth !523
  %icmp_ln68_105 = icmp eq i23 %trunc_ln68_52, 0, !dbg !717, !bitwidth !523
  %or_ln68_52 = or i1 %icmp_ln68_105, %icmp_ln68_104, !dbg !717, !bitwidth !523
  %tmp_104 = fcmp ogt float %v18_52, 0.000000e+00, !dbg !717, !bitwidth !523
  %and_ln68_52 = and i1 %or_ln68_52, %tmp_104, !dbg !717, !bitwidth !523
  %select_ln69_52 = select i1 %and_ln68_52, float %v18_52, float 0.000000e+00, !dbg !720, !bitwidth !385
  store float %select_ln69_52, float* %v15_addr_52, align 4, !dbg !721, !bitwidth !199
  %bitcast_ln68_53 = bitcast float %v18_53 to i32, !dbg !717, !bitwidth !385
  %tmp_105 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %bitcast_ln68_53, i32 23, i32 30), !dbg !717, !bitwidth !718
  %trunc_ln68_53 = trunc i32 %bitcast_ln68_53 to i23, !dbg !717, !bitwidth !719
  %icmp_ln68_106 = icmp ne i8 %tmp_105, -1, !dbg !717, !bitwidth !523
  %icmp_ln68_107 = icmp eq i23 %trunc_ln68_53, 0, !dbg !717, !bitwidth !523
  %or_ln68_53 = or i1 %icmp_ln68_107, %icmp_ln68_106, !dbg !717, !bitwidth !523
  %tmp_106 = fcmp ogt float %v18_53, 0.000000e+00, !dbg !717, !bitwidth !523
  %and_ln68_53 = and i1 %or_ln68_53, %tmp_106, !dbg !717, !bitwidth !523
  %select_ln69_53 = select i1 %and_ln68_53, float %v18_53, float 0.000000e+00, !dbg !720, !bitwidth !385
  store float %select_ln69_53, float* %v15_addr_53, align 4, !dbg !721, !bitwidth !199
  %bitcast_ln68_54 = bitcast float %v18_54 to i32, !dbg !717, !bitwidth !385
  %tmp_107 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %bitcast_ln68_54, i32 23, i32 30), !dbg !717, !bitwidth !718
  %trunc_ln68_54 = trunc i32 %bitcast_ln68_54 to i23, !dbg !717, !bitwidth !719
  %icmp_ln68_108 = icmp ne i8 %tmp_107, -1, !dbg !717, !bitwidth !523
  %icmp_ln68_109 = icmp eq i23 %trunc_ln68_54, 0, !dbg !717, !bitwidth !523
  %or_ln68_54 = or i1 %icmp_ln68_109, %icmp_ln68_108, !dbg !717, !bitwidth !523
  %tmp_108 = fcmp ogt float %v18_54, 0.000000e+00, !dbg !717, !bitwidth !523
  %and_ln68_54 = and i1 %or_ln68_54, %tmp_108, !dbg !717, !bitwidth !523
  %select_ln69_54 = select i1 %and_ln68_54, float %v18_54, float 0.000000e+00, !dbg !720, !bitwidth !385
  store float %select_ln69_54, float* %v15_addr_54, align 4, !dbg !721, !bitwidth !199
  %bitcast_ln68_55 = bitcast float %v18_55 to i32, !dbg !717, !bitwidth !385
  %tmp_109 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %bitcast_ln68_55, i32 23, i32 30), !dbg !717, !bitwidth !718
  %trunc_ln68_55 = trunc i32 %bitcast_ln68_55 to i23, !dbg !717, !bitwidth !719
  %icmp_ln68_110 = icmp ne i8 %tmp_109, -1, !dbg !717, !bitwidth !523
  %icmp_ln68_111 = icmp eq i23 %trunc_ln68_55, 0, !dbg !717, !bitwidth !523
  %or_ln68_55 = or i1 %icmp_ln68_111, %icmp_ln68_110, !dbg !717, !bitwidth !523
  %tmp_110 = fcmp ogt float %v18_55, 0.000000e+00, !dbg !717, !bitwidth !523
  %and_ln68_55 = and i1 %or_ln68_55, %tmp_110, !dbg !717, !bitwidth !523
  %select_ln69_55 = select i1 %and_ln68_55, float %v18_55, float 0.000000e+00, !dbg !720, !bitwidth !385
  store float %select_ln69_55, float* %v15_addr_55, align 4, !dbg !721, !bitwidth !199
  %bitcast_ln68_56 = bitcast float %v18_56 to i32, !dbg !717, !bitwidth !385
  %tmp_111 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %bitcast_ln68_56, i32 23, i32 30), !dbg !717, !bitwidth !718
  %trunc_ln68_56 = trunc i32 %bitcast_ln68_56 to i23, !dbg !717, !bitwidth !719
  %icmp_ln68_112 = icmp ne i8 %tmp_111, -1, !dbg !717, !bitwidth !523
  %icmp_ln68_113 = icmp eq i23 %trunc_ln68_56, 0, !dbg !717, !bitwidth !523
  %or_ln68_56 = or i1 %icmp_ln68_113, %icmp_ln68_112, !dbg !717, !bitwidth !523
  %tmp_112 = fcmp ogt float %v18_56, 0.000000e+00, !dbg !717, !bitwidth !523
  %and_ln68_56 = and i1 %or_ln68_56, %tmp_112, !dbg !717, !bitwidth !523
  %select_ln69_56 = select i1 %and_ln68_56, float %v18_56, float 0.000000e+00, !dbg !720, !bitwidth !385
  store float %select_ln69_56, float* %v15_addr_56, align 4, !dbg !721, !bitwidth !199
  %bitcast_ln68_57 = bitcast float %v18_57 to i32, !dbg !717, !bitwidth !385
  %tmp_113 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %bitcast_ln68_57, i32 23, i32 30), !dbg !717, !bitwidth !718
  %trunc_ln68_57 = trunc i32 %bitcast_ln68_57 to i23, !dbg !717, !bitwidth !719
  %icmp_ln68_114 = icmp ne i8 %tmp_113, -1, !dbg !717, !bitwidth !523
  %icmp_ln68_115 = icmp eq i23 %trunc_ln68_57, 0, !dbg !717, !bitwidth !523
  %or_ln68_57 = or i1 %icmp_ln68_115, %icmp_ln68_114, !dbg !717, !bitwidth !523
  %tmp_114 = fcmp ogt float %v18_57, 0.000000e+00, !dbg !717, !bitwidth !523
  %and_ln68_57 = and i1 %or_ln68_57, %tmp_114, !dbg !717, !bitwidth !523
  %select_ln69_57 = select i1 %and_ln68_57, float %v18_57, float 0.000000e+00, !dbg !720, !bitwidth !385
  store float %select_ln69_57, float* %v15_addr_57, align 4, !dbg !721, !bitwidth !199
  %bitcast_ln68_58 = bitcast float %v18_58 to i32, !dbg !717, !bitwidth !385
  %tmp_115 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %bitcast_ln68_58, i32 23, i32 30), !dbg !717, !bitwidth !718
  %trunc_ln68_58 = trunc i32 %bitcast_ln68_58 to i23, !dbg !717, !bitwidth !719
  %icmp_ln68_116 = icmp ne i8 %tmp_115, -1, !dbg !717, !bitwidth !523
  %icmp_ln68_117 = icmp eq i23 %trunc_ln68_58, 0, !dbg !717, !bitwidth !523
  %or_ln68_58 = or i1 %icmp_ln68_117, %icmp_ln68_116, !dbg !717, !bitwidth !523
  %tmp_116 = fcmp ogt float %v18_58, 0.000000e+00, !dbg !717, !bitwidth !523
  %and_ln68_58 = and i1 %or_ln68_58, %tmp_116, !dbg !717, !bitwidth !523
  %select_ln69_58 = select i1 %and_ln68_58, float %v18_58, float 0.000000e+00, !dbg !720, !bitwidth !385
  store float %select_ln69_58, float* %v15_addr_58, align 4, !dbg !721, !bitwidth !199
  %bitcast_ln68_59 = bitcast float %v18_59 to i32, !dbg !717, !bitwidth !385
  %tmp_117 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %bitcast_ln68_59, i32 23, i32 30), !dbg !717, !bitwidth !718
  %trunc_ln68_59 = trunc i32 %bitcast_ln68_59 to i23, !dbg !717, !bitwidth !719
  %icmp_ln68_118 = icmp ne i8 %tmp_117, -1, !dbg !717, !bitwidth !523
  %icmp_ln68_119 = icmp eq i23 %trunc_ln68_59, 0, !dbg !717, !bitwidth !523
  %or_ln68_59 = or i1 %icmp_ln68_119, %icmp_ln68_118, !dbg !717, !bitwidth !523
  %tmp_118 = fcmp ogt float %v18_59, 0.000000e+00, !dbg !717, !bitwidth !523
  %and_ln68_59 = and i1 %or_ln68_59, %tmp_118, !dbg !717, !bitwidth !523
  %select_ln69_59 = select i1 %and_ln68_59, float %v18_59, float 0.000000e+00, !dbg !720, !bitwidth !385
  store float %select_ln69_59, float* %v15_addr_59, align 4, !dbg !721, !bitwidth !199
  %bitcast_ln68_60 = bitcast float %v18_60 to i32, !dbg !717, !bitwidth !385
  %tmp_119 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %bitcast_ln68_60, i32 23, i32 30), !dbg !717, !bitwidth !718
  %trunc_ln68_60 = trunc i32 %bitcast_ln68_60 to i23, !dbg !717, !bitwidth !719
  %icmp_ln68_120 = icmp ne i8 %tmp_119, -1, !dbg !717, !bitwidth !523
  %icmp_ln68_121 = icmp eq i23 %trunc_ln68_60, 0, !dbg !717, !bitwidth !523
  %or_ln68_60 = or i1 %icmp_ln68_121, %icmp_ln68_120, !dbg !717, !bitwidth !523
  %tmp_120 = fcmp ogt float %v18_60, 0.000000e+00, !dbg !717, !bitwidth !523
  %and_ln68_60 = and i1 %or_ln68_60, %tmp_120, !dbg !717, !bitwidth !523
  %select_ln69_60 = select i1 %and_ln68_60, float %v18_60, float 0.000000e+00, !dbg !720, !bitwidth !385
  store float %select_ln69_60, float* %v15_addr_60, align 4, !dbg !721, !bitwidth !199
  %bitcast_ln68_61 = bitcast float %v18_61 to i32, !dbg !717, !bitwidth !385
  %tmp_121 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %bitcast_ln68_61, i32 23, i32 30), !dbg !717, !bitwidth !718
  %trunc_ln68_61 = trunc i32 %bitcast_ln68_61 to i23, !dbg !717, !bitwidth !719
  %icmp_ln68_122 = icmp ne i8 %tmp_121, -1, !dbg !717, !bitwidth !523
  %icmp_ln68_123 = icmp eq i23 %trunc_ln68_61, 0, !dbg !717, !bitwidth !523
  %or_ln68_61 = or i1 %icmp_ln68_123, %icmp_ln68_122, !dbg !717, !bitwidth !523
  %tmp_122 = fcmp ogt float %v18_61, 0.000000e+00, !dbg !717, !bitwidth !523
  %and_ln68_61 = and i1 %or_ln68_61, %tmp_122, !dbg !717, !bitwidth !523
  %select_ln69_61 = select i1 %and_ln68_61, float %v18_61, float 0.000000e+00, !dbg !720, !bitwidth !385
  store float %select_ln69_61, float* %v15_addr_61, align 4, !dbg !721, !bitwidth !199
  %bitcast_ln68_62 = bitcast float %v18_62 to i32, !dbg !717, !bitwidth !385
  %tmp_123 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %bitcast_ln68_62, i32 23, i32 30), !dbg !717, !bitwidth !718
  %trunc_ln68_62 = trunc i32 %bitcast_ln68_62 to i23, !dbg !717, !bitwidth !719
  %icmp_ln68_124 = icmp ne i8 %tmp_123, -1, !dbg !717, !bitwidth !523
  %icmp_ln68_125 = icmp eq i23 %trunc_ln68_62, 0, !dbg !717, !bitwidth !523
  %or_ln68_62 = or i1 %icmp_ln68_125, %icmp_ln68_124, !dbg !717, !bitwidth !523
  %tmp_124 = fcmp ogt float %v18_62, 0.000000e+00, !dbg !717, !bitwidth !523
  %and_ln68_62 = and i1 %or_ln68_62, %tmp_124, !dbg !717, !bitwidth !523
  %select_ln69_62 = select i1 %and_ln68_62, float %v18_62, float 0.000000e+00, !dbg !720, !bitwidth !385
  store float %select_ln69_62, float* %v15_addr_62, align 4, !dbg !721, !bitwidth !199
  %bitcast_ln68_63 = bitcast float %v18_63 to i32, !dbg !717, !bitwidth !385
  %tmp_125 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %bitcast_ln68_63, i32 23, i32 30), !dbg !717, !bitwidth !718
  %trunc_ln68_63 = trunc i32 %bitcast_ln68_63 to i23, !dbg !717, !bitwidth !719
  %icmp_ln68_126 = icmp ne i8 %tmp_125, -1, !dbg !717, !bitwidth !523
  %icmp_ln68_127 = icmp eq i23 %trunc_ln68_63, 0, !dbg !717, !bitwidth !523
  %or_ln68_63 = or i1 %icmp_ln68_127, %icmp_ln68_126, !dbg !717, !bitwidth !523
  %tmp_126 = fcmp ogt float %v18_63, 0.000000e+00, !dbg !717, !bitwidth !523
  %and_ln68_63 = and i1 %or_ln68_63, %tmp_126, !dbg !717, !bitwidth !523
  %select_ln69_63 = select i1 %and_ln68_63, float %v18_63, float 0.000000e+00, !dbg !720, !bitwidth !385
  store float %select_ln69_63, float* %v15_addr_63, align 4, !dbg !721, !bitwidth !199
  store i7 %add_ln57, i7* %i1, !bitwidth !199, !dep_idx !722, !deps !723
  br label %1, !llvm.loop !605, !bitwidth !199

; <label>:2                                       ; preds = %1
  ret void, !dbg !726, !bitwidth !199
}

define internal void @load_buf1.1_Pipeline_l_S_load_buf1_load_buf1_l_0_l_load_buf1_l_1(i512 addrspace(1)* %gmem1, i58 %sext_ln92, [4096 x float]* %v29) {
newFuncRoot:
  %shiftreg = alloca i480, !bitwidth !488
  %load_buf1_l_1 = alloca i7, !bitwidth !489
  call void @llvm.dbg.declare(metadata !{i7* %load_buf1_l_1}, metadata !727)
  %load_buf1_l_0 = alloca i7, !bitwidth !489
  call void @llvm.dbg.declare(metadata !{i7* %load_buf1_l_0}, metadata !732)
  %indvar_flatten = alloca i13, !bitwidth !496
  %sext_ln92_read = call i58 @_ssdm_op_Read.ap_auto.i58(i58 %sext_ln92), !bitwidth !197
  %sext_ln92_cast = sext i58 %sext_ln92_read to i64, !bitwidth !497
  call void (...)* @_ssdm_op_SpecInterface(i512 addrspace(1)* %gmem1, [6 x i8]* @empty_4, i32 0, i32 0, [1 x i8]* @p_str_1, i32 64, i32 4096, [6 x i8]* @empty_1, [6 x i8]* @empty_2, [1 x i8]* @p_str_1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str_1, [1 x i8]* @p_str_1)
  store i13 0, i13* %indvar_flatten, !bitwidth !199, !dep_idx !733, !deps !734
  store i7 0, i7* %load_buf1_l_0, !bitwidth !199, !dep_idx !737, !deps !738
  store i7 0, i7* %load_buf1_l_1, !bitwidth !199, !dep_idx !741, !deps !742
  store i480 0, i480* %shiftreg, !bitwidth !199, !dep_idx !745, !deps !746
  br label %0, !bitwidth !199

.exitStub:                                        ; preds = %0
  ret void, !bitwidth !199

; <label>:0                                       ; preds = %.split._crit_edge, %newFuncRoot
  %indvar_flatten_load = load i13* %indvar_flatten, !dbg !749, !bitwidth !516, !dep_idx !750, !deps !751
  %gmem1_addr = getelementptr i512 addrspace(1)* %gmem1, i64 %sext_ln92_cast, !dbg !754, !bitwidth !151
  %icmp_ln92 = icmp eq i13 %indvar_flatten_load, -4096, !dbg !749, !bitwidth !523
  %add_ln92_1 = add i13 %indvar_flatten_load, 1, !dbg !749, !bitwidth !516
  br i1 %icmp_ln92, label %.exitStub, label %.split2, !bitwidth !199

.split._crit_edge:                                ; preds = %1, %.split2
  %empty = phi i512 [ %gmem1_addr_read, %1 ], [ %zext_ln93, %.split2 ], !bitwidth !574
  %trunc_ln95 = trunc i512 %empty to i32, !dbg !755, !bitwidth !385
  %v32 = bitcast i32 %trunc_ln95 to float, !dbg !755, !bitwidth !385
  %trunc_ln95_1 = call i480 @_ssdm_op_PartSelect.i480.i512.i32.i32(i512 %empty, i32 32, i32 511), !dbg !758, !bitwidth !528
  call void @llvm.dbg.value(metadata !{float %v32}, i64 0, metadata !759), !dbg !758
  store float %v32, float* %v29_addr, align 4, !dbg !760, !bitwidth !199
  %add_ln93 = add i7 %select_ln92, 1, !dbg !761, !bitwidth !526
  store i13 %add_ln92_1, i13* %indvar_flatten, !bitwidth !199, !dep_idx !762, !deps !763
  store i7 %select_ln92_2, i7* %load_buf1_l_0, !bitwidth !199, !dep_idx !766, !deps !767
  store i7 %add_ln93, i7* %load_buf1_l_1, !bitwidth !199, !dep_idx !770, !deps !771
  store i480 %trunc_ln95_1, i480* %shiftreg, !bitwidth !199, !dep_idx !774, !deps !775
  br label %0, !llvm.loop !778, !bitwidth !199

.split2:                                          ; preds = %0
  %shiftreg_load = load i480* %shiftreg, !dbg !749, !bitwidth !528, !dep_idx !780, !deps !781
  %load_buf1_l_1_load = load i7* %load_buf1_l_1, !dbg !784, !bitwidth !526, !dep_idx !785, !deps !786
  %load_buf1_l_0_load = load i7* %load_buf1_l_0, !dbg !789, !bitwidth !526, !dep_idx !790, !deps !791
  %add_ln92 = add i7 %load_buf1_l_0_load, 1, !dbg !789, !bitwidth !526
  call void (...)* @_ssdm_op_SpecLoopName([44 x i8]* @l_S_load_buf1_load_buf1_l_0_l_load_buf1_l_1_str)
  %empty_33 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4096, i64 4096, i64 4096)
  %icmp_ln93 = icmp eq i7 %load_buf1_l_1_load, -64, !dbg !784, !bitwidth !523
  %select_ln92 = select i1 %icmp_ln93, i7 0, i7 %load_buf1_l_1_load, !dbg !749, !bitwidth !526
  %select_ln92_1 = select i1 %icmp_ln93, i480 0, i480 %shiftreg_load, !dbg !749, !bitwidth !528
  %select_ln92_2 = select i1 %icmp_ln93, i7 %add_ln92, i7 %load_buf1_l_0_load, !dbg !749, !bitwidth !526
  %trunc_ln96 = trunc i7 %select_ln92_2 to i6, !dbg !794, !bitwidth !567
  %tmp_cast = call i12 @_ssdm_op_BitConcatenate.i12.i6.i6(i6 %trunc_ln96, i6 0), !dbg !784, !bitwidth !405
  %zext_ln93 = zext i480 %select_ln92_1 to i512, !dbg !784, !bitwidth !795
  %zext_ln96 = zext i7 %select_ln92 to i12, !dbg !794, !bitwidth !568
  %add_ln96 = add i12 %tmp_cast, %zext_ln96, !dbg !794, !bitwidth !405
  %zext_ln96_1 = zext i12 %add_ln96 to i64, !dbg !794, !bitwidth !569
  %v29_addr = getelementptr [4096 x float]* %v29, i64 0, i64 %zext_ln96_1, !dbg !794, !bitwidth !199
  %trunc_ln93 = trunc i7 %select_ln92 to i4, !dbg !784, !bitwidth !570
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 0, i32 0, i32 0, [1 x i8]* @p_str_1) nounwind, !dbg !796
  call void (...)* @_ssdm_op_SpecLoopName([16 x i8]* @empty_15) nounwind, !dbg !796
  %icmp_ln95 = icmp eq i4 %trunc_ln93, 0, !dbg !755, !bitwidth !523
  br i1 %icmp_ln95, label %1, label %.split._crit_edge, !dbg !755, !bitwidth !199

; <label>:1                                       ; preds = %.split2
  %gmem1_addr_read = call i512 @_ssdm_op_Read.m_axi.p1i512(i512 addrspace(1)* %gmem1_addr) nounwind, !dbg !755, !bitwidth !574
  br label %.split._crit_edge, !dbg !755, !bitwidth !199
}

define internal fastcc void @load_buf1.1(i512 addrspace(1)* noalias nocapture align 64 %gmem1, i64 %v28, [4096 x float]* noalias nocapture align 512 %v29) unnamed_addr {
codeRepl:
  call void (...)* @_ssdm_op_SpecInterface(i512 addrspace(1)* %gmem1, [6 x i8]* @empty_4, i32 0, i32 0, [1 x i8]* @p_str_1, i32 64, i32 4096, [6 x i8]* @empty_1, [6 x i8]* @empty_2, [1 x i8]* @p_str_1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str_1, [1 x i8]* @p_str_1) nounwind
  %v28_read = call i64 @_ssdm_op_Read.ap_auto.i64(i64 %v28), !dbg !797, !bitwidth !155
  call void @llvm.dbg.value(metadata !{i64 %v28_read}, i64 0, metadata !798), !dbg !797
  call void @llvm.dbg.value(metadata !{i64 %v28}, i64 0, metadata !798), !dbg !797
  call void @llvm.dbg.value(metadata !{[4096 x float]* %v29}, i64 0, metadata !799), !dbg !800
  %trunc_ln = call i58 @_ssdm_op_PartSelect.i58.i64.i32.i32(i64 %v28_read, i32 6, i32 63), !dbg !754, !bitwidth !197
  %sext_ln92 = sext i58 %trunc_ln to i64, !dbg !754, !bitwidth !497
  %gmem1_addr = getelementptr i512 addrspace(1)* %gmem1, i64 %sext_ln92, !dbg !754, !bitwidth !151
  %empty = call i1 @_ssdm_op_ReadReq.m_axi.p1i512(i512 addrspace(1)* %gmem1_addr, i32 256) nounwind, !dbg !754, !bitwidth !523
  call void @load_buf1.1_Pipeline_l_S_load_buf1_load_buf1_l_0_l_load_buf1_l_1(i512 addrspace(1)* %gmem1, i58 %trunc_ln, [4096 x float]* %v29), !bitwidth !199
  ret void, !dbg !801, !bitwidth !199
}

define internal void @load_buf0.1_Pipeline_l_S_load_buf0_load_buf0_l_0_l_load_buf0_l_1(i512 addrspace(1)* %gmem0, i58 %sext_ln79, [4096 x float]* %v24) {
newFuncRoot:
  %shiftreg = alloca i480, !bitwidth !488
  %load_buf0_l_1 = alloca i7, !bitwidth !489
  call void @llvm.dbg.declare(metadata !{i7* %load_buf0_l_1}, metadata !802)
  %load_buf0_l_0 = alloca i7, !bitwidth !489
  call void @llvm.dbg.declare(metadata !{i7* %load_buf0_l_0}, metadata !807)
  %indvar_flatten = alloca i13, !bitwidth !496
  %sext_ln79_read = call i58 @_ssdm_op_Read.ap_auto.i58(i58 %sext_ln79), !bitwidth !197
  %sext_ln79_cast = sext i58 %sext_ln79_read to i64, !bitwidth !497
  call void (...)* @_ssdm_op_SpecInterface(i512 addrspace(1)* %gmem0, [6 x i8]* @empty_4, i32 0, i32 0, [1 x i8]* @p_str_1, i32 64, i32 4096, [6 x i8]* @empty_3, [6 x i8]* @empty_2, [1 x i8]* @p_str_1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str_1, [1 x i8]* @p_str_1)
  store i13 0, i13* %indvar_flatten, !bitwidth !199, !dep_idx !808, !deps !809
  store i7 0, i7* %load_buf0_l_0, !bitwidth !199, !dep_idx !812, !deps !813
  store i7 0, i7* %load_buf0_l_1, !bitwidth !199, !dep_idx !816, !deps !817
  store i480 0, i480* %shiftreg, !bitwidth !199, !dep_idx !820, !deps !821
  br label %0, !bitwidth !199

.exitStub:                                        ; preds = %0
  ret void, !bitwidth !199

; <label>:0                                       ; preds = %.split._crit_edge, %newFuncRoot
  %indvar_flatten_load = load i13* %indvar_flatten, !dbg !824, !bitwidth !516, !dep_idx !825, !deps !826
  %gmem0_addr = getelementptr i512 addrspace(1)* %gmem0, i64 %sext_ln79_cast, !dbg !829, !bitwidth !151
  %icmp_ln79 = icmp eq i13 %indvar_flatten_load, -4096, !dbg !824, !bitwidth !523
  %add_ln79_1 = add i13 %indvar_flatten_load, 1, !dbg !824, !bitwidth !516
  br i1 %icmp_ln79, label %.exitStub, label %.split2, !bitwidth !199

.split._crit_edge:                                ; preds = %1, %.split2
  %empty = phi i512 [ %gmem0_addr_read, %1 ], [ %zext_ln80, %.split2 ], !bitwidth !574
  %trunc_ln82 = trunc i512 %empty to i32, !dbg !830, !bitwidth !385
  %v27 = bitcast i32 %trunc_ln82 to float, !dbg !830, !bitwidth !385
  %trunc_ln82_1 = call i480 @_ssdm_op_PartSelect.i480.i512.i32.i32(i512 %empty, i32 32, i32 511), !dbg !833, !bitwidth !528
  call void @llvm.dbg.value(metadata !{float %v27}, i64 0, metadata !834), !dbg !833
  store float %v27, float* %v24_addr, align 4, !dbg !835, !bitwidth !199
  %add_ln80 = add i7 %select_ln79, 1, !dbg !836, !bitwidth !526
  store i13 %add_ln79_1, i13* %indvar_flatten, !bitwidth !199, !dep_idx !837, !deps !838
  store i7 %select_ln79_2, i7* %load_buf0_l_0, !bitwidth !199, !dep_idx !841, !deps !842
  store i7 %add_ln80, i7* %load_buf0_l_1, !bitwidth !199, !dep_idx !845, !deps !846
  store i480 %trunc_ln82_1, i480* %shiftreg, !bitwidth !199, !dep_idx !849, !deps !850
  br label %0, !llvm.loop !853, !bitwidth !199

.split2:                                          ; preds = %0
  %shiftreg_load = load i480* %shiftreg, !dbg !824, !bitwidth !528, !dep_idx !855, !deps !856
  %load_buf0_l_1_load = load i7* %load_buf0_l_1, !dbg !859, !bitwidth !526, !dep_idx !860, !deps !861
  %load_buf0_l_0_load = load i7* %load_buf0_l_0, !dbg !864, !bitwidth !526, !dep_idx !865, !deps !866
  %add_ln79 = add i7 %load_buf0_l_0_load, 1, !dbg !864, !bitwidth !526
  call void (...)* @_ssdm_op_SpecLoopName([44 x i8]* @l_S_load_buf0_load_buf0_l_0_l_load_buf0_l_1_str)
  %empty_34 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4096, i64 4096, i64 4096)
  %icmp_ln80 = icmp eq i7 %load_buf0_l_1_load, -64, !dbg !859, !bitwidth !523
  %select_ln79 = select i1 %icmp_ln80, i7 0, i7 %load_buf0_l_1_load, !dbg !824, !bitwidth !526
  %select_ln79_1 = select i1 %icmp_ln80, i480 0, i480 %shiftreg_load, !dbg !824, !bitwidth !528
  %select_ln79_2 = select i1 %icmp_ln80, i7 %add_ln79, i7 %load_buf0_l_0_load, !dbg !824, !bitwidth !526
  %trunc_ln83 = trunc i7 %select_ln79_2 to i6, !dbg !869, !bitwidth !567
  %tmp_cast = call i12 @_ssdm_op_BitConcatenate.i12.i6.i6(i6 %trunc_ln83, i6 0), !dbg !859, !bitwidth !405
  %zext_ln80 = zext i480 %select_ln79_1 to i512, !dbg !859, !bitwidth !795
  %zext_ln83 = zext i7 %select_ln79 to i12, !dbg !869, !bitwidth !568
  %add_ln83 = add i12 %tmp_cast, %zext_ln83, !dbg !869, !bitwidth !405
  %zext_ln83_1 = zext i12 %add_ln83 to i64, !dbg !869, !bitwidth !569
  %v24_addr = getelementptr [4096 x float]* %v24, i64 0, i64 %zext_ln83_1, !dbg !869, !bitwidth !199
  %trunc_ln80 = trunc i7 %select_ln79 to i4, !dbg !859, !bitwidth !570
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 0, i32 0, i32 0, [1 x i8]* @p_str_1) nounwind, !dbg !870
  call void (...)* @_ssdm_op_SpecLoopName([16 x i8]* @empty_8) nounwind, !dbg !870
  %icmp_ln82 = icmp eq i4 %trunc_ln80, 0, !dbg !830, !bitwidth !523
  br i1 %icmp_ln82, label %1, label %.split._crit_edge, !dbg !830, !bitwidth !199

; <label>:1                                       ; preds = %.split2
  %gmem0_addr_read = call i512 @_ssdm_op_Read.m_axi.p1i512(i512 addrspace(1)* %gmem0_addr) nounwind, !dbg !830, !bitwidth !574
  br label %.split._crit_edge, !dbg !830, !bitwidth !199
}

define internal fastcc void @load_buf0.1(i512 addrspace(1)* noalias nocapture align 64 %gmem0, i64 %v23, [4096 x float]* noalias nocapture align 512 %v24) unnamed_addr {
codeRepl:
  call void (...)* @_ssdm_op_SpecInterface(i512 addrspace(1)* %gmem0, [6 x i8]* @empty_4, i32 0, i32 0, [1 x i8]* @p_str_1, i32 64, i32 4096, [6 x i8]* @empty_3, [6 x i8]* @empty_2, [1 x i8]* @p_str_1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str_1, [1 x i8]* @p_str_1) nounwind
  %v23_read = call i64 @_ssdm_op_Read.ap_auto.i64(i64 %v23), !dbg !871, !bitwidth !155
  call void @llvm.dbg.value(metadata !{i64 %v23_read}, i64 0, metadata !872), !dbg !871
  call void @llvm.dbg.value(metadata !{i64 %v23}, i64 0, metadata !872), !dbg !871
  call void @llvm.dbg.value(metadata !{[4096 x float]* %v24}, i64 0, metadata !873), !dbg !874
  %trunc_ln = call i58 @_ssdm_op_PartSelect.i58.i64.i32.i32(i64 %v23_read, i32 6, i32 63), !dbg !829, !bitwidth !197
  %sext_ln79 = sext i58 %trunc_ln to i64, !dbg !829, !bitwidth !497
  %gmem0_addr = getelementptr i512 addrspace(1)* %gmem0, i64 %sext_ln79, !dbg !829, !bitwidth !151
  %empty = call i1 @_ssdm_op_ReadReq.m_axi.p1i512(i512 addrspace(1)* %gmem0_addr, i32 256) nounwind, !dbg !829, !bitwidth !523
  call void @load_buf0.1_Pipeline_l_S_load_buf0_load_buf0_l_0_l_load_buf0_l_1(i512 addrspace(1)* %gmem0, i58 %trunc_ln, [4096 x float]* %v24), !bitwidth !199
  ret void, !dbg !875, !bitwidth !199
}

declare i64 @llvm.part.select.i64(i64, i32, i32) nounwind readnone

declare i512 @llvm.part.select.i512(i512, i32, i32) nounwind readnone

declare i480 @llvm.part.select.i480(i480, i32, i32) nounwind readnone

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define internal void @gemm_stage_0_Pipeline_l_S_k_0_k([64 x float]* %c_row, i12 %zext_ln31, [4096 x float]* %v0, [4096 x float]* %v1) {
newFuncRoot:
  %k = alloca i7, !bitwidth !489
  call void @llvm.dbg.declare(metadata !{i7* %k}, metadata !876)
  %zext_ln31_read = call i12 @_ssdm_op_Read.ap_auto.i12(i12 %zext_ln31), !bitwidth !405
  store i7 0, i7* %k, !bitwidth !199, !dep_idx !881, !deps !882
  br label %.preheader, !bitwidth !199

.exitStub:                                        ; preds = %.preheader
  ret void, !bitwidth !199

.preheader:                                       ; preds = %.split4, %newFuncRoot
  %k_1 = load i7* %k, !dbg !885, !bitwidth !526, !dep_idx !887, !deps !888
  %c_row_addr = getelementptr inbounds [64 x float]* %c_row, i64 0, i64 63, !dbg !891, !bitwidth !199
  %c_row_addr_1 = getelementptr inbounds [64 x float]* %c_row, i64 0, i64 62, !dbg !891, !bitwidth !199
  %c_row_addr_2 = getelementptr inbounds [64 x float]* %c_row, i64 0, i64 61, !dbg !891, !bitwidth !199
  %c_row_addr_3 = getelementptr inbounds [64 x float]* %c_row, i64 0, i64 60, !dbg !891, !bitwidth !199
  %c_row_addr_4 = getelementptr inbounds [64 x float]* %c_row, i64 0, i64 59, !dbg !891, !bitwidth !199
  %c_row_addr_5 = getelementptr inbounds [64 x float]* %c_row, i64 0, i64 58, !dbg !891, !bitwidth !199
  %c_row_addr_6 = getelementptr inbounds [64 x float]* %c_row, i64 0, i64 57, !dbg !891, !bitwidth !199
  %c_row_addr_7 = getelementptr inbounds [64 x float]* %c_row, i64 0, i64 56, !dbg !891, !bitwidth !199
  %c_row_addr_8 = getelementptr inbounds [64 x float]* %c_row, i64 0, i64 55, !dbg !891, !bitwidth !199
  %c_row_addr_9 = getelementptr inbounds [64 x float]* %c_row, i64 0, i64 54, !dbg !891, !bitwidth !199
  %c_row_addr_10 = getelementptr inbounds [64 x float]* %c_row, i64 0, i64 53, !dbg !891, !bitwidth !199
  %c_row_addr_11 = getelementptr inbounds [64 x float]* %c_row, i64 0, i64 52, !dbg !891, !bitwidth !199
  %c_row_addr_12 = getelementptr inbounds [64 x float]* %c_row, i64 0, i64 51, !dbg !891, !bitwidth !199
  %c_row_addr_13 = getelementptr inbounds [64 x float]* %c_row, i64 0, i64 50, !dbg !891, !bitwidth !199
  %c_row_addr_14 = getelementptr inbounds [64 x float]* %c_row, i64 0, i64 49, !dbg !891, !bitwidth !199
  %c_row_addr_15 = getelementptr inbounds [64 x float]* %c_row, i64 0, i64 48, !dbg !891, !bitwidth !199
  %c_row_addr_16 = getelementptr inbounds [64 x float]* %c_row, i64 0, i64 47, !dbg !891, !bitwidth !199
  %c_row_addr_17 = getelementptr inbounds [64 x float]* %c_row, i64 0, i64 46, !dbg !891, !bitwidth !199
  %c_row_addr_18 = getelementptr inbounds [64 x float]* %c_row, i64 0, i64 45, !dbg !891, !bitwidth !199
  %c_row_addr_19 = getelementptr inbounds [64 x float]* %c_row, i64 0, i64 44, !dbg !891, !bitwidth !199
  %c_row_addr_20 = getelementptr inbounds [64 x float]* %c_row, i64 0, i64 43, !dbg !891, !bitwidth !199
  %c_row_addr_21 = getelementptr inbounds [64 x float]* %c_row, i64 0, i64 42, !dbg !891, !bitwidth !199
  %c_row_addr_22 = getelementptr inbounds [64 x float]* %c_row, i64 0, i64 41, !dbg !891, !bitwidth !199
  %c_row_addr_23 = getelementptr inbounds [64 x float]* %c_row, i64 0, i64 40, !dbg !891, !bitwidth !199
  %c_row_addr_24 = getelementptr inbounds [64 x float]* %c_row, i64 0, i64 39, !dbg !891, !bitwidth !199
  %c_row_addr_25 = getelementptr inbounds [64 x float]* %c_row, i64 0, i64 38, !dbg !891, !bitwidth !199
  %c_row_addr_26 = getelementptr inbounds [64 x float]* %c_row, i64 0, i64 37, !dbg !891, !bitwidth !199
  %c_row_addr_27 = getelementptr inbounds [64 x float]* %c_row, i64 0, i64 36, !dbg !891, !bitwidth !199
  %c_row_addr_28 = getelementptr inbounds [64 x float]* %c_row, i64 0, i64 35, !dbg !891, !bitwidth !199
  %c_row_addr_29 = getelementptr inbounds [64 x float]* %c_row, i64 0, i64 34, !dbg !891, !bitwidth !199
  %c_row_addr_30 = getelementptr inbounds [64 x float]* %c_row, i64 0, i64 33, !dbg !891, !bitwidth !199
  %c_row_addr_31 = getelementptr inbounds [64 x float]* %c_row, i64 0, i64 32, !dbg !891, !bitwidth !199
  %c_row_addr_32 = getelementptr inbounds [64 x float]* %c_row, i64 0, i64 31, !dbg !891, !bitwidth !199
  %c_row_addr_33 = getelementptr inbounds [64 x float]* %c_row, i64 0, i64 30, !dbg !891, !bitwidth !199
  %c_row_addr_34 = getelementptr inbounds [64 x float]* %c_row, i64 0, i64 29, !dbg !891, !bitwidth !199
  %c_row_addr_35 = getelementptr inbounds [64 x float]* %c_row, i64 0, i64 28, !dbg !891, !bitwidth !199
  %c_row_addr_36 = getelementptr inbounds [64 x float]* %c_row, i64 0, i64 27, !dbg !891, !bitwidth !199
  %c_row_addr_37 = getelementptr inbounds [64 x float]* %c_row, i64 0, i64 26, !dbg !891, !bitwidth !199
  %c_row_addr_38 = getelementptr inbounds [64 x float]* %c_row, i64 0, i64 25, !dbg !891, !bitwidth !199
  %c_row_addr_39 = getelementptr inbounds [64 x float]* %c_row, i64 0, i64 24, !dbg !891, !bitwidth !199
  %c_row_addr_40 = getelementptr inbounds [64 x float]* %c_row, i64 0, i64 23, !dbg !891, !bitwidth !199
  %c_row_addr_41 = getelementptr inbounds [64 x float]* %c_row, i64 0, i64 22, !dbg !891, !bitwidth !199
  %c_row_addr_42 = getelementptr inbounds [64 x float]* %c_row, i64 0, i64 21, !dbg !891, !bitwidth !199
  %c_row_addr_43 = getelementptr inbounds [64 x float]* %c_row, i64 0, i64 20, !dbg !891, !bitwidth !199
  %c_row_addr_44 = getelementptr inbounds [64 x float]* %c_row, i64 0, i64 19, !dbg !891, !bitwidth !199
  %c_row_addr_45 = getelementptr inbounds [64 x float]* %c_row, i64 0, i64 18, !dbg !891, !bitwidth !199
  %c_row_addr_46 = getelementptr inbounds [64 x float]* %c_row, i64 0, i64 17, !dbg !891, !bitwidth !199
  %c_row_addr_47 = getelementptr inbounds [64 x float]* %c_row, i64 0, i64 16, !dbg !891, !bitwidth !199
  %c_row_addr_48 = getelementptr inbounds [64 x float]* %c_row, i64 0, i64 15, !dbg !891, !bitwidth !199
  %c_row_addr_49 = getelementptr inbounds [64 x float]* %c_row, i64 0, i64 14, !dbg !891, !bitwidth !199
  %c_row_addr_50 = getelementptr inbounds [64 x float]* %c_row, i64 0, i64 13, !dbg !891, !bitwidth !199
  %c_row_addr_51 = getelementptr inbounds [64 x float]* %c_row, i64 0, i64 12, !dbg !891, !bitwidth !199
  %c_row_addr_52 = getelementptr inbounds [64 x float]* %c_row, i64 0, i64 11, !dbg !891, !bitwidth !199
  %c_row_addr_53 = getelementptr inbounds [64 x float]* %c_row, i64 0, i64 10, !dbg !891, !bitwidth !199
  %c_row_addr_54 = getelementptr inbounds [64 x float]* %c_row, i64 0, i64 9, !dbg !891, !bitwidth !199
  %c_row_addr_55 = getelementptr inbounds [64 x float]* %c_row, i64 0, i64 8, !dbg !891, !bitwidth !199
  %c_row_addr_56 = getelementptr inbounds [64 x float]* %c_row, i64 0, i64 7, !dbg !891, !bitwidth !199
  %c_row_addr_57 = getelementptr inbounds [64 x float]* %c_row, i64 0, i64 6, !dbg !891, !bitwidth !199
  %c_row_addr_58 = getelementptr inbounds [64 x float]* %c_row, i64 0, i64 5, !dbg !891, !bitwidth !199
  %c_row_addr_59 = getelementptr inbounds [64 x float]* %c_row, i64 0, i64 4, !dbg !891, !bitwidth !199
  %c_row_addr_60 = getelementptr inbounds [64 x float]* %c_row, i64 0, i64 3, !dbg !891, !bitwidth !199
  %c_row_addr_61 = getelementptr inbounds [64 x float]* %c_row, i64 0, i64 2, !dbg !891, !bitwidth !199
  %c_row_addr_62 = getelementptr inbounds [64 x float]* %c_row, i64 0, i64 1, !dbg !891, !bitwidth !199
  %c_row_addr_63 = getelementptr inbounds [64 x float]* %c_row, i64 0, i64 0, !dbg !891, !bitwidth !199
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 0, i32 1, i32 0, [1 x i8]* @p_str7)
  %icmp_ln30 = icmp eq i7 %k_1, -64, !dbg !896, !bitwidth !523
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64)
  %add_ln30 = add i7 %k_1, 1, !dbg !885, !bitwidth !526
  br i1 %icmp_ln30, label %.exitStub, label %.split4, !dbg !897, !llvm.loop !898, !bitwidth !199

.split4:                                          ; preds = %.preheader
  %zext_ln31_1 = zext i7 %k_1 to i12, !dbg !900, !bitwidth !568
  %add_ln31 = add i12 %zext_ln31_read, %zext_ln31_1, !dbg !900, !bitwidth !405
  %zext_ln31_2 = zext i12 %add_ln31 to i64, !dbg !900, !bitwidth !569
  %v0_addr = getelementptr [4096 x float]* %v0, i64 0, i64 %zext_ln31_2, !dbg !900, !bitwidth !199
  %tmp_s = call i13 @_ssdm_op_BitConcatenate.i13.i7.i6(i7 %k_1, i6 0), !dbg !901, !bitwidth !516
  %zext_ln36 = zext i13 %tmp_s to i64, !dbg !901, !bitwidth !569
  %v1_addr = getelementptr [4096 x float]* %v1, i64 0, i64 %zext_ln36, !dbg !901, !bitwidth !199
  %or_ln36 = or i13 %tmp_s, 1, !dbg !901, !bitwidth !516
  %tmp_191 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln36), !dbg !901, !bitwidth !155
  %v1_addr_1 = getelementptr [4096 x float]* %v1, i64 0, i64 %tmp_191, !dbg !901, !bitwidth !199
  %or_ln36_1 = or i13 %tmp_s, 2, !dbg !901, !bitwidth !516
  %tmp_192 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln36_1), !dbg !901, !bitwidth !155
  %v1_addr_2 = getelementptr [4096 x float]* %v1, i64 0, i64 %tmp_192, !dbg !901, !bitwidth !199
  %or_ln36_2 = or i13 %tmp_s, 3, !dbg !901, !bitwidth !516
  %tmp_193 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln36_2), !dbg !901, !bitwidth !155
  %v1_addr_3 = getelementptr [4096 x float]* %v1, i64 0, i64 %tmp_193, !dbg !901, !bitwidth !199
  %or_ln36_3 = or i13 %tmp_s, 4, !dbg !901, !bitwidth !516
  %tmp_194 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln36_3), !dbg !901, !bitwidth !155
  %v1_addr_4 = getelementptr [4096 x float]* %v1, i64 0, i64 %tmp_194, !dbg !901, !bitwidth !199
  %or_ln36_4 = or i13 %tmp_s, 5, !dbg !901, !bitwidth !516
  %tmp_195 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln36_4), !dbg !901, !bitwidth !155
  %v1_addr_5 = getelementptr [4096 x float]* %v1, i64 0, i64 %tmp_195, !dbg !901, !bitwidth !199
  %or_ln36_5 = or i13 %tmp_s, 6, !dbg !901, !bitwidth !516
  %tmp_196 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln36_5), !dbg !901, !bitwidth !155
  %v1_addr_6 = getelementptr [4096 x float]* %v1, i64 0, i64 %tmp_196, !dbg !901, !bitwidth !199
  %or_ln36_6 = or i13 %tmp_s, 7, !dbg !901, !bitwidth !516
  %tmp_197 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln36_6), !dbg !901, !bitwidth !155
  %v1_addr_7 = getelementptr [4096 x float]* %v1, i64 0, i64 %tmp_197, !dbg !901, !bitwidth !199
  %or_ln36_7 = or i13 %tmp_s, 8, !dbg !901, !bitwidth !516
  %tmp_198 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln36_7), !dbg !901, !bitwidth !155
  %v1_addr_8 = getelementptr [4096 x float]* %v1, i64 0, i64 %tmp_198, !dbg !901, !bitwidth !199
  %or_ln36_8 = or i13 %tmp_s, 9, !dbg !901, !bitwidth !516
  %tmp_199 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln36_8), !dbg !901, !bitwidth !155
  %v1_addr_9 = getelementptr [4096 x float]* %v1, i64 0, i64 %tmp_199, !dbg !901, !bitwidth !199
  %or_ln36_9 = or i13 %tmp_s, 10, !dbg !901, !bitwidth !516
  %tmp_200 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln36_9), !dbg !901, !bitwidth !155
  %v1_addr_10 = getelementptr [4096 x float]* %v1, i64 0, i64 %tmp_200, !dbg !901, !bitwidth !199
  %or_ln36_10 = or i13 %tmp_s, 11, !dbg !901, !bitwidth !516
  %tmp_201 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln36_10), !dbg !901, !bitwidth !155
  %v1_addr_11 = getelementptr [4096 x float]* %v1, i64 0, i64 %tmp_201, !dbg !901, !bitwidth !199
  %or_ln36_11 = or i13 %tmp_s, 12, !dbg !901, !bitwidth !516
  %tmp_202 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln36_11), !dbg !901, !bitwidth !155
  %v1_addr_12 = getelementptr [4096 x float]* %v1, i64 0, i64 %tmp_202, !dbg !901, !bitwidth !199
  %or_ln36_12 = or i13 %tmp_s, 13, !dbg !901, !bitwidth !516
  %tmp_203 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln36_12), !dbg !901, !bitwidth !155
  %v1_addr_13 = getelementptr [4096 x float]* %v1, i64 0, i64 %tmp_203, !dbg !901, !bitwidth !199
  %or_ln36_13 = or i13 %tmp_s, 14, !dbg !901, !bitwidth !516
  %tmp_204 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln36_13), !dbg !901, !bitwidth !155
  %v1_addr_14 = getelementptr [4096 x float]* %v1, i64 0, i64 %tmp_204, !dbg !901, !bitwidth !199
  %or_ln36_14 = or i13 %tmp_s, 15, !dbg !901, !bitwidth !516
  %tmp_205 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln36_14), !dbg !901, !bitwidth !155
  %v1_addr_15 = getelementptr [4096 x float]* %v1, i64 0, i64 %tmp_205, !dbg !901, !bitwidth !199
  %or_ln36_15 = or i13 %tmp_s, 16, !dbg !901, !bitwidth !516
  %tmp_206 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln36_15), !dbg !901, !bitwidth !155
  %v1_addr_16 = getelementptr [4096 x float]* %v1, i64 0, i64 %tmp_206, !dbg !901, !bitwidth !199
  %or_ln36_16 = or i13 %tmp_s, 17, !dbg !901, !bitwidth !516
  %tmp_207 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln36_16), !dbg !901, !bitwidth !155
  %v1_addr_17 = getelementptr [4096 x float]* %v1, i64 0, i64 %tmp_207, !dbg !901, !bitwidth !199
  %or_ln36_17 = or i13 %tmp_s, 18, !dbg !901, !bitwidth !516
  %tmp_208 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln36_17), !dbg !901, !bitwidth !155
  %v1_addr_18 = getelementptr [4096 x float]* %v1, i64 0, i64 %tmp_208, !dbg !901, !bitwidth !199
  %or_ln36_18 = or i13 %tmp_s, 19, !dbg !901, !bitwidth !516
  %tmp_209 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln36_18), !dbg !901, !bitwidth !155
  %v1_addr_19 = getelementptr [4096 x float]* %v1, i64 0, i64 %tmp_209, !dbg !901, !bitwidth !199
  %or_ln36_19 = or i13 %tmp_s, 20, !dbg !901, !bitwidth !516
  %tmp_210 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln36_19), !dbg !901, !bitwidth !155
  %v1_addr_20 = getelementptr [4096 x float]* %v1, i64 0, i64 %tmp_210, !dbg !901, !bitwidth !199
  %or_ln36_20 = or i13 %tmp_s, 21, !dbg !901, !bitwidth !516
  %tmp_211 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln36_20), !dbg !901, !bitwidth !155
  %v1_addr_21 = getelementptr [4096 x float]* %v1, i64 0, i64 %tmp_211, !dbg !901, !bitwidth !199
  %or_ln36_21 = or i13 %tmp_s, 22, !dbg !901, !bitwidth !516
  %tmp_212 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln36_21), !dbg !901, !bitwidth !155
  %v1_addr_22 = getelementptr [4096 x float]* %v1, i64 0, i64 %tmp_212, !dbg !901, !bitwidth !199
  %or_ln36_22 = or i13 %tmp_s, 23, !dbg !901, !bitwidth !516
  %tmp_213 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln36_22), !dbg !901, !bitwidth !155
  %v1_addr_23 = getelementptr [4096 x float]* %v1, i64 0, i64 %tmp_213, !dbg !901, !bitwidth !199
  %or_ln36_23 = or i13 %tmp_s, 24, !dbg !901, !bitwidth !516
  %tmp_214 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln36_23), !dbg !901, !bitwidth !155
  %v1_addr_24 = getelementptr [4096 x float]* %v1, i64 0, i64 %tmp_214, !dbg !901, !bitwidth !199
  %or_ln36_24 = or i13 %tmp_s, 25, !dbg !901, !bitwidth !516
  %tmp_215 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln36_24), !dbg !901, !bitwidth !155
  %v1_addr_25 = getelementptr [4096 x float]* %v1, i64 0, i64 %tmp_215, !dbg !901, !bitwidth !199
  %or_ln36_25 = or i13 %tmp_s, 26, !dbg !901, !bitwidth !516
  %tmp_216 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln36_25), !dbg !901, !bitwidth !155
  %v1_addr_26 = getelementptr [4096 x float]* %v1, i64 0, i64 %tmp_216, !dbg !901, !bitwidth !199
  %or_ln36_26 = or i13 %tmp_s, 27, !dbg !901, !bitwidth !516
  %tmp_217 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln36_26), !dbg !901, !bitwidth !155
  %v1_addr_27 = getelementptr [4096 x float]* %v1, i64 0, i64 %tmp_217, !dbg !901, !bitwidth !199
  %or_ln36_27 = or i13 %tmp_s, 28, !dbg !901, !bitwidth !516
  %tmp_218 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln36_27), !dbg !901, !bitwidth !155
  %v1_addr_28 = getelementptr [4096 x float]* %v1, i64 0, i64 %tmp_218, !dbg !901, !bitwidth !199
  %or_ln36_28 = or i13 %tmp_s, 29, !dbg !901, !bitwidth !516
  %tmp_219 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln36_28), !dbg !901, !bitwidth !155
  %v1_addr_29 = getelementptr [4096 x float]* %v1, i64 0, i64 %tmp_219, !dbg !901, !bitwidth !199
  %or_ln36_29 = or i13 %tmp_s, 30, !dbg !901, !bitwidth !516
  %tmp_220 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln36_29), !dbg !901, !bitwidth !155
  %v1_addr_30 = getelementptr [4096 x float]* %v1, i64 0, i64 %tmp_220, !dbg !901, !bitwidth !199
  %or_ln36_30 = or i13 %tmp_s, 31, !dbg !901, !bitwidth !516
  %tmp_221 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln36_30), !dbg !901, !bitwidth !155
  %v1_addr_31 = getelementptr [4096 x float]* %v1, i64 0, i64 %tmp_221, !dbg !901, !bitwidth !199
  %or_ln36_31 = or i13 %tmp_s, 32, !dbg !901, !bitwidth !516
  %tmp_222 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln36_31), !dbg !901, !bitwidth !155
  %v1_addr_32 = getelementptr [4096 x float]* %v1, i64 0, i64 %tmp_222, !dbg !901, !bitwidth !199
  %or_ln36_32 = or i13 %tmp_s, 33, !dbg !901, !bitwidth !516
  %tmp_223 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln36_32), !dbg !901, !bitwidth !155
  %v1_addr_33 = getelementptr [4096 x float]* %v1, i64 0, i64 %tmp_223, !dbg !901, !bitwidth !199
  %or_ln36_33 = or i13 %tmp_s, 34, !dbg !901, !bitwidth !516
  %tmp_224 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln36_33), !dbg !901, !bitwidth !155
  %v1_addr_34 = getelementptr [4096 x float]* %v1, i64 0, i64 %tmp_224, !dbg !901, !bitwidth !199
  %or_ln36_34 = or i13 %tmp_s, 35, !dbg !901, !bitwidth !516
  %tmp_225 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln36_34), !dbg !901, !bitwidth !155
  %v1_addr_35 = getelementptr [4096 x float]* %v1, i64 0, i64 %tmp_225, !dbg !901, !bitwidth !199
  %or_ln36_35 = or i13 %tmp_s, 36, !dbg !901, !bitwidth !516
  %tmp_226 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln36_35), !dbg !901, !bitwidth !155
  %v1_addr_36 = getelementptr [4096 x float]* %v1, i64 0, i64 %tmp_226, !dbg !901, !bitwidth !199
  %or_ln36_36 = or i13 %tmp_s, 37, !dbg !901, !bitwidth !516
  %tmp_227 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln36_36), !dbg !901, !bitwidth !155
  %v1_addr_37 = getelementptr [4096 x float]* %v1, i64 0, i64 %tmp_227, !dbg !901, !bitwidth !199
  %or_ln36_37 = or i13 %tmp_s, 38, !dbg !901, !bitwidth !516
  %tmp_228 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln36_37), !dbg !901, !bitwidth !155
  %v1_addr_38 = getelementptr [4096 x float]* %v1, i64 0, i64 %tmp_228, !dbg !901, !bitwidth !199
  %or_ln36_38 = or i13 %tmp_s, 39, !dbg !901, !bitwidth !516
  %tmp_229 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln36_38), !dbg !901, !bitwidth !155
  %v1_addr_39 = getelementptr [4096 x float]* %v1, i64 0, i64 %tmp_229, !dbg !901, !bitwidth !199
  %or_ln36_39 = or i13 %tmp_s, 40, !dbg !901, !bitwidth !516
  %tmp_230 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln36_39), !dbg !901, !bitwidth !155
  %v1_addr_40 = getelementptr [4096 x float]* %v1, i64 0, i64 %tmp_230, !dbg !901, !bitwidth !199
  %or_ln36_40 = or i13 %tmp_s, 41, !dbg !901, !bitwidth !516
  %tmp_231 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln36_40), !dbg !901, !bitwidth !155
  %v1_addr_41 = getelementptr [4096 x float]* %v1, i64 0, i64 %tmp_231, !dbg !901, !bitwidth !199
  %or_ln36_41 = or i13 %tmp_s, 42, !dbg !901, !bitwidth !516
  %tmp_232 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln36_41), !dbg !901, !bitwidth !155
  %v1_addr_42 = getelementptr [4096 x float]* %v1, i64 0, i64 %tmp_232, !dbg !901, !bitwidth !199
  %or_ln36_42 = or i13 %tmp_s, 43, !dbg !901, !bitwidth !516
  %tmp_233 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln36_42), !dbg !901, !bitwidth !155
  %v1_addr_43 = getelementptr [4096 x float]* %v1, i64 0, i64 %tmp_233, !dbg !901, !bitwidth !199
  %or_ln36_43 = or i13 %tmp_s, 44, !dbg !901, !bitwidth !516
  %tmp_234 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln36_43), !dbg !901, !bitwidth !155
  %v1_addr_44 = getelementptr [4096 x float]* %v1, i64 0, i64 %tmp_234, !dbg !901, !bitwidth !199
  %or_ln36_44 = or i13 %tmp_s, 45, !dbg !901, !bitwidth !516
  %tmp_235 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln36_44), !dbg !901, !bitwidth !155
  %v1_addr_45 = getelementptr [4096 x float]* %v1, i64 0, i64 %tmp_235, !dbg !901, !bitwidth !199
  %or_ln36_45 = or i13 %tmp_s, 46, !dbg !901, !bitwidth !516
  %tmp_236 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln36_45), !dbg !901, !bitwidth !155
  %v1_addr_46 = getelementptr [4096 x float]* %v1, i64 0, i64 %tmp_236, !dbg !901, !bitwidth !199
  %or_ln36_46 = or i13 %tmp_s, 47, !dbg !901, !bitwidth !516
  %tmp_237 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln36_46), !dbg !901, !bitwidth !155
  %v1_addr_47 = getelementptr [4096 x float]* %v1, i64 0, i64 %tmp_237, !dbg !901, !bitwidth !199
  %or_ln36_47 = or i13 %tmp_s, 48, !dbg !901, !bitwidth !516
  %tmp_238 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln36_47), !dbg !901, !bitwidth !155
  %v1_addr_48 = getelementptr [4096 x float]* %v1, i64 0, i64 %tmp_238, !dbg !901, !bitwidth !199
  %or_ln36_48 = or i13 %tmp_s, 49, !dbg !901, !bitwidth !516
  %tmp_239 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln36_48), !dbg !901, !bitwidth !155
  %v1_addr_49 = getelementptr [4096 x float]* %v1, i64 0, i64 %tmp_239, !dbg !901, !bitwidth !199
  %or_ln36_49 = or i13 %tmp_s, 50, !dbg !901, !bitwidth !516
  %tmp_240 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln36_49), !dbg !901, !bitwidth !155
  %v1_addr_50 = getelementptr [4096 x float]* %v1, i64 0, i64 %tmp_240, !dbg !901, !bitwidth !199
  %or_ln36_50 = or i13 %tmp_s, 51, !dbg !901, !bitwidth !516
  %tmp_241 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln36_50), !dbg !901, !bitwidth !155
  %v1_addr_51 = getelementptr [4096 x float]* %v1, i64 0, i64 %tmp_241, !dbg !901, !bitwidth !199
  %or_ln36_51 = or i13 %tmp_s, 52, !dbg !901, !bitwidth !516
  %tmp_242 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln36_51), !dbg !901, !bitwidth !155
  %v1_addr_52 = getelementptr [4096 x float]* %v1, i64 0, i64 %tmp_242, !dbg !901, !bitwidth !199
  %or_ln36_52 = or i13 %tmp_s, 53, !dbg !901, !bitwidth !516
  %tmp_243 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln36_52), !dbg !901, !bitwidth !155
  %v1_addr_53 = getelementptr [4096 x float]* %v1, i64 0, i64 %tmp_243, !dbg !901, !bitwidth !199
  %or_ln36_53 = or i13 %tmp_s, 54, !dbg !901, !bitwidth !516
  %tmp_244 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln36_53), !dbg !901, !bitwidth !155
  %v1_addr_54 = getelementptr [4096 x float]* %v1, i64 0, i64 %tmp_244, !dbg !901, !bitwidth !199
  %or_ln36_54 = or i13 %tmp_s, 55, !dbg !901, !bitwidth !516
  %tmp_245 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln36_54), !dbg !901, !bitwidth !155
  %v1_addr_55 = getelementptr [4096 x float]* %v1, i64 0, i64 %tmp_245, !dbg !901, !bitwidth !199
  %or_ln36_55 = or i13 %tmp_s, 56, !dbg !901, !bitwidth !516
  %tmp_246 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln36_55), !dbg !901, !bitwidth !155
  %v1_addr_56 = getelementptr [4096 x float]* %v1, i64 0, i64 %tmp_246, !dbg !901, !bitwidth !199
  %or_ln36_56 = or i13 %tmp_s, 57, !dbg !901, !bitwidth !516
  %tmp_247 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln36_56), !dbg !901, !bitwidth !155
  %v1_addr_57 = getelementptr [4096 x float]* %v1, i64 0, i64 %tmp_247, !dbg !901, !bitwidth !199
  %or_ln36_57 = or i13 %tmp_s, 58, !dbg !901, !bitwidth !516
  %tmp_248 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln36_57), !dbg !901, !bitwidth !155
  %v1_addr_58 = getelementptr [4096 x float]* %v1, i64 0, i64 %tmp_248, !dbg !901, !bitwidth !199
  %or_ln36_58 = or i13 %tmp_s, 59, !dbg !901, !bitwidth !516
  %tmp_249 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln36_58), !dbg !901, !bitwidth !155
  %v1_addr_59 = getelementptr [4096 x float]* %v1, i64 0, i64 %tmp_249, !dbg !901, !bitwidth !199
  %or_ln36_59 = or i13 %tmp_s, 60, !dbg !901, !bitwidth !516
  %tmp_250 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln36_59), !dbg !901, !bitwidth !155
  %v1_addr_60 = getelementptr [4096 x float]* %v1, i64 0, i64 %tmp_250, !dbg !901, !bitwidth !199
  %or_ln36_60 = or i13 %tmp_s, 61, !dbg !901, !bitwidth !516
  %tmp_251 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln36_60), !dbg !901, !bitwidth !155
  %v1_addr_61 = getelementptr [4096 x float]* %v1, i64 0, i64 %tmp_251, !dbg !901, !bitwidth !199
  %or_ln36_61 = or i13 %tmp_s, 62, !dbg !901, !bitwidth !516
  %tmp_252 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln36_61), !dbg !901, !bitwidth !155
  %v1_addr_62 = getelementptr [4096 x float]* %v1, i64 0, i64 %tmp_252, !dbg !901, !bitwidth !199
  %or_ln36_62 = or i13 %tmp_s, 63, !dbg !901, !bitwidth !516
  %tmp_253 = call i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51 0, i13 %or_ln36_62), !dbg !901, !bitwidth !155
  %v1_addr_63 = getelementptr [4096 x float]* %v1, i64 0, i64 %tmp_253, !dbg !901, !bitwidth !199
  call void (...)* @_ssdm_op_SpecLoopName([10 x i8]* @empty) nounwind, !dbg !902
  call void @llvm.dbg.value(metadata !{i7 %k_1}, i64 0, metadata !876), !dbg !902
  %v7 = load float* %v0_addr, align 4, !dbg !900, !bitwidth !385
  call void @llvm.dbg.value(metadata !{float %v7}, i64 0, metadata !903), !dbg !904
  call void @llvm.dbg.value(metadata !{float %v7}, i64 0, metadata !905), !dbg !906
  call void @llvm.dbg.value(metadata !{float %v7}, i64 0, metadata !907), !dbg !908
  %v1_load = load float* %v1_addr, align 4, !dbg !901, !bitwidth !385
  %v = fmul float %v7, %v1_load, !dbg !909, !bitwidth !385
  %c_row_load = load float* %c_row_addr_63, align 512, !dbg !891, !bitwidth !385, !dep_idx !910, !deps !911
  %v2 = fadd float %c_row_load, %v, !dbg !913, !bitwidth !385
  store float %v2, float* %c_row_addr_63, align 512, !dbg !914, !bitwidth !199, !dep_idx !915, !deps !916
  %v1_load_1 = load float* %v1_addr_1, align 4, !dbg !901, !bitwidth !385
  %v12_1 = fmul float %v7, %v1_load_1, !dbg !909, !bitwidth !385
  %c_row_load_1 = load float* %c_row_addr_62, align 4, !dbg !891, !bitwidth !385, !dep_idx !918, !deps !919
  %v14_1 = fadd float %c_row_load_1, %v12_1, !dbg !913, !bitwidth !385
  store float %v14_1, float* %c_row_addr_62, align 4, !dbg !914, !bitwidth !199, !dep_idx !921, !deps !922
  %v1_load_2 = load float* %v1_addr_2, align 4, !dbg !901, !bitwidth !385
  %v12_2 = fmul float %v7, %v1_load_2, !dbg !909, !bitwidth !385
  %c_row_load_2 = load float* %c_row_addr_61, align 8, !dbg !891, !bitwidth !385, !dep_idx !924, !deps !925
  %v14_2 = fadd float %c_row_load_2, %v12_2, !dbg !913, !bitwidth !385
  store float %v14_2, float* %c_row_addr_61, align 8, !dbg !914, !bitwidth !199, !dep_idx !927, !deps !928
  %v1_load_3 = load float* %v1_addr_3, align 4, !dbg !901, !bitwidth !385
  %v12_3 = fmul float %v7, %v1_load_3, !dbg !909, !bitwidth !385
  %c_row_load_3 = load float* %c_row_addr_60, align 4, !dbg !891, !bitwidth !385, !dep_idx !930, !deps !931
  %v14_3 = fadd float %c_row_load_3, %v12_3, !dbg !913, !bitwidth !385
  store float %v14_3, float* %c_row_addr_60, align 4, !dbg !914, !bitwidth !199, !dep_idx !933, !deps !934
  %v1_load_4 = load float* %v1_addr_4, align 4, !dbg !901, !bitwidth !385
  %v12_4 = fmul float %v7, %v1_load_4, !dbg !909, !bitwidth !385
  %c_row_load_4 = load float* %c_row_addr_59, align 16, !dbg !891, !bitwidth !385, !dep_idx !936, !deps !937
  %v14_4 = fadd float %c_row_load_4, %v12_4, !dbg !913, !bitwidth !385
  store float %v14_4, float* %c_row_addr_59, align 16, !dbg !914, !bitwidth !199, !dep_idx !939, !deps !940
  %v1_load_5 = load float* %v1_addr_5, align 4, !dbg !901, !bitwidth !385
  %v12_5 = fmul float %v7, %v1_load_5, !dbg !909, !bitwidth !385
  %c_row_load_5 = load float* %c_row_addr_58, align 4, !dbg !891, !bitwidth !385, !dep_idx !942, !deps !943
  %v14_5 = fadd float %c_row_load_5, %v12_5, !dbg !913, !bitwidth !385
  store float %v14_5, float* %c_row_addr_58, align 4, !dbg !914, !bitwidth !199, !dep_idx !945, !deps !946
  %v1_load_6 = load float* %v1_addr_6, align 4, !dbg !901, !bitwidth !385
  %v12_6 = fmul float %v7, %v1_load_6, !dbg !909, !bitwidth !385
  %c_row_load_6 = load float* %c_row_addr_57, align 8, !dbg !891, !bitwidth !385, !dep_idx !948, !deps !949
  %v14_6 = fadd float %c_row_load_6, %v12_6, !dbg !913, !bitwidth !385
  store float %v14_6, float* %c_row_addr_57, align 8, !dbg !914, !bitwidth !199, !dep_idx !951, !deps !952
  %v1_load_7 = load float* %v1_addr_7, align 4, !dbg !901, !bitwidth !385
  %v12_7 = fmul float %v7, %v1_load_7, !dbg !909, !bitwidth !385
  %c_row_load_7 = load float* %c_row_addr_56, align 4, !dbg !891, !bitwidth !385, !dep_idx !954, !deps !955
  %v14_7 = fadd float %c_row_load_7, %v12_7, !dbg !913, !bitwidth !385
  store float %v14_7, float* %c_row_addr_56, align 4, !dbg !914, !bitwidth !199, !dep_idx !957, !deps !958
  %v1_load_8 = load float* %v1_addr_8, align 4, !dbg !901, !bitwidth !385
  %v12_8 = fmul float %v7, %v1_load_8, !dbg !909, !bitwidth !385
  %c_row_load_8 = load float* %c_row_addr_55, align 32, !dbg !891, !bitwidth !385, !dep_idx !960, !deps !961
  %v14_8 = fadd float %c_row_load_8, %v12_8, !dbg !913, !bitwidth !385
  store float %v14_8, float* %c_row_addr_55, align 32, !dbg !914, !bitwidth !199, !dep_idx !963, !deps !964
  %v1_load_9 = load float* %v1_addr_9, align 4, !dbg !901, !bitwidth !385
  %v12_9 = fmul float %v7, %v1_load_9, !dbg !909, !bitwidth !385
  %c_row_load_9 = load float* %c_row_addr_54, align 4, !dbg !891, !bitwidth !385, !dep_idx !966, !deps !967
  %v14_9 = fadd float %c_row_load_9, %v12_9, !dbg !913, !bitwidth !385
  store float %v14_9, float* %c_row_addr_54, align 4, !dbg !914, !bitwidth !199, !dep_idx !969, !deps !970
  %v1_load_10 = load float* %v1_addr_10, align 4, !dbg !901, !bitwidth !385
  %v12_s = fmul float %v7, %v1_load_10, !dbg !909, !bitwidth !385
  %c_row_load_10 = load float* %c_row_addr_53, align 8, !dbg !891, !bitwidth !385, !dep_idx !972, !deps !973
  %v14_s = fadd float %c_row_load_10, %v12_s, !dbg !913, !bitwidth !385
  store float %v14_s, float* %c_row_addr_53, align 8, !dbg !914, !bitwidth !199, !dep_idx !975, !deps !976
  %v1_load_11 = load float* %v1_addr_11, align 4, !dbg !901, !bitwidth !385
  %v12_10 = fmul float %v7, %v1_load_11, !dbg !909, !bitwidth !385
  %c_row_load_11 = load float* %c_row_addr_52, align 4, !dbg !891, !bitwidth !385, !dep_idx !978, !deps !979
  %v14_10 = fadd float %c_row_load_11, %v12_10, !dbg !913, !bitwidth !385
  store float %v14_10, float* %c_row_addr_52, align 4, !dbg !914, !bitwidth !199, !dep_idx !981, !deps !982
  %v1_load_12 = load float* %v1_addr_12, align 4, !dbg !901, !bitwidth !385
  %v12_11 = fmul float %v7, %v1_load_12, !dbg !909, !bitwidth !385
  %c_row_load_12 = load float* %c_row_addr_51, align 16, !dbg !891, !bitwidth !385, !dep_idx !984, !deps !985
  %v14_11 = fadd float %c_row_load_12, %v12_11, !dbg !913, !bitwidth !385
  store float %v14_11, float* %c_row_addr_51, align 16, !dbg !914, !bitwidth !199, !dep_idx !987, !deps !988
  %v1_load_13 = load float* %v1_addr_13, align 4, !dbg !901, !bitwidth !385
  %v12_12 = fmul float %v7, %v1_load_13, !dbg !909, !bitwidth !385
  %c_row_load_13 = load float* %c_row_addr_50, align 4, !dbg !891, !bitwidth !385, !dep_idx !990, !deps !991
  %v14_12 = fadd float %c_row_load_13, %v12_12, !dbg !913, !bitwidth !385
  store float %v14_12, float* %c_row_addr_50, align 4, !dbg !914, !bitwidth !199, !dep_idx !993, !deps !994
  %v1_load_14 = load float* %v1_addr_14, align 4, !dbg !901, !bitwidth !385
  %v12_13 = fmul float %v7, %v1_load_14, !dbg !909, !bitwidth !385
  %c_row_load_14 = load float* %c_row_addr_49, align 8, !dbg !891, !bitwidth !385, !dep_idx !996, !deps !997
  %v14_13 = fadd float %c_row_load_14, %v12_13, !dbg !913, !bitwidth !385
  store float %v14_13, float* %c_row_addr_49, align 8, !dbg !914, !bitwidth !199, !dep_idx !999, !deps !1000
  %v1_load_15 = load float* %v1_addr_15, align 4, !dbg !901, !bitwidth !385
  %v12_14 = fmul float %v7, %v1_load_15, !dbg !909, !bitwidth !385
  %c_row_load_15 = load float* %c_row_addr_48, align 4, !dbg !891, !bitwidth !385, !dep_idx !1002, !deps !1003
  %v14_14 = fadd float %c_row_load_15, %v12_14, !dbg !913, !bitwidth !385
  store float %v14_14, float* %c_row_addr_48, align 4, !dbg !914, !bitwidth !199, !dep_idx !1005, !deps !1006
  %v1_load_16 = load float* %v1_addr_16, align 4, !dbg !901, !bitwidth !385
  %v12_15 = fmul float %v7, %v1_load_16, !dbg !909, !bitwidth !385
  %c_row_load_16 = load float* %c_row_addr_47, align 64, !dbg !891, !bitwidth !385, !dep_idx !1008, !deps !1009
  %v14_15 = fadd float %c_row_load_16, %v12_15, !dbg !913, !bitwidth !385
  store float %v14_15, float* %c_row_addr_47, align 64, !dbg !914, !bitwidth !199, !dep_idx !1011, !deps !1012
  %v1_load_17 = load float* %v1_addr_17, align 4, !dbg !901, !bitwidth !385
  %v12_16 = fmul float %v7, %v1_load_17, !dbg !909, !bitwidth !385
  %c_row_load_17 = load float* %c_row_addr_46, align 4, !dbg !891, !bitwidth !385, !dep_idx !1014, !deps !1015
  %v14_16 = fadd float %c_row_load_17, %v12_16, !dbg !913, !bitwidth !385
  store float %v14_16, float* %c_row_addr_46, align 4, !dbg !914, !bitwidth !199, !dep_idx !1017, !deps !1018
  %v1_load_18 = load float* %v1_addr_18, align 4, !dbg !901, !bitwidth !385
  %v12_17 = fmul float %v7, %v1_load_18, !dbg !909, !bitwidth !385
  %c_row_load_18 = load float* %c_row_addr_45, align 8, !dbg !891, !bitwidth !385, !dep_idx !1020, !deps !1021
  %v14_17 = fadd float %c_row_load_18, %v12_17, !dbg !913, !bitwidth !385
  store float %v14_17, float* %c_row_addr_45, align 8, !dbg !914, !bitwidth !199, !dep_idx !1023, !deps !1024
  %v1_load_19 = load float* %v1_addr_19, align 4, !dbg !901, !bitwidth !385
  %v12_18 = fmul float %v7, %v1_load_19, !dbg !909, !bitwidth !385
  %c_row_load_19 = load float* %c_row_addr_44, align 4, !dbg !891, !bitwidth !385, !dep_idx !1026, !deps !1027
  %v14_18 = fadd float %c_row_load_19, %v12_18, !dbg !913, !bitwidth !385
  store float %v14_18, float* %c_row_addr_44, align 4, !dbg !914, !bitwidth !199, !dep_idx !1029, !deps !1030
  %v1_load_20 = load float* %v1_addr_20, align 4, !dbg !901, !bitwidth !385
  %v12_19 = fmul float %v7, %v1_load_20, !dbg !909, !bitwidth !385
  %c_row_load_20 = load float* %c_row_addr_43, align 16, !dbg !891, !bitwidth !385, !dep_idx !1032, !deps !1033
  %v14_19 = fadd float %c_row_load_20, %v12_19, !dbg !913, !bitwidth !385
  store float %v14_19, float* %c_row_addr_43, align 16, !dbg !914, !bitwidth !199, !dep_idx !1035, !deps !1036
  %v1_load_21 = load float* %v1_addr_21, align 4, !dbg !901, !bitwidth !385
  %v12_20 = fmul float %v7, %v1_load_21, !dbg !909, !bitwidth !385
  %c_row_load_21 = load float* %c_row_addr_42, align 4, !dbg !891, !bitwidth !385, !dep_idx !1038, !deps !1039
  %v14_20 = fadd float %c_row_load_21, %v12_20, !dbg !913, !bitwidth !385
  store float %v14_20, float* %c_row_addr_42, align 4, !dbg !914, !bitwidth !199, !dep_idx !1041, !deps !1042
  %v1_load_22 = load float* %v1_addr_22, align 4, !dbg !901, !bitwidth !385
  %v12_21 = fmul float %v7, %v1_load_22, !dbg !909, !bitwidth !385
  %c_row_load_22 = load float* %c_row_addr_41, align 8, !dbg !891, !bitwidth !385, !dep_idx !1044, !deps !1045
  %v14_21 = fadd float %c_row_load_22, %v12_21, !dbg !913, !bitwidth !385
  store float %v14_21, float* %c_row_addr_41, align 8, !dbg !914, !bitwidth !199, !dep_idx !1047, !deps !1048
  %v1_load_23 = load float* %v1_addr_23, align 4, !dbg !901, !bitwidth !385
  %v12_22 = fmul float %v7, %v1_load_23, !dbg !909, !bitwidth !385
  %c_row_load_23 = load float* %c_row_addr_40, align 4, !dbg !891, !bitwidth !385, !dep_idx !1050, !deps !1051
  %v14_22 = fadd float %c_row_load_23, %v12_22, !dbg !913, !bitwidth !385
  store float %v14_22, float* %c_row_addr_40, align 4, !dbg !914, !bitwidth !199, !dep_idx !1053, !deps !1054
  %v1_load_24 = load float* %v1_addr_24, align 4, !dbg !901, !bitwidth !385
  %v12_23 = fmul float %v7, %v1_load_24, !dbg !909, !bitwidth !385
  %c_row_load_24 = load float* %c_row_addr_39, align 32, !dbg !891, !bitwidth !385, !dep_idx !1056, !deps !1057
  %v14_23 = fadd float %c_row_load_24, %v12_23, !dbg !913, !bitwidth !385
  store float %v14_23, float* %c_row_addr_39, align 32, !dbg !914, !bitwidth !199, !dep_idx !1059, !deps !1060
  %v1_load_25 = load float* %v1_addr_25, align 4, !dbg !901, !bitwidth !385
  %v12_24 = fmul float %v7, %v1_load_25, !dbg !909, !bitwidth !385
  %c_row_load_25 = load float* %c_row_addr_38, align 4, !dbg !891, !bitwidth !385, !dep_idx !1062, !deps !1063
  %v14_24 = fadd float %c_row_load_25, %v12_24, !dbg !913, !bitwidth !385
  store float %v14_24, float* %c_row_addr_38, align 4, !dbg !914, !bitwidth !199, !dep_idx !1065, !deps !1066
  %v1_load_26 = load float* %v1_addr_26, align 4, !dbg !901, !bitwidth !385
  %v12_25 = fmul float %v7, %v1_load_26, !dbg !909, !bitwidth !385
  %c_row_load_26 = load float* %c_row_addr_37, align 8, !dbg !891, !bitwidth !385, !dep_idx !1068, !deps !1069
  %v14_25 = fadd float %c_row_load_26, %v12_25, !dbg !913, !bitwidth !385
  store float %v14_25, float* %c_row_addr_37, align 8, !dbg !914, !bitwidth !199, !dep_idx !1071, !deps !1072
  %v1_load_27 = load float* %v1_addr_27, align 4, !dbg !901, !bitwidth !385
  %v12_26 = fmul float %v7, %v1_load_27, !dbg !909, !bitwidth !385
  %c_row_load_27 = load float* %c_row_addr_36, align 4, !dbg !891, !bitwidth !385, !dep_idx !1074, !deps !1075
  %v14_26 = fadd float %c_row_load_27, %v12_26, !dbg !913, !bitwidth !385
  store float %v14_26, float* %c_row_addr_36, align 4, !dbg !914, !bitwidth !199, !dep_idx !1077, !deps !1078
  %v1_load_28 = load float* %v1_addr_28, align 4, !dbg !901, !bitwidth !385
  %v12_27 = fmul float %v7, %v1_load_28, !dbg !909, !bitwidth !385
  %c_row_load_28 = load float* %c_row_addr_35, align 16, !dbg !891, !bitwidth !385, !dep_idx !1080, !deps !1081
  %v14_27 = fadd float %c_row_load_28, %v12_27, !dbg !913, !bitwidth !385
  store float %v14_27, float* %c_row_addr_35, align 16, !dbg !914, !bitwidth !199, !dep_idx !1083, !deps !1084
  %v1_load_29 = load float* %v1_addr_29, align 4, !dbg !901, !bitwidth !385
  %v12_28 = fmul float %v7, %v1_load_29, !dbg !909, !bitwidth !385
  %c_row_load_29 = load float* %c_row_addr_34, align 4, !dbg !891, !bitwidth !385, !dep_idx !1086, !deps !1087
  %v14_28 = fadd float %c_row_load_29, %v12_28, !dbg !913, !bitwidth !385
  store float %v14_28, float* %c_row_addr_34, align 4, !dbg !914, !bitwidth !199, !dep_idx !1089, !deps !1090
  %v1_load_30 = load float* %v1_addr_30, align 4, !dbg !901, !bitwidth !385
  %v12_29 = fmul float %v7, %v1_load_30, !dbg !909, !bitwidth !385
  %c_row_load_30 = load float* %c_row_addr_33, align 8, !dbg !891, !bitwidth !385, !dep_idx !1092, !deps !1093
  %v14_29 = fadd float %c_row_load_30, %v12_29, !dbg !913, !bitwidth !385
  store float %v14_29, float* %c_row_addr_33, align 8, !dbg !914, !bitwidth !199, !dep_idx !1095, !deps !1096
  %v1_load_31 = load float* %v1_addr_31, align 4, !dbg !901, !bitwidth !385
  %v12_30 = fmul float %v7, %v1_load_31, !dbg !909, !bitwidth !385
  %c_row_load_31 = load float* %c_row_addr_32, align 4, !dbg !891, !bitwidth !385, !dep_idx !1098, !deps !1099
  %v14_30 = fadd float %c_row_load_31, %v12_30, !dbg !913, !bitwidth !385
  store float %v14_30, float* %c_row_addr_32, align 4, !dbg !914, !bitwidth !199, !dep_idx !1101, !deps !1102
  %v1_load_32 = load float* %v1_addr_32, align 4, !dbg !901, !bitwidth !385
  %v12_31 = fmul float %v7, %v1_load_32, !dbg !909, !bitwidth !385
  %c_row_load_32 = load float* %c_row_addr_31, align 128, !dbg !891, !bitwidth !385, !dep_idx !1104, !deps !1105
  %v14_31 = fadd float %c_row_load_32, %v12_31, !dbg !913, !bitwidth !385
  store float %v14_31, float* %c_row_addr_31, align 128, !dbg !914, !bitwidth !199, !dep_idx !1107, !deps !1108
  %v1_load_33 = load float* %v1_addr_33, align 4, !dbg !901, !bitwidth !385
  %v12_32 = fmul float %v7, %v1_load_33, !dbg !909, !bitwidth !385
  %c_row_load_33 = load float* %c_row_addr_30, align 4, !dbg !891, !bitwidth !385, !dep_idx !1110, !deps !1111
  %v14_32 = fadd float %c_row_load_33, %v12_32, !dbg !913, !bitwidth !385
  store float %v14_32, float* %c_row_addr_30, align 4, !dbg !914, !bitwidth !199, !dep_idx !1113, !deps !1114
  %v1_load_34 = load float* %v1_addr_34, align 4, !dbg !901, !bitwidth !385
  %v12_33 = fmul float %v7, %v1_load_34, !dbg !909, !bitwidth !385
  %c_row_load_34 = load float* %c_row_addr_29, align 8, !dbg !891, !bitwidth !385, !dep_idx !1116, !deps !1117
  %v14_33 = fadd float %c_row_load_34, %v12_33, !dbg !913, !bitwidth !385
  store float %v14_33, float* %c_row_addr_29, align 8, !dbg !914, !bitwidth !199, !dep_idx !1119, !deps !1120
  %v1_load_35 = load float* %v1_addr_35, align 4, !dbg !901, !bitwidth !385
  %v12_34 = fmul float %v7, %v1_load_35, !dbg !909, !bitwidth !385
  %c_row_load_35 = load float* %c_row_addr_28, align 4, !dbg !891, !bitwidth !385, !dep_idx !1122, !deps !1123
  %v14_34 = fadd float %c_row_load_35, %v12_34, !dbg !913, !bitwidth !385
  store float %v14_34, float* %c_row_addr_28, align 4, !dbg !914, !bitwidth !199, !dep_idx !1125, !deps !1126
  %v1_load_36 = load float* %v1_addr_36, align 4, !dbg !901, !bitwidth !385
  %v12_35 = fmul float %v7, %v1_load_36, !dbg !909, !bitwidth !385
  %c_row_load_36 = load float* %c_row_addr_27, align 16, !dbg !891, !bitwidth !385, !dep_idx !1128, !deps !1129
  %v14_35 = fadd float %c_row_load_36, %v12_35, !dbg !913, !bitwidth !385
  store float %v14_35, float* %c_row_addr_27, align 16, !dbg !914, !bitwidth !199, !dep_idx !1131, !deps !1132
  %v1_load_37 = load float* %v1_addr_37, align 4, !dbg !901, !bitwidth !385
  %v12_36 = fmul float %v7, %v1_load_37, !dbg !909, !bitwidth !385
  %c_row_load_37 = load float* %c_row_addr_26, align 4, !dbg !891, !bitwidth !385, !dep_idx !1134, !deps !1135
  %v14_36 = fadd float %c_row_load_37, %v12_36, !dbg !913, !bitwidth !385
  store float %v14_36, float* %c_row_addr_26, align 4, !dbg !914, !bitwidth !199, !dep_idx !1137, !deps !1138
  %v1_load_38 = load float* %v1_addr_38, align 4, !dbg !901, !bitwidth !385
  %v12_37 = fmul float %v7, %v1_load_38, !dbg !909, !bitwidth !385
  %c_row_load_38 = load float* %c_row_addr_25, align 8, !dbg !891, !bitwidth !385, !dep_idx !1140, !deps !1141
  %v14_37 = fadd float %c_row_load_38, %v12_37, !dbg !913, !bitwidth !385
  store float %v14_37, float* %c_row_addr_25, align 8, !dbg !914, !bitwidth !199, !dep_idx !1143, !deps !1144
  %v1_load_39 = load float* %v1_addr_39, align 4, !dbg !901, !bitwidth !385
  %v12_38 = fmul float %v7, %v1_load_39, !dbg !909, !bitwidth !385
  %c_row_load_39 = load float* %c_row_addr_24, align 4, !dbg !891, !bitwidth !385, !dep_idx !1146, !deps !1147
  %v14_38 = fadd float %c_row_load_39, %v12_38, !dbg !913, !bitwidth !385
  store float %v14_38, float* %c_row_addr_24, align 4, !dbg !914, !bitwidth !199, !dep_idx !1149, !deps !1150
  %v1_load_40 = load float* %v1_addr_40, align 4, !dbg !901, !bitwidth !385
  %v12_39 = fmul float %v7, %v1_load_40, !dbg !909, !bitwidth !385
  %c_row_load_40 = load float* %c_row_addr_23, align 32, !dbg !891, !bitwidth !385, !dep_idx !1152, !deps !1153
  %v14_39 = fadd float %c_row_load_40, %v12_39, !dbg !913, !bitwidth !385
  store float %v14_39, float* %c_row_addr_23, align 32, !dbg !914, !bitwidth !199, !dep_idx !1155, !deps !1156
  %v1_load_41 = load float* %v1_addr_41, align 4, !dbg !901, !bitwidth !385
  %v12_40 = fmul float %v7, %v1_load_41, !dbg !909, !bitwidth !385
  %c_row_load_41 = load float* %c_row_addr_22, align 4, !dbg !891, !bitwidth !385, !dep_idx !1158, !deps !1159
  %v14_40 = fadd float %c_row_load_41, %v12_40, !dbg !913, !bitwidth !385
  store float %v14_40, float* %c_row_addr_22, align 4, !dbg !914, !bitwidth !199, !dep_idx !1161, !deps !1162
  %v1_load_42 = load float* %v1_addr_42, align 4, !dbg !901, !bitwidth !385
  %v12_41 = fmul float %v7, %v1_load_42, !dbg !909, !bitwidth !385
  %c_row_load_42 = load float* %c_row_addr_21, align 8, !dbg !891, !bitwidth !385, !dep_idx !1164, !deps !1165
  %v14_41 = fadd float %c_row_load_42, %v12_41, !dbg !913, !bitwidth !385
  store float %v14_41, float* %c_row_addr_21, align 8, !dbg !914, !bitwidth !199, !dep_idx !1167, !deps !1168
  %v1_load_43 = load float* %v1_addr_43, align 4, !dbg !901, !bitwidth !385
  %v12_42 = fmul float %v7, %v1_load_43, !dbg !909, !bitwidth !385
  %c_row_load_43 = load float* %c_row_addr_20, align 4, !dbg !891, !bitwidth !385, !dep_idx !1170, !deps !1171
  %v14_42 = fadd float %c_row_load_43, %v12_42, !dbg !913, !bitwidth !385
  store float %v14_42, float* %c_row_addr_20, align 4, !dbg !914, !bitwidth !199, !dep_idx !1173, !deps !1174
  %v1_load_44 = load float* %v1_addr_44, align 4, !dbg !901, !bitwidth !385
  %v12_43 = fmul float %v7, %v1_load_44, !dbg !909, !bitwidth !385
  %c_row_load_44 = load float* %c_row_addr_19, align 16, !dbg !891, !bitwidth !385, !dep_idx !1176, !deps !1177
  %v14_43 = fadd float %c_row_load_44, %v12_43, !dbg !913, !bitwidth !385
  store float %v14_43, float* %c_row_addr_19, align 16, !dbg !914, !bitwidth !199, !dep_idx !1179, !deps !1180
  %v1_load_45 = load float* %v1_addr_45, align 4, !dbg !901, !bitwidth !385
  %v12_44 = fmul float %v7, %v1_load_45, !dbg !909, !bitwidth !385
  %c_row_load_45 = load float* %c_row_addr_18, align 4, !dbg !891, !bitwidth !385, !dep_idx !1182, !deps !1183
  %v14_44 = fadd float %c_row_load_45, %v12_44, !dbg !913, !bitwidth !385
  store float %v14_44, float* %c_row_addr_18, align 4, !dbg !914, !bitwidth !199, !dep_idx !1185, !deps !1186
  %v1_load_46 = load float* %v1_addr_46, align 4, !dbg !901, !bitwidth !385
  %v12_45 = fmul float %v7, %v1_load_46, !dbg !909, !bitwidth !385
  %c_row_load_46 = load float* %c_row_addr_17, align 8, !dbg !891, !bitwidth !385, !dep_idx !1188, !deps !1189
  %v14_45 = fadd float %c_row_load_46, %v12_45, !dbg !913, !bitwidth !385
  store float %v14_45, float* %c_row_addr_17, align 8, !dbg !914, !bitwidth !199, !dep_idx !1191, !deps !1192
  %v1_load_47 = load float* %v1_addr_47, align 4, !dbg !901, !bitwidth !385
  %v12_46 = fmul float %v7, %v1_load_47, !dbg !909, !bitwidth !385
  %c_row_load_47 = load float* %c_row_addr_16, align 4, !dbg !891, !bitwidth !385, !dep_idx !1194, !deps !1195
  %v14_46 = fadd float %c_row_load_47, %v12_46, !dbg !913, !bitwidth !385
  store float %v14_46, float* %c_row_addr_16, align 4, !dbg !914, !bitwidth !199, !dep_idx !1197, !deps !1198
  %v1_load_48 = load float* %v1_addr_48, align 4, !dbg !901, !bitwidth !385
  %v12_47 = fmul float %v7, %v1_load_48, !dbg !909, !bitwidth !385
  %c_row_load_48 = load float* %c_row_addr_15, align 64, !dbg !891, !bitwidth !385, !dep_idx !1200, !deps !1201
  %v14_47 = fadd float %c_row_load_48, %v12_47, !dbg !913, !bitwidth !385
  store float %v14_47, float* %c_row_addr_15, align 64, !dbg !914, !bitwidth !199, !dep_idx !1203, !deps !1204
  %v1_load_49 = load float* %v1_addr_49, align 4, !dbg !901, !bitwidth !385
  %v12_48 = fmul float %v7, %v1_load_49, !dbg !909, !bitwidth !385
  %c_row_load_49 = load float* %c_row_addr_14, align 4, !dbg !891, !bitwidth !385, !dep_idx !1206, !deps !1207
  %v14_48 = fadd float %c_row_load_49, %v12_48, !dbg !913, !bitwidth !385
  store float %v14_48, float* %c_row_addr_14, align 4, !dbg !914, !bitwidth !199, !dep_idx !1209, !deps !1210
  %v1_load_50 = load float* %v1_addr_50, align 4, !dbg !901, !bitwidth !385
  %v12_49 = fmul float %v7, %v1_load_50, !dbg !909, !bitwidth !385
  %c_row_load_50 = load float* %c_row_addr_13, align 8, !dbg !891, !bitwidth !385, !dep_idx !1212, !deps !1213
  %v14_49 = fadd float %c_row_load_50, %v12_49, !dbg !913, !bitwidth !385
  store float %v14_49, float* %c_row_addr_13, align 8, !dbg !914, !bitwidth !199, !dep_idx !1215, !deps !1216
  %v1_load_51 = load float* %v1_addr_51, align 4, !dbg !901, !bitwidth !385
  %v12_50 = fmul float %v7, %v1_load_51, !dbg !909, !bitwidth !385
  %c_row_load_51 = load float* %c_row_addr_12, align 4, !dbg !891, !bitwidth !385, !dep_idx !1218, !deps !1219
  %v14_50 = fadd float %c_row_load_51, %v12_50, !dbg !913, !bitwidth !385
  store float %v14_50, float* %c_row_addr_12, align 4, !dbg !914, !bitwidth !199, !dep_idx !1221, !deps !1222
  %v1_load_52 = load float* %v1_addr_52, align 4, !dbg !901, !bitwidth !385
  %v12_51 = fmul float %v7, %v1_load_52, !dbg !909, !bitwidth !385
  %c_row_load_52 = load float* %c_row_addr_11, align 16, !dbg !891, !bitwidth !385, !dep_idx !1224, !deps !1225
  %v14_51 = fadd float %c_row_load_52, %v12_51, !dbg !913, !bitwidth !385
  store float %v14_51, float* %c_row_addr_11, align 16, !dbg !914, !bitwidth !199, !dep_idx !1227, !deps !1228
  %v1_load_53 = load float* %v1_addr_53, align 4, !dbg !901, !bitwidth !385
  %v12_52 = fmul float %v7, %v1_load_53, !dbg !909, !bitwidth !385
  %c_row_load_53 = load float* %c_row_addr_10, align 4, !dbg !891, !bitwidth !385, !dep_idx !1230, !deps !1231
  %v14_52 = fadd float %c_row_load_53, %v12_52, !dbg !913, !bitwidth !385
  store float %v14_52, float* %c_row_addr_10, align 4, !dbg !914, !bitwidth !199, !dep_idx !1233, !deps !1234
  %v1_load_54 = load float* %v1_addr_54, align 4, !dbg !901, !bitwidth !385
  %v12_53 = fmul float %v7, %v1_load_54, !dbg !909, !bitwidth !385
  %c_row_load_54 = load float* %c_row_addr_9, align 8, !dbg !891, !bitwidth !385, !dep_idx !1236, !deps !1237
  %v14_53 = fadd float %c_row_load_54, %v12_53, !dbg !913, !bitwidth !385
  store float %v14_53, float* %c_row_addr_9, align 8, !dbg !914, !bitwidth !199, !dep_idx !1239, !deps !1240
  %v1_load_55 = load float* %v1_addr_55, align 4, !dbg !901, !bitwidth !385
  %v12_54 = fmul float %v7, %v1_load_55, !dbg !909, !bitwidth !385
  %c_row_load_55 = load float* %c_row_addr_8, align 4, !dbg !891, !bitwidth !385, !dep_idx !1242, !deps !1243
  %v14_54 = fadd float %c_row_load_55, %v12_54, !dbg !913, !bitwidth !385
  store float %v14_54, float* %c_row_addr_8, align 4, !dbg !914, !bitwidth !199, !dep_idx !1245, !deps !1246
  %v1_load_56 = load float* %v1_addr_56, align 4, !dbg !901, !bitwidth !385
  %v12_55 = fmul float %v7, %v1_load_56, !dbg !909, !bitwidth !385
  %c_row_load_56 = load float* %c_row_addr_7, align 32, !dbg !891, !bitwidth !385, !dep_idx !1248, !deps !1249
  %v14_55 = fadd float %c_row_load_56, %v12_55, !dbg !913, !bitwidth !385
  store float %v14_55, float* %c_row_addr_7, align 32, !dbg !914, !bitwidth !199, !dep_idx !1251, !deps !1252
  %v1_load_57 = load float* %v1_addr_57, align 4, !dbg !901, !bitwidth !385
  %v12_56 = fmul float %v7, %v1_load_57, !dbg !909, !bitwidth !385
  %c_row_load_57 = load float* %c_row_addr_6, align 4, !dbg !891, !bitwidth !385, !dep_idx !1254, !deps !1255
  %v14_56 = fadd float %c_row_load_57, %v12_56, !dbg !913, !bitwidth !385
  store float %v14_56, float* %c_row_addr_6, align 4, !dbg !914, !bitwidth !199, !dep_idx !1257, !deps !1258
  %v1_load_58 = load float* %v1_addr_58, align 4, !dbg !901, !bitwidth !385
  %v12_57 = fmul float %v7, %v1_load_58, !dbg !909, !bitwidth !385
  %c_row_load_58 = load float* %c_row_addr_5, align 8, !dbg !891, !bitwidth !385, !dep_idx !1260, !deps !1261
  %v14_57 = fadd float %c_row_load_58, %v12_57, !dbg !913, !bitwidth !385
  store float %v14_57, float* %c_row_addr_5, align 8, !dbg !914, !bitwidth !199, !dep_idx !1263, !deps !1264
  %v1_load_59 = load float* %v1_addr_59, align 4, !dbg !901, !bitwidth !385
  %v12_58 = fmul float %v7, %v1_load_59, !dbg !909, !bitwidth !385
  %c_row_load_59 = load float* %c_row_addr_4, align 4, !dbg !891, !bitwidth !385, !dep_idx !1266, !deps !1267
  %v14_58 = fadd float %c_row_load_59, %v12_58, !dbg !913, !bitwidth !385
  store float %v14_58, float* %c_row_addr_4, align 4, !dbg !914, !bitwidth !199, !dep_idx !1269, !deps !1270
  %v1_load_60 = load float* %v1_addr_60, align 4, !dbg !901, !bitwidth !385
  %v12_59 = fmul float %v7, %v1_load_60, !dbg !909, !bitwidth !385
  %c_row_load_60 = load float* %c_row_addr_3, align 16, !dbg !891, !bitwidth !385, !dep_idx !1272, !deps !1273
  %v14_59 = fadd float %c_row_load_60, %v12_59, !dbg !913, !bitwidth !385
  store float %v14_59, float* %c_row_addr_3, align 16, !dbg !914, !bitwidth !199, !dep_idx !1275, !deps !1276
  %v1_load_61 = load float* %v1_addr_61, align 4, !dbg !901, !bitwidth !385
  %v12_60 = fmul float %v7, %v1_load_61, !dbg !909, !bitwidth !385
  %c_row_load_61 = load float* %c_row_addr_2, align 4, !dbg !891, !bitwidth !385, !dep_idx !1278, !deps !1279
  %v14_60 = fadd float %c_row_load_61, %v12_60, !dbg !913, !bitwidth !385
  store float %v14_60, float* %c_row_addr_2, align 4, !dbg !914, !bitwidth !199, !dep_idx !1281, !deps !1282
  %v1_load_62 = load float* %v1_addr_62, align 4, !dbg !901, !bitwidth !385
  %v12_61 = fmul float %v7, %v1_load_62, !dbg !909, !bitwidth !385
  %c_row_load_62 = load float* %c_row_addr_1, align 8, !dbg !891, !bitwidth !385, !dep_idx !1284, !deps !1285
  %v14_61 = fadd float %c_row_load_62, %v12_61, !dbg !913, !bitwidth !385
  store float %v14_61, float* %c_row_addr_1, align 8, !dbg !914, !bitwidth !199, !dep_idx !1287, !deps !1288
  %v1_load_63 = load float* %v1_addr_63, align 4, !dbg !901, !bitwidth !385
  %v12_62 = fmul float %v7, %v1_load_63, !dbg !909, !bitwidth !385
  %c_row_load_63 = load float* %c_row_addr, align 4, !dbg !891, !bitwidth !385, !dep_idx !1290, !deps !1291
  %v14_62 = fadd float %c_row_load_63, %v12_62, !dbg !913, !bitwidth !385
  store float %v14_62, float* %c_row_addr, align 4, !dbg !914, !bitwidth !199, !dep_idx !1293, !deps !1294
  store i7 %add_ln30, i7* %k, !bitwidth !199, !dep_idx !1296, !deps !1297
  br label %.preheader, !llvm.loop !898, !bitwidth !199
}

define internal void @gemm_stage_0_Pipeline_VITIS_LOOP_46_2([64 x float]* %c_row, [64 x float]* %v2_0_0_0) {
newFuncRoot:
  %p_iv0 = alloca i7, !bitwidth !489
  call void @llvm.dbg.declare(metadata !{i7* %p_iv0}, metadata !1300)
  call void (...)* @_ssdm_op_SpecInterface([64 x float]* %v2_0_0_0, [9 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str_1, i32 0, i32 0, [1 x i8]* @p_str_1, [1 x i8]* @p_str_1, [1 x i8]* @p_str_1, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str_1, [1 x i8]* @p_str_1)
  store i7 0, i7* %p_iv0, !bitwidth !199, !dep_idx !1303, !deps !1304
  br label %0, !bitwidth !199

.exitStub:                                        ; preds = %0
  ret void, !bitwidth !199

; <label>:0                                       ; preds = %.split6, %newFuncRoot
  %p_iv0_1 = load i7* %p_iv0, !dbg !1307, !bitwidth !526, !dep_idx !1309, !deps !1310
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 0, i32 1, i32 0, [1 x i8]* @p_str8)
  %icmp_ln46 = icmp eq i7 %p_iv0_1, -64, !dbg !1313, !bitwidth !523
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64)
  %add_ln46 = add i7 %p_iv0_1, 1, !dbg !1307, !bitwidth !526
  br i1 %icmp_ln46, label %.exitStub, label %.split6, !dbg !1314, !llvm.loop !1315, !bitwidth !199

.split6:                                          ; preds = %0
  %p_iv0_cast = zext i7 %p_iv0_1 to i64, !bitwidth !569
  call void (...)* @_ssdm_op_SpecLoopName([16 x i8]* @empty_18) nounwind, !dbg !1317
  call void @llvm.dbg.value(metadata !{i7 %p_iv0_1}, i64 0, metadata !1300), !dbg !1317
  %c_row_addr_1 = getelementptr inbounds [64 x float]* %c_row, i64 0, i64 %p_iv0_cast, !dbg !1318, !bitwidth !199
  %c_row_load = load float* %c_row_addr_1, align 4, !dbg !1318, !bitwidth !385
  %v2_0_0_0_addr = getelementptr [64 x float]* %v2_0_0_0, i64 0, i64 %p_iv0_cast, !dbg !1320, !bitwidth !199
  store float %c_row_load, float* %v2_0_0_0_addr, align 4, !dbg !1321, !bitwidth !199
  store i7 %add_ln46, i7* %p_iv0, !bitwidth !199, !dep_idx !1322, !deps !1323
  br label %0, !llvm.loop !1315, !bitwidth !199
}

define internal void @gemm_stage_0_Pipeline_VITIS_LOOP_27_1([64 x float]* %c_row) {
newFuncRoot:
  %v5 = alloca i7, !bitwidth !489
  call void @llvm.dbg.declare(metadata !{i7* %v5}, metadata !1326)
  store i7 0, i7* %v5, !bitwidth !199, !dep_idx !1328, !deps !1329
  br label %0, !bitwidth !199

.preheader.preheader.exitStub:                    ; preds = %0
  ret void, !bitwidth !199

; <label>:0                                       ; preds = %.split, %newFuncRoot
  %v5_1 = load i7* %v5, !dbg !1332, !bitwidth !526, !dep_idx !1334, !deps !1335
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 0, i32 1, i32 0, [1 x i8]* @p_str9)
  %icmp_ln27 = icmp eq i7 %v5_1, -64, !dbg !1338, !bitwidth !523
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64)
  %add_ln27 = add i7 %v5_1, 1, !dbg !1332, !bitwidth !526
  br i1 %icmp_ln27, label %.preheader.preheader.exitStub, label %.split, !dbg !1339, !llvm.loop !1340, !bitwidth !199

.split:                                           ; preds = %0
  %v5_cast = zext i7 %v5_1 to i64, !bitwidth !569
  call void (...)* @_ssdm_op_SpecLoopName([16 x i8]* @empty_5) nounwind, !dbg !1342
  call void @llvm.dbg.value(metadata !{i7 %v5_1}, i64 0, metadata !1326), !dbg !1342
  %c_row_addr = getelementptr inbounds [64 x float]* %c_row, i64 0, i64 %v5_cast, !dbg !1343, !bitwidth !199
  store float 0.000000e+00, float* %c_row_addr, align 4, !dbg !1345, !bitwidth !199
  store i7 %add_ln27, i7* %v5, !bitwidth !199, !dep_idx !1346, !deps !1347
  br label %0, !llvm.loop !1340, !bitwidth !199
}

define internal fastcc void @gemm_stage_0([4096 x float]* noalias nocapture align 512 %v0, [4096 x float]* noalias nocapture align 512 %v1, [64 x float]* noalias %v2_0_0_0) unnamed_addr {
  %i = alloca i7, !bitwidth !489
  call void @llvm.dbg.declare(metadata !{i7* %i}, metadata !1350)
  %c_row = alloca [64 x float], align 512, !bitwidth !199
  call void @llvm.dbg.value(metadata !{[4096 x float]* %v0}, i64 0, metadata !1351), !dbg !1352
  call void @llvm.dbg.value(metadata !{[4096 x float]* %v1}, i64 0, metadata !1353), !dbg !1354
  call void @llvm.dbg.value(metadata !{[64 x float]* %v2_0_0_0}, i64 0, metadata !1355), !dbg !1356
  store i7 0, i7* %i, !dbg !1357, !bitwidth !199, !dep_idx !1358, !deps !1359
  br label %1, !dbg !1357, !bitwidth !199

; <label>:1                                       ; preds = %.split8, %0
  %i_1 = load i7* %i, !dbg !900, !bitwidth !526, !dep_idx !1362, !deps !1363
  %icmp_ln25 = icmp eq i7 %i_1, -64, !dbg !1366, !bitwidth !523
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64)
  %add_ln25 = add i7 %i_1, 1, !dbg !1367, !bitwidth !526
  br i1 %icmp_ln25, label %2, label %.split8, !dbg !1357, !llvm.loop !1368, !bitwidth !199

.split8:                                          ; preds = %1
  %trunc_ln31 = trunc i7 %i_1 to i6, !dbg !900, !bitwidth !567
  %tmp_cast = call i12 @_ssdm_op_BitConcatenate.i12.i6.i6(i6 %trunc_ln31, i6 0), !dbg !1370, !bitwidth !405
  call void (...)* @_ssdm_op_SpecLoopName([10 x i8]* @empty_12) nounwind, !dbg !1370
  call void @llvm.dbg.declare(metadata !{[64 x float]* %c_row}, metadata !1371), !dbg !1370
  call void @llvm.dbg.value(metadata !{i7 %i_1}, i64 0, metadata !1350), !dbg !1372
  call void @gemm_stage_0_Pipeline_VITIS_LOOP_27_1([64 x float]* %c_row), !bitwidth !199, !dep_idx !1373, !deps !1374
  call void @gemm_stage_0_Pipeline_l_S_k_0_k([64 x float]* %c_row, i12 %tmp_cast, [4096 x float]* %v0, [4096 x float]* %v1), !bitwidth !199, !dep_idx !1378, !deps !1379
  call void @llvm.dbg.value(metadata !{[64 x float]* %v2_0_0_0}, i64 0, metadata !1382), !dbg !1402
  call void @llvm.dbg.value(metadata !{[64 x float]* %v2_0_0_0}, i64 0, metadata !1403), !dbg !1404
  call void @llvm.dbg.value(metadata !{[64 x float]* %v2_0_0_0}, i64 0, metadata !1405), !dbg !1407
  call void @llvm.dbg.value(metadata !{[64 x float]* %v2_0_0_0}, i64 0, metadata !1408), !dbg !1410
  call void (...)* @_ssdm_op_WriteReq([64 x float]* %v2_0_0_0, i32 2) nounwind, !dbg !1411, !bitwidth !199
  call void (...)* @_ssdm_op_SpecInterface([64 x float]* %v2_0_0_0, [9 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str_1, i32 0, i32 0, [1 x i8]* @p_str_1, [1 x i8]* @p_str_1, [1 x i8]* @p_str_1, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str_1, [1 x i8]* @p_str_1)
  call void @gemm_stage_0_Pipeline_VITIS_LOOP_46_2([64 x float]* %c_row, [64 x float]* %v2_0_0_0), !bitwidth !199, !dep_idx !1412, !deps !1413
  call void @llvm.dbg.value(metadata !{[64 x float]* %v2_0_0_0}, i64 0, metadata !1415), !dbg !1417
  call void @llvm.dbg.value(metadata !{[64 x float]* %v2_0_0_0}, i64 0, metadata !1418), !dbg !1420
  call void (...)* @_ssdm_op_Write([64 x float]* %v2_0_0_0, i32 2) nounwind, !dbg !1421, !bitwidth !199
  store i7 %add_ln25, i7* %i, !bitwidth !199, !dep_idx !1422, !deps !1423
  br label %1, !llvm.loop !1368, !bitwidth !199

; <label>:2                                       ; preds = %1
  ret void, !dbg !1426, !bitwidth !199
}

define internal fastcc i64 @entry_proc(i64 %v40) readnone {
entry:
  %v40_read = call i64 @_ssdm_op_Read.ap_auto.i64(i64 %v40), !bitwidth !155
  ret i64 %v40_read, !bitwidth !199
}

define weak i1 @_ssdm_op_WriteResp.m_axi.p1i512(i512 addrspace(1)*) {
entry:
  ret i1 true
}

define weak i1 @_ssdm_op_WriteReq.m_axi.p1i512(i512 addrspace(1)*, i32) {
entry:
  ret i1 true
}

define weak void @_ssdm_op_WriteReq(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_Write.m_axi.p1i512(i512 addrspace(1)*, i512, i64) {
entry:
  ret void
}

define weak void @_ssdm_op_Write(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak void @_ssdm_op_SpecPipoDepth(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecPipeline(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecLoopName(...) {
entry:
  ret void
}

define weak void @_ssdm_op_SpecInterface(...) {
entry:
  ret void
}

define weak void @_ssdm_op_SpecDataflowPipeline(...) {
entry:
  ret void
}

define weak void @_ssdm_op_SpecChannel(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i1 @_ssdm_op_ReadReq.m_axi.p1i512(i512 addrspace(1)*, i32) {
entry:
  ret i1 true
}

define weak void @_ssdm_op_ReadReq(...) nounwind {
entry:
  ret void
}

define weak i64 @_ssdm_op_Read.s_axilite.i64(i64) {
entry:
  ret i64 %0
}

define weak i512 @_ssdm_op_Read.m_axi.p1i512(i512 addrspace(1)*) {
entry:
  %empty = load i512 addrspace(1)* %0
  ret i512 %empty
}

define weak i64 @_ssdm_op_Read.ap_auto.i64(i64) {
entry:
  ret i64 %0
}

define weak i58 @_ssdm_op_Read.ap_auto.i58(i58) {
entry:
  ret i58 %0
}

define weak i12 @_ssdm_op_Read.ap_auto.i12(i12) {
entry:
  ret i12 %0
}

define weak void @_ssdm_op_Read(...) nounwind {
entry:
  ret void
}

define weak i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_35 = trunc i32 %empty to i8
  ret i8 %empty_35
}

declare i6 @_ssdm_op_PartSelect.i6.i7.i32.i32(i7, i32, i32) nounwind readnone

define weak i58 @_ssdm_op_PartSelect.i58.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_36 = trunc i64 %empty to i58
  ret i58 %empty_36
}

define weak i480 @_ssdm_op_PartSelect.i480.i512.i32.i32(i512, i32, i32) nounwind readnone {
entry:
  %empty = call i512 @llvm.part.select.i512(i512 %0, i32 %1, i32 %2)
  %empty_37 = trunc i512 %empty to i480
  ret i480 %empty_37
}

define weak i448 @_ssdm_op_PartSelect.i448.i480.i32.i32(i480, i32, i32) nounwind readnone {
entry:
  %empty = call i480 @llvm.part.select.i480(i480 %0, i32 %1, i32 %2)
  %empty_38 = trunc i480 %empty to i448
  ret i448 %empty_38
}

declare i4 @_ssdm_op_PartSelect.i4.i7.i32.i32(i7, i32, i32) nounwind readnone

declare i32 @_ssdm_op_PartSelect.i32.i512.i32.i32(i512, i32, i32) nounwind readnone

declare i23 @_ssdm_op_PartSelect.i23.i32.i32.i32(i32, i32, i32) nounwind readnone

define weak i64 @_ssdm_op_BitConcatenate.i64.i51.i13(i51, i13) nounwind readnone {
entry:
  %empty = zext i51 %0 to i64
  %empty_39 = zext i13 %1 to i64
  %empty_40 = shl i64 %empty, 13
  %empty_41 = or i64 %empty_40, %empty_39
  ret i64 %empty_41
}

define weak i512 @_ssdm_op_BitConcatenate.i512.i32.i480(i32, i480) nounwind readnone {
entry:
  %empty = zext i32 %0 to i512
  %empty_42 = zext i480 %1 to i512
  %empty_43 = shl i512 %empty, 480
  %empty_44 = or i512 %empty_43, %empty_42
  ret i512 %empty_44
}

define weak i480 @_ssdm_op_BitConcatenate.i480.i32.i448(i32, i448) nounwind readnone {
entry:
  %empty = zext i32 %0 to i480
  %empty_45 = zext i448 %1 to i480
  %empty_46 = shl i480 %empty, 448
  %empty_47 = or i480 %empty_46, %empty_45
  ret i480 %empty_47
}

define weak i13 @_ssdm_op_BitConcatenate.i13.i7.i6(i7, i6) nounwind readnone {
entry:
  %empty = zext i7 %0 to i13
  %empty_48 = zext i6 %1 to i13
  %empty_49 = shl i13 %empty, 6
  %empty_50 = or i13 %empty_49, %empty_48
  ret i13 %empty_50
}

define weak i12 @_ssdm_op_BitConcatenate.i12.i6.i6(i6, i6) nounwind readnone {
entry:
  %empty = zext i6 %0 to i12
  %empty_51 = zext i6 %1 to i12
  %empty_52 = shl i12 %empty, 6
  %empty_53 = or i12 %empty_52, %empty_51
  ret i12 %empty_53
}

!llvm.dbg.cu = !{!0}
!llvm.ident = !{!138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138, !138}
!blackbox_cfg = !{!139}
!axi4.master.portmap = !{!140, !141, !142}
!axi4.slave.bundlemap = !{!143, !144, !145}
!llvm.module.flags = !{!146, !147}
!llvm.map.gv = !{}
!bitwidth_g = !{!148, !194, !228, !235, !386, !393, !396, !400, !402, !409, !413, !417, !420}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"/export/hdd/scratch/sli3079/allo_ls/allo_ls_dse/benchmarks/gemm_relu/row_wise_stream_gemm_relu.prj/ls_project/solution1/.autopilot/db/kernel.pp.0.cpp", metadata !"/usr/scratch/sli3079/allo_ls/allo_ls_dse/benchmarks/gemm_relu/row_wise_stream_gemm_relu.prj", metadata !"clang version 7.0.0 ", i1 true, i1 true, metadata !"", i32 0, metadata !1, metadata !3, metadata !6, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 0, i32 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!6 = metadata !{metadata !7}
!7 = metadata !{metadata !8, metadata !76, metadata !127, metadata !131, metadata !134, metadata !135}
!8 = metadata !{i32 786478, i32 0, metadata !9, metadata !"gemm_stage_0", metadata !"gemm_stage_0", null, metadata !9, i32 20, metadata !10, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !1, i32 24} ; [ DW_TAG_subprogram ]
!9 = metadata !{i32 786473, metadata !"kernel.cpp", metadata !"/usr/scratch/sli3079/allo_ls/allo_ls_dse/benchmarks/gemm_relu/row_wise_stream_gemm_relu.prj", null} ; [ DW_TAG_file_type ]
!10 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !11, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!11 = metadata !{null, metadata !12, metadata !12, metadata !17}
!12 = metadata !{i32 786447, null, metadata !"", metadata !13, i32 0, i64 64, i64 0, i32 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ]
!13 = metadata !{i32 786473, metadata !"<unknown>", null, null} ; [ DW_TAG_file_type ]
!14 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 2048, i64 0, i32 0, i32 0, metadata !5, metadata !15, i32 0, null, null} ; [ DW_TAG_array_type ]
!15 = metadata !{metadata !16}
!16 = metadata !{i32 786465, i64 0, i64 63}       ; [ DW_TAG_subrange_type ]
!17 = metadata !{i32 786448, null, metadata !"", metadata !13, i32 0, i64 64, i64 0, i32 0, i32 0, metadata !18} ; [ DW_TAG_reference_type ]
!18 = metadata !{i32 786434, metadata !19, metadata !"stream_of_blocks<float [64], 4>", metadata !20, i32 341, i64 2048, i64 0, i32 0, i32 4194304, null, metadata !21, i32 0, null, metadata !74} ; [ DW_TAG_class_type ]
!19 = metadata !{i32 786489, null, metadata !"hls", null, i32 0} ; [ DW_TAG_namespace ]
!20 = metadata !{i32 786473, metadata !"/tmp/sli3079-xilinx-2021.1/Vitis_HLS/2021.1/common/technology/autopilot/hls_streamofblocks.h", metadata !"/usr/scratch/sli3079/allo_ls/allo_ls_dse/benchmarks/gemm_relu/row_wise_stream_gemm_relu.prj", null} ; [ DW_TAG_file_type ]
!21 = metadata !{metadata !22, metadata !70}
!22 = metadata !{i32 786460, metadata !18, metadata !"", metadata !13, i32 0, i64 0, i64 0, i32 0, i32 3, metadata !23} ; [ DW_TAG_inheritance ]
!23 = metadata !{i32 786434, metadata !19, metadata !"stream_of_blocks<float [64], 2>", metadata !20, i32 301, i64 2048, i64 0, i32 0, i32 4194304, null, metadata !24, i32 0, null, metadata !68} ; [ DW_TAG_class_type ]
!24 = metadata !{metadata !25, metadata !52, metadata !56, metadata !59, metadata !60, metadata !63, metadata !66, metadata !67}
!25 = metadata !{i32 786445, metadata !23, metadata !"buf", metadata !20, i32 309, i64 2048, i64 0, i32 0, i32 0, metadata !26} ; [ DW_TAG_member ]
!26 = metadata !{i32 786434, metadata !19, metadata !"stream_buf<float [64]>", metadata !20, i32 36, i64 2048, i64 0, i32 0, i32 4194304, null, metadata !27, i32 0, null, metadata !50} ; [ DW_TAG_class_type ]
!27 = metadata !{metadata !28, metadata !29, metadata !34, metadata !38, metadata !41, metadata !42, metadata !43, metadata !49}
!28 = metadata !{i32 786445, metadata !26, metadata !"data", metadata !20, i32 38, i64 2048, i64 0, i32 0, i32 0, metadata !14} ; [ DW_TAG_member ]
!29 = metadata !{i32 786478, i32 0, metadata !26, metadata !"stream_buf", metadata !"stream_buf", null, metadata !20, i32 48, metadata !30, i1 false, i1 false, i32 0, i32 0, null, i32 259, i1 false, null, null, null, metadata !1, i32 48} ; [ DW_TAG_subprogram ]
!30 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !31, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!31 = metadata !{null, metadata !32, metadata !33}
!32 = metadata !{i32 786447, null, metadata !"", metadata !13, i32 0, i64 64, i64 0, i32 0, i32 1088, metadata !26} ; [ DW_TAG_pointer_type ]
!33 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 0, i32 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!34 = metadata !{i32 786478, i32 0, metadata !26, metadata !"read_acquire", metadata !"read_acquire", metadata !"_ZN3hls10stream_bufIA64_fE12read_acquireEv", metadata !20, i32 83, metadata !35, i1 false, i1 false, i32 0, i32 0, null, i32 259, i1 false, null, null, null, metadata !1, i32 83} ; [ DW_TAG_subprogram ]
!35 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !36, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!36 = metadata !{metadata !37, metadata !32}
!37 = metadata !{i32 786448, null, metadata !"", metadata !13, i32 0, i64 64, i64 0, i32 0, i32 0, metadata !14} ; [ DW_TAG_reference_type ]
!38 = metadata !{i32 786478, i32 0, metadata !26, metadata !"read_release", metadata !"read_release", metadata !"_ZN3hls10stream_bufIA64_fE12read_releaseEv", metadata !20, i32 103, metadata !39, i1 false, i1 false, i32 0, i32 0, null, i32 259, i1 false, null, null, null, metadata !1, i32 103} ; [ DW_TAG_subprogram ]
!39 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !40, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!40 = metadata !{null, metadata !32}
!41 = metadata !{i32 786478, i32 0, metadata !26, metadata !"write_acquire", metadata !"write_acquire", metadata !"_ZN3hls10stream_bufIA64_fE13write_acquireEv", metadata !20, i32 116, metadata !35, i1 false, i1 false, i32 0, i32 0, null, i32 259, i1 false, null, null, null, metadata !1, i32 116} ; [ DW_TAG_subprogram ]
!42 = metadata !{i32 786478, i32 0, metadata !26, metadata !"write_release", metadata !"write_release", metadata !"_ZN3hls10stream_bufIA64_fE13write_releaseEv", metadata !20, i32 132, metadata !39, i1 false, i1 false, i32 0, i32 0, null, i32 259, i1 false, null, null, null, metadata !1, i32 132} ; [ DW_TAG_subprogram ]
!43 = metadata !{i32 786478, i32 0, metadata !26, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls10stream_bufIA64_fE5emptyEv", metadata !20, i32 144, metadata !44, i1 false, i1 false, i32 0, i32 0, null, i32 259, i1 false, null, null, null, metadata !1, i32 144} ; [ DW_TAG_subprogram ]
!44 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !45, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!45 = metadata !{metadata !46, metadata !47}
!46 = metadata !{i32 786468, null, metadata !"bool", null, i32 0, i64 8, i64 0, i32 0, i32 0, i32 2} ; [ DW_TAG_base_type ]
!47 = metadata !{i32 786447, null, metadata !"", metadata !13, i32 0, i64 64, i64 0, i32 0, i32 1088, metadata !48} ; [ DW_TAG_pointer_type ]
!48 = metadata !{i32 786470, null, metadata !"", metadata !13, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !26} ; [ DW_TAG_const_type ]
!49 = metadata !{i32 786478, i32 0, metadata !26, metadata !"full", metadata !"full", metadata !"_ZNK3hls10stream_bufIA64_fE4fullEv", metadata !20, i32 153, metadata !44, i1 false, i1 false, i32 0, i32 0, null, i32 259, i1 false, null, null, null, metadata !1, i32 153} ; [ DW_TAG_subprogram ]
!50 = metadata !{metadata !51}
!51 = metadata !{i32 786479, null, metadata !"__STREAM_T__", metadata !14, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!52 = metadata !{i32 786478, i32 0, metadata !23, metadata !"stream_of_blocks", metadata !"stream_of_blocks", null, metadata !20, i32 312, metadata !53, i1 false, i1 false, i32 0, i32 0, null, i32 259, i1 false, null, null, null, metadata !1, i32 312} ; [ DW_TAG_subprogram ]
!53 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !54, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!54 = metadata !{null, metadata !55, metadata !33}
!55 = metadata !{i32 786447, null, metadata !"", metadata !13, i32 0, i64 64, i64 0, i32 0, i32 1088, metadata !23} ; [ DW_TAG_pointer_type ]
!56 = metadata !{i32 786478, i32 0, metadata !23, metadata !"full", metadata !"full", metadata !"_ZN3hls16stream_of_blocksIA64_fLi2EE4fullEv", metadata !20, i32 318, metadata !57, i1 false, i1 false, i32 0, i32 0, null, i32 259, i1 false, null, null, null, metadata !1, i32 318} ; [ DW_TAG_subprogram ]
!57 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !58, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!58 = metadata !{metadata !46, metadata !55}
!59 = metadata !{i32 786478, i32 0, metadata !23, metadata !"empty", metadata !"empty", metadata !"_ZN3hls16stream_of_blocksIA64_fLi2EE5emptyEv", metadata !20, i32 320, metadata !57, i1 false, i1 false, i32 0, i32 0, null, i32 259, i1 false, null, null, null, metadata !1, i32 320} ; [ DW_TAG_subprogram ]
!60 = metadata !{i32 786478, i32 0, metadata !23, metadata !"read_acquire", metadata !"read_acquire", metadata !"_ZN3hls16stream_of_blocksIA64_fLi2EE12read_acquireEv", metadata !20, i32 328, metadata !61, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !1, i32 328} ; [ DW_TAG_subprogram ]
!61 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !62, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!62 = metadata !{metadata !37, metadata !55}
!63 = metadata !{i32 786478, i32 0, metadata !23, metadata !"read_release", metadata !"read_release", metadata !"_ZN3hls16stream_of_blocksIA64_fLi2EE12read_releaseEv", metadata !20, i32 330, metadata !64, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !1, i32 330} ; [ DW_TAG_subprogram ]
!64 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !65, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!65 = metadata !{null, metadata !55}
!66 = metadata !{i32 786478, i32 0, metadata !23, metadata !"write_acquire", metadata !"write_acquire", metadata !"_ZN3hls16stream_of_blocksIA64_fLi2EE13write_acquireEv", metadata !20, i32 332, metadata !61, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !1, i32 332} ; [ DW_TAG_subprogram ]
!67 = metadata !{i32 786478, i32 0, metadata !23, metadata !"write_release", metadata !"write_release", metadata !"_ZN3hls16stream_of_blocksIA64_fLi2EE13write_releaseEv", metadata !20, i32 334, metadata !64, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !1, i32 334} ; [ DW_TAG_subprogram ]
!68 = metadata !{metadata !51, metadata !69}
!69 = metadata !{i32 786480, null, metadata !"DEPTH", metadata !33, i32 2, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!70 = metadata !{i32 786478, i32 0, metadata !18, metadata !"stream_of_blocks", metadata !"stream_of_blocks", null, metadata !20, i32 350, metadata !71, i1 false, i1 false, i32 0, i32 0, null, i32 259, i1 false, null, null, null, metadata !1, i32 350} ; [ DW_TAG_subprogram ]
!71 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !72, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!72 = metadata !{null, metadata !73}
!73 = metadata !{i32 786447, null, metadata !"", metadata !13, i32 0, i64 64, i64 0, i32 0, i32 1088, metadata !18} ; [ DW_TAG_pointer_type ]
!74 = metadata !{metadata !51, metadata !75}
!75 = metadata !{i32 786480, null, metadata !"DEPTH", metadata !33, i32 4, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!76 = metadata !{i32 786478, i32 0, metadata !9, metadata !"relu_stage_0", metadata !"relu_stage_0", null, metadata !9, i32 53, metadata !77, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !1, i32 56} ; [ DW_TAG_subprogram ]
!77 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !78, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!78 = metadata !{null, metadata !12, metadata !79}
!79 = metadata !{i32 786448, null, metadata !"", metadata !13, i32 0, i64 64, i64 0, i32 0, i32 0, metadata !80} ; [ DW_TAG_reference_type ]
!80 = metadata !{i32 786434, metadata !19, metadata !"stream_of_blocks<float [64], 4>", metadata !20, i32 341, i64 2048, i64 0, i32 0, i32 4194304, null, metadata !81, i32 0, null, metadata !74} ; [ DW_TAG_class_type ]
!81 = metadata !{metadata !82, metadata !123}
!82 = metadata !{i32 786460, metadata !80, metadata !"", metadata !13, i32 0, i64 0, i64 0, i32 0, i32 3, metadata !83} ; [ DW_TAG_inheritance ]
!83 = metadata !{i32 786434, metadata !19, metadata !"stream_of_blocks<float [64], 2>", metadata !20, i32 301, i64 2048, i64 0, i32 0, i32 4194304, null, metadata !84, i32 0, null, metadata !68} ; [ DW_TAG_class_type ]
!84 = metadata !{metadata !85, metadata !107, metadata !111, metadata !114, metadata !115, metadata !118, metadata !121, metadata !122}
!85 = metadata !{i32 786445, metadata !83, metadata !"buf", metadata !20, i32 309, i64 2048, i64 0, i32 0, i32 0, metadata !86} ; [ DW_TAG_member ]
!86 = metadata !{i32 786434, metadata !19, metadata !"stream_buf<float [64]>", metadata !20, i32 36, i64 2048, i64 0, i32 0, i32 4194304, null, metadata !87, i32 0, null, metadata !50} ; [ DW_TAG_class_type ]
!87 = metadata !{metadata !88, metadata !89, metadata !93, metadata !96, metadata !99, metadata !100, metadata !101, metadata !106}
!88 = metadata !{i32 786445, metadata !86, metadata !"data", metadata !20, i32 38, i64 2048, i64 0, i32 0, i32 0, metadata !14} ; [ DW_TAG_member ]
!89 = metadata !{i32 786478, i32 0, metadata !86, metadata !"stream_buf", metadata !"stream_buf", null, metadata !20, i32 48, metadata !90, i1 false, i1 false, i32 0, i32 0, null, i32 259, i1 false, null, null, null, metadata !1, i32 48} ; [ DW_TAG_subprogram ]
!90 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !91, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!91 = metadata !{null, metadata !92, metadata !33}
!92 = metadata !{i32 786447, null, metadata !"", metadata !13, i32 0, i64 64, i64 0, i32 0, i32 1088, metadata !86} ; [ DW_TAG_pointer_type ]
!93 = metadata !{i32 786478, i32 0, metadata !86, metadata !"read_acquire", metadata !"read_acquire", metadata !"_ZN3hls10stream_bufIA64_fE12read_acquireEv", metadata !20, i32 83, metadata !94, i1 false, i1 false, i32 0, i32 0, null, i32 259, i1 false, null, null, null, metadata !1, i32 83} ; [ DW_TAG_subprogram ]
!94 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !95, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!95 = metadata !{metadata !37, metadata !92}
!96 = metadata !{i32 786478, i32 0, metadata !86, metadata !"read_release", metadata !"read_release", metadata !"_ZN3hls10stream_bufIA64_fE12read_releaseEv", metadata !20, i32 103, metadata !97, i1 false, i1 false, i32 0, i32 0, null, i32 259, i1 false, null, null, null, metadata !1, i32 103} ; [ DW_TAG_subprogram ]
!97 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !98, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!98 = metadata !{null, metadata !92}
!99 = metadata !{i32 786478, i32 0, metadata !86, metadata !"write_acquire", metadata !"write_acquire", metadata !"_ZN3hls10stream_bufIA64_fE13write_acquireEv", metadata !20, i32 116, metadata !94, i1 false, i1 false, i32 0, i32 0, null, i32 259, i1 false, null, null, null, metadata !1, i32 116} ; [ DW_TAG_subprogram ]
!100 = metadata !{i32 786478, i32 0, metadata !86, metadata !"write_release", metadata !"write_release", metadata !"_ZN3hls10stream_bufIA64_fE13write_releaseEv", metadata !20, i32 132, metadata !97, i1 false, i1 false, i32 0, i32 0, null, i32 259, i1 false, null, null, null, metadata !1, i32 132} ; [ DW_TAG_subprogram ]
!101 = metadata !{i32 786478, i32 0, metadata !86, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls10stream_bufIA64_fE5emptyEv", metadata !20, i32 144, metadata !102, i1 false, i1 false, i32 0, i32 0, null, i32 259, i1 false, null, null, null, metadata !1, i32 144} ; [ DW_TAG_subprogram ]
!102 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !103, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!103 = metadata !{metadata !46, metadata !104}
!104 = metadata !{i32 786447, null, metadata !"", metadata !13, i32 0, i64 64, i64 0, i32 0, i32 1088, metadata !105} ; [ DW_TAG_pointer_type ]
!105 = metadata !{i32 786470, null, metadata !"", metadata !13, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !86} ; [ DW_TAG_const_type ]
!106 = metadata !{i32 786478, i32 0, metadata !86, metadata !"full", metadata !"full", metadata !"_ZNK3hls10stream_bufIA64_fE4fullEv", metadata !20, i32 153, metadata !102, i1 false, i1 false, i32 0, i32 0, null, i32 259, i1 false, null, null, null, metadata !1, i32 153} ; [ DW_TAG_subprogram ]
!107 = metadata !{i32 786478, i32 0, metadata !83, metadata !"stream_of_blocks", metadata !"stream_of_blocks", null, metadata !20, i32 312, metadata !108, i1 false, i1 false, i32 0, i32 0, null, i32 259, i1 false, null, null, null, metadata !1, i32 312} ; [ DW_TAG_subprogram ]
!108 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !109, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!109 = metadata !{null, metadata !110, metadata !33}
!110 = metadata !{i32 786447, null, metadata !"", metadata !13, i32 0, i64 64, i64 0, i32 0, i32 1088, metadata !83} ; [ DW_TAG_pointer_type ]
!111 = metadata !{i32 786478, i32 0, metadata !83, metadata !"full", metadata !"full", metadata !"_ZN3hls16stream_of_blocksIA64_fLi2EE4fullEv", metadata !20, i32 318, metadata !112, i1 false, i1 false, i32 0, i32 0, null, i32 259, i1 false, null, null, null, metadata !1, i32 318} ; [ DW_TAG_subprogram ]
!112 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !113, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!113 = metadata !{metadata !46, metadata !110}
!114 = metadata !{i32 786478, i32 0, metadata !83, metadata !"empty", metadata !"empty", metadata !"_ZN3hls16stream_of_blocksIA64_fLi2EE5emptyEv", metadata !20, i32 320, metadata !112, i1 false, i1 false, i32 0, i32 0, null, i32 259, i1 false, null, null, null, metadata !1, i32 320} ; [ DW_TAG_subprogram ]
!115 = metadata !{i32 786478, i32 0, metadata !83, metadata !"read_acquire", metadata !"read_acquire", metadata !"_ZN3hls16stream_of_blocksIA64_fLi2EE12read_acquireEv", metadata !20, i32 328, metadata !116, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !1, i32 328} ; [ DW_TAG_subprogram ]
!116 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !117, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!117 = metadata !{metadata !37, metadata !110}
!118 = metadata !{i32 786478, i32 0, metadata !83, metadata !"read_release", metadata !"read_release", metadata !"_ZN3hls16stream_of_blocksIA64_fLi2EE12read_releaseEv", metadata !20, i32 330, metadata !119, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !1, i32 330} ; [ DW_TAG_subprogram ]
!119 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !120, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!120 = metadata !{null, metadata !110}
!121 = metadata !{i32 786478, i32 0, metadata !83, metadata !"write_acquire", metadata !"write_acquire", metadata !"_ZN3hls16stream_of_blocksIA64_fLi2EE13write_acquireEv", metadata !20, i32 332, metadata !116, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !1, i32 332} ; [ DW_TAG_subprogram ]
!122 = metadata !{i32 786478, i32 0, metadata !83, metadata !"write_release", metadata !"write_release", metadata !"_ZN3hls16stream_of_blocksIA64_fLi2EE13write_releaseEv", metadata !20, i32 334, metadata !119, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !1, i32 334} ; [ DW_TAG_subprogram ]
!123 = metadata !{i32 786478, i32 0, metadata !80, metadata !"stream_of_blocks", metadata !"stream_of_blocks", null, metadata !20, i32 350, metadata !124, i1 false, i1 false, i32 0, i32 0, null, i32 259, i1 false, null, null, null, metadata !1, i32 350} ; [ DW_TAG_subprogram ]
!124 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !125, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!125 = metadata !{null, metadata !126}
!126 = metadata !{i32 786447, null, metadata !"", metadata !13, i32 0, i64 64, i64 0, i32 0, i32 1088, metadata !80} ; [ DW_TAG_pointer_type ]
!127 = metadata !{i32 786478, i32 0, metadata !9, metadata !"top", metadata !"top", null, metadata !9, i32 114, metadata !128, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i512 addrspace(1)*, i512 addrspace(1)*, i512 addrspace(1)*, i64, i64, i64)* @top, null, null, metadata !1, i32 118} ; [ DW_TAG_subprogram ]
!128 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !129, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!129 = metadata !{null, metadata !130, metadata !130, metadata !130}
!130 = metadata !{i32 786447, null, metadata !"", metadata !13, i32 0, i64 64, i64 0, i32 0, i32 0, metadata !5} ; [ DW_TAG_pointer_type ]
!131 = metadata !{i32 786478, i32 0, metadata !9, metadata !"load_buf0", metadata !"load_buf0", null, metadata !9, i32 75, metadata !132, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !1, i32 78} ; [ DW_TAG_subprogram ]
!132 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !133, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!133 = metadata !{null, metadata !130, metadata !12}
!134 = metadata !{i32 786478, i32 0, metadata !9, metadata !"load_buf1", metadata !"load_buf1", null, metadata !9, i32 88, metadata !132, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !1, i32 91} ; [ DW_TAG_subprogram ]
!135 = metadata !{i32 786478, i32 0, metadata !9, metadata !"store_res2", metadata !"store_res2", null, metadata !9, i32 101, metadata !136, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !1, i32 104} ; [ DW_TAG_subprogram ]
!136 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !137, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!137 = metadata !{null, metadata !12, metadata !130}
!138 = metadata !{metadata !"clang version 7.0.0 "}
!139 = metadata !{}
!140 = metadata !{metadata !"gmem0", metadata !"v38", metadata !"READONLY"}
!141 = metadata !{metadata !"gmem1", metadata !"v39", metadata !"READONLY"}
!142 = metadata !{metadata !"gmem2", metadata !"v40", metadata !"WRITEONLY"}
!143 = metadata !{metadata !"v38", metadata !"control"}
!144 = metadata !{metadata !"v39", metadata !"control"}
!145 = metadata !{metadata !"v40", metadata !"control"}
!146 = metadata !{i32 1, metadata !"wchar_size", i32 4}
!147 = metadata !{i32 7, metadata !"reflow.full.lowering", i32 1}
!148 = metadata !{void (i512 addrspace(1)*, i512 addrspace(1)*, i512 addrspace(1)*, i64, i64, i64)* @top, metadata !149}
!149 = metadata !{metadata !150, metadata !152, metadata !153, metadata !154, metadata !156, metadata !157, metadata !158, metadata !160, metadata !162, metadata !164, metadata !165, metadata !166, metadata !167, metadata !169, metadata !171, metadata !172, metadata !173, metadata !175, metadata !176, metadata !177, metadata !178, metadata !179, metadata !180, metadata !181, metadata !182, metadata !183, metadata !184, metadata !186, metadata !187, metadata !189, metadata !191, metadata !192}
!150 = metadata !{metadata !"Arg", i32 0, metadata !151}
!151 = metadata !{i32 0, i32 0, i32 512, i32 2}
!152 = metadata !{metadata !"Arg", i32 1, metadata !151}
!153 = metadata !{metadata !"Arg", i32 2, metadata !151}
!154 = metadata !{metadata !"Arg", i32 3, metadata !155}
!155 = metadata !{i32 64, i32 64, i32 0, i32 2}
!156 = metadata !{metadata !"Arg", i32 4, metadata !155}
!157 = metadata !{metadata !"Arg", i32 5, metadata !155}
!158 = metadata !{i32 -1, metadata !159}          ; [ DW_TAG_hi_user ]
!159 = metadata !{i32 1, i32 32, i32 0, i32 1}
!160 = metadata !{i32 0, metadata !161}
!161 = metadata !{i32 1, i32 32, i32 0, i32 0}
!162 = metadata !{[1 x i8]* @p_str_1, metadata !163}
!163 = metadata !{i32 0, i32 0, i32 8, i32 2}
!164 = metadata !{[4 x i8]* @empty_10, metadata !163}
!165 = metadata !{[14 x i8]* @empty_9, metadata !163}
!166 = metadata !{[6 x i8]* @empty_4, metadata !163}
!167 = metadata !{i32 64, metadata !168}
!168 = metadata !{i32 8, i32 32, i32 0, i32 1}
!169 = metadata !{i32 4096, metadata !170}
!170 = metadata !{i32 14, i32 32, i32 0, i32 1}
!171 = metadata !{[6 x i8]* @empty_3, metadata !163}
!172 = metadata !{[6 x i8]* @empty_2, metadata !163}
!173 = metadata !{i32 16, metadata !174}
!174 = metadata !{i32 6, i32 32, i32 0, i32 1}
!175 = metadata !{[6 x i8]* @empty_1, metadata !163}
!176 = metadata !{[6 x i8]* @empty_0, metadata !163}
!177 = metadata !{[10 x i8]* @empty_17, metadata !163}
!178 = metadata !{[8 x i8]* @empty_7, metadata !163}
!179 = metadata !{[3 x i8]* @empty_20, metadata !163}
!180 = metadata !{[15 x i8]* @empty_19, metadata !163}
!181 = metadata !{[8 x i8]* @empty_14, metadata !163}
!182 = metadata !{[3 x i8]* @empty_16, metadata !163}
!183 = metadata !{[3 x i8]* @empty_13, metadata !163}
!184 = metadata !{i64 1, metadata !185}
!185 = metadata !{i32 1, i32 64, i32 0, i32 0}
!186 = metadata !{[5 x i8]* @p_str_2, metadata !163}
!187 = metadata !{i32 4, metadata !188}
!188 = metadata !{i32 4, i32 32, i32 0, i32 1}
!189 = metadata !{i64 1024, metadata !190}
!190 = metadata !{i32 12, i32 64, i32 0, i32 1}
!191 = metadata !{[9 x i8]* @p_str, metadata !163}
!192 = metadata !{i32 2, metadata !193}
!193 = metadata !{i32 3, i32 32, i32 0, i32 1}
!194 = metadata !{void (i512 addrspace(1)*, i58, [4096 x float]*)* @store_res2.1_Pipeline_l_S_store_res2_store_res2_l_0_l_store_res2_l_1, metadata !195}
!195 = metadata !{metadata !150, metadata !196, metadata !198, metadata !200, metadata !166, metadata !160, metadata !162, metadata !167, metadata !169, metadata !176, metadata !172, metadata !173, metadata !201, metadata !203, metadata !205, metadata !207, metadata !209, metadata !210, metadata !211, metadata !213, metadata !215, metadata !216, metadata !218, metadata !220, metadata !222, metadata !223, metadata !224, metadata !226}
!196 = metadata !{metadata !"Arg", i32 1, metadata !197}
!197 = metadata !{i32 58, i32 58, i32 0, i32 2}
!198 = metadata !{metadata !"Arg", i32 2, metadata !199}
!199 = metadata !{i32 0, i32 0, i32 0, i32 2}
!200 = metadata !{i32 1, metadata !161}
!201 = metadata !{i13 0, metadata !202}           
!202 = metadata !{i32 1, i32 13, i32 0, i32 0}
!203 = metadata !{i7 0, metadata !204}            
!204 = metadata !{i32 1, i32 7, i32 0, i32 0}
!205 = metadata !{i480 0, metadata !206}
!206 = metadata !{i32 1, i32 480, i32 0, i32 0}
!207 = metadata !{i13 -4096, metadata !208}       ; [ DW_TAG_user_base ]
!208 = metadata !{i32 13, i32 13, i32 0, i32 1}
!209 = metadata !{i13 1, metadata !202}           ; [ DW_TAG_array_type ]
!210 = metadata !{i7 1, metadata !204}            ; [ DW_TAG_array_type ]
!211 = metadata !{i32 32, metadata !212}
!212 = metadata !{i32 7, i32 32, i32 0, i32 1}
!213 = metadata !{i32 479, metadata !214}
!214 = metadata !{i32 10, i32 32, i32 0, i32 1}
!215 = metadata !{[47 x i8]* @l_S_store_res2_store_res2_l_0_l_store_res2_l_1_str, metadata !163}
!216 = metadata !{i64 4096, metadata !217}
!217 = metadata !{i32 14, i32 64, i32 0, i32 1}
!218 = metadata !{i7 -64, metadata !219}          ; [ DW_TAG_shared_type ]
!219 = metadata !{i32 7, i32 7, i32 0, i32 1}
!220 = metadata !{i6 0, metadata !221}            
!221 = metadata !{i32 1, i32 6, i32 0, i32 0}
!222 = metadata !{i64 0, metadata !185}
!223 = metadata !{[17 x i8]* @empty_6, metadata !163}
!224 = metadata !{i4 -1, metadata !225}           ; [ DW_TAG_pointer_type ]
!225 = metadata !{i32 1, i32 4, i32 0, i32 1}
!226 = metadata !{i64 -1, metadata !227}          
!227 = metadata !{i32 1, i32 64, i32 0, i32 1}
!228 = metadata !{void ([4096 x float]*, i512 addrspace(1)*, i64)* @store_res2.1, metadata !229}
!229 = metadata !{metadata !230, metadata !152, metadata !231, metadata !166, metadata !160, metadata !162, metadata !167, metadata !169, metadata !176, metadata !172, metadata !173, metadata !232, metadata !233, metadata !234}
!230 = metadata !{metadata !"Arg", i32 0, metadata !199}
!231 = metadata !{metadata !"Arg", i32 2, metadata !155}
!232 = metadata !{i32 6, metadata !188}
!233 = metadata !{i32 63, metadata !212}
!234 = metadata !{i32 256, metadata !214}
!235 = metadata !{void ([4096 x float]*, [64 x float]*)* @relu_stage_0, metadata !236}
!236 = metadata !{metadata !230, metadata !237, metadata !200, metadata !222, metadata !184, metadata !238, metadata !240, metadata !241, metadata !243, metadata !244, metadata !245, metadata !246, metadata !248, metadata !249, metadata !250, metadata !251, metadata !252, metadata !253, metadata !254, metadata !255, metadata !257, metadata !258, metadata !259, metadata !260, metadata !261, metadata !262, metadata !263, metadata !264, metadata !265, metadata !266, metadata !267, metadata !268, metadata !269, metadata !270, metadata !271, metadata !272, metadata !274, metadata !275, metadata !276, metadata !277, metadata !278, metadata !279, metadata !280, metadata !281, metadata !282, metadata !283, metadata !284, metadata !285, metadata !286, metadata !287, metadata !288, metadata !289, metadata !290, metadata !291, metadata !292, metadata !293, metadata !294, metadata !295, metadata !296, metadata !297, metadata !298, metadata !299, metadata !300, metadata !301, metadata !302, metadata !303, metadata !304, metadata !203, metadata !158, metadata !160, metadata !305, metadata !218, metadata !306, metadata !210, metadata !220, metadata !209, metadata !308, metadata !310, metadata !312, metadata !313, metadata !315, metadata !316, metadata !317, metadata !318, metadata !320, metadata !321, metadata !322, metadata !323, metadata !324, metadata !325, metadata !326, metadata !327, metadata !329, metadata !330, metadata !331, metadata !332, metadata !333, metadata !334, metadata !335, metadata !336, metadata !337, metadata !338, metadata !339, metadata !340, metadata !341, metadata !342, metadata !343, metadata !344, metadata !346, metadata !347, metadata !348, metadata !349, metadata !350, metadata !351, metadata !352, metadata !353, metadata !354, metadata !355, metadata !356, metadata !357, metadata !358, metadata !359, metadata !360, metadata !361, metadata !362, metadata !363, metadata !364, metadata !365, metadata !366, metadata !367, metadata !368, metadata !369, metadata !370, metadata !371, metadata !372, metadata !373, metadata !374, metadata !375, metadata !376, metadata !377, metadata !192, metadata !191, metadata !162, metadata !173, metadata !378, metadata !379, metadata !380, metadata !382, metadata !384}
!237 = metadata !{metadata !"Arg", i32 1, metadata !199}
!238 = metadata !{i64 2, metadata !239}
!239 = metadata !{i32 3, i32 64, i32 0, i32 0}
!240 = metadata !{i64 3, metadata !239}
!241 = metadata !{i64 4, metadata !242}
!242 = metadata !{i32 4, i32 64, i32 0, i32 0}
!243 = metadata !{i64 5, metadata !242}
!244 = metadata !{i64 6, metadata !242}
!245 = metadata !{i64 7, metadata !242}
!246 = metadata !{i64 8, metadata !247}
!247 = metadata !{i32 5, i32 64, i32 0, i32 0}
!248 = metadata !{i64 9, metadata !247}
!249 = metadata !{i64 10, metadata !247}
!250 = metadata !{i64 11, metadata !247}
!251 = metadata !{i64 12, metadata !247}
!252 = metadata !{i64 13, metadata !247}
!253 = metadata !{i64 14, metadata !247}
!254 = metadata !{i64 15, metadata !247}
!255 = metadata !{i64 16, metadata !256}
!256 = metadata !{i32 6, i32 64, i32 0, i32 0}
!257 = metadata !{i64 17, metadata !256}
!258 = metadata !{i64 18, metadata !256}
!259 = metadata !{i64 19, metadata !256}
!260 = metadata !{i64 20, metadata !256}
!261 = metadata !{i64 21, metadata !256}
!262 = metadata !{i64 22, metadata !256}
!263 = metadata !{i64 23, metadata !256}
!264 = metadata !{i64 24, metadata !256}
!265 = metadata !{i64 25, metadata !256}
!266 = metadata !{i64 26, metadata !256}
!267 = metadata !{i64 27, metadata !256}
!268 = metadata !{i64 28, metadata !256}
!269 = metadata !{i64 29, metadata !256}
!270 = metadata !{i64 30, metadata !256}
!271 = metadata !{i64 31, metadata !256}
!272 = metadata !{i64 32, metadata !273}
!273 = metadata !{i32 7, i32 64, i32 0, i32 0}
!274 = metadata !{i64 33, metadata !273}
!275 = metadata !{i64 34, metadata !273}
!276 = metadata !{i64 35, metadata !273}
!277 = metadata !{i64 36, metadata !273}
!278 = metadata !{i64 37, metadata !273}
!279 = metadata !{i64 38, metadata !273}
!280 = metadata !{i64 39, metadata !273}
!281 = metadata !{i64 40, metadata !273}
!282 = metadata !{i64 41, metadata !273}
!283 = metadata !{i64 42, metadata !273}
!284 = metadata !{i64 43, metadata !273}
!285 = metadata !{i64 44, metadata !273}
!286 = metadata !{i64 45, metadata !273}
!287 = metadata !{i64 46, metadata !273}
!288 = metadata !{i64 47, metadata !273}
!289 = metadata !{i64 48, metadata !273}
!290 = metadata !{i64 49, metadata !273}
!291 = metadata !{i64 50, metadata !273}
!292 = metadata !{i64 51, metadata !273}
!293 = metadata !{i64 52, metadata !273}
!294 = metadata !{i64 53, metadata !273}
!295 = metadata !{i64 54, metadata !273}
!296 = metadata !{i64 55, metadata !273}
!297 = metadata !{i64 56, metadata !273}
!298 = metadata !{i64 57, metadata !273}
!299 = metadata !{i64 58, metadata !273}
!300 = metadata !{i64 59, metadata !273}
!301 = metadata !{i64 60, metadata !273}
!302 = metadata !{i64 61, metadata !273}
!303 = metadata !{i64 62, metadata !273}
!304 = metadata !{i64 63, metadata !273}
!305 = metadata !{[1 x i8]* @p_str6, metadata !163}
!306 = metadata !{i64 64, metadata !307}
!307 = metadata !{i32 8, i32 64, i32 0, i32 1}
!308 = metadata !{i51 0, metadata !309}
!309 = metadata !{i32 1, i32 51, i32 0, i32 0}
!310 = metadata !{i13 2, metadata !311}           ; [ DW_TAG_class_type ]
!311 = metadata !{i32 3, i32 13, i32 0, i32 1}
!312 = metadata !{i13 3, metadata !311}           ; [ DW_TAG_entry_point ]
!313 = metadata !{i13 4, metadata !314}           ; [ DW_TAG_enumeration_type ]
!314 = metadata !{i32 4, i32 13, i32 0, i32 1}
!315 = metadata !{i13 5, metadata !314}           ; [ DW_TAG_formal_parameter ]
!316 = metadata !{i13 6, metadata !314}           ; [ DW_TAG_class_field_type ]
!317 = metadata !{i13 7, metadata !314}           
!318 = metadata !{i13 8, metadata !319}           ; [ DW_TAG_imported_declaration ]
!319 = metadata !{i32 5, i32 13, i32 0, i32 1}
!320 = metadata !{i13 9, metadata !319}           
!321 = metadata !{i13 10, metadata !319}          ; [ DW_TAG_label ]
!322 = metadata !{i13 11, metadata !319}          ; [ DW_TAG_lexical_block ]
!323 = metadata !{i13 12, metadata !319}          
!324 = metadata !{i13 13, metadata !319}          ; [ DW_TAG_member ]
!325 = metadata !{i13 14, metadata !319}          
!326 = metadata !{i13 15, metadata !319}          ; [ DW_TAG_pointer_type ]
!327 = metadata !{i13 16, metadata !328}          ; [ DW_TAG_reference_type ]
!328 = metadata !{i32 6, i32 13, i32 0, i32 1}
!329 = metadata !{i13 17, metadata !328}          ; [ DW_TAG_compile_unit ]
!330 = metadata !{i13 18, metadata !328}          ; [ DW_TAG_string_type ]
!331 = metadata !{i13 19, metadata !328}          ; [ DW_TAG_structure_type ]
!332 = metadata !{i13 20, metadata !328}          ; [ DW_TAG_structure_field_type ]
!333 = metadata !{i13 21, metadata !328}          ; [ DW_TAG_subroutine_type ]
!334 = metadata !{i13 22, metadata !328}          ; [ DW_TAG_typedef ]
!335 = metadata !{i13 23, metadata !328}          ; [ DW_TAG_union_type ]
!336 = metadata !{i13 24, metadata !328}          ; [ DW_TAG_unspecified_parameters ]
!337 = metadata !{i13 25, metadata !328}          ; [ DW_TAG_variant ]
!338 = metadata !{i13 26, metadata !328}          ; [ DW_TAG_common_block ]
!339 = metadata !{i13 27, metadata !328}          ; [ DW_TAG_common_inclusion ]
!340 = metadata !{i13 28, metadata !328}          ; [ DW_TAG_inheritance ]
!341 = metadata !{i13 29, metadata !328}          ; [ DW_TAG_inlined_subroutine ]
!342 = metadata !{i13 30, metadata !328}          ; [ DW_TAG_module ]
!343 = metadata !{i13 31, metadata !328}          ; [ DW_TAG_ptr_to_member_type ]
!344 = metadata !{i13 32, metadata !345}          ; [ DW_TAG_set_type ]
!345 = metadata !{i32 7, i32 13, i32 0, i32 1}
!346 = metadata !{i13 33, metadata !345}          ; [ DW_TAG_subrange_type ]
!347 = metadata !{i13 34, metadata !345}          ; [ DW_TAG_with_stmt ]
!348 = metadata !{i13 35, metadata !345}          ; [ DW_TAG_access_declaration ]
!349 = metadata !{i13 36, metadata !345}          ; [ DW_TAG_base_type ]
!350 = metadata !{i13 37, metadata !345}          ; [ DW_TAG_catch_block ]
!351 = metadata !{i13 38, metadata !345}          ; [ DW_TAG_const_type ]
!352 = metadata !{i13 39, metadata !345}          ; [ DW_TAG_constant ]
!353 = metadata !{i13 40, metadata !345}          ; [ DW_TAG_enumerator ]
!354 = metadata !{i13 41, metadata !345}          ; [ DW_TAG_file_type ]
!355 = metadata !{i13 42, metadata !345}          ; [ DW_TAG_friend ]
!356 = metadata !{i13 43, metadata !345}          ; [ DW_TAG_namelist ]
!357 = metadata !{i13 44, metadata !345}          ; [ DW_TAG_namelist_item ]
!358 = metadata !{i13 45, metadata !345}          ; [ DW_TAG_packed_type ]
!359 = metadata !{i13 46, metadata !345}          ; [ DW_TAG_subprogram ]
!360 = metadata !{i13 47, metadata !345}          ; [ DW_TAG_template_type_parameter ]
!361 = metadata !{i13 48, metadata !345}          ; [ DW_TAG_template_value_parameter ]
!362 = metadata !{i13 49, metadata !345}          ; [ DW_TAG_thrown_type ]
!363 = metadata !{i13 50, metadata !345}          ; [ DW_TAG_try_block ]
!364 = metadata !{i13 51, metadata !345}          ; [ DW_TAG_variant_part ]
!365 = metadata !{i13 52, metadata !345}          ; [ DW_TAG_variable ]
!366 = metadata !{i13 53, metadata !345}          ; [ DW_TAG_volatile_type ]
!367 = metadata !{i13 54, metadata !345}          ; [ DW_TAG_dwarf_procedure ]
!368 = metadata !{i13 55, metadata !345}          ; [ DW_TAG_restrict_type ]
!369 = metadata !{i13 56, metadata !345}          ; [ DW_TAG_interface_type ]
!370 = metadata !{i13 57, metadata !345}          ; [ DW_TAG_namespace ]
!371 = metadata !{i13 58, metadata !345}          ; [ DW_TAG_imported_module ]
!372 = metadata !{i13 59, metadata !345}          ; [ DW_TAG_unspecified_type ]
!373 = metadata !{i13 60, metadata !345}          ; [ DW_TAG_partial_unit ]
!374 = metadata !{i13 61, metadata !345}          ; [ DW_TAG_imported_unit ]
!375 = metadata !{i13 62, metadata !345}          
!376 = metadata !{i13 63, metadata !345}          ; [ DW_TAG_condition ]
!377 = metadata !{[11 x i8]* @empty_11, metadata !163}
!378 = metadata !{i32 23, metadata !174}
!379 = metadata !{i32 30, metadata !174}
!380 = metadata !{i8 -1, metadata !381}           
!381 = metadata !{i32 1, i32 8, i32 0, i32 1}
!382 = metadata !{i23 0, metadata !383}
!383 = metadata !{i32 1, i32 23, i32 0, i32 0}
!384 = metadata !{float 0.000000e+00, metadata !385}
!385 = metadata !{i32 32, i32 32, i32 0, i32 2}
!386 = metadata !{void (i512 addrspace(1)*, i58, [4096 x float]*)* @load_buf1.1_Pipeline_l_S_load_buf1_load_buf1_l_0_l_load_buf1_l_1, metadata !387}
!387 = metadata !{metadata !150, metadata !196, metadata !198, metadata !200, metadata !166, metadata !160, metadata !162, metadata !167, metadata !169, metadata !175, metadata !172, metadata !173, metadata !201, metadata !203, metadata !205, metadata !207, metadata !209, metadata !211, metadata !388, metadata !210, metadata !389, metadata !216, metadata !218, metadata !220, metadata !222, metadata !390, metadata !391}
!388 = metadata !{i32 511, metadata !214}
!389 = metadata !{[44 x i8]* @l_S_load_buf1_load_buf1_l_0_l_load_buf1_l_1_str, metadata !163}
!390 = metadata !{[16 x i8]* @empty_15, metadata !163}
!391 = metadata !{i4 0, metadata !392}            
!392 = metadata !{i32 1, i32 4, i32 0, i32 0}
!393 = metadata !{void (i512 addrspace(1)*, i64, [4096 x float]*)* @load_buf1.1, metadata !394}
!394 = metadata !{metadata !150, metadata !395, metadata !198, metadata !166, metadata !160, metadata !162, metadata !167, metadata !169, metadata !175, metadata !172, metadata !173, metadata !232, metadata !233, metadata !234}
!395 = metadata !{metadata !"Arg", i32 1, metadata !155}
!396 = metadata !{void (i512 addrspace(1)*, i58, [4096 x float]*)* @load_buf0.1_Pipeline_l_S_load_buf0_load_buf0_l_0_l_load_buf0_l_1, metadata !397}
!397 = metadata !{metadata !150, metadata !196, metadata !198, metadata !200, metadata !166, metadata !160, metadata !162, metadata !167, metadata !169, metadata !171, metadata !172, metadata !173, metadata !201, metadata !203, metadata !205, metadata !207, metadata !209, metadata !211, metadata !388, metadata !210, metadata !398, metadata !216, metadata !218, metadata !220, metadata !222, metadata !399, metadata !391}
!398 = metadata !{[44 x i8]* @l_S_load_buf0_load_buf0_l_0_l_load_buf0_l_1_str, metadata !163}
!399 = metadata !{[16 x i8]* @empty_8, metadata !163}
!400 = metadata !{void (i512 addrspace(1)*, i64, [4096 x float]*)* @load_buf0.1, metadata !401}
!401 = metadata !{metadata !150, metadata !395, metadata !198, metadata !166, metadata !160, metadata !162, metadata !167, metadata !169, metadata !171, metadata !172, metadata !173, metadata !232, metadata !233, metadata !234}
!402 = metadata !{void ([64 x float]*, i12, [4096 x float]*, [4096 x float]*)* @gemm_stage_0_Pipeline_l_S_k_0_k, metadata !403}
!403 = metadata !{metadata !230, metadata !404, metadata !198, metadata !406, metadata !200, metadata !203, metadata !222, metadata !304, metadata !303, metadata !302, metadata !301, metadata !300, metadata !299, metadata !298, metadata !297, metadata !296, metadata !295, metadata !294, metadata !293, metadata !292, metadata !291, metadata !290, metadata !289, metadata !288, metadata !287, metadata !286, metadata !285, metadata !284, metadata !283, metadata !282, metadata !281, metadata !280, metadata !279, metadata !278, metadata !277, metadata !276, metadata !275, metadata !274, metadata !272, metadata !271, metadata !270, metadata !269, metadata !268, metadata !267, metadata !266, metadata !265, metadata !264, metadata !263, metadata !262, metadata !261, metadata !260, metadata !259, metadata !258, metadata !257, metadata !255, metadata !254, metadata !253, metadata !252, metadata !251, metadata !250, metadata !249, metadata !248, metadata !246, metadata !245, metadata !244, metadata !243, metadata !241, metadata !240, metadata !238, metadata !184, metadata !158, metadata !160, metadata !407, metadata !218, metadata !306, metadata !210, metadata !220, metadata !209, metadata !308, metadata !310, metadata !312, metadata !313, metadata !315, metadata !316, metadata !317, metadata !318, metadata !320, metadata !321, metadata !322, metadata !323, metadata !324, metadata !325, metadata !326, metadata !327, metadata !329, metadata !330, metadata !331, metadata !332, metadata !333, metadata !334, metadata !335, metadata !336, metadata !337, metadata !338, metadata !339, metadata !340, metadata !341, metadata !342, metadata !343, metadata !344, metadata !346, metadata !347, metadata !348, metadata !349, metadata !350, metadata !351, metadata !352, metadata !353, metadata !354, metadata !355, metadata !356, metadata !357, metadata !358, metadata !359, metadata !360, metadata !361, metadata !362, metadata !363, metadata !364, metadata !365, metadata !366, metadata !367, metadata !368, metadata !369, metadata !370, metadata !371, metadata !372, metadata !373, metadata !374, metadata !375, metadata !376, metadata !408}
!404 = metadata !{metadata !"Arg", i32 1, metadata !405}
!405 = metadata !{i32 12, i32 12, i32 0, i32 2}
!406 = metadata !{metadata !"Arg", i32 3, metadata !199}
!407 = metadata !{[1 x i8]* @p_str7, metadata !163}
!408 = metadata !{[10 x i8]* @empty, metadata !163}
!409 = metadata !{void ([64 x float]*, [64 x float]*)* @gemm_stage_0_Pipeline_VITIS_LOOP_46_2, metadata !410}
!410 = metadata !{metadata !230, metadata !237, metadata !200, metadata !191, metadata !160, metadata !162, metadata !192, metadata !173, metadata !203, metadata !158, metadata !411, metadata !218, metadata !306, metadata !210, metadata !412, metadata !222}
!411 = metadata !{[1 x i8]* @p_str8, metadata !163}
!412 = metadata !{[16 x i8]* @empty_18, metadata !163}
!413 = metadata !{void ([64 x float]*)* @gemm_stage_0_Pipeline_VITIS_LOOP_27_1, metadata !414}
!414 = metadata !{metadata !230, metadata !200, metadata !203, metadata !158, metadata !160, metadata !415, metadata !218, metadata !306, metadata !210, metadata !416, metadata !222, metadata !384}
!415 = metadata !{[1 x i8]* @p_str9, metadata !163}
!416 = metadata !{[16 x i8]* @empty_5, metadata !163}
!417 = metadata !{void ([4096 x float]*, [4096 x float]*, [64 x float]*)* @gemm_stage_0, metadata !418}
!418 = metadata !{metadata !230, metadata !237, metadata !198, metadata !200, metadata !184, metadata !203, metadata !218, metadata !306, metadata !210, metadata !220, metadata !419, metadata !192, metadata !191, metadata !160, metadata !162, metadata !173}
!419 = metadata !{[10 x i8]* @empty_12, metadata !163}
!420 = metadata !{i64 (i64)* @entry_proc, metadata !421}
!421 = metadata !{metadata !422}
!422 = metadata !{metadata !"Arg", i32 0, metadata !155}
!423 = metadata !{metadata !139}
!424 = metadata !{i32 786689, metadata !127, metadata !"v40", metadata !9, i32 50331765, metadata !130, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!425 = metadata !{i32 117, i32 10, metadata !127, null}
!426 = metadata !{i32 786689, metadata !127, metadata !"v39", metadata !9, i32 33554548, metadata !130, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!427 = metadata !{i32 116, i32 10, metadata !127, null}
!428 = metadata !{i32 786689, metadata !127, metadata !"v38", metadata !9, i32 16777331, metadata !130, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!429 = metadata !{i32 115, i32 10, metadata !127, null}
!430 = metadata !{i32 58, i32 5, metadata !431, metadata !139}
!431 = metadata !{i32 786443, metadata !432, i32 56, i32 3, metadata !20, i32 0} ; [ DW_TAG_lexical_block ]
!432 = metadata !{i32 786478, i32 0, metadata !433, metadata !"stream_buf", metadata !"stream_buf", metadata !"_ZN3hls10stream_bufIA64_fEC2Ei", metadata !20, i32 48, metadata !437, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !436, metadata !1, i32 56} ; [ DW_TAG_subprogram ]
!433 = metadata !{i32 786434, metadata !19, metadata !"stream_buf<float [64]>", metadata !20, i32 36, i64 2048, i64 0, i32 0, i32 4194304, null, metadata !434, i32 0, null, metadata !50} ; [ DW_TAG_class_type ]
!434 = metadata !{metadata !435, metadata !436, metadata !440, metadata !443, metadata !446, metadata !447, metadata !448, metadata !453}
!435 = metadata !{i32 786445, metadata !433, metadata !"data", metadata !20, i32 38, i64 2048, i64 0, i32 0, i32 0, metadata !14} ; [ DW_TAG_member ]
!436 = metadata !{i32 786478, i32 0, metadata !433, metadata !"stream_buf", metadata !"stream_buf", null, metadata !20, i32 48, metadata !437, i1 false, i1 false, i32 0, i32 0, null, i32 259, i1 false, null, null, null, metadata !1, i32 48} ; [ DW_TAG_subprogram ]
!437 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !438, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!438 = metadata !{null, metadata !439, metadata !33}
!439 = metadata !{i32 786447, null, metadata !"", metadata !13, i32 0, i64 64, i64 0, i32 0, i32 1088, metadata !433} ; [ DW_TAG_pointer_type ]
!440 = metadata !{i32 786478, i32 0, metadata !433, metadata !"read_acquire", metadata !"read_acquire", metadata !"_ZN3hls10stream_bufIA64_fE12read_acquireEv", metadata !20, i32 83, metadata !441, i1 false, i1 false, i32 0, i32 0, null, i32 259, i1 false, null, null, null, metadata !1, i32 83} ; [ DW_TAG_subprogram ]
!441 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !442, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!442 = metadata !{metadata !37, metadata !439}
!443 = metadata !{i32 786478, i32 0, metadata !433, metadata !"read_release", metadata !"read_release", metadata !"_ZN3hls10stream_bufIA64_fE12read_releaseEv", metadata !20, i32 103, metadata !444, i1 false, i1 false, i32 0, i32 0, null, i32 259, i1 false, null, null, null, metadata !1, i32 103} ; [ DW_TAG_subprogram ]
!444 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !445, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!445 = metadata !{null, metadata !439}
!446 = metadata !{i32 786478, i32 0, metadata !433, metadata !"write_acquire", metadata !"write_acquire", metadata !"_ZN3hls10stream_bufIA64_fE13write_acquireEv", metadata !20, i32 116, metadata !441, i1 false, i1 false, i32 0, i32 0, null, i32 259, i1 false, null, null, null, metadata !1, i32 116} ; [ DW_TAG_subprogram ]
!447 = metadata !{i32 786478, i32 0, metadata !433, metadata !"write_release", metadata !"write_release", metadata !"_ZN3hls10stream_bufIA64_fE13write_releaseEv", metadata !20, i32 132, metadata !444, i1 false, i1 false, i32 0, i32 0, null, i32 259, i1 false, null, null, null, metadata !1, i32 132} ; [ DW_TAG_subprogram ]
!448 = metadata !{i32 786478, i32 0, metadata !433, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls10stream_bufIA64_fE5emptyEv", metadata !20, i32 144, metadata !449, i1 false, i1 false, i32 0, i32 0, null, i32 259, i1 false, null, null, null, metadata !1, i32 144} ; [ DW_TAG_subprogram ]
!449 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !450, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!450 = metadata !{metadata !46, metadata !451}
!451 = metadata !{i32 786447, null, metadata !"", metadata !13, i32 0, i64 64, i64 0, i32 0, i32 1088, metadata !452} ; [ DW_TAG_pointer_type ]
!452 = metadata !{i32 786470, null, metadata !"", metadata !13, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !433} ; [ DW_TAG_const_type ]
!453 = metadata !{i32 786478, i32 0, metadata !433, metadata !"full", metadata !"full", metadata !"_ZNK3hls10stream_bufIA64_fE4fullEv", metadata !20, i32 153, metadata !449, i1 false, i1 false, i32 0, i32 0, null, i32 259, i1 false, null, null, null, metadata !1, i32 153} ; [ DW_TAG_subprogram ]
!454 = metadata !{i32 59, i32 5, metadata !431, metadata !139}
!455 = metadata !{i32 786688, metadata !127, metadata !"buf0", metadata !9, i32 123, metadata !456, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!456 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 131072, i64 0, i32 0, i32 0, metadata !5, metadata !457, i32 0, null, null} ; [ DW_TAG_array_type ]
!457 = metadata !{metadata !16, metadata !16}
!458 = metadata !{i32 123, i32 8, metadata !127, null}
!459 = metadata !{i32 124, i32 3, metadata !127, null}
!460 = metadata !{i32 1}
!461 = metadata !{metadata !462}
!462 = metadata !{i32 0, metadata !463}
!463 = metadata !{metadata !"RAW", metadata !"indep"}
!464 = metadata !{i32 786688, metadata !127, metadata !"buf1", metadata !9, i32 125, metadata !456, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!465 = metadata !{i32 125, i32 9, metadata !127, null}
!466 = metadata !{i32 126, i32 3, metadata !127, null}
!467 = metadata !{i32 2}
!468 = metadata !{i32 786688, metadata !127, metadata !"buf2", metadata !9, i32 127, metadata !456, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!469 = metadata !{i32 127, i32 9, metadata !127, null}
!470 = metadata !{i32 786688, metadata !127, metadata !"v44.buf.data", metadata !9, i32 130, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!471 = metadata !{i32 130, i32 43, metadata !127, null}
!472 = metadata !{i32 131, i32 3, metadata !127, null}
!473 = metadata !{metadata !474, metadata !476, metadata !477}
!474 = metadata !{i32 1, metadata !475}
!475 = metadata !{metadata !"WAR", metadata !"indep"}
!476 = metadata !{i32 2, metadata !475}
!477 = metadata !{i32 3, metadata !463}
!478 = metadata !{i32 132, i32 3, metadata !127, null}
!479 = metadata !{i32 3}
!480 = metadata !{metadata !481, metadata !482}
!481 = metadata !{i32 0, metadata !475}
!482 = metadata !{i32 4, metadata !463}
!483 = metadata !{i32 133, i32 3, metadata !127, null}
!484 = metadata !{i32 4}
!485 = metadata !{metadata !486}
!486 = metadata !{i32 3, metadata !475}
!487 = metadata !{i32 134, i32 1, metadata !127, null}
!488 = metadata !{i32 0, i32 0, i32 480, i32 1}
!489 = metadata !{i32 0, i32 0, i32 7, i32 1}
!490 = metadata !{i32 786688, metadata !491, metadata !"store_res2_l_1", metadata !9, i32 106, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!491 = metadata !{i32 786443, metadata !492, i32 106, i32 23, metadata !9, i32 0} ; [ DW_TAG_lexical_block ]
!492 = metadata !{i32 786443, metadata !493, i32 105, i32 102, metadata !9, i32 0} ; [ DW_TAG_lexical_block ]
!493 = metadata !{i32 786443, metadata !494, i32 105, i32 34, metadata !9, i32 0} ; [ DW_TAG_lexical_block ]
!494 = metadata !{i32 786443, metadata !135, i32 105, i32 34, metadata !9, i32 0} ; [ DW_TAG_lexical_block ]
!495 = metadata !{i32 786688, metadata !494, metadata !"store_res2_l_0", metadata !9, i32 105, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!496 = metadata !{i32 0, i32 0, i32 13, i32 1}
!497 = metadata !{i32 64, i32 64, i32 0, i32 1}
!498 = metadata !{i32 183}
!499 = metadata !{metadata !500, metadata !501}
!500 = metadata !{i32 175, metadata !463}
!501 = metadata !{i32 176, metadata !502}
!502 = metadata !{metadata !"WAW", metadata !"indep"}
!503 = metadata !{i32 186}
!504 = metadata !{metadata !505, metadata !506}
!505 = metadata !{i32 177, metadata !463}
!506 = metadata !{i32 178, metadata !502}
!507 = metadata !{i32 185}
!508 = metadata !{metadata !509, metadata !510}
!509 = metadata !{i32 179, metadata !463}
!510 = metadata !{i32 180, metadata !502}
!511 = metadata !{i32 184}
!512 = metadata !{metadata !513, metadata !514}
!513 = metadata !{i32 181, metadata !463}
!514 = metadata !{i32 182, metadata !502}
!515 = metadata !{i32 105, i32 78, metadata !493, null}
!516 = metadata !{i32 13, i32 13, i32 0, i32 2}
!517 = metadata !{i32 175}
!518 = metadata !{metadata !519, metadata !520}
!519 = metadata !{i32 183, metadata !475}
!520 = metadata !{i32 176, metadata !521}
!521 = metadata !{metadata !"WAR", metadata !"indep", i32 1, metadata !"*", i32 -1, i1 true}
!522 = metadata !{i32 105, i32 34, metadata !494, null}
!523 = metadata !{i32 1, i32 1, i32 0, i32 2}
!524 = metadata !{i32 106, i32 87, metadata !525, null}
!525 = metadata !{i32 786443, metadata !491, i32 106, i32 23, metadata !9, i32 0} ; [ DW_TAG_lexical_block ]
!526 = metadata !{i32 7, i32 7, i32 0, i32 2}
!527 = metadata !{i32 448, i32 448, i32 0, i32 2}
!528 = metadata !{i32 480, i32 480, i32 0, i32 2}
!529 = metadata !{i32 109, i32 53, metadata !530, null}
!530 = metadata !{i32 786443, metadata !525, i32 106, i32 91, metadata !9, i32 0} ; [ DW_TAG_lexical_block ]
!531 = metadata !{i32 176}
!532 = metadata !{metadata !533, metadata !534}
!533 = metadata !{i32 183, metadata !502}
!534 = metadata !{i32 175, metadata !535}
!535 = metadata !{metadata !"RAW", metadata !"indep", i32 1, metadata !"*", i32 -1, i1 true}
!536 = metadata !{i32 178}
!537 = metadata !{metadata !538, metadata !539}
!538 = metadata !{i32 186, metadata !502}
!539 = metadata !{i32 177, metadata !535}
!540 = metadata !{i32 180}
!541 = metadata !{metadata !542, metadata !543}
!542 = metadata !{i32 185, metadata !502}
!543 = metadata !{i32 179, metadata !535}
!544 = metadata !{i32 182}
!545 = metadata !{metadata !546, metadata !547}
!546 = metadata !{i32 184, metadata !502}
!547 = metadata !{i32 181, metadata !535}
!548 = metadata !{metadata !548, metadata !139, metadata !139, metadata !549, metadata !550, metadata !551}
!549 = metadata !{metadata !"llvm.loop.pipeline.enable", i32 1, i1 false, i8 -1}
!550 = metadata !{metadata !"llvm.loop.name", metadata !"l_store_res2_l_1"}
!551 = metadata !{metadata !"llvm.loop.unroll.hint", i32 16}
!552 = metadata !{i32 181}
!553 = metadata !{metadata !554, metadata !555}
!554 = metadata !{i32 184, metadata !475}
!555 = metadata !{i32 182, metadata !521}
!556 = metadata !{i32 106, i32 67, metadata !525, null}
!557 = metadata !{i32 179}
!558 = metadata !{metadata !559, metadata !560}
!559 = metadata !{i32 185, metadata !475}
!560 = metadata !{i32 180, metadata !521}
!561 = metadata !{i32 105, i32 98, metadata !493, null}
!562 = metadata !{i32 177}
!563 = metadata !{metadata !564, metadata !565}
!564 = metadata !{i32 186, metadata !475}
!565 = metadata !{i32 178, metadata !521}
!566 = metadata !{i32 108, i32 14, metadata !530, null}
!567 = metadata !{i32 6, i32 6, i32 0, i32 2}
!568 = metadata !{i32 12, i32 12, i32 0, i32 0}
!569 = metadata !{i32 64, i32 64, i32 0, i32 0}
!570 = metadata !{i32 4, i32 4, i32 0, i32 2}
!571 = metadata !{i32 106, i32 32, metadata !491, null}
!572 = metadata !{i32 786688, metadata !530, metadata !"v37", metadata !9, i32 108, metadata !5, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!573 = metadata !{i32 108, i32 8, metadata !530, null}
!574 = metadata !{i32 512, i32 512, i32 0, i32 2}
!575 = metadata !{i32 102, i32 9, metadata !135, null}
!576 = metadata !{i32 786689, metadata !135, metadata !"v34", metadata !9, i32 33554535, metadata !130, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!577 = metadata !{i32 103, i32 9, metadata !135, null}
!578 = metadata !{i32 786689, metadata !135, metadata !"v33", null, i32 102, metadata !579, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!579 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 131072, i64 0, i32 0, i32 0, metadata !5, metadata !457, i32 0, i32 0} ; [ DW_TAG_array_type ]
!580 = metadata !{i32 112, i32 1, metadata !135, null}
!581 = metadata !{i32 786688, metadata !582, metadata !"i1", metadata !9, i32 57, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!582 = metadata !{i32 786443, metadata !76, i32 57, i32 15, metadata !9, i32 0} ; [ DW_TAG_lexical_block ]
!583 = metadata !{i32 786688, metadata !76, metadata !"v15", null, i32 54, metadata !579, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!584 = metadata !{i32 54, i32 9, metadata !76, null}
!585 = metadata !{i32 786688, metadata !76, metadata !"v16.buf.data", metadata !9, i32 55, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!586 = metadata !{i32 55, i32 42, metadata !76, null}
!587 = metadata !{i32 63, i32 21, metadata !588, null}
!588 = metadata !{i32 786443, metadata !589, i32 62, i32 62, metadata !9, i32 0} ; [ DW_TAG_lexical_block ]
!589 = metadata !{i32 786443, metadata !590, i32 62, i32 24, metadata !9, i32 0} ; [ DW_TAG_lexical_block ]
!590 = metadata !{i32 786443, metadata !591, i32 62, i32 24, metadata !9, i32 0} ; [ DW_TAG_lexical_block ]
!591 = metadata !{i32 786443, metadata !592, i32 59, i32 5, metadata !9, i32 0} ; [ DW_TAG_lexical_block ]
!592 = metadata !{i32 786443, metadata !593, i32 57, i32 47, metadata !9, i32 0} ; [ DW_TAG_lexical_block ]
!593 = metadata !{i32 786443, metadata !582, i32 57, i32 15, metadata !9, i32 0} ; [ DW_TAG_lexical_block ]
!594 = metadata !{i32 57, i32 15, metadata !582, null}
!595 = metadata !{i32 13}
!596 = metadata !{metadata !597, metadata !598}
!597 = metadata !{i32 11, metadata !463}
!598 = metadata !{i32 12, metadata !502}
!599 = metadata !{i32 57, i32 43, metadata !593, null}
!600 = metadata !{i32 11}
!601 = metadata !{metadata !602, metadata !603}
!602 = metadata !{i32 13, metadata !475}
!603 = metadata !{i32 12, metadata !521}
!604 = metadata !{i32 57, i32 35, metadata !593, null}
!605 = metadata !{metadata !605, metadata !139, metadata !139, metadata !606}
!606 = metadata !{metadata !"llvm.loop.name", metadata !"l_S_i_0_i1"}
!607 = metadata !{i32 70, i32 7, metadata !608, null}
!608 = metadata !{i32 786443, metadata !609, i32 66, i32 49, metadata !9, i32 0} ; [ DW_TAG_lexical_block ]
!609 = metadata !{i32 786443, metadata !610, i32 66, i32 17, metadata !9, i32 0} ; [ DW_TAG_lexical_block ]
!610 = metadata !{i32 786443, metadata !592, i32 66, i32 17, metadata !9, i32 0} ; [ DW_TAG_lexical_block ]
!611 = metadata !{i32 58, i32 11, metadata !592, null}
!612 = metadata !{i32 786688, metadata !613, metadata !"s.buf.data", metadata !20, i32 268, metadata !5, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!613 = metadata !{i32 786478, i32 0, metadata !614, metadata !"read_lock", metadata !"read_lock", metadata !"_ZN3hls9read_lockIA64_fEC2ERNS_16stream_of_blocksIS1_Li2EEE", metadata !20, i32 268, metadata !620, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !619, metadata !1, i32 268} ; [ DW_TAG_subprogram ]
!614 = metadata !{i32 786434, metadata !19, metadata !"read_lock<float [64]>", metadata !20, i32 263, i64 128, i64 0, i32 0, i32 8388608, null, metadata !615, i32 0, null, metadata !50} ; [ DW_TAG_class_type ]
!615 = metadata !{metadata !616, metadata !618, metadata !619, metadata !623, metadata !626, metadata !629}
!616 = metadata !{i32 786445, metadata !614, metadata !"res", metadata !20, i32 264, i64 64, i64 0, i32 0, i32 0, metadata !617} ; [ DW_TAG_member ]
!617 = metadata !{i32 786448, null, metadata !"", metadata !13, i32 0, i64 64, i64 0, i32 0, i32 0, metadata !83} ; [ DW_TAG_reference_type ]
!618 = metadata !{i32 786445, metadata !614, metadata !"buf", metadata !20, i32 265, i64 64, i64 0, i32 64, i32 0, metadata !37} ; [ DW_TAG_member ]
!619 = metadata !{i32 786478, i32 0, metadata !614, metadata !"read_lock", metadata !"read_lock", null, metadata !20, i32 268, metadata !620, i1 false, i1 false, i32 0, i32 0, null, i32 259, i1 false, null, null, null, metadata !1, i32 268} ; [ DW_TAG_subprogram ]
!620 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !621, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!621 = metadata !{null, metadata !622, metadata !617}
!622 = metadata !{i32 786447, null, metadata !"", metadata !13, i32 0, i64 64, i64 0, i32 0, i32 1088, metadata !614} ; [ DW_TAG_pointer_type ]
!623 = metadata !{i32 786478, i32 0, metadata !614, metadata !"~read_lock", metadata !"~read_lock", null, metadata !20, i32 274, metadata !624, i1 false, i1 false, i32 0, i32 0, null, i32 259, i1 false, null, null, null, metadata !1, i32 274} ; [ DW_TAG_subprogram ]
!624 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !625, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!625 = metadata !{null, metadata !622}
!626 = metadata !{i32 786478, i32 0, metadata !614, metadata !"operator float (&)[64]", metadata !"operator float (&)[64]", metadata !"_ZN3hls9read_lockIA64_fEcvRS1_Ev", metadata !20, i32 276, metadata !627, i1 false, i1 false, i32 0, i32 0, null, i32 259, i1 false, null, null, null, metadata !1, i32 276} ; [ DW_TAG_subprogram ]
!627 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !628, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!628 = metadata !{metadata !37, metadata !622}
!629 = metadata !{i32 786478, i32 0, metadata !614, metadata !"operator=", metadata !"operator=", metadata !"_ZN3hls9read_lockIA64_fEaSERA64_Kf", metadata !20, i32 278, metadata !630, i1 false, i1 false, i32 0, i32 0, null, i32 259, i1 false, null, null, null, metadata !1, i32 278} ; [ DW_TAG_subprogram ]
!630 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !631, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!631 = metadata !{metadata !37, metadata !622, metadata !632}
!632 = metadata !{i32 786448, null, metadata !"", metadata !13, i32 0, i64 64, i64 0, i32 0, i32 0, metadata !633} ; [ DW_TAG_reference_type ]
!633 = metadata !{i32 786470, null, metadata !"", metadata !13, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !14} ; [ DW_TAG_const_type ]
!634 = metadata !{i32 268, i32 83, metadata !613, metadata !139}
!635 = metadata !{i32 786688, metadata !591, metadata !"_read_block.res.buf.data", metadata !9, i32 61, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!636 = metadata !{i32 61, i32 32, metadata !591, null}
!637 = metadata !{i32 786688, metadata !638, metadata !"this.buf.data", null, i32 0, metadata !5, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!638 = metadata !{i32 786478, i32 0, metadata !83, metadata !"read_acquire", metadata !"read_acquire", metadata !"_ZN3hls16stream_of_blocksIA64_fLi2EE12read_acquireEv", metadata !20, i32 328, metadata !116, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !115, metadata !1, i32 328} ; [ DW_TAG_subprogram ]
!639 = metadata !{i32 0, i32 0, metadata !638, metadata !139}
!640 = metadata !{i32 786688, metadata !641, metadata !"this.data", null, i32 0, metadata !5, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!641 = metadata !{i32 786478, i32 0, metadata !86, metadata !"read_acquire", metadata !"read_acquire", metadata !"_ZN3hls10stream_bufIA64_fE12read_acquireEv", metadata !20, i32 83, metadata !94, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !93, metadata !1, i32 83} ; [ DW_TAG_subprogram ]
!642 = metadata !{i32 0, i32 0, metadata !641, metadata !139}
!643 = metadata !{i32 57, i32 24, metadata !582, null}
!644 = metadata !{i32 85, i32 5, metadata !641, metadata !139}
!645 = metadata !{i32 786688, metadata !592, metadata !"v18[0]", null, i32 58, metadata !5, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!646 = metadata !{i32 63, i32 19, metadata !588, null}
!647 = metadata !{i32 786688, metadata !592, metadata !"v18[1]", null, i32 58, metadata !5, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!648 = metadata !{i32 786688, metadata !592, metadata !"v18[2]", null, i32 58, metadata !5, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!649 = metadata !{i32 786688, metadata !592, metadata !"v18[3]", null, i32 58, metadata !5, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!650 = metadata !{i32 786688, metadata !592, metadata !"v18[4]", null, i32 58, metadata !5, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!651 = metadata !{i32 786688, metadata !592, metadata !"v18[5]", null, i32 58, metadata !5, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!652 = metadata !{i32 786688, metadata !592, metadata !"v18[6]", null, i32 58, metadata !5, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!653 = metadata !{i32 786688, metadata !592, metadata !"v18[7]", null, i32 58, metadata !5, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!654 = metadata !{i32 786688, metadata !592, metadata !"v18[8]", null, i32 58, metadata !5, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!655 = metadata !{i32 786688, metadata !592, metadata !"v18[9]", null, i32 58, metadata !5, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!656 = metadata !{i32 786688, metadata !592, metadata !"v18[10]", null, i32 58, metadata !5, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!657 = metadata !{i32 786688, metadata !592, metadata !"v18[11]", null, i32 58, metadata !5, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!658 = metadata !{i32 786688, metadata !592, metadata !"v18[12]", null, i32 58, metadata !5, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!659 = metadata !{i32 786688, metadata !592, metadata !"v18[13]", null, i32 58, metadata !5, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!660 = metadata !{i32 786688, metadata !592, metadata !"v18[14]", null, i32 58, metadata !5, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!661 = metadata !{i32 786688, metadata !592, metadata !"v18[15]", null, i32 58, metadata !5, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!662 = metadata !{i32 786688, metadata !592, metadata !"v18[16]", null, i32 58, metadata !5, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!663 = metadata !{i32 786688, metadata !592, metadata !"v18[17]", null, i32 58, metadata !5, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!664 = metadata !{i32 786688, metadata !592, metadata !"v18[18]", null, i32 58, metadata !5, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!665 = metadata !{i32 786688, metadata !592, metadata !"v18[19]", null, i32 58, metadata !5, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!666 = metadata !{i32 786688, metadata !592, metadata !"v18[20]", null, i32 58, metadata !5, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!667 = metadata !{i32 786688, metadata !592, metadata !"v18[21]", null, i32 58, metadata !5, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!668 = metadata !{i32 786688, metadata !592, metadata !"v18[22]", null, i32 58, metadata !5, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!669 = metadata !{i32 786688, metadata !592, metadata !"v18[23]", null, i32 58, metadata !5, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!670 = metadata !{i32 786688, metadata !592, metadata !"v18[24]", null, i32 58, metadata !5, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!671 = metadata !{i32 786688, metadata !592, metadata !"v18[25]", null, i32 58, metadata !5, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!672 = metadata !{i32 786688, metadata !592, metadata !"v18[26]", null, i32 58, metadata !5, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!673 = metadata !{i32 786688, metadata !592, metadata !"v18[27]", null, i32 58, metadata !5, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!674 = metadata !{i32 786688, metadata !592, metadata !"v18[28]", null, i32 58, metadata !5, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!675 = metadata !{i32 786688, metadata !592, metadata !"v18[29]", null, i32 58, metadata !5, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!676 = metadata !{i32 786688, metadata !592, metadata !"v18[30]", null, i32 58, metadata !5, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!677 = metadata !{i32 786688, metadata !592, metadata !"v18[31]", null, i32 58, metadata !5, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!678 = metadata !{i32 786688, metadata !592, metadata !"v18[32]", null, i32 58, metadata !5, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!679 = metadata !{i32 786688, metadata !592, metadata !"v18[33]", null, i32 58, metadata !5, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!680 = metadata !{i32 786688, metadata !592, metadata !"v18[34]", null, i32 58, metadata !5, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!681 = metadata !{i32 786688, metadata !592, metadata !"v18[35]", null, i32 58, metadata !5, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!682 = metadata !{i32 786688, metadata !592, metadata !"v18[36]", null, i32 58, metadata !5, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!683 = metadata !{i32 786688, metadata !592, metadata !"v18[37]", null, i32 58, metadata !5, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!684 = metadata !{i32 786688, metadata !592, metadata !"v18[38]", null, i32 58, metadata !5, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!685 = metadata !{i32 786688, metadata !592, metadata !"v18[39]", null, i32 58, metadata !5, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!686 = metadata !{i32 786688, metadata !592, metadata !"v18[40]", null, i32 58, metadata !5, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!687 = metadata !{i32 786688, metadata !592, metadata !"v18[41]", null, i32 58, metadata !5, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!688 = metadata !{i32 786688, metadata !592, metadata !"v18[42]", null, i32 58, metadata !5, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!689 = metadata !{i32 786688, metadata !592, metadata !"v18[43]", null, i32 58, metadata !5, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!690 = metadata !{i32 786688, metadata !592, metadata !"v18[44]", null, i32 58, metadata !5, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!691 = metadata !{i32 786688, metadata !592, metadata !"v18[45]", null, i32 58, metadata !5, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!692 = metadata !{i32 786688, metadata !592, metadata !"v18[46]", null, i32 58, metadata !5, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!693 = metadata !{i32 786688, metadata !592, metadata !"v18[47]", null, i32 58, metadata !5, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!694 = metadata !{i32 786688, metadata !592, metadata !"v18[48]", null, i32 58, metadata !5, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!695 = metadata !{i32 786688, metadata !592, metadata !"v18[49]", null, i32 58, metadata !5, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!696 = metadata !{i32 786688, metadata !592, metadata !"v18[50]", null, i32 58, metadata !5, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!697 = metadata !{i32 786688, metadata !592, metadata !"v18[51]", null, i32 58, metadata !5, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!698 = metadata !{i32 786688, metadata !592, metadata !"v18[52]", null, i32 58, metadata !5, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!699 = metadata !{i32 786688, metadata !592, metadata !"v18[53]", null, i32 58, metadata !5, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!700 = metadata !{i32 786688, metadata !592, metadata !"v18[54]", null, i32 58, metadata !5, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!701 = metadata !{i32 786688, metadata !592, metadata !"v18[55]", null, i32 58, metadata !5, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!702 = metadata !{i32 786688, metadata !592, metadata !"v18[56]", null, i32 58, metadata !5, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!703 = metadata !{i32 786688, metadata !592, metadata !"v18[57]", null, i32 58, metadata !5, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!704 = metadata !{i32 786688, metadata !592, metadata !"v18[58]", null, i32 58, metadata !5, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!705 = metadata !{i32 786688, metadata !592, metadata !"v18[59]", null, i32 58, metadata !5, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!706 = metadata !{i32 786688, metadata !592, metadata !"v18[60]", null, i32 58, metadata !5, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!707 = metadata !{i32 786688, metadata !592, metadata !"v18[61]", null, i32 58, metadata !5, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!708 = metadata !{i32 786688, metadata !592, metadata !"v18[62]", null, i32 58, metadata !5, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!709 = metadata !{i32 786688, metadata !592, metadata !"v18[63]", null, i32 58, metadata !5, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!710 = metadata !{i32 786688, metadata !711, metadata !"this.buf.data", null, i32 0, metadata !5, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!711 = metadata !{i32 786478, i32 0, metadata !83, metadata !"read_release", metadata !"read_release", metadata !"_ZN3hls16stream_of_blocksIA64_fLi2EE12read_releaseEv", metadata !20, i32 330, metadata !119, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !118, metadata !1, i32 330} ; [ DW_TAG_subprogram ]
!712 = metadata !{i32 0, i32 0, metadata !711, metadata !139}
!713 = metadata !{i32 786688, metadata !714, metadata !"this.data", null, i32 0, metadata !5, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!714 = metadata !{i32 786478, i32 0, metadata !86, metadata !"read_release", metadata !"read_release", metadata !"_ZN3hls10stream_bufIA64_fE12read_releaseEv", metadata !20, i32 103, metadata !97, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !96, metadata !1, i32 103} ; [ DW_TAG_subprogram ]
!715 = metadata !{i32 0, i32 0, metadata !714, metadata !139}
!716 = metadata !{i32 105, i32 5, metadata !714, metadata !139}
!717 = metadata !{i32 68, i32 22, metadata !608, null}
!718 = metadata !{i32 8, i32 8, i32 0, i32 2}
!719 = metadata !{i32 23, i32 23, i32 0, i32 2}
!720 = metadata !{i32 69, i32 19, metadata !608, null}
!721 = metadata !{i32 70, i32 19, metadata !608, null}
!722 = metadata !{i32 12}
!723 = metadata !{metadata !724, metadata !725}
!724 = metadata !{i32 13, metadata !502}
!725 = metadata !{i32 11, metadata !535}
!726 = metadata !{i32 73, i32 1, metadata !76, null}
!727 = metadata !{i32 786688, metadata !728, metadata !"load_buf1_l_1", metadata !9, i32 93, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!728 = metadata !{i32 786443, metadata !729, i32 93, i32 22, metadata !9, i32 0} ; [ DW_TAG_lexical_block ]
!729 = metadata !{i32 786443, metadata !730, i32 92, i32 97, metadata !9, i32 0} ; [ DW_TAG_lexical_block ]
!730 = metadata !{i32 786443, metadata !731, i32 92, i32 32, metadata !9, i32 0} ; [ DW_TAG_lexical_block ]
!731 = metadata !{i32 786443, metadata !134, i32 92, i32 32, metadata !9, i32 0} ; [ DW_TAG_lexical_block ]
!732 = metadata !{i32 786688, metadata !731, metadata !"load_buf1_l_0", metadata !9, i32 92, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!733 = metadata !{i32 171}
!734 = metadata !{metadata !735, metadata !736}
!735 = metadata !{i32 163, metadata !463}
!736 = metadata !{i32 164, metadata !502}
!737 = metadata !{i32 174}
!738 = metadata !{metadata !739, metadata !740}
!739 = metadata !{i32 165, metadata !463}
!740 = metadata !{i32 166, metadata !502}
!741 = metadata !{i32 173}
!742 = metadata !{metadata !743, metadata !744}
!743 = metadata !{i32 167, metadata !463}
!744 = metadata !{i32 168, metadata !502}
!745 = metadata !{i32 172}
!746 = metadata !{metadata !747, metadata !748}
!747 = metadata !{i32 169, metadata !463}
!748 = metadata !{i32 170, metadata !502}
!749 = metadata !{i32 92, i32 74, metadata !730, null}
!750 = metadata !{i32 163}
!751 = metadata !{metadata !752, metadata !753}
!752 = metadata !{i32 171, metadata !475}
!753 = metadata !{i32 164, metadata !521}
!754 = metadata !{i32 92, i32 32, metadata !731, null}
!755 = metadata !{i32 95, i32 14, metadata !756, null}
!756 = metadata !{i32 786443, metadata !757, i32 93, i32 87, metadata !9, i32 0} ; [ DW_TAG_lexical_block ]
!757 = metadata !{i32 786443, metadata !728, i32 93, i32 22, metadata !9, i32 0} ; [ DW_TAG_lexical_block ]
!758 = metadata !{i32 95, i32 8, metadata !756, null}
!759 = metadata !{i32 786688, metadata !756, metadata !"v32", metadata !9, i32 95, metadata !5, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!760 = metadata !{i32 96, i32 41, metadata !756, null}
!761 = metadata !{i32 93, i32 83, metadata !757, null}
!762 = metadata !{i32 164}
!763 = metadata !{metadata !764, metadata !765}
!764 = metadata !{i32 171, metadata !502}
!765 = metadata !{i32 163, metadata !535}
!766 = metadata !{i32 166}
!767 = metadata !{metadata !768, metadata !769}
!768 = metadata !{i32 174, metadata !502}
!769 = metadata !{i32 165, metadata !535}
!770 = metadata !{i32 168}
!771 = metadata !{metadata !772, metadata !773}
!772 = metadata !{i32 173, metadata !502}
!773 = metadata !{i32 167, metadata !535}
!774 = metadata !{i32 170}
!775 = metadata !{metadata !776, metadata !777}
!776 = metadata !{i32 172, metadata !502}
!777 = metadata !{i32 169, metadata !535}
!778 = metadata !{metadata !778, metadata !139, metadata !139, metadata !549, metadata !779, metadata !551}
!779 = metadata !{metadata !"llvm.loop.name", metadata !"l_load_buf1_l_1"}
!780 = metadata !{i32 169}
!781 = metadata !{metadata !782, metadata !783}
!782 = metadata !{i32 172, metadata !475}
!783 = metadata !{i32 170, metadata !521}
!784 = metadata !{i32 93, i32 64, metadata !757, null}
!785 = metadata !{i32 167}
!786 = metadata !{metadata !787, metadata !788}
!787 = metadata !{i32 173, metadata !475}
!788 = metadata !{i32 168, metadata !521}
!789 = metadata !{i32 92, i32 93, metadata !730, null}
!790 = metadata !{i32 165}
!791 = metadata !{metadata !792, metadata !793}
!792 = metadata !{i32 174, metadata !475}
!793 = metadata !{i32 166, metadata !521}
!794 = metadata !{i32 96, i32 7, metadata !756, null}
!795 = metadata !{i32 512, i32 512, i32 0, i32 0}
!796 = metadata !{i32 93, i32 31, metadata !728, null}
!797 = metadata !{i32 89, i32 9, metadata !134, null}
!798 = metadata !{i32 786689, metadata !134, metadata !"v28", metadata !9, i32 16777305, metadata !130, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!799 = metadata !{i32 786689, metadata !134, metadata !"v29", null, i32 90, metadata !579, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!800 = metadata !{i32 90, i32 9, metadata !134, null}
!801 = metadata !{i32 99, i32 1, metadata !134, null}
!802 = metadata !{i32 786688, metadata !803, metadata !"load_buf0_l_1", metadata !9, i32 80, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!803 = metadata !{i32 786443, metadata !804, i32 80, i32 22, metadata !9, i32 0} ; [ DW_TAG_lexical_block ]
!804 = metadata !{i32 786443, metadata !805, i32 79, i32 97, metadata !9, i32 0} ; [ DW_TAG_lexical_block ]
!805 = metadata !{i32 786443, metadata !806, i32 79, i32 32, metadata !9, i32 0} ; [ DW_TAG_lexical_block ]
!806 = metadata !{i32 786443, metadata !131, i32 79, i32 32, metadata !9, i32 0} ; [ DW_TAG_lexical_block ]
!807 = metadata !{i32 786688, metadata !806, metadata !"load_buf0_l_0", metadata !9, i32 79, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!808 = metadata !{i32 159}
!809 = metadata !{metadata !810, metadata !811}
!810 = metadata !{i32 151, metadata !463}
!811 = metadata !{i32 152, metadata !502}
!812 = metadata !{i32 162}
!813 = metadata !{metadata !814, metadata !815}
!814 = metadata !{i32 153, metadata !463}
!815 = metadata !{i32 154, metadata !502}
!816 = metadata !{i32 161}
!817 = metadata !{metadata !818, metadata !819}
!818 = metadata !{i32 155, metadata !463}
!819 = metadata !{i32 156, metadata !502}
!820 = metadata !{i32 160}
!821 = metadata !{metadata !822, metadata !823}
!822 = metadata !{i32 157, metadata !463}
!823 = metadata !{i32 158, metadata !502}
!824 = metadata !{i32 79, i32 74, metadata !805, null}
!825 = metadata !{i32 151}
!826 = metadata !{metadata !827, metadata !828}
!827 = metadata !{i32 159, metadata !475}
!828 = metadata !{i32 152, metadata !521}
!829 = metadata !{i32 79, i32 32, metadata !806, null}
!830 = metadata !{i32 82, i32 14, metadata !831, null}
!831 = metadata !{i32 786443, metadata !832, i32 80, i32 87, metadata !9, i32 0} ; [ DW_TAG_lexical_block ]
!832 = metadata !{i32 786443, metadata !803, i32 80, i32 22, metadata !9, i32 0} ; [ DW_TAG_lexical_block ]
!833 = metadata !{i32 82, i32 8, metadata !831, null}
!834 = metadata !{i32 786688, metadata !831, metadata !"v27", metadata !9, i32 82, metadata !5, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!835 = metadata !{i32 83, i32 41, metadata !831, null}
!836 = metadata !{i32 80, i32 83, metadata !832, null}
!837 = metadata !{i32 152}
!838 = metadata !{metadata !839, metadata !840}
!839 = metadata !{i32 159, metadata !502}
!840 = metadata !{i32 151, metadata !535}
!841 = metadata !{i32 154}
!842 = metadata !{metadata !843, metadata !844}
!843 = metadata !{i32 162, metadata !502}
!844 = metadata !{i32 153, metadata !535}
!845 = metadata !{i32 156}
!846 = metadata !{metadata !847, metadata !848}
!847 = metadata !{i32 161, metadata !502}
!848 = metadata !{i32 155, metadata !535}
!849 = metadata !{i32 158}
!850 = metadata !{metadata !851, metadata !852}
!851 = metadata !{i32 160, metadata !502}
!852 = metadata !{i32 157, metadata !535}
!853 = metadata !{metadata !853, metadata !139, metadata !139, metadata !549, metadata !854, metadata !551}
!854 = metadata !{metadata !"llvm.loop.name", metadata !"l_load_buf0_l_1"}
!855 = metadata !{i32 157}
!856 = metadata !{metadata !857, metadata !858}
!857 = metadata !{i32 160, metadata !475}
!858 = metadata !{i32 158, metadata !521}
!859 = metadata !{i32 80, i32 64, metadata !832, null}
!860 = metadata !{i32 155}
!861 = metadata !{metadata !862, metadata !863}
!862 = metadata !{i32 161, metadata !475}
!863 = metadata !{i32 156, metadata !521}
!864 = metadata !{i32 79, i32 93, metadata !805, null}
!865 = metadata !{i32 153}
!866 = metadata !{metadata !867, metadata !868}
!867 = metadata !{i32 162, metadata !475}
!868 = metadata !{i32 154, metadata !521}
!869 = metadata !{i32 83, i32 7, metadata !831, null}
!870 = metadata !{i32 80, i32 31, metadata !803, null}
!871 = metadata !{i32 76, i32 9, metadata !131, null}
!872 = metadata !{i32 786689, metadata !131, metadata !"v23", metadata !9, i32 16777292, metadata !130, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!873 = metadata !{i32 786689, metadata !131, metadata !"v24", null, i32 77, metadata !579, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!874 = metadata !{i32 77, i32 9, metadata !131, null}
!875 = metadata !{i32 86, i32 1, metadata !131, null}
!876 = metadata !{i32 786688, metadata !877, metadata !"k", metadata !9, i32 30, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!877 = metadata !{i32 786443, metadata !878, i32 30, i32 16, metadata !9, i32 0} ; [ DW_TAG_lexical_block ]
!878 = metadata !{i32 786443, metadata !879, i32 25, i32 43, metadata !9, i32 0} ; [ DW_TAG_lexical_block ]
!879 = metadata !{i32 786443, metadata !880, i32 25, i32 14, metadata !9, i32 0} ; [ DW_TAG_lexical_block ]
!880 = metadata !{i32 786443, metadata !8, i32 25, i32 14, metadata !9, i32 0} ; [ DW_TAG_lexical_block ]
!881 = metadata !{i32 22}
!882 = metadata !{metadata !883, metadata !884}
!883 = metadata !{i32 20, metadata !463}
!884 = metadata !{i32 21, metadata !502}
!885 = metadata !{i32 30, i32 41, metadata !886, null}
!886 = metadata !{i32 786443, metadata !877, i32 30, i32 16, metadata !9, i32 0} ; [ DW_TAG_lexical_block ]
!887 = metadata !{i32 20}
!888 = metadata !{metadata !889, metadata !890}
!889 = metadata !{i32 22, metadata !475}
!890 = metadata !{i32 21, metadata !521}
!891 = metadata !{i32 38, i32 21, metadata !892, null}
!892 = metadata !{i32 786443, metadata !893, i32 34, i32 47, metadata !9, i32 0} ; [ DW_TAG_lexical_block ]
!893 = metadata !{i32 786443, metadata !894, i32 34, i32 18, metadata !9, i32 0} ; [ DW_TAG_lexical_block ]
!894 = metadata !{i32 786443, metadata !895, i32 34, i32 18, metadata !9, i32 0} ; [ DW_TAG_lexical_block ]
!895 = metadata !{i32 786443, metadata !886, i32 30, i32 45, metadata !9, i32 0} ; [ DW_TAG_lexical_block ]
!896 = metadata !{i32 30, i32 34, metadata !886, null}
!897 = metadata !{i32 30, i32 16, metadata !877, null}
!898 = metadata !{metadata !898, metadata !139, metadata !139, metadata !899}
!899 = metadata !{metadata !"llvm.loop.name", metadata !"l_S_k_0_k"}
!900 = metadata !{i32 31, i32 18, metadata !895, null}
!901 = metadata !{i32 36, i32 21, metadata !892, null}
!902 = metadata !{i32 30, i32 25, metadata !877, null}
!903 = metadata !{i32 786688, metadata !895, metadata !"v7", metadata !9, i32 31, metadata !5, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!904 = metadata !{i32 31, i32 13, metadata !895, null}
!905 = metadata !{i32 786688, metadata !895, metadata !"a_val", metadata !9, i32 32, metadata !5, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!906 = metadata !{i32 32, i32 13, metadata !895, null}
!907 = metadata !{i32 786688, metadata !892, metadata !"v10", metadata !9, i32 35, metadata !5, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!908 = metadata !{i32 35, i32 15, metadata !892, null}
!909 = metadata !{i32 37, i32 25, metadata !892, null}
!910 = metadata !{i32 24}
!911 = metadata !{metadata !912}
!912 = metadata !{i32 23, metadata !521}
!913 = metadata !{i32 39, i32 25, metadata !892, null}
!914 = metadata !{i32 40, i32 18, metadata !892, null}
!915 = metadata !{i32 23}
!916 = metadata !{metadata !917}
!917 = metadata !{i32 24, metadata !535}
!918 = metadata !{i32 26}
!919 = metadata !{metadata !920}
!920 = metadata !{i32 25, metadata !521}
!921 = metadata !{i32 25}
!922 = metadata !{metadata !923}
!923 = metadata !{i32 26, metadata !535}
!924 = metadata !{i32 28}
!925 = metadata !{metadata !926}
!926 = metadata !{i32 27, metadata !521}
!927 = metadata !{i32 27}
!928 = metadata !{metadata !929}
!929 = metadata !{i32 28, metadata !535}
!930 = metadata !{i32 30}
!931 = metadata !{metadata !932}
!932 = metadata !{i32 29, metadata !521}
!933 = metadata !{i32 29}
!934 = metadata !{metadata !935}
!935 = metadata !{i32 30, metadata !535}
!936 = metadata !{i32 32}
!937 = metadata !{metadata !938}
!938 = metadata !{i32 31, metadata !521}
!939 = metadata !{i32 31}
!940 = metadata !{metadata !941}
!941 = metadata !{i32 32, metadata !535}
!942 = metadata !{i32 34}
!943 = metadata !{metadata !944}
!944 = metadata !{i32 33, metadata !521}
!945 = metadata !{i32 33}
!946 = metadata !{metadata !947}
!947 = metadata !{i32 34, metadata !535}
!948 = metadata !{i32 36}
!949 = metadata !{metadata !950}
!950 = metadata !{i32 35, metadata !521}
!951 = metadata !{i32 35}
!952 = metadata !{metadata !953}
!953 = metadata !{i32 36, metadata !535}
!954 = metadata !{i32 38}
!955 = metadata !{metadata !956}
!956 = metadata !{i32 37, metadata !521}
!957 = metadata !{i32 37}
!958 = metadata !{metadata !959}
!959 = metadata !{i32 38, metadata !535}
!960 = metadata !{i32 40}
!961 = metadata !{metadata !962}
!962 = metadata !{i32 39, metadata !521}
!963 = metadata !{i32 39}
!964 = metadata !{metadata !965}
!965 = metadata !{i32 40, metadata !535}
!966 = metadata !{i32 42}
!967 = metadata !{metadata !968}
!968 = metadata !{i32 41, metadata !521}
!969 = metadata !{i32 41}
!970 = metadata !{metadata !971}
!971 = metadata !{i32 42, metadata !535}
!972 = metadata !{i32 44}
!973 = metadata !{metadata !974}
!974 = metadata !{i32 43, metadata !521}
!975 = metadata !{i32 43}
!976 = metadata !{metadata !977}
!977 = metadata !{i32 44, metadata !535}
!978 = metadata !{i32 46}
!979 = metadata !{metadata !980}
!980 = metadata !{i32 45, metadata !521}
!981 = metadata !{i32 45}
!982 = metadata !{metadata !983}
!983 = metadata !{i32 46, metadata !535}
!984 = metadata !{i32 48}
!985 = metadata !{metadata !986}
!986 = metadata !{i32 47, metadata !521}
!987 = metadata !{i32 47}
!988 = metadata !{metadata !989}
!989 = metadata !{i32 48, metadata !535}
!990 = metadata !{i32 50}
!991 = metadata !{metadata !992}
!992 = metadata !{i32 49, metadata !521}
!993 = metadata !{i32 49}
!994 = metadata !{metadata !995}
!995 = metadata !{i32 50, metadata !535}
!996 = metadata !{i32 52}
!997 = metadata !{metadata !998}
!998 = metadata !{i32 51, metadata !521}
!999 = metadata !{i32 51}
!1000 = metadata !{metadata !1001}
!1001 = metadata !{i32 52, metadata !535}
!1002 = metadata !{i32 54}
!1003 = metadata !{metadata !1004}
!1004 = metadata !{i32 53, metadata !521}
!1005 = metadata !{i32 53}
!1006 = metadata !{metadata !1007}
!1007 = metadata !{i32 54, metadata !535}
!1008 = metadata !{i32 56}
!1009 = metadata !{metadata !1010}
!1010 = metadata !{i32 55, metadata !521}
!1011 = metadata !{i32 55}
!1012 = metadata !{metadata !1013}
!1013 = metadata !{i32 56, metadata !535}
!1014 = metadata !{i32 58}
!1015 = metadata !{metadata !1016}
!1016 = metadata !{i32 57, metadata !521}
!1017 = metadata !{i32 57}
!1018 = metadata !{metadata !1019}
!1019 = metadata !{i32 58, metadata !535}
!1020 = metadata !{i32 60}
!1021 = metadata !{metadata !1022}
!1022 = metadata !{i32 59, metadata !521}
!1023 = metadata !{i32 59}
!1024 = metadata !{metadata !1025}
!1025 = metadata !{i32 60, metadata !535}
!1026 = metadata !{i32 62}
!1027 = metadata !{metadata !1028}
!1028 = metadata !{i32 61, metadata !521}
!1029 = metadata !{i32 61}
!1030 = metadata !{metadata !1031}
!1031 = metadata !{i32 62, metadata !535}
!1032 = metadata !{i32 64}
!1033 = metadata !{metadata !1034}
!1034 = metadata !{i32 63, metadata !521}
!1035 = metadata !{i32 63}
!1036 = metadata !{metadata !1037}
!1037 = metadata !{i32 64, metadata !535}
!1038 = metadata !{i32 66}
!1039 = metadata !{metadata !1040}
!1040 = metadata !{i32 65, metadata !521}
!1041 = metadata !{i32 65}
!1042 = metadata !{metadata !1043}
!1043 = metadata !{i32 66, metadata !535}
!1044 = metadata !{i32 68}
!1045 = metadata !{metadata !1046}
!1046 = metadata !{i32 67, metadata !521}
!1047 = metadata !{i32 67}
!1048 = metadata !{metadata !1049}
!1049 = metadata !{i32 68, metadata !535}
!1050 = metadata !{i32 70}
!1051 = metadata !{metadata !1052}
!1052 = metadata !{i32 69, metadata !521}
!1053 = metadata !{i32 69}
!1054 = metadata !{metadata !1055}
!1055 = metadata !{i32 70, metadata !535}
!1056 = metadata !{i32 72}
!1057 = metadata !{metadata !1058}
!1058 = metadata !{i32 71, metadata !521}
!1059 = metadata !{i32 71}
!1060 = metadata !{metadata !1061}
!1061 = metadata !{i32 72, metadata !535}
!1062 = metadata !{i32 74}
!1063 = metadata !{metadata !1064}
!1064 = metadata !{i32 73, metadata !521}
!1065 = metadata !{i32 73}
!1066 = metadata !{metadata !1067}
!1067 = metadata !{i32 74, metadata !535}
!1068 = metadata !{i32 76}
!1069 = metadata !{metadata !1070}
!1070 = metadata !{i32 75, metadata !521}
!1071 = metadata !{i32 75}
!1072 = metadata !{metadata !1073}
!1073 = metadata !{i32 76, metadata !535}
!1074 = metadata !{i32 78}
!1075 = metadata !{metadata !1076}
!1076 = metadata !{i32 77, metadata !521}
!1077 = metadata !{i32 77}
!1078 = metadata !{metadata !1079}
!1079 = metadata !{i32 78, metadata !535}
!1080 = metadata !{i32 80}
!1081 = metadata !{metadata !1082}
!1082 = metadata !{i32 79, metadata !521}
!1083 = metadata !{i32 79}
!1084 = metadata !{metadata !1085}
!1085 = metadata !{i32 80, metadata !535}
!1086 = metadata !{i32 82}
!1087 = metadata !{metadata !1088}
!1088 = metadata !{i32 81, metadata !521}
!1089 = metadata !{i32 81}
!1090 = metadata !{metadata !1091}
!1091 = metadata !{i32 82, metadata !535}
!1092 = metadata !{i32 84}
!1093 = metadata !{metadata !1094}
!1094 = metadata !{i32 83, metadata !521}
!1095 = metadata !{i32 83}
!1096 = metadata !{metadata !1097}
!1097 = metadata !{i32 84, metadata !535}
!1098 = metadata !{i32 86}
!1099 = metadata !{metadata !1100}
!1100 = metadata !{i32 85, metadata !521}
!1101 = metadata !{i32 85}
!1102 = metadata !{metadata !1103}
!1103 = metadata !{i32 86, metadata !535}
!1104 = metadata !{i32 88}
!1105 = metadata !{metadata !1106}
!1106 = metadata !{i32 87, metadata !521}
!1107 = metadata !{i32 87}
!1108 = metadata !{metadata !1109}
!1109 = metadata !{i32 88, metadata !535}
!1110 = metadata !{i32 90}
!1111 = metadata !{metadata !1112}
!1112 = metadata !{i32 89, metadata !521}
!1113 = metadata !{i32 89}
!1114 = metadata !{metadata !1115}
!1115 = metadata !{i32 90, metadata !535}
!1116 = metadata !{i32 92}
!1117 = metadata !{metadata !1118}
!1118 = metadata !{i32 91, metadata !521}
!1119 = metadata !{i32 91}
!1120 = metadata !{metadata !1121}
!1121 = metadata !{i32 92, metadata !535}
!1122 = metadata !{i32 94}
!1123 = metadata !{metadata !1124}
!1124 = metadata !{i32 93, metadata !521}
!1125 = metadata !{i32 93}
!1126 = metadata !{metadata !1127}
!1127 = metadata !{i32 94, metadata !535}
!1128 = metadata !{i32 96}
!1129 = metadata !{metadata !1130}
!1130 = metadata !{i32 95, metadata !521}
!1131 = metadata !{i32 95}
!1132 = metadata !{metadata !1133}
!1133 = metadata !{i32 96, metadata !535}
!1134 = metadata !{i32 98}
!1135 = metadata !{metadata !1136}
!1136 = metadata !{i32 97, metadata !521}
!1137 = metadata !{i32 97}
!1138 = metadata !{metadata !1139}
!1139 = metadata !{i32 98, metadata !535}
!1140 = metadata !{i32 100}
!1141 = metadata !{metadata !1142}
!1142 = metadata !{i32 99, metadata !521}
!1143 = metadata !{i32 99}
!1144 = metadata !{metadata !1145}
!1145 = metadata !{i32 100, metadata !535}
!1146 = metadata !{i32 102}
!1147 = metadata !{metadata !1148}
!1148 = metadata !{i32 101, metadata !521}
!1149 = metadata !{i32 101}
!1150 = metadata !{metadata !1151}
!1151 = metadata !{i32 102, metadata !535}
!1152 = metadata !{i32 104}
!1153 = metadata !{metadata !1154}
!1154 = metadata !{i32 103, metadata !521}
!1155 = metadata !{i32 103}
!1156 = metadata !{metadata !1157}
!1157 = metadata !{i32 104, metadata !535}
!1158 = metadata !{i32 106}
!1159 = metadata !{metadata !1160}
!1160 = metadata !{i32 105, metadata !521}
!1161 = metadata !{i32 105}
!1162 = metadata !{metadata !1163}
!1163 = metadata !{i32 106, metadata !535}
!1164 = metadata !{i32 108}
!1165 = metadata !{metadata !1166}
!1166 = metadata !{i32 107, metadata !521}
!1167 = metadata !{i32 107}
!1168 = metadata !{metadata !1169}
!1169 = metadata !{i32 108, metadata !535}
!1170 = metadata !{i32 110}
!1171 = metadata !{metadata !1172}
!1172 = metadata !{i32 109, metadata !521}
!1173 = metadata !{i32 109}
!1174 = metadata !{metadata !1175}
!1175 = metadata !{i32 110, metadata !535}
!1176 = metadata !{i32 112}
!1177 = metadata !{metadata !1178}
!1178 = metadata !{i32 111, metadata !521}
!1179 = metadata !{i32 111}
!1180 = metadata !{metadata !1181}
!1181 = metadata !{i32 112, metadata !535}
!1182 = metadata !{i32 114}
!1183 = metadata !{metadata !1184}
!1184 = metadata !{i32 113, metadata !521}
!1185 = metadata !{i32 113}
!1186 = metadata !{metadata !1187}
!1187 = metadata !{i32 114, metadata !535}
!1188 = metadata !{i32 116}
!1189 = metadata !{metadata !1190}
!1190 = metadata !{i32 115, metadata !521}
!1191 = metadata !{i32 115}
!1192 = metadata !{metadata !1193}
!1193 = metadata !{i32 116, metadata !535}
!1194 = metadata !{i32 118}
!1195 = metadata !{metadata !1196}
!1196 = metadata !{i32 117, metadata !521}
!1197 = metadata !{i32 117}
!1198 = metadata !{metadata !1199}
!1199 = metadata !{i32 118, metadata !535}
!1200 = metadata !{i32 120}
!1201 = metadata !{metadata !1202}
!1202 = metadata !{i32 119, metadata !521}
!1203 = metadata !{i32 119}
!1204 = metadata !{metadata !1205}
!1205 = metadata !{i32 120, metadata !535}
!1206 = metadata !{i32 122}
!1207 = metadata !{metadata !1208}
!1208 = metadata !{i32 121, metadata !521}
!1209 = metadata !{i32 121}
!1210 = metadata !{metadata !1211}
!1211 = metadata !{i32 122, metadata !535}
!1212 = metadata !{i32 124}
!1213 = metadata !{metadata !1214}
!1214 = metadata !{i32 123, metadata !521}
!1215 = metadata !{i32 123}
!1216 = metadata !{metadata !1217}
!1217 = metadata !{i32 124, metadata !535}
!1218 = metadata !{i32 126}
!1219 = metadata !{metadata !1220}
!1220 = metadata !{i32 125, metadata !521}
!1221 = metadata !{i32 125}
!1222 = metadata !{metadata !1223}
!1223 = metadata !{i32 126, metadata !535}
!1224 = metadata !{i32 128}
!1225 = metadata !{metadata !1226}
!1226 = metadata !{i32 127, metadata !521}
!1227 = metadata !{i32 127}
!1228 = metadata !{metadata !1229}
!1229 = metadata !{i32 128, metadata !535}
!1230 = metadata !{i32 130}
!1231 = metadata !{metadata !1232}
!1232 = metadata !{i32 129, metadata !521}
!1233 = metadata !{i32 129}
!1234 = metadata !{metadata !1235}
!1235 = metadata !{i32 130, metadata !535}
!1236 = metadata !{i32 132}
!1237 = metadata !{metadata !1238}
!1238 = metadata !{i32 131, metadata !521}
!1239 = metadata !{i32 131}
!1240 = metadata !{metadata !1241}
!1241 = metadata !{i32 132, metadata !535}
!1242 = metadata !{i32 134}
!1243 = metadata !{metadata !1244}
!1244 = metadata !{i32 133, metadata !521}
!1245 = metadata !{i32 133}
!1246 = metadata !{metadata !1247}
!1247 = metadata !{i32 134, metadata !535}
!1248 = metadata !{i32 136}
!1249 = metadata !{metadata !1250}
!1250 = metadata !{i32 135, metadata !521}
!1251 = metadata !{i32 135}
!1252 = metadata !{metadata !1253}
!1253 = metadata !{i32 136, metadata !535}
!1254 = metadata !{i32 138}
!1255 = metadata !{metadata !1256}
!1256 = metadata !{i32 137, metadata !521}
!1257 = metadata !{i32 137}
!1258 = metadata !{metadata !1259}
!1259 = metadata !{i32 138, metadata !535}
!1260 = metadata !{i32 140}
!1261 = metadata !{metadata !1262}
!1262 = metadata !{i32 139, metadata !521}
!1263 = metadata !{i32 139}
!1264 = metadata !{metadata !1265}
!1265 = metadata !{i32 140, metadata !535}
!1266 = metadata !{i32 142}
!1267 = metadata !{metadata !1268}
!1268 = metadata !{i32 141, metadata !521}
!1269 = metadata !{i32 141}
!1270 = metadata !{metadata !1271}
!1271 = metadata !{i32 142, metadata !535}
!1272 = metadata !{i32 144}
!1273 = metadata !{metadata !1274}
!1274 = metadata !{i32 143, metadata !521}
!1275 = metadata !{i32 143}
!1276 = metadata !{metadata !1277}
!1277 = metadata !{i32 144, metadata !535}
!1278 = metadata !{i32 146}
!1279 = metadata !{metadata !1280}
!1280 = metadata !{i32 145, metadata !521}
!1281 = metadata !{i32 145}
!1282 = metadata !{metadata !1283}
!1283 = metadata !{i32 146, metadata !535}
!1284 = metadata !{i32 148}
!1285 = metadata !{metadata !1286}
!1286 = metadata !{i32 147, metadata !521}
!1287 = metadata !{i32 147}
!1288 = metadata !{metadata !1289}
!1289 = metadata !{i32 148, metadata !535}
!1290 = metadata !{i32 150}
!1291 = metadata !{metadata !1292}
!1292 = metadata !{i32 149, metadata !521}
!1293 = metadata !{i32 149}
!1294 = metadata !{metadata !1295}
!1295 = metadata !{i32 150, metadata !535}
!1296 = metadata !{i32 21}
!1297 = metadata !{metadata !1298, metadata !1299}
!1298 = metadata !{i32 22, metadata !502}
!1299 = metadata !{i32 20, metadata !535}
!1300 = metadata !{i32 786688, metadata !1301, metadata !"_iv0", metadata !9, i32 46, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1301 = metadata !{i32 786443, metadata !1302, i32 46, i32 24, metadata !9, i32 0} ; [ DW_TAG_lexical_block ]
!1302 = metadata !{i32 786443, metadata !878, i32 43, i32 5, metadata !9, i32 0} ; [ DW_TAG_lexical_block ]
!1303 = metadata !{i32 19}
!1304 = metadata !{metadata !1305, metadata !1306}
!1305 = metadata !{i32 17, metadata !463}
!1306 = metadata !{i32 18, metadata !502}
!1307 = metadata !{i32 46, i32 54, metadata !1308, null}
!1308 = metadata !{i32 786443, metadata !1301, i32 46, i32 24, metadata !9, i32 0} ; [ DW_TAG_lexical_block ]
!1309 = metadata !{i32 17}
!1310 = metadata !{metadata !1311, metadata !1312}
!1311 = metadata !{i32 19, metadata !475}
!1312 = metadata !{i32 18, metadata !521}
!1313 = metadata !{i32 46, i32 48, metadata !1308, null}
!1314 = metadata !{i32 46, i32 24, metadata !1301, null}
!1315 = metadata !{metadata !1315, metadata !139, metadata !139, metadata !1316}
!1316 = metadata !{metadata !"llvm.loop.name", metadata !"VITIS_LOOP_46_2"}
!1317 = metadata !{i32 46, i32 33, metadata !1301, null}
!1318 = metadata !{i32 47, i32 30, metadata !1319, null}
!1319 = metadata !{i32 786443, metadata !1308, i32 46, i32 62, metadata !9, i32 0} ; [ DW_TAG_lexical_block ]
!1320 = metadata !{i32 47, i32 9, metadata !1319, null}
!1321 = metadata !{i32 47, i32 28, metadata !1319, null}
!1322 = metadata !{i32 18}
!1323 = metadata !{metadata !1324, metadata !1325}
!1324 = metadata !{i32 19, metadata !502}
!1325 = metadata !{i32 17, metadata !535}
!1326 = metadata !{i32 786688, metadata !1327, metadata !"v5", metadata !9, i32 27, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1327 = metadata !{i32 786443, metadata !878, i32 27, i32 22, metadata !9, i32 0} ; [ DW_TAG_lexical_block ]
!1328 = metadata !{i32 16}
!1329 = metadata !{metadata !1330, metadata !1331}
!1330 = metadata !{i32 14, metadata !463}
!1331 = metadata !{i32 15, metadata !502}
!1332 = metadata !{i32 27, i32 50, metadata !1333, null}
!1333 = metadata !{i32 786443, metadata !1327, i32 27, i32 22, metadata !9, i32 0} ; [ DW_TAG_lexical_block ]
!1334 = metadata !{i32 14}
!1335 = metadata !{metadata !1336, metadata !1337}
!1336 = metadata !{i32 16, metadata !475}
!1337 = metadata !{i32 15, metadata !521}
!1338 = metadata !{i32 27, i32 42, metadata !1333, null}
!1339 = metadata !{i32 27, i32 22, metadata !1327, null}
!1340 = metadata !{metadata !1340, metadata !139, metadata !139, metadata !1341}
!1341 = metadata !{metadata !"llvm.loop.name", metadata !"VITIS_LOOP_27_1"}
!1342 = metadata !{i32 27, i32 31, metadata !1327, null}
!1343 = metadata !{i32 28, i32 7, metadata !1344, null}
!1344 = metadata !{i32 786443, metadata !1333, i32 27, i32 54, metadata !9, i32 0} ; [ DW_TAG_lexical_block ]
!1345 = metadata !{i32 28, i32 17, metadata !1344, null}
!1346 = metadata !{i32 15}
!1347 = metadata !{metadata !1348, metadata !1349}
!1348 = metadata !{i32 16, metadata !502}
!1349 = metadata !{i32 14, metadata !535}
!1350 = metadata !{i32 786688, metadata !880, metadata !"i", metadata !9, i32 25, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1351 = metadata !{i32 786688, metadata !8, metadata !"v0", null, i32 21, metadata !579, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1352 = metadata !{i32 21, i32 9, metadata !8, null}
!1353 = metadata !{i32 786688, metadata !8, metadata !"v1", null, i32 22, metadata !579, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1354 = metadata !{i32 22, i32 9, metadata !8, null}
!1355 = metadata !{i32 786688, metadata !8, metadata !"v2.buf.data", metadata !9, i32 23, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1356 = metadata !{i32 23, i32 42, metadata !8, null}
!1357 = metadata !{i32 25, i32 14, metadata !880, null}
!1358 = metadata !{i32 7}
!1359 = metadata !{metadata !1360, metadata !1361}
!1360 = metadata !{i32 5, metadata !463}
!1361 = metadata !{i32 6, metadata !502}
!1362 = metadata !{i32 5}
!1363 = metadata !{metadata !1364, metadata !1365}
!1364 = metadata !{i32 7, metadata !475}
!1365 = metadata !{i32 6, metadata !521}
!1366 = metadata !{i32 25, i32 32, metadata !879, null}
!1367 = metadata !{i32 25, i32 39, metadata !879, null}
!1368 = metadata !{metadata !1368, metadata !139, metadata !139, metadata !1369}
!1369 = metadata !{metadata !"llvm.loop.name", metadata !"l_S_i_0_i"}
!1370 = metadata !{i32 26, i32 11, metadata !878, null}
!1371 = metadata !{i32 786688, metadata !878, metadata !"c_row", metadata !9, i32 26, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1372 = metadata !{i32 25, i32 23, metadata !880, null}
!1373 = metadata !{i32 10}
!1374 = metadata !{metadata !1375, metadata !1377}
!1375 = metadata !{i32 8, metadata !1376}
!1376 = metadata !{metadata !"Unknown", metadata !"indep", i32 1, metadata !"*", i32 -1, i1 true}
!1377 = metadata !{i32 9, metadata !535}
!1378 = metadata !{i32 8}
!1379 = metadata !{metadata !1380, metadata !1381}
!1380 = metadata !{i32 10, metadata !1376}
!1381 = metadata !{i32 9, metadata !1376}
!1382 = metadata !{i32 786688, metadata !1383, metadata !"s.buf.data", metadata !20, i32 287, metadata !5, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1383 = metadata !{i32 786478, i32 0, metadata !1384, metadata !"write_lock", metadata !"write_lock", metadata !"_ZN3hls10write_lockIA64_fEC2ERNS_16stream_of_blocksIS1_Li2EEE", metadata !20, i32 287, metadata !1390, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !1389, metadata !1, i32 287} ; [ DW_TAG_subprogram ]
!1384 = metadata !{i32 786434, metadata !19, metadata !"write_lock<float [64]>", metadata !20, i32 282, i64 128, i64 0, i32 0, i32 8388608, null, metadata !1385, i32 0, null, metadata !50} ; [ DW_TAG_class_type ]
!1385 = metadata !{metadata !1386, metadata !1388, metadata !1389, metadata !1393, metadata !1396, metadata !1399}
!1386 = metadata !{i32 786445, metadata !1384, metadata !"res", metadata !20, i32 283, i64 64, i64 0, i32 0, i32 0, metadata !1387} ; [ DW_TAG_member ]
!1387 = metadata !{i32 786448, null, metadata !"", metadata !13, i32 0, i64 64, i64 0, i32 0, i32 0, metadata !23} ; [ DW_TAG_reference_type ]
!1388 = metadata !{i32 786445, metadata !1384, metadata !"buf", metadata !20, i32 284, i64 64, i64 0, i32 64, i32 0, metadata !37} ; [ DW_TAG_member ]
!1389 = metadata !{i32 786478, i32 0, metadata !1384, metadata !"write_lock", metadata !"write_lock", null, metadata !20, i32 287, metadata !1390, i1 false, i1 false, i32 0, i32 0, null, i32 259, i1 false, null, null, null, metadata !1, i32 287} ; [ DW_TAG_subprogram ]
!1390 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1391, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1391 = metadata !{null, metadata !1392, metadata !1387}
!1392 = metadata !{i32 786447, null, metadata !"", metadata !13, i32 0, i64 64, i64 0, i32 0, i32 1088, metadata !1384} ; [ DW_TAG_pointer_type ]
!1393 = metadata !{i32 786478, i32 0, metadata !1384, metadata !"~write_lock", metadata !"~write_lock", null, metadata !20, i32 293, metadata !1394, i1 false, i1 false, i32 0, i32 0, null, i32 259, i1 false, null, null, null, metadata !1, i32 293} ; [ DW_TAG_subprogram ]
!1394 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1395, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1395 = metadata !{null, metadata !1392}
!1396 = metadata !{i32 786478, i32 0, metadata !1384, metadata !"operator float (&)[64]", metadata !"operator float (&)[64]", metadata !"_ZN3hls10write_lockIA64_fEcvRS1_Ev", metadata !20, i32 295, metadata !1397, i1 false, i1 false, i32 0, i32 0, null, i32 259, i1 false, null, null, null, metadata !1, i32 295} ; [ DW_TAG_subprogram ]
!1397 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1398, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1398 = metadata !{metadata !37, metadata !1392}
!1399 = metadata !{i32 786478, i32 0, metadata !1384, metadata !"operator=", metadata !"operator=", metadata !"_ZN3hls10write_lockIA64_fEaSERA64_Kf", metadata !20, i32 297, metadata !1400, i1 false, i1 false, i32 0, i32 0, null, i32 259, i1 false, null, null, null, metadata !1, i32 297} ; [ DW_TAG_subprogram ]
!1400 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1401, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1401 = metadata !{metadata !37, metadata !1392, metadata !632}
!1402 = metadata !{i32 287, i32 84, metadata !1383, metadata !139}
!1403 = metadata !{i32 786688, metadata !1302, metadata !"_write_block.res.buf.data", metadata !9, i32 45, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1404 = metadata !{i32 45, i32 33, metadata !1302, null}
!1405 = metadata !{i32 786688, metadata !1406, metadata !"this.buf.data", null, i32 0, metadata !5, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1406 = metadata !{i32 786478, i32 0, metadata !23, metadata !"write_acquire", metadata !"write_acquire", metadata !"_ZN3hls16stream_of_blocksIA64_fLi2EE13write_acquireEv", metadata !20, i32 332, metadata !61, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !66, metadata !1, i32 332} ; [ DW_TAG_subprogram ]
!1407 = metadata !{i32 0, i32 0, metadata !1406, metadata !139}
!1408 = metadata !{i32 786688, metadata !1409, metadata !"this.data", null, i32 0, metadata !5, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1409 = metadata !{i32 786478, i32 0, metadata !26, metadata !"write_acquire", metadata !"write_acquire", metadata !"_ZN3hls10stream_bufIA64_fE13write_acquireEv", metadata !20, i32 116, metadata !35, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !41, metadata !1, i32 116} ; [ DW_TAG_subprogram ]
!1410 = metadata !{i32 0, i32 0, metadata !1409, metadata !139}
!1411 = metadata !{i32 118, i32 5, metadata !1409, metadata !139}
!1412 = metadata !{i32 9}
!1413 = metadata !{metadata !1414, metadata !1375}
!1414 = metadata !{i32 10, metadata !521}
!1415 = metadata !{i32 786688, metadata !1416, metadata !"this.buf.data", null, i32 0, metadata !5, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1416 = metadata !{i32 786478, i32 0, metadata !23, metadata !"write_release", metadata !"write_release", metadata !"_ZN3hls16stream_of_blocksIA64_fLi2EE13write_releaseEv", metadata !20, i32 334, metadata !64, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !67, metadata !1, i32 334} ; [ DW_TAG_subprogram ]
!1417 = metadata !{i32 0, i32 0, metadata !1416, metadata !139}
!1418 = metadata !{i32 786688, metadata !1419, metadata !"this.data", null, i32 0, metadata !5, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1419 = metadata !{i32 786478, i32 0, metadata !26, metadata !"write_release", metadata !"write_release", metadata !"_ZN3hls10stream_bufIA64_fE13write_releaseEv", metadata !20, i32 132, metadata !39, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !42, metadata !1, i32 132} ; [ DW_TAG_subprogram ]
!1420 = metadata !{i32 0, i32 0, metadata !1419, metadata !139}
!1421 = metadata !{i32 134, i32 5, metadata !1419, metadata !139}
!1422 = metadata !{i32 6}
!1423 = metadata !{metadata !1424, metadata !1425}
!1424 = metadata !{i32 7, metadata !502}
!1425 = metadata !{i32 5, metadata !535}
!1426 = metadata !{i32 51, i32 1, metadata !8, null}
