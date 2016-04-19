; ModuleID = 'C:/Users/xiz36/Desktop/hw2_sobel/hw2_sobel/sobel/solution1/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@window_buffer = global [3 x [3 x i8]] zeroinitializer, align 1 ; [#uses=12 type=[3 x [3 x i8]]*]
@sobel.str = internal unnamed_addr constant [6 x i8] c"sobel\00" ; [#uses=1 type=[6 x i8]*]
@llvm.global_ctors = appending global [1 x { i32, void ()* }] [{ i32, void ()* } { i32 65535, void ()* @_GLOBAL__I_a }] ; [#uses=0 type=[1 x { i32, void ()* }]*]
@line_buffer = global [3 x [640 x i8]] zeroinitializer, align 16 ; [#uses=4 type=[3 x [640 x i8]]*]
@Gy = global i32 0, align 4                       ; [#uses=1 type=i32*]
@Gx = global i32 0, align 4                       ; [#uses=1 type=i32*]
@.str6 = private unnamed_addr constant [13 x i8] c"SLIDE_WINDOW\00", align 1 ; [#uses=1 type=[13 x i8]*]
@.str5 = private unnamed_addr constant [12 x i8] c"line_buffer\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str3 = private unnamed_addr constant [11 x i8] c"HORIZONTAL\00", align 1 ; [#uses=1 type=[11 x i8]*]
@.str2 = private unnamed_addr constant [14 x i8] c"window_buffer\00", align 1 ; [#uses=1 type=[14 x i8]*]
@.str1 = private unnamed_addr constant [6 x i8] c"IMG_W\00", align 1 ; [#uses=1 type=[6 x i8]*]
@.str = private unnamed_addr constant [6 x i8] c"IMG_H\00", align 1 ; [#uses=1 type=[6 x i8]*]

; [#uses=0]
define i32 @sobel([640 x i8]* %input_image, [640 x i8]* %output_image) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(i32 0) nounwind, !map !48
  call void (...)* @_ssdm_op_SpecTopModule([6 x i8]* @sobel.str) nounwind
  call void @llvm.dbg.value(metadata !{[640 x i8]* %input_image}, i64 0, metadata !54), !dbg !55 ; [debug line = 36:16] [debug variable = input_image]
  call void @llvm.dbg.value(metadata !{[640 x i8]* %output_image}, i64 0, metadata !56), !dbg !57 ; [debug line = 36:48] [debug variable = output_image]
  call void (...)* @_ssdm_SpecArrayDimSize([640 x i8]* %input_image, i32 480) nounwind, !dbg !58 ; [debug line = 37:2]
  call void (...)* @_ssdm_SpecArrayDimSize([640 x i8]* %output_image, i32 480) nounwind, !dbg !60 ; [debug line = 37:44]
  call void (...)* @_ssdm_SpecArrayMap([3 x i8]* getelementptr inbounds ([3 x [3 x i8]]* @window_buffer, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str2, i64 0, i64 0), i32 -1, i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str4, i64 0, i64 0)) nounwind, !dbg !61 ; [debug line = 38:1]
  call void (...)* @_ssdm_SpecArrayMap([640 x i8]* getelementptr inbounds ([3 x [640 x i8]]* @line_buffer, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str5, i64 0, i64 0), i32 -1, i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str4, i64 0, i64 0)) nounwind, !dbg !61 ; [debug line = 38:1]
  call void (...)* @_ssdm_SpecStream([640 x i8]* %output_image, i32 2, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str4, i64 0, i64 0)) nounwind, !dbg !61 ; [debug line = 38:1]
  call void (...)* @_ssdm_SpecStream([640 x i8]* %input_image, i32 2, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str4, i64 0, i64 0)) nounwind, !dbg !61 ; [debug line = 38:1]
  call void (...)* @_ssdm_SpecArrayMap([3 x i8]* getelementptr inbounds ([3 x [3 x i8]]* @window_buffer, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str2, i64 0, i64 0), i32 -1, i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str4, i64 0, i64 0)) nounwind, !dbg !61 ; [debug line = 38:1]
  call void (...)* @_ssdm_SpecArrayMap([640 x i8]* getelementptr inbounds ([3 x [640 x i8]]* @line_buffer, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str5, i64 0, i64 0), i32 -1, i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str4, i64 0, i64 0)) nounwind, !dbg !61 ; [debug line = 38:1]
  br label %1, !dbg !62                           ; [debug line = 41:19]

; <label>:1                                       ; preds = %8, %0
  %i = phi i32 [ 0, %0 ], [ %i.1, %8 ]            ; [#uses=4 type=i32]
  %exitcond2 = icmp eq i32 %i, 480, !dbg !62      ; [#uses=1 type=i1] [debug line = 41:19]
  br i1 %exitcond2, label %9, label %2, !dbg !62  ; [debug line = 41:19]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([6 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !64 ; [debug line = 42:3]
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([6 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !64 ; [#uses=1 type=i32] [debug line = 42:3]
  call void (...)* @_ssdm_SpecDependence([640 x i8]* getelementptr inbounds ([3 x [640 x i8]]* @line_buffer, i64 0, i64 0), i32 0, i32 0, i32 -1, i32 0, i32 1) nounwind, !dbg !66 ; [debug line = 43:1]
  %tmp = sext i32 %i to i64, !dbg !67             ; [#uses=1 type=i64] [debug line = 54:4]
  %tmp.1 = add nsw i32 %i, -1, !dbg !70           ; [#uses=1 type=i32] [debug line = 72:36]
  %tmp.2 = sext i32 %tmp.1 to i64, !dbg !70       ; [#uses=1 type=i64] [debug line = 72:36]
  br label %3, !dbg !71                           ; [debug line = 43:20]

; <label>:3                                       ; preds = %7, %2
  %j = phi i32 [ 0, %2 ], [ %j.1, %7 ]            ; [#uses=4 type=i32]
  %exitcond1 = icmp eq i32 %j, 640, !dbg !71      ; [#uses=1 type=i1] [debug line = 43:20]
  br i1 %exitcond1, label %8, label %4, !dbg !71  ; [debug line = 43:20]

; <label>:4                                       ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([6 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !72 ; [debug line = 44:4]
  %rbegin1 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([6 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !72 ; [#uses=1 type=i32] [debug line = 44:4]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str4, i64 0, i64 0)) nounwind, !dbg !73 ; [debug line = 45:1]
  br label %5, !dbg !74                           ; [debug line = 47:28]

; <label>:5                                       ; preds = %6, %4
  %k = phi i32 [ 0, %4 ], [ %k.1, %6 ]            ; [#uses=3 type=i32]
  %exitcond = icmp eq i32 %k, 3, !dbg !74         ; [#uses=1 type=i1] [debug line = 47:28]
  br i1 %exitcond, label %7, label %6, !dbg !74   ; [debug line = 47:28]

; <label>:6                                       ; preds = %5
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([13 x i8]* @.str6, i64 0, i64 0)) nounwind, !dbg !76 ; [debug line = 47:38]
  %rbegin2 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([13 x i8]* @.str6, i64 0, i64 0)) nounwind, !dbg !76 ; [#uses=1 type=i32] [debug line = 47:38]
  call void (...)* @_ssdm_Unroll(i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str4, i64 0, i64 0)) nounwind, !dbg !78 ; [debug line = 48:1]
  %tmp.28 = sext i32 %k to i64, !dbg !79          ; [#uses=3 type=i64] [debug line = 48:10]
  %window_buffer.addr = getelementptr inbounds [3 x [3 x i8]]* @window_buffer, i64 0, i64 %tmp.28, i64 1, !dbg !79 ; [#uses=2 type=i8*] [debug line = 48:10]
  %window_buffer.load.5 = load i8* %window_buffer.addr, align 1, !dbg !79 ; [#uses=2 type=i8] [debug line = 48:10]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %window_buffer.load.5) nounwind
  %window_buffer.addr.1 = getelementptr inbounds [3 x [3 x i8]]* @window_buffer, i64 0, i64 %tmp.28, i64 0, !dbg !79 ; [#uses=1 type=i8*] [debug line = 48:10]
  store i8 %window_buffer.load.5, i8* %window_buffer.addr.1, align 1, !dbg !79 ; [debug line = 48:10]
  %window_buffer.addr.2 = getelementptr inbounds [3 x [3 x i8]]* @window_buffer, i64 0, i64 %tmp.28, i64 2, !dbg !80 ; [#uses=1 type=i8*] [debug line = 49:10]
  %window_buffer.load.6 = load i8* %window_buffer.addr.2, align 1, !dbg !80 ; [#uses=2 type=i8] [debug line = 49:10]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %window_buffer.load.6) nounwind
  store i8 %window_buffer.load.6, i8* %window_buffer.addr, align 1, !dbg !80 ; [debug line = 49:10]
  %rend18 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([13 x i8]* @.str6, i64 0, i64 0), i32 %rbegin2) nounwind, !dbg !81 ; [#uses=0 type=i32] [debug line = 50:7]
  %k.1 = add nsw i32 %k, 1, !dbg !82              ; [#uses=1 type=i32] [debug line = 47:33]
  call void @llvm.dbg.value(metadata !{i32 %k.1}, i64 0, metadata !83), !dbg !82 ; [debug line = 47:33] [debug variable = k]
  br label %5, !dbg !82                           ; [debug line = 47:33]

; <label>:7                                       ; preds = %5
  %tmp.4 = sext i32 %j to i64, !dbg !84           ; [#uses=4 type=i64] [debug line = 52:4]
  %line_buffer.addr = getelementptr inbounds [3 x [640 x i8]]* @line_buffer, i64 0, i64 1, i64 %tmp.4, !dbg !84 ; [#uses=2 type=i8*] [debug line = 52:4]
  %line_buffer.load = load i8* %line_buffer.addr, align 1, !dbg !84 ; [#uses=7 type=i8] [debug line = 52:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %line_buffer.load) nounwind
  %line_buffer.addr.1 = getelementptr inbounds [3 x [640 x i8]]* @line_buffer, i64 0, i64 0, i64 %tmp.4, !dbg !84 ; [#uses=1 type=i8*] [debug line = 52:4]
  store i8 %line_buffer.load, i8* %line_buffer.addr.1, align 1, !dbg !84 ; [debug line = 52:4]
  %line_buffer.addr.2 = getelementptr inbounds [3 x [640 x i8]]* @line_buffer, i64 0, i64 2, i64 %tmp.4, !dbg !85 ; [#uses=2 type=i8*] [debug line = 53:4]
  %line_buffer.load.1 = load i8* %line_buffer.addr.2, align 1, !dbg !85 ; [#uses=6 type=i8] [debug line = 53:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %line_buffer.load.1) nounwind
  store i8 %line_buffer.load.1, i8* %line_buffer.addr, align 1, !dbg !85 ; [debug line = 53:4]
  %input_image.addr = getelementptr inbounds [640 x i8]* %input_image, i64 %tmp, i64 %tmp.4, !dbg !67 ; [#uses=1 type=i8*] [debug line = 54:4]
  %input_image.load = load i8* %input_image.addr, align 1, !dbg !67 ; [#uses=7 type=i8] [debug line = 54:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %input_image.load) nounwind
  store i8 %input_image.load, i8* %line_buffer.addr.2, align 1, !dbg !67 ; [debug line = 54:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %line_buffer.load) nounwind
  store i8 %line_buffer.load, i8* getelementptr inbounds ([3 x [3 x i8]]* @window_buffer, i64 0, i64 0, i64 2), align 1, !dbg !86 ; [debug line = 55:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %line_buffer.load.1) nounwind
  store i8 %line_buffer.load.1, i8* getelementptr inbounds ([3 x [3 x i8]]* @window_buffer, i64 0, i64 1, i64 2), align 1, !dbg !87 ; [debug line = 55:45]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %input_image.load) nounwind
  store i8 %input_image.load, i8* getelementptr inbounds ([3 x [3 x i8]]* @window_buffer, i64 0, i64 2, i64 2), align 1, !dbg !88 ; [debug line = 55:86]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %line_buffer.load) nounwind
  %tmp.5 = zext i8 %line_buffer.load to i32, !dbg !89 ; [#uses=2 type=i32] [debug line = 63:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %line_buffer.load.1) nounwind
  %tmp.6 = zext i8 %line_buffer.load.1 to i32, !dbg !89 ; [#uses=1 type=i32] [debug line = 63:5]
  %tmp.7 = mul i32 %tmp.6, 2, !dbg !89            ; [#uses=1 type=i32] [debug line = 63:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %input_image.load) nounwind
  %tmp.8 = zext i8 %input_image.load to i32, !dbg !89 ; [#uses=2 type=i32] [debug line = 63:5]
  %window_buffer.load = load i8* getelementptr inbounds ([3 x [3 x i8]]* @window_buffer, i64 0, i64 0, i64 0), align 1, !dbg !89 ; [#uses=3 type=i8] [debug line = 63:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %window_buffer.load) nounwind
  %tmp.9 = zext i8 %window_buffer.load to i32, !dbg !89 ; [#uses=2 type=i32] [debug line = 63:5]
  %window_buffer.load.1 = load i8* getelementptr inbounds ([3 x [3 x i8]]* @window_buffer, i64 0, i64 1, i64 0), align 1, !dbg !89 ; [#uses=2 type=i8] [debug line = 63:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %window_buffer.load.1) nounwind
  %tmp.10 = zext i8 %window_buffer.load.1 to i32, !dbg !89 ; [#uses=1 type=i32] [debug line = 63:5]
  %tmp.11 = shl nuw nsw i32 %tmp.10, 1, !dbg !89  ; [#uses=1 type=i32] [debug line = 63:5]
  %window_buffer.load.2 = load i8* getelementptr inbounds ([3 x [3 x i8]]* @window_buffer, i64 0, i64 2, i64 0), align 1, !dbg !89 ; [#uses=3 type=i8] [debug line = 63:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %window_buffer.load.2) nounwind
  %tmp.12 = zext i8 %window_buffer.load.2 to i32, !dbg !89 ; [#uses=1 type=i32] [debug line = 63:5]
  %.neg1 = sub i32 0, %tmp.12                     ; [#uses=2 type=i32]
  %.neg = sub i32 0, %tmp.9                       ; [#uses=1 type=i32]
  %.neg2 = sub i32 0, %tmp.11                     ; [#uses=1 type=i32]
  %tmp.13 = add i32 %tmp.7, %tmp.5, !dbg !89      ; [#uses=1 type=i32] [debug line = 63:5]
  %tmp.14 = add i32 %tmp.13, %tmp.8, !dbg !89     ; [#uses=1 type=i32] [debug line = 63:5]
  %.neg6 = add i32 %tmp.14, %.neg, !dbg !89       ; [#uses=1 type=i32] [debug line = 63:5]
  %.neg4 = add i32 %.neg6, %.neg2, !dbg !89       ; [#uses=1 type=i32] [debug line = 63:5]
  %tmp.15 = add i32 %.neg4, %.neg1, !dbg !89      ; [#uses=4 type=i32] [debug line = 63:5]
  store i32 %tmp.15, i32* @Gx, align 4, !dbg !89  ; [debug line = 63:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %window_buffer.load) nounwind
  %window_buffer.load.3 = load i8* getelementptr inbounds ([3 x [3 x i8]]* @window_buffer, i64 0, i64 0, i64 1), align 1, !dbg !90 ; [#uses=2 type=i8] [debug line = 67:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %window_buffer.load.3) nounwind
  %tmp.16 = zext i8 %window_buffer.load.3 to i32, !dbg !90 ; [#uses=1 type=i32] [debug line = 67:5]
  %tmp.17 = mul i32 %tmp.16, 2, !dbg !90          ; [#uses=1 type=i32] [debug line = 67:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %line_buffer.load) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %window_buffer.load.2) nounwind
  %window_buffer.load.4 = load i8* getelementptr inbounds ([3 x [3 x i8]]* @window_buffer, i64 0, i64 2, i64 1), align 1, !dbg !90 ; [#uses=2 type=i8] [debug line = 67:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %window_buffer.load.4) nounwind
  %tmp.18 = zext i8 %window_buffer.load.4 to i32, !dbg !90 ; [#uses=1 type=i32] [debug line = 67:5]
  %tmp.19 = shl nuw nsw i32 %tmp.18, 1, !dbg !90  ; [#uses=1 type=i32] [debug line = 67:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %input_image.load) nounwind
  %.neg3 = sub i32 0, %tmp.19                     ; [#uses=1 type=i32]
  %.neg5 = sub i32 0, %tmp.8                      ; [#uses=1 type=i32]
  %tmp.20 = add i32 %.neg5, %tmp.5, !dbg !90      ; [#uses=1 type=i32] [debug line = 67:5]
  %tmp.21 = add i32 %tmp.20, %tmp.9, !dbg !90     ; [#uses=1 type=i32] [debug line = 67:5]
  %.neg7 = add i32 %tmp.21, %.neg1, !dbg !90      ; [#uses=1 type=i32] [debug line = 67:5]
  %.neg9 = add i32 %.neg7, %tmp.17, !dbg !90      ; [#uses=1 type=i32] [debug line = 67:5]
  %tmp.22 = add i32 %.neg9, %.neg3, !dbg !90      ; [#uses=4 type=i32] [debug line = 67:5]
  store i32 %tmp.22, i32* @Gy, align 4, !dbg !90  ; [debug line = 67:5]
  %neg = sub i32 0, %tmp.15                       ; [#uses=1 type=i32]
  %abscond = icmp sgt i32 %tmp.15, 0              ; [#uses=1 type=i1]
  %abs = select i1 %abscond, i32 %tmp.15, i32 %neg ; [#uses=1 type=i32]
  %neg1 = sub i32 0, %tmp.22                      ; [#uses=1 type=i32]
  %abscond1 = icmp sgt i32 %tmp.22, 0             ; [#uses=1 type=i1]
  %abs1 = select i1 %abscond1, i32 %tmp.22, i32 %neg1 ; [#uses=1 type=i32]
  %tmp.23 = add nsw i32 %abs1, %abs, !dbg !70     ; [#uses=1 type=i32] [debug line = 72:36]
  %tmp.24 = trunc i32 %tmp.23 to i8, !dbg !70     ; [#uses=1 type=i8] [debug line = 72:36]
  %tmp.25 = add nsw i32 %j, -1, !dbg !70          ; [#uses=1 type=i32] [debug line = 72:36]
  %tmp.26 = sext i32 %tmp.25 to i64, !dbg !70     ; [#uses=1 type=i64] [debug line = 72:36]
  %output_image.addr = getelementptr inbounds [640 x i8]* %output_image, i64 %tmp.2, i64 %tmp.26, !dbg !70 ; [#uses=1 type=i8*] [debug line = 72:36]
  store i8 %tmp.24, i8* %output_image.addr, align 1, !dbg !70 ; [debug line = 72:36]
  %rend16 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([6 x i8]* @.str1, i64 0, i64 0), i32 %rbegin1) nounwind, !dbg !91 ; [#uses=0 type=i32] [debug line = 76:3]
  %j.1 = add nsw i32 %j, 1, !dbg !92              ; [#uses=1 type=i32] [debug line = 43:31]
  call void @llvm.dbg.value(metadata !{i32 %j.1}, i64 0, metadata !93), !dbg !92 ; [debug line = 43:31] [debug variable = j]
  br label %3, !dbg !92                           ; [debug line = 43:31]

; <label>:8                                       ; preds = %3
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([6 x i8]* @.str, i64 0, i64 0), i32 %rbegin) nounwind, !dbg !94 ; [#uses=0 type=i32] [debug line = 77:2]
  %i.1 = add nsw i32 %i, 1, !dbg !95              ; [#uses=1 type=i32] [debug line = 41:30]
  call void @llvm.dbg.value(metadata !{i32 %i.1}, i64 0, metadata !96), !dbg !95 ; [debug line = 41:30] [debug variable = i]
  br label %1, !dbg !95                           ; [debug line = 41:30]

; <label>:9                                       ; preds = %1
  ret i32 undef, !dbg !97                         ; [debug line = 79:1]
}

; [#uses=5]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=3]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=3]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=1]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=3]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=1]
declare void @_ssdm_op_SpecBitsMap(...)

; [#uses=1]
declare void @_ssdm_Unroll(...) nounwind

; [#uses=2]
declare void @_ssdm_SpecStream(...) nounwind

; [#uses=20]
declare void @_ssdm_SpecKeepArrayLoad(...)

; [#uses=1]
declare void @_ssdm_SpecDependence(...) nounwind

; [#uses=4]
declare void @_ssdm_SpecArrayMap(...) nounwind

; [#uses=2]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

; [#uses=1]
declare void @_GLOBAL__I_a() nounwind

!llvm.dbg.cu = !{!0}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"C:/Users/xiz36/Desktop/hw2_sobel/hw2_sobel/sobel/solution1/.autopilot/db/sobel.pragma.2.cpp", metadata !"c:/Users/xiz36/Desktop/hw2_sobel/hw2_sobel", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !27} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !18, metadata !19, metadata !26}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"sobel_truth", metadata !"sobel_truth", metadata !"_Z11sobel_truthPA640_hS0_", metadata !6, i32 12, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !16, i32 13} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"sobel.cpp", metadata !"c:/Users/xiz36/Desktop/hw2_sobel/hw2_sobel", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{metadata !9, metadata !10, metadata !10}
!9 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!10 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !11} ; [ DW_TAG_pointer_type ]
!11 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 5120, i64 8, i32 0, i32 0, metadata !12, metadata !14, i32 0, i32 0} ; [ DW_TAG_array_type ]
!12 = metadata !{i32 786454, null, metadata !"BYTE", metadata !6, i32 6, i64 0, i64 0, i64 0, i32 0, metadata !13} ; [ DW_TAG_typedef ]
!13 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!14 = metadata !{metadata !15}
!15 = metadata !{i32 786465, i64 0, i64 639}      ; [ DW_TAG_subrange_type ]
!16 = metadata !{metadata !17}
!17 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!18 = metadata !{i32 786478, i32 0, metadata !6, metadata !"sobel", metadata !"sobel", metadata !"_Z5sobelPA640_hS0_", metadata !6, i32 36, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 ([640 x i8]*, [640 x i8]*)* @sobel, null, null, metadata !16, i32 37} ; [ DW_TAG_subprogram ]
!19 = metadata !{i32 786478, i32 0, null, metadata !"ssdm_global_array_sobelpp0cppaplinecpp", metadata !"ssdm_global_array_sobelpp0cppaplinecpp", metadata !"_ZN38ssdm_global_array_sobelpp0cppaplinecppC1Ev", metadata !6, i32 83, metadata !20, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !25, metadata !16, i32 83} ; [ DW_TAG_subprogram ]
!20 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !21, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!21 = metadata !{null, metadata !22}
!22 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !23} ; [ DW_TAG_pointer_type ]
!23 = metadata !{i32 786434, null, metadata !"ssdm_global_array_sobelpp0cppaplinecpp", metadata !6, i32 81, i64 8, i64 8, i32 0, i32 0, null, metadata !24, i32 0, null, null} ; [ DW_TAG_class_type ]
!24 = metadata !{metadata !25}
!25 = metadata !{i32 786478, i32 0, metadata !23, metadata !"ssdm_global_array_sobelpp0cppaplinecpp", metadata !"ssdm_global_array_sobelpp0cppaplinecpp", metadata !"", metadata !6, i32 83, metadata !20, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !16, i32 83} ; [ DW_TAG_subprogram ]
!26 = metadata !{i32 786478, i32 0, null, metadata !"ssdm_global_array_sobelpp0cppaplinecpp", metadata !"ssdm_global_array_sobelpp0cppaplinecpp", metadata !"_ZN38ssdm_global_array_sobelpp0cppaplinecppC2Ev", metadata !6, i32 83, metadata !20, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !25, metadata !16, i32 83} ; [ DW_TAG_subprogram ]
!27 = metadata !{metadata !28}
!28 = metadata !{metadata !29, metadata !30, metadata !31, metadata !31, metadata !31, metadata !34, metadata !35, metadata !39, metadata !31, metadata !31, metadata !31, metadata !34, metadata !42, metadata !43, metadata !45, metadata !46, metadata !47}
!29 = metadata !{i32 786484, i32 0, null, metadata !"Gx", metadata !"Gx", metadata !"", metadata !6, i32 10, metadata !9, i32 0, i32 1, i32* @Gx} ; [ DW_TAG_variable ]
!30 = metadata !{i32 786484, i32 0, null, metadata !"Gy", metadata !"Gy", metadata !"", metadata !6, i32 10, metadata !9, i32 0, i32 1, i32* @Gy} ; [ DW_TAG_variable ]
!31 = metadata !{i32 786484, i32 0, metadata !32, metadata !"IMG_H", metadata !"IMG_H", metadata !"IMG_H", metadata !32, i32 8, metadata !33, i32 1, i32 1, i32 480} ; [ DW_TAG_variable ]
!32 = metadata !{i32 786473, metadata !"./sobel.h", metadata !"c:/Users/xiz36/Desktop/hw2_sobel/hw2_sobel", null} ; [ DW_TAG_file_type ]
!33 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !9} ; [ DW_TAG_const_type ]
!34 = metadata !{i32 786484, i32 0, metadata !32, metadata !"IMG_W", metadata !"IMG_W", metadata !"IMG_W", metadata !32, i32 7, metadata !33, i32 1, i32 1, i32 640} ; [ DW_TAG_variable ]
!35 = metadata !{i32 786484, i32 0, null, metadata !"line_buffer", metadata !"line_buffer", metadata !"", metadata !6, i32 33, metadata !36, i32 0, i32 1, [3 x [640 x i8]]* @line_buffer} ; [ DW_TAG_variable ]
!36 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 15360, i64 8, i32 0, i32 0, metadata !13, metadata !37, i32 0, i32 0} ; [ DW_TAG_array_type ]
!37 = metadata !{metadata !38, metadata !15}
!38 = metadata !{i32 786465, i64 0, i64 2}        ; [ DW_TAG_subrange_type ]
!39 = metadata !{i32 786484, i32 0, null, metadata !"window_buffer", metadata !"window_buffer", metadata !"", metadata !6, i32 34, metadata !40, i32 0, i32 1, [3 x [3 x i8]]* @window_buffer} ; [ DW_TAG_variable ]
!40 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 72, i64 8, i32 0, i32 0, metadata !13, metadata !41, i32 0, i32 0} ; [ DW_TAG_array_type ]
!41 = metadata !{metadata !38, metadata !38}
!42 = metadata !{i32 786484, i32 0, null, metadata !"ssdm_global_array_ins", metadata !"ssdm_global_array_ins", metadata !"_ZL21ssdm_global_array_ins", metadata !6, i32 89, metadata !23, i32 1, i32 1, null} ; [ DW_TAG_variable ]
!43 = metadata !{i32 786484, i32 0, null, metadata !"_sys_nerr", metadata !"_sys_nerr", metadata !"", metadata !44, i32 157, metadata !9, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!44 = metadata !{i32 786473, metadata !"C:/Xilinx/Vivado_HLS/2015.4/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\5Cstdlib.h", metadata !"c:/Users/xiz36/Desktop/hw2_sobel/hw2_sobel", null} ; [ DW_TAG_file_type ]
!45 = metadata !{i32 786484, i32 0, null, metadata !"IMAGE_SIZE", metadata !"IMAGE_SIZE", metadata !"_ZL10IMAGE_SIZE", metadata !32, i32 9, metadata !33, i32 1, i32 1, null} ; [ DW_TAG_variable ]
!46 = metadata !{i32 786484, i32 0, null, metadata !"IMG_H", metadata !"IMG_H", metadata !"_ZL5IMG_H", metadata !32, i32 8, metadata !33, i32 1, i32 1, null} ; [ DW_TAG_variable ]
!47 = metadata !{i32 786484, i32 0, null, metadata !"IMG_W", metadata !"IMG_W", metadata !"_ZL5IMG_W", metadata !32, i32 7, metadata !33, i32 1, i32 1, null} ; [ DW_TAG_variable ]
!48 = metadata !{metadata !49}
!49 = metadata !{i32 0, i32 31, metadata !50}
!50 = metadata !{metadata !51}
!51 = metadata !{metadata !"return", metadata !52, metadata !"int", i32 0, i32 31}
!52 = metadata !{metadata !53}
!53 = metadata !{i32 0, i32 1, i32 0}
!54 = metadata !{i32 786689, metadata !18, metadata !"input_image", metadata !6, i32 16777252, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!55 = metadata !{i32 36, i32 16, metadata !18, null}
!56 = metadata !{i32 786689, metadata !18, metadata !"output_image", metadata !6, i32 33554468, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!57 = metadata !{i32 36, i32 48, metadata !18, null}
!58 = metadata !{i32 37, i32 2, metadata !59, null}
!59 = metadata !{i32 786443, metadata !18, i32 37, i32 1, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!60 = metadata !{i32 37, i32 44, metadata !59, null}
!61 = metadata !{i32 38, i32 1, metadata !59, null}
!62 = metadata !{i32 41, i32 19, metadata !63, null}
!63 = metadata !{i32 786443, metadata !59, i32 41, i32 7, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!64 = metadata !{i32 42, i32 3, metadata !65, null}
!65 = metadata !{i32 786443, metadata !63, i32 42, i32 2, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!66 = metadata !{i32 43, i32 1, metadata !65, null}
!67 = metadata !{i32 54, i32 4, metadata !68, null}
!68 = metadata !{i32 786443, metadata !69, i32 44, i32 3, metadata !6, i32 9} ; [ DW_TAG_lexical_block ]
!69 = metadata !{i32 786443, metadata !65, i32 43, i32 8, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!70 = metadata !{i32 72, i32 36, metadata !68, null}
!71 = metadata !{i32 43, i32 20, metadata !69, null}
!72 = metadata !{i32 44, i32 4, metadata !68, null}
!73 = metadata !{i32 45, i32 1, metadata !68, null}
!74 = metadata !{i32 47, i32 28, metadata !75, null}
!75 = metadata !{i32 786443, metadata !68, i32 47, i32 17, metadata !6, i32 10} ; [ DW_TAG_lexical_block ]
!76 = metadata !{i32 47, i32 38, metadata !77, null}
!77 = metadata !{i32 786443, metadata !75, i32 47, i32 37, metadata !6, i32 11} ; [ DW_TAG_lexical_block ]
!78 = metadata !{i32 48, i32 1, metadata !77, null}
!79 = metadata !{i32 48, i32 10, metadata !77, null}
!80 = metadata !{i32 49, i32 10, metadata !77, null}
!81 = metadata !{i32 50, i32 7, metadata !77, null}
!82 = metadata !{i32 47, i32 33, metadata !75, null}
!83 = metadata !{i32 786688, metadata !75, metadata !"k", metadata !6, i32 47, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!84 = metadata !{i32 52, i32 4, metadata !68, null}
!85 = metadata !{i32 53, i32 4, metadata !68, null}
!86 = metadata !{i32 55, i32 4, metadata !68, null}
!87 = metadata !{i32 55, i32 45, metadata !68, null}
!88 = metadata !{i32 55, i32 86, metadata !68, null}
!89 = metadata !{i32 63, i32 5, metadata !68, null}
!90 = metadata !{i32 67, i32 5, metadata !68, null}
!91 = metadata !{i32 76, i32 3, metadata !68, null}
!92 = metadata !{i32 43, i32 31, metadata !69, null}
!93 = metadata !{i32 786688, metadata !69, metadata !"j", metadata !6, i32 43, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!94 = metadata !{i32 77, i32 2, metadata !65, null}
!95 = metadata !{i32 41, i32 30, metadata !63, null}
!96 = metadata !{i32 786688, metadata !63, metadata !"i", metadata !6, i32 41, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!97 = metadata !{i32 79, i32 1, metadata !59, null}
