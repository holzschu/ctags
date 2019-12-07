; ModuleID = 'cxx/cxx_tag.c'
source_filename = "cxx/cxx_tag.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-ios11.0.0"

%struct._CXXParserState = type { i32, i32, i32, i32, i32, %struct.sKindDefinition*, i32, %struct.sFieldDefinition*, i32, %struct._CXXTokenChain*, %struct._CXXTokenChain*, %struct._CXXToken*, i32, i32, i8 }
%struct.sKindDefinition = type { i8, i8, i8*, i8*, i8, i32, %struct.sRoleDesc*, %struct.sScopeSeparator*, i32, i32, i32, %struct.sKindDefinition*, %struct.sKindDefinition* }
%struct.sRoleDesc = type { i8, i8*, i8* }
%struct.sScopeSeparator = type { i32, i8* }
%struct.sFieldDefinition = type { i8, i8*, i8*, i8, [5 x i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)*], i1 (%struct.sTagEntryInfo*)*, i32, i32 }
%struct.sTagEntryInfo = type { i8, i64, i8*, i32, %struct._MIOPos, i32, i8*, i8*, i32, [2 x i8], i8*, %struct.anon, i32, [5 x %struct.sTagField], %struct.sPtrArray*, i32, i8*, i64 }
%struct._MIOPos = type { i32, %union.anon }
%union.anon = type { i64 }
%struct.anon = type { i8*, i8*, i8*, i8*, i32, i32, i8*, i32, i8*, [2 x i8*], i32, i64 }
%struct.sTagField = type { i32, i8*, i8 }
%struct.sPtrArray = type opaque
%struct.sVString = type { i64, i64, i8* }
%struct._CXXTokenChain = type { %struct._CXXToken*, %struct._CXXToken*, i32 }
%struct._CXXToken = type { i32, %struct.sVString*, i32, %struct._CXXTokenChain*, i8, i32, %struct._MIOPos, %struct._CXXToken*, %struct._CXXToken*, i8, i8 }

@g_cxx = external global %struct._CXXParserState, align 8
@g_aCXXCKinds = internal global [15 x %struct.sKindDefinition] [%struct.sKindDefinition { i8 1, i8 100, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i32 0, i32 0), i8 0, i32 1, %struct.sRoleDesc* getelementptr inbounds ([1 x %struct.sRoleDesc], [1 x %struct.sRoleDesc]* @CMacroRoles, i32 0, i32 0), %struct.sScopeSeparator* null, i32 0, i32 0, i32 -2, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 101, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.22, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 -2, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 102, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 -2, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 103, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 -2, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 104, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.28, i32 0, i32 0), i8 1, i32 2, %struct.sRoleDesc* getelementptr inbounds ([2 x %struct.sRoleDesc], [2 x %struct.sRoleDesc]* @CHeaderRoles, i32 0, i32 0), %struct.sScopeSeparator* null, i32 0, i32 0, i32 -2, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 0, i8 108, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.30, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 -2, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 109, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.32, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 -2, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 0, i8 112, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.34, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 -2, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 115, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.36, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 -2, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 116, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.38, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 -2, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 117, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 -2, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 118, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.42, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 -2, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 0, i8 120, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.44, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 -2, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 0, i8 122, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.46, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 -2, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 0, i8 76, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.48, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 -2, %struct.sKindDefinition* null, %struct.sKindDefinition* null }], align 8
@g_aCXXCFields = internal global [1 x %struct.sFieldDefinition] [%struct.sFieldDefinition { i8 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.55, i32 0, i32 0), i8 0, [5 x i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)*] zeroinitializer, i1 (%struct.sTagEntryInfo*)* null, i32 0, i32 0 }], align 8
@g_aCXXCPPKinds = internal global [20 x %struct.sKindDefinition] [%struct.sKindDefinition { i8 1, i8 100, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i32 0, i32 0), i8 0, i32 1, %struct.sRoleDesc* getelementptr inbounds ([1 x %struct.sRoleDesc], [1 x %struct.sRoleDesc]* @CXXMacroRoles, i32 0, i32 0), %struct.sScopeSeparator* null, i32 0, i32 0, i32 -1, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 101, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.22, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 -1, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 102, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 -1, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 103, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 -1, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 104, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.28, i32 0, i32 0), i8 1, i32 2, %struct.sRoleDesc* getelementptr inbounds ([2 x %struct.sRoleDesc], [2 x %struct.sRoleDesc]* @CXXHeaderRoles, i32 0, i32 0), %struct.sScopeSeparator* null, i32 0, i32 0, i32 -1, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 0, i8 108, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.30, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 -1, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 109, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.56, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 -1, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 0, i8 112, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.34, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 -1, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 115, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.36, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 -1, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 116, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.38, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 -1, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 117, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 -1, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 118, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.42, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 -1, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 0, i8 120, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.44, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 -1, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 0, i8 122, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.46, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 -1, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 0, i8 76, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.48, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 -1, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 99, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.58, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 110, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.60, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 0, i8 65, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.62, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 0, i8 78, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.64, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 0, i8 85, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.66, i32 0, i32 0), i8 1, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }], align 8
@g_aCXXCPPFields = internal global [4 x %struct.sFieldDefinition] [%struct.sFieldDefinition { i8 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.55, i32 0, i32 0), i8 0, [5 x i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)*] zeroinitializer, i1 (%struct.sTagEntryInfo*)* null, i32 0, i32 0 }, %struct.sFieldDefinition { i8 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.68, i32 0, i32 0), i8 0, [5 x i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)*] zeroinitializer, i1 (%struct.sTagEntryInfo*)* null, i32 0, i32 0 }, %struct.sFieldDefinition { i8 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.70, i32 0, i32 0), i8 0, [5 x i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)*] zeroinitializer, i1 (%struct.sTagEntryInfo*)* null, i32 0, i32 0 }, %struct.sFieldDefinition { i8 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.71, i32 0, i32 0), i8 1, [5 x i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)*] zeroinitializer, i1 (%struct.sTagEntryInfo*)* null, i32 0, i32 0 }], align 8
@g_aCXXCUDAKinds = internal global [15 x %struct.sKindDefinition] [%struct.sKindDefinition { i8 1, i8 100, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i32 0, i32 0), i8 0, i32 1, %struct.sRoleDesc* getelementptr inbounds ([1 x %struct.sRoleDesc], [1 x %struct.sRoleDesc]* @CUDAMacroRoles, i32 0, i32 0), %struct.sScopeSeparator* null, i32 0, i32 0, i32 -2, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 101, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.22, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 -2, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 102, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 -2, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 103, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 -2, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 104, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.28, i32 0, i32 0), i8 1, i32 2, %struct.sRoleDesc* getelementptr inbounds ([2 x %struct.sRoleDesc], [2 x %struct.sRoleDesc]* @CUDAHeaderRoles, i32 0, i32 0), %struct.sScopeSeparator* null, i32 0, i32 0, i32 -2, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 0, i8 108, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.30, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 -2, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 109, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.32, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 -2, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 0, i8 112, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.34, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 -2, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 115, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.36, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 -2, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 116, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.38, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 -2, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 117, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 -2, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 118, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.42, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 -2, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 0, i8 120, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.44, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 -2, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 0, i8 122, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.46, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 -2, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 0, i8 76, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.48, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 -2, %struct.sKindDefinition* null, %struct.sKindDefinition* null }], align 8
@g_aCXXCUDAFields = internal global [1 x %struct.sFieldDefinition] [%struct.sFieldDefinition { i8 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.55, i32 0, i32 0), i8 0, [5 x i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)*] zeroinitializer, i1 (%struct.sTagEntryInfo*)* null, i32 0, i32 0 }], align 8
@g_oCXXTag = internal global %struct.sTagEntryInfo zeroinitializer, align 8
@g_aCXXAccessStrings = internal global [4 x i8*] [i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i32 0, i32 0)], align 8
@.str = private unnamed_addr constant [6 x i8] c"const\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"delete\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"explicit\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"extern\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"final\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"inline\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"mutable\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"override\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"pure\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"scopespecialization\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"static\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"specialization\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"virtual\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"volatile\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"deprecated\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"scopedenum\00", align 1
@cxxTagCheckAndSetTypeField.szTypename = internal global i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), align 8
@.str.17 = private unnamed_addr constant [9 x i8] c"typename\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"::\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"macro\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"macro definitions\00", align 1
@CMacroRoles = internal global [1 x %struct.sRoleDesc] [%struct.sRoleDesc { i8 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.50, i32 0, i32 0) }], align 8
@.str.21 = private unnamed_addr constant [11 x i8] c"enumerator\00", align 1
@.str.22 = private unnamed_addr constant [43 x i8] c"enumerators (values inside an enumeration)\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"function\00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"function definitions\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"enum\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"enumeration names\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"header\00", align 1
@.str.28 = private unnamed_addr constant [22 x i8] c"included header files\00", align 1
@CHeaderRoles = internal global [2 x %struct.sRoleDesc] [%struct.sRoleDesc { i8 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.52, i32 0, i32 0) }, %struct.sRoleDesc { i8 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.53, i32 0, i32 0) }], align 8
@.str.29 = private unnamed_addr constant [6 x i8] c"local\00", align 1
@.str.30 = private unnamed_addr constant [16 x i8] c"local variables\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"member\00", align 1
@.str.32 = private unnamed_addr constant [26 x i8] c"struct, and union members\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"prototype\00", align 1
@.str.34 = private unnamed_addr constant [20 x i8] c"function prototypes\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"struct\00", align 1
@.str.36 = private unnamed_addr constant [16 x i8] c"structure names\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"typedef\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"typedefs\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"union\00", align 1
@.str.40 = private unnamed_addr constant [12 x i8] c"union names\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"variable\00", align 1
@.str.42 = private unnamed_addr constant [21 x i8] c"variable definitions\00", align 1
@.str.43 = private unnamed_addr constant [10 x i8] c"externvar\00", align 1
@.str.44 = private unnamed_addr constant [43 x i8] c"external and forward variable declarations\00", align 1
@.str.45 = private unnamed_addr constant [10 x i8] c"parameter\00", align 1
@.str.46 = private unnamed_addr constant [48 x i8] c"function parameters inside function definitions\00", align 1
@.str.47 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.48 = private unnamed_addr constant [12 x i8] c"goto labels\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"undef\00", align 1
@.str.50 = private unnamed_addr constant [10 x i8] c"undefined\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"system\00", align 1
@.str.52 = private unnamed_addr constant [14 x i8] c"system header\00", align 1
@.str.53 = private unnamed_addr constant [13 x i8] c"local header\00", align 1
@.str.54 = private unnamed_addr constant [11 x i8] c"properties\00", align 1
@.str.55 = private unnamed_addr constant [41 x i8] c"properties (static, inline, mutable,...)\00", align 1
@CXXMacroRoles = internal global [1 x %struct.sRoleDesc] [%struct.sRoleDesc { i8 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.50, i32 0, i32 0) }], align 8
@CXXHeaderRoles = internal global [2 x %struct.sRoleDesc] [%struct.sRoleDesc { i8 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.52, i32 0, i32 0) }, %struct.sRoleDesc { i8 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.53, i32 0, i32 0) }], align 8
@.str.56 = private unnamed_addr constant [33 x i8] c"class, struct, and union members\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"class\00", align 1
@.str.58 = private unnamed_addr constant [8 x i8] c"classes\00", align 1
@.str.59 = private unnamed_addr constant [10 x i8] c"namespace\00", align 1
@.str.60 = private unnamed_addr constant [11 x i8] c"namespaces\00", align 1
@.str.61 = private unnamed_addr constant [6 x i8] c"alias\00", align 1
@.str.62 = private unnamed_addr constant [18 x i8] c"namespace aliases\00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.64 = private unnamed_addr constant [39 x i8] c"names imported via using scope::symbol\00", align 1
@.str.65 = private unnamed_addr constant [6 x i8] c"using\00", align 1
@.str.66 = private unnamed_addr constant [27 x i8] c"using namespace statements\00", align 1
@.str.67 = private unnamed_addr constant [9 x i8] c"template\00", align 1
@.str.68 = private unnamed_addr constant [20 x i8] c"template parameters\00", align 1
@.str.69 = private unnamed_addr constant [9 x i8] c"captures\00", align 1
@.str.70 = private unnamed_addr constant [20 x i8] c"lambda capture list\00", align 1
@.str.71 = private unnamed_addr constant [14 x i8] c"aliased names\00", align 1
@CUDAMacroRoles = internal global [1 x %struct.sRoleDesc] [%struct.sRoleDesc { i8 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.50, i32 0, i32 0) }], align 8
@CUDAHeaderRoles = internal global [2 x %struct.sRoleDesc] [%struct.sRoleDesc { i8 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.52, i32 0, i32 0) }, %struct.sRoleDesc { i8 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.53, i32 0, i32 0) }], align 8
@.str.72 = private unnamed_addr constant [7 x i8] c"public\00", align 1
@.str.73 = private unnamed_addr constant [8 x i8] c"private\00", align 1
@.str.74 = private unnamed_addr constant [10 x i8] c"protected\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @cxxTagInitForLanguage(i32 %eLangType) #0 {
entry:
  %eLangType.addr = alloca i32, align 4
  store i32 %eLangType, i32* %eLangType.addr, align 4
  %0 = load i32, i32* %eLangType.addr, align 4
  store i32 %0, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 1), align 4
  %1 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 1), align 4
  %2 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 3), align 4
  %cmp = icmp eq i32 %1, %2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 0), align 8
  store %struct.sKindDefinition* getelementptr inbounds ([15 x %struct.sKindDefinition], [15 x %struct.sKindDefinition]* @g_aCXXCKinds, i64 0, i64 0), %struct.sKindDefinition** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 5), align 8
  store i32 15, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 6), align 8
  store %struct.sFieldDefinition* getelementptr inbounds ([1 x %struct.sFieldDefinition], [1 x %struct.sFieldDefinition]* @g_aCXXCFields, i64 0, i64 0), %struct.sFieldDefinition** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 7), align 8
  store i32 1, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 8), align 8
  br label %if.end8

if.else:                                          ; preds = %entry
  %3 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 1), align 4
  %4 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 2), align 8
  %cmp1 = icmp eq i32 %3, %4
  br i1 %cmp1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.else
  store i32 2, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 0), align 8
  store %struct.sKindDefinition* getelementptr inbounds ([20 x %struct.sKindDefinition], [20 x %struct.sKindDefinition]* @g_aCXXCPPKinds, i64 0, i64 0), %struct.sKindDefinition** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 5), align 8
  store i32 20, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 6), align 8
  store %struct.sFieldDefinition* getelementptr inbounds ([4 x %struct.sFieldDefinition], [4 x %struct.sFieldDefinition]* @g_aCXXCPPFields, i64 0, i64 0), %struct.sFieldDefinition** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 7), align 8
  store i32 4, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 8), align 8
  br label %if.end7

if.else3:                                         ; preds = %if.else
  %5 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 1), align 4
  %6 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 4), align 8
  %cmp4 = icmp eq i32 %5, %6
  br i1 %cmp4, label %if.then5, label %if.else6

if.then5:                                         ; preds = %if.else3
  store i32 4, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 0), align 8
  store %struct.sKindDefinition* getelementptr inbounds ([15 x %struct.sKindDefinition], [15 x %struct.sKindDefinition]* @g_aCXXCUDAKinds, i64 0, i64 0), %struct.sKindDefinition** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 5), align 8
  store i32 15, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 6), align 8
  store %struct.sFieldDefinition* getelementptr inbounds ([1 x %struct.sFieldDefinition], [1 x %struct.sFieldDefinition]* @g_aCXXCUDAFields, i64 0, i64 0), %struct.sFieldDefinition** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 7), align 8
  store i32 1, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 8), align 8
  br label %if.end

if.else6:                                         ; preds = %if.else3
  br label %do.body

do.body:                                          ; preds = %if.else6
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then5
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then2
  br label %if.end8

if.end8:                                          ; preds = %if.end7, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sKindDefinition* @cxxTagGetCKindDefinitions() #0 {
entry:
  ret %struct.sKindDefinition* getelementptr inbounds ([15 x %struct.sKindDefinition], [15 x %struct.sKindDefinition]* @g_aCXXCKinds, i64 0, i64 0)
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @cxxTagGetCKindDefinitionCount() #0 {
entry:
  ret i32 15
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sKindDefinition* @cxxTagGetCUDAKindDefinitions() #0 {
entry:
  ret %struct.sKindDefinition* getelementptr inbounds ([15 x %struct.sKindDefinition], [15 x %struct.sKindDefinition]* @g_aCXXCUDAKinds, i64 0, i64 0)
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @cxxTagGetCUDAKindDefinitionCount() #0 {
entry:
  ret i32 15
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sKindDefinition* @cxxTagGetCPPKindDefinitions() #0 {
entry:
  ret %struct.sKindDefinition* getelementptr inbounds ([20 x %struct.sKindDefinition], [20 x %struct.sKindDefinition]* @g_aCXXCPPKinds, i64 0, i64 0)
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @cxxTagGetCPPKindDefinitionCount() #0 {
entry:
  ret i32 20
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @cxxTagKindEnabled(i32 %uKind) #0 {
entry:
  %uKind.addr = alloca i32, align 4
  store i32 %uKind, i32* %uKind.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.sKindDefinition*, %struct.sKindDefinition** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 5), align 8
  %1 = load i32, i32* %uKind.addr, align 4
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %0, i64 %idxprom
  %enabled = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %arrayidx, i32 0, i32 0
  %2 = load i8, i8* %enabled, align 8
  %tobool = trunc i8 %2 to i1
  ret i1 %tobool
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sFieldDefinition* @cxxTagGetCPPFieldDefinitionifiers() #0 {
entry:
  ret %struct.sFieldDefinition* getelementptr inbounds ([4 x %struct.sFieldDefinition], [4 x %struct.sFieldDefinition]* @g_aCXXCPPFields, i64 0, i64 0)
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @cxxTagGetCPPFieldDefinitionifierCount() #0 {
entry:
  ret i32 4
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sFieldDefinition* @cxxTagGetCUDAFieldDefinitionifiers() #0 {
entry:
  ret %struct.sFieldDefinition* getelementptr inbounds ([1 x %struct.sFieldDefinition], [1 x %struct.sFieldDefinition]* @g_aCXXCUDAFields, i64 0, i64 0)
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @cxxTagGetCUDAFieldDefinitionifierCount() #0 {
entry:
  ret i32 1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sFieldDefinition* @cxxTagGetCFieldDefinitionifiers() #0 {
entry:
  ret %struct.sFieldDefinition* getelementptr inbounds ([1 x %struct.sFieldDefinition], [1 x %struct.sFieldDefinition]* @g_aCXXCFields, i64 0, i64 0)
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @cxxTagGetCFieldDefinitionifierCount() #0 {
entry:
  ret i32 1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @cxxTagFieldEnabled(i32 %uField) #0 {
entry:
  %uField.addr = alloca i32, align 4
  store i32 %uField, i32* %uField.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.sFieldDefinition*, %struct.sFieldDefinition** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 7), align 8
  %1 = load i32, i32* %uField.addr, align 4
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr inbounds %struct.sFieldDefinition, %struct.sFieldDefinition* %0, i64 %idxprom
  %enabled = getelementptr inbounds %struct.sFieldDefinition, %struct.sFieldDefinition* %arrayidx, i32 0, i32 3
  %2 = load i8, i8* %enabled, align 8
  %tobool = trunc i8 %2 to i1
  ret i1 %tobool
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sTagEntryInfo* @cxxTagBegin(i32 %uKind, %struct._CXXToken* %pToken) #0 {
entry:
  %retval = alloca %struct.sTagEntryInfo*, align 8
  %uKind.addr = alloca i32, align 4
  %pToken.addr = alloca %struct._CXXToken*, align 8
  %pKindDefinitions = alloca %struct.sKindDefinition*, align 8
  store i32 %uKind, i32* %uKind.addr, align 4
  store %struct._CXXToken* %pToken, %struct._CXXToken** %pToken.addr, align 8
  %0 = load %struct.sKindDefinition*, %struct.sKindDefinition** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 5), align 8
  store %struct.sKindDefinition* %0, %struct.sKindDefinition** %pKindDefinitions, align 8
  %1 = load %struct.sKindDefinition*, %struct.sKindDefinition** %pKindDefinitions, align 8
  %2 = load i32, i32* %uKind.addr, align 4
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %1, i64 %idxprom
  %enabled = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %arrayidx, i32 0, i32 0
  %3 = load i8, i8* %enabled, align 8
  %tobool = trunc i8 %3 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.sTagEntryInfo* null, %struct.sTagEntryInfo** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._CXXToken*, %struct._CXXToken** %pToken.addr, align 8
  %pszWord = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %4, i32 0, i32 1
  %5 = load %struct.sVString*, %struct.sVString** %pszWord, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %5, i32 0, i32 2
  %6 = load i8*, i8** %buffer, align 8
  %7 = load i32, i32* %uKind.addr, align 4
  call void @initTagEntry(%struct.sTagEntryInfo* @g_oCXXTag, i8* %6, i32 %7)
  %8 = load %struct._CXXToken*, %struct._CXXToken** %pToken.addr, align 8
  %iLineNumber = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %8, i32 0, i32 5
  %9 = load i32, i32* %iLineNumber, align 4
  %conv = sext i32 %9 to i64
  store i64 %conv, i64* getelementptr inbounds (%struct.sTagEntryInfo, %struct.sTagEntryInfo* @g_oCXXTag, i32 0, i32 1), align 8
  %10 = load %struct._CXXToken*, %struct._CXXToken** %pToken.addr, align 8
  %oFilePosition = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %10, i32 0, i32 6
  %11 = bitcast %struct._MIOPos* %oFilePosition to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct._MIOPos* getelementptr inbounds (%struct.sTagEntryInfo, %struct.sTagEntryInfo* @g_oCXXTag, i32 0, i32 4) to i8*), i8* align 8 %11, i64 16, i1 false)
  %bf.load = load i8, i8* getelementptr inbounds (%struct.sTagEntryInfo, %struct.sTagEntryInfo* @g_oCXXTag, i32 0, i32 0), align 8
  %bf.clear = and i8 %bf.load, -3
  store i8 %bf.clear, i8* getelementptr inbounds (%struct.sTagEntryInfo, %struct.sTagEntryInfo* @g_oCXXTag, i32 0, i32 0), align 8
  %call = call zeroext i1 @cxxScopeIsGlobal()
  br i1 %call, label %if.end4, label %if.then1

if.then1:                                         ; preds = %if.end
  %call2 = call i32 @cxxScopeGetKind()
  store i32 %call2, i32* getelementptr inbounds (%struct.sTagEntryInfo, %struct.sTagEntryInfo* @g_oCXXTag, i32 0, i32 11, i32 5), align 4
  %call3 = call i8* @cxxScopeGetFullName()
  store i8* %call3, i8** getelementptr inbounds (%struct.sTagEntryInfo, %struct.sTagEntryInfo* @g_oCXXTag, i32 0, i32 11, i32 6), align 8
  br label %if.end4

if.end4:                                          ; preds = %if.then1, %if.end
  %call5 = call i32 @cxxScopeGetAccess()
  %idxprom6 = zext i32 %call5 to i64
  %arrayidx7 = getelementptr inbounds [4 x i8*], [4 x i8*]* @g_aCXXAccessStrings, i64 0, i64 %idxprom6
  %12 = load i8*, i8** %arrayidx7, align 8
  store i8* %12, i8** getelementptr inbounds (%struct.sTagEntryInfo, %struct.sTagEntryInfo* @g_oCXXTag, i32 0, i32 11, i32 0), align 8
  store %struct.sTagEntryInfo* @g_oCXXTag, %struct.sTagEntryInfo** %retval, align 8
  br label %return

return:                                           ; preds = %if.end4, %if.then
  %13 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %retval, align 8
  ret %struct.sTagEntryInfo* %13
}

declare void @initTagEntry(%struct.sTagEntryInfo*, i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare zeroext i1 @cxxScopeIsGlobal() #1

declare i32 @cxxScopeGetKind() #1

declare i8* @cxxScopeGetFullName() #1

declare i32 @cxxScopeGetAccess() #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sVString* @cxxTagSetProperties(i32 %uProperties) #0 {
entry:
  %retval = alloca %struct.sVString*, align 8
  %uProperties.addr = alloca i32, align 4
  %pszProperties = alloca %struct.sVString*, align 8
  %bFirst = alloca i8, align 1
  store i32 %uProperties, i32* %uProperties.addr, align 4
  %0 = load i32, i32* %uProperties.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.sVString* null, %struct.sVString** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %call = call zeroext i1 @cxxTagFieldEnabled(i32 0)
  br i1 %call, label %if.end2, label %if.then1

if.then1:                                         ; preds = %if.end
  store %struct.sVString* null, %struct.sVString** %retval, align 8
  br label %return

if.end2:                                          ; preds = %if.end
  %call3 = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call3, %struct.sVString** %pszProperties, align 8
  store i8 1, i8* %bFirst, align 1
  %1 = load i32, i32* %uProperties.addr, align 4
  %and = and i32 %1, 32
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then4, label %if.end8

if.then4:                                         ; preds = %if.end2
  br label %do.body

do.body:                                          ; preds = %if.then4
  %2 = load i8, i8* %bFirst, align 1
  %tobool5 = trunc i8 %2 to i1
  br i1 %tobool5, label %if.then6, label %if.else

if.then6:                                         ; preds = %do.body
  store i8 0, i8* %bFirst, align 1
  br label %if.end7

if.else:                                          ; preds = %do.body
  %3 = load %struct.sVString*, %struct.sVString** %pszProperties, align 8
  call void @vStringPut(%struct.sVString* %3, i32 44)
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then6
  %4 = load %struct.sVString*, %struct.sVString** %pszProperties, align 8
  call void @vStringCatS(%struct.sVString* %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %do.end

do.end:                                           ; preds = %if.end7
  br label %if.end8

if.end8:                                          ; preds = %do.end, %if.end2
  %5 = load i32, i32* %uProperties.addr, align 4
  %and9 = and i32 %5, 256
  %tobool10 = icmp ne i32 %and9, 0
  br i1 %tobool10, label %if.then11, label %if.end18

if.then11:                                        ; preds = %if.end8
  br label %do.body12

do.body12:                                        ; preds = %if.then11
  %6 = load i8, i8* %bFirst, align 1
  %tobool13 = trunc i8 %6 to i1
  br i1 %tobool13, label %if.then14, label %if.else15

if.then14:                                        ; preds = %do.body12
  store i8 0, i8* %bFirst, align 1
  br label %if.end16

if.else15:                                        ; preds = %do.body12
  %7 = load %struct.sVString*, %struct.sVString** %pszProperties, align 8
  call void @vStringPut(%struct.sVString* %7, i32 44)
  br label %if.end16

if.end16:                                         ; preds = %if.else15, %if.then14
  %8 = load %struct.sVString*, %struct.sVString** %pszProperties, align 8
  call void @vStringCatS(%struct.sVString* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %do.end17

do.end17:                                         ; preds = %if.end16
  br label %if.end18

if.end18:                                         ; preds = %do.end17, %if.end8
  %9 = load i32, i32* %uProperties.addr, align 4
  %and19 = and i32 %9, 1024
  %tobool20 = icmp ne i32 %and19, 0
  br i1 %tobool20, label %if.then21, label %if.end28

if.then21:                                        ; preds = %if.end18
  br label %do.body22

do.body22:                                        ; preds = %if.then21
  %10 = load i8, i8* %bFirst, align 1
  %tobool23 = trunc i8 %10 to i1
  br i1 %tobool23, label %if.then24, label %if.else25

if.then24:                                        ; preds = %do.body22
  store i8 0, i8* %bFirst, align 1
  br label %if.end26

if.else25:                                        ; preds = %do.body22
  %11 = load %struct.sVString*, %struct.sVString** %pszProperties, align 8
  call void @vStringPut(%struct.sVString* %11, i32 44)
  br label %if.end26

if.end26:                                         ; preds = %if.else25, %if.then24
  %12 = load %struct.sVString*, %struct.sVString** %pszProperties, align 8
  call void @vStringCatS(%struct.sVString* %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %do.end27

do.end27:                                         ; preds = %if.end26
  br label %if.end28

if.end28:                                         ; preds = %do.end27, %if.end18
  %13 = load i32, i32* %uProperties.addr, align 4
  %and29 = and i32 %13, 8
  %tobool30 = icmp ne i32 %and29, 0
  br i1 %tobool30, label %if.then31, label %if.end38

if.then31:                                        ; preds = %if.end28
  br label %do.body32

do.body32:                                        ; preds = %if.then31
  %14 = load i8, i8* %bFirst, align 1
  %tobool33 = trunc i8 %14 to i1
  br i1 %tobool33, label %if.then34, label %if.else35

if.then34:                                        ; preds = %do.body32
  store i8 0, i8* %bFirst, align 1
  br label %if.end36

if.else35:                                        ; preds = %do.body32
  %15 = load %struct.sVString*, %struct.sVString** %pszProperties, align 8
  call void @vStringPut(%struct.sVString* %15, i32 44)
  br label %if.end36

if.end36:                                         ; preds = %if.else35, %if.then34
  %16 = load %struct.sVString*, %struct.sVString** %pszProperties, align 8
  call void @vStringCatS(%struct.sVString* %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  br label %do.end37

do.end37:                                         ; preds = %if.end36
  br label %if.end38

if.end38:                                         ; preds = %do.end37, %if.end28
  %17 = load i32, i32* %uProperties.addr, align 4
  %and39 = and i32 %17, 16
  %tobool40 = icmp ne i32 %and39, 0
  br i1 %tobool40, label %if.then41, label %if.end48

if.then41:                                        ; preds = %if.end38
  br label %do.body42

do.body42:                                        ; preds = %if.then41
  %18 = load i8, i8* %bFirst, align 1
  %tobool43 = trunc i8 %18 to i1
  br i1 %tobool43, label %if.then44, label %if.else45

if.then44:                                        ; preds = %do.body42
  store i8 0, i8* %bFirst, align 1
  br label %if.end46

if.else45:                                        ; preds = %do.body42
  %19 = load %struct.sVString*, %struct.sVString** %pszProperties, align 8
  call void @vStringPut(%struct.sVString* %19, i32 44)
  br label %if.end46

if.end46:                                         ; preds = %if.else45, %if.then44
  %20 = load %struct.sVString*, %struct.sVString** %pszProperties, align 8
  call void @vStringCatS(%struct.sVString* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  br label %do.end47

do.end47:                                         ; preds = %if.end46
  br label %if.end48

if.end48:                                         ; preds = %do.end47, %if.end38
  %21 = load i32, i32* %uProperties.addr, align 4
  %and49 = and i32 %21, 512
  %tobool50 = icmp ne i32 %and49, 0
  br i1 %tobool50, label %if.then51, label %if.end58

if.then51:                                        ; preds = %if.end48
  br label %do.body52

do.body52:                                        ; preds = %if.then51
  %22 = load i8, i8* %bFirst, align 1
  %tobool53 = trunc i8 %22 to i1
  br i1 %tobool53, label %if.then54, label %if.else55

if.then54:                                        ; preds = %do.body52
  store i8 0, i8* %bFirst, align 1
  br label %if.end56

if.else55:                                        ; preds = %do.body52
  %23 = load %struct.sVString*, %struct.sVString** %pszProperties, align 8
  call void @vStringPut(%struct.sVString* %23, i32 44)
  br label %if.end56

if.end56:                                         ; preds = %if.else55, %if.then54
  %24 = load %struct.sVString*, %struct.sVString** %pszProperties, align 8
  call void @vStringCatS(%struct.sVString* %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  br label %do.end57

do.end57:                                         ; preds = %if.end56
  br label %if.end58

if.end58:                                         ; preds = %do.end57, %if.end48
  %25 = load i32, i32* %uProperties.addr, align 4
  %and59 = and i32 %25, 4
  %tobool60 = icmp ne i32 %and59, 0
  br i1 %tobool60, label %if.then61, label %if.end68

if.then61:                                        ; preds = %if.end58
  br label %do.body62

do.body62:                                        ; preds = %if.then61
  %26 = load i8, i8* %bFirst, align 1
  %tobool63 = trunc i8 %26 to i1
  br i1 %tobool63, label %if.then64, label %if.else65

if.then64:                                        ; preds = %do.body62
  store i8 0, i8* %bFirst, align 1
  br label %if.end66

if.else65:                                        ; preds = %do.body62
  %27 = load %struct.sVString*, %struct.sVString** %pszProperties, align 8
  call void @vStringPut(%struct.sVString* %27, i32 44)
  br label %if.end66

if.end66:                                         ; preds = %if.else65, %if.then64
  %28 = load %struct.sVString*, %struct.sVString** %pszProperties, align 8
  call void @vStringCatS(%struct.sVString* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  br label %do.end67

do.end67:                                         ; preds = %if.end66
  br label %if.end68

if.end68:                                         ; preds = %do.end67, %if.end58
  %29 = load i32, i32* %uProperties.addr, align 4
  %and69 = and i32 %29, 2048
  %tobool70 = icmp ne i32 %and69, 0
  br i1 %tobool70, label %if.then71, label %if.end78

if.then71:                                        ; preds = %if.end68
  br label %do.body72

do.body72:                                        ; preds = %if.then71
  %30 = load i8, i8* %bFirst, align 1
  %tobool73 = trunc i8 %30 to i1
  br i1 %tobool73, label %if.then74, label %if.else75

if.then74:                                        ; preds = %do.body72
  store i8 0, i8* %bFirst, align 1
  br label %if.end76

if.else75:                                        ; preds = %do.body72
  %31 = load %struct.sVString*, %struct.sVString** %pszProperties, align 8
  call void @vStringPut(%struct.sVString* %31, i32 44)
  br label %if.end76

if.end76:                                         ; preds = %if.else75, %if.then74
  %32 = load %struct.sVString*, %struct.sVString** %pszProperties, align 8
  call void @vStringCatS(%struct.sVString* %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  br label %do.end77

do.end77:                                         ; preds = %if.end76
  br label %if.end78

if.end78:                                         ; preds = %do.end77, %if.end68
  %33 = load i32, i32* %uProperties.addr, align 4
  %and79 = and i32 %33, 128
  %tobool80 = icmp ne i32 %and79, 0
  br i1 %tobool80, label %if.then81, label %if.end88

if.then81:                                        ; preds = %if.end78
  br label %do.body82

do.body82:                                        ; preds = %if.then81
  %34 = load i8, i8* %bFirst, align 1
  %tobool83 = trunc i8 %34 to i1
  br i1 %tobool83, label %if.then84, label %if.else85

if.then84:                                        ; preds = %do.body82
  store i8 0, i8* %bFirst, align 1
  br label %if.end86

if.else85:                                        ; preds = %do.body82
  %35 = load %struct.sVString*, %struct.sVString** %pszProperties, align 8
  call void @vStringPut(%struct.sVString* %35, i32 44)
  br label %if.end86

if.end86:                                         ; preds = %if.else85, %if.then84
  %36 = load %struct.sVString*, %struct.sVString** %pszProperties, align 8
  call void @vStringCatS(%struct.sVString* %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  br label %do.end87

do.end87:                                         ; preds = %if.end86
  br label %if.end88

if.end88:                                         ; preds = %do.end87, %if.end78
  %37 = load i32, i32* %uProperties.addr, align 4
  %and89 = and i32 %37, 64
  %tobool90 = icmp ne i32 %and89, 0
  br i1 %tobool90, label %if.then91, label %if.end98

if.then91:                                        ; preds = %if.end88
  br label %do.body92

do.body92:                                        ; preds = %if.then91
  %38 = load i8, i8* %bFirst, align 1
  %tobool93 = trunc i8 %38 to i1
  br i1 %tobool93, label %if.then94, label %if.else95

if.then94:                                        ; preds = %do.body92
  store i8 0, i8* %bFirst, align 1
  br label %if.end96

if.else95:                                        ; preds = %do.body92
  %39 = load %struct.sVString*, %struct.sVString** %pszProperties, align 8
  call void @vStringPut(%struct.sVString* %39, i32 44)
  br label %if.end96

if.end96:                                         ; preds = %if.else95, %if.then94
  %40 = load %struct.sVString*, %struct.sVString** %pszProperties, align 8
  call void @vStringCatS(%struct.sVString* %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  br label %do.end97

do.end97:                                         ; preds = %if.end96
  br label %if.end98

if.end98:                                         ; preds = %do.end97, %if.end88
  %41 = load i32, i32* %uProperties.addr, align 4
  %and99 = and i32 %41, 16384
  %tobool100 = icmp ne i32 %and99, 0
  br i1 %tobool100, label %if.then101, label %if.end108

if.then101:                                       ; preds = %if.end98
  br label %do.body102

do.body102:                                       ; preds = %if.then101
  %42 = load i8, i8* %bFirst, align 1
  %tobool103 = trunc i8 %42 to i1
  br i1 %tobool103, label %if.then104, label %if.else105

if.then104:                                       ; preds = %do.body102
  store i8 0, i8* %bFirst, align 1
  br label %if.end106

if.else105:                                       ; preds = %do.body102
  %43 = load %struct.sVString*, %struct.sVString** %pszProperties, align 8
  call void @vStringPut(%struct.sVString* %43, i32 44)
  br label %if.end106

if.end106:                                        ; preds = %if.else105, %if.then104
  %44 = load %struct.sVString*, %struct.sVString** %pszProperties, align 8
  call void @vStringCatS(%struct.sVString* %44, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0))
  br label %do.end107

do.end107:                                        ; preds = %if.end106
  br label %if.end108

if.end108:                                        ; preds = %do.end107, %if.end98
  %45 = load i32, i32* %uProperties.addr, align 4
  %and109 = and i32 %45, 2
  %tobool110 = icmp ne i32 %and109, 0
  br i1 %tobool110, label %if.then111, label %if.end118

if.then111:                                       ; preds = %if.end108
  br label %do.body112

do.body112:                                       ; preds = %if.then111
  %46 = load i8, i8* %bFirst, align 1
  %tobool113 = trunc i8 %46 to i1
  br i1 %tobool113, label %if.then114, label %if.else115

if.then114:                                       ; preds = %do.body112
  store i8 0, i8* %bFirst, align 1
  br label %if.end116

if.else115:                                       ; preds = %do.body112
  %47 = load %struct.sVString*, %struct.sVString** %pszProperties, align 8
  call void @vStringPut(%struct.sVString* %47, i32 44)
  br label %if.end116

if.end116:                                        ; preds = %if.else115, %if.then114
  %48 = load %struct.sVString*, %struct.sVString** %pszProperties, align 8
  call void @vStringCatS(%struct.sVString* %48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  br label %do.end117

do.end117:                                        ; preds = %if.end116
  br label %if.end118

if.end118:                                        ; preds = %do.end117, %if.end108
  %49 = load i32, i32* %uProperties.addr, align 4
  %and119 = and i32 %49, 8192
  %tobool120 = icmp ne i32 %and119, 0
  br i1 %tobool120, label %if.then121, label %if.end128

if.then121:                                       ; preds = %if.end118
  br label %do.body122

do.body122:                                       ; preds = %if.then121
  %50 = load i8, i8* %bFirst, align 1
  %tobool123 = trunc i8 %50 to i1
  br i1 %tobool123, label %if.then124, label %if.else125

if.then124:                                       ; preds = %do.body122
  store i8 0, i8* %bFirst, align 1
  br label %if.end126

if.else125:                                       ; preds = %do.body122
  %51 = load %struct.sVString*, %struct.sVString** %pszProperties, align 8
  call void @vStringPut(%struct.sVString* %51, i32 44)
  br label %if.end126

if.end126:                                        ; preds = %if.else125, %if.then124
  %52 = load %struct.sVString*, %struct.sVString** %pszProperties, align 8
  call void @vStringCatS(%struct.sVString* %52, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0))
  br label %do.end127

do.end127:                                        ; preds = %if.end126
  br label %if.end128

if.end128:                                        ; preds = %do.end127, %if.end118
  %53 = load i32, i32* %uProperties.addr, align 4
  %and129 = and i32 %53, 1
  %tobool130 = icmp ne i32 %and129, 0
  br i1 %tobool130, label %if.then131, label %if.end138

if.then131:                                       ; preds = %if.end128
  br label %do.body132

do.body132:                                       ; preds = %if.then131
  %54 = load i8, i8* %bFirst, align 1
  %tobool133 = trunc i8 %54 to i1
  br i1 %tobool133, label %if.then134, label %if.else135

if.then134:                                       ; preds = %do.body132
  store i8 0, i8* %bFirst, align 1
  br label %if.end136

if.else135:                                       ; preds = %do.body132
  %55 = load %struct.sVString*, %struct.sVString** %pszProperties, align 8
  call void @vStringPut(%struct.sVString* %55, i32 44)
  br label %if.end136

if.end136:                                        ; preds = %if.else135, %if.then134
  %56 = load %struct.sVString*, %struct.sVString** %pszProperties, align 8
  call void @vStringCatS(%struct.sVString* %56, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0))
  br label %do.end137

do.end137:                                        ; preds = %if.end136
  br label %if.end138

if.end138:                                        ; preds = %do.end137, %if.end128
  %57 = load i32, i32* %uProperties.addr, align 4
  %and139 = and i32 %57, 4096
  %tobool140 = icmp ne i32 %and139, 0
  br i1 %tobool140, label %if.then141, label %if.end148

if.then141:                                       ; preds = %if.end138
  br label %do.body142

do.body142:                                       ; preds = %if.then141
  %58 = load i8, i8* %bFirst, align 1
  %tobool143 = trunc i8 %58 to i1
  br i1 %tobool143, label %if.then144, label %if.else145

if.then144:                                       ; preds = %do.body142
  store i8 0, i8* %bFirst, align 1
  br label %if.end146

if.else145:                                       ; preds = %do.body142
  %59 = load %struct.sVString*, %struct.sVString** %pszProperties, align 8
  call void @vStringPut(%struct.sVString* %59, i32 44)
  br label %if.end146

if.end146:                                        ; preds = %if.else145, %if.then144
  %60 = load %struct.sVString*, %struct.sVString** %pszProperties, align 8
  call void @vStringCatS(%struct.sVString* %60, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0))
  br label %do.end147

do.end147:                                        ; preds = %if.end146
  br label %if.end148

if.end148:                                        ; preds = %do.end147, %if.end138
  %61 = load i32, i32* %uProperties.addr, align 4
  %and149 = and i32 %61, 32768
  %tobool150 = icmp ne i32 %and149, 0
  br i1 %tobool150, label %if.then151, label %if.end158

if.then151:                                       ; preds = %if.end148
  br label %do.body152

do.body152:                                       ; preds = %if.then151
  %62 = load i8, i8* %bFirst, align 1
  %tobool153 = trunc i8 %62 to i1
  br i1 %tobool153, label %if.then154, label %if.else155

if.then154:                                       ; preds = %do.body152
  store i8 0, i8* %bFirst, align 1
  br label %if.end156

if.else155:                                       ; preds = %do.body152
  %63 = load %struct.sVString*, %struct.sVString** %pszProperties, align 8
  call void @vStringPut(%struct.sVString* %63, i32 44)
  br label %if.end156

if.end156:                                        ; preds = %if.else155, %if.then154
  %64 = load %struct.sVString*, %struct.sVString** %pszProperties, align 8
  call void @vStringCatS(%struct.sVString* %64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0))
  br label %do.end157

do.end157:                                        ; preds = %if.end156
  br label %if.end158

if.end158:                                        ; preds = %do.end157, %if.end148
  %65 = load i32, i32* %uProperties.addr, align 4
  %and159 = and i32 %65, 65536
  %tobool160 = icmp ne i32 %and159, 0
  br i1 %tobool160, label %if.then161, label %if.end168

if.then161:                                       ; preds = %if.end158
  br label %do.body162

do.body162:                                       ; preds = %if.then161
  %66 = load i8, i8* %bFirst, align 1
  %tobool163 = trunc i8 %66 to i1
  br i1 %tobool163, label %if.then164, label %if.else165

if.then164:                                       ; preds = %do.body162
  store i8 0, i8* %bFirst, align 1
  br label %if.end166

if.else165:                                       ; preds = %do.body162
  %67 = load %struct.sVString*, %struct.sVString** %pszProperties, align 8
  call void @vStringPut(%struct.sVString* %67, i32 44)
  br label %if.end166

if.end166:                                        ; preds = %if.else165, %if.then164
  %68 = load %struct.sVString*, %struct.sVString** %pszProperties, align 8
  call void @vStringCatS(%struct.sVString* %68, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0))
  br label %do.end167

do.end167:                                        ; preds = %if.end166
  br label %if.end168

if.end168:                                        ; preds = %do.end167, %if.end158
  %69 = load %struct.sVString*, %struct.sVString** %pszProperties, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %69, i32 0, i32 2
  %70 = load i8*, i8** %buffer, align 8
  call void @cxxTagSetField(i32 0, i8* %70)
  %71 = load %struct.sVString*, %struct.sVString** %pszProperties, align 8
  store %struct.sVString* %71, %struct.sVString** %retval, align 8
  br label %return

return:                                           ; preds = %if.end168, %if.then1, %if.then
  %72 = load %struct.sVString*, %struct.sVString** %retval, align 8
  ret %struct.sVString* %72
}

declare %struct.sVString* @vStringNew() #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @vStringPut(%struct.sVString* %string, i32 %c) #0 {
entry:
  %string.addr = alloca %struct.sVString*, align 8
  %c.addr = alloca i32, align 4
  store %struct.sVString* %string, %struct.sVString** %string.addr, align 8
  store i32 %c, i32* %c.addr, align 4
  %0 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %0, i32 0, i32 0
  %1 = load i64, i64* %length, align 8
  %add = add i64 %1, 1
  %2 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %size = getelementptr inbounds %struct.sVString, %struct.sVString* %2, i32 0, i32 1
  %3 = load i64, i64* %size, align 8
  %cmp = icmp eq i64 %add, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %5 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %size1 = getelementptr inbounds %struct.sVString, %struct.sVString* %5, i32 0, i32 1
  %6 = load i64, i64* %size1, align 8
  %mul = mul i64 %6, 2
  call void @vStringResize(%struct.sVString* %4, i64 %mul)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i32, i32* %c.addr, align 4
  %conv = trunc i32 %7 to i8
  %8 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %8, i32 0, i32 2
  %9 = load i8*, i8** %buffer, align 8
  %10 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %length2 = getelementptr inbounds %struct.sVString, %struct.sVString* %10, i32 0, i32 0
  %11 = load i64, i64* %length2, align 8
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %11
  store i8 %conv, i8* %arrayidx, align 1
  %12 = load i32, i32* %c.addr, align 4
  %cmp3 = icmp ne i32 %12, 0
  br i1 %cmp3, label %if.then5, label %if.end9

if.then5:                                         ; preds = %if.end
  %13 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %buffer6 = getelementptr inbounds %struct.sVString, %struct.sVString* %13, i32 0, i32 2
  %14 = load i8*, i8** %buffer6, align 8
  %15 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %length7 = getelementptr inbounds %struct.sVString, %struct.sVString* %15, i32 0, i32 0
  %16 = load i64, i64* %length7, align 8
  %inc = add i64 %16, 1
  store i64 %inc, i64* %length7, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %14, i64 %inc
  store i8 0, i8* %arrayidx8, align 1
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %if.end
  ret void
}

declare void @vStringCatS(%struct.sVString*, i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @cxxTagSetField(i32 %uField, i8* %szValue) #0 {
entry:
  %uField.addr = alloca i32, align 4
  %szValue.addr = alloca i8*, align 8
  store i32 %uField, i32* %uField.addr, align 4
  store i8* %szValue, i8** %szValue.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.sFieldDefinition*, %struct.sFieldDefinition** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 7), align 8
  %1 = load i32, i32* %uField.addr, align 4
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr inbounds %struct.sFieldDefinition, %struct.sFieldDefinition* %0, i64 %idxprom
  %enabled = getelementptr inbounds %struct.sFieldDefinition, %struct.sFieldDefinition* %arrayidx, i32 0, i32 3
  %2 = load i8, i8* %enabled, align 8
  %tobool = trunc i8 %2 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %do.end
  br label %return

if.end:                                           ; preds = %do.end
  %3 = load %struct.sFieldDefinition*, %struct.sFieldDefinition** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 7), align 8
  %4 = load i32, i32* %uField.addr, align 4
  %idxprom1 = zext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds %struct.sFieldDefinition, %struct.sFieldDefinition* %3, i64 %idxprom1
  %ftype = getelementptr inbounds %struct.sFieldDefinition, %struct.sFieldDefinition* %arrayidx2, i32 0, i32 7
  %5 = load i32, i32* %ftype, align 4
  %6 = load i8*, i8** %szValue.addr, align 8
  call void @attachParserField(%struct.sTagEntryInfo* @g_oCXXTag, i32 %5, i8* %6)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct._CXXToken* @cxxTagCheckAndSetTypeField(%struct._CXXToken* %pTypeStart, %struct._CXXToken* %pTypeEnd) #0 {
entry:
  %retval = alloca %struct._CXXToken*, align 8
  %pTypeStart.addr = alloca %struct._CXXToken*, align 8
  %pTypeEnd.addr = alloca %struct._CXXToken*, align 8
  %szTypeRef0 = alloca i8*, align 8
  %pTypeName = alloca %struct._CXXToken*, align 8
  store %struct._CXXToken* %pTypeStart, %struct._CXXToken** %pTypeStart.addr, align 8
  store %struct._CXXToken* %pTypeEnd, %struct._CXXToken** %pTypeEnd.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  br label %for.cond

for.cond:                                         ; preds = %if.end9, %do.end2
  %0 = load %struct._CXXToken*, %struct._CXXToken** %pTypeStart.addr, align 8
  %eType = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %0, i32 0, i32 0
  %1 = load i32, i32* %eType, align 8
  %cmp = icmp eq i32 %1, 4
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %for.cond
  br label %for.end

if.end:                                           ; preds = %for.cond
  %2 = load %struct._CXXToken*, %struct._CXXToken** %pTypeStart.addr, align 8
  %eKeyword = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %2, i32 0, i32 2
  %3 = load i32, i32* %eKeyword, align 8
  %call = call zeroext i1 @cxxKeywordExcludeFromTypeNames(i32 %3)
  br i1 %call, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  br label %for.end

if.end4:                                          ; preds = %if.end
  %4 = load %struct._CXXToken*, %struct._CXXToken** %pTypeStart.addr, align 8
  %5 = load %struct._CXXToken*, %struct._CXXToken** %pTypeEnd.addr, align 8
  %cmp5 = icmp eq %struct._CXXToken* %4, %5
  br i1 %cmp5, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end4
  br label %do.body7

do.body7:                                         ; preds = %if.then6
  br label %do.end8

do.end8:                                          ; preds = %do.body7
  store %struct._CXXToken* null, %struct._CXXToken** %retval, align 8
  br label %return

if.end9:                                          ; preds = %if.end4
  %6 = load %struct._CXXToken*, %struct._CXXToken** %pTypeStart.addr, align 8
  %pNext = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %6, i32 0, i32 7
  %7 = load %struct._CXXToken*, %struct._CXXToken** %pNext, align 8
  store %struct._CXXToken* %7, %struct._CXXToken** %pTypeStart.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then3, %if.then
  %8 = load %struct._CXXToken*, %struct._CXXToken** %pTypeStart.addr, align 8
  %9 = load %struct._CXXToken*, %struct._CXXToken** %pTypeEnd.addr, align 8
  %cmp10 = icmp ne %struct._CXXToken* %8, %9
  br i1 %cmp10, label %if.then11, label %if.else21

if.then11:                                        ; preds = %for.end
  %10 = load %struct._CXXToken*, %struct._CXXToken** %pTypeStart.addr, align 8
  %eType12 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %10, i32 0, i32 0
  %11 = load i32, i32* %eType12, align 8
  %cmp13 = icmp eq i32 %11, 4
  br i1 %cmp13, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then11
  %12 = load %struct._CXXToken*, %struct._CXXToken** %pTypeStart.addr, align 8
  %eKeyword14 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %12, i32 0, i32 2
  %13 = load i32, i32* %eKeyword14, align 8
  %call15 = call zeroext i1 @cxxKeywordIsTypeRefMarker(i32 %13)
  br i1 %call15, label %if.then16, label %if.else

if.then16:                                        ; preds = %land.lhs.true
  %14 = load %struct._CXXToken*, %struct._CXXToken** %pTypeStart.addr, align 8
  %eKeyword17 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %14, i32 0, i32 2
  %15 = load i32, i32* %eKeyword17, align 8
  %call18 = call i8* @cxxKeywordName(i32 %15)
  store i8* %call18, i8** %szTypeRef0, align 8
  %16 = load %struct._CXXToken*, %struct._CXXToken** %pTypeStart.addr, align 8
  %pNext19 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %16, i32 0, i32 7
  %17 = load %struct._CXXToken*, %struct._CXXToken** %pNext19, align 8
  store %struct._CXXToken* %17, %struct._CXXToken** %pTypeStart.addr, align 8
  br label %if.end20

if.else:                                          ; preds = %land.lhs.true, %if.then11
  %18 = load i8*, i8** @cxxTagCheckAndSetTypeField.szTypename, align 8
  store i8* %18, i8** %szTypeRef0, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then16
  br label %if.end22

if.else21:                                        ; preds = %for.end
  %19 = load i8*, i8** @cxxTagCheckAndSetTypeField.szTypename, align 8
  store i8* %19, i8** %szTypeRef0, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.else21, %if.end20
  %20 = load %struct._CXXToken*, %struct._CXXToken** %pTypeStart.addr, align 8
  %21 = load %struct._CXXToken*, %struct._CXXToken** %pTypeEnd.addr, align 8
  %call23 = call zeroext i1 @cxxTagCheckTypeField(%struct._CXXToken* %20, %struct._CXXToken* %21)
  br i1 %call23, label %if.end27, label %if.then24

if.then24:                                        ; preds = %if.end22
  br label %do.body25

do.body25:                                        ; preds = %if.then24
  br label %do.end26

do.end26:                                         ; preds = %do.body25
  store %struct._CXXToken* null, %struct._CXXToken** %retval, align 8
  br label %return

if.end27:                                         ; preds = %if.end22
  %22 = load %struct._CXXToken*, %struct._CXXToken** %pTypeStart.addr, align 8
  %23 = load %struct._CXXToken*, %struct._CXXToken** %pTypeEnd.addr, align 8
  call void @cxxTokenChainNormalizeTypeNameSpacingInRange(%struct._CXXToken* %22, %struct._CXXToken* %23)
  %24 = load %struct._CXXToken*, %struct._CXXToken** %pTypeStart.addr, align 8
  %25 = load %struct._CXXToken*, %struct._CXXToken** %pTypeEnd.addr, align 8
  %call28 = call %struct._CXXToken* @cxxTokenChainExtractRangeFilterTypeName(%struct._CXXToken* %24, %struct._CXXToken* %25)
  store %struct._CXXToken* %call28, %struct._CXXToken** %pTypeName, align 8
  %26 = load %struct._CXXToken*, %struct._CXXToken** %pTypeName, align 8
  %tobool = icmp ne %struct._CXXToken* %26, null
  br i1 %tobool, label %if.end32, label %if.then29

if.then29:                                        ; preds = %if.end27
  br label %do.body30

do.body30:                                        ; preds = %if.then29
  br label %do.end31

do.end31:                                         ; preds = %do.body30
  store %struct._CXXToken* null, %struct._CXXToken** %retval, align 8
  br label %return

if.end32:                                         ; preds = %if.end27
  br label %do.body33

do.body33:                                        ; preds = %if.end32
  br label %do.end34

do.end34:                                         ; preds = %do.body33
  %27 = load i8*, i8** %szTypeRef0, align 8
  store i8* %27, i8** getelementptr inbounds (%struct.sTagEntryInfo, %struct.sTagEntryInfo* @g_oCXXTag, i32 0, i32 11, i32 9, i64 0), align 8
  %28 = load %struct._CXXToken*, %struct._CXXToken** %pTypeName, align 8
  %pszWord = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %28, i32 0, i32 1
  %29 = load %struct.sVString*, %struct.sVString** %pszWord, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %29, i32 0, i32 2
  %30 = load i8*, i8** %buffer, align 8
  store i8* %30, i8** getelementptr inbounds (%struct.sTagEntryInfo, %struct.sTagEntryInfo* @g_oCXXTag, i32 0, i32 11, i32 9, i64 1), align 8
  %31 = load %struct._CXXToken*, %struct._CXXToken** %pTypeName, align 8
  store %struct._CXXToken* %31, %struct._CXXToken** %retval, align 8
  br label %return

return:                                           ; preds = %do.end34, %do.end31, %do.end26, %do.end8
  %32 = load %struct._CXXToken*, %struct._CXXToken** %retval, align 8
  ret %struct._CXXToken* %32
}

declare zeroext i1 @cxxKeywordExcludeFromTypeNames(i32) #1

declare zeroext i1 @cxxKeywordIsTypeRefMarker(i32) #1

declare i8* @cxxKeywordName(i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @cxxTagCheckTypeField(%struct._CXXToken* %pTypeStart, %struct._CXXToken* %pTypeEnd) #0 {
entry:
  %retval = alloca i1, align 1
  %pTypeStart.addr = alloca %struct._CXXToken*, align 8
  %pTypeEnd.addr = alloca %struct._CXXToken*, align 8
  %iTotalCount = alloca i32, align 4
  %iParenthesisCount = alloca i32, align 4
  %iIdentifierOrKeywordCount = alloca i32, align 4
  %iConsecutiveIdentifiers = alloca i32, align 4
  store %struct._CXXToken* %pTypeStart, %struct._CXXToken** %pTypeStart.addr, align 8
  store %struct._CXXToken* %pTypeEnd, %struct._CXXToken** %pTypeEnd.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct._CXXToken*, %struct._CXXToken** %pTypeStart.addr, align 8
  %tobool = icmp ne %struct._CXXToken* %0, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %do.end
  %1 = load %struct._CXXToken*, %struct._CXXToken** %pTypeEnd.addr, align 8
  %tobool1 = icmp ne %struct._CXXToken* %1, null
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %do.end
  br label %do.body2

do.body2:                                         ; preds = %if.then
  br label %do.end3

do.end3:                                          ; preds = %do.body2
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, i32* %iTotalCount, align 4
  store i32 0, i32* %iParenthesisCount, align 4
  store i32 0, i32* %iIdentifierOrKeywordCount, align 4
  store i32 0, i32* %iConsecutiveIdentifiers, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end52, %if.end
  %2 = load %struct._CXXToken*, %struct._CXXToken** %pTypeStart.addr, align 8
  %tobool4 = icmp ne %struct._CXXToken* %2, null
  br i1 %tobool4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32, i32* %iTotalCount, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %iTotalCount, align 4
  %4 = load i32, i32* %iTotalCount, align 4
  %cmp = icmp sgt i32 %4, 30
  br i1 %cmp, label %if.then5, label %if.end8

if.then5:                                         ; preds = %while.body
  br label %do.body6

do.body6:                                         ; preds = %if.then5
  br label %do.end7

do.end7:                                          ; preds = %do.body6
  store i1 false, i1* %retval, align 1
  br label %return

if.end8:                                          ; preds = %while.body
  %5 = load %struct._CXXToken*, %struct._CXXToken** %pTypeStart.addr, align 8
  %eType = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %5, i32 0, i32 0
  %6 = load i32, i32* %eType, align 8
  %cmp9 = icmp eq i32 %6, 2
  br i1 %cmp9, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end8
  %7 = load i32, i32* %iConsecutiveIdentifiers, align 4
  %inc11 = add nsw i32 %7, 1
  store i32 %inc11, i32* %iConsecutiveIdentifiers, align 4
  %8 = load i32, i32* %iIdentifierOrKeywordCount, align 4
  %inc12 = add nsw i32 %8, 1
  store i32 %inc12, i32* %iIdentifierOrKeywordCount, align 4
  %9 = load i32, i32* %iConsecutiveIdentifiers, align 4
  %cmp13 = icmp sgt i32 %9, 4
  br i1 %cmp13, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.then10
  br label %do.body15

do.body15:                                        ; preds = %if.then14
  br label %do.end16

do.end16:                                         ; preds = %do.body15
  store i1 false, i1* %retval, align 1
  br label %return

if.end17:                                         ; preds = %if.then10
  br label %if.end49

if.else:                                          ; preds = %if.end8
  store i32 0, i32* %iConsecutiveIdentifiers, align 4
  %10 = load %struct._CXXToken*, %struct._CXXToken** %pTypeStart.addr, align 8
  %eType18 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %10, i32 0, i32 0
  %11 = load i32, i32* %eType18, align 8
  %cmp19 = icmp eq i32 %11, 268435456
  br i1 %cmp19, label %if.then20, label %if.else42

if.then20:                                        ; preds = %if.else
  %12 = load i32, i32* %iParenthesisCount, align 4
  %inc21 = add nsw i32 %12, 1
  store i32 %inc21, i32* %iParenthesisCount, align 4
  %13 = load i32, i32* %iParenthesisCount, align 4
  %cmp22 = icmp sgt i32 %13, 3
  br i1 %cmp22, label %if.then23, label %if.end26

if.then23:                                        ; preds = %if.then20
  br label %do.body24

do.body24:                                        ; preds = %if.then23
  br label %do.end25

do.end25:                                         ; preds = %do.body24
  store i1 false, i1* %retval, align 1
  br label %return

if.end26:                                         ; preds = %if.then20
  %14 = load i32, i32* %iTotalCount, align 4
  %cmp27 = icmp sgt i32 %14, 1
  br i1 %cmp27, label %land.lhs.true, label %if.end41

land.lhs.true:                                    ; preds = %if.end26
  %15 = load %struct._CXXToken*, %struct._CXXToken** %pTypeStart.addr, align 8
  %pPrev = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %15, i32 0, i32 8
  %16 = load %struct._CXXToken*, %struct._CXXToken** %pPrev, align 8
  %eType28 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %16, i32 0, i32 0
  %17 = load i32, i32* %eType28, align 8
  %cmp29 = icmp eq i32 %17, 2
  br i1 %cmp29, label %land.lhs.true30, label %if.end41

land.lhs.true30:                                  ; preds = %land.lhs.true
  %18 = load %struct._CXXToken*, %struct._CXXToken** %pTypeStart.addr, align 8
  %19 = load %struct._CXXToken*, %struct._CXXToken** %pTypeEnd.addr, align 8
  %cmp31 = icmp ne %struct._CXXToken* %18, %19
  br i1 %cmp31, label %land.lhs.true32, label %if.end41

land.lhs.true32:                                  ; preds = %land.lhs.true30
  %20 = load %struct._CXXToken*, %struct._CXXToken** %pTypeStart.addr, align 8
  %pNext = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %20, i32 0, i32 7
  %21 = load %struct._CXXToken*, %struct._CXXToken** %pNext, align 8
  %tobool33 = icmp ne %struct._CXXToken* %21, null
  br i1 %tobool33, label %land.lhs.true34, label %if.end41

land.lhs.true34:                                  ; preds = %land.lhs.true32
  %22 = load %struct._CXXToken*, %struct._CXXToken** %pTypeStart.addr, align 8
  %pNext35 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %22, i32 0, i32 7
  %23 = load %struct._CXXToken*, %struct._CXXToken** %pNext35, align 8
  %eType36 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %23, i32 0, i32 0
  %24 = load i32, i32* %eType36, align 8
  %cmp37 = icmp eq i32 %24, 2
  br i1 %cmp37, label %if.then38, label %if.end41

if.then38:                                        ; preds = %land.lhs.true34
  br label %do.body39

do.body39:                                        ; preds = %if.then38
  br label %do.end40

do.end40:                                         ; preds = %do.body39
  store i1 false, i1* %retval, align 1
  br label %return

if.end41:                                         ; preds = %land.lhs.true34, %land.lhs.true32, %land.lhs.true30, %land.lhs.true, %if.end26
  br label %if.end48

if.else42:                                        ; preds = %if.else
  %25 = load %struct._CXXToken*, %struct._CXXToken** %pTypeStart.addr, align 8
  %eType43 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %25, i32 0, i32 0
  %26 = load i32, i32* %eType43, align 8
  %cmp44 = icmp eq i32 %26, 4
  br i1 %cmp44, label %if.then45, label %if.end47

if.then45:                                        ; preds = %if.else42
  %27 = load i32, i32* %iIdentifierOrKeywordCount, align 4
  %inc46 = add nsw i32 %27, 1
  store i32 %inc46, i32* %iIdentifierOrKeywordCount, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then45, %if.else42
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %if.end41
  br label %if.end49

if.end49:                                         ; preds = %if.end48, %if.end17
  %28 = load %struct._CXXToken*, %struct._CXXToken** %pTypeStart.addr, align 8
  %29 = load %struct._CXXToken*, %struct._CXXToken** %pTypeEnd.addr, align 8
  %cmp50 = icmp eq %struct._CXXToken* %28, %29
  br i1 %cmp50, label %if.then51, label %if.end52

if.then51:                                        ; preds = %if.end49
  br label %while.end

if.end52:                                         ; preds = %if.end49
  %30 = load %struct._CXXToken*, %struct._CXXToken** %pTypeStart.addr, align 8
  %pNext53 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %30, i32 0, i32 7
  %31 = load %struct._CXXToken*, %struct._CXXToken** %pNext53, align 8
  store %struct._CXXToken* %31, %struct._CXXToken** %pTypeStart.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %if.then51, %while.cond
  %32 = load i32, i32* %iIdentifierOrKeywordCount, align 4
  %cmp54 = icmp slt i32 %32, 1
  br i1 %cmp54, label %if.then55, label %if.end58

if.then55:                                        ; preds = %while.end
  br label %do.body56

do.body56:                                        ; preds = %if.then55
  br label %do.end57

do.end57:                                         ; preds = %do.body56
  store i1 false, i1* %retval, align 1
  br label %return

if.end58:                                         ; preds = %while.end
  %33 = load %struct._CXXToken*, %struct._CXXToken** %pTypeStart.addr, align 8
  %tobool59 = icmp ne %struct._CXXToken* %33, null
  br i1 %tobool59, label %if.end63, label %if.then60

if.then60:                                        ; preds = %if.end58
  br label %do.body61

do.body61:                                        ; preds = %if.then60
  br label %do.end62

do.end62:                                         ; preds = %do.body61
  store i1 false, i1* %retval, align 1
  br label %return

if.end63:                                         ; preds = %if.end58
  br label %do.body64

do.body64:                                        ; preds = %if.end63
  br label %do.end65

do.end65:                                         ; preds = %do.body64
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %do.end65, %do.end62, %do.end57, %do.end40, %do.end25, %do.end16, %do.end7, %do.end3
  %34 = load i1, i1* %retval, align 1
  ret i1 %34
}

declare void @cxxTokenChainNormalizeTypeNameSpacingInRange(%struct._CXXToken*, %struct._CXXToken*) #1

declare %struct._CXXToken* @cxxTokenChainExtractRangeFilterTypeName(%struct._CXXToken*, %struct._CXXToken*) #1

declare void @attachParserField(%struct.sTagEntryInfo*, i32, i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @cxxTagSetCorkQueueField(i32 %iIndex, i32 %uField, i8* %szValue) #0 {
entry:
  %iIndex.addr = alloca i32, align 4
  %uField.addr = alloca i32, align 4
  %szValue.addr = alloca i8*, align 8
  store i32 %iIndex, i32* %iIndex.addr, align 4
  store i32 %uField, i32* %uField.addr, align 4
  store i8* %szValue, i8** %szValue.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  %0 = load i32, i32* %iIndex.addr, align 4
  %1 = load %struct.sFieldDefinition*, %struct.sFieldDefinition** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 7), align 8
  %2 = load i32, i32* %uField.addr, align 4
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds %struct.sFieldDefinition, %struct.sFieldDefinition* %1, i64 %idxprom
  %ftype = getelementptr inbounds %struct.sFieldDefinition, %struct.sFieldDefinition* %arrayidx, i32 0, i32 7
  %3 = load i32, i32* %ftype, align 4
  %4 = load i8*, i8** %szValue.addr, align 8
  call void @attachParserFieldToCorkEntry(i32 %0, i32 %3, i8* %4)
  ret void
}

declare void @attachParserFieldToCorkEntry(i32, i32, i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @cxxTagCommit() #0 {
entry:
  %retval = alloca i32, align 4
  %iCorkQueueIndex = alloca i32, align 4
  %eScopeType = alloca i32, align 4
  %x = alloca %struct.sVString*, align 8
  %bf.load = load i8, i8* getelementptr inbounds (%struct.sTagEntryInfo, %struct.sTagEntryInfo* @g_oCXXTag, i32 0, i32 0), align 8
  %bf.lshr = lshr i8 %bf.load, 1
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.then, label %if.end2

if.then:                                          ; preds = %entry
  %call = call zeroext i1 @isXtagEnabled(i32 0)
  br i1 %call, label %if.end, label %if.then1

if.then1:                                         ; preds = %if.then
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  call void @markTagExtraBit(%struct.sTagEntryInfo* @g_oCXXTag, i32 0)
  br label %if.end2

if.end2:                                          ; preds = %if.end, %entry
  %call3 = call i32 @makeTagEntry(%struct.sTagEntryInfo* @g_oCXXTag)
  store i32 %call3, i32* %iCorkQueueIndex, align 4
  %call4 = call zeroext i1 @isXtagEnabled(i32 3)
  br i1 %call4, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end2
  %0 = load i32, i32* %iCorkQueueIndex, align 4
  store i32 %0, i32* %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end2
  call void @markTagExtraBit(%struct.sTagEntryInfo* @g_oCXXTag, i32 3)
  %1 = load i8*, i8** getelementptr inbounds (%struct.sTagEntryInfo, %struct.sTagEntryInfo* @g_oCXXTag, i32 0, i32 11, i32 6), align 8
  %tobool7 = icmp ne i8* %1, null
  br i1 %tobool7, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.end6
  %2 = load i32, i32* %iCorkQueueIndex, align 4
  store i32 %2, i32* %retval, align 4
  br label %return

if.end9:                                          ; preds = %if.end6
  %call10 = call i32 @cxxScopeGetType()
  store i32 %call10, i32* %eScopeType, align 4
  %3 = load i32, i32* %eScopeType, align 4
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end9
  %4 = load i32, i32* %iCorkQueueIndex, align 4
  store i32 %4, i32* %retval, align 4
  br label %return

if.end12:                                         ; preds = %if.end9
  %5 = load i32, i32* %eScopeType, align 4
  %cmp13 = icmp eq i32 %5, 3
  br i1 %cmp13, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end12
  %call15 = call i32 @cxxScopeGetSize()
  %cmp16 = icmp slt i32 %call15, 2
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.then14
  store i32 -1, i32* %retval, align 4
  br label %return

if.end18:                                         ; preds = %if.then14
  %call19 = call %struct.sVString* @cxxScopeGetFullNameExceptLastComponentAsString()
  store %struct.sVString* %call19, %struct.sVString** %x, align 8
  br label %do.body

do.body:                                          ; preds = %if.end18
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %if.end21

if.else:                                          ; preds = %if.end12
  %6 = load i8*, i8** getelementptr inbounds (%struct.sTagEntryInfo, %struct.sTagEntryInfo* @g_oCXXTag, i32 0, i32 11, i32 6), align 8
  %call20 = call %struct.sVString* @vStringNewInit(i8* %6)
  store %struct.sVString* %call20, %struct.sVString** %x, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.else, %do.end
  %7 = load %struct.sVString*, %struct.sVString** %x, align 8
  call void @vStringCatS(%struct.sVString* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0))
  %8 = load %struct.sVString*, %struct.sVString** %x, align 8
  %9 = load i8*, i8** getelementptr inbounds (%struct.sTagEntryInfo, %struct.sTagEntryInfo* @g_oCXXTag, i32 0, i32 7), align 8
  call void @vStringCatS(%struct.sVString* %8, i8* %9)
  %10 = load %struct.sVString*, %struct.sVString** %x, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %10, i32 0, i32 2
  %11 = load i8*, i8** %buffer, align 8
  store i8* %11, i8** getelementptr inbounds (%struct.sTagEntryInfo, %struct.sTagEntryInfo* @g_oCXXTag, i32 0, i32 7), align 8
  br label %do.body22

do.body22:                                        ; preds = %if.end21
  br label %do.end23

do.end23:                                         ; preds = %do.body22
  %call24 = call i32 @makeTagEntry(%struct.sTagEntryInfo* @g_oCXXTag)
  %12 = load %struct.sVString*, %struct.sVString** %x, align 8
  call void @vStringDelete(%struct.sVString* %12)
  %13 = load i32, i32* %iCorkQueueIndex, align 4
  store i32 %13, i32* %retval, align 4
  br label %return

return:                                           ; preds = %do.end23, %if.then17, %if.then11, %if.then8, %if.then5, %if.then1
  %14 = load i32, i32* %retval, align 4
  ret i32 %14
}

declare zeroext i1 @isXtagEnabled(i32) #1

declare void @markTagExtraBit(%struct.sTagEntryInfo*, i32) #1

declare i32 @makeTagEntry(%struct.sTagEntryInfo*) #1

declare i32 @cxxScopeGetType() #1

declare i32 @cxxScopeGetSize() #1

declare %struct.sVString* @cxxScopeGetFullNameExceptLastComponentAsString() #1

declare %struct.sVString* @vStringNewInit(i8*) #1

declare void @vStringDelete(%struct.sVString*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @cxxTag(i32 %uKind, %struct._CXXToken* %pToken) #0 {
entry:
  %uKind.addr = alloca i32, align 4
  %pToken.addr = alloca %struct._CXXToken*, align 8
  store i32 %uKind, i32* %uKind.addr, align 4
  store %struct._CXXToken* %pToken, %struct._CXXToken** %pToken.addr, align 8
  %0 = load i32, i32* %uKind.addr, align 4
  %1 = load %struct._CXXToken*, %struct._CXXToken** %pToken.addr, align 8
  %call = call %struct.sTagEntryInfo* @cxxTagBegin(i32 %0, %struct._CXXToken* %1)
  %cmp = icmp ne %struct.sTagEntryInfo* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 @cxxTagCommit()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @vStringResize(%struct.sVString*, i64) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 10.0.0 (https://github.com/holzschu/clang.git 0cfc630fbdb62e96720b611a57123ef3eb13e297) (https://github.com/holzschu/llvm.git 0d8a71e39b28502c24718f7e74b5acbcfe36dfe0)"}
