; ModuleID = 'C:/Users/windows-10-vm1/Desktop/github/30-202_DIC/30-202_hw-1/hls_test_error/hls_test_error/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f80:128:128-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S32"
target triple = "i686-pc-mingw32"

@sha256_top.str = internal unnamed_addr constant [11 x i8] c"sha256_top\00" ; [#uses=1 type=[11 x i8]*]
@k = constant [64 x i32] [i32 1116352408, i32 1899447441, i32 -1245643825, i32 -373957723, i32 961987163, i32 1508970993, i32 -1841331548, i32 -1424204075, i32 -670586216, i32 310598401, i32 607225278, i32 1426881987, i32 1925078388, i32 -2132889090, i32 -1680079193, i32 -1046744716, i32 -459576895, i32 -272742522, i32 264347078, i32 604807628, i32 770255983, i32 1249150122, i32 1555081692, i32 1996064986, i32 -1740746414, i32 -1473132947, i32 -1341970488, i32 -1084653625, i32 -958395405, i32 -710438585, i32 113926993, i32 338241895, i32 666307205, i32 773529912, i32 1294757372, i32 1396182291, i32 1695183700, i32 1986661051, i32 -2117940946, i32 -1838011259, i32 -1564481375, i32 -1474664885, i32 -1035236496, i32 -949202525, i32 -778901479, i32 -694614492, i32 -200395387, i32 275423344, i32 430227734, i32 506948616, i32 659060556, i32 883997877, i32 958139571, i32 1322822218, i32 1537002063, i32 1747873779, i32 1955562222, i32 2024104815, i32 -2067236844, i32 -1933114872, i32 -1866530822, i32 -1538233109, i32 -1090935817, i32 -965641998], align 4 ; [#uses=1 type=[64 x i32]*]
@hash = common global [64 x i32] zeroinitializer, align 4 ; [#uses=0 type=[64 x i32]*]
@data = common global [64 x i32] zeroinitializer, align 4 ; [#uses=0 type=[64 x i32]*]
@ctx.state.7 = internal unnamed_addr global i32 0 ; [#uses=4 type=i32*]
@ctx.state.6 = internal unnamed_addr global i32 0 ; [#uses=4 type=i32*]
@ctx.state.5 = internal unnamed_addr global i32 0 ; [#uses=4 type=i32*]
@ctx.state.4 = internal unnamed_addr global i32 0 ; [#uses=4 type=i32*]
@ctx.state.3 = internal unnamed_addr global i32 0 ; [#uses=4 type=i32*]
@ctx.state.2 = internal unnamed_addr global i32 0 ; [#uses=4 type=i32*]
@ctx.state.1 = internal unnamed_addr global i32 0 ; [#uses=4 type=i32*]
@ctx.state.0 = internal unnamed_addr global i32 0 ; [#uses=4 type=i32*]
@ctx.in_data = internal global [64 x i8] zeroinitializer ; [#uses=16 type=[64 x i8]*]
@ctx.datalen = internal unnamed_addr global i32 0 ; [#uses=5 type=i32*]
@ctx.bitlen.1 = internal unnamed_addr global i32 0 ; [#uses=5 type=i32*]
@ctx.bitlen.0 = internal unnamed_addr global i32 0 ; [#uses=5 type=i32*]
@.str2 = private unnamed_addr constant [24 x i8] c"sha256_final_final_loop\00", align 1 ; [#uses=1 type=[24 x i8]*]
@.str1 = private unnamed_addr constant [20 x i8] c"sha256_final_memset\00", align 1 ; [#uses=1 type=[20 x i8]*]

; [#uses=3]
define internal fastcc void @sha256_transform([64 x i8]* nocapture %data_transform) {
  %m = alloca [64 x i32], align 4                 ; [#uses=7 type=[64 x i32]*]
  call void @llvm.dbg.value(metadata !{[64 x i8]* %data_transform}, i64 0, metadata !78), !dbg !86 ; [debug line = 16:80] [debug variable = data_transform]
  call void @llvm.dbg.declare(metadata !{[64 x i32]* %m}, metadata !87), !dbg !89 ; [debug line = 18:61] [debug variable = m]
  br label %1, !dbg !90                           ; [debug line = 20:9]

; <label>:1                                       ; preds = %3, %0
  %i = phi i5 [ 0, %0 ], [ %tmp.9, %3 ]           ; [#uses=3 type=i5]
  %j = phi i7 [ 0, %0 ], [ %j.1, %3 ]             ; [#uses=3 type=i7]
  %i.cast = zext i5 %i to i32, !dbg !90           ; [#uses=1 type=i32] [debug line = 20:9]
  %j.cast1 = trunc i7 %j to i6, !dbg !90          ; [#uses=3 type=i6] [debug line = 20:9]
  %j.cast = zext i7 %j to i32, !dbg !90           ; [#uses=1 type=i32] [debug line = 20:9]
  %tmp = icmp eq i5 %i, -16, !dbg !90             ; [#uses=1 type=i1] [debug line = 20:9]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) ; [#uses=0 type=i32]
  br i1 %tmp, label %.preheader.preheader, label %3, !dbg !90 ; [debug line = 20:9]

.preheader.preheader:                             ; preds = %1
  br label %.preheader, !dbg !92                  ; [debug line = 22:4]

; <label>:3                                       ; preds = %1
  %data_transform.addr = getelementptr [64 x i8]* %data_transform, i32 0, i32 %j.cast, !dbg !94 ; [#uses=1 type=i8*] [debug line = 21:7]
  %data_transform.load = load i8* %data_transform.addr, align 1, !dbg !94 ; [#uses=1 type=i8] [debug line = 21:7]
  %tmp.8 = or i6 %j.cast1, 1, !dbg !94            ; [#uses=1 type=i6] [debug line = 21:7]
  %tmp.8.cast = zext i6 %tmp.8 to i32, !dbg !94   ; [#uses=1 type=i32] [debug line = 21:7]
  %data_transform.addr.1 = getelementptr [64 x i8]* %data_transform, i32 0, i32 %tmp.8.cast, !dbg !94 ; [#uses=1 type=i8*] [debug line = 21:7]
  %data_transform.load.1 = load i8* %data_transform.addr.1, align 1, !dbg !94 ; [#uses=1 type=i8] [debug line = 21:7]
  %tmp.9.cast = zext i8 %data_transform.load.1 to i24, !dbg !94 ; [#uses=1 type=i24] [debug line = 21:7]
  %tmp. = shl nuw i24 %tmp.9.cast, 16, !dbg !94   ; [#uses=1 type=i24] [debug line = 21:7]
  %tmp.1 = or i6 %j.cast1, 2, !dbg !94            ; [#uses=1 type=i6] [debug line = 21:7]
  %tmp.1.cast = zext i6 %tmp.1 to i32, !dbg !94   ; [#uses=1 type=i32] [debug line = 21:7]
  %data_transform.addr.2 = getelementptr [64 x i8]* %data_transform, i32 0, i32 %tmp.1.cast, !dbg !94 ; [#uses=1 type=i8*] [debug line = 21:7]
  %data_transform.load.2 = load i8* %data_transform.addr.2, align 1, !dbg !94 ; [#uses=1 type=i8] [debug line = 21:7]
  %tmp.2.cast = zext i8 %data_transform.load.2 to i16, !dbg !94 ; [#uses=1 type=i16] [debug line = 21:7]
  %tmp.3 = shl nuw i16 %tmp.2.cast, 8, !dbg !94   ; [#uses=1 type=i16] [debug line = 21:7]
  %tmp.4 = or i6 %j.cast1, 3, !dbg !94            ; [#uses=1 type=i6] [debug line = 21:7]
  %tmp.4.cast = zext i6 %tmp.4 to i32, !dbg !94   ; [#uses=1 type=i32] [debug line = 21:7]
  %data_transform.addr.3 = getelementptr [64 x i8]* %data_transform, i32 0, i32 %tmp.4.cast, !dbg !94 ; [#uses=1 type=i8*] [debug line = 21:7]
  %data_transform.load.3 = load i8* %data_transform.addr.3, align 1, !dbg !94 ; [#uses=1 type=i8] [debug line = 21:7]
  %tmp.2 = call i24 @_ssdm_op_BitConcatenate.i24.i8.i16(i8 0, i16 %tmp.3) ; [#uses=1 type=i24]
  %tmp.5 = or i24 %tmp.2, %tmp.                   ; [#uses=1 type=i24]
  %tmp.6 = call i16 @_ssdm_op_PartSelect.i16.i24.i32.i32(i24 %tmp.5, i32 8, i32 23) ; [#uses=1 type=i16]
  %tmp.7 = call i32 @_ssdm_op_BitConcatenate.i32.i8.i16.i8(i8 %data_transform.load, i16 %tmp.6, i8 %data_transform.load.3), !dbg !94 ; [#uses=1 type=i32] [debug line = 21:7]
  %m.addr = getelementptr inbounds [64 x i32]* %m, i32 0, i32 %i.cast, !dbg !94 ; [#uses=1 type=i32*] [debug line = 21:7]
  store i32 %tmp.7, i32* %m.addr, align 4, !dbg !94 ; [debug line = 21:7]
  %tmp.9 = add i5 %i, 1, !dbg !95                 ; [#uses=1 type=i5] [debug line = 20:26]
  %j.1 = add i7 %j, 4, !dbg !95                   ; [#uses=1 type=i7] [debug line = 20:26]
  call void @llvm.dbg.value(metadata !{i7 %j.1}, i64 0, metadata !96), !dbg !95 ; [debug line = 20:26] [debug variable = j]
  br label %1, !dbg !95                           ; [debug line = 20:26]

.preheader:                                       ; preds = %5, %.preheader.preheader
  %i.1 = phi i7 [ %i.3, %5 ], [ 16, %.preheader.preheader ] ; [#uses=7 type=i7]
  %i.1.cast = zext i7 %i.1 to i32, !dbg !92       ; [#uses=1 type=i32] [debug line = 22:4]
  %exitcond = icmp eq i7 %i.1, -64, !dbg !92      ; [#uses=1 type=i1] [debug line = 22:4]
  %4 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 48, i64 48, i64 48) ; [#uses=0 type=i32]
  br i1 %exitcond, label %6, label %5, !dbg !92   ; [debug line = 22:4]

; <label>:5                                       ; preds = %.preheader
  %tmp.10 = add i7 %i.1, -2, !dbg !97             ; [#uses=1 type=i7] [debug line = 23:7]
  %tmp.14.cast = zext i7 %tmp.10 to i32, !dbg !97 ; [#uses=1 type=i32] [debug line = 23:7]
  %m.addr.1 = getelementptr inbounds [64 x i32]* %m, i32 0, i32 %tmp.14.cast, !dbg !97 ; [#uses=1 type=i32*] [debug line = 23:7]
  %m.load = load i32* %m.addr.1, align 4, !dbg !97 ; [#uses=5 type=i32] [debug line = 23:7]
  %tmp.11 = lshr i32 %m.load, 17, !dbg !97        ; [#uses=1 type=i32] [debug line = 23:7]
  %tmp.12 = shl i32 %m.load, 15, !dbg !97         ; [#uses=1 type=i32] [debug line = 23:7]
  %tmp.13 = or i32 %tmp.12, %tmp.11, !dbg !97     ; [#uses=1 type=i32] [debug line = 23:7]
  %tmp.14 = lshr i32 %m.load, 19, !dbg !97        ; [#uses=1 type=i32] [debug line = 23:7]
  %tmp.15 = shl i32 %m.load, 13, !dbg !97         ; [#uses=1 type=i32] [debug line = 23:7]
  %tmp.16 = or i32 %tmp.15, %tmp.14, !dbg !97     ; [#uses=1 type=i32] [debug line = 23:7]
  %tmp.17 = lshr i32 %m.load, 10, !dbg !97        ; [#uses=1 type=i32] [debug line = 23:7]
  %tmp2 = xor i32 %tmp.17, %tmp.16, !dbg !97      ; [#uses=1 type=i32] [debug line = 23:7]
  %tmp.18 = xor i32 %tmp2, %tmp.13, !dbg !97      ; [#uses=1 type=i32] [debug line = 23:7]
  %tmp.19 = add i7 %i.1, -7, !dbg !97             ; [#uses=1 type=i7] [debug line = 23:7]
  %tmp.24.cast = zext i7 %tmp.19 to i32, !dbg !97 ; [#uses=1 type=i32] [debug line = 23:7]
  %m.addr.2 = getelementptr inbounds [64 x i32]* %m, i32 0, i32 %tmp.24.cast, !dbg !97 ; [#uses=1 type=i32*] [debug line = 23:7]
  %m.load.1 = load i32* %m.addr.2, align 4, !dbg !97 ; [#uses=1 type=i32] [debug line = 23:7]
  %tmp.20 = add i7 %i.1, -15, !dbg !97            ; [#uses=1 type=i7] [debug line = 23:7]
  %tmp.25.cast = zext i7 %tmp.20 to i32, !dbg !97 ; [#uses=1 type=i32] [debug line = 23:7]
  %m.addr.3 = getelementptr inbounds [64 x i32]* %m, i32 0, i32 %tmp.25.cast, !dbg !97 ; [#uses=1 type=i32*] [debug line = 23:7]
  %m.load.2 = load i32* %m.addr.3, align 4, !dbg !97 ; [#uses=5 type=i32] [debug line = 23:7]
  %tmp.21 = lshr i32 %m.load.2, 7, !dbg !97       ; [#uses=1 type=i32] [debug line = 23:7]
  %tmp.22 = shl i32 %m.load.2, 25, !dbg !97       ; [#uses=1 type=i32] [debug line = 23:7]
  %tmp.23 = or i32 %tmp.22, %tmp.21, !dbg !97     ; [#uses=1 type=i32] [debug line = 23:7]
  %tmp.24 = lshr i32 %m.load.2, 18, !dbg !97      ; [#uses=1 type=i32] [debug line = 23:7]
  %tmp.25 = shl i32 %m.load.2, 14, !dbg !97       ; [#uses=1 type=i32] [debug line = 23:7]
  %tmp.26 = or i32 %tmp.25, %tmp.24, !dbg !97     ; [#uses=1 type=i32] [debug line = 23:7]
  %tmp.27 = lshr i32 %m.load.2, 3, !dbg !97       ; [#uses=1 type=i32] [debug line = 23:7]
  %tmp3 = xor i32 %tmp.27, %tmp.26, !dbg !97      ; [#uses=1 type=i32] [debug line = 23:7]
  %tmp.28 = xor i32 %tmp3, %tmp.23, !dbg !97      ; [#uses=1 type=i32] [debug line = 23:7]
  %tmp.29 = add i7 %i.1, -16, !dbg !97            ; [#uses=1 type=i7] [debug line = 23:7]
  %tmp.35.cast = zext i7 %tmp.29 to i32, !dbg !97 ; [#uses=1 type=i32] [debug line = 23:7]
  %m.addr.4 = getelementptr inbounds [64 x i32]* %m, i32 0, i32 %tmp.35.cast, !dbg !97 ; [#uses=1 type=i32*] [debug line = 23:7]
  %m.load.3 = load i32* %m.addr.4, align 4, !dbg !97 ; [#uses=1 type=i32] [debug line = 23:7]
  %tmp4 = add i32 %m.load.3, %m.load.1, !dbg !97  ; [#uses=1 type=i32] [debug line = 23:7]
  %tmp5 = add i32 %tmp.28, %tmp.18, !dbg !97      ; [#uses=1 type=i32] [debug line = 23:7]
  %tmp.30 = add i32 %tmp4, %tmp5, !dbg !97        ; [#uses=1 type=i32] [debug line = 23:7]
  %m.addr.5 = getelementptr inbounds [64 x i32]* %m, i32 0, i32 %i.1.cast, !dbg !97 ; [#uses=1 type=i32*] [debug line = 23:7]
  store i32 %tmp.30, i32* %m.addr.5, align 4, !dbg !97 ; [debug line = 23:7]
  %i.3 = add i7 %i.1, 1, !dbg !98                 ; [#uses=1 type=i7] [debug line = 22:20]
  call void @llvm.dbg.value(metadata !{i7 %i.3}, i64 0, metadata !99), !dbg !98 ; [debug line = 22:20] [debug variable = i]
  br label %.preheader, !dbg !98                  ; [debug line = 22:20]

; <label>:6                                       ; preds = %.preheader
  %a = load i32* @ctx.state.0, align 16, !dbg !100 ; [#uses=2 type=i32] [debug line = 25:4]
  call void @llvm.dbg.value(metadata !{i32 %a}, i64 0, metadata !101), !dbg !100 ; [debug line = 25:4] [debug variable = a]
  %b = load i32* @ctx.state.1, align 4, !dbg !102 ; [#uses=2 type=i32] [debug line = 26:4]
  call void @llvm.dbg.value(metadata !{i32 %b}, i64 0, metadata !103), !dbg !102 ; [debug line = 26:4] [debug variable = b]
  %c = load i32* @ctx.state.2, align 8, !dbg !104 ; [#uses=2 type=i32] [debug line = 27:4]
  call void @llvm.dbg.value(metadata !{i32 %c}, i64 0, metadata !105), !dbg !104 ; [debug line = 27:4] [debug variable = c]
  %d = load i32* @ctx.state.3, align 4, !dbg !106 ; [#uses=2 type=i32] [debug line = 28:4]
  call void @llvm.dbg.value(metadata !{i32 %d}, i64 0, metadata !107), !dbg !106 ; [debug line = 28:4] [debug variable = d]
  %e = load i32* @ctx.state.4, align 16, !dbg !108 ; [#uses=2 type=i32] [debug line = 29:4]
  call void @llvm.dbg.value(metadata !{i32 %e}, i64 0, metadata !109), !dbg !108 ; [debug line = 29:4] [debug variable = e]
  %f = load i32* @ctx.state.5, align 4, !dbg !110 ; [#uses=2 type=i32] [debug line = 30:4]
  call void @llvm.dbg.value(metadata !{i32 %f}, i64 0, metadata !111), !dbg !110 ; [debug line = 30:4] [debug variable = f]
  %g = load i32* @ctx.state.6, align 8, !dbg !112 ; [#uses=2 type=i32] [debug line = 31:4]
  call void @llvm.dbg.value(metadata !{i32 %g}, i64 0, metadata !113), !dbg !112 ; [debug line = 31:4] [debug variable = g]
  %h = load i32* @ctx.state.7, align 4, !dbg !114 ; [#uses=2 type=i32] [debug line = 32:4]
  call void @llvm.dbg.value(metadata !{i32 %h}, i64 0, metadata !115), !dbg !114 ; [debug line = 32:4] [debug variable = h]
  br label %7, !dbg !116                          ; [debug line = 34:9]

; <label>:7                                       ; preds = %9, %6
  %h1 = phi i32 [ %h, %6 ], [ %h.1, %9 ]          ; [#uses=2 type=i32]
  %h.1 = phi i32 [ %g, %6 ], [ %g.1, %9 ]         ; [#uses=3 type=i32]
  %g.1 = phi i32 [ %f, %6 ], [ %f.1, %9 ]         ; [#uses=3 type=i32]
  %f.1 = phi i32 [ %e, %6 ], [ %e.1, %9 ]         ; [#uses=10 type=i32]
  %d1 = phi i32 [ %d, %6 ], [ %d.1, %9 ]          ; [#uses=2 type=i32]
  %d.1 = phi i32 [ %c, %6 ], [ %c.1, %9 ]         ; [#uses=4 type=i32]
  %c.1 = phi i32 [ %b, %6 ], [ %b.1, %9 ]         ; [#uses=4 type=i32]
  %b.1 = phi i32 [ %a, %6 ], [ %a.1, %9 ]         ; [#uses=9 type=i32]
  %i.2 = phi i7 [ 0, %6 ], [ %i.4, %9 ]           ; [#uses=3 type=i7]
  %i.2.cast = zext i7 %i.2 to i32, !dbg !116      ; [#uses=2 type=i32] [debug line = 34:9]
  %tmp.31 = icmp eq i7 %i.2, -64, !dbg !116       ; [#uses=1 type=i1] [debug line = 34:9]
  %8 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) ; [#uses=0 type=i32]
  br i1 %tmp.31, label %10, label %9, !dbg !116   ; [debug line = 34:9]

; <label>:9                                       ; preds = %7
  %tmp.40 = lshr i32 %f.1, 6, !dbg !118           ; [#uses=1 type=i32] [debug line = 35:7]
  %tmp.41 = shl i32 %f.1, 26, !dbg !118           ; [#uses=1 type=i32] [debug line = 35:7]
  %tmp.42 = or i32 %tmp.40, %tmp.41, !dbg !118    ; [#uses=1 type=i32] [debug line = 35:7]
  %tmp.43 = lshr i32 %f.1, 11, !dbg !118          ; [#uses=1 type=i32] [debug line = 35:7]
  %tmp.44 = shl i32 %f.1, 21, !dbg !118           ; [#uses=1 type=i32] [debug line = 35:7]
  %tmp.45 = or i32 %tmp.43, %tmp.44, !dbg !118    ; [#uses=1 type=i32] [debug line = 35:7]
  %tmp.46 = lshr i32 %f.1, 25, !dbg !118          ; [#uses=1 type=i32] [debug line = 35:7]
  %tmp.47 = shl i32 %f.1, 7, !dbg !118            ; [#uses=1 type=i32] [debug line = 35:7]
  %tmp.48 = or i32 %tmp.46, %tmp.47, !dbg !118    ; [#uses=1 type=i32] [debug line = 35:7]
  %tmp6 = xor i32 %tmp.42, %tmp.45, !dbg !118     ; [#uses=1 type=i32] [debug line = 35:7]
  %tmp.49 = xor i32 %tmp6, %tmp.48, !dbg !118     ; [#uses=1 type=i32] [debug line = 35:7]
  %tmp.50 = and i32 %f.1, %g.1, !dbg !118         ; [#uses=1 type=i32] [debug line = 35:7]
  %tmp.51 = xor i32 %f.1, -1, !dbg !118           ; [#uses=1 type=i32] [debug line = 35:7]
  %tmp.52 = and i32 %h.1, %tmp.51, !dbg !118      ; [#uses=1 type=i32] [debug line = 35:7]
  %tmp.53 = xor i32 %tmp.50, %tmp.52, !dbg !118   ; [#uses=1 type=i32] [debug line = 35:7]
  %k.addr = getelementptr inbounds [64 x i32]* @k, i32 0, i32 %i.2.cast, !dbg !118 ; [#uses=1 type=i32*] [debug line = 35:7]
  %k.load = load i32* %k.addr, align 4, !dbg !118 ; [#uses=1 type=i32] [debug line = 35:7]
  %m.addr.6 = getelementptr inbounds [64 x i32]* %m, i32 0, i32 %i.2.cast, !dbg !118 ; [#uses=1 type=i32*] [debug line = 35:7]
  %m.load.4 = load i32* %m.addr.6, align 4, !dbg !118 ; [#uses=1 type=i32] [debug line = 35:7]
  %tmp9 = add i32 %m.load.4, %k.load, !dbg !118   ; [#uses=1 type=i32] [debug line = 35:7]
  %tmp7 = add i32 %tmp.53, %tmp.49, !dbg !118     ; [#uses=1 type=i32] [debug line = 35:7]
  %tmp8 = add i32 %h1, %tmp7, !dbg !118           ; [#uses=1 type=i32] [debug line = 35:7]
  %t1 = add i32 %tmp9, %tmp8, !dbg !118           ; [#uses=2 type=i32] [debug line = 35:7]
  call void @llvm.dbg.value(metadata !{i32 %t1}, i64 0, metadata !120), !dbg !118 ; [debug line = 35:7] [debug variable = t1]
  %tmp.54 = lshr i32 %b.1, 2, !dbg !121           ; [#uses=1 type=i32] [debug line = 36:7]
  %tmp.55 = shl i32 %b.1, 30, !dbg !121           ; [#uses=1 type=i32] [debug line = 36:7]
  %tmp.56 = or i32 %tmp.54, %tmp.55, !dbg !121    ; [#uses=1 type=i32] [debug line = 36:7]
  %tmp.57 = lshr i32 %b.1, 13, !dbg !121          ; [#uses=1 type=i32] [debug line = 36:7]
  %tmp.58 = shl i32 %b.1, 19, !dbg !121           ; [#uses=1 type=i32] [debug line = 36:7]
  %tmp.59 = or i32 %tmp.57, %tmp.58, !dbg !121    ; [#uses=1 type=i32] [debug line = 36:7]
  %tmp.60 = lshr i32 %b.1, 22, !dbg !121          ; [#uses=1 type=i32] [debug line = 36:7]
  %tmp.61 = shl i32 %b.1, 10, !dbg !121           ; [#uses=1 type=i32] [debug line = 36:7]
  %tmp.62 = or i32 %tmp.60, %tmp.61, !dbg !121    ; [#uses=1 type=i32] [debug line = 36:7]
  %tmp10 = xor i32 %tmp.56, %tmp.59, !dbg !121    ; [#uses=1 type=i32] [debug line = 36:7]
  %tmp.63 = xor i32 %tmp10, %tmp.62, !dbg !121    ; [#uses=1 type=i32] [debug line = 36:7]
  %tmp.64 = xor i32 %c.1, %d.1, !dbg !121         ; [#uses=1 type=i32] [debug line = 36:7]
  %tmp.65 = and i32 %b.1, %tmp.64, !dbg !121      ; [#uses=1 type=i32] [debug line = 36:7]
  %tmp.66 = and i32 %c.1, %d.1, !dbg !121         ; [#uses=1 type=i32] [debug line = 36:7]
  %tmp.67 = xor i32 %tmp.65, %tmp.66, !dbg !121   ; [#uses=1 type=i32] [debug line = 36:7]
  call void @llvm.dbg.value(metadata !{i32 %h.1}, i64 0, metadata !115), !dbg !122 ; [debug line = 37:7] [debug variable = h]
  call void @llvm.dbg.value(metadata !{i32 %g.1}, i64 0, metadata !113), !dbg !123 ; [debug line = 38:7] [debug variable = g]
  call void @llvm.dbg.value(metadata !{i32 %f.1}, i64 0, metadata !111), !dbg !124 ; [debug line = 39:7] [debug variable = f]
  %e.1 = add i32 %d1, %t1, !dbg !125              ; [#uses=1 type=i32] [debug line = 40:7]
  call void @llvm.dbg.value(metadata !{i32 %e.1}, i64 0, metadata !109), !dbg !125 ; [debug line = 40:7] [debug variable = e]
  call void @llvm.dbg.value(metadata !{i32 %d.1}, i64 0, metadata !107), !dbg !126 ; [debug line = 41:7] [debug variable = d]
  call void @llvm.dbg.value(metadata !{i32 %c.1}, i64 0, metadata !105), !dbg !127 ; [debug line = 42:7] [debug variable = c]
  call void @llvm.dbg.value(metadata !{i32 %b.1}, i64 0, metadata !103), !dbg !128 ; [debug line = 43:7] [debug variable = b]
  %tmp11 = add i32 %t1, %tmp.67, !dbg !129        ; [#uses=1 type=i32] [debug line = 44:7]
  %a.1 = add i32 %tmp.63, %tmp11, !dbg !129       ; [#uses=1 type=i32] [debug line = 44:7]
  call void @llvm.dbg.value(metadata !{i32 %a.1}, i64 0, metadata !101), !dbg !129 ; [debug line = 44:7] [debug variable = a]
  %i.4 = add i7 %i.2, 1, !dbg !130                ; [#uses=1 type=i7] [debug line = 34:24]
  call void @llvm.dbg.value(metadata !{i7 %i.4}, i64 0, metadata !99), !dbg !130 ; [debug line = 34:24] [debug variable = i]
  br label %7, !dbg !130                          ; [debug line = 34:24]

; <label>:10                                      ; preds = %7
  %b.1.lcssa = phi i32 [ %b.1, %7 ]               ; [#uses=1 type=i32]
  %c.1.lcssa = phi i32 [ %c.1, %7 ]               ; [#uses=1 type=i32]
  %d.1.lcssa = phi i32 [ %d.1, %7 ]               ; [#uses=1 type=i32]
  %d1.lcssa = phi i32 [ %d1, %7 ]                 ; [#uses=1 type=i32]
  %f.1.lcssa = phi i32 [ %f.1, %7 ]               ; [#uses=1 type=i32]
  %g.1.lcssa = phi i32 [ %g.1, %7 ]               ; [#uses=1 type=i32]
  %h.1.lcssa = phi i32 [ %h.1, %7 ]               ; [#uses=1 type=i32]
  %h1.lcssa = phi i32 [ %h1, %7 ]                 ; [#uses=1 type=i32]
  %tmp.32 = add i32 %b.1.lcssa, %a, !dbg !131     ; [#uses=1 type=i32] [debug line = 47:4]
  store i32 %tmp.32, i32* @ctx.state.0, align 16, !dbg !131 ; [debug line = 47:4]
  %tmp.33 = add i32 %c.1.lcssa, %b, !dbg !132     ; [#uses=1 type=i32] [debug line = 48:4]
  store i32 %tmp.33, i32* @ctx.state.1, align 4, !dbg !132 ; [debug line = 48:4]
  %tmp.34 = add i32 %d.1.lcssa, %c, !dbg !133     ; [#uses=1 type=i32] [debug line = 49:4]
  store i32 %tmp.34, i32* @ctx.state.2, align 8, !dbg !133 ; [debug line = 49:4]
  %tmp.35 = add i32 %d1.lcssa, %d, !dbg !134      ; [#uses=1 type=i32] [debug line = 50:4]
  store i32 %tmp.35, i32* @ctx.state.3, align 4, !dbg !134 ; [debug line = 50:4]
  %tmp.36 = add i32 %f.1.lcssa, %e, !dbg !135     ; [#uses=1 type=i32] [debug line = 51:4]
  store i32 %tmp.36, i32* @ctx.state.4, align 16, !dbg !135 ; [debug line = 51:4]
  %tmp.37 = add i32 %g.1.lcssa, %f, !dbg !136     ; [#uses=1 type=i32] [debug line = 52:4]
  store i32 %tmp.37, i32* @ctx.state.5, align 4, !dbg !136 ; [debug line = 52:4]
  %tmp.38 = add i32 %h.1.lcssa, %g, !dbg !137     ; [#uses=1 type=i32] [debug line = 53:4]
  store i32 %tmp.38, i32* @ctx.state.6, align 8, !dbg !137 ; [debug line = 53:4]
  %tmp.39 = add i32 %h1.lcssa, %h, !dbg !138      ; [#uses=1 type=i32] [debug line = 54:4]
  store i32 %tmp.39, i32* @ctx.state.7, align 4, !dbg !138 ; [debug line = 54:4]
  ret void, !dbg !139                             ; [debug line = 55:1]
}

; [#uses=0]
define void @sha256_top([32 x i8]* %data, [32 x i8]* %hash) nounwind {
  call void (...)* @_ssdm_op_SpecBitsMap([32 x i8]* %data) nounwind, !map !140
  call void (...)* @_ssdm_op_SpecBitsMap([32 x i8]* %hash) nounwind, !map !146
  call void (...)* @_ssdm_op_SpecTopModule([11 x i8]* @sha256_top.str) nounwind
  call void @llvm.dbg.value(metadata !{[32 x i8]* %data}, i64 0, metadata !150), !dbg !157 ; [debug line = 140:47] [debug variable = data]
  call void @llvm.dbg.value(metadata !{[32 x i8]* %hash}, i64 0, metadata !158), !dbg !159 ; [debug line = 140:87] [debug variable = hash]
  store i32 0, i32* @ctx.datalen, align 4, !dbg !160 ; [debug line = 59:4@145:2]
  store i32 0, i32* @ctx.bitlen.0, align 4, !dbg !167 ; [debug line = 60:4@145:2]
  store i32 0, i32* @ctx.bitlen.1, align 4, !dbg !168 ; [debug line = 61:4@145:2]
  store i32 1779033703, i32* @ctx.state.0, align 16, !dbg !169 ; [debug line = 62:4@145:2]
  store i32 -1150833019, i32* @ctx.state.1, align 4, !dbg !170 ; [debug line = 63:4@145:2]
  store i32 1013904242, i32* @ctx.state.2, align 8, !dbg !171 ; [debug line = 64:4@145:2]
  store i32 -1521486534, i32* @ctx.state.3, align 4, !dbg !172 ; [debug line = 65:4@145:2]
  store i32 1359893119, i32* @ctx.state.4, align 16, !dbg !173 ; [debug line = 66:4@145:2]
  store i32 -1694144372, i32* @ctx.state.5, align 4, !dbg !174 ; [debug line = 67:4@145:2]
  store i32 528734635, i32* @ctx.state.6, align 8, !dbg !175 ; [debug line = 68:4@145:2]
  store i32 1541459225, i32* @ctx.state.7, align 4, !dbg !176 ; [debug line = 69:4@145:2]
  call void @llvm.dbg.value(metadata !{[32 x i8]* %data}, i64 0, metadata !177) nounwind, !dbg !182 ; [debug line = 72:74@150:2] [debug variable = data]
  br label %1, !dbg !183                          ; [debug line = 76:7@150:2]

; <label>:1                                       ; preds = %._crit_edge.i, %0
  %i.i = phi i6 [ 0, %0 ], [ %i, %._crit_edge.i ] ; [#uses=3 type=i6]
  %i.i.cast1 = zext i6 %i.i to i32, !dbg !183     ; [#uses=1 type=i32] [debug line = 76:7@150:2]
  %exitcond.i = icmp eq i6 %i.i, -32, !dbg !183   ; [#uses=1 type=i1] [debug line = 76:7@150:2]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 32, i64 32, i64 32) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond.i, label %sha256_update.exit, label %3, !dbg !183 ; [debug line = 76:7@150:2]

; <label>:3                                       ; preds = %1
  %data.addr = getelementptr [32 x i8]* %data, i32 0, i32 %i.i.cast1, !dbg !186 ; [#uses=1 type=i8*] [debug line = 77:7@150:2]
  %data.load = load i8* %data.addr, align 1, !dbg !186 ; [#uses=1 type=i8] [debug line = 77:7@150:2]
  %ctx.datalen.load = load i32* @ctx.datalen, align 4, !dbg !186 ; [#uses=2 type=i32] [debug line = 77:7@150:2]
  %ctx.in_data.addr = getelementptr [64 x i8]* @ctx.in_data, i32 0, i32 %ctx.datalen.load, !dbg !186 ; [#uses=1 type=i8*] [debug line = 77:7@150:2]
  store i8 %data.load, i8* %ctx.in_data.addr, align 1, !dbg !186 ; [debug line = 77:7@150:2]
  %ctx.datalen.assign.i = add i32 %ctx.datalen.load, 1, !dbg !188 ; [#uses=2 type=i32] [debug line = 78:7@150:2]
  store i32 %ctx.datalen.assign.i, i32* @ctx.datalen, align 4, !dbg !188 ; [debug line = 78:7@150:2]
  %tmp.1.i = icmp eq i32 %ctx.datalen.assign.i, 64, !dbg !189 ; [#uses=1 type=i1] [debug line = 79:7@150:2]
  br i1 %tmp.1.i, label %4, label %._crit_edge.i, !dbg !189 ; [debug line = 79:7@150:2]

; <label>:4                                       ; preds = %3
  call fastcc void @sha256_transform([64 x i8]* @ctx.in_data) nounwind, !dbg !190 ; [debug line = 80:10@150:2]
  %ctx.bitlen.0.load = load i32* @ctx.bitlen.0, align 4, !dbg !192 ; [#uses=2 type=i32] [debug line = 81:10@150:2]
  %tmp.2.i = icmp ugt i32 %ctx.bitlen.0.load, -513, !dbg !192 ; [#uses=1 type=i1] [debug line = 81:10@150:2]
  br i1 %tmp.2.i, label %5, label %._crit_edge1.i, !dbg !192 ; [debug line = 81:10@150:2]

; <label>:5                                       ; preds = %4
  %ctx.bitlen.1.load = load i32* @ctx.bitlen.1, align 4, !dbg !193 ; [#uses=1 type=i32] [debug line = 81:58@150:2]
  %tmp.3.i = add i32 %ctx.bitlen.1.load, 1, !dbg !193 ; [#uses=1 type=i32] [debug line = 81:58@150:2]
  store i32 %tmp.3.i, i32* @ctx.bitlen.1, align 4, !dbg !193 ; [debug line = 81:58@150:2]
  br label %._crit_edge1.i, !dbg !193             ; [debug line = 81:58@150:2]

._crit_edge1.i:                                   ; preds = %5, %4
  %tmp.4.i = add i32 %ctx.bitlen.0.load, 512, !dbg !194 ; [#uses=1 type=i32] [debug line = 81:83@150:2]
  store i32 %tmp.4.i, i32* @ctx.bitlen.0, align 4, !dbg !194 ; [debug line = 81:83@150:2]
  store i32 0, i32* @ctx.datalen, align 4, !dbg !195 ; [debug line = 82:10@150:2]
  br label %._crit_edge.i, !dbg !196              ; [debug line = 83:7@150:2]

._crit_edge.i:                                    ; preds = %._crit_edge1.i, %3
  %i = add i6 %i.i, 1, !dbg !197                  ; [#uses=1 type=i6] [debug line = 76:21@150:2]
  call void @llvm.dbg.value(metadata !{i6 %i}, i64 0, metadata !198) nounwind, !dbg !197 ; [debug line = 76:21@150:2] [debug variable = i]
  br label %1, !dbg !197                          ; [debug line = 76:21@150:2]

sha256_update.exit:                               ; preds = %1
  call fastcc void @sha256_final([32 x i8]* %hash) nounwind, !dbg !199 ; [debug line = 153:2]
  ret void, !dbg !200                             ; [debug line = 154:1]
}

; [#uses=1]
define internal fastcc void @sha256_final([32 x i8]* nocapture %final_hash) {
  call void @llvm.dbg.value(metadata !{[32 x i8]* %final_hash}, i64 0, metadata !201), !dbg !203 ; [debug line = 87:72] [debug variable = final_hash]
  %i = load i32* @ctx.datalen, align 4, !dbg !204 ; [#uses=5 type=i32] [debug line = 91:4]
  %i.cast = trunc i32 %i to i9, !dbg !204         ; [#uses=1 type=i9] [debug line = 91:4]
  call void @llvm.dbg.value(metadata !{i32 %i}, i64 0, metadata !206), !dbg !204 ; [debug line = 91:4] [debug variable = i]
  %tmp = icmp ult i32 %i, 56, !dbg !207           ; [#uses=1 type=i1] [debug line = 94:4]
  %ctx.in_data.addr = getelementptr [64 x i8]* @ctx.in_data, i32 0, i32 %i, !dbg !208 ; [#uses=1 type=i8*] [debug line = 95:7]
  store i8 -128, i8* %ctx.in_data.addr, align 1, !dbg !208 ; [debug line = 95:7]
  br i1 %tmp, label %.preheader18.preheader, label %.preheader.preheader, !dbg !207 ; [debug line = 94:4]

.preheader18.preheader:                           ; preds = %0
  br label %.preheader18, !dbg !208               ; [debug line = 95:7]

.preheader.preheader:                             ; preds = %0
  br label %.preheader, !dbg !210                 ; [debug line = 100:7]

.preheader18:                                     ; preds = %1, %.preheader18.preheader
  %i.0.in = phi i32 [ %i.5, %1 ], [ %i, %.preheader18.preheader ] ; [#uses=2 type=i32]
  %i.5 = add i32 %i.0.in, 1, !dbg !208            ; [#uses=2 type=i32] [debug line = 95:7]
  call void @llvm.dbg.value(metadata !{i32 %i.5}, i64 0, metadata !206), !dbg !208 ; [debug line = 95:7] [debug variable = i]
  %exitcond = icmp eq i32 %i.0.in, 55, !dbg !212  ; [#uses=1 type=i1] [debug line = 96:7]
  br i1 %exitcond, label %.loopexit.loopexit14, label %1, !dbg !212 ; [debug line = 96:7]

; <label>:1                                       ; preds = %.preheader18
  %ctx.in_data.addr.1 = getelementptr [64 x i8]* @ctx.in_data, i32 0, i32 %i.5, !dbg !213 ; [#uses=1 type=i8*] [debug line = 97:10]
  store i8 0, i8* %ctx.in_data.addr.1, align 1, !dbg !213 ; [debug line = 97:10]
  br label %.preheader18, !dbg !213               ; [debug line = 97:10]

.preheader:                                       ; preds = %2, %.preheader.preheader
  %i.1.in = phi i32 [ %i.1, %2 ], [ %i, %.preheader.preheader ] ; [#uses=1 type=i32]
  %i.1 = add i32 %i.1.in, 1, !dbg !210            ; [#uses=3 type=i32] [debug line = 100:7]
  call void @llvm.dbg.value(metadata !{i32 %i.1}, i64 0, metadata !206), !dbg !210 ; [debug line = 100:7] [debug variable = i]
  %tmp. = icmp ult i32 %i.1, 64, !dbg !214        ; [#uses=1 type=i1] [debug line = 101:7]
  br i1 %tmp., label %2, label %3, !dbg !214      ; [debug line = 101:7]

; <label>:2                                       ; preds = %.preheader
  %ctx.in_data.addr.2 = getelementptr [64 x i8]* @ctx.in_data, i32 0, i32 %i.1, !dbg !215 ; [#uses=1 type=i8*] [debug line = 102:10]
  store i8 0, i8* %ctx.in_data.addr.2, align 1, !dbg !215 ; [debug line = 102:10]
  br label %.preheader, !dbg !215                 ; [debug line = 102:10]

; <label>:3                                       ; preds = %.preheader
  call fastcc void @sha256_transform([64 x i8]* @ctx.in_data), !dbg !216 ; [debug line = 103:7]
  br label %4, !dbg !217                          ; [debug line = 107:6]

; <label>:4                                       ; preds = %6, %3
  %j = phi i6 [ 0, %3 ], [ %j.2, %6 ]             ; [#uses=3 type=i6]
  %j.cast5 = zext i6 %j to i32, !dbg !217         ; [#uses=1 type=i32] [debug line = 107:6]
  %tmp.68 = icmp eq i6 %j, -8, !dbg !217          ; [#uses=1 type=i1] [debug line = 107:6]
  %5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 56, i64 56, i64 56) ; [#uses=0 type=i32]
  br i1 %tmp.68, label %.loopexit.loopexit, label %6, !dbg !217 ; [debug line = 107:6]

; <label>:6                                       ; preds = %4
  call void (...)* @_ssdm_op_SpecLoopName([20 x i8]* @.str1) nounwind, !dbg !219 ; [debug line = 107:33]
  %ctx.in_data.addr.3 = getelementptr [64 x i8]* @ctx.in_data, i32 0, i32 %j.cast5, !dbg !221 ; [#uses=1 type=i8*] [debug line = 108:6]
  store i8 0, i8* %ctx.in_data.addr.3, align 1, !dbg !221 ; [debug line = 108:6]
  %j.2 = add i6 %j, 1, !dbg !222                  ; [#uses=1 type=i6] [debug line = 107:21]
  call void @llvm.dbg.value(metadata !{i6 %j.2}, i64 0, metadata !223), !dbg !222 ; [debug line = 107:21] [debug variable = j]
  br label %4, !dbg !222                          ; [debug line = 107:21]

.loopexit.loopexit:                               ; preds = %4
  br label %.loopexit

.loopexit.loopexit14:                             ; preds = %.preheader18
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit14, %.loopexit.loopexit
  %ctx.bitlen.0.load = load i32* @ctx.bitlen.0, align 4, !dbg !224 ; [#uses=5 type=i32] [debug line = 113:4]
  %tmp.69 = shl i9 %i.cast, 3, !dbg !224          ; [#uses=4 type=i9] [debug line = 113:4]
  %tmp.82.cast = zext i9 %tmp.69 to i32, !dbg !224 ; [#uses=2 type=i32] [debug line = 113:4]
  %tmp.70 = xor i32 %tmp.82.cast, -1, !dbg !224   ; [#uses=1 type=i32] [debug line = 113:4]
  %tmp.71 = icmp ugt i32 %ctx.bitlen.0.load, %tmp.70, !dbg !224 ; [#uses=1 type=i1] [debug line = 113:4]
  %ctx.bitlen.1.load = load i32* @ctx.bitlen.1, align 4, !dbg !225 ; [#uses=2 type=i32] [debug line = 113:70]
  br i1 %tmp.71, label %7, label %.loopexit._crit_edge, !dbg !224 ; [debug line = 113:4]

; <label>:7                                       ; preds = %.loopexit
  %tmp.72 = add i32 %ctx.bitlen.1.load, 1, !dbg !225 ; [#uses=2 type=i32] [debug line = 113:70]
  store i32 %tmp.72, i32* @ctx.bitlen.1, align 4, !dbg !225 ; [debug line = 113:70]
  br label %.loopexit._crit_edge, !dbg !225       ; [debug line = 113:70]

.loopexit._crit_edge:                             ; preds = %7, %.loopexit
  %ctx.bitlen.1.loc = phi i32 [ %tmp.72, %7 ], [ %ctx.bitlen.1.load, %.loopexit ] ; [#uses=4 type=i32]
  %ctx.bitlen.1.loc.cast4 = trunc i32 %ctx.bitlen.1.loc to i24 ; [#uses=1 type=i24]
  %ctx.bitlen.1.loc.cast = trunc i32 %ctx.bitlen.1.loc to i16 ; [#uses=1 type=i16]
  %tmp.12 = trunc i9 %tmp.69 to i8                ; [#uses=1 type=i8]
  %tmp.13 = trunc i32 %ctx.bitlen.0.load to i8    ; [#uses=1 type=i8]
  %tmp.14 = trunc i32 %ctx.bitlen.0.load to i16   ; [#uses=1 type=i16]
  %tmp.15 = zext i9 %tmp.69 to i16                ; [#uses=1 type=i16]
  %tmp.16 = trunc i32 %ctx.bitlen.0.load to i24   ; [#uses=1 type=i24]
  %tmp.17 = zext i9 %tmp.69 to i24                ; [#uses=1 type=i24]
  %tmp.73 = add i32 %ctx.bitlen.0.load, %tmp.82.cast, !dbg !226 ; [#uses=2 type=i32] [debug line = 113:94]
  %tmp.86.cast3 = add i24 %tmp.17, %tmp.16, !dbg !226 ; [#uses=1 type=i24] [debug line = 113:94]
  %tmp.86.cast = add i16 %tmp.15, %tmp.14, !dbg !226 ; [#uses=1 type=i16] [debug line = 113:94]
  store i32 %tmp.73, i32* @ctx.bitlen.0, align 4, !dbg !226 ; [debug line = 113:94]
  %tmp.74 = add i8 %tmp.12, %tmp.13, !dbg !227    ; [#uses=1 type=i8] [debug line = 114:4]
  store i8 %tmp.74, i8* getelementptr inbounds ([64 x i8]* @ctx.in_data, i32 0, i32 63), align 1, !dbg !227 ; [debug line = 114:4]
  %tmp.75 = lshr i16 %tmp.86.cast, 8, !dbg !228   ; [#uses=1 type=i16] [debug line = 115:4]
  %tmp.76 = trunc i16 %tmp.75 to i8, !dbg !228    ; [#uses=1 type=i8] [debug line = 115:4]
  store i8 %tmp.76, i8* getelementptr inbounds ([64 x i8]* @ctx.in_data, i32 0, i32 62), align 2, !dbg !228 ; [debug line = 115:4]
  %tmp.77 = lshr i24 %tmp.86.cast3, 16, !dbg !229 ; [#uses=1 type=i24] [debug line = 116:4]
  %tmp.78 = trunc i24 %tmp.77 to i8, !dbg !229    ; [#uses=1 type=i8] [debug line = 116:4]
  store i8 %tmp.78, i8* getelementptr inbounds ([64 x i8]* @ctx.in_data, i32 0, i32 61), align 1, !dbg !229 ; [debug line = 116:4]
  %tmp.79 = lshr i32 %tmp.73, 24, !dbg !230       ; [#uses=1 type=i32] [debug line = 117:4]
  %tmp.80 = trunc i32 %tmp.79 to i8, !dbg !230    ; [#uses=1 type=i8] [debug line = 117:4]
  store i8 %tmp.80, i8* getelementptr inbounds ([64 x i8]* @ctx.in_data, i32 0, i32 60), align 4, !dbg !230 ; [debug line = 117:4]
  %tmp.81 = trunc i32 %ctx.bitlen.1.loc to i8, !dbg !231 ; [#uses=1 type=i8] [debug line = 118:4]
  store i8 %tmp.81, i8* getelementptr inbounds ([64 x i8]* @ctx.in_data, i32 0, i32 59), align 1, !dbg !231 ; [debug line = 118:4]
  %tmp.82 = lshr i16 %ctx.bitlen.1.loc.cast, 8, !dbg !232 ; [#uses=1 type=i16] [debug line = 119:4]
  %tmp.83 = trunc i16 %tmp.82 to i8, !dbg !232    ; [#uses=1 type=i8] [debug line = 119:4]
  store i8 %tmp.83, i8* getelementptr inbounds ([64 x i8]* @ctx.in_data, i32 0, i32 58), align 2, !dbg !232 ; [debug line = 119:4]
  %tmp.84 = lshr i24 %ctx.bitlen.1.loc.cast4, 16, !dbg !233 ; [#uses=1 type=i24] [debug line = 120:4]
  %tmp.85 = trunc i24 %tmp.84 to i8, !dbg !233    ; [#uses=1 type=i8] [debug line = 120:4]
  store i8 %tmp.85, i8* getelementptr inbounds ([64 x i8]* @ctx.in_data, i32 0, i32 57), align 1, !dbg !233 ; [debug line = 120:4]
  %tmp.86 = lshr i32 %ctx.bitlen.1.loc, 24, !dbg !234 ; [#uses=1 type=i32] [debug line = 121:4]
  %tmp.87 = trunc i32 %tmp.86 to i8, !dbg !234    ; [#uses=1 type=i8] [debug line = 121:4]
  store i8 %tmp.87, i8* getelementptr inbounds ([64 x i8]* @ctx.in_data, i32 0, i32 56), align 8, !dbg !234 ; [debug line = 121:4]
  call fastcc void @sha256_transform([64 x i8]* @ctx.in_data), !dbg !235 ; [debug line = 122:4]
  br label %8, !dbg !236                          ; [debug line = 127:9]

; <label>:8                                       ; preds = %10, %.loopexit._crit_edge
  %i.2 = phi i3 [ 0, %.loopexit._crit_edge ], [ %i.6, %10 ] ; [#uses=9 type=i3]
  %i.2.cast2 = zext i3 %i.2 to i32, !dbg !236     ; [#uses=1 type=i32] [debug line = 127:9]
  %i.2.cast1 = zext i3 %i.2 to i5, !dbg !236      ; [#uses=3 type=i5] [debug line = 127:9]
  %i.2.cast1.cast = zext i3 %i.2 to i4, !dbg !236 ; [#uses=1 type=i4] [debug line = 127:9]
  %i.2.cast = zext i3 %i.2 to i4, !dbg !236       ; [#uses=1 type=i4] [debug line = 127:9]
  %tmp.88 = icmp eq i3 %i.2, -4, !dbg !236        ; [#uses=1 type=i1] [debug line = 127:9]
  %9 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4) ; [#uses=0 type=i32]
  br i1 %tmp.88, label %11, label %10, !dbg !236  ; [debug line = 127:9]

; <label>:10                                      ; preds = %8
  call void (...)* @_ssdm_op_SpecLoopName([24 x i8]* @.str2) nounwind, !dbg !238 ; [debug line = 127:27]
  %ctx.state.0.load = load i32* @ctx.state.0, align 16, !dbg !240 ; [#uses=1 type=i32] [debug line = 128:4]
  %tmp.89 = shl i5 %i.2.cast1, 3, !dbg !240       ; [#uses=1 type=i5] [debug line = 128:4]
  %tmp.90 = sub i5 -8, %tmp.89, !dbg !240         ; [#uses=1 type=i5] [debug line = 128:4]
  %tmp.103.cast = zext i5 %tmp.90 to i32, !dbg !240 ; [#uses=8 type=i32] [debug line = 128:4]
  %tmp.91 = lshr i32 %ctx.state.0.load, %tmp.103.cast, !dbg !240 ; [#uses=1 type=i32] [debug line = 128:4]
  %tmp.92 = trunc i32 %tmp.91 to i8, !dbg !240    ; [#uses=1 type=i8] [debug line = 128:4]
  %final_hash.addr = getelementptr [32 x i8]* %final_hash, i32 0, i32 %i.2.cast2, !dbg !240 ; [#uses=1 type=i8*] [debug line = 128:4]
  store i8 %tmp.92, i8* %final_hash.addr, align 1, !dbg !240 ; [debug line = 128:4]
  %ctx.state.1.load = load i32* @ctx.state.1, align 4, !dbg !241 ; [#uses=1 type=i32] [debug line = 129:4]
  %tmp.93 = lshr i32 %ctx.state.1.load, %tmp.103.cast, !dbg !241 ; [#uses=1 type=i32] [debug line = 129:4]
  %tmp.94 = trunc i32 %tmp.93 to i8, !dbg !241    ; [#uses=1 type=i8] [debug line = 129:4]
  %sum2 = xor i3 %i.2, -4                         ; [#uses=1 type=i3]
  %sum2.cast = zext i3 %sum2 to i32               ; [#uses=1 type=i32]
  %final_hash.addr.1 = getelementptr [32 x i8]* %final_hash, i32 0, i32 %sum2.cast, !dbg !241 ; [#uses=1 type=i8*] [debug line = 129:4]
  store i8 %tmp.94, i8* %final_hash.addr.1, align 1, !dbg !241 ; [debug line = 129:4]
  %ctx.state.2.load = load i32* @ctx.state.2, align 8, !dbg !242 ; [#uses=1 type=i32] [debug line = 130:4]
  %tmp.95 = lshr i32 %ctx.state.2.load, %tmp.103.cast, !dbg !242 ; [#uses=1 type=i32] [debug line = 130:4]
  %tmp.96 = trunc i32 %tmp.95 to i8, !dbg !242    ; [#uses=1 type=i8] [debug line = 130:4]
  %sum1 = or i4 %i.2.cast, -8                     ; [#uses=1 type=i4]
  %sum4.cast = zext i4 %sum1 to i32               ; [#uses=1 type=i32]
  %final_hash.addr.2 = getelementptr [32 x i8]* %final_hash, i32 0, i32 %sum4.cast, !dbg !242 ; [#uses=1 type=i8*] [debug line = 130:4]
  store i8 %tmp.96, i8* %final_hash.addr.2, align 1, !dbg !242 ; [debug line = 130:4]
  %ctx.state.3.load = load i32* @ctx.state.3, align 4, !dbg !243 ; [#uses=1 type=i32] [debug line = 131:4]
  %tmp.97 = lshr i32 %ctx.state.3.load, %tmp.103.cast, !dbg !243 ; [#uses=1 type=i32] [debug line = 131:4]
  %tmp.98 = trunc i32 %tmp.97 to i8, !dbg !243    ; [#uses=1 type=i8] [debug line = 131:4]
  %sum6 = xor i3 %i.2, -4                         ; [#uses=1 type=i3]
  %sum6.cast8 = sext i3 %sum6 to i4               ; [#uses=1 type=i4]
  %sum6.cast = zext i4 %sum6.cast8 to i32         ; [#uses=1 type=i32]
  %final_hash.addr.3 = getelementptr [32 x i8]* %final_hash, i32 0, i32 %sum6.cast, !dbg !243 ; [#uses=1 type=i8*] [debug line = 131:4]
  store i8 %tmp.98, i8* %final_hash.addr.3, align 1, !dbg !243 ; [debug line = 131:4]
  %ctx.state.4.load = load i32* @ctx.state.4, align 16, !dbg !244 ; [#uses=1 type=i32] [debug line = 132:4]
  %tmp.99 = lshr i32 %ctx.state.4.load, %tmp.103.cast, !dbg !244 ; [#uses=1 type=i32] [debug line = 132:4]
  %tmp.100 = trunc i32 %tmp.99 to i8, !dbg !244   ; [#uses=1 type=i8] [debug line = 132:4]
  %sum4 = or i5 %i.2.cast1, -16                   ; [#uses=1 type=i5]
  %sum8.cast = zext i5 %sum4 to i32               ; [#uses=1 type=i32]
  %final_hash.addr.4 = getelementptr [32 x i8]* %final_hash, i32 0, i32 %sum8.cast, !dbg !244 ; [#uses=1 type=i8*] [debug line = 132:4]
  store i8 %tmp.100, i8* %final_hash.addr.4, align 1, !dbg !244 ; [debug line = 132:4]
  %ctx.state.5.load = load i32* @ctx.state.5, align 4, !dbg !245 ; [#uses=1 type=i32] [debug line = 133:4]
  %tmp.101 = lshr i32 %ctx.state.5.load, %tmp.103.cast, !dbg !245 ; [#uses=1 type=i32] [debug line = 133:4]
  %tmp.102 = trunc i32 %tmp.101 to i8, !dbg !245  ; [#uses=1 type=i8] [debug line = 133:4]
  %sum = add i5 %i.2.cast1, -12                   ; [#uses=1 type=i5]
  %sum.cast = zext i5 %sum to i32                 ; [#uses=1 type=i32]
  %final_hash.addr.5 = getelementptr [32 x i8]* %final_hash, i32 0, i32 %sum.cast, !dbg !245 ; [#uses=1 type=i8*] [debug line = 133:4]
  store i8 %tmp.102, i8* %final_hash.addr.5, align 1, !dbg !245 ; [debug line = 133:4]
  %ctx.state.6.load = load i32* @ctx.state.6, align 8, !dbg !246 ; [#uses=1 type=i32] [debug line = 134:4]
  %tmp.103 = lshr i32 %ctx.state.6.load, %tmp.103.cast, !dbg !246 ; [#uses=1 type=i32] [debug line = 134:4]
  %tmp.104 = trunc i32 %tmp.103 to i8, !dbg !246  ; [#uses=1 type=i8] [debug line = 134:4]
  %sum5 = or i4 %i.2.cast1.cast, -8               ; [#uses=1 type=i4]
  %sum1.cast7 = sext i4 %sum5 to i5               ; [#uses=1 type=i5]
  %sum1.cast = zext i5 %sum1.cast7 to i32         ; [#uses=1 type=i32]
  %final_hash.addr.6 = getelementptr [32 x i8]* %final_hash, i32 0, i32 %sum1.cast, !dbg !246 ; [#uses=1 type=i8*] [debug line = 134:4]
  store i8 %tmp.104, i8* %final_hash.addr.6, align 1, !dbg !246 ; [debug line = 134:4]
  %ctx.state.7.load = load i32* @ctx.state.7, align 4, !dbg !247 ; [#uses=1 type=i32] [debug line = 135:4]
  %tmp.105 = lshr i32 %ctx.state.7.load, %tmp.103.cast, !dbg !247 ; [#uses=1 type=i32] [debug line = 135:4]
  %tmp.106 = trunc i32 %tmp.105 to i8, !dbg !247  ; [#uses=1 type=i8] [debug line = 135:4]
  %sum3 = xor i3 %i.2, -4                         ; [#uses=1 type=i3]
  %sum3.cast6 = sext i3 %sum3 to i5               ; [#uses=1 type=i5]
  %sum3.cast = zext i5 %sum3.cast6 to i32         ; [#uses=1 type=i32]
  %final_hash.addr.7 = getelementptr [32 x i8]* %final_hash, i32 0, i32 %sum3.cast, !dbg !247 ; [#uses=1 type=i8*] [debug line = 135:4]
  store i8 %tmp.106, i8* %final_hash.addr.7, align 1, !dbg !247 ; [debug line = 135:4]
  %i.6 = add i3 %i.2, 1, !dbg !248                ; [#uses=1 type=i3] [debug line = 127:21]
  call void @llvm.dbg.value(metadata !{i3 %i.6}, i64 0, metadata !206), !dbg !248 ; [debug line = 127:21] [debug variable = i]
  br label %8, !dbg !248                          ; [debug line = 127:21]

; <label>:11                                      ; preds = %8
  ret void, !dbg !249                             ; [debug line = 137:1]
}

; [#uses=31]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=6]
declare i32 @_ssdm_op_SpecLoopTripCount(...)

; [#uses=2]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=2]
declare void @_ssdm_op_SpecBitsMap(...)

; [#uses=0]
declare i8 @_ssdm_op_PartSelect.i8.i8.i32.i32(i8, i32, i32) nounwind readnone

; [#uses=0]
declare i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=0]
declare i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16, i32, i32) nounwind readnone

; [#uses=0]
declare i24 @_ssdm_op_PartSelect.i24.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=0]
declare i16 @_ssdm_op_PartSelect.i16.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=1]
declare i16 @_ssdm_op_PartSelect.i16.i24.i32.i32(i24, i32, i32) nounwind readnone

; [#uses=0]
declare i32 @_ssdm_op_BitConcatenate.i32.i8.i24(i8, i24) nounwind readnone

; [#uses=1]
declare i32 @_ssdm_op_BitConcatenate.i32.i8.i16.i8(i8, i16, i8) nounwind readnone

; [#uses=0]
declare i32 @_ssdm_op_BitConcatenate.i32.i24.i8(i24, i8) nounwind readnone

; [#uses=0]
declare i32 @_ssdm_op_BitConcatenate.i32.i16.i16(i16, i16) nounwind readnone

; [#uses=1]
declare i24 @_ssdm_op_BitConcatenate.i24.i8.i16(i8, i16) nounwind readnone

; [#uses=0]
declare i16 @_ssdm_op_BitConcatenate.i16.i8.i8(i8, i8) nounwind readnone

!opencl.kernels = !{!0, !7, !13, !19, !21}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!24, !31}
!llvm.dbg.cu = !{!36}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"SHA256_CTX*", metadata !"uchar*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"ctx_transform", metadata !"data_transform"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"SHA256_CTX*"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"ctx"}
!13 = metadata !{null, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !6}
!14 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 0}
!15 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!16 = metadata !{metadata !"kernel_arg_type", metadata !"SHA256_CTX*", metadata !"uchar*", metadata !"ulong"}
!17 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!18 = metadata !{metadata !"kernel_arg_name", metadata !"ctx_update", metadata !"data", metadata !"len"}
!19 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !20, metadata !6}
!20 = metadata !{metadata !"kernel_arg_name", metadata !"ctx_final", metadata !"final_hash"}
!21 = metadata !{null, metadata !1, metadata !2, metadata !22, metadata !4, metadata !23, metadata !6}
!22 = metadata !{metadata !"kernel_arg_type", metadata !"uchar*", metadata !"uchar*"}
!23 = metadata !{metadata !"kernel_arg_name", metadata !"data", metadata !"hash"}
!24 = metadata !{metadata !25, [64 x i32]* @hash}
!25 = metadata !{metadata !26}
!26 = metadata !{i32 0, i32 31, metadata !27}
!27 = metadata !{metadata !28}
!28 = metadata !{metadata !"hash", metadata !29, metadata !"long unsigned int", i32 0, i32 31}
!29 = metadata !{metadata !30}
!30 = metadata !{i32 0, i32 63, i32 1}
!31 = metadata !{metadata !32, [64 x i32]* @data}
!32 = metadata !{metadata !33}
!33 = metadata !{i32 0, i32 31, metadata !34}
!34 = metadata !{metadata !35}
!35 = metadata !{metadata !"data", metadata !29, metadata !"long unsigned int", i32 0, i32 31}
!36 = metadata !{i32 786449, i32 0, i32 1, metadata !"C:/Users/windows-10-vm1/Desktop/github/30-202_DIC/30-202_hw-1/hls_test_error/hls_test_error/solution1/.autopilot/db/sha256.pragma.2.c", metadata !"C:\5CUsers\5Cwindows-10-vm1\5CDesktop\5Cgithub\5C30-202_DIC\5C30-202_hw-1\5Chls_test_error", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, null, null, null, metadata !37} ; [ DW_TAG_compile_unit ]
!37 = metadata !{metadata !38}
!38 = metadata !{metadata !39, metadata !60, metadata !62, metadata !65, metadata !68, metadata !69, metadata !72, metadata !75}
!39 = metadata !{i32 790546, i32 0, null, metadata !"ctx.in_data", metadata !"ctx.in_data", metadata !"ctx.in_data", metadata !40, i32 29, metadata !41, i32 1, i32 1, [64 x i8]* @ctx.in_data} ; [ DW_TAG_variable_field ]
!40 = metadata !{i32 786473, metadata !"../hls_error/sha256.h", metadata !"C:\5CUsers\5Cwindows-10-vm1\5CDesktop\5Cgithub\5C30-202_DIC\5C30-202_hw-1\5Chls_test_error", null} ; [ DW_TAG_file_type ]
!41 = metadata !{i32 786452, null, metadata !"", metadata !40, i32 20, i64 512, i64 32, i32 0, i32 0, null, metadata !42, i32 0, i32 0} ; [ DW_TAG_structure_field_type ]
!42 = metadata !{metadata !43}
!43 = metadata !{i32 786445, metadata !44, metadata !"in_data", metadata !40, i32 21, i64 512, i64 8, i64 0, i32 0, metadata !56} ; [ DW_TAG_member ]
!44 = metadata !{i32 786451, null, metadata !"", metadata !40, i32 20, i64 864, i64 32, i32 0, i32 0, null, metadata !45, i32 0, i32 0} ; [ DW_TAG_structure_type ]
!45 = metadata !{metadata !43, metadata !46, metadata !48, metadata !52}
!46 = metadata !{i32 786445, metadata !44, metadata !"datalen", metadata !40, i32 22, i64 32, i64 32, i64 512, i32 0, metadata !47} ; [ DW_TAG_member ]
!47 = metadata !{i32 786468, null, metadata !"long unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!48 = metadata !{i32 786445, metadata !44, metadata !"bitlen", metadata !40, i32 23, i64 64, i64 32, i64 544, i32 0, metadata !49} ; [ DW_TAG_member ]
!49 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 64, i64 32, i32 0, i32 0, metadata !47, metadata !50, i32 0, i32 0} ; [ DW_TAG_array_type ]
!50 = metadata !{metadata !51}
!51 = metadata !{i32 786465, i64 0, i64 1}        ; [ DW_TAG_subrange_type ]
!52 = metadata !{i32 786445, metadata !44, metadata !"state", metadata !40, i32 24, i64 256, i64 32, i64 608, i32 0, metadata !53} ; [ DW_TAG_member ]
!53 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 256, i64 32, i32 0, i32 0, metadata !47, metadata !54, i32 0, i32 0} ; [ DW_TAG_array_type ]
!54 = metadata !{metadata !55}
!55 = metadata !{i32 786465, i64 0, i64 7}        ; [ DW_TAG_subrange_type ]
!56 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 512, i64 8, i32 0, i32 0, metadata !57, metadata !58, i32 0, i32 0} ; [ DW_TAG_array_type ]
!57 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!58 = metadata !{metadata !59}
!59 = metadata !{i32 786465, i64 0, i64 63}       ; [ DW_TAG_subrange_type ]
!60 = metadata !{i32 786484, i32 0, null, metadata !"hash", metadata !"hash", metadata !"", metadata !40, i32 28, metadata !61, i32 0, i32 1, [64 x i32]* @hash} ; [ DW_TAG_variable ]
!61 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 2048, i64 32, i32 0, i32 0, metadata !47, metadata !58, i32 0, i32 0} ; [ DW_TAG_array_type ]
!62 = metadata !{i32 790546, i32 0, null, metadata !"ctx.datalen", metadata !"ctx.datalen", metadata !"ctx.datalen", metadata !40, i32 29, metadata !63, i32 1, i32 1, i32* @ctx.datalen} ; [ DW_TAG_variable_field ]
!63 = metadata !{i32 786452, null, metadata !"", metadata !40, i32 20, i64 32, i64 32, i32 0, i32 0, null, metadata !64, i32 0, i32 0} ; [ DW_TAG_structure_field_type ]
!64 = metadata !{metadata !46}
!65 = metadata !{i32 786484, i32 0, null, metadata !"k", metadata !"k", metadata !"", metadata !40, i32 31, metadata !66, i32 0, i32 1, [64 x i32]* @k} ; [ DW_TAG_variable ]
!66 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 2048, i64 32, i32 0, i32 0, metadata !67, metadata !58, i32 0, i32 0} ; [ DW_TAG_array_type ]
!67 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !47} ; [ DW_TAG_const_type ]
!68 = metadata !{i32 786484, i32 0, null, metadata !"data", metadata !"data", metadata !"", metadata !40, i32 27, metadata !61, i32 0, i32 1, [64 x i32]* @data} ; [ DW_TAG_variable ]
!69 = metadata !{i32 790546, i32 0, null, metadata !"ctx.state", metadata !"ctx.state", metadata !"ctx.state", metadata !40, i32 29, metadata !70, i32 1, i32 1, null} ; [ DW_TAG_variable_field ]
!70 = metadata !{i32 786452, null, metadata !"", metadata !40, i32 20, i64 256, i64 32, i32 0, i32 0, null, metadata !71, i32 0, i32 0} ; [ DW_TAG_structure_field_type ]
!71 = metadata !{metadata !52}
!72 = metadata !{i32 790546, i32 0, null, metadata !"ctx.bitlen", metadata !"ctx.bitlen", metadata !"ctx.bitlen", metadata !40, i32 29, metadata !73, i32 1, i32 1, null} ; [ DW_TAG_variable_field ]
!73 = metadata !{i32 786452, null, metadata !"", metadata !40, i32 20, i64 64, i64 32, i32 0, i32 0, null, metadata !74, i32 0, i32 0} ; [ DW_TAG_structure_field_type ]
!74 = metadata !{metadata !48}
!75 = metadata !{i32 786484, i32 0, null, metadata !"ctx", metadata !"ctx", metadata !"", metadata !40, i32 29, metadata !76, i32 1, i32 1, null} ; [ DW_TAG_variable ]
!76 = metadata !{i32 786454, null, metadata !"SHA256_CTX", metadata !77, i32 25, i64 0, i64 0, i64 0, i32 0, metadata !44} ; [ DW_TAG_typedef ]
!77 = metadata !{i32 786473, metadata !"../hls_error/sha256.c", metadata !"C:\5CUsers\5Cwindows-10-vm1\5CDesktop\5Cgithub\5C30-202_DIC\5C30-202_hw-1\5Chls_test_error", null} ; [ DW_TAG_file_type ]
!78 = metadata !{i32 786689, metadata !79, metadata !"data_transform", null, i32 16, metadata !56, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!79 = metadata !{i32 786478, i32 0, metadata !77, metadata !"sha256_transform", metadata !"sha256_transform", metadata !"", metadata !77, i32 16, metadata !80, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !84, i32 17} ; [ DW_TAG_subprogram ]
!80 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !81, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!81 = metadata !{null, metadata !82, metadata !83}
!82 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !76} ; [ DW_TAG_pointer_type ]
!83 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !57} ; [ DW_TAG_pointer_type ]
!84 = metadata !{metadata !85}
!85 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!86 = metadata !{i32 16, i32 80, metadata !79, null}
!87 = metadata !{i32 786688, metadata !88, metadata !"m", metadata !77, i32 18, metadata !61, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!88 = metadata !{i32 786443, metadata !79, i32 17, i32 1, metadata !77, i32 0} ; [ DW_TAG_lexical_block ]
!89 = metadata !{i32 18, i32 61, metadata !88, null}
!90 = metadata !{i32 20, i32 9, metadata !91, null}
!91 = metadata !{i32 786443, metadata !88, i32 20, i32 4, metadata !77, i32 1} ; [ DW_TAG_lexical_block ]
!92 = metadata !{i32 22, i32 4, metadata !93, null}
!93 = metadata !{i32 786443, metadata !88, i32 22, i32 4, metadata !77, i32 2} ; [ DW_TAG_lexical_block ]
!94 = metadata !{i32 21, i32 7, metadata !91, null}
!95 = metadata !{i32 20, i32 26, metadata !91, null}
!96 = metadata !{i32 786688, metadata !88, metadata !"j", metadata !77, i32 18, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!97 = metadata !{i32 23, i32 7, metadata !93, null}
!98 = metadata !{i32 22, i32 20, metadata !93, null}
!99 = metadata !{i32 786688, metadata !88, metadata !"i", metadata !77, i32 18, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!100 = metadata !{i32 25, i32 4, metadata !88, null}
!101 = metadata !{i32 786688, metadata !88, metadata !"a", metadata !77, i32 18, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!102 = metadata !{i32 26, i32 4, metadata !88, null}
!103 = metadata !{i32 786688, metadata !88, metadata !"b", metadata !77, i32 18, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!104 = metadata !{i32 27, i32 4, metadata !88, null}
!105 = metadata !{i32 786688, metadata !88, metadata !"c", metadata !77, i32 18, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!106 = metadata !{i32 28, i32 4, metadata !88, null}
!107 = metadata !{i32 786688, metadata !88, metadata !"d", metadata !77, i32 18, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!108 = metadata !{i32 29, i32 4, metadata !88, null}
!109 = metadata !{i32 786688, metadata !88, metadata !"e", metadata !77, i32 18, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!110 = metadata !{i32 30, i32 4, metadata !88, null}
!111 = metadata !{i32 786688, metadata !88, metadata !"f", metadata !77, i32 18, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!112 = metadata !{i32 31, i32 4, metadata !88, null}
!113 = metadata !{i32 786688, metadata !88, metadata !"g", metadata !77, i32 18, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!114 = metadata !{i32 32, i32 4, metadata !88, null}
!115 = metadata !{i32 786688, metadata !88, metadata !"h", metadata !77, i32 18, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!116 = metadata !{i32 34, i32 9, metadata !117, null}
!117 = metadata !{i32 786443, metadata !88, i32 34, i32 4, metadata !77, i32 3} ; [ DW_TAG_lexical_block ]
!118 = metadata !{i32 35, i32 7, metadata !119, null}
!119 = metadata !{i32 786443, metadata !117, i32 34, i32 29, metadata !77, i32 4} ; [ DW_TAG_lexical_block ]
!120 = metadata !{i32 786688, metadata !88, metadata !"t1", metadata !77, i32 18, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!121 = metadata !{i32 36, i32 7, metadata !119, null}
!122 = metadata !{i32 37, i32 7, metadata !119, null}
!123 = metadata !{i32 38, i32 7, metadata !119, null}
!124 = metadata !{i32 39, i32 7, metadata !119, null}
!125 = metadata !{i32 40, i32 7, metadata !119, null}
!126 = metadata !{i32 41, i32 7, metadata !119, null}
!127 = metadata !{i32 42, i32 7, metadata !119, null}
!128 = metadata !{i32 43, i32 7, metadata !119, null}
!129 = metadata !{i32 44, i32 7, metadata !119, null}
!130 = metadata !{i32 34, i32 24, metadata !117, null}
!131 = metadata !{i32 47, i32 4, metadata !88, null}
!132 = metadata !{i32 48, i32 4, metadata !88, null}
!133 = metadata !{i32 49, i32 4, metadata !88, null}
!134 = metadata !{i32 50, i32 4, metadata !88, null}
!135 = metadata !{i32 51, i32 4, metadata !88, null}
!136 = metadata !{i32 52, i32 4, metadata !88, null}
!137 = metadata !{i32 53, i32 4, metadata !88, null}
!138 = metadata !{i32 54, i32 4, metadata !88, null}
!139 = metadata !{i32 55, i32 1, metadata !88, null}
!140 = metadata !{metadata !141}
!141 = metadata !{i32 0, i32 7, metadata !142}
!142 = metadata !{metadata !143}
!143 = metadata !{metadata !"data", metadata !144, metadata !"unsigned char", i32 0, i32 7}
!144 = metadata !{metadata !145}
!145 = metadata !{i32 0, i32 31, i32 1}
!146 = metadata !{metadata !147}
!147 = metadata !{i32 0, i32 7, metadata !148}
!148 = metadata !{metadata !149}
!149 = metadata !{metadata !"hash", metadata !144, metadata !"unsigned char", i32 0, i32 7}
!150 = metadata !{i32 786689, metadata !151, metadata !"data", null, i32 140, metadata !154, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!151 = metadata !{i32 786478, i32 0, metadata !77, metadata !"sha256_top", metadata !"sha256_top", metadata !"", metadata !77, i32 140, metadata !152, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !84, i32 140} ; [ DW_TAG_subprogram ]
!152 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !153, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!153 = metadata !{null, metadata !83, metadata !83}
!154 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 256, i64 8, i32 0, i32 0, metadata !57, metadata !155, i32 0, i32 0} ; [ DW_TAG_array_type ]
!155 = metadata !{metadata !156}
!156 = metadata !{i32 786465, i64 0, i64 31}      ; [ DW_TAG_subrange_type ]
!157 = metadata !{i32 140, i32 47, metadata !151, null}
!158 = metadata !{i32 786689, metadata !151, metadata !"hash", null, i32 140, metadata !154, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!159 = metadata !{i32 140, i32 87, metadata !151, null}
!160 = metadata !{i32 59, i32 4, metadata !161, metadata !165}
!161 = metadata !{i32 786443, metadata !162, i32 58, i32 1, metadata !77, i32 5} ; [ DW_TAG_lexical_block ]
!162 = metadata !{i32 786478, i32 0, metadata !77, metadata !"sha256_init", metadata !"sha256_init", metadata !"", metadata !77, i32 57, metadata !163, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !84, i32 58} ; [ DW_TAG_subprogram ]
!163 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !164, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!164 = metadata !{null, metadata !82}
!165 = metadata !{i32 145, i32 2, metadata !166, null}
!166 = metadata !{i32 786443, metadata !151, i32 140, i32 97, metadata !77, i32 17} ; [ DW_TAG_lexical_block ]
!167 = metadata !{i32 60, i32 4, metadata !161, metadata !165}
!168 = metadata !{i32 61, i32 4, metadata !161, metadata !165}
!169 = metadata !{i32 62, i32 4, metadata !161, metadata !165}
!170 = metadata !{i32 63, i32 4, metadata !161, metadata !165}
!171 = metadata !{i32 64, i32 4, metadata !161, metadata !165}
!172 = metadata !{i32 65, i32 4, metadata !161, metadata !165}
!173 = metadata !{i32 66, i32 4, metadata !161, metadata !165}
!174 = metadata !{i32 67, i32 4, metadata !161, metadata !165}
!175 = metadata !{i32 68, i32 4, metadata !161, metadata !165}
!176 = metadata !{i32 69, i32 4, metadata !161, metadata !165}
!177 = metadata !{i32 786689, metadata !178, metadata !"data", null, i32 72, metadata !154, i32 0, metadata !181} ; [ DW_TAG_arg_variable ]
!178 = metadata !{i32 786478, i32 0, metadata !77, metadata !"sha256_update", metadata !"sha256_update", metadata !"", metadata !77, i32 72, metadata !179, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !84, i32 73} ; [ DW_TAG_subprogram ]
!179 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !180, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!180 = metadata !{null, metadata !82, metadata !83, metadata !47}
!181 = metadata !{i32 150, i32 2, metadata !166, null}
!182 = metadata !{i32 72, i32 74, metadata !178, metadata !181}
!183 = metadata !{i32 76, i32 7, metadata !184, metadata !181}
!184 = metadata !{i32 786443, metadata !185, i32 76, i32 2, metadata !77, i32 7} ; [ DW_TAG_lexical_block ]
!185 = metadata !{i32 786443, metadata !178, i32 73, i32 1, metadata !77, i32 6} ; [ DW_TAG_lexical_block ]
!186 = metadata !{i32 77, i32 7, metadata !187, metadata !181}
!187 = metadata !{i32 786443, metadata !184, i32 76, i32 26, metadata !77, i32 8} ; [ DW_TAG_lexical_block ]
!188 = metadata !{i32 78, i32 7, metadata !187, metadata !181}
!189 = metadata !{i32 79, i32 7, metadata !187, metadata !181}
!190 = metadata !{i32 80, i32 10, metadata !191, metadata !181}
!191 = metadata !{i32 786443, metadata !187, i32 79, i32 38, metadata !77, i32 9} ; [ DW_TAG_lexical_block ]
!192 = metadata !{i32 81, i32 10, metadata !191, metadata !181}
!193 = metadata !{i32 81, i32 58, metadata !191, metadata !181}
!194 = metadata !{i32 81, i32 83, metadata !191, metadata !181}
!195 = metadata !{i32 82, i32 10, metadata !191, metadata !181}
!196 = metadata !{i32 83, i32 7, metadata !191, metadata !181}
!197 = metadata !{i32 76, i32 21, metadata !184, metadata !181}
!198 = metadata !{i32 786688, metadata !185, metadata !"i", metadata !77, i32 74, metadata !47, i32 0, metadata !181} ; [ DW_TAG_auto_variable ]
!199 = metadata !{i32 153, i32 2, metadata !166, null}
!200 = metadata !{i32 154, i32 1, metadata !166, null}
!201 = metadata !{i32 786689, metadata !202, metadata !"final_hash", null, i32 87, metadata !154, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!202 = metadata !{i32 786478, i32 0, metadata !77, metadata !"sha256_final", metadata !"sha256_final", metadata !"", metadata !77, i32 87, metadata !80, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !84, i32 88} ; [ DW_TAG_subprogram ]
!203 = metadata !{i32 87, i32 72, metadata !202, null}
!204 = metadata !{i32 91, i32 4, metadata !205, null}
!205 = metadata !{i32 786443, metadata !202, i32 88, i32 1, metadata !77, i32 10} ; [ DW_TAG_lexical_block ]
!206 = metadata !{i32 786688, metadata !205, metadata !"i", metadata !77, i32 89, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!207 = metadata !{i32 94, i32 4, metadata !205, null}
!208 = metadata !{i32 95, i32 7, metadata !209, null}
!209 = metadata !{i32 786443, metadata !205, i32 94, i32 33, metadata !77, i32 11} ; [ DW_TAG_lexical_block ]
!210 = metadata !{i32 100, i32 7, metadata !211, null}
!211 = metadata !{i32 786443, metadata !205, i32 99, i32 9, metadata !77, i32 12} ; [ DW_TAG_lexical_block ]
!212 = metadata !{i32 96, i32 7, metadata !209, null}
!213 = metadata !{i32 97, i32 10, metadata !209, null}
!214 = metadata !{i32 101, i32 7, metadata !211, null}
!215 = metadata !{i32 102, i32 10, metadata !211, null}
!216 = metadata !{i32 103, i32 7, metadata !211, null}
!217 = metadata !{i32 107, i32 6, metadata !218, null}
!218 = metadata !{i32 786443, metadata !211, i32 107, i32 2, metadata !77, i32 13} ; [ DW_TAG_lexical_block ]
!219 = metadata !{i32 107, i32 33, metadata !220, null}
!220 = metadata !{i32 786443, metadata !218, i32 107, i32 32, metadata !77, i32 14} ; [ DW_TAG_lexical_block ]
!221 = metadata !{i32 108, i32 6, metadata !220, null}
!222 = metadata !{i32 107, i32 21, metadata !218, null}
!223 = metadata !{i32 786688, metadata !205, metadata !"j", metadata !77, i32 90, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!224 = metadata !{i32 113, i32 4, metadata !205, null}
!225 = metadata !{i32 113, i32 70, metadata !205, null}
!226 = metadata !{i32 113, i32 94, metadata !205, null}
!227 = metadata !{i32 114, i32 4, metadata !205, null}
!228 = metadata !{i32 115, i32 4, metadata !205, null}
!229 = metadata !{i32 116, i32 4, metadata !205, null}
!230 = metadata !{i32 117, i32 4, metadata !205, null}
!231 = metadata !{i32 118, i32 4, metadata !205, null}
!232 = metadata !{i32 119, i32 4, metadata !205, null}
!233 = metadata !{i32 120, i32 4, metadata !205, null}
!234 = metadata !{i32 121, i32 4, metadata !205, null}
!235 = metadata !{i32 122, i32 4, metadata !205, null}
!236 = metadata !{i32 127, i32 9, metadata !237, null}
!237 = metadata !{i32 786443, metadata !205, i32 127, i32 4, metadata !77, i32 15} ; [ DW_TAG_lexical_block ]
!238 = metadata !{i32 127, i32 27, metadata !239, null}
!239 = metadata !{i32 786443, metadata !237, i32 127, i32 26, metadata !77, i32 16} ; [ DW_TAG_lexical_block ]
!240 = metadata !{i32 128, i32 4, metadata !239, null}
!241 = metadata !{i32 129, i32 4, metadata !239, null}
!242 = metadata !{i32 130, i32 4, metadata !239, null}
!243 = metadata !{i32 131, i32 4, metadata !239, null}
!244 = metadata !{i32 132, i32 4, metadata !239, null}
!245 = metadata !{i32 133, i32 4, metadata !239, null}
!246 = metadata !{i32 134, i32 4, metadata !239, null}
!247 = metadata !{i32 135, i32 4, metadata !239, null}
!248 = metadata !{i32 127, i32 21, metadata !237, null}
!249 = metadata !{i32 137, i32 1, metadata !205, null}
