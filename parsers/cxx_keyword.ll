; ModuleID = 'cxx/cxx_keyword.c'
source_filename = "cxx/cxx_keyword.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-ios11.0.0"

%struct._CXXKeywordDescriptor = type { i8*, i32, i32 }

@g_aCXXKeywordTable = internal global [95 x %struct._CXXKeywordDescriptor] [%struct._CXXKeywordDescriptor { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 7, i32 0 }, %struct._CXXKeywordDescriptor { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 4, i32 4 }, %struct._CXXKeywordDescriptor { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 7, i32 4 }, %struct._CXXKeywordDescriptor { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i32 4, i32 4 }, %struct._CXXKeywordDescriptor { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 2, i32 0 }, %struct._CXXKeywordDescriptor { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i32 7, i32 4 }, %struct._CXXKeywordDescriptor { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0), i32 4, i32 4 }, %struct._CXXKeywordDescriptor { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i32 4, i32 4 }, %struct._CXXKeywordDescriptor { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i32 4, i32 4 }, %struct._CXXKeywordDescriptor { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i32 7, i32 4 }, %struct._CXXKeywordDescriptor { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), i32 7, i32 4 }, %struct._CXXKeywordDescriptor { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0), i32 4, i32 4 }, %struct._CXXKeywordDescriptor { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i32 4, i32 4 }, %struct._CXXKeywordDescriptor { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), i32 7, i32 4 }, %struct._CXXKeywordDescriptor { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0), i32 7, i32 4 }, %struct._CXXKeywordDescriptor { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), i32 4, i32 4 }, %struct._CXXKeywordDescriptor { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), i32 7, i32 0 }, %struct._CXXKeywordDescriptor { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i32 0, i32 0), i32 2, i32 0 }, %struct._CXXKeywordDescriptor { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), i32 2, i32 0 }, %struct._CXXKeywordDescriptor { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0), i32 2, i32 0 }, %struct._CXXKeywordDescriptor { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), i32 7, i32 0 }, %struct._CXXKeywordDescriptor { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), i32 2, i32 1 }, %struct._CXXKeywordDescriptor { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i32 7, i32 1 }, %struct._CXXKeywordDescriptor { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i32 7, i32 0 }, %struct._CXXKeywordDescriptor { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), i32 7, i32 0 }, %struct._CXXKeywordDescriptor { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i32 2, i32 0 }, %struct._CXXKeywordDescriptor { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0), i32 7, i32 1 }, %struct._CXXKeywordDescriptor { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0), i32 2, i32 1 }, %struct._CXXKeywordDescriptor { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0), i32 2, i32 1 }, %struct._CXXKeywordDescriptor { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), i32 2, i32 3 }, %struct._CXXKeywordDescriptor { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i32 0, i32 0), i32 2, i32 0 }, %struct._CXXKeywordDescriptor { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), i32 7, i32 1 }, %struct._CXXKeywordDescriptor { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i32 0, i32 0), i32 2, i32 4 }, %struct._CXXKeywordDescriptor { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i32 0, i32 0), i32 2, i32 0 }, %struct._CXXKeywordDescriptor { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i32 0, i32 0), i32 7, i32 0 }, %struct._CXXKeywordDescriptor { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i32 0, i32 0), i32 2, i32 0 }, %struct._CXXKeywordDescriptor { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i32 0, i32 0), i32 7, i32 0 }, %struct._CXXKeywordDescriptor { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0), i32 2, i32 0 }, %struct._CXXKeywordDescriptor { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i32 0, i32 0), i32 7, i32 0 }, %struct._CXXKeywordDescriptor { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i32 0, i32 0), i32 7, i32 1 }, %struct._CXXKeywordDescriptor { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.40, i32 0, i32 0), i32 2, i32 0 }, %struct._CXXKeywordDescriptor { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i32 0, i32 0), i32 7, i32 0 }, %struct._CXXKeywordDescriptor { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i32 0, i32 0), i32 7, i32 3 }, %struct._CXXKeywordDescriptor { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.43, i32 0, i32 0), i32 2, i32 0 }, %struct._CXXKeywordDescriptor { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i32 0, i32 0), i32 2, i32 0 }, %struct._CXXKeywordDescriptor { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i32 0, i32 0), i32 7, i32 0 }, %struct._CXXKeywordDescriptor { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i32 0, i32 0), i32 7, i32 8 }, %struct._CXXKeywordDescriptor { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.47, i32 0, i32 0), i32 2, i32 0 }, %struct._CXXKeywordDescriptor { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i32 0, i32 0), i32 7, i32 1 }, %struct._CXXKeywordDescriptor { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.49, i32 0, i32 0), i32 7, i32 0 }, %struct._CXXKeywordDescriptor { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i32 0, i32 0), i32 2, i32 4 }, %struct._CXXKeywordDescriptor { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i32 0, i32 0), i32 7, i32 0 }, %struct._CXXKeywordDescriptor { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.52, i32 0, i32 0), i32 7, i32 0 }, %struct._CXXKeywordDescriptor { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i32 0, i32 0), i32 7, i32 4 }, %struct._CXXKeywordDescriptor { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.54, i32 0, i32 0), i32 7, i32 1 }, %struct._CXXKeywordDescriptor { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i32 0, i32 0), i32 7, i32 1 }, %struct._CXXKeywordDescriptor { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.56, i32 0, i32 0), i32 2, i32 0 }, %struct._CXXKeywordDescriptor { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.57, i32 0, i32 0), i32 2, i32 0 }, %struct._CXXKeywordDescriptor { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.58, i32 0, i32 0), i32 2, i32 0 }, %struct._CXXKeywordDescriptor { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.59, i32 0, i32 0), i32 2, i32 0 }, %struct._CXXKeywordDescriptor { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.60, i32 0, i32 0), i32 2, i32 8 }, %struct._CXXKeywordDescriptor { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.61, i32 0, i32 0), i32 2, i32 0 }, %struct._CXXKeywordDescriptor { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.62, i32 0, i32 0), i32 2, i32 0 }, %struct._CXXKeywordDescriptor { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.63, i32 0, i32 0), i32 2, i32 0 }, %struct._CXXKeywordDescriptor { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.64, i32 0, i32 0), i32 2, i32 0 }, %struct._CXXKeywordDescriptor { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.65, i32 0, i32 0), i32 7, i32 0 }, %struct._CXXKeywordDescriptor { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.66, i32 0, i32 0), i32 2, i32 0 }, %struct._CXXKeywordDescriptor { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.67, i32 0, i32 0), i32 2, i32 0 }, %struct._CXXKeywordDescriptor { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.68, i32 0, i32 0), i32 7, i32 4 }, %struct._CXXKeywordDescriptor { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.69, i32 0, i32 0), i32 7, i32 0 }, %struct._CXXKeywordDescriptor { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.70, i32 0, i32 0), i32 7, i32 1 }, %struct._CXXKeywordDescriptor { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i32 0, i32 0), i32 7, i32 1 }, %struct._CXXKeywordDescriptor { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.72, i32 0, i32 0), i32 7, i32 0 }, %struct._CXXKeywordDescriptor { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.73, i32 0, i32 0), i32 7, i32 4 }, %struct._CXXKeywordDescriptor { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.74, i32 0, i32 0), i32 2, i32 0 }, %struct._CXXKeywordDescriptor { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.75, i32 0, i32 0), i32 2, i32 0 }, %struct._CXXKeywordDescriptor { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.76, i32 0, i32 0), i32 7, i32 3 }, %struct._CXXKeywordDescriptor { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.77, i32 0, i32 0), i32 7, i32 0 }, %struct._CXXKeywordDescriptor { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.78, i32 0, i32 0), i32 2, i32 0 }, %struct._CXXKeywordDescriptor { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.79, i32 0, i32 0), i32 2, i32 0 }, %struct._CXXKeywordDescriptor { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.80, i32 0, i32 0), i32 2, i32 0 }, %struct._CXXKeywordDescriptor { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.81, i32 0, i32 0), i32 2, i32 0 }, %struct._CXXKeywordDescriptor { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.82, i32 0, i32 0), i32 7, i32 8 }, %struct._CXXKeywordDescriptor { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.83, i32 0, i32 0), i32 2, i32 0 }, %struct._CXXKeywordDescriptor { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.84, i32 0, i32 0), i32 7, i32 0 }, %struct._CXXKeywordDescriptor { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.85, i32 0, i32 0), i32 2, i32 0 }, %struct._CXXKeywordDescriptor { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.86, i32 0, i32 0), i32 2, i32 3 }, %struct._CXXKeywordDescriptor { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.87, i32 0, i32 0), i32 7, i32 3 }, %struct._CXXKeywordDescriptor { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.88, i32 0, i32 0), i32 7, i32 1 }, %struct._CXXKeywordDescriptor { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.89, i32 0, i32 0), i32 2, i32 0 }, %struct._CXXKeywordDescriptor { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.90, i32 0, i32 0), i32 2, i32 4 }, %struct._CXXKeywordDescriptor { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.91, i32 0, i32 0), i32 7, i32 1 }, %struct._CXXKeywordDescriptor { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.92, i32 0, i32 0), i32 7, i32 0 }, %struct._CXXKeywordDescriptor { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.93, i32 0, i32 0), i32 2, i32 1 }, %struct._CXXKeywordDescriptor { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.94, i32 0, i32 0), i32 7, i32 0 }], align 8
@.str = private unnamed_addr constant [14 x i8] c"__attribute__\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"__constant__\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"__declspec\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"__device__\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"__fastcall\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"__forceinline\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"__forceinline__\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"__global__\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"__host__\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"__inline\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"__inline__\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"__managed__\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"__noinline__\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"__restrict\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"__restrict__\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"__shared__\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"__stdcall\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"__thiscall\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"alignas\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"alignof\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"asm\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"bool\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"break\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"case\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"catch\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"char\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"char16_t\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"char32_t\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"class\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"concept\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"const\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"constexpr\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"const_cast\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"continue\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"decltype\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"delete\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"do\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@.str.40 = private unnamed_addr constant [13 x i8] c"dynamic_cast\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"else\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"enum\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"explicit\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"export\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"extern\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.47 = private unnamed_addr constant [6 x i8] c"final\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c"for\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"friend\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"goto\00", align 1
@.str.52 = private unnamed_addr constant [3 x i8] c"if\00", align 1
@.str.53 = private unnamed_addr constant [7 x i8] c"inline\00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"long\00", align 1
@.str.56 = private unnamed_addr constant [8 x i8] c"mutable\00", align 1
@.str.57 = private unnamed_addr constant [10 x i8] c"namespace\00", align 1
@.str.58 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@.str.59 = private unnamed_addr constant [9 x i8] c"noexcept\00", align 1
@.str.60 = private unnamed_addr constant [8 x i8] c"nullptr\00", align 1
@.str.61 = private unnamed_addr constant [9 x i8] c"operator\00", align 1
@.str.62 = private unnamed_addr constant [8 x i8] c"private\00", align 1
@.str.63 = private unnamed_addr constant [10 x i8] c"protected\00", align 1
@.str.64 = private unnamed_addr constant [7 x i8] c"public\00", align 1
@.str.65 = private unnamed_addr constant [9 x i8] c"register\00", align 1
@.str.66 = private unnamed_addr constant [17 x i8] c"reinterpret_cast\00", align 1
@.str.67 = private unnamed_addr constant [9 x i8] c"requires\00", align 1
@.str.68 = private unnamed_addr constant [9 x i8] c"restrict\00", align 1
@.str.69 = private unnamed_addr constant [7 x i8] c"return\00", align 1
@.str.70 = private unnamed_addr constant [6 x i8] c"short\00", align 1
@.str.71 = private unnamed_addr constant [7 x i8] c"signed\00", align 1
@.str.72 = private unnamed_addr constant [7 x i8] c"sizeof\00", align 1
@.str.73 = private unnamed_addr constant [7 x i8] c"static\00", align 1
@.str.74 = private unnamed_addr constant [14 x i8] c"static_assert\00", align 1
@.str.75 = private unnamed_addr constant [12 x i8] c"static_cast\00", align 1
@.str.76 = private unnamed_addr constant [7 x i8] c"struct\00", align 1
@.str.77 = private unnamed_addr constant [7 x i8] c"switch\00", align 1
@.str.78 = private unnamed_addr constant [9 x i8] c"template\00", align 1
@.str.79 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@.str.80 = private unnamed_addr constant [13 x i8] c"thread_local\00", align 1
@.str.81 = private unnamed_addr constant [6 x i8] c"throw\00", align 1
@.str.82 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.83 = private unnamed_addr constant [4 x i8] c"try\00", align 1
@.str.84 = private unnamed_addr constant [8 x i8] c"typedef\00", align 1
@.str.85 = private unnamed_addr constant [7 x i8] c"typeid\00", align 1
@.str.86 = private unnamed_addr constant [9 x i8] c"typename\00", align 1
@.str.87 = private unnamed_addr constant [6 x i8] c"union\00", align 1
@.str.88 = private unnamed_addr constant [9 x i8] c"unsigned\00", align 1
@.str.89 = private unnamed_addr constant [6 x i8] c"using\00", align 1
@.str.90 = private unnamed_addr constant [8 x i8] c"virtual\00", align 1
@.str.91 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@.str.92 = private unnamed_addr constant [9 x i8] c"volatile\00", align 1
@.str.93 = private unnamed_addr constant [8 x i8] c"wchar_t\00", align 1
@.str.94 = private unnamed_addr constant [6 x i8] c"while\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @cxxKeywordName(i32 %eKeywordId) #0 {
entry:
  %eKeywordId.addr = alloca i32, align 4
  store i32 %eKeywordId, i32* %eKeywordId.addr, align 4
  %0 = load i32, i32* %eKeywordId.addr, align 4
  %idxprom = zext i32 %0 to i64
  %arrayidx = getelementptr inbounds [95 x %struct._CXXKeywordDescriptor], [95 x %struct._CXXKeywordDescriptor]* @g_aCXXKeywordTable, i64 0, i64 %idxprom
  %szName = getelementptr inbounds %struct._CXXKeywordDescriptor, %struct._CXXKeywordDescriptor* %arrayidx, i32 0, i32 0
  %1 = load i8*, i8** %szName, align 8
  ret i8* %1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @cxxKeywordMayBePartOfTypeName(i32 %eKeywordId) #0 {
entry:
  %eKeywordId.addr = alloca i32, align 4
  store i32 %eKeywordId, i32* %eKeywordId.addr, align 4
  %0 = load i32, i32* %eKeywordId.addr, align 4
  %idxprom = zext i32 %0 to i64
  %arrayidx = getelementptr inbounds [95 x %struct._CXXKeywordDescriptor], [95 x %struct._CXXKeywordDescriptor]* @g_aCXXKeywordTable, i64 0, i64 %idxprom
  %uFlags = getelementptr inbounds %struct._CXXKeywordDescriptor, %struct._CXXKeywordDescriptor* %arrayidx, i32 0, i32 2
  %1 = load i32, i32* %uFlags, align 4
  %and = and i32 %1, 1
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @cxxKeywordIsTypeRefMarker(i32 %eKeywordId) #0 {
entry:
  %eKeywordId.addr = alloca i32, align 4
  store i32 %eKeywordId, i32* %eKeywordId.addr, align 4
  %0 = load i32, i32* %eKeywordId.addr, align 4
  %idxprom = zext i32 %0 to i64
  %arrayidx = getelementptr inbounds [95 x %struct._CXXKeywordDescriptor], [95 x %struct._CXXKeywordDescriptor]* @g_aCXXKeywordTable, i64 0, i64 %idxprom
  %uFlags = getelementptr inbounds %struct._CXXKeywordDescriptor, %struct._CXXKeywordDescriptor* %arrayidx, i32 0, i32 2
  %1 = load i32, i32* %uFlags, align 4
  %and = and i32 %1, 2
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @cxxKeywordIsConstant(i32 %eKeywordId) #0 {
entry:
  %eKeywordId.addr = alloca i32, align 4
  store i32 %eKeywordId, i32* %eKeywordId.addr, align 4
  %0 = load i32, i32* %eKeywordId.addr, align 4
  %idxprom = zext i32 %0 to i64
  %arrayidx = getelementptr inbounds [95 x %struct._CXXKeywordDescriptor], [95 x %struct._CXXKeywordDescriptor]* @g_aCXXKeywordTable, i64 0, i64 %idxprom
  %uFlags = getelementptr inbounds %struct._CXXKeywordDescriptor, %struct._CXXKeywordDescriptor* %arrayidx, i32 0, i32 2
  %1 = load i32, i32* %uFlags, align 4
  %and = and i32 %1, 8
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @cxxKeywordIsCPPSpecific(i32 %eKeywordId) #0 {
entry:
  %eKeywordId.addr = alloca i32, align 4
  store i32 %eKeywordId, i32* %eKeywordId.addr, align 4
  %0 = load i32, i32* %eKeywordId.addr, align 4
  %idxprom = zext i32 %0 to i64
  %arrayidx = getelementptr inbounds [95 x %struct._CXXKeywordDescriptor], [95 x %struct._CXXKeywordDescriptor]* @g_aCXXKeywordTable, i64 0, i64 %idxprom
  %uLanguages = getelementptr inbounds %struct._CXXKeywordDescriptor, %struct._CXXKeywordDescriptor* %arrayidx, i32 0, i32 1
  %1 = load i32, i32* %uLanguages, align 8
  %cmp = icmp eq i32 %1, 2
  ret i1 %cmp
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @cxxKeywordExcludeFromTypeNames(i32 %eKeywordId) #0 {
entry:
  %eKeywordId.addr = alloca i32, align 4
  store i32 %eKeywordId, i32* %eKeywordId.addr, align 4
  %0 = load i32, i32* %eKeywordId.addr, align 4
  %idxprom = zext i32 %0 to i64
  %arrayidx = getelementptr inbounds [95 x %struct._CXXKeywordDescriptor], [95 x %struct._CXXKeywordDescriptor]* @g_aCXXKeywordTable, i64 0, i64 %idxprom
  %uFlags = getelementptr inbounds %struct._CXXKeywordDescriptor, %struct._CXXKeywordDescriptor* %arrayidx, i32 0, i32 2
  %1 = load i32, i32* %uFlags, align 4
  %and = and i32 %1, 4
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @cxxKeywordIsDisabled(i32 %eKeywordId) #0 {
entry:
  %eKeywordId.addr = alloca i32, align 4
  store i32 %eKeywordId, i32* %eKeywordId.addr, align 4
  %0 = load i32, i32* %eKeywordId.addr, align 4
  %idxprom = zext i32 %0 to i64
  %arrayidx = getelementptr inbounds [95 x %struct._CXXKeywordDescriptor], [95 x %struct._CXXKeywordDescriptor]* @g_aCXXKeywordTable, i64 0, i64 %idxprom
  %uFlags = getelementptr inbounds %struct._CXXKeywordDescriptor, %struct._CXXKeywordDescriptor* %arrayidx, i32 0, i32 2
  %1 = load i32, i32* %uFlags, align 4
  %and = and i32 %1, 16
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @cxxKeywordEnablePublicProtectedPrivate(i1 zeroext %bEnableIt) #0 {
entry:
  %retval = alloca i1, align 1
  %bEnableIt.addr = alloca i8, align 1
  %bEnabledNow = alloca i8, align 1
  %frombool = zext i1 %bEnableIt to i8
  store i8 %frombool, i8* %bEnableIt.addr, align 1
  %0 = load i32, i32* getelementptr inbounds ([95 x %struct._CXXKeywordDescriptor], [95 x %struct._CXXKeywordDescriptor]* @g_aCXXKeywordTable, i64 0, i64 64, i32 2), align 4
  %and = and i32 %0, 16
  %tobool = icmp ne i32 %and, 0
  %lnot = xor i1 %tobool, true
  %frombool1 = zext i1 %lnot to i8
  store i8 %frombool1, i8* %bEnabledNow, align 1
  %1 = load i8, i8* %bEnabledNow, align 1
  %tobool2 = trunc i8 %1 to i1
  %conv = zext i1 %tobool2 to i32
  %2 = load i8, i8* %bEnableIt.addr, align 1
  %tobool3 = trunc i8 %2 to i1
  %conv4 = zext i1 %tobool3 to i32
  %cmp = icmp eq i32 %conv, %conv4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i8, i8* %bEnabledNow, align 1
  %tobool6 = trunc i8 %3 to i1
  store i1 %tobool6, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i8, i8* %bEnableIt.addr, align 1
  %tobool7 = trunc i8 %4 to i1
  br i1 %tobool7, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then8
  br label %do.end

do.end:                                           ; preds = %do.body
  %5 = load i32, i32* getelementptr inbounds ([95 x %struct._CXXKeywordDescriptor], [95 x %struct._CXXKeywordDescriptor]* @g_aCXXKeywordTable, i64 0, i64 64, i32 2), align 4
  %and9 = and i32 %5, -17
  store i32 %and9, i32* getelementptr inbounds ([95 x %struct._CXXKeywordDescriptor], [95 x %struct._CXXKeywordDescriptor]* @g_aCXXKeywordTable, i64 0, i64 64, i32 2), align 4
  %6 = load i32, i32* getelementptr inbounds ([95 x %struct._CXXKeywordDescriptor], [95 x %struct._CXXKeywordDescriptor]* @g_aCXXKeywordTable, i64 0, i64 63, i32 2), align 4
  %and10 = and i32 %6, -17
  store i32 %and10, i32* getelementptr inbounds ([95 x %struct._CXXKeywordDescriptor], [95 x %struct._CXXKeywordDescriptor]* @g_aCXXKeywordTable, i64 0, i64 63, i32 2), align 4
  %7 = load i32, i32* getelementptr inbounds ([95 x %struct._CXXKeywordDescriptor], [95 x %struct._CXXKeywordDescriptor]* @g_aCXXKeywordTable, i64 0, i64 62, i32 2), align 4
  %and11 = and i32 %7, -17
  store i32 %and11, i32* getelementptr inbounds ([95 x %struct._CXXKeywordDescriptor], [95 x %struct._CXXKeywordDescriptor]* @g_aCXXKeywordTable, i64 0, i64 62, i32 2), align 4
  br label %if.end16

if.else:                                          ; preds = %if.end
  br label %do.body12

do.body12:                                        ; preds = %if.else
  br label %do.end13

do.end13:                                         ; preds = %do.body12
  %8 = load i32, i32* getelementptr inbounds ([95 x %struct._CXXKeywordDescriptor], [95 x %struct._CXXKeywordDescriptor]* @g_aCXXKeywordTable, i64 0, i64 64, i32 2), align 4
  %or = or i32 %8, 16
  store i32 %or, i32* getelementptr inbounds ([95 x %struct._CXXKeywordDescriptor], [95 x %struct._CXXKeywordDescriptor]* @g_aCXXKeywordTable, i64 0, i64 64, i32 2), align 4
  %9 = load i32, i32* getelementptr inbounds ([95 x %struct._CXXKeywordDescriptor], [95 x %struct._CXXKeywordDescriptor]* @g_aCXXKeywordTable, i64 0, i64 63, i32 2), align 4
  %or14 = or i32 %9, 16
  store i32 %or14, i32* getelementptr inbounds ([95 x %struct._CXXKeywordDescriptor], [95 x %struct._CXXKeywordDescriptor]* @g_aCXXKeywordTable, i64 0, i64 63, i32 2), align 4
  %10 = load i32, i32* getelementptr inbounds ([95 x %struct._CXXKeywordDescriptor], [95 x %struct._CXXKeywordDescriptor]* @g_aCXXKeywordTable, i64 0, i64 62, i32 2), align 4
  %or15 = or i32 %10, 16
  store i32 %or15, i32* getelementptr inbounds ([95 x %struct._CXXKeywordDescriptor], [95 x %struct._CXXKeywordDescriptor]* @g_aCXXKeywordTable, i64 0, i64 62, i32 2), align 4
  br label %if.end16

if.end16:                                         ; preds = %do.end13, %do.end
  %11 = load i8, i8* %bEnabledNow, align 1
  %tobool17 = trunc i8 %11 to i1
  store i1 %tobool17, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end16, %if.then
  %12 = load i1, i1* %retval, align 1
  ret i1 %12
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @cxxKeywordEnableFinal(i1 zeroext %bEnableIt) #0 {
entry:
  %bEnableIt.addr = alloca i8, align 1
  %frombool = zext i1 %bEnableIt to i8
  store i8 %frombool, i8* %bEnableIt.addr, align 1
  %0 = load i8, i8* %bEnableIt.addr, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* getelementptr inbounds ([95 x %struct._CXXKeywordDescriptor], [95 x %struct._CXXKeywordDescriptor]* @g_aCXXKeywordTable, i64 0, i64 47, i32 2), align 4
  %and = and i32 %1, -17
  store i32 %and, i32* getelementptr inbounds ([95 x %struct._CXXKeywordDescriptor], [95 x %struct._CXXKeywordDescriptor]* @g_aCXXKeywordTable, i64 0, i64 47, i32 2), align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load i32, i32* getelementptr inbounds ([95 x %struct._CXXKeywordDescriptor], [95 x %struct._CXXKeywordDescriptor]* @g_aCXXKeywordTable, i64 0, i64 47, i32 2), align 4
  %or = or i32 %2, 16
  store i32 %or, i32* getelementptr inbounds ([95 x %struct._CXXKeywordDescriptor], [95 x %struct._CXXKeywordDescriptor]* @g_aCXXKeywordTable, i64 0, i64 47, i32 2), align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @cxxBuildKeywordHash(i32 %eLangType, i32 %uLanguage) #0 {
entry:
  %eLangType.addr = alloca i32, align 4
  %uLanguage.addr = alloca i32, align 4
  %count = alloca i64, align 8
  %i = alloca i64, align 8
  %p = alloca %struct._CXXKeywordDescriptor*, align 8
  store i32 %eLangType, i32* %eLangType.addr, align 4
  store i32 %uLanguage, i32* %uLanguage.addr, align 4
  store i64 95, i64* %count, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %cmp = icmp ult i64 %0, 95
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i64, i64* %i, align 8
  %add.ptr = getelementptr inbounds %struct._CXXKeywordDescriptor, %struct._CXXKeywordDescriptor* getelementptr inbounds ([95 x %struct._CXXKeywordDescriptor], [95 x %struct._CXXKeywordDescriptor]* @g_aCXXKeywordTable, i64 0, i64 0), i64 %1
  store %struct._CXXKeywordDescriptor* %add.ptr, %struct._CXXKeywordDescriptor** %p, align 8
  %2 = load %struct._CXXKeywordDescriptor*, %struct._CXXKeywordDescriptor** %p, align 8
  %uLanguages = getelementptr inbounds %struct._CXXKeywordDescriptor, %struct._CXXKeywordDescriptor* %2, i32 0, i32 1
  %3 = load i32, i32* %uLanguages, align 8
  %4 = load i32, i32* %uLanguage.addr, align 4
  %and = and i32 %3, %4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load %struct._CXXKeywordDescriptor*, %struct._CXXKeywordDescriptor** %p, align 8
  %szName = getelementptr inbounds %struct._CXXKeywordDescriptor, %struct._CXXKeywordDescriptor* %5, i32 0, i32 0
  %6 = load i8*, i8** %szName, align 8
  %7 = load i32, i32* %eLangType.addr, align 4
  %8 = load i64, i64* %i, align 8
  %conv = trunc i64 %8 to i32
  call void @addKeyword(i8* %6, i32 %7, i32 %conv)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i64, i64* %i, align 8
  %inc = add i64 %9, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @addKeyword(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 10.0.0 (https://github.com/holzschu/clang.git 0cfc630fbdb62e96720b611a57123ef3eb13e297) (https://github.com/holzschu/llvm.git 0d8a71e39b28502c24718f7e74b5acbcfe36dfe0)"}
