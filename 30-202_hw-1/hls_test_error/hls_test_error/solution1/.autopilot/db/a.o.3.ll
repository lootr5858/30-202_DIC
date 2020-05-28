; ModuleID = 'C:/Users/windows-10-vm1/Desktop/github/30-202_DIC/30-202_hw-1/hls_test_error/hls_test_error/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f80:128:128-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S32"
target triple = "i686-pc-mingw32"

@sha256_top_str = internal unnamed_addr constant [11 x i8] c"sha256_top\00" ; [#uses=1 type=[11 x i8]*]
@k = constant [64 x i32] [i32 1116352408, i32 1899447441, i32 -1245643825, i32 -373957723, i32 961987163, i32 1508970993, i32 -1841331548, i32 -1424204075, i32 -670586216, i32 310598401, i32 607225278, i32 1426881987, i32 1925078388, i32 -2132889090, i32 -1680079193, i32 -1046744716, i32 -459576895, i32 -272742522, i32 264347078, i32 604807628, i32 770255983, i32 1249150122, i32 1555081692, i32 1996064986, i32 -1740746414, i32 -1473132947, i32 -1341970488, i32 -1084653625, i32 -958395405, i32 -710438585, i32 113926993, i32 338241895, i32 666307205, i32 773529912, i32 1294757372, i32 1396182291, i32 1695183700, i32 1986661051, i32 -2117940946, i32 -1838011259, i32 -1564481375, i32 -1474664885, i32 -1035236496, i32 -949202525, i32 -778901479, i32 -694614492, i32 -200395387, i32 275423344, i32 430227734, i32 506948616, i32 659060556, i32 883997877, i32 958139571, i32 1322822218, i32 1537002063, i32 1747873779, i32 1955562222, i32 2024104815, i32 -2067236844, i32 -1933114872, i32 -1866530822, i32 -1538233109, i32 -1090935817, i32 -965641998], align 4 ; [#uses=1 type=[64 x i32]*]
@hash = common global [64 x i32] zeroinitializer, align 4 ; [#uses=0 type=[64 x i32]*]
@data = common global [64 x i32] zeroinitializer, align 4 ; [#uses=0 type=[64 x i32]*]
@ctx_state_7 = internal unnamed_addr global i32 0 ; [#uses=4 type=i32*]
@ctx_state_6 = internal unnamed_addr global i32 0 ; [#uses=4 type=i32*]
@ctx_state_5 = internal unnamed_addr global i32 0 ; [#uses=4 type=i32*]
@ctx_state_4 = internal unnamed_addr global i32 0 ; [#uses=4 type=i32*]
@ctx_state_3 = internal unnamed_addr global i32 0 ; [#uses=4 type=i32*]
@ctx_state_2 = internal unnamed_addr global i32 0 ; [#uses=4 type=i32*]
@ctx_state_1 = internal unnamed_addr global i32 0 ; [#uses=4 type=i32*]
@ctx_state_0 = internal unnamed_addr global i32 0 ; [#uses=4 type=i32*]
@ctx_in_data = internal global [64 x i8] zeroinitializer ; [#uses=16 type=[64 x i8]*]
@ctx_datalen = internal unnamed_addr global i32 0 ; [#uses=5 type=i32*]
@ctx_bitlen_1 = internal unnamed_addr global i32 0 ; [#uses=5 type=i32*]
@ctx_bitlen_0 = internal unnamed_addr global i32 0 ; [#uses=5 type=i32*]
@p_str2 = private unnamed_addr constant [24 x i8] c"sha256_final_final_loop\00", align 1 ; [#uses=1 type=[24 x i8]*]
@p_str1 = private unnamed_addr constant [20 x i8] c"sha256_final_memset\00", align 1 ; [#uses=1 type=[20 x i8]*]

; [#uses=3]
define internal fastcc void @sha256_transform([64 x i8]* nocapture %data_transform) {
  %m = alloca [64 x i32], align 4                 ; [#uses=7 type=[64 x i32]*]
  call void @llvm.dbg.value(metadata !{[64 x i8]* %data_transform}, i64 0, metadata !36), !dbg !64 ; [debug line = 16:80] [debug variable = data_transform]
  call void @llvm.dbg.declare(metadata !{[64 x i32]* %m}, metadata !65), !dbg !68 ; [debug line = 18:61] [debug variable = m]
  br label %1, !dbg !69                           ; [debug line = 20:9]

; <label>:1                                       ; preds = %2, %0
  %i = phi i5 [ 0, %0 ], [ %tmp_9, %2 ]           ; [#uses=3 type=i5]
  %j = phi i7 [ 0, %0 ], [ %j_1, %2 ]             ; [#uses=3 type=i7]
  %i_cast = zext i5 %i to i32, !dbg !69           ; [#uses=1 type=i32] [debug line = 20:9]
  %tmp = icmp eq i5 %i, -16, !dbg !69             ; [#uses=1 type=i1] [debug line = 20:9]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) ; [#uses=0 type=i32]
  %tmp_9 = add i5 %i, 1, !dbg !71                 ; [#uses=1 type=i5] [debug line = 20:26]
  br i1 %tmp, label %.preheader.preheader, label %2, !dbg !69 ; [debug line = 20:9]

.preheader.preheader:                             ; preds = %1
  br label %.preheader, !dbg !72                  ; [debug line = 22:4]

; <label>:2                                       ; preds = %1
  %j_cast4 = zext i7 %j to i32, !dbg !69          ; [#uses=1 type=i32] [debug line = 20:9]
  %data_transform_addr = getelementptr [64 x i8]* %data_transform, i32 0, i32 %j_cast4, !dbg !74 ; [#uses=1 type=i8*] [debug line = 21:7]
  %data_transform_load = load i8* %data_transform_addr, align 1, !dbg !74 ; [#uses=1 type=i8] [debug line = 21:7]
  %tmp_3 = trunc i7 %j to i6, !dbg !69            ; [#uses=3 type=i6] [debug line = 20:9]
  %tmp_8 = or i6 %tmp_3, 1, !dbg !74              ; [#uses=1 type=i6] [debug line = 21:7]
  %tmp_8_cast = zext i6 %tmp_8 to i32, !dbg !74   ; [#uses=1 type=i32] [debug line = 21:7]
  %data_transform_addr_1 = getelementptr [64 x i8]* %data_transform, i32 0, i32 %tmp_8_cast, !dbg !74 ; [#uses=1 type=i8*] [debug line = 21:7]
  %data_transform_load_1 = load i8* %data_transform_addr_1, align 1, !dbg !74 ; [#uses=1 type=i8] [debug line = 21:7]
  %tmp_1 = or i6 %tmp_3, 2, !dbg !74              ; [#uses=1 type=i6] [debug line = 21:7]
  %tmp_1_cast = zext i6 %tmp_1 to i32, !dbg !74   ; [#uses=1 type=i32] [debug line = 21:7]
  %data_transform_addr_2 = getelementptr [64 x i8]* %data_transform, i32 0, i32 %tmp_1_cast, !dbg !74 ; [#uses=1 type=i8*] [debug line = 21:7]
  %data_transform_load_2 = load i8* %data_transform_addr_2, align 1, !dbg !74 ; [#uses=1 type=i8] [debug line = 21:7]
  %tmp_4 = or i6 %tmp_3, 3, !dbg !74              ; [#uses=1 type=i6] [debug line = 21:7]
  %tmp_4_cast = zext i6 %tmp_4 to i32, !dbg !74   ; [#uses=1 type=i32] [debug line = 21:7]
  %data_transform_addr_3 = getelementptr [64 x i8]* %data_transform, i32 0, i32 %tmp_4_cast, !dbg !74 ; [#uses=1 type=i8*] [debug line = 21:7]
  %data_transform_load_3 = load i8* %data_transform_addr_3, align 1, !dbg !74 ; [#uses=1 type=i8] [debug line = 21:7]
  %tmp_7 = call i32 @_ssdm_op_BitConcatenate.i32.i8.i8.i8.i8(i8 %data_transform_load, i8 %data_transform_load_1, i8 %data_transform_load_2, i8 %data_transform_load_3), !dbg !74 ; [#uses=1 type=i32] [debug line = 21:7]
  %m_addr = getelementptr inbounds [64 x i32]* %m, i32 0, i32 %i_cast, !dbg !74 ; [#uses=1 type=i32*] [debug line = 21:7]
  store i32 %tmp_7, i32* %m_addr, align 4, !dbg !74 ; [debug line = 21:7]
  %j_1 = add i7 4, %j, !dbg !71                   ; [#uses=1 type=i7] [debug line = 20:26]
  call void @llvm.dbg.value(metadata !{i7 %j_1}, i64 0, metadata !75), !dbg !71 ; [debug line = 20:26] [debug variable = j]
  br label %1, !dbg !71                           ; [debug line = 20:26]

.preheader:                                       ; preds = %3, %.preheader.preheader
  %i_1 = phi i7 [ %i_3, %3 ], [ 16, %.preheader.preheader ] ; [#uses=7 type=i7]
  %i_1_cast = zext i7 %i_1 to i32, !dbg !72       ; [#uses=1 type=i32] [debug line = 22:4]
  %exitcond = icmp eq i7 %i_1, -64, !dbg !72      ; [#uses=1 type=i1] [debug line = 22:4]
  %empty_9 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 48, i64 48, i64 48) ; [#uses=0 type=i32]
  br i1 %exitcond, label %4, label %3, !dbg !72   ; [debug line = 22:4]

; <label>:3                                       ; preds = %.preheader
  %tmp_s = add i7 -2, %i_1, !dbg !76              ; [#uses=1 type=i7] [debug line = 23:7]
  %tmp_14_cast = zext i7 %tmp_s to i32, !dbg !76  ; [#uses=1 type=i32] [debug line = 23:7]
  %m_addr_1 = getelementptr inbounds [64 x i32]* %m, i32 0, i32 %tmp_14_cast, !dbg !76 ; [#uses=1 type=i32*] [debug line = 23:7]
  %m_load = load i32* %m_addr_1, align 4, !dbg !76 ; [#uses=5 type=i32] [debug line = 23:7]
  %tmp_2 = call i15 @_ssdm_op_PartSelect.i15.i32.i32.i32(i32 %m_load, i32 17, i32 31), !dbg !76 ; [#uses=1 type=i15] [debug line = 23:7]
  %tmp_10 = trunc i32 %m_load to i17              ; [#uses=1 type=i17]
  %tmp_5 = call i32 @_ssdm_op_BitConcatenate.i32.i17.i15(i17 %tmp_10, i15 %tmp_2), !dbg !76 ; [#uses=1 type=i32] [debug line = 23:7]
  %tmp_6 = call i13 @_ssdm_op_PartSelect.i13.i32.i32.i32(i32 %m_load, i32 19, i32 31), !dbg !76 ; [#uses=1 type=i13] [debug line = 23:7]
  %tmp_18 = trunc i32 %m_load to i19              ; [#uses=1 type=i19]
  %tmp_11 = call i32 @_ssdm_op_BitConcatenate.i32.i19.i13(i19 %tmp_18, i13 %tmp_6), !dbg !76 ; [#uses=1 type=i32] [debug line = 23:7]
  %tmp_12 = call i22 @_ssdm_op_PartSelect.i22.i32.i32.i32(i32 %m_load, i32 10, i32 31), !dbg !76 ; [#uses=1 type=i22] [debug line = 23:7]
  %tmp_13 = zext i22 %tmp_12 to i32, !dbg !76     ; [#uses=1 type=i32] [debug line = 23:7]
  %tmp2 = xor i32 %tmp_13, %tmp_11, !dbg !76      ; [#uses=1 type=i32] [debug line = 23:7]
  %tmp_14 = xor i32 %tmp2, %tmp_5, !dbg !76       ; [#uses=1 type=i32] [debug line = 23:7]
  %tmp_15 = add i7 -7, %i_1, !dbg !76             ; [#uses=1 type=i7] [debug line = 23:7]
  %tmp_24_cast = zext i7 %tmp_15 to i32, !dbg !76 ; [#uses=1 type=i32] [debug line = 23:7]
  %m_addr_2 = getelementptr inbounds [64 x i32]* %m, i32 0, i32 %tmp_24_cast, !dbg !76 ; [#uses=1 type=i32*] [debug line = 23:7]
  %m_load_1 = load i32* %m_addr_2, align 4, !dbg !76 ; [#uses=1 type=i32] [debug line = 23:7]
  %tmp_16 = add i7 -15, %i_1, !dbg !76            ; [#uses=1 type=i7] [debug line = 23:7]
  %tmp_25_cast = zext i7 %tmp_16 to i32, !dbg !76 ; [#uses=1 type=i32] [debug line = 23:7]
  %m_addr_3 = getelementptr inbounds [64 x i32]* %m, i32 0, i32 %tmp_25_cast, !dbg !76 ; [#uses=1 type=i32*] [debug line = 23:7]
  %m_load_2 = load i32* %m_addr_3, align 4, !dbg !76 ; [#uses=5 type=i32] [debug line = 23:7]
  %tmp_17 = call i25 @_ssdm_op_PartSelect.i25.i32.i32.i32(i32 %m_load_2, i32 7, i32 31), !dbg !76 ; [#uses=1 type=i25] [debug line = 23:7]
  %tmp_21 = trunc i32 %m_load_2 to i7             ; [#uses=1 type=i7]
  %tmp_19 = call i32 @_ssdm_op_BitConcatenate.i32.i7.i25(i7 %tmp_21, i25 %tmp_17), !dbg !76 ; [#uses=1 type=i32] [debug line = 23:7]
  %tmp_20 = call i14 @_ssdm_op_PartSelect.i14.i32.i32.i32(i32 %m_load_2, i32 18, i32 31), !dbg !76 ; [#uses=1 type=i14] [debug line = 23:7]
  %tmp_38 = trunc i32 %m_load_2 to i18            ; [#uses=1 type=i18]
  %tmp_22 = call i32 @_ssdm_op_BitConcatenate.i32.i18.i14(i18 %tmp_38, i14 %tmp_20), !dbg !76 ; [#uses=1 type=i32] [debug line = 23:7]
  %tmp_23 = call i29 @_ssdm_op_PartSelect.i29.i32.i32.i32(i32 %m_load_2, i32 3, i32 31), !dbg !76 ; [#uses=1 type=i29] [debug line = 23:7]
  %tmp_24 = zext i29 %tmp_23 to i32, !dbg !76     ; [#uses=1 type=i32] [debug line = 23:7]
  %tmp3 = xor i32 %tmp_24, %tmp_22, !dbg !76      ; [#uses=1 type=i32] [debug line = 23:7]
  %tmp_25 = xor i32 %tmp3, %tmp_19, !dbg !76      ; [#uses=1 type=i32] [debug line = 23:7]
  %tmp_26 = add i7 -16, %i_1, !dbg !76            ; [#uses=1 type=i7] [debug line = 23:7]
  %tmp_35_cast = zext i7 %tmp_26 to i32, !dbg !76 ; [#uses=1 type=i32] [debug line = 23:7]
  %m_addr_4 = getelementptr inbounds [64 x i32]* %m, i32 0, i32 %tmp_35_cast, !dbg !76 ; [#uses=1 type=i32*] [debug line = 23:7]
  %m_load_3 = load i32* %m_addr_4, align 4, !dbg !76 ; [#uses=1 type=i32] [debug line = 23:7]
  %tmp4 = add i32 %m_load_1, %m_load_3, !dbg !76  ; [#uses=1 type=i32] [debug line = 23:7]
  %tmp5 = add i32 %tmp_14, %tmp_25, !dbg !76      ; [#uses=1 type=i32] [debug line = 23:7]
  %tmp_27 = add i32 %tmp5, %tmp4, !dbg !76        ; [#uses=1 type=i32] [debug line = 23:7]
  %m_addr_5 = getelementptr inbounds [64 x i32]* %m, i32 0, i32 %i_1_cast, !dbg !76 ; [#uses=1 type=i32*] [debug line = 23:7]
  store i32 %tmp_27, i32* %m_addr_5, align 4, !dbg !76 ; [debug line = 23:7]
  %i_3 = add i7 1, %i_1, !dbg !77                 ; [#uses=1 type=i7] [debug line = 22:20]
  call void @llvm.dbg.value(metadata !{i7 %i_3}, i64 0, metadata !78), !dbg !77 ; [debug line = 22:20] [debug variable = i]
  br label %.preheader, !dbg !77                  ; [debug line = 22:20]

; <label>:4                                       ; preds = %.preheader
  %a = load i32* @ctx_state_0, align 16, !dbg !79 ; [#uses=2 type=i32] [debug line = 25:4]
  call void @llvm.dbg.value(metadata !{i32 %a}, i64 0, metadata !80), !dbg !79 ; [debug line = 25:4] [debug variable = a]
  %b = load i32* @ctx_state_1, align 4, !dbg !81  ; [#uses=2 type=i32] [debug line = 26:4]
  call void @llvm.dbg.value(metadata !{i32 %b}, i64 0, metadata !82), !dbg !81 ; [debug line = 26:4] [debug variable = b]
  %c = load i32* @ctx_state_2, align 8, !dbg !83  ; [#uses=2 type=i32] [debug line = 27:4]
  call void @llvm.dbg.value(metadata !{i32 %c}, i64 0, metadata !84), !dbg !83 ; [debug line = 27:4] [debug variable = c]
  %d = load i32* @ctx_state_3, align 4, !dbg !85  ; [#uses=2 type=i32] [debug line = 28:4]
  call void @llvm.dbg.value(metadata !{i32 %d}, i64 0, metadata !86), !dbg !85 ; [debug line = 28:4] [debug variable = d]
  %e = load i32* @ctx_state_4, align 16, !dbg !87 ; [#uses=2 type=i32] [debug line = 29:4]
  call void @llvm.dbg.value(metadata !{i32 %e}, i64 0, metadata !88), !dbg !87 ; [debug line = 29:4] [debug variable = e]
  %f = load i32* @ctx_state_5, align 4, !dbg !89  ; [#uses=2 type=i32] [debug line = 30:4]
  call void @llvm.dbg.value(metadata !{i32 %f}, i64 0, metadata !90), !dbg !89 ; [debug line = 30:4] [debug variable = f]
  %g = load i32* @ctx_state_6, align 8, !dbg !91  ; [#uses=2 type=i32] [debug line = 31:4]
  call void @llvm.dbg.value(metadata !{i32 %g}, i64 0, metadata !92), !dbg !91 ; [debug line = 31:4] [debug variable = g]
  %h = load i32* @ctx_state_7, align 4, !dbg !93  ; [#uses=2 type=i32] [debug line = 32:4]
  call void @llvm.dbg.value(metadata !{i32 %h}, i64 0, metadata !94), !dbg !93 ; [debug line = 32:4] [debug variable = h]
  br label %5, !dbg !95                           ; [debug line = 34:9]

; <label>:5                                       ; preds = %6, %4
  %h1 = phi i32 [ %h, %4 ], [ %h_1, %6 ]          ; [#uses=2 type=i32]
  %h_1 = phi i32 [ %g, %4 ], [ %g_1, %6 ]         ; [#uses=3 type=i32]
  %g_1 = phi i32 [ %f, %4 ], [ %f_1, %6 ]         ; [#uses=3 type=i32]
  %f_1 = phi i32 [ %e, %4 ], [ %e_1, %6 ]         ; [#uses=10 type=i32]
  %d1 = phi i32 [ %d, %4 ], [ %d_1, %6 ]          ; [#uses=2 type=i32]
  %d_1 = phi i32 [ %c, %4 ], [ %c_1, %6 ]         ; [#uses=4 type=i32]
  %c_1 = phi i32 [ %b, %4 ], [ %b_1, %6 ]         ; [#uses=4 type=i32]
  %b_1 = phi i32 [ %a, %4 ], [ %a_1, %6 ]         ; [#uses=9 type=i32]
  %i_2 = phi i7 [ 0, %4 ], [ %i_4, %6 ]           ; [#uses=3 type=i7]
  %i_2_cast = zext i7 %i_2 to i32, !dbg !95       ; [#uses=2 type=i32] [debug line = 34:9]
  %tmp_28 = icmp eq i7 %i_2, -64, !dbg !95        ; [#uses=1 type=i1] [debug line = 34:9]
  %empty_10 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) ; [#uses=0 type=i32]
  %i_4 = add i7 %i_2, 1, !dbg !97                 ; [#uses=1 type=i7] [debug line = 34:24]
  br i1 %tmp_28, label %7, label %6, !dbg !95     ; [debug line = 34:9]

; <label>:6                                       ; preds = %5
  %tmp_37 = call i26 @_ssdm_op_PartSelect.i26.i32.i32.i32(i32 %f_1, i32 6, i32 31), !dbg !98 ; [#uses=1 type=i26] [debug line = 35:7]
  %tmp_41 = trunc i32 %f_1 to i6                  ; [#uses=1 type=i6]
  %tmp_39 = call i32 @_ssdm_op_BitConcatenate.i32.i6.i26(i6 %tmp_41, i26 %tmp_37), !dbg !98 ; [#uses=1 type=i32] [debug line = 35:7]
  %tmp_40 = call i21 @_ssdm_op_PartSelect.i21.i32.i32.i32(i32 %f_1, i32 11, i32 31), !dbg !98 ; [#uses=1 type=i21] [debug line = 35:7]
  %tmp_44 = trunc i32 %f_1 to i11                 ; [#uses=1 type=i11]
  %tmp_42 = call i32 @_ssdm_op_BitConcatenate.i32.i11.i21(i11 %tmp_44, i21 %tmp_40), !dbg !98 ; [#uses=1 type=i32] [debug line = 35:7]
  %tmp_43 = call i7 @_ssdm_op_PartSelect.i7.i32.i32.i32(i32 %f_1, i32 25, i32 31), !dbg !98 ; [#uses=1 type=i7] [debug line = 35:7]
  %tmp_52 = trunc i32 %f_1 to i25                 ; [#uses=1 type=i25]
  %tmp_45 = call i32 @_ssdm_op_BitConcatenate.i32.i25.i7(i25 %tmp_52, i7 %tmp_43), !dbg !98 ; [#uses=1 type=i32] [debug line = 35:7]
  %tmp6 = xor i32 %tmp_39, %tmp_42, !dbg !98      ; [#uses=1 type=i32] [debug line = 35:7]
  %tmp_46 = xor i32 %tmp6, %tmp_45, !dbg !98      ; [#uses=1 type=i32] [debug line = 35:7]
  %tmp_47 = and i32 %f_1, %g_1, !dbg !98          ; [#uses=1 type=i32] [debug line = 35:7]
  %tmp_48 = xor i32 %f_1, -1, !dbg !98            ; [#uses=1 type=i32] [debug line = 35:7]
  %tmp_49 = and i32 %h_1, %tmp_48, !dbg !98       ; [#uses=1 type=i32] [debug line = 35:7]
  %tmp_50 = xor i32 %tmp_47, %tmp_49, !dbg !98    ; [#uses=1 type=i32] [debug line = 35:7]
  %k_addr = getelementptr inbounds [64 x i32]* @k, i32 0, i32 %i_2_cast, !dbg !98 ; [#uses=1 type=i32*] [debug line = 35:7]
  %k_load = load i32* %k_addr, align 4, !dbg !98  ; [#uses=1 type=i32] [debug line = 35:7]
  %m_addr_6 = getelementptr inbounds [64 x i32]* %m, i32 0, i32 %i_2_cast, !dbg !98 ; [#uses=1 type=i32*] [debug line = 35:7]
  %m_load_4 = load i32* %m_addr_6, align 4, !dbg !98 ; [#uses=1 type=i32] [debug line = 35:7]
  %tmp9 = add i32 %k_load, %m_load_4, !dbg !98    ; [#uses=1 type=i32] [debug line = 35:7]
  %tmp7 = add i32 %tmp_46, %tmp_50, !dbg !98      ; [#uses=1 type=i32] [debug line = 35:7]
  %tmp8 = add i32 %tmp7, %h1, !dbg !98            ; [#uses=1 type=i32] [debug line = 35:7]
  %t1 = add i32 %tmp8, %tmp9, !dbg !98            ; [#uses=2 type=i32] [debug line = 35:7]
  call void @llvm.dbg.value(metadata !{i32 %t1}, i64 0, metadata !100), !dbg !98 ; [debug line = 35:7] [debug variable = t1]
  %tmp_51 = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %b_1, i32 2, i32 31), !dbg !101 ; [#uses=1 type=i30] [debug line = 36:7]
  %tmp_55 = trunc i32 %b_1 to i2                  ; [#uses=1 type=i2]
  %tmp_53 = call i32 @_ssdm_op_BitConcatenate.i32.i2.i30(i2 %tmp_55, i30 %tmp_51), !dbg !101 ; [#uses=1 type=i32] [debug line = 36:7]
  %tmp_54 = call i19 @_ssdm_op_PartSelect.i19.i32.i32.i32(i32 %b_1, i32 13, i32 31), !dbg !101 ; [#uses=1 type=i19] [debug line = 36:7]
  %tmp_58 = trunc i32 %b_1 to i13                 ; [#uses=1 type=i13]
  %tmp_56 = call i32 @_ssdm_op_BitConcatenate.i32.i13.i19(i13 %tmp_58, i19 %tmp_54), !dbg !101 ; [#uses=1 type=i32] [debug line = 36:7]
  %tmp_57 = call i10 @_ssdm_op_PartSelect.i10.i32.i32.i32(i32 %b_1, i32 22, i32 31), !dbg !101 ; [#uses=1 type=i10] [debug line = 36:7]
  %tmp_65 = trunc i32 %b_1 to i22                 ; [#uses=1 type=i22]
  %tmp_59 = call i32 @_ssdm_op_BitConcatenate.i32.i22.i10(i22 %tmp_65, i10 %tmp_57), !dbg !101 ; [#uses=1 type=i32] [debug line = 36:7]
  %tmp10 = xor i32 %tmp_53, %tmp_56, !dbg !101    ; [#uses=1 type=i32] [debug line = 36:7]
  %tmp_60 = xor i32 %tmp10, %tmp_59, !dbg !101    ; [#uses=1 type=i32] [debug line = 36:7]
  %tmp_61 = xor i32 %c_1, %d_1, !dbg !101         ; [#uses=1 type=i32] [debug line = 36:7]
  %tmp_62 = and i32 %b_1, %tmp_61, !dbg !101      ; [#uses=1 type=i32] [debug line = 36:7]
  %tmp_63 = and i32 %c_1, %d_1, !dbg !101         ; [#uses=1 type=i32] [debug line = 36:7]
  %tmp_64 = xor i32 %tmp_62, %tmp_63, !dbg !101   ; [#uses=1 type=i32] [debug line = 36:7]
  call void @llvm.dbg.value(metadata !{i32 %h_1}, i64 0, metadata !94), !dbg !102 ; [debug line = 37:7] [debug variable = h]
  call void @llvm.dbg.value(metadata !{i32 %g_1}, i64 0, metadata !92), !dbg !103 ; [debug line = 38:7] [debug variable = g]
  call void @llvm.dbg.value(metadata !{i32 %f_1}, i64 0, metadata !90), !dbg !104 ; [debug line = 39:7] [debug variable = f]
  %e_1 = add i32 %t1, %d1, !dbg !105              ; [#uses=1 type=i32] [debug line = 40:7]
  call void @llvm.dbg.value(metadata !{i32 %e_1}, i64 0, metadata !88), !dbg !105 ; [debug line = 40:7] [debug variable = e]
  call void @llvm.dbg.value(metadata !{i32 %d_1}, i64 0, metadata !86), !dbg !106 ; [debug line = 41:7] [debug variable = d]
  call void @llvm.dbg.value(metadata !{i32 %c_1}, i64 0, metadata !84), !dbg !107 ; [debug line = 42:7] [debug variable = c]
  call void @llvm.dbg.value(metadata !{i32 %b_1}, i64 0, metadata !82), !dbg !108 ; [debug line = 43:7] [debug variable = b]
  %tmp11 = add i32 %tmp_64, %t1, !dbg !109        ; [#uses=1 type=i32] [debug line = 44:7]
  %a_1 = add i32 %tmp11, %tmp_60, !dbg !109       ; [#uses=1 type=i32] [debug line = 44:7]
  call void @llvm.dbg.value(metadata !{i32 %a_1}, i64 0, metadata !80), !dbg !109 ; [debug line = 44:7] [debug variable = a]
  call void @llvm.dbg.value(metadata !{i7 %i_4}, i64 0, metadata !78), !dbg !97 ; [debug line = 34:24] [debug variable = i]
  br label %5, !dbg !97                           ; [debug line = 34:24]

; <label>:7                                       ; preds = %5
  %tmp_29 = add i32 %a, %b_1, !dbg !110           ; [#uses=1 type=i32] [debug line = 47:4]
  store i32 %tmp_29, i32* @ctx_state_0, align 16, !dbg !110 ; [debug line = 47:4]
  %tmp_30 = add i32 %b, %c_1, !dbg !111           ; [#uses=1 type=i32] [debug line = 48:4]
  store i32 %tmp_30, i32* @ctx_state_1, align 4, !dbg !111 ; [debug line = 48:4]
  %tmp_31 = add i32 %c, %d_1, !dbg !112           ; [#uses=1 type=i32] [debug line = 49:4]
  store i32 %tmp_31, i32* @ctx_state_2, align 8, !dbg !112 ; [debug line = 49:4]
  %tmp_32 = add i32 %d, %d1, !dbg !113            ; [#uses=1 type=i32] [debug line = 50:4]
  store i32 %tmp_32, i32* @ctx_state_3, align 4, !dbg !113 ; [debug line = 50:4]
  %tmp_33 = add i32 %e, %f_1, !dbg !114           ; [#uses=1 type=i32] [debug line = 51:4]
  store i32 %tmp_33, i32* @ctx_state_4, align 16, !dbg !114 ; [debug line = 51:4]
  %tmp_34 = add i32 %f, %g_1, !dbg !115           ; [#uses=1 type=i32] [debug line = 52:4]
  store i32 %tmp_34, i32* @ctx_state_5, align 4, !dbg !115 ; [debug line = 52:4]
  %tmp_35 = add i32 %g, %h_1, !dbg !116           ; [#uses=1 type=i32] [debug line = 53:4]
  store i32 %tmp_35, i32* @ctx_state_6, align 8, !dbg !116 ; [debug line = 53:4]
  %tmp_36 = add i32 %h, %h1, !dbg !117            ; [#uses=1 type=i32] [debug line = 54:4]
  store i32 %tmp_36, i32* @ctx_state_7, align 4, !dbg !117 ; [debug line = 54:4]
  ret void, !dbg !118                             ; [debug line = 55:1]
}

; [#uses=0]
define void @sha256_top([32 x i8]* %data, [32 x i8]* %hash) nounwind {
  call void (...)* @_ssdm_op_SpecBitsMap([32 x i8]* %data) nounwind, !map !119
  call void (...)* @_ssdm_op_SpecBitsMap([32 x i8]* %hash) nounwind, !map !125
  call void (...)* @_ssdm_op_SpecTopModule([11 x i8]* @sha256_top_str) nounwind
  call void @llvm.dbg.value(metadata !{[32 x i8]* %data}, i64 0, metadata !129), !dbg !136 ; [debug line = 140:47] [debug variable = data]
  call void @llvm.dbg.value(metadata !{[32 x i8]* %hash}, i64 0, metadata !137), !dbg !138 ; [debug line = 140:87] [debug variable = hash]
  store i32 0, i32* @ctx_datalen, align 4, !dbg !139 ; [debug line = 59:4@145:2]
  store i32 0, i32* @ctx_bitlen_0, align 4, !dbg !146 ; [debug line = 60:4@145:2]
  store i32 0, i32* @ctx_bitlen_1, align 4, !dbg !147 ; [debug line = 61:4@145:2]
  store i32 1779033703, i32* @ctx_state_0, align 16, !dbg !148 ; [debug line = 62:4@145:2]
  store i32 -1150833019, i32* @ctx_state_1, align 4, !dbg !149 ; [debug line = 63:4@145:2]
  store i32 1013904242, i32* @ctx_state_2, align 8, !dbg !150 ; [debug line = 64:4@145:2]
  store i32 -1521486534, i32* @ctx_state_3, align 4, !dbg !151 ; [debug line = 65:4@145:2]
  store i32 1359893119, i32* @ctx_state_4, align 16, !dbg !152 ; [debug line = 66:4@145:2]
  store i32 -1694144372, i32* @ctx_state_5, align 4, !dbg !153 ; [debug line = 67:4@145:2]
  store i32 528734635, i32* @ctx_state_6, align 8, !dbg !154 ; [debug line = 68:4@145:2]
  store i32 1541459225, i32* @ctx_state_7, align 4, !dbg !155 ; [debug line = 69:4@145:2]
  call void @llvm.dbg.value(metadata !{[32 x i8]* %data}, i64 0, metadata !156) nounwind, !dbg !161 ; [debug line = 72:74@150:2] [debug variable = data]
  br label %1, !dbg !162                          ; [debug line = 76:7@150:2]

; <label>:1                                       ; preds = %._crit_edge.i, %0
  %i_i = phi i6 [ 0, %0 ], [ %i, %._crit_edge.i ] ; [#uses=3 type=i6]
  %i_i_cast1 = zext i6 %i_i to i32, !dbg !162     ; [#uses=1 type=i32] [debug line = 76:7@150:2]
  %exitcond_i = icmp eq i6 %i_i, -32, !dbg !162   ; [#uses=1 type=i1] [debug line = 76:7@150:2]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 32, i64 32, i64 32) nounwind ; [#uses=0 type=i32]
  %i = add i6 %i_i, 1, !dbg !165                  ; [#uses=1 type=i6] [debug line = 76:21@150:2]
  br i1 %exitcond_i, label %sha256_update.exit, label %2, !dbg !162 ; [debug line = 76:7@150:2]

; <label>:2                                       ; preds = %1
  %data_addr = getelementptr [32 x i8]* %data, i32 0, i32 %i_i_cast1, !dbg !166 ; [#uses=1 type=i8*] [debug line = 77:7@150:2]
  %data_load = load i8* %data_addr, align 1, !dbg !166 ; [#uses=1 type=i8] [debug line = 77:7@150:2]
  %ctx_datalen_load = load i32* @ctx_datalen, align 4, !dbg !166 ; [#uses=2 type=i32] [debug line = 77:7@150:2]
  %ctx_in_data_addr = getelementptr [64 x i8]* @ctx_in_data, i32 0, i32 %ctx_datalen_load, !dbg !166 ; [#uses=1 type=i8*] [debug line = 77:7@150:2]
  store i8 %data_load, i8* %ctx_in_data_addr, align 1, !dbg !166 ; [debug line = 77:7@150:2]
  %ctx_datalen_assign_i = add i32 %ctx_datalen_load, 1, !dbg !168 ; [#uses=2 type=i32] [debug line = 78:7@150:2]
  store i32 %ctx_datalen_assign_i, i32* @ctx_datalen, align 4, !dbg !168 ; [debug line = 78:7@150:2]
  %tmp_1_i = icmp eq i32 %ctx_datalen_assign_i, 64, !dbg !169 ; [#uses=1 type=i1] [debug line = 79:7@150:2]
  br i1 %tmp_1_i, label %3, label %._crit_edge.i, !dbg !169 ; [debug line = 79:7@150:2]

; <label>:3                                       ; preds = %2
  call fastcc void @sha256_transform([64 x i8]* @ctx_in_data) nounwind, !dbg !170 ; [debug line = 80:10@150:2]
  %ctx_bitlen_0_load = load i32* @ctx_bitlen_0, align 4, !dbg !172 ; [#uses=2 type=i32] [debug line = 81:10@150:2]
  %tmp_2_i = icmp ugt i32 %ctx_bitlen_0_load, -513, !dbg !172 ; [#uses=1 type=i1] [debug line = 81:10@150:2]
  br i1 %tmp_2_i, label %4, label %._crit_edge1.i, !dbg !172 ; [debug line = 81:10@150:2]

; <label>:4                                       ; preds = %3
  %ctx_bitlen_1_load = load i32* @ctx_bitlen_1, align 4, !dbg !173 ; [#uses=1 type=i32] [debug line = 81:58@150:2]
  %tmp_3_i = add i32 %ctx_bitlen_1_load, 1, !dbg !173 ; [#uses=1 type=i32] [debug line = 81:58@150:2]
  store i32 %tmp_3_i, i32* @ctx_bitlen_1, align 4, !dbg !173 ; [debug line = 81:58@150:2]
  br label %._crit_edge1.i, !dbg !173             ; [debug line = 81:58@150:2]

._crit_edge1.i:                                   ; preds = %4, %3
  %tmp_4_i = add i32 %ctx_bitlen_0_load, 512, !dbg !174 ; [#uses=1 type=i32] [debug line = 81:83@150:2]
  store i32 %tmp_4_i, i32* @ctx_bitlen_0, align 4, !dbg !174 ; [debug line = 81:83@150:2]
  store i32 0, i32* @ctx_datalen, align 4, !dbg !175 ; [debug line = 82:10@150:2]
  br label %._crit_edge.i, !dbg !176              ; [debug line = 83:7@150:2]

._crit_edge.i:                                    ; preds = %._crit_edge1.i, %2
  call void @llvm.dbg.value(metadata !{i6 %i}, i64 0, metadata !177) nounwind, !dbg !165 ; [debug line = 76:21@150:2] [debug variable = i]
  br label %1, !dbg !165                          ; [debug line = 76:21@150:2]

sha256_update.exit:                               ; preds = %1
  call fastcc void @sha256_final([32 x i8]* %hash) nounwind, !dbg !178 ; [debug line = 153:2]
  ret void, !dbg !179                             ; [debug line = 154:1]
}

; [#uses=1]
define internal fastcc void @sha256_final([32 x i8]* nocapture %final_hash) {
  call void @llvm.dbg.value(metadata !{[32 x i8]* %final_hash}, i64 0, metadata !180), !dbg !182 ; [debug line = 87:72] [debug variable = final_hash]
  %i = load i32* @ctx_datalen, align 4, !dbg !183 ; [#uses=6 type=i32] [debug line = 91:4]
  call void @llvm.dbg.value(metadata !{i32 %i}, i64 0, metadata !185), !dbg !183 ; [debug line = 91:4] [debug variable = i]
  %tmp = icmp ult i32 %i, 56, !dbg !186           ; [#uses=1 type=i1] [debug line = 94:4]
  %ctx_in_data_addr = getelementptr [64 x i8]* @ctx_in_data, i32 0, i32 %i, !dbg !187 ; [#uses=1 type=i8*] [debug line = 95:7]
  store i8 -128, i8* %ctx_in_data_addr, align 1, !dbg !187 ; [debug line = 95:7]
  br i1 %tmp, label %.preheader18.preheader, label %.preheader.preheader, !dbg !186 ; [debug line = 94:4]

.preheader18.preheader:                           ; preds = %0
  br label %.preheader18, !dbg !187               ; [debug line = 95:7]

.preheader.preheader:                             ; preds = %0
  br label %.preheader, !dbg !189                 ; [debug line = 100:7]

.preheader18:                                     ; preds = %1, %.preheader18.preheader
  %i_0_in = phi i32 [ %i_5, %1 ], [ %i, %.preheader18.preheader ] ; [#uses=2 type=i32]
  %i_5 = add i32 %i_0_in, 1, !dbg !187            ; [#uses=2 type=i32] [debug line = 95:7]
  call void @llvm.dbg.value(metadata !{i32 %i_5}, i64 0, metadata !185), !dbg !187 ; [debug line = 95:7] [debug variable = i]
  %exitcond = icmp eq i32 %i_0_in, 55, !dbg !191  ; [#uses=1 type=i1] [debug line = 96:7]
  br i1 %exitcond, label %.loopexit.loopexit11, label %1, !dbg !191 ; [debug line = 96:7]

; <label>:1                                       ; preds = %.preheader18
  %ctx_in_data_addr_1 = getelementptr [64 x i8]* @ctx_in_data, i32 0, i32 %i_5, !dbg !192 ; [#uses=1 type=i8*] [debug line = 97:10]
  store i8 0, i8* %ctx_in_data_addr_1, align 1, !dbg !192 ; [debug line = 97:10]
  br label %.preheader18, !dbg !192               ; [debug line = 97:10]

.preheader:                                       ; preds = %2, %.preheader.preheader
  %i_1_in = phi i32 [ %i_1, %2 ], [ %i, %.preheader.preheader ] ; [#uses=1 type=i32]
  %i_1 = add i32 %i_1_in, 1, !dbg !189            ; [#uses=3 type=i32] [debug line = 100:7]
  call void @llvm.dbg.value(metadata !{i32 %i_1}, i64 0, metadata !185), !dbg !189 ; [debug line = 100:7] [debug variable = i]
  %tmp_75 = call i26 @_ssdm_op_PartSelect.i26.i32.i32.i32(i32 %i_1, i32 6, i32 31), !dbg !193 ; [#uses=1 type=i26] [debug line = 101:7]
  %icmp = icmp eq i26 %tmp_75, 0, !dbg !193       ; [#uses=1 type=i1] [debug line = 101:7]
  br i1 %icmp, label %2, label %3, !dbg !193      ; [debug line = 101:7]

; <label>:2                                       ; preds = %.preheader
  %ctx_in_data_addr_2 = getelementptr [64 x i8]* @ctx_in_data, i32 0, i32 %i_1, !dbg !194 ; [#uses=1 type=i8*] [debug line = 102:10]
  store i8 0, i8* %ctx_in_data_addr_2, align 1, !dbg !194 ; [debug line = 102:10]
  br label %.preheader, !dbg !194                 ; [debug line = 102:10]

; <label>:3                                       ; preds = %.preheader
  call fastcc void @sha256_transform([64 x i8]* @ctx_in_data), !dbg !195 ; [debug line = 103:7]
  br label %4, !dbg !196                          ; [debug line = 107:6]

; <label>:4                                       ; preds = %5, %3
  %j = phi i6 [ 0, %3 ], [ %j_2, %5 ]             ; [#uses=3 type=i6]
  %j_cast5 = zext i6 %j to i32, !dbg !196         ; [#uses=1 type=i32] [debug line = 107:6]
  %tmp_s = icmp eq i6 %j, -8, !dbg !196           ; [#uses=1 type=i1] [debug line = 107:6]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 56, i64 56, i64 56) ; [#uses=0 type=i32]
  %j_2 = add i6 %j, 1, !dbg !198                  ; [#uses=1 type=i6] [debug line = 107:21]
  br i1 %tmp_s, label %.loopexit.loopexit, label %5, !dbg !196 ; [debug line = 107:6]

; <label>:5                                       ; preds = %4
  call void (...)* @_ssdm_op_SpecLoopName([20 x i8]* @p_str1) nounwind, !dbg !199 ; [debug line = 107:33]
  %ctx_in_data_addr_3 = getelementptr [64 x i8]* @ctx_in_data, i32 0, i32 %j_cast5, !dbg !201 ; [#uses=1 type=i8*] [debug line = 108:6]
  store i8 0, i8* %ctx_in_data_addr_3, align 1, !dbg !201 ; [debug line = 108:6]
  call void @llvm.dbg.value(metadata !{i6 %j_2}, i64 0, metadata !202), !dbg !198 ; [debug line = 107:21] [debug variable = j]
  br label %4, !dbg !198                          ; [debug line = 107:21]

.loopexit.loopexit:                               ; preds = %4
  br label %.loopexit

.loopexit.loopexit11:                             ; preds = %.preheader18
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit11, %.loopexit.loopexit
  %ctx_bitlen_0_load = load i32* @ctx_bitlen_0, align 4, !dbg !203 ; [#uses=5 type=i32] [debug line = 113:4]
  %tmp_83 = trunc i32 %i to i6                    ; [#uses=1 type=i6]
  %tmp_85 = trunc i32 %i to i5                    ; [#uses=1 type=i5]
  %tmp_65 = call i9 @_ssdm_op_BitConcatenate.i9.i6.i3(i6 %tmp_83, i3 0), !dbg !203 ; [#uses=3 type=i9] [debug line = 113:4]
  %tmp_82_cast = zext i9 %tmp_65 to i32, !dbg !203 ; [#uses=2 type=i32] [debug line = 113:4]
  %tmp_66 = xor i32 %tmp_82_cast, -1, !dbg !203   ; [#uses=1 type=i32] [debug line = 113:4]
  %tmp_67 = icmp ugt i32 %ctx_bitlen_0_load, %tmp_66, !dbg !203 ; [#uses=1 type=i1] [debug line = 113:4]
  %ctx_bitlen_1_load = load i32* @ctx_bitlen_1, align 4, !dbg !204 ; [#uses=2 type=i32] [debug line = 113:70]
  br i1 %tmp_67, label %6, label %.loopexit._crit_edge, !dbg !203 ; [debug line = 113:4]

; <label>:6                                       ; preds = %.loopexit
  %tmp_68 = add i32 %ctx_bitlen_1_load, 1, !dbg !204 ; [#uses=2 type=i32] [debug line = 113:70]
  store i32 %tmp_68, i32* @ctx_bitlen_1, align 4, !dbg !204 ; [debug line = 113:70]
  br label %.loopexit._crit_edge, !dbg !204       ; [debug line = 113:70]

.loopexit._crit_edge:                             ; preds = %6, %.loopexit
  %ctx_bitlen_1_loc = phi i32 [ %tmp_68, %6 ], [ %ctx_bitlen_1_load, %.loopexit ] ; [#uses=4 type=i32]
  %tmp_12 = call i8 @_ssdm_op_BitConcatenate.i8.i5.i3(i5 %tmp_85, i3 0) ; [#uses=1 type=i8]
  %tmp_87 = trunc i32 %ctx_bitlen_0_load to i8    ; [#uses=1 type=i8]
  %tmp_89 = trunc i32 %ctx_bitlen_0_load to i16   ; [#uses=1 type=i16]
  %tmp_15 = zext i9 %tmp_65 to i16                ; [#uses=1 type=i16]
  %tmp_91 = trunc i32 %ctx_bitlen_0_load to i24   ; [#uses=1 type=i24]
  %tmp_17 = zext i9 %tmp_65 to i24                ; [#uses=1 type=i24]
  %tmp_69 = add i32 %tmp_82_cast, %ctx_bitlen_0_load, !dbg !205 ; [#uses=2 type=i32] [debug line = 113:94]
  %tmp_86_cast3 = add i24 %tmp_91, %tmp_17, !dbg !205 ; [#uses=1 type=i24] [debug line = 113:94]
  %tmp_86_cast = add i16 %tmp_89, %tmp_15, !dbg !205 ; [#uses=1 type=i16] [debug line = 113:94]
  store i32 %tmp_69, i32* @ctx_bitlen_0, align 4, !dbg !205 ; [debug line = 113:94]
  %tmp_70 = add i8 %tmp_87, %tmp_12, !dbg !206    ; [#uses=1 type=i8] [debug line = 114:4]
  store i8 %tmp_70, i8* getelementptr inbounds ([64 x i8]* @ctx_in_data, i32 0, i32 63), align 1, !dbg !206 ; [debug line = 114:4]
  %tmp_71 = call i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16 %tmp_86_cast, i32 8, i32 15), !dbg !207 ; [#uses=1 type=i8] [debug line = 115:4]
  store i8 %tmp_71, i8* getelementptr inbounds ([64 x i8]* @ctx_in_data, i32 0, i32 62), align 2, !dbg !207 ; [debug line = 115:4]
  %tmp_72 = call i8 @_ssdm_op_PartSelect.i8.i24.i32.i32(i24 %tmp_86_cast3, i32 16, i32 23), !dbg !208 ; [#uses=1 type=i8] [debug line = 116:4]
  store i8 %tmp_72, i8* getelementptr inbounds ([64 x i8]* @ctx_in_data, i32 0, i32 61), align 1, !dbg !208 ; [debug line = 116:4]
  %tmp_73 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %tmp_69, i32 24, i32 31), !dbg !209 ; [#uses=1 type=i8] [debug line = 117:4]
  store i8 %tmp_73, i8* getelementptr inbounds ([64 x i8]* @ctx_in_data, i32 0, i32 60), align 4, !dbg !209 ; [debug line = 117:4]
  %tmp_93 = trunc i32 %ctx_bitlen_1_loc to i8, !dbg !210 ; [#uses=1 type=i8] [debug line = 118:4]
  store i8 %tmp_93, i8* getelementptr inbounds ([64 x i8]* @ctx_in_data, i32 0, i32 59), align 1, !dbg !210 ; [debug line = 118:4]
  %tmp_74 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %ctx_bitlen_1_loc, i32 8, i32 15), !dbg !211 ; [#uses=1 type=i8] [debug line = 119:4]
  store i8 %tmp_74, i8* getelementptr inbounds ([64 x i8]* @ctx_in_data, i32 0, i32 58), align 2, !dbg !211 ; [debug line = 119:4]
  %tmp_76 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %ctx_bitlen_1_loc, i32 16, i32 23), !dbg !212 ; [#uses=1 type=i8] [debug line = 120:4]
  store i8 %tmp_76, i8* getelementptr inbounds ([64 x i8]* @ctx_in_data, i32 0, i32 57), align 1, !dbg !212 ; [debug line = 120:4]
  %tmp_77 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %ctx_bitlen_1_loc, i32 24, i32 31), !dbg !213 ; [#uses=1 type=i8] [debug line = 121:4]
  store i8 %tmp_77, i8* getelementptr inbounds ([64 x i8]* @ctx_in_data, i32 0, i32 56), align 8, !dbg !213 ; [debug line = 121:4]
  call fastcc void @sha256_transform([64 x i8]* @ctx_in_data), !dbg !214 ; [debug line = 122:4]
  br label %7, !dbg !215                          ; [debug line = 127:9]

; <label>:7                                       ; preds = %8, %.loopexit._crit_edge
  %i_2 = phi i3 [ 0, %.loopexit._crit_edge ], [ %i_6, %8 ] ; [#uses=8 type=i3]
  %i_2_cast2 = zext i3 %i_2 to i32, !dbg !215     ; [#uses=1 type=i32] [debug line = 127:9]
  %i_2_cast1 = zext i3 %i_2 to i5, !dbg !215      ; [#uses=1 type=i5] [debug line = 127:9]
  %tmp_78 = icmp eq i3 %i_2, -4, !dbg !215        ; [#uses=1 type=i1] [debug line = 127:9]
  %empty_11 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4) ; [#uses=0 type=i32]
  %i_6 = add i3 %i_2, 1, !dbg !217                ; [#uses=1 type=i3] [debug line = 127:21]
  br i1 %tmp_78, label %9, label %8, !dbg !215    ; [debug line = 127:9]

; <label>:8                                       ; preds = %7
  call void (...)* @_ssdm_op_SpecLoopName([24 x i8]* @p_str2) nounwind, !dbg !218 ; [debug line = 127:27]
  %ctx_state_0_load = load i32* @ctx_state_0, align 16, !dbg !220 ; [#uses=1 type=i32] [debug line = 128:4]
  %tmp_95 = trunc i3 %i_2 to i2                   ; [#uses=1 type=i2]
  %tmp_79 = call i5 @_ssdm_op_BitConcatenate.i5.i2.i3(i2 %tmp_95, i3 0), !dbg !220 ; [#uses=1 type=i5] [debug line = 128:4]
  %tmp_80 = sub i5 -8, %tmp_79, !dbg !220         ; [#uses=1 type=i5] [debug line = 128:4]
  %tmp_103_cast = zext i5 %tmp_80 to i32, !dbg !220 ; [#uses=8 type=i32] [debug line = 128:4]
  %tmp_81 = lshr i32 %ctx_state_0_load, %tmp_103_cast, !dbg !220 ; [#uses=1 type=i32] [debug line = 128:4]
  %tmp_97 = trunc i32 %tmp_81 to i8, !dbg !220    ; [#uses=1 type=i8] [debug line = 128:4]
  %final_hash_addr = getelementptr [32 x i8]* %final_hash, i32 0, i32 %i_2_cast2, !dbg !220 ; [#uses=1 type=i8*] [debug line = 128:4]
  store i8 %tmp_97, i8* %final_hash_addr, align 1, !dbg !220 ; [debug line = 128:4]
  %ctx_state_1_load = load i32* @ctx_state_1, align 4, !dbg !221 ; [#uses=1 type=i32] [debug line = 129:4]
  %tmp_82 = lshr i32 %ctx_state_1_load, %tmp_103_cast, !dbg !221 ; [#uses=1 type=i32] [debug line = 129:4]
  %tmp_98 = trunc i32 %tmp_82 to i8, !dbg !221    ; [#uses=1 type=i8] [debug line = 129:4]
  %sum2 = xor i3 %i_2, -4                         ; [#uses=3 type=i3]
  %sum2_cast = zext i3 %sum2 to i32               ; [#uses=1 type=i32]
  %final_hash_addr_1 = getelementptr [32 x i8]* %final_hash, i32 0, i32 %sum2_cast, !dbg !221 ; [#uses=1 type=i8*] [debug line = 129:4]
  store i8 %tmp_98, i8* %final_hash_addr_1, align 1, !dbg !221 ; [debug line = 129:4]
  %ctx_state_2_load = load i32* @ctx_state_2, align 8, !dbg !222 ; [#uses=1 type=i32] [debug line = 130:4]
  %tmp_84 = lshr i32 %ctx_state_2_load, %tmp_103_cast, !dbg !222 ; [#uses=1 type=i32] [debug line = 130:4]
  %tmp_99 = trunc i32 %tmp_84 to i8, !dbg !222    ; [#uses=1 type=i8] [debug line = 130:4]
  %sum1 = call i4 @_ssdm_op_BitConcatenate.i4.i1.i3(i1 true, i3 %i_2) ; [#uses=2 type=i4]
  %sum4_cast = zext i4 %sum1 to i32               ; [#uses=1 type=i32]
  %final_hash_addr_2 = getelementptr [32 x i8]* %final_hash, i32 0, i32 %sum4_cast, !dbg !222 ; [#uses=1 type=i8*] [debug line = 130:4]
  store i8 %tmp_99, i8* %final_hash_addr_2, align 1, !dbg !222 ; [debug line = 130:4]
  %ctx_state_3_load = load i32* @ctx_state_3, align 4, !dbg !223 ; [#uses=1 type=i32] [debug line = 131:4]
  %tmp_86 = lshr i32 %ctx_state_3_load, %tmp_103_cast, !dbg !223 ; [#uses=1 type=i32] [debug line = 131:4]
  %tmp_100 = trunc i32 %tmp_86 to i8, !dbg !223   ; [#uses=1 type=i8] [debug line = 131:4]
  %sum6_cast8 = sext i3 %sum2 to i4               ; [#uses=1 type=i4]
  %sum6_cast = zext i4 %sum6_cast8 to i32         ; [#uses=1 type=i32]
  %final_hash_addr_3 = getelementptr [32 x i8]* %final_hash, i32 0, i32 %sum6_cast, !dbg !223 ; [#uses=1 type=i8*] [debug line = 131:4]
  store i8 %tmp_100, i8* %final_hash_addr_3, align 1, !dbg !223 ; [debug line = 131:4]
  %ctx_state_4_load = load i32* @ctx_state_4, align 16, !dbg !224 ; [#uses=1 type=i32] [debug line = 132:4]
  %tmp_88 = lshr i32 %ctx_state_4_load, %tmp_103_cast, !dbg !224 ; [#uses=1 type=i32] [debug line = 132:4]
  %tmp_101 = trunc i32 %tmp_88 to i8, !dbg !224   ; [#uses=1 type=i8] [debug line = 132:4]
  %sum4 = call i5 @_ssdm_op_BitConcatenate.i5.i2.i3(i2 -2, i3 %i_2) ; [#uses=1 type=i5]
  %sum8_cast = zext i5 %sum4 to i32               ; [#uses=1 type=i32]
  %final_hash_addr_4 = getelementptr [32 x i8]* %final_hash, i32 0, i32 %sum8_cast, !dbg !224 ; [#uses=1 type=i8*] [debug line = 132:4]
  store i8 %tmp_101, i8* %final_hash_addr_4, align 1, !dbg !224 ; [debug line = 132:4]
  %ctx_state_5_load = load i32* @ctx_state_5, align 4, !dbg !225 ; [#uses=1 type=i32] [debug line = 133:4]
  %tmp_90 = lshr i32 %ctx_state_5_load, %tmp_103_cast, !dbg !225 ; [#uses=1 type=i32] [debug line = 133:4]
  %tmp_102 = trunc i32 %tmp_90 to i8, !dbg !225   ; [#uses=1 type=i8] [debug line = 133:4]
  %sum = add i5 -12, %i_2_cast1                   ; [#uses=1 type=i5]
  %sum_cast = zext i5 %sum to i32                 ; [#uses=1 type=i32]
  %final_hash_addr_5 = getelementptr [32 x i8]* %final_hash, i32 0, i32 %sum_cast, !dbg !225 ; [#uses=1 type=i8*] [debug line = 133:4]
  store i8 %tmp_102, i8* %final_hash_addr_5, align 1, !dbg !225 ; [debug line = 133:4]
  %ctx_state_6_load = load i32* @ctx_state_6, align 8, !dbg !226 ; [#uses=1 type=i32] [debug line = 134:4]
  %tmp_92 = lshr i32 %ctx_state_6_load, %tmp_103_cast, !dbg !226 ; [#uses=1 type=i32] [debug line = 134:4]
  %tmp_103 = trunc i32 %tmp_92 to i8, !dbg !226   ; [#uses=1 type=i8] [debug line = 134:4]
  %sum1_cast7 = sext i4 %sum1 to i5               ; [#uses=1 type=i5]
  %sum1_cast = zext i5 %sum1_cast7 to i32         ; [#uses=1 type=i32]
  %final_hash_addr_6 = getelementptr [32 x i8]* %final_hash, i32 0, i32 %sum1_cast, !dbg !226 ; [#uses=1 type=i8*] [debug line = 134:4]
  store i8 %tmp_103, i8* %final_hash_addr_6, align 1, !dbg !226 ; [debug line = 134:4]
  %ctx_state_7_load = load i32* @ctx_state_7, align 4, !dbg !227 ; [#uses=1 type=i32] [debug line = 135:4]
  %tmp_94 = lshr i32 %ctx_state_7_load, %tmp_103_cast, !dbg !227 ; [#uses=1 type=i32] [debug line = 135:4]
  %tmp_104 = trunc i32 %tmp_94 to i8, !dbg !227   ; [#uses=1 type=i8] [debug line = 135:4]
  %sum3_cast6 = sext i3 %sum2 to i5               ; [#uses=1 type=i5]
  %sum3_cast = zext i5 %sum3_cast6 to i32         ; [#uses=1 type=i32]
  %final_hash_addr_7 = getelementptr [32 x i8]* %final_hash, i32 0, i32 %sum3_cast, !dbg !227 ; [#uses=1 type=i8*] [debug line = 135:4]
  store i8 %tmp_104, i8* %final_hash_addr_7, align 1, !dbg !227 ; [debug line = 135:4]
  call void @llvm.dbg.value(metadata !{i3 %i_6}, i64 0, metadata !185), !dbg !217 ; [debug line = 127:21] [debug variable = i]
  br label %7, !dbg !217                          ; [debug line = 127:21]

; <label>:9                                       ; preds = %7
  ret void, !dbg !228                             ; [debug line = 137:1]
}

; [#uses=13]
declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

; [#uses=1]
declare i24 @llvm.part.select.i24(i24, i32, i32) nounwind readnone

; [#uses=1]
declare i16 @llvm.part.select.i16(i16, i32, i32) nounwind readnone

; [#uses=31]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=6]
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
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=4]
define weak i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_12 = trunc i32 %empty to i8              ; [#uses=1 type=i8]
  ret i8 %empty_12
}

; [#uses=1]
define weak i8 @_ssdm_op_PartSelect.i8.i24.i32.i32(i24, i32, i32) nounwind readnone {
entry:
  %empty = call i24 @llvm.part.select.i24(i24 %0, i32 %1, i32 %2) ; [#uses=1 type=i24]
  %empty_13 = trunc i24 %empty to i8              ; [#uses=1 type=i8]
  ret i8 %empty_13
}

; [#uses=1]
define weak i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16, i32, i32) nounwind readnone {
entry:
  %empty = call i16 @llvm.part.select.i16(i16 %0, i32 %1, i32 %2) ; [#uses=1 type=i16]
  %empty_14 = trunc i16 %empty to i8              ; [#uses=1 type=i8]
  ret i8 %empty_14
}

; [#uses=1]
define weak i7 @_ssdm_op_PartSelect.i7.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_15 = trunc i32 %empty to i7              ; [#uses=1 type=i7]
  ret i7 %empty_15
}

; [#uses=0]
declare i6 @_ssdm_op_PartSelect.i6.i7.i32.i32(i7, i32, i32) nounwind readnone

; [#uses=0]
declare i6 @_ssdm_op_PartSelect.i6.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=0]
declare i5 @_ssdm_op_PartSelect.i5.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=1]
define weak i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_16 = trunc i32 %empty to i30             ; [#uses=1 type=i30]
  ret i30 %empty_16
}

; [#uses=1]
define weak i29 @_ssdm_op_PartSelect.i29.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_17 = trunc i32 %empty to i29             ; [#uses=1 type=i29]
  ret i29 %empty_17
}

; [#uses=2]
define weak i26 @_ssdm_op_PartSelect.i26.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_18 = trunc i32 %empty to i26             ; [#uses=1 type=i26]
  ret i26 %empty_18
}

; [#uses=1]
define weak i25 @_ssdm_op_PartSelect.i25.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_19 = trunc i32 %empty to i25             ; [#uses=1 type=i25]
  ret i25 %empty_19
}

; [#uses=0]
declare i24 @_ssdm_op_PartSelect.i24.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=1]
define weak i22 @_ssdm_op_PartSelect.i22.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_20 = trunc i32 %empty to i22             ; [#uses=1 type=i22]
  ret i22 %empty_20
}

; [#uses=1]
define weak i21 @_ssdm_op_PartSelect.i21.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_21 = trunc i32 %empty to i21             ; [#uses=1 type=i21]
  ret i21 %empty_21
}

; [#uses=0]
declare i2 @_ssdm_op_PartSelect.i2.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=0]
declare i2 @_ssdm_op_PartSelect.i2.i3.i32.i32(i3, i32, i32) nounwind readnone

; [#uses=1]
define weak i19 @_ssdm_op_PartSelect.i19.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_22 = trunc i32 %empty to i19             ; [#uses=1 type=i19]
  ret i19 %empty_22
}

; [#uses=0]
declare i18 @_ssdm_op_PartSelect.i18.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=0]
declare i17 @_ssdm_op_PartSelect.i17.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=0]
declare i16 @_ssdm_op_PartSelect.i16.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=1]
define weak i15 @_ssdm_op_PartSelect.i15.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_23 = trunc i32 %empty to i15             ; [#uses=1 type=i15]
  ret i15 %empty_23
}

; [#uses=1]
define weak i14 @_ssdm_op_PartSelect.i14.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_24 = trunc i32 %empty to i14             ; [#uses=1 type=i14]
  ret i14 %empty_24
}

; [#uses=1]
define weak i13 @_ssdm_op_PartSelect.i13.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_25 = trunc i32 %empty to i13             ; [#uses=1 type=i13]
  ret i13 %empty_25
}

; [#uses=0]
declare i11 @_ssdm_op_PartSelect.i11.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=1]
define weak i10 @_ssdm_op_PartSelect.i10.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_26 = trunc i32 %empty to i10             ; [#uses=1 type=i10]
  ret i10 %empty_26
}

; [#uses=1]
define weak i9 @_ssdm_op_BitConcatenate.i9.i6.i3(i6, i3) nounwind readnone {
entry:
  %empty = zext i6 %0 to i9                       ; [#uses=1 type=i9]
  %empty_27 = zext i3 %1 to i9                    ; [#uses=1 type=i9]
  %empty_28 = shl i9 %empty, 3                    ; [#uses=1 type=i9]
  %empty_29 = or i9 %empty_28, %empty_27          ; [#uses=1 type=i9]
  ret i9 %empty_29
}

; [#uses=1]
define weak i8 @_ssdm_op_BitConcatenate.i8.i5.i3(i5, i3) nounwind readnone {
entry:
  %empty = zext i5 %0 to i8                       ; [#uses=1 type=i8]
  %empty_30 = zext i3 %1 to i8                    ; [#uses=1 type=i8]
  %empty_31 = shl i8 %empty, 3                    ; [#uses=1 type=i8]
  %empty_32 = or i8 %empty_31, %empty_30          ; [#uses=1 type=i8]
  ret i8 %empty_32
}

; [#uses=2]
define weak i5 @_ssdm_op_BitConcatenate.i5.i2.i3(i2, i3) nounwind readnone {
entry:
  %empty = zext i2 %0 to i5                       ; [#uses=1 type=i5]
  %empty_33 = zext i3 %1 to i5                    ; [#uses=1 type=i5]
  %empty_34 = shl i5 %empty, 3                    ; [#uses=1 type=i5]
  %empty_35 = or i5 %empty_34, %empty_33          ; [#uses=1 type=i5]
  ret i5 %empty_35
}

; [#uses=1]
define weak i4 @_ssdm_op_BitConcatenate.i4.i1.i3(i1, i3) nounwind readnone {
entry:
  %empty = zext i1 %0 to i4                       ; [#uses=1 type=i4]
  %empty_36 = zext i3 %1 to i4                    ; [#uses=1 type=i4]
  %empty_37 = shl i4 %empty, 3                    ; [#uses=1 type=i4]
  %empty_38 = or i4 %empty_37, %empty_36          ; [#uses=1 type=i4]
  ret i4 %empty_38
}

; [#uses=1]
define weak i32 @_ssdm_op_BitConcatenate.i32.i8.i8.i8.i8(i8, i8, i8, i8) nounwind readnone {
entry:
  %empty = zext i8 %2 to i16                      ; [#uses=1 type=i16]
  %empty_39 = zext i8 %3 to i16                   ; [#uses=1 type=i16]
  %empty_40 = shl i16 %empty, 8                   ; [#uses=1 type=i16]
  %empty_41 = or i16 %empty_40, %empty_39         ; [#uses=1 type=i16]
  %empty_42 = zext i8 %1 to i24                   ; [#uses=1 type=i24]
  %empty_43 = zext i16 %empty_41 to i24           ; [#uses=1 type=i24]
  %empty_44 = shl i24 %empty_42, 16               ; [#uses=1 type=i24]
  %empty_45 = or i24 %empty_44, %empty_43         ; [#uses=1 type=i24]
  %empty_46 = zext i8 %0 to i32                   ; [#uses=1 type=i32]
  %empty_47 = zext i24 %empty_45 to i32           ; [#uses=1 type=i32]
  %empty_48 = shl i32 %empty_46, 24               ; [#uses=1 type=i32]
  %empty_49 = or i32 %empty_48, %empty_47         ; [#uses=1 type=i32]
  ret i32 %empty_49
}

; [#uses=1]
define weak i32 @_ssdm_op_BitConcatenate.i32.i7.i25(i7, i25) nounwind readnone {
entry:
  %empty = zext i7 %0 to i32                      ; [#uses=1 type=i32]
  %empty_50 = zext i25 %1 to i32                  ; [#uses=1 type=i32]
  %empty_51 = shl i32 %empty, 25                  ; [#uses=1 type=i32]
  %empty_52 = or i32 %empty_51, %empty_50         ; [#uses=1 type=i32]
  ret i32 %empty_52
}

; [#uses=1]
define weak i32 @_ssdm_op_BitConcatenate.i32.i6.i26(i6, i26) nounwind readnone {
entry:
  %empty = zext i6 %0 to i32                      ; [#uses=1 type=i32]
  %empty_53 = zext i26 %1 to i32                  ; [#uses=1 type=i32]
  %empty_54 = shl i32 %empty, 26                  ; [#uses=1 type=i32]
  %empty_55 = or i32 %empty_54, %empty_53         ; [#uses=1 type=i32]
  ret i32 %empty_55
}

; [#uses=1]
define weak i32 @_ssdm_op_BitConcatenate.i32.i25.i7(i25, i7) nounwind readnone {
entry:
  %empty = zext i25 %0 to i32                     ; [#uses=1 type=i32]
  %empty_56 = zext i7 %1 to i32                   ; [#uses=1 type=i32]
  %empty_57 = shl i32 %empty, 7                   ; [#uses=1 type=i32]
  %empty_58 = or i32 %empty_57, %empty_56         ; [#uses=1 type=i32]
  ret i32 %empty_58
}

; [#uses=1]
define weak i32 @_ssdm_op_BitConcatenate.i32.i22.i10(i22, i10) nounwind readnone {
entry:
  %empty = zext i22 %0 to i32                     ; [#uses=1 type=i32]
  %empty_59 = zext i10 %1 to i32                  ; [#uses=1 type=i32]
  %empty_60 = shl i32 %empty, 10                  ; [#uses=1 type=i32]
  %empty_61 = or i32 %empty_60, %empty_59         ; [#uses=1 type=i32]
  ret i32 %empty_61
}

; [#uses=1]
define weak i32 @_ssdm_op_BitConcatenate.i32.i2.i30(i2, i30) nounwind readnone {
entry:
  %empty = zext i2 %0 to i32                      ; [#uses=1 type=i32]
  %empty_62 = zext i30 %1 to i32                  ; [#uses=1 type=i32]
  %empty_63 = shl i32 %empty, 30                  ; [#uses=1 type=i32]
  %empty_64 = or i32 %empty_63, %empty_62         ; [#uses=1 type=i32]
  ret i32 %empty_64
}

; [#uses=1]
define weak i32 @_ssdm_op_BitConcatenate.i32.i19.i13(i19, i13) nounwind readnone {
entry:
  %empty = zext i19 %0 to i32                     ; [#uses=1 type=i32]
  %empty_65 = zext i13 %1 to i32                  ; [#uses=1 type=i32]
  %empty_66 = shl i32 %empty, 13                  ; [#uses=1 type=i32]
  %empty_67 = or i32 %empty_66, %empty_65         ; [#uses=1 type=i32]
  ret i32 %empty_67
}

; [#uses=1]
define weak i32 @_ssdm_op_BitConcatenate.i32.i18.i14(i18, i14) nounwind readnone {
entry:
  %empty = zext i18 %0 to i32                     ; [#uses=1 type=i32]
  %empty_68 = zext i14 %1 to i32                  ; [#uses=1 type=i32]
  %empty_69 = shl i32 %empty, 14                  ; [#uses=1 type=i32]
  %empty_70 = or i32 %empty_69, %empty_68         ; [#uses=1 type=i32]
  ret i32 %empty_70
}

; [#uses=1]
define weak i32 @_ssdm_op_BitConcatenate.i32.i17.i15(i17, i15) nounwind readnone {
entry:
  %empty = zext i17 %0 to i32                     ; [#uses=1 type=i32]
  %empty_71 = zext i15 %1 to i32                  ; [#uses=1 type=i32]
  %empty_72 = shl i32 %empty, 15                  ; [#uses=1 type=i32]
  %empty_73 = or i32 %empty_72, %empty_71         ; [#uses=1 type=i32]
  ret i32 %empty_73
}

; [#uses=1]
define weak i32 @_ssdm_op_BitConcatenate.i32.i13.i19(i13, i19) nounwind readnone {
entry:
  %empty = zext i13 %0 to i32                     ; [#uses=1 type=i32]
  %empty_74 = zext i19 %1 to i32                  ; [#uses=1 type=i32]
  %empty_75 = shl i32 %empty, 19                  ; [#uses=1 type=i32]
  %empty_76 = or i32 %empty_75, %empty_74         ; [#uses=1 type=i32]
  ret i32 %empty_76
}

; [#uses=1]
define weak i32 @_ssdm_op_BitConcatenate.i32.i11.i21(i11, i21) nounwind readnone {
entry:
  %empty = zext i11 %0 to i32                     ; [#uses=1 type=i32]
  %empty_77 = zext i21 %1 to i32                  ; [#uses=1 type=i32]
  %empty_78 = shl i32 %empty, 21                  ; [#uses=1 type=i32]
  %empty_79 = or i32 %empty_78, %empty_77         ; [#uses=1 type=i32]
  ret i32 %empty_79
}

!opencl.kernels = !{!0, !7, !13, !19, !21}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!24, !31}

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
!36 = metadata !{i32 786689, metadata !37, metadata !"data_transform", null, i32 16, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!37 = metadata !{i32 786478, i32 0, metadata !38, metadata !"sha256_transform", metadata !"sha256_transform", metadata !"", metadata !38, i32 16, metadata !39, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !62, i32 17} ; [ DW_TAG_subprogram ]
!38 = metadata !{i32 786473, metadata !"../hls_error/sha256.c", metadata !"C:\5CUsers\5Cwindows-10-vm1\5CDesktop\5Cgithub\5C30-202_DIC\5C30-202_hw-1\5Chls_test_error", null} ; [ DW_TAG_file_type ]
!39 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !40, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!40 = metadata !{null, metadata !41, metadata !61}
!41 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !42} ; [ DW_TAG_pointer_type ]
!42 = metadata !{i32 786454, null, metadata !"SHA256_CTX", metadata !38, i32 25, i64 0, i64 0, i64 0, i32 0, metadata !43} ; [ DW_TAG_typedef ]
!43 = metadata !{i32 786451, null, metadata !"", metadata !44, i32 20, i64 864, i64 32, i32 0, i32 0, null, metadata !45, i32 0, i32 0} ; [ DW_TAG_structure_type ]
!44 = metadata !{i32 786473, metadata !"../hls_error/sha256.h", metadata !"C:\5CUsers\5Cwindows-10-vm1\5CDesktop\5Cgithub\5C30-202_DIC\5C30-202_hw-1\5Chls_test_error", null} ; [ DW_TAG_file_type ]
!45 = metadata !{metadata !46, metadata !51, metadata !53, metadata !57}
!46 = metadata !{i32 786445, metadata !43, metadata !"in_data", metadata !44, i32 21, i64 512, i64 8, i64 0, i32 0, metadata !47} ; [ DW_TAG_member ]
!47 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 512, i64 8, i32 0, i32 0, metadata !48, metadata !49, i32 0, i32 0} ; [ DW_TAG_array_type ]
!48 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!49 = metadata !{metadata !50}
!50 = metadata !{i32 786465, i64 0, i64 63}       ; [ DW_TAG_subrange_type ]
!51 = metadata !{i32 786445, metadata !43, metadata !"datalen", metadata !44, i32 22, i64 32, i64 32, i64 512, i32 0, metadata !52} ; [ DW_TAG_member ]
!52 = metadata !{i32 786468, null, metadata !"long unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!53 = metadata !{i32 786445, metadata !43, metadata !"bitlen", metadata !44, i32 23, i64 64, i64 32, i64 544, i32 0, metadata !54} ; [ DW_TAG_member ]
!54 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 64, i64 32, i32 0, i32 0, metadata !52, metadata !55, i32 0, i32 0} ; [ DW_TAG_array_type ]
!55 = metadata !{metadata !56}
!56 = metadata !{i32 786465, i64 0, i64 1}        ; [ DW_TAG_subrange_type ]
!57 = metadata !{i32 786445, metadata !43, metadata !"state", metadata !44, i32 24, i64 256, i64 32, i64 608, i32 0, metadata !58} ; [ DW_TAG_member ]
!58 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 256, i64 32, i32 0, i32 0, metadata !52, metadata !59, i32 0, i32 0} ; [ DW_TAG_array_type ]
!59 = metadata !{metadata !60}
!60 = metadata !{i32 786465, i64 0, i64 7}        ; [ DW_TAG_subrange_type ]
!61 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !48} ; [ DW_TAG_pointer_type ]
!62 = metadata !{metadata !63}
!63 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!64 = metadata !{i32 16, i32 80, metadata !37, null}
!65 = metadata !{i32 786688, metadata !66, metadata !"m", metadata !38, i32 18, metadata !67, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!66 = metadata !{i32 786443, metadata !37, i32 17, i32 1, metadata !38, i32 0} ; [ DW_TAG_lexical_block ]
!67 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 2048, i64 32, i32 0, i32 0, metadata !52, metadata !49, i32 0, i32 0} ; [ DW_TAG_array_type ]
!68 = metadata !{i32 18, i32 61, metadata !66, null}
!69 = metadata !{i32 20, i32 9, metadata !70, null}
!70 = metadata !{i32 786443, metadata !66, i32 20, i32 4, metadata !38, i32 1} ; [ DW_TAG_lexical_block ]
!71 = metadata !{i32 20, i32 26, metadata !70, null}
!72 = metadata !{i32 22, i32 4, metadata !73, null}
!73 = metadata !{i32 786443, metadata !66, i32 22, i32 4, metadata !38, i32 2} ; [ DW_TAG_lexical_block ]
!74 = metadata !{i32 21, i32 7, metadata !70, null}
!75 = metadata !{i32 786688, metadata !66, metadata !"j", metadata !38, i32 18, metadata !52, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!76 = metadata !{i32 23, i32 7, metadata !73, null}
!77 = metadata !{i32 22, i32 20, metadata !73, null}
!78 = metadata !{i32 786688, metadata !66, metadata !"i", metadata !38, i32 18, metadata !52, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!79 = metadata !{i32 25, i32 4, metadata !66, null}
!80 = metadata !{i32 786688, metadata !66, metadata !"a", metadata !38, i32 18, metadata !52, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!81 = metadata !{i32 26, i32 4, metadata !66, null}
!82 = metadata !{i32 786688, metadata !66, metadata !"b", metadata !38, i32 18, metadata !52, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!83 = metadata !{i32 27, i32 4, metadata !66, null}
!84 = metadata !{i32 786688, metadata !66, metadata !"c", metadata !38, i32 18, metadata !52, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!85 = metadata !{i32 28, i32 4, metadata !66, null}
!86 = metadata !{i32 786688, metadata !66, metadata !"d", metadata !38, i32 18, metadata !52, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!87 = metadata !{i32 29, i32 4, metadata !66, null}
!88 = metadata !{i32 786688, metadata !66, metadata !"e", metadata !38, i32 18, metadata !52, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!89 = metadata !{i32 30, i32 4, metadata !66, null}
!90 = metadata !{i32 786688, metadata !66, metadata !"f", metadata !38, i32 18, metadata !52, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!91 = metadata !{i32 31, i32 4, metadata !66, null}
!92 = metadata !{i32 786688, metadata !66, metadata !"g", metadata !38, i32 18, metadata !52, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!93 = metadata !{i32 32, i32 4, metadata !66, null}
!94 = metadata !{i32 786688, metadata !66, metadata !"h", metadata !38, i32 18, metadata !52, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!95 = metadata !{i32 34, i32 9, metadata !96, null}
!96 = metadata !{i32 786443, metadata !66, i32 34, i32 4, metadata !38, i32 3} ; [ DW_TAG_lexical_block ]
!97 = metadata !{i32 34, i32 24, metadata !96, null}
!98 = metadata !{i32 35, i32 7, metadata !99, null}
!99 = metadata !{i32 786443, metadata !96, i32 34, i32 29, metadata !38, i32 4} ; [ DW_TAG_lexical_block ]
!100 = metadata !{i32 786688, metadata !66, metadata !"t1", metadata !38, i32 18, metadata !52, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!101 = metadata !{i32 36, i32 7, metadata !99, null}
!102 = metadata !{i32 37, i32 7, metadata !99, null}
!103 = metadata !{i32 38, i32 7, metadata !99, null}
!104 = metadata !{i32 39, i32 7, metadata !99, null}
!105 = metadata !{i32 40, i32 7, metadata !99, null}
!106 = metadata !{i32 41, i32 7, metadata !99, null}
!107 = metadata !{i32 42, i32 7, metadata !99, null}
!108 = metadata !{i32 43, i32 7, metadata !99, null}
!109 = metadata !{i32 44, i32 7, metadata !99, null}
!110 = metadata !{i32 47, i32 4, metadata !66, null}
!111 = metadata !{i32 48, i32 4, metadata !66, null}
!112 = metadata !{i32 49, i32 4, metadata !66, null}
!113 = metadata !{i32 50, i32 4, metadata !66, null}
!114 = metadata !{i32 51, i32 4, metadata !66, null}
!115 = metadata !{i32 52, i32 4, metadata !66, null}
!116 = metadata !{i32 53, i32 4, metadata !66, null}
!117 = metadata !{i32 54, i32 4, metadata !66, null}
!118 = metadata !{i32 55, i32 1, metadata !66, null}
!119 = metadata !{metadata !120}
!120 = metadata !{i32 0, i32 7, metadata !121}
!121 = metadata !{metadata !122}
!122 = metadata !{metadata !"data", metadata !123, metadata !"unsigned char", i32 0, i32 7}
!123 = metadata !{metadata !124}
!124 = metadata !{i32 0, i32 31, i32 1}
!125 = metadata !{metadata !126}
!126 = metadata !{i32 0, i32 7, metadata !127}
!127 = metadata !{metadata !128}
!128 = metadata !{metadata !"hash", metadata !123, metadata !"unsigned char", i32 0, i32 7}
!129 = metadata !{i32 786689, metadata !130, metadata !"data", null, i32 140, metadata !133, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!130 = metadata !{i32 786478, i32 0, metadata !38, metadata !"sha256_top", metadata !"sha256_top", metadata !"", metadata !38, i32 140, metadata !131, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !62, i32 140} ; [ DW_TAG_subprogram ]
!131 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !132, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!132 = metadata !{null, metadata !61, metadata !61}
!133 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 256, i64 8, i32 0, i32 0, metadata !48, metadata !134, i32 0, i32 0} ; [ DW_TAG_array_type ]
!134 = metadata !{metadata !135}
!135 = metadata !{i32 786465, i64 0, i64 31}      ; [ DW_TAG_subrange_type ]
!136 = metadata !{i32 140, i32 47, metadata !130, null}
!137 = metadata !{i32 786689, metadata !130, metadata !"hash", null, i32 140, metadata !133, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!138 = metadata !{i32 140, i32 87, metadata !130, null}
!139 = metadata !{i32 59, i32 4, metadata !140, metadata !144}
!140 = metadata !{i32 786443, metadata !141, i32 58, i32 1, metadata !38, i32 5} ; [ DW_TAG_lexical_block ]
!141 = metadata !{i32 786478, i32 0, metadata !38, metadata !"sha256_init", metadata !"sha256_init", metadata !"", metadata !38, i32 57, metadata !142, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !62, i32 58} ; [ DW_TAG_subprogram ]
!142 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !143, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!143 = metadata !{null, metadata !41}
!144 = metadata !{i32 145, i32 2, metadata !145, null}
!145 = metadata !{i32 786443, metadata !130, i32 140, i32 97, metadata !38, i32 17} ; [ DW_TAG_lexical_block ]
!146 = metadata !{i32 60, i32 4, metadata !140, metadata !144}
!147 = metadata !{i32 61, i32 4, metadata !140, metadata !144}
!148 = metadata !{i32 62, i32 4, metadata !140, metadata !144}
!149 = metadata !{i32 63, i32 4, metadata !140, metadata !144}
!150 = metadata !{i32 64, i32 4, metadata !140, metadata !144}
!151 = metadata !{i32 65, i32 4, metadata !140, metadata !144}
!152 = metadata !{i32 66, i32 4, metadata !140, metadata !144}
!153 = metadata !{i32 67, i32 4, metadata !140, metadata !144}
!154 = metadata !{i32 68, i32 4, metadata !140, metadata !144}
!155 = metadata !{i32 69, i32 4, metadata !140, metadata !144}
!156 = metadata !{i32 786689, metadata !157, metadata !"data", null, i32 72, metadata !133, i32 0, metadata !160} ; [ DW_TAG_arg_variable ]
!157 = metadata !{i32 786478, i32 0, metadata !38, metadata !"sha256_update", metadata !"sha256_update", metadata !"", metadata !38, i32 72, metadata !158, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !62, i32 73} ; [ DW_TAG_subprogram ]
!158 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !159, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!159 = metadata !{null, metadata !41, metadata !61, metadata !52}
!160 = metadata !{i32 150, i32 2, metadata !145, null}
!161 = metadata !{i32 72, i32 74, metadata !157, metadata !160}
!162 = metadata !{i32 76, i32 7, metadata !163, metadata !160}
!163 = metadata !{i32 786443, metadata !164, i32 76, i32 2, metadata !38, i32 7} ; [ DW_TAG_lexical_block ]
!164 = metadata !{i32 786443, metadata !157, i32 73, i32 1, metadata !38, i32 6} ; [ DW_TAG_lexical_block ]
!165 = metadata !{i32 76, i32 21, metadata !163, metadata !160}
!166 = metadata !{i32 77, i32 7, metadata !167, metadata !160}
!167 = metadata !{i32 786443, metadata !163, i32 76, i32 26, metadata !38, i32 8} ; [ DW_TAG_lexical_block ]
!168 = metadata !{i32 78, i32 7, metadata !167, metadata !160}
!169 = metadata !{i32 79, i32 7, metadata !167, metadata !160}
!170 = metadata !{i32 80, i32 10, metadata !171, metadata !160}
!171 = metadata !{i32 786443, metadata !167, i32 79, i32 38, metadata !38, i32 9} ; [ DW_TAG_lexical_block ]
!172 = metadata !{i32 81, i32 10, metadata !171, metadata !160}
!173 = metadata !{i32 81, i32 58, metadata !171, metadata !160}
!174 = metadata !{i32 81, i32 83, metadata !171, metadata !160}
!175 = metadata !{i32 82, i32 10, metadata !171, metadata !160}
!176 = metadata !{i32 83, i32 7, metadata !171, metadata !160}
!177 = metadata !{i32 786688, metadata !164, metadata !"i", metadata !38, i32 74, metadata !52, i32 0, metadata !160} ; [ DW_TAG_auto_variable ]
!178 = metadata !{i32 153, i32 2, metadata !145, null}
!179 = metadata !{i32 154, i32 1, metadata !145, null}
!180 = metadata !{i32 786689, metadata !181, metadata !"final_hash", null, i32 87, metadata !133, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!181 = metadata !{i32 786478, i32 0, metadata !38, metadata !"sha256_final", metadata !"sha256_final", metadata !"", metadata !38, i32 87, metadata !39, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !62, i32 88} ; [ DW_TAG_subprogram ]
!182 = metadata !{i32 87, i32 72, metadata !181, null}
!183 = metadata !{i32 91, i32 4, metadata !184, null}
!184 = metadata !{i32 786443, metadata !181, i32 88, i32 1, metadata !38, i32 10} ; [ DW_TAG_lexical_block ]
!185 = metadata !{i32 786688, metadata !184, metadata !"i", metadata !38, i32 89, metadata !52, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!186 = metadata !{i32 94, i32 4, metadata !184, null}
!187 = metadata !{i32 95, i32 7, metadata !188, null}
!188 = metadata !{i32 786443, metadata !184, i32 94, i32 33, metadata !38, i32 11} ; [ DW_TAG_lexical_block ]
!189 = metadata !{i32 100, i32 7, metadata !190, null}
!190 = metadata !{i32 786443, metadata !184, i32 99, i32 9, metadata !38, i32 12} ; [ DW_TAG_lexical_block ]
!191 = metadata !{i32 96, i32 7, metadata !188, null}
!192 = metadata !{i32 97, i32 10, metadata !188, null}
!193 = metadata !{i32 101, i32 7, metadata !190, null}
!194 = metadata !{i32 102, i32 10, metadata !190, null}
!195 = metadata !{i32 103, i32 7, metadata !190, null}
!196 = metadata !{i32 107, i32 6, metadata !197, null}
!197 = metadata !{i32 786443, metadata !190, i32 107, i32 2, metadata !38, i32 13} ; [ DW_TAG_lexical_block ]
!198 = metadata !{i32 107, i32 21, metadata !197, null}
!199 = metadata !{i32 107, i32 33, metadata !200, null}
!200 = metadata !{i32 786443, metadata !197, i32 107, i32 32, metadata !38, i32 14} ; [ DW_TAG_lexical_block ]
!201 = metadata !{i32 108, i32 6, metadata !200, null}
!202 = metadata !{i32 786688, metadata !184, metadata !"j", metadata !38, i32 90, metadata !52, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!203 = metadata !{i32 113, i32 4, metadata !184, null}
!204 = metadata !{i32 113, i32 70, metadata !184, null}
!205 = metadata !{i32 113, i32 94, metadata !184, null}
!206 = metadata !{i32 114, i32 4, metadata !184, null}
!207 = metadata !{i32 115, i32 4, metadata !184, null}
!208 = metadata !{i32 116, i32 4, metadata !184, null}
!209 = metadata !{i32 117, i32 4, metadata !184, null}
!210 = metadata !{i32 118, i32 4, metadata !184, null}
!211 = metadata !{i32 119, i32 4, metadata !184, null}
!212 = metadata !{i32 120, i32 4, metadata !184, null}
!213 = metadata !{i32 121, i32 4, metadata !184, null}
!214 = metadata !{i32 122, i32 4, metadata !184, null}
!215 = metadata !{i32 127, i32 9, metadata !216, null}
!216 = metadata !{i32 786443, metadata !184, i32 127, i32 4, metadata !38, i32 15} ; [ DW_TAG_lexical_block ]
!217 = metadata !{i32 127, i32 21, metadata !216, null}
!218 = metadata !{i32 127, i32 27, metadata !219, null}
!219 = metadata !{i32 786443, metadata !216, i32 127, i32 26, metadata !38, i32 16} ; [ DW_TAG_lexical_block ]
!220 = metadata !{i32 128, i32 4, metadata !219, null}
!221 = metadata !{i32 129, i32 4, metadata !219, null}
!222 = metadata !{i32 130, i32 4, metadata !219, null}
!223 = metadata !{i32 131, i32 4, metadata !219, null}
!224 = metadata !{i32 132, i32 4, metadata !219, null}
!225 = metadata !{i32 133, i32 4, metadata !219, null}
!226 = metadata !{i32 134, i32 4, metadata !219, null}
!227 = metadata !{i32 135, i32 4, metadata !219, null}
!228 = metadata !{i32 137, i32 1, metadata !184, null}
