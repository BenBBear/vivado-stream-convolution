; ModuleID = 'C:/Users/xiz36/Desktop/hw2_sobel/hw2_sobel/sobel/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@window_buffer = global [9 x i8] zeroinitializer  ; [#uses=9 type=[9 x i8]*]
@sobel_str = internal unnamed_addr constant [6 x i8] c"sobel\00" ; [#uses=1 type=[6 x i8]*]
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a] ; [#uses=0 type=[1 x void ()*]*]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535] ; [#uses=0 type=[1 x i32]*]
@line_buffer = global [1920 x i8] zeroinitializer ; [#uses=3 type=[1920 x i8]*]
@ap_fifo_str = internal unnamed_addr constant [8 x i8] c"ap_fifo\00" ; [#uses=2 type=[8 x i8]*]
@Gy = global i32 0, align 4                       ; [#uses=1 type=i32*]
@Gx = global i32 0, align 4                       ; [#uses=1 type=i32*]
@p_str9 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str8 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str7 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str6 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@p_str13 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str12 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str11 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str10 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str1 = private unnamed_addr constant [6 x i8] c"IMG_W\00", align 1 ; [#uses=3 type=[6 x i8]*]
@p_str = private unnamed_addr constant [6 x i8] c"IMG_H\00", align 1 ; [#uses=3 type=[6 x i8]*]

; [#uses=0]
define i32 @sobel(i8* %input_image, i8* %output_image) nounwind uwtable {
  %empty = call i32 (...)* @_ssdm_op_SpecInterface(i8* %output_image, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str6, [1 x i8]* @p_str7, [1 x i8]* @p_str8, [1 x i8]* @p_str9) nounwind ; [#uses=0 type=i32]
  %empty_3 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %input_image, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str10, [1 x i8]* @p_str11, [1 x i8]* @p_str12, [1 x i8]* @p_str13) nounwind ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %input_image) nounwind, !map !33
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %output_image) nounwind, !map !39
  call void (...)* @_ssdm_op_SpecBitsMap(i32 0) nounwind, !map !43
  call void (...)* @_ssdm_op_SpecTopModule([6 x i8]* @sobel_str) nounwind
  call void @llvm.dbg.value(metadata !{i8* %input_image}, i64 0, metadata !49), !dbg !66 ; [debug line = 36:16] [debug variable = input_image]
  call void @llvm.dbg.value(metadata !{i8* %output_image}, i64 0, metadata !67), !dbg !68 ; [debug line = 36:48] [debug variable = output_image]
  br label %1, !dbg !69                           ; [debug line = 41:19]

; <label>:1                                       ; preds = %4, %0
  %i = phi i9 [ 0, %0 ], [ %i_1, %4 ]             ; [#uses=2 type=i9]
  %exitcond2 = icmp eq i9 %i, -32, !dbg !69       ; [#uses=1 type=i1] [debug line = 41:19]
  %i_1 = add i9 %i, 1, !dbg !72                   ; [#uses=1 type=i9] [debug line = 41:30]
  br i1 %exitcond2, label %5, label %2, !dbg !69  ; [debug line = 41:19]

; <label>:2                                       ; preds = %1
  %empty_4 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 480, i64 480, i64 480) nounwind ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecLoopName([6 x i8]* @p_str) nounwind, !dbg !73 ; [debug line = 42:3]
  %tmp_1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([6 x i8]* @p_str) nounwind, !dbg !73 ; [#uses=1 type=i32] [debug line = 42:3]
  br label %3, !dbg !75                           ; [debug line = 43:20]

; <label>:3                                       ; preds = %ifBlock, %2
  %j = phi i10 [ 0, %2 ], [ %j_1, %ifBlock ]      ; [#uses=4 type=i10]
  %exitcond1 = icmp eq i10 %j, -384, !dbg !75     ; [#uses=1 type=i1] [debug line = 43:20]
  %j_1 = add i10 %j, 1, !dbg !77                  ; [#uses=1 type=i10] [debug line = 43:31]
  br i1 %exitcond1, label %4, label %ifBlock, !dbg !75 ; [debug line = 43:20]

ifBlock:                                          ; preds = %3
  %empty_5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 640, i64 640, i64 640) nounwind ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecLoopName([6 x i8]* @p_str1) nounwind, !dbg !78 ; [debug line = 44:4]
  %tmp_2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([6 x i8]* @p_str1) nounwind, !dbg !78 ; [#uses=1 type=i32] [debug line = 44:4]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str4) nounwind, !dbg !80 ; [debug line = 45:1]
  %window_buffer_load = load i8* getelementptr inbounds ([9 x i8]* @window_buffer, i64 0, i64 1), align 1, !dbg !81 ; [#uses=3 type=i8] [debug line = 48:10]
  store i8 %window_buffer_load, i8* getelementptr inbounds ([9 x i8]* @window_buffer, i64 0, i64 0), align 1, !dbg !81 ; [debug line = 48:10]
  %window_buffer_load_1 = load i8* getelementptr inbounds ([9 x i8]* @window_buffer, i64 0, i64 2), align 1, !dbg !84 ; [#uses=2 type=i8] [debug line = 49:10]
  store i8 %window_buffer_load_1, i8* getelementptr inbounds ([9 x i8]* @window_buffer, i64 0, i64 1), align 1, !dbg !84 ; [debug line = 49:10]
  %window_buffer_load_2 = load i8* getelementptr inbounds ([9 x i8]* @window_buffer, i64 0, i64 4), align 1, !dbg !81 ; [#uses=2 type=i8] [debug line = 48:10]
  store i8 %window_buffer_load_2, i8* getelementptr inbounds ([9 x i8]* @window_buffer, i64 0, i64 3), align 1, !dbg !81 ; [debug line = 48:10]
  %window_buffer_load_3 = load i8* getelementptr inbounds ([9 x i8]* @window_buffer, i64 0, i64 5), align 1, !dbg !84 ; [#uses=1 type=i8] [debug line = 49:10]
  store i8 %window_buffer_load_3, i8* getelementptr inbounds ([9 x i8]* @window_buffer, i64 0, i64 4), align 1, !dbg !84 ; [debug line = 49:10]
  %window_buffer_load_4 = load i8* getelementptr inbounds ([9 x i8]* @window_buffer, i64 0, i64 7), align 1, !dbg !81 ; [#uses=3 type=i8] [debug line = 48:10]
  store i8 %window_buffer_load_4, i8* getelementptr inbounds ([9 x i8]* @window_buffer, i64 0, i64 6), align 1, !dbg !81 ; [debug line = 48:10]
  %window_buffer_load_5 = load i8* getelementptr inbounds ([9 x i8]* @window_buffer, i64 0, i64 8), align 1, !dbg !84 ; [#uses=2 type=i8] [debug line = 49:10]
  store i8 %window_buffer_load_5, i8* getelementptr inbounds ([9 x i8]* @window_buffer, i64 0, i64 7), align 1, !dbg !84 ; [debug line = 49:10]
  %tmp_4 = zext i10 %j to i64, !dbg !85           ; [#uses=1 type=i64] [debug line = 52:4]
  %tmp_4_cast = zext i10 %j to i11, !dbg !85      ; [#uses=2 type=i11] [debug line = 52:4]
  %tmp_12 = add i11 640, %tmp_4_cast, !dbg !85    ; [#uses=1 type=i11] [debug line = 52:4]
  %tmp_13_cast1 = zext i11 %tmp_12 to i64, !dbg !85 ; [#uses=1 type=i64] [debug line = 52:4]
  %line_buffer_addr = getelementptr [1920 x i8]* @line_buffer, i64 0, i64 %tmp_13_cast1, !dbg !85 ; [#uses=2 type=i8*] [debug line = 52:4]
  %line_buffer_addr_1 = getelementptr [1920 x i8]* @line_buffer, i64 0, i64 %tmp_4, !dbg !85 ; [#uses=1 type=i8*] [debug line = 52:4]
  %tmp_13 = add i11 -768, %tmp_4_cast, !dbg !86   ; [#uses=1 type=i11] [debug line = 53:4]
  %tmp_17_cast1 = zext i11 %tmp_13 to i64, !dbg !86 ; [#uses=1 type=i64] [debug line = 53:4]
  %line_buffer_addr_2 = getelementptr [1920 x i8]* @line_buffer, i64 0, i64 %tmp_17_cast1, !dbg !86 ; [#uses=2 type=i8*] [debug line = 53:4]
  %line_buffer_load = load i8* %line_buffer_addr, align 1, !dbg !85 ; [#uses=3 type=i8] [debug line = 52:4]
  store i8 %line_buffer_load, i8* %line_buffer_addr_1, align 1, !dbg !85 ; [debug line = 52:4]
  %line_buffer_load_1 = load i8* %line_buffer_addr_2, align 1, !dbg !86 ; [#uses=3 type=i8] [debug line = 53:4]
  store i8 %line_buffer_load_1, i8* %line_buffer_addr, align 1, !dbg !86 ; [debug line = 53:4]
  %input_image_read = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %input_image) nounwind, !dbg !87 ; [#uses=3 type=i8] [debug line = 54:4]
  store i8 %input_image_read, i8* %line_buffer_addr_2, align 1, !dbg !87 ; [debug line = 54:4]
  store i8 %line_buffer_load, i8* getelementptr inbounds ([9 x i8]* @window_buffer, i64 0, i64 2), align 1, !dbg !88 ; [debug line = 55:4]
  store i8 %line_buffer_load_1, i8* getelementptr inbounds ([9 x i8]* @window_buffer, i64 0, i64 5), align 1, !dbg !89 ; [debug line = 55:45]
  store i8 %input_image_read, i8* getelementptr inbounds ([9 x i8]* @window_buffer, i64 0, i64 8), align 1, !dbg !90 ; [debug line = 55:86]
  %tmp_5_cast = zext i8 %line_buffer_load to i9, !dbg !91 ; [#uses=2 type=i9] [debug line = 63:5]
  %tmp_7 = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %line_buffer_load_1, i1 false), !dbg !91 ; [#uses=1 type=i9] [debug line = 63:5]
  %tmp_7_cast = zext i9 %tmp_7 to i10, !dbg !91   ; [#uses=1 type=i10] [debug line = 63:5]
  %tmp_8_cast = zext i8 %input_image_read to i9, !dbg !91 ; [#uses=2 type=i9] [debug line = 63:5]
  %tmp_9_cast2 = zext i8 %window_buffer_load to i10, !dbg !91 ; [#uses=1 type=i10] [debug line = 63:5]
  %tmp_9_cast = zext i8 %window_buffer_load to i11, !dbg !91 ; [#uses=1 type=i11] [debug line = 63:5]
  %tmp_3 = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %window_buffer_load_2, i1 false), !dbg !91 ; [#uses=1 type=i9] [debug line = 63:5]
  %tmp_3_cast = zext i9 %tmp_3 to i11, !dbg !91   ; [#uses=1 type=i11] [debug line = 63:5]
  %tmp_10_cast1 = zext i8 %window_buffer_load_4 to i10, !dbg !91 ; [#uses=1 type=i10] [debug line = 63:5]
  %tmp_10_cast = zext i8 %window_buffer_load_4 to i11, !dbg !91 ; [#uses=1 type=i11] [debug line = 63:5]
  %tmp = add i9 %tmp_5_cast, %tmp_8_cast, !dbg !91 ; [#uses=1 type=i9] [debug line = 63:5]
  %tmp_cast = zext i9 %tmp to i10, !dbg !91       ; [#uses=1 type=i10] [debug line = 63:5]
  %tmp_s = add i10 %tmp_cast, %tmp_7_cast, !dbg !91 ; [#uses=1 type=i10] [debug line = 63:5]
  %tmp_12_cast = zext i10 %tmp_s to i11, !dbg !91 ; [#uses=1 type=i11] [debug line = 63:5]
  %p_neg6 = sub i11 %tmp_12_cast, %tmp_9_cast, !dbg !91 ; [#uses=1 type=i11] [debug line = 63:5]
  %p_neg4 = sub i11 %p_neg6, %tmp_3_cast, !dbg !91 ; [#uses=1 type=i11] [debug line = 63:5]
  %tmp_5 = sub i11 %p_neg4, %tmp_10_cast, !dbg !91 ; [#uses=3 type=i11] [debug line = 63:5]
  %tmp_13_cast = sext i11 %tmp_5 to i32, !dbg !91 ; [#uses=1 type=i32] [debug line = 63:5]
  store i32 %tmp_13_cast, i32* @Gx, align 4, !dbg !91 ; [debug line = 63:5]
  %tmp_6 = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %window_buffer_load_1, i1 false), !dbg !92 ; [#uses=1 type=i9] [debug line = 67:5]
  %tmp_15_cast = zext i9 %tmp_6 to i11, !dbg !92  ; [#uses=1 type=i11] [debug line = 67:5]
  %tmp_8 = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %window_buffer_load_5, i1 false), !dbg !92 ; [#uses=1 type=i9] [debug line = 67:5]
  %tmp_17_cast = zext i9 %tmp_8 to i11, !dbg !92  ; [#uses=1 type=i11] [debug line = 67:5]
  %tmp_9 = sub i9 %tmp_5_cast, %tmp_8_cast, !dbg !92 ; [#uses=1 type=i9] [debug line = 67:5]
  %tmp_18_cast = sext i9 %tmp_9 to i10, !dbg !92  ; [#uses=1 type=i10] [debug line = 67:5]
  %tmp_10 = add i10 %tmp_18_cast, %tmp_9_cast2, !dbg !92 ; [#uses=1 type=i10] [debug line = 67:5]
  %p_neg7 = sub i10 %tmp_10, %tmp_10_cast1, !dbg !92 ; [#uses=1 type=i10] [debug line = 67:5]
  %p_neg7_cast = sext i10 %p_neg7 to i11, !dbg !92 ; [#uses=1 type=i11] [debug line = 67:5]
  %p_neg9 = add i11 %tmp_15_cast, %p_neg7_cast, !dbg !92 ; [#uses=1 type=i11] [debug line = 67:5]
  %tmp_11 = sub i11 %p_neg9, %tmp_17_cast, !dbg !92 ; [#uses=3 type=i11] [debug line = 67:5]
  %tmp_20_cast = sext i11 %tmp_11 to i32, !dbg !92 ; [#uses=1 type=i32] [debug line = 67:5]
  store i32 %tmp_20_cast, i32* @Gy, align 4, !dbg !92 ; [debug line = 67:5]
  %tmp_16 = trunc i11 %tmp_5 to i8                ; [#uses=2 type=i8]
  %abscond = icmp sgt i11 %tmp_5, 0               ; [#uses=1 type=i1]
  %tmp_14 = sub i8 0, %tmp_16                     ; [#uses=1 type=i8]
  %tmp_15 = select i1 %abscond, i8 %tmp_16, i8 %tmp_14 ; [#uses=1 type=i8]
  %tmp_17 = trunc i11 %tmp_11 to i8               ; [#uses=2 type=i8]
  %abscond1 = icmp sgt i11 %tmp_11, 0             ; [#uses=1 type=i1]
  %tmp_18 = sub i8 0, %tmp_17                     ; [#uses=1 type=i8]
  %tmp_19 = select i1 %abscond1, i8 %tmp_17, i8 %tmp_18 ; [#uses=1 type=i8]
  %tmp_20 = add i8 %tmp_15, %tmp_19, !dbg !93     ; [#uses=1 type=i8] [debug line = 72:36]
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %output_image, i8 %tmp_20) nounwind, !dbg !93 ; [debug line = 72:36]
  %empty_6 = call i32 (...)* @_ssdm_op_SpecRegionEnd([6 x i8]* @p_str1, i32 %tmp_2) nounwind, !dbg !94 ; [#uses=0 type=i32] [debug line = 76:3]
  call void @llvm.dbg.value(metadata !{i10 %j_1}, i64 0, metadata !95), !dbg !77 ; [debug line = 43:31] [debug variable = j]
  br label %3

; <label>:4                                       ; preds = %3
  %empty_7 = call i32 (...)* @_ssdm_op_SpecRegionEnd([6 x i8]* @p_str, i32 %tmp_1) nounwind, !dbg !96 ; [#uses=0 type=i32] [debug line = 77:2]
  call void @llvm.dbg.value(metadata !{i9 %i_1}, i64 0, metadata !97), !dbg !72 ; [debug line = 41:30] [debug variable = i]
  br label %1, !dbg !72                           ; [debug line = 41:30]

; <label>:5                                       ; preds = %1
  ret i32 undef, !dbg !98                         ; [debug line = 79:1]
}

; [#uses=4]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
define weak void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8*, i8) {
entry:
  %empty = call i8 @_autotb_FifoWrite_i8(i8* %0, i8 %1) ; [#uses=0 type=i8]
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=2]
define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

; [#uses=2]
define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

; [#uses=1]
define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

; [#uses=2]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=2]
define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

; [#uses=2]
define weak i32 @_ssdm_op_SpecInterface(...) {
entry:
  ret i32 0
}

; [#uses=3]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=1]
define weak i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8*) {
entry:
  %empty = call i8 @_autotb_FifoRead_i8(i8* %0)   ; [#uses=1 type=i8]
  ret i8 %empty
}

; [#uses=0]
declare i8 @_ssdm_op_PartSelect.i8.i11.i32.i32(i11, i32, i32) nounwind readnone

; [#uses=0]
declare i16 @_ssdm_op_HSub(...)

; [#uses=0]
declare i16 @_ssdm_op_HMul(...)

; [#uses=0]
declare i16 @_ssdm_op_HDiv(...)

; [#uses=0]
declare i16 @_ssdm_op_HAdd(...)

; [#uses=4]
define weak i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8, i1) nounwind readnone {
entry:
  %empty = zext i8 %0 to i9                       ; [#uses=1 type=i9]
  %empty_8 = zext i1 %1 to i9                     ; [#uses=1 type=i9]
  %empty_9 = shl i9 %empty, 1                     ; [#uses=1 type=i9]
  %empty_10 = or i9 %empty_9, %empty_8            ; [#uses=1 type=i9]
  ret i9 %empty_10
}

; [#uses=0]
declare void @_ssdm_SpecDependence(...) nounwind

; [#uses=1]
declare i8 @_autotb_FifoWrite_i8(i8*, i8)

; [#uses=1]
declare i8 @_autotb_FifoRead_i8(i8*)

; [#uses=1]
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
!49 = metadata !{i32 786689, metadata !50, metadata !"input_image", null, i32 36, metadata !63, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!50 = metadata !{i32 786478, i32 0, metadata !51, metadata !"sobel", metadata !"sobel", metadata !"_Z5sobelPA640_hS0_", metadata !51, i32 36, metadata !52, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !61, i32 37} ; [ DW_TAG_subprogram ]
!51 = metadata !{i32 786473, metadata !"sobel.cpp", metadata !"c:/Users/xiz36/Desktop/hw2_sobel/hw2_sobel", null} ; [ DW_TAG_file_type ]
!52 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !53, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!53 = metadata !{metadata !54, metadata !55, metadata !55}
!54 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!55 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !56} ; [ DW_TAG_pointer_type ]
!56 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 5120, i64 8, i32 0, i32 0, metadata !57, metadata !59, i32 0, i32 0} ; [ DW_TAG_array_type ]
!57 = metadata !{i32 786454, null, metadata !"BYTE", metadata !51, i32 6, i64 0, i64 0, i64 0, i32 0, metadata !58} ; [ DW_TAG_typedef ]
!58 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!59 = metadata !{metadata !60}
!60 = metadata !{i32 786465, i64 0, i64 639}      ; [ DW_TAG_subrange_type ]
!61 = metadata !{metadata !62}
!62 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!63 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 2457600, i64 8, i32 0, i32 0, metadata !57, metadata !64, i32 0, i32 0} ; [ DW_TAG_array_type ]
!64 = metadata !{metadata !65, metadata !60}
!65 = metadata !{i32 786465, i64 0, i64 479}      ; [ DW_TAG_subrange_type ]
!66 = metadata !{i32 36, i32 16, metadata !50, null}
!67 = metadata !{i32 786689, metadata !50, metadata !"output_image", null, i32 36, metadata !63, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!68 = metadata !{i32 36, i32 48, metadata !50, null}
!69 = metadata !{i32 41, i32 19, metadata !70, null}
!70 = metadata !{i32 786443, metadata !71, i32 41, i32 7, metadata !51, i32 6} ; [ DW_TAG_lexical_block ]
!71 = metadata !{i32 786443, metadata !50, i32 37, i32 1, metadata !51, i32 5} ; [ DW_TAG_lexical_block ]
!72 = metadata !{i32 41, i32 30, metadata !70, null}
!73 = metadata !{i32 42, i32 3, metadata !74, null}
!74 = metadata !{i32 786443, metadata !70, i32 42, i32 2, metadata !51, i32 7} ; [ DW_TAG_lexical_block ]
!75 = metadata !{i32 43, i32 20, metadata !76, null}
!76 = metadata !{i32 786443, metadata !74, i32 43, i32 8, metadata !51, i32 8} ; [ DW_TAG_lexical_block ]
!77 = metadata !{i32 43, i32 31, metadata !76, null}
!78 = metadata !{i32 44, i32 4, metadata !79, null}
!79 = metadata !{i32 786443, metadata !76, i32 44, i32 3, metadata !51, i32 9} ; [ DW_TAG_lexical_block ]
!80 = metadata !{i32 45, i32 1, metadata !79, null}
!81 = metadata !{i32 48, i32 10, metadata !82, null}
!82 = metadata !{i32 786443, metadata !83, i32 47, i32 37, metadata !51, i32 11} ; [ DW_TAG_lexical_block ]
!83 = metadata !{i32 786443, metadata !79, i32 47, i32 17, metadata !51, i32 10} ; [ DW_TAG_lexical_block ]
!84 = metadata !{i32 49, i32 10, metadata !82, null}
!85 = metadata !{i32 52, i32 4, metadata !79, null}
!86 = metadata !{i32 53, i32 4, metadata !79, null}
!87 = metadata !{i32 54, i32 4, metadata !79, null}
!88 = metadata !{i32 55, i32 4, metadata !79, null}
!89 = metadata !{i32 55, i32 45, metadata !79, null}
!90 = metadata !{i32 55, i32 86, metadata !79, null}
!91 = metadata !{i32 63, i32 5, metadata !79, null}
!92 = metadata !{i32 67, i32 5, metadata !79, null}
!93 = metadata !{i32 72, i32 36, metadata !79, null}
!94 = metadata !{i32 76, i32 3, metadata !79, null}
!95 = metadata !{i32 786688, metadata !76, metadata !"j", metadata !51, i32 43, metadata !54, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!96 = metadata !{i32 77, i32 2, metadata !74, null}
!97 = metadata !{i32 786688, metadata !70, metadata !"i", metadata !51, i32 41, metadata !54, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!98 = metadata !{i32 79, i32 1, metadata !71, null}
