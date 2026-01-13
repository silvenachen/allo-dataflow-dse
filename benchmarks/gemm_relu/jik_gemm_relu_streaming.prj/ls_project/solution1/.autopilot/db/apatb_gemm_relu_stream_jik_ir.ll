; ModuleID = '/export/hdd/scratch/sli3079/allo_ls/allo_ls_dse/benchmarks/gemm_relu/jik_gemm_relu_streaming.prj/ls_project/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: noinline
define void @apatb_gemm_relu_stream_jik_ir(float* %v35, float* %v36, float* %v37) local_unnamed_addr #0 {
entry:
  %malloccall = tail call i8* @malloc(i64 16384)
  %v35_copy = bitcast i8* %malloccall to [4096 x float]*
  %malloccall1 = tail call i8* @malloc(i64 16384)
  %v36_copy = bitcast i8* %malloccall1 to [4096 x float]*
  %malloccall2 = tail call i8* @malloc(i64 16384)
  %v37_copy = bitcast i8* %malloccall2 to [4096 x float]*
  %0 = bitcast float* %v35 to [4096 x float]*
  %1 = bitcast float* %v36 to [4096 x float]*
  %2 = bitcast float* %v37 to [4096 x float]*
  call fastcc void @copy_in([4096 x float]* %0, [4096 x float]* %v35_copy, [4096 x float]* %1, [4096 x float]* %v36_copy, [4096 x float]* %2, [4096 x float]* %v37_copy)
  %3 = getelementptr inbounds [4096 x float], [4096 x float]* %v35_copy, i32 0, i32 0
  %4 = getelementptr inbounds [4096 x float], [4096 x float]* %v36_copy, i32 0, i32 0
  %5 = getelementptr inbounds [4096 x float], [4096 x float]* %v37_copy, i32 0, i32 0
  call void @apatb_gemm_relu_stream_jik_hw(float* %3, float* %4, float* %5)
  call fastcc void @copy_out([4096 x float]* %0, [4096 x float]* %v35_copy, [4096 x float]* %1, [4096 x float]* %v36_copy, [4096 x float]* %2, [4096 x float]* %v37_copy)
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall1)
  tail call void @free(i8* %malloccall2)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_in([4096 x float]* readonly, [4096 x float]* noalias, [4096 x float]* readonly, [4096 x float]* noalias, [4096 x float]* readonly, [4096 x float]* noalias) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0a4096f32([4096 x float]* %1, [4096 x float]* %0)
  call fastcc void @onebyonecpy_hls.p0a4096f32([4096 x float]* %3, [4096 x float]* %2)
  call fastcc void @onebyonecpy_hls.p0a4096f32([4096 x float]* %5, [4096 x float]* %4)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @onebyonecpy_hls.p0a4096f32([4096 x float]* noalias, [4096 x float]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [4096 x float]* %0, null
  %3 = icmp eq [4096 x float]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx3 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr.gep1 = getelementptr [4096 x float], [4096 x float]* %0, i64 0, i64 %for.loop.idx3
  %5 = bitcast float* %dst.addr.gep1 to i8*
  %src.addr.gep2 = getelementptr [4096 x float], [4096 x float]* %1, i64 0, i64 %for.loop.idx3
  %6 = bitcast float* %src.addr.gep2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 1 %6, i64 4, i1 false)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx3, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 4096
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #3

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_out([4096 x float]*, [4096 x float]* noalias readonly, [4096 x float]*, [4096 x float]* noalias readonly, [4096 x float]*, [4096 x float]* noalias readonly) unnamed_addr #4 {
entry:
  call fastcc void @onebyonecpy_hls.p0a4096f32([4096 x float]* %0, [4096 x float]* %1)
  call fastcc void @onebyonecpy_hls.p0a4096f32([4096 x float]* %2, [4096 x float]* %3)
  call fastcc void @onebyonecpy_hls.p0a4096f32([4096 x float]* %4, [4096 x float]* %5)
  ret void
}

declare void @free(i8*) local_unnamed_addr

declare void @apatb_gemm_relu_stream_jik_hw(float*, float*, float*)

define void @gemm_relu_stream_jik_hw_stub_wrapper(float*, float*, float*) #5 {
entry:
  %3 = bitcast float* %0 to [4096 x float]*
  %4 = bitcast float* %1 to [4096 x float]*
  %5 = bitcast float* %2 to [4096 x float]*
  call void @copy_out([4096 x float]* null, [4096 x float]* %3, [4096 x float]* null, [4096 x float]* %4, [4096 x float]* null, [4096 x float]* %5)
  %6 = bitcast [4096 x float]* %3 to float*
  %7 = bitcast [4096 x float]* %4 to float*
  %8 = bitcast [4096 x float]* %5 to float*
  call void @gemm_relu_stream_jik_hw_stub(float* %6, float* %7, float* %8)
  call void @copy_in([4096 x float]* null, [4096 x float]* %3, [4096 x float]* null, [4096 x float]* %4, [4096 x float]* null, [4096 x float]* %5)
  ret void
}

declare void @gemm_relu_stream_jik_hw_stub(float*, float*, float*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { argmemonly noinline "fpga.wrapper.func"="copyout" }
attributes #5 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
