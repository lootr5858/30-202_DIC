; ModuleID = 'C:/Users/windows-10-vm1/Desktop/github/30-202_DIC/30-202_hw-1/hls_test_error/hls_test_error/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f80:128:128-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S32"
target triple = "i686-pc-mingw32"

@sha256_top_str = internal unnamed_addr constant [11 x i8] c"sha256_top\00"
@k = constant [64 x i32] [i32 1116352408, i32 1899447441, i32 -1245643825, i32 -373957723, i32 961987163, i32 1508970993, i32 -1841331548, i32 -1424204075, i32 -670586216, i32 310598401, i32 607225278, i32 1426881987, i32 1925078388, i32 -2132889090, i32 -1680079193, i32 -1046744716, i32 -459576895, i32 -272742522, i32 264347078, i32 604807628, i32 770255983, i32 1249150122, i32 1555081692, i32 1996064986, i32 -1740746414, i32 -1473132947, i32 -1341970488, i32 -1084653625, i32 -958395405, i32 -710438585, i32 113926993, i32 338241895, i32 666307205, i32 773529912, i32 1294757372, i32 1396182291, i32 1695183700, i32 1986661051, i32 -2117940946, i32 -1838011259, i32 -1564481375, i32 -1474664885, i32 -1035236496, i32 -949202525, i32 -778901479, i32 -694614492, i32 -200395387, i32 275423344, i32 430227734, i32 506948616, i32 659060556, i32 883997877, i32 958139571, i32 1322822218, i32 1537002063, i32 1747873779, i32 1955562222, i32 2024104815, i32 -2067236844, i32 -1933114872, i32 -1866530822, i32 -1538233109, i32 -1090935817, i32 -965641998], align 4
@hash = common global [64 x i32] zeroinitializer, align 4
@data = common global [64 x i32] zeroinitializer, align 4
@ctx_state_7 = internal unnamed_addr global i32 0
@ctx_state_6 = internal unnamed_addr global i32 0
@ctx_state_5 = internal unnamed_addr global i32 0
@ctx_state_4 = internal unnamed_addr global i32 0
@ctx_state_3 = internal unnamed_addr global i32 0
@ctx_state_2 = internal unnamed_addr global i32 0
@ctx_state_1 = internal unnamed_addr global i32 0
@ctx_state_0 = internal unnamed_addr global i32 0
@ctx_in_data = internal global [64 x i8] zeroinitializer
@ctx_datalen = internal unnamed_addr global i32 0
@ctx_bitlen_1 = internal unnamed_addr global i32 0
@ctx_bitlen_0 = internal unnamed_addr global i32 0
@p_str2 = private unnamed_addr constant [24 x i8] c"sha256_final_final_loop\00", align 1
@p_str1 = private unnamed_addr constant [20 x i8] c"sha256_final_memset\00", align 1

define internal fastcc void @sha256_transform([64 x i8]* nocapture %data_transform) {
  %m = alloca [64 x i32], align 4
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i = phi i5 [ 0, %0 ], [ %tmp_9, %2 ]
  %j = phi i7 [ 0, %0 ], [ %j_1, %2 ]
  %i_cast = zext i5 %i to i32
  %tmp = icmp eq i5 %i, -16
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %tmp_9 = add i5 %i, 1
  br i1 %tmp, label %.preheader.preheader, label %2

.preheader.preheader:                             ; preds = %1
  br label %.preheader

; <label>:2                                       ; preds = %1
  %j_cast4 = zext i7 %j to i32
  %data_transform_addr = getelementptr [64 x i8]* %data_transform, i32 0, i32 %j_cast4
  %data_transform_load = load i8* %data_transform_addr, align 1
  %tmp_3 = trunc i7 %j to i6
  %tmp_8 = or i6 %tmp_3, 1
  %tmp_8_cast = zext i6 %tmp_8 to i32
  %data_transform_addr_1 = getelementptr [64 x i8]* %data_transform, i32 0, i32 %tmp_8_cast
  %data_transform_load_1 = load i8* %data_transform_addr_1, align 1
  %tmp_1 = or i6 %tmp_3, 2
  %tmp_1_cast = zext i6 %tmp_1 to i32
  %data_transform_addr_2 = getelementptr [64 x i8]* %data_transform, i32 0, i32 %tmp_1_cast
  %data_transform_load_2 = load i8* %data_transform_addr_2, align 1
  %tmp_4 = or i6 %tmp_3, 3
  %tmp_4_cast = zext i6 %tmp_4 to i32
  %data_transform_addr_3 = getelementptr [64 x i8]* %data_transform, i32 0, i32 %tmp_4_cast
  %data_transform_load_3 = load i8* %data_transform_addr_3, align 1
  %tmp_7 = call i32 @_ssdm_op_BitConcatenate.i32.i8.i8.i8.i8(i8 %data_transform_load, i8 %data_transform_load_1, i8 %data_transform_load_2, i8 %data_transform_load_3)
  %m_addr = getelementptr inbounds [64 x i32]* %m, i32 0, i32 %i_cast
  store i32 %tmp_7, i32* %m_addr, align 4
  %j_1 = add i7 4, %j
  br label %1

.preheader:                                       ; preds = %.preheader.preheader, %3
  %i_1 = phi i7 [ %i_3, %3 ], [ 16, %.preheader.preheader ]
  %i_1_cast = zext i7 %i_1 to i32
  %exitcond = icmp eq i7 %i_1, -64
  %empty_9 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 48, i64 48, i64 48)
  br i1 %exitcond, label %4, label %3

; <label>:3                                       ; preds = %.preheader
  %tmp_s = add i7 -2, %i_1
  %tmp_14_cast = zext i7 %tmp_s to i32
  %m_addr_1 = getelementptr inbounds [64 x i32]* %m, i32 0, i32 %tmp_14_cast
  %m_load = load i32* %m_addr_1, align 4
  %tmp_2 = call i15 @_ssdm_op_PartSelect.i15.i32.i32.i32(i32 %m_load, i32 17, i32 31)
  %tmp_10 = trunc i32 %m_load to i17
  %tmp_5 = call i32 @_ssdm_op_BitConcatenate.i32.i17.i15(i17 %tmp_10, i15 %tmp_2)
  %tmp_6 = call i13 @_ssdm_op_PartSelect.i13.i32.i32.i32(i32 %m_load, i32 19, i32 31)
  %tmp_18 = trunc i32 %m_load to i19
  %tmp_11 = call i32 @_ssdm_op_BitConcatenate.i32.i19.i13(i19 %tmp_18, i13 %tmp_6)
  %tmp_12 = call i22 @_ssdm_op_PartSelect.i22.i32.i32.i32(i32 %m_load, i32 10, i32 31)
  %tmp_13 = zext i22 %tmp_12 to i32
  %tmp2 = xor i32 %tmp_13, %tmp_11
  %tmp_14 = xor i32 %tmp2, %tmp_5
  %tmp_15 = add i7 -7, %i_1
  %tmp_24_cast = zext i7 %tmp_15 to i32
  %m_addr_2 = getelementptr inbounds [64 x i32]* %m, i32 0, i32 %tmp_24_cast
  %m_load_1 = load i32* %m_addr_2, align 4
  %tmp_16 = add i7 -15, %i_1
  %tmp_25_cast = zext i7 %tmp_16 to i32
  %m_addr_3 = getelementptr inbounds [64 x i32]* %m, i32 0, i32 %tmp_25_cast
  %m_load_2 = load i32* %m_addr_3, align 4
  %tmp_17 = call i25 @_ssdm_op_PartSelect.i25.i32.i32.i32(i32 %m_load_2, i32 7, i32 31)
  %tmp_21 = trunc i32 %m_load_2 to i7
  %tmp_19 = call i32 @_ssdm_op_BitConcatenate.i32.i7.i25(i7 %tmp_21, i25 %tmp_17)
  %tmp_20 = call i14 @_ssdm_op_PartSelect.i14.i32.i32.i32(i32 %m_load_2, i32 18, i32 31)
  %tmp_38 = trunc i32 %m_load_2 to i18
  %tmp_22 = call i32 @_ssdm_op_BitConcatenate.i32.i18.i14(i18 %tmp_38, i14 %tmp_20)
  %tmp_23 = call i29 @_ssdm_op_PartSelect.i29.i32.i32.i32(i32 %m_load_2, i32 3, i32 31)
  %tmp_24 = zext i29 %tmp_23 to i32
  %tmp3 = xor i32 %tmp_24, %tmp_22
  %tmp_25 = xor i32 %tmp3, %tmp_19
  %tmp_26 = add i7 -16, %i_1
  %tmp_35_cast = zext i7 %tmp_26 to i32
  %m_addr_4 = getelementptr inbounds [64 x i32]* %m, i32 0, i32 %tmp_35_cast
  %m_load_3 = load i32* %m_addr_4, align 4
  %tmp4 = add i32 %m_load_1, %m_load_3
  %tmp5 = add i32 %tmp_14, %tmp_25
  %tmp_27 = add i32 %tmp5, %tmp4
  %m_addr_5 = getelementptr inbounds [64 x i32]* %m, i32 0, i32 %i_1_cast
  store i32 %tmp_27, i32* %m_addr_5, align 4
  %i_3 = add i7 1, %i_1
  br label %.preheader

; <label>:4                                       ; preds = %.preheader
  %a = load i32* @ctx_state_0, align 16
  %b = load i32* @ctx_state_1, align 4
  %c = load i32* @ctx_state_2, align 8
  %d = load i32* @ctx_state_3, align 4
  %e = load i32* @ctx_state_4, align 16
  %f = load i32* @ctx_state_5, align 4
  %g = load i32* @ctx_state_6, align 8
  %h = load i32* @ctx_state_7, align 4
  br label %5

; <label>:5                                       ; preds = %6, %4
  %h1 = phi i32 [ %h, %4 ], [ %h_1, %6 ]
  %h_1 = phi i32 [ %g, %4 ], [ %g_1, %6 ]
  %g_1 = phi i32 [ %f, %4 ], [ %f_1, %6 ]
  %f_1 = phi i32 [ %e, %4 ], [ %e_1, %6 ]
  %d1 = phi i32 [ %d, %4 ], [ %d_1, %6 ]
  %d_1 = phi i32 [ %c, %4 ], [ %c_1, %6 ]
  %c_1 = phi i32 [ %b, %4 ], [ %b_1, %6 ]
  %b_1 = phi i32 [ %a, %4 ], [ %a_1, %6 ]
  %i_2 = phi i7 [ 0, %4 ], [ %i_4, %6 ]
  %i_2_cast = zext i7 %i_2 to i32
  %tmp_28 = icmp eq i7 %i_2, -64
  %empty_10 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64)
  %i_4 = add i7 %i_2, 1
  br i1 %tmp_28, label %7, label %6

; <label>:6                                       ; preds = %5
  %tmp_37 = call i26 @_ssdm_op_PartSelect.i26.i32.i32.i32(i32 %f_1, i32 6, i32 31)
  %tmp_41 = trunc i32 %f_1 to i6
  %tmp_39 = call i32 @_ssdm_op_BitConcatenate.i32.i6.i26(i6 %tmp_41, i26 %tmp_37)
  %tmp_40 = call i21 @_ssdm_op_PartSelect.i21.i32.i32.i32(i32 %f_1, i32 11, i32 31)
  %tmp_44 = trunc i32 %f_1 to i11
  %tmp_42 = call i32 @_ssdm_op_BitConcatenate.i32.i11.i21(i11 %tmp_44, i21 %tmp_40)
  %tmp_43 = call i7 @_ssdm_op_PartSelect.i7.i32.i32.i32(i32 %f_1, i32 25, i32 31)
  %tmp_52 = trunc i32 %f_1 to i25
  %tmp_45 = call i32 @_ssdm_op_BitConcatenate.i32.i25.i7(i25 %tmp_52, i7 %tmp_43)
  %tmp6 = xor i32 %tmp_39, %tmp_42
  %tmp_46 = xor i32 %tmp6, %tmp_45
  %tmp_47 = and i32 %f_1, %g_1
  %tmp_48 = xor i32 %f_1, -1
  %tmp_49 = and i32 %h_1, %tmp_48
  %tmp_50 = xor i32 %tmp_47, %tmp_49
  %k_addr = getelementptr inbounds [64 x i32]* @k, i32 0, i32 %i_2_cast
  %k_load = load i32* %k_addr, align 4
  %m_addr_6 = getelementptr inbounds [64 x i32]* %m, i32 0, i32 %i_2_cast
  %m_load_4 = load i32* %m_addr_6, align 4
  %tmp9 = add i32 %k_load, %m_load_4
  %tmp7 = add i32 %tmp_46, %tmp_50
  %tmp8 = add i32 %tmp7, %h1
  %t1 = add i32 %tmp8, %tmp9
  %tmp_51 = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %b_1, i32 2, i32 31)
  %tmp_55 = trunc i32 %b_1 to i2
  %tmp_53 = call i32 @_ssdm_op_BitConcatenate.i32.i2.i30(i2 %tmp_55, i30 %tmp_51)
  %tmp_54 = call i19 @_ssdm_op_PartSelect.i19.i32.i32.i32(i32 %b_1, i32 13, i32 31)
  %tmp_58 = trunc i32 %b_1 to i13
  %tmp_56 = call i32 @_ssdm_op_BitConcatenate.i32.i13.i19(i13 %tmp_58, i19 %tmp_54)
  %tmp_57 = call i10 @_ssdm_op_PartSelect.i10.i32.i32.i32(i32 %b_1, i32 22, i32 31)
  %tmp_65 = trunc i32 %b_1 to i22
  %tmp_59 = call i32 @_ssdm_op_BitConcatenate.i32.i22.i10(i22 %tmp_65, i10 %tmp_57)
  %tmp10 = xor i32 %tmp_53, %tmp_56
  %tmp_60 = xor i32 %tmp10, %tmp_59
  %tmp_61 = xor i32 %c_1, %d_1
  %tmp_62 = and i32 %b_1, %tmp_61
  %tmp_63 = and i32 %c_1, %d_1
  %tmp_64 = xor i32 %tmp_62, %tmp_63
  %e_1 = add i32 %t1, %d1
  %tmp11 = add i32 %tmp_64, %t1
  %a_1 = add i32 %tmp11, %tmp_60
  br label %5

; <label>:7                                       ; preds = %5
  %tmp_29 = add i32 %a, %b_1
  store i32 %tmp_29, i32* @ctx_state_0, align 16
  %tmp_30 = add i32 %b, %c_1
  store i32 %tmp_30, i32* @ctx_state_1, align 4
  %tmp_31 = add i32 %c, %d_1
  store i32 %tmp_31, i32* @ctx_state_2, align 8
  %tmp_32 = add i32 %d, %d1
  store i32 %tmp_32, i32* @ctx_state_3, align 4
  %tmp_33 = add i32 %e, %f_1
  store i32 %tmp_33, i32* @ctx_state_4, align 16
  %tmp_34 = add i32 %f, %g_1
  store i32 %tmp_34, i32* @ctx_state_5, align 4
  %tmp_35 = add i32 %g, %h_1
  store i32 %tmp_35, i32* @ctx_state_6, align 8
  %tmp_36 = add i32 %h, %h1
  store i32 %tmp_36, i32* @ctx_state_7, align 4
  ret void
}

define void @sha256_top([32 x i8]* %data, [32 x i8]* %hash) nounwind {
  call void (...)* @_ssdm_op_SpecBitsMap([32 x i8]* %data) nounwind, !map !36
  call void (...)* @_ssdm_op_SpecBitsMap([32 x i8]* %hash) nounwind, !map !42
  call void (...)* @_ssdm_op_SpecTopModule([11 x i8]* @sha256_top_str) nounwind
  store i32 0, i32* @ctx_datalen, align 4
  store i32 0, i32* @ctx_bitlen_0, align 4
  store i32 0, i32* @ctx_bitlen_1, align 4
  store i32 1779033703, i32* @ctx_state_0, align 16
  store i32 -1150833019, i32* @ctx_state_1, align 4
  store i32 1013904242, i32* @ctx_state_2, align 8
  store i32 -1521486534, i32* @ctx_state_3, align 4
  store i32 1359893119, i32* @ctx_state_4, align 16
  store i32 -1694144372, i32* @ctx_state_5, align 4
  store i32 528734635, i32* @ctx_state_6, align 8
  store i32 1541459225, i32* @ctx_state_7, align 4
  br label %1

; <label>:1                                       ; preds = %._crit_edge.i, %0
  %i_i = phi i6 [ 0, %0 ], [ %i, %._crit_edge.i ]
  %i_i_cast1 = zext i6 %i_i to i32
  %exitcond_i = icmp eq i6 %i_i, -32
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 32, i64 32, i64 32) nounwind
  %i = add i6 %i_i, 1
  br i1 %exitcond_i, label %sha256_update.exit, label %2

; <label>:2                                       ; preds = %1
  %data_addr = getelementptr [32 x i8]* %data, i32 0, i32 %i_i_cast1
  %data_load = load i8* %data_addr, align 1
  %ctx_datalen_load = load i32* @ctx_datalen, align 4
  %ctx_in_data_addr = getelementptr [64 x i8]* @ctx_in_data, i32 0, i32 %ctx_datalen_load
  store i8 %data_load, i8* %ctx_in_data_addr, align 1
  %ctx_datalen_assign_i = add i32 %ctx_datalen_load, 1
  store i32 %ctx_datalen_assign_i, i32* @ctx_datalen, align 4
  %tmp_1_i = icmp eq i32 %ctx_datalen_assign_i, 64
  br i1 %tmp_1_i, label %3, label %._crit_edge.i

; <label>:3                                       ; preds = %2
  call fastcc void @sha256_transform([64 x i8]* @ctx_in_data) nounwind
  %ctx_bitlen_0_load = load i32* @ctx_bitlen_0, align 4
  %tmp_2_i = icmp ugt i32 %ctx_bitlen_0_load, -513
  br i1 %tmp_2_i, label %4, label %._crit_edge1.i

; <label>:4                                       ; preds = %3
  %ctx_bitlen_1_load = load i32* @ctx_bitlen_1, align 4
  %tmp_3_i = add i32 %ctx_bitlen_1_load, 1
  store i32 %tmp_3_i, i32* @ctx_bitlen_1, align 4
  br label %._crit_edge1.i

._crit_edge1.i:                                   ; preds = %4, %3
  %tmp_4_i = add i32 %ctx_bitlen_0_load, 512
  store i32 %tmp_4_i, i32* @ctx_bitlen_0, align 4
  store i32 0, i32* @ctx_datalen, align 4
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge1.i, %2
  br label %1

sha256_update.exit:                               ; preds = %1
  call fastcc void @sha256_final([32 x i8]* %hash) nounwind
  ret void
}

define internal fastcc void @sha256_final([32 x i8]* nocapture %final_hash) {
  %i = load i32* @ctx_datalen, align 4
  %tmp = icmp ult i32 %i, 56
  %ctx_in_data_addr = getelementptr [64 x i8]* @ctx_in_data, i32 0, i32 %i
  store i8 -128, i8* %ctx_in_data_addr, align 1
  br i1 %tmp, label %.preheader18.preheader, label %.preheader.preheader

.preheader18.preheader:                           ; preds = %0
  br label %.preheader18

.preheader.preheader:                             ; preds = %0
  br label %.preheader

.preheader18:                                     ; preds = %.preheader18.preheader, %1
  %i_0_in = phi i32 [ %i_5, %1 ], [ %i, %.preheader18.preheader ]
  %i_5 = add i32 %i_0_in, 1
  %exitcond = icmp eq i32 %i_0_in, 55
  br i1 %exitcond, label %.loopexit.loopexit11, label %1

; <label>:1                                       ; preds = %.preheader18
  %ctx_in_data_addr_1 = getelementptr [64 x i8]* @ctx_in_data, i32 0, i32 %i_5
  store i8 0, i8* %ctx_in_data_addr_1, align 1
  br label %.preheader18

.preheader:                                       ; preds = %.preheader.preheader, %2
  %i_1_in = phi i32 [ %i_1, %2 ], [ %i, %.preheader.preheader ]
  %i_1 = add i32 %i_1_in, 1
  %tmp_75 = call i26 @_ssdm_op_PartSelect.i26.i32.i32.i32(i32 %i_1, i32 6, i32 31)
  %icmp = icmp eq i26 %tmp_75, 0
  br i1 %icmp, label %2, label %3

; <label>:2                                       ; preds = %.preheader
  %ctx_in_data_addr_2 = getelementptr [64 x i8]* @ctx_in_data, i32 0, i32 %i_1
  store i8 0, i8* %ctx_in_data_addr_2, align 1
  br label %.preheader

; <label>:3                                       ; preds = %.preheader
  call fastcc void @sha256_transform([64 x i8]* @ctx_in_data)
  br label %4

; <label>:4                                       ; preds = %5, %3
  %j = phi i6 [ 0, %3 ], [ %j_2, %5 ]
  %j_cast5 = zext i6 %j to i32
  %tmp_s = icmp eq i6 %j, -8
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 56, i64 56, i64 56)
  %j_2 = add i6 %j, 1
  br i1 %tmp_s, label %.loopexit.loopexit, label %5

; <label>:5                                       ; preds = %4
  call void (...)* @_ssdm_op_SpecLoopName([20 x i8]* @p_str1) nounwind
  %ctx_in_data_addr_3 = getelementptr [64 x i8]* @ctx_in_data, i32 0, i32 %j_cast5
  store i8 0, i8* %ctx_in_data_addr_3, align 1
  br label %4

.loopexit.loopexit:                               ; preds = %4
  br label %.loopexit

.loopexit.loopexit11:                             ; preds = %.preheader18
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit11, %.loopexit.loopexit
  %ctx_bitlen_0_load = load i32* @ctx_bitlen_0, align 4
  %tmp_83 = trunc i32 %i to i6
  %tmp_85 = trunc i32 %i to i5
  %tmp_65 = call i9 @_ssdm_op_BitConcatenate.i9.i6.i3(i6 %tmp_83, i3 0)
  %tmp_82_cast = zext i9 %tmp_65 to i32
  %tmp_66 = xor i32 %tmp_82_cast, -1
  %tmp_67 = icmp ugt i32 %ctx_bitlen_0_load, %tmp_66
  %ctx_bitlen_1_load = load i32* @ctx_bitlen_1, align 4
  br i1 %tmp_67, label %6, label %.loopexit._crit_edge

; <label>:6                                       ; preds = %.loopexit
  %tmp_68 = add i32 %ctx_bitlen_1_load, 1
  store i32 %tmp_68, i32* @ctx_bitlen_1, align 4
  br label %.loopexit._crit_edge

.loopexit._crit_edge:                             ; preds = %6, %.loopexit
  %ctx_bitlen_1_loc = phi i32 [ %tmp_68, %6 ], [ %ctx_bitlen_1_load, %.loopexit ]
  %tmp_12 = call i8 @_ssdm_op_BitConcatenate.i8.i5.i3(i5 %tmp_85, i3 0)
  %tmp_87 = trunc i32 %ctx_bitlen_0_load to i8
  %tmp_89 = trunc i32 %ctx_bitlen_0_load to i16
  %tmp_15 = zext i9 %tmp_65 to i16
  %tmp_91 = trunc i32 %ctx_bitlen_0_load to i24
  %tmp_17 = zext i9 %tmp_65 to i24
  %tmp_69 = add i32 %tmp_82_cast, %ctx_bitlen_0_load
  %tmp_86_cast3 = add i24 %tmp_91, %tmp_17
  %tmp_86_cast = add i16 %tmp_89, %tmp_15
  store i32 %tmp_69, i32* @ctx_bitlen_0, align 4
  %tmp_70 = add i8 %tmp_87, %tmp_12
  store i8 %tmp_70, i8* getelementptr inbounds ([64 x i8]* @ctx_in_data, i32 0, i32 63), align 1
  %tmp_71 = call i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16 %tmp_86_cast, i32 8, i32 15)
  store i8 %tmp_71, i8* getelementptr inbounds ([64 x i8]* @ctx_in_data, i32 0, i32 62), align 2
  %tmp_72 = call i8 @_ssdm_op_PartSelect.i8.i24.i32.i32(i24 %tmp_86_cast3, i32 16, i32 23)
  store i8 %tmp_72, i8* getelementptr inbounds ([64 x i8]* @ctx_in_data, i32 0, i32 61), align 1
  %tmp_73 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %tmp_69, i32 24, i32 31)
  store i8 %tmp_73, i8* getelementptr inbounds ([64 x i8]* @ctx_in_data, i32 0, i32 60), align 4
  %tmp_93 = trunc i32 %ctx_bitlen_1_loc to i8
  store i8 %tmp_93, i8* getelementptr inbounds ([64 x i8]* @ctx_in_data, i32 0, i32 59), align 1
  %tmp_74 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %ctx_bitlen_1_loc, i32 8, i32 15)
  store i8 %tmp_74, i8* getelementptr inbounds ([64 x i8]* @ctx_in_data, i32 0, i32 58), align 2
  %tmp_76 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %ctx_bitlen_1_loc, i32 16, i32 23)
  store i8 %tmp_76, i8* getelementptr inbounds ([64 x i8]* @ctx_in_data, i32 0, i32 57), align 1
  %tmp_77 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %ctx_bitlen_1_loc, i32 24, i32 31)
  store i8 %tmp_77, i8* getelementptr inbounds ([64 x i8]* @ctx_in_data, i32 0, i32 56), align 8
  call fastcc void @sha256_transform([64 x i8]* @ctx_in_data)
  br label %7

; <label>:7                                       ; preds = %8, %.loopexit._crit_edge
  %i_2 = phi i3 [ 0, %.loopexit._crit_edge ], [ %i_6, %8 ]
  %i_2_cast2 = zext i3 %i_2 to i32
  %i_2_cast1 = zext i3 %i_2 to i5
  %tmp_78 = icmp eq i3 %i_2, -4
  %empty_11 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4)
  %i_6 = add i3 %i_2, 1
  br i1 %tmp_78, label %9, label %8

; <label>:8                                       ; preds = %7
  call void (...)* @_ssdm_op_SpecLoopName([24 x i8]* @p_str2) nounwind
  %ctx_state_0_load = load i32* @ctx_state_0, align 16
  %tmp_95 = trunc i3 %i_2 to i2
  %tmp_79 = call i5 @_ssdm_op_BitConcatenate.i5.i2.i3(i2 %tmp_95, i3 0)
  %tmp_80 = sub i5 -8, %tmp_79
  %tmp_103_cast = zext i5 %tmp_80 to i32
  %tmp_81 = lshr i32 %ctx_state_0_load, %tmp_103_cast
  %tmp_97 = trunc i32 %tmp_81 to i8
  %final_hash_addr = getelementptr [32 x i8]* %final_hash, i32 0, i32 %i_2_cast2
  store i8 %tmp_97, i8* %final_hash_addr, align 1
  %ctx_state_1_load = load i32* @ctx_state_1, align 4
  %tmp_82 = lshr i32 %ctx_state_1_load, %tmp_103_cast
  %tmp_98 = trunc i32 %tmp_82 to i8
  %sum2 = xor i3 %i_2, -4
  %sum2_cast = zext i3 %sum2 to i32
  %final_hash_addr_1 = getelementptr [32 x i8]* %final_hash, i32 0, i32 %sum2_cast
  store i8 %tmp_98, i8* %final_hash_addr_1, align 1
  %ctx_state_2_load = load i32* @ctx_state_2, align 8
  %tmp_84 = lshr i32 %ctx_state_2_load, %tmp_103_cast
  %tmp_99 = trunc i32 %tmp_84 to i8
  %sum1 = call i4 @_ssdm_op_BitConcatenate.i4.i1.i3(i1 true, i3 %i_2)
  %sum4_cast = zext i4 %sum1 to i32
  %final_hash_addr_2 = getelementptr [32 x i8]* %final_hash, i32 0, i32 %sum4_cast
  store i8 %tmp_99, i8* %final_hash_addr_2, align 1
  %ctx_state_3_load = load i32* @ctx_state_3, align 4
  %tmp_86 = lshr i32 %ctx_state_3_load, %tmp_103_cast
  %tmp_100 = trunc i32 %tmp_86 to i8
  %sum6_cast8 = sext i3 %sum2 to i4
  %sum6_cast = zext i4 %sum6_cast8 to i32
  %final_hash_addr_3 = getelementptr [32 x i8]* %final_hash, i32 0, i32 %sum6_cast
  store i8 %tmp_100, i8* %final_hash_addr_3, align 1
  %ctx_state_4_load = load i32* @ctx_state_4, align 16
  %tmp_88 = lshr i32 %ctx_state_4_load, %tmp_103_cast
  %tmp_101 = trunc i32 %tmp_88 to i8
  %sum4 = call i5 @_ssdm_op_BitConcatenate.i5.i2.i3(i2 -2, i3 %i_2)
  %sum8_cast = zext i5 %sum4 to i32
  %final_hash_addr_4 = getelementptr [32 x i8]* %final_hash, i32 0, i32 %sum8_cast
  store i8 %tmp_101, i8* %final_hash_addr_4, align 1
  %ctx_state_5_load = load i32* @ctx_state_5, align 4
  %tmp_90 = lshr i32 %ctx_state_5_load, %tmp_103_cast
  %tmp_102 = trunc i32 %tmp_90 to i8
  %sum = add i5 -12, %i_2_cast1
  %sum_cast = zext i5 %sum to i32
  %final_hash_addr_5 = getelementptr [32 x i8]* %final_hash, i32 0, i32 %sum_cast
  store i8 %tmp_102, i8* %final_hash_addr_5, align 1
  %ctx_state_6_load = load i32* @ctx_state_6, align 8
  %tmp_92 = lshr i32 %ctx_state_6_load, %tmp_103_cast
  %tmp_103 = trunc i32 %tmp_92 to i8
  %sum1_cast7 = sext i4 %sum1 to i5
  %sum1_cast = zext i5 %sum1_cast7 to i32
  %final_hash_addr_6 = getelementptr [32 x i8]* %final_hash, i32 0, i32 %sum1_cast
  store i8 %tmp_103, i8* %final_hash_addr_6, align 1
  %ctx_state_7_load = load i32* @ctx_state_7, align 4
  %tmp_94 = lshr i32 %ctx_state_7_load, %tmp_103_cast
  %tmp_104 = trunc i32 %tmp_94 to i8
  %sum3_cast6 = sext i3 %sum2 to i5
  %sum3_cast = zext i5 %sum3_cast6 to i32
  %final_hash_addr_7 = getelementptr [32 x i8]* %final_hash, i32 0, i32 %sum3_cast
  store i8 %tmp_104, i8* %final_hash_addr_7, align 1
  br label %7

; <label>:9                                       ; preds = %7
  ret void
}

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare i24 @llvm.part.select.i24(i24, i32, i32) nounwind readnone

declare i16 @llvm.part.select.i16(i16, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define weak void @_ssdm_op_SpecTopModule(...) {
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

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_12 = trunc i32 %empty to i8
  ret i8 %empty_12
}

define weak i8 @_ssdm_op_PartSelect.i8.i24.i32.i32(i24, i32, i32) nounwind readnone {
entry:
  %empty = call i24 @llvm.part.select.i24(i24 %0, i32 %1, i32 %2)
  %empty_13 = trunc i24 %empty to i8
  ret i8 %empty_13
}

define weak i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16, i32, i32) nounwind readnone {
entry:
  %empty = call i16 @llvm.part.select.i16(i16 %0, i32 %1, i32 %2)
  %empty_14 = trunc i16 %empty to i8
  ret i8 %empty_14
}

define weak i7 @_ssdm_op_PartSelect.i7.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_15 = trunc i32 %empty to i7
  ret i7 %empty_15
}

declare i6 @_ssdm_op_PartSelect.i6.i7.i32.i32(i7, i32, i32) nounwind readnone

declare i6 @_ssdm_op_PartSelect.i6.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i5 @_ssdm_op_PartSelect.i5.i32.i32.i32(i32, i32, i32) nounwind readnone

define weak i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_16 = trunc i32 %empty to i30
  ret i30 %empty_16
}

define weak i29 @_ssdm_op_PartSelect.i29.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_17 = trunc i32 %empty to i29
  ret i29 %empty_17
}

define weak i26 @_ssdm_op_PartSelect.i26.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_18 = trunc i32 %empty to i26
  ret i26 %empty_18
}

define weak i25 @_ssdm_op_PartSelect.i25.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_19 = trunc i32 %empty to i25
  ret i25 %empty_19
}

declare i24 @_ssdm_op_PartSelect.i24.i32.i32.i32(i32, i32, i32) nounwind readnone

define weak i22 @_ssdm_op_PartSelect.i22.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_20 = trunc i32 %empty to i22
  ret i22 %empty_20
}

define weak i21 @_ssdm_op_PartSelect.i21.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_21 = trunc i32 %empty to i21
  ret i21 %empty_21
}

declare i2 @_ssdm_op_PartSelect.i2.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i2 @_ssdm_op_PartSelect.i2.i3.i32.i32(i3, i32, i32) nounwind readnone

define weak i19 @_ssdm_op_PartSelect.i19.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_22 = trunc i32 %empty to i19
  ret i19 %empty_22
}

declare i18 @_ssdm_op_PartSelect.i18.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i17 @_ssdm_op_PartSelect.i17.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i16 @_ssdm_op_PartSelect.i16.i32.i32.i32(i32, i32, i32) nounwind readnone

define weak i15 @_ssdm_op_PartSelect.i15.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_23 = trunc i32 %empty to i15
  ret i15 %empty_23
}

define weak i14 @_ssdm_op_PartSelect.i14.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_24 = trunc i32 %empty to i14
  ret i14 %empty_24
}

define weak i13 @_ssdm_op_PartSelect.i13.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_25 = trunc i32 %empty to i13
  ret i13 %empty_25
}

declare i11 @_ssdm_op_PartSelect.i11.i32.i32.i32(i32, i32, i32) nounwind readnone

define weak i10 @_ssdm_op_PartSelect.i10.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_26 = trunc i32 %empty to i10
  ret i10 %empty_26
}

define weak i9 @_ssdm_op_BitConcatenate.i9.i6.i3(i6, i3) nounwind readnone {
entry:
  %empty = zext i6 %0 to i9
  %empty_27 = zext i3 %1 to i9
  %empty_28 = shl i9 %empty, 3
  %empty_29 = or i9 %empty_28, %empty_27
  ret i9 %empty_29
}

define weak i8 @_ssdm_op_BitConcatenate.i8.i5.i3(i5, i3) nounwind readnone {
entry:
  %empty = zext i5 %0 to i8
  %empty_30 = zext i3 %1 to i8
  %empty_31 = shl i8 %empty, 3
  %empty_32 = or i8 %empty_31, %empty_30
  ret i8 %empty_32
}

define weak i5 @_ssdm_op_BitConcatenate.i5.i2.i3(i2, i3) nounwind readnone {
entry:
  %empty = zext i2 %0 to i5
  %empty_33 = zext i3 %1 to i5
  %empty_34 = shl i5 %empty, 3
  %empty_35 = or i5 %empty_34, %empty_33
  ret i5 %empty_35
}

define weak i4 @_ssdm_op_BitConcatenate.i4.i1.i3(i1, i3) nounwind readnone {
entry:
  %empty = zext i1 %0 to i4
  %empty_36 = zext i3 %1 to i4
  %empty_37 = shl i4 %empty, 3
  %empty_38 = or i4 %empty_37, %empty_36
  ret i4 %empty_38
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i8.i8.i8.i8(i8, i8, i8, i8) nounwind readnone {
entry:
  %empty = zext i8 %2 to i16
  %empty_39 = zext i8 %3 to i16
  %empty_40 = shl i16 %empty, 8
  %empty_41 = or i16 %empty_40, %empty_39
  %empty_42 = zext i8 %1 to i24
  %empty_43 = zext i16 %empty_41 to i24
  %empty_44 = shl i24 %empty_42, 16
  %empty_45 = or i24 %empty_44, %empty_43
  %empty_46 = zext i8 %0 to i32
  %empty_47 = zext i24 %empty_45 to i32
  %empty_48 = shl i32 %empty_46, 24
  %empty_49 = or i32 %empty_48, %empty_47
  ret i32 %empty_49
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i7.i25(i7, i25) nounwind readnone {
entry:
  %empty = zext i7 %0 to i32
  %empty_50 = zext i25 %1 to i32
  %empty_51 = shl i32 %empty, 25
  %empty_52 = or i32 %empty_51, %empty_50
  ret i32 %empty_52
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i6.i26(i6, i26) nounwind readnone {
entry:
  %empty = zext i6 %0 to i32
  %empty_53 = zext i26 %1 to i32
  %empty_54 = shl i32 %empty, 26
  %empty_55 = or i32 %empty_54, %empty_53
  ret i32 %empty_55
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i25.i7(i25, i7) nounwind readnone {
entry:
  %empty = zext i25 %0 to i32
  %empty_56 = zext i7 %1 to i32
  %empty_57 = shl i32 %empty, 7
  %empty_58 = or i32 %empty_57, %empty_56
  ret i32 %empty_58
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i22.i10(i22, i10) nounwind readnone {
entry:
  %empty = zext i22 %0 to i32
  %empty_59 = zext i10 %1 to i32
  %empty_60 = shl i32 %empty, 10
  %empty_61 = or i32 %empty_60, %empty_59
  ret i32 %empty_61
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i2.i30(i2, i30) nounwind readnone {
entry:
  %empty = zext i2 %0 to i32
  %empty_62 = zext i30 %1 to i32
  %empty_63 = shl i32 %empty, 30
  %empty_64 = or i32 %empty_63, %empty_62
  ret i32 %empty_64
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i19.i13(i19, i13) nounwind readnone {
entry:
  %empty = zext i19 %0 to i32
  %empty_65 = zext i13 %1 to i32
  %empty_66 = shl i32 %empty, 13
  %empty_67 = or i32 %empty_66, %empty_65
  ret i32 %empty_67
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i18.i14(i18, i14) nounwind readnone {
entry:
  %empty = zext i18 %0 to i32
  %empty_68 = zext i14 %1 to i32
  %empty_69 = shl i32 %empty, 14
  %empty_70 = or i32 %empty_69, %empty_68
  ret i32 %empty_70
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i17.i15(i17, i15) nounwind readnone {
entry:
  %empty = zext i17 %0 to i32
  %empty_71 = zext i15 %1 to i32
  %empty_72 = shl i32 %empty, 15
  %empty_73 = or i32 %empty_72, %empty_71
  ret i32 %empty_73
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i13.i19(i13, i19) nounwind readnone {
entry:
  %empty = zext i13 %0 to i32
  %empty_74 = zext i19 %1 to i32
  %empty_75 = shl i32 %empty, 19
  %empty_76 = or i32 %empty_75, %empty_74
  ret i32 %empty_76
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i11.i21(i11, i21) nounwind readnone {
entry:
  %empty = zext i11 %0 to i32
  %empty_77 = zext i21 %1 to i32
  %empty_78 = shl i32 %empty, 21
  %empty_79 = or i32 %empty_78, %empty_77
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
!36 = metadata !{metadata !37}
!37 = metadata !{i32 0, i32 7, metadata !38}
!38 = metadata !{metadata !39}
!39 = metadata !{metadata !"data", metadata !40, metadata !"unsigned char", i32 0, i32 7}
!40 = metadata !{metadata !41}
!41 = metadata !{i32 0, i32 31, i32 1}
!42 = metadata !{metadata !43}
!43 = metadata !{i32 0, i32 7, metadata !44}
!44 = metadata !{metadata !45}
!45 = metadata !{metadata !"hash", metadata !40, metadata !"unsigned char", i32 0, i32 7}
