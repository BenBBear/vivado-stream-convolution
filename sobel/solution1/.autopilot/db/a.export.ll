; ModuleID = 'C:/Users/xiz36/Desktop/hw2_sobel/hw2_sobel/sobel/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@window_buffer = global [9 x i8] zeroinitializer
@sobel_str = internal unnamed_addr constant [6 x i8] c"sobel\00"
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@line_buffer = global [1920 x i8] zeroinitializer
@ap_fifo_str = internal unnamed_addr constant [8 x i8] c"ap_fifo\00"
@Gy = global i32 0, align 4
@Gx = global i32 0, align 4
@p_str9 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str8 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str7 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str6 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str13 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str12 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str11 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str10 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str1 = private unnamed_addr constant [6 x i8] c"IMG_W\00", align 1
@p_str = private unnamed_addr constant [6 x i8] c"IMG_H\00", align 1

define i32 @sobel(i8* %input_image, i8* %output_image) nounwind uwtable {
  %empty = call i32 (...)* @_ssdm_op_SpecInterface(i8* %output_image, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str6, [1 x i8]* @p_str7, [1 x i8]* @p_str8, [1 x i8]* @p_str9) nounwind
  %empty_3 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %input_image, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str10, [1 x i8]* @p_str11, [1 x i8]* @p_str12, [1 x i8]* @p_str13) nounwind
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %input_image) nounwind, !map !33
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %output_image) nounwind, !map !39
  call void (...)* @_ssdm_op_SpecBitsMap(i32 0) nounwind, !map !43
  call void (...)* @_ssdm_op_SpecTopModule([6 x i8]* @sobel_str) nounwind
  br label %1

; <label>:1                                       ; preds = %4, %0
  %i = phi i9 [ 0, %0 ], [ %i_1, %4 ]
  %exitcond2 = icmp eq i9 %i, -32
  %i_1 = add i9 %i, 1
  br i1 %exitcond2, label %5, label %2

; <label>:2                                       ; preds = %1
  %empty_4 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 480, i64 480, i64 480) nounwind
  call void (...)* @_ssdm_op_SpecLoopName([6 x i8]* @p_str) nounwind
  %tmp_1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([6 x i8]* @p_str) nounwind
  br label %3

; <label>:3                                       ; preds = %ifBlock, %2
  %j = phi i10 [ 0, %2 ], [ %j_1, %ifBlock ]
  %exitcond1 = icmp eq i10 %j, -384
  %j_1 = add i10 %j, 1
  br i1 %exitcond1, label %4, label %ifBlock

ifBlock:                                          ; preds = %3
  %empty_5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 640, i64 640, i64 640) nounwind
  call void (...)* @_ssdm_op_SpecLoopName([6 x i8]* @p_str1) nounwind
  %tmp_2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([6 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str4) nounwind
  %window_buffer_load = load i8* getelementptr inbounds ([9 x i8]* @window_buffer, i64 0, i64 1), align 1
  store i8 %window_buffer_load, i8* getelementptr inbounds ([9 x i8]* @window_buffer, i64 0, i64 0), align 1
  %window_buffer_load_1 = load i8* getelementptr inbounds ([9 x i8]* @window_buffer, i64 0, i64 2), align 1
  store i8 %window_buffer_load_1, i8* getelementptr inbounds ([9 x i8]* @window_buffer, i64 0, i64 1), align 1
  %window_buffer_load_2 = load i8* getelementptr inbounds ([9 x i8]* @window_buffer, i64 0, i64 4), align 1
  store i8 %window_buffer_load_2, i8* getelementptr inbounds ([9 x i8]* @window_buffer, i64 0, i64 3), align 1
  %window_buffer_load_3 = load i8* getelementptr inbounds ([9 x i8]* @window_buffer, i64 0, i64 5), align 1
  store i8 %window_buffer_load_3, i8* getelementptr inbounds ([9 x i8]* @window_buffer, i64 0, i64 4), align 1
  %window_buffer_load_4 = load i8* getelementptr inbounds ([9 x i8]* @window_buffer, i64 0, i64 7), align 1
  store i8 %window_buffer_load_4, i8* getelementptr inbounds ([9 x i8]* @window_buffer, i64 0, i64 6), align 1
  %window_buffer_load_5 = load i8* getelementptr inbounds ([9 x i8]* @window_buffer, i64 0, i64 8), align 1
  store i8 %window_buffer_load_5, i8* getelementptr inbounds ([9 x i8]* @window_buffer, i64 0, i64 7), align 1
  %tmp_4 = zext i10 %j to i64
  %tmp_4_cast = zext i10 %j to i11
  %tmp_12 = add i11 640, %tmp_4_cast
  %tmp_13_cast1 = zext i11 %tmp_12 to i64
  %line_buffer_addr = getelementptr [1920 x i8]* @line_buffer, i64 0, i64 %tmp_13_cast1
  %line_buffer_addr_1 = getelementptr [1920 x i8]* @line_buffer, i64 0, i64 %tmp_4
  %tmp_13 = add i11 -768, %tmp_4_cast
  %tmp_17_cast1 = zext i11 %tmp_13 to i64
  %line_buffer_addr_2 = getelementptr [1920 x i8]* @line_buffer, i64 0, i64 %tmp_17_cast1
  %line_buffer_load = load i8* %line_buffer_addr, align 1
  store i8 %line_buffer_load, i8* %line_buffer_addr_1, align 1
  %line_buffer_load_1 = load i8* %line_buffer_addr_2, align 1
  store i8 %line_buffer_load_1, i8* %line_buffer_addr, align 1
  %input_image_read = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %input_image) nounwind
  store i8 %input_image_read, i8* %line_buffer_addr_2, align 1
  store i8 %line_buffer_load, i8* getelementptr inbounds ([9 x i8]* @window_buffer, i64 0, i64 2), align 1
  store i8 %line_buffer_load_1, i8* getelementptr inbounds ([9 x i8]* @window_buffer, i64 0, i64 5), align 1
  store i8 %input_image_read, i8* getelementptr inbounds ([9 x i8]* @window_buffer, i64 0, i64 8), align 1
  %tmp_5_cast = zext i8 %line_buffer_load to i9
  %tmp_7 = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %line_buffer_load_1, i1 false)
  %tmp_7_cast = zext i9 %tmp_7 to i10
  %tmp_8_cast = zext i8 %input_image_read to i9
  %tmp_9_cast2 = zext i8 %window_buffer_load to i10
  %tmp_9_cast = zext i8 %window_buffer_load to i11
  %tmp_3 = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %window_buffer_load_2, i1 false)
  %tmp_3_cast = zext i9 %tmp_3 to i11
  %tmp_10_cast1 = zext i8 %window_buffer_load_4 to i10
  %tmp_10_cast = zext i8 %window_buffer_load_4 to i11
  %tmp = add i9 %tmp_5_cast, %tmp_8_cast
  %tmp_cast = zext i9 %tmp to i10
  %tmp_s = add i10 %tmp_cast, %tmp_7_cast
  %tmp_12_cast = zext i10 %tmp_s to i11
  %p_neg6 = sub i11 %tmp_12_cast, %tmp_9_cast
  %p_neg4 = sub i11 %p_neg6, %tmp_3_cast
  %tmp_5 = sub i11 %p_neg4, %tmp_10_cast
  %tmp_13_cast = sext i11 %tmp_5 to i32
  store i32 %tmp_13_cast, i32* @Gx, align 4
  %tmp_6 = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %window_buffer_load_1, i1 false)
  %tmp_15_cast = zext i9 %tmp_6 to i11
  %tmp_8 = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %window_buffer_load_5, i1 false)
  %tmp_17_cast = zext i9 %tmp_8 to i11
  %tmp_9 = sub i9 %tmp_5_cast, %tmp_8_cast
  %tmp_18_cast = sext i9 %tmp_9 to i10
  %tmp_10 = add i10 %tmp_18_cast, %tmp_9_cast2
  %p_neg7 = sub i10 %tmp_10, %tmp_10_cast1
  %p_neg7_cast = sext i10 %p_neg7 to i11
  %p_neg9 = add i11 %tmp_15_cast, %p_neg7_cast
  %tmp_11 = sub i11 %p_neg9, %tmp_17_cast
  %tmp_20_cast = sext i11 %tmp_11 to i32
  store i32 %tmp_20_cast, i32* @Gy, align 4
  %tmp_16 = trunc i11 %tmp_5 to i8
  %abscond = icmp sgt i11 %tmp_5, 0
  %tmp_14 = sub i8 0, %tmp_16
  %tmp_15 = select i1 %abscond, i8 %tmp_16, i8 %tmp_14
  %tmp_17 = trunc i11 %tmp_11 to i8
  %abscond1 = icmp sgt i11 %tmp_11, 0
  %tmp_18 = sub i8 0, %tmp_17
  %tmp_19 = select i1 %abscond1, i8 %tmp_17, i8 %tmp_18
  %tmp_20 = add i8 %tmp_15, %tmp_19
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %output_image, i8 %tmp_20) nounwind
  %empty_6 = call i32 (...)* @_ssdm_op_SpecRegionEnd([6 x i8]* @p_str1, i32 %tmp_2) nounwind
  br label %3

; <label>:4                                       ; preds = %3
  %empty_7 = call i32 (...)* @_ssdm_op_SpecRegionEnd([6 x i8]* @p_str, i32 %tmp_1) nounwind
  br label %1

; <label>:5                                       ; preds = %1
  ret i32 undef
}

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define weak void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8*, i8) {
entry:
  %empty = call i8 @_autotb_FifoWrite_i8(i8* %0, i8 %1)
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecInterface(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8*) {
entry:
  %empty = call i8 @_autotb_FifoRead_i8(i8* %0)
  ret i8 %empty
}

declare i8 @_ssdm_op_PartSelect.i8.i11.i32.i32(i11, i32, i32) nounwind readnone

declare i16 @_ssdm_op_HSub(...)

declare i16 @_ssdm_op_HMul(...)

declare i16 @_ssdm_op_HDiv(...)

declare i16 @_ssdm_op_HAdd(...)

define weak i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8, i1) nounwind readnone {
entry:
  %empty = zext i8 %0 to i9
  %empty_8 = zext i1 %1 to i9
  %empty_9 = shl i9 %empty, 1
  %empty_10 = or i9 %empty_9, %empty_8
  ret i9 %empty_10
}

declare void @_ssdm_SpecDependence(...) nounwind

declare i8 @_autotb_FifoWrite_i8(i8*, i8)

declare i8 @_autotb_FifoRead_i8(i8*)

declare void @_GLOBAL__I_a() nounwind

!hls.encrypted.func = !{}
!llvm.map.gv = !{!0, !7, !14, !21, !26, !31, !32}

!0 = metadata !{metadata !1, null}
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0, i32 7, metadata !3}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !"window_buffer", metadata !5, metadata !"unsigned char", i32 0, i32 7}
!5 = metadata !{metadata !6, metadata !6}
!6 = metadata !{i32 0, i32 2, i32 1}
!7 = metadata !{metadata !8, [1 x i32]* @llvm_global_ctors_0}
!8 = metadata !{metadata !9}
!9 = metadata !{i32 0, i32 31, metadata !10}
!10 = metadata !{metadata !11}
!11 = metadata !{metadata !"llvm.global_ctors.0", metadata !12, metadata !"", i32 0, i32 31}
!12 = metadata !{metadata !13}
!13 = metadata !{i32 0, i32 0, i32 1}
!14 = metadata !{metadata !15, null}
!15 = metadata !{metadata !16}
!16 = metadata !{i32 0, i32 7, metadata !17}
!17 = metadata !{metadata !18}
!18 = metadata !{metadata !"line_buffer", metadata !19, metadata !"unsigned char", i32 0, i32 7}
!19 = metadata !{metadata !6, metadata !20}
!20 = metadata !{i32 0, i32 639, i32 1}
!21 = metadata !{metadata !22, i32* @Gy}
!22 = metadata !{metadata !23}
!23 = metadata !{i32 0, i32 31, metadata !24}
!24 = metadata !{metadata !25}
!25 = metadata !{metadata !"Gy", metadata !12, metadata !"int", i32 0, i32 31}
!26 = metadata !{metadata !27, i32* @Gx}
!27 = metadata !{metadata !28}
!28 = metadata !{i32 0, i32 31, metadata !29}
!29 = metadata !{metadata !30}
!30 = metadata !{metadata !"Gx", metadata !12, metadata !"int", i32 0, i32 31}
!31 = metadata !{metadata !1, [9 x i8]* @window_buffer}
!32 = metadata !{metadata !15, [1920 x i8]* @line_buffer}
!33 = metadata !{metadata !34}
!34 = metadata !{i32 0, i32 7, metadata !35}
!35 = metadata !{metadata !36}
!36 = metadata !{metadata !"input_image", metadata !37, metadata !"unsigned char", i32 0, i32 7}
!37 = metadata !{metadata !38, metadata !20}
!38 = metadata !{i32 0, i32 479, i32 1}
!39 = metadata !{metadata !40}
!40 = metadata !{i32 0, i32 7, metadata !41}
!41 = metadata !{metadata !42}
!42 = metadata !{metadata !"output_image", metadata !37, metadata !"unsigned char", i32 0, i32 7}
!43 = metadata !{metadata !44}
!44 = metadata !{i32 0, i32 31, metadata !45}
!45 = metadata !{metadata !46}
!46 = metadata !{metadata !"return", metadata !47, metadata !"int", i32 0, i32 31}
!47 = metadata !{metadata !48}
!48 = metadata !{i32 0, i32 1, i32 0}
