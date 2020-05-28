; ModuleID = 'C:/Users/windows-10-vm1/Desktop/github/30-202_DIC/30-202_hw-1/hls_test_error/hls_test_error/solution1/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f80:128:128-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S32"
target triple = "i686-pc-mingw32"

%struct.SHA256_CTX.0 = type { [64 x i8], i32, [2 x i32], [8 x i32] }

@sha256_top.str = internal unnamed_addr constant [11 x i8] c"sha256_top\00" ; [#uses=1 type=[11 x i8]*]
@k = constant [64 x i32] [i32 1116352408, i32 1899447441, i32 -1245643825, i32 -373957723, i32 961987163, i32 1508970993, i32 -1841331548, i32 -1424204075, i32 -670586216, i32 310598401, i32 607225278, i32 1426881987, i32 1925078388, i32 -2132889090, i32 -1680079193, i32 -1046744716, i32 -459576895, i32 -272742522, i32 264347078, i32 604807628, i32 770255983, i32 1249150122, i32 1555081692, i32 1996064986, i32 -1740746414, i32 -1473132947, i32 -1341970488, i32 -1084653625, i32 -958395405, i32 -710438585, i32 113926993, i32 338241895, i32 666307205, i32 773529912, i32 1294757372, i32 1396182291, i32 1695183700, i32 1986661051, i32 -2117940946, i32 -1838011259, i32 -1564481375, i32 -1474664885, i32 -1035236496, i32 -949202525, i32 -778901479, i32 -694614492, i32 -200395387, i32 275423344, i32 430227734, i32 506948616, i32 659060556, i32 883997877, i32 958139571, i32 1322822218, i32 1537002063, i32 1747873779, i32 1955562222, i32 2024104815, i32 -2067236844, i32 -1933114872, i32 -1866530822, i32 -1538233109, i32 -1090935817, i32 -965641998], align 4 ; [#uses=1 type=[64 x i32]*]
@hash = common global [64 x i32] zeroinitializer, align 4 ; [#uses=0 type=[64 x i32]*]
@data = common global [64 x i32] zeroinitializer, align 4 ; [#uses=0 type=[64 x i32]*]
@ctx = internal global %struct.SHA256_CTX.0 zeroinitializer, align 4 ; [#uses=26 type=%struct.SHA256_CTX.0*]
@.str2 = private unnamed_addr constant [24 x i8] c"sha256_final_final_loop\00", align 1 ; [#uses=1 type=[24 x i8]*]
@.str1 = private unnamed_addr constant [20 x i8] c"sha256_final_memset\00", align 1 ; [#uses=1 type=[20 x i8]*]
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]

; [#uses=1]
define internal fastcc void @sha256_update(i8* %data) nounwind {
  call void @llvm.dbg.value(metadata !{i8* %data}, i64 0, metadata !76), !dbg !77 ; [debug line = 72:74] [debug variable = data]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %data, i32 64), !dbg !78 ; [debug line = 73:2]
  call void (...)* @_ssdm_Unroll(i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)), !dbg !80 ; [debug line = 75:1]
  br label %1, !dbg !81                           ; [debug line = 76:7]

; <label>:1                                       ; preds = %._crit_edge, %0
  %i = phi i32 [ 0, %0 ], [ %i.1, %._crit_edge ]  ; [#uses=3 type=i32]
  %exitcond = icmp eq i32 %i, 32, !dbg !81        ; [#uses=1 type=i1] [debug line = 76:7]
  br i1 %exitcond, label %5, label %2, !dbg !81   ; [debug line = 76:7]

; <label>:2                                       ; preds = %1
  %data.addr = getelementptr inbounds i8* %data, i32 %i, !dbg !83 ; [#uses=1 type=i8*] [debug line = 77:7]
  %data.load = load i8* %data.addr, align 1, !dbg !83 ; [#uses=2 type=i8] [debug line = 77:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %data.load) nounwind
  %ctx.load = load i32* getelementptr inbounds (%struct.SHA256_CTX.0* @ctx, i32 0, i32 1), align 4, !dbg !83 ; [#uses=2 type=i32] [debug line = 77:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %ctx.load) nounwind
  %ctx.addr = getelementptr inbounds %struct.SHA256_CTX.0* @ctx, i32 0, i32 0, i32 %ctx.load, !dbg !83 ; [#uses=1 type=i8*] [debug line = 77:7]
  store i8 %data.load, i8* %ctx.addr, align 1, !dbg !83 ; [debug line = 77:7]
  %ctx.load.1 = load i32* getelementptr inbounds (%struct.SHA256_CTX.0* @ctx, i32 0, i32 1), align 4, !dbg !85 ; [#uses=2 type=i32] [debug line = 78:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %ctx.load.1) nounwind
  %tmp = add i32 %ctx.load.1, 1, !dbg !85         ; [#uses=3 type=i32] [debug line = 78:7]
  store i32 %tmp, i32* getelementptr inbounds (%struct.SHA256_CTX.0* @ctx, i32 0, i32 1), align 4, !dbg !85 ; [debug line = 78:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %tmp) nounwind
  %tmp.1 = icmp eq i32 %tmp, 64, !dbg !86         ; [#uses=1 type=i1] [debug line = 79:7]
  br i1 %tmp.1, label %3, label %._crit_edge, !dbg !86 ; [debug line = 79:7]

; <label>:3                                       ; preds = %2
  call fastcc void @sha256_transform(i8* getelementptr inbounds (%struct.SHA256_CTX.0* @ctx, i32 0, i32 0, i32 0)), !dbg !87 ; [debug line = 80:10]
  %ctx.load.2 = load i32* getelementptr inbounds (%struct.SHA256_CTX.0* @ctx, i32 0, i32 2, i32 0), align 4, !dbg !89 ; [#uses=4 type=i32] [debug line = 81:10]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %ctx.load.2) nounwind
  %tmp.2 = icmp ugt i32 %ctx.load.2, -513, !dbg !89 ; [#uses=1 type=i1] [debug line = 81:10]
  br i1 %tmp.2, label %4, label %._crit_edge1, !dbg !89 ; [debug line = 81:10]

; <label>:4                                       ; preds = %3
  %ctx.load.3 = load i32* getelementptr inbounds (%struct.SHA256_CTX.0* @ctx, i32 0, i32 2, i32 1), align 4, !dbg !90 ; [#uses=2 type=i32] [debug line = 81:58]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %ctx.load.3) nounwind
  %tmp.3 = add i32 %ctx.load.3, 1, !dbg !90       ; [#uses=1 type=i32] [debug line = 81:58]
  store i32 %tmp.3, i32* getelementptr inbounds (%struct.SHA256_CTX.0* @ctx, i32 0, i32 2, i32 1), align 4, !dbg !90 ; [debug line = 81:58]
  br label %._crit_edge1, !dbg !90                ; [debug line = 81:58]

._crit_edge1:                                     ; preds = %4, %3
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %ctx.load.2) nounwind
  %tmp.4 = add i32 %ctx.load.2, 512, !dbg !91     ; [#uses=1 type=i32] [debug line = 81:83]
  store i32 %tmp.4, i32* getelementptr inbounds (%struct.SHA256_CTX.0* @ctx, i32 0, i32 2, i32 0), align 4, !dbg !91 ; [debug line = 81:83]
  store i32 0, i32* getelementptr inbounds (%struct.SHA256_CTX.0* @ctx, i32 0, i32 1), align 4, !dbg !92 ; [debug line = 82:10]
  br label %._crit_edge, !dbg !93                 ; [debug line = 83:7]

._crit_edge:                                      ; preds = %._crit_edge1, %2
  %i.1 = add i32 %i, 1, !dbg !94                  ; [#uses=1 type=i32] [debug line = 76:21]
  call void @llvm.dbg.value(metadata !{i32 %i.1}, i64 0, metadata !95), !dbg !94 ; [debug line = 76:21] [debug variable = i]
  br label %1, !dbg !94                           ; [debug line = 76:21]

; <label>:5                                       ; preds = %1
  ret void, !dbg !96                              ; [debug line = 85:1]
}

; [#uses=3]
define internal fastcc void @sha256_transform(i8* %data_transform) nounwind {
  %m = alloca [64 x i32], align 4                 ; [#uses=7 type=[64 x i32]*]
  call void @llvm.dbg.value(metadata !{i8* %data_transform}, i64 0, metadata !97), !dbg !98 ; [debug line = 16:80] [debug variable = data_transform]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %data_transform, i32 64), !dbg !99 ; [debug line = 17:2]
  call void @llvm.dbg.declare(metadata !{[64 x i32]* %m}, metadata !101), !dbg !102 ; [debug line = 18:61] [debug variable = m]
  br label %1, !dbg !103                          ; [debug line = 20:9]

; <label>:1                                       ; preds = %2, %0
  %i = phi i32 [ 0, %0 ], [ %tmp.19, %2 ]         ; [#uses=3 type=i32]
  %j = phi i32 [ 0, %0 ], [ %j.1, %2 ]            ; [#uses=5 type=i32]
  %tmp = icmp eq i32 %i, 16, !dbg !103            ; [#uses=1 type=i1] [debug line = 20:9]
  br i1 %tmp, label %.preheader.preheader, label %2, !dbg !103 ; [debug line = 20:9]

.preheader.preheader:                             ; preds = %1
  br label %.preheader, !dbg !105                 ; [debug line = 22:4]

; <label>:2                                       ; preds = %1
  %data_transform.addr = getelementptr inbounds i8* %data_transform, i32 %j, !dbg !107 ; [#uses=1 type=i8*] [debug line = 21:7]
  %data_transform.load = load i8* %data_transform.addr, align 1, !dbg !107 ; [#uses=2 type=i8] [debug line = 21:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %data_transform.load) nounwind
  %tmp.6 = zext i8 %data_transform.load to i32, !dbg !107 ; [#uses=1 type=i32] [debug line = 21:7]
  %tmp.7 = shl nuw i32 %tmp.6, 24, !dbg !107      ; [#uses=1 type=i32] [debug line = 21:7]
  %tmp.8 = or i32 %j, 1, !dbg !107                ; [#uses=1 type=i32] [debug line = 21:7]
  %data_transform.addr.1 = getelementptr inbounds i8* %data_transform, i32 %tmp.8, !dbg !107 ; [#uses=1 type=i8*] [debug line = 21:7]
  %data_transform.load.1 = load i8* %data_transform.addr.1, align 1, !dbg !107 ; [#uses=2 type=i8] [debug line = 21:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %data_transform.load.1) nounwind
  %tmp.9 = zext i8 %data_transform.load.1 to i32, !dbg !107 ; [#uses=1 type=i32] [debug line = 21:7]
  %tmp.10 = shl nuw nsw i32 %tmp.9, 16, !dbg !107 ; [#uses=1 type=i32] [debug line = 21:7]
  %tmp.11 = or i32 %j, 2, !dbg !107               ; [#uses=1 type=i32] [debug line = 21:7]
  %data_transform.addr.2 = getelementptr inbounds i8* %data_transform, i32 %tmp.11, !dbg !107 ; [#uses=1 type=i8*] [debug line = 21:7]
  %data_transform.load.2 = load i8* %data_transform.addr.2, align 1, !dbg !107 ; [#uses=2 type=i8] [debug line = 21:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %data_transform.load.2) nounwind
  %tmp.12 = zext i8 %data_transform.load.2 to i32, !dbg !107 ; [#uses=1 type=i32] [debug line = 21:7]
  %tmp.13 = shl nuw nsw i32 %tmp.12, 8, !dbg !107 ; [#uses=1 type=i32] [debug line = 21:7]
  %tmp.14 = or i32 %j, 3, !dbg !107               ; [#uses=1 type=i32] [debug line = 21:7]
  %data_transform.addr.3 = getelementptr inbounds i8* %data_transform, i32 %tmp.14, !dbg !107 ; [#uses=1 type=i8*] [debug line = 21:7]
  %data_transform.load.3 = load i8* %data_transform.addr.3, align 1, !dbg !107 ; [#uses=2 type=i8] [debug line = 21:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %data_transform.load.3) nounwind
  %tmp.15 = zext i8 %data_transform.load.3 to i32, !dbg !107 ; [#uses=1 type=i32] [debug line = 21:7]
  %tmp.16 = or i32 %tmp.10, %tmp.7, !dbg !107     ; [#uses=1 type=i32] [debug line = 21:7]
  %tmp.17 = or i32 %tmp.16, %tmp.13, !dbg !107    ; [#uses=1 type=i32] [debug line = 21:7]
  %tmp.18 = or i32 %tmp.17, %tmp.15, !dbg !107    ; [#uses=1 type=i32] [debug line = 21:7]
  %m.addr = getelementptr inbounds [64 x i32]* %m, i32 0, i32 %i, !dbg !107 ; [#uses=1 type=i32*] [debug line = 21:7]
  store i32 %tmp.18, i32* %m.addr, align 4, !dbg !107 ; [debug line = 21:7]
  %tmp.19 = add i32 %i, 1, !dbg !108              ; [#uses=1 type=i32] [debug line = 20:26]
  %j.1 = add i32 %j, 4, !dbg !108                 ; [#uses=1 type=i32] [debug line = 20:26]
  call void @llvm.dbg.value(metadata !{i32 %j.1}, i64 0, metadata !109), !dbg !108 ; [debug line = 20:26] [debug variable = j]
  br label %1, !dbg !108                          ; [debug line = 20:26]

.preheader:                                       ; preds = %3, %.preheader.preheader
  %i.1 = phi i32 [ %i.3, %3 ], [ 16, %.preheader.preheader ] ; [#uses=7 type=i32]
  %exitcond = icmp eq i32 %i.1, 64, !dbg !105     ; [#uses=1 type=i1] [debug line = 22:4]
  br i1 %exitcond, label %4, label %3, !dbg !105  ; [debug line = 22:4]

; <label>:3                                       ; preds = %.preheader
  %tmp.21 = add i32 %i.1, -2, !dbg !110           ; [#uses=1 type=i32] [debug line = 23:7]
  %m.addr.1 = getelementptr inbounds [64 x i32]* %m, i32 0, i32 %tmp.21, !dbg !110 ; [#uses=1 type=i32*] [debug line = 23:7]
  %m.load = load i32* %m.addr.1, align 4, !dbg !110 ; [#uses=10 type=i32] [debug line = 23:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %m.load) nounwind
  %tmp.22 = lshr i32 %m.load, 17, !dbg !110       ; [#uses=1 type=i32] [debug line = 23:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %m.load) nounwind
  %tmp.23 = shl i32 %m.load, 15, !dbg !110        ; [#uses=1 type=i32] [debug line = 23:7]
  %tmp.24 = or i32 %tmp.23, %tmp.22, !dbg !110    ; [#uses=1 type=i32] [debug line = 23:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %m.load) nounwind
  %tmp.25 = lshr i32 %m.load, 19, !dbg !110       ; [#uses=1 type=i32] [debug line = 23:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %m.load) nounwind
  %tmp.26 = shl i32 %m.load, 13, !dbg !110        ; [#uses=1 type=i32] [debug line = 23:7]
  %tmp.27 = or i32 %tmp.26, %tmp.25, !dbg !110    ; [#uses=1 type=i32] [debug line = 23:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %m.load) nounwind
  %tmp.28 = lshr i32 %m.load, 10, !dbg !110       ; [#uses=1 type=i32] [debug line = 23:7]
  %tmp.29 = xor i32 %tmp.24, %tmp.28, !dbg !110   ; [#uses=1 type=i32] [debug line = 23:7]
  %tmp.30 = xor i32 %tmp.29, %tmp.27, !dbg !110   ; [#uses=1 type=i32] [debug line = 23:7]
  %tmp.31 = add i32 %i.1, -7, !dbg !110           ; [#uses=1 type=i32] [debug line = 23:7]
  %m.addr.2 = getelementptr inbounds [64 x i32]* %m, i32 0, i32 %tmp.31, !dbg !110 ; [#uses=1 type=i32*] [debug line = 23:7]
  %m.load.1 = load i32* %m.addr.2, align 4, !dbg !110 ; [#uses=2 type=i32] [debug line = 23:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %m.load.1) nounwind
  %tmp.32 = add i32 %i.1, -15, !dbg !110          ; [#uses=1 type=i32] [debug line = 23:7]
  %m.addr.3 = getelementptr inbounds [64 x i32]* %m, i32 0, i32 %tmp.32, !dbg !110 ; [#uses=1 type=i32*] [debug line = 23:7]
  %m.load.2 = load i32* %m.addr.3, align 4, !dbg !110 ; [#uses=10 type=i32] [debug line = 23:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %m.load.2) nounwind
  %tmp.33 = lshr i32 %m.load.2, 7, !dbg !110      ; [#uses=1 type=i32] [debug line = 23:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %m.load.2) nounwind
  %tmp.34 = shl i32 %m.load.2, 25, !dbg !110      ; [#uses=1 type=i32] [debug line = 23:7]
  %tmp.35 = or i32 %tmp.34, %tmp.33, !dbg !110    ; [#uses=1 type=i32] [debug line = 23:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %m.load.2) nounwind
  %tmp.36 = lshr i32 %m.load.2, 18, !dbg !110     ; [#uses=1 type=i32] [debug line = 23:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %m.load.2) nounwind
  %tmp.37 = shl i32 %m.load.2, 14, !dbg !110      ; [#uses=1 type=i32] [debug line = 23:7]
  %tmp.38 = or i32 %tmp.37, %tmp.36, !dbg !110    ; [#uses=1 type=i32] [debug line = 23:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %m.load.2) nounwind
  %tmp.39 = lshr i32 %m.load.2, 3, !dbg !110      ; [#uses=1 type=i32] [debug line = 23:7]
  %tmp.40 = xor i32 %tmp.35, %tmp.39, !dbg !110   ; [#uses=1 type=i32] [debug line = 23:7]
  %tmp.41 = xor i32 %tmp.40, %tmp.38, !dbg !110   ; [#uses=1 type=i32] [debug line = 23:7]
  %tmp.42 = add i32 %i.1, -16, !dbg !110          ; [#uses=1 type=i32] [debug line = 23:7]
  %m.addr.4 = getelementptr inbounds [64 x i32]* %m, i32 0, i32 %tmp.42, !dbg !110 ; [#uses=1 type=i32*] [debug line = 23:7]
  %m.load.3 = load i32* %m.addr.4, align 4, !dbg !110 ; [#uses=2 type=i32] [debug line = 23:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %m.load.3) nounwind
  %tmp.43 = add i32 %m.load.1, %tmp.30, !dbg !110 ; [#uses=1 type=i32] [debug line = 23:7]
  %tmp.44 = add i32 %tmp.43, %tmp.41, !dbg !110   ; [#uses=1 type=i32] [debug line = 23:7]
  %tmp.45 = add i32 %tmp.44, %m.load.3, !dbg !110 ; [#uses=1 type=i32] [debug line = 23:7]
  %m.addr.5 = getelementptr inbounds [64 x i32]* %m, i32 0, i32 %i.1, !dbg !110 ; [#uses=1 type=i32*] [debug line = 23:7]
  store i32 %tmp.45, i32* %m.addr.5, align 4, !dbg !110 ; [debug line = 23:7]
  %i.3 = add i32 %i.1, 1, !dbg !111               ; [#uses=1 type=i32] [debug line = 22:20]
  call void @llvm.dbg.value(metadata !{i32 %i.3}, i64 0, metadata !112), !dbg !111 ; [debug line = 22:20] [debug variable = i]
  br label %.preheader, !dbg !111                 ; [debug line = 22:20]

; <label>:4                                       ; preds = %.preheader
  %a = load i32* getelementptr inbounds (%struct.SHA256_CTX.0* @ctx, i32 0, i32 3, i32 0), align 4, !dbg !113 ; [#uses=4 type=i32] [debug line = 25:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %a) nounwind
  call void @llvm.dbg.value(metadata !{i32 %a}, i64 0, metadata !114), !dbg !113 ; [debug line = 25:4] [debug variable = a]
  %b = load i32* getelementptr inbounds (%struct.SHA256_CTX.0* @ctx, i32 0, i32 3, i32 1), align 4, !dbg !115 ; [#uses=4 type=i32] [debug line = 26:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %b) nounwind
  call void @llvm.dbg.value(metadata !{i32 %b}, i64 0, metadata !116), !dbg !115 ; [debug line = 26:4] [debug variable = b]
  %c = load i32* getelementptr inbounds (%struct.SHA256_CTX.0* @ctx, i32 0, i32 3, i32 2), align 4, !dbg !117 ; [#uses=4 type=i32] [debug line = 27:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %c) nounwind
  call void @llvm.dbg.value(metadata !{i32 %c}, i64 0, metadata !118), !dbg !117 ; [debug line = 27:4] [debug variable = c]
  %d = load i32* getelementptr inbounds (%struct.SHA256_CTX.0* @ctx, i32 0, i32 3, i32 3), align 4, !dbg !119 ; [#uses=4 type=i32] [debug line = 28:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %d) nounwind
  call void @llvm.dbg.value(metadata !{i32 %d}, i64 0, metadata !120), !dbg !119 ; [debug line = 28:4] [debug variable = d]
  %e = load i32* getelementptr inbounds (%struct.SHA256_CTX.0* @ctx, i32 0, i32 3, i32 4), align 4, !dbg !121 ; [#uses=4 type=i32] [debug line = 29:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %e) nounwind
  call void @llvm.dbg.value(metadata !{i32 %e}, i64 0, metadata !122), !dbg !121 ; [debug line = 29:4] [debug variable = e]
  %f = load i32* getelementptr inbounds (%struct.SHA256_CTX.0* @ctx, i32 0, i32 3, i32 5), align 4, !dbg !123 ; [#uses=4 type=i32] [debug line = 30:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %f) nounwind
  call void @llvm.dbg.value(metadata !{i32 %f}, i64 0, metadata !124), !dbg !123 ; [debug line = 30:4] [debug variable = f]
  %g = load i32* getelementptr inbounds (%struct.SHA256_CTX.0* @ctx, i32 0, i32 3, i32 6), align 4, !dbg !125 ; [#uses=4 type=i32] [debug line = 31:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %g) nounwind
  call void @llvm.dbg.value(metadata !{i32 %g}, i64 0, metadata !126), !dbg !125 ; [debug line = 31:4] [debug variable = g]
  %h = load i32* getelementptr inbounds (%struct.SHA256_CTX.0* @ctx, i32 0, i32 3, i32 7), align 4, !dbg !127 ; [#uses=4 type=i32] [debug line = 32:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %h) nounwind
  call void @llvm.dbg.value(metadata !{i32 %h}, i64 0, metadata !128), !dbg !127 ; [debug line = 32:4] [debug variable = h]
  br label %5, !dbg !129                          ; [debug line = 34:9]

; <label>:5                                       ; preds = %6, %4
  %h1 = phi i32 [ %h, %4 ], [ %h.2, %6 ]          ; [#uses=2 type=i32]
  %h.2 = phi i32 [ %g, %4 ], [ %g.2, %6 ]         ; [#uses=3 type=i32]
  %g.2 = phi i32 [ %f, %4 ], [ %f.2, %6 ]         ; [#uses=3 type=i32]
  %f.2 = phi i32 [ %e, %4 ], [ %e.2, %6 ]         ; [#uses=10 type=i32]
  %d1 = phi i32 [ %d, %4 ], [ %d.2, %6 ]          ; [#uses=2 type=i32]
  %d.2 = phi i32 [ %c, %4 ], [ %c.2, %6 ]         ; [#uses=4 type=i32]
  %c.2 = phi i32 [ %b, %4 ], [ %b.2, %6 ]         ; [#uses=4 type=i32]
  %b.2 = phi i32 [ %a, %4 ], [ %a.2, %6 ]         ; [#uses=9 type=i32]
  %i.2 = phi i32 [ 0, %4 ], [ %i.4, %6 ]          ; [#uses=4 type=i32]
  %tmp.47 = icmp eq i32 %i.2, 64, !dbg !129       ; [#uses=1 type=i1] [debug line = 34:9]
  br i1 %tmp.47, label %7, label %6, !dbg !129    ; [debug line = 34:9]

; <label>:6                                       ; preds = %5
  %tmp.56 = lshr i32 %f.2, 6, !dbg !131           ; [#uses=1 type=i32] [debug line = 35:7]
  %tmp.57 = shl i32 %f.2, 26, !dbg !131           ; [#uses=1 type=i32] [debug line = 35:7]
  %tmp.58 = or i32 %tmp.56, %tmp.57, !dbg !131    ; [#uses=1 type=i32] [debug line = 35:7]
  %tmp.59 = lshr i32 %f.2, 11, !dbg !131          ; [#uses=1 type=i32] [debug line = 35:7]
  %tmp.60 = shl i32 %f.2, 21, !dbg !131           ; [#uses=1 type=i32] [debug line = 35:7]
  %tmp.61 = or i32 %tmp.59, %tmp.60, !dbg !131    ; [#uses=1 type=i32] [debug line = 35:7]
  %tmp.62 = lshr i32 %f.2, 25, !dbg !131          ; [#uses=1 type=i32] [debug line = 35:7]
  %tmp.63 = shl i32 %f.2, 7, !dbg !131            ; [#uses=1 type=i32] [debug line = 35:7]
  %tmp.64 = or i32 %tmp.62, %tmp.63, !dbg !131    ; [#uses=1 type=i32] [debug line = 35:7]
  %tmp.65 = xor i32 %tmp.64, %tmp.58, !dbg !131   ; [#uses=1 type=i32] [debug line = 35:7]
  %tmp.66 = xor i32 %tmp.65, %tmp.61, !dbg !131   ; [#uses=1 type=i32] [debug line = 35:7]
  %tmp.67 = and i32 %f.2, %g.2, !dbg !131         ; [#uses=1 type=i32] [debug line = 35:7]
  %tmp.68 = xor i32 %f.2, -1, !dbg !131           ; [#uses=1 type=i32] [debug line = 35:7]
  %tmp.69 = and i32 %tmp.68, %h.2, !dbg !131      ; [#uses=1 type=i32] [debug line = 35:7]
  %tmp.70 = xor i32 %tmp.67, %tmp.69, !dbg !131   ; [#uses=1 type=i32] [debug line = 35:7]
  %k.addr = getelementptr inbounds [64 x i32]* @k, i32 0, i32 %i.2, !dbg !131 ; [#uses=1 type=i32*] [debug line = 35:7]
  %k.load = load i32* %k.addr, align 4, !dbg !131 ; [#uses=2 type=i32] [debug line = 35:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %k.load) nounwind
  %m.addr.6 = getelementptr inbounds [64 x i32]* %m, i32 0, i32 %i.2, !dbg !131 ; [#uses=1 type=i32*] [debug line = 35:7]
  %m.load.4 = load i32* %m.addr.6, align 4, !dbg !131 ; [#uses=2 type=i32] [debug line = 35:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %m.load.4) nounwind
  %tmp.71 = add i32 %tmp.70, %h1, !dbg !131       ; [#uses=1 type=i32] [debug line = 35:7]
  %tmp.72 = add i32 %tmp.71, %tmp.66, !dbg !131   ; [#uses=1 type=i32] [debug line = 35:7]
  %tmp.73 = add i32 %tmp.72, %k.load, !dbg !131   ; [#uses=1 type=i32] [debug line = 35:7]
  %t1 = add i32 %tmp.73, %m.load.4, !dbg !131     ; [#uses=2 type=i32] [debug line = 35:7]
  call void @llvm.dbg.value(metadata !{i32 %t1}, i64 0, metadata !133), !dbg !131 ; [debug line = 35:7] [debug variable = t1]
  %tmp.74 = lshr i32 %b.2, 2, !dbg !134           ; [#uses=1 type=i32] [debug line = 36:7]
  %tmp.75 = shl i32 %b.2, 30, !dbg !134           ; [#uses=1 type=i32] [debug line = 36:7]
  %tmp.76 = or i32 %tmp.74, %tmp.75, !dbg !134    ; [#uses=1 type=i32] [debug line = 36:7]
  %tmp.77 = lshr i32 %b.2, 13, !dbg !134          ; [#uses=1 type=i32] [debug line = 36:7]
  %tmp.78 = shl i32 %b.2, 19, !dbg !134           ; [#uses=1 type=i32] [debug line = 36:7]
  %tmp.79 = or i32 %tmp.77, %tmp.78, !dbg !134    ; [#uses=1 type=i32] [debug line = 36:7]
  %tmp.80 = lshr i32 %b.2, 22, !dbg !134          ; [#uses=1 type=i32] [debug line = 36:7]
  %tmp.81 = shl i32 %b.2, 10, !dbg !134           ; [#uses=1 type=i32] [debug line = 36:7]
  %tmp.82 = or i32 %tmp.80, %tmp.81, !dbg !134    ; [#uses=1 type=i32] [debug line = 36:7]
  %tmp.83 = xor i32 %tmp.82, %tmp.76, !dbg !134   ; [#uses=1 type=i32] [debug line = 36:7]
  %tmp.84 = xor i32 %tmp.83, %tmp.79, !dbg !134   ; [#uses=1 type=i32] [debug line = 36:7]
  %tmp.85 = xor i32 %c.2, %d.2, !dbg !134         ; [#uses=1 type=i32] [debug line = 36:7]
  %tmp.86 = and i32 %b.2, %tmp.85, !dbg !134      ; [#uses=1 type=i32] [debug line = 36:7]
  %tmp.87 = and i32 %c.2, %d.2, !dbg !134         ; [#uses=1 type=i32] [debug line = 36:7]
  %tmp.88 = xor i32 %tmp.86, %tmp.87, !dbg !134   ; [#uses=1 type=i32] [debug line = 36:7]
  call void @llvm.dbg.value(metadata !{i32 %t2}, i64 0, metadata !135), !dbg !134 ; [debug line = 36:7] [debug variable = t2]
  call void @llvm.dbg.value(metadata !{i32 %h.2}, i64 0, metadata !128), !dbg !136 ; [debug line = 37:7] [debug variable = h]
  call void @llvm.dbg.value(metadata !{i32 %g.2}, i64 0, metadata !126), !dbg !137 ; [debug line = 38:7] [debug variable = g]
  call void @llvm.dbg.value(metadata !{i32 %f.2}, i64 0, metadata !124), !dbg !138 ; [debug line = 39:7] [debug variable = f]
  %e.2 = add i32 %t1, %d1, !dbg !139              ; [#uses=1 type=i32] [debug line = 40:7]
  call void @llvm.dbg.value(metadata !{i32 %e.2}, i64 0, metadata !122), !dbg !139 ; [debug line = 40:7] [debug variable = e]
  call void @llvm.dbg.value(metadata !{i32 %d.2}, i64 0, metadata !120), !dbg !140 ; [debug line = 41:7] [debug variable = d]
  call void @llvm.dbg.value(metadata !{i32 %c.2}, i64 0, metadata !118), !dbg !141 ; [debug line = 42:7] [debug variable = c]
  call void @llvm.dbg.value(metadata !{i32 %b.2}, i64 0, metadata !116), !dbg !142 ; [debug line = 43:7] [debug variable = b]
  %t2 = add i32 %tmp.84, %tmp.88, !dbg !134       ; [#uses=1 type=i32] [debug line = 36:7]
  %a.2 = add i32 %t2, %t1, !dbg !143              ; [#uses=1 type=i32] [debug line = 44:7]
  call void @llvm.dbg.value(metadata !{i32 %a.2}, i64 0, metadata !114), !dbg !143 ; [debug line = 44:7] [debug variable = a]
  %i.4 = add i32 %i.2, 1, !dbg !144               ; [#uses=1 type=i32] [debug line = 34:24]
  call void @llvm.dbg.value(metadata !{i32 %i.4}, i64 0, metadata !112), !dbg !144 ; [debug line = 34:24] [debug variable = i]
  br label %5, !dbg !144                          ; [debug line = 34:24]

; <label>:7                                       ; preds = %5
  %a.0.lcssa = phi i32 [ %b.2, %5 ]               ; [#uses=1 type=i32]
  %b.0.lcssa = phi i32 [ %c.2, %5 ]               ; [#uses=1 type=i32]
  %c.0.lcssa = phi i32 [ %d.2, %5 ]               ; [#uses=1 type=i32]
  %d.0.lcssa = phi i32 [ %d1, %5 ]                ; [#uses=1 type=i32]
  %e.0.lcssa = phi i32 [ %f.2, %5 ]               ; [#uses=1 type=i32]
  %f.0.lcssa = phi i32 [ %g.2, %5 ]               ; [#uses=1 type=i32]
  %g.0.lcssa = phi i32 [ %h.2, %5 ]               ; [#uses=1 type=i32]
  %h.0.lcssa = phi i32 [ %h1, %5 ]                ; [#uses=1 type=i32]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %a) nounwind
  %tmp.48 = add i32 %a.0.lcssa, %a, !dbg !145     ; [#uses=1 type=i32] [debug line = 47:4]
  store i32 %tmp.48, i32* getelementptr inbounds (%struct.SHA256_CTX.0* @ctx, i32 0, i32 3, i32 0), align 4, !dbg !145 ; [debug line = 47:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %b) nounwind
  %tmp.49 = add i32 %b.0.lcssa, %b, !dbg !146     ; [#uses=1 type=i32] [debug line = 48:4]
  store i32 %tmp.49, i32* getelementptr inbounds (%struct.SHA256_CTX.0* @ctx, i32 0, i32 3, i32 1), align 4, !dbg !146 ; [debug line = 48:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %c) nounwind
  %tmp.50 = add i32 %c.0.lcssa, %c, !dbg !147     ; [#uses=1 type=i32] [debug line = 49:4]
  store i32 %tmp.50, i32* getelementptr inbounds (%struct.SHA256_CTX.0* @ctx, i32 0, i32 3, i32 2), align 4, !dbg !147 ; [debug line = 49:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %d) nounwind
  %tmp.51 = add i32 %d.0.lcssa, %d, !dbg !148     ; [#uses=1 type=i32] [debug line = 50:4]
  store i32 %tmp.51, i32* getelementptr inbounds (%struct.SHA256_CTX.0* @ctx, i32 0, i32 3, i32 3), align 4, !dbg !148 ; [debug line = 50:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %e) nounwind
  %tmp.52 = add i32 %e.0.lcssa, %e, !dbg !149     ; [#uses=1 type=i32] [debug line = 51:4]
  store i32 %tmp.52, i32* getelementptr inbounds (%struct.SHA256_CTX.0* @ctx, i32 0, i32 3, i32 4), align 4, !dbg !149 ; [debug line = 51:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %f) nounwind
  %tmp.53 = add i32 %f.0.lcssa, %f, !dbg !150     ; [#uses=1 type=i32] [debug line = 52:4]
  store i32 %tmp.53, i32* getelementptr inbounds (%struct.SHA256_CTX.0* @ctx, i32 0, i32 3, i32 5), align 4, !dbg !150 ; [debug line = 52:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %g) nounwind
  %tmp.54 = add i32 %g.0.lcssa, %g, !dbg !151     ; [#uses=1 type=i32] [debug line = 53:4]
  store i32 %tmp.54, i32* getelementptr inbounds (%struct.SHA256_CTX.0* @ctx, i32 0, i32 3, i32 6), align 4, !dbg !151 ; [debug line = 53:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %h) nounwind
  %tmp.55 = add i32 %h.0.lcssa, %h, !dbg !152     ; [#uses=1 type=i32] [debug line = 54:4]
  store i32 %tmp.55, i32* getelementptr inbounds (%struct.SHA256_CTX.0* @ctx, i32 0, i32 3, i32 7), align 4, !dbg !152 ; [debug line = 54:4]
  ret void, !dbg !153                             ; [debug line = 55:1]
}

; [#uses=0]
define void @sha256_top(i8* %data, i8* %hash) nounwind {
  call void (...)* @_ssdm_op_SpecTopModule([11 x i8]* @sha256_top.str) nounwind
  call void @llvm.dbg.value(metadata !{i8* %data}, i64 0, metadata !154), !dbg !155 ; [debug line = 140:47] [debug variable = data]
  call void @llvm.dbg.value(metadata !{i8* %hash}, i64 0, metadata !156), !dbg !157 ; [debug line = 140:87] [debug variable = hash]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %data, i32 32), !dbg !158 ; [debug line = 140:98]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %hash, i32 32), !dbg !160 ; [debug line = 140:130]
  call fastcc void @sha256_init(), !dbg !161      ; [debug line = 145:2]
  call fastcc void @sha256_update(i8* %data), !dbg !162 ; [debug line = 150:2]
  call fastcc void @sha256_final(i8* %hash), !dbg !163 ; [debug line = 153:2]
  ret void, !dbg !164                             ; [debug line = 154:1]
}

; [#uses=1]
define internal fastcc void @sha256_init() nounwind {
  store i32 0, i32* getelementptr inbounds (%struct.SHA256_CTX.0* @ctx, i32 0, i32 1), align 4, !dbg !165 ; [debug line = 59:4]
  store i32 0, i32* getelementptr inbounds (%struct.SHA256_CTX.0* @ctx, i32 0, i32 2, i32 0), align 4, !dbg !167 ; [debug line = 60:4]
  store i32 0, i32* getelementptr inbounds (%struct.SHA256_CTX.0* @ctx, i32 0, i32 2, i32 1), align 4, !dbg !168 ; [debug line = 61:4]
  store i32 1779033703, i32* getelementptr inbounds (%struct.SHA256_CTX.0* @ctx, i32 0, i32 3, i32 0), align 4, !dbg !169 ; [debug line = 62:4]
  store i32 -1150833019, i32* getelementptr inbounds (%struct.SHA256_CTX.0* @ctx, i32 0, i32 3, i32 1), align 4, !dbg !170 ; [debug line = 63:4]
  store i32 1013904242, i32* getelementptr inbounds (%struct.SHA256_CTX.0* @ctx, i32 0, i32 3, i32 2), align 4, !dbg !171 ; [debug line = 64:4]
  store i32 -1521486534, i32* getelementptr inbounds (%struct.SHA256_CTX.0* @ctx, i32 0, i32 3, i32 3), align 4, !dbg !172 ; [debug line = 65:4]
  store i32 1359893119, i32* getelementptr inbounds (%struct.SHA256_CTX.0* @ctx, i32 0, i32 3, i32 4), align 4, !dbg !173 ; [debug line = 66:4]
  store i32 -1694144372, i32* getelementptr inbounds (%struct.SHA256_CTX.0* @ctx, i32 0, i32 3, i32 5), align 4, !dbg !174 ; [debug line = 67:4]
  store i32 528734635, i32* getelementptr inbounds (%struct.SHA256_CTX.0* @ctx, i32 0, i32 3, i32 6), align 4, !dbg !175 ; [debug line = 68:4]
  store i32 1541459225, i32* getelementptr inbounds (%struct.SHA256_CTX.0* @ctx, i32 0, i32 3, i32 7), align 4, !dbg !176 ; [debug line = 69:4]
  ret void, !dbg !177                             ; [debug line = 70:1]
}

; [#uses=1]
define internal fastcc void @sha256_final(i8* %final_hash) nounwind {
  call void @llvm.dbg.value(metadata !{i8* %final_hash}, i64 0, metadata !178), !dbg !179 ; [debug line = 87:72] [debug variable = final_hash]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %final_hash, i32 64), !dbg !180 ; [debug line = 88:2]
  %i = load i32* getelementptr inbounds (%struct.SHA256_CTX.0* @ctx, i32 0, i32 1), align 4, !dbg !182 ; [#uses=7 type=i32] [debug line = 91:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %i) nounwind
  call void @llvm.dbg.value(metadata !{i32 %i}, i64 0, metadata !183), !dbg !182 ; [debug line = 91:4] [debug variable = i]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %i) nounwind
  %tmp = icmp ult i32 %i, 56, !dbg !184           ; [#uses=1 type=i1] [debug line = 94:4]
  br i1 %tmp, label %1, label %4, !dbg !184       ; [debug line = 94:4]

; <label>:1                                       ; preds = %0
  %ctx.addr = getelementptr inbounds %struct.SHA256_CTX.0* @ctx, i32 0, i32 0, i32 %i, !dbg !185 ; [#uses=1 type=i8*] [debug line = 95:7]
  store i8 -128, i8* %ctx.addr, align 1, !dbg !185 ; [debug line = 95:7]
  br label %2, !dbg !187                          ; [debug line = 96:7]

; <label>:2                                       ; preds = %3, %1
  %i.0.in = phi i32 [ %i, %1 ], [ %i.6, %3 ]      ; [#uses=1 type=i32]
  %i.6 = add i32 %i.0.in, 1, !dbg !185            ; [#uses=3 type=i32] [debug line = 95:7]
  call void @llvm.dbg.value(metadata !{i32 %i.6}, i64 0, metadata !183), !dbg !185 ; [debug line = 95:7] [debug variable = i]
  %tmp.92 = icmp ult i32 %i.6, 56, !dbg !187      ; [#uses=1 type=i1] [debug line = 96:7]
  br i1 %tmp.92, label %3, label %.loopexit.loopexit8, !dbg !187 ; [debug line = 96:7]

; <label>:3                                       ; preds = %2
  %ctx.addr.2 = getelementptr inbounds %struct.SHA256_CTX.0* @ctx, i32 0, i32 0, i32 %i.6, !dbg !188 ; [#uses=1 type=i8*] [debug line = 97:10]
  store i8 0, i8* %ctx.addr.2, align 1, !dbg !188 ; [debug line = 97:10]
  br label %2, !dbg !188                          ; [debug line = 97:10]

; <label>:4                                       ; preds = %0
  %ctx.addr.1 = getelementptr inbounds %struct.SHA256_CTX.0* @ctx, i32 0, i32 0, i32 %i, !dbg !189 ; [#uses=1 type=i8*] [debug line = 100:7]
  store i8 -128, i8* %ctx.addr.1, align 1, !dbg !189 ; [debug line = 100:7]
  br label %5, !dbg !191                          ; [debug line = 101:7]

; <label>:5                                       ; preds = %6, %4
  %i.1.in = phi i32 [ %i, %4 ], [ %i.1, %6 ]      ; [#uses=1 type=i32]
  %i.1 = add i32 %i.1.in, 1, !dbg !189            ; [#uses=3 type=i32] [debug line = 100:7]
  call void @llvm.dbg.value(metadata !{i32 %i.1}, i64 0, metadata !183), !dbg !189 ; [debug line = 100:7] [debug variable = i]
  %tmp.93 = icmp ult i32 %i.1, 64, !dbg !191      ; [#uses=1 type=i1] [debug line = 101:7]
  br i1 %tmp.93, label %6, label %7, !dbg !191    ; [debug line = 101:7]

; <label>:6                                       ; preds = %5
  %ctx.addr.3 = getelementptr inbounds %struct.SHA256_CTX.0* @ctx, i32 0, i32 0, i32 %i.1, !dbg !192 ; [#uses=1 type=i8*] [debug line = 102:10]
  store i8 0, i8* %ctx.addr.3, align 1, !dbg !192 ; [debug line = 102:10]
  br label %5, !dbg !192                          ; [debug line = 102:10]

; <label>:7                                       ; preds = %5
  call fastcc void @sha256_transform(i8* getelementptr inbounds (%struct.SHA256_CTX.0* @ctx, i32 0, i32 0, i32 0)), !dbg !193 ; [debug line = 103:7]
  br label %8, !dbg !194                          ; [debug line = 107:6]

; <label>:8                                       ; preds = %9, %7
  %j = phi i32 [ 0, %7 ], [ %j.2, %9 ]            ; [#uses=3 type=i32]
  %tmp.94 = icmp eq i32 %j, 56, !dbg !194         ; [#uses=1 type=i1] [debug line = 107:6]
  br i1 %tmp.94, label %.loopexit.loopexit, label %9, !dbg !194 ; [debug line = 107:6]

; <label>:9                                       ; preds = %8
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([20 x i8]* @.str1, i32 0, i32 0)), !dbg !196 ; [debug line = 107:33]
  %rbegin6 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([20 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !196 ; [#uses=1 type=i32] [debug line = 107:33]
  %ctx.addr.4 = getelementptr inbounds %struct.SHA256_CTX.0* @ctx, i32 0, i32 0, i32 %j, !dbg !198 ; [#uses=1 type=i8*] [debug line = 108:6]
  store i8 0, i8* %ctx.addr.4, align 1, !dbg !198 ; [debug line = 108:6]
  %rend7 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([20 x i8]* @.str1, i32 0, i32 0), i32 %rbegin6) nounwind, !dbg !199 ; [#uses=0 type=i32] [debug line = 109:5]
  %j.2 = add i32 %j, 1, !dbg !200                 ; [#uses=1 type=i32] [debug line = 107:21]
  call void @llvm.dbg.value(metadata !{i32 %j.2}, i64 0, metadata !201), !dbg !200 ; [debug line = 107:21] [debug variable = j]
  br label %8, !dbg !200                          ; [debug line = 107:21]

.loopexit.loopexit:                               ; preds = %8
  br label %.loopexit

.loopexit.loopexit8:                              ; preds = %2
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit8, %.loopexit.loopexit
  %ctx.load = load i32* getelementptr inbounds (%struct.SHA256_CTX.0* @ctx, i32 0, i32 2, i32 0), align 4, !dbg !202 ; [#uses=4 type=i32] [debug line = 113:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %ctx.load) nounwind
  %ctx.load.4 = load i32* getelementptr inbounds (%struct.SHA256_CTX.0* @ctx, i32 0, i32 1), align 4, !dbg !202 ; [#uses=3 type=i32] [debug line = 113:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %ctx.load.4) nounwind
  %tmp.96 = shl i32 %ctx.load.4, 3, !dbg !202     ; [#uses=2 type=i32] [debug line = 113:4]
  %tmp.97 = xor i32 %tmp.96, -1, !dbg !202        ; [#uses=1 type=i32] [debug line = 113:4]
  %tmp.98 = icmp ugt i32 %ctx.load, %tmp.97, !dbg !202 ; [#uses=1 type=i1] [debug line = 113:4]
  br i1 %tmp.98, label %10, label %.loopexit._crit_edge, !dbg !202 ; [debug line = 113:4]

; <label>:10                                      ; preds = %.loopexit
  %ctx.load.5 = load i32* getelementptr inbounds (%struct.SHA256_CTX.0* @ctx, i32 0, i32 2, i32 1), align 4, !dbg !203 ; [#uses=2 type=i32] [debug line = 113:70]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %ctx.load.5) nounwind
  %tmp.99 = add i32 %ctx.load.5, 1, !dbg !203     ; [#uses=1 type=i32] [debug line = 113:70]
  store i32 %tmp.99, i32* getelementptr inbounds (%struct.SHA256_CTX.0* @ctx, i32 0, i32 2, i32 1), align 4, !dbg !203 ; [debug line = 113:70]
  br label %.loopexit._crit_edge, !dbg !203       ; [debug line = 113:70]

.loopexit._crit_edge:                             ; preds = %10, %.loopexit
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %ctx.load.4) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %ctx.load) nounwind
  %tmp.100 = add i32 %tmp.96, %ctx.load, !dbg !204 ; [#uses=9 type=i32] [debug line = 113:94]
  store i32 %tmp.100, i32* getelementptr inbounds (%struct.SHA256_CTX.0* @ctx, i32 0, i32 2, i32 0), align 4, !dbg !204 ; [debug line = 113:94]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %tmp.100) nounwind
  %tmp.101 = trunc i32 %tmp.100 to i8, !dbg !205  ; [#uses=1 type=i8] [debug line = 114:4]
  store i8 %tmp.101, i8* getelementptr inbounds (%struct.SHA256_CTX.0* @ctx, i32 0, i32 0, i32 63), align 1, !dbg !205 ; [debug line = 114:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %tmp.100) nounwind
  %tmp.102 = lshr i32 %tmp.100, 8, !dbg !206      ; [#uses=1 type=i32] [debug line = 115:4]
  %tmp.103 = trunc i32 %tmp.102 to i8, !dbg !206  ; [#uses=1 type=i8] [debug line = 115:4]
  store i8 %tmp.103, i8* getelementptr inbounds (%struct.SHA256_CTX.0* @ctx, i32 0, i32 0, i32 62), align 1, !dbg !206 ; [debug line = 115:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %tmp.100) nounwind
  %tmp.104 = lshr i32 %tmp.100, 16, !dbg !207     ; [#uses=1 type=i32] [debug line = 116:4]
  %tmp.105 = trunc i32 %tmp.104 to i8, !dbg !207  ; [#uses=1 type=i8] [debug line = 116:4]
  store i8 %tmp.105, i8* getelementptr inbounds (%struct.SHA256_CTX.0* @ctx, i32 0, i32 0, i32 61), align 1, !dbg !207 ; [debug line = 116:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %tmp.100) nounwind
  %tmp.106 = lshr i32 %tmp.100, 24, !dbg !208     ; [#uses=1 type=i32] [debug line = 117:4]
  %tmp.107 = trunc i32 %tmp.106 to i8, !dbg !208  ; [#uses=1 type=i8] [debug line = 117:4]
  store i8 %tmp.107, i8* getelementptr inbounds (%struct.SHA256_CTX.0* @ctx, i32 0, i32 0, i32 60), align 1, !dbg !208 ; [debug line = 117:4]
  %ctx.load.6 = load i32* getelementptr inbounds (%struct.SHA256_CTX.0* @ctx, i32 0, i32 2, i32 1), align 4, !dbg !209 ; [#uses=8 type=i32] [debug line = 118:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %ctx.load.6) nounwind
  %tmp.108 = trunc i32 %ctx.load.6 to i8, !dbg !209 ; [#uses=1 type=i8] [debug line = 118:4]
  store i8 %tmp.108, i8* getelementptr inbounds (%struct.SHA256_CTX.0* @ctx, i32 0, i32 0, i32 59), align 1, !dbg !209 ; [debug line = 118:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %ctx.load.6) nounwind
  %tmp.109 = lshr i32 %ctx.load.6, 8, !dbg !210   ; [#uses=1 type=i32] [debug line = 119:4]
  %tmp.110 = trunc i32 %tmp.109 to i8, !dbg !210  ; [#uses=1 type=i8] [debug line = 119:4]
  store i8 %tmp.110, i8* getelementptr inbounds (%struct.SHA256_CTX.0* @ctx, i32 0, i32 0, i32 58), align 1, !dbg !210 ; [debug line = 119:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %ctx.load.6) nounwind
  %tmp.111 = lshr i32 %ctx.load.6, 16, !dbg !211  ; [#uses=1 type=i32] [debug line = 120:4]
  %tmp.112 = trunc i32 %tmp.111 to i8, !dbg !211  ; [#uses=1 type=i8] [debug line = 120:4]
  store i8 %tmp.112, i8* getelementptr inbounds (%struct.SHA256_CTX.0* @ctx, i32 0, i32 0, i32 57), align 1, !dbg !211 ; [debug line = 120:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %ctx.load.6) nounwind
  %tmp.113 = lshr i32 %ctx.load.6, 24, !dbg !212  ; [#uses=1 type=i32] [debug line = 121:4]
  %tmp.114 = trunc i32 %tmp.113 to i8, !dbg !212  ; [#uses=1 type=i8] [debug line = 121:4]
  store i8 %tmp.114, i8* getelementptr inbounds (%struct.SHA256_CTX.0* @ctx, i32 0, i32 0, i32 56), align 1, !dbg !212 ; [debug line = 121:4]
  call fastcc void @sha256_transform(i8* getelementptr inbounds (%struct.SHA256_CTX.0* @ctx, i32 0, i32 0, i32 0)), !dbg !213 ; [debug line = 122:4]
  br label %11, !dbg !214                         ; [debug line = 127:9]

; <label>:11                                      ; preds = %12, %.loopexit._crit_edge
  %i.2 = phi i32 [ 0, %.loopexit._crit_edge ], [ %i.7, %12 ] ; [#uses=11 type=i32]
  %tmp.115 = icmp eq i32 %i.2, 4, !dbg !214       ; [#uses=1 type=i1] [debug line = 127:9]
  br i1 %tmp.115, label %13, label %12, !dbg !214 ; [debug line = 127:9]

; <label>:12                                      ; preds = %11
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([24 x i8]* @.str2, i32 0, i32 0)), !dbg !216 ; [debug line = 127:27]
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([24 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !216 ; [#uses=1 type=i32] [debug line = 127:27]
  %ctx.load.7 = load i32* getelementptr inbounds (%struct.SHA256_CTX.0* @ctx, i32 0, i32 3, i32 0), align 4, !dbg !218 ; [#uses=2 type=i32] [debug line = 128:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %ctx.load.7) nounwind
  %tmp.116 = shl i32 %i.2, 3, !dbg !218           ; [#uses=1 type=i32] [debug line = 128:4]
  %tmp.117 = sub i32 24, %tmp.116, !dbg !218      ; [#uses=8 type=i32] [debug line = 128:4]
  %tmp.118 = lshr i32 %ctx.load.7, %tmp.117, !dbg !218 ; [#uses=1 type=i32] [debug line = 128:4]
  %tmp.119 = trunc i32 %tmp.118 to i8, !dbg !218  ; [#uses=1 type=i8] [debug line = 128:4]
  %final_hash.addr = getelementptr inbounds i8* %final_hash, i32 %i.2, !dbg !218 ; [#uses=1 type=i8*] [debug line = 128:4]
  store i8 %tmp.119, i8* %final_hash.addr, align 1, !dbg !218 ; [debug line = 128:4]
  %ctx.load.8 = load i32* getelementptr inbounds (%struct.SHA256_CTX.0* @ctx, i32 0, i32 3, i32 1), align 4, !dbg !219 ; [#uses=2 type=i32] [debug line = 129:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %ctx.load.8) nounwind
  %tmp.120 = lshr i32 %ctx.load.8, %tmp.117, !dbg !219 ; [#uses=1 type=i32] [debug line = 129:4]
  %tmp.121 = trunc i32 %tmp.120 to i8, !dbg !219  ; [#uses=1 type=i8] [debug line = 129:4]
  %tmp.122 = add i32 %i.2, 4, !dbg !219           ; [#uses=1 type=i32] [debug line = 129:4]
  %final_hash.addr.1 = getelementptr inbounds i8* %final_hash, i32 %tmp.122, !dbg !219 ; [#uses=1 type=i8*] [debug line = 129:4]
  store i8 %tmp.121, i8* %final_hash.addr.1, align 1, !dbg !219 ; [debug line = 129:4]
  %ctx.load.9 = load i32* getelementptr inbounds (%struct.SHA256_CTX.0* @ctx, i32 0, i32 3, i32 2), align 4, !dbg !220 ; [#uses=2 type=i32] [debug line = 130:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %ctx.load.9) nounwind
  %tmp.123 = lshr i32 %ctx.load.9, %tmp.117, !dbg !220 ; [#uses=1 type=i32] [debug line = 130:4]
  %tmp.124 = trunc i32 %tmp.123 to i8, !dbg !220  ; [#uses=1 type=i8] [debug line = 130:4]
  %tmp.125 = add i32 %i.2, 8, !dbg !220           ; [#uses=1 type=i32] [debug line = 130:4]
  %final_hash.addr.2 = getelementptr inbounds i8* %final_hash, i32 %tmp.125, !dbg !220 ; [#uses=1 type=i8*] [debug line = 130:4]
  store i8 %tmp.124, i8* %final_hash.addr.2, align 1, !dbg !220 ; [debug line = 130:4]
  %ctx.load.10 = load i32* getelementptr inbounds (%struct.SHA256_CTX.0* @ctx, i32 0, i32 3, i32 3), align 4, !dbg !221 ; [#uses=2 type=i32] [debug line = 131:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %ctx.load.10) nounwind
  %tmp.126 = lshr i32 %ctx.load.10, %tmp.117, !dbg !221 ; [#uses=1 type=i32] [debug line = 131:4]
  %tmp.127 = trunc i32 %tmp.126 to i8, !dbg !221  ; [#uses=1 type=i8] [debug line = 131:4]
  %tmp.128 = add i32 %i.2, 12, !dbg !221          ; [#uses=1 type=i32] [debug line = 131:4]
  %final_hash.addr.3 = getelementptr inbounds i8* %final_hash, i32 %tmp.128, !dbg !221 ; [#uses=1 type=i8*] [debug line = 131:4]
  store i8 %tmp.127, i8* %final_hash.addr.3, align 1, !dbg !221 ; [debug line = 131:4]
  %ctx.load.11 = load i32* getelementptr inbounds (%struct.SHA256_CTX.0* @ctx, i32 0, i32 3, i32 4), align 4, !dbg !222 ; [#uses=2 type=i32] [debug line = 132:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %ctx.load.11) nounwind
  %tmp.129 = lshr i32 %ctx.load.11, %tmp.117, !dbg !222 ; [#uses=1 type=i32] [debug line = 132:4]
  %tmp.130 = trunc i32 %tmp.129 to i8, !dbg !222  ; [#uses=1 type=i8] [debug line = 132:4]
  %tmp.131 = add i32 %i.2, 16, !dbg !222          ; [#uses=1 type=i32] [debug line = 132:4]
  %final_hash.addr.4 = getelementptr inbounds i8* %final_hash, i32 %tmp.131, !dbg !222 ; [#uses=1 type=i8*] [debug line = 132:4]
  store i8 %tmp.130, i8* %final_hash.addr.4, align 1, !dbg !222 ; [debug line = 132:4]
  %ctx.load.12 = load i32* getelementptr inbounds (%struct.SHA256_CTX.0* @ctx, i32 0, i32 3, i32 5), align 4, !dbg !223 ; [#uses=2 type=i32] [debug line = 133:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %ctx.load.12) nounwind
  %tmp.132 = lshr i32 %ctx.load.12, %tmp.117, !dbg !223 ; [#uses=1 type=i32] [debug line = 133:4]
  %tmp.133 = trunc i32 %tmp.132 to i8, !dbg !223  ; [#uses=1 type=i8] [debug line = 133:4]
  %tmp.134 = add i32 %i.2, 20, !dbg !223          ; [#uses=1 type=i32] [debug line = 133:4]
  %final_hash.addr.5 = getelementptr inbounds i8* %final_hash, i32 %tmp.134, !dbg !223 ; [#uses=1 type=i8*] [debug line = 133:4]
  store i8 %tmp.133, i8* %final_hash.addr.5, align 1, !dbg !223 ; [debug line = 133:4]
  %ctx.load.13 = load i32* getelementptr inbounds (%struct.SHA256_CTX.0* @ctx, i32 0, i32 3, i32 6), align 4, !dbg !224 ; [#uses=2 type=i32] [debug line = 134:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %ctx.load.13) nounwind
  %tmp.135 = lshr i32 %ctx.load.13, %tmp.117, !dbg !224 ; [#uses=1 type=i32] [debug line = 134:4]
  %tmp.136 = trunc i32 %tmp.135 to i8, !dbg !224  ; [#uses=1 type=i8] [debug line = 134:4]
  %tmp.137 = add i32 %i.2, 24, !dbg !224          ; [#uses=1 type=i32] [debug line = 134:4]
  %final_hash.addr.6 = getelementptr inbounds i8* %final_hash, i32 %tmp.137, !dbg !224 ; [#uses=1 type=i8*] [debug line = 134:4]
  store i8 %tmp.136, i8* %final_hash.addr.6, align 1, !dbg !224 ; [debug line = 134:4]
  %ctx.load.14 = load i32* getelementptr inbounds (%struct.SHA256_CTX.0* @ctx, i32 0, i32 3, i32 7), align 4, !dbg !225 ; [#uses=2 type=i32] [debug line = 135:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %ctx.load.14) nounwind
  %tmp.138 = lshr i32 %ctx.load.14, %tmp.117, !dbg !225 ; [#uses=1 type=i32] [debug line = 135:4]
  %tmp.139 = trunc i32 %tmp.138 to i8, !dbg !225  ; [#uses=1 type=i8] [debug line = 135:4]
  %tmp.140 = add i32 %i.2, 28, !dbg !225          ; [#uses=1 type=i32] [debug line = 135:4]
  %final_hash.addr.7 = getelementptr inbounds i8* %final_hash, i32 %tmp.140, !dbg !225 ; [#uses=1 type=i8*] [debug line = 135:4]
  store i8 %tmp.139, i8* %final_hash.addr.7, align 1, !dbg !225 ; [debug line = 135:4]
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([24 x i8]* @.str2, i32 0, i32 0), i32 %rbegin) nounwind, !dbg !226 ; [#uses=0 type=i32] [debug line = 136:4]
  %i.7 = add i32 %i.2, 1, !dbg !227               ; [#uses=1 type=i32] [debug line = 127:21]
  call void @llvm.dbg.value(metadata !{i32 %i.7}, i64 0, metadata !183), !dbg !227 ; [debug line = 127:21] [debug variable = i]
  br label %11, !dbg !227                         ; [debug line = 127:21]

; <label>:13                                      ; preds = %11
  ret void, !dbg !228                             ; [debug line = 137:1]
}

; [#uses=32]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=2]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=2]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=2]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=1]
declare void @_ssdm_Unroll(...) nounwind

; [#uses=64]
declare void @_ssdm_SpecKeepArrayLoad(...)

; [#uses=5]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!52, !59, !65, !71, !73}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"C:/Users/windows-10-vm1/Desktop/github/30-202_DIC/30-202_hw-1/hls_test_error/hls_test_error/solution1/.autopilot/db/sha256.pragma.2.c", metadata !"C:\5CUsers\5Cwindows-10-vm1\5CDesktop\5Cgithub\5C30-202_DIC\5C30-202_hw-1\5Chls_test_error", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !42} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !32, metadata !35, metadata !38, metadata !39}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"sha256_transform", metadata !"sha256_transform", metadata !"", metadata !6, i32 16, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !30, i32 17} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"../hls_error/sha256.c", metadata !"C:\5CUsers\5Cwindows-10-vm1\5CDesktop\5Cgithub\5C30-202_DIC\5C30-202_hw-1\5Chls_test_error", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !29}
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!10 = metadata !{i32 786454, null, metadata !"SHA256_CTX", metadata !6, i32 25, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ]
!11 = metadata !{i32 786451, null, metadata !"", metadata !12, i32 20, i64 864, i64 32, i32 0, i32 0, null, metadata !13, i32 0, i32 0} ; [ DW_TAG_structure_type ]
!12 = metadata !{i32 786473, metadata !"../hls_error/sha256.h", metadata !"C:\5CUsers\5Cwindows-10-vm1\5CDesktop\5Cgithub\5C30-202_DIC\5C30-202_hw-1\5Chls_test_error", null} ; [ DW_TAG_file_type ]
!13 = metadata !{metadata !14, metadata !19, metadata !21, metadata !25}
!14 = metadata !{i32 786445, metadata !11, metadata !"in_data", metadata !12, i32 21, i64 512, i64 8, i64 0, i32 0, metadata !15} ; [ DW_TAG_member ]
!15 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 512, i64 8, i32 0, i32 0, metadata !16, metadata !17, i32 0, i32 0} ; [ DW_TAG_array_type ]
!16 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!17 = metadata !{metadata !18}
!18 = metadata !{i32 786465, i64 0, i64 63}       ; [ DW_TAG_subrange_type ]
!19 = metadata !{i32 786445, metadata !11, metadata !"datalen", metadata !12, i32 22, i64 32, i64 32, i64 512, i32 0, metadata !20} ; [ DW_TAG_member ]
!20 = metadata !{i32 786468, null, metadata !"long unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!21 = metadata !{i32 786445, metadata !11, metadata !"bitlen", metadata !12, i32 23, i64 64, i64 32, i64 544, i32 0, metadata !22} ; [ DW_TAG_member ]
!22 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 64, i64 32, i32 0, i32 0, metadata !20, metadata !23, i32 0, i32 0} ; [ DW_TAG_array_type ]
!23 = metadata !{metadata !24}
!24 = metadata !{i32 786465, i64 0, i64 1}        ; [ DW_TAG_subrange_type ]
!25 = metadata !{i32 786445, metadata !11, metadata !"state", metadata !12, i32 24, i64 256, i64 32, i64 608, i32 0, metadata !26} ; [ DW_TAG_member ]
!26 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 256, i64 32, i32 0, i32 0, metadata !20, metadata !27, i32 0, i32 0} ; [ DW_TAG_array_type ]
!27 = metadata !{metadata !28}
!28 = metadata !{i32 786465, i64 0, i64 7}        ; [ DW_TAG_subrange_type ]
!29 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !16} ; [ DW_TAG_pointer_type ]
!30 = metadata !{metadata !31}
!31 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!32 = metadata !{i32 786478, i32 0, metadata !6, metadata !"sha256_init", metadata !"sha256_init", metadata !"", metadata !6, i32 57, metadata !33, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !30, i32 58} ; [ DW_TAG_subprogram ]
!33 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !34, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!34 = metadata !{null, metadata !9}
!35 = metadata !{i32 786478, i32 0, metadata !6, metadata !"sha256_update", metadata !"sha256_update", metadata !"", metadata !6, i32 72, metadata !36, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !30, i32 73} ; [ DW_TAG_subprogram ]
!36 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !37, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!37 = metadata !{null, metadata !9, metadata !29, metadata !20}
!38 = metadata !{i32 786478, i32 0, metadata !6, metadata !"sha256_final", metadata !"sha256_final", metadata !"", metadata !6, i32 87, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !30, i32 88} ; [ DW_TAG_subprogram ]
!39 = metadata !{i32 786478, i32 0, metadata !6, metadata !"sha256_top", metadata !"sha256_top", metadata !"", metadata !6, i32 140, metadata !40, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*, i8*)* @sha256_top, null, null, metadata !30, i32 140} ; [ DW_TAG_subprogram ]
!40 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !41, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!41 = metadata !{null, metadata !29, metadata !29}
!42 = metadata !{metadata !43}
!43 = metadata !{metadata !44, metadata !47, metadata !49, metadata !50, metadata !51}
!44 = metadata !{i32 786484, i32 0, null, metadata !"k", metadata !"k", metadata !"", metadata !6, i32 5, metadata !45, i32 0, i32 1, [64 x i32]* @k} ; [ DW_TAG_variable ]
!45 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 2048, i64 32, i32 0, i32 0, metadata !46, metadata !17, i32 0, i32 0} ; [ DW_TAG_array_type ]
!46 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !20} ; [ DW_TAG_const_type ]
!47 = metadata !{i32 786484, i32 0, null, metadata !"data", metadata !"data", metadata !"", metadata !12, i32 27, metadata !48, i32 0, i32 1, [64 x i32]* @data} ; [ DW_TAG_variable ]
!48 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 2048, i64 32, i32 0, i32 0, metadata !20, metadata !17, i32 0, i32 0} ; [ DW_TAG_array_type ]
!49 = metadata !{i32 786484, i32 0, null, metadata !"hash", metadata !"hash", metadata !"", metadata !12, i32 28, metadata !48, i32 0, i32 1, [64 x i32]* @hash} ; [ DW_TAG_variable ]
!50 = metadata !{i32 786484, i32 0, null, metadata !"ctx", metadata !"ctx", metadata !"", metadata !12, i32 29, metadata !10, i32 1, i32 1, %struct.SHA256_CTX.0* @ctx} ; [ DW_TAG_variable ]
!51 = metadata !{i32 786484, i32 0, null, metadata !"k", metadata !"k", metadata !"", metadata !12, i32 31, metadata !45, i32 0, i32 1, [64 x i32]* @k} ; [ DW_TAG_variable ]
!52 = metadata !{null, metadata !53, metadata !54, metadata !55, metadata !56, metadata !57, metadata !58}
!53 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!54 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!55 = metadata !{metadata !"kernel_arg_type", metadata !"SHA256_CTX*", metadata !"uchar*"}
!56 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!57 = metadata !{metadata !"kernel_arg_name", metadata !"ctx_transform", metadata !"data_transform"}
!58 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!59 = metadata !{null, metadata !60, metadata !61, metadata !62, metadata !63, metadata !64, metadata !58}
!60 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!61 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!62 = metadata !{metadata !"kernel_arg_type", metadata !"SHA256_CTX*"}
!63 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!64 = metadata !{metadata !"kernel_arg_name", metadata !"ctx"}
!65 = metadata !{null, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70, metadata !58}
!66 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 0}
!67 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!68 = metadata !{metadata !"kernel_arg_type", metadata !"SHA256_CTX*", metadata !"uchar*", metadata !"ulong"}
!69 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!70 = metadata !{metadata !"kernel_arg_name", metadata !"ctx_update", metadata !"data", metadata !"len"}
!71 = metadata !{null, metadata !53, metadata !54, metadata !55, metadata !56, metadata !72, metadata !58}
!72 = metadata !{metadata !"kernel_arg_name", metadata !"ctx_final", metadata !"final_hash"}
!73 = metadata !{void (i8*, i8*)* @sha256_top, metadata !53, metadata !54, metadata !74, metadata !56, metadata !75, metadata !58}
!74 = metadata !{metadata !"kernel_arg_type", metadata !"uchar*", metadata !"uchar*"}
!75 = metadata !{metadata !"kernel_arg_name", metadata !"data", metadata !"hash"}
!76 = metadata !{i32 786689, metadata !35, metadata !"data", metadata !6, i32 33554504, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!77 = metadata !{i32 72, i32 74, metadata !35, null}
!78 = metadata !{i32 73, i32 2, metadata !79, null}
!79 = metadata !{i32 786443, metadata !35, i32 73, i32 1, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!80 = metadata !{i32 75, i32 1, metadata !79, null}
!81 = metadata !{i32 76, i32 7, metadata !82, null}
!82 = metadata !{i32 786443, metadata !79, i32 76, i32 2, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!83 = metadata !{i32 77, i32 7, metadata !84, null}
!84 = metadata !{i32 786443, metadata !82, i32 76, i32 26, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!85 = metadata !{i32 78, i32 7, metadata !84, null}
!86 = metadata !{i32 79, i32 7, metadata !84, null}
!87 = metadata !{i32 80, i32 10, metadata !88, null}
!88 = metadata !{i32 786443, metadata !84, i32 79, i32 38, metadata !6, i32 9} ; [ DW_TAG_lexical_block ]
!89 = metadata !{i32 81, i32 10, metadata !88, null}
!90 = metadata !{i32 81, i32 58, metadata !88, null}
!91 = metadata !{i32 81, i32 83, metadata !88, null}
!92 = metadata !{i32 82, i32 10, metadata !88, null}
!93 = metadata !{i32 83, i32 7, metadata !88, null}
!94 = metadata !{i32 76, i32 21, metadata !82, null}
!95 = metadata !{i32 786688, metadata !79, metadata !"i", metadata !6, i32 74, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!96 = metadata !{i32 85, i32 1, metadata !79, null}
!97 = metadata !{i32 786689, metadata !5, metadata !"data_transform", metadata !6, i32 33554448, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!98 = metadata !{i32 16, i32 80, metadata !5, null}
!99 = metadata !{i32 17, i32 2, metadata !100, null}
!100 = metadata !{i32 786443, metadata !5, i32 17, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!101 = metadata !{i32 786688, metadata !100, metadata !"m", metadata !6, i32 18, metadata !48, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!102 = metadata !{i32 18, i32 61, metadata !100, null}
!103 = metadata !{i32 20, i32 9, metadata !104, null}
!104 = metadata !{i32 786443, metadata !100, i32 20, i32 4, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!105 = metadata !{i32 22, i32 4, metadata !106, null}
!106 = metadata !{i32 786443, metadata !100, i32 22, i32 4, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!107 = metadata !{i32 21, i32 7, metadata !104, null}
!108 = metadata !{i32 20, i32 26, metadata !104, null}
!109 = metadata !{i32 786688, metadata !100, metadata !"j", metadata !6, i32 18, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!110 = metadata !{i32 23, i32 7, metadata !106, null}
!111 = metadata !{i32 22, i32 20, metadata !106, null}
!112 = metadata !{i32 786688, metadata !100, metadata !"i", metadata !6, i32 18, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!113 = metadata !{i32 25, i32 4, metadata !100, null}
!114 = metadata !{i32 786688, metadata !100, metadata !"a", metadata !6, i32 18, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!115 = metadata !{i32 26, i32 4, metadata !100, null}
!116 = metadata !{i32 786688, metadata !100, metadata !"b", metadata !6, i32 18, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!117 = metadata !{i32 27, i32 4, metadata !100, null}
!118 = metadata !{i32 786688, metadata !100, metadata !"c", metadata !6, i32 18, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!119 = metadata !{i32 28, i32 4, metadata !100, null}
!120 = metadata !{i32 786688, metadata !100, metadata !"d", metadata !6, i32 18, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!121 = metadata !{i32 29, i32 4, metadata !100, null}
!122 = metadata !{i32 786688, metadata !100, metadata !"e", metadata !6, i32 18, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!123 = metadata !{i32 30, i32 4, metadata !100, null}
!124 = metadata !{i32 786688, metadata !100, metadata !"f", metadata !6, i32 18, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!125 = metadata !{i32 31, i32 4, metadata !100, null}
!126 = metadata !{i32 786688, metadata !100, metadata !"g", metadata !6, i32 18, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!127 = metadata !{i32 32, i32 4, metadata !100, null}
!128 = metadata !{i32 786688, metadata !100, metadata !"h", metadata !6, i32 18, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!129 = metadata !{i32 34, i32 9, metadata !130, null}
!130 = metadata !{i32 786443, metadata !100, i32 34, i32 4, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!131 = metadata !{i32 35, i32 7, metadata !132, null}
!132 = metadata !{i32 786443, metadata !130, i32 34, i32 29, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!133 = metadata !{i32 786688, metadata !100, metadata !"t1", metadata !6, i32 18, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!134 = metadata !{i32 36, i32 7, metadata !132, null}
!135 = metadata !{i32 786688, metadata !100, metadata !"t2", metadata !6, i32 18, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!136 = metadata !{i32 37, i32 7, metadata !132, null}
!137 = metadata !{i32 38, i32 7, metadata !132, null}
!138 = metadata !{i32 39, i32 7, metadata !132, null}
!139 = metadata !{i32 40, i32 7, metadata !132, null}
!140 = metadata !{i32 41, i32 7, metadata !132, null}
!141 = metadata !{i32 42, i32 7, metadata !132, null}
!142 = metadata !{i32 43, i32 7, metadata !132, null}
!143 = metadata !{i32 44, i32 7, metadata !132, null}
!144 = metadata !{i32 34, i32 24, metadata !130, null}
!145 = metadata !{i32 47, i32 4, metadata !100, null}
!146 = metadata !{i32 48, i32 4, metadata !100, null}
!147 = metadata !{i32 49, i32 4, metadata !100, null}
!148 = metadata !{i32 50, i32 4, metadata !100, null}
!149 = metadata !{i32 51, i32 4, metadata !100, null}
!150 = metadata !{i32 52, i32 4, metadata !100, null}
!151 = metadata !{i32 53, i32 4, metadata !100, null}
!152 = metadata !{i32 54, i32 4, metadata !100, null}
!153 = metadata !{i32 55, i32 1, metadata !100, null}
!154 = metadata !{i32 786689, metadata !39, metadata !"data", metadata !6, i32 16777356, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!155 = metadata !{i32 140, i32 47, metadata !39, null}
!156 = metadata !{i32 786689, metadata !39, metadata !"hash", metadata !6, i32 33554572, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!157 = metadata !{i32 140, i32 87, metadata !39, null}
!158 = metadata !{i32 140, i32 98, metadata !159, null}
!159 = metadata !{i32 786443, metadata !39, i32 140, i32 97, metadata !6, i32 17} ; [ DW_TAG_lexical_block ]
!160 = metadata !{i32 140, i32 130, metadata !159, null}
!161 = metadata !{i32 145, i32 2, metadata !159, null}
!162 = metadata !{i32 150, i32 2, metadata !159, null}
!163 = metadata !{i32 153, i32 2, metadata !159, null}
!164 = metadata !{i32 154, i32 1, metadata !159, null}
!165 = metadata !{i32 59, i32 4, metadata !166, null}
!166 = metadata !{i32 786443, metadata !32, i32 58, i32 1, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!167 = metadata !{i32 60, i32 4, metadata !166, null}
!168 = metadata !{i32 61, i32 4, metadata !166, null}
!169 = metadata !{i32 62, i32 4, metadata !166, null}
!170 = metadata !{i32 63, i32 4, metadata !166, null}
!171 = metadata !{i32 64, i32 4, metadata !166, null}
!172 = metadata !{i32 65, i32 4, metadata !166, null}
!173 = metadata !{i32 66, i32 4, metadata !166, null}
!174 = metadata !{i32 67, i32 4, metadata !166, null}
!175 = metadata !{i32 68, i32 4, metadata !166, null}
!176 = metadata !{i32 69, i32 4, metadata !166, null}
!177 = metadata !{i32 70, i32 1, metadata !166, null}
!178 = metadata !{i32 786689, metadata !38, metadata !"final_hash", metadata !6, i32 33554519, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!179 = metadata !{i32 87, i32 72, metadata !38, null}
!180 = metadata !{i32 88, i32 2, metadata !181, null}
!181 = metadata !{i32 786443, metadata !38, i32 88, i32 1, metadata !6, i32 10} ; [ DW_TAG_lexical_block ]
!182 = metadata !{i32 91, i32 4, metadata !181, null}
!183 = metadata !{i32 786688, metadata !181, metadata !"i", metadata !6, i32 89, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!184 = metadata !{i32 94, i32 4, metadata !181, null}
!185 = metadata !{i32 95, i32 7, metadata !186, null}
!186 = metadata !{i32 786443, metadata !181, i32 94, i32 33, metadata !6, i32 11} ; [ DW_TAG_lexical_block ]
!187 = metadata !{i32 96, i32 7, metadata !186, null}
!188 = metadata !{i32 97, i32 10, metadata !186, null}
!189 = metadata !{i32 100, i32 7, metadata !190, null}
!190 = metadata !{i32 786443, metadata !181, i32 99, i32 9, metadata !6, i32 12} ; [ DW_TAG_lexical_block ]
!191 = metadata !{i32 101, i32 7, metadata !190, null}
!192 = metadata !{i32 102, i32 10, metadata !190, null}
!193 = metadata !{i32 103, i32 7, metadata !190, null}
!194 = metadata !{i32 107, i32 6, metadata !195, null}
!195 = metadata !{i32 786443, metadata !190, i32 107, i32 2, metadata !6, i32 13} ; [ DW_TAG_lexical_block ]
!196 = metadata !{i32 107, i32 33, metadata !197, null}
!197 = metadata !{i32 786443, metadata !195, i32 107, i32 32, metadata !6, i32 14} ; [ DW_TAG_lexical_block ]
!198 = metadata !{i32 108, i32 6, metadata !197, null}
!199 = metadata !{i32 109, i32 5, metadata !197, null}
!200 = metadata !{i32 107, i32 21, metadata !195, null}
!201 = metadata !{i32 786688, metadata !181, metadata !"j", metadata !6, i32 90, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!202 = metadata !{i32 113, i32 4, metadata !181, null}
!203 = metadata !{i32 113, i32 70, metadata !181, null}
!204 = metadata !{i32 113, i32 94, metadata !181, null}
!205 = metadata !{i32 114, i32 4, metadata !181, null}
!206 = metadata !{i32 115, i32 4, metadata !181, null}
!207 = metadata !{i32 116, i32 4, metadata !181, null}
!208 = metadata !{i32 117, i32 4, metadata !181, null}
!209 = metadata !{i32 118, i32 4, metadata !181, null}
!210 = metadata !{i32 119, i32 4, metadata !181, null}
!211 = metadata !{i32 120, i32 4, metadata !181, null}
!212 = metadata !{i32 121, i32 4, metadata !181, null}
!213 = metadata !{i32 122, i32 4, metadata !181, null}
!214 = metadata !{i32 127, i32 9, metadata !215, null}
!215 = metadata !{i32 786443, metadata !181, i32 127, i32 4, metadata !6, i32 15} ; [ DW_TAG_lexical_block ]
!216 = metadata !{i32 127, i32 27, metadata !217, null}
!217 = metadata !{i32 786443, metadata !215, i32 127, i32 26, metadata !6, i32 16} ; [ DW_TAG_lexical_block ]
!218 = metadata !{i32 128, i32 4, metadata !217, null}
!219 = metadata !{i32 129, i32 4, metadata !217, null}
!220 = metadata !{i32 130, i32 4, metadata !217, null}
!221 = metadata !{i32 131, i32 4, metadata !217, null}
!222 = metadata !{i32 132, i32 4, metadata !217, null}
!223 = metadata !{i32 133, i32 4, metadata !217, null}
!224 = metadata !{i32 134, i32 4, metadata !217, null}
!225 = metadata !{i32 135, i32 4, metadata !217, null}
!226 = metadata !{i32 136, i32 4, metadata !217, null}
!227 = metadata !{i32 127, i32 21, metadata !215, null}
!228 = metadata !{i32 137, i32 1, metadata !181, null}
