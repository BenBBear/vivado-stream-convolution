; ModuleID = 'C:/Users/xiz36/Desktop/hw2_sobel/hw2_sobel/sobel/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@window_buffer = global [3 x [3 x i8]] zeroinitializer, align 1 ; [#uses=11 type=[3 x [3 x i8]]*]
@sobel.str = internal unnamed_addr constant [6 x i8] c"sobel\00" ; [#uses=1 type=[6 x i8]*]
@llvm.global_ctors.1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a] ; [#uses=0 type=[1 x void ()*]*]
@llvm.global_ctors.0 = appending global [1 x i32] [i32 65535] ; [#uses=0 type=[1 x i32]*]
@line_buffer = global [3 x [640 x i8]] zeroinitializer, align 16 ; [#uses=6 type=[3 x [640 x i8]]*]
@ap_fifo.str = internal unnamed_addr constant [8 x i8] c"ap_fifo\00" ; [#uses=2 type=[8 x i8]*]
@Gy = global i32 0, align 4                       ; [#uses=1 type=i32*]
@Gx = global i32 0, align 4                       ; [#uses=1 type=i32*]
@.str9 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@.str8 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@.str7 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@.str6 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@.str5 = private unnamed_addr constant [12 x i8] c"line_buffer\00", align 1 ; [#uses=2 type=[12 x i8]*]
@.str4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=5 type=[1 x i8]*]
@.str3 = private unnamed_addr constant [11 x i8] c"HORIZONTAL\00", align 1 ; [#uses=4 type=[11 x i8]*]
@.str2 = private unnamed_addr constant [14 x i8] c"window_buffer\00", align 1 ; [#uses=2 type=[14 x i8]*]
@.str13 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@.str12 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@.str11 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@.str10 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@.str1 = private unnamed_addr constant [6 x i8] c"IMG_W\00", align 1 ; [#uses=3 type=[6 x i8]*]
@.str = private unnamed_addr constant [6 x i8] c"IMG_H\00", align 1 ; [#uses=3 type=[6 x i8]*]

; [#uses=0]
define i32 @sobel(i8* %input_image, i8* %output_image) nounwind uwtable {
  %1 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %output_image, [8 x i8]* @ap_fifo.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str6, [1 x i8]* @.str7, [1 x i8]* @.str8, [1 x i8]* @.str9) nounwind ; [#uses=0 type=i32]
  %2 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %input_image, [8 x i8]* @ap_fifo.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str10, [1 x i8]* @.str11, [1 x i8]* @.str12, [1 x i8]* @.str13) nounwind ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %input_image) nounwind, !map !65
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %output_image) nounwind, !map !71
  call void (...)* @_ssdm_op_SpecBitsMap(i32 0) nounwind, !map !75
  call void (...)* @_ssdm_op_SpecTopModule([6 x i8]* @sobel.str) nounwind
  call void @llvm.dbg.value(metadata !{i8* %input_image}, i64 0, metadata !81), !dbg !92 ; [debug line = 36:16] [debug variable = input_image]
  call void @llvm.dbg.value(metadata !{i8* %output_image}, i64 0, metadata !93), !dbg !94 ; [debug line = 36:48] [debug variable = output_image]
  call void (...)* @_ssdm_SpecArrayMap([3 x [3 x i8]]* @window_buffer, [14 x i8]* @.str2, i32 -1, [11 x i8]* @.str3, [1 x i8]* @.str4) nounwind, !dbg !95 ; [debug line = 38:1]
  call void (...)* @_ssdm_SpecArrayMap([3 x [640 x i8]]* @line_buffer, [12 x i8]* @.str5, i32 -1, [11 x i8]* @.str3, [1 x i8]* @.str4) nounwind, !dbg !95 ; [debug line = 38:1]
  call void (...)* @_ssdm_SpecArrayMap([3 x [3 x i8]]* @window_buffer, [14 x i8]* @.str2, i32 -1, [11 x i8]* @.str3, [1 x i8]* @.str4) nounwind, !dbg !95 ; [debug line = 38:1]
  call void (...)* @_ssdm_SpecArrayMap([3 x [640 x i8]]* @line_buffer, [12 x i8]* @.str5, i32 -1, [11 x i8]* @.str3, [1 x i8]* @.str4) nounwind, !dbg !95 ; [debug line = 38:1]
  br label %3, !dbg !97                           ; [debug line = 41:19]

; <label>:3                                       ; preds = %10, %0
  %i = phi i9 [ 0, %0 ], [ %i.1, %10 ]            ; [#uses=2 type=i9]
  %exitcond2 = icmp eq i9 %i, -32, !dbg !97       ; [#uses=1 type=i1] [debug line = 41:19]
  %4 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 480, i64 480, i64 480) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond2, label %12, label %5, !dbg !97 ; [debug line = 41:19]

; <label>:5                                       ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName([6 x i8]* @.str) nounwind, !dbg !99 ; [debug line = 42:3]
  %tmp.1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([6 x i8]* @.str) nounwind, !dbg !99 ; [#uses=1 type=i32] [debug line = 42:3]
  call void (...)* @_ssdm_SpecDependence([3 x [640 x i8]]* @line_buffer, i32 0, i32 0, i32 -1, i32 0, i32 1) nounwind, !dbg !101 ; [debug line = 43:1]
  br label %6, !dbg !102                          ; [debug line = 43:20]

; <label>:6                                       ; preds = %8, %5
  %j = phi i10 [ 0, %5 ], [ %j.1, %8 ]            ; [#uses=3 type=i10]
  %exitcond1 = icmp eq i10 %j, -384, !dbg !102    ; [#uses=1 type=i1] [debug line = 43:20]
  %7 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 640, i64 640, i64 640) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond1, label %10, label %8, !dbg !102 ; [debug line = 43:20]

; <label>:8                                       ; preds = %6
  call void (...)* @_ssdm_op_SpecLoopName([6 x i8]* @.str1) nounwind, !dbg !104 ; [debug line = 44:4]
  %tmp.2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([6 x i8]* @.str1) nounwind, !dbg !104 ; [#uses=1 type=i32] [debug line = 44:4]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @.str4) nounwind, !dbg !106 ; [debug line = 45:1]
  %window_buffer.load = load i8* getelementptr inbounds ([3 x [3 x i8]]* @window_buffer, i64 0, i64 0, i64 1), align 1, !dbg !107 ; [#uses=3 type=i8] [debug line = 48:10]
  store i8 %window_buffer.load, i8* getelementptr inbounds ([3 x [3 x i8]]* @window_buffer, i64 0, i64 0, i64 0), align 1, !dbg !107 ; [debug line = 48:10]
  %window_buffer.load.1 = load i8* getelementptr inbounds ([3 x [3 x i8]]* @window_buffer, i64 0, i64 0, i64 2), align 1, !dbg !110 ; [#uses=2 type=i8] [debug line = 49:10]
  store i8 %window_buffer.load.1, i8* getelementptr inbounds ([3 x [3 x i8]]* @window_buffer, i64 0, i64 0, i64 1), align 1, !dbg !110 ; [debug line = 49:10]
  %window_buffer.load.2 = load i8* getelementptr inbounds ([3 x [3 x i8]]* @window_buffer, i64 0, i64 1, i64 1), align 1, !dbg !107 ; [#uses=2 type=i8] [debug line = 48:10]
  store i8 %window_buffer.load.2, i8* getelementptr inbounds ([3 x [3 x i8]]* @window_buffer, i64 0, i64 1, i64 0), align 1, !dbg !107 ; [debug line = 48:10]
  %window_buffer.load.3 = load i8* getelementptr inbounds ([3 x [3 x i8]]* @window_buffer, i64 0, i64 1, i64 2), align 1, !dbg !110 ; [#uses=1 type=i8] [debug line = 49:10]
  store i8 %window_buffer.load.3, i8* getelementptr inbounds ([3 x [3 x i8]]* @window_buffer, i64 0, i64 1, i64 1), align 1, !dbg !110 ; [debug line = 49:10]
  %window_buffer.load.4 = load i8* getelementptr inbounds ([3 x [3 x i8]]* @window_buffer, i64 0, i64 2, i64 1), align 1, !dbg !107 ; [#uses=3 type=i8] [debug line = 48:10]
  store i8 %window_buffer.load.4, i8* getelementptr inbounds ([3 x [3 x i8]]* @window_buffer, i64 0, i64 2, i64 0), align 1, !dbg !107 ; [debug line = 48:10]
  %window_buffer.load.5 = load i8* getelementptr inbounds ([3 x [3 x i8]]* @window_buffer, i64 0, i64 2, i64 2), align 1, !dbg !110 ; [#uses=2 type=i8] [debug line = 49:10]
  store i8 %window_buffer.load.5, i8* getelementptr inbounds ([3 x [3 x i8]]* @window_buffer, i64 0, i64 2, i64 1), align 1, !dbg !110 ; [debug line = 49:10]
  %tmp.4 = zext i10 %j to i64, !dbg !111          ; [#uses=3 type=i64] [debug line = 52:4]
  %line_buffer.addr = getelementptr inbounds [3 x [640 x i8]]* @line_buffer, i64 0, i64 1, i64 %tmp.4, !dbg !111 ; [#uses=2 type=i8*] [debug line = 52:4]
  %line_buffer.load = load i8* %line_buffer.addr, align 1, !dbg !111 ; [#uses=3 type=i8] [debug line = 52:4]
  %line_buffer.addr.1 = getelementptr inbounds [3 x [640 x i8]]* @line_buffer, i64 0, i64 0, i64 %tmp.4, !dbg !111 ; [#uses=1 type=i8*] [debug line = 52:4]
  store i8 %line_buffer.load, i8* %line_buffer.addr.1, align 1, !dbg !111 ; [debug line = 52:4]
  %line_buffer.addr.2 = getelementptr inbounds [3 x [640 x i8]]* @line_buffer, i64 0, i64 2, i64 %tmp.4, !dbg !112 ; [#uses=2 type=i8*] [debug line = 53:4]
  %line_buffer.load.1 = load i8* %line_buffer.addr.2, align 1, !dbg !112 ; [#uses=3 type=i8] [debug line = 53:4]
  store i8 %line_buffer.load.1, i8* %line_buffer.addr, align 1, !dbg !112 ; [debug line = 53:4]
  %input_image.load = load volatile i8* %input_image, align 1, !dbg !113 ; [#uses=3 type=i8] [debug line = 54:4]
  store i8 %input_image.load, i8* %line_buffer.addr.2, align 1, !dbg !113 ; [debug line = 54:4]
  store i8 %line_buffer.load, i8* getelementptr inbounds ([3 x [3 x i8]]* @window_buffer, i64 0, i64 0, i64 2), align 1, !dbg !114 ; [debug line = 55:4]
  store i8 %line_buffer.load.1, i8* getelementptr inbounds ([3 x [3 x i8]]* @window_buffer, i64 0, i64 1, i64 2), align 1, !dbg !115 ; [debug line = 55:45]
  store i8 %input_image.load, i8* getelementptr inbounds ([3 x [3 x i8]]* @window_buffer, i64 0, i64 2, i64 2), align 1, !dbg !116 ; [debug line = 55:86]
  %tmp.5.cast = zext i8 %line_buffer.load to i9, !dbg !117 ; [#uses=2 type=i9] [debug line = 63:5]
  %tmp.6.cast = zext i8 %line_buffer.load.1 to i9, !dbg !117 ; [#uses=1 type=i9] [debug line = 63:5]
  %tmp.7 = shl nuw i9 %tmp.6.cast, 1, !dbg !117   ; [#uses=1 type=i9] [debug line = 63:5]
  %tmp.7.cast = zext i9 %tmp.7 to i10, !dbg !117  ; [#uses=1 type=i10] [debug line = 63:5]
  %tmp.8.cast = zext i8 %input_image.load to i9, !dbg !117 ; [#uses=2 type=i9] [debug line = 63:5]
  %tmp.9.cast2 = zext i8 %window_buffer.load to i10, !dbg !117 ; [#uses=1 type=i10] [debug line = 63:5]
  %tmp.9.cast = zext i8 %window_buffer.load to i11, !dbg !117 ; [#uses=1 type=i11] [debug line = 63:5]
  %tmp..cast = zext i8 %window_buffer.load.2 to i9, !dbg !117 ; [#uses=1 type=i9] [debug line = 63:5]
  %tmp.3 = shl nuw i9 %tmp..cast, 1, !dbg !117    ; [#uses=1 type=i9] [debug line = 63:5]
  %tmp.3.cast = zext i9 %tmp.3 to i11, !dbg !117  ; [#uses=1 type=i11] [debug line = 63:5]
  %tmp.10.cast1 = zext i8 %window_buffer.load.4 to i10, !dbg !117 ; [#uses=1 type=i10] [debug line = 63:5]
  %tmp.10.cast = zext i8 %window_buffer.load.4 to i11, !dbg !117 ; [#uses=1 type=i11] [debug line = 63:5]
  %tmp = add i9 %tmp.5.cast, %tmp.8.cast, !dbg !117 ; [#uses=1 type=i9] [debug line = 63:5]
  %tmp.cast = zext i9 %tmp to i10, !dbg !117      ; [#uses=1 type=i10] [debug line = 63:5]
  %tmp. = add i10 %tmp.cast, %tmp.7.cast, !dbg !117 ; [#uses=1 type=i10] [debug line = 63:5]
  %tmp.12.cast = zext i10 %tmp. to i11, !dbg !117 ; [#uses=1 type=i11] [debug line = 63:5]
  %.neg6 = sub i11 %tmp.12.cast, %tmp.9.cast, !dbg !117 ; [#uses=1 type=i11] [debug line = 63:5]
  %.neg4 = sub i11 %.neg6, %tmp.3.cast, !dbg !117 ; [#uses=1 type=i11] [debug line = 63:5]
  %tmp.5 = sub i11 %.neg4, %tmp.10.cast, !dbg !117 ; [#uses=4 type=i11] [debug line = 63:5]
  %tmp.13.cast = sext i11 %tmp.5 to i32, !dbg !117 ; [#uses=1 type=i32] [debug line = 63:5]
  store i32 %tmp.13.cast, i32* @Gx, align 4, !dbg !117 ; [debug line = 63:5]
  %tmp.14.cast = zext i8 %window_buffer.load.1 to i9, !dbg !118 ; [#uses=1 type=i9] [debug line = 67:5]
  %tmp.6 = shl nuw i9 %tmp.14.cast, 1, !dbg !118  ; [#uses=1 type=i9] [debug line = 67:5]
  %tmp.15.cast = zext i9 %tmp.6 to i11, !dbg !118 ; [#uses=1 type=i11] [debug line = 67:5]
  %tmp.16.cast = zext i8 %window_buffer.load.5 to i9, !dbg !118 ; [#uses=1 type=i9] [debug line = 67:5]
  %tmp.8 = shl nuw i9 %tmp.16.cast, 1, !dbg !118  ; [#uses=1 type=i9] [debug line = 67:5]
  %tmp.17.cast = zext i9 %tmp.8 to i11, !dbg !118 ; [#uses=1 type=i11] [debug line = 67:5]
  %tmp.9 = sub i9 %tmp.5.cast, %tmp.8.cast, !dbg !118 ; [#uses=1 type=i9] [debug line = 67:5]
  %tmp.18.cast = sext i9 %tmp.9 to i10, !dbg !118 ; [#uses=1 type=i10] [debug line = 67:5]
  %tmp.10 = add i10 %tmp.18.cast, %tmp.9.cast2, !dbg !118 ; [#uses=1 type=i10] [debug line = 67:5]
  %.neg7 = sub i10 %tmp.10, %tmp.10.cast1, !dbg !118 ; [#uses=1 type=i10] [debug line = 67:5]
  %.neg7.cast = sext i10 %.neg7 to i11, !dbg !118 ; [#uses=1 type=i11] [debug line = 67:5]
  %.neg9 = add i11 %tmp.15.cast, %.neg7.cast, !dbg !118 ; [#uses=1 type=i11] [debug line = 67:5]
  %tmp.11 = sub i11 %.neg9, %tmp.17.cast, !dbg !118 ; [#uses=4 type=i11] [debug line = 67:5]
  %tmp.20.cast = sext i11 %tmp.11 to i32, !dbg !118 ; [#uses=1 type=i32] [debug line = 67:5]
  store i32 %tmp.20.cast, i32* @Gy, align 4, !dbg !118 ; [debug line = 67:5]
  %tmp.12 = trunc i11 %tmp.5 to i8                ; [#uses=1 type=i8]
  %abscond = icmp sgt i11 %tmp.5, 0               ; [#uses=1 type=i1]
  %tmp.13 = trunc i11 %tmp.5 to i8                ; [#uses=1 type=i8]
  %tmp.14 = sub i8 0, %tmp.12                     ; [#uses=1 type=i8]
  %tmp.15 = select i1 %abscond, i8 %tmp.13, i8 %tmp.14 ; [#uses=1 type=i8]
  %tmp.16 = trunc i11 %tmp.11 to i8               ; [#uses=1 type=i8]
  %abscond1 = icmp sgt i11 %tmp.11, 0             ; [#uses=1 type=i1]
  %tmp.17 = trunc i11 %tmp.11 to i8               ; [#uses=1 type=i8]
  %tmp.18 = sub i8 0, %tmp.16                     ; [#uses=1 type=i8]
  %tmp.19 = select i1 %abscond1, i8 %tmp.17, i8 %tmp.18 ; [#uses=1 type=i8]
  %tmp.20 = add i8 %tmp.15, %tmp.19, !dbg !119    ; [#uses=1 type=i8] [debug line = 72:36]
  store volatile i8 %tmp.20, i8* %output_image, align 1, !dbg !119 ; [debug line = 72:36]
  %9 = call i32 (...)* @_ssdm_op_SpecRegionEnd([6 x i8]* @.str1, i32 %tmp.2) nounwind, !dbg !120 ; [#uses=0 type=i32] [debug line = 76:3]
  %j.1 = add i10 %j, 1, !dbg !121                 ; [#uses=1 type=i10] [debug line = 43:31]
  call void @llvm.dbg.value(metadata !{i10 %j.1}, i64 0, metadata !122), !dbg !121 ; [debug line = 43:31] [debug variable = j]
  br label %6, !dbg !121                          ; [debug line = 43:31]

; <label>:10                                      ; preds = %6
  %11 = call i32 (...)* @_ssdm_op_SpecRegionEnd([6 x i8]* @.str, i32 %tmp.1) nounwind, !dbg !123 ; [#uses=0 type=i32] [debug line = 77:2]
  %i.1 = add i9 %i, 1, !dbg !124                  ; [#uses=1 type=i9] [debug line = 41:30]
  call void @llvm.dbg.value(metadata !{i9 %i.1}, i64 0, metadata !125), !dbg !124 ; [debug line = 41:30] [debug variable = i]
  br label %3, !dbg !124                          ; [debug line = 41:30]

; <label>:12                                      ; preds = %3
  ret i32 undef, !dbg !126                        ; [debug line = 79:1]
}

; [#uses=4]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=2]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=2]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=1]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=2]
declare i32 @_ssdm_op_SpecLoopTripCount(...)

; [#uses=2]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=2]
declare i32 @_ssdm_op_SpecInterface(...)

; [#uses=3]
declare void @_ssdm_op_SpecBitsMap(...)

; [#uses=1]
declare void @_ssdm_SpecDependence(...) nounwind

; [#uses=4]
declare void @_ssdm_SpecArrayMap(...) nounwind

; [#uses=1]
declare void @_GLOBAL__I_a() nounwind

!hls.encrypted.func = !{}
!llvm.map.gv = !{!0, !7, !14, !21, !26}
!llvm.dbg.cu = !{!31}

!0 = metadata !{metadata !1, [3 x [3 x i8]]* @window_buffer}
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0, i32 7, metadata !3}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !"window_buffer", metadata !5, metadata !"unsigned char", i32 0, i32 7}
!5 = metadata !{metadata !6, metadata !6}
!6 = metadata !{i32 0, i32 2, i32 1}
!7 = metadata !{metadata !8, [1 x i32]* @llvm.global_ctors.0}
!8 = metadata !{metadata !9}
!9 = metadata !{i32 0, i32 31, metadata !10}
!10 = metadata !{metadata !11}
!11 = metadata !{metadata !"llvm.global_ctors.0", metadata !12, metadata !"", i32 0, i32 31}
!12 = metadata !{metadata !13}
!13 = metadata !{i32 0, i32 0, i32 1}
!14 = metadata !{metadata !15, [3 x [640 x i8]]* @line_buffer}
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
!31 = metadata !{i32 786449, i32 0, i32 4, metadata !"C:/Users/xiz36/Desktop/hw2_sobel/hw2_sobel/sobel/solution1/.autopilot/db/sobel.pragma.2.cpp", metadata !"c:/Users/xiz36/Desktop/hw2_sobel/hw2_sobel", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, null, null, null, metadata !32} ; [ DW_TAG_compile_unit ]
!32 = metadata !{metadata !33}
!33 = metadata !{metadata !34, metadata !41, metadata !44, metadata !46, metadata !47, metadata !47, metadata !47, metadata !50, metadata !47, metadata !47, metadata !47, metadata !50, metadata !51, metadata !60, metadata !62, metadata !63, metadata !64}
!34 = metadata !{i32 786484, i32 0, null, metadata !"line_buffer", metadata !"line_buffer", metadata !"", metadata !35, i32 33, metadata !36, i32 0, i32 1, [3 x [640 x i8]]* @line_buffer} ; [ DW_TAG_variable ]
!35 = metadata !{i32 786473, metadata !"sobel.cpp", metadata !"c:/Users/xiz36/Desktop/hw2_sobel/hw2_sobel", null} ; [ DW_TAG_file_type ]
!36 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 15360, i64 8, i32 0, i32 0, metadata !37, metadata !38, i32 0, i32 0} ; [ DW_TAG_array_type ]
!37 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!38 = metadata !{metadata !39, metadata !40}
!39 = metadata !{i32 786465, i64 0, i64 2}        ; [ DW_TAG_subrange_type ]
!40 = metadata !{i32 786465, i64 0, i64 639}      ; [ DW_TAG_subrange_type ]
!41 = metadata !{i32 786484, i32 0, null, metadata !"window_buffer", metadata !"window_buffer", metadata !"", metadata !35, i32 34, metadata !42, i32 0, i32 1, [3 x [3 x i8]]* @window_buffer} ; [ DW_TAG_variable ]
!42 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 72, i64 8, i32 0, i32 0, metadata !37, metadata !43, i32 0, i32 0} ; [ DW_TAG_array_type ]
!43 = metadata !{metadata !39, metadata !39}
!44 = metadata !{i32 786484, i32 0, null, metadata !"Gy", metadata !"Gy", metadata !"", metadata !35, i32 10, metadata !45, i32 0, i32 1, i32* @Gy} ; [ DW_TAG_variable ]
!45 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!46 = metadata !{i32 786484, i32 0, null, metadata !"Gx", metadata !"Gx", metadata !"", metadata !35, i32 10, metadata !45, i32 0, i32 1, i32* @Gx} ; [ DW_TAG_variable ]
!47 = metadata !{i32 786484, i32 0, metadata !48, metadata !"IMG_H", metadata !"IMG_H", metadata !"IMG_H", metadata !48, i32 8, metadata !49, i32 1, i32 1, i32 480} ; [ DW_TAG_variable ]
!48 = metadata !{i32 786473, metadata !"./sobel.h", metadata !"c:/Users/xiz36/Desktop/hw2_sobel/hw2_sobel", null} ; [ DW_TAG_file_type ]
!49 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !45} ; [ DW_TAG_const_type ]
!50 = metadata !{i32 786484, i32 0, metadata !48, metadata !"IMG_W", metadata !"IMG_W", metadata !"IMG_W", metadata !48, i32 7, metadata !49, i32 1, i32 1, i32 640} ; [ DW_TAG_variable ]
!51 = metadata !{i32 786484, i32 0, null, metadata !"ssdm_global_array_ins", metadata !"ssdm_global_array_ins", metadata !"_ZL21ssdm_global_array_ins", metadata !35, i32 89, metadata !52, i32 1, i32 1, null} ; [ DW_TAG_variable ]
!52 = metadata !{i32 786434, null, metadata !"ssdm_global_array_sobelpp0cppaplinecpp", metadata !35, i32 81, i64 8, i64 8, i32 0, i32 0, null, metadata !53, i32 0, null, null} ; [ DW_TAG_class_type ]
!53 = metadata !{metadata !54}
!54 = metadata !{i32 786478, i32 0, metadata !52, metadata !"ssdm_global_array_sobelpp0cppaplinecpp", metadata !"ssdm_global_array_sobelpp0cppaplinecpp", metadata !"", metadata !35, i32 83, metadata !55, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !58, i32 83} ; [ DW_TAG_subprogram ]
!55 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !56, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!56 = metadata !{null, metadata !57}
!57 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !52} ; [ DW_TAG_pointer_type ]
!58 = metadata !{metadata !59}
!59 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!60 = metadata !{i32 786484, i32 0, null, metadata !"_sys_nerr", metadata !"_sys_nerr", metadata !"", metadata !61, i32 157, metadata !45, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!61 = metadata !{i32 786473, metadata !"C:/Xilinx/Vivado_HLS/2015.4/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\5Cstdlib.h", metadata !"c:/Users/xiz36/Desktop/hw2_sobel/hw2_sobel", null} ; [ DW_TAG_file_type ]
!62 = metadata !{i32 786484, i32 0, null, metadata !"IMAGE_SIZE", metadata !"IMAGE_SIZE", metadata !"_ZL10IMAGE_SIZE", metadata !48, i32 9, metadata !49, i32 1, i32 1, null} ; [ DW_TAG_variable ]
!63 = metadata !{i32 786484, i32 0, null, metadata !"IMG_H", metadata !"IMG_H", metadata !"_ZL5IMG_H", metadata !48, i32 8, metadata !49, i32 1, i32 1, null} ; [ DW_TAG_variable ]
!64 = metadata !{i32 786484, i32 0, null, metadata !"IMG_W", metadata !"IMG_W", metadata !"_ZL5IMG_W", metadata !48, i32 7, metadata !49, i32 1, i32 1, null} ; [ DW_TAG_variable ]
!65 = metadata !{metadata !66}
!66 = metadata !{i32 0, i32 7, metadata !67}
!67 = metadata !{metadata !68}
!68 = metadata !{metadata !"input_image", metadata !69, metadata !"unsigned char", i32 0, i32 7}
!69 = metadata !{metadata !70, metadata !20}
!70 = metadata !{i32 0, i32 479, i32 1}
!71 = metadata !{metadata !72}
!72 = metadata !{i32 0, i32 7, metadata !73}
!73 = metadata !{metadata !74}
!74 = metadata !{metadata !"output_image", metadata !69, metadata !"unsigned char", i32 0, i32 7}
!75 = metadata !{metadata !76}
!76 = metadata !{i32 0, i32 31, metadata !77}
!77 = metadata !{metadata !78}
!78 = metadata !{metadata !"return", metadata !79, metadata !"int", i32 0, i32 31}
!79 = metadata !{metadata !80}
!80 = metadata !{i32 0, i32 1, i32 0}
!81 = metadata !{i32 786689, metadata !82, metadata !"input_image", null, i32 36, metadata !89, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!82 = metadata !{i32 786478, i32 0, metadata !35, metadata !"sobel", metadata !"sobel", metadata !"_Z5sobelPA640_hS0_", metadata !35, i32 36, metadata !83, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !58, i32 37} ; [ DW_TAG_subprogram ]
!83 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !84, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!84 = metadata !{metadata !45, metadata !85, metadata !85}
!85 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !86} ; [ DW_TAG_pointer_type ]
!86 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 5120, i64 8, i32 0, i32 0, metadata !87, metadata !88, i32 0, i32 0} ; [ DW_TAG_array_type ]
!87 = metadata !{i32 786454, null, metadata !"BYTE", metadata !35, i32 6, i64 0, i64 0, i64 0, i32 0, metadata !37} ; [ DW_TAG_typedef ]
!88 = metadata !{metadata !40}
!89 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 2457600, i64 8, i32 0, i32 0, metadata !87, metadata !90, i32 0, i32 0} ; [ DW_TAG_array_type ]
!90 = metadata !{metadata !91, metadata !40}
!91 = metadata !{i32 786465, i64 0, i64 479}      ; [ DW_TAG_subrange_type ]
!92 = metadata !{i32 36, i32 16, metadata !82, null}
!93 = metadata !{i32 786689, metadata !82, metadata !"output_image", null, i32 36, metadata !89, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!94 = metadata !{i32 36, i32 48, metadata !82, null}
!95 = metadata !{i32 38, i32 1, metadata !96, null}
!96 = metadata !{i32 786443, metadata !82, i32 37, i32 1, metadata !35, i32 5} ; [ DW_TAG_lexical_block ]
!97 = metadata !{i32 41, i32 19, metadata !98, null}
!98 = metadata !{i32 786443, metadata !96, i32 41, i32 7, metadata !35, i32 6} ; [ DW_TAG_lexical_block ]
!99 = metadata !{i32 42, i32 3, metadata !100, null}
!100 = metadata !{i32 786443, metadata !98, i32 42, i32 2, metadata !35, i32 7} ; [ DW_TAG_lexical_block ]
!101 = metadata !{i32 43, i32 1, metadata !100, null}
!102 = metadata !{i32 43, i32 20, metadata !103, null}
!103 = metadata !{i32 786443, metadata !100, i32 43, i32 8, metadata !35, i32 8} ; [ DW_TAG_lexical_block ]
!104 = metadata !{i32 44, i32 4, metadata !105, null}
!105 = metadata !{i32 786443, metadata !103, i32 44, i32 3, metadata !35, i32 9} ; [ DW_TAG_lexical_block ]
!106 = metadata !{i32 45, i32 1, metadata !105, null}
!107 = metadata !{i32 48, i32 10, metadata !108, null}
!108 = metadata !{i32 786443, metadata !109, i32 47, i32 37, metadata !35, i32 11} ; [ DW_TAG_lexical_block ]
!109 = metadata !{i32 786443, metadata !105, i32 47, i32 17, metadata !35, i32 10} ; [ DW_TAG_lexical_block ]
!110 = metadata !{i32 49, i32 10, metadata !108, null}
!111 = metadata !{i32 52, i32 4, metadata !105, null}
!112 = metadata !{i32 53, i32 4, metadata !105, null}
!113 = metadata !{i32 54, i32 4, metadata !105, null}
!114 = metadata !{i32 55, i32 4, metadata !105, null}
!115 = metadata !{i32 55, i32 45, metadata !105, null}
!116 = metadata !{i32 55, i32 86, metadata !105, null}
!117 = metadata !{i32 63, i32 5, metadata !105, null}
!118 = metadata !{i32 67, i32 5, metadata !105, null}
!119 = metadata !{i32 72, i32 36, metadata !105, null}
!120 = metadata !{i32 76, i32 3, metadata !105, null}
!121 = metadata !{i32 43, i32 31, metadata !103, null}
!122 = metadata !{i32 786688, metadata !103, metadata !"j", metadata !35, i32 43, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!123 = metadata !{i32 77, i32 2, metadata !100, null}
!124 = metadata !{i32 41, i32 30, metadata !98, null}
!125 = metadata !{i32 786688, metadata !98, metadata !"i", metadata !35, i32 41, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!126 = metadata !{i32 79, i32 1, metadata !96, null}
