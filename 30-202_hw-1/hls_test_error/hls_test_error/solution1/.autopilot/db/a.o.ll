; ModuleID = 'C:/Users/windows-10-vm1/Desktop/github/30-202_DIC/30-202_hw-1/hls_test_error/hls_test_error/solution1/.autopilot/db/a.o.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f80:128:128-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S32"
target triple = "i686-pc-mingw32"

%struct.SHA256_CTX = type { [64 x i8], i32, [2 x i32], [8 x i32] }

@k = constant [64 x i32] [i32 1116352408, i32 1899447441, i32 -1245643825, i32 -373957723, i32 961987163, i32 1508970993, i32 -1841331548, i32 -1424204075, i32 -670586216, i32 310598401, i32 607225278, i32 1426881987, i32 1925078388, i32 -2132889090, i32 -1680079193, i32 -1046744716, i32 -459576895, i32 -272742522, i32 264347078, i32 604807628, i32 770255983, i32 1249150122, i32 1555081692, i32 1996064986, i32 -1740746414, i32 -1473132947, i32 -1341970488, i32 -1084653625, i32 -958395405, i32 -710438585, i32 113926993, i32 338241895, i32 666307205, i32 773529912, i32 1294757372, i32 1396182291, i32 1695183700, i32 1986661051, i32 -2117940946, i32 -1838011259, i32 -1564481375, i32 -1474664885, i32 -1035236496, i32 -949202525, i32 -778901479, i32 -694614492, i32 -200395387, i32 275423344, i32 430227734, i32 506948616, i32 659060556, i32 883997877, i32 958139571, i32 1322822218, i32 1537002063, i32 1747873779, i32 1955562222, i32 2024104815, i32 -2067236844, i32 -1933114872, i32 -1866530822, i32 -1538233109, i32 -1090935817, i32 -965641998], align 4 ; [#uses=1 type=[64 x i32]*]
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str1 = private unnamed_addr constant [20 x i8] c"sha256_final_memset\00", align 1 ; [#uses=1 type=[20 x i8]*]
@.str2 = private unnamed_addr constant [24 x i8] c"sha256_final_final_loop\00", align 1 ; [#uses=1 type=[24 x i8]*]
@ctx = internal global %struct.SHA256_CTX zeroinitializer, align 4 ; [#uses=2 type=%struct.SHA256_CTX*]
@data = common global [64 x i32] zeroinitializer, align 4 ; [#uses=0 type=[64 x i32]*]
@hash = common global [64 x i32] zeroinitializer, align 4 ; [#uses=0 type=[64 x i32]*]

; [#uses=3]
define void @sha256_transform(%struct.SHA256_CTX* %ctx_transform, i8* %data_transform) nounwind {
  %1 = alloca %struct.SHA256_CTX*, align 4        ; [#uses=17 type=%struct.SHA256_CTX**]
  %2 = alloca i8*, align 4                        ; [#uses=6 type=i8**]
  %a = alloca i32, align 4                        ; [#uses=12 type=i32*]
  %b = alloca i32, align 4                        ; [#uses=6 type=i32*]
  %c = alloca i32, align 4                        ; [#uses=6 type=i32*]
  %d = alloca i32, align 4                        ; [#uses=4 type=i32*]
  %e = alloca i32, align 4                        ; [#uses=12 type=i32*]
  %f = alloca i32, align 4                        ; [#uses=5 type=i32*]
  %g = alloca i32, align 4                        ; [#uses=5 type=i32*]
  %h = alloca i32, align 4                        ; [#uses=4 type=i32*]
  %i = alloca i32, align 4                        ; [#uses=27 type=i32*]
  %j = alloca i32, align 4                        ; [#uses=7 type=i32*]
  %t1 = alloca i32, align 4                       ; [#uses=3 type=i32*]
  %t2 = alloca i32, align 4                       ; [#uses=2 type=i32*]
  %m = alloca [64 x i32], align 4                 ; [#uses=15 type=[64 x i32]*]
  store %struct.SHA256_CTX* %ctx_transform, %struct.SHA256_CTX** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.SHA256_CTX** %1}, metadata !76), !dbg !77 ; [debug line = 16:35] [debug variable = ctx_transform]
  store i8* %data_transform, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !78), !dbg !79 ; [debug line = 16:80] [debug variable = data_transform]
  %3 = load i8** %2, align 4, !dbg !80            ; [#uses=1 type=i8*] [debug line = 17:2]
  call void bitcast (void (...)* @_ssdm_SpecArrayDimSize to void (i8*, i32)*)(i8* %3, i32 64) nounwind, !dbg !80 ; [debug line = 17:2]
  call void @llvm.dbg.declare(metadata !{i32* %a}, metadata !82), !dbg !83 ; [debug line = 18:35] [debug variable = a]
  call void @llvm.dbg.declare(metadata !{i32* %b}, metadata !84), !dbg !85 ; [debug line = 18:37] [debug variable = b]
  call void @llvm.dbg.declare(metadata !{i32* %c}, metadata !86), !dbg !87 ; [debug line = 18:39] [debug variable = c]
  call void @llvm.dbg.declare(metadata !{i32* %d}, metadata !88), !dbg !89 ; [debug line = 18:41] [debug variable = d]
  call void @llvm.dbg.declare(metadata !{i32* %e}, metadata !90), !dbg !91 ; [debug line = 18:43] [debug variable = e]
  call void @llvm.dbg.declare(metadata !{i32* %f}, metadata !92), !dbg !93 ; [debug line = 18:45] [debug variable = f]
  call void @llvm.dbg.declare(metadata !{i32* %g}, metadata !94), !dbg !95 ; [debug line = 18:47] [debug variable = g]
  call void @llvm.dbg.declare(metadata !{i32* %h}, metadata !96), !dbg !97 ; [debug line = 18:49] [debug variable = h]
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !98), !dbg !99 ; [debug line = 18:51] [debug variable = i]
  call void @llvm.dbg.declare(metadata !{i32* %j}, metadata !100), !dbg !101 ; [debug line = 18:53] [debug variable = j]
  call void @llvm.dbg.declare(metadata !{i32* %t1}, metadata !102), !dbg !103 ; [debug line = 18:55] [debug variable = t1]
  call void @llvm.dbg.declare(metadata !{i32* %t2}, metadata !104), !dbg !105 ; [debug line = 18:58] [debug variable = t2]
  call void @llvm.dbg.declare(metadata !{[64 x i32]* %m}, metadata !106), !dbg !107 ; [debug line = 18:61] [debug variable = m]
  store i32 0, i32* %i, align 4, !dbg !108        ; [debug line = 20:9]
  store i32 0, i32* %j, align 4, !dbg !108        ; [debug line = 20:9]
  br label %4, !dbg !108                          ; [debug line = 20:9]

; <label>:4                                       ; preds = %39, %0
  %5 = load i32* %i, align 4, !dbg !108           ; [#uses=1 type=i32] [debug line = 20:9]
  %6 = icmp ult i32 %5, 16, !dbg !108             ; [#uses=1 type=i1] [debug line = 20:9]
  br i1 %6, label %7, label %44, !dbg !108        ; [debug line = 20:9]

; <label>:7                                       ; preds = %4
  %8 = load i32* %j, align 4, !dbg !110           ; [#uses=1 type=i32] [debug line = 21:7]
  %9 = load i8** %2, align 4, !dbg !110           ; [#uses=1 type=i8*] [debug line = 21:7]
  %10 = getelementptr inbounds i8* %9, i32 %8, !dbg !110 ; [#uses=1 type=i8*] [debug line = 21:7]
  %11 = load i8* %10, align 1, !dbg !110          ; [#uses=1 type=i8] [debug line = 21:7]
  %12 = zext i8 %11 to i32, !dbg !110             ; [#uses=1 type=i32] [debug line = 21:7]
  %13 = shl i32 %12, 24, !dbg !110                ; [#uses=1 type=i32] [debug line = 21:7]
  %14 = load i32* %j, align 4, !dbg !110          ; [#uses=1 type=i32] [debug line = 21:7]
  %15 = add i32 %14, 1, !dbg !110                 ; [#uses=1 type=i32] [debug line = 21:7]
  %16 = load i8** %2, align 4, !dbg !110          ; [#uses=1 type=i8*] [debug line = 21:7]
  %17 = getelementptr inbounds i8* %16, i32 %15, !dbg !110 ; [#uses=1 type=i8*] [debug line = 21:7]
  %18 = load i8* %17, align 1, !dbg !110          ; [#uses=1 type=i8] [debug line = 21:7]
  %19 = zext i8 %18 to i32, !dbg !110             ; [#uses=1 type=i32] [debug line = 21:7]
  %20 = shl i32 %19, 16, !dbg !110                ; [#uses=1 type=i32] [debug line = 21:7]
  %21 = or i32 %13, %20, !dbg !110                ; [#uses=1 type=i32] [debug line = 21:7]
  %22 = load i32* %j, align 4, !dbg !110          ; [#uses=1 type=i32] [debug line = 21:7]
  %23 = add i32 %22, 2, !dbg !110                 ; [#uses=1 type=i32] [debug line = 21:7]
  %24 = load i8** %2, align 4, !dbg !110          ; [#uses=1 type=i8*] [debug line = 21:7]
  %25 = getelementptr inbounds i8* %24, i32 %23, !dbg !110 ; [#uses=1 type=i8*] [debug line = 21:7]
  %26 = load i8* %25, align 1, !dbg !110          ; [#uses=1 type=i8] [debug line = 21:7]
  %27 = zext i8 %26 to i32, !dbg !110             ; [#uses=1 type=i32] [debug line = 21:7]
  %28 = shl i32 %27, 8, !dbg !110                 ; [#uses=1 type=i32] [debug line = 21:7]
  %29 = or i32 %21, %28, !dbg !110                ; [#uses=1 type=i32] [debug line = 21:7]
  %30 = load i32* %j, align 4, !dbg !110          ; [#uses=1 type=i32] [debug line = 21:7]
  %31 = add i32 %30, 3, !dbg !110                 ; [#uses=1 type=i32] [debug line = 21:7]
  %32 = load i8** %2, align 4, !dbg !110          ; [#uses=1 type=i8*] [debug line = 21:7]
  %33 = getelementptr inbounds i8* %32, i32 %31, !dbg !110 ; [#uses=1 type=i8*] [debug line = 21:7]
  %34 = load i8* %33, align 1, !dbg !110          ; [#uses=1 type=i8] [debug line = 21:7]
  %35 = zext i8 %34 to i32, !dbg !110             ; [#uses=1 type=i32] [debug line = 21:7]
  %36 = or i32 %29, %35, !dbg !110                ; [#uses=1 type=i32] [debug line = 21:7]
  %37 = load i32* %i, align 4, !dbg !110          ; [#uses=1 type=i32] [debug line = 21:7]
  %38 = getelementptr inbounds [64 x i32]* %m, i32 0, i32 %37, !dbg !110 ; [#uses=1 type=i32*] [debug line = 21:7]
  store i32 %36, i32* %38, align 4, !dbg !110     ; [debug line = 21:7]
  br label %39, !dbg !110                         ; [debug line = 21:7]

; <label>:39                                      ; preds = %7
  %40 = load i32* %i, align 4, !dbg !111          ; [#uses=1 type=i32] [debug line = 20:26]
  %41 = add i32 %40, 1, !dbg !111                 ; [#uses=1 type=i32] [debug line = 20:26]
  store i32 %41, i32* %i, align 4, !dbg !111      ; [debug line = 20:26]
  %42 = load i32* %j, align 4, !dbg !111          ; [#uses=1 type=i32] [debug line = 20:26]
  %43 = add i32 %42, 4, !dbg !111                 ; [#uses=1 type=i32] [debug line = 20:26]
  store i32 %43, i32* %j, align 4, !dbg !111      ; [debug line = 20:26]
  br label %4, !dbg !111                          ; [debug line = 20:26]

; <label>:44                                      ; preds = %4
  br label %45, !dbg !112                         ; [debug line = 22:4]

; <label>:45                                      ; preds = %120, %44
  %46 = load i32* %i, align 4, !dbg !112          ; [#uses=1 type=i32] [debug line = 22:4]
  %47 = icmp ult i32 %46, 64, !dbg !112           ; [#uses=1 type=i1] [debug line = 22:4]
  br i1 %47, label %48, label %123, !dbg !112     ; [debug line = 22:4]

; <label>:48                                      ; preds = %45
  %49 = load i32* %i, align 4, !dbg !114          ; [#uses=1 type=i32] [debug line = 23:7]
  %50 = sub i32 %49, 2, !dbg !114                 ; [#uses=1 type=i32] [debug line = 23:7]
  %51 = getelementptr inbounds [64 x i32]* %m, i32 0, i32 %50, !dbg !114 ; [#uses=1 type=i32*] [debug line = 23:7]
  %52 = load i32* %51, align 4, !dbg !114         ; [#uses=1 type=i32] [debug line = 23:7]
  %53 = lshr i32 %52, 17, !dbg !114               ; [#uses=1 type=i32] [debug line = 23:7]
  %54 = load i32* %i, align 4, !dbg !114          ; [#uses=1 type=i32] [debug line = 23:7]
  %55 = sub i32 %54, 2, !dbg !114                 ; [#uses=1 type=i32] [debug line = 23:7]
  %56 = getelementptr inbounds [64 x i32]* %m, i32 0, i32 %55, !dbg !114 ; [#uses=1 type=i32*] [debug line = 23:7]
  %57 = load i32* %56, align 4, !dbg !114         ; [#uses=1 type=i32] [debug line = 23:7]
  %58 = shl i32 %57, 15, !dbg !114                ; [#uses=1 type=i32] [debug line = 23:7]
  %59 = or i32 %53, %58, !dbg !114                ; [#uses=1 type=i32] [debug line = 23:7]
  %60 = load i32* %i, align 4, !dbg !114          ; [#uses=1 type=i32] [debug line = 23:7]
  %61 = sub i32 %60, 2, !dbg !114                 ; [#uses=1 type=i32] [debug line = 23:7]
  %62 = getelementptr inbounds [64 x i32]* %m, i32 0, i32 %61, !dbg !114 ; [#uses=1 type=i32*] [debug line = 23:7]
  %63 = load i32* %62, align 4, !dbg !114         ; [#uses=1 type=i32] [debug line = 23:7]
  %64 = lshr i32 %63, 19, !dbg !114               ; [#uses=1 type=i32] [debug line = 23:7]
  %65 = load i32* %i, align 4, !dbg !114          ; [#uses=1 type=i32] [debug line = 23:7]
  %66 = sub i32 %65, 2, !dbg !114                 ; [#uses=1 type=i32] [debug line = 23:7]
  %67 = getelementptr inbounds [64 x i32]* %m, i32 0, i32 %66, !dbg !114 ; [#uses=1 type=i32*] [debug line = 23:7]
  %68 = load i32* %67, align 4, !dbg !114         ; [#uses=1 type=i32] [debug line = 23:7]
  %69 = shl i32 %68, 13, !dbg !114                ; [#uses=1 type=i32] [debug line = 23:7]
  %70 = or i32 %64, %69, !dbg !114                ; [#uses=1 type=i32] [debug line = 23:7]
  %71 = xor i32 %59, %70, !dbg !114               ; [#uses=1 type=i32] [debug line = 23:7]
  %72 = load i32* %i, align 4, !dbg !114          ; [#uses=1 type=i32] [debug line = 23:7]
  %73 = sub i32 %72, 2, !dbg !114                 ; [#uses=1 type=i32] [debug line = 23:7]
  %74 = getelementptr inbounds [64 x i32]* %m, i32 0, i32 %73, !dbg !114 ; [#uses=1 type=i32*] [debug line = 23:7]
  %75 = load i32* %74, align 4, !dbg !114         ; [#uses=1 type=i32] [debug line = 23:7]
  %76 = lshr i32 %75, 10, !dbg !114               ; [#uses=1 type=i32] [debug line = 23:7]
  %77 = xor i32 %71, %76, !dbg !114               ; [#uses=1 type=i32] [debug line = 23:7]
  %78 = load i32* %i, align 4, !dbg !114          ; [#uses=1 type=i32] [debug line = 23:7]
  %79 = sub i32 %78, 7, !dbg !114                 ; [#uses=1 type=i32] [debug line = 23:7]
  %80 = getelementptr inbounds [64 x i32]* %m, i32 0, i32 %79, !dbg !114 ; [#uses=1 type=i32*] [debug line = 23:7]
  %81 = load i32* %80, align 4, !dbg !114         ; [#uses=1 type=i32] [debug line = 23:7]
  %82 = add i32 %77, %81, !dbg !114               ; [#uses=1 type=i32] [debug line = 23:7]
  %83 = load i32* %i, align 4, !dbg !114          ; [#uses=1 type=i32] [debug line = 23:7]
  %84 = sub i32 %83, 15, !dbg !114                ; [#uses=1 type=i32] [debug line = 23:7]
  %85 = getelementptr inbounds [64 x i32]* %m, i32 0, i32 %84, !dbg !114 ; [#uses=1 type=i32*] [debug line = 23:7]
  %86 = load i32* %85, align 4, !dbg !114         ; [#uses=1 type=i32] [debug line = 23:7]
  %87 = lshr i32 %86, 7, !dbg !114                ; [#uses=1 type=i32] [debug line = 23:7]
  %88 = load i32* %i, align 4, !dbg !114          ; [#uses=1 type=i32] [debug line = 23:7]
  %89 = sub i32 %88, 15, !dbg !114                ; [#uses=1 type=i32] [debug line = 23:7]
  %90 = getelementptr inbounds [64 x i32]* %m, i32 0, i32 %89, !dbg !114 ; [#uses=1 type=i32*] [debug line = 23:7]
  %91 = load i32* %90, align 4, !dbg !114         ; [#uses=1 type=i32] [debug line = 23:7]
  %92 = shl i32 %91, 25, !dbg !114                ; [#uses=1 type=i32] [debug line = 23:7]
  %93 = or i32 %87, %92, !dbg !114                ; [#uses=1 type=i32] [debug line = 23:7]
  %94 = load i32* %i, align 4, !dbg !114          ; [#uses=1 type=i32] [debug line = 23:7]
  %95 = sub i32 %94, 15, !dbg !114                ; [#uses=1 type=i32] [debug line = 23:7]
  %96 = getelementptr inbounds [64 x i32]* %m, i32 0, i32 %95, !dbg !114 ; [#uses=1 type=i32*] [debug line = 23:7]
  %97 = load i32* %96, align 4, !dbg !114         ; [#uses=1 type=i32] [debug line = 23:7]
  %98 = lshr i32 %97, 18, !dbg !114               ; [#uses=1 type=i32] [debug line = 23:7]
  %99 = load i32* %i, align 4, !dbg !114          ; [#uses=1 type=i32] [debug line = 23:7]
  %100 = sub i32 %99, 15, !dbg !114               ; [#uses=1 type=i32] [debug line = 23:7]
  %101 = getelementptr inbounds [64 x i32]* %m, i32 0, i32 %100, !dbg !114 ; [#uses=1 type=i32*] [debug line = 23:7]
  %102 = load i32* %101, align 4, !dbg !114       ; [#uses=1 type=i32] [debug line = 23:7]
  %103 = shl i32 %102, 14, !dbg !114              ; [#uses=1 type=i32] [debug line = 23:7]
  %104 = or i32 %98, %103, !dbg !114              ; [#uses=1 type=i32] [debug line = 23:7]
  %105 = xor i32 %93, %104, !dbg !114             ; [#uses=1 type=i32] [debug line = 23:7]
  %106 = load i32* %i, align 4, !dbg !114         ; [#uses=1 type=i32] [debug line = 23:7]
  %107 = sub i32 %106, 15, !dbg !114              ; [#uses=1 type=i32] [debug line = 23:7]
  %108 = getelementptr inbounds [64 x i32]* %m, i32 0, i32 %107, !dbg !114 ; [#uses=1 type=i32*] [debug line = 23:7]
  %109 = load i32* %108, align 4, !dbg !114       ; [#uses=1 type=i32] [debug line = 23:7]
  %110 = lshr i32 %109, 3, !dbg !114              ; [#uses=1 type=i32] [debug line = 23:7]
  %111 = xor i32 %105, %110, !dbg !114            ; [#uses=1 type=i32] [debug line = 23:7]
  %112 = add i32 %82, %111, !dbg !114             ; [#uses=1 type=i32] [debug line = 23:7]
  %113 = load i32* %i, align 4, !dbg !114         ; [#uses=1 type=i32] [debug line = 23:7]
  %114 = sub i32 %113, 16, !dbg !114              ; [#uses=1 type=i32] [debug line = 23:7]
  %115 = getelementptr inbounds [64 x i32]* %m, i32 0, i32 %114, !dbg !114 ; [#uses=1 type=i32*] [debug line = 23:7]
  %116 = load i32* %115, align 4, !dbg !114       ; [#uses=1 type=i32] [debug line = 23:7]
  %117 = add i32 %112, %116, !dbg !114            ; [#uses=1 type=i32] [debug line = 23:7]
  %118 = load i32* %i, align 4, !dbg !114         ; [#uses=1 type=i32] [debug line = 23:7]
  %119 = getelementptr inbounds [64 x i32]* %m, i32 0, i32 %118, !dbg !114 ; [#uses=1 type=i32*] [debug line = 23:7]
  store i32 %117, i32* %119, align 4, !dbg !114   ; [debug line = 23:7]
  br label %120, !dbg !114                        ; [debug line = 23:7]

; <label>:120                                     ; preds = %48
  %121 = load i32* %i, align 4, !dbg !115         ; [#uses=1 type=i32] [debug line = 22:20]
  %122 = add i32 %121, 1, !dbg !115               ; [#uses=1 type=i32] [debug line = 22:20]
  store i32 %122, i32* %i, align 4, !dbg !115     ; [debug line = 22:20]
  br label %45, !dbg !115                         ; [debug line = 22:20]

; <label>:123                                     ; preds = %45
  %124 = load %struct.SHA256_CTX** %1, align 4, !dbg !116 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 25:4]
  %125 = getelementptr inbounds %struct.SHA256_CTX* %124, i32 0, i32 3, !dbg !116 ; [#uses=1 type=[8 x i32]*] [debug line = 25:4]
  %126 = getelementptr inbounds [8 x i32]* %125, i32 0, i32 0, !dbg !116 ; [#uses=1 type=i32*] [debug line = 25:4]
  %127 = load i32* %126, align 4, !dbg !116       ; [#uses=1 type=i32] [debug line = 25:4]
  store i32 %127, i32* %a, align 4, !dbg !116     ; [debug line = 25:4]
  %128 = load %struct.SHA256_CTX** %1, align 4, !dbg !117 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 26:4]
  %129 = getelementptr inbounds %struct.SHA256_CTX* %128, i32 0, i32 3, !dbg !117 ; [#uses=1 type=[8 x i32]*] [debug line = 26:4]
  %130 = getelementptr inbounds [8 x i32]* %129, i32 0, i32 1, !dbg !117 ; [#uses=1 type=i32*] [debug line = 26:4]
  %131 = load i32* %130, align 4, !dbg !117       ; [#uses=1 type=i32] [debug line = 26:4]
  store i32 %131, i32* %b, align 4, !dbg !117     ; [debug line = 26:4]
  %132 = load %struct.SHA256_CTX** %1, align 4, !dbg !118 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 27:4]
  %133 = getelementptr inbounds %struct.SHA256_CTX* %132, i32 0, i32 3, !dbg !118 ; [#uses=1 type=[8 x i32]*] [debug line = 27:4]
  %134 = getelementptr inbounds [8 x i32]* %133, i32 0, i32 2, !dbg !118 ; [#uses=1 type=i32*] [debug line = 27:4]
  %135 = load i32* %134, align 4, !dbg !118       ; [#uses=1 type=i32] [debug line = 27:4]
  store i32 %135, i32* %c, align 4, !dbg !118     ; [debug line = 27:4]
  %136 = load %struct.SHA256_CTX** %1, align 4, !dbg !119 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 28:4]
  %137 = getelementptr inbounds %struct.SHA256_CTX* %136, i32 0, i32 3, !dbg !119 ; [#uses=1 type=[8 x i32]*] [debug line = 28:4]
  %138 = getelementptr inbounds [8 x i32]* %137, i32 0, i32 3, !dbg !119 ; [#uses=1 type=i32*] [debug line = 28:4]
  %139 = load i32* %138, align 4, !dbg !119       ; [#uses=1 type=i32] [debug line = 28:4]
  store i32 %139, i32* %d, align 4, !dbg !119     ; [debug line = 28:4]
  %140 = load %struct.SHA256_CTX** %1, align 4, !dbg !120 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 29:4]
  %141 = getelementptr inbounds %struct.SHA256_CTX* %140, i32 0, i32 3, !dbg !120 ; [#uses=1 type=[8 x i32]*] [debug line = 29:4]
  %142 = getelementptr inbounds [8 x i32]* %141, i32 0, i32 4, !dbg !120 ; [#uses=1 type=i32*] [debug line = 29:4]
  %143 = load i32* %142, align 4, !dbg !120       ; [#uses=1 type=i32] [debug line = 29:4]
  store i32 %143, i32* %e, align 4, !dbg !120     ; [debug line = 29:4]
  %144 = load %struct.SHA256_CTX** %1, align 4, !dbg !121 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 30:4]
  %145 = getelementptr inbounds %struct.SHA256_CTX* %144, i32 0, i32 3, !dbg !121 ; [#uses=1 type=[8 x i32]*] [debug line = 30:4]
  %146 = getelementptr inbounds [8 x i32]* %145, i32 0, i32 5, !dbg !121 ; [#uses=1 type=i32*] [debug line = 30:4]
  %147 = load i32* %146, align 4, !dbg !121       ; [#uses=1 type=i32] [debug line = 30:4]
  store i32 %147, i32* %f, align 4, !dbg !121     ; [debug line = 30:4]
  %148 = load %struct.SHA256_CTX** %1, align 4, !dbg !122 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 31:4]
  %149 = getelementptr inbounds %struct.SHA256_CTX* %148, i32 0, i32 3, !dbg !122 ; [#uses=1 type=[8 x i32]*] [debug line = 31:4]
  %150 = getelementptr inbounds [8 x i32]* %149, i32 0, i32 6, !dbg !122 ; [#uses=1 type=i32*] [debug line = 31:4]
  %151 = load i32* %150, align 4, !dbg !122       ; [#uses=1 type=i32] [debug line = 31:4]
  store i32 %151, i32* %g, align 4, !dbg !122     ; [debug line = 31:4]
  %152 = load %struct.SHA256_CTX** %1, align 4, !dbg !123 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 32:4]
  %153 = getelementptr inbounds %struct.SHA256_CTX* %152, i32 0, i32 3, !dbg !123 ; [#uses=1 type=[8 x i32]*] [debug line = 32:4]
  %154 = getelementptr inbounds [8 x i32]* %153, i32 0, i32 7, !dbg !123 ; [#uses=1 type=i32*] [debug line = 32:4]
  %155 = load i32* %154, align 4, !dbg !123       ; [#uses=1 type=i32] [debug line = 32:4]
  store i32 %155, i32* %h, align 4, !dbg !123     ; [debug line = 32:4]
  store i32 0, i32* %i, align 4, !dbg !124        ; [debug line = 34:9]
  br label %156, !dbg !124                        ; [debug line = 34:9]

; <label>:156                                     ; preds = %237, %123
  %157 = load i32* %i, align 4, !dbg !124         ; [#uses=1 type=i32] [debug line = 34:9]
  %158 = icmp ult i32 %157, 64, !dbg !124         ; [#uses=1 type=i1] [debug line = 34:9]
  br i1 %158, label %159, label %240, !dbg !124   ; [debug line = 34:9]

; <label>:159                                     ; preds = %156
  %160 = load i32* %h, align 4, !dbg !126         ; [#uses=1 type=i32] [debug line = 35:7]
  %161 = load i32* %e, align 4, !dbg !126         ; [#uses=1 type=i32] [debug line = 35:7]
  %162 = lshr i32 %161, 6, !dbg !126              ; [#uses=1 type=i32] [debug line = 35:7]
  %163 = load i32* %e, align 4, !dbg !126         ; [#uses=1 type=i32] [debug line = 35:7]
  %164 = shl i32 %163, 26, !dbg !126              ; [#uses=1 type=i32] [debug line = 35:7]
  %165 = or i32 %162, %164, !dbg !126             ; [#uses=1 type=i32] [debug line = 35:7]
  %166 = load i32* %e, align 4, !dbg !126         ; [#uses=1 type=i32] [debug line = 35:7]
  %167 = lshr i32 %166, 11, !dbg !126             ; [#uses=1 type=i32] [debug line = 35:7]
  %168 = load i32* %e, align 4, !dbg !126         ; [#uses=1 type=i32] [debug line = 35:7]
  %169 = shl i32 %168, 21, !dbg !126              ; [#uses=1 type=i32] [debug line = 35:7]
  %170 = or i32 %167, %169, !dbg !126             ; [#uses=1 type=i32] [debug line = 35:7]
  %171 = xor i32 %165, %170, !dbg !126            ; [#uses=1 type=i32] [debug line = 35:7]
  %172 = load i32* %e, align 4, !dbg !126         ; [#uses=1 type=i32] [debug line = 35:7]
  %173 = lshr i32 %172, 25, !dbg !126             ; [#uses=1 type=i32] [debug line = 35:7]
  %174 = load i32* %e, align 4, !dbg !126         ; [#uses=1 type=i32] [debug line = 35:7]
  %175 = shl i32 %174, 7, !dbg !126               ; [#uses=1 type=i32] [debug line = 35:7]
  %176 = or i32 %173, %175, !dbg !126             ; [#uses=1 type=i32] [debug line = 35:7]
  %177 = xor i32 %171, %176, !dbg !126            ; [#uses=1 type=i32] [debug line = 35:7]
  %178 = add i32 %160, %177, !dbg !126            ; [#uses=1 type=i32] [debug line = 35:7]
  %179 = load i32* %e, align 4, !dbg !126         ; [#uses=1 type=i32] [debug line = 35:7]
  %180 = load i32* %f, align 4, !dbg !126         ; [#uses=1 type=i32] [debug line = 35:7]
  %181 = and i32 %179, %180, !dbg !126            ; [#uses=1 type=i32] [debug line = 35:7]
  %182 = load i32* %e, align 4, !dbg !126         ; [#uses=1 type=i32] [debug line = 35:7]
  %183 = xor i32 %182, -1, !dbg !126              ; [#uses=1 type=i32] [debug line = 35:7]
  %184 = load i32* %g, align 4, !dbg !126         ; [#uses=1 type=i32] [debug line = 35:7]
  %185 = and i32 %183, %184, !dbg !126            ; [#uses=1 type=i32] [debug line = 35:7]
  %186 = xor i32 %181, %185, !dbg !126            ; [#uses=1 type=i32] [debug line = 35:7]
  %187 = add i32 %178, %186, !dbg !126            ; [#uses=1 type=i32] [debug line = 35:7]
  %188 = load i32* %i, align 4, !dbg !126         ; [#uses=1 type=i32] [debug line = 35:7]
  %189 = getelementptr inbounds [64 x i32]* @k, i32 0, i32 %188, !dbg !126 ; [#uses=1 type=i32*] [debug line = 35:7]
  %190 = load i32* %189, align 4, !dbg !126       ; [#uses=1 type=i32] [debug line = 35:7]
  %191 = add i32 %187, %190, !dbg !126            ; [#uses=1 type=i32] [debug line = 35:7]
  %192 = load i32* %i, align 4, !dbg !126         ; [#uses=1 type=i32] [debug line = 35:7]
  %193 = getelementptr inbounds [64 x i32]* %m, i32 0, i32 %192, !dbg !126 ; [#uses=1 type=i32*] [debug line = 35:7]
  %194 = load i32* %193, align 4, !dbg !126       ; [#uses=1 type=i32] [debug line = 35:7]
  %195 = add i32 %191, %194, !dbg !126            ; [#uses=1 type=i32] [debug line = 35:7]
  store i32 %195, i32* %t1, align 4, !dbg !126    ; [debug line = 35:7]
  %196 = load i32* %a, align 4, !dbg !128         ; [#uses=1 type=i32] [debug line = 36:7]
  %197 = lshr i32 %196, 2, !dbg !128              ; [#uses=1 type=i32] [debug line = 36:7]
  %198 = load i32* %a, align 4, !dbg !128         ; [#uses=1 type=i32] [debug line = 36:7]
  %199 = shl i32 %198, 30, !dbg !128              ; [#uses=1 type=i32] [debug line = 36:7]
  %200 = or i32 %197, %199, !dbg !128             ; [#uses=1 type=i32] [debug line = 36:7]
  %201 = load i32* %a, align 4, !dbg !128         ; [#uses=1 type=i32] [debug line = 36:7]
  %202 = lshr i32 %201, 13, !dbg !128             ; [#uses=1 type=i32] [debug line = 36:7]
  %203 = load i32* %a, align 4, !dbg !128         ; [#uses=1 type=i32] [debug line = 36:7]
  %204 = shl i32 %203, 19, !dbg !128              ; [#uses=1 type=i32] [debug line = 36:7]
  %205 = or i32 %202, %204, !dbg !128             ; [#uses=1 type=i32] [debug line = 36:7]
  %206 = xor i32 %200, %205, !dbg !128            ; [#uses=1 type=i32] [debug line = 36:7]
  %207 = load i32* %a, align 4, !dbg !128         ; [#uses=1 type=i32] [debug line = 36:7]
  %208 = lshr i32 %207, 22, !dbg !128             ; [#uses=1 type=i32] [debug line = 36:7]
  %209 = load i32* %a, align 4, !dbg !128         ; [#uses=1 type=i32] [debug line = 36:7]
  %210 = shl i32 %209, 10, !dbg !128              ; [#uses=1 type=i32] [debug line = 36:7]
  %211 = or i32 %208, %210, !dbg !128             ; [#uses=1 type=i32] [debug line = 36:7]
  %212 = xor i32 %206, %211, !dbg !128            ; [#uses=1 type=i32] [debug line = 36:7]
  %213 = load i32* %a, align 4, !dbg !128         ; [#uses=1 type=i32] [debug line = 36:7]
  %214 = load i32* %b, align 4, !dbg !128         ; [#uses=1 type=i32] [debug line = 36:7]
  %215 = and i32 %213, %214, !dbg !128            ; [#uses=1 type=i32] [debug line = 36:7]
  %216 = load i32* %a, align 4, !dbg !128         ; [#uses=1 type=i32] [debug line = 36:7]
  %217 = load i32* %c, align 4, !dbg !128         ; [#uses=1 type=i32] [debug line = 36:7]
  %218 = and i32 %216, %217, !dbg !128            ; [#uses=1 type=i32] [debug line = 36:7]
  %219 = xor i32 %215, %218, !dbg !128            ; [#uses=1 type=i32] [debug line = 36:7]
  %220 = load i32* %b, align 4, !dbg !128         ; [#uses=1 type=i32] [debug line = 36:7]
  %221 = load i32* %c, align 4, !dbg !128         ; [#uses=1 type=i32] [debug line = 36:7]
  %222 = and i32 %220, %221, !dbg !128            ; [#uses=1 type=i32] [debug line = 36:7]
  %223 = xor i32 %219, %222, !dbg !128            ; [#uses=1 type=i32] [debug line = 36:7]
  %224 = add i32 %212, %223, !dbg !128            ; [#uses=1 type=i32] [debug line = 36:7]
  store i32 %224, i32* %t2, align 4, !dbg !128    ; [debug line = 36:7]
  %225 = load i32* %g, align 4, !dbg !129         ; [#uses=1 type=i32] [debug line = 37:7]
  store i32 %225, i32* %h, align 4, !dbg !129     ; [debug line = 37:7]
  %226 = load i32* %f, align 4, !dbg !130         ; [#uses=1 type=i32] [debug line = 38:7]
  store i32 %226, i32* %g, align 4, !dbg !130     ; [debug line = 38:7]
  %227 = load i32* %e, align 4, !dbg !131         ; [#uses=1 type=i32] [debug line = 39:7]
  store i32 %227, i32* %f, align 4, !dbg !131     ; [debug line = 39:7]
  %228 = load i32* %d, align 4, !dbg !132         ; [#uses=1 type=i32] [debug line = 40:7]
  %229 = load i32* %t1, align 4, !dbg !132        ; [#uses=1 type=i32] [debug line = 40:7]
  %230 = add i32 %228, %229, !dbg !132            ; [#uses=1 type=i32] [debug line = 40:7]
  store i32 %230, i32* %e, align 4, !dbg !132     ; [debug line = 40:7]
  %231 = load i32* %c, align 4, !dbg !133         ; [#uses=1 type=i32] [debug line = 41:7]
  store i32 %231, i32* %d, align 4, !dbg !133     ; [debug line = 41:7]
  %232 = load i32* %b, align 4, !dbg !134         ; [#uses=1 type=i32] [debug line = 42:7]
  store i32 %232, i32* %c, align 4, !dbg !134     ; [debug line = 42:7]
  %233 = load i32* %a, align 4, !dbg !135         ; [#uses=1 type=i32] [debug line = 43:7]
  store i32 %233, i32* %b, align 4, !dbg !135     ; [debug line = 43:7]
  %234 = load i32* %t1, align 4, !dbg !136        ; [#uses=1 type=i32] [debug line = 44:7]
  %235 = load i32* %t2, align 4, !dbg !136        ; [#uses=1 type=i32] [debug line = 44:7]
  %236 = add i32 %234, %235, !dbg !136            ; [#uses=1 type=i32] [debug line = 44:7]
  store i32 %236, i32* %a, align 4, !dbg !136     ; [debug line = 44:7]
  br label %237, !dbg !137                        ; [debug line = 45:4]

; <label>:237                                     ; preds = %159
  %238 = load i32* %i, align 4, !dbg !138         ; [#uses=1 type=i32] [debug line = 34:24]
  %239 = add i32 %238, 1, !dbg !138               ; [#uses=1 type=i32] [debug line = 34:24]
  store i32 %239, i32* %i, align 4, !dbg !138     ; [debug line = 34:24]
  br label %156, !dbg !138                        ; [debug line = 34:24]

; <label>:240                                     ; preds = %156
  %241 = load i32* %a, align 4, !dbg !139         ; [#uses=1 type=i32] [debug line = 47:4]
  %242 = load %struct.SHA256_CTX** %1, align 4, !dbg !139 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 47:4]
  %243 = getelementptr inbounds %struct.SHA256_CTX* %242, i32 0, i32 3, !dbg !139 ; [#uses=1 type=[8 x i32]*] [debug line = 47:4]
  %244 = getelementptr inbounds [8 x i32]* %243, i32 0, i32 0, !dbg !139 ; [#uses=2 type=i32*] [debug line = 47:4]
  %245 = load i32* %244, align 4, !dbg !139       ; [#uses=1 type=i32] [debug line = 47:4]
  %246 = add i32 %245, %241, !dbg !139            ; [#uses=1 type=i32] [debug line = 47:4]
  store i32 %246, i32* %244, align 4, !dbg !139   ; [debug line = 47:4]
  %247 = load i32* %b, align 4, !dbg !140         ; [#uses=1 type=i32] [debug line = 48:4]
  %248 = load %struct.SHA256_CTX** %1, align 4, !dbg !140 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 48:4]
  %249 = getelementptr inbounds %struct.SHA256_CTX* %248, i32 0, i32 3, !dbg !140 ; [#uses=1 type=[8 x i32]*] [debug line = 48:4]
  %250 = getelementptr inbounds [8 x i32]* %249, i32 0, i32 1, !dbg !140 ; [#uses=2 type=i32*] [debug line = 48:4]
  %251 = load i32* %250, align 4, !dbg !140       ; [#uses=1 type=i32] [debug line = 48:4]
  %252 = add i32 %251, %247, !dbg !140            ; [#uses=1 type=i32] [debug line = 48:4]
  store i32 %252, i32* %250, align 4, !dbg !140   ; [debug line = 48:4]
  %253 = load i32* %c, align 4, !dbg !141         ; [#uses=1 type=i32] [debug line = 49:4]
  %254 = load %struct.SHA256_CTX** %1, align 4, !dbg !141 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 49:4]
  %255 = getelementptr inbounds %struct.SHA256_CTX* %254, i32 0, i32 3, !dbg !141 ; [#uses=1 type=[8 x i32]*] [debug line = 49:4]
  %256 = getelementptr inbounds [8 x i32]* %255, i32 0, i32 2, !dbg !141 ; [#uses=2 type=i32*] [debug line = 49:4]
  %257 = load i32* %256, align 4, !dbg !141       ; [#uses=1 type=i32] [debug line = 49:4]
  %258 = add i32 %257, %253, !dbg !141            ; [#uses=1 type=i32] [debug line = 49:4]
  store i32 %258, i32* %256, align 4, !dbg !141   ; [debug line = 49:4]
  %259 = load i32* %d, align 4, !dbg !142         ; [#uses=1 type=i32] [debug line = 50:4]
  %260 = load %struct.SHA256_CTX** %1, align 4, !dbg !142 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 50:4]
  %261 = getelementptr inbounds %struct.SHA256_CTX* %260, i32 0, i32 3, !dbg !142 ; [#uses=1 type=[8 x i32]*] [debug line = 50:4]
  %262 = getelementptr inbounds [8 x i32]* %261, i32 0, i32 3, !dbg !142 ; [#uses=2 type=i32*] [debug line = 50:4]
  %263 = load i32* %262, align 4, !dbg !142       ; [#uses=1 type=i32] [debug line = 50:4]
  %264 = add i32 %263, %259, !dbg !142            ; [#uses=1 type=i32] [debug line = 50:4]
  store i32 %264, i32* %262, align 4, !dbg !142   ; [debug line = 50:4]
  %265 = load i32* %e, align 4, !dbg !143         ; [#uses=1 type=i32] [debug line = 51:4]
  %266 = load %struct.SHA256_CTX** %1, align 4, !dbg !143 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 51:4]
  %267 = getelementptr inbounds %struct.SHA256_CTX* %266, i32 0, i32 3, !dbg !143 ; [#uses=1 type=[8 x i32]*] [debug line = 51:4]
  %268 = getelementptr inbounds [8 x i32]* %267, i32 0, i32 4, !dbg !143 ; [#uses=2 type=i32*] [debug line = 51:4]
  %269 = load i32* %268, align 4, !dbg !143       ; [#uses=1 type=i32] [debug line = 51:4]
  %270 = add i32 %269, %265, !dbg !143            ; [#uses=1 type=i32] [debug line = 51:4]
  store i32 %270, i32* %268, align 4, !dbg !143   ; [debug line = 51:4]
  %271 = load i32* %f, align 4, !dbg !144         ; [#uses=1 type=i32] [debug line = 52:4]
  %272 = load %struct.SHA256_CTX** %1, align 4, !dbg !144 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 52:4]
  %273 = getelementptr inbounds %struct.SHA256_CTX* %272, i32 0, i32 3, !dbg !144 ; [#uses=1 type=[8 x i32]*] [debug line = 52:4]
  %274 = getelementptr inbounds [8 x i32]* %273, i32 0, i32 5, !dbg !144 ; [#uses=2 type=i32*] [debug line = 52:4]
  %275 = load i32* %274, align 4, !dbg !144       ; [#uses=1 type=i32] [debug line = 52:4]
  %276 = add i32 %275, %271, !dbg !144            ; [#uses=1 type=i32] [debug line = 52:4]
  store i32 %276, i32* %274, align 4, !dbg !144   ; [debug line = 52:4]
  %277 = load i32* %g, align 4, !dbg !145         ; [#uses=1 type=i32] [debug line = 53:4]
  %278 = load %struct.SHA256_CTX** %1, align 4, !dbg !145 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 53:4]
  %279 = getelementptr inbounds %struct.SHA256_CTX* %278, i32 0, i32 3, !dbg !145 ; [#uses=1 type=[8 x i32]*] [debug line = 53:4]
  %280 = getelementptr inbounds [8 x i32]* %279, i32 0, i32 6, !dbg !145 ; [#uses=2 type=i32*] [debug line = 53:4]
  %281 = load i32* %280, align 4, !dbg !145       ; [#uses=1 type=i32] [debug line = 53:4]
  %282 = add i32 %281, %277, !dbg !145            ; [#uses=1 type=i32] [debug line = 53:4]
  store i32 %282, i32* %280, align 4, !dbg !145   ; [debug line = 53:4]
  %283 = load i32* %h, align 4, !dbg !146         ; [#uses=1 type=i32] [debug line = 54:4]
  %284 = load %struct.SHA256_CTX** %1, align 4, !dbg !146 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 54:4]
  %285 = getelementptr inbounds %struct.SHA256_CTX* %284, i32 0, i32 3, !dbg !146 ; [#uses=1 type=[8 x i32]*] [debug line = 54:4]
  %286 = getelementptr inbounds [8 x i32]* %285, i32 0, i32 7, !dbg !146 ; [#uses=2 type=i32*] [debug line = 54:4]
  %287 = load i32* %286, align 4, !dbg !146       ; [#uses=1 type=i32] [debug line = 54:4]
  %288 = add i32 %287, %283, !dbg !146            ; [#uses=1 type=i32] [debug line = 54:4]
  store i32 %288, i32* %286, align 4, !dbg !146   ; [debug line = 54:4]
  ret void, !dbg !147                             ; [debug line = 55:1]
}

; [#uses=30]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

; [#uses=1]
define void @sha256_init(%struct.SHA256_CTX* %ctx) nounwind {
  %1 = alloca %struct.SHA256_CTX*, align 4        ; [#uses=12 type=%struct.SHA256_CTX**]
  store %struct.SHA256_CTX* %ctx, %struct.SHA256_CTX** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.SHA256_CTX** %1}, metadata !148), !dbg !149 ; [debug line = 57:30] [debug variable = ctx]
  %2 = load %struct.SHA256_CTX** %1, align 4, !dbg !150 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 59:4]
  %3 = getelementptr inbounds %struct.SHA256_CTX* %2, i32 0, i32 1, !dbg !150 ; [#uses=1 type=i32*] [debug line = 59:4]
  store i32 0, i32* %3, align 4, !dbg !150        ; [debug line = 59:4]
  %4 = load %struct.SHA256_CTX** %1, align 4, !dbg !152 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 60:4]
  %5 = getelementptr inbounds %struct.SHA256_CTX* %4, i32 0, i32 2, !dbg !152 ; [#uses=1 type=[2 x i32]*] [debug line = 60:4]
  %6 = getelementptr inbounds [2 x i32]* %5, i32 0, i32 0, !dbg !152 ; [#uses=1 type=i32*] [debug line = 60:4]
  store i32 0, i32* %6, align 4, !dbg !152        ; [debug line = 60:4]
  %7 = load %struct.SHA256_CTX** %1, align 4, !dbg !153 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 61:4]
  %8 = getelementptr inbounds %struct.SHA256_CTX* %7, i32 0, i32 2, !dbg !153 ; [#uses=1 type=[2 x i32]*] [debug line = 61:4]
  %9 = getelementptr inbounds [2 x i32]* %8, i32 0, i32 1, !dbg !153 ; [#uses=1 type=i32*] [debug line = 61:4]
  store i32 0, i32* %9, align 4, !dbg !153        ; [debug line = 61:4]
  %10 = load %struct.SHA256_CTX** %1, align 4, !dbg !154 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 62:4]
  %11 = getelementptr inbounds %struct.SHA256_CTX* %10, i32 0, i32 3, !dbg !154 ; [#uses=1 type=[8 x i32]*] [debug line = 62:4]
  %12 = getelementptr inbounds [8 x i32]* %11, i32 0, i32 0, !dbg !154 ; [#uses=1 type=i32*] [debug line = 62:4]
  store i32 1779033703, i32* %12, align 4, !dbg !154 ; [debug line = 62:4]
  %13 = load %struct.SHA256_CTX** %1, align 4, !dbg !155 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 63:4]
  %14 = getelementptr inbounds %struct.SHA256_CTX* %13, i32 0, i32 3, !dbg !155 ; [#uses=1 type=[8 x i32]*] [debug line = 63:4]
  %15 = getelementptr inbounds [8 x i32]* %14, i32 0, i32 1, !dbg !155 ; [#uses=1 type=i32*] [debug line = 63:4]
  store i32 -1150833019, i32* %15, align 4, !dbg !155 ; [debug line = 63:4]
  %16 = load %struct.SHA256_CTX** %1, align 4, !dbg !156 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 64:4]
  %17 = getelementptr inbounds %struct.SHA256_CTX* %16, i32 0, i32 3, !dbg !156 ; [#uses=1 type=[8 x i32]*] [debug line = 64:4]
  %18 = getelementptr inbounds [8 x i32]* %17, i32 0, i32 2, !dbg !156 ; [#uses=1 type=i32*] [debug line = 64:4]
  store i32 1013904242, i32* %18, align 4, !dbg !156 ; [debug line = 64:4]
  %19 = load %struct.SHA256_CTX** %1, align 4, !dbg !157 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 65:4]
  %20 = getelementptr inbounds %struct.SHA256_CTX* %19, i32 0, i32 3, !dbg !157 ; [#uses=1 type=[8 x i32]*] [debug line = 65:4]
  %21 = getelementptr inbounds [8 x i32]* %20, i32 0, i32 3, !dbg !157 ; [#uses=1 type=i32*] [debug line = 65:4]
  store i32 -1521486534, i32* %21, align 4, !dbg !157 ; [debug line = 65:4]
  %22 = load %struct.SHA256_CTX** %1, align 4, !dbg !158 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 66:4]
  %23 = getelementptr inbounds %struct.SHA256_CTX* %22, i32 0, i32 3, !dbg !158 ; [#uses=1 type=[8 x i32]*] [debug line = 66:4]
  %24 = getelementptr inbounds [8 x i32]* %23, i32 0, i32 4, !dbg !158 ; [#uses=1 type=i32*] [debug line = 66:4]
  store i32 1359893119, i32* %24, align 4, !dbg !158 ; [debug line = 66:4]
  %25 = load %struct.SHA256_CTX** %1, align 4, !dbg !159 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 67:4]
  %26 = getelementptr inbounds %struct.SHA256_CTX* %25, i32 0, i32 3, !dbg !159 ; [#uses=1 type=[8 x i32]*] [debug line = 67:4]
  %27 = getelementptr inbounds [8 x i32]* %26, i32 0, i32 5, !dbg !159 ; [#uses=1 type=i32*] [debug line = 67:4]
  store i32 -1694144372, i32* %27, align 4, !dbg !159 ; [debug line = 67:4]
  %28 = load %struct.SHA256_CTX** %1, align 4, !dbg !160 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 68:4]
  %29 = getelementptr inbounds %struct.SHA256_CTX* %28, i32 0, i32 3, !dbg !160 ; [#uses=1 type=[8 x i32]*] [debug line = 68:4]
  %30 = getelementptr inbounds [8 x i32]* %29, i32 0, i32 6, !dbg !160 ; [#uses=1 type=i32*] [debug line = 68:4]
  store i32 528734635, i32* %30, align 4, !dbg !160 ; [debug line = 68:4]
  %31 = load %struct.SHA256_CTX** %1, align 4, !dbg !161 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 69:4]
  %32 = getelementptr inbounds %struct.SHA256_CTX* %31, i32 0, i32 3, !dbg !161 ; [#uses=1 type=[8 x i32]*] [debug line = 69:4]
  %33 = getelementptr inbounds [8 x i32]* %32, i32 0, i32 7, !dbg !161 ; [#uses=1 type=i32*] [debug line = 69:4]
  store i32 1541459225, i32* %33, align 4, !dbg !161 ; [debug line = 69:4]
  ret void, !dbg !162                             ; [debug line = 70:1]
}

; [#uses=1]
define void @sha256_update(%struct.SHA256_CTX* %ctx_update, i8* %data, i32 %len) nounwind {
  %1 = alloca %struct.SHA256_CTX*, align 4        ; [#uses=11 type=%struct.SHA256_CTX**]
  %2 = alloca i8*, align 4                        ; [#uses=3 type=i8**]
  %3 = alloca i32, align 4                        ; [#uses=2 type=i32*]
  %t = alloca i32, align 4                        ; [#uses=0 type=i32*]
  %i = alloca i32, align 4                        ; [#uses=5 type=i32*]
  store %struct.SHA256_CTX* %ctx_update, %struct.SHA256_CTX** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.SHA256_CTX** %1}, metadata !163), !dbg !164 ; [debug line = 72:32] [debug variable = ctx_update]
  store i8* %data, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !165), !dbg !166 ; [debug line = 72:74] [debug variable = data]
  store i32 %len, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !167), !dbg !168 ; [debug line = 72:115] [debug variable = len]
  %4 = load i8** %2, align 4, !dbg !169           ; [#uses=1 type=i8*] [debug line = 73:2]
  call void bitcast (void (...)* @_ssdm_SpecArrayDimSize to void (i8*, i32)*)(i8* %4, i32 64) nounwind, !dbg !169 ; [debug line = 73:2]
  call void @llvm.dbg.declare(metadata !{i32* %t}, metadata !171), !dbg !172 ; [debug line = 74:35] [debug variable = t]
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !173), !dbg !174 ; [debug line = 74:37] [debug variable = i]
  call void bitcast (void (...)* @_ssdm_Unroll to void (i32, i32, i32, i8*)*)(i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !175 ; [debug line = 75:1]
  store i32 0, i32* %i, align 4, !dbg !176        ; [debug line = 76:7]
  br label %5, !dbg !176                          ; [debug line = 76:7]

; <label>:5                                       ; preds = %53, %0
  %6 = load i32* %i, align 4, !dbg !176           ; [#uses=1 type=i32] [debug line = 76:7]
  %7 = load i32* %3, align 4, !dbg !176           ; [#uses=1 type=i32] [debug line = 76:7]
  %8 = icmp ult i32 %6, %7, !dbg !176             ; [#uses=1 type=i1] [debug line = 76:7]
  br i1 %8, label %9, label %56, !dbg !176        ; [debug line = 76:7]

; <label>:9                                       ; preds = %5
  %10 = load i32* %i, align 4, !dbg !178          ; [#uses=1 type=i32] [debug line = 77:7]
  %11 = load i8** %2, align 4, !dbg !178          ; [#uses=1 type=i8*] [debug line = 77:7]
  %12 = getelementptr inbounds i8* %11, i32 %10, !dbg !178 ; [#uses=1 type=i8*] [debug line = 77:7]
  %13 = load i8* %12, align 1, !dbg !178          ; [#uses=1 type=i8] [debug line = 77:7]
  %14 = load %struct.SHA256_CTX** %1, align 4, !dbg !178 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 77:7]
  %15 = getelementptr inbounds %struct.SHA256_CTX* %14, i32 0, i32 1, !dbg !178 ; [#uses=1 type=i32*] [debug line = 77:7]
  %16 = load i32* %15, align 4, !dbg !178         ; [#uses=1 type=i32] [debug line = 77:7]
  %17 = load %struct.SHA256_CTX** %1, align 4, !dbg !178 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 77:7]
  %18 = getelementptr inbounds %struct.SHA256_CTX* %17, i32 0, i32 0, !dbg !178 ; [#uses=1 type=[64 x i8]*] [debug line = 77:7]
  %19 = getelementptr inbounds [64 x i8]* %18, i32 0, i32 %16, !dbg !178 ; [#uses=1 type=i8*] [debug line = 77:7]
  store i8 %13, i8* %19, align 1, !dbg !178       ; [debug line = 77:7]
  %20 = load %struct.SHA256_CTX** %1, align 4, !dbg !180 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 78:7]
  %21 = getelementptr inbounds %struct.SHA256_CTX* %20, i32 0, i32 1, !dbg !180 ; [#uses=2 type=i32*] [debug line = 78:7]
  %22 = load i32* %21, align 4, !dbg !180         ; [#uses=1 type=i32] [debug line = 78:7]
  %23 = add i32 %22, 1, !dbg !180                 ; [#uses=1 type=i32] [debug line = 78:7]
  store i32 %23, i32* %21, align 4, !dbg !180     ; [debug line = 78:7]
  %24 = load %struct.SHA256_CTX** %1, align 4, !dbg !181 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 79:7]
  %25 = getelementptr inbounds %struct.SHA256_CTX* %24, i32 0, i32 1, !dbg !181 ; [#uses=1 type=i32*] [debug line = 79:7]
  %26 = load i32* %25, align 4, !dbg !181         ; [#uses=1 type=i32] [debug line = 79:7]
  %27 = icmp eq i32 %26, 64, !dbg !181            ; [#uses=1 type=i1] [debug line = 79:7]
  br i1 %27, label %28, label %52, !dbg !181      ; [debug line = 79:7]

; <label>:28                                      ; preds = %9
  %29 = load %struct.SHA256_CTX** %1, align 4, !dbg !182 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 80:10]
  %30 = load %struct.SHA256_CTX** %1, align 4, !dbg !182 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 80:10]
  %31 = getelementptr inbounds %struct.SHA256_CTX* %30, i32 0, i32 0, !dbg !182 ; [#uses=1 type=[64 x i8]*] [debug line = 80:10]
  %32 = getelementptr inbounds [64 x i8]* %31, i32 0, i32 0, !dbg !182 ; [#uses=1 type=i8*] [debug line = 80:10]
  call void @sha256_transform(%struct.SHA256_CTX* %29, i8* %32), !dbg !182 ; [debug line = 80:10]
  %33 = load %struct.SHA256_CTX** %1, align 4, !dbg !184 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 81:10]
  %34 = getelementptr inbounds %struct.SHA256_CTX* %33, i32 0, i32 2, !dbg !184 ; [#uses=1 type=[2 x i32]*] [debug line = 81:10]
  %35 = getelementptr inbounds [2 x i32]* %34, i32 0, i32 0, !dbg !184 ; [#uses=1 type=i32*] [debug line = 81:10]
  %36 = load i32* %35, align 4, !dbg !184         ; [#uses=1 type=i32] [debug line = 81:10]
  %37 = icmp ugt i32 %36, -513, !dbg !184         ; [#uses=1 type=i1] [debug line = 81:10]
  br i1 %37, label %38, label %44, !dbg !184      ; [debug line = 81:10]

; <label>:38                                      ; preds = %28
  %39 = load %struct.SHA256_CTX** %1, align 4, !dbg !185 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 81:58]
  %40 = getelementptr inbounds %struct.SHA256_CTX* %39, i32 0, i32 2, !dbg !185 ; [#uses=1 type=[2 x i32]*] [debug line = 81:58]
  %41 = getelementptr inbounds [2 x i32]* %40, i32 0, i32 1, !dbg !185 ; [#uses=2 type=i32*] [debug line = 81:58]
  %42 = load i32* %41, align 4, !dbg !185         ; [#uses=1 type=i32] [debug line = 81:58]
  %43 = add i32 %42, 1, !dbg !185                 ; [#uses=1 type=i32] [debug line = 81:58]
  store i32 %43, i32* %41, align 4, !dbg !185     ; [debug line = 81:58]
  br label %44, !dbg !185                         ; [debug line = 81:58]

; <label>:44                                      ; preds = %38, %28
  %45 = load %struct.SHA256_CTX** %1, align 4, !dbg !186 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 81:83]
  %46 = getelementptr inbounds %struct.SHA256_CTX* %45, i32 0, i32 2, !dbg !186 ; [#uses=1 type=[2 x i32]*] [debug line = 81:83]
  %47 = getelementptr inbounds [2 x i32]* %46, i32 0, i32 0, !dbg !186 ; [#uses=2 type=i32*] [debug line = 81:83]
  %48 = load i32* %47, align 4, !dbg !186         ; [#uses=1 type=i32] [debug line = 81:83]
  %49 = add i32 %48, 512, !dbg !186               ; [#uses=1 type=i32] [debug line = 81:83]
  store i32 %49, i32* %47, align 4, !dbg !186     ; [debug line = 81:83]
  %50 = load %struct.SHA256_CTX** %1, align 4, !dbg !187 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 82:10]
  %51 = getelementptr inbounds %struct.SHA256_CTX* %50, i32 0, i32 1, !dbg !187 ; [#uses=1 type=i32*] [debug line = 82:10]
  store i32 0, i32* %51, align 4, !dbg !187       ; [debug line = 82:10]
  br label %52, !dbg !188                         ; [debug line = 83:7]

; <label>:52                                      ; preds = %44, %9
  br label %53, !dbg !189                         ; [debug line = 84:4]

; <label>:53                                      ; preds = %52
  %54 = load i32* %i, align 4, !dbg !190          ; [#uses=1 type=i32] [debug line = 76:21]
  %55 = add i32 %54, 1, !dbg !190                 ; [#uses=1 type=i32] [debug line = 76:21]
  store i32 %55, i32* %i, align 4, !dbg !190      ; [debug line = 76:21]
  br label %5, !dbg !190                          ; [debug line = 76:21]

; <label>:56                                      ; preds = %5
  ret void, !dbg !191                             ; [debug line = 85:1]
}

; [#uses=1]
declare void @_ssdm_Unroll(...) nounwind

; [#uses=1]
define void @sha256_final(%struct.SHA256_CTX* %ctx_final, i8* %final_hash) nounwind {
  %1 = alloca %struct.SHA256_CTX*, align 4        ; [#uses=41 type=%struct.SHA256_CTX**]
  %2 = alloca i8*, align 4                        ; [#uses=10 type=i8**]
  %i = alloca i32, align 4                        ; [#uses=31 type=i32*]
  %j = alloca i32, align 4                        ; [#uses=5 type=i32*]
  store %struct.SHA256_CTX* %ctx_final, %struct.SHA256_CTX** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.SHA256_CTX** %1}, metadata !192), !dbg !193 ; [debug line = 87:31] [debug variable = ctx_final]
  store i8* %final_hash, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !194), !dbg !195 ; [debug line = 87:72] [debug variable = final_hash]
  %3 = load i8** %2, align 4, !dbg !196           ; [#uses=1 type=i8*] [debug line = 88:2]
  call void bitcast (void (...)* @_ssdm_SpecArrayDimSize to void (i8*, i32)*)(i8* %3, i32 64) nounwind, !dbg !196 ; [debug line = 88:2]
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !198), !dbg !199 ; [debug line = 89:35] [debug variable = i]
  call void @llvm.dbg.declare(metadata !{i32* %j}, metadata !200), !dbg !201 ; [debug line = 90:35] [debug variable = j]
  %4 = load %struct.SHA256_CTX** %1, align 4, !dbg !202 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 91:4]
  %5 = getelementptr inbounds %struct.SHA256_CTX* %4, i32 0, i32 1, !dbg !202 ; [#uses=1 type=i32*] [debug line = 91:4]
  %6 = load i32* %5, align 4, !dbg !202           ; [#uses=1 type=i32] [debug line = 91:4]
  store i32 %6, i32* %i, align 4, !dbg !202       ; [debug line = 91:4]
  %7 = load %struct.SHA256_CTX** %1, align 4, !dbg !203 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 94:4]
  %8 = getelementptr inbounds %struct.SHA256_CTX* %7, i32 0, i32 1, !dbg !203 ; [#uses=1 type=i32*] [debug line = 94:4]
  %9 = load i32* %8, align 4, !dbg !203           ; [#uses=1 type=i32] [debug line = 94:4]
  %10 = icmp ult i32 %9, 56, !dbg !203            ; [#uses=1 type=i1] [debug line = 94:4]
  br i1 %10, label %11, label %27, !dbg !203      ; [debug line = 94:4]

; <label>:11                                      ; preds = %0
  %12 = load i32* %i, align 4, !dbg !204          ; [#uses=2 type=i32] [debug line = 95:7]
  %13 = add i32 %12, 1, !dbg !204                 ; [#uses=1 type=i32] [debug line = 95:7]
  store i32 %13, i32* %i, align 4, !dbg !204      ; [debug line = 95:7]
  %14 = load %struct.SHA256_CTX** %1, align 4, !dbg !204 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 95:7]
  %15 = getelementptr inbounds %struct.SHA256_CTX* %14, i32 0, i32 0, !dbg !204 ; [#uses=1 type=[64 x i8]*] [debug line = 95:7]
  %16 = getelementptr inbounds [64 x i8]* %15, i32 0, i32 %12, !dbg !204 ; [#uses=1 type=i8*] [debug line = 95:7]
  store i8 -128, i8* %16, align 1, !dbg !204      ; [debug line = 95:7]
  br label %17, !dbg !206                         ; [debug line = 96:7]

; <label>:17                                      ; preds = %20, %11
  %18 = load i32* %i, align 4, !dbg !206          ; [#uses=1 type=i32] [debug line = 96:7]
  %19 = icmp ult i32 %18, 56, !dbg !206           ; [#uses=1 type=i1] [debug line = 96:7]
  br i1 %19, label %20, label %26, !dbg !206      ; [debug line = 96:7]

; <label>:20                                      ; preds = %17
  %21 = load i32* %i, align 4, !dbg !207          ; [#uses=2 type=i32] [debug line = 97:10]
  %22 = add i32 %21, 1, !dbg !207                 ; [#uses=1 type=i32] [debug line = 97:10]
  store i32 %22, i32* %i, align 4, !dbg !207      ; [debug line = 97:10]
  %23 = load %struct.SHA256_CTX** %1, align 4, !dbg !207 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 97:10]
  %24 = getelementptr inbounds %struct.SHA256_CTX* %23, i32 0, i32 0, !dbg !207 ; [#uses=1 type=[64 x i8]*] [debug line = 97:10]
  %25 = getelementptr inbounds [64 x i8]* %24, i32 0, i32 %21, !dbg !207 ; [#uses=1 type=i8*] [debug line = 97:10]
  store i8 0, i8* %25, align 1, !dbg !207         ; [debug line = 97:10]
  br label %17, !dbg !207                         ; [debug line = 97:10]

; <label>:26                                      ; preds = %17
  br label %60, !dbg !208                         ; [debug line = 98:4]

; <label>:27                                      ; preds = %0
  %28 = load i32* %i, align 4, !dbg !209          ; [#uses=2 type=i32] [debug line = 100:7]
  %29 = add i32 %28, 1, !dbg !209                 ; [#uses=1 type=i32] [debug line = 100:7]
  store i32 %29, i32* %i, align 4, !dbg !209      ; [debug line = 100:7]
  %30 = load %struct.SHA256_CTX** %1, align 4, !dbg !209 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 100:7]
  %31 = getelementptr inbounds %struct.SHA256_CTX* %30, i32 0, i32 0, !dbg !209 ; [#uses=1 type=[64 x i8]*] [debug line = 100:7]
  %32 = getelementptr inbounds [64 x i8]* %31, i32 0, i32 %28, !dbg !209 ; [#uses=1 type=i8*] [debug line = 100:7]
  store i8 -128, i8* %32, align 1, !dbg !209      ; [debug line = 100:7]
  br label %33, !dbg !211                         ; [debug line = 101:7]

; <label>:33                                      ; preds = %36, %27
  %34 = load i32* %i, align 4, !dbg !211          ; [#uses=1 type=i32] [debug line = 101:7]
  %35 = icmp ult i32 %34, 64, !dbg !211           ; [#uses=1 type=i1] [debug line = 101:7]
  br i1 %35, label %36, label %42, !dbg !211      ; [debug line = 101:7]

; <label>:36                                      ; preds = %33
  %37 = load i32* %i, align 4, !dbg !212          ; [#uses=2 type=i32] [debug line = 102:10]
  %38 = add i32 %37, 1, !dbg !212                 ; [#uses=1 type=i32] [debug line = 102:10]
  store i32 %38, i32* %i, align 4, !dbg !212      ; [debug line = 102:10]
  %39 = load %struct.SHA256_CTX** %1, align 4, !dbg !212 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 102:10]
  %40 = getelementptr inbounds %struct.SHA256_CTX* %39, i32 0, i32 0, !dbg !212 ; [#uses=1 type=[64 x i8]*] [debug line = 102:10]
  %41 = getelementptr inbounds [64 x i8]* %40, i32 0, i32 %37, !dbg !212 ; [#uses=1 type=i8*] [debug line = 102:10]
  store i8 0, i8* %41, align 1, !dbg !212         ; [debug line = 102:10]
  br label %33, !dbg !212                         ; [debug line = 102:10]

; <label>:42                                      ; preds = %33
  %43 = load %struct.SHA256_CTX** %1, align 4, !dbg !213 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 103:7]
  %44 = load %struct.SHA256_CTX** %1, align 4, !dbg !213 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 103:7]
  %45 = getelementptr inbounds %struct.SHA256_CTX* %44, i32 0, i32 0, !dbg !213 ; [#uses=1 type=[64 x i8]*] [debug line = 103:7]
  %46 = getelementptr inbounds [64 x i8]* %45, i32 0, i32 0, !dbg !213 ; [#uses=1 type=i8*] [debug line = 103:7]
  call void @sha256_transform(%struct.SHA256_CTX* %43, i8* %46), !dbg !213 ; [debug line = 103:7]
  br label %47, !dbg !213                         ; [debug line = 103:7]

; <label>:47                                      ; preds = %42
  store i32 0, i32* %j, align 4, !dbg !214        ; [debug line = 107:6]
  br label %48, !dbg !214                         ; [debug line = 107:6]

; <label>:48                                      ; preds = %56, %47
  %49 = load i32* %j, align 4, !dbg !214          ; [#uses=1 type=i32] [debug line = 107:6]
  %50 = icmp ult i32 %49, 56, !dbg !214           ; [#uses=1 type=i1] [debug line = 107:6]
  br i1 %50, label %51, label %59, !dbg !214      ; [debug line = 107:6]

; <label>:51                                      ; preds = %48
  call void bitcast (void (...)* @_ssdm_op_SpecLoopName to void (i8*)*)(i8* getelementptr inbounds ([20 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !216 ; [debug line = 107:33]
  call void bitcast (void (...)* @_ssdm_RegionBegin to void (i8*)*)(i8* getelementptr inbounds ([20 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !216 ; [debug line = 107:33]
  %52 = load i32* %j, align 4, !dbg !218          ; [#uses=1 type=i32] [debug line = 108:6]
  %53 = load %struct.SHA256_CTX** %1, align 4, !dbg !218 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 108:6]
  %54 = getelementptr inbounds %struct.SHA256_CTX* %53, i32 0, i32 0, !dbg !218 ; [#uses=1 type=[64 x i8]*] [debug line = 108:6]
  %55 = getelementptr inbounds [64 x i8]* %54, i32 0, i32 %52, !dbg !218 ; [#uses=1 type=i8*] [debug line = 108:6]
  store i8 0, i8* %55, align 1, !dbg !218         ; [debug line = 108:6]
  call void bitcast (void (...)* @_ssdm_RegionEnd to void (i8*)*)(i8* getelementptr inbounds ([20 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !219 ; [debug line = 109:5]
  br label %56, !dbg !219                         ; [debug line = 109:5]

; <label>:56                                      ; preds = %51
  %57 = load i32* %j, align 4, !dbg !220          ; [#uses=1 type=i32] [debug line = 107:21]
  %58 = add i32 %57, 1, !dbg !220                 ; [#uses=1 type=i32] [debug line = 107:21]
  store i32 %58, i32* %j, align 4, !dbg !220      ; [debug line = 107:21]
  br label %48, !dbg !220                         ; [debug line = 107:21]

; <label>:59                                      ; preds = %48
  br label %60

; <label>:60                                      ; preds = %59, %26
  %61 = load %struct.SHA256_CTX** %1, align 4, !dbg !221 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 113:4]
  %62 = getelementptr inbounds %struct.SHA256_CTX* %61, i32 0, i32 2, !dbg !221 ; [#uses=1 type=[2 x i32]*] [debug line = 113:4]
  %63 = getelementptr inbounds [2 x i32]* %62, i32 0, i32 0, !dbg !221 ; [#uses=1 type=i32*] [debug line = 113:4]
  %64 = load i32* %63, align 4, !dbg !221         ; [#uses=1 type=i32] [debug line = 113:4]
  %65 = load %struct.SHA256_CTX** %1, align 4, !dbg !221 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 113:4]
  %66 = getelementptr inbounds %struct.SHA256_CTX* %65, i32 0, i32 1, !dbg !221 ; [#uses=1 type=i32*] [debug line = 113:4]
  %67 = load i32* %66, align 4, !dbg !221         ; [#uses=1 type=i32] [debug line = 113:4]
  %68 = mul i32 %67, 8, !dbg !221                 ; [#uses=1 type=i32] [debug line = 113:4]
  %69 = sub i32 -1, %68, !dbg !221                ; [#uses=1 type=i32] [debug line = 113:4]
  %70 = icmp ugt i32 %64, %69, !dbg !221          ; [#uses=1 type=i1] [debug line = 113:4]
  br i1 %70, label %71, label %77, !dbg !221      ; [debug line = 113:4]

; <label>:71                                      ; preds = %60
  %72 = load %struct.SHA256_CTX** %1, align 4, !dbg !222 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 113:70]
  %73 = getelementptr inbounds %struct.SHA256_CTX* %72, i32 0, i32 2, !dbg !222 ; [#uses=1 type=[2 x i32]*] [debug line = 113:70]
  %74 = getelementptr inbounds [2 x i32]* %73, i32 0, i32 1, !dbg !222 ; [#uses=2 type=i32*] [debug line = 113:70]
  %75 = load i32* %74, align 4, !dbg !222         ; [#uses=1 type=i32] [debug line = 113:70]
  %76 = add i32 %75, 1, !dbg !222                 ; [#uses=1 type=i32] [debug line = 113:70]
  store i32 %76, i32* %74, align 4, !dbg !222     ; [debug line = 113:70]
  br label %77, !dbg !222                         ; [debug line = 113:70]

; <label>:77                                      ; preds = %71, %60
  %78 = load %struct.SHA256_CTX** %1, align 4, !dbg !223 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 113:94]
  %79 = getelementptr inbounds %struct.SHA256_CTX* %78, i32 0, i32 1, !dbg !223 ; [#uses=1 type=i32*] [debug line = 113:94]
  %80 = load i32* %79, align 4, !dbg !223         ; [#uses=1 type=i32] [debug line = 113:94]
  %81 = mul i32 %80, 8, !dbg !223                 ; [#uses=1 type=i32] [debug line = 113:94]
  %82 = load %struct.SHA256_CTX** %1, align 4, !dbg !223 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 113:94]
  %83 = getelementptr inbounds %struct.SHA256_CTX* %82, i32 0, i32 2, !dbg !223 ; [#uses=1 type=[2 x i32]*] [debug line = 113:94]
  %84 = getelementptr inbounds [2 x i32]* %83, i32 0, i32 0, !dbg !223 ; [#uses=2 type=i32*] [debug line = 113:94]
  %85 = load i32* %84, align 4, !dbg !223         ; [#uses=1 type=i32] [debug line = 113:94]
  %86 = add i32 %85, %81, !dbg !223               ; [#uses=1 type=i32] [debug line = 113:94]
  store i32 %86, i32* %84, align 4, !dbg !223     ; [debug line = 113:94]
  %87 = load %struct.SHA256_CTX** %1, align 4, !dbg !224 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 114:4]
  %88 = getelementptr inbounds %struct.SHA256_CTX* %87, i32 0, i32 2, !dbg !224 ; [#uses=1 type=[2 x i32]*] [debug line = 114:4]
  %89 = getelementptr inbounds [2 x i32]* %88, i32 0, i32 0, !dbg !224 ; [#uses=1 type=i32*] [debug line = 114:4]
  %90 = load i32* %89, align 4, !dbg !224         ; [#uses=1 type=i32] [debug line = 114:4]
  %91 = trunc i32 %90 to i8, !dbg !224            ; [#uses=1 type=i8] [debug line = 114:4]
  %92 = load %struct.SHA256_CTX** %1, align 4, !dbg !224 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 114:4]
  %93 = getelementptr inbounds %struct.SHA256_CTX* %92, i32 0, i32 0, !dbg !224 ; [#uses=1 type=[64 x i8]*] [debug line = 114:4]
  %94 = getelementptr inbounds [64 x i8]* %93, i32 0, i32 63, !dbg !224 ; [#uses=1 type=i8*] [debug line = 114:4]
  store i8 %91, i8* %94, align 1, !dbg !224       ; [debug line = 114:4]
  %95 = load %struct.SHA256_CTX** %1, align 4, !dbg !225 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 115:4]
  %96 = getelementptr inbounds %struct.SHA256_CTX* %95, i32 0, i32 2, !dbg !225 ; [#uses=1 type=[2 x i32]*] [debug line = 115:4]
  %97 = getelementptr inbounds [2 x i32]* %96, i32 0, i32 0, !dbg !225 ; [#uses=1 type=i32*] [debug line = 115:4]
  %98 = load i32* %97, align 4, !dbg !225         ; [#uses=1 type=i32] [debug line = 115:4]
  %99 = lshr i32 %98, 8, !dbg !225                ; [#uses=1 type=i32] [debug line = 115:4]
  %100 = trunc i32 %99 to i8, !dbg !225           ; [#uses=1 type=i8] [debug line = 115:4]
  %101 = load %struct.SHA256_CTX** %1, align 4, !dbg !225 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 115:4]
  %102 = getelementptr inbounds %struct.SHA256_CTX* %101, i32 0, i32 0, !dbg !225 ; [#uses=1 type=[64 x i8]*] [debug line = 115:4]
  %103 = getelementptr inbounds [64 x i8]* %102, i32 0, i32 62, !dbg !225 ; [#uses=1 type=i8*] [debug line = 115:4]
  store i8 %100, i8* %103, align 1, !dbg !225     ; [debug line = 115:4]
  %104 = load %struct.SHA256_CTX** %1, align 4, !dbg !226 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 116:4]
  %105 = getelementptr inbounds %struct.SHA256_CTX* %104, i32 0, i32 2, !dbg !226 ; [#uses=1 type=[2 x i32]*] [debug line = 116:4]
  %106 = getelementptr inbounds [2 x i32]* %105, i32 0, i32 0, !dbg !226 ; [#uses=1 type=i32*] [debug line = 116:4]
  %107 = load i32* %106, align 4, !dbg !226       ; [#uses=1 type=i32] [debug line = 116:4]
  %108 = lshr i32 %107, 16, !dbg !226             ; [#uses=1 type=i32] [debug line = 116:4]
  %109 = trunc i32 %108 to i8, !dbg !226          ; [#uses=1 type=i8] [debug line = 116:4]
  %110 = load %struct.SHA256_CTX** %1, align 4, !dbg !226 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 116:4]
  %111 = getelementptr inbounds %struct.SHA256_CTX* %110, i32 0, i32 0, !dbg !226 ; [#uses=1 type=[64 x i8]*] [debug line = 116:4]
  %112 = getelementptr inbounds [64 x i8]* %111, i32 0, i32 61, !dbg !226 ; [#uses=1 type=i8*] [debug line = 116:4]
  store i8 %109, i8* %112, align 1, !dbg !226     ; [debug line = 116:4]
  %113 = load %struct.SHA256_CTX** %1, align 4, !dbg !227 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 117:4]
  %114 = getelementptr inbounds %struct.SHA256_CTX* %113, i32 0, i32 2, !dbg !227 ; [#uses=1 type=[2 x i32]*] [debug line = 117:4]
  %115 = getelementptr inbounds [2 x i32]* %114, i32 0, i32 0, !dbg !227 ; [#uses=1 type=i32*] [debug line = 117:4]
  %116 = load i32* %115, align 4, !dbg !227       ; [#uses=1 type=i32] [debug line = 117:4]
  %117 = lshr i32 %116, 24, !dbg !227             ; [#uses=1 type=i32] [debug line = 117:4]
  %118 = trunc i32 %117 to i8, !dbg !227          ; [#uses=1 type=i8] [debug line = 117:4]
  %119 = load %struct.SHA256_CTX** %1, align 4, !dbg !227 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 117:4]
  %120 = getelementptr inbounds %struct.SHA256_CTX* %119, i32 0, i32 0, !dbg !227 ; [#uses=1 type=[64 x i8]*] [debug line = 117:4]
  %121 = getelementptr inbounds [64 x i8]* %120, i32 0, i32 60, !dbg !227 ; [#uses=1 type=i8*] [debug line = 117:4]
  store i8 %118, i8* %121, align 1, !dbg !227     ; [debug line = 117:4]
  %122 = load %struct.SHA256_CTX** %1, align 4, !dbg !228 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 118:4]
  %123 = getelementptr inbounds %struct.SHA256_CTX* %122, i32 0, i32 2, !dbg !228 ; [#uses=1 type=[2 x i32]*] [debug line = 118:4]
  %124 = getelementptr inbounds [2 x i32]* %123, i32 0, i32 1, !dbg !228 ; [#uses=1 type=i32*] [debug line = 118:4]
  %125 = load i32* %124, align 4, !dbg !228       ; [#uses=1 type=i32] [debug line = 118:4]
  %126 = trunc i32 %125 to i8, !dbg !228          ; [#uses=1 type=i8] [debug line = 118:4]
  %127 = load %struct.SHA256_CTX** %1, align 4, !dbg !228 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 118:4]
  %128 = getelementptr inbounds %struct.SHA256_CTX* %127, i32 0, i32 0, !dbg !228 ; [#uses=1 type=[64 x i8]*] [debug line = 118:4]
  %129 = getelementptr inbounds [64 x i8]* %128, i32 0, i32 59, !dbg !228 ; [#uses=1 type=i8*] [debug line = 118:4]
  store i8 %126, i8* %129, align 1, !dbg !228     ; [debug line = 118:4]
  %130 = load %struct.SHA256_CTX** %1, align 4, !dbg !229 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 119:4]
  %131 = getelementptr inbounds %struct.SHA256_CTX* %130, i32 0, i32 2, !dbg !229 ; [#uses=1 type=[2 x i32]*] [debug line = 119:4]
  %132 = getelementptr inbounds [2 x i32]* %131, i32 0, i32 1, !dbg !229 ; [#uses=1 type=i32*] [debug line = 119:4]
  %133 = load i32* %132, align 4, !dbg !229       ; [#uses=1 type=i32] [debug line = 119:4]
  %134 = lshr i32 %133, 8, !dbg !229              ; [#uses=1 type=i32] [debug line = 119:4]
  %135 = trunc i32 %134 to i8, !dbg !229          ; [#uses=1 type=i8] [debug line = 119:4]
  %136 = load %struct.SHA256_CTX** %1, align 4, !dbg !229 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 119:4]
  %137 = getelementptr inbounds %struct.SHA256_CTX* %136, i32 0, i32 0, !dbg !229 ; [#uses=1 type=[64 x i8]*] [debug line = 119:4]
  %138 = getelementptr inbounds [64 x i8]* %137, i32 0, i32 58, !dbg !229 ; [#uses=1 type=i8*] [debug line = 119:4]
  store i8 %135, i8* %138, align 1, !dbg !229     ; [debug line = 119:4]
  %139 = load %struct.SHA256_CTX** %1, align 4, !dbg !230 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 120:4]
  %140 = getelementptr inbounds %struct.SHA256_CTX* %139, i32 0, i32 2, !dbg !230 ; [#uses=1 type=[2 x i32]*] [debug line = 120:4]
  %141 = getelementptr inbounds [2 x i32]* %140, i32 0, i32 1, !dbg !230 ; [#uses=1 type=i32*] [debug line = 120:4]
  %142 = load i32* %141, align 4, !dbg !230       ; [#uses=1 type=i32] [debug line = 120:4]
  %143 = lshr i32 %142, 16, !dbg !230             ; [#uses=1 type=i32] [debug line = 120:4]
  %144 = trunc i32 %143 to i8, !dbg !230          ; [#uses=1 type=i8] [debug line = 120:4]
  %145 = load %struct.SHA256_CTX** %1, align 4, !dbg !230 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 120:4]
  %146 = getelementptr inbounds %struct.SHA256_CTX* %145, i32 0, i32 0, !dbg !230 ; [#uses=1 type=[64 x i8]*] [debug line = 120:4]
  %147 = getelementptr inbounds [64 x i8]* %146, i32 0, i32 57, !dbg !230 ; [#uses=1 type=i8*] [debug line = 120:4]
  store i8 %144, i8* %147, align 1, !dbg !230     ; [debug line = 120:4]
  %148 = load %struct.SHA256_CTX** %1, align 4, !dbg !231 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 121:4]
  %149 = getelementptr inbounds %struct.SHA256_CTX* %148, i32 0, i32 2, !dbg !231 ; [#uses=1 type=[2 x i32]*] [debug line = 121:4]
  %150 = getelementptr inbounds [2 x i32]* %149, i32 0, i32 1, !dbg !231 ; [#uses=1 type=i32*] [debug line = 121:4]
  %151 = load i32* %150, align 4, !dbg !231       ; [#uses=1 type=i32] [debug line = 121:4]
  %152 = lshr i32 %151, 24, !dbg !231             ; [#uses=1 type=i32] [debug line = 121:4]
  %153 = trunc i32 %152 to i8, !dbg !231          ; [#uses=1 type=i8] [debug line = 121:4]
  %154 = load %struct.SHA256_CTX** %1, align 4, !dbg !231 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 121:4]
  %155 = getelementptr inbounds %struct.SHA256_CTX* %154, i32 0, i32 0, !dbg !231 ; [#uses=1 type=[64 x i8]*] [debug line = 121:4]
  %156 = getelementptr inbounds [64 x i8]* %155, i32 0, i32 56, !dbg !231 ; [#uses=1 type=i8*] [debug line = 121:4]
  store i8 %153, i8* %156, align 1, !dbg !231     ; [debug line = 121:4]
  %157 = load %struct.SHA256_CTX** %1, align 4, !dbg !232 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 122:4]
  %158 = load %struct.SHA256_CTX** %1, align 4, !dbg !232 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 122:4]
  %159 = getelementptr inbounds %struct.SHA256_CTX* %158, i32 0, i32 0, !dbg !232 ; [#uses=1 type=[64 x i8]*] [debug line = 122:4]
  %160 = getelementptr inbounds [64 x i8]* %159, i32 0, i32 0, !dbg !232 ; [#uses=1 type=i8*] [debug line = 122:4]
  call void @sha256_transform(%struct.SHA256_CTX* %157, i8* %160), !dbg !232 ; [debug line = 122:4]
  br label %161, !dbg !232                        ; [debug line = 122:4]

; <label>:161                                     ; preds = %77
  store i32 0, i32* %i, align 4, !dbg !233        ; [debug line = 127:9]
  br label %162, !dbg !233                        ; [debug line = 127:9]

; <label>:162                                     ; preds = %277, %161
  %163 = load i32* %i, align 4, !dbg !233         ; [#uses=1 type=i32] [debug line = 127:9]
  %164 = icmp ult i32 %163, 4, !dbg !233          ; [#uses=1 type=i1] [debug line = 127:9]
  br i1 %164, label %165, label %280, !dbg !233   ; [debug line = 127:9]

; <label>:165                                     ; preds = %162
  call void bitcast (void (...)* @_ssdm_op_SpecLoopName to void (i8*)*)(i8* getelementptr inbounds ([24 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !235 ; [debug line = 127:27]
  call void bitcast (void (...)* @_ssdm_RegionBegin to void (i8*)*)(i8* getelementptr inbounds ([24 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !235 ; [debug line = 127:27]
  %166 = load %struct.SHA256_CTX** %1, align 4, !dbg !237 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 128:4]
  %167 = getelementptr inbounds %struct.SHA256_CTX* %166, i32 0, i32 3, !dbg !237 ; [#uses=1 type=[8 x i32]*] [debug line = 128:4]
  %168 = getelementptr inbounds [8 x i32]* %167, i32 0, i32 0, !dbg !237 ; [#uses=1 type=i32*] [debug line = 128:4]
  %169 = load i32* %168, align 4, !dbg !237       ; [#uses=1 type=i32] [debug line = 128:4]
  %170 = load i32* %i, align 4, !dbg !237         ; [#uses=1 type=i32] [debug line = 128:4]
  %171 = mul i32 %170, 8, !dbg !237               ; [#uses=1 type=i32] [debug line = 128:4]
  %172 = sub i32 24, %171, !dbg !237              ; [#uses=1 type=i32] [debug line = 128:4]
  %173 = lshr i32 %169, %172, !dbg !237           ; [#uses=1 type=i32] [debug line = 128:4]
  %174 = and i32 %173, 255, !dbg !237             ; [#uses=1 type=i32] [debug line = 128:4]
  %175 = trunc i32 %174 to i8, !dbg !237          ; [#uses=1 type=i8] [debug line = 128:4]
  %176 = load i32* %i, align 4, !dbg !237         ; [#uses=1 type=i32] [debug line = 128:4]
  %177 = load i8** %2, align 4, !dbg !237         ; [#uses=1 type=i8*] [debug line = 128:4]
  %178 = getelementptr inbounds i8* %177, i32 %176, !dbg !237 ; [#uses=1 type=i8*] [debug line = 128:4]
  store i8 %175, i8* %178, align 1, !dbg !237     ; [debug line = 128:4]
  %179 = load %struct.SHA256_CTX** %1, align 4, !dbg !238 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 129:4]
  %180 = getelementptr inbounds %struct.SHA256_CTX* %179, i32 0, i32 3, !dbg !238 ; [#uses=1 type=[8 x i32]*] [debug line = 129:4]
  %181 = getelementptr inbounds [8 x i32]* %180, i32 0, i32 1, !dbg !238 ; [#uses=1 type=i32*] [debug line = 129:4]
  %182 = load i32* %181, align 4, !dbg !238       ; [#uses=1 type=i32] [debug line = 129:4]
  %183 = load i32* %i, align 4, !dbg !238         ; [#uses=1 type=i32] [debug line = 129:4]
  %184 = mul i32 %183, 8, !dbg !238               ; [#uses=1 type=i32] [debug line = 129:4]
  %185 = sub i32 24, %184, !dbg !238              ; [#uses=1 type=i32] [debug line = 129:4]
  %186 = lshr i32 %182, %185, !dbg !238           ; [#uses=1 type=i32] [debug line = 129:4]
  %187 = and i32 %186, 255, !dbg !238             ; [#uses=1 type=i32] [debug line = 129:4]
  %188 = trunc i32 %187 to i8, !dbg !238          ; [#uses=1 type=i8] [debug line = 129:4]
  %189 = load i32* %i, align 4, !dbg !238         ; [#uses=1 type=i32] [debug line = 129:4]
  %190 = add i32 %189, 4, !dbg !238               ; [#uses=1 type=i32] [debug line = 129:4]
  %191 = load i8** %2, align 4, !dbg !238         ; [#uses=1 type=i8*] [debug line = 129:4]
  %192 = getelementptr inbounds i8* %191, i32 %190, !dbg !238 ; [#uses=1 type=i8*] [debug line = 129:4]
  store i8 %188, i8* %192, align 1, !dbg !238     ; [debug line = 129:4]
  %193 = load %struct.SHA256_CTX** %1, align 4, !dbg !239 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 130:4]
  %194 = getelementptr inbounds %struct.SHA256_CTX* %193, i32 0, i32 3, !dbg !239 ; [#uses=1 type=[8 x i32]*] [debug line = 130:4]
  %195 = getelementptr inbounds [8 x i32]* %194, i32 0, i32 2, !dbg !239 ; [#uses=1 type=i32*] [debug line = 130:4]
  %196 = load i32* %195, align 4, !dbg !239       ; [#uses=1 type=i32] [debug line = 130:4]
  %197 = load i32* %i, align 4, !dbg !239         ; [#uses=1 type=i32] [debug line = 130:4]
  %198 = mul i32 %197, 8, !dbg !239               ; [#uses=1 type=i32] [debug line = 130:4]
  %199 = sub i32 24, %198, !dbg !239              ; [#uses=1 type=i32] [debug line = 130:4]
  %200 = lshr i32 %196, %199, !dbg !239           ; [#uses=1 type=i32] [debug line = 130:4]
  %201 = and i32 %200, 255, !dbg !239             ; [#uses=1 type=i32] [debug line = 130:4]
  %202 = trunc i32 %201 to i8, !dbg !239          ; [#uses=1 type=i8] [debug line = 130:4]
  %203 = load i32* %i, align 4, !dbg !239         ; [#uses=1 type=i32] [debug line = 130:4]
  %204 = add i32 %203, 8, !dbg !239               ; [#uses=1 type=i32] [debug line = 130:4]
  %205 = load i8** %2, align 4, !dbg !239         ; [#uses=1 type=i8*] [debug line = 130:4]
  %206 = getelementptr inbounds i8* %205, i32 %204, !dbg !239 ; [#uses=1 type=i8*] [debug line = 130:4]
  store i8 %202, i8* %206, align 1, !dbg !239     ; [debug line = 130:4]
  %207 = load %struct.SHA256_CTX** %1, align 4, !dbg !240 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 131:4]
  %208 = getelementptr inbounds %struct.SHA256_CTX* %207, i32 0, i32 3, !dbg !240 ; [#uses=1 type=[8 x i32]*] [debug line = 131:4]
  %209 = getelementptr inbounds [8 x i32]* %208, i32 0, i32 3, !dbg !240 ; [#uses=1 type=i32*] [debug line = 131:4]
  %210 = load i32* %209, align 4, !dbg !240       ; [#uses=1 type=i32] [debug line = 131:4]
  %211 = load i32* %i, align 4, !dbg !240         ; [#uses=1 type=i32] [debug line = 131:4]
  %212 = mul i32 %211, 8, !dbg !240               ; [#uses=1 type=i32] [debug line = 131:4]
  %213 = sub i32 24, %212, !dbg !240              ; [#uses=1 type=i32] [debug line = 131:4]
  %214 = lshr i32 %210, %213, !dbg !240           ; [#uses=1 type=i32] [debug line = 131:4]
  %215 = and i32 %214, 255, !dbg !240             ; [#uses=1 type=i32] [debug line = 131:4]
  %216 = trunc i32 %215 to i8, !dbg !240          ; [#uses=1 type=i8] [debug line = 131:4]
  %217 = load i32* %i, align 4, !dbg !240         ; [#uses=1 type=i32] [debug line = 131:4]
  %218 = add i32 %217, 12, !dbg !240              ; [#uses=1 type=i32] [debug line = 131:4]
  %219 = load i8** %2, align 4, !dbg !240         ; [#uses=1 type=i8*] [debug line = 131:4]
  %220 = getelementptr inbounds i8* %219, i32 %218, !dbg !240 ; [#uses=1 type=i8*] [debug line = 131:4]
  store i8 %216, i8* %220, align 1, !dbg !240     ; [debug line = 131:4]
  %221 = load %struct.SHA256_CTX** %1, align 4, !dbg !241 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 132:4]
  %222 = getelementptr inbounds %struct.SHA256_CTX* %221, i32 0, i32 3, !dbg !241 ; [#uses=1 type=[8 x i32]*] [debug line = 132:4]
  %223 = getelementptr inbounds [8 x i32]* %222, i32 0, i32 4, !dbg !241 ; [#uses=1 type=i32*] [debug line = 132:4]
  %224 = load i32* %223, align 4, !dbg !241       ; [#uses=1 type=i32] [debug line = 132:4]
  %225 = load i32* %i, align 4, !dbg !241         ; [#uses=1 type=i32] [debug line = 132:4]
  %226 = mul i32 %225, 8, !dbg !241               ; [#uses=1 type=i32] [debug line = 132:4]
  %227 = sub i32 24, %226, !dbg !241              ; [#uses=1 type=i32] [debug line = 132:4]
  %228 = lshr i32 %224, %227, !dbg !241           ; [#uses=1 type=i32] [debug line = 132:4]
  %229 = and i32 %228, 255, !dbg !241             ; [#uses=1 type=i32] [debug line = 132:4]
  %230 = trunc i32 %229 to i8, !dbg !241          ; [#uses=1 type=i8] [debug line = 132:4]
  %231 = load i32* %i, align 4, !dbg !241         ; [#uses=1 type=i32] [debug line = 132:4]
  %232 = add i32 %231, 16, !dbg !241              ; [#uses=1 type=i32] [debug line = 132:4]
  %233 = load i8** %2, align 4, !dbg !241         ; [#uses=1 type=i8*] [debug line = 132:4]
  %234 = getelementptr inbounds i8* %233, i32 %232, !dbg !241 ; [#uses=1 type=i8*] [debug line = 132:4]
  store i8 %230, i8* %234, align 1, !dbg !241     ; [debug line = 132:4]
  %235 = load %struct.SHA256_CTX** %1, align 4, !dbg !242 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 133:4]
  %236 = getelementptr inbounds %struct.SHA256_CTX* %235, i32 0, i32 3, !dbg !242 ; [#uses=1 type=[8 x i32]*] [debug line = 133:4]
  %237 = getelementptr inbounds [8 x i32]* %236, i32 0, i32 5, !dbg !242 ; [#uses=1 type=i32*] [debug line = 133:4]
  %238 = load i32* %237, align 4, !dbg !242       ; [#uses=1 type=i32] [debug line = 133:4]
  %239 = load i32* %i, align 4, !dbg !242         ; [#uses=1 type=i32] [debug line = 133:4]
  %240 = mul i32 %239, 8, !dbg !242               ; [#uses=1 type=i32] [debug line = 133:4]
  %241 = sub i32 24, %240, !dbg !242              ; [#uses=1 type=i32] [debug line = 133:4]
  %242 = lshr i32 %238, %241, !dbg !242           ; [#uses=1 type=i32] [debug line = 133:4]
  %243 = and i32 %242, 255, !dbg !242             ; [#uses=1 type=i32] [debug line = 133:4]
  %244 = trunc i32 %243 to i8, !dbg !242          ; [#uses=1 type=i8] [debug line = 133:4]
  %245 = load i32* %i, align 4, !dbg !242         ; [#uses=1 type=i32] [debug line = 133:4]
  %246 = add i32 %245, 20, !dbg !242              ; [#uses=1 type=i32] [debug line = 133:4]
  %247 = load i8** %2, align 4, !dbg !242         ; [#uses=1 type=i8*] [debug line = 133:4]
  %248 = getelementptr inbounds i8* %247, i32 %246, !dbg !242 ; [#uses=1 type=i8*] [debug line = 133:4]
  store i8 %244, i8* %248, align 1, !dbg !242     ; [debug line = 133:4]
  %249 = load %struct.SHA256_CTX** %1, align 4, !dbg !243 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 134:4]
  %250 = getelementptr inbounds %struct.SHA256_CTX* %249, i32 0, i32 3, !dbg !243 ; [#uses=1 type=[8 x i32]*] [debug line = 134:4]
  %251 = getelementptr inbounds [8 x i32]* %250, i32 0, i32 6, !dbg !243 ; [#uses=1 type=i32*] [debug line = 134:4]
  %252 = load i32* %251, align 4, !dbg !243       ; [#uses=1 type=i32] [debug line = 134:4]
  %253 = load i32* %i, align 4, !dbg !243         ; [#uses=1 type=i32] [debug line = 134:4]
  %254 = mul i32 %253, 8, !dbg !243               ; [#uses=1 type=i32] [debug line = 134:4]
  %255 = sub i32 24, %254, !dbg !243              ; [#uses=1 type=i32] [debug line = 134:4]
  %256 = lshr i32 %252, %255, !dbg !243           ; [#uses=1 type=i32] [debug line = 134:4]
  %257 = and i32 %256, 255, !dbg !243             ; [#uses=1 type=i32] [debug line = 134:4]
  %258 = trunc i32 %257 to i8, !dbg !243          ; [#uses=1 type=i8] [debug line = 134:4]
  %259 = load i32* %i, align 4, !dbg !243         ; [#uses=1 type=i32] [debug line = 134:4]
  %260 = add i32 %259, 24, !dbg !243              ; [#uses=1 type=i32] [debug line = 134:4]
  %261 = load i8** %2, align 4, !dbg !243         ; [#uses=1 type=i8*] [debug line = 134:4]
  %262 = getelementptr inbounds i8* %261, i32 %260, !dbg !243 ; [#uses=1 type=i8*] [debug line = 134:4]
  store i8 %258, i8* %262, align 1, !dbg !243     ; [debug line = 134:4]
  %263 = load %struct.SHA256_CTX** %1, align 4, !dbg !244 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 135:4]
  %264 = getelementptr inbounds %struct.SHA256_CTX* %263, i32 0, i32 3, !dbg !244 ; [#uses=1 type=[8 x i32]*] [debug line = 135:4]
  %265 = getelementptr inbounds [8 x i32]* %264, i32 0, i32 7, !dbg !244 ; [#uses=1 type=i32*] [debug line = 135:4]
  %266 = load i32* %265, align 4, !dbg !244       ; [#uses=1 type=i32] [debug line = 135:4]
  %267 = load i32* %i, align 4, !dbg !244         ; [#uses=1 type=i32] [debug line = 135:4]
  %268 = mul i32 %267, 8, !dbg !244               ; [#uses=1 type=i32] [debug line = 135:4]
  %269 = sub i32 24, %268, !dbg !244              ; [#uses=1 type=i32] [debug line = 135:4]
  %270 = lshr i32 %266, %269, !dbg !244           ; [#uses=1 type=i32] [debug line = 135:4]
  %271 = and i32 %270, 255, !dbg !244             ; [#uses=1 type=i32] [debug line = 135:4]
  %272 = trunc i32 %271 to i8, !dbg !244          ; [#uses=1 type=i8] [debug line = 135:4]
  %273 = load i32* %i, align 4, !dbg !244         ; [#uses=1 type=i32] [debug line = 135:4]
  %274 = add i32 %273, 28, !dbg !244              ; [#uses=1 type=i32] [debug line = 135:4]
  %275 = load i8** %2, align 4, !dbg !244         ; [#uses=1 type=i8*] [debug line = 135:4]
  %276 = getelementptr inbounds i8* %275, i32 %274, !dbg !244 ; [#uses=1 type=i8*] [debug line = 135:4]
  store i8 %272, i8* %276, align 1, !dbg !244     ; [debug line = 135:4]
  call void bitcast (void (...)* @_ssdm_RegionEnd to void (i8*)*)(i8* getelementptr inbounds ([24 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !245 ; [debug line = 136:4]
  br label %277, !dbg !245                        ; [debug line = 136:4]

; <label>:277                                     ; preds = %165
  %278 = load i32* %i, align 4, !dbg !246         ; [#uses=1 type=i32] [debug line = 127:21]
  %279 = add i32 %278, 1, !dbg !246               ; [#uses=1 type=i32] [debug line = 127:21]
  store i32 %279, i32* %i, align 4, !dbg !246     ; [debug line = 127:21]
  br label %162, !dbg !246                        ; [debug line = 127:21]

; <label>:280                                     ; preds = %162
  ret void, !dbg !247                             ; [debug line = 137:1]
}

; [#uses=1]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=1]
declare void @_ssdm_RegionBegin(...) nounwind

; [#uses=1]
declare void @_ssdm_RegionEnd(...) nounwind

; [#uses=0]
define void @sha256_top(i8* %data, i8* %hash) nounwind {
  %1 = alloca i8*, align 4                        ; [#uses=3 type=i8**]
  %2 = alloca i8*, align 4                        ; [#uses=3 type=i8**]
  %len = alloca i32, align 4                      ; [#uses=2 type=i32*]
  %i = alloca i32, align 4                        ; [#uses=0 type=i32*]
  %ctx_temp = alloca %struct.SHA256_CTX*, align 4 ; [#uses=3 type=%struct.SHA256_CTX**]
  store i8* %data, i8** %1, align 4
  call void @llvm.dbg.declare(metadata !{i8** %1}, metadata !248), !dbg !249 ; [debug line = 140:47] [debug variable = data]
  store i8* %hash, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !250), !dbg !251 ; [debug line = 140:87] [debug variable = hash]
  %3 = load i8** %1, align 4, !dbg !252           ; [#uses=1 type=i8*] [debug line = 140:98]
  call void bitcast (void (...)* @_ssdm_SpecArrayDimSize to void (i8*, i32)*)(i8* %3, i32 32) nounwind, !dbg !252 ; [debug line = 140:98]
  %4 = load i8** %2, align 4, !dbg !254           ; [#uses=1 type=i8*] [debug line = 140:130]
  call void bitcast (void (...)* @_ssdm_SpecArrayDimSize to void (i8*, i32)*)(i8* %4, i32 32) nounwind, !dbg !254 ; [debug line = 140:130]
  call void @llvm.dbg.declare(metadata !{i32* %len}, metadata !255), !dbg !256 ; [debug line = 141:33] [debug variable = len]
  store i32 32, i32* %len, align 4, !dbg !257     ; [debug line = 141:41]
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !258), !dbg !260 ; [debug line = 142:6] [debug variable = i]
  call void bitcast (void (...)* @_ssdm_InlineSelf to void (i32, i8*)*)(i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !261 ; [debug line = 144:1]
  call void @sha256_init(%struct.SHA256_CTX* @ctx), !dbg !262 ; [debug line = 145:2]
  call void @llvm.dbg.declare(metadata !{%struct.SHA256_CTX** %ctx_temp}, metadata !263), !dbg !264 ; [debug line = 146:14] [debug variable = ctx_temp]
  store %struct.SHA256_CTX* @ctx, %struct.SHA256_CTX** %ctx_temp, align 4, !dbg !265 ; [debug line = 146:29]
  %5 = load %struct.SHA256_CTX** %ctx_temp, align 4, !dbg !266 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 150:2]
  %6 = load i8** %1, align 4, !dbg !266           ; [#uses=1 type=i8*] [debug line = 150:2]
  %7 = load i32* %len, align 4, !dbg !266         ; [#uses=1 type=i32] [debug line = 150:2]
  call void @sha256_update(%struct.SHA256_CTX* %5, i8* %6, i32 %7), !dbg !266 ; [debug line = 150:2]
  %8 = load %struct.SHA256_CTX** %ctx_temp, align 4, !dbg !267 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 153:2]
  %9 = load i8** %2, align 4, !dbg !267           ; [#uses=1 type=i8*] [debug line = 153:2]
  call void @sha256_final(%struct.SHA256_CTX* %8, i8* %9), !dbg !267 ; [debug line = 153:2]
  ret void, !dbg !268                             ; [debug line = 154:1]
}

; [#uses=1]
declare void @_ssdm_InlineSelf(...) nounwind

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!52, !59, !65, !71, !73}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"C:/Users/windows-10-vm1/Desktop/github/30-202_DIC/30-202_hw-1/hls_test_error/hls_test_error/solution1/.autopilot/db/sha256.pragma.2.c", metadata !"C:\5CUsers\5Cwindows-10-vm1\5CDesktop\5Cgithub\5C30-202_DIC\5C30-202_hw-1\5Chls_test_error", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !42} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !32, metadata !35, metadata !38, metadata !39}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"sha256_transform", metadata !"sha256_transform", metadata !"", metadata !6, i32 16, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.SHA256_CTX*, i8*)* @sha256_transform, null, null, metadata !30, i32 17} ; [ DW_TAG_subprogram ]
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
!32 = metadata !{i32 786478, i32 0, metadata !6, metadata !"sha256_init", metadata !"sha256_init", metadata !"", metadata !6, i32 57, metadata !33, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.SHA256_CTX*)* @sha256_init, null, null, metadata !30, i32 58} ; [ DW_TAG_subprogram ]
!33 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !34, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!34 = metadata !{null, metadata !9}
!35 = metadata !{i32 786478, i32 0, metadata !6, metadata !"sha256_update", metadata !"sha256_update", metadata !"", metadata !6, i32 72, metadata !36, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.SHA256_CTX*, i8*, i32)* @sha256_update, null, null, metadata !30, i32 73} ; [ DW_TAG_subprogram ]
!36 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !37, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!37 = metadata !{null, metadata !9, metadata !29, metadata !20}
!38 = metadata !{i32 786478, i32 0, metadata !6, metadata !"sha256_final", metadata !"sha256_final", metadata !"", metadata !6, i32 87, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.SHA256_CTX*, i8*)* @sha256_final, null, null, metadata !30, i32 88} ; [ DW_TAG_subprogram ]
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
!50 = metadata !{i32 786484, i32 0, null, metadata !"ctx", metadata !"ctx", metadata !"", metadata !12, i32 29, metadata !10, i32 1, i32 1, %struct.SHA256_CTX* @ctx} ; [ DW_TAG_variable ]
!51 = metadata !{i32 786484, i32 0, null, metadata !"k", metadata !"k", metadata !"", metadata !12, i32 31, metadata !45, i32 0, i32 1, [64 x i32]* @k} ; [ DW_TAG_variable ]
!52 = metadata !{void (%struct.SHA256_CTX*, i8*)* @sha256_transform, metadata !53, metadata !54, metadata !55, metadata !56, metadata !57, metadata !58}
!53 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!54 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!55 = metadata !{metadata !"kernel_arg_type", metadata !"SHA256_CTX*", metadata !"uchar*"}
!56 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!57 = metadata !{metadata !"kernel_arg_name", metadata !"ctx_transform", metadata !"data_transform"}
!58 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!59 = metadata !{void (%struct.SHA256_CTX*)* @sha256_init, metadata !60, metadata !61, metadata !62, metadata !63, metadata !64, metadata !58}
!60 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!61 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!62 = metadata !{metadata !"kernel_arg_type", metadata !"SHA256_CTX*"}
!63 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!64 = metadata !{metadata !"kernel_arg_name", metadata !"ctx"}
!65 = metadata !{void (%struct.SHA256_CTX*, i8*, i32)* @sha256_update, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70, metadata !58}
!66 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 0}
!67 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!68 = metadata !{metadata !"kernel_arg_type", metadata !"SHA256_CTX*", metadata !"uchar*", metadata !"ulong"}
!69 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!70 = metadata !{metadata !"kernel_arg_name", metadata !"ctx_update", metadata !"data", metadata !"len"}
!71 = metadata !{void (%struct.SHA256_CTX*, i8*)* @sha256_final, metadata !53, metadata !54, metadata !55, metadata !56, metadata !72, metadata !58}
!72 = metadata !{metadata !"kernel_arg_name", metadata !"ctx_final", metadata !"final_hash"}
!73 = metadata !{void (i8*, i8*)* @sha256_top, metadata !53, metadata !54, metadata !74, metadata !56, metadata !75, metadata !58}
!74 = metadata !{metadata !"kernel_arg_type", metadata !"uchar*", metadata !"uchar*"}
!75 = metadata !{metadata !"kernel_arg_name", metadata !"data", metadata !"hash"}
!76 = metadata !{i32 786689, metadata !5, metadata !"ctx_transform", metadata !6, i32 16777232, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!77 = metadata !{i32 16, i32 35, metadata !5, null}
!78 = metadata !{i32 786689, metadata !5, metadata !"data_transform", metadata !6, i32 33554448, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!79 = metadata !{i32 16, i32 80, metadata !5, null}
!80 = metadata !{i32 17, i32 2, metadata !81, null}
!81 = metadata !{i32 786443, metadata !5, i32 17, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!82 = metadata !{i32 786688, metadata !81, metadata !"a", metadata !6, i32 18, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!83 = metadata !{i32 18, i32 35, metadata !81, null}
!84 = metadata !{i32 786688, metadata !81, metadata !"b", metadata !6, i32 18, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!85 = metadata !{i32 18, i32 37, metadata !81, null}
!86 = metadata !{i32 786688, metadata !81, metadata !"c", metadata !6, i32 18, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!87 = metadata !{i32 18, i32 39, metadata !81, null}
!88 = metadata !{i32 786688, metadata !81, metadata !"d", metadata !6, i32 18, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!89 = metadata !{i32 18, i32 41, metadata !81, null}
!90 = metadata !{i32 786688, metadata !81, metadata !"e", metadata !6, i32 18, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!91 = metadata !{i32 18, i32 43, metadata !81, null}
!92 = metadata !{i32 786688, metadata !81, metadata !"f", metadata !6, i32 18, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!93 = metadata !{i32 18, i32 45, metadata !81, null}
!94 = metadata !{i32 786688, metadata !81, metadata !"g", metadata !6, i32 18, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!95 = metadata !{i32 18, i32 47, metadata !81, null}
!96 = metadata !{i32 786688, metadata !81, metadata !"h", metadata !6, i32 18, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!97 = metadata !{i32 18, i32 49, metadata !81, null}
!98 = metadata !{i32 786688, metadata !81, metadata !"i", metadata !6, i32 18, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!99 = metadata !{i32 18, i32 51, metadata !81, null}
!100 = metadata !{i32 786688, metadata !81, metadata !"j", metadata !6, i32 18, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!101 = metadata !{i32 18, i32 53, metadata !81, null}
!102 = metadata !{i32 786688, metadata !81, metadata !"t1", metadata !6, i32 18, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!103 = metadata !{i32 18, i32 55, metadata !81, null}
!104 = metadata !{i32 786688, metadata !81, metadata !"t2", metadata !6, i32 18, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!105 = metadata !{i32 18, i32 58, metadata !81, null}
!106 = metadata !{i32 786688, metadata !81, metadata !"m", metadata !6, i32 18, metadata !48, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!107 = metadata !{i32 18, i32 61, metadata !81, null}
!108 = metadata !{i32 20, i32 9, metadata !109, null}
!109 = metadata !{i32 786443, metadata !81, i32 20, i32 4, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!110 = metadata !{i32 21, i32 7, metadata !109, null}
!111 = metadata !{i32 20, i32 26, metadata !109, null}
!112 = metadata !{i32 22, i32 4, metadata !113, null}
!113 = metadata !{i32 786443, metadata !81, i32 22, i32 4, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!114 = metadata !{i32 23, i32 7, metadata !113, null}
!115 = metadata !{i32 22, i32 20, metadata !113, null}
!116 = metadata !{i32 25, i32 4, metadata !81, null}
!117 = metadata !{i32 26, i32 4, metadata !81, null}
!118 = metadata !{i32 27, i32 4, metadata !81, null}
!119 = metadata !{i32 28, i32 4, metadata !81, null}
!120 = metadata !{i32 29, i32 4, metadata !81, null}
!121 = metadata !{i32 30, i32 4, metadata !81, null}
!122 = metadata !{i32 31, i32 4, metadata !81, null}
!123 = metadata !{i32 32, i32 4, metadata !81, null}
!124 = metadata !{i32 34, i32 9, metadata !125, null}
!125 = metadata !{i32 786443, metadata !81, i32 34, i32 4, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!126 = metadata !{i32 35, i32 7, metadata !127, null}
!127 = metadata !{i32 786443, metadata !125, i32 34, i32 29, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!128 = metadata !{i32 36, i32 7, metadata !127, null}
!129 = metadata !{i32 37, i32 7, metadata !127, null}
!130 = metadata !{i32 38, i32 7, metadata !127, null}
!131 = metadata !{i32 39, i32 7, metadata !127, null}
!132 = metadata !{i32 40, i32 7, metadata !127, null}
!133 = metadata !{i32 41, i32 7, metadata !127, null}
!134 = metadata !{i32 42, i32 7, metadata !127, null}
!135 = metadata !{i32 43, i32 7, metadata !127, null}
!136 = metadata !{i32 44, i32 7, metadata !127, null}
!137 = metadata !{i32 45, i32 4, metadata !127, null}
!138 = metadata !{i32 34, i32 24, metadata !125, null}
!139 = metadata !{i32 47, i32 4, metadata !81, null}
!140 = metadata !{i32 48, i32 4, metadata !81, null}
!141 = metadata !{i32 49, i32 4, metadata !81, null}
!142 = metadata !{i32 50, i32 4, metadata !81, null}
!143 = metadata !{i32 51, i32 4, metadata !81, null}
!144 = metadata !{i32 52, i32 4, metadata !81, null}
!145 = metadata !{i32 53, i32 4, metadata !81, null}
!146 = metadata !{i32 54, i32 4, metadata !81, null}
!147 = metadata !{i32 55, i32 1, metadata !81, null}
!148 = metadata !{i32 786689, metadata !32, metadata !"ctx", metadata !6, i32 16777273, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!149 = metadata !{i32 57, i32 30, metadata !32, null}
!150 = metadata !{i32 59, i32 4, metadata !151, null}
!151 = metadata !{i32 786443, metadata !32, i32 58, i32 1, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!152 = metadata !{i32 60, i32 4, metadata !151, null}
!153 = metadata !{i32 61, i32 4, metadata !151, null}
!154 = metadata !{i32 62, i32 4, metadata !151, null}
!155 = metadata !{i32 63, i32 4, metadata !151, null}
!156 = metadata !{i32 64, i32 4, metadata !151, null}
!157 = metadata !{i32 65, i32 4, metadata !151, null}
!158 = metadata !{i32 66, i32 4, metadata !151, null}
!159 = metadata !{i32 67, i32 4, metadata !151, null}
!160 = metadata !{i32 68, i32 4, metadata !151, null}
!161 = metadata !{i32 69, i32 4, metadata !151, null}
!162 = metadata !{i32 70, i32 1, metadata !151, null}
!163 = metadata !{i32 786689, metadata !35, metadata !"ctx_update", metadata !6, i32 16777288, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!164 = metadata !{i32 72, i32 32, metadata !35, null}
!165 = metadata !{i32 786689, metadata !35, metadata !"data", metadata !6, i32 33554504, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!166 = metadata !{i32 72, i32 74, metadata !35, null}
!167 = metadata !{i32 786689, metadata !35, metadata !"len", metadata !6, i32 50331720, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!168 = metadata !{i32 72, i32 115, metadata !35, null}
!169 = metadata !{i32 73, i32 2, metadata !170, null}
!170 = metadata !{i32 786443, metadata !35, i32 73, i32 1, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!171 = metadata !{i32 786688, metadata !170, metadata !"t", metadata !6, i32 74, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!172 = metadata !{i32 74, i32 35, metadata !170, null}
!173 = metadata !{i32 786688, metadata !170, metadata !"i", metadata !6, i32 74, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!174 = metadata !{i32 74, i32 37, metadata !170, null}
!175 = metadata !{i32 75, i32 1, metadata !170, null}
!176 = metadata !{i32 76, i32 7, metadata !177, null}
!177 = metadata !{i32 786443, metadata !170, i32 76, i32 2, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!178 = metadata !{i32 77, i32 7, metadata !179, null}
!179 = metadata !{i32 786443, metadata !177, i32 76, i32 26, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!180 = metadata !{i32 78, i32 7, metadata !179, null}
!181 = metadata !{i32 79, i32 7, metadata !179, null}
!182 = metadata !{i32 80, i32 10, metadata !183, null}
!183 = metadata !{i32 786443, metadata !179, i32 79, i32 38, metadata !6, i32 9} ; [ DW_TAG_lexical_block ]
!184 = metadata !{i32 81, i32 10, metadata !183, null}
!185 = metadata !{i32 81, i32 58, metadata !183, null}
!186 = metadata !{i32 81, i32 83, metadata !183, null}
!187 = metadata !{i32 82, i32 10, metadata !183, null}
!188 = metadata !{i32 83, i32 7, metadata !183, null}
!189 = metadata !{i32 84, i32 4, metadata !179, null}
!190 = metadata !{i32 76, i32 21, metadata !177, null}
!191 = metadata !{i32 85, i32 1, metadata !170, null}
!192 = metadata !{i32 786689, metadata !38, metadata !"ctx_final", metadata !6, i32 16777303, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!193 = metadata !{i32 87, i32 31, metadata !38, null}
!194 = metadata !{i32 786689, metadata !38, metadata !"final_hash", metadata !6, i32 33554519, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!195 = metadata !{i32 87, i32 72, metadata !38, null}
!196 = metadata !{i32 88, i32 2, metadata !197, null}
!197 = metadata !{i32 786443, metadata !38, i32 88, i32 1, metadata !6, i32 10} ; [ DW_TAG_lexical_block ]
!198 = metadata !{i32 786688, metadata !197, metadata !"i", metadata !6, i32 89, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!199 = metadata !{i32 89, i32 35, metadata !197, null}
!200 = metadata !{i32 786688, metadata !197, metadata !"j", metadata !6, i32 90, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!201 = metadata !{i32 90, i32 35, metadata !197, null}
!202 = metadata !{i32 91, i32 4, metadata !197, null}
!203 = metadata !{i32 94, i32 4, metadata !197, null}
!204 = metadata !{i32 95, i32 7, metadata !205, null}
!205 = metadata !{i32 786443, metadata !197, i32 94, i32 33, metadata !6, i32 11} ; [ DW_TAG_lexical_block ]
!206 = metadata !{i32 96, i32 7, metadata !205, null}
!207 = metadata !{i32 97, i32 10, metadata !205, null}
!208 = metadata !{i32 98, i32 4, metadata !205, null}
!209 = metadata !{i32 100, i32 7, metadata !210, null}
!210 = metadata !{i32 786443, metadata !197, i32 99, i32 9, metadata !6, i32 12} ; [ DW_TAG_lexical_block ]
!211 = metadata !{i32 101, i32 7, metadata !210, null}
!212 = metadata !{i32 102, i32 10, metadata !210, null}
!213 = metadata !{i32 103, i32 7, metadata !210, null}
!214 = metadata !{i32 107, i32 6, metadata !215, null}
!215 = metadata !{i32 786443, metadata !210, i32 107, i32 2, metadata !6, i32 13} ; [ DW_TAG_lexical_block ]
!216 = metadata !{i32 107, i32 33, metadata !217, null}
!217 = metadata !{i32 786443, metadata !215, i32 107, i32 32, metadata !6, i32 14} ; [ DW_TAG_lexical_block ]
!218 = metadata !{i32 108, i32 6, metadata !217, null}
!219 = metadata !{i32 109, i32 5, metadata !217, null}
!220 = metadata !{i32 107, i32 21, metadata !215, null}
!221 = metadata !{i32 113, i32 4, metadata !197, null}
!222 = metadata !{i32 113, i32 70, metadata !197, null}
!223 = metadata !{i32 113, i32 94, metadata !197, null}
!224 = metadata !{i32 114, i32 4, metadata !197, null}
!225 = metadata !{i32 115, i32 4, metadata !197, null}
!226 = metadata !{i32 116, i32 4, metadata !197, null}
!227 = metadata !{i32 117, i32 4, metadata !197, null}
!228 = metadata !{i32 118, i32 4, metadata !197, null}
!229 = metadata !{i32 119, i32 4, metadata !197, null}
!230 = metadata !{i32 120, i32 4, metadata !197, null}
!231 = metadata !{i32 121, i32 4, metadata !197, null}
!232 = metadata !{i32 122, i32 4, metadata !197, null}
!233 = metadata !{i32 127, i32 9, metadata !234, null}
!234 = metadata !{i32 786443, metadata !197, i32 127, i32 4, metadata !6, i32 15} ; [ DW_TAG_lexical_block ]
!235 = metadata !{i32 127, i32 27, metadata !236, null}
!236 = metadata !{i32 786443, metadata !234, i32 127, i32 26, metadata !6, i32 16} ; [ DW_TAG_lexical_block ]
!237 = metadata !{i32 128, i32 4, metadata !236, null}
!238 = metadata !{i32 129, i32 4, metadata !236, null}
!239 = metadata !{i32 130, i32 4, metadata !236, null}
!240 = metadata !{i32 131, i32 4, metadata !236, null}
!241 = metadata !{i32 132, i32 4, metadata !236, null}
!242 = metadata !{i32 133, i32 4, metadata !236, null}
!243 = metadata !{i32 134, i32 4, metadata !236, null}
!244 = metadata !{i32 135, i32 4, metadata !236, null}
!245 = metadata !{i32 136, i32 4, metadata !236, null}
!246 = metadata !{i32 127, i32 21, metadata !234, null}
!247 = metadata !{i32 137, i32 1, metadata !197, null}
!248 = metadata !{i32 786689, metadata !39, metadata !"data", metadata !6, i32 16777356, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!249 = metadata !{i32 140, i32 47, metadata !39, null}
!250 = metadata !{i32 786689, metadata !39, metadata !"hash", metadata !6, i32 33554572, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!251 = metadata !{i32 140, i32 87, metadata !39, null}
!252 = metadata !{i32 140, i32 98, metadata !253, null}
!253 = metadata !{i32 786443, metadata !39, i32 140, i32 97, metadata !6, i32 17} ; [ DW_TAG_lexical_block ]
!254 = metadata !{i32 140, i32 130, metadata !253, null}
!255 = metadata !{i32 786688, metadata !253, metadata !"len", metadata !6, i32 141, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!256 = metadata !{i32 141, i32 33, metadata !253, null}
!257 = metadata !{i32 141, i32 41, metadata !253, null}
!258 = metadata !{i32 786688, metadata !253, metadata !"i", metadata !6, i32 142, metadata !259, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!259 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!260 = metadata !{i32 142, i32 6, metadata !253, null}
!261 = metadata !{i32 144, i32 1, metadata !253, null}
!262 = metadata !{i32 145, i32 2, metadata !253, null}
!263 = metadata !{i32 786688, metadata !253, metadata !"ctx_temp", metadata !6, i32 146, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!264 = metadata !{i32 146, i32 14, metadata !253, null}
!265 = metadata !{i32 146, i32 29, metadata !253, null}
!266 = metadata !{i32 150, i32 2, metadata !253, null}
!267 = metadata !{i32 153, i32 2, metadata !253, null}
!268 = metadata !{i32 154, i32 1, metadata !253, null}
