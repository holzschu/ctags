; ModuleID = 'fortran.c'
source_filename = "fortran.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-ios11.0.0"

%struct.sKindDefinition = type { i8, i8, i8*, i8*, i8, i32, %struct.sRoleDesc*, %struct.sScopeSeparator*, i32, i32, i32, %struct.sKindDefinition*, %struct.sKindDefinition* }
%struct.sRoleDesc = type { i8, i8*, i8* }
%struct.sScopeSeparator = type { i32, i8* }
%struct.keywordTable = type { i8*, i32 }
%struct.sVString = type { i64, i64, i8* }
%struct.sOptionValues = type { i8, i8, i8, i32, i8, i32, i8, i8, %struct.sFmtElement*, i8*, i8*, %struct.sPtrArray*, %struct.sPtrArray*, i32, i8*, i8*, i32, i8, i8, i8*, i32, i8, i8, i8, i8, i8, i8, i32, i8, i32, i32 }
%struct.sFmtElement = type opaque
%struct.sPtrArray = type opaque
%struct.anon.1 = type { i32, i32, %struct.sTokenInfo* }
%struct.sTokenInfo = type { i32, i32, i32, %struct.sVString*, %struct.sVString*, %struct.sVString*, i32, i8, %struct.sTokenInfo*, i64, %struct._MIOPos }
%struct._MIOPos = type { i32, %union.anon.0 }
%union.anon.0 = type { i64 }
%struct.sParserDefinition = type { i8*, %struct.sKindDefinition*, i32, i8**, i8**, i8**, void (i32)*, void (i32, i1)*, void ()*, i32 (i32)*, i8* (%struct._MIO*, i32*, i32)**, i32, i8, i8, i8, i8, %struct.tagRegexTable*, i32, %struct.keywordTable*, i32, %struct.sTagXpathTableTable*, i32, i8, %struct.sFieldDefinition*, i32, %struct.sXtagDefinition*, i32, %struct.sParserDependency*, i32, %struct.sParameterHandlerTable*, i32, %struct.sXpathFileSpec*, i32, i32, i8 }
%struct._MIO = type opaque
%struct.tagRegexTable = type { i8*, i8*, i8*, i8*, i8*, i8 }
%struct.sTagXpathTableTable = type { %struct.sTagXpathTable*, i32 }
%struct.sTagXpathTable = type { i8*, i32, %union.anon, i8* }
%union.anon = type { %struct.sTagXpathMakeTagSpec }
%struct.sTagXpathMakeTagSpec = type { i32, i32, void (i8*, %struct.sTagXpathMakeTagSpec*, %struct.sTagEntryInfo*, i8*)* }
%struct.sTagEntryInfo = type { i8, i64, i8*, i32, %struct._MIOPos, i32, i8*, i8*, i32, [2 x i8], i8*, %struct.anon, i32, [5 x %struct.sTagField], %struct.sPtrArray*, i32, i8*, i64 }
%struct.anon = type { i8*, i8*, i8*, i8*, i32, i32, i8*, i32, i8*, [2 x i8*], i32, i64 }
%struct.sTagField = type { i32, i8*, i8 }
%struct.sFieldDefinition = type { i8, i8*, i8*, i8, [5 x i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)*], i1 (%struct.sTagEntryInfo*)*, i32, i32 }
%struct.sXtagDefinition = type { i8, i8, i8*, i8*, i1 (%struct.sXtagDefinition*)*, i1 (%struct.sXtagDefinition*)*, i32 }
%struct.sParserDependency = type { i32, i8*, i8* }
%struct.sParameterHandlerTable = type { i8*, i8*, void (i32, i8*, i8*)* }
%struct.sXpathFileSpec = type { i8*, i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [8 x i8] c"Fortran\00", align 1
@FortranKinds = internal global [19 x %struct.sKindDefinition] [%struct.sKindDefinition { i8 1, i8 98, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 99, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 101, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 102, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 105, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.12, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 107, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 108, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 0, i8 76, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.18, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 109, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 77, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.22, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 110, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 78, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.26, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 112, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 0, i8 80, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.30, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 115, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 116, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.34, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 118, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.36, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 83, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.38, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }], align 8
@extensions = internal constant [10 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i32 0, i32 0), i8* null], align 8
@FortranKeywordTable = internal constant [86 x %struct.keywordTable] [%struct.keywordTable { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.52, i32 0, i32 0), i32 0 }, %struct.keywordTable { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.63, i32 0, i32 0), i32 1 }, %struct.keywordTable { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.64, i32 0, i32 0), i32 2 }, %struct.keywordTable { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.65, i32 0, i32 0), i32 3 }, %struct.keywordTable { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.66, i32 0, i32 0), i32 4 }, %struct.keywordTable { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.67, i32 0, i32 0), i32 5 }, %struct.keywordTable { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i32 0, i32 0), i32 6 }, %struct.keywordTable { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.69, i32 0, i32 0), i32 7 }, %struct.keywordTable { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.70, i32 0, i32 0), i32 8 }, %struct.keywordTable { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.71, i32 0, i32 0), i32 9 }, %struct.keywordTable { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.72, i32 0, i32 0), i32 10 }, %struct.keywordTable { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.73, i32 0, i32 0), i32 11 }, %struct.keywordTable { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.74, i32 0, i32 0), i32 12 }, %struct.keywordTable { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i32 13 }, %struct.keywordTable { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.75, i32 0, i32 0), i32 14 }, %struct.keywordTable { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.76, i32 0, i32 0), i32 15 }, %struct.keywordTable { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.77, i32 0, i32 0), i32 16 }, %struct.keywordTable { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.53, i32 0, i32 0), i32 17 }, %struct.keywordTable { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.78, i32 0, i32 0), i32 18 }, %struct.keywordTable { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.79, i32 0, i32 0), i32 19 }, %struct.keywordTable { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.80, i32 0, i32 0), i32 20 }, %struct.keywordTable { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.81, i32 0, i32 0), i32 21 }, %struct.keywordTable { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.82, i32 0, i32 0), i32 22 }, %struct.keywordTable { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.83, i32 0, i32 0), i32 23 }, %struct.keywordTable { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.56, i32 0, i32 0), i32 24 }, %struct.keywordTable { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i32 25 }, %struct.keywordTable { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 26 }, %struct.keywordTable { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i32 0, i32 0), i32 27 }, %struct.keywordTable { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.84, i32 0, i32 0), i32 28 }, %struct.keywordTable { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.85, i32 0, i32 0), i32 29 }, %struct.keywordTable { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.86, i32 0, i32 0), i32 30 }, %struct.keywordTable { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.87, i32 0, i32 0), i32 31 }, %struct.keywordTable { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.88, i32 0, i32 0), i32 32 }, %struct.keywordTable { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.89, i32 0, i32 0), i32 33 }, %struct.keywordTable { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i32 34 }, %struct.keywordTable { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.90, i32 0, i32 0), i32 35 }, %struct.keywordTable { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.91, i32 0, i32 0), i32 36 }, %struct.keywordTable { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.92, i32 0, i32 0), i32 37 }, %struct.keywordTable { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.93, i32 0, i32 0), i32 38 }, %struct.keywordTable { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.94, i32 0, i32 0), i32 39 }, %struct.keywordTable { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.95, i32 0, i32 0), i32 40 }, %struct.keywordTable { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.96, i32 0, i32 0), i32 41 }, %struct.keywordTable { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.97, i32 0, i32 0), i32 42 }, %struct.keywordTable { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i32 43 }, %struct.keywordTable { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.98, i32 0, i32 0), i32 44 }, %struct.keywordTable { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.99, i32 0, i32 0), i32 45 }, %struct.keywordTable { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.100, i32 0, i32 0), i32 46 }, %struct.keywordTable { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0), i32 47 }, %struct.keywordTable { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), i32 48 }, %struct.keywordTable { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.54, i32 0, i32 0), i32 49 }, %struct.keywordTable { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.101, i32 0, i32 0), i32 50 }, %struct.keywordTable { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.102, i32 0, i32 0), i32 51 }, %struct.keywordTable { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.103, i32 0, i32 0), i32 52 }, %struct.keywordTable { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.104, i32 0, i32 0), i32 53 }, %struct.keywordTable { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.105, i32 0, i32 0), i32 54 }, %struct.keywordTable { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.106, i32 0, i32 0), i32 55 }, %struct.keywordTable { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.107, i32 0, i32 0), i32 56 }, %struct.keywordTable { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.108, i32 0, i32 0), i32 57 }, %struct.keywordTable { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.109, i32 0, i32 0), i32 58 }, %struct.keywordTable { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.110, i32 0, i32 0), i32 59 }, %struct.keywordTable { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.111, i32 0, i32 0), i32 60 }, %struct.keywordTable { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.112, i32 0, i32 0), i32 61 }, %struct.keywordTable { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i32 0, i32 0), i32 62 }, %struct.keywordTable { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.113, i32 0, i32 0), i32 63 }, %struct.keywordTable { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.114, i32 0, i32 0), i32 64 }, %struct.keywordTable { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.115, i32 0, i32 0), i32 65 }, %struct.keywordTable { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.116, i32 0, i32 0), i32 66 }, %struct.keywordTable { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.117, i32 0, i32 0), i32 67 }, %struct.keywordTable { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.118, i32 0, i32 0), i32 68 }, %struct.keywordTable { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.119, i32 0, i32 0), i32 69 }, %struct.keywordTable { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.120, i32 0, i32 0), i32 70 }, %struct.keywordTable { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.121, i32 0, i32 0), i32 71 }, %struct.keywordTable { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.122, i32 0, i32 0), i32 72 }, %struct.keywordTable { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.123, i32 0, i32 0), i32 73 }, %struct.keywordTable { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i32 0, i32 0), i32 74 }, %struct.keywordTable { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i32 0, i32 0), i32 75 }, %struct.keywordTable { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.124, i32 0, i32 0), i32 76 }, %struct.keywordTable { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.125, i32 0, i32 0), i32 77 }, %struct.keywordTable { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i32 0, i32 0), i32 78 }, %struct.keywordTable { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.126, i32 0, i32 0), i32 79 }, %struct.keywordTable { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.127, i32 0, i32 0), i32 80 }, %struct.keywordTable { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.128, i32 0, i32 0), i32 81 }, %struct.keywordTable { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.129, i32 0, i32 0), i32 82 }, %struct.keywordTable { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.130, i32 0, i32 0), i32 83 }, %struct.keywordTable { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.131, i32 0, i32 0), i32 84 }, %struct.keywordTable { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.132, i32 0, i32 0), i32 85 }], align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"blockData\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"block data\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"common\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"common blocks\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"entry points\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"enum\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"enumerations\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"function\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"functions\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"interface\00", align 1
@.str.12 = private unnamed_addr constant [49 x i8] c"interface contents, generic names, and operators\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"component\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"type and structure components\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"labels\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"local\00", align 1
@.str.18 = private unnamed_addr constant [44 x i8] c"local, common block, and namelist variables\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"module\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"modules\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"method\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"type bound procedures\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"namelist\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"namelists\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"enumerator\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"enumeration values\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"program\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"programs\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"prototype\00", align 1
@.str.30 = private unnamed_addr constant [22 x i8] c"subprogram prototypes\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"subroutine\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"subroutines\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.34 = private unnamed_addr constant [29 x i8] c"derived types and structures\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"variable\00", align 1
@.str.36 = private unnamed_addr constant [38 x i8] c"program (global) and module variables\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"submodule\00", align 1
@.str.38 = private unnamed_addr constant [11 x i8] c"submodules\00", align 1
@.str.39 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"for\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"ftn\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"f77\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"f90\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"f95\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"f03\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c"f08\00", align 1
@.str.47 = private unnamed_addr constant [4 x i8] c"f15\00", align 1
@FreeSourceForm = internal global i8 0, align 1
@Column = internal global i32 0, align 4
@FreeSourceFormFound = internal global i8 0, align 1
@.str.48 = private unnamed_addr constant [54 x i8] c"%s: not fixed source form; retry as free source form\0A\00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"*/+=<>\00", align 1
@Ungetc = internal global i32 0, align 4
@getFreeFormChar.newline = internal global i8 1, align 1
@ParsingString = internal global i8 0, align 1
@getLineType.label = internal global %struct.sVString* null, align 8
@.str.50 = private unnamed_addr constant [9 x i8] c"*Cc!#$Dd\00", align 1
@Option = external constant %struct.sOptionValues, align 8
@Ancestors = internal global %struct.anon.1 zeroinitializer, align 8
@implementationString.names = internal constant [4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.54, i32 0, i32 0)], align 8
@.str.51 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.52 = private unnamed_addr constant [9 x i8] c"abstract\00", align 1
@.str.53 = private unnamed_addr constant [9 x i8] c"deferred\00", align 1
@.str.54 = private unnamed_addr constant [16 x i8] c"non_overridable\00", align 1
@.str.55 = private unnamed_addr constant [47 x i8] c"%s: unterminated character string at line %lu\0A\00", align 1
@Lang_fortran = internal global i32 0, align 4
@.str.56 = private unnamed_addr constant [4 x i8] c"end\00", align 1
@.str.57 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.58 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.59 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.60 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.61 = private unnamed_addr constant [3 x i8] c"=>\00", align 1
@.str.62 = private unnamed_addr constant [10 x i8] c"anonymous\00", align 1
@.str.63 = private unnamed_addr constant [12 x i8] c"allocatable\00", align 1
@.str.64 = private unnamed_addr constant [11 x i8] c"assignment\00", align 1
@.str.65 = private unnamed_addr constant [10 x i8] c"associate\00", align 1
@.str.66 = private unnamed_addr constant [10 x i8] c"automatic\00", align 1
@.str.67 = private unnamed_addr constant [5 x i8] c"bind\00", align 1
@.str.68 = private unnamed_addr constant [6 x i8] c"block\00", align 1
@.str.69 = private unnamed_addr constant [5 x i8] c"byte\00", align 1
@.str.70 = private unnamed_addr constant [10 x i8] c"cexternal\00", align 1
@.str.71 = private unnamed_addr constant [8 x i8] c"cglobal\00", align 1
@.str.72 = private unnamed_addr constant [6 x i8] c"class\00", align 1
@.str.73 = private unnamed_addr constant [10 x i8] c"character\00", align 1
@.str.74 = private unnamed_addr constant [12 x i8] c"codimension\00", align 1
@.str.75 = private unnamed_addr constant [8 x i8] c"complex\00", align 1
@.str.76 = private unnamed_addr constant [9 x i8] c"contains\00", align 1
@.str.77 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.78 = private unnamed_addr constant [10 x i8] c"dimension\00", align 1
@.str.79 = private unnamed_addr constant [11 x i8] c"dll_export\00", align 1
@.str.80 = private unnamed_addr constant [11 x i8] c"dll_import\00", align 1
@.str.81 = private unnamed_addr constant [3 x i8] c"do\00", align 1
@.str.82 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@.str.83 = private unnamed_addr constant [10 x i8] c"elemental\00", align 1
@.str.84 = private unnamed_addr constant [12 x i8] c"equivalence\00", align 1
@.str.85 = private unnamed_addr constant [8 x i8] c"extends\00", align 1
@.str.86 = private unnamed_addr constant [9 x i8] c"external\00", align 1
@.str.87 = private unnamed_addr constant [6 x i8] c"final\00", align 1
@.str.88 = private unnamed_addr constant [7 x i8] c"forall\00", align 1
@.str.89 = private unnamed_addr constant [7 x i8] c"format\00", align 1
@.str.90 = private unnamed_addr constant [8 x i8] c"generic\00", align 1
@.str.91 = private unnamed_addr constant [3 x i8] c"if\00", align 1
@.str.92 = private unnamed_addr constant [9 x i8] c"implicit\00", align 1
@.str.93 = private unnamed_addr constant [7 x i8] c"import\00", align 1
@.str.94 = private unnamed_addr constant [8 x i8] c"include\00", align 1
@.str.95 = private unnamed_addr constant [7 x i8] c"inline\00", align 1
@.str.96 = private unnamed_addr constant [8 x i8] c"integer\00", align 1
@.str.97 = private unnamed_addr constant [7 x i8] c"intent\00", align 1
@.str.98 = private unnamed_addr constant [10 x i8] c"intrinsic\00", align 1
@.str.99 = private unnamed_addr constant [8 x i8] c"logical\00", align 1
@.str.100 = private unnamed_addr constant [4 x i8] c"map\00", align 1
@.str.101 = private unnamed_addr constant [7 x i8] c"nopass\00", align 1
@.str.102 = private unnamed_addr constant [9 x i8] c"operator\00", align 1
@.str.103 = private unnamed_addr constant [9 x i8] c"optional\00", align 1
@.str.104 = private unnamed_addr constant [10 x i8] c"parameter\00", align 1
@.str.105 = private unnamed_addr constant [7 x i8] c"pascal\00", align 1
@.str.106 = private unnamed_addr constant [5 x i8] c"pass\00", align 1
@.str.107 = private unnamed_addr constant [10 x i8] c"pexternal\00", align 1
@.str.108 = private unnamed_addr constant [8 x i8] c"pglobal\00", align 1
@.str.109 = private unnamed_addr constant [8 x i8] c"pointer\00", align 1
@.str.110 = private unnamed_addr constant [10 x i8] c"precision\00", align 1
@.str.111 = private unnamed_addr constant [8 x i8] c"private\00", align 1
@.str.112 = private unnamed_addr constant [10 x i8] c"procedure\00", align 1
@.str.113 = private unnamed_addr constant [7 x i8] c"public\00", align 1
@.str.114 = private unnamed_addr constant [5 x i8] c"pure\00", align 1
@.str.115 = private unnamed_addr constant [5 x i8] c"real\00", align 1
@.str.116 = private unnamed_addr constant [7 x i8] c"record\00", align 1
@.str.117 = private unnamed_addr constant [10 x i8] c"recursive\00", align 1
@.str.118 = private unnamed_addr constant [5 x i8] c"save\00", align 1
@.str.119 = private unnamed_addr constant [7 x i8] c"select\00", align 1
@.str.120 = private unnamed_addr constant [9 x i8] c"sequence\00", align 1
@.str.121 = private unnamed_addr constant [7 x i8] c"static\00", align 1
@.str.122 = private unnamed_addr constant [8 x i8] c"stdcall\00", align 1
@.str.123 = private unnamed_addr constant [10 x i8] c"structure\00", align 1
@.str.124 = private unnamed_addr constant [7 x i8] c"target\00", align 1
@.str.125 = private unnamed_addr constant [5 x i8] c"then\00", align 1
@.str.126 = private unnamed_addr constant [6 x i8] c"union\00", align 1
@.str.127 = private unnamed_addr constant [4 x i8] c"use\00", align 1
@.str.128 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.129 = private unnamed_addr constant [8 x i8] c"virtual\00", align 1
@.str.130 = private unnamed_addr constant [9 x i8] c"volatile\00", align 1
@.str.131 = private unnamed_addr constant [6 x i8] c"where\00", align 1
@.str.132 = private unnamed_addr constant [6 x i8] c"while\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sParserDefinition* @FortranParser() #0 {
entry:
  %def = alloca %struct.sParserDefinition*, align 8
  %call = call %struct.sParserDefinition* @parserNew(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store %struct.sParserDefinition* %call, %struct.sParserDefinition** %def, align 8
  %0 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %0, i32 0, i32 1
  store %struct.sKindDefinition* getelementptr inbounds ([19 x %struct.sKindDefinition], [19 x %struct.sKindDefinition]* @FortranKinds, i64 0, i64 0), %struct.sKindDefinition** %kindTable, align 8
  %1 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %1, i32 0, i32 2
  store i32 19, i32* %kindCount, align 8
  %2 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %extensions = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %2, i32 0, i32 3
  store i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @extensions, i64 0, i64 0), i8*** %extensions, align 8
  %3 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %parser2 = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %3, i32 0, i32 9
  store i32 (i32)* @findFortranTags, i32 (i32)** %parser2, align 8
  %4 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %initialize = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %4, i32 0, i32 6
  store void (i32)* @initialize, void (i32)** %initialize, align 8
  %5 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %keywordTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %5, i32 0, i32 18
  store %struct.keywordTable* getelementptr inbounds ([86 x %struct.keywordTable], [86 x %struct.keywordTable]* @FortranKeywordTable, i64 0, i64 0), %struct.keywordTable** %keywordTable, align 8
  %6 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %keywordCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %6, i32 0, i32 19
  store i32 86, i32* %keywordCount, align 8
  %7 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  ret %struct.sParserDefinition* %7
}

declare %struct.sParserDefinition* @parserNew(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @findFortranTags(i32 %passCount) #0 {
entry:
  %passCount.addr = alloca i32, align 4
  %token = alloca %struct.sTokenInfo*, align 8
  %rescan = alloca i32, align 4
  store i32 %passCount, i32* %passCount.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %call = call %struct.sTokenInfo* @newToken()
  store %struct.sTokenInfo* %call, %struct.sTokenInfo** %token, align 8
  %0 = load i32, i32* %passCount.addr, align 4
  %cmp = icmp ugt i32 %0, 1
  %frombool = zext i1 %cmp to i8
  store i8 %frombool, i8* @FreeSourceForm, align 1
  store i32 0, i32* @Column, align 4
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  call void @parseProgramUnit(%struct.sTokenInfo* %1)
  %2 = load i8, i8* @FreeSourceFormFound, align 1
  %tobool = trunc i8 %2 to i1
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %do.end
  %3 = load i8, i8* @FreeSourceForm, align 1
  %tobool1 = trunc i8 %3 to i1
  br i1 %tobool1, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call2 = call i8* @getInputFileName()
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.48, i64 0, i64 0), i8* %call2)
  store i32 1, i32* %rescan, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %do.end
  store i32 0, i32* %rescan, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @ancestorClear()
  %4 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  call void @deleteToken(%struct.sTokenInfo* %4)
  %5 = load i32, i32* %rescan, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @initialize(i32 %language) #0 {
entry:
  %language.addr = alloca i32, align 4
  store i32 %language, i32* %language.addr, align 4
  %0 = load i32, i32* %language.addr, align 4
  store i32 %0, i32* @Lang_fortran, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct.sTokenInfo* @newToken() #0 {
entry:
  %token = alloca %struct.sTokenInfo*, align 8
  %tmp = alloca %struct._MIOPos, align 8
  %call = call i8* @eMalloc(i64 80)
  %0 = bitcast i8* %call to %struct.sTokenInfo*
  store %struct.sTokenInfo* %0, %struct.sTokenInfo** %token, align 8
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %1, i32 0, i32 0
  store i32 0, i32* %type, align 8
  %2 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %2, i32 0, i32 1
  store i32 -1, i32* %keyword, align 4
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %tag = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %3, i32 0, i32 2
  store i32 -1, i32* %tag, align 8
  %call1 = call %struct.sVString* @vStringNew()
  %4 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %string = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %4, i32 0, i32 3
  store %struct.sVString* %call1, %struct.sVString** %string, align 8
  %5 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %secondary = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %5, i32 0, i32 8
  store %struct.sTokenInfo* null, %struct.sTokenInfo** %secondary, align 8
  %6 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %parentType = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %6, i32 0, i32 4
  store %struct.sVString* null, %struct.sVString** %parentType, align 8
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %signature = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %7, i32 0, i32 5
  store %struct.sVString* null, %struct.sVString** %signature, align 8
  %8 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %implementation = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %8, i32 0, i32 6
  store i32 0, i32* %implementation, align 8
  %9 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %isMethod = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %9, i32 0, i32 7
  store i8 0, i8* %isMethod, align 4
  %call2 = call i64 @getInputLineNumber()
  %10 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %lineNumber = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %10, i32 0, i32 9
  store i64 %call2, i64* %lineNumber, align 8
  %11 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %filePosition = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %11, i32 0, i32 10
  %call3 = call [2 x i64] @getInputFilePosition()
  %12 = bitcast %struct._MIOPos* %tmp to [2 x i64]*
  store [2 x i64] %call3, [2 x i64]* %12, align 8
  %13 = bitcast %struct._MIOPos* %filePosition to i8*
  %14 = bitcast %struct._MIOPos* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 16, i1 false)
  %15 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  ret %struct.sTokenInfo* %15
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseProgramUnit(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %one = alloca i8, align 1
  %two = alloca i8, align 1
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %0)
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %1, i32 0, i32 0
  %2 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %2, 14
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %3)
  br label %if.end14

if.else:                                          ; preds = %do.body
  %4 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %4, i32 0, i32 1
  %5 = load i32, i32* %keyword, align 4
  switch i32 %5, label %sw.default [
    i32 6, label %sw.bb
    i32 24, label %sw.bb1
    i32 34, label %sw.bb2
    i32 75, label %sw.bb2
    i32 74, label %sw.bb3
    i32 47, label %sw.bb4
    i32 62, label %sw.bb5
  ]

sw.bb:                                            ; preds = %if.else
  %6 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @parseBlockData(%struct.sTokenInfo* %6)
  br label %sw.epilog

sw.bb1:                                           ; preds = %if.else
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @skipToNextStatement(%struct.sTokenInfo* %7)
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.else, %if.else
  %8 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @parseSubprogram(%struct.sTokenInfo* %8)
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.else
  %9 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @parseModule(%struct.sTokenInfo* %9, i1 zeroext true)
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.else
  %10 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @parseModule(%struct.sTokenInfo* %10, i1 zeroext false)
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.else
  %11 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @parseMainProgram(%struct.sTokenInfo* %11)
  br label %sw.epilog

sw.default:                                       ; preds = %if.else
  %12 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call = call zeroext i1 @isSubprogramPrefix(%struct.sTokenInfo* %12)
  br i1 %call, label %if.then6, label %if.else7

if.then6:                                         ; preds = %sw.default
  %13 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %13)
  br label %if.end13

if.else7:                                         ; preds = %sw.default
  %14 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call8 = call zeroext i1 @parseSpecificationPart(%struct.sTokenInfo* %14)
  %frombool = zext i1 %call8 to i8
  store i8 %frombool, i8* %one, align 1
  %15 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call9 = call zeroext i1 @parseExecutionPart(%struct.sTokenInfo* %15)
  %frombool10 = zext i1 %call9 to i8
  store i8 %frombool10, i8* %two, align 1
  %16 = load i8, i8* %one, align 1
  %tobool = trunc i8 %16 to i1
  br i1 %tobool, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else7
  %17 = load i8, i8* %two, align 1
  %tobool11 = trunc i8 %17 to i1
  br i1 %tobool11, label %if.end, label %if.then12

if.then12:                                        ; preds = %lor.lhs.false
  %18 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %18)
  br label %if.end

if.end:                                           ; preds = %if.then12, %lor.lhs.false, %if.else7
  br label %if.end13

if.end13:                                         ; preds = %if.end, %if.then6
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end13, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  br label %if.end14

if.end14:                                         ; preds = %sw.epilog, %if.then
  br label %do.cond

do.cond:                                          ; preds = %if.end14
  %19 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type15 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %19, i32 0, i32 0
  %20 = load i32, i32* %type15, align 8
  %cmp16 = icmp eq i32 %20, 1
  %lnot = xor i1 %cmp16, true
  br i1 %lnot, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  ret void
}

declare void @verbose(i8*, ...) #1

declare i8* @getInputFileName() #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @ancestorClear() #0 {
entry:
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @Ancestors, i32 0, i32 0), align 8
  %cmp = icmp ugt i32 %0, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @ancestorPop()
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** getelementptr inbounds (%struct.anon.1, %struct.anon.1* @Ancestors, i32 0, i32 2), align 8
  %cmp1 = icmp ne %struct.sTokenInfo* %1, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %2 = load %struct.sTokenInfo*, %struct.sTokenInfo** getelementptr inbounds (%struct.anon.1, %struct.anon.1* @Ancestors, i32 0, i32 2), align 8
  %3 = bitcast %struct.sTokenInfo* %2 to i8*
  call void @eFree(i8* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  store %struct.sTokenInfo* null, %struct.sTokenInfo** getelementptr inbounds (%struct.anon.1, %struct.anon.1* @Ancestors, i32 0, i32 2), align 8
  store i32 0, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @Ancestors, i32 0, i32 0), align 8
  store i32 0, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @Ancestors, i32 0, i32 1), align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @deleteToken(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %cmp = icmp ne %struct.sTokenInfo* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %1, i32 0, i32 3
  %2 = load %struct.sVString*, %struct.sVString** %string, align 8
  call void @vStringDelete(%struct.sVString* %2)
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %parentType = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %3, i32 0, i32 4
  %4 = load %struct.sVString*, %struct.sVString** %parentType, align 8
  call void @vStringDelete(%struct.sVString* %4)
  %5 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %signature = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %5, i32 0, i32 5
  %6 = load %struct.sVString*, %struct.sVString** %signature, align 8
  call void @vStringDelete(%struct.sVString* %6)
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %secondary = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %7, i32 0, i32 8
  %8 = load %struct.sTokenInfo*, %struct.sTokenInfo** %secondary, align 8
  call void @deleteToken(%struct.sTokenInfo* %8)
  %9 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %secondary1 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %9, i32 0, i32 8
  store %struct.sTokenInfo* null, %struct.sTokenInfo** %secondary1, align 8
  %10 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %11 = bitcast %struct.sTokenInfo* %10 to i8*
  call void @eFree(i8* %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i8* @eMalloc(i64) #1

declare %struct.sVString* @vStringNew() #1

declare i64 @getInputLineNumber() #1

declare [2 x i64] @getInputFilePosition() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @readToken(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %c = alloca i32, align 4
  %vStringClear_s = alloca %struct.sVString*, align 8
  %tmp = alloca %struct._MIOPos, align 8
  %operatorChars = alloca i8*, align 8
  %numeric = alloca %struct.sVString*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %secondary = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 8
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %secondary, align 8
  call void @deleteToken(%struct.sTokenInfo* %1)
  %2 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %2, i32 0, i32 0
  store i32 0, i32* %type, align 8
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %tag = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %3, i32 0, i32 2
  store i32 -1, i32* %tag, align 8
  %4 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %4, i32 0, i32 1
  store i32 -1, i32* %keyword, align 4
  %5 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %secondary1 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %5, i32 0, i32 8
  store %struct.sTokenInfo* null, %struct.sTokenInfo** %secondary1, align 8
  %6 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %implementation = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %6, i32 0, i32 6
  store i32 0, i32* %implementation, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %7, i32 0, i32 3
  %8 = load %struct.sVString*, %struct.sVString** %string, align 8
  store %struct.sVString* %8, %struct.sVString** %vStringClear_s, align 8
  %9 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %9, i32 0, i32 0
  store i64 0, i64* %length, align 8
  %10 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %10, i32 0, i32 2
  %11 = load i8*, i8** %buffer, align 8
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 0
  store i8 0, i8* %arrayidx, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  %12 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %parentType = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %12, i32 0, i32 4
  %13 = load %struct.sVString*, %struct.sVString** %parentType, align 8
  call void @vStringDelete(%struct.sVString* %13)
  %14 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %signature = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %14, i32 0, i32 5
  %15 = load %struct.sVString*, %struct.sVString** %signature, align 8
  call void @vStringDelete(%struct.sVString* %15)
  %16 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %parentType2 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %16, i32 0, i32 4
  store %struct.sVString* null, %struct.sVString** %parentType2, align 8
  %17 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %isMethod = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %17, i32 0, i32 7
  store i8 0, i8* %isMethod, align 4
  %18 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %signature3 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %18, i32 0, i32 5
  store %struct.sVString* null, %struct.sVString** %signature3, align 8
  br label %getNextChar

getNextChar:                                      ; preds = %sw.bb8, %sw.bb7, %do.end
  %call = call i32 @getChar()
  store i32 %call, i32* %c, align 4
  %call4 = call i64 @getInputLineNumber()
  %19 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %lineNumber = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %19, i32 0, i32 9
  store i64 %call4, i64* %lineNumber, align 8
  %20 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %filePosition = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %20, i32 0, i32 10
  %call5 = call [2 x i64] @getInputFilePosition()
  %21 = bitcast %struct._MIOPos* %tmp to [2 x i64]*
  store [2 x i64] %call5, [2 x i64]* %21, align 8
  %22 = bitcast %struct._MIOPos* %filePosition to i8*
  %23 = bitcast %struct._MIOPos* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 8 %23, i64 16, i1 false)
  %24 = load i32, i32* %c, align 4
  switch i32 %24, label %sw.default [
    i32 -1, label %sw.bb
    i32 32, label %sw.bb7
    i32 9, label %sw.bb8
    i32 44, label %sw.bb9
    i32 40, label %sw.bb11
    i32 41, label %sw.bb13
    i32 91, label %sw.bb15
    i32 93, label %sw.bb17
    i32 37, label %sw.bb19
    i32 42, label %sw.bb21
    i32 47, label %sw.bb21
    i32 43, label %sw.bb21
    i32 45, label %sw.bb21
    i32 61, label %sw.bb21
    i32 60, label %sw.bb21
    i32 62, label %sw.bb21
    i32 33, label %sw.bb28
    i32 10, label %sw.bb36
    i32 46, label %sw.bb41
    i32 34, label %sw.bb51
    i32 39, label %sw.bb51
    i32 59, label %sw.bb54
    i32 58, label %sw.bb56
  ]

sw.bb:                                            ; preds = %getNextChar
  %25 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type6 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %25, i32 0, i32 0
  store i32 1, i32* %type6, align 8
  br label %sw.epilog

sw.bb7:                                           ; preds = %getNextChar
  br label %getNextChar

sw.bb8:                                           ; preds = %getNextChar
  br label %getNextChar

sw.bb9:                                           ; preds = %getNextChar
  %26 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type10 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %26, i32 0, i32 0
  store i32 2, i32* %type10, align 8
  br label %sw.epilog

sw.bb11:                                          ; preds = %getNextChar
  %27 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type12 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %27, i32 0, i32 0
  store i32 10, i32* %type12, align 8
  br label %sw.epilog

sw.bb13:                                          ; preds = %getNextChar
  %28 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type14 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %28, i32 0, i32 0
  store i32 9, i32* %type14, align 8
  br label %sw.epilog

sw.bb15:                                          ; preds = %getNextChar
  %29 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type16 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %29, i32 0, i32 0
  store i32 11, i32* %type16, align 8
  br label %sw.epilog

sw.bb17:                                          ; preds = %getNextChar
  %30 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type18 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %30, i32 0, i32 0
  store i32 12, i32* %type18, align 8
  br label %sw.epilog

sw.bb19:                                          ; preds = %getNextChar
  %31 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type20 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %31, i32 0, i32 0
  store i32 13, i32* %type20, align 8
  br label %sw.epilog

sw.bb21:                                          ; preds = %getNextChar, %getNextChar, %getNextChar, %getNextChar, %getNextChar, %getNextChar, %getNextChar
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i64 0, i64 0), i8** %operatorChars, align 8
  br label %do.body22

do.body22:                                        ; preds = %do.cond, %sw.bb21
  %32 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string23 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %32, i32 0, i32 3
  %33 = load %struct.sVString*, %struct.sVString** %string23, align 8
  %34 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %33, i32 %34)
  %call24 = call i32 @getChar()
  store i32 %call24, i32* %c, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body22
  %35 = load i32, i32* %c, align 4
  %call25 = call i8* @strchr(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i32 0, i32 0), i32 %35)
  %cmp = icmp ne i8* %call25, null
  br i1 %cmp, label %do.body22, label %do.end26

do.end26:                                         ; preds = %do.cond
  %36 = load i32, i32* %c, align 4
  call void @ungetChar(i32 %36)
  %37 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type27 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %37, i32 0, i32 0
  store i32 8, i32* %type27, align 8
  br label %sw.epilog

sw.bb28:                                          ; preds = %getNextChar
  %38 = load i8, i8* @FreeSourceForm, align 1
  %tobool = trunc i8 %38 to i1
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb28
  br label %do.body29

do.body29:                                        ; preds = %land.end, %if.then
  %call30 = call i32 @getChar()
  store i32 %call30, i32* %c, align 4
  br label %do.cond31

do.cond31:                                        ; preds = %do.body29
  %39 = load i32, i32* %c, align 4
  %cmp32 = icmp ne i32 %39, 10
  br i1 %cmp32, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond31
  %40 = load i32, i32* %c, align 4
  %cmp33 = icmp ne i32 %40, -1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond31
  %41 = phi i1 [ false, %do.cond31 ], [ %cmp33, %land.rhs ]
  br i1 %41, label %do.body29, label %do.end34

do.end34:                                         ; preds = %land.end
  br label %if.end

if.else:                                          ; preds = %sw.bb28
  %call35 = call i32 @skipLine()
  store i32 0, i32* @Column, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end34
  br label %sw.bb36

sw.bb36:                                          ; preds = %getNextChar, %if.end
  %42 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type37 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %42, i32 0, i32 0
  store i32 14, i32* %type37, align 8
  %43 = load i8, i8* @FreeSourceForm, align 1
  %tobool38 = trunc i8 %43 to i1
  br i1 %tobool38, label %if.then39, label %if.end40

if.then39:                                        ; preds = %sw.bb36
  call void @checkForLabel()
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %sw.bb36
  br label %sw.epilog

sw.bb41:                                          ; preds = %getNextChar
  %44 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string42 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %44, i32 0, i32 3
  %45 = load %struct.sVString*, %struct.sVString** %string42, align 8
  %46 = load i32, i32* %c, align 4
  call void @parseIdentifier(%struct.sVString* %45, i32 %46)
  %call43 = call i32 @getChar()
  store i32 %call43, i32* %c, align 4
  %47 = load i32, i32* %c, align 4
  %cmp44 = icmp eq i32 %47, 46
  br i1 %cmp44, label %if.then45, label %if.else48

if.then45:                                        ; preds = %sw.bb41
  %48 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string46 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %48, i32 0, i32 3
  %49 = load %struct.sVString*, %struct.sVString** %string46, align 8
  %50 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %49, i32 %50)
  %51 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type47 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %51, i32 0, i32 0
  store i32 8, i32* %type47, align 8
  br label %if.end50

if.else48:                                        ; preds = %sw.bb41
  %52 = load i32, i32* %c, align 4
  call void @ungetChar(i32 %52)
  %53 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type49 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %53, i32 0, i32 0
  store i32 0, i32* %type49, align 8
  br label %if.end50

if.end50:                                         ; preds = %if.else48, %if.then45
  br label %sw.epilog

sw.bb51:                                          ; preds = %getNextChar, %getNextChar
  %54 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string52 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %54, i32 0, i32 3
  %55 = load %struct.sVString*, %struct.sVString** %string52, align 8
  %56 = load i32, i32* %c, align 4
  call void @parseString(%struct.sVString* %55, i32 %56)
  %57 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type53 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %57, i32 0, i32 0
  store i32 15, i32* %type53, align 8
  br label %sw.epilog

sw.bb54:                                          ; preds = %getNextChar
  %58 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type55 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %58, i32 0, i32 0
  store i32 14, i32* %type55, align 8
  br label %sw.epilog

sw.bb56:                                          ; preds = %getNextChar
  %call57 = call i32 @getChar()
  store i32 %call57, i32* %c, align 4
  %59 = load i32, i32* %c, align 4
  %cmp58 = icmp eq i32 %59, 58
  br i1 %cmp58, label %if.then59, label %if.else61

if.then59:                                        ; preds = %sw.bb56
  %60 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type60 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %60, i32 0, i32 0
  store i32 3, i32* %type60, align 8
  br label %if.end63

if.else61:                                        ; preds = %sw.bb56
  %61 = load i32, i32* %c, align 4
  call void @ungetChar(i32 %61)
  %62 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type62 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %62, i32 0, i32 0
  store i32 16, i32* %type62, align 8
  br label %if.end63

if.end63:                                         ; preds = %if.else61, %if.then59
  br label %sw.epilog

sw.default:                                       ; preds = %getNextChar
  %63 = load i32, i32* %c, align 4
  %call64 = call i32 @isalpha(i32 %63) #4
  %tobool65 = icmp ne i32 %call64, 0
  br i1 %tobool65, label %if.then66, label %if.else67

if.then66:                                        ; preds = %sw.default
  %64 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %65 = load i32, i32* %c, align 4
  call void @readIdentifier(%struct.sTokenInfo* %64, i32 %65)
  br label %if.end77

if.else67:                                        ; preds = %sw.default
  %66 = load i32, i32* %c, align 4
  %call68 = call i32 @isdigit(i32 %66) #4
  %tobool69 = icmp ne i32 %call68, 0
  br i1 %tobool69, label %if.then70, label %if.else74

if.then70:                                        ; preds = %if.else67
  %67 = load i32, i32* %c, align 4
  %call71 = call %struct.sVString* @parseNumeric(i32 %67)
  store %struct.sVString* %call71, %struct.sVString** %numeric, align 8
  %68 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string72 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %68, i32 0, i32 3
  %69 = load %struct.sVString*, %struct.sVString** %string72, align 8
  %70 = load %struct.sVString*, %struct.sVString** %numeric, align 8
  call void @vStringCat(%struct.sVString* %69, %struct.sVString* %70)
  %71 = load %struct.sVString*, %struct.sVString** %numeric, align 8
  call void @vStringDelete(%struct.sVString* %71)
  %72 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type73 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %72, i32 0, i32 0
  store i32 7, i32* %type73, align 8
  br label %if.end76

if.else74:                                        ; preds = %if.else67
  %73 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type75 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %73, i32 0, i32 0
  store i32 0, i32* %type75, align 8
  br label %if.end76

if.end76:                                         ; preds = %if.else74, %if.then70
  br label %if.end77

if.end77:                                         ; preds = %if.end76, %if.then66
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end77, %if.end63, %sw.bb54, %sw.bb51, %if.end50, %if.end40, %do.end26, %sw.bb19, %sw.bb17, %sw.bb15, %sw.bb13, %sw.bb11, %sw.bb9, %sw.bb
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseBlockData(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %0)
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %1, i32 0, i32 1
  %2 = load i32, i32* %keyword, align 4
  %cmp = icmp eq i32 %2, 16
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %do.end
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %3)
  %4 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %4, i32 0, i32 0
  %5 = load i32, i32* %type, align 8
  %cmp1 = icmp eq i32 %5, 4
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %6 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @makeFortranTag(%struct.sTokenInfo* %6, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  br label %if.end3

if.end3:                                          ; preds = %if.end, %do.end
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @ancestorPush(%struct.sTokenInfo* %7)
  %8 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @skipToNextStatement(%struct.sTokenInfo* %8)
  %9 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call = call zeroext i1 @parseSpecificationPart(%struct.sTokenInfo* %9)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end3
  %10 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword4 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %10, i32 0, i32 1
  %11 = load i32, i32* %keyword4, align 4
  %cmp5 = icmp eq i32 %11, 24
  br i1 %cmp5, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %12 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type6 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %12, i32 0, i32 0
  %13 = load i32, i32* %type6, align 8
  %cmp7 = icmp eq i32 %13, 1
  %lnot = xor i1 %cmp7, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %14 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %14, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %15 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @skipToNextStatement(%struct.sTokenInfo* %15)
  br label %while.cond

while.end:                                        ; preds = %land.end
  %16 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readSubToken(%struct.sTokenInfo* %16)
  %17 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @skipToNextStatement(%struct.sTokenInfo* %17)
  call void @ancestorPop()
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @skipToNextStatement(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @skipToToken(%struct.sTokenInfo* %0, i32 14)
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %1)
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %2 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %2, i32 0, i32 0
  %3 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %3, 14
  br i1 %cmp, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseSubprogram(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call = call i32 @subprogramTagType(%struct.sTokenInfo* %1)
  call void @parseSubprogramFull(%struct.sTokenInfo* %0, i32 %call)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseModule(%struct.sTokenInfo* %token, i1 zeroext %isSubmodule) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %isSubmodule.addr = alloca i8, align 1
  %parentIdentifier = alloca %struct.sVString*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  %frombool = zext i1 %isSubmodule to i8
  store i8 %frombool, i8* %isSubmodule.addr, align 1
  store %struct.sVString* null, %struct.sVString** %parentIdentifier, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load i8, i8* %isSubmodule.addr, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.then, label %if.end2

if.then:                                          ; preds = %do.end
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %1)
  %2 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call = call %struct.sVString* @parserParentIdentifierOfSubmoduleStatement(%struct.sTokenInfo* %2)
  store %struct.sVString* %call, %struct.sVString** %parentIdentifier, align 8
  %3 = load %struct.sVString*, %struct.sVString** %parentIdentifier, align 8
  %cmp = icmp eq %struct.sVString* %3, null
  br i1 %cmp, label %if.then1, label %if.end

if.then1:                                         ; preds = %if.then
  %4 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @skipToNextStatement(%struct.sTokenInfo* %4)
  br label %if.end20

if.end:                                           ; preds = %if.then
  br label %if.end2

if.end2:                                          ; preds = %if.end, %do.end
  %5 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %5)
  %6 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %6, i32 0, i32 0
  %7 = load i32, i32* %type, align 8
  %cmp3 = icmp eq i32 %7, 4
  br i1 %cmp3, label %if.then4, label %if.end9

if.then4:                                         ; preds = %if.end2
  %8 = load i8, i8* %isSubmodule.addr, align 1
  %tobool5 = trunc i8 %8 to i1
  br i1 %tobool5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.then4
  %9 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %10 = load %struct.sVString*, %struct.sVString** %parentIdentifier, align 8
  call void @attachParentType(%struct.sTokenInfo* %9, %struct.sVString* %10)
  store %struct.sVString* null, %struct.sVString** %parentIdentifier, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.then4
  %11 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %12 = load i8, i8* %isSubmodule.addr, align 1
  %tobool8 = trunc i8 %12 to i1
  %13 = zext i1 %tobool8 to i64
  %cond = select i1 %tobool8, i32 18, i32 9
  call void @makeFortranTag(%struct.sTokenInfo* %11, i32 %cond)
  br label %if.end9

if.end9:                                          ; preds = %if.end7, %if.end2
  %14 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @ancestorPush(%struct.sTokenInfo* %14)
  %15 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @skipToNextStatement(%struct.sTokenInfo* %15)
  %16 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call10 = call zeroext i1 @parseSpecificationPart(%struct.sTokenInfo* %16)
  %17 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %17, i32 0, i32 1
  %18 = load i32, i32* %keyword, align 4
  %cmp11 = icmp eq i32 %18, 15
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end9
  %19 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @parseInternalSubprogramPart(%struct.sTokenInfo* %19)
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end9
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end13
  %20 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword14 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %20, i32 0, i32 1
  %21 = load i32, i32* %keyword14, align 4
  %cmp15 = icmp eq i32 %21, 24
  br i1 %cmp15, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %22 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type16 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %22, i32 0, i32 0
  %23 = load i32, i32* %type16, align 8
  %cmp17 = icmp eq i32 %23, 1
  %lnot = xor i1 %cmp17, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %24 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %24, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %25 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @skipToNextStatement(%struct.sTokenInfo* %25)
  br label %while.cond

while.end:                                        ; preds = %land.end
  %26 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readSubToken(%struct.sTokenInfo* %26)
  %27 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @skipToNextStatement(%struct.sTokenInfo* %27)
  call void @ancestorPop()
  %28 = load %struct.sVString*, %struct.sVString** %parentIdentifier, align 8
  %tobool18 = icmp ne %struct.sVString* %28, null
  br i1 %tobool18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %while.end
  %29 = load %struct.sVString*, %struct.sVString** %parentIdentifier, align 8
  call void @vStringDelete(%struct.sVString* %29)
  br label %if.end20

if.end20:                                         ; preds = %if.then1, %if.then19, %while.end
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseMainProgram(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @parseSubprogramFull(%struct.sTokenInfo* %0, i32 13)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @isSubprogramPrefix(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %result = alloca i8, align 1
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 1
  %1 = load i32, i32* %keyword, align 4
  switch i32 %1, label %sw.default [
    i32 23, label %sw.bb
    i32 64, label %sw.bb
    i32 67, label %sw.bb
    i32 72, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry
  store i8 1, i8* %result, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store i8 0, i8* %result, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %2 = load i8, i8* %result, align 1
  %tobool = trunc i8 %2 to i1
  ret i1 %tobool
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @parseSpecificationPart(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %result = alloca i8, align 1
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  store i8 0, i8* %result, align 1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call = call zeroext i1 @skipStatementIfKeyword(%struct.sTokenInfo* %0, i32 80)
  br i1 %call, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i8 1, i8* %result, align 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %while.cond1

while.cond1:                                      ; preds = %while.body3, %while.end
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call2 = call zeroext i1 @skipStatementIfKeyword(%struct.sTokenInfo* %1, i32 38)
  br i1 %call2, label %while.body3, label %while.end4

while.body3:                                      ; preds = %while.cond1
  store i8 1, i8* %result, align 1
  br label %while.cond1

while.end4:                                       ; preds = %while.cond1
  br label %while.cond5

while.cond5:                                      ; preds = %while.body7, %while.end4
  %2 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call6 = call zeroext i1 @parseImplicitPartStmt(%struct.sTokenInfo* %2)
  br i1 %call6, label %while.body7, label %while.end8

while.body7:                                      ; preds = %while.cond5
  store i8 1, i8* %result, align 1
  br label %while.cond5

while.end8:                                       ; preds = %while.cond5
  br label %while.cond9

while.cond9:                                      ; preds = %while.body11, %while.end8
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call10 = call zeroext i1 @parseDeclarationConstruct(%struct.sTokenInfo* %3)
  br i1 %call10, label %while.body11, label %while.end12

while.body11:                                     ; preds = %while.cond9
  store i8 1, i8* %result, align 1
  br label %while.cond9

while.end12:                                      ; preds = %while.cond9
  %4 = load i8, i8* %result, align 1
  %tobool = trunc i8 %4 to i1
  ret i1 %tobool
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @parseExecutionPart(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %result = alloca i8, align 1
  %done = alloca i8, align 1
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  store i8 0, i8* %result, align 1
  store i8 0, i8* %done, align 1
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %0 = load i8, i8* %done, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %1, i32 0, i32 0
  %2 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %2, 1
  %lnot = xor i1 %cmp, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %3 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %3, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %4 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %4, i32 0, i32 1
  %5 = load i32, i32* %keyword, align 4
  switch i32 %5, label %sw.default [
    i32 25, label %sw.bb
    i32 15, label %sw.bb1
    i32 34, label %sw.bb1
    i32 75, label %sw.bb1
    i32 24, label %sw.bb2
  ]

sw.default:                                       ; preds = %while.body
  %6 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call = call zeroext i1 @isSubprogramPrefix(%struct.sTokenInfo* %6)
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %sw.default
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %7)
  br label %if.end

if.else:                                          ; preds = %sw.default
  %8 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @skipToNextStatement(%struct.sTokenInfo* %8)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i8 1, i8* %result, align 1
  br label %sw.epilog

sw.bb:                                            ; preds = %while.body
  %9 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @parseEntryStmt(%struct.sTokenInfo* %9)
  store i8 1, i8* %result, align 1
  br label %sw.epilog

sw.bb1:                                           ; preds = %while.body, %while.body, %while.body
  store i8 1, i8* %done, align 1
  br label %sw.epilog

sw.bb2:                                           ; preds = %while.body
  %10 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readSubToken(%struct.sTokenInfo* %10)
  %11 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %secondary = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %11, i32 0, i32 8
  %12 = load %struct.sTokenInfo*, %struct.sTokenInfo** %secondary, align 8
  %cmp3 = icmp eq %struct.sTokenInfo* %12, null
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb2
  br label %cond.end

cond.false:                                       ; preds = %sw.bb2
  %13 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %secondary4 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %13, i32 0, i32 8
  %14 = load %struct.sTokenInfo*, %struct.sTokenInfo** %secondary4, align 8
  %keyword5 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %14, i32 0, i32 1
  %15 = load i32, i32* %keyword5, align 4
  %cmp6 = icmp eq i32 %15, 21
  %conv = zext i1 %cmp6 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  %tobool7 = icmp ne i32 %cond, 0
  br i1 %tobool7, label %if.then106, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end
  %16 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %secondary9 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %16, i32 0, i32 8
  %17 = load %struct.sTokenInfo*, %struct.sTokenInfo** %secondary9, align 8
  %cmp10 = icmp eq %struct.sTokenInfo* %17, null
  br i1 %cmp10, label %cond.true12, label %cond.false13

cond.true12:                                      ; preds = %lor.lhs.false
  br label %cond.end18

cond.false13:                                     ; preds = %lor.lhs.false
  %18 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %secondary14 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %18, i32 0, i32 8
  %19 = load %struct.sTokenInfo*, %struct.sTokenInfo** %secondary14, align 8
  %keyword15 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %19, i32 0, i32 1
  %20 = load i32, i32* %keyword15, align 4
  %cmp16 = icmp eq i32 %20, 26
  %conv17 = zext i1 %cmp16 to i32
  br label %cond.end18

cond.end18:                                       ; preds = %cond.false13, %cond.true12
  %cond19 = phi i32 [ 0, %cond.true12 ], [ %conv17, %cond.false13 ]
  %tobool20 = icmp ne i32 %cond19, 0
  br i1 %tobool20, label %if.then106, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %cond.end18
  %21 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %secondary23 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %21, i32 0, i32 8
  %22 = load %struct.sTokenInfo*, %struct.sTokenInfo** %secondary23, align 8
  %cmp24 = icmp eq %struct.sTokenInfo* %22, null
  br i1 %cmp24, label %cond.true26, label %cond.false27

cond.true26:                                      ; preds = %lor.lhs.false22
  br label %cond.end32

cond.false27:                                     ; preds = %lor.lhs.false22
  %23 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %secondary28 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %23, i32 0, i32 8
  %24 = load %struct.sTokenInfo*, %struct.sTokenInfo** %secondary28, align 8
  %keyword29 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %24, i32 0, i32 1
  %25 = load i32, i32* %keyword29, align 4
  %cmp30 = icmp eq i32 %25, 36
  %conv31 = zext i1 %cmp30 to i32
  br label %cond.end32

cond.end32:                                       ; preds = %cond.false27, %cond.true26
  %cond33 = phi i32 [ 0, %cond.true26 ], [ %conv31, %cond.false27 ]
  %tobool34 = icmp ne i32 %cond33, 0
  br i1 %tobool34, label %if.then106, label %lor.lhs.false36

lor.lhs.false36:                                  ; preds = %cond.end32
  %26 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %secondary37 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %26, i32 0, i32 8
  %27 = load %struct.sTokenInfo*, %struct.sTokenInfo** %secondary37, align 8
  %cmp38 = icmp eq %struct.sTokenInfo* %27, null
  br i1 %cmp38, label %cond.true40, label %cond.false41

cond.true40:                                      ; preds = %lor.lhs.false36
  br label %cond.end46

cond.false41:                                     ; preds = %lor.lhs.false36
  %28 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %secondary42 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %28, i32 0, i32 8
  %29 = load %struct.sTokenInfo*, %struct.sTokenInfo** %secondary42, align 8
  %keyword43 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %29, i32 0, i32 1
  %30 = load i32, i32* %keyword43, align 4
  %cmp44 = icmp eq i32 %30, 69
  %conv45 = zext i1 %cmp44 to i32
  br label %cond.end46

cond.end46:                                       ; preds = %cond.false41, %cond.true40
  %cond47 = phi i32 [ 0, %cond.true40 ], [ %conv45, %cond.false41 ]
  %tobool48 = icmp ne i32 %cond47, 0
  br i1 %tobool48, label %if.then106, label %lor.lhs.false50

lor.lhs.false50:                                  ; preds = %cond.end46
  %31 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %secondary51 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %31, i32 0, i32 8
  %32 = load %struct.sTokenInfo*, %struct.sTokenInfo** %secondary51, align 8
  %cmp52 = icmp eq %struct.sTokenInfo* %32, null
  br i1 %cmp52, label %cond.true54, label %cond.false55

cond.true54:                                      ; preds = %lor.lhs.false50
  br label %cond.end60

cond.false55:                                     ; preds = %lor.lhs.false50
  %33 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %secondary56 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %33, i32 0, i32 8
  %34 = load %struct.sTokenInfo*, %struct.sTokenInfo** %secondary56, align 8
  %keyword57 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %34, i32 0, i32 1
  %35 = load i32, i32* %keyword57, align 4
  %cmp58 = icmp eq i32 %35, 84
  %conv59 = zext i1 %cmp58 to i32
  br label %cond.end60

cond.end60:                                       ; preds = %cond.false55, %cond.true54
  %cond61 = phi i32 [ 0, %cond.true54 ], [ %conv59, %cond.false55 ]
  %tobool62 = icmp ne i32 %cond61, 0
  br i1 %tobool62, label %if.then106, label %lor.lhs.false64

lor.lhs.false64:                                  ; preds = %cond.end60
  %36 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %secondary65 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %36, i32 0, i32 8
  %37 = load %struct.sTokenInfo*, %struct.sTokenInfo** %secondary65, align 8
  %cmp66 = icmp eq %struct.sTokenInfo* %37, null
  br i1 %cmp66, label %cond.true68, label %cond.false69

cond.true68:                                      ; preds = %lor.lhs.false64
  br label %cond.end74

cond.false69:                                     ; preds = %lor.lhs.false64
  %38 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %secondary70 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %38, i32 0, i32 8
  %39 = load %struct.sTokenInfo*, %struct.sTokenInfo** %secondary70, align 8
  %keyword71 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %39, i32 0, i32 1
  %40 = load i32, i32* %keyword71, align 4
  %cmp72 = icmp eq i32 %40, 32
  %conv73 = zext i1 %cmp72 to i32
  br label %cond.end74

cond.end74:                                       ; preds = %cond.false69, %cond.true68
  %cond75 = phi i32 [ 0, %cond.true68 ], [ %conv73, %cond.false69 ]
  %tobool76 = icmp ne i32 %cond75, 0
  br i1 %tobool76, label %if.then106, label %lor.lhs.false78

lor.lhs.false78:                                  ; preds = %cond.end74
  %41 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %secondary79 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %41, i32 0, i32 8
  %42 = load %struct.sTokenInfo*, %struct.sTokenInfo** %secondary79, align 8
  %cmp80 = icmp eq %struct.sTokenInfo* %42, null
  br i1 %cmp80, label %cond.true82, label %cond.false83

cond.true82:                                      ; preds = %lor.lhs.false78
  br label %cond.end88

cond.false83:                                     ; preds = %lor.lhs.false78
  %43 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %secondary84 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %43, i32 0, i32 8
  %44 = load %struct.sTokenInfo*, %struct.sTokenInfo** %secondary84, align 8
  %keyword85 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %44, i32 0, i32 1
  %45 = load i32, i32* %keyword85, align 4
  %cmp86 = icmp eq i32 %45, 3
  %conv87 = zext i1 %cmp86 to i32
  br label %cond.end88

cond.end88:                                       ; preds = %cond.false83, %cond.true82
  %cond89 = phi i32 [ 0, %cond.true82 ], [ %conv87, %cond.false83 ]
  %tobool90 = icmp ne i32 %cond89, 0
  br i1 %tobool90, label %if.then106, label %lor.lhs.false92

lor.lhs.false92:                                  ; preds = %cond.end88
  %46 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %secondary93 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %46, i32 0, i32 8
  %47 = load %struct.sTokenInfo*, %struct.sTokenInfo** %secondary93, align 8
  %cmp94 = icmp eq %struct.sTokenInfo* %47, null
  br i1 %cmp94, label %cond.true96, label %cond.false97

cond.true96:                                      ; preds = %lor.lhs.false92
  br label %cond.end102

cond.false97:                                     ; preds = %lor.lhs.false92
  %48 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %secondary98 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %48, i32 0, i32 8
  %49 = load %struct.sTokenInfo*, %struct.sTokenInfo** %secondary98, align 8
  %keyword99 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %49, i32 0, i32 1
  %50 = load i32, i32* %keyword99, align 4
  %cmp100 = icmp eq i32 %50, 6
  %conv101 = zext i1 %cmp100 to i32
  br label %cond.end102

cond.end102:                                      ; preds = %cond.false97, %cond.true96
  %cond103 = phi i32 [ 0, %cond.true96 ], [ %conv101, %cond.false97 ]
  %tobool104 = icmp ne i32 %cond103, 0
  br i1 %tobool104, label %if.then106, label %if.else107

if.then106:                                       ; preds = %cond.end102, %cond.end88, %cond.end74, %cond.end60, %cond.end46, %cond.end32, %cond.end18, %cond.end
  %51 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @skipToNextStatement(%struct.sTokenInfo* %51)
  store i8 1, i8* %result, align 1
  br label %if.end108

if.else107:                                       ; preds = %cond.end102
  store i8 1, i8* %done, align 1
  br label %if.end108

if.end108:                                        ; preds = %if.else107, %if.then106
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end108, %sw.bb1, %sw.bb, %if.end
  br label %while.cond

while.end:                                        ; preds = %land.end
  %52 = load i8, i8* %result, align 1
  %tobool109 = trunc i8 %52 to i1
  ret i1 %tobool109
}

declare void @vStringDelete(%struct.sVString*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @getChar() #0 {
entry:
  %c = alloca i32, align 4
  %0 = load i32, i32* @Ungetc, align 4
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @Ungetc, align 4
  store i32 %1, i32* %c, align 4
  store i32 0, i32* @Ungetc, align 4
  br label %if.end4

if.else:                                          ; preds = %entry
  %2 = load i8, i8* @FreeSourceForm, align 1
  %tobool = trunc i8 %2 to i1
  br i1 %tobool, label %if.then1, label %if.else2

if.then1:                                         ; preds = %if.else
  %call = call i32 @getFreeFormChar()
  store i32 %call, i32* %c, align 4
  br label %if.end

if.else2:                                         ; preds = %if.else
  %call3 = call i32 @getFixedFormChar()
  store i32 %call3, i32* %c, align 4
  br label %if.end

if.end:                                           ; preds = %if.else2, %if.then1
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then
  %3 = load i32, i32* %c, align 4
  ret i32 %3
}

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

declare i8* @strchr(i8*, i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @ungetChar(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  store i32 %0, i32* @Ungetc, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @skipLine() #0 {
entry:
  %c = alloca i32, align 4
  br label %do.body

do.body:                                          ; preds = %land.end, %entry
  %call = call i32 @getcFromInputFile()
  store i32 %call, i32* %c, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %0 = load i32, i32* %c, align 4
  %cmp = icmp ne i32 %0, -1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %1 = load i32, i32* %c, align 4
  %cmp1 = icmp ne i32 %1, 10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %2 = phi i1 [ false, %do.cond ], [ %cmp1, %land.rhs ]
  br i1 %2, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  %3 = load i32, i32* %c, align 4
  ret i32 %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @checkForLabel() #0 {
entry:
  %token = alloca %struct.sTokenInfo*, align 8
  %length = alloca i32, align 4
  %c = alloca i32, align 4
  store %struct.sTokenInfo* null, %struct.sTokenInfo** %token, align 8
  br label %do.body

do.body:                                          ; preds = %lor.end, %entry
  %call = call i32 @getChar()
  store i32 %call, i32* %c, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %0 = load i32, i32* %c, align 4
  %cmp = icmp eq i32 %0, 32
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %do.cond
  %1 = load i32, i32* %c, align 4
  %cmp1 = icmp eq i32 %1, 9
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %do.cond
  %2 = phi i1 [ true, %do.cond ], [ %cmp1, %lor.rhs ]
  br i1 %2, label %do.body, label %do.end

do.end:                                           ; preds = %lor.end
  store i32 0, i32* %length, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %3 = load i32, i32* %c, align 4
  %call2 = call i32 @isdigit(i32 %3) #4
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %4 = load i32, i32* %length, align 4
  %cmp3 = icmp slt i32 %4, 5
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %5 = phi i1 [ false, %for.cond ], [ %cmp3, %land.rhs ]
  br i1 %5, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %6 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %cmp4 = icmp eq %struct.sTokenInfo* %6, null
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %call5 = call %struct.sTokenInfo* @newToken()
  store %struct.sTokenInfo* %call5, %struct.sTokenInfo** %token, align 8
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %7, i32 0, i32 0
  store i32 6, i32* %type, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %8 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %string = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %8, i32 0, i32 3
  %9 = load %struct.sVString*, %struct.sVString** %string, align 8
  %10 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %9, i32 %10)
  %call6 = call i32 @getChar()
  store i32 %call6, i32* %c, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, i32* %length, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %length, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %12 = load i32, i32* %length, align 4
  %cmp7 = icmp sgt i32 %12, 0
  br i1 %cmp7, label %land.lhs.true, label %if.end10

land.lhs.true:                                    ; preds = %for.end
  %13 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %cmp8 = icmp ne %struct.sTokenInfo* %13, null
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %land.lhs.true
  %14 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  call void @makeFortranTag(%struct.sTokenInfo* %14, i32 7)
  %15 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  call void @deleteToken(%struct.sTokenInfo* %15)
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %land.lhs.true, %for.end
  %16 = load i32, i32* %c, align 4
  call void @ungetChar(i32 %16)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseIdentifier(%struct.sVString* %string, i32 %firstChar) #0 {
entry:
  %string.addr = alloca %struct.sVString*, align 8
  %firstChar.addr = alloca i32, align 4
  %c = alloca i32, align 4
  store %struct.sVString* %string, %struct.sVString** %string.addr, align 8
  store i32 %firstChar, i32* %firstChar.addr, align 4
  %0 = load i32, i32* %firstChar.addr, align 4
  store i32 %0, i32* %c, align 4
  br label %do.body

do.body:                                          ; preds = %lor.end, %entry
  %1 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %2 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %1, i32 %2)
  %call = call i32 @getChar()
  store i32 %call, i32* %c, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %3 = load i32, i32* %c, align 4
  %call1 = call i32 @isalnum(i32 %3) #4
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %do.cond
  %4 = load i32, i32* %c, align 4
  %cmp = icmp eq i32 %4, 95
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %do.cond
  %5 = phi i1 [ true, %do.cond ], [ %cmp, %lor.rhs ]
  br i1 %5, label %do.body, label %do.end

do.end:                                           ; preds = %lor.end
  %6 = load i32, i32* %c, align 4
  call void @ungetChar(i32 %6)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseString(%struct.sVString* %string, i32 %delimiter) #0 {
entry:
  %string.addr = alloca %struct.sVString*, align 8
  %delimiter.addr = alloca i32, align 4
  %inputLineNumber = alloca i64, align 8
  %c = alloca i32, align 4
  store %struct.sVString* %string, %struct.sVString** %string.addr, align 8
  store i32 %delimiter, i32* %delimiter.addr, align 4
  %call = call i64 @getInputLineNumber()
  store i64 %call, i64* %inputLineNumber, align 8
  store i8 1, i8* @ParsingString, align 1
  %call1 = call i32 @getChar()
  store i32 %call1, i32* %c, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* %c, align 4
  %1 = load i32, i32* %delimiter.addr, align 4
  %cmp = icmp ne i32 %0, %1
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32, i32* %c, align 4
  %cmp2 = icmp ne i32 %2, 10
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %3 = load i32, i32* %c, align 4
  %cmp3 = icmp ne i32 %3, -1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %4 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp3, %land.rhs ]
  br i1 %4, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %5 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %6 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %5, i32 %6)
  %call4 = call i32 @getChar()
  store i32 %call4, i32* %c, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %7 = load i32, i32* %c, align 4
  %cmp5 = icmp eq i32 %7, 10
  br i1 %cmp5, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end
  %8 = load i32, i32* %c, align 4
  %cmp6 = icmp eq i32 %8, -1
  br i1 %cmp6, label %if.then, label %if.end11

if.then:                                          ; preds = %lor.lhs.false, %while.end
  %call7 = call i8* @getInputFileName()
  %9 = load i64, i64* %inputLineNumber, align 8
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.55, i64 0, i64 0), i8* %call7, i64 %9)
  %10 = load i32, i32* %c, align 4
  %cmp8 = icmp ne i32 %10, -1
  br i1 %cmp8, label %land.lhs.true9, label %if.end

land.lhs.true9:                                   ; preds = %if.then
  %11 = load i8, i8* @FreeSourceForm, align 1
  %tobool = trunc i8 %11 to i1
  br i1 %tobool, label %if.end, label %if.then10

if.then10:                                        ; preds = %land.lhs.true9
  store i8 1, i8* @FreeSourceFormFound, align 1
  br label %if.end

if.end:                                           ; preds = %if.then10, %land.lhs.true9, %if.then
  br label %if.end11

if.end11:                                         ; preds = %if.end, %lor.lhs.false
  store i8 0, i8* @ParsingString, align 1
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @isalpha(i32) #3

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @readIdentifier(%struct.sTokenInfo* %token, i32 %c) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %c.addr = alloca i32, align 4
  %sub = alloca %struct.sVString*, align 8
  %kw = alloca i32, align 4
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  store i32 %c, i32* %c.addr, align 4
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 3
  %1 = load %struct.sVString*, %struct.sVString** %string, align 8
  %2 = load i32, i32* %c.addr, align 4
  call void @parseIdentifier(%struct.sVString* %1, i32 %2)
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string1 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %3, i32 0, i32 3
  %4 = load %struct.sVString*, %struct.sVString** %string1, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %4, i32 0, i32 2
  %5 = load i8*, i8** %buffer, align 8
  %6 = load i32, i32* @Lang_fortran, align 4
  %call = call i32 @lookupCaseKeyword(i8* %5, i32 %6)
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %7, i32 0, i32 1
  store i32 %call, i32* %keyword, align 4
  %8 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword2 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %8, i32 0, i32 1
  %9 = load i32, i32* %keyword2, align 4
  %cmp = icmp eq i32 %9, -1
  br i1 %cmp, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %10 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %10, i32 0, i32 0
  store i32 5, i32* %type, align 8
  br label %if.end23

if.else:                                          ; preds = %entry
  %11 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type3 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %11, i32 0, i32 0
  store i32 4, i32* %type3, align 8
  %12 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string4 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %12, i32 0, i32 3
  %13 = load %struct.sVString*, %struct.sVString** %string4, align 8
  %buffer5 = getelementptr inbounds %struct.sVString, %struct.sVString* %13, i32 0, i32 2
  %14 = load i8*, i8** %buffer5, align 8
  %call6 = call i32 @strncmp(i8* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.56, i64 0, i64 0), i64 3)
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.end22

if.then8:                                         ; preds = %if.else
  %15 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string9 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %15, i32 0, i32 3
  %16 = load %struct.sVString*, %struct.sVString** %string9, align 8
  %buffer10 = getelementptr inbounds %struct.sVString, %struct.sVString* %16, i32 0, i32 2
  %17 = load i8*, i8** %buffer10, align 8
  %add.ptr = getelementptr inbounds i8, i8* %17, i64 3
  %call11 = call %struct.sVString* @vStringNewInit(i8* %add.ptr)
  store %struct.sVString* %call11, %struct.sVString** %sub, align 8
  %18 = load %struct.sVString*, %struct.sVString** %sub, align 8
  %buffer12 = getelementptr inbounds %struct.sVString, %struct.sVString* %18, i32 0, i32 2
  %19 = load i8*, i8** %buffer12, align 8
  %20 = load i32, i32* @Lang_fortran, align 4
  %call13 = call i32 @lookupCaseKeyword(i8* %19, i32 %20)
  store i32 %call13, i32* %kw, align 4
  %21 = load %struct.sVString*, %struct.sVString** %sub, align 8
  call void @vStringDelete(%struct.sVString* %21)
  %22 = load i32, i32* %kw, align 4
  %cmp14 = icmp ne i32 %22, -1
  br i1 %cmp14, label %if.then15, label %if.end

if.then15:                                        ; preds = %if.then8
  %call16 = call %struct.sTokenInfo* @newToken()
  %23 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %secondary = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %23, i32 0, i32 8
  store %struct.sTokenInfo* %call16, %struct.sTokenInfo** %secondary, align 8
  %24 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %secondary17 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %24, i32 0, i32 8
  %25 = load %struct.sTokenInfo*, %struct.sTokenInfo** %secondary17, align 8
  %type18 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %25, i32 0, i32 0
  store i32 5, i32* %type18, align 8
  %26 = load i32, i32* %kw, align 4
  %27 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %secondary19 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %27, i32 0, i32 8
  %28 = load %struct.sTokenInfo*, %struct.sTokenInfo** %secondary19, align 8
  %keyword20 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %28, i32 0, i32 1
  store i32 %26, i32* %keyword20, align 4
  %29 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword21 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %29, i32 0, i32 1
  store i32 24, i32* %keyword21, align 4
  br label %if.end

if.end:                                           ; preds = %if.then15, %if.then8
  br label %if.end22

if.end22:                                         ; preds = %if.end, %if.else
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %if.then
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @isdigit(i32) #3

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct.sVString* @parseNumeric(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  %string = alloca %struct.sVString*, align 8
  %integer = alloca %struct.sVString*, align 8
  %integer7 = alloca %struct.sVString*, align 8
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %call = call %struct.sVString* @parseInteger(i32 %0)
  store %struct.sVString* %call, %struct.sVString** %string, align 8
  %call1 = call i32 @getChar()
  store i32 %call1, i32* %c.addr, align 4
  %1 = load i32, i32* %c.addr, align 4
  %cmp = icmp eq i32 %1, 46
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call %struct.sVString* @parseInteger(i32 0)
  store %struct.sVString* %call2, %struct.sVString** %integer, align 8
  %2 = load %struct.sVString*, %struct.sVString** %string, align 8
  %3 = load i32, i32* %c.addr, align 4
  call void @vStringPut(%struct.sVString* %2, i32 %3)
  %4 = load %struct.sVString*, %struct.sVString** %string, align 8
  %5 = load %struct.sVString*, %struct.sVString** %integer, align 8
  call void @vStringCat(%struct.sVString* %4, %struct.sVString* %5)
  %6 = load %struct.sVString*, %struct.sVString** %integer, align 8
  call void @vStringDelete(%struct.sVString* %6)
  %call3 = call i32 @getChar()
  store i32 %call3, i32* %c.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i32, i32* %c.addr, align 4
  %call4 = call i32 @tolower(i32 %7) #4
  %cmp5 = icmp eq i32 %call4, 101
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  %call8 = call %struct.sVString* @parseInteger(i32 0)
  store %struct.sVString* %call8, %struct.sVString** %integer7, align 8
  %8 = load %struct.sVString*, %struct.sVString** %string, align 8
  %9 = load i32, i32* %c.addr, align 4
  call void @vStringPut(%struct.sVString* %8, i32 %9)
  %10 = load %struct.sVString*, %struct.sVString** %string, align 8
  %11 = load %struct.sVString*, %struct.sVString** %integer7, align 8
  call void @vStringCat(%struct.sVString* %10, %struct.sVString* %11)
  %12 = load %struct.sVString*, %struct.sVString** %integer7, align 8
  call void @vStringDelete(%struct.sVString* %12)
  br label %if.end9

if.else:                                          ; preds = %if.end
  %13 = load i32, i32* %c.addr, align 4
  call void @ungetChar(i32 %13)
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then6
  %14 = load %struct.sVString*, %struct.sVString** %string, align 8
  ret %struct.sVString* %14
}

declare void @vStringCat(%struct.sVString*, %struct.sVString*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @getFreeFormChar() #0 {
entry:
  %advanceLine = alloca i8, align 1
  %c = alloca i32, align 4
  store i8 0, i8* %advanceLine, align 1
  %call = call i32 @getcFromInputFile()
  store i32 %call, i32* %c, align 4
  %0 = load i32, i32* %c, align 4
  %cmp = icmp eq i32 %0, 38
  br i1 %cmp, label %if.then, label %if.else10

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %land.end, %if.then
  %call1 = call i32 @getcFromInputFile()
  store i32 %call1, i32* %c, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %1 = load i32, i32* %c, align 4
  %call2 = call i32 @isspace(i32 %1) #4
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %2 = load i32, i32* %c, align 4
  %cmp3 = icmp ne i32 %2, 10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %3 = phi i1 [ false, %do.cond ], [ %cmp3, %land.rhs ]
  br i1 %3, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  %4 = load i32, i32* %c, align 4
  %cmp4 = icmp eq i32 %4, 10
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %do.end
  store i8 1, i8* @getFreeFormChar.newline, align 1
  store i8 1, i8* %advanceLine, align 1
  br label %if.end9

if.else:                                          ; preds = %do.end
  %5 = load i32, i32* %c, align 4
  %cmp6 = icmp eq i32 %5, 33
  br i1 %cmp6, label %if.then7, label %if.else8

if.then7:                                         ; preds = %if.else
  store i8 1, i8* %advanceLine, align 1
  br label %if.end

if.else8:                                         ; preds = %if.else
  %6 = load i32, i32* %c, align 4
  call void @ungetcToInputFile(i32 %6)
  store i32 38, i32* %c, align 4
  br label %if.end

if.end:                                           ; preds = %if.else8, %if.then7
  br label %if.end9

if.end9:                                          ; preds = %if.end, %if.then5
  br label %if.end16

if.else10:                                        ; preds = %entry
  %7 = load i8, i8* @getFreeFormChar.newline, align 1
  %tobool11 = trunc i8 %7 to i1
  br i1 %tobool11, label %land.lhs.true, label %if.end15

land.lhs.true:                                    ; preds = %if.else10
  %8 = load i32, i32* %c, align 4
  %cmp12 = icmp eq i32 %8, 33
  br i1 %cmp12, label %if.then14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %9 = load i32, i32* %c, align 4
  %cmp13 = icmp eq i32 %9, 35
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %lor.lhs.false, %land.lhs.true
  store i8 1, i8* %advanceLine, align 1
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %lor.lhs.false, %if.else10
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.end9
  br label %while.cond

while.cond:                                       ; preds = %if.end35, %if.then28, %if.end16
  %10 = load i8, i8* %advanceLine, align 1
  %tobool17 = trunc i8 %10 to i1
  br i1 %tobool17, label %while.body, label %while.end36

while.body:                                       ; preds = %while.cond
  br label %while.cond18

while.cond18:                                     ; preds = %while.body21, %while.body
  %11 = load i32, i32* %c, align 4
  %call19 = call i32 @isspace(i32 %11) #4
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %while.body21, label %while.end

while.body21:                                     ; preds = %while.cond18
  %call22 = call i32 @getcFromInputFile()
  store i32 %call22, i32* %c, align 4
  br label %while.cond18

while.end:                                        ; preds = %while.cond18
  %12 = load i32, i32* %c, align 4
  %cmp23 = icmp eq i32 %12, 33
  br i1 %cmp23, label %if.then28, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %while.end
  %13 = load i8, i8* @getFreeFormChar.newline, align 1
  %tobool25 = trunc i8 %13 to i1
  br i1 %tobool25, label %land.lhs.true26, label %if.end30

land.lhs.true26:                                  ; preds = %lor.lhs.false24
  %14 = load i32, i32* %c, align 4
  %cmp27 = icmp eq i32 %14, 35
  br i1 %cmp27, label %if.then28, label %if.end30

if.then28:                                        ; preds = %land.lhs.true26, %while.end
  %call29 = call i32 @skipToNextLine()
  store i32 %call29, i32* %c, align 4
  store i8 1, i8* @getFreeFormChar.newline, align 1
  br label %while.cond

if.end30:                                         ; preds = %land.lhs.true26, %lor.lhs.false24
  %15 = load i32, i32* %c, align 4
  %cmp31 = icmp eq i32 %15, 38
  br i1 %cmp31, label %if.then32, label %if.else34

if.then32:                                        ; preds = %if.end30
  %call33 = call i32 @getcFromInputFile()
  store i32 %call33, i32* %c, align 4
  br label %if.end35

if.else34:                                        ; preds = %if.end30
  store i8 0, i8* %advanceLine, align 1
  br label %if.end35

if.end35:                                         ; preds = %if.else34, %if.then32
  br label %while.cond

while.end36:                                      ; preds = %while.cond
  %16 = load i32, i32* %c, align 4
  %cmp37 = icmp eq i32 %16, 10
  %frombool = zext i1 %cmp37 to i8
  store i8 %frombool, i8* @getFreeFormChar.newline, align 1
  %17 = load i32, i32* %c, align 4
  ret i32 %17
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @getFixedFormChar() #0 {
entry:
  %retval = alloca i32, align 4
  %newline = alloca i8, align 1
  %type = alloca i32, align 4
  %c = alloca i32, align 4
  %c2 = alloca i32, align 4
  store i8 0, i8* %newline, align 1
  store i32 0, i32* %c, align 4
  %0 = load i32, i32* @Column, align 4
  %cmp = icmp ugt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end16

if.then:                                          ; preds = %entry
  %call = call i32 @getcFromInputFile()
  store i32 %call, i32* %c, align 4
  %1 = load i32, i32* @Column, align 4
  %inc = add i32 %1, 1
  store i32 %inc, i32* @Column, align 4
  %2 = load i32, i32* %c, align 4
  %cmp1 = icmp eq i32 %2, 10
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  store i8 1, i8* %newline, align 1
  store i32 0, i32* @Column, align 4
  br label %if.end15

if.else:                                          ; preds = %if.then
  %3 = load i32, i32* %c, align 4
  %cmp3 = icmp eq i32 %3, 33
  br i1 %cmp3, label %land.lhs.true, label %if.else6

land.lhs.true:                                    ; preds = %if.else
  %4 = load i8, i8* @ParsingString, align 1
  %tobool = trunc i8 %4 to i1
  br i1 %tobool, label %if.else6, label %if.then4

if.then4:                                         ; preds = %land.lhs.true
  %call5 = call i32 @skipLine()
  store i32 %call5, i32* %c, align 4
  store i8 1, i8* %newline, align 1
  store i32 0, i32* @Column, align 4
  br label %if.end14

if.else6:                                         ; preds = %land.lhs.true, %if.else
  %5 = load i32, i32* %c, align 4
  %cmp7 = icmp eq i32 %5, 38
  br i1 %cmp7, label %if.then8, label %if.end13

if.then8:                                         ; preds = %if.else6
  %call9 = call i32 @getcFromInputFile()
  store i32 %call9, i32* %c2, align 4
  %6 = load i32, i32* %c2, align 4
  %cmp10 = icmp eq i32 %6, 10
  br i1 %cmp10, label %if.then11, label %if.else12

if.then11:                                        ; preds = %if.then8
  store i8 1, i8* @FreeSourceFormFound, align 1
  br label %if.end

if.else12:                                        ; preds = %if.then8
  %7 = load i32, i32* %c2, align 4
  call void @ungetcToInputFile(i32 %7)
  br label %if.end

if.end:                                           ; preds = %if.else12, %if.then11
  br label %if.end13

if.end13:                                         ; preds = %if.end, %if.else6
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.then4
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.then2
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %entry
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %if.end16
  %8 = load i32, i32* @Column, align 4
  %cmp17 = icmp eq i32 %8, 0
  br i1 %cmp17, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call18 = call i32 @getLineType()
  store i32 %call18, i32* %type, align 4
  %9 = load i32, i32* %type, align 4
  switch i32 %9, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 6, label %sw.bb22
    i32 2, label %sw.bb23
    i32 4, label %sw.bb25
    i32 5, label %sw.bb30
    i32 3, label %sw.bb34
  ]

sw.bb:                                            ; preds = %while.body, %while.body
  store i8 1, i8* @FreeSourceFormFound, align 1
  %10 = load i8, i8* @FreeSourceForm, align 1
  %tobool19 = trunc i8 %10 to i1
  br i1 %tobool19, label %if.end21, label %if.then20

if.then20:                                        ; preds = %sw.bb
  store i32 -1, i32* %retval, align 4
  br label %return

if.end21:                                         ; preds = %sw.bb
  br label %sw.bb22

sw.bb22:                                          ; preds = %while.body, %if.end21
  br label %sw.epilog

sw.bb23:                                          ; preds = %while.body
  %call24 = call i32 @skipLine()
  br label %sw.epilog

sw.bb25:                                          ; preds = %while.body
  store i32 6, i32* @Column, align 4
  %11 = load i8, i8* %newline, align 1
  %tobool26 = trunc i8 %11 to i1
  br i1 %tobool26, label %if.then27, label %if.else28

if.then27:                                        ; preds = %sw.bb25
  store i32 10, i32* %c, align 4
  br label %if.end29

if.else28:                                        ; preds = %sw.bb25
  store i32 -1, i32* %c, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.else28, %if.then27
  br label %sw.epilog

sw.bb30:                                          ; preds = %while.body
  %12 = load i8, i8* %newline, align 1
  %tobool31 = trunc i8 %12 to i1
  br i1 %tobool31, label %if.then32, label %if.end33

if.then32:                                        ; preds = %sw.bb30
  store i32 10, i32* %c, align 4
  store i32 6, i32* @Column, align 4
  br label %sw.epilog

if.end33:                                         ; preds = %sw.bb30
  br label %sw.bb34

sw.bb34:                                          ; preds = %while.body, %if.end33
  store i32 5, i32* @Column, align 4
  br label %do.body

do.body:                                          ; preds = %lor.end, %sw.bb34
  %call35 = call i32 @getcFromInputFile()
  store i32 %call35, i32* %c, align 4
  %13 = load i32, i32* @Column, align 4
  %inc36 = add i32 %13, 1
  store i32 %inc36, i32* @Column, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %14 = load i32, i32* %c, align 4
  %cmp37 = icmp eq i32 %14, 32
  br i1 %cmp37, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %do.cond
  %15 = load i32, i32* %c, align 4
  %cmp38 = icmp eq i32 %15, 9
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %do.cond
  %16 = phi i1 [ true, %do.cond ], [ %cmp38, %lor.rhs ]
  br i1 %16, label %do.body, label %do.end

do.end:                                           ; preds = %lor.end
  %17 = load i32, i32* %c, align 4
  %cmp39 = icmp eq i32 %17, 10
  br i1 %cmp39, label %if.then40, label %if.else41

if.then40:                                        ; preds = %do.end
  store i32 0, i32* @Column, align 4
  br label %if.end45

if.else41:                                        ; preds = %do.end
  %18 = load i32, i32* @Column, align 4
  %cmp42 = icmp ugt i32 %18, 6
  br i1 %cmp42, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.else41
  %19 = load i32, i32* %c, align 4
  call void @ungetcToInputFile(i32 %19)
  store i32 32, i32* %c, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then43, %if.else41
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %if.then40
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  br label %do.body46

do.body46:                                        ; preds = %sw.default
  br label %do.end48

do.end48:                                         ; preds = %do.body46
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end48, %if.end45, %if.then32, %if.end29, %sw.bb23, %sw.bb22
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %20 = load i32, i32* %c, align 4
  store i32 %20, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then20
  %21 = load i32, i32* %retval, align 4
  ret i32 %21
}

declare i32 @getcFromInputFile() #1

; Function Attrs: nounwind readonly
declare i32 @isspace(i32) #3

declare void @ungetcToInputFile(i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @skipToNextLine() #0 {
entry:
  %c = alloca i32, align 4
  %call = call i32 @skipLine()
  store i32 %call, i32* %c, align 4
  %0 = load i32, i32* %c, align 4
  %cmp = icmp ne i32 %0, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 @getcFromInputFile()
  store i32 %call1, i32* %c, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, i32* %c, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @getLineType() #0 {
entry:
  %column = alloca i32, align 4
  %type = alloca i32, align 4
  %c = alloca i32, align 4
  store i32 0, i32* %column, align 4
  store i32 0, i32* %type, align 4
  %0 = load %struct.sVString*, %struct.sVString** @getLineType.label, align 8
  %call = call %struct.sVString* @vStringNewOrClear(%struct.sVString* %0)
  store %struct.sVString* %call, %struct.sVString** @getLineType.label, align 8
  br label %do.body

do.body:                                          ; preds = %land.end, %entry
  %call1 = call i32 @getcFromInputFile()
  store i32 %call1, i32* %c, align 4
  %1 = load i32, i32* %column, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %do.body
  %2 = load i32, i32* %c, align 4
  %call2 = call i8* @strchr(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i64 0, i64 0), i32 %2)
  %cmp3 = icmp ne i8* %call2, null
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  store i32 2, i32* %type, align 4
  br label %if.end36

if.else:                                          ; preds = %land.lhs.true, %do.body
  %3 = load i32, i32* %c, align 4
  %cmp4 = icmp eq i32 %3, 9
  br i1 %cmp4, label %if.then5, label %if.else6

if.then5:                                         ; preds = %if.else
  store i32 8, i32* %column, align 4
  store i32 5, i32* %type, align 4
  br label %if.end35

if.else6:                                         ; preds = %if.else
  %4 = load i32, i32* %column, align 4
  %cmp7 = icmp eq i32 %4, 5
  br i1 %cmp7, label %if.then8, label %if.else17

if.then8:                                         ; preds = %if.else6
  %5 = load i32, i32* %c, align 4
  %cmp9 = icmp eq i32 %5, 32
  br i1 %cmp9, label %if.then11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then8
  %6 = load i32, i32* %c, align 4
  %cmp10 = icmp eq i32 %6, 48
  br i1 %cmp10, label %if.then11, label %if.else12

if.then11:                                        ; preds = %lor.lhs.false, %if.then8
  store i32 5, i32* %type, align 4
  br label %if.end16

if.else12:                                        ; preds = %lor.lhs.false
  %7 = load %struct.sVString*, %struct.sVString** @getLineType.label, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %7, i32 0, i32 0
  %8 = load i64, i64* %length, align 8
  %cmp13 = icmp eq i64 %8, 0
  br i1 %cmp13, label %if.then14, label %if.else15

if.then14:                                        ; preds = %if.else12
  store i32 3, i32* %type, align 4
  br label %if.end

if.else15:                                        ; preds = %if.else12
  store i32 1, i32* %type, align 4
  br label %if.end

if.end:                                           ; preds = %if.else15, %if.then14
  br label %if.end16

if.end16:                                         ; preds = %if.end, %if.then11
  br label %if.end34

if.else17:                                        ; preds = %if.else6
  %9 = load i32, i32* %c, align 4
  %cmp18 = icmp eq i32 %9, 32
  br i1 %cmp18, label %if.then19, label %if.else20

if.then19:                                        ; preds = %if.else17
  br label %if.end33

if.else20:                                        ; preds = %if.else17
  %10 = load i32, i32* %c, align 4
  %cmp21 = icmp eq i32 %10, -1
  br i1 %cmp21, label %if.then22, label %if.else23

if.then22:                                        ; preds = %if.else20
  store i32 4, i32* %type, align 4
  br label %if.end32

if.else23:                                        ; preds = %if.else20
  %11 = load i32, i32* %c, align 4
  %cmp24 = icmp eq i32 %11, 10
  br i1 %cmp24, label %if.then25, label %if.else26

if.then25:                                        ; preds = %if.else23
  store i32 6, i32* %type, align 4
  br label %if.end31

if.else26:                                        ; preds = %if.else23
  %12 = load i32, i32* %c, align 4
  %call27 = call i32 @isdigit(i32 %12) #4
  %tobool = icmp ne i32 %call27, 0
  br i1 %tobool, label %if.then28, label %if.else29

if.then28:                                        ; preds = %if.else26
  %13 = load %struct.sVString*, %struct.sVString** @getLineType.label, align 8
  %14 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %13, i32 %14)
  br label %if.end30

if.else29:                                        ; preds = %if.else26
  store i32 1, i32* %type, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.else29, %if.then28
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %if.then25
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %if.then22
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.then19
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.end16
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.then5
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.then
  %15 = load i32, i32* %column, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %column, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.end36
  %16 = load i32, i32* %column, align 4
  %cmp37 = icmp slt i32 %16, 6
  br i1 %cmp37, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %17 = load i32, i32* %type, align 4
  %cmp38 = icmp eq i32 %17, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %18 = phi i1 [ false, %do.cond ], [ %cmp38, %land.rhs ]
  br i1 %18, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  br label %do.body39

do.body39:                                        ; preds = %do.end
  br label %do.end41

do.end41:                                         ; preds = %do.body39
  %19 = load %struct.sVString*, %struct.sVString** @getLineType.label, align 8
  %length42 = getelementptr inbounds %struct.sVString, %struct.sVString* %19, i32 0, i32 0
  %20 = load i64, i64* %length42, align 8
  %cmp43 = icmp ugt i64 %20, 0
  br i1 %cmp43, label %if.then44, label %if.end45

if.then44:                                        ; preds = %do.end41
  %21 = load %struct.sVString*, %struct.sVString** @getLineType.label, align 8
  call void @makeLabelTag(%struct.sVString* %21)
  br label %if.end45

if.end45:                                         ; preds = %if.then44, %do.end41
  %22 = load i32, i32* %type, align 4
  ret i32 %22
}

declare %struct.sVString* @vStringNewOrClear(%struct.sVString*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @makeLabelTag(%struct.sVString* %label) #0 {
entry:
  %label.addr = alloca %struct.sVString*, align 8
  %token = alloca %struct.sTokenInfo*, align 8
  store %struct.sVString* %label, %struct.sVString** %label.addr, align 8
  %call = call %struct.sTokenInfo* @newToken()
  store %struct.sTokenInfo* %call, %struct.sTokenInfo** %token, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 0
  store i32 6, i32* %type, align 8
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %string = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %1, i32 0, i32 3
  %2 = load %struct.sVString*, %struct.sVString** %string, align 8
  %3 = load %struct.sVString*, %struct.sVString** %label.addr, align 8
  call void @vStringCopy(%struct.sVString* %2, %struct.sVString* %3)
  %4 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  call void @makeFortranTag(%struct.sTokenInfo* %4, i32 7)
  %5 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  call void @deleteToken(%struct.sTokenInfo* %5)
  ret void
}

declare void @vStringCopy(%struct.sVString*, %struct.sVString*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @makeFortranTag(%struct.sTokenInfo* %token, i32 %tag) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %tag.addr = alloca i32, align 4
  %name = alloca i8*, align 8
  %e = alloca %struct.sTagEntryInfo, align 8
  %scope = alloca %struct.sTokenInfo*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  store i32 %tag, i32* %tag.addr, align 4
  %0 = load i32, i32* %tag.addr, align 4
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %tag1 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %1, i32 0, i32 2
  store i32 %0, i32* %tag1, align 8
  %2 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %tag2 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %2, i32 0, i32 2
  %3 = load i32, i32* %tag2, align 8
  %call = call zeroext i1 @includeTag(i32 %3)
  br i1 %call, label %if.then, label %if.end94

if.then:                                          ; preds = %entry
  %4 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %4, i32 0, i32 3
  %5 = load %struct.sVString*, %struct.sVString** %string, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %5, i32 0, i32 2
  %6 = load i8*, i8** %buffer, align 8
  store i8* %6, i8** %name, align 8
  %7 = load i8*, i8** %name, align 8
  %8 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %tag3 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %8, i32 0, i32 2
  %9 = load i32, i32* %tag3, align 8
  call void @initTagEntry(%struct.sTagEntryInfo* %e, i8* %7, i32 %9)
  %10 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %tag4 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %10, i32 0, i32 2
  %11 = load i32, i32* %tag4, align 8
  %cmp = icmp eq i32 %11, 1
  br i1 %cmp, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  %12 = load i32, i32* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 3), align 4
  %cmp6 = icmp ne i32 %12, 2
  %conv = zext i1 %cmp6 to i32
  %13 = bitcast %struct.sTagEntryInfo* %e to i8*
  %14 = trunc i32 %conv to i8
  %bf.load = load i8, i8* %13, align 8
  %bf.value = and i8 %14, 1
  %bf.clear = and i8 %bf.load, -2
  %bf.set = or i8 %bf.clear, %bf.value
  store i8 %bf.set, i8* %13, align 8
  %bf.result.cast = zext i8 %bf.value to i32
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then
  %15 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %lineNumber = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %15, i32 0, i32 9
  %16 = load i64, i64* %lineNumber, align 8
  %lineNumber7 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %e, i32 0, i32 1
  store i64 %16, i64* %lineNumber7, align 8
  %filePosition = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %e, i32 0, i32 4
  %17 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %filePosition8 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %17, i32 0, i32 10
  %18 = bitcast %struct._MIOPos* %filePosition to i8*
  %19 = bitcast %struct._MIOPos* %filePosition8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 %19, i64 16, i1 false)
  %20 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %tag9 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %20, i32 0, i32 2
  %21 = load i32, i32* %tag9, align 8
  %call10 = call zeroext i1 @isFileScope(i32 %21)
  %conv11 = zext i1 %call10 to i32
  %22 = bitcast %struct.sTagEntryInfo* %e to i8*
  %23 = trunc i32 %conv11 to i8
  %bf.load12 = load i8, i8* %22, align 8
  %bf.value13 = and i8 %23, 1
  %bf.shl = shl i8 %bf.value13, 1
  %bf.clear14 = and i8 %bf.load12, -3
  %bf.set15 = or i8 %bf.clear14, %bf.shl
  store i8 %bf.set15, i8* %22, align 8
  %bf.result.cast16 = zext i8 %bf.value13 to i32
  %24 = bitcast %struct.sTagEntryInfo* %e to i8*
  %bf.load17 = load i8, i8* %24, align 8
  %bf.lshr = lshr i8 %bf.load17, 1
  %bf.clear18 = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear18 to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end
  call void @markTagExtraBit(%struct.sTagEntryInfo* %e, i32 0)
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end
  %25 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %tag21 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %25, i32 0, i32 2
  %26 = load i32, i32* %tag21, align 8
  %cmp22 = icmp ne i32 %26, 7
  %conv24 = zext i1 %cmp22 to i32
  %27 = bitcast %struct.sTagEntryInfo* %e to i8*
  %28 = trunc i32 %conv24 to i8
  %bf.load25 = load i8, i8* %27, align 8
  %bf.value26 = and i8 %28, 1
  %bf.shl27 = shl i8 %bf.value26, 3
  %bf.clear28 = and i8 %bf.load25, -9
  %bf.set29 = or i8 %bf.clear28, %bf.shl27
  store i8 %bf.set29, i8* %27, align 8
  %bf.result.cast30 = zext i8 %bf.value26 to i32
  %29 = load i32, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @Ancestors, i32 0, i32 0), align 8
  %cmp31 = icmp ugt i32 %29, 0
  br i1 %cmp31, label %if.then33, label %if.end43

if.then33:                                        ; preds = %if.end20
  %call34 = call %struct.sTokenInfo* @ancestorScope()
  store %struct.sTokenInfo* %call34, %struct.sTokenInfo** %scope, align 8
  %30 = load %struct.sTokenInfo*, %struct.sTokenInfo** %scope, align 8
  %cmp35 = icmp ne %struct.sTokenInfo* %30, null
  br i1 %cmp35, label %if.then37, label %if.end42

if.then37:                                        ; preds = %if.then33
  %31 = load %struct.sTokenInfo*, %struct.sTokenInfo** %scope, align 8
  %tag38 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %31, i32 0, i32 2
  %32 = load i32, i32* %tag38, align 8
  %extensionFields = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %e, i32 0, i32 11
  %scopeKindIndex = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields, i32 0, i32 5
  store i32 %32, i32* %scopeKindIndex, align 4
  %33 = load %struct.sTokenInfo*, %struct.sTokenInfo** %scope, align 8
  %string39 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %33, i32 0, i32 3
  %34 = load %struct.sVString*, %struct.sVString** %string39, align 8
  %buffer40 = getelementptr inbounds %struct.sVString, %struct.sVString* %34, i32 0, i32 2
  %35 = load i8*, i8** %buffer40, align 8
  %extensionFields41 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %e, i32 0, i32 11
  %scopeName = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields41, i32 0, i32 6
  store i8* %35, i8** %scopeName, align 8
  br label %if.end42

if.end42:                                         ; preds = %if.then37, %if.then33
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %if.end20
  %36 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %parentType = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %36, i32 0, i32 4
  %37 = load %struct.sVString*, %struct.sVString** %parentType, align 8
  %cmp44 = icmp ne %struct.sVString* %37, null
  br i1 %cmp44, label %land.lhs.true, label %if.end60

land.lhs.true:                                    ; preds = %if.end43
  %38 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %parentType46 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %38, i32 0, i32 4
  %39 = load %struct.sVString*, %struct.sVString** %parentType46, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %39, i32 0, i32 0
  %40 = load i64, i64* %length, align 8
  %cmp47 = icmp ugt i64 %40, 0
  br i1 %cmp47, label %land.lhs.true49, label %if.end60

land.lhs.true49:                                  ; preds = %land.lhs.true
  %41 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %tag50 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %41, i32 0, i32 2
  %42 = load i32, i32* %tag50, align 8
  %cmp51 = icmp eq i32 %42, 16
  br i1 %cmp51, label %if.then56, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true49
  %43 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %tag53 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %43, i32 0, i32 2
  %44 = load i32, i32* %tag53, align 8
  %cmp54 = icmp eq i32 %44, 18
  br i1 %cmp54, label %if.then56, label %if.end60

if.then56:                                        ; preds = %lor.lhs.false, %land.lhs.true49
  %45 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %parentType57 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %45, i32 0, i32 4
  %46 = load %struct.sVString*, %struct.sVString** %parentType57, align 8
  %buffer58 = getelementptr inbounds %struct.sVString, %struct.sVString* %46, i32 0, i32 2
  %47 = load i8*, i8** %buffer58, align 8
  %extensionFields59 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %e, i32 0, i32 11
  %inheritance = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields59, i32 0, i32 3
  store i8* %47, i8** %inheritance, align 8
  br label %if.end60

if.end60:                                         ; preds = %if.then56, %lor.lhs.false, %land.lhs.true, %if.end43
  %48 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %implementation = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %48, i32 0, i32 6
  %49 = load i32, i32* %implementation, align 8
  %cmp61 = icmp ne i32 %49, 0
  br i1 %cmp61, label %if.then63, label %if.end68

if.then63:                                        ; preds = %if.end60
  %50 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %implementation64 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %50, i32 0, i32 6
  %51 = load i32, i32* %implementation64, align 8
  %call65 = call i8* @implementationString(i32 %51)
  %extensionFields66 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %e, i32 0, i32 11
  %implementation67 = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields66, i32 0, i32 2
  store i8* %call65, i8** %implementation67, align 8
  br label %if.end68

if.end68:                                         ; preds = %if.then63, %if.end60
  %52 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %signature = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %52, i32 0, i32 5
  %53 = load %struct.sVString*, %struct.sVString** %signature, align 8
  %tobool69 = icmp ne %struct.sVString* %53, null
  br i1 %tobool69, label %land.lhs.true70, label %if.end92

land.lhs.true70:                                  ; preds = %if.end68
  %54 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %signature71 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %54, i32 0, i32 5
  %55 = load %struct.sVString*, %struct.sVString** %signature71, align 8
  %length72 = getelementptr inbounds %struct.sVString, %struct.sVString* %55, i32 0, i32 0
  %56 = load i64, i64* %length72, align 8
  %cmp73 = icmp ugt i64 %56, 0
  br i1 %cmp73, label %land.lhs.true75, label %if.end92

land.lhs.true75:                                  ; preds = %land.lhs.true70
  %57 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %tag76 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %57, i32 0, i32 2
  %58 = load i32, i32* %tag76, align 8
  %cmp77 = icmp eq i32 %58, 4
  br i1 %cmp77, label %if.then87, label %lor.lhs.false79

lor.lhs.false79:                                  ; preds = %land.lhs.true75
  %59 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %tag80 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %59, i32 0, i32 2
  %60 = load i32, i32* %tag80, align 8
  %cmp81 = icmp eq i32 %60, 15
  br i1 %cmp81, label %if.then87, label %lor.lhs.false83

lor.lhs.false83:                                  ; preds = %lor.lhs.false79
  %61 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %tag84 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %61, i32 0, i32 2
  %62 = load i32, i32* %tag84, align 8
  %cmp85 = icmp eq i32 %62, 14
  br i1 %cmp85, label %if.then87, label %if.end92

if.then87:                                        ; preds = %lor.lhs.false83, %lor.lhs.false79, %land.lhs.true75
  %63 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %signature88 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %63, i32 0, i32 5
  %64 = load %struct.sVString*, %struct.sVString** %signature88, align 8
  %buffer89 = getelementptr inbounds %struct.sVString, %struct.sVString* %64, i32 0, i32 2
  %65 = load i8*, i8** %buffer89, align 8
  %extensionFields90 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %e, i32 0, i32 11
  %signature91 = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields90, i32 0, i32 8
  store i8* %65, i8** %signature91, align 8
  br label %if.end92

if.end92:                                         ; preds = %if.then87, %lor.lhs.false83, %land.lhs.true70, %if.end68
  %call93 = call i32 @makeTagEntry(%struct.sTagEntryInfo* %e)
  br label %if.end94

if.end94:                                         ; preds = %if.end92, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @includeTag(i32 %type) #0 {
entry:
  %type.addr = alloca i32, align 4
  %include = alloca i8, align 1
  store i32 %type, i32* %type.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load i32, i32* %type.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [19 x %struct.sKindDefinition], [19 x %struct.sKindDefinition]* @FortranKinds, i64 0, i64 %idxprom
  %enabled = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %arrayidx, i32 0, i32 0
  %1 = load i8, i8* %enabled, align 8
  %tobool = trunc i8 %1 to i1
  %frombool = zext i1 %tobool to i8
  store i8 %frombool, i8* %include, align 1
  %2 = load i8, i8* %include, align 1
  %tobool1 = trunc i8 %2 to i1
  br i1 %tobool1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.end
  %3 = load i32, i32* %type.addr, align 4
  %call = call zeroext i1 @isFileScope(i32 %3)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %call2 = call zeroext i1 @isXtagEnabled(i32 0)
  %frombool3 = zext i1 %call2 to i8
  store i8 %frombool3, i8* %include, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %do.end
  %4 = load i8, i8* %include, align 1
  %tobool4 = trunc i8 %4 to i1
  ret i1 %tobool4
}

declare void @initTagEntry(%struct.sTagEntryInfo*, i8*, i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @isFileScope(i32 %type) #0 {
entry:
  %type.addr = alloca i32, align 4
  store i32 %type, i32* %type.addr, align 4
  %0 = load i32, i32* %type.addr, align 4
  %cmp = icmp eq i32 %0, 7
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %1 = load i32, i32* %type.addr, align 4
  %cmp1 = icmp eq i32 %1, 8
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %cmp1, %lor.rhs ]
  ret i1 %2
}

declare void @markTagExtraBit(%struct.sTagEntryInfo*, i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct.sTokenInfo* @ancestorScope() #0 {
entry:
  %result = alloca %struct.sTokenInfo*, align 8
  %i = alloca i32, align 4
  %token = alloca %struct.sTokenInfo*, align 8
  store %struct.sTokenInfo* null, %struct.sTokenInfo** %result, align 8
  %0 = load i32, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @Ancestors, i32 0, i32 0), align 8
  store i32 %0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp ugt i32 %1, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %2 = load %struct.sTokenInfo*, %struct.sTokenInfo** %result, align 8
  %cmp1 = icmp eq %struct.sTokenInfo* %2, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %3 = phi i1 [ false, %for.cond ], [ %cmp1, %land.rhs ]
  br i1 %3, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %4 = load %struct.sTokenInfo*, %struct.sTokenInfo** getelementptr inbounds (%struct.anon.1, %struct.anon.1* @Ancestors, i32 0, i32 2), align 8
  %5 = load i32, i32* %i, align 4
  %idx.ext = zext i32 %5 to i64
  %add.ptr = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %4, i64 %idx.ext
  %add.ptr2 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %add.ptr, i64 -1
  store %struct.sTokenInfo* %add.ptr2, %struct.sTokenInfo** %token, align 8
  %6 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %6, i32 0, i32 0
  %7 = load i32, i32* %type, align 8
  %cmp3 = icmp eq i32 %7, 4
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %8 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %tag = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %8, i32 0, i32 2
  %9 = load i32, i32* %tag, align 8
  %cmp4 = icmp ne i32 %9, -1
  br i1 %cmp4, label %land.lhs.true5, label %if.end

land.lhs.true5:                                   ; preds = %land.lhs.true
  %10 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %tag6 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %10, i32 0, i32 2
  %11 = load i32, i32* %tag6, align 8
  %cmp7 = icmp ne i32 %11, 5
  br i1 %cmp7, label %land.lhs.true8, label %if.end

land.lhs.true8:                                   ; preds = %land.lhs.true5
  %12 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %tag9 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %12, i32 0, i32 2
  %13 = load i32, i32* %tag9, align 8
  %cmp10 = icmp ne i32 %13, 3
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true8
  %14 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  store %struct.sTokenInfo* %14, %struct.sTokenInfo** %result, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true8, %land.lhs.true5, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load i32, i32* %i, align 4
  %dec = add i32 %15, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %16 = load %struct.sTokenInfo*, %struct.sTokenInfo** %result, align 8
  ret %struct.sTokenInfo* %16
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @implementationString(i32 %imp) #0 {
entry:
  %imp.addr = alloca i32, align 4
  store i32 %imp, i32* %imp.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  %0 = load i32, i32* %imp.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [4 x i8*], [4 x i8*]* @implementationString.names, i64 0, i64 %idxprom
  %1 = load i8*, i8** %arrayidx, align 8
  ret i8* %1
}

declare i32 @makeTagEntry(%struct.sTagEntryInfo*) #1

declare zeroext i1 @isXtagEnabled(i32) #1

declare void @vStringResize(%struct.sVString*, i64) #1

; Function Attrs: nounwind readonly
declare i32 @isalnum(i32) #3

declare i32 @lookupCaseKeyword(i8*, i32) #1

declare i32 @strncmp(i8*, i8*, i64) #1

declare %struct.sVString* @vStringNewInit(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct.sVString* @parseInteger(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  %string = alloca %struct.sVString*, align 8
  store i32 %c, i32* %c.addr, align 4
  %call = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call, %struct.sVString** %string, align 8
  %0 = load i32, i32* %c.addr, align 4
  %cmp = icmp eq i32 %0, 45
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.sVString*, %struct.sVString** %string, align 8
  %2 = load i32, i32* %c.addr, align 4
  call void @vStringPut(%struct.sVString* %1, i32 %2)
  %call1 = call i32 @getChar()
  store i32 %call1, i32* %c.addr, align 4
  br label %if.end5

if.else:                                          ; preds = %entry
  %3 = load i32, i32* %c.addr, align 4
  %call2 = call i32 @isdigit(i32 %3) #4
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.end, label %if.then3

if.then3:                                         ; preds = %if.else
  %call4 = call i32 @getChar()
  store i32 %call4, i32* %c.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.else
  br label %if.end5

if.end5:                                          ; preds = %if.end, %if.then
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end5
  %4 = load i32, i32* %c.addr, align 4
  %cmp6 = icmp ne i32 %4, -1
  br i1 %cmp6, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %5 = load i32, i32* %c.addr, align 4
  %call7 = call i32 @isdigit(i32 %5) #4
  %tobool8 = icmp ne i32 %call7, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %tobool8, %land.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %7 = load %struct.sVString*, %struct.sVString** %string, align 8
  %8 = load i32, i32* %c.addr, align 4
  call void @vStringPut(%struct.sVString* %7, i32 %8)
  %call9 = call i32 @getChar()
  store i32 %call9, i32* %c.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %9 = load i32, i32* %c.addr, align 4
  %cmp10 = icmp eq i32 %9, 95
  br i1 %cmp10, label %if.then11, label %if.end18

if.then11:                                        ; preds = %while.end
  br label %do.body

do.body:                                          ; preds = %land.end17, %if.then11
  %call12 = call i32 @getChar()
  store i32 %call12, i32* %c.addr, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %10 = load i32, i32* %c.addr, align 4
  %cmp13 = icmp ne i32 %10, -1
  br i1 %cmp13, label %land.rhs14, label %land.end17

land.rhs14:                                       ; preds = %do.cond
  %11 = load i32, i32* %c.addr, align 4
  %call15 = call i32 @isalpha(i32 %11) #4
  %tobool16 = icmp ne i32 %call15, 0
  br label %land.end17

land.end17:                                       ; preds = %land.rhs14, %do.cond
  %12 = phi i1 [ false, %do.cond ], [ %tobool16, %land.rhs14 ]
  br i1 %12, label %do.body, label %do.end

do.end:                                           ; preds = %land.end17
  br label %if.end18

if.end18:                                         ; preds = %do.end, %while.end
  %13 = load i32, i32* %c.addr, align 4
  call void @ungetChar(i32 %13)
  %14 = load %struct.sVString*, %struct.sVString** %string, align 8
  ret %struct.sVString* %14
}

; Function Attrs: nounwind readonly
declare i32 @tolower(i32) #3

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @ancestorPush(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** getelementptr inbounds (%struct.anon.1, %struct.anon.1* @Ancestors, i32 0, i32 2), align 8
  %cmp = icmp eq %struct.sTokenInfo* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %do.body
  store i32 0, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @Ancestors, i32 0, i32 0), align 8
  store i32 10, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @Ancestors, i32 0, i32 1), align 4
  %1 = load i32, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @Ancestors, i32 0, i32 1), align 4
  %conv = zext i32 %1 to i64
  %mul = mul i64 %conv, 80
  %call = call i8* @eMalloc(i64 %mul)
  %2 = bitcast i8* %call to %struct.sTokenInfo*
  store %struct.sTokenInfo* %2, %struct.sTokenInfo** getelementptr inbounds (%struct.anon.1, %struct.anon.1* @Ancestors, i32 0, i32 2), align 8
  br label %if.end7

if.else:                                          ; preds = %entry
  %3 = load i32, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @Ancestors, i32 0, i32 0), align 8
  %4 = load i32, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @Ancestors, i32 0, i32 1), align 4
  %cmp1 = icmp eq i32 %3, %4
  br i1 %cmp1, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.else
  %5 = load i32, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @Ancestors, i32 0, i32 1), align 4
  %add = add i32 %5, 10
  store i32 %add, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @Ancestors, i32 0, i32 1), align 4
  %6 = load %struct.sTokenInfo*, %struct.sTokenInfo** getelementptr inbounds (%struct.anon.1, %struct.anon.1* @Ancestors, i32 0, i32 2), align 8
  %7 = bitcast %struct.sTokenInfo* %6 to i8*
  %8 = load i32, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @Ancestors, i32 0, i32 1), align 4
  %conv4 = zext i32 %8 to i64
  %mul5 = mul i64 %conv4, 80
  %call6 = call i8* @eRealloc(i8* %7, i64 %mul5)
  %9 = bitcast i8* %call6 to %struct.sTokenInfo*
  store %struct.sTokenInfo* %9, %struct.sTokenInfo** getelementptr inbounds (%struct.anon.1, %struct.anon.1* @Ancestors, i32 0, i32 2), align 8
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.else
  br label %if.end7

if.end7:                                          ; preds = %if.end, %do.end
  %10 = load %struct.sTokenInfo*, %struct.sTokenInfo** getelementptr inbounds (%struct.anon.1, %struct.anon.1* @Ancestors, i32 0, i32 2), align 8
  %11 = load i32, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @Ancestors, i32 0, i32 0), align 8
  %idxprom = zext i32 %11 to i64
  %arrayidx = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %10, i64 %idxprom
  %12 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %13 = bitcast %struct.sTokenInfo* %arrayidx to i8*
  %14 = bitcast %struct.sTokenInfo* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 80, i1 false)
  %15 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %15, i32 0, i32 3
  %16 = load %struct.sVString*, %struct.sVString** %string, align 8
  %call8 = call %struct.sVString* @vStringNewCopy(%struct.sVString* %16)
  %17 = load %struct.sTokenInfo*, %struct.sTokenInfo** getelementptr inbounds (%struct.anon.1, %struct.anon.1* @Ancestors, i32 0, i32 2), align 8
  %18 = load i32, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @Ancestors, i32 0, i32 0), align 8
  %idxprom9 = zext i32 %18 to i64
  %arrayidx10 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %17, i64 %idxprom9
  %string11 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %arrayidx10, i32 0, i32 3
  store %struct.sVString* %call8, %struct.sVString** %string11, align 8
  %19 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %signature = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %19, i32 0, i32 5
  %20 = load %struct.sVString*, %struct.sVString** %signature, align 8
  %tobool = icmp ne %struct.sVString* %20, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end7
  %21 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %signature12 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %21, i32 0, i32 5
  %22 = load %struct.sVString*, %struct.sVString** %signature12, align 8
  %call13 = call %struct.sVString* @vStringNewCopy(%struct.sVString* %22)
  br label %cond.end

cond.false:                                       ; preds = %if.end7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.sVString* [ %call13, %cond.true ], [ null, %cond.false ]
  %23 = load %struct.sTokenInfo*, %struct.sTokenInfo** getelementptr inbounds (%struct.anon.1, %struct.anon.1* @Ancestors, i32 0, i32 2), align 8
  %24 = load i32, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @Ancestors, i32 0, i32 0), align 8
  %idxprom14 = zext i32 %24 to i64
  %arrayidx15 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %23, i64 %idxprom14
  %signature16 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %arrayidx15, i32 0, i32 5
  store %struct.sVString* %cond, %struct.sVString** %signature16, align 8
  %25 = load i32, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @Ancestors, i32 0, i32 0), align 8
  %inc = add i32 %25, 1
  store i32 %inc, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @Ancestors, i32 0, i32 0), align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @readSubToken(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %secondary = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 8
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %secondary, align 8
  %cmp = icmp eq %struct.sTokenInfo* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call %struct.sTokenInfo* @newToken()
  %2 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %secondary1 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %2, i32 0, i32 8
  store %struct.sTokenInfo* %call, %struct.sTokenInfo** %secondary1, align 8
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %secondary2 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %3, i32 0, i32 8
  %4 = load %struct.sTokenInfo*, %struct.sTokenInfo** %secondary2, align 8
  call void @readToken(%struct.sTokenInfo* %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @ancestorPop() #0 {
entry:
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load i32, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @Ancestors, i32 0, i32 0), align 8
  %dec = add i32 %0, -1
  store i32 %dec, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @Ancestors, i32 0, i32 0), align 8
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** getelementptr inbounds (%struct.anon.1, %struct.anon.1* @Ancestors, i32 0, i32 2), align 8
  %2 = load i32, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @Ancestors, i32 0, i32 0), align 8
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %1, i64 %idxprom
  %string = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %arrayidx, i32 0, i32 3
  %3 = load %struct.sVString*, %struct.sVString** %string, align 8
  call void @vStringDelete(%struct.sVString* %3)
  %4 = load %struct.sTokenInfo*, %struct.sTokenInfo** getelementptr inbounds (%struct.anon.1, %struct.anon.1* @Ancestors, i32 0, i32 2), align 8
  %5 = load i32, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @Ancestors, i32 0, i32 0), align 8
  %idxprom1 = zext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %4, i64 %idxprom1
  %signature = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %arrayidx2, i32 0, i32 5
  %6 = load %struct.sVString*, %struct.sVString** %signature, align 8
  call void @vStringDelete(%struct.sVString* %6)
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** getelementptr inbounds (%struct.anon.1, %struct.anon.1* @Ancestors, i32 0, i32 2), align 8
  %8 = load i32, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @Ancestors, i32 0, i32 0), align 8
  %idxprom3 = zext i32 %8 to i64
  %arrayidx4 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %7, i64 %idxprom3
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %arrayidx4, i32 0, i32 0
  store i32 0, i32* %type, align 8
  %9 = load %struct.sTokenInfo*, %struct.sTokenInfo** getelementptr inbounds (%struct.anon.1, %struct.anon.1* @Ancestors, i32 0, i32 2), align 8
  %10 = load i32, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @Ancestors, i32 0, i32 0), align 8
  %idxprom5 = zext i32 %10 to i64
  %arrayidx6 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %9, i64 %idxprom5
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %arrayidx6, i32 0, i32 1
  store i32 -1, i32* %keyword, align 4
  %11 = load %struct.sTokenInfo*, %struct.sTokenInfo** getelementptr inbounds (%struct.anon.1, %struct.anon.1* @Ancestors, i32 0, i32 2), align 8
  %12 = load i32, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @Ancestors, i32 0, i32 0), align 8
  %idxprom7 = zext i32 %12 to i64
  %arrayidx8 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %11, i64 %idxprom7
  %secondary = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %arrayidx8, i32 0, i32 8
  store %struct.sTokenInfo* null, %struct.sTokenInfo** %secondary, align 8
  %13 = load %struct.sTokenInfo*, %struct.sTokenInfo** getelementptr inbounds (%struct.anon.1, %struct.anon.1* @Ancestors, i32 0, i32 2), align 8
  %14 = load i32, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @Ancestors, i32 0, i32 0), align 8
  %idxprom9 = zext i32 %14 to i64
  %arrayidx10 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %13, i64 %idxprom9
  %tag = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %arrayidx10, i32 0, i32 2
  store i32 -1, i32* %tag, align 8
  %15 = load %struct.sTokenInfo*, %struct.sTokenInfo** getelementptr inbounds (%struct.anon.1, %struct.anon.1* @Ancestors, i32 0, i32 2), align 8
  %16 = load i32, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @Ancestors, i32 0, i32 0), align 8
  %idxprom11 = zext i32 %16 to i64
  %arrayidx12 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %15, i64 %idxprom11
  %string13 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %arrayidx12, i32 0, i32 3
  store %struct.sVString* null, %struct.sVString** %string13, align 8
  %17 = load %struct.sTokenInfo*, %struct.sTokenInfo** getelementptr inbounds (%struct.anon.1, %struct.anon.1* @Ancestors, i32 0, i32 2), align 8
  %18 = load i32, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @Ancestors, i32 0, i32 0), align 8
  %idxprom14 = zext i32 %18 to i64
  %arrayidx15 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %17, i64 %idxprom14
  %lineNumber = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %arrayidx15, i32 0, i32 9
  store i64 0, i64* %lineNumber, align 8
  %19 = load %struct.sTokenInfo*, %struct.sTokenInfo** getelementptr inbounds (%struct.anon.1, %struct.anon.1* @Ancestors, i32 0, i32 2), align 8
  %20 = load i32, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @Ancestors, i32 0, i32 0), align 8
  %idxprom16 = zext i32 %20 to i64
  %arrayidx17 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %19, i64 %idxprom16
  %implementation = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %arrayidx17, i32 0, i32 6
  store i32 0, i32* %implementation, align 8
  %21 = load %struct.sTokenInfo*, %struct.sTokenInfo** getelementptr inbounds (%struct.anon.1, %struct.anon.1* @Ancestors, i32 0, i32 2), align 8
  %22 = load i32, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @Ancestors, i32 0, i32 0), align 8
  %idxprom18 = zext i32 %22 to i64
  %arrayidx19 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %21, i64 %idxprom18
  %isMethod = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %arrayidx19, i32 0, i32 7
  store i8 0, i8* %isMethod, align 4
  ret void
}

declare i8* @eRealloc(i8*, i64) #1

declare %struct.sVString* @vStringNewCopy(%struct.sVString*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @skipToToken(%struct.sTokenInfo* %token, i32 %type) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %type.addr = alloca i32, align 4
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type1 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 0
  %1 = load i32, i32* %type1, align 8
  %2 = load i32, i32* %type.addr, align 4
  %cmp = icmp eq i32 %1, %2
  br i1 %cmp, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.cond
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type2 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %3, i32 0, i32 0
  %4 = load i32, i32* %type2, align 8
  %cmp3 = icmp eq i32 %4, 14
  br i1 %cmp3, label %land.end, label %land.lhs.true4

land.lhs.true4:                                   ; preds = %land.lhs.true
  %5 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %secondary = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %5, i32 0, i32 8
  %6 = load %struct.sTokenInfo*, %struct.sTokenInfo** %secondary, align 8
  %cmp5 = icmp ne %struct.sTokenInfo* %6, null
  br i1 %cmp5, label %land.lhs.true6, label %land.rhs

land.lhs.true6:                                   ; preds = %land.lhs.true4
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %secondary7 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %7, i32 0, i32 8
  %8 = load %struct.sTokenInfo*, %struct.sTokenInfo** %secondary7, align 8
  %type8 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %8, i32 0, i32 0
  %9 = load i32, i32* %type8, align 8
  %cmp9 = icmp eq i32 %9, 14
  br i1 %cmp9, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true6, %land.lhs.true4
  %10 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type10 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %10, i32 0, i32 0
  %11 = load i32, i32* %type10, align 8
  %cmp11 = icmp eq i32 %11, 1
  %lnot = xor i1 %cmp11, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true6, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true6 ], [ false, %land.lhs.true ], [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %12, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %13 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %13)
  br label %while.cond

while.end:                                        ; preds = %land.end
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseSubprogramFull(%struct.sTokenInfo* %token, i32 %tag) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %tag.addr = alloca i32, align 4
  %name = alloca %struct.sTokenInfo*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  store i32 %tag, i32* %tag.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %0)
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %1, i32 0, i32 0
  %2 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %2, 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.end
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call = call %struct.sTokenInfo* @newTokenFrom(%struct.sTokenInfo* %3)
  store %struct.sTokenInfo* %call, %struct.sTokenInfo** %name, align 8
  %4 = load i32, i32* %tag.addr, align 4
  %cmp1 = icmp eq i32 %4, 15
  br i1 %cmp1, label %if.then3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %5 = load i32, i32* %tag.addr, align 4
  %cmp2 = icmp eq i32 %5, 14
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %lor.lhs.false, %if.then
  %6 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call4 = call %struct.sVString* @parseSignature(%struct.sTokenInfo* %6)
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  %signature = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %7, i32 0, i32 5
  store %struct.sVString* %call4, %struct.sVString** %signature, align 8
  br label %if.end

if.end:                                           ; preds = %if.then3, %lor.lhs.false
  %8 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  %9 = load i32, i32* %tag.addr, align 4
  call void @makeFortranTag(%struct.sTokenInfo* %8, i32 %9)
  %10 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  call void @ancestorPush(%struct.sTokenInfo* %10)
  %11 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  call void @deleteToken(%struct.sTokenInfo* %11)
  br label %if.end5

if.else:                                          ; preds = %do.end
  %12 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @ancestorPush(%struct.sTokenInfo* %12)
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.end
  %13 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @skipToNextStatement(%struct.sTokenInfo* %13)
  %14 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call6 = call zeroext i1 @parseSpecificationPart(%struct.sTokenInfo* %14)
  %15 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call7 = call zeroext i1 @parseExecutionPart(%struct.sTokenInfo* %15)
  %16 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %16, i32 0, i32 1
  %17 = load i32, i32* %keyword, align 4
  %cmp8 = icmp eq i32 %17, 15
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end5
  %18 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @parseInternalSubprogramPart(%struct.sTokenInfo* %18)
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end5
  %19 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readSubToken(%struct.sTokenInfo* %19)
  %20 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @skipToNextStatement(%struct.sTokenInfo* %20)
  call void @ancestorPop()
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @subprogramTagType(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %result = alloca i32, align 4
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  store i32 -1, i32* %result, align 4
  %call = call zeroext i1 @insideInterface()
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 14, i32* %result, align 4
  br label %if.end7

if.else:                                          ; preds = %entry
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 1
  %1 = load i32, i32* %keyword, align 4
  %cmp = icmp eq i32 %1, 75
  br i1 %cmp, label %if.then1, label %if.else2

if.then1:                                         ; preds = %if.else
  store i32 15, i32* %result, align 4
  br label %if.end6

if.else2:                                         ; preds = %if.else
  %2 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword3 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %2, i32 0, i32 1
  %3 = load i32, i32* %keyword3, align 4
  %cmp4 = icmp eq i32 %3, 34
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.else2
  store i32 4, i32* %result, align 4
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.else2
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.then1
  br label %if.end7

if.end7:                                          ; preds = %if.end6, %if.then
  br label %do.body

do.body:                                          ; preds = %if.end7
  br label %do.end

do.end:                                           ; preds = %do.body
  %4 = load i32, i32* %result, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct.sTokenInfo* @newTokenFrom(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %result = alloca %struct.sTokenInfo*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  %call = call i8* @eMalloc(i64 80)
  %0 = bitcast i8* %call to %struct.sTokenInfo*
  store %struct.sTokenInfo* %0, %struct.sTokenInfo** %result, align 8
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %result, align 8
  %2 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %3 = bitcast %struct.sTokenInfo* %1 to i8*
  %4 = bitcast %struct.sTokenInfo* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 %4, i64 80, i1 false)
  %5 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %5, i32 0, i32 3
  %6 = load %struct.sVString*, %struct.sVString** %string, align 8
  %call1 = call %struct.sVString* @vStringNewCopy(%struct.sVString* %6)
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %result, align 8
  %string2 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %7, i32 0, i32 3
  store %struct.sVString* %call1, %struct.sVString** %string2, align 8
  %8 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %secondary = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %8, i32 0, i32 8
  store %struct.sTokenInfo* null, %struct.sTokenInfo** %secondary, align 8
  %9 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %parentType = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %9, i32 0, i32 4
  store %struct.sVString* null, %struct.sVString** %parentType, align 8
  %10 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %signature = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %10, i32 0, i32 5
  store %struct.sVString* null, %struct.sVString** %signature, align 8
  %11 = load %struct.sTokenInfo*, %struct.sTokenInfo** %result, align 8
  ret %struct.sTokenInfo* %11
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct.sVString* @parseSignature(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %signature = alloca %struct.sVString*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  %call = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call, %struct.sVString** %signature, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %0)
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %1, i32 0, i32 0
  %2 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %2, 10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.sVString*, %struct.sVString** %signature, align 8
  call void @vStringPut(%struct.sVString* %3, i32 40)
  %4 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %5 = load %struct.sVString*, %struct.sVString** %signature, align 8
  %6 = bitcast %struct.sVString* %5 to i8*
  call void @skipOverParensFull(%struct.sTokenInfo* %4, void (%struct.sTokenInfo*, i8*)* @makeSignature, i8* %6)
  %7 = load %struct.sVString*, %struct.sVString** %signature, align 8
  call void @vStringPut(%struct.sVString* %7, i32 41)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct.sVString*, %struct.sVString** %signature, align 8
  ret %struct.sVString* %8
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseInternalSubprogramPart(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %done = alloca i8, align 1
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  store i8 0, i8* %done, align 1
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 1
  %1 = load i32, i32* %keyword, align 4
  %cmp = icmp eq i32 %1, 15
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @skipToNextStatement(%struct.sTokenInfo* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %do.body

do.body:                                          ; preds = %land.end, %if.end
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword1 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %3, i32 0, i32 1
  %4 = load i32, i32* %keyword1, align 4
  switch i32 %4, label %sw.default [
    i32 34, label %sw.bb
    i32 75, label %sw.bb
    i32 24, label %sw.bb2
  ]

sw.bb:                                            ; preds = %do.body, %do.body
  %5 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @parseSubprogram(%struct.sTokenInfo* %5)
  br label %sw.epilog

sw.bb2:                                           ; preds = %do.body
  store i8 1, i8* %done, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  %6 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call = call zeroext i1 @isSubprogramPrefix(%struct.sTokenInfo* %6)
  br i1 %call, label %if.then3, label %if.else

if.then3:                                         ; preds = %sw.default
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %7)
  br label %if.end8

if.else:                                          ; preds = %sw.default
  %8 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call4 = call zeroext i1 @isTypeSpec(%struct.sTokenInfo* %8)
  br i1 %call4, label %if.then5, label %if.else6

if.then5:                                         ; preds = %if.else
  %9 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @parseTypeSpec(%struct.sTokenInfo* %9)
  br label %if.end7

if.else6:                                         ; preds = %if.else
  %10 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %10)
  br label %if.end7

if.end7:                                          ; preds = %if.else6, %if.then5
  br label %if.end8

if.end8:                                          ; preds = %if.end7, %if.then3
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end8, %sw.bb2, %sw.bb
  br label %do.cond

do.cond:                                          ; preds = %sw.epilog
  %11 = load i8, i8* %done, align 1
  %tobool = trunc i8 %11 to i1
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %do.cond
  %12 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %12, i32 0, i32 0
  %13 = load i32, i32* %type, align 8
  %cmp9 = icmp eq i32 %13, 1
  %lnot = xor i1 %cmp9, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %14 = phi i1 [ false, %do.cond ], [ %lnot, %land.rhs ]
  br i1 %14, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @skipOverParensFull(%struct.sTokenInfo* %token, void (%struct.sTokenInfo*, i8*)* %token_cb, i8* %user_data) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %token_cb.addr = alloca void (%struct.sTokenInfo*, i8*)*, align 8
  %user_data.addr = alloca i8*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  store void (%struct.sTokenInfo*, i8*)* %token_cb, void (%struct.sTokenInfo*, i8*)** %token_cb.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %1 = load void (%struct.sTokenInfo*, i8*)*, void (%struct.sTokenInfo*, i8*)** %token_cb.addr, align 8
  %2 = load i8*, i8** %user_data.addr, align 8
  call void @skipOverPairsFull(%struct.sTokenInfo* %0, i32 10, i32 9, void (%struct.sTokenInfo*, i8*)* %1, i8* %2)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @makeSignature(%struct.sTokenInfo* %token, i8* %signature) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %signature.addr = alloca i8*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  store i8* %signature, i8** %signature.addr, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 0
  %1 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %1, 4
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type1 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %2, i32 0, i32 0
  %3 = load i32, i32* %type1, align 8
  %cmp2 = icmp eq i32 %3, 5
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load i8*, i8** %signature.addr, align 8
  %5 = bitcast i8* %4 to %struct.sVString*
  %6 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %6, i32 0, i32 3
  %7 = load %struct.sVString*, %struct.sVString** %string, align 8
  call void @vStringCat(%struct.sVString* %5, %struct.sVString* %7)
  br label %if.end6

if.else:                                          ; preds = %lor.lhs.false
  %8 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type3 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %8, i32 0, i32 0
  %9 = load i32, i32* %type3, align 8
  %cmp4 = icmp eq i32 %9, 2
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.else
  %10 = load i8*, i8** %signature.addr, align 8
  %11 = bitcast i8* %10 to %struct.sVString*
  call void @vStringCatS(%struct.sVString* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.57, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @skipOverPairsFull(%struct.sTokenInfo* %token, i32 %topen, i32 %tclose, void (%struct.sTokenInfo*, i8*)* %token_cb, i8* %user_data) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %topen.addr = alloca i32, align 4
  %tclose.addr = alloca i32, align 4
  %token_cb.addr = alloca void (%struct.sTokenInfo*, i8*)*, align 8
  %user_data.addr = alloca i8*, align 8
  %level = alloca i32, align 4
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  store i32 %topen, i32* %topen.addr, align 4
  store i32 %tclose, i32* %tclose.addr, align 4
  store void (%struct.sTokenInfo*, i8*)* %token_cb, void (%struct.sTokenInfo*, i8*)** %token_cb.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  store i32 0, i32* %level, align 4
  br label %do.body

do.body:                                          ; preds = %land.end, %entry
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 0
  %1 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %1, 14
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %do.end

if.else:                                          ; preds = %do.body
  %2 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type1 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %2, i32 0, i32 0
  %3 = load i32, i32* %type1, align 8
  %4 = load i32, i32* %topen.addr, align 4
  %cmp2 = icmp eq i32 %3, %4
  br i1 %cmp2, label %if.then3, label %if.else4

if.then3:                                         ; preds = %if.else
  %5 = load i32, i32* %level, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %level, align 4
  br label %if.end11

if.else4:                                         ; preds = %if.else
  %6 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type5 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %6, i32 0, i32 0
  %7 = load i32, i32* %type5, align 8
  %8 = load i32, i32* %tclose.addr, align 4
  %cmp6 = icmp eq i32 %7, %8
  br i1 %cmp6, label %if.then7, label %if.else8

if.then7:                                         ; preds = %if.else4
  %9 = load i32, i32* %level, align 4
  %dec = add nsw i32 %9, -1
  store i32 %dec, i32* %level, align 4
  br label %if.end10

if.else8:                                         ; preds = %if.else4
  %10 = load void (%struct.sTokenInfo*, i8*)*, void (%struct.sTokenInfo*, i8*)** %token_cb.addr, align 8
  %tobool = icmp ne void (%struct.sTokenInfo*, i8*)* %10, null
  br i1 %tobool, label %if.then9, label %if.end

if.then9:                                         ; preds = %if.else8
  %11 = load void (%struct.sTokenInfo*, i8*)*, void (%struct.sTokenInfo*, i8*)** %token_cb.addr, align 8
  %12 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %13 = load i8*, i8** %user_data.addr, align 8
  call void %11(%struct.sTokenInfo* %12, i8* %13)
  br label %if.end

if.end:                                           ; preds = %if.then9, %if.else8
  br label %if.end10

if.end10:                                         ; preds = %if.end, %if.then7
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %if.then3
  br label %if.end12

if.end12:                                         ; preds = %if.end11
  %14 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %14)
  br label %do.cond

do.cond:                                          ; preds = %if.end12
  %15 = load i32, i32* %level, align 4
  %cmp13 = icmp sgt i32 %15, 0
  br i1 %cmp13, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %16 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type14 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %16, i32 0, i32 0
  %17 = load i32, i32* %type14, align 8
  %cmp15 = icmp eq i32 %17, 1
  %lnot = xor i1 %cmp15, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %18 = phi i1 [ false, %do.cond ], [ %lnot, %land.rhs ]
  br i1 %18, label %do.body, label %do.end

do.end:                                           ; preds = %land.end, %if.then
  ret void
}

declare void @vStringCatS(%struct.sVString*, i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @isTypeSpec(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %result = alloca i8, align 1
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 1
  %1 = load i32, i32* %keyword, align 4
  switch i32 %1, label %sw.default [
    i32 7, label %sw.bb
    i32 41, label %sw.bb
    i32 65, label %sw.bb
    i32 22, label %sw.bb
    i32 14, label %sw.bb
    i32 11, label %sw.bb
    i32 45, label %sw.bb
    i32 66, label %sw.bb
    i32 78, label %sw.bb
    i32 61, label %sw.bb
    i32 31, label %sw.bb
    i32 35, label %sw.bb
    i32 10, label %sw.bb
    i32 27, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  store i8 1, i8* %result, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store i8 0, i8* %result, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %2 = load i8, i8* %result, align 1
  %tobool = trunc i8 %2 to i1
  ret i1 %tobool
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseTypeSpec(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 1
  %1 = load i32, i32* %keyword, align 4
  switch i32 %1, label %sw.default [
    i32 11, label %sw.bb
    i32 7, label %sw.bb10
    i32 14, label %sw.bb10
    i32 41, label %sw.bb10
    i32 45, label %sw.bb10
    i32 65, label %sw.bb10
    i32 61, label %sw.bb10
    i32 10, label %sw.bb10
    i32 22, label %sw.bb11
    i32 66, label %sw.bb19
    i32 78, label %sw.bb29
    i32 31, label %sw.bb35
    i32 35, label %sw.bb35
    i32 27, label %sw.bb35
  ]

sw.bb:                                            ; preds = %do.end
  %2 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %2)
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %3, i32 0, i32 0
  %4 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %4, 8
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %sw.bb
  %5 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %5, i32 0, i32 3
  %6 = load %struct.sVString*, %struct.sVString** %string, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %6, i32 0, i32 2
  %7 = load i8*, i8** %buffer, align 8
  %call = call i32 @strcmp(i8* %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0))
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %8 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %sw.bb
  %9 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type2 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %9, i32 0, i32 0
  %10 = load i32, i32* %type2, align 8
  %cmp3 = icmp eq i32 %10, 10
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %11 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @skipOverParens(%struct.sTokenInfo* %11)
  br label %if.end9

if.else:                                          ; preds = %if.end
  %12 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type5 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %12, i32 0, i32 0
  %13 = load i32, i32* %type5, align 8
  %cmp6 = icmp eq i32 %13, 7
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.else
  %14 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %14)
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.else
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %if.then4
  br label %sw.epilog

sw.bb10:                                          ; preds = %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end
  %15 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %15)
  %16 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @parseKindSelector(%struct.sTokenInfo* %16)
  br label %sw.epilog

sw.bb11:                                          ; preds = %do.end
  %17 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %17)
  %18 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword12 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %18, i32 0, i32 1
  %19 = load i32, i32* %keyword12, align 4
  %cmp13 = icmp eq i32 %19, 14
  br i1 %cmp13, label %if.then16, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb11
  %20 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword14 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %20, i32 0, i32 1
  %21 = load i32, i32* %keyword14, align 4
  %cmp15 = icmp eq i32 %21, 59
  br i1 %cmp15, label %if.then16, label %if.else17

if.then16:                                        ; preds = %lor.lhs.false, %sw.bb11
  %22 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %22)
  br label %if.end18

if.else17:                                        ; preds = %lor.lhs.false
  %23 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @skipToToken(%struct.sTokenInfo* %23, i32 14)
  br label %if.end18

if.end18:                                         ; preds = %if.else17, %if.then16
  br label %sw.epilog

sw.bb19:                                          ; preds = %do.end
  %24 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %24)
  %25 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type20 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %25, i32 0, i32 0
  %26 = load i32, i32* %type20, align 8
  %cmp21 = icmp eq i32 %26, 8
  br i1 %cmp21, label %land.lhs.true22, label %if.end28

land.lhs.true22:                                  ; preds = %sw.bb19
  %27 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string23 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %27, i32 0, i32 3
  %28 = load %struct.sVString*, %struct.sVString** %string23, align 8
  %buffer24 = getelementptr inbounds %struct.sVString, %struct.sVString* %28, i32 0, i32 2
  %29 = load i8*, i8** %buffer24, align 8
  %call25 = call i32 @strcmp(i8* %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i64 0, i64 0))
  %cmp26 = icmp eq i32 %call25, 0
  br i1 %cmp26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %land.lhs.true22
  %30 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %30)
  %31 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %31)
  %32 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %32)
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %land.lhs.true22, %sw.bb19
  br label %sw.epilog

sw.bb29:                                          ; preds = %do.end
  %33 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %33)
  %34 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type30 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %34, i32 0, i32 0
  %35 = load i32, i32* %type30, align 8
  %cmp31 = icmp eq i32 %35, 10
  br i1 %cmp31, label %if.then32, label %if.else33

if.then32:                                        ; preds = %sw.bb29
  %36 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @skipOverParens(%struct.sTokenInfo* %36)
  br label %if.end34

if.else33:                                        ; preds = %sw.bb29
  %37 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @parseDerivedTypeDef(%struct.sTokenInfo* %37)
  br label %if.end34

if.end34:                                         ; preds = %if.else33, %if.then32
  br label %sw.epilog

sw.bb35:                                          ; preds = %do.end, %do.end, %do.end
  %38 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %38)
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  %39 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @skipToToken(%struct.sTokenInfo* %39, i32 14)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb35, %if.end34, %if.end28, %if.end18, %sw.bb10, %if.end9
  ret void
}

declare i32 @strcmp(i8*, i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @skipOverParens(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @skipOverParensFull(%struct.sTokenInfo* %0, void (%struct.sTokenInfo*, i8*)* null, i8* null)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseKindSelector(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 0
  %1 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %1, 10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @skipOverParens(%struct.sTokenInfo* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type1 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %3, i32 0, i32 0
  %4 = load i32, i32* %type1, align 8
  %cmp2 = icmp eq i32 %4, 8
  br i1 %cmp2, label %land.lhs.true, label %if.end9

land.lhs.true:                                    ; preds = %if.end
  %5 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %5, i32 0, i32 3
  %6 = load %struct.sVString*, %struct.sVString** %string, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %6, i32 0, i32 2
  %7 = load i8*, i8** %buffer, align 8
  %call = call i32 @strcmp(i8* %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0))
  %cmp3 = icmp eq i32 %call, 0
  br i1 %cmp3, label %if.then4, label %if.end9

if.then4:                                         ; preds = %land.lhs.true
  %8 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %8)
  %9 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type5 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %9, i32 0, i32 0
  %10 = load i32, i32* %type5, align 8
  %cmp6 = icmp eq i32 %10, 10
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.then4
  %11 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @skipOverParens(%struct.sTokenInfo* %11)
  br label %if.end8

if.else:                                          ; preds = %if.then4
  %12 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %12)
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then7
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %land.lhs.true, %if.end
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseDerivedTypeDef(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %qualifierToken = alloca %struct.sTokenInfo*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  store %struct.sTokenInfo* null, %struct.sTokenInfo** %qualifierToken, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 0
  %1 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call = call %struct.sTokenInfo* @parseQualifierSpecList(%struct.sTokenInfo* %2)
  store %struct.sTokenInfo* %call, %struct.sTokenInfo** %qualifierToken, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type1 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %3, i32 0, i32 0
  %4 = load i32, i32* %type1, align 8
  %cmp2 = icmp eq i32 %4, 3
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %5 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %5)
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  %6 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type5 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %6, i32 0, i32 0
  %7 = load i32, i32* %type5, align 8
  %cmp6 = icmp eq i32 %7, 4
  br i1 %cmp6, label %if.then7, label %if.end21

if.then7:                                         ; preds = %if.end4
  %8 = load %struct.sTokenInfo*, %struct.sTokenInfo** %qualifierToken, align 8
  %tobool = icmp ne %struct.sTokenInfo* %8, null
  br i1 %tobool, label %if.then8, label %if.end20

if.then8:                                         ; preds = %if.then7
  %9 = load %struct.sTokenInfo*, %struct.sTokenInfo** %qualifierToken, align 8
  %parentType = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %9, i32 0, i32 4
  %10 = load %struct.sVString*, %struct.sVString** %parentType, align 8
  %tobool9 = icmp ne %struct.sVString* %10, null
  br i1 %tobool9, label %if.then10, label %if.end14

if.then10:                                        ; preds = %if.then8
  %11 = load %struct.sTokenInfo*, %struct.sTokenInfo** %qualifierToken, align 8
  %parentType11 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %11, i32 0, i32 4
  %12 = load %struct.sVString*, %struct.sVString** %parentType11, align 8
  %call12 = call %struct.sVString* @vStringNewCopy(%struct.sVString* %12)
  %13 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %parentType13 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %13, i32 0, i32 4
  store %struct.sVString* %call12, %struct.sVString** %parentType13, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %if.then8
  %14 = load %struct.sTokenInfo*, %struct.sTokenInfo** %qualifierToken, align 8
  %implementation = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %14, i32 0, i32 6
  %15 = load i32, i32* %implementation, align 8
  %cmp15 = icmp ne i32 %15, 0
  br i1 %cmp15, label %if.then16, label %if.end19

if.then16:                                        ; preds = %if.end14
  %16 = load %struct.sTokenInfo*, %struct.sTokenInfo** %qualifierToken, align 8
  %implementation17 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %16, i32 0, i32 6
  %17 = load i32, i32* %implementation17, align 8
  %18 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %implementation18 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %18, i32 0, i32 6
  store i32 %17, i32* %implementation18, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.end14
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.then7
  %19 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @makeFortranTag(%struct.sTokenInfo* %19, i32 16)
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %if.end4
  %20 = load %struct.sTokenInfo*, %struct.sTokenInfo** %qualifierToken, align 8
  call void @deleteToken(%struct.sTokenInfo* %20)
  %21 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @ancestorPush(%struct.sTokenInfo* %21)
  %22 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @skipToNextStatement(%struct.sTokenInfo* %22)
  %23 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %23, i32 0, i32 1
  %24 = load i32, i32* %keyword, align 4
  %cmp22 = icmp eq i32 %24, 60
  br i1 %cmp22, label %if.then25, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end21
  %25 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword23 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %25, i32 0, i32 1
  %26 = load i32, i32* %keyword23, align 4
  %cmp24 = icmp eq i32 %26, 70
  br i1 %cmp24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %lor.lhs.false, %if.end21
  %27 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @skipToNextStatement(%struct.sTokenInfo* %27)
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %lor.lhs.false
  br label %while.cond

while.cond:                                       ; preds = %if.end33, %if.end26
  %28 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword27 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %28, i32 0, i32 1
  %29 = load i32, i32* %keyword27, align 4
  %cmp28 = icmp eq i32 %29, 24
  br i1 %cmp28, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %30 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type29 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %30, i32 0, i32 0
  %31 = load i32, i32* %type29, align 8
  %cmp30 = icmp eq i32 %31, 1
  %lnot = xor i1 %cmp30, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %32 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %32, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %33 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call31 = call zeroext i1 @isTypeSpec(%struct.sTokenInfo* %33)
  br i1 %call31, label %if.then32, label %if.else

if.then32:                                        ; preds = %while.body
  %34 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @parseComponentDefStmt(%struct.sTokenInfo* %34)
  br label %if.end33

if.else:                                          ; preds = %while.body
  %35 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @skipToNextStatement(%struct.sTokenInfo* %35)
  br label %if.end33

if.end33:                                         ; preds = %if.else, %if.then32
  br label %while.cond

while.end:                                        ; preds = %land.end
  %36 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readSubToken(%struct.sTokenInfo* %36)
  %37 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @skipToToken(%struct.sTokenInfo* %37, i32 14)
  call void @ancestorPop()
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct.sTokenInfo* @parseQualifierSpecList(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %qualifierToken = alloca %struct.sTokenInfo*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  %call = call %struct.sTokenInfo* @newToken()
  store %struct.sTokenInfo* %call, %struct.sTokenInfo** %qualifierToken, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %0)
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %1, i32 0, i32 1
  %2 = load i32, i32* %keyword, align 4
  switch i32 %2, label %sw.default [
    i32 53, label %sw.bb
    i32 1, label %sw.bb
    i32 30, label %sw.bb
    i32 44, label %sw.bb
    i32 52, label %sw.bb
    i32 60, label %sw.bb
    i32 58, label %sw.bb
    i32 63, label %sw.bb
    i32 68, label %sw.bb
    i32 76, label %sw.bb
    i32 50, label %sw.bb
    i32 18, label %sw.bb1
    i32 42, label %sw.bb1
    i32 5, label %sw.bb1
    i32 29, label %sw.bb2
    i32 55, label %sw.bb3
    i32 0, label %sw.bb4
    i32 17, label %sw.bb5
    i32 49, label %sw.bb6
    i32 12, label %sw.bb7
  ]

sw.bb:                                            ; preds = %do.body, %do.body, %do.body, %do.body, %do.body, %do.body, %do.body, %do.body, %do.body, %do.body, %do.body
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %3)
  br label %sw.epilog

sw.bb1:                                           ; preds = %do.body, %do.body, %do.body
  %4 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %4)
  %5 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @skipOverParens(%struct.sTokenInfo* %5)
  br label %sw.epilog

sw.bb2:                                           ; preds = %do.body
  %6 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %6)
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %8 = load %struct.sTokenInfo*, %struct.sTokenInfo** %qualifierToken, align 8
  call void @parseExtendsQualifier(%struct.sTokenInfo* %7, %struct.sTokenInfo* %8)
  br label %sw.epilog

sw.bb3:                                           ; preds = %do.body
  %9 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %9)
  %10 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %10, i32 0, i32 0
  %11 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %11, 10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb3
  %12 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @skipOverParens(%struct.sTokenInfo* %12)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb3
  br label %sw.epilog

sw.bb4:                                           ; preds = %do.body
  %13 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %14 = load %struct.sTokenInfo*, %struct.sTokenInfo** %qualifierToken, align 8
  call void @parseAbstractQualifier(%struct.sTokenInfo* %13, %struct.sTokenInfo* %14)
  br label %sw.epilog

sw.bb5:                                           ; preds = %do.body
  %15 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %16 = load %struct.sTokenInfo*, %struct.sTokenInfo** %qualifierToken, align 8
  call void @parseDeferredQualifier(%struct.sTokenInfo* %15, %struct.sTokenInfo* %16)
  br label %sw.epilog

sw.bb6:                                           ; preds = %do.body
  %17 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %18 = load %struct.sTokenInfo*, %struct.sTokenInfo** %qualifierToken, align 8
  call void @parseNonOverridableQualifier(%struct.sTokenInfo* %17, %struct.sTokenInfo* %18)
  br label %sw.epilog

sw.bb7:                                           ; preds = %do.body
  %19 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %19)
  %20 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @skipOverSqaures(%struct.sTokenInfo* %20)
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  %21 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @skipToToken(%struct.sTokenInfo* %21, i32 14)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %if.end, %sw.bb2, %sw.bb1, %sw.bb
  br label %do.cond

do.cond:                                          ; preds = %sw.epilog
  %22 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type8 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %22, i32 0, i32 0
  %23 = load i32, i32* %type8, align 8
  %cmp9 = icmp eq i32 %23, 2
  br i1 %cmp9, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %24 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type10 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %24, i32 0, i32 0
  %25 = load i32, i32* %type10, align 8
  %cmp11 = icmp eq i32 %25, 3
  br i1 %cmp11, label %if.end13, label %if.then12

if.then12:                                        ; preds = %do.end
  %26 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @skipToToken(%struct.sTokenInfo* %26, i32 14)
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %do.end
  %27 = load %struct.sTokenInfo*, %struct.sTokenInfo** %qualifierToken, align 8
  ret %struct.sTokenInfo* %27
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseComponentDefStmt(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %st = alloca %struct.sTokenInfo*, align 8
  %qt = alloca %struct.sTokenInfo*, align 8
  %isGeneric = alloca i8, align 1
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  %call = call %struct.sTokenInfo* @newToken()
  store %struct.sTokenInfo* %call, %struct.sTokenInfo** %st, align 8
  store %struct.sTokenInfo* null, %struct.sTokenInfo** %qt, align 8
  store i8 0, i8* %isGeneric, align 1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 1
  %1 = load i32, i32* %keyword, align 4
  %cmp = icmp eq i32 %1, 61
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %2 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword1 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %2, i32 0, i32 1
  %3 = load i32, i32* %keyword1, align 4
  %cmp2 = icmp eq i32 %3, 31
  br i1 %cmp2, label %if.then, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %4 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword4 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %4, i32 0, i32 1
  %5 = load i32, i32* %keyword4, align 4
  %cmp5 = icmp eq i32 %5, 35
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %do.end
  %6 = load %struct.sTokenInfo*, %struct.sTokenInfo** %st, align 8
  %isMethod = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %6, i32 0, i32 7
  store i8 1, i8* %isMethod, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false3
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword6 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %7, i32 0, i32 1
  %8 = load i32, i32* %keyword6, align 4
  %cmp7 = icmp eq i32 %8, 35
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  store i8 1, i8* %isGeneric, align 1
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end
  %9 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @parseTypeSpec(%struct.sTokenInfo* %9)
  %10 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %10, i32 0, i32 0
  %11 = load i32, i32* %type, align 8
  %cmp10 = icmp eq i32 %11, 2
  br i1 %cmp10, label %if.then11, label %if.end18

if.then11:                                        ; preds = %if.end9
  %12 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call12 = call %struct.sTokenInfo* @parseQualifierSpecList(%struct.sTokenInfo* %12)
  store %struct.sTokenInfo* %call12, %struct.sTokenInfo** %qt, align 8
  %13 = load %struct.sTokenInfo*, %struct.sTokenInfo** %qt, align 8
  %implementation = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %13, i32 0, i32 6
  %14 = load i32, i32* %implementation, align 8
  %cmp13 = icmp ne i32 %14, 0
  br i1 %cmp13, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.then11
  %15 = load %struct.sTokenInfo*, %struct.sTokenInfo** %qt, align 8
  %implementation15 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %15, i32 0, i32 6
  %16 = load i32, i32* %implementation15, align 8
  %17 = load %struct.sTokenInfo*, %struct.sTokenInfo** %st, align 8
  %implementation16 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %17, i32 0, i32 6
  store i32 %16, i32* %implementation16, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.then11
  %18 = load %struct.sTokenInfo*, %struct.sTokenInfo** %qt, align 8
  call void @deleteToken(%struct.sTokenInfo* %18)
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.end9
  %19 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type19 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %19, i32 0, i32 0
  %20 = load i32, i32* %type19, align 8
  %cmp20 = icmp eq i32 %20, 3
  br i1 %cmp20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end18
  %21 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %21)
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end18
  %22 = load i8, i8* %isGeneric, align 1
  %tobool = trunc i8 %22 to i1
  br i1 %tobool, label %if.then23, label %if.else

if.then23:                                        ; preds = %if.end22
  %23 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @parseGenericMethod(%struct.sTokenInfo* %23)
  br label %if.end24

if.else:                                          ; preds = %if.end22
  %24 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %25 = load %struct.sTokenInfo*, %struct.sTokenInfo** %st, align 8
  call void @parseEntityDeclList(%struct.sTokenInfo* %24, %struct.sTokenInfo* %25)
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then23
  %26 = load %struct.sTokenInfo*, %struct.sTokenInfo** %st, align 8
  call void @deleteToken(%struct.sTokenInfo* %26)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseExtendsQualifier(%struct.sTokenInfo* %token, %struct.sTokenInfo* %qualifierToken) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %qualifierToken.addr = alloca %struct.sTokenInfo*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  store %struct.sTokenInfo* %qualifierToken, %struct.sTokenInfo** %qualifierToken.addr, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %qualifierToken.addr, align 8
  %2 = bitcast %struct.sTokenInfo* %1 to i8*
  call void @skipOverParensFull(%struct.sTokenInfo* %0, void (%struct.sTokenInfo*, i8*)* @makeParentType, i8* %2)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseAbstractQualifier(%struct.sTokenInfo* %token, %struct.sTokenInfo* %qualifierToken) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %qualifierToken.addr = alloca %struct.sTokenInfo*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  store %struct.sTokenInfo* %qualifierToken, %struct.sTokenInfo** %qualifierToken.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %qualifierToken.addr, align 8
  %implementation = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 6
  store i32 1, i32* %implementation, align 8
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %1)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseDeferredQualifier(%struct.sTokenInfo* %token, %struct.sTokenInfo* %qualifierToken) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %qualifierToken.addr = alloca %struct.sTokenInfo*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  store %struct.sTokenInfo* %qualifierToken, %struct.sTokenInfo** %qualifierToken.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %qualifierToken.addr, align 8
  %implementation = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 6
  store i32 2, i32* %implementation, align 8
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %1)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseNonOverridableQualifier(%struct.sTokenInfo* %token, %struct.sTokenInfo* %qualifierToken) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %qualifierToken.addr = alloca %struct.sTokenInfo*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  store %struct.sTokenInfo* %qualifierToken, %struct.sTokenInfo** %qualifierToken.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %qualifierToken.addr, align 8
  %implementation = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 6
  store i32 3, i32* %implementation, align 8
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %1)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @skipOverSqaures(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @skipOverSquaresFull(%struct.sTokenInfo* %0, void (%struct.sTokenInfo*, i8*)* null, i8* null)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @makeParentType(%struct.sTokenInfo* %token, i8* %userData) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %userData.addr = alloca i8*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  store i8* %userData, i8** %userData.addr, align 8
  %0 = load i8*, i8** %userData.addr, align 8
  %1 = bitcast i8* %0 to %struct.sTokenInfo*
  %2 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %2, i32 0, i32 3
  %3 = load %struct.sVString*, %struct.sVString** %string, align 8
  %call = call %struct.sVString* @vStringNewCopy(%struct.sVString* %3)
  call void @attachParentType(%struct.sTokenInfo* %1, %struct.sVString* %call)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @attachParentType(%struct.sTokenInfo* %token, %struct.sVString* %parentType) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %parentType.addr = alloca %struct.sVString*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  store %struct.sVString* %parentType, %struct.sVString** %parentType.addr, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %parentType1 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 4
  %1 = load %struct.sVString*, %struct.sVString** %parentType1, align 8
  %tobool = icmp ne %struct.sVString* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %parentType2 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %2, i32 0, i32 4
  %3 = load %struct.sVString*, %struct.sVString** %parentType2, align 8
  call void @vStringDelete(%struct.sVString* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.sVString*, %struct.sVString** %parentType.addr, align 8
  %5 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %parentType3 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %5, i32 0, i32 4
  store %struct.sVString* %4, %struct.sVString** %parentType3, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @skipOverSquaresFull(%struct.sTokenInfo* %token, void (%struct.sTokenInfo*, i8*)* %token_cb, i8* %user_data) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %token_cb.addr = alloca void (%struct.sTokenInfo*, i8*)*, align 8
  %user_data.addr = alloca i8*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  store void (%struct.sTokenInfo*, i8*)* %token_cb, void (%struct.sTokenInfo*, i8*)** %token_cb.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %1 = load void (%struct.sTokenInfo*, i8*)*, void (%struct.sTokenInfo*, i8*)** %token_cb.addr, align 8
  %2 = load i8*, i8** %user_data.addr, align 8
  call void @skipOverPairsFull(%struct.sTokenInfo* %0, i32 11, i32 12, void (%struct.sTokenInfo*, i8*)* %1, i8* %2)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseGenericMethod(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 1
  %1 = load i32, i32* %keyword, align 4
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword1 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %2, i32 0, i32 1
  %3 = load i32, i32* %keyword1, align 4
  %cmp2 = icmp eq i32 %3, 51
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %4)
  %5 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %5, i32 0, i32 0
  %6 = load i32, i32* %type, align 8
  %cmp3 = icmp eq i32 %6, 10
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %7)
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then
  %8 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type5 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %8, i32 0, i32 0
  %9 = load i32, i32* %type5, align 8
  %cmp6 = icmp eq i32 %9, 8
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  %10 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @makeFortranTag(%struct.sTokenInfo* %10, i32 10)
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end
  br label %if.end14

if.else:                                          ; preds = %lor.lhs.false
  %11 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type9 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %11, i32 0, i32 0
  %12 = load i32, i32* %type9, align 8
  %cmp10 = icmp eq i32 %12, 5
  br i1 %cmp10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.else
  %13 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type12 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %13, i32 0, i32 0
  store i32 4, i32* %type12, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.else
  %14 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @makeFortranTag(%struct.sTokenInfo* %14, i32 10)
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.end8
  %15 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @skipToNextStatement(%struct.sTokenInfo* %15)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseEntityDeclList(%struct.sTokenInfo* %token, %struct.sTokenInfo* %st) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %st.addr = alloca %struct.sTokenInfo*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  store %struct.sTokenInfo* %st, %struct.sTokenInfo** %st.addr, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 0
  %1 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %1, 13
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @skipToNextStatement(%struct.sTokenInfo* %2)
  br label %if.end21

if.else:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end20, %if.else
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type1 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %3, i32 0, i32 0
  %4 = load i32, i32* %type1, align 8
  %cmp2 = icmp eq i32 %4, 4
  br i1 %cmp2, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %5 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type3 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %5, i32 0, i32 0
  %6 = load i32, i32* %type3, align 8
  %cmp4 = icmp eq i32 %6, 5
  br i1 %cmp4, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %lor.rhs
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %7, i32 0, i32 1
  %8 = load i32, i32* %keyword, align 4
  %cmp5 = icmp eq i32 %8, 34
  br i1 %cmp5, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true
  %9 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword6 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %9, i32 0, i32 1
  %10 = load i32, i32* %keyword6, align 4
  %cmp7 = icmp eq i32 %10, 75
  %lnot = xor i1 %cmp7, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %lor.rhs
  %11 = phi i1 [ false, %land.lhs.true ], [ false, %lor.rhs ], [ %lnot, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %while.cond
  %12 = phi i1 [ true, %while.cond ], [ %11, %land.end ]
  br i1 %12, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %13 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type8 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %13, i32 0, i32 0
  %14 = load i32, i32* %type8, align 8
  %cmp9 = icmp eq i32 %14, 5
  br i1 %cmp9, label %if.then10, label %if.end

if.then10:                                        ; preds = %while.body
  %15 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type11 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %15, i32 0, i32 0
  store i32 4, i32* %type11, align 8
  br label %if.end

if.end:                                           ; preds = %if.then10, %while.body
  %16 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %17 = load %struct.sTokenInfo*, %struct.sTokenInfo** %st.addr, align 8
  call void @parseEntityDecl(%struct.sTokenInfo* %16, %struct.sTokenInfo* %17)
  %18 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type12 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %18, i32 0, i32 0
  %19 = load i32, i32* %type12, align 8
  %cmp13 = icmp eq i32 %19, 2
  br i1 %cmp13, label %if.then14, label %if.else15

if.then14:                                        ; preds = %if.end
  %20 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %20)
  br label %if.end20

if.else15:                                        ; preds = %if.end
  %21 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type16 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %21, i32 0, i32 0
  %22 = load i32, i32* %type16, align 8
  %cmp17 = icmp eq i32 %22, 14
  br i1 %cmp17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.else15
  %23 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @skipToNextStatement(%struct.sTokenInfo* %23)
  br label %while.end

if.end19:                                         ; preds = %if.else15
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.then14
  br label %while.cond

while.end:                                        ; preds = %if.then18, %lor.end
  br label %if.end21

if.end21:                                         ; preds = %while.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseEntityDecl(%struct.sTokenInfo* %token, %struct.sTokenInfo* %st) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %st.addr = alloca %struct.sTokenInfo*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  store %struct.sTokenInfo* %st, %struct.sTokenInfo** %st.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %st.addr, align 8
  %tobool = icmp ne %struct.sTokenInfo* %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.end
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %st.addr, align 8
  %implementation = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %1, i32 0, i32 6
  %2 = load i32, i32* %implementation, align 8
  %cmp = icmp ne i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %st.addr, align 8
  %implementation1 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %3, i32 0, i32 6
  %4 = load i32, i32* %implementation1, align 8
  %5 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %implementation2 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %5, i32 0, i32 6
  store i32 %4, i32* %implementation2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %do.end
  %6 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %st.addr, align 8
  %call = call i32 @variableTagType(%struct.sTokenInfo* %7)
  call void @makeFortranTag(%struct.sTokenInfo* %6, i32 %call)
  %8 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %8)
  %9 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %9, i32 0, i32 0
  %10 = load i32, i32* %type, align 8
  %cmp3 = icmp eq i32 %10, 10
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  %11 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @skipOverParens(%struct.sTokenInfo* %11)
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end
  %12 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type6 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %12, i32 0, i32 0
  %13 = load i32, i32* %type6, align 8
  %cmp7 = icmp eq i32 %13, 11
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end5
  %14 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @skipOverSqaures(%struct.sTokenInfo* %14)
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end5
  %15 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type10 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %15, i32 0, i32 0
  %16 = load i32, i32* %type10, align 8
  %cmp11 = icmp eq i32 %16, 8
  br i1 %cmp11, label %land.lhs.true12, label %if.end20

land.lhs.true12:                                  ; preds = %if.end9
  %17 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %17, i32 0, i32 3
  %18 = load %struct.sVString*, %struct.sVString** %string, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %18, i32 0, i32 2
  %19 = load i8*, i8** %buffer, align 8
  %call13 = call i32 @strcmp(i8* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0))
  %cmp14 = icmp eq i32 %call13, 0
  br i1 %cmp14, label %if.then15, label %if.end20

if.then15:                                        ; preds = %land.lhs.true12
  %20 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %20)
  %21 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type16 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %21, i32 0, i32 0
  %22 = load i32, i32* %type16, align 8
  %cmp17 = icmp eq i32 %22, 10
  br i1 %cmp17, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.then15
  %23 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @skipOverParens(%struct.sTokenInfo* %23)
  br label %if.end19

if.else:                                          ; preds = %if.then15
  %24 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %24)
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then18
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %land.lhs.true12, %if.end9
  %25 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type21 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %25, i32 0, i32 0
  %26 = load i32, i32* %type21, align 8
  %cmp22 = icmp eq i32 %26, 8
  br i1 %cmp22, label %if.then23, label %if.end56

if.then23:                                        ; preds = %if.end20
  %27 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string24 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %27, i32 0, i32 3
  %28 = load %struct.sVString*, %struct.sVString** %string24, align 8
  %buffer25 = getelementptr inbounds %struct.sVString, %struct.sVString* %28, i32 0, i32 2
  %29 = load i8*, i8** %buffer25, align 8
  %call26 = call i32 @strcmp(i8* %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i64 0, i64 0))
  %cmp27 = icmp eq i32 %call26, 0
  br i1 %cmp27, label %if.then28, label %if.else29

if.then28:                                        ; preds = %if.then23
  %30 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %30)
  %31 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @skipPast(%struct.sTokenInfo* %31, i32 8)
  br label %if.end55

if.else29:                                        ; preds = %if.then23
  %32 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string30 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %32, i32 0, i32 3
  %33 = load %struct.sVString*, %struct.sVString** %string30, align 8
  %buffer31 = getelementptr inbounds %struct.sVString, %struct.sVString* %33, i32 0, i32 2
  %34 = load i8*, i8** %buffer31, align 8
  %call32 = call i32 @strcmp(i8* %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.60, i64 0, i64 0))
  %cmp33 = icmp eq i32 %call32, 0
  br i1 %cmp33, label %if.then38, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else29
  %35 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string34 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %35, i32 0, i32 3
  %36 = load %struct.sVString*, %struct.sVString** %string34, align 8
  %buffer35 = getelementptr inbounds %struct.sVString, %struct.sVString* %36, i32 0, i32 2
  %37 = load i8*, i8** %buffer35, align 8
  %call36 = call i32 @strcmp(i8* %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i64 0, i64 0))
  %cmp37 = icmp eq i32 %call36, 0
  br i1 %cmp37, label %if.then38, label %if.end54

if.then38:                                        ; preds = %lor.lhs.false, %if.else29
  br label %while.cond

while.cond:                                       ; preds = %if.end53, %if.then38
  %38 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type39 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %38, i32 0, i32 0
  %39 = load i32, i32* %type39, align 8
  %cmp40 = icmp eq i32 %39, 2
  br i1 %cmp40, label %land.end, label %land.lhs.true41

land.lhs.true41:                                  ; preds = %while.cond
  %40 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type42 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %40, i32 0, i32 0
  %41 = load i32, i32* %type42, align 8
  %cmp43 = icmp eq i32 %41, 14
  br i1 %cmp43, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true41
  %42 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type44 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %42, i32 0, i32 0
  %43 = load i32, i32* %type44, align 8
  %cmp45 = icmp eq i32 %43, 1
  %lnot = xor i1 %cmp45, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true41, %while.cond
  %44 = phi i1 [ false, %land.lhs.true41 ], [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %44, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %45 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %45)
  %46 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type46 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %46, i32 0, i32 0
  %47 = load i32, i32* %type46, align 8
  %cmp47 = icmp eq i32 %47, 10
  br i1 %cmp47, label %if.then48, label %if.end49

if.then48:                                        ; preds = %while.body
  %48 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @skipOverParens(%struct.sTokenInfo* %48)
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %while.body
  %49 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type50 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %49, i32 0, i32 0
  %50 = load i32, i32* %type50, align 8
  %cmp51 = icmp eq i32 %50, 11
  br i1 %cmp51, label %if.then52, label %if.end53

if.then52:                                        ; preds = %if.end49
  %51 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @skipOverSqaures(%struct.sTokenInfo* %51)
  br label %if.end53

if.end53:                                         ; preds = %if.then52, %if.end49
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %if.end54

if.end54:                                         ; preds = %while.end, %lor.lhs.false
  br label %if.end55

if.end55:                                         ; preds = %if.end54, %if.then28
  br label %if.end56

if.end56:                                         ; preds = %if.end55, %if.end20
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @variableTagType(%struct.sTokenInfo* %st) #0 {
entry:
  %st.addr = alloca %struct.sTokenInfo*, align 8
  %result = alloca i32, align 4
  %parent = alloca %struct.sTokenInfo*, align 8
  store %struct.sTokenInfo* %st, %struct.sTokenInfo** %st.addr, align 8
  store i32 17, i32* %result, align 4
  %0 = load i32, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @Ancestors, i32 0, i32 0), align 8
  %cmp = icmp ugt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end8

if.then:                                          ; preds = %entry
  %call = call %struct.sTokenInfo* @ancestorTop()
  store %struct.sTokenInfo* %call, %struct.sTokenInfo** %parent, align 8
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %parent, align 8
  %tag = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %1, i32 0, i32 2
  %2 = load i32, i32* %tag, align 8
  switch i32 %2, label %sw.default [
    i32 18, label %sw.bb
    i32 9, label %sw.bb
    i32 16, label %sw.bb1
    i32 4, label %sw.bb4
    i32 15, label %sw.bb5
    i32 14, label %sw.bb6
    i32 3, label %sw.bb7
  ]

sw.bb:                                            ; preds = %if.then, %if.then
  store i32 17, i32* %result, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %if.then
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %st.addr, align 8
  %tobool = icmp ne %struct.sTokenInfo* %3, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %sw.bb1
  %4 = load %struct.sTokenInfo*, %struct.sTokenInfo** %st.addr, align 8
  %isMethod = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %4, i32 0, i32 7
  %5 = load i8, i8* %isMethod, align 4
  %tobool2 = trunc i8 %5 to i1
  br i1 %tobool2, label %if.then3, label %if.else

if.then3:                                         ; preds = %land.lhs.true
  store i32 10, i32* %result, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %sw.bb1
  store i32 6, i32* %result, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then3
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.then
  store i32 8, i32* %result, align 4
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.then
  store i32 8, i32* %result, align 4
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.then
  store i32 8, i32* %result, align 4
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.then
  store i32 12, i32* %result, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.then
  store i32 17, i32* %result, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %if.end, %sw.bb
  br label %if.end8

if.end8:                                          ; preds = %sw.epilog, %entry
  %6 = load i32, i32* %result, align 4
  ret i32 %6
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @skipPast(%struct.sTokenInfo* %token, i32 %type) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %type.addr = alloca i32, align 4
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %1 = load i32, i32* %type.addr, align 4
  call void @skipToToken(%struct.sTokenInfo* %0, i32 %1)
  %2 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type1 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %2, i32 0, i32 0
  %3 = load i32, i32* %type1, align 8
  %cmp = icmp eq i32 %3, 14
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %4 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct.sTokenInfo* @ancestorTop() #0 {
entry:
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** getelementptr inbounds (%struct.anon.1, %struct.anon.1* @Ancestors, i32 0, i32 2), align 8
  %1 = load i32, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @Ancestors, i32 0, i32 0), align 8
  %sub = sub i32 %1, 1
  %idxprom = zext i32 %sub to i64
  %arrayidx = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i64 %idxprom
  ret %struct.sTokenInfo* %arrayidx
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @insideInterface() #0 {
entry:
  %result = alloca i8, align 1
  %i = alloca i32, align 4
  store i8 0, i8* %result, align 1
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @Ancestors, i32 0, i32 0), align 8
  %cmp = icmp ult i32 %0, %1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %2 = load i8, i8* %result, align 1
  %tobool = trunc i8 %2 to i1
  %lnot = xor i1 %tobool, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %3 = phi i1 [ false, %for.cond ], [ %lnot, %land.rhs ]
  br i1 %3, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %4 = load %struct.sTokenInfo*, %struct.sTokenInfo** getelementptr inbounds (%struct.anon.1, %struct.anon.1* @Ancestors, i32 0, i32 2), align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = zext i32 %5 to i64
  %arrayidx = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %4, i64 %idxprom
  %tag = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %arrayidx, i32 0, i32 2
  %6 = load i32, i32* %tag, align 8
  %cmp1 = icmp eq i32 %6, 5
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i8 1, i8* %result, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i32, i32* %i, align 4
  %inc = add i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %8 = load i8, i8* %result, align 1
  %tobool2 = trunc i8 %8 to i1
  ret i1 %tobool2
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct.sVString* @parserParentIdentifierOfSubmoduleStatement(%struct.sTokenInfo* %token) #0 {
entry:
  %retval = alloca %struct.sVString*, align 8
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %parentId = alloca %struct.sVString*, align 8
  %vStringClear_s = alloca %struct.sVString*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 0
  %1 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %1, 10
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.sVString* null, %struct.sVString** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %call = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call, %struct.sVString** %parentId, align 8
  br label %while.body

while.body:                                       ; preds = %if.end, %if.end13
  %2 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %2)
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type1 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %3, i32 0, i32 0
  %4 = load i32, i32* %type1, align 8
  %cmp2 = icmp eq i32 %4, 4
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %while.body
  %5 = load %struct.sVString*, %struct.sVString** %parentId, align 8
  %6 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %6, i32 0, i32 3
  %7 = load %struct.sVString*, %struct.sVString** %string, align 8
  call void @vStringCat(%struct.sVString* %5, %struct.sVString* %7)
  br label %if.end13

if.else:                                          ; preds = %while.body
  %8 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type4 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %8, i32 0, i32 0
  %9 = load i32, i32* %type4, align 8
  %cmp5 = icmp eq i32 %9, 16
  br i1 %cmp5, label %if.then6, label %if.else7

if.then6:                                         ; preds = %if.else
  %10 = load %struct.sVString*, %struct.sVString** %parentId, align 8
  call void @vStringPut(%struct.sVString* %10, i32 58)
  br label %if.end12

if.else7:                                         ; preds = %if.else
  %11 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type8 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %11, i32 0, i32 0
  %12 = load i32, i32* %type8, align 8
  %cmp9 = icmp eq i32 %12, 9
  br i1 %cmp9, label %if.then10, label %if.else11

if.then10:                                        ; preds = %if.else7
  br label %while.end

if.else11:                                        ; preds = %if.else7
  br label %do.body

do.body:                                          ; preds = %if.else11
  %13 = load %struct.sVString*, %struct.sVString** %parentId, align 8
  store %struct.sVString* %13, %struct.sVString** %vStringClear_s, align 8
  %14 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %14, i32 0, i32 0
  store i64 0, i64* %length, align 8
  %15 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %15, i32 0, i32 2
  %16 = load i8*, i8** %buffer, align 8
  %arrayidx = getelementptr inbounds i8, i8* %16, i64 0
  store i8 0, i8* %arrayidx, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %while.end

if.end12:                                         ; preds = %if.then6
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.then3
  br label %while.body

while.end:                                        ; preds = %do.end, %if.then10
  %17 = load %struct.sVString*, %struct.sVString** %parentId, align 8
  %length14 = getelementptr inbounds %struct.sVString, %struct.sVString* %17, i32 0, i32 0
  %18 = load i64, i64* %length14, align 8
  %cmp15 = icmp eq i64 %18, 0
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %while.end
  %19 = load %struct.sVString*, %struct.sVString** %parentId, align 8
  call void @vStringDelete(%struct.sVString* %19)
  store %struct.sVString* null, %struct.sVString** %parentId, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %while.end
  %20 = load %struct.sVString*, %struct.sVString** %parentId, align 8
  store %struct.sVString* %20, %struct.sVString** %retval, align 8
  br label %return

return:                                           ; preds = %if.end17, %if.then
  %21 = load %struct.sVString*, %struct.sVString** %retval, align 8
  ret %struct.sVString* %21
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @skipStatementIfKeyword(%struct.sTokenInfo* %token, i32 %keyword) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %keyword.addr = alloca i32, align 4
  %result = alloca i8, align 1
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  store i32 %keyword, i32* %keyword.addr, align 4
  store i8 0, i8* %result, align 1
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword1 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 1
  %1 = load i32, i32* %keyword1, align 4
  %2 = load i32, i32* %keyword.addr, align 4
  %cmp = icmp eq i32 %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8 1, i8* %result, align 1
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @skipToNextStatement(%struct.sTokenInfo* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i8, i8* %result, align 1
  %tobool = trunc i8 %4 to i1
  ret i1 %tobool
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @parseImplicitPartStmt(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %result = alloca i8, align 1
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  store i8 1, i8* %result, align 1
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 1
  %1 = load i32, i32* %keyword, align 4
  switch i32 %1, label %sw.default [
    i32 25, label %sw.bb
    i32 37, label %sw.bb1
    i32 39, label %sw.bb1
    i32 53, label %sw.bb1
    i32 33, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @parseEntryStmt(%struct.sTokenInfo* %2)
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry, %entry, %entry, %entry
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @skipToNextStatement(%struct.sTokenInfo* %3)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store i8 0, i8* %result, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb1, %sw.bb
  %4 = load i8, i8* %result, align 1
  %tobool = trunc i8 %4 to i1
  ret i1 %tobool
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @parseDeclarationConstruct(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %result = alloca i8, align 1
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  store i8 1, i8* %result, align 1
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 1
  %1 = load i32, i32* %keyword, align 4
  switch i32 %1, label %sw.default [
    i32 25, label %sw.bb
    i32 43, label %sw.bb1
    i32 26, label %sw.bb2
    i32 72, label %sw.bb3
    i32 0, label %sw.bb4
    i32 4, label %sw.bb6
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @parseEntryStmt(%struct.sTokenInfo* %2)
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @parseInterfaceBlock(%struct.sTokenInfo* %3)
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %4 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @parseEnumBlock(%struct.sTokenInfo* %4)
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %5 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %5)
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %6 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %6)
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword5 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %7, i32 0, i32 1
  %8 = load i32, i32* %keyword5, align 4
  %cmp = icmp eq i32 %8, 43
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb4
  %9 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @parseInterfaceBlock(%struct.sTokenInfo* %9)
  br label %if.end

if.else:                                          ; preds = %sw.bb4
  %10 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @skipToNextStatement(%struct.sTokenInfo* %10)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i8 1, i8* %result, align 1
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  %11 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %11)
  %12 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call = call zeroext i1 @isTypeSpec(%struct.sTokenInfo* %12)
  br i1 %call, label %if.then7, label %if.else8

if.then7:                                         ; preds = %sw.bb6
  %13 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @parseTypeDeclarationStmt(%struct.sTokenInfo* %13)
  br label %if.end9

if.else8:                                         ; preds = %sw.bb6
  %14 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @skipToNextStatement(%struct.sTokenInfo* %14)
  br label %if.end9

if.end9:                                          ; preds = %if.else8, %if.then7
  store i8 1, i8* %result, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %15 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call10 = call zeroext i1 @isIgnoredDeclaration(%struct.sTokenInfo* %15)
  br i1 %call10, label %if.then11, label %if.else12

if.then11:                                        ; preds = %sw.default
  %16 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @skipToNextStatement(%struct.sTokenInfo* %16)
  br label %if.end24

if.else12:                                        ; preds = %sw.default
  %17 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call13 = call zeroext i1 @isTypeSpec(%struct.sTokenInfo* %17)
  br i1 %call13, label %if.then14, label %if.else15

if.then14:                                        ; preds = %if.else12
  %18 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @parseTypeDeclarationStmt(%struct.sTokenInfo* %18)
  store i8 1, i8* %result, align 1
  br label %if.end23

if.else15:                                        ; preds = %if.else12
  %19 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %19, i32 0, i32 0
  %20 = load i32, i32* %type, align 8
  %cmp16 = icmp eq i32 %20, 4
  br i1 %cmp16, label %if.then17, label %if.else19

if.then17:                                        ; preds = %if.else15
  %21 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call18 = call zeroext i1 @parseStmtFunctionStmt(%struct.sTokenInfo* %21)
  %frombool = zext i1 %call18 to i8
  store i8 %frombool, i8* %result, align 1
  br label %if.end22

if.else19:                                        ; preds = %if.else15
  %22 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call20 = call zeroext i1 @parseSpecificationStmt(%struct.sTokenInfo* %22)
  %frombool21 = zext i1 %call20 to i8
  store i8 %frombool21, i8* %result, align 1
  br label %if.end22

if.end22:                                         ; preds = %if.else19, %if.then17
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %if.then14
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.then11
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end24, %if.end9, %if.end, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %23 = load i8, i8* %result, align 1
  %tobool = trunc i8 %23 to i1
  ret i1 %tobool
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseEntryStmt(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %0)
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %1, i32 0, i32 0
  %2 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %2, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @makeFortranTag(%struct.sTokenInfo* %3, i32 2)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end
  %4 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @skipToNextStatement(%struct.sTokenInfo* %4)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseInterfaceBlock(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %name = alloca %struct.sTokenInfo*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  store %struct.sTokenInfo* null, %struct.sTokenInfo** %name, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %0)
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %1, i32 0, i32 0
  %2 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %2, 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.end
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @makeFortranTag(%struct.sTokenInfo* %3, i32 5)
  %4 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call = call %struct.sTokenInfo* @newTokenFrom(%struct.sTokenInfo* %4)
  store %struct.sTokenInfo* %call, %struct.sTokenInfo** %name, align 8
  br label %if.end14

if.else:                                          ; preds = %do.end
  %5 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %5, i32 0, i32 1
  %6 = load i32, i32* %keyword, align 4
  %cmp1 = icmp eq i32 %6, 2
  br i1 %cmp1, label %if.then4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword2 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %7, i32 0, i32 1
  %8 = load i32, i32* %keyword2, align 4
  %cmp3 = icmp eq i32 %8, 51
  br i1 %cmp3, label %if.then4, label %if.end13

if.then4:                                         ; preds = %lor.lhs.false, %if.else
  %9 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %9)
  %10 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type5 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %10, i32 0, i32 0
  %11 = load i32, i32* %type5, align 8
  %cmp6 = icmp eq i32 %11, 10
  br i1 %cmp6, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.then4
  %12 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %12)
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then4
  %13 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type8 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %13, i32 0, i32 0
  %14 = load i32, i32* %type8, align 8
  %cmp9 = icmp eq i32 %14, 8
  br i1 %cmp9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end
  %15 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @makeFortranTag(%struct.sTokenInfo* %15, i32 5)
  %16 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call11 = call %struct.sTokenInfo* @newTokenFrom(%struct.sTokenInfo* %16)
  store %struct.sTokenInfo* %call11, %struct.sTokenInfo** %name, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %lor.lhs.false
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.then
  %17 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  %cmp15 = icmp eq %struct.sTokenInfo* %17, null
  br i1 %cmp15, label %if.then16, label %if.end19

if.then16:                                        ; preds = %if.end14
  %call17 = call %struct.sTokenInfo* @newToken()
  store %struct.sTokenInfo* %call17, %struct.sTokenInfo** %name, align 8
  %18 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  %type18 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %18, i32 0, i32 0
  store i32 4, i32* %type18, align 8
  %19 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  %tag = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %19, i32 0, i32 2
  store i32 5, i32* %tag, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.end14
  %20 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  call void @ancestorPush(%struct.sTokenInfo* %20)
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %if.end19
  %21 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword20 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %21, i32 0, i32 1
  %22 = load i32, i32* %keyword20, align 4
  %cmp21 = icmp eq i32 %22, 24
  br i1 %cmp21, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %23 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type22 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %23, i32 0, i32 0
  %24 = load i32, i32* %type22, align 8
  %cmp23 = icmp eq i32 %24, 1
  %lnot = xor i1 %cmp23, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %25 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %25, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %26 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword24 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %26, i32 0, i32 1
  %27 = load i32, i32* %keyword24, align 4
  switch i32 %27, label %sw.default [
    i32 34, label %sw.bb
    i32 75, label %sw.bb
  ]

sw.bb:                                            ; preds = %while.body, %while.body
  %28 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @parseSubprogram(%struct.sTokenInfo* %28)
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  %29 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call25 = call zeroext i1 @isSubprogramPrefix(%struct.sTokenInfo* %29)
  br i1 %call25, label %if.then26, label %if.else27

if.then26:                                        ; preds = %sw.default
  %30 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %30)
  br label %if.end32

if.else27:                                        ; preds = %sw.default
  %31 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call28 = call zeroext i1 @isTypeSpec(%struct.sTokenInfo* %31)
  br i1 %call28, label %if.then29, label %if.else30

if.then29:                                        ; preds = %if.else27
  %32 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @parseTypeSpec(%struct.sTokenInfo* %32)
  br label %if.end31

if.else30:                                        ; preds = %if.else27
  %33 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @skipToNextStatement(%struct.sTokenInfo* %33)
  br label %if.end31

if.end31:                                         ; preds = %if.else30, %if.then29
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %if.then26
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end32, %sw.bb
  br label %while.cond

while.end:                                        ; preds = %land.end
  %34 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readSubToken(%struct.sTokenInfo* %34)
  %35 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @skipToNextStatement(%struct.sTokenInfo* %35)
  call void @ancestorPop()
  %36 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  call void @deleteToken(%struct.sTokenInfo* %36)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseEnumBlock(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %name = alloca %struct.sTokenInfo*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  store %struct.sTokenInfo* null, %struct.sTokenInfo** %name, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %0)
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %1, i32 0, i32 0
  %2 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %2, 2
  br i1 %cmp, label %if.then, label %if.end8

if.then:                                          ; preds = %do.end
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %3)
  %4 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type1 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %4, i32 0, i32 0
  %5 = load i32, i32* %type1, align 8
  %cmp2 = icmp eq i32 %5, 5
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  %6 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %6)
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type4 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %7, i32 0, i32 0
  %8 = load i32, i32* %type4, align 8
  %cmp5 = icmp eq i32 %8, 10
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  %9 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @skipOverParens(%struct.sTokenInfo* %9)
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end
  br label %if.end8

if.end8:                                          ; preds = %if.end7, %do.end
  %10 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @parseKindSelector(%struct.sTokenInfo* %10)
  %11 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type9 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %11, i32 0, i32 0
  %12 = load i32, i32* %type9, align 8
  %cmp10 = icmp eq i32 %12, 3
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end8
  %13 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %13)
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end8
  %14 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type13 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %14, i32 0, i32 0
  %15 = load i32, i32* %type13, align 8
  %cmp14 = icmp eq i32 %15, 4
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end12
  %16 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call = call %struct.sTokenInfo* @newTokenFrom(%struct.sTokenInfo* %16)
  store %struct.sTokenInfo* %call, %struct.sTokenInfo** %name, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end12
  %17 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  %cmp17 = icmp eq %struct.sTokenInfo* %17, null
  br i1 %cmp17, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.end16
  %call19 = call %struct.sTokenInfo* @newToken()
  store %struct.sTokenInfo* %call19, %struct.sTokenInfo** %name, align 8
  %18 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  %type20 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %18, i32 0, i32 0
  store i32 4, i32* %type20, align 8
  %19 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  %tag = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %19, i32 0, i32 2
  store i32 3, i32* %tag, align 8
  br label %if.end21

if.else:                                          ; preds = %if.end16
  %20 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  call void @makeFortranTag(%struct.sTokenInfo* %20, i32 3)
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then18
  %21 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @skipToNextStatement(%struct.sTokenInfo* %21)
  %22 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  call void @ancestorPush(%struct.sTokenInfo* %22)
  br label %while.cond

while.cond:                                       ; preds = %if.end28, %if.end21
  %23 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %23, i32 0, i32 1
  %24 = load i32, i32* %keyword, align 4
  %cmp22 = icmp eq i32 %24, 24
  br i1 %cmp22, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %25 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type23 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %25, i32 0, i32 0
  %26 = load i32, i32* %type23, align 8
  %cmp24 = icmp eq i32 %26, 1
  %lnot = xor i1 %cmp24, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %27 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %27, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %28 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call25 = call zeroext i1 @isTypeSpec(%struct.sTokenInfo* %28)
  br i1 %call25, label %if.then26, label %if.else27

if.then26:                                        ; preds = %while.body
  %29 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @parseTypeDeclarationStmt(%struct.sTokenInfo* %29)
  br label %if.end28

if.else27:                                        ; preds = %while.body
  %30 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @skipToNextStatement(%struct.sTokenInfo* %30)
  br label %if.end28

if.end28:                                         ; preds = %if.else27, %if.then26
  br label %while.cond

while.end:                                        ; preds = %land.end
  %31 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readSubToken(%struct.sTokenInfo* %31)
  %32 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @skipToNextStatement(%struct.sTokenInfo* %32)
  call void @ancestorPop()
  %33 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  call void @deleteToken(%struct.sTokenInfo* %33)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseTypeDeclarationStmt(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %qualifierToken = alloca %struct.sTokenInfo*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @parseTypeSpec(%struct.sTokenInfo* %0)
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %1, i32 0, i32 0
  %2 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %2, 14
  br i1 %cmp, label %if.end8, label %if.then

if.then:                                          ; preds = %do.end
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type1 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %3, i32 0, i32 0
  %4 = load i32, i32* %type1, align 8
  %cmp2 = icmp eq i32 %4, 2
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  %5 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call = call %struct.sTokenInfo* @parseQualifierSpecList(%struct.sTokenInfo* %5)
  store %struct.sTokenInfo* %call, %struct.sTokenInfo** %qualifierToken, align 8
  %6 = load %struct.sTokenInfo*, %struct.sTokenInfo** %qualifierToken, align 8
  call void @deleteToken(%struct.sTokenInfo* %6)
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type4 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %7, i32 0, i32 0
  %8 = load i32, i32* %type4, align 8
  %cmp5 = icmp eq i32 %8, 3
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  %9 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %9)
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end
  %10 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @parseEntityDeclList(%struct.sTokenInfo* %10, %struct.sTokenInfo* null)
  br label %if.end8

if.end8:                                          ; preds = %if.end7, %do.end
  %11 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type9 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %11, i32 0, i32 0
  %12 = load i32, i32* %type9, align 8
  %cmp10 = icmp eq i32 %12, 14
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end8
  %13 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @skipToNextStatement(%struct.sTokenInfo* %13)
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @isIgnoredDeclaration(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %result = alloca i8, align 1
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 1
  %1 = load i32, i32* %keyword, align 4
  switch i32 %1, label %sw.default [
    i32 8, label %sw.bb
    i32 9, label %sw.bb
    i32 19, label %sw.bb
    i32 20, label %sw.bb
    i32 30, label %sw.bb
    i32 33, label %sw.bb
    i32 39, label %sw.bb
    i32 40, label %sw.bb
    i32 53, label %sw.bb
    i32 54, label %sw.bb
    i32 56, label %sw.bb
    i32 57, label %sw.bb
    i32 71, label %sw.bb
    i32 81, label %sw.bb
    i32 82, label %sw.bb
    i32 83, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  store i8 1, i8* %result, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store i8 0, i8* %result, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %2 = load i8, i8* %result, align 1
  %tobool = trunc i8 %2 to i1
  ret i1 %tobool
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @parseStmtFunctionStmt(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %result = alloca i8, align 1
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  store i8 0, i8* %result, align 1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %0)
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %1, i32 0, i32 0
  %2 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %2, 10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @skipOverParens(%struct.sTokenInfo* %3)
  %4 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type1 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %4, i32 0, i32 0
  %5 = load i32, i32* %type1, align 8
  %cmp2 = icmp eq i32 %5, 8
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then
  %6 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %6, i32 0, i32 3
  %7 = load %struct.sVString*, %struct.sVString** %string, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %7, i32 0, i32 2
  %8 = load i8*, i8** %buffer, align 8
  %call = call i32 @strcmp(i8* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.60, i64 0, i64 0))
  %cmp3 = icmp eq i32 %call, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then
  %9 = phi i1 [ false, %if.then ], [ %cmp3, %land.rhs ]
  %frombool = zext i1 %9 to i8
  store i8 %frombool, i8* %result, align 1
  br label %if.end

if.end:                                           ; preds = %land.end, %do.end
  %10 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @skipToNextStatement(%struct.sTokenInfo* %10)
  %11 = load i8, i8* %result, align 1
  %tobool = trunc i8 %11 to i1
  ret i1 %tobool
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @parseSpecificationStmt(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %result = alloca i8, align 1
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  store i8 1, i8* %result, align 1
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 1
  %1 = load i32, i32* %keyword, align 4
  switch i32 %1, label %sw.default [
    i32 13, label %sw.bb
    i32 48, label %sw.bb1
    i32 73, label %sw.bb2
    i32 1, label %sw.bb3
    i32 16, label %sw.bb3
    i32 18, label %sw.bb3
    i32 28, label %sw.bb3
    i32 30, label %sw.bb3
    i32 42, label %sw.bb3
    i32 44, label %sw.bb3
    i32 52, label %sw.bb3
    i32 58, label %sw.bb3
    i32 60, label %sw.bb3
    i32 63, label %sw.bb3
    i32 68, label %sw.bb3
    i32 76, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @parseCommonNamelistStmt(%struct.sTokenInfo* %2, i32 1)
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @parseCommonNamelistStmt(%struct.sTokenInfo* %3, i32 11)
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %4 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @parseStructureStmt(%struct.sTokenInfo* %4)
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  %5 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @skipToNextStatement(%struct.sTokenInfo* %5)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store i8 0, i8* %result, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %6 = load i8, i8* %result, align 1
  %tobool = trunc i8 %6 to i1
  ret i1 %tobool
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseCommonNamelistStmt(%struct.sTokenInfo* %token, i32 %type) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %type.addr = alloca i32, align 4
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %0)
  br label %do.body1

do.body1:                                         ; preds = %land.end, %do.end
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type2 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %1, i32 0, i32 0
  %2 = load i32, i32* %type2, align 8
  %cmp = icmp eq i32 %2, 8
  br i1 %cmp, label %land.lhs.true, label %if.end7

land.lhs.true:                                    ; preds = %do.body1
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %3, i32 0, i32 3
  %4 = load %struct.sVString*, %struct.sVString** %string, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %4, i32 0, i32 2
  %5 = load i8*, i8** %buffer, align 8
  %call = call i32 @strcmp(i8* %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i64 0, i64 0))
  %cmp3 = icmp eq i32 %call, 0
  br i1 %cmp3, label %if.then, label %if.end7

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %6)
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type4 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %7, i32 0, i32 0
  %8 = load i32, i32* %type4, align 8
  %cmp5 = icmp eq i32 %8, 4
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then
  %9 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %10 = load i32, i32* %type.addr, align 4
  call void @makeFortranTag(%struct.sTokenInfo* %9, i32 %10)
  %11 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %11)
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then
  %12 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @skipPast(%struct.sTokenInfo* %12, i32 8)
  br label %if.end7

if.end7:                                          ; preds = %if.end, %land.lhs.true, %do.body1
  %13 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type8 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %13, i32 0, i32 0
  %14 = load i32, i32* %type8, align 8
  %cmp9 = icmp eq i32 %14, 4
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end7
  %15 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @makeFortranTag(%struct.sTokenInfo* %15, i32 8)
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end7
  %16 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %16)
  %17 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type12 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %17, i32 0, i32 0
  %18 = load i32, i32* %type12, align 8
  %cmp13 = icmp eq i32 %18, 10
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end11
  %19 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @skipOverParens(%struct.sTokenInfo* %19)
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end11
  %20 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type16 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %20, i32 0, i32 0
  %21 = load i32, i32* %type16, align 8
  %cmp17 = icmp eq i32 %21, 2
  br i1 %cmp17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end15
  %22 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %22)
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end15
  br label %do.cond

do.cond:                                          ; preds = %if.end19
  %23 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type20 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %23, i32 0, i32 0
  %24 = load i32, i32* %type20, align 8
  %cmp21 = icmp eq i32 %24, 14
  br i1 %cmp21, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %do.cond
  %25 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type22 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %25, i32 0, i32 0
  %26 = load i32, i32* %type22, align 8
  %cmp23 = icmp eq i32 %26, 1
  %lnot = xor i1 %cmp23, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %27 = phi i1 [ false, %do.cond ], [ %lnot, %land.rhs ]
  br i1 %27, label %do.body1, label %do.end24

do.end24:                                         ; preds = %land.end
  %28 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @skipToNextStatement(%struct.sTokenInfo* %28)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseStructureStmt(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %name = alloca %struct.sTokenInfo*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %0)
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %1, i32 0, i32 0
  %2 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %2, 8
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %do.end
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %3, i32 0, i32 3
  %4 = load %struct.sVString*, %struct.sVString** %string, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %4, i32 0, i32 2
  %5 = load i8*, i8** %buffer, align 8
  %call = call i32 @strcmp(i8* %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i64 0, i64 0))
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %6)
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type2 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %7, i32 0, i32 0
  %8 = load i32, i32* %type2, align 8
  %cmp3 = icmp eq i32 %8, 4
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  %9 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @makeFortranTag(%struct.sTokenInfo* %9, i32 16)
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then
  %10 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call5 = call %struct.sTokenInfo* @newTokenFrom(%struct.sTokenInfo* %10)
  store %struct.sTokenInfo* %call5, %struct.sTokenInfo** %name, align 8
  %11 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @skipPast(%struct.sTokenInfo* %11, i32 8)
  br label %if.end9

if.else:                                          ; preds = %land.lhs.true, %do.end
  %call6 = call %struct.sTokenInfo* @newToken()
  store %struct.sTokenInfo* %call6, %struct.sTokenInfo** %name, align 8
  %12 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  %type7 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %12, i32 0, i32 0
  store i32 4, i32* %type7, align 8
  %13 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  %tag = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %13, i32 0, i32 2
  store i32 16, i32* %tag, align 8
  %14 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  %string8 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %14, i32 0, i32 3
  %15 = load %struct.sVString*, %struct.sVString** %string8, align 8
  call void @vStringCopyS(%struct.sVString* %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0))
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.end
  br label %while.cond

while.cond:                                       ; preds = %if.end15, %if.end9
  %16 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type10 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %16, i32 0, i32 0
  %17 = load i32, i32* %type10, align 8
  %cmp11 = icmp eq i32 %17, 4
  br i1 %cmp11, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %18 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @makeFortranTag(%struct.sTokenInfo* %18, i32 6)
  %19 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %19)
  %20 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type12 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %20, i32 0, i32 0
  %21 = load i32, i32* %type12, align 8
  %cmp13 = icmp eq i32 %21, 2
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %while.body
  %22 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %22)
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %23 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @skipToNextStatement(%struct.sTokenInfo* %23)
  %24 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  call void @ancestorPush(%struct.sTokenInfo* %24)
  br label %while.cond16

while.cond16:                                     ; preds = %while.body20, %while.end
  %25 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %25, i32 0, i32 1
  %26 = load i32, i32* %keyword, align 4
  %cmp17 = icmp eq i32 %26, 24
  br i1 %cmp17, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond16
  %27 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type18 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %27, i32 0, i32 0
  %28 = load i32, i32* %type18, align 8
  %cmp19 = icmp eq i32 %28, 1
  %lnot = xor i1 %cmp19, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond16
  %29 = phi i1 [ false, %while.cond16 ], [ %lnot, %land.rhs ]
  br i1 %29, label %while.body20, label %while.end21

while.body20:                                     ; preds = %land.end
  %30 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @parseFieldDefinition(%struct.sTokenInfo* %30)
  br label %while.cond16

while.end21:                                      ; preds = %land.end
  %31 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readSubToken(%struct.sTokenInfo* %31)
  %32 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @skipToNextStatement(%struct.sTokenInfo* %32)
  call void @ancestorPop()
  %33 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  call void @deleteToken(%struct.sTokenInfo* %33)
  ret void
}

declare void @vStringCopyS(%struct.sVString*, i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseFieldDefinition(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call = call zeroext i1 @isTypeSpec(%struct.sTokenInfo* %0)
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @parseTypeDeclarationStmt(%struct.sTokenInfo* %1)
  br label %if.end8

if.else:                                          ; preds = %entry
  %2 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %2, i32 0, i32 1
  %3 = load i32, i32* %keyword, align 4
  %cmp = icmp eq i32 %3, 73
  br i1 %cmp, label %if.then1, label %if.else2

if.then1:                                         ; preds = %if.else
  %4 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @parseStructureStmt(%struct.sTokenInfo* %4)
  br label %if.end7

if.else2:                                         ; preds = %if.else
  %5 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword3 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %5, i32 0, i32 1
  %6 = load i32, i32* %keyword3, align 4
  %cmp4 = icmp eq i32 %6, 79
  br i1 %cmp4, label %if.then5, label %if.else6

if.then5:                                         ; preds = %if.else2
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @parseUnionStmt(%struct.sTokenInfo* %7)
  br label %if.end

if.else6:                                         ; preds = %if.else2
  %8 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @skipToNextStatement(%struct.sTokenInfo* %8)
  br label %if.end

if.end:                                           ; preds = %if.else6, %if.then5
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then1
  br label %if.end8

if.end8:                                          ; preds = %if.end7, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseUnionStmt(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @skipToNextStatement(%struct.sTokenInfo* %0)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.end
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %1, i32 0, i32 1
  %2 = load i32, i32* %keyword, align 4
  %cmp = icmp eq i32 %2, 46
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @parseMap(%struct.sTokenInfo* %3)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %4 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readSubToken(%struct.sTokenInfo* %4)
  %5 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @skipToNextStatement(%struct.sTokenInfo* %5)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseMap(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @skipToNextStatement(%struct.sTokenInfo* %0)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.end
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %1, i32 0, i32 1
  %2 = load i32, i32* %keyword, align 4
  %cmp = icmp eq i32 %2, 24
  br i1 %cmp, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %3, i32 0, i32 0
  %4 = load i32, i32* %type, align 8
  %cmp1 = icmp eq i32 %4, 1
  %lnot = xor i1 %cmp1, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %5 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %5, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %6 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @parseFieldDefinition(%struct.sTokenInfo* %6)
  br label %while.cond

while.end:                                        ; preds = %land.end
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readSubToken(%struct.sTokenInfo* %7)
  %8 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @skipToNextStatement(%struct.sTokenInfo* %8)
  ret void
}

declare void @eFree(i8*) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 10.0.0 (https://github.com/holzschu/clang.git 0cfc630fbdb62e96720b611a57123ef3eb13e297) (https://github.com/holzschu/llvm.git 0d8a71e39b28502c24718f7e74b5acbcfe36dfe0)"}
