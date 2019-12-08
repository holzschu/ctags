; ModuleID = 'sql.c'
source_filename = "sql.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-ios11.0.0"

%struct.sKindDefinition = type { i8, i8, i8*, i8*, i8, i32, %struct.sRoleDesc*, %struct.sScopeSeparator*, i32, i32, i32, %struct.sKindDefinition*, %struct.sKindDefinition* }
%struct.sRoleDesc = type { i8, i8*, i8* }
%struct.sScopeSeparator = type { i32, i8* }
%struct.keywordTable = type { i8*, i32 }
%struct.sParserDefinition = type { i8*, %struct.sKindDefinition*, i32, i8**, i8**, i8**, void (i32)*, void (i32, i1)*, void ()*, i32 (i32)*, i8* (%struct._MIO*, i32*, i32)**, i32, i8, i8, i8, i8, %struct.tagRegexTable*, i32, %struct.keywordTable*, i32, %struct.sTagXpathTableTable*, i32, i8, %struct.sFieldDefinition*, i32, %struct.sXtagDefinition*, i32, %struct.sParserDependency*, i32, %struct.sParameterHandlerTable*, i32, %struct.sXpathFileSpec*, i32, i32, i8 }
%struct._MIO = type opaque
%struct.tagRegexTable = type { i8*, i8*, i8*, i8*, i8*, i8 }
%struct.sTagXpathTableTable = type { %struct.sTagXpathTable*, i32 }
%struct.sTagXpathTable = type { i8*, i32, %union.anon, i8* }
%union.anon = type { %struct.sTagXpathMakeTagSpec }
%struct.sTagXpathMakeTagSpec = type { i32, i32, void (i8*, %struct.sTagXpathMakeTagSpec*, %struct.sTagEntryInfo*, i8*)* }
%struct.sTagEntryInfo = type { i8, i64, i8*, i32, %struct._MIOPos, i32, i8*, i8*, i32, [2 x i8], i8*, %struct.anon, i32, [5 x %struct.sTagField], %struct.sPtrArray*, i32, i8*, i64 }
%struct._MIOPos = type { i32, %union.anon.0 }
%union.anon.0 = type { i64 }
%struct.anon = type { i8*, i8*, i8*, i8*, i32, i32, i8*, i32, i8*, [2 x i8*], i32, i64 }
%struct.sTagField = type { i32, i8*, i8 }
%struct.sPtrArray = type opaque
%struct.sFieldDefinition = type { i8, i8*, i8*, i8, [5 x i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)*], i1 (%struct.sTagEntryInfo*)*, i32, i32 }
%struct.sVString = type { i64, i64, i8* }
%struct.sXtagDefinition = type { i8, i8, i8*, i8*, i1 (%struct.sXtagDefinition*)*, i1 (%struct.sXtagDefinition*)*, i32 }
%struct.sParserDependency = type { i32, i8*, i8* }
%struct.sParameterHandlerTable = type { i8*, i8*, void (i32, i8*, i8*)* }
%struct.sXpathFileSpec = type { i8*, i8*, i8*, i8*, i8*, i8* }
%struct.sTokenInfoSQL = type { i32, i32, %struct.sVString*, %struct.sVString*, i32, i32, i64, %struct._MIOPos }

@.str = private unnamed_addr constant [4 x i8] c"SQL\00", align 1
@SqlKinds = internal global [23 x %struct.sKindDefinition] [%struct.sKindDefinition { i8 1, i8 99, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 0, i8 100, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 102, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 69, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 0, i8 108, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 76, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 80, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 112, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 0, i8 114, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 115, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 116, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 84, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 118, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 105, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 101, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 85, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.32, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 82, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 68, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 86, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 110, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 120, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.42, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 121, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.44, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 122, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.46, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }], align 8
@extensions = internal constant [2 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i32 0, i32 0), i8* null], align 8
@SqlKeywordTable = internal constant [75 x %struct.keywordTable] [%struct.keywordTable { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.48, i32 0, i32 0), i32 0 }, %struct.keywordTable { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.49, i32 0, i32 0), i32 0 }, %struct.keywordTable { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.50, i32 0, i32 0), i32 1 }, %struct.keywordTable { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i32 0, i32 0), i32 2 }, %struct.keywordTable { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 3 }, %struct.keywordTable { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.52, i32 0, i32 0), i32 4 }, %struct.keywordTable { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.53, i32 0, i32 0), i32 5 }, %struct.keywordTable { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i32 6 }, %struct.keywordTable { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.54, i32 0, i32 0), i32 7 }, %struct.keywordTable { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i32 0, i32 0), i32 8 }, %struct.keywordTable { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.56, i32 0, i32 0), i32 9 }, %struct.keywordTable { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.57, i32 0, i32 0), i32 10 }, %struct.keywordTable { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.58, i32 0, i32 0), i32 11 }, %struct.keywordTable { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.59, i32 0, i32 0), i32 12 }, %struct.keywordTable { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i32 0, i32 0), i32 13 }, %struct.keywordTable { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.61, i32 0, i32 0), i32 14 }, %struct.keywordTable { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.62, i32 0, i32 0), i32 15 }, %struct.keywordTable { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.63, i32 0, i32 0), i32 16 }, %struct.keywordTable { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i32 17 }, %struct.keywordTable { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.64, i32 0, i32 0), i32 18 }, %struct.keywordTable { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0), i32 19 }, %struct.keywordTable { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0), i32 20 }, %struct.keywordTable { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.65, i32 0, i32 0), i32 21 }, %struct.keywordTable { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.66, i32 0, i32 0), i32 22 }, %struct.keywordTable { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.67, i32 0, i32 0), i32 23 }, %struct.keywordTable { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.68, i32 0, i32 0), i32 24 }, %struct.keywordTable { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.69, i32 0, i32 0), i32 25 }, %struct.keywordTable { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0), i32 26 }, %struct.keywordTable { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i32 27 }, %struct.keywordTable { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i32 0, i32 0), i32 28 }, %struct.keywordTable { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.70, i32 0, i32 0), i32 29 }, %struct.keywordTable { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i32 30 }, %struct.keywordTable { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), i32 31 }, %struct.keywordTable { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i32 0, i32 0), i32 32 }, %struct.keywordTable { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i32 0, i32 0), i32 33 }, %struct.keywordTable { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i32 0, i32 0), i32 34 }, %struct.keywordTable { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.71, i32 0, i32 0), i32 35 }, %struct.keywordTable { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.72, i32 0, i32 0), i32 36 }, %struct.keywordTable { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.73, i32 0, i32 0), i32 37 }, %struct.keywordTable { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.74, i32 0, i32 0), i32 38 }, %struct.keywordTable { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.75, i32 0, i32 0), i32 39 }, %struct.keywordTable { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.76, i32 0, i32 0), i32 40 }, %struct.keywordTable { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.77, i32 0, i32 0), i32 41 }, %struct.keywordTable { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0), i32 42 }, %struct.keywordTable { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.78, i32 0, i32 0), i32 43 }, %struct.keywordTable { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.79, i32 0, i32 0), i32 44 }, %struct.keywordTable { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.80, i32 0, i32 0), i32 45 }, %struct.keywordTable { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.81, i32 0, i32 0), i32 46 }, %struct.keywordTable { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.82, i32 0, i32 0), i32 47 }, %struct.keywordTable { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.83, i32 0, i32 0), i32 48 }, %struct.keywordTable { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.84, i32 0, i32 0), i32 49 }, %struct.keywordTable { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.85, i32 0, i32 0), i32 50 }, %struct.keywordTable { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.86, i32 0, i32 0), i32 51 }, %struct.keywordTable { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.87, i32 0, i32 0), i32 52 }, %struct.keywordTable { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.88, i32 0, i32 0), i32 53 }, %struct.keywordTable { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.89, i32 0, i32 0), i32 54 }, %struct.keywordTable { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.90, i32 0, i32 0), i32 55 }, %struct.keywordTable { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.91, i32 0, i32 0), i32 56 }, %struct.keywordTable { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.92, i32 0, i32 0), i32 57 }, %struct.keywordTable { i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.93, i32 0, i32 0), i32 58 }, %struct.keywordTable { i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.94, i32 0, i32 0), i32 59 }, %struct.keywordTable { i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.95, i32 0, i32 0), i32 60 }, %struct.keywordTable { i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.96, i32 0, i32 0), i32 61 }, %struct.keywordTable { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.97, i32 0, i32 0), i32 62 }, %struct.keywordTable { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i32 63 }, %struct.keywordTable { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.98, i32 0, i32 0), i32 64 }, %struct.keywordTable { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.99, i32 0, i32 0), i32 65 }, %struct.keywordTable { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i32 0, i32 0), i32 66 }, %struct.keywordTable { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i32 0, i32 0), i32 67 }, %struct.keywordTable { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.100, i32 0, i32 0), i32 68 }, %struct.keywordTable { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.101, i32 0, i32 0), i32 69 }, %struct.keywordTable { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.102, i32 0, i32 0), i32 70 }, %struct.keywordTable { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.103, i32 0, i32 0), i32 71 }, %struct.keywordTable { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.104, i32 0, i32 0), i32 72 }, %struct.keywordTable { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.105, i32 0, i32 0), i32 73 }], align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"cursor\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"cursors\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"prototype\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"prototypes\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"function\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"functions\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"field\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"record fields\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"local\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"local variables\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"block label\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"package\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"packages\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"procedure\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"procedures\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"record\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"records\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"subtype\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"subtypes\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"table\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"tables\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"trigger\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"triggers\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"variable\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"variables\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"indexes\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"event\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"events\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"publication\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"publications\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"service\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"services\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"domain\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"domains\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"view\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"views\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"synonym\00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"synonyms\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"mltable\00", align 1
@.str.42 = private unnamed_addr constant [23 x i8] c"MobiLink Table Scripts\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"mlconn\00", align 1
@.str.44 = private unnamed_addr constant [22 x i8] c"MobiLink Conn Scripts\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"mlprop\00", align 1
@.str.46 = private unnamed_addr constant [21 x i8] c"MobiLink Properties \00", align 1
@.str.47 = private unnamed_addr constant [4 x i8] c"sql\00", align 1
@Lang_sql = internal global i32 0, align 4
@__const.parseDeclare.stoppers = private unnamed_addr constant [2 x i32] [i32 1, i32 5], align 4
@.str.48 = private unnamed_addr constant [3 x i8] c"as\00", align 1
@.str.49 = private unnamed_addr constant [3 x i8] c"is\00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c"begin\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"body\00", align 1
@.str.52 = private unnamed_addr constant [8 x i8] c"declare\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c"end\00", align 1
@.str.54 = private unnamed_addr constant [3 x i8] c"if\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"else\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"elseif\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"endif\00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c"loop\00", align 1
@.str.59 = private unnamed_addr constant [6 x i8] c"while\00", align 1
@.str.60 = private unnamed_addr constant [5 x i8] c"case\00", align 1
@.str.61 = private unnamed_addr constant [4 x i8] c"for\00", align 1
@.str.62 = private unnamed_addr constant [3 x i8] c"do\00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c"call\00", align 1
@.str.64 = private unnamed_addr constant [7 x i8] c"pragma\00", align 1
@.str.65 = private unnamed_addr constant [7 x i8] c"object\00", align 1
@.str.66 = private unnamed_addr constant [4 x i8] c"ref\00", align 1
@.str.67 = private unnamed_addr constant [4 x i8] c"rem\00", align 1
@.str.68 = private unnamed_addr constant [7 x i8] c"return\00", align 1
@.str.69 = private unnamed_addr constant [8 x i8] c"returns\00", align 1
@.str.70 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.71 = private unnamed_addr constant [9 x i8] c"datatype\00", align 1
@.str.72 = private unnamed_addr constant [7 x i8] c"result\00", align 1
@.str.73 = private unnamed_addr constant [4 x i8] c"url\00", align 1
@.str.74 = private unnamed_addr constant [9 x i8] c"internal\00", align 1
@.str.75 = private unnamed_addr constant [9 x i8] c"external\00", align 1
@.str.76 = private unnamed_addr constant [5 x i8] c"when\00", align 1
@.str.77 = private unnamed_addr constant [5 x i8] c"then\00", align 1
@.str.78 = private unnamed_addr constant [10 x i8] c"exception\00", align 1
@.str.79 = private unnamed_addr constant [3 x i8] c"at\00", align 1
@.str.80 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.81 = private unnamed_addr constant [8 x i8] c"primary\00", align 1
@.str.82 = private unnamed_addr constant [11 x i8] c"references\00", align 1
@.str.83 = private unnamed_addr constant [7 x i8] c"unique\00", align 1
@.str.84 = private unnamed_addr constant [6 x i8] c"check\00", align 1
@.str.85 = private unnamed_addr constant [11 x i8] c"constraint\00", align 1
@.str.86 = private unnamed_addr constant [8 x i8] c"foreign\00", align 1
@.str.87 = private unnamed_addr constant [20 x i8] c"ml_add_table_script\00", align 1
@.str.88 = private unnamed_addr constant [25 x i8] c"ml_add_lang_table_script\00", align 1
@.str.89 = private unnamed_addr constant [25 x i8] c"ml_add_dnet_table_script\00", align 1
@.str.90 = private unnamed_addr constant [25 x i8] c"ml_add_java_table_script\00", align 1
@.str.91 = private unnamed_addr constant [29 x i8] c"ml_add_lang_table_script_chk\00", align 1
@.str.92 = private unnamed_addr constant [25 x i8] c"ml_add_connection_script\00", align 1
@.str.93 = private unnamed_addr constant [30 x i8] c"ml_add_lang_connection_script\00", align 1
@.str.94 = private unnamed_addr constant [30 x i8] c"ml_add_dnet_connection_script\00", align 1
@.str.95 = private unnamed_addr constant [30 x i8] c"ml_add_java_connection_script\00", align 1
@.str.96 = private unnamed_addr constant [28 x i8] c"ml_add_lang_conn_script_chk\00", align 1
@.str.97 = private unnamed_addr constant [16 x i8] c"ml_add_property\00", align 1
@.str.98 = private unnamed_addr constant [10 x i8] c"temporary\00", align 1
@.str.99 = private unnamed_addr constant [5 x i8] c"drop\00", align 1
@.str.100 = private unnamed_addr constant [8 x i8] c"handler\00", align 1
@.str.101 = private unnamed_addr constant [8 x i8] c"comment\00", align 1
@.str.102 = private unnamed_addr constant [7 x i8] c"create\00", align 1
@.str.103 = private unnamed_addr constant [3 x i8] c"go\00", align 1
@.str.104 = private unnamed_addr constant [5 x i8] c"with\00", align 1
@.str.105 = private unnamed_addr constant [8 x i8] c"without\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sParserDefinition* @SqlParser() #0 {
entry:
  %def = alloca %struct.sParserDefinition*, align 8
  %call = call %struct.sParserDefinition* @parserNew(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store %struct.sParserDefinition* %call, %struct.sParserDefinition** %def, align 8
  %0 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %0, i32 0, i32 1
  store %struct.sKindDefinition* getelementptr inbounds ([23 x %struct.sKindDefinition], [23 x %struct.sKindDefinition]* @SqlKinds, i64 0, i64 0), %struct.sKindDefinition** %kindTable, align 8
  %1 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %1, i32 0, i32 2
  store i32 23, i32* %kindCount, align 8
  %2 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %extensions = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %2, i32 0, i32 3
  store i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @extensions, i64 0, i64 0), i8*** %extensions, align 8
  %3 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %parser = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %3, i32 0, i32 8
  store void ()* @findSqlTags, void ()** %parser, align 8
  %4 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %initialize = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %4, i32 0, i32 6
  store void (i32)* @initialize, void (i32)** %initialize, align 8
  %5 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %keywordTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %5, i32 0, i32 18
  store %struct.keywordTable* getelementptr inbounds ([75 x %struct.keywordTable], [75 x %struct.keywordTable]* @SqlKeywordTable, i64 0, i64 0), %struct.keywordTable** %keywordTable, align 8
  %6 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %keywordCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %6, i32 0, i32 19
  store i32 75, i32* %keywordCount, align 8
  %7 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  ret %struct.sParserDefinition* %7
}

declare %struct.sParserDefinition* @parserNew(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @findSqlTags() #0 {
entry:
  %token = alloca %struct.sTokenInfoSQL*, align 8
  %call = call %struct.sTokenInfoSQL* @newToken()
  store %struct.sTokenInfoSQL* %call, %struct.sTokenInfoSQL** %token, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token, align 8
  %call1 = call i32 @parseSqlFile(%struct.sTokenInfoSQL* %0)
  %cmp = icmp ne i32 %call1, 1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %1 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token, align 8
  call void @deleteToken(%struct.sTokenInfoSQL* %1)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @initialize(i32 %language) #0 {
entry:
  %language.addr = alloca i32, align 4
  store i32 %language, i32* %language.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load i32, i32* %language.addr, align 4
  store i32 %0, i32* @Lang_sql, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct.sTokenInfoSQL* @newToken() #0 {
entry:
  %token = alloca %struct.sTokenInfoSQL*, align 8
  %tmp = alloca %struct._MIOPos, align 8
  %call = call i8* @eMalloc(i64 56)
  %0 = bitcast i8* %call to %struct.sTokenInfoSQL*
  store %struct.sTokenInfoSQL* %0, %struct.sTokenInfoSQL** %token, align 8
  %1 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token, align 8
  %type = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %1, i32 0, i32 0
  store i32 0, i32* %type, align 8
  %2 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %2, i32 0, i32 1
  store i32 -1, i32* %keyword, align 4
  %call1 = call %struct.sVString* @vStringNew()
  %3 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token, align 8
  %string = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %3, i32 0, i32 2
  store %struct.sVString* %call1, %struct.sVString** %string, align 8
  %call2 = call %struct.sVString* @vStringNew()
  %4 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token, align 8
  %scope = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %4, i32 0, i32 3
  store %struct.sVString* %call2, %struct.sVString** %scope, align 8
  %5 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token, align 8
  %scopeKind = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %5, i32 0, i32 4
  store i32 23, i32* %scopeKind, align 8
  %6 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token, align 8
  %begin_end_nest_lvl = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %6, i32 0, i32 5
  store i32 0, i32* %begin_end_nest_lvl, align 4
  %call3 = call i64 @getInputLineNumber()
  %7 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token, align 8
  %lineNumber = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %7, i32 0, i32 6
  store i64 %call3, i64* %lineNumber, align 8
  %8 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token, align 8
  %filePosition = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %8, i32 0, i32 7
  %call4 = call [2 x i64] @getInputFilePosition()
  %9 = bitcast %struct._MIOPos* %tmp to [2 x i64]*
  store [2 x i64] %call4, [2 x i64]* %9, align 8
  %10 = bitcast %struct._MIOPos* %filePosition to i8*
  %11 = bitcast %struct._MIOPos* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 16, i1 false)
  %12 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token, align 8
  ret %struct.sTokenInfoSQL* %12
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @parseSqlFile(%struct.sTokenInfoSQL* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfoSQL*, align 8
  store %struct.sTokenInfoSQL* %token, %struct.sTokenInfoSQL** %token.addr, align 8
  br label %do.body

do.body:                                          ; preds = %land.end, %entry
  %0 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @readToken(%struct.sTokenInfoSQL* %0)
  %1 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %1, i32 0, i32 0
  %2 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %2, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %3 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @parseLabel(%struct.sTokenInfoSQL* %3)
  br label %if.end

if.else:                                          ; preds = %do.body
  %4 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @parseKeywords(%struct.sTokenInfoSQL* %4)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %5 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %5, i32 0, i32 1
  %6 = load i32, i32* %keyword, align 4
  %cmp1 = icmp eq i32 %6, 5
  br i1 %cmp1, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %do.cond
  %7 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type2 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %7, i32 0, i32 0
  %8 = load i32, i32* %type2, align 8
  %cmp3 = icmp eq i32 %8, 1
  %lnot = xor i1 %cmp3, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %9 = phi i1 [ false, %do.cond ], [ %lnot, %land.rhs ]
  br i1 %9, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  %10 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type4 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %10, i32 0, i32 0
  %11 = load i32, i32* %type4, align 8
  ret i32 %11
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @deleteToken(%struct.sTokenInfoSQL* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfoSQL*, align 8
  store %struct.sTokenInfoSQL* %token, %struct.sTokenInfoSQL** %token.addr, align 8
  %0 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %string = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %0, i32 0, i32 2
  %1 = load %struct.sVString*, %struct.sVString** %string, align 8
  call void @vStringDelete(%struct.sVString* %1)
  %2 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %scope = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %2, i32 0, i32 3
  %3 = load %struct.sVString*, %struct.sVString** %scope, align 8
  call void @vStringDelete(%struct.sVString* %3)
  %4 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %5 = bitcast %struct.sTokenInfoSQL* %4 to i8*
  call void @eFree(i8* %5)
  ret void
}

declare i8* @eMalloc(i64) #1

declare %struct.sVString* @vStringNew() #1

declare i64 @getInputLineNumber() #1

declare [2 x i64] @getInputFilePosition() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @readToken(%struct.sTokenInfoSQL* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfoSQL*, align 8
  %c = alloca i32, align 4
  %vStringClear_s = alloca %struct.sVString*, align 8
  %tmp = alloca %struct._MIOPos, align 8
  %tmp38 = alloca %struct._MIOPos, align 8
  %initial = alloca i32, align 4
  %d = alloca i32, align 4
  %tmp76 = alloca %struct._MIOPos, align 8
  %d79 = alloca i32, align 4
  %tmp114 = alloca %struct._MIOPos, align 8
  %tmp129 = alloca %struct._MIOPos, align 8
  %vStringClear_s139 = alloca %struct.sVString*, align 8
  store %struct.sTokenInfoSQL* %token, %struct.sTokenInfoSQL** %token.addr, align 8
  %0 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %0, i32 0, i32 0
  store i32 0, i32* %type, align 8
  %1 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %1, i32 0, i32 1
  store i32 -1, i32* %keyword, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %string = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %2, i32 0, i32 2
  %3 = load %struct.sVString*, %struct.sVString** %string, align 8
  store %struct.sVString* %3, %struct.sVString** %vStringClear_s, align 8
  %4 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %4, i32 0, i32 0
  store i64 0, i64* %length, align 8
  %5 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %5, i32 0, i32 2
  %6 = load i8*, i8** %buffer, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 0
  store i8 0, i8* %arrayidx, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %getNextChar

getNextChar:                                      ; preds = %do.end145, %if.then102, %do.end99, %if.then, %do.end
  br label %do.body1

do.body1:                                         ; preds = %lor.end, %getNextChar
  %call = call i32 @getcFromInputFile()
  store i32 %call, i32* %c, align 4
  %call2 = call i64 @getInputLineNumber()
  %7 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %lineNumber = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %7, i32 0, i32 6
  store i64 %call2, i64* %lineNumber, align 8
  %8 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %filePosition = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %8, i32 0, i32 7
  %call3 = call [2 x i64] @getInputFilePosition()
  %9 = bitcast %struct._MIOPos* %tmp to [2 x i64]*
  store [2 x i64] %call3, [2 x i64]* %9, align 8
  %10 = bitcast %struct._MIOPos* %filePosition to i8*
  %11 = bitcast %struct._MIOPos* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 16, i1 false)
  br label %do.cond

do.cond:                                          ; preds = %do.body1
  %12 = load i32, i32* %c, align 4
  %cmp = icmp eq i32 %12, 9
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.cond
  %13 = load i32, i32* %c, align 4
  %cmp4 = icmp eq i32 %13, 32
  br i1 %cmp4, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %14 = load i32, i32* %c, align 4
  %cmp5 = icmp eq i32 %14, 10
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %do.cond
  %15 = phi i1 [ true, %lor.lhs.false ], [ true, %do.cond ], [ %cmp5, %lor.rhs ]
  br i1 %15, label %do.body1, label %do.end6

do.end6:                                          ; preds = %lor.end
  %16 = load i32, i32* %c, align 4
  switch i32 %16, label %sw.default [
    i32 -1, label %sw.bb
    i32 40, label %sw.bb8
    i32 41, label %sw.bb10
    i32 58, label %sw.bb12
    i32 59, label %sw.bb14
    i32 46, label %sw.bb16
    i32 44, label %sw.bb18
    i32 123, label %sw.bb20
    i32 125, label %sw.bb22
    i32 126, label %sw.bb24
    i32 91, label %sw.bb26
    i32 93, label %sw.bb28
    i32 61, label %sw.bb30
    i32 39, label %sw.bb32
    i32 34, label %sw.bb32
    i32 45, label %sw.bb40
    i32 60, label %sw.bb48
    i32 62, label %sw.bb48
    i32 92, label %sw.bb61
    i32 47, label %sw.bb78
    i32 36, label %sw.bb107
  ]

sw.bb:                                            ; preds = %do.end6
  %17 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type7 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %17, i32 0, i32 0
  store i32 1, i32* %type7, align 8
  br label %sw.epilog

sw.bb8:                                           ; preds = %do.end6
  %18 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type9 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %18, i32 0, i32 0
  store i32 11, i32* %type9, align 8
  br label %sw.epilog

sw.bb10:                                          ; preds = %do.end6
  %19 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type11 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %19, i32 0, i32 0
  store i32 5, i32* %type11, align 8
  br label %sw.epilog

sw.bb12:                                          ; preds = %do.end6
  %20 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type13 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %20, i32 0, i32 0
  store i32 6, i32* %type13, align 8
  br label %sw.epilog

sw.bb14:                                          ; preds = %do.end6
  %21 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type15 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %21, i32 0, i32 0
  store i32 7, i32* %type15, align 8
  br label %sw.epilog

sw.bb16:                                          ; preds = %do.end6
  %22 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type17 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %22, i32 0, i32 0
  store i32 15, i32* %type17, align 8
  br label %sw.epilog

sw.bb18:                                          ; preds = %do.end6
  %23 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type19 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %23, i32 0, i32 0
  store i32 8, i32* %type19, align 8
  br label %sw.epilog

sw.bb20:                                          ; preds = %do.end6
  %24 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type21 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %24, i32 0, i32 0
  store i32 16, i32* %type21, align 8
  br label %sw.epilog

sw.bb22:                                          ; preds = %do.end6
  %25 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type23 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %25, i32 0, i32 0
  store i32 17, i32* %type23, align 8
  br label %sw.epilog

sw.bb24:                                          ; preds = %do.end6
  %26 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type25 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %26, i32 0, i32 0
  store i32 20, i32* %type25, align 8
  br label %sw.epilog

sw.bb26:                                          ; preds = %do.end6
  %27 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type27 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %27, i32 0, i32 0
  store i32 18, i32* %type27, align 8
  br label %sw.epilog

sw.bb28:                                          ; preds = %do.end6
  %28 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type29 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %28, i32 0, i32 0
  store i32 19, i32* %type29, align 8
  br label %sw.epilog

sw.bb30:                                          ; preds = %do.end6
  %29 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type31 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %29, i32 0, i32 0
  store i32 22, i32* %type31, align 8
  br label %sw.epilog

sw.bb32:                                          ; preds = %do.end6, %do.end6
  %30 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type33 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %30, i32 0, i32 0
  store i32 14, i32* %type33, align 8
  %31 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %string34 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %31, i32 0, i32 2
  %32 = load %struct.sVString*, %struct.sVString** %string34, align 8
  %33 = load i32, i32* %c, align 4
  call void @parseString(%struct.sVString* %32, i32 %33)
  %call35 = call i64 @getInputLineNumber()
  %34 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %lineNumber36 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %34, i32 0, i32 6
  store i64 %call35, i64* %lineNumber36, align 8
  %35 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %filePosition37 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %35, i32 0, i32 7
  %call39 = call [2 x i64] @getInputFilePosition()
  %36 = bitcast %struct._MIOPos* %tmp38 to [2 x i64]*
  store [2 x i64] %call39, [2 x i64]* %36, align 8
  %37 = bitcast %struct._MIOPos* %filePosition37 to i8*
  %38 = bitcast %struct._MIOPos* %tmp38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %37, i8* align 8 %38, i64 16, i1 false)
  br label %sw.epilog

sw.bb40:                                          ; preds = %do.end6
  %call41 = call i32 @getcFromInputFile()
  store i32 %call41, i32* %c, align 4
  %39 = load i32, i32* %c, align 4
  %cmp42 = icmp eq i32 %39, 45
  br i1 %cmp42, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb40
  %call43 = call i32 @skipToCharacterInInputFile(i32 10)
  br label %getNextChar

if.else:                                          ; preds = %sw.bb40
  %40 = load i32, i32* %c, align 4
  %call44 = call i32 @isspace(i32 %40) #4
  %tobool = icmp ne i32 %call44, 0
  br i1 %tobool, label %if.end, label %if.then45

if.then45:                                        ; preds = %if.else
  %41 = load i32, i32* %c, align 4
  call void @ungetcToInputFile(i32 %41)
  br label %if.end

if.end:                                           ; preds = %if.then45, %if.else
  %42 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type46 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %42, i32 0, i32 0
  store i32 12, i32* %type46, align 8
  br label %if.end47

if.end47:                                         ; preds = %if.end
  br label %sw.epilog

sw.bb48:                                          ; preds = %do.end6, %do.end6
  %43 = load i32, i32* %c, align 4
  store i32 %43, i32* %initial, align 4
  %call49 = call i32 @getcFromInputFile()
  store i32 %call49, i32* %d, align 4
  %44 = load i32, i32* %d, align 4
  %45 = load i32, i32* %initial, align 4
  %cmp50 = icmp eq i32 %44, %45
  br i1 %cmp50, label %if.then51, label %if.else58

if.then51:                                        ; preds = %sw.bb48
  %46 = load i32, i32* %initial, align 4
  %cmp52 = icmp eq i32 %46, 60
  br i1 %cmp52, label %if.then53, label %if.else55

if.then53:                                        ; preds = %if.then51
  %47 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type54 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %47, i32 0, i32 0
  store i32 2, i32* %type54, align 8
  br label %if.end57

if.else55:                                        ; preds = %if.then51
  %48 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type56 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %48, i32 0, i32 0
  store i32 3, i32* %type56, align 8
  br label %if.end57

if.end57:                                         ; preds = %if.else55, %if.then53
  br label %if.end60

if.else58:                                        ; preds = %sw.bb48
  %49 = load i32, i32* %d, align 4
  call void @ungetcToInputFile(i32 %49)
  %50 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type59 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %50, i32 0, i32 0
  store i32 0, i32* %type59, align 8
  br label %if.end60

if.end60:                                         ; preds = %if.else58, %if.end57
  br label %sw.epilog

sw.bb61:                                          ; preds = %do.end6
  %call62 = call i32 @getcFromInputFile()
  store i32 %call62, i32* %c, align 4
  %51 = load i32, i32* %c, align 4
  %cmp63 = icmp ne i32 %51, 92
  br i1 %cmp63, label %land.lhs.true, label %if.end71

land.lhs.true:                                    ; preds = %sw.bb61
  %52 = load i32, i32* %c, align 4
  %cmp64 = icmp ne i32 %52, 34
  br i1 %cmp64, label %land.lhs.true65, label %if.end71

land.lhs.true65:                                  ; preds = %land.lhs.true
  %53 = load i32, i32* %c, align 4
  %cmp66 = icmp ne i32 %53, 39
  br i1 %cmp66, label %land.lhs.true67, label %if.end71

land.lhs.true67:                                  ; preds = %land.lhs.true65
  %54 = load i32, i32* %c, align 4
  %call68 = call i32 @isspace(i32 %54) #4
  %tobool69 = icmp ne i32 %call68, 0
  br i1 %tobool69, label %if.end71, label %if.then70

if.then70:                                        ; preds = %land.lhs.true67
  %55 = load i32, i32* %c, align 4
  call void @ungetcToInputFile(i32 %55)
  br label %if.end71

if.end71:                                         ; preds = %if.then70, %land.lhs.true67, %land.lhs.true65, %land.lhs.true, %sw.bb61
  %56 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type72 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %56, i32 0, i32 0
  store i32 4, i32* %type72, align 8
  %call73 = call i64 @getInputLineNumber()
  %57 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %lineNumber74 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %57, i32 0, i32 6
  store i64 %call73, i64* %lineNumber74, align 8
  %58 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %filePosition75 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %58, i32 0, i32 7
  %call77 = call [2 x i64] @getInputFilePosition()
  %59 = bitcast %struct._MIOPos* %tmp76 to [2 x i64]*
  store [2 x i64] %call77, [2 x i64]* %59, align 8
  %60 = bitcast %struct._MIOPos* %filePosition75 to i8*
  %61 = bitcast %struct._MIOPos* %tmp76 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %60, i8* align 8 %61, i64 16, i1 false)
  br label %sw.epilog

sw.bb78:                                          ; preds = %do.end6
  %call80 = call i32 @getcFromInputFile()
  store i32 %call80, i32* %d79, align 4
  %62 = load i32, i32* %d79, align 4
  %cmp81 = icmp ne i32 %62, 42
  br i1 %cmp81, label %land.lhs.true82, label %if.else86

land.lhs.true82:                                  ; preds = %sw.bb78
  %63 = load i32, i32* %d79, align 4
  %cmp83 = icmp ne i32 %63, 47
  br i1 %cmp83, label %if.then84, label %if.else86

if.then84:                                        ; preds = %land.lhs.true82
  %64 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type85 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %64, i32 0, i32 0
  store i32 21, i32* %type85, align 8
  %65 = load i32, i32* %d79, align 4
  call void @ungetcToInputFile(i32 %65)
  br label %if.end106

if.else86:                                        ; preds = %land.lhs.true82, %sw.bb78
  %66 = load i32, i32* %d79, align 4
  %cmp87 = icmp eq i32 %66, 42
  br i1 %cmp87, label %if.then88, label %if.else100

if.then88:                                        ; preds = %if.else86
  br label %do.body89

do.body89:                                        ; preds = %land.end, %if.then88
  %call90 = call i32 @skipToCharacterInInputFile(i32 42)
  %call91 = call i32 @getcFromInputFile()
  store i32 %call91, i32* %c, align 4
  %67 = load i32, i32* %c, align 4
  %cmp92 = icmp eq i32 %67, 47
  br i1 %cmp92, label %if.then93, label %if.else94

if.then93:                                        ; preds = %do.body89
  br label %do.end99

if.else94:                                        ; preds = %do.body89
  %68 = load i32, i32* %c, align 4
  call void @ungetcToInputFile(i32 %68)
  br label %if.end95

if.end95:                                         ; preds = %if.else94
  br label %do.cond96

do.cond96:                                        ; preds = %if.end95
  %69 = load i32, i32* %c, align 4
  %cmp97 = icmp ne i32 %69, -1
  br i1 %cmp97, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond96
  %70 = load i32, i32* %c, align 4
  %cmp98 = icmp ne i32 %70, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond96
  %71 = phi i1 [ false, %do.cond96 ], [ %cmp98, %land.rhs ]
  br i1 %71, label %do.body89, label %do.end99

do.end99:                                         ; preds = %land.end, %if.then93
  br label %getNextChar

if.else100:                                       ; preds = %if.else86
  %72 = load i32, i32* %d79, align 4
  %cmp101 = icmp eq i32 %72, 47
  br i1 %cmp101, label %if.then102, label %if.end104

if.then102:                                       ; preds = %if.else100
  %call103 = call i32 @skipToCharacterInInputFile(i32 10)
  br label %getNextChar

if.end104:                                        ; preds = %if.else100
  br label %if.end105

if.end105:                                        ; preds = %if.end104
  br label %if.end106

if.end106:                                        ; preds = %if.end105, %if.then84
  br label %sw.epilog

sw.bb107:                                         ; preds = %do.end6
  %73 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %string108 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %73, i32 0, i32 2
  %74 = load %struct.sVString*, %struct.sVString** %string108, align 8
  %75 = load i32, i32* %c, align 4
  %call109 = call i32 @parseDollarQuote(%struct.sVString* %74, i32 %75)
  %76 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type110 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %76, i32 0, i32 0
  store i32 %call109, i32* %type110, align 8
  %call111 = call i64 @getInputLineNumber()
  %77 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %lineNumber112 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %77, i32 0, i32 6
  store i64 %call111, i64* %lineNumber112, align 8
  %78 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %filePosition113 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %78, i32 0, i32 7
  %call115 = call [2 x i64] @getInputFilePosition()
  %79 = bitcast %struct._MIOPos* %tmp114 to [2 x i64]*
  store [2 x i64] %call115, [2 x i64]* %79, align 8
  %80 = bitcast %struct._MIOPos* %filePosition113 to i8*
  %81 = bitcast %struct._MIOPos* %tmp114 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %80, i8* align 8 %81, i64 16, i1 false)
  br label %sw.epilog

sw.default:                                       ; preds = %do.end6
  %82 = load i32, i32* %c, align 4
  %call116 = call i32 @isalpha(i32 %82) #4
  %tobool117 = icmp ne i32 %call116, 0
  br i1 %tobool117, label %if.else124, label %lor.lhs.false118

lor.lhs.false118:                                 ; preds = %sw.default
  %83 = load i32, i32* %c, align 4
  %cmp119 = icmp eq i32 %83, 64
  br i1 %cmp119, label %if.else124, label %lor.lhs.false120

lor.lhs.false120:                                 ; preds = %lor.lhs.false118
  %84 = load i32, i32* %c, align 4
  %cmp121 = icmp eq i32 %84, 95
  br i1 %cmp121, label %if.else124, label %if.then122

if.then122:                                       ; preds = %lor.lhs.false120
  %85 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type123 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %85, i32 0, i32 0
  store i32 0, i32* %type123, align 8
  br label %if.end156

if.else124:                                       ; preds = %lor.lhs.false120, %lor.lhs.false118, %sw.default
  %86 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %string125 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %86, i32 0, i32 2
  %87 = load %struct.sVString*, %struct.sVString** %string125, align 8
  %88 = load i32, i32* %c, align 4
  call void @parseIdentifier(%struct.sVString* %87, i32 %88)
  %call126 = call i64 @getInputLineNumber()
  %89 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %lineNumber127 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %89, i32 0, i32 6
  store i64 %call126, i64* %lineNumber127, align 8
  %90 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %filePosition128 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %90, i32 0, i32 7
  %call130 = call [2 x i64] @getInputFilePosition()
  %91 = bitcast %struct._MIOPos* %tmp129 to [2 x i64]*
  store [2 x i64] %call130, [2 x i64]* %91, align 8
  %92 = bitcast %struct._MIOPos* %filePosition128 to i8*
  %93 = bitcast %struct._MIOPos* %tmp129 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %92, i8* align 8 %93, i64 16, i1 false)
  %94 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %string131 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %94, i32 0, i32 2
  %95 = load %struct.sVString*, %struct.sVString** %string131, align 8
  %buffer132 = getelementptr inbounds %struct.sVString, %struct.sVString* %95, i32 0, i32 2
  %96 = load i8*, i8** %buffer132, align 8
  %97 = load i32, i32* @Lang_sql, align 4
  %call133 = call i32 @lookupCaseKeyword(i8* %96, i32 %97)
  %98 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %keyword134 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %98, i32 0, i32 1
  store i32 %call133, i32* %keyword134, align 4
  %99 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %keyword135 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %99, i32 0, i32 1
  %100 = load i32, i32* %keyword135, align 4
  %cmp136 = icmp eq i32 %100, 23
  br i1 %cmp136, label %if.then137, label %if.else147

if.then137:                                       ; preds = %if.else124
  br label %do.body138

do.body138:                                       ; preds = %if.then137
  %101 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %string140 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %101, i32 0, i32 2
  %102 = load %struct.sVString*, %struct.sVString** %string140, align 8
  store %struct.sVString* %102, %struct.sVString** %vStringClear_s139, align 8
  %103 = load %struct.sVString*, %struct.sVString** %vStringClear_s139, align 8
  %length141 = getelementptr inbounds %struct.sVString, %struct.sVString* %103, i32 0, i32 0
  store i64 0, i64* %length141, align 8
  %104 = load %struct.sVString*, %struct.sVString** %vStringClear_s139, align 8
  %buffer142 = getelementptr inbounds %struct.sVString, %struct.sVString* %104, i32 0, i32 2
  %105 = load i8*, i8** %buffer142, align 8
  %arrayidx143 = getelementptr inbounds i8, i8* %105, i64 0
  store i8 0, i8* %arrayidx143, align 1
  br label %do.end145

do.end145:                                        ; preds = %do.body138
  %call146 = call i32 @skipToCharacterInInputFile(i32 10)
  br label %getNextChar

if.else147:                                       ; preds = %if.else124
  %106 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %keyword148 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %106, i32 0, i32 1
  %107 = load i32, i32* %keyword148, align 4
  %cmp149 = icmp eq i32 %107, -1
  br i1 %cmp149, label %if.then150, label %if.else152

if.then150:                                       ; preds = %if.else147
  %108 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type151 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %108, i32 0, i32 0
  store i32 9, i32* %type151, align 8
  br label %if.end154

if.else152:                                       ; preds = %if.else147
  %109 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type153 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %109, i32 0, i32 0
  store i32 10, i32* %type153, align 8
  br label %if.end154

if.end154:                                        ; preds = %if.else152, %if.then150
  br label %if.end155

if.end155:                                        ; preds = %if.end154
  br label %if.end156

if.end156:                                        ; preds = %if.end155, %if.then122
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end156, %sw.bb107, %if.end106, %if.end71, %if.end60, %if.end47, %sw.bb32, %sw.bb30, %sw.bb28, %sw.bb26, %sw.bb24, %sw.bb22, %sw.bb20, %sw.bb18, %sw.bb16, %sw.bb14, %sw.bb12, %sw.bb10, %sw.bb8, %sw.bb
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseLabel(%struct.sTokenInfoSQL* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfoSQL*, align 8
  store %struct.sTokenInfoSQL* %token, %struct.sTokenInfoSQL** %token.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @readToken(%struct.sTokenInfoSQL* %0)
  %1 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %1, i32 0, i32 0
  %2 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %2, 9
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  %3 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @makeSqlTag(%struct.sTokenInfoSQL* %3, i32 5)
  %4 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @readToken(%struct.sTokenInfoSQL* %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseKeywords(%struct.sTokenInfoSQL* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfoSQL*, align 8
  store %struct.sTokenInfoSQL* %token, %struct.sTokenInfoSQL** %token.addr, align 8
  %0 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %0, i32 0, i32 1
  %1 = load i32, i32* %keyword, align 4
  switch i32 %1, label %sw.default [
    i32 1, label %sw.bb
    i32 69, label %sw.bb1
    i32 3, label %sw.bb2
    i32 35, label %sw.bb3
    i32 4, label %sw.bb4
    i32 34, label %sw.bb5
    i32 65, label %sw.bb6
    i32 31, label %sw.bb7
    i32 6, label %sw.bb8
    i32 7, label %sw.bb9
    i32 30, label %sw.bb10
    i32 52, label %sw.bb11
    i32 53, label %sw.bb12
    i32 54, label %sw.bb13
    i32 55, label %sw.bb14
    i32 56, label %sw.bb15
    i32 57, label %sw.bb16
    i32 58, label %sw.bb17
    i32 59, label %sw.bb18
    i32 60, label %sw.bb19
    i32 61, label %sw.bb20
    i32 62, label %sw.bb21
    i32 17, label %sw.bb22
    i32 19, label %sw.bb23
    i32 32, label %sw.bb24
    i32 33, label %sw.bb25
    i32 26, label %sw.bb26
    i32 67, label %sw.bb27
    i32 27, label %sw.bb28
    i32 28, label %sw.bb29
    i32 29, label %sw.bb30
    i32 42, label %sw.bb31
    i32 66, label %sw.bb32
    i32 72, label %sw.bb33
    i32 73, label %sw.bb34
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @parseBlock(%struct.sTokenInfoSQL* %2, i1 zeroext false)
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %3 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @parseComment(%struct.sTokenInfoSQL* %3)
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %4 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @parseSimple(%struct.sTokenInfoSQL* %4, i32 0)
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %5 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @parseDomain(%struct.sTokenInfoSQL* %5)
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %6 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @parseBlock(%struct.sTokenInfoSQL* %6, i1 zeroext false)
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %7 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @parseDomain(%struct.sTokenInfoSQL* %7)
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  %8 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @parseDrop(%struct.sTokenInfoSQL* %8)
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  %9 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @parseEvent(%struct.sTokenInfoSQL* %9)
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  %10 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @parseSubProgram(%struct.sTokenInfoSQL* %10)
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  %11 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @parseStatements(%struct.sTokenInfoSQL* %11, i1 zeroext false)
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  %12 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @parseIndex(%struct.sTokenInfoSQL* %12)
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  %13 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @parseMLTable(%struct.sTokenInfoSQL* %13)
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  %14 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @parseMLTable(%struct.sTokenInfoSQL* %14)
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  %15 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @parseMLTable(%struct.sTokenInfoSQL* %15)
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  %16 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @parseMLTable(%struct.sTokenInfoSQL* %16)
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  %17 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @parseMLTable(%struct.sTokenInfoSQL* %17)
  br label %sw.epilog

sw.bb16:                                          ; preds = %entry
  %18 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @parseMLConn(%struct.sTokenInfoSQL* %18)
  br label %sw.epilog

sw.bb17:                                          ; preds = %entry
  %19 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @parseMLConn(%struct.sTokenInfoSQL* %19)
  br label %sw.epilog

sw.bb18:                                          ; preds = %entry
  %20 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @parseMLConn(%struct.sTokenInfoSQL* %20)
  br label %sw.epilog

sw.bb19:                                          ; preds = %entry
  %21 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @parseMLConn(%struct.sTokenInfoSQL* %21)
  br label %sw.epilog

sw.bb20:                                          ; preds = %entry
  %22 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @parseMLConn(%struct.sTokenInfoSQL* %22)
  br label %sw.epilog

sw.bb21:                                          ; preds = %entry
  %23 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @parseMLProp(%struct.sTokenInfoSQL* %23)
  br label %sw.epilog

sw.bb22:                                          ; preds = %entry
  %24 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @parsePackage(%struct.sTokenInfoSQL* %24)
  br label %sw.epilog

sw.bb23:                                          ; preds = %entry
  %25 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @parseSubProgram(%struct.sTokenInfoSQL* %25)
  br label %sw.epilog

sw.bb24:                                          ; preds = %entry
  %26 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @parsePublication(%struct.sTokenInfoSQL* %26)
  br label %sw.epilog

sw.bb25:                                          ; preds = %entry
  %27 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @parseService(%struct.sTokenInfoSQL* %27)
  br label %sw.epilog

sw.bb26:                                          ; preds = %entry
  %28 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @parseSimple(%struct.sTokenInfoSQL* %28, i32 9)
  br label %sw.epilog

sw.bb27:                                          ; preds = %entry
  %29 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @parseSynonym(%struct.sTokenInfoSQL* %29)
  br label %sw.epilog

sw.bb28:                                          ; preds = %entry
  %30 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @parseTable(%struct.sTokenInfoSQL* %30)
  br label %sw.epilog

sw.bb29:                                          ; preds = %entry
  %31 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @parseTrigger(%struct.sTokenInfoSQL* %31)
  br label %sw.epilog

sw.bb30:                                          ; preds = %entry
  %32 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @parseType(%struct.sTokenInfoSQL* %32)
  br label %sw.epilog

sw.bb31:                                          ; preds = %entry
  %33 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @parseVariable(%struct.sTokenInfoSQL* %33)
  br label %sw.epilog

sw.bb32:                                          ; preds = %entry
  %34 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @parseView(%struct.sTokenInfoSQL* %34)
  br label %sw.epilog

sw.bb33:                                          ; preds = %entry
  %35 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @readToken(%struct.sTokenInfoSQL* %35)
  br label %sw.epilog

sw.bb34:                                          ; preds = %entry
  %36 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @readToken(%struct.sTokenInfoSQL* %36)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb34, %sw.bb33, %sw.bb32, %sw.bb31, %sw.bb30, %sw.bb29, %sw.bb28, %sw.bb27, %sw.bb26, %sw.bb25, %sw.bb24, %sw.bb23, %sw.bb22, %sw.bb21, %sw.bb20, %sw.bb19, %sw.bb18, %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  ret void
}

declare i32 @getcFromInputFile() #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseString(%struct.sVString* %string, i32 %delimiter) #0 {
entry:
  %string.addr = alloca %struct.sVString*, align 8
  %delimiter.addr = alloca i32, align 4
  %end = alloca i8, align 1
  %c = alloca i32, align 4
  store %struct.sVString* %string, %struct.sVString** %string.addr, align 8
  store i32 %delimiter, i32* %delimiter.addr, align 4
  store i8 0, i8* %end, align 1
  br label %while.cond

while.cond:                                       ; preds = %if.end4, %entry
  %0 = load i8, i8* %end, align 1
  %tobool = trunc i8 %0 to i1
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call = call i32 @getcFromInputFile()
  store i32 %call, i32* %c, align 4
  %1 = load i32, i32* %c, align 4
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  store i8 1, i8* %end, align 1
  br label %if.end4

if.else:                                          ; preds = %while.body
  %2 = load i32, i32* %c, align 4
  %3 = load i32, i32* %delimiter.addr, align 4
  %cmp1 = icmp eq i32 %2, %3
  br i1 %cmp1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.else
  store i8 1, i8* %end, align 1
  br label %if.end

if.else3:                                         ; preds = %if.else
  %4 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %5 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %4, i32 %5)
  br label %if.end

if.end:                                           ; preds = %if.else3, %if.then2
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

declare i32 @skipToCharacterInInputFile(i32) #1

; Function Attrs: nounwind readonly
declare i32 @isspace(i32) #3

declare void @ungetcToInputFile(i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @parseDollarQuote(%struct.sVString* %string, i32 %delimiter) #0 {
entry:
  %retval = alloca i32, align 4
  %string.addr = alloca %struct.sVString*, align 8
  %delimiter.addr = alloca i32, align 4
  %len = alloca i32, align 4
  %tag = alloca [32 x i8], align 1
  %c = alloca i32, align 4
  %end_p = alloca i8*, align 8
  store %struct.sVString* %string, %struct.sVString** %string.addr, align 8
  store i32 %delimiter, i32* %delimiter.addr, align 4
  store i32 0, i32* %len, align 4
  %0 = bitcast [32 x i8]* %tag to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 32, i1 false)
  store i32 0, i32* %c, align 4
  %1 = load i32, i32* %delimiter.addr, align 4
  %conv = trunc i32 %1 to i8
  %2 = load i32, i32* %len, align 4
  %inc = add i32 %2, 1
  store i32 %inc, i32* %len, align 4
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds [32 x i8], [32 x i8]* %tag, i64 0, i64 %idxprom
  store i8 %conv, i8* %arrayidx, align 1
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %3 = load i32, i32* %len, align 4
  %add = add i32 %3, 1
  %conv1 = zext i32 %add to i64
  %cmp = icmp ult i64 %conv1, 32
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %4 = load i32, i32* %c, align 4
  %5 = load i32, i32* %delimiter.addr, align 4
  %cmp3 = icmp ne i32 %4, %5
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %cmp3, %land.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %call = call i32 @getcFromInputFile()
  store i32 %call, i32* %c, align 4
  %7 = load i32, i32* %c, align 4
  %call5 = call i32 @isalpha(i32 %7) #4
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %8 = load i32, i32* %c, align 4
  %call6 = call i32 @isdigit(i32 %8) #4
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %lor.lhs.false
  %9 = load i32, i32* %c, align 4
  %cmp9 = icmp eq i32 %9, 36
  br i1 %cmp9, label %if.then, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %lor.lhs.false8
  %10 = load i32, i32* %c, align 4
  %cmp12 = icmp eq i32 %10, 64
  br i1 %cmp12, label %if.then, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false11
  %11 = load i32, i32* %c, align 4
  %cmp15 = icmp eq i32 %11, 95
  br i1 %cmp15, label %if.then, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %lor.lhs.false14
  %12 = load i32, i32* %c, align 4
  %cmp18 = icmp eq i32 %12, 35
  br i1 %cmp18, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false17, %lor.lhs.false14, %lor.lhs.false11, %lor.lhs.false8, %lor.lhs.false, %while.body
  %13 = load i32, i32* %c, align 4
  %conv20 = trunc i32 %13 to i8
  %14 = load i32, i32* %len, align 4
  %inc21 = add i32 %14, 1
  store i32 %inc21, i32* %len, align 4
  %idxprom22 = zext i32 %14 to i64
  %arrayidx23 = getelementptr inbounds [32 x i8], [32 x i8]* %tag, i64 0, i64 %idxprom22
  store i8 %conv20, i8* %arrayidx23, align 1
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false17
  br label %while.end

if.end:                                           ; preds = %if.then
  br label %while.cond

while.end:                                        ; preds = %if.else, %land.end
  %15 = load i32, i32* %len, align 4
  %idxprom24 = zext i32 %15 to i64
  %arrayidx25 = getelementptr inbounds [32 x i8], [32 x i8]* %tag, i64 0, i64 %idxprom24
  store i8 0, i8* %arrayidx25, align 1
  %16 = load i32, i32* %c, align 4
  %17 = load i32, i32* %delimiter.addr, align 4
  %cmp26 = icmp ne i32 %16, %17
  br i1 %cmp26, label %if.then28, label %if.end29

if.then28:                                        ; preds = %while.end
  store i32 0, i32* %retval, align 4
  br label %return

if.end29:                                         ; preds = %while.end
  br label %while.cond30

while.cond30:                                     ; preds = %if.end58, %if.end29
  %call31 = call i32 @getcFromInputFile()
  store i32 %call31, i32* %c, align 4
  %cmp32 = icmp ne i32 %call31, -1
  br i1 %cmp32, label %while.body34, label %while.end59

while.body34:                                     ; preds = %while.cond30
  %18 = load i32, i32* %c, align 4
  %19 = load i32, i32* %delimiter.addr, align 4
  %cmp35 = icmp ne i32 %18, %19
  br i1 %cmp35, label %if.then37, label %if.else38

if.then37:                                        ; preds = %while.body34
  %20 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %21 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %20, i32 %21)
  br label %if.end58

if.else38:                                        ; preds = %while.body34
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %tag, i64 0, i64 0
  store i8* %arraydecay, i8** %end_p, align 8
  br label %while.cond39

while.cond39:                                     ; preds = %while.body49, %if.else38
  %22 = load i32, i32* %c, align 4
  %cmp40 = icmp ne i32 %22, -1
  br i1 %cmp40, label %land.lhs.true, label %land.end48

land.lhs.true:                                    ; preds = %while.cond39
  %23 = load i8*, i8** %end_p, align 8
  %24 = load i8, i8* %23, align 1
  %conv42 = sext i8 %24 to i32
  %tobool43 = icmp ne i32 %conv42, 0
  br i1 %tobool43, label %land.rhs44, label %land.end48

land.rhs44:                                       ; preds = %land.lhs.true
  %25 = load i32, i32* %c, align 4
  %26 = load i8*, i8** %end_p, align 8
  %27 = load i8, i8* %26, align 1
  %conv45 = sext i8 %27 to i32
  %cmp46 = icmp eq i32 %25, %conv45
  br label %land.end48

land.end48:                                       ; preds = %land.rhs44, %land.lhs.true, %while.cond39
  %28 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond39 ], [ %cmp46, %land.rhs44 ]
  br i1 %28, label %while.body49, label %while.end51

while.body49:                                     ; preds = %land.end48
  %call50 = call i32 @getcFromInputFile()
  store i32 %call50, i32* %c, align 4
  %29 = load i8*, i8** %end_p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr, i8** %end_p, align 8
  br label %while.cond39

while.end51:                                      ; preds = %land.end48
  %30 = load i8*, i8** %end_p, align 8
  %31 = load i8, i8* %30, align 1
  %tobool52 = icmp ne i8 %31, 0
  br i1 %tobool52, label %if.else54, label %if.then53

if.then53:                                        ; preds = %while.end51
  br label %while.end59

if.else54:                                        ; preds = %while.end51
  %32 = load i32, i32* %c, align 4
  call void @ungetcToInputFile(i32 %32)
  %33 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %arraydecay55 = getelementptr inbounds [32 x i8], [32 x i8]* %tag, i64 0, i64 0
  %34 = load i8*, i8** %end_p, align 8
  %arraydecay56 = getelementptr inbounds [32 x i8], [32 x i8]* %tag, i64 0, i64 0
  %sub.ptr.lhs.cast = ptrtoint i8* %34 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %arraydecay56 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @vStringNCatS(%struct.sVString* %33, i8* %arraydecay55, i64 %sub.ptr.sub)
  br label %if.end57

if.end57:                                         ; preds = %if.else54
  br label %if.end58

if.end58:                                         ; preds = %if.end57, %if.then37
  br label %while.cond30

while.end59:                                      ; preds = %if.then53, %while.cond30
  store i32 14, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end59, %if.then28
  %35 = load i32, i32* %retval, align 4
  ret i32 %35
}

; Function Attrs: nounwind readonly
declare i32 @isalpha(i32) #3

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

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %lor.end, %do.end
  %1 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %2 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %1, i32 %2)
  %call = call i32 @getcFromInputFile()
  store i32 %call, i32* %c, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body1
  %3 = load i32, i32* %c, align 4
  %call2 = call i32 @isalpha(i32 %3) #4
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.cond
  %4 = load i32, i32* %c, align 4
  %call3 = call i32 @isdigit(i32 %4) #4
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %lor.end, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %5 = load i32, i32* %c, align 4
  %cmp = icmp eq i32 %5, 36
  br i1 %cmp, label %lor.end, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false5
  %6 = load i32, i32* %c, align 4
  %cmp7 = icmp eq i32 %6, 64
  br i1 %cmp7, label %lor.end, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %lor.lhs.false6
  %7 = load i32, i32* %c, align 4
  %cmp9 = icmp eq i32 %7, 95
  br i1 %cmp9, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false8
  %8 = load i32, i32* %c, align 4
  %cmp10 = icmp eq i32 %8, 35
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false8, %lor.lhs.false6, %lor.lhs.false5, %lor.lhs.false, %do.cond
  %9 = phi i1 [ true, %lor.lhs.false8 ], [ true, %lor.lhs.false6 ], [ true, %lor.lhs.false5 ], [ true, %lor.lhs.false ], [ true, %do.cond ], [ %cmp10, %lor.rhs ]
  br i1 %9, label %do.body1, label %do.end11

do.end11:                                         ; preds = %lor.end
  %10 = load i32, i32* %c, align 4
  %call12 = call i32 @isspace(i32 %10) #4
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.end, label %if.then

if.then:                                          ; preds = %do.end11
  %11 = load i32, i32* %c, align 4
  call void @ungetcToInputFile(i32 %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end11
  ret void
}

declare i32 @lookupCaseKeyword(i8*, i32) #1

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

declare void @vStringResize(%struct.sVString*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind readonly
declare i32 @isdigit(i32) #3

declare void @vStringNCatS(%struct.sVString*, i8*, i64) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @makeSqlTag(%struct.sTokenInfoSQL* %token, i32 %kind) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfoSQL*, align 8
  %kind.addr = alloca i32, align 4
  %name = alloca i8*, align 8
  %e = alloca %struct.sTagEntryInfo, align 8
  %fulltag = alloca %struct.sVString*, align 8
  %xe = alloca %struct.sTagEntryInfo, align 8
  store %struct.sTokenInfoSQL* %token, %struct.sTokenInfoSQL** %token.addr, align 8
  store i32 %kind, i32* %kind.addr, align 4
  %0 = load i32, i32* %kind.addr, align 4
  %idxprom = zext i32 %0 to i64
  %arrayidx = getelementptr inbounds [23 x %struct.sKindDefinition], [23 x %struct.sKindDefinition]* @SqlKinds, i64 0, i64 %idxprom
  %enabled = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %arrayidx, i32 0, i32 0
  %1 = load i8, i8* %enabled, align 8
  %tobool = trunc i8 %1 to i1
  br i1 %tobool, label %if.then, label %if.end16

if.then:                                          ; preds = %entry
  %2 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %string = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %2, i32 0, i32 2
  %3 = load %struct.sVString*, %struct.sVString** %string, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %3, i32 0, i32 2
  %4 = load i8*, i8** %buffer, align 8
  store i8* %4, i8** %name, align 8
  %5 = load i8*, i8** %name, align 8
  %6 = load i32, i32* %kind.addr, align 4
  call void @initTagEntry(%struct.sTagEntryInfo* %e, i8* %5, i32 %6)
  %7 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %lineNumber = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %7, i32 0, i32 6
  %8 = load i64, i64* %lineNumber, align 8
  %lineNumber1 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %e, i32 0, i32 1
  store i64 %8, i64* %lineNumber1, align 8
  %filePosition = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %e, i32 0, i32 4
  %9 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %filePosition2 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %9, i32 0, i32 7
  %10 = bitcast %struct._MIOPos* %filePosition to i8*
  %11 = bitcast %struct._MIOPos* %filePosition2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 16, i1 false)
  %12 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %scope = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %12, i32 0, i32 3
  %13 = load %struct.sVString*, %struct.sVString** %scope, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %13, i32 0, i32 0
  %14 = load i64, i64* %length, align 8
  %cmp = icmp ugt i64 %14, 0
  br i1 %cmp, label %if.then3, label %if.end14

if.then3:                                         ; preds = %if.then
  br label %do.body

do.body:                                          ; preds = %if.then3
  br label %do.end

do.end:                                           ; preds = %do.body
  %15 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %scopeKind = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %15, i32 0, i32 4
  %16 = load i32, i32* %scopeKind, align 8
  %extensionFields = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %e, i32 0, i32 11
  %scopeKindIndex = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields, i32 0, i32 5
  store i32 %16, i32* %scopeKindIndex, align 4
  %17 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %scope4 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %17, i32 0, i32 3
  %18 = load %struct.sVString*, %struct.sVString** %scope4, align 8
  %buffer5 = getelementptr inbounds %struct.sVString, %struct.sVString* %18, i32 0, i32 2
  %19 = load i8*, i8** %buffer5, align 8
  %extensionFields6 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %e, i32 0, i32 11
  %scopeName = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields6, i32 0, i32 6
  store i8* %19, i8** %scopeName, align 8
  %call = call zeroext i1 @isXtagEnabled(i32 3)
  br i1 %call, label %if.then7, label %if.end

if.then7:                                         ; preds = %do.end
  %20 = bitcast %struct.sTagEntryInfo* %xe to i8*
  %21 = bitcast %struct.sTagEntryInfo* %e to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 %21, i64 344, i1 false)
  %22 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %scope8 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %22, i32 0, i32 3
  %23 = load %struct.sVString*, %struct.sVString** %scope8, align 8
  %call9 = call %struct.sVString* @vStringNewCopy(%struct.sVString* %23)
  store %struct.sVString* %call9, %struct.sVString** %fulltag, align 8
  %24 = load %struct.sVString*, %struct.sVString** %fulltag, align 8
  call void @vStringPut(%struct.sVString* %24, i32 46)
  %25 = load %struct.sVString*, %struct.sVString** %fulltag, align 8
  %26 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %string10 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %26, i32 0, i32 2
  %27 = load %struct.sVString*, %struct.sVString** %string10, align 8
  call void @vStringCat(%struct.sVString* %25, %struct.sVString* %27)
  %28 = load %struct.sVString*, %struct.sVString** %fulltag, align 8
  %buffer11 = getelementptr inbounds %struct.sVString, %struct.sVString* %28, i32 0, i32 2
  %29 = load i8*, i8** %buffer11, align 8
  %name12 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %xe, i32 0, i32 7
  store i8* %29, i8** %name12, align 8
  call void @markTagExtraBit(%struct.sTagEntryInfo* %xe, i32 3)
  %call13 = call i32 @makeTagEntry(%struct.sTagEntryInfo* %xe)
  %30 = load %struct.sVString*, %struct.sVString** %fulltag, align 8
  call void @vStringDelete(%struct.sVString* %30)
  br label %if.end

if.end:                                           ; preds = %if.then7, %do.end
  br label %if.end14

if.end14:                                         ; preds = %if.end, %if.then
  %call15 = call i32 @makeTagEntry(%struct.sTagEntryInfo* %e)
  br label %if.end16

if.end16:                                         ; preds = %if.end14, %entry
  ret void
}

declare void @initTagEntry(%struct.sTagEntryInfo*, i8*, i32) #1

declare zeroext i1 @isXtagEnabled(i32) #1

declare %struct.sVString* @vStringNewCopy(%struct.sVString*) #1

declare void @vStringCat(%struct.sVString*, %struct.sVString*) #1

declare void @markTagExtraBit(%struct.sTagEntryInfo*, i32) #1

declare i32 @makeTagEntry(%struct.sTagEntryInfo*) #1

declare void @vStringDelete(%struct.sVString*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseBlock(%struct.sTokenInfoSQL* %token, i1 zeroext %local) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfoSQL*, align 8
  %local.addr = alloca i8, align 1
  store %struct.sTokenInfoSQL* %token, %struct.sTokenInfoSQL** %token.addr, align 8
  %frombool = zext i1 %local to i8
  store i8 %frombool, i8* %local.addr, align 1
  %0 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %0, i32 0, i32 0
  %1 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @parseLabel(%struct.sTokenInfoSQL* %2)
  %3 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @readToken(%struct.sTokenInfoSQL* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %4, i32 0, i32 1
  %5 = load i32, i32* %keyword, align 4
  %cmp1 = icmp eq i32 %5, 1
  br i1 %cmp1, label %if.end7, label %if.then2

if.then2:                                         ; preds = %if.end
  %6 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @readToken(%struct.sTokenInfoSQL* %6)
  %7 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type3 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %7, i32 0, i32 0
  %8 = load i32, i32* %type3, align 8
  %cmp4 = icmp eq i32 %8, 14
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then2
  br label %if.end6

if.else:                                          ; preds = %if.then2
  %9 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %10 = load i8, i8* %local.addr, align 1
  %tobool = trunc i8 %10 to i1
  call void @parseDeclare(%struct.sTokenInfoSQL* %9, i1 zeroext %tobool)
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then5
  br label %if.end7

if.end7:                                          ; preds = %if.end6, %if.end
  %11 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %keyword8 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %11, i32 0, i32 1
  %12 = load i32, i32* %keyword8, align 4
  %cmp9 = icmp eq i32 %12, 1
  br i1 %cmp9, label %if.then10, label %if.end22

if.then10:                                        ; preds = %if.end7
  %13 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @readToken(%struct.sTokenInfoSQL* %13)
  %14 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %15 = load i8, i8* %local.addr, align 1
  %tobool11 = trunc i8 %15 to i1
  call void @parseDeclareANSI(%struct.sTokenInfoSQL* %14, i1 zeroext %tobool11)
  %16 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %begin_end_nest_lvl = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %16, i32 0, i32 5
  %17 = load i32, i32* %begin_end_nest_lvl, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %begin_end_nest_lvl, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end17, %if.then10
  %18 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %keyword12 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %18, i32 0, i32 1
  %19 = load i32, i32* %keyword12, align 4
  %cmp13 = icmp eq i32 %19, 5
  br i1 %cmp13, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %20 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type14 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %20, i32 0, i32 0
  %21 = load i32, i32* %type14, align 8
  %cmp15 = icmp eq i32 %21, 1
  %lnot = xor i1 %cmp15, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %22 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %22, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %23 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @parseStatements(%struct.sTokenInfoSQL* %23, i1 zeroext false)
  %24 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %call = call zeroext i1 @isCmdTerm(%struct.sTokenInfoSQL* %24)
  br i1 %call, label %if.then16, label %if.end17

if.then16:                                        ; preds = %while.body
  %25 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @readToken(%struct.sTokenInfoSQL* %25)
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %while.body
  br label %while.cond

while.end:                                        ; preds = %land.end
  %26 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %begin_end_nest_lvl18 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %26, i32 0, i32 5
  %27 = load i32, i32* %begin_end_nest_lvl18, align 4
  %dec = add nsw i32 %27, -1
  store i32 %dec, i32* %begin_end_nest_lvl18, align 4
  %28 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @readToken(%struct.sTokenInfoSQL* %28)
  %29 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %call19 = call zeroext i1 @isCmdTerm(%struct.sTokenInfoSQL* %29)
  br i1 %call19, label %if.end21, label %if.then20

if.then20:                                        ; preds = %while.end
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %while.end
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.end7
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseComment(%struct.sTokenInfoSQL* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfoSQL*, align 8
  store %struct.sTokenInfoSQL* %token, %struct.sTokenInfoSQL** %token.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %0, i32 0, i32 1
  %1 = load i32, i32* %keyword, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %2 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %2, i32 0, i32 0
  %3 = load i32, i32* %type, align 8
  %cmp1 = icmp eq i32 %3, 1
  %lnot = xor i1 %cmp1, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %4 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %4, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %5 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @readToken(%struct.sTokenInfoSQL* %5)
  br label %while.cond

while.end:                                        ; preds = %land.end
  %6 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @readToken(%struct.sTokenInfoSQL* %6)
  %7 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type2 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %7, i32 0, i32 0
  %8 = load i32, i32* %type2, align 8
  %cmp3 = icmp eq i32 %8, 16
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %9 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @findToken(%struct.sTokenInfoSQL* %9, i32 17)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  %10 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @findCmdTerm(%struct.sTokenInfoSQL* %10, i1 zeroext true)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseSimple(%struct.sTokenInfoSQL* %token, i32 %kind) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfoSQL*, align 8
  %kind.addr = alloca i32, align 4
  store %struct.sTokenInfoSQL* %token, %struct.sTokenInfoSQL** %token.addr, align 8
  store i32 %kind, i32* %kind.addr, align 4
  %0 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @readToken(%struct.sTokenInfoSQL* %0)
  %1 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %1, i32 0, i32 0
  %2 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %2, 9
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type1 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %3, i32 0, i32 0
  %4 = load i32, i32* %type1, align 8
  %cmp2 = icmp eq i32 %4, 14
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %5 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %6 = load i32, i32* %kind.addr, align 4
  call void @makeSqlTag(%struct.sTokenInfoSQL* %5, i32 %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseDomain(%struct.sTokenInfoSQL* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfoSQL*, align 8
  %name = alloca %struct.sTokenInfoSQL*, align 8
  store %struct.sTokenInfoSQL* %token, %struct.sTokenInfoSQL** %token.addr, align 8
  %call = call %struct.sTokenInfoSQL* @newToken()
  store %struct.sTokenInfoSQL* %call, %struct.sTokenInfoSQL** %name, align 8
  %0 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %name, align 8
  call void @readIdentifier(%struct.sTokenInfoSQL* %0)
  %1 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %name, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %1, i32 0, i32 1
  %2 = load i32, i32* %keyword, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %name, align 8
  call void @readIdentifier(%struct.sTokenInfoSQL* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @readToken(%struct.sTokenInfoSQL* %4)
  %5 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %name, align 8
  %type = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %5, i32 0, i32 0
  %6 = load i32, i32* %type, align 8
  %cmp1 = icmp eq i32 %6, 9
  br i1 %cmp1, label %if.then4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %7 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %name, align 8
  %type2 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %7, i32 0, i32 0
  %8 = load i32, i32* %type2, align 8
  %cmp3 = icmp eq i32 %8, 14
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %lor.lhs.false, %if.end
  %9 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %name, align 8
  call void @makeSqlTag(%struct.sTokenInfoSQL* %9, i32 17)
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %lor.lhs.false
  %10 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @findCmdTerm(%struct.sTokenInfoSQL* %10, i1 zeroext false)
  %11 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %name, align 8
  call void @deleteToken(%struct.sTokenInfoSQL* %11)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseDrop(%struct.sTokenInfoSQL* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfoSQL*, align 8
  store %struct.sTokenInfoSQL* %token, %struct.sTokenInfoSQL** %token.addr, align 8
  %0 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @findCmdTerm(%struct.sTokenInfoSQL* %0, i1 zeroext false)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseEvent(%struct.sTokenInfoSQL* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfoSQL*, align 8
  %name = alloca %struct.sTokenInfoSQL*, align 8
  store %struct.sTokenInfoSQL* %token, %struct.sTokenInfoSQL** %token.addr, align 8
  %call = call %struct.sTokenInfoSQL* @newToken()
  store %struct.sTokenInfoSQL* %call, %struct.sTokenInfoSQL** %name, align 8
  %0 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %name, align 8
  call void @readIdentifier(%struct.sTokenInfoSQL* %0)
  %1 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @readToken(%struct.sTokenInfoSQL* %1)
  %2 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %2, i32 0, i32 0
  %3 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %3, 15
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %name, align 8
  call void @readIdentifier(%struct.sTokenInfoSQL* %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %5 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %5, i32 0, i32 1
  %6 = load i32, i32* %keyword, align 4
  %cmp1 = icmp eq i32 %6, 68
  br i1 %cmp1, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.cond
  %7 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type2 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %7, i32 0, i32 0
  %8 = load i32, i32* %type2, align 8
  %cmp3 = icmp eq i32 %8, 7
  br i1 %cmp3, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true
  %9 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type4 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %9, i32 0, i32 0
  %10 = load i32, i32* %type4, align 8
  %cmp5 = icmp eq i32 %10, 1
  %lnot = xor i1 %cmp5, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %11 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %11, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %12 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @readToken(%struct.sTokenInfoSQL* %12)
  br label %while.cond

while.end:                                        ; preds = %land.end
  %13 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %keyword6 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %13, i32 0, i32 1
  %14 = load i32, i32* %keyword6, align 4
  %cmp7 = icmp eq i32 %14, 68
  br i1 %cmp7, label %if.then10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end
  %15 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type8 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %15, i32 0, i32 0
  %16 = load i32, i32* %type8, align 8
  %cmp9 = icmp eq i32 %16, 7
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %lor.lhs.false, %while.end
  %17 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %name, align 8
  call void @makeSqlTag(%struct.sTokenInfoSQL* %17, i32 14)
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %lor.lhs.false
  %18 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %keyword12 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %18, i32 0, i32 1
  %19 = load i32, i32* %keyword12, align 4
  %cmp13 = icmp eq i32 %19, 68
  br i1 %cmp13, label %if.then14, label %if.end19

if.then14:                                        ; preds = %if.end11
  %20 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @readToken(%struct.sTokenInfoSQL* %20)
  %21 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %keyword15 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %21, i32 0, i32 1
  %22 = load i32, i32* %keyword15, align 4
  %cmp16 = icmp eq i32 %22, 1
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.then14
  %23 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @parseBlock(%struct.sTokenInfoSQL* %23, i1 zeroext true)
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.then14
  %24 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @findCmdTerm(%struct.sTokenInfoSQL* %24, i1 zeroext true)
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.end11
  %25 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %name, align 8
  call void @deleteToken(%struct.sTokenInfoSQL* %25)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseSubProgram(%struct.sTokenInfoSQL* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfoSQL*, align 8
  %name = alloca %struct.sTokenInfoSQL*, align 8
  %saveScope = alloca %struct.sVString*, align 8
  %saveScopeKind = alloca i32, align 4
  %kind = alloca i32, align 4
  %vStringClear_s = alloca %struct.sVString*, align 8
  %vStringClear_s112 = alloca %struct.sVString*, align 8
  store %struct.sTokenInfoSQL* %token, %struct.sTokenInfoSQL** %token.addr, align 8
  %call = call %struct.sTokenInfoSQL* @newToken()
  store %struct.sTokenInfoSQL* %call, %struct.sTokenInfoSQL** %name, align 8
  %call1 = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call1, %struct.sVString** %saveScope, align 8
  %0 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %0, i32 0, i32 1
  %1 = load i32, i32* %keyword, align 4
  %cmp = icmp eq i32 %1, 6
  %2 = zext i1 %cmp to i64
  %cond = select i1 %cmp, i32 2, i32 7
  store i32 %cond, i32* %kind, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %3 = load %struct.sVString*, %struct.sVString** %saveScope, align 8
  %4 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %scope = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %4, i32 0, i32 3
  %5 = load %struct.sVString*, %struct.sVString** %scope, align 8
  call void @vStringCopy(%struct.sVString* %3, %struct.sVString* %5)
  %6 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %scopeKind = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %6, i32 0, i32 4
  %7 = load i32, i32* %scopeKind, align 8
  store i32 %7, i32* %saveScopeKind, align 4
  %8 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @readToken(%struct.sTokenInfoSQL* %8)
  %9 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %name, align 8
  %10 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @copyToken(%struct.sTokenInfoSQL* %9, %struct.sTokenInfoSQL* %10)
  %11 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @readToken(%struct.sTokenInfoSQL* %11)
  %12 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %12, i32 0, i32 0
  %13 = load i32, i32* %type, align 8
  %cmp2 = icmp eq i32 %13, 15
  br i1 %cmp2, label %if.then, label %if.end5

if.then:                                          ; preds = %do.end
  %14 = load %struct.sVString*, %struct.sVString** %saveScope, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %14, i32 0, i32 0
  %15 = load i64, i64* %length, align 8
  %cmp3 = icmp ugt i64 %15, 0
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  %16 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %17 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %name, align 8
  %string = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %17, i32 0, i32 2
  %18 = load %struct.sVString*, %struct.sVString** %string, align 8
  %19 = load i32, i32* %kind, align 4
  call void @addToScope(%struct.sTokenInfoSQL* %16, %struct.sVString* %18, i32 %19)
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then
  %20 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @readToken(%struct.sTokenInfoSQL* %20)
  %21 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %name, align 8
  %22 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @copyToken(%struct.sTokenInfoSQL* %21, %struct.sTokenInfoSQL* %22)
  %23 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @readToken(%struct.sTokenInfoSQL* %23)
  br label %if.end5

if.end5:                                          ; preds = %if.end, %do.end
  %24 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type6 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %24, i32 0, i32 0
  %25 = load i32, i32* %type6, align 8
  %cmp7 = icmp eq i32 %25, 11
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end5
  %26 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @skipArgumentList(%struct.sTokenInfoSQL* %26)
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end5
  %27 = load i32, i32* %kind, align 4
  %cmp10 = icmp eq i32 %27, 2
  br i1 %cmp10, label %if.then11, label %if.end22

if.then11:                                        ; preds = %if.end9
  %28 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %keyword12 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %28, i32 0, i32 1
  %29 = load i32, i32* %keyword12, align 4
  %cmp13 = icmp eq i32 %29, 24
  br i1 %cmp13, label %if.then16, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then11
  %30 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %keyword14 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %30, i32 0, i32 1
  %31 = load i32, i32* %keyword14, align 4
  %cmp15 = icmp eq i32 %31, 25
  br i1 %cmp15, label %if.then16, label %if.end21

if.then16:                                        ; preds = %lor.lhs.false, %if.then11
  %32 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @readToken(%struct.sTokenInfoSQL* %32)
  %33 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @readToken(%struct.sTokenInfoSQL* %33)
  %34 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type17 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %34, i32 0, i32 0
  %35 = load i32, i32* %type17, align 8
  %cmp18 = icmp eq i32 %35, 11
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.then16
  %36 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @skipArgumentList(%struct.sTokenInfoSQL* %36)
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.then16
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %lor.lhs.false
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.end9
  %37 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %call23 = call zeroext i1 @isCmdTerm(%struct.sTokenInfoSQL* %37)
  br i1 %call23, label %if.then24, label %if.else

if.then24:                                        ; preds = %if.end22
  %38 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %name, align 8
  call void @makeSqlTag(%struct.sTokenInfoSQL* %38, i32 1)
  br label %if.end120

if.else:                                          ; preds = %if.end22
  br label %while.cond

while.cond:                                       ; preds = %if.end56, %if.else
  %39 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %keyword25 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %39, i32 0, i32 1
  %40 = load i32, i32* %keyword25, align 4
  %cmp26 = icmp eq i32 %40, 0
  br i1 %cmp26, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.cond
  %41 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %keyword27 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %41, i32 0, i32 1
  %42 = load i32, i32* %keyword27, align 4
  %cmp28 = icmp eq i32 %42, 1
  br i1 %cmp28, label %land.end, label %land.lhs.true29

land.lhs.true29:                                  ; preds = %land.lhs.true
  %43 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %keyword30 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %43, i32 0, i32 1
  %44 = load i32, i32* %keyword30, align 4
  %cmp31 = icmp eq i32 %44, 44
  br i1 %cmp31, label %land.end, label %land.lhs.true32

land.lhs.true32:                                  ; preds = %land.lhs.true29
  %45 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %keyword33 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %45, i32 0, i32 1
  %46 = load i32, i32* %keyword33, align 4
  %cmp34 = icmp eq i32 %46, 38
  br i1 %cmp34, label %land.end, label %land.lhs.true35

land.lhs.true35:                                  ; preds = %land.lhs.true32
  %47 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %keyword36 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %47, i32 0, i32 1
  %48 = load i32, i32* %keyword36, align 4
  %cmp37 = icmp eq i32 %48, 39
  br i1 %cmp37, label %land.end, label %land.lhs.true38

land.lhs.true38:                                  ; preds = %land.lhs.true35
  %49 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %keyword39 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %49, i32 0, i32 1
  %50 = load i32, i32* %keyword39, align 4
  %cmp40 = icmp eq i32 %50, 37
  br i1 %cmp40, label %land.end, label %land.lhs.true41

land.lhs.true41:                                  ; preds = %land.lhs.true38
  %51 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type42 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %51, i32 0, i32 0
  %52 = load i32, i32* %type42, align 8
  %cmp43 = icmp eq i32 %52, 22
  br i1 %cmp43, label %land.end, label %land.lhs.true44

land.lhs.true44:                                  ; preds = %land.lhs.true41
  %53 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type45 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %53, i32 0, i32 0
  %54 = load i32, i32* %type45, align 8
  %cmp46 = icmp eq i32 %54, 1
  br i1 %cmp46, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true44
  %55 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %call47 = call zeroext i1 @isCmdTerm(%struct.sTokenInfoSQL* %55)
  %lnot = xor i1 %call47, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true44, %land.lhs.true41, %land.lhs.true38, %land.lhs.true35, %land.lhs.true32, %land.lhs.true29, %land.lhs.true, %while.cond
  %56 = phi i1 [ false, %land.lhs.true44 ], [ false, %land.lhs.true41 ], [ false, %land.lhs.true38 ], [ false, %land.lhs.true35 ], [ false, %land.lhs.true32 ], [ false, %land.lhs.true29 ], [ false, %land.lhs.true ], [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %56, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %57 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %keyword48 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %57, i32 0, i32 1
  %58 = load i32, i32* %keyword48, align 4
  %cmp49 = icmp eq i32 %58, 36
  br i1 %cmp49, label %if.then50, label %if.else55

if.then50:                                        ; preds = %while.body
  %59 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @readToken(%struct.sTokenInfoSQL* %59)
  %60 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type51 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %60, i32 0, i32 0
  %61 = load i32, i32* %type51, align 8
  %cmp52 = icmp eq i32 %61, 11
  br i1 %cmp52, label %if.then53, label %if.end54

if.then53:                                        ; preds = %if.then50
  %62 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @skipArgumentList(%struct.sTokenInfoSQL* %62)
  br label %if.end54

if.end54:                                         ; preds = %if.then53, %if.then50
  br label %if.end56

if.else55:                                        ; preds = %while.body
  %63 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @readToken(%struct.sTokenInfoSQL* %63)
  br label %if.end56

if.end56:                                         ; preds = %if.else55, %if.end54
  br label %while.cond

while.end:                                        ; preds = %land.end
  %64 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %keyword57 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %64, i32 0, i32 1
  %65 = load i32, i32* %keyword57, align 4
  %cmp58 = icmp eq i32 %65, 44
  br i1 %cmp58, label %if.then68, label %lor.lhs.false59

lor.lhs.false59:                                  ; preds = %while.end
  %66 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %keyword60 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %66, i32 0, i32 1
  %67 = load i32, i32* %keyword60, align 4
  %cmp61 = icmp eq i32 %67, 37
  br i1 %cmp61, label %if.then68, label %lor.lhs.false62

lor.lhs.false62:                                  ; preds = %lor.lhs.false59
  %68 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %keyword63 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %68, i32 0, i32 1
  %69 = load i32, i32* %keyword63, align 4
  %cmp64 = icmp eq i32 %69, 38
  br i1 %cmp64, label %if.then68, label %lor.lhs.false65

lor.lhs.false65:                                  ; preds = %lor.lhs.false62
  %70 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %keyword66 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %70, i32 0, i32 1
  %71 = load i32, i32* %keyword66, align 4
  %cmp67 = icmp eq i32 %71, 39
  br i1 %cmp67, label %if.then68, label %if.end85

if.then68:                                        ; preds = %lor.lhs.false65, %lor.lhs.false62, %lor.lhs.false59, %while.end
  %72 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %73 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %name, align 8
  %string69 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %73, i32 0, i32 2
  %74 = load %struct.sVString*, %struct.sVString** %string69, align 8
  %75 = load i32, i32* %kind, align 4
  call void @addToScope(%struct.sTokenInfoSQL* %72, %struct.sVString* %74, i32 %75)
  %76 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %name, align 8
  %type70 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %76, i32 0, i32 0
  %77 = load i32, i32* %type70, align 8
  %cmp71 = icmp eq i32 %77, 9
  br i1 %cmp71, label %if.then78, label %lor.lhs.false72

lor.lhs.false72:                                  ; preds = %if.then68
  %78 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %name, align 8
  %type73 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %78, i32 0, i32 0
  %79 = load i32, i32* %type73, align 8
  %cmp74 = icmp eq i32 %79, 14
  br i1 %cmp74, label %if.then78, label %lor.lhs.false75

lor.lhs.false75:                                  ; preds = %lor.lhs.false72
  %80 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %name, align 8
  %type76 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %80, i32 0, i32 0
  %81 = load i32, i32* %type76, align 8
  %cmp77 = icmp eq i32 %81, 10
  br i1 %cmp77, label %if.then78, label %if.end79

if.then78:                                        ; preds = %lor.lhs.false75, %lor.lhs.false72, %if.then68
  %82 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %name, align 8
  %83 = load i32, i32* %kind, align 4
  call void @makeSqlTag(%struct.sTokenInfoSQL* %82, i32 %83)
  br label %if.end79

if.end79:                                         ; preds = %if.then78, %lor.lhs.false75
  br label %do.body80

do.body80:                                        ; preds = %if.end79
  %84 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %scope81 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %84, i32 0, i32 3
  %85 = load %struct.sVString*, %struct.sVString** %scope81, align 8
  store %struct.sVString* %85, %struct.sVString** %vStringClear_s, align 8
  %86 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %length82 = getelementptr inbounds %struct.sVString, %struct.sVString* %86, i32 0, i32 0
  store i64 0, i64* %length82, align 8
  %87 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %87, i32 0, i32 2
  %88 = load i8*, i8** %buffer, align 8
  %arrayidx = getelementptr inbounds i8, i8* %88, i64 0
  store i8 0, i8* %arrayidx, align 1
  br label %do.end83

do.end83:                                         ; preds = %do.body80
  %89 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %scopeKind84 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %89, i32 0, i32 4
  store i32 23, i32* %scopeKind84, align 8
  br label %if.end85

if.end85:                                         ; preds = %do.end83, %lor.lhs.false65
  %90 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type86 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %90, i32 0, i32 0
  %91 = load i32, i32* %type86, align 8
  %cmp87 = icmp eq i32 %91, 22
  br i1 %cmp87, label %if.then88, label %if.end89

if.then88:                                        ; preds = %if.end85
  %92 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @readToken(%struct.sTokenInfoSQL* %92)
  br label %if.end89

if.end89:                                         ; preds = %if.then88, %if.end85
  %93 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %keyword90 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %93, i32 0, i32 1
  %94 = load i32, i32* %keyword90, align 4
  %cmp91 = icmp eq i32 %94, 4
  br i1 %cmp91, label %if.then92, label %if.end93

if.then92:                                        ; preds = %if.end89
  %95 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @parseDeclare(%struct.sTokenInfoSQL* %95, i1 zeroext false)
  br label %if.end93

if.end93:                                         ; preds = %if.then92, %if.end89
  %96 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %keyword94 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %96, i32 0, i32 1
  %97 = load i32, i32* %keyword94, align 4
  %cmp95 = icmp eq i32 %97, 0
  br i1 %cmp95, label %if.then99, label %lor.lhs.false96

lor.lhs.false96:                                  ; preds = %if.end93
  %98 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %keyword97 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %98, i32 0, i32 1
  %99 = load i32, i32* %keyword97, align 4
  %cmp98 = icmp eq i32 %99, 1
  br i1 %cmp98, label %if.then99, label %if.end119

if.then99:                                        ; preds = %lor.lhs.false96, %if.end93
  %100 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %101 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %name, align 8
  %string100 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %101, i32 0, i32 2
  %102 = load %struct.sVString*, %struct.sVString** %string100, align 8
  %103 = load i32, i32* %kind, align 4
  call void @addToScope(%struct.sTokenInfoSQL* %100, %struct.sVString* %102, i32 %103)
  %104 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %name, align 8
  %type101 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %104, i32 0, i32 0
  %105 = load i32, i32* %type101, align 8
  %cmp102 = icmp eq i32 %105, 9
  br i1 %cmp102, label %if.then109, label %lor.lhs.false103

lor.lhs.false103:                                 ; preds = %if.then99
  %106 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %name, align 8
  %type104 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %106, i32 0, i32 0
  %107 = load i32, i32* %type104, align 8
  %cmp105 = icmp eq i32 %107, 14
  br i1 %cmp105, label %if.then109, label %lor.lhs.false106

lor.lhs.false106:                                 ; preds = %lor.lhs.false103
  %108 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %name, align 8
  %type107 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %108, i32 0, i32 0
  %109 = load i32, i32* %type107, align 8
  %cmp108 = icmp eq i32 %109, 10
  br i1 %cmp108, label %if.then109, label %if.end110

if.then109:                                       ; preds = %lor.lhs.false106, %lor.lhs.false103, %if.then99
  %110 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %name, align 8
  %111 = load i32, i32* %kind, align 4
  call void @makeSqlTag(%struct.sTokenInfoSQL* %110, i32 %111)
  br label %if.end110

if.end110:                                        ; preds = %if.then109, %lor.lhs.false106
  %112 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @parseBlock(%struct.sTokenInfoSQL* %112, i1 zeroext true)
  br label %do.body111

do.body111:                                       ; preds = %if.end110
  %113 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %scope113 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %113, i32 0, i32 3
  %114 = load %struct.sVString*, %struct.sVString** %scope113, align 8
  store %struct.sVString* %114, %struct.sVString** %vStringClear_s112, align 8
  %115 = load %struct.sVString*, %struct.sVString** %vStringClear_s112, align 8
  %length114 = getelementptr inbounds %struct.sVString, %struct.sVString* %115, i32 0, i32 0
  store i64 0, i64* %length114, align 8
  %116 = load %struct.sVString*, %struct.sVString** %vStringClear_s112, align 8
  %buffer115 = getelementptr inbounds %struct.sVString, %struct.sVString* %116, i32 0, i32 2
  %117 = load i8*, i8** %buffer115, align 8
  %arrayidx116 = getelementptr inbounds i8, i8* %117, i64 0
  store i8 0, i8* %arrayidx116, align 1
  br label %do.end117

do.end117:                                        ; preds = %do.body111
  %118 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %scopeKind118 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %118, i32 0, i32 4
  store i32 23, i32* %scopeKind118, align 8
  br label %if.end119

if.end119:                                        ; preds = %do.end117, %lor.lhs.false96
  br label %if.end120

if.end120:                                        ; preds = %if.end119, %if.then24
  %119 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %scope121 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %119, i32 0, i32 3
  %120 = load %struct.sVString*, %struct.sVString** %scope121, align 8
  %121 = load %struct.sVString*, %struct.sVString** %saveScope, align 8
  call void @vStringCopy(%struct.sVString* %120, %struct.sVString* %121)
  %122 = load i32, i32* %saveScopeKind, align 4
  %123 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %scopeKind122 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %123, i32 0, i32 4
  store i32 %122, i32* %scopeKind122, align 8
  %124 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %name, align 8
  call void @deleteToken(%struct.sTokenInfoSQL* %124)
  %125 = load %struct.sVString*, %struct.sVString** %saveScope, align 8
  call void @vStringDelete(%struct.sVString* %125)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseStatements(%struct.sTokenInfoSQL* %token, i1 zeroext %exit_on_endif) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfoSQL*, align 8
  %exit_on_endif.addr = alloca i8, align 1
  %stmtTerm = alloca i8, align 1
  store %struct.sTokenInfoSQL* %token, %struct.sTokenInfoSQL** %token.addr, align 8
  %frombool = zext i1 %exit_on_endif to i8
  store i8 %frombool, i8* %exit_on_endif.addr, align 1
  store i8 0, i8* %stmtTerm, align 1
  br label %do.body

do.body:                                          ; preds = %land.end206, %entry
  %0 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %0, i32 0, i32 0
  %1 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %2 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @parseLabel(%struct.sTokenInfoSQL* %2)
  br label %if.end187

if.else:                                          ; preds = %do.body
  %3 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %3, i32 0, i32 1
  %4 = load i32, i32* %keyword, align 4
  switch i32 %4, label %sw.default [
    i32 43, label %sw.bb
    i32 40, label %sw.bb1
    i32 7, label %sw.bb6
    i32 11, label %sw.bb62
    i32 13, label %sw.bb62
    i32 14, label %sw.bb62
    i32 70, label %sw.bb117
    i32 4, label %sw.bb118
    i32 1, label %sw.bb118
    i32 5, label %sw.bb119
  ]

sw.bb:                                            ; preds = %if.else
  %5 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @readToken(%struct.sTokenInfoSQL* %5)
  br label %do.cond

sw.bb1:                                           ; preds = %if.else
  br label %while.cond

while.cond:                                       ; preds = %while.body, %sw.bb1
  %6 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %keyword2 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %6, i32 0, i32 1
  %7 = load i32, i32* %keyword2, align 4
  %cmp3 = icmp eq i32 %7, 41
  br i1 %cmp3, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %8 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type4 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %8, i32 0, i32 0
  %9 = load i32, i32* %type4, align 8
  %cmp5 = icmp eq i32 %9, 1
  %lnot = xor i1 %cmp5, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %10 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %10, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %11 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @readToken(%struct.sTokenInfoSQL* %11)
  br label %while.cond

while.end:                                        ; preds = %land.end
  %12 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @readToken(%struct.sTokenInfoSQL* %12)
  br label %do.cond

sw.bb6:                                           ; preds = %if.else
  br label %while.cond7

while.cond7:                                      ; preds = %while.body17, %sw.bb6
  %13 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %keyword8 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %13, i32 0, i32 1
  %14 = load i32, i32* %keyword8, align 4
  %cmp9 = icmp eq i32 %14, 41
  br i1 %cmp9, label %land.end16, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.cond7
  %15 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %keyword10 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %15, i32 0, i32 1
  %16 = load i32, i32* %keyword10, align 4
  %cmp11 = icmp eq i32 %16, 1
  br i1 %cmp11, label %land.end16, label %land.rhs12

land.rhs12:                                       ; preds = %land.lhs.true
  %17 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type13 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %17, i32 0, i32 0
  %18 = load i32, i32* %type13, align 8
  %cmp14 = icmp eq i32 %18, 1
  %lnot15 = xor i1 %cmp14, true
  br label %land.end16

land.end16:                                       ; preds = %land.rhs12, %land.lhs.true, %while.cond7
  %19 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond7 ], [ %lnot15, %land.rhs12 ]
  br i1 %19, label %while.body17, label %while.end18

while.body17:                                     ; preds = %land.end16
  %20 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @readToken(%struct.sTokenInfoSQL* %20)
  br label %while.cond7

while.end18:                                      ; preds = %land.end16
  %21 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %keyword19 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %21, i32 0, i32 1
  %22 = load i32, i32* %keyword19, align 4
  %cmp20 = icmp eq i32 %22, 1
  br i1 %cmp20, label %if.then21, label %if.else23

if.then21:                                        ; preds = %while.end18
  %23 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @parseBlock(%struct.sTokenInfoSQL* %23, i1 zeroext false)
  %24 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %call = call zeroext i1 @isCmdTerm(%struct.sTokenInfoSQL* %24)
  br i1 %call, label %if.then22, label %if.end

if.then22:                                        ; preds = %if.then21
  store i8 1, i8* %stmtTerm, align 1
  br label %if.end

if.end:                                           ; preds = %if.then22, %if.then21
  br label %if.end61

if.else23:                                        ; preds = %while.end18
  %25 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @readToken(%struct.sTokenInfoSQL* %25)
  br label %while.cond24

while.cond24:                                     ; preds = %if.end44, %if.else23
  %26 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %keyword25 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %26, i32 0, i32 1
  %27 = load i32, i32* %keyword25, align 4
  %cmp26 = icmp eq i32 %27, 5
  br i1 %cmp26, label %land.end34, label %land.lhs.true27

land.lhs.true27:                                  ; preds = %while.cond24
  %28 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %keyword28 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %28, i32 0, i32 1
  %29 = load i32, i32* %keyword28, align 4
  %cmp29 = icmp eq i32 %29, 10
  br i1 %cmp29, label %land.end34, label %land.rhs30

land.rhs30:                                       ; preds = %land.lhs.true27
  %30 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type31 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %30, i32 0, i32 0
  %31 = load i32, i32* %type31, align 8
  %cmp32 = icmp eq i32 %31, 1
  %lnot33 = xor i1 %cmp32, true
  br label %land.end34

land.end34:                                       ; preds = %land.rhs30, %land.lhs.true27, %while.cond24
  %32 = phi i1 [ false, %land.lhs.true27 ], [ false, %while.cond24 ], [ %lnot33, %land.rhs30 ]
  br i1 %32, label %while.body35, label %while.end45

while.body35:                                     ; preds = %land.end34
  %33 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %keyword36 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %33, i32 0, i32 1
  %34 = load i32, i32* %keyword36, align 4
  %cmp37 = icmp eq i32 %34, 8
  br i1 %cmp37, label %if.then40, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body35
  %35 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %keyword38 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %35, i32 0, i32 1
  %36 = load i32, i32* %keyword38, align 4
  %cmp39 = icmp eq i32 %36, 9
  br i1 %cmp39, label %if.then40, label %if.end41

if.then40:                                        ; preds = %lor.lhs.false, %while.body35
  %37 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @readToken(%struct.sTokenInfoSQL* %37)
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %lor.lhs.false
  %38 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @parseStatements(%struct.sTokenInfoSQL* %38, i1 zeroext true)
  %39 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %call42 = call zeroext i1 @isCmdTerm(%struct.sTokenInfoSQL* %39)
  br i1 %call42, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.end41
  %40 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @readToken(%struct.sTokenInfoSQL* %40)
  br label %if.end44

if.end44:                                         ; preds = %if.then43, %if.end41
  br label %while.cond24

while.end45:                                      ; preds = %land.end34
  %41 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %keyword46 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %41, i32 0, i32 1
  %42 = load i32, i32* %keyword46, align 4
  %cmp47 = icmp eq i32 %42, 5
  br i1 %cmp47, label %if.then48, label %if.end49

if.then48:                                        ; preds = %while.end45
  %43 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @readToken(%struct.sTokenInfoSQL* %43)
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %while.end45
  %44 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %keyword50 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %44, i32 0, i32 1
  %45 = load i32, i32* %keyword50, align 4
  %cmp51 = icmp eq i32 %45, 7
  br i1 %cmp51, label %if.then55, label %lor.lhs.false52

lor.lhs.false52:                                  ; preds = %if.end49
  %46 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %keyword53 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %46, i32 0, i32 1
  %47 = load i32, i32* %keyword53, align 4
  %cmp54 = icmp eq i32 %47, 10
  br i1 %cmp54, label %if.then55, label %if.else59

if.then55:                                        ; preds = %lor.lhs.false52, %if.end49
  %48 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @readToken(%struct.sTokenInfoSQL* %48)
  %49 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %call56 = call zeroext i1 @isCmdTerm(%struct.sTokenInfoSQL* %49)
  br i1 %call56, label %if.then57, label %if.end58

if.then57:                                        ; preds = %if.then55
  store i8 1, i8* %stmtTerm, align 1
  br label %if.end58

if.end58:                                         ; preds = %if.then57, %if.then55
  br label %if.end60

if.else59:                                        ; preds = %lor.lhs.false52
  br label %if.end60

if.end60:                                         ; preds = %if.else59, %if.end58
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %if.end
  br label %sw.epilog

sw.bb62:                                          ; preds = %if.else, %if.else, %if.else
  %50 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %keyword63 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %50, i32 0, i32 1
  %51 = load i32, i32* %keyword63, align 4
  %cmp64 = icmp eq i32 %51, 14
  br i1 %cmp64, label %if.then65, label %if.end86

if.then65:                                        ; preds = %sw.bb62
  %52 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @readToken(%struct.sTokenInfoSQL* %52)
  %53 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @readToken(%struct.sTokenInfoSQL* %53)
  br label %while.cond66

while.cond66:                                     ; preds = %if.then65
  %54 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %keyword67 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %54, i32 0, i32 1
  %55 = load i32, i32* %keyword67, align 4
  %cmp68 = icmp eq i32 %55, 0
  br i1 %cmp68, label %land.end73, label %land.rhs69

land.rhs69:                                       ; preds = %while.cond66
  %56 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type70 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %56, i32 0, i32 0
  %57 = load i32, i32* %type70, align 8
  %cmp71 = icmp eq i32 %57, 1
  %lnot72 = xor i1 %cmp71, true
  br label %land.end73

land.end73:                                       ; preds = %land.rhs69, %while.cond66
  %58 = phi i1 [ false, %while.cond66 ], [ %lnot72, %land.rhs69 ]
  br i1 %58, label %while.body74, label %while.end75

while.body74:                                     ; preds = %land.end73
  br label %do.end

while.end75:                                      ; preds = %land.end73
  br label %while.cond76

while.cond76:                                     ; preds = %while.body84, %while.end75
  %59 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %keyword77 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %59, i32 0, i32 1
  %60 = load i32, i32* %keyword77, align 4
  %cmp78 = icmp eq i32 %60, 15
  br i1 %cmp78, label %land.end83, label %land.rhs79

land.rhs79:                                       ; preds = %while.cond76
  %61 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type80 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %61, i32 0, i32 0
  %62 = load i32, i32* %type80, align 8
  %cmp81 = icmp eq i32 %62, 1
  %lnot82 = xor i1 %cmp81, true
  br label %land.end83

land.end83:                                       ; preds = %land.rhs79, %while.cond76
  %63 = phi i1 [ false, %while.cond76 ], [ %lnot82, %land.rhs79 ]
  br i1 %63, label %while.body84, label %while.end85

while.body84:                                     ; preds = %land.end83
  %64 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @readToken(%struct.sTokenInfoSQL* %64)
  br label %while.cond76

while.end85:                                      ; preds = %land.end83
  br label %if.end86

if.end86:                                         ; preds = %while.end85, %sw.bb62
  %65 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @readToken(%struct.sTokenInfoSQL* %65)
  br label %while.cond87

while.cond87:                                     ; preds = %if.end98, %if.end86
  %66 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %keyword88 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %66, i32 0, i32 1
  %67 = load i32, i32* %keyword88, align 4
  %cmp89 = icmp eq i32 %67, 5
  br i1 %cmp89, label %land.end94, label %land.rhs90

land.rhs90:                                       ; preds = %while.cond87
  %68 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type91 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %68, i32 0, i32 0
  %69 = load i32, i32* %type91, align 8
  %cmp92 = icmp eq i32 %69, 1
  %lnot93 = xor i1 %cmp92, true
  br label %land.end94

land.end94:                                       ; preds = %land.rhs90, %while.cond87
  %70 = phi i1 [ false, %while.cond87 ], [ %lnot93, %land.rhs90 ]
  br i1 %70, label %while.body95, label %while.end99

while.body95:                                     ; preds = %land.end94
  %71 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @parseStatements(%struct.sTokenInfoSQL* %71, i1 zeroext false)
  %72 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %call96 = call zeroext i1 @isCmdTerm(%struct.sTokenInfoSQL* %72)
  br i1 %call96, label %if.then97, label %if.end98

if.then97:                                        ; preds = %while.body95
  %73 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @readToken(%struct.sTokenInfoSQL* %73)
  br label %if.end98

if.end98:                                         ; preds = %if.then97, %while.body95
  br label %while.cond87

while.end99:                                      ; preds = %land.end94
  %74 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %keyword100 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %74, i32 0, i32 1
  %75 = load i32, i32* %keyword100, align 4
  %cmp101 = icmp eq i32 %75, 5
  br i1 %cmp101, label %if.then102, label %if.end103

if.then102:                                       ; preds = %while.end99
  %76 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @readToken(%struct.sTokenInfoSQL* %76)
  br label %if.end103

if.end103:                                        ; preds = %if.then102, %while.end99
  %77 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %keyword104 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %77, i32 0, i32 1
  %78 = load i32, i32* %keyword104, align 4
  %cmp105 = icmp eq i32 %78, 11
  br i1 %cmp105, label %if.then112, label %lor.lhs.false106

lor.lhs.false106:                                 ; preds = %if.end103
  %79 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %keyword107 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %79, i32 0, i32 1
  %80 = load i32, i32* %keyword107, align 4
  %cmp108 = icmp eq i32 %80, 13
  br i1 %cmp108, label %if.then112, label %lor.lhs.false109

lor.lhs.false109:                                 ; preds = %lor.lhs.false106
  %81 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %keyword110 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %81, i32 0, i32 1
  %82 = load i32, i32* %keyword110, align 4
  %cmp111 = icmp eq i32 %82, 14
  br i1 %cmp111, label %if.then112, label %if.end113

if.then112:                                       ; preds = %lor.lhs.false109, %lor.lhs.false106, %if.end103
  %83 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @readToken(%struct.sTokenInfoSQL* %83)
  br label %if.end113

if.end113:                                        ; preds = %if.then112, %lor.lhs.false109
  %84 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %call114 = call zeroext i1 @isCmdTerm(%struct.sTokenInfoSQL* %84)
  br i1 %call114, label %if.then115, label %if.end116

if.then115:                                       ; preds = %if.end113
  store i8 1, i8* %stmtTerm, align 1
  br label %if.end116

if.end116:                                        ; preds = %if.then115, %if.end113
  br label %sw.epilog

sw.bb117:                                         ; preds = %if.else
  %85 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @readToken(%struct.sTokenInfoSQL* %85)
  %86 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @parseKeywords(%struct.sTokenInfoSQL* %86)
  br label %sw.epilog

sw.bb118:                                         ; preds = %if.else, %if.else
  %87 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @parseBlock(%struct.sTokenInfoSQL* %87, i1 zeroext true)
  br label %sw.epilog

sw.bb119:                                         ; preds = %if.else
  br label %sw.epilog

sw.default:                                       ; preds = %if.else
  %88 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @readToken(%struct.sTokenInfoSQL* %88)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb119, %sw.bb118, %sw.bb117, %if.end116, %if.end61
  br label %while.cond120

while.cond120:                                    ; preds = %if.end185, %sw.epilog
  %89 = load i8, i8* %stmtTerm, align 1
  %tobool = trunc i8 %89 to i1
  br i1 %tobool, label %land.end130, label %land.lhs.true121

land.lhs.true121:                                 ; preds = %while.cond120
  %90 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %keyword122 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %90, i32 0, i32 1
  %91 = load i32, i32* %keyword122, align 4
  %cmp123 = icmp eq i32 %91, 5
  br i1 %cmp123, label %land.end130, label %land.lhs.true124

land.lhs.true124:                                 ; preds = %land.lhs.true121
  %92 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %call125 = call zeroext i1 @isCmdTerm(%struct.sTokenInfoSQL* %92)
  br i1 %call125, label %land.end130, label %land.rhs126

land.rhs126:                                      ; preds = %land.lhs.true124
  %93 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type127 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %93, i32 0, i32 0
  %94 = load i32, i32* %type127, align 8
  %cmp128 = icmp eq i32 %94, 1
  %lnot129 = xor i1 %cmp128, true
  br label %land.end130

land.end130:                                      ; preds = %land.rhs126, %land.lhs.true124, %land.lhs.true121, %while.cond120
  %95 = phi i1 [ false, %land.lhs.true124 ], [ false, %land.lhs.true121 ], [ false, %while.cond120 ], [ %lnot129, %land.rhs126 ]
  br i1 %95, label %while.body131, label %while.end186

while.body131:                                    ; preds = %land.end130
  %96 = load i8, i8* %exit_on_endif.addr, align 1
  %tobool132 = trunc i8 %96 to i1
  br i1 %tobool132, label %land.lhs.true133, label %if.end137

land.lhs.true133:                                 ; preds = %while.body131
  %97 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %keyword134 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %97, i32 0, i32 1
  %98 = load i32, i32* %keyword134, align 4
  %cmp135 = icmp eq i32 %98, 10
  br i1 %cmp135, label %if.then136, label %if.end137

if.then136:                                       ; preds = %land.lhs.true133
  br label %do.end

if.end137:                                        ; preds = %land.lhs.true133, %while.body131
  %99 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type138 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %99, i32 0, i32 0
  %100 = load i32, i32* %type138, align 8
  %cmp139 = icmp eq i32 %100, 6
  br i1 %cmp139, label %if.then140, label %if.end151

if.then140:                                       ; preds = %if.end137
  %101 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @readToken(%struct.sTokenInfoSQL* %101)
  %102 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %keyword141 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %102, i32 0, i32 1
  %103 = load i32, i32* %keyword141, align 4
  %cmp142 = icmp eq i32 %103, 11
  br i1 %cmp142, label %if.then149, label %lor.lhs.false143

lor.lhs.false143:                                 ; preds = %if.then140
  %104 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %keyword144 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %104, i32 0, i32 1
  %105 = load i32, i32* %keyword144, align 4
  %cmp145 = icmp eq i32 %105, 12
  br i1 %cmp145, label %if.then149, label %lor.lhs.false146

lor.lhs.false146:                                 ; preds = %lor.lhs.false143
  %106 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %keyword147 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %106, i32 0, i32 1
  %107 = load i32, i32* %keyword147, align 4
  %cmp148 = icmp eq i32 %107, 14
  br i1 %cmp148, label %if.then149, label %if.end150

if.then149:                                       ; preds = %lor.lhs.false146, %lor.lhs.false143, %if.then140
  br label %do.end

if.end150:                                        ; preds = %lor.lhs.false146
  br label %if.end151

if.end151:                                        ; preds = %if.end150, %if.end137
  %108 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @readToken(%struct.sTokenInfoSQL* %108)
  %109 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type152 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %109, i32 0, i32 0
  %110 = load i32, i32* %type152, align 8
  %cmp153 = icmp eq i32 %110, 11
  br i1 %cmp153, label %if.then160, label %lor.lhs.false154

lor.lhs.false154:                                 ; preds = %if.end151
  %111 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type155 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %111, i32 0, i32 0
  %112 = load i32, i32* %type155, align 8
  %cmp156 = icmp eq i32 %112, 16
  br i1 %cmp156, label %if.then160, label %lor.lhs.false157

lor.lhs.false157:                                 ; preds = %lor.lhs.false154
  %113 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type158 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %113, i32 0, i32 0
  %114 = load i32, i32* %type158, align 8
  %cmp159 = icmp eq i32 %114, 18
  br i1 %cmp159, label %if.then160, label %if.end161

if.then160:                                       ; preds = %lor.lhs.false157, %lor.lhs.false154, %if.end151
  %115 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @skipToMatched(%struct.sTokenInfoSQL* %115)
  br label %if.end161

if.end161:                                        ; preds = %if.then160, %lor.lhs.false157
  %116 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type162 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %116, i32 0, i32 0
  %117 = load i32, i32* %type162, align 8
  %cmp163 = icmp eq i32 %117, 2
  br i1 %cmp163, label %if.then179, label %lor.lhs.false164

lor.lhs.false164:                                 ; preds = %if.end161
  %118 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %keyword165 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %118, i32 0, i32 1
  %119 = load i32, i32* %keyword165, align 4
  %cmp166 = icmp eq i32 %119, 43
  br i1 %cmp166, label %if.then179, label %lor.lhs.false167

lor.lhs.false167:                                 ; preds = %lor.lhs.false164
  %120 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %keyword168 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %120, i32 0, i32 1
  %121 = load i32, i32* %keyword168, align 4
  %cmp169 = icmp eq i32 %121, 11
  br i1 %cmp169, label %if.then179, label %lor.lhs.false170

lor.lhs.false170:                                 ; preds = %lor.lhs.false167
  %122 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %keyword171 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %122, i32 0, i32 1
  %123 = load i32, i32* %keyword171, align 4
  %cmp172 = icmp eq i32 %123, 13
  br i1 %cmp172, label %if.then179, label %lor.lhs.false173

lor.lhs.false173:                                 ; preds = %lor.lhs.false170
  %124 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %keyword174 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %124, i32 0, i32 1
  %125 = load i32, i32* %keyword174, align 4
  %cmp175 = icmp eq i32 %125, 14
  br i1 %cmp175, label %if.then179, label %lor.lhs.false176

lor.lhs.false176:                                 ; preds = %lor.lhs.false173
  %126 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %keyword177 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %126, i32 0, i32 1
  %127 = load i32, i32* %keyword177, align 4
  %cmp178 = icmp eq i32 %127, 1
  br i1 %cmp178, label %if.then179, label %if.else180

if.then179:                                       ; preds = %lor.lhs.false176, %lor.lhs.false173, %lor.lhs.false170, %lor.lhs.false167, %lor.lhs.false164, %if.end161
  %128 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @parseStatements(%struct.sTokenInfoSQL* %128, i1 zeroext false)
  br label %if.end185

if.else180:                                       ; preds = %lor.lhs.false176
  %129 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %keyword181 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %129, i32 0, i32 1
  %130 = load i32, i32* %keyword181, align 4
  %cmp182 = icmp eq i32 %130, 7
  br i1 %cmp182, label %if.then183, label %if.end184

if.then183:                                       ; preds = %if.else180
  %131 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @parseStatements(%struct.sTokenInfoSQL* %131, i1 zeroext true)
  br label %if.end184

if.end184:                                        ; preds = %if.then183, %if.else180
  br label %if.end185

if.end185:                                        ; preds = %if.end184, %if.then179
  br label %while.cond120

while.end186:                                     ; preds = %land.end130
  br label %if.end187

if.end187:                                        ; preds = %while.end186, %if.then
  %132 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %call188 = call zeroext i1 @isCmdTerm(%struct.sTokenInfoSQL* %132)
  br i1 %call188, label %land.lhs.true189, label %if.end192

land.lhs.true189:                                 ; preds = %if.end187
  %133 = load i8, i8* %stmtTerm, align 1
  %tobool190 = trunc i8 %133 to i1
  br i1 %tobool190, label %if.end192, label %if.then191

if.then191:                                       ; preds = %land.lhs.true189
  store i8 1, i8* %stmtTerm, align 1
  br label %if.end192

if.end192:                                        ; preds = %if.then191, %land.lhs.true189, %if.end187
  br label %do.cond

do.cond:                                          ; preds = %if.end192, %while.end, %sw.bb
  %134 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %keyword193 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %134, i32 0, i32 1
  %135 = load i32, i32* %keyword193, align 4
  %cmp194 = icmp eq i32 %135, 5
  br i1 %cmp194, label %land.end206, label %land.lhs.true195

land.lhs.true195:                                 ; preds = %do.cond
  %136 = load i8, i8* %exit_on_endif.addr, align 1
  %tobool196 = trunc i8 %136 to i1
  br i1 %tobool196, label %land.lhs.true197, label %land.lhs.true200

land.lhs.true197:                                 ; preds = %land.lhs.true195
  %137 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %keyword198 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %137, i32 0, i32 1
  %138 = load i32, i32* %keyword198, align 4
  %cmp199 = icmp eq i32 %138, 10
  br i1 %cmp199, label %land.end206, label %land.lhs.true200

land.lhs.true200:                                 ; preds = %land.lhs.true197, %land.lhs.true195
  %139 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type201 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %139, i32 0, i32 0
  %140 = load i32, i32* %type201, align 8
  %cmp202 = icmp eq i32 %140, 1
  br i1 %cmp202, label %land.end206, label %land.rhs203

land.rhs203:                                      ; preds = %land.lhs.true200
  %141 = load i8, i8* %stmtTerm, align 1
  %tobool204 = trunc i8 %141 to i1
  %lnot205 = xor i1 %tobool204, true
  br label %land.end206

land.end206:                                      ; preds = %land.rhs203, %land.lhs.true200, %land.lhs.true197, %do.cond
  %142 = phi i1 [ false, %land.lhs.true200 ], [ false, %land.lhs.true197 ], [ false, %do.cond ], [ %lnot205, %land.rhs203 ]
  br i1 %142, label %do.body, label %do.end

do.end:                                           ; preds = %while.body74, %if.then136, %if.then149, %land.end206
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseIndex(%struct.sTokenInfoSQL* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfoSQL*, align 8
  %name = alloca %struct.sTokenInfoSQL*, align 8
  %owner = alloca %struct.sTokenInfoSQL*, align 8
  store %struct.sTokenInfoSQL* %token, %struct.sTokenInfoSQL** %token.addr, align 8
  %call = call %struct.sTokenInfoSQL* @newToken()
  store %struct.sTokenInfoSQL* %call, %struct.sTokenInfoSQL** %name, align 8
  %call1 = call %struct.sTokenInfoSQL* @newToken()
  store %struct.sTokenInfoSQL* %call1, %struct.sTokenInfoSQL** %owner, align 8
  %0 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %name, align 8
  call void @readIdentifier(%struct.sTokenInfoSQL* %0)
  %1 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @readToken(%struct.sTokenInfoSQL* %1)
  %2 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %2, i32 0, i32 0
  %3 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %3, 15
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %name, align 8
  call void @readIdentifier(%struct.sTokenInfoSQL* %4)
  %5 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @readToken(%struct.sTokenInfoSQL* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %6, i32 0, i32 1
  %7 = load i32, i32* %keyword, align 4
  %cmp2 = icmp eq i32 %7, 45
  br i1 %cmp2, label %land.lhs.true, label %if.end12

land.lhs.true:                                    ; preds = %if.end
  %8 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %name, align 8
  %type3 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %8, i32 0, i32 0
  %9 = load i32, i32* %type3, align 8
  %cmp4 = icmp eq i32 %9, 9
  br i1 %cmp4, label %if.then7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %10 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %name, align 8
  %type5 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %10, i32 0, i32 0
  %11 = load i32, i32* %type5, align 8
  %cmp6 = icmp eq i32 %11, 14
  br i1 %cmp6, label %if.then7, label %if.end12

if.then7:                                         ; preds = %lor.lhs.false, %land.lhs.true
  %12 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %owner, align 8
  call void @readIdentifier(%struct.sTokenInfoSQL* %12)
  %13 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @readToken(%struct.sTokenInfoSQL* %13)
  %14 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type8 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %14, i32 0, i32 0
  %15 = load i32, i32* %type8, align 8
  %cmp9 = icmp eq i32 %15, 15
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.then7
  %16 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %owner, align 8
  call void @readIdentifier(%struct.sTokenInfoSQL* %16)
  %17 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @readToken(%struct.sTokenInfoSQL* %17)
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.then7
  %18 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %name, align 8
  %19 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %owner, align 8
  %string = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %19, i32 0, i32 2
  %20 = load %struct.sVString*, %struct.sVString** %string, align 8
  call void @addToScope(%struct.sTokenInfoSQL* %18, %struct.sVString* %20, i32 10)
  %21 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %name, align 8
  call void @makeSqlTag(%struct.sTokenInfoSQL* %21, i32 13)
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %lor.lhs.false, %if.end
  %22 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @findCmdTerm(%struct.sTokenInfoSQL* %22, i1 zeroext false)
  %23 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %name, align 8
  call void @deleteToken(%struct.sTokenInfoSQL* %23)
  %24 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %owner, align 8
  call void @deleteToken(%struct.sTokenInfoSQL* %24)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseMLTable(%struct.sTokenInfoSQL* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfoSQL*, align 8
  %version = alloca %struct.sTokenInfoSQL*, align 8
  %table = alloca %struct.sTokenInfoSQL*, align 8
  %event = alloca %struct.sTokenInfoSQL*, align 8
  store %struct.sTokenInfoSQL* %token, %struct.sTokenInfoSQL** %token.addr, align 8
  %call = call %struct.sTokenInfoSQL* @newToken()
  store %struct.sTokenInfoSQL* %call, %struct.sTokenInfoSQL** %version, align 8
  %call1 = call %struct.sTokenInfoSQL* @newToken()
  store %struct.sTokenInfoSQL* %call1, %struct.sTokenInfoSQL** %table, align 8
  %call2 = call %struct.sTokenInfoSQL* @newToken()
  store %struct.sTokenInfoSQL* %call2, %struct.sTokenInfoSQL** %event, align 8
  %0 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @readToken(%struct.sTokenInfoSQL* %0)
  %1 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %1, i32 0, i32 0
  %2 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %2, 11
  br i1 %cmp, label %if.then, label %if.end44

if.then:                                          ; preds = %entry
  %3 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %version, align 8
  call void @readToken(%struct.sTokenInfoSQL* %3)
  %4 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @readToken(%struct.sTokenInfoSQL* %4)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %5 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type3 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %5, i32 0, i32 0
  %6 = load i32, i32* %type3, align 8
  %cmp4 = icmp eq i32 %6, 8
  br i1 %cmp4, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.cond
  %7 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type5 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %7, i32 0, i32 0
  %8 = load i32, i32* %type5, align 8
  %cmp6 = icmp eq i32 %8, 5
  br i1 %cmp6, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true
  %9 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type7 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %9, i32 0, i32 0
  %10 = load i32, i32* %type7, align 8
  %cmp8 = icmp eq i32 %10, 1
  %lnot = xor i1 %cmp8, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %11 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %11, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %12 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @readToken(%struct.sTokenInfoSQL* %12)
  br label %while.cond

while.end:                                        ; preds = %land.end
  %13 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type9 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %13, i32 0, i32 0
  %14 = load i32, i32* %type9, align 8
  %cmp10 = icmp eq i32 %14, 8
  br i1 %cmp10, label %if.then11, label %if.end43

if.then11:                                        ; preds = %while.end
  %15 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %table, align 8
  call void @readToken(%struct.sTokenInfoSQL* %15)
  %16 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @readToken(%struct.sTokenInfoSQL* %16)
  br label %while.cond12

while.cond12:                                     ; preds = %while.body23, %if.then11
  %17 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type13 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %17, i32 0, i32 0
  %18 = load i32, i32* %type13, align 8
  %cmp14 = icmp eq i32 %18, 8
  br i1 %cmp14, label %land.end22, label %land.lhs.true15

land.lhs.true15:                                  ; preds = %while.cond12
  %19 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type16 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %19, i32 0, i32 0
  %20 = load i32, i32* %type16, align 8
  %cmp17 = icmp eq i32 %20, 5
  br i1 %cmp17, label %land.end22, label %land.rhs18

land.rhs18:                                       ; preds = %land.lhs.true15
  %21 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type19 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %21, i32 0, i32 0
  %22 = load i32, i32* %type19, align 8
  %cmp20 = icmp eq i32 %22, 1
  %lnot21 = xor i1 %cmp20, true
  br label %land.end22

land.end22:                                       ; preds = %land.rhs18, %land.lhs.true15, %while.cond12
  %23 = phi i1 [ false, %land.lhs.true15 ], [ false, %while.cond12 ], [ %lnot21, %land.rhs18 ]
  br i1 %23, label %while.body23, label %while.end24

while.body23:                                     ; preds = %land.end22
  %24 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @readToken(%struct.sTokenInfoSQL* %24)
  br label %while.cond12

while.end24:                                      ; preds = %land.end22
  %25 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type25 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %25, i32 0, i32 0
  %26 = load i32, i32* %type25, align 8
  %cmp26 = icmp eq i32 %26, 8
  br i1 %cmp26, label %if.then27, label %if.end38

if.then27:                                        ; preds = %while.end24
  %27 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %event, align 8
  call void @readToken(%struct.sTokenInfoSQL* %27)
  %28 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %version, align 8
  %type28 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %28, i32 0, i32 0
  %29 = load i32, i32* %type28, align 8
  %cmp29 = icmp eq i32 %29, 14
  br i1 %cmp29, label %land.lhs.true30, label %if.end

land.lhs.true30:                                  ; preds = %if.then27
  %30 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %table, align 8
  %type31 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %30, i32 0, i32 0
  %31 = load i32, i32* %type31, align 8
  %cmp32 = icmp eq i32 %31, 14
  br i1 %cmp32, label %land.lhs.true33, label %if.end

land.lhs.true33:                                  ; preds = %land.lhs.true30
  %32 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %event, align 8
  %type34 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %32, i32 0, i32 0
  %33 = load i32, i32* %type34, align 8
  %cmp35 = icmp eq i32 %33, 14
  br i1 %cmp35, label %if.then36, label %if.end

if.then36:                                        ; preds = %land.lhs.true33
  %34 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %version, align 8
  %35 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %table, align 8
  %string = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %35, i32 0, i32 2
  %36 = load %struct.sVString*, %struct.sVString** %string, align 8
  call void @addToScope(%struct.sTokenInfoSQL* %34, %struct.sVString* %36, i32 10)
  %37 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %version, align 8
  %38 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %event, align 8
  %string37 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %38, i32 0, i32 2
  %39 = load %struct.sVString*, %struct.sVString** %string37, align 8
  call void @addToScope(%struct.sTokenInfoSQL* %37, %struct.sVString* %39, i32 14)
  %40 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %version, align 8
  call void @makeSqlTag(%struct.sTokenInfoSQL* %40, i32 20)
  br label %if.end

if.end:                                           ; preds = %if.then36, %land.lhs.true33, %land.lhs.true30, %if.then27
  br label %if.end38

if.end38:                                         ; preds = %if.end, %while.end24
  %41 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type39 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %41, i32 0, i32 0
  %42 = load i32, i32* %type39, align 8
  %cmp40 = icmp eq i32 %42, 5
  br i1 %cmp40, label %if.end42, label %if.then41

if.then41:                                        ; preds = %if.end38
  %43 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @findToken(%struct.sTokenInfoSQL* %43, i32 5)
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %if.end38
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %while.end
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %entry
  %44 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @findCmdTerm(%struct.sTokenInfoSQL* %44, i1 zeroext true)
  %45 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %version, align 8
  call void @deleteToken(%struct.sTokenInfoSQL* %45)
  %46 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %table, align 8
  call void @deleteToken(%struct.sTokenInfoSQL* %46)
  %47 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %event, align 8
  call void @deleteToken(%struct.sTokenInfoSQL* %47)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseMLConn(%struct.sTokenInfoSQL* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfoSQL*, align 8
  %version = alloca %struct.sTokenInfoSQL*, align 8
  %event = alloca %struct.sTokenInfoSQL*, align 8
  store %struct.sTokenInfoSQL* %token, %struct.sTokenInfoSQL** %token.addr, align 8
  %call = call %struct.sTokenInfoSQL* @newToken()
  store %struct.sTokenInfoSQL* %call, %struct.sTokenInfoSQL** %version, align 8
  %call1 = call %struct.sTokenInfoSQL* @newToken()
  store %struct.sTokenInfoSQL* %call1, %struct.sTokenInfoSQL** %event, align 8
  %0 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @readToken(%struct.sTokenInfoSQL* %0)
  %1 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %1, i32 0, i32 0
  %2 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %2, 11
  br i1 %cmp, label %if.then, label %if.end22

if.then:                                          ; preds = %entry
  %3 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %version, align 8
  call void @readToken(%struct.sTokenInfoSQL* %3)
  %4 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @readToken(%struct.sTokenInfoSQL* %4)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %5 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type2 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %5, i32 0, i32 0
  %6 = load i32, i32* %type2, align 8
  %cmp3 = icmp eq i32 %6, 8
  br i1 %cmp3, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.cond
  %7 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type4 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %7, i32 0, i32 0
  %8 = load i32, i32* %type4, align 8
  %cmp5 = icmp eq i32 %8, 5
  br i1 %cmp5, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true
  %9 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type6 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %9, i32 0, i32 0
  %10 = load i32, i32* %type6, align 8
  %cmp7 = icmp eq i32 %10, 1
  %lnot = xor i1 %cmp7, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %11 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %11, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %12 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @readToken(%struct.sTokenInfoSQL* %12)
  br label %while.cond

while.end:                                        ; preds = %land.end
  %13 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type8 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %13, i32 0, i32 0
  %14 = load i32, i32* %type8, align 8
  %cmp9 = icmp eq i32 %14, 8
  br i1 %cmp9, label %if.then10, label %if.end17

if.then10:                                        ; preds = %while.end
  %15 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %event, align 8
  call void @readToken(%struct.sTokenInfoSQL* %15)
  %16 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %version, align 8
  %type11 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %16, i32 0, i32 0
  %17 = load i32, i32* %type11, align 8
  %cmp12 = icmp eq i32 %17, 14
  br i1 %cmp12, label %land.lhs.true13, label %if.end

land.lhs.true13:                                  ; preds = %if.then10
  %18 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %event, align 8
  %type14 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %18, i32 0, i32 0
  %19 = load i32, i32* %type14, align 8
  %cmp15 = icmp eq i32 %19, 14
  br i1 %cmp15, label %if.then16, label %if.end

if.then16:                                        ; preds = %land.lhs.true13
  %20 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %version, align 8
  %21 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %event, align 8
  %string = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %21, i32 0, i32 2
  %22 = load %struct.sVString*, %struct.sVString** %string, align 8
  call void @addToScope(%struct.sTokenInfoSQL* %20, %struct.sVString* %22, i32 14)
  %23 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %version, align 8
  call void @makeSqlTag(%struct.sTokenInfoSQL* %23, i32 21)
  br label %if.end

if.end:                                           ; preds = %if.then16, %land.lhs.true13, %if.then10
  br label %if.end17

if.end17:                                         ; preds = %if.end, %while.end
  %24 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type18 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %24, i32 0, i32 0
  %25 = load i32, i32* %type18, align 8
  %cmp19 = icmp eq i32 %25, 5
  br i1 %cmp19, label %if.end21, label %if.then20

if.then20:                                        ; preds = %if.end17
  %26 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @findToken(%struct.sTokenInfoSQL* %26, i32 5)
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end17
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %entry
  %27 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @findCmdTerm(%struct.sTokenInfoSQL* %27, i1 zeroext true)
  %28 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %version, align 8
  call void @deleteToken(%struct.sTokenInfoSQL* %28)
  %29 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %event, align 8
  call void @deleteToken(%struct.sTokenInfoSQL* %29)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseMLProp(%struct.sTokenInfoSQL* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfoSQL*, align 8
  %component = alloca %struct.sTokenInfoSQL*, align 8
  %prop_set_name = alloca %struct.sTokenInfoSQL*, align 8
  %prop_name = alloca %struct.sTokenInfoSQL*, align 8
  store %struct.sTokenInfoSQL* %token, %struct.sTokenInfoSQL** %token.addr, align 8
  %call = call %struct.sTokenInfoSQL* @newToken()
  store %struct.sTokenInfoSQL* %call, %struct.sTokenInfoSQL** %component, align 8
  %call1 = call %struct.sTokenInfoSQL* @newToken()
  store %struct.sTokenInfoSQL* %call1, %struct.sTokenInfoSQL** %prop_set_name, align 8
  %call2 = call %struct.sTokenInfoSQL* @newToken()
  store %struct.sTokenInfoSQL* %call2, %struct.sTokenInfoSQL** %prop_name, align 8
  %0 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @readToken(%struct.sTokenInfoSQL* %0)
  %1 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %1, i32 0, i32 0
  %2 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %2, 11
  br i1 %cmp, label %if.then, label %if.end44

if.then:                                          ; preds = %entry
  %3 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %component, align 8
  call void @readToken(%struct.sTokenInfoSQL* %3)
  %4 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @readToken(%struct.sTokenInfoSQL* %4)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %5 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type3 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %5, i32 0, i32 0
  %6 = load i32, i32* %type3, align 8
  %cmp4 = icmp eq i32 %6, 8
  br i1 %cmp4, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.cond
  %7 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type5 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %7, i32 0, i32 0
  %8 = load i32, i32* %type5, align 8
  %cmp6 = icmp eq i32 %8, 5
  br i1 %cmp6, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true
  %9 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type7 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %9, i32 0, i32 0
  %10 = load i32, i32* %type7, align 8
  %cmp8 = icmp eq i32 %10, 1
  %lnot = xor i1 %cmp8, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %11 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %11, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %12 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @readToken(%struct.sTokenInfoSQL* %12)
  br label %while.cond

while.end:                                        ; preds = %land.end
  %13 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type9 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %13, i32 0, i32 0
  %14 = load i32, i32* %type9, align 8
  %cmp10 = icmp eq i32 %14, 8
  br i1 %cmp10, label %if.then11, label %if.end43

if.then11:                                        ; preds = %while.end
  %15 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %prop_set_name, align 8
  call void @readToken(%struct.sTokenInfoSQL* %15)
  %16 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @readToken(%struct.sTokenInfoSQL* %16)
  br label %while.cond12

while.cond12:                                     ; preds = %while.body23, %if.then11
  %17 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type13 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %17, i32 0, i32 0
  %18 = load i32, i32* %type13, align 8
  %cmp14 = icmp eq i32 %18, 8
  br i1 %cmp14, label %land.end22, label %land.lhs.true15

land.lhs.true15:                                  ; preds = %while.cond12
  %19 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type16 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %19, i32 0, i32 0
  %20 = load i32, i32* %type16, align 8
  %cmp17 = icmp eq i32 %20, 5
  br i1 %cmp17, label %land.end22, label %land.rhs18

land.rhs18:                                       ; preds = %land.lhs.true15
  %21 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type19 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %21, i32 0, i32 0
  %22 = load i32, i32* %type19, align 8
  %cmp20 = icmp eq i32 %22, 1
  %lnot21 = xor i1 %cmp20, true
  br label %land.end22

land.end22:                                       ; preds = %land.rhs18, %land.lhs.true15, %while.cond12
  %23 = phi i1 [ false, %land.lhs.true15 ], [ false, %while.cond12 ], [ %lnot21, %land.rhs18 ]
  br i1 %23, label %while.body23, label %while.end24

while.body23:                                     ; preds = %land.end22
  %24 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @readToken(%struct.sTokenInfoSQL* %24)
  br label %while.cond12

while.end24:                                      ; preds = %land.end22
  %25 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type25 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %25, i32 0, i32 0
  %26 = load i32, i32* %type25, align 8
  %cmp26 = icmp eq i32 %26, 8
  br i1 %cmp26, label %if.then27, label %if.end38

if.then27:                                        ; preds = %while.end24
  %27 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %prop_name, align 8
  call void @readToken(%struct.sTokenInfoSQL* %27)
  %28 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %component, align 8
  %type28 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %28, i32 0, i32 0
  %29 = load i32, i32* %type28, align 8
  %cmp29 = icmp eq i32 %29, 14
  br i1 %cmp29, label %land.lhs.true30, label %if.end

land.lhs.true30:                                  ; preds = %if.then27
  %30 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %prop_set_name, align 8
  %type31 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %30, i32 0, i32 0
  %31 = load i32, i32* %type31, align 8
  %cmp32 = icmp eq i32 %31, 14
  br i1 %cmp32, label %land.lhs.true33, label %if.end

land.lhs.true33:                                  ; preds = %land.lhs.true30
  %32 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %prop_name, align 8
  %type34 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %32, i32 0, i32 0
  %33 = load i32, i32* %type34, align 8
  %cmp35 = icmp eq i32 %33, 14
  br i1 %cmp35, label %if.then36, label %if.end

if.then36:                                        ; preds = %land.lhs.true33
  %34 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %component, align 8
  %35 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %prop_set_name, align 8
  %string = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %35, i32 0, i32 2
  %36 = load %struct.sVString*, %struct.sVString** %string, align 8
  call void @addToScope(%struct.sTokenInfoSQL* %34, %struct.sVString* %36, i32 22)
  %37 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %component, align 8
  %38 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %prop_name, align 8
  %string37 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %38, i32 0, i32 2
  %39 = load %struct.sVString*, %struct.sVString** %string37, align 8
  call void @addToScope(%struct.sTokenInfoSQL* %37, %struct.sVString* %39, i32 22)
  %40 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %component, align 8
  call void @makeSqlTag(%struct.sTokenInfoSQL* %40, i32 22)
  br label %if.end

if.end:                                           ; preds = %if.then36, %land.lhs.true33, %land.lhs.true30, %if.then27
  br label %if.end38

if.end38:                                         ; preds = %if.end, %while.end24
  %41 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type39 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %41, i32 0, i32 0
  %42 = load i32, i32* %type39, align 8
  %cmp40 = icmp eq i32 %42, 5
  br i1 %cmp40, label %if.end42, label %if.then41

if.then41:                                        ; preds = %if.end38
  %43 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @findToken(%struct.sTokenInfoSQL* %43, i32 5)
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %if.end38
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %while.end
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %entry
  %44 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @findCmdTerm(%struct.sTokenInfoSQL* %44, i1 zeroext true)
  %45 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %component, align 8
  call void @deleteToken(%struct.sTokenInfoSQL* %45)
  %46 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %prop_set_name, align 8
  call void @deleteToken(%struct.sTokenInfoSQL* %46)
  %47 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %prop_name, align 8
  call void @deleteToken(%struct.sTokenInfoSQL* %47)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parsePackage(%struct.sTokenInfoSQL* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfoSQL*, align 8
  %name = alloca %struct.sTokenInfoSQL*, align 8
  %vStringClear_s = alloca %struct.sVString*, align 8
  store %struct.sTokenInfoSQL* %token, %struct.sTokenInfoSQL** %token.addr, align 8
  %call = call %struct.sTokenInfoSQL* @newToken()
  store %struct.sTokenInfoSQL* %call, %struct.sTokenInfoSQL** %name, align 8
  %0 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %name, align 8
  call void @readIdentifier(%struct.sTokenInfoSQL* %0)
  %1 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %name, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %1, i32 0, i32 1
  %2 = load i32, i32* %keyword, align 4
  %cmp = icmp eq i32 %2, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %name, align 8
  call void @readIdentifier(%struct.sTokenInfoSQL* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end7, %if.end
  %4 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %keyword1 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %4, i32 0, i32 1
  %5 = load i32, i32* %keyword1, align 4
  %cmp2 = icmp eq i32 %5, 0
  br i1 %cmp2, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %6 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %6, i32 0, i32 0
  %7 = load i32, i32* %type, align 8
  %cmp3 = icmp eq i32 %7, 1
  %lnot = xor i1 %cmp3, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %8 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %8, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %9 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @readToken(%struct.sTokenInfoSQL* %9)
  %10 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type4 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %10, i32 0, i32 0
  %11 = load i32, i32* %type4, align 8
  %cmp5 = icmp eq i32 %11, 15
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %while.body
  %12 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %name, align 8
  call void @readIdentifier(%struct.sTokenInfoSQL* %12)
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %while.body
  br label %while.cond

while.end:                                        ; preds = %land.end
  %13 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %keyword8 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %13, i32 0, i32 1
  %14 = load i32, i32* %keyword8, align 4
  %cmp9 = icmp eq i32 %14, 0
  br i1 %cmp9, label %if.then10, label %if.end17

if.then10:                                        ; preds = %while.end
  %15 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %name, align 8
  %type11 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %15, i32 0, i32 0
  %16 = load i32, i32* %type11, align 8
  %cmp12 = icmp eq i32 %16, 9
  br i1 %cmp12, label %if.then15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then10
  %17 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %name, align 8
  %type13 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %17, i32 0, i32 0
  %18 = load i32, i32* %type13, align 8
  %cmp14 = icmp eq i32 %18, 14
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %lor.lhs.false, %if.then10
  %19 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %name, align 8
  call void @makeSqlTag(%struct.sTokenInfoSQL* %19, i32 6)
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %lor.lhs.false
  %20 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %21 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %name, align 8
  %string = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %21, i32 0, i32 2
  %22 = load %struct.sVString*, %struct.sVString** %string, align 8
  call void @addToScope(%struct.sTokenInfoSQL* %20, %struct.sVString* %22, i32 6)
  %23 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @parseBlock(%struct.sTokenInfoSQL* %23, i1 zeroext false)
  br label %do.body

do.body:                                          ; preds = %if.end16
  %24 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %scope = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %24, i32 0, i32 3
  %25 = load %struct.sVString*, %struct.sVString** %scope, align 8
  store %struct.sVString* %25, %struct.sVString** %vStringClear_s, align 8
  %26 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %26, i32 0, i32 0
  store i64 0, i64* %length, align 8
  %27 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %27, i32 0, i32 2
  %28 = load i8*, i8** %buffer, align 8
  %arrayidx = getelementptr inbounds i8, i8* %28, i64 0
  store i8 0, i8* %arrayidx, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  %29 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %scopeKind = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %29, i32 0, i32 4
  store i32 23, i32* %scopeKind, align 8
  br label %if.end17

if.end17:                                         ; preds = %do.end, %while.end
  %30 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @findCmdTerm(%struct.sTokenInfoSQL* %30, i1 zeroext false)
  %31 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %name, align 8
  call void @deleteToken(%struct.sTokenInfoSQL* %31)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parsePublication(%struct.sTokenInfoSQL* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfoSQL*, align 8
  %name = alloca %struct.sTokenInfoSQL*, align 8
  store %struct.sTokenInfoSQL* %token, %struct.sTokenInfoSQL** %token.addr, align 8
  %call = call %struct.sTokenInfoSQL* @newToken()
  store %struct.sTokenInfoSQL* %call, %struct.sTokenInfoSQL** %name, align 8
  %0 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %name, align 8
  call void @readIdentifier(%struct.sTokenInfoSQL* %0)
  %1 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @readToken(%struct.sTokenInfoSQL* %1)
  %2 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %2, i32 0, i32 0
  %3 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %3, 15
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %name, align 8
  call void @readIdentifier(%struct.sTokenInfoSQL* %4)
  %5 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @readToken(%struct.sTokenInfoSQL* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type1 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %6, i32 0, i32 0
  %7 = load i32, i32* %type1, align 8
  %cmp2 = icmp eq i32 %7, 11
  br i1 %cmp2, label %if.then3, label %if.end10

if.then3:                                         ; preds = %if.end
  %8 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %name, align 8
  %type4 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %8, i32 0, i32 0
  %9 = load i32, i32* %type4, align 8
  %cmp5 = icmp eq i32 %9, 9
  br i1 %cmp5, label %if.then8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then3
  %10 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %name, align 8
  %type6 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %10, i32 0, i32 0
  %11 = load i32, i32* %type6, align 8
  %cmp7 = icmp eq i32 %11, 14
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %lor.lhs.false, %if.then3
  %12 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %name, align 8
  call void @makeSqlTag(%struct.sTokenInfoSQL* %12, i32 15)
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %lor.lhs.false
  br label %if.end10

if.end10:                                         ; preds = %if.end9, %if.end
  %13 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @findCmdTerm(%struct.sTokenInfoSQL* %13, i1 zeroext false)
  %14 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %name, align 8
  call void @deleteToken(%struct.sTokenInfoSQL* %14)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseService(%struct.sTokenInfoSQL* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfoSQL*, align 8
  %name = alloca %struct.sTokenInfoSQL*, align 8
  store %struct.sTokenInfoSQL* %token, %struct.sTokenInfoSQL** %token.addr, align 8
  %call = call %struct.sTokenInfoSQL* @newToken()
  store %struct.sTokenInfoSQL* %call, %struct.sTokenInfoSQL** %name, align 8
  %0 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %name, align 8
  call void @readIdentifier(%struct.sTokenInfoSQL* %0)
  %1 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @readToken(%struct.sTokenInfoSQL* %1)
  %2 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %2, i32 0, i32 1
  %3 = load i32, i32* %keyword, align 4
  %cmp = icmp eq i32 %3, 29
  br i1 %cmp, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %4 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %name, align 8
  %type = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %4, i32 0, i32 0
  %5 = load i32, i32* %type, align 8
  %cmp1 = icmp eq i32 %5, 9
  br i1 %cmp1, label %if.then4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %6 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %name, align 8
  %type2 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %6, i32 0, i32 0
  %7 = load i32, i32* %type2, align 8
  %cmp3 = icmp eq i32 %7, 14
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %lor.lhs.false, %if.then
  %8 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %name, align 8
  call void @makeSqlTag(%struct.sTokenInfoSQL* %8, i32 16)
  br label %if.end

if.end:                                           ; preds = %if.then4, %lor.lhs.false
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry
  %9 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @findCmdTerm(%struct.sTokenInfoSQL* %9, i1 zeroext false)
  %10 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %name, align 8
  call void @deleteToken(%struct.sTokenInfoSQL* %10)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseSynonym(%struct.sTokenInfoSQL* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfoSQL*, align 8
  %name = alloca %struct.sTokenInfoSQL*, align 8
  store %struct.sTokenInfoSQL* %token, %struct.sTokenInfoSQL** %token.addr, align 8
  %call = call %struct.sTokenInfoSQL* @newToken()
  store %struct.sTokenInfoSQL* %call, %struct.sTokenInfoSQL** %name, align 8
  %0 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %name, align 8
  call void @readIdentifier(%struct.sTokenInfoSQL* %0)
  %1 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @readToken(%struct.sTokenInfoSQL* %1)
  %2 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %2, i32 0, i32 1
  %3 = load i32, i32* %keyword, align 4
  %cmp = icmp eq i32 %3, 14
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %name, align 8
  %type = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %4, i32 0, i32 0
  %5 = load i32, i32* %type, align 8
  %cmp1 = icmp eq i32 %5, 9
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %6 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %name, align 8
  %type2 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %6, i32 0, i32 0
  %7 = load i32, i32* %type2, align 8
  %cmp3 = icmp eq i32 %7, 14
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %8 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %name, align 8
  call void @makeSqlTag(%struct.sTokenInfoSQL* %8, i32 19)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false, %entry
  %9 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @findCmdTerm(%struct.sTokenInfoSQL* %9, i1 zeroext true)
  %10 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %name, align 8
  call void @deleteToken(%struct.sTokenInfoSQL* %10)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseTable(%struct.sTokenInfoSQL* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfoSQL*, align 8
  %name = alloca %struct.sTokenInfoSQL*, align 8
  %vStringClear_s = alloca %struct.sVString*, align 8
  store %struct.sTokenInfoSQL* %token, %struct.sTokenInfoSQL** %token.addr, align 8
  %call = call %struct.sTokenInfoSQL* @newToken()
  store %struct.sTokenInfoSQL* %call, %struct.sTokenInfoSQL** %name, align 8
  %0 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %name, align 8
  call void @readIdentifier(%struct.sTokenInfoSQL* %0)
  %1 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @readToken(%struct.sTokenInfoSQL* %1)
  %2 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %2, i32 0, i32 0
  %3 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %3, 15
  br i1 %cmp, label %if.then, label %if.end8

if.then:                                          ; preds = %entry
  %4 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %name, align 8
  call void @readIdentifier(%struct.sTokenInfoSQL* %4)
  %5 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %name, align 8
  %type1 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %5, i32 0, i32 0
  %6 = load i32, i32* %type1, align 8
  %cmp2 = icmp eq i32 %6, 15
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  %7 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %name, align 8
  call void @readIdentifier(%struct.sTokenInfoSQL* %7)
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  %8 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @readToken(%struct.sTokenInfoSQL* %8)
  %9 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type4 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %9, i32 0, i32 0
  %10 = load i32, i32* %type4, align 8
  %cmp5 = icmp eq i32 %10, 15
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  %11 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %name, align 8
  call void @readIdentifier(%struct.sTokenInfoSQL* %11)
  %12 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @readToken(%struct.sTokenInfoSQL* %12)
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end
  br label %if.end8

if.end8:                                          ; preds = %if.end7, %entry
  %13 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type9 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %13, i32 0, i32 0
  %14 = load i32, i32* %type9, align 8
  %cmp10 = icmp eq i32 %14, 11
  br i1 %cmp10, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end8
  %15 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %name, align 8
  %type12 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %15, i32 0, i32 0
  %16 = load i32, i32* %type12, align 8
  %cmp13 = icmp eq i32 %16, 9
  br i1 %cmp13, label %if.then16, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then11
  %17 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %name, align 8
  %type14 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %17, i32 0, i32 0
  %18 = load i32, i32* %type14, align 8
  %cmp15 = icmp eq i32 %18, 14
  br i1 %cmp15, label %if.then16, label %if.end19

if.then16:                                        ; preds = %lor.lhs.false, %if.then11
  %19 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %name, align 8
  call void @makeSqlTag(%struct.sTokenInfoSQL* %19, i32 10)
  %20 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %scope = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %20, i32 0, i32 3
  %21 = load %struct.sVString*, %struct.sVString** %scope, align 8
  %22 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %name, align 8
  %string = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %22, i32 0, i32 2
  %23 = load %struct.sVString*, %struct.sVString** %string, align 8
  call void @vStringCopy(%struct.sVString* %21, %struct.sVString* %23)
  %24 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %scopeKind = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %24, i32 0, i32 4
  store i32 10, i32* %scopeKind, align 8
  %25 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @parseRecord(%struct.sTokenInfoSQL* %25)
  br label %do.body

do.body:                                          ; preds = %if.then16
  %26 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %scope17 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %26, i32 0, i32 3
  %27 = load %struct.sVString*, %struct.sVString** %scope17, align 8
  store %struct.sVString* %27, %struct.sVString** %vStringClear_s, align 8
  %28 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %28, i32 0, i32 0
  store i64 0, i64* %length, align 8
  %29 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %29, i32 0, i32 2
  %30 = load i8*, i8** %buffer, align 8
  %arrayidx = getelementptr inbounds i8, i8* %30, i64 0
  store i8 0, i8* %arrayidx, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  %31 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %scopeKind18 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %31, i32 0, i32 4
  store i32 23, i32* %scopeKind18, align 8
  br label %if.end19

if.end19:                                         ; preds = %do.end, %lor.lhs.false
  br label %if.end27

if.else:                                          ; preds = %if.end8
  %32 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %32, i32 0, i32 1
  %33 = load i32, i32* %keyword, align 4
  %cmp20 = icmp eq i32 %33, 44
  br i1 %cmp20, label %if.then21, label %if.end26

if.then21:                                        ; preds = %if.else
  %34 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %name, align 8
  %type22 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %34, i32 0, i32 0
  %35 = load i32, i32* %type22, align 8
  %cmp23 = icmp eq i32 %35, 9
  br i1 %cmp23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.then21
  %36 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %name, align 8
  call void @makeSqlTag(%struct.sTokenInfoSQL* %36, i32 10)
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.then21
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %if.else
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %if.end19
  %37 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @findCmdTerm(%struct.sTokenInfoSQL* %37, i1 zeroext false)
  %38 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %name, align 8
  call void @deleteToken(%struct.sTokenInfoSQL* %38)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseTrigger(%struct.sTokenInfoSQL* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfoSQL*, align 8
  %name = alloca %struct.sTokenInfoSQL*, align 8
  %table = alloca %struct.sTokenInfoSQL*, align 8
  %vStringClear_s = alloca %struct.sVString*, align 8
  %vStringClear_s43 = alloca %struct.sVString*, align 8
  store %struct.sTokenInfoSQL* %token, %struct.sTokenInfoSQL** %token.addr, align 8
  %call = call %struct.sTokenInfoSQL* @newToken()
  store %struct.sTokenInfoSQL* %call, %struct.sTokenInfoSQL** %name, align 8
  %call1 = call %struct.sTokenInfoSQL* @newToken()
  store %struct.sTokenInfoSQL* %call1, %struct.sTokenInfoSQL** %table, align 8
  %0 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %name, align 8
  call void @readIdentifier(%struct.sTokenInfoSQL* %0)
  %1 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @readToken(%struct.sTokenInfoSQL* %1)
  %2 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %2, i32 0, i32 0
  %3 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %3, 15
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %name, align 8
  call void @readIdentifier(%struct.sTokenInfoSQL* %4)
  %5 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @readToken(%struct.sTokenInfoSQL* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %6 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %6, i32 0, i32 1
  %7 = load i32, i32* %keyword, align 4
  %cmp2 = icmp eq i32 %7, 45
  br i1 %cmp2, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.cond
  %8 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type3 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %8, i32 0, i32 0
  %9 = load i32, i32* %type3, align 8
  %cmp4 = icmp eq i32 %9, 1
  br i1 %cmp4, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true
  %10 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %call5 = call zeroext i1 @isCmdTerm(%struct.sTokenInfoSQL* %10)
  %lnot = xor i1 %call5, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %11 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %11, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %12 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @readToken(%struct.sTokenInfoSQL* %12)
  br label %while.cond

while.end:                                        ; preds = %land.end
  %13 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %call6 = call zeroext i1 @isCmdTerm(%struct.sTokenInfoSQL* %13)
  br i1 %call6, label %if.end51, label %if.then7

if.then7:                                         ; preds = %while.end
  %14 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %table, align 8
  call void @readToken(%struct.sTokenInfoSQL* %14)
  %15 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @readToken(%struct.sTokenInfoSQL* %15)
  %16 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type8 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %16, i32 0, i32 0
  %17 = load i32, i32* %type8, align 8
  %cmp9 = icmp eq i32 %17, 15
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.then7
  %18 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %table, align 8
  call void @readToken(%struct.sTokenInfoSQL* %18)
  %19 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @readToken(%struct.sTokenInfoSQL* %19)
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.then7
  br label %while.cond12

while.cond12:                                     ; preds = %if.end29, %if.end11
  %20 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %keyword13 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %20, i32 0, i32 1
  %21 = load i32, i32* %keyword13, align 4
  %cmp14 = icmp eq i32 %21, 1
  br i1 %cmp14, label %land.end24, label %land.lhs.true15

land.lhs.true15:                                  ; preds = %while.cond12
  %22 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %keyword16 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %22, i32 0, i32 1
  %23 = load i32, i32* %keyword16, align 4
  %cmp17 = icmp eq i32 %23, 16
  br i1 %cmp17, label %land.end24, label %land.lhs.true18

land.lhs.true18:                                  ; preds = %land.lhs.true15
  %24 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %call19 = call zeroext i1 @isCmdTerm(%struct.sTokenInfoSQL* %24)
  br i1 %call19, label %land.end24, label %land.rhs20

land.rhs20:                                       ; preds = %land.lhs.true18
  %25 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type21 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %25, i32 0, i32 0
  %26 = load i32, i32* %type21, align 8
  %cmp22 = icmp eq i32 %26, 1
  %lnot23 = xor i1 %cmp22, true
  br label %land.end24

land.end24:                                       ; preds = %land.rhs20, %land.lhs.true18, %land.lhs.true15, %while.cond12
  %27 = phi i1 [ false, %land.lhs.true18 ], [ false, %land.lhs.true15 ], [ false, %while.cond12 ], [ %lnot23, %land.rhs20 ]
  br i1 %27, label %while.body25, label %while.end30

while.body25:                                     ; preds = %land.end24
  %28 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %keyword26 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %28, i32 0, i32 1
  %29 = load i32, i32* %keyword26, align 4
  %cmp27 = icmp eq i32 %29, 4
  br i1 %cmp27, label %if.then28, label %if.else

if.then28:                                        ; preds = %while.body25
  %30 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %31 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %name, align 8
  %string = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %31, i32 0, i32 2
  %32 = load %struct.sVString*, %struct.sVString** %string, align 8
  call void @addToScope(%struct.sTokenInfoSQL* %30, %struct.sVString* %32, i32 11)
  %33 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @parseDeclare(%struct.sTokenInfoSQL* %33, i1 zeroext true)
  br label %do.body

do.body:                                          ; preds = %if.then28
  %34 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %scope = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %34, i32 0, i32 3
  %35 = load %struct.sVString*, %struct.sVString** %scope, align 8
  store %struct.sVString* %35, %struct.sVString** %vStringClear_s, align 8
  %36 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %36, i32 0, i32 0
  store i64 0, i64* %length, align 8
  %37 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %37, i32 0, i32 2
  %38 = load i8*, i8** %buffer, align 8
  %arrayidx = getelementptr inbounds i8, i8* %38, i64 0
  store i8 0, i8* %arrayidx, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  %39 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %scopeKind = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %39, i32 0, i32 4
  store i32 23, i32* %scopeKind, align 8
  br label %if.end29

if.else:                                          ; preds = %while.body25
  %40 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @readToken(%struct.sTokenInfoSQL* %40)
  br label %if.end29

if.end29:                                         ; preds = %if.else, %do.end
  br label %while.cond12

while.end30:                                      ; preds = %land.end24
  %41 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %keyword31 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %41, i32 0, i32 1
  %42 = load i32, i32* %keyword31, align 4
  %cmp32 = icmp eq i32 %42, 1
  br i1 %cmp32, label %if.then35, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end30
  %43 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %keyword33 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %43, i32 0, i32 1
  %44 = load i32, i32* %keyword33, align 4
  %cmp34 = icmp eq i32 %44, 16
  br i1 %cmp34, label %if.then35, label %if.end50

if.then35:                                        ; preds = %lor.lhs.false, %while.end30
  %45 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %name, align 8
  %46 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %table, align 8
  %string36 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %46, i32 0, i32 2
  %47 = load %struct.sVString*, %struct.sVString** %string36, align 8
  call void @addToScope(%struct.sTokenInfoSQL* %45, %struct.sVString* %47, i32 10)
  %48 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %name, align 8
  call void @makeSqlTag(%struct.sTokenInfoSQL* %48, i32 11)
  %49 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %50 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %table, align 8
  %string37 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %50, i32 0, i32 2
  %51 = load %struct.sVString*, %struct.sVString** %string37, align 8
  call void @addToScope(%struct.sTokenInfoSQL* %49, %struct.sVString* %51, i32 10)
  %52 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %keyword38 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %52, i32 0, i32 1
  %53 = load i32, i32* %keyword38, align 4
  %cmp39 = icmp eq i32 %53, 1
  br i1 %cmp39, label %if.then40, label %if.end41

if.then40:                                        ; preds = %if.then35
  %54 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @parseBlock(%struct.sTokenInfoSQL* %54, i1 zeroext true)
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %if.then35
  br label %do.body42

do.body42:                                        ; preds = %if.end41
  %55 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %scope44 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %55, i32 0, i32 3
  %56 = load %struct.sVString*, %struct.sVString** %scope44, align 8
  store %struct.sVString* %56, %struct.sVString** %vStringClear_s43, align 8
  %57 = load %struct.sVString*, %struct.sVString** %vStringClear_s43, align 8
  %length45 = getelementptr inbounds %struct.sVString, %struct.sVString* %57, i32 0, i32 0
  store i64 0, i64* %length45, align 8
  %58 = load %struct.sVString*, %struct.sVString** %vStringClear_s43, align 8
  %buffer46 = getelementptr inbounds %struct.sVString, %struct.sVString* %58, i32 0, i32 2
  %59 = load i8*, i8** %buffer46, align 8
  %arrayidx47 = getelementptr inbounds i8, i8* %59, i64 0
  store i8 0, i8* %arrayidx47, align 1
  br label %do.end48

do.end48:                                         ; preds = %do.body42
  %60 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %scopeKind49 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %60, i32 0, i32 4
  store i32 23, i32* %scopeKind49, align 8
  br label %if.end50

if.end50:                                         ; preds = %do.end48, %lor.lhs.false
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %while.end
  %61 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @findCmdTerm(%struct.sTokenInfoSQL* %61, i1 zeroext true)
  %62 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %name, align 8
  call void @deleteToken(%struct.sTokenInfoSQL* %62)
  %63 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %table, align 8
  call void @deleteToken(%struct.sTokenInfoSQL* %63)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseType(%struct.sTokenInfoSQL* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfoSQL*, align 8
  %name = alloca %struct.sTokenInfoSQL*, align 8
  %saveScope = alloca %struct.sVString*, align 8
  %saveScopeKind = alloca i32, align 4
  %vStringClear_s = alloca %struct.sVString*, align 8
  store %struct.sTokenInfoSQL* %token, %struct.sTokenInfoSQL** %token.addr, align 8
  %call = call %struct.sTokenInfoSQL* @newToken()
  store %struct.sTokenInfoSQL* %call, %struct.sTokenInfoSQL** %name, align 8
  %call1 = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call1, %struct.sVString** %saveScope, align 8
  %0 = load %struct.sVString*, %struct.sVString** %saveScope, align 8
  %1 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %scope = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %1, i32 0, i32 3
  %2 = load %struct.sVString*, %struct.sVString** %scope, align 8
  call void @vStringCopy(%struct.sVString* %0, %struct.sVString* %2)
  %3 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %name, align 8
  %4 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %scope2 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %4, i32 0, i32 3
  %5 = load %struct.sVString*, %struct.sVString** %scope2, align 8
  %6 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %scopeKind = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %6, i32 0, i32 4
  %7 = load i32, i32* %scopeKind, align 8
  call void @addToScope(%struct.sTokenInfoSQL* %3, %struct.sVString* %5, i32 %7)
  %8 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %scopeKind3 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %8, i32 0, i32 4
  %9 = load i32, i32* %scopeKind3, align 8
  store i32 %9, i32* %saveScopeKind, align 4
  %10 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %name, align 8
  call void @readToken(%struct.sTokenInfoSQL* %10)
  %11 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %name, align 8
  %type = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %11, i32 0, i32 0
  %12 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %12, 9
  br i1 %cmp, label %if.then, label %if.end15

if.then:                                          ; preds = %entry
  %13 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @readToken(%struct.sTokenInfoSQL* %13)
  %14 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %14, i32 0, i32 1
  %15 = load i32, i32* %keyword, align 4
  %cmp4 = icmp eq i32 %15, 0
  br i1 %cmp4, label %if.then5, label %if.end14

if.then5:                                         ; preds = %if.then
  %16 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @readToken(%struct.sTokenInfoSQL* %16)
  %17 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %keyword6 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %17, i32 0, i32 1
  %18 = load i32, i32* %keyword6, align 4
  switch i32 %18, label %sw.default [
    i32 20, label %sw.bb
    i32 21, label %sw.bb
    i32 27, label %sw.bb7
    i32 22, label %sw.bb8
  ]

sw.bb:                                            ; preds = %if.then5, %if.then5
  %19 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %name, align 8
  call void @makeSqlTag(%struct.sTokenInfoSQL* %19, i32 8)
  %20 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %21 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %name, align 8
  %string = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %21, i32 0, i32 2
  %22 = load %struct.sVString*, %struct.sVString** %string, align 8
  call void @addToScope(%struct.sTokenInfoSQL* %20, %struct.sVString* %22, i32 8)
  %23 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @parseRecord(%struct.sTokenInfoSQL* %23)
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.then5
  %24 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %name, align 8
  call void @makeSqlTag(%struct.sTokenInfoSQL* %24, i32 10)
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.then5
  %25 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @readToken(%struct.sTokenInfoSQL* %25)
  %26 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %keyword9 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %26, i32 0, i32 1
  %27 = load i32, i32* %keyword9, align 4
  %cmp10 = icmp eq i32 %27, 3
  br i1 %cmp10, label %if.then11, label %if.end

if.then11:                                        ; preds = %sw.bb8
  %28 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %name, align 8
  call void @makeSqlTag(%struct.sTokenInfoSQL* %28, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then11, %sw.bb8
  br label %sw.epilog

sw.default:                                       ; preds = %if.then5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end, %sw.bb7, %sw.bb
  br label %do.body

do.body:                                          ; preds = %sw.epilog
  %29 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %scope12 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %29, i32 0, i32 3
  %30 = load %struct.sVString*, %struct.sVString** %scope12, align 8
  store %struct.sVString* %30, %struct.sVString** %vStringClear_s, align 8
  %31 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %31, i32 0, i32 0
  store i64 0, i64* %length, align 8
  %32 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %32, i32 0, i32 2
  %33 = load i8*, i8** %buffer, align 8
  %arrayidx = getelementptr inbounds i8, i8* %33, i64 0
  store i8 0, i8* %arrayidx, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  %34 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %scopeKind13 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %34, i32 0, i32 4
  store i32 23, i32* %scopeKind13, align 8
  br label %if.end14

if.end14:                                         ; preds = %do.end, %if.then
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %entry
  %35 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %scope16 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %35, i32 0, i32 3
  %36 = load %struct.sVString*, %struct.sVString** %scope16, align 8
  %37 = load %struct.sVString*, %struct.sVString** %saveScope, align 8
  call void @vStringCopy(%struct.sVString* %36, %struct.sVString* %37)
  %38 = load i32, i32* %saveScopeKind, align 4
  %39 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %scopeKind17 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %39, i32 0, i32 4
  store i32 %38, i32* %scopeKind17, align 8
  %40 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %name, align 8
  call void @deleteToken(%struct.sTokenInfoSQL* %40)
  %41 = load %struct.sVString*, %struct.sVString** %saveScope, align 8
  call void @vStringDelete(%struct.sVString* %41)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseVariable(%struct.sTokenInfoSQL* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfoSQL*, align 8
  %name = alloca %struct.sTokenInfoSQL*, align 8
  store %struct.sTokenInfoSQL* %token, %struct.sTokenInfoSQL** %token.addr, align 8
  %call = call %struct.sTokenInfoSQL* @newToken()
  store %struct.sTokenInfoSQL* %call, %struct.sTokenInfoSQL** %name, align 8
  %0 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %name, align 8
  call void @readIdentifier(%struct.sTokenInfoSQL* %0)
  %1 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @readToken(%struct.sTokenInfoSQL* %1)
  %2 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %2, i32 0, i32 0
  %3 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %3, 7
  br i1 %cmp, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %name, align 8
  %type1 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %4, i32 0, i32 0
  %5 = load i32, i32* %type1, align 8
  %cmp2 = icmp eq i32 %5, 9
  br i1 %cmp2, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %6 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %name, align 8
  %type3 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %6, i32 0, i32 0
  %7 = load i32, i32* %type3, align 8
  %cmp4 = icmp eq i32 %7, 14
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %8 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %name, align 8
  call void @makeSqlTag(%struct.sTokenInfoSQL* %8, i32 12)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false, %entry
  %9 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @findCmdTerm(%struct.sTokenInfoSQL* %9, i1 zeroext true)
  %10 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %name, align 8
  call void @deleteToken(%struct.sTokenInfoSQL* %10)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseView(%struct.sTokenInfoSQL* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfoSQL*, align 8
  %name = alloca %struct.sTokenInfoSQL*, align 8
  store %struct.sTokenInfoSQL* %token, %struct.sTokenInfoSQL** %token.addr, align 8
  %call = call %struct.sTokenInfoSQL* @newToken()
  store %struct.sTokenInfoSQL* %call, %struct.sTokenInfoSQL** %name, align 8
  %0 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %name, align 8
  call void @readIdentifier(%struct.sTokenInfoSQL* %0)
  %1 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @readToken(%struct.sTokenInfoSQL* %1)
  %2 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %2, i32 0, i32 0
  %3 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %3, 15
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %name, align 8
  call void @readIdentifier(%struct.sTokenInfoSQL* %4)
  %5 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @readToken(%struct.sTokenInfoSQL* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type1 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %6, i32 0, i32 0
  %7 = load i32, i32* %type1, align 8
  %cmp2 = icmp eq i32 %7, 11
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %8 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @skipArgumentList(%struct.sTokenInfoSQL* %8)
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end4
  %9 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %9, i32 0, i32 1
  %10 = load i32, i32* %keyword, align 4
  %cmp5 = icmp eq i32 %10, 0
  br i1 %cmp5, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.cond
  %11 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type6 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %11, i32 0, i32 0
  %12 = load i32, i32* %type6, align 8
  %cmp7 = icmp eq i32 %12, 7
  br i1 %cmp7, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true
  %13 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type8 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %13, i32 0, i32 0
  %14 = load i32, i32* %type8, align 8
  %cmp9 = icmp eq i32 %14, 1
  %lnot = xor i1 %cmp9, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %15 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %15, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %16 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @readToken(%struct.sTokenInfoSQL* %16)
  br label %while.cond

while.end:                                        ; preds = %land.end
  %17 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %keyword10 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %17, i32 0, i32 1
  %18 = load i32, i32* %keyword10, align 4
  %cmp11 = icmp eq i32 %18, 0
  br i1 %cmp11, label %land.lhs.true12, label %if.end18

land.lhs.true12:                                  ; preds = %while.end
  %19 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %name, align 8
  %type13 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %19, i32 0, i32 0
  %20 = load i32, i32* %type13, align 8
  %cmp14 = icmp eq i32 %20, 9
  br i1 %cmp14, label %if.then17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true12
  %21 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %name, align 8
  %type15 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %21, i32 0, i32 0
  %22 = load i32, i32* %type15, align 8
  %cmp16 = icmp eq i32 %22, 14
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %lor.lhs.false, %land.lhs.true12
  %23 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %name, align 8
  call void @makeSqlTag(%struct.sTokenInfoSQL* %23, i32 18)
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %lor.lhs.false, %while.end
  %24 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @findCmdTerm(%struct.sTokenInfoSQL* %24, i1 zeroext true)
  %25 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %name, align 8
  call void @deleteToken(%struct.sTokenInfoSQL* %25)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseDeclare(%struct.sTokenInfoSQL* %token, i1 zeroext %local) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfoSQL*, align 8
  %local.addr = alloca i8, align 1
  %stoppers = alloca [2 x i32], align 4
  store %struct.sTokenInfoSQL* %token, %struct.sTokenInfoSQL** %token.addr, align 8
  %frombool = zext i1 %local to i8
  store i8 %frombool, i8* %local.addr, align 1
  %0 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %0, i32 0, i32 1
  %1 = load i32, i32* %keyword, align 4
  %cmp = icmp eq i32 %1, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @readToken(%struct.sTokenInfoSQL* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end21, %if.end
  %3 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %keyword1 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %3, i32 0, i32 1
  %4 = load i32, i32* %keyword1, align 4
  %cmp2 = icmp eq i32 %4, 1
  br i1 %cmp2, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.cond
  %5 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %keyword3 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %5, i32 0, i32 1
  %6 = load i32, i32* %keyword3, align 4
  %cmp4 = icmp eq i32 %6, 5
  br i1 %cmp4, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true
  %7 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %7, i32 0, i32 0
  %8 = load i32, i32* %type, align 8
  %cmp5 = icmp eq i32 %8, 1
  %lnot = xor i1 %cmp5, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %9 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %9, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %10 = bitcast [2 x i32]* %stoppers to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast ([2 x i32]* @__const.parseDeclare.stoppers to i8*), i64 8, i1 false)
  %11 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %keyword6 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %11, i32 0, i32 1
  %12 = load i32, i32* %keyword6, align 4
  switch i32 %12, label %sw.default [
    i32 3, label %sw.bb
    i32 6, label %sw.bb7
    i32 19, label %sw.bb8
    i32 26, label %sw.bb9
    i32 28, label %sw.bb10
    i32 29, label %sw.bb11
  ]

sw.bb:                                            ; preds = %while.body
  %13 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @parseSimple(%struct.sTokenInfoSQL* %13, i32 0)
  br label %sw.epilog

sw.bb7:                                           ; preds = %while.body
  %14 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @parseSubProgram(%struct.sTokenInfoSQL* %14)
  br label %sw.epilog

sw.bb8:                                           ; preds = %while.body
  %15 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @parseSubProgram(%struct.sTokenInfoSQL* %15)
  br label %sw.epilog

sw.bb9:                                           ; preds = %while.body
  %16 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @parseSimple(%struct.sTokenInfoSQL* %16, i32 9)
  br label %sw.epilog

sw.bb10:                                          ; preds = %while.body
  %17 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @parseSimple(%struct.sTokenInfoSQL* %17, i32 11)
  br label %sw.epilog

sw.bb11:                                          ; preds = %while.body
  %18 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @parseType(%struct.sTokenInfoSQL* %18)
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  %19 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type12 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %19, i32 0, i32 0
  %20 = load i32, i32* %type12, align 8
  %cmp13 = icmp eq i32 %20, 9
  br i1 %cmp13, label %if.then14, label %if.end17

if.then14:                                        ; preds = %sw.default
  %21 = load i8, i8* %local.addr, align 1
  %tobool = trunc i8 %21 to i1
  br i1 %tobool, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.then14
  %22 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @makeSqlTag(%struct.sTokenInfoSQL* %22, i32 4)
  br label %if.end16

if.else:                                          ; preds = %if.then14
  %23 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @makeSqlTag(%struct.sTokenInfoSQL* %23, i32 12)
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then15
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %sw.default
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end17, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb
  %24 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %stoppers, i64 0, i64 0
  call void @findTokenOrKeywords(%struct.sTokenInfoSQL* %24, i32 7, i32* %arraydecay, i32 2)
  %25 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type18 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %25, i32 0, i32 0
  %26 = load i32, i32* %type18, align 8
  %cmp19 = icmp eq i32 %26, 7
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %sw.epilog
  %27 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @readToken(%struct.sTokenInfoSQL* %27)
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %sw.epilog
  br label %while.cond

while.end:                                        ; preds = %land.end
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseDeclareANSI(%struct.sTokenInfoSQL* %token, i1 zeroext %local) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfoSQL*, align 8
  %local.addr = alloca i8, align 1
  %type = alloca %struct.sTokenInfoSQL*, align 8
  store %struct.sTokenInfoSQL* %token, %struct.sTokenInfoSQL** %token.addr, align 8
  %frombool = zext i1 %local to i8
  store i8 %frombool, i8* %local.addr, align 1
  %call = call %struct.sTokenInfoSQL* @newToken()
  store %struct.sTokenInfoSQL* %call, %struct.sTokenInfoSQL** %type, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end29, %entry
  %0 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %0, i32 0, i32 1
  %1 = load i32, i32* %keyword, align 4
  %cmp = icmp eq i32 %1, 4
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @readToken(%struct.sTokenInfoSQL* %2)
  %3 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %type, align 8
  call void @readToken(%struct.sTokenInfoSQL* %3)
  %4 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %type, align 8
  %keyword1 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %4, i32 0, i32 1
  %5 = load i32, i32* %keyword1, align 4
  %cmp2 = icmp eq i32 %5, 3
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %6 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @makeSqlTag(%struct.sTokenInfoSQL* %6, i32 0)
  br label %if.end29

if.else:                                          ; preds = %while.body
  %7 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %keyword3 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %7, i32 0, i32 1
  %8 = load i32, i32* %keyword3, align 4
  %cmp4 = icmp eq i32 %8, 63
  br i1 %cmp4, label %land.lhs.true, label %if.else17

land.lhs.true:                                    ; preds = %if.else
  %9 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %type, align 8
  %keyword5 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %9, i32 0, i32 1
  %10 = load i32, i32* %keyword5, align 4
  %cmp6 = icmp eq i32 %10, 64
  br i1 %cmp6, label %if.then7, label %if.else17

if.then7:                                         ; preds = %land.lhs.true
  %11 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @readToken(%struct.sTokenInfoSQL* %11)
  %12 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %keyword8 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %12, i32 0, i32 1
  %13 = load i32, i32* %keyword8, align 4
  %cmp9 = icmp eq i32 %13, 27
  br i1 %cmp9, label %if.then10, label %if.end16

if.then10:                                        ; preds = %if.then7
  %14 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @readToken(%struct.sTokenInfoSQL* %14)
  %15 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type11 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %15, i32 0, i32 0
  %16 = load i32, i32* %type11, align 8
  %cmp12 = icmp eq i32 %16, 9
  br i1 %cmp12, label %if.then15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then10
  %17 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type13 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %17, i32 0, i32 0
  %18 = load i32, i32* %type13, align 8
  %cmp14 = icmp eq i32 %18, 14
  br i1 %cmp14, label %if.then15, label %if.end

if.then15:                                        ; preds = %lor.lhs.false, %if.then10
  %19 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @makeSqlTag(%struct.sTokenInfoSQL* %19, i32 10)
  br label %if.end

if.end:                                           ; preds = %if.then15, %lor.lhs.false
  br label %if.end16

if.end16:                                         ; preds = %if.end, %if.then7
  br label %if.end28

if.else17:                                        ; preds = %land.lhs.true, %if.else
  %20 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type18 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %20, i32 0, i32 0
  %21 = load i32, i32* %type18, align 8
  %cmp19 = icmp eq i32 %21, 9
  br i1 %cmp19, label %if.then23, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %if.else17
  %22 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type21 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %22, i32 0, i32 0
  %23 = load i32, i32* %type21, align 8
  %cmp22 = icmp eq i32 %23, 14
  br i1 %cmp22, label %if.then23, label %if.end27

if.then23:                                        ; preds = %lor.lhs.false20, %if.else17
  %24 = load i8, i8* %local.addr, align 1
  %tobool = trunc i8 %24 to i1
  br i1 %tobool, label %if.then24, label %if.else25

if.then24:                                        ; preds = %if.then23
  %25 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @makeSqlTag(%struct.sTokenInfoSQL* %25, i32 4)
  br label %if.end26

if.else25:                                        ; preds = %if.then23
  %26 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @makeSqlTag(%struct.sTokenInfoSQL* %26, i32 12)
  br label %if.end26

if.end26:                                         ; preds = %if.else25, %if.then24
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %lor.lhs.false20
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.end16
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.then
  %27 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @findToken(%struct.sTokenInfoSQL* %27, i32 7)
  %28 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @readToken(%struct.sTokenInfoSQL* %28)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %29 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %type, align 8
  call void @deleteToken(%struct.sTokenInfoSQL* %29)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @isCmdTerm(%struct.sTokenInfoSQL* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfoSQL*, align 8
  store %struct.sTokenInfoSQL* %token, %struct.sTokenInfoSQL** %token.addr, align 8
  %0 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %0, i32 0, i32 0
  %1 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %1, 7
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type1 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %2, i32 0, i32 0
  %3 = load i32, i32* %type1, align 8
  %cmp2 = icmp eq i32 %3, 20
  br i1 %cmp2, label %lor.end, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %4 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type4 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %4, i32 0, i32 0
  %5 = load i32, i32* %type4, align 8
  %cmp5 = icmp eq i32 %5, 21
  br i1 %cmp5, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false3
  %6 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %6, i32 0, i32 1
  %7 = load i32, i32* %keyword, align 4
  %cmp6 = icmp eq i32 %7, 71
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false3, %lor.lhs.false, %entry
  %8 = phi i1 [ true, %lor.lhs.false3 ], [ true, %lor.lhs.false ], [ true, %entry ], [ %cmp6, %lor.rhs ]
  ret i1 %8
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @findTokenOrKeywords(%struct.sTokenInfoSQL* %token, i32 %type, i32* %keywords, i32 %kcount) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfoSQL*, align 8
  %type.addr = alloca i32, align 4
  %keywords.addr = alloca i32*, align 8
  %kcount.addr = alloca i32, align 4
  store %struct.sTokenInfoSQL* %token, %struct.sTokenInfoSQL** %token.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  store i32* %keywords, i32** %keywords.addr, align 8
  store i32 %kcount, i32* %kcount.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type1 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %0, i32 0, i32 0
  %1 = load i32, i32* %type1, align 8
  %2 = load i32, i32* %type.addr, align 4
  %cmp = icmp eq i32 %1, %2
  br i1 %cmp, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.cond
  %3 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type2 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %3, i32 0, i32 0
  %4 = load i32, i32* %type2, align 8
  %cmp3 = icmp eq i32 %4, 10
  br i1 %cmp3, label %land.lhs.true4, label %land.rhs

land.lhs.true4:                                   ; preds = %land.lhs.true
  %5 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %6 = load i32*, i32** %keywords.addr, align 8
  %7 = load i32, i32* %kcount.addr, align 4
  %call = call zeroext i1 @isOneOfKeyword(%struct.sTokenInfoSQL* %5, i32* %6, i32 %7)
  br i1 %call, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true4, %land.lhs.true
  %8 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type5 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %8, i32 0, i32 0
  %9 = load i32, i32* %type5, align 8
  %cmp6 = icmp eq i32 %9, 1
  %lnot = xor i1 %cmp6, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true4, %while.cond
  %10 = phi i1 [ false, %land.lhs.true4 ], [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %10, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %11 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @readToken(%struct.sTokenInfoSQL* %11)
  br label %while.cond

while.end:                                        ; preds = %land.end
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @isOneOfKeyword(%struct.sTokenInfoSQL* %token, i32* %keywords, i32 %count) #0 {
entry:
  %retval = alloca i1, align 1
  %token.addr = alloca %struct.sTokenInfoSQL*, align 8
  %keywords.addr = alloca i32*, align 8
  %count.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.sTokenInfoSQL* %token, %struct.sTokenInfoSQL** %token.addr, align 8
  store i32* %keywords, i32** %keywords.addr, align 8
  store i32 %count, i32* %count.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %count.addr, align 4
  %cmp = icmp ult i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %2, i32 0, i32 1
  %3 = load i32, i32* %keyword, align 4
  %4 = load i32*, i32** %keywords.addr, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = zext i32 %5 to i64
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  %cmp1 = icmp eq i32 %3, %6
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i1 true, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i32, i32* %i, align 4
  %inc = add i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i1 false, i1* %retval, align 1
  br label %return

return:                                           ; preds = %for.end, %if.then
  %8 = load i1, i1* %retval, align 1
  ret i1 %8
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @findToken(%struct.sTokenInfoSQL* %token, i32 %type) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfoSQL*, align 8
  %type.addr = alloca i32, align 4
  store %struct.sTokenInfoSQL* %token, %struct.sTokenInfoSQL** %token.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type1 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %0, i32 0, i32 0
  %1 = load i32, i32* %type1, align 8
  %2 = load i32, i32* %type.addr, align 4
  %cmp = icmp eq i32 %1, %2
  br i1 %cmp, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %3 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type2 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %3, i32 0, i32 0
  %4 = load i32, i32* %type2, align 8
  %cmp3 = icmp eq i32 %4, 1
  %lnot = xor i1 %cmp3, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %5 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %5, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %6 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @readToken(%struct.sTokenInfoSQL* %6)
  br label %while.cond

while.end:                                        ; preds = %land.end
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @findCmdTerm(%struct.sTokenInfoSQL* %token, i1 zeroext %check_first) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfoSQL*, align 8
  %check_first.addr = alloca i8, align 1
  %begin_end_nest_lvl = alloca i32, align 4
  store %struct.sTokenInfoSQL* %token, %struct.sTokenInfoSQL** %token.addr, align 8
  %frombool = zext i1 %check_first to i8
  store i8 %frombool, i8* %check_first.addr, align 1
  %0 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %begin_end_nest_lvl1 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %0, i32 0, i32 5
  %1 = load i32, i32* %begin_end_nest_lvl1, align 4
  store i32 %1, i32* %begin_end_nest_lvl, align 4
  %2 = load i8, i8* %check_first.addr, align 1
  %tobool = trunc i8 %2 to i1
  br i1 %tobool, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %3 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %call = call zeroext i1 @isCmdTerm(%struct.sTokenInfoSQL* %3)
  br i1 %call, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  br label %do.end

if.end:                                           ; preds = %if.then
  br label %if.end3

if.end3:                                          ; preds = %if.end, %entry
  br label %do.body

do.body:                                          ; preds = %land.end, %if.end3
  %4 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @readToken(%struct.sTokenInfoSQL* %4)
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %5 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %call4 = call zeroext i1 @isCmdTerm(%struct.sTokenInfoSQL* %5)
  br i1 %call4, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %do.cond
  %6 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %7 = load i32, i32* %begin_end_nest_lvl, align 4
  %call5 = call zeroext i1 @isMatchedEnd(%struct.sTokenInfoSQL* %6, i32 %7)
  br i1 %call5, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true
  %8 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %8, i32 0, i32 0
  %9 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %9, 1
  %lnot = xor i1 %cmp, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %do.cond
  %10 = phi i1 [ false, %land.lhs.true ], [ false, %do.cond ], [ %lnot, %land.rhs ]
  br i1 %10, label %do.body, label %do.end

do.end:                                           ; preds = %if.then2, %land.end
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @isMatchedEnd(%struct.sTokenInfoSQL* %token, i32 %nest_lvl) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfoSQL*, align 8
  %nest_lvl.addr = alloca i32, align 4
  %terminated = alloca i8, align 1
  store %struct.sTokenInfoSQL* %token, %struct.sTokenInfoSQL** %token.addr, align 8
  store i32 %nest_lvl, i32* %nest_lvl.addr, align 4
  store i8 0, i8* %terminated, align 1
  %0 = load i32, i32* %nest_lvl.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %if.end4

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %1, i32 0, i32 1
  %2 = load i32, i32* %keyword, align 4
  %cmp1 = icmp eq i32 %2, 5
  br i1 %cmp1, label %if.then, label %if.end4

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %begin_end_nest_lvl = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %3, i32 0, i32 5
  %4 = load i32, i32* %begin_end_nest_lvl, align 4
  %5 = load i32, i32* %nest_lvl.addr, align 4
  %cmp2 = icmp eq i32 %4, %5
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  store i8 1, i8* %terminated, align 1
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end4

if.end4:                                          ; preds = %if.end, %land.lhs.true, %entry
  %6 = load i8, i8* %terminated, align 1
  %tobool = trunc i8 %6 to i1
  ret i1 %tobool
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @readIdentifier(%struct.sTokenInfoSQL* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfoSQL*, align 8
  %close_square = alloca %struct.sTokenInfoSQL*, align 8
  store %struct.sTokenInfoSQL* %token, %struct.sTokenInfoSQL** %token.addr, align 8
  %0 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @readToken(%struct.sTokenInfoSQL* %0)
  %1 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %1, i32 0, i32 0
  %2 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %2, 18
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call %struct.sTokenInfoSQL* @newToken()
  store %struct.sTokenInfoSQL* %call, %struct.sTokenInfoSQL** %close_square, align 8
  %3 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @readToken(%struct.sTokenInfoSQL* %3)
  %4 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %close_square, align 8
  call void @readToken(%struct.sTokenInfoSQL* %4)
  %5 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %close_square, align 8
  call void @deleteToken(%struct.sTokenInfoSQL* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @vStringCopy(%struct.sVString*, %struct.sVString*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @copyToken(%struct.sTokenInfoSQL* %dest, %struct.sTokenInfoSQL* %src) #0 {
entry:
  %dest.addr = alloca %struct.sTokenInfoSQL*, align 8
  %src.addr = alloca %struct.sTokenInfoSQL*, align 8
  store %struct.sTokenInfoSQL* %dest, %struct.sTokenInfoSQL** %dest.addr, align 8
  store %struct.sTokenInfoSQL* %src, %struct.sTokenInfoSQL** %src.addr, align 8
  %0 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %src.addr, align 8
  %lineNumber = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %0, i32 0, i32 6
  %1 = load i64, i64* %lineNumber, align 8
  %2 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %dest.addr, align 8
  %lineNumber1 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %2, i32 0, i32 6
  store i64 %1, i64* %lineNumber1, align 8
  %3 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %dest.addr, align 8
  %filePosition = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %3, i32 0, i32 7
  %4 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %src.addr, align 8
  %filePosition2 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %4, i32 0, i32 7
  %5 = bitcast %struct._MIOPos* %filePosition to i8*
  %6 = bitcast %struct._MIOPos* %filePosition2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 8 %6, i64 16, i1 false)
  %7 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %src.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %7, i32 0, i32 0
  %8 = load i32, i32* %type, align 8
  %9 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %dest.addr, align 8
  %type3 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %9, i32 0, i32 0
  store i32 %8, i32* %type3, align 8
  %10 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %src.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %10, i32 0, i32 1
  %11 = load i32, i32* %keyword, align 4
  %12 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %dest.addr, align 8
  %keyword4 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %12, i32 0, i32 1
  store i32 %11, i32* %keyword4, align 4
  %13 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %dest.addr, align 8
  %string = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %13, i32 0, i32 2
  %14 = load %struct.sVString*, %struct.sVString** %string, align 8
  %15 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %src.addr, align 8
  %string5 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %15, i32 0, i32 2
  %16 = load %struct.sVString*, %struct.sVString** %string5, align 8
  call void @vStringCopy(%struct.sVString* %14, %struct.sVString* %16)
  %17 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %dest.addr, align 8
  %scope = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %17, i32 0, i32 3
  %18 = load %struct.sVString*, %struct.sVString** %scope, align 8
  %19 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %src.addr, align 8
  %scope6 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %19, i32 0, i32 3
  %20 = load %struct.sVString*, %struct.sVString** %scope6, align 8
  call void @vStringCopy(%struct.sVString* %18, %struct.sVString* %20)
  %21 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %src.addr, align 8
  %scopeKind = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %21, i32 0, i32 4
  %22 = load i32, i32* %scopeKind, align 8
  %23 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %dest.addr, align 8
  %scopeKind7 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %23, i32 0, i32 4
  store i32 %22, i32* %scopeKind7, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @addToScope(%struct.sTokenInfoSQL* %token, %struct.sVString* %extra, i32 %kind) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfoSQL*, align 8
  %extra.addr = alloca %struct.sVString*, align 8
  %kind.addr = alloca i32, align 4
  store %struct.sTokenInfoSQL* %token, %struct.sTokenInfoSQL** %token.addr, align 8
  store %struct.sVString* %extra, %struct.sVString** %extra.addr, align 8
  store i32 %kind, i32* %kind.addr, align 4
  %0 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %scope = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %0, i32 0, i32 3
  %1 = load %struct.sVString*, %struct.sVString** %scope, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %1, i32 0, i32 0
  %2 = load i64, i64* %length, align 8
  %cmp = icmp ugt i64 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %scope1 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %3, i32 0, i32 3
  %4 = load %struct.sVString*, %struct.sVString** %scope1, align 8
  call void @vStringPut(%struct.sVString* %4, i32 46)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %scope2 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %5, i32 0, i32 3
  %6 = load %struct.sVString*, %struct.sVString** %scope2, align 8
  %7 = load %struct.sVString*, %struct.sVString** %extra.addr, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %7, i32 0, i32 2
  %8 = load i8*, i8** %buffer, align 8
  call void @vStringCatS(%struct.sVString* %6, i8* %8)
  %9 = load i32, i32* %kind.addr, align 4
  %10 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %scopeKind = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %10, i32 0, i32 4
  store i32 %9, i32* %scopeKind, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @skipArgumentList(%struct.sTokenInfoSQL* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfoSQL*, align 8
  store %struct.sTokenInfoSQL* %token, %struct.sTokenInfoSQL** %token.addr, align 8
  %0 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %0, i32 0, i32 0
  %1 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %1, 11
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @skipToMatched(%struct.sTokenInfoSQL* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @vStringCatS(%struct.sVString*, i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @skipToMatched(%struct.sTokenInfoSQL* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfoSQL*, align 8
  %nest_level = alloca i32, align 4
  %open_token = alloca i32, align 4
  %close_token = alloca i32, align 4
  store %struct.sTokenInfoSQL* %token, %struct.sTokenInfoSQL** %token.addr, align 8
  store i32 0, i32* %nest_level, align 4
  %0 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %0, i32 0, i32 0
  %1 = load i32, i32* %type, align 8
  switch i32 %1, label %sw.default [
    i32 11, label %sw.bb
    i32 16, label %sw.bb1
    i32 18, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  store i32 11, i32* %open_token, align 4
  store i32 5, i32* %close_token, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  store i32 16, i32* %open_token, align 4
  store i32 17, i32* %close_token, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  store i32 18, i32* %open_token, align 4
  store i32 19, i32* %close_token, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %if.end18

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb1, %sw.bb
  %2 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type3 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %2, i32 0, i32 0
  %3 = load i32, i32* %type3, align 8
  %4 = load i32, i32* %open_token, align 4
  %cmp = icmp eq i32 %3, %4
  br i1 %cmp, label %if.then, label %if.end18

if.then:                                          ; preds = %sw.epilog
  %5 = load i32, i32* %nest_level, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %nest_level, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end17, %if.then
  %6 = load i32, i32* %nest_level, align 4
  %cmp4 = icmp sgt i32 %6, 0
  br i1 %cmp4, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %7 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type5 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %7, i32 0, i32 0
  %8 = load i32, i32* %type5, align 8
  %cmp6 = icmp eq i32 %8, 1
  %lnot = xor i1 %cmp6, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %9 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %9, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %10 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @readToken(%struct.sTokenInfoSQL* %10)
  %11 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type7 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %11, i32 0, i32 0
  %12 = load i32, i32* %type7, align 8
  %13 = load i32, i32* %open_token, align 4
  %cmp8 = icmp eq i32 %12, %13
  br i1 %cmp8, label %if.then9, label %if.end

if.then9:                                         ; preds = %while.body
  %14 = load i32, i32* %nest_level, align 4
  %inc10 = add nsw i32 %14, 1
  store i32 %inc10, i32* %nest_level, align 4
  br label %if.end

if.end:                                           ; preds = %if.then9, %while.body
  %15 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type11 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %15, i32 0, i32 0
  %16 = load i32, i32* %type11, align 8
  %17 = load i32, i32* %close_token, align 4
  %cmp12 = icmp eq i32 %16, %17
  br i1 %cmp12, label %if.then13, label %if.end17

if.then13:                                        ; preds = %if.end
  %18 = load i32, i32* %nest_level, align 4
  %cmp14 = icmp sgt i32 %18, 0
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.then13
  %19 = load i32, i32* %nest_level, align 4
  %dec = add nsw i32 %19, -1
  store i32 %dec, i32* %nest_level, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.then13
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.end
  br label %while.cond

while.end:                                        ; preds = %land.end
  %20 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @readToken(%struct.sTokenInfoSQL* %20)
  br label %if.end18

if.end18:                                         ; preds = %sw.default, %while.end, %sw.epilog
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseRecord(%struct.sTokenInfoSQL* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfoSQL*, align 8
  store %struct.sTokenInfoSQL* %token, %struct.sTokenInfoSQL** %token.addr, align 8
  %0 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %0, i32 0, i32 0
  %1 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %1, 11
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @readToken(%struct.sTokenInfoSQL* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type1 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %3, i32 0, i32 0
  %4 = load i32, i32* %type1, align 8
  %cmp2 = icmp eq i32 %4, 11
  br i1 %cmp2, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  br label %do.end

if.end4:                                          ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %land.end55, %if.end4
  %5 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type5 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %5, i32 0, i32 0
  %6 = load i32, i32* %type5, align 8
  %cmp6 = icmp eq i32 %6, 8
  br i1 %cmp6, label %if.then9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body
  %7 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type7 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %7, i32 0, i32 0
  %8 = load i32, i32* %type7, align 8
  %cmp8 = icmp eq i32 %8, 11
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %lor.lhs.false, %do.body
  %9 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @readToken(%struct.sTokenInfoSQL* %9)
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %lor.lhs.false
  %10 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %10, i32 0, i32 1
  %11 = load i32, i32* %keyword, align 4
  %cmp11 = icmp eq i32 %11, 46
  br i1 %cmp11, label %if.end34, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end10
  %12 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %keyword12 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %12, i32 0, i32 1
  %13 = load i32, i32* %keyword12, align 4
  %cmp13 = icmp eq i32 %13, 47
  br i1 %cmp13, label %if.end34, label %land.lhs.true14

land.lhs.true14:                                  ; preds = %land.lhs.true
  %14 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %keyword15 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %14, i32 0, i32 1
  %15 = load i32, i32* %keyword15, align 4
  %cmp16 = icmp eq i32 %15, 48
  br i1 %cmp16, label %if.end34, label %land.lhs.true17

land.lhs.true17:                                  ; preds = %land.lhs.true14
  %16 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %keyword18 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %16, i32 0, i32 1
  %17 = load i32, i32* %keyword18, align 4
  %cmp19 = icmp eq i32 %17, 49
  br i1 %cmp19, label %if.end34, label %land.lhs.true20

land.lhs.true20:                                  ; preds = %land.lhs.true17
  %18 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %keyword21 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %18, i32 0, i32 1
  %19 = load i32, i32* %keyword21, align 4
  %cmp22 = icmp eq i32 %19, 50
  br i1 %cmp22, label %if.end34, label %land.lhs.true23

land.lhs.true23:                                  ; preds = %land.lhs.true20
  %20 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %keyword24 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %20, i32 0, i32 1
  %21 = load i32, i32* %keyword24, align 4
  %cmp25 = icmp eq i32 %21, 51
  br i1 %cmp25, label %if.end34, label %if.then26

if.then26:                                        ; preds = %land.lhs.true23
  %22 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type27 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %22, i32 0, i32 0
  %23 = load i32, i32* %type27, align 8
  %cmp28 = icmp eq i32 %23, 9
  br i1 %cmp28, label %if.then32, label %lor.lhs.false29

lor.lhs.false29:                                  ; preds = %if.then26
  %24 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type30 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %24, i32 0, i32 0
  %25 = load i32, i32* %type30, align 8
  %cmp31 = icmp eq i32 %25, 14
  br i1 %cmp31, label %if.then32, label %if.end33

if.then32:                                        ; preds = %lor.lhs.false29, %if.then26
  %26 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @makeSqlTag(%struct.sTokenInfoSQL* %26, i32 3)
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %lor.lhs.false29
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %land.lhs.true23, %land.lhs.true20, %land.lhs.true17, %land.lhs.true14, %land.lhs.true, %if.end10
  br label %while.cond

while.cond:                                       ; preds = %if.end48, %if.end34
  %27 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type35 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %27, i32 0, i32 0
  %28 = load i32, i32* %type35, align 8
  %cmp36 = icmp eq i32 %28, 8
  br i1 %cmp36, label %land.end, label %land.lhs.true37

land.lhs.true37:                                  ; preds = %while.cond
  %29 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type38 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %29, i32 0, i32 0
  %30 = load i32, i32* %type38, align 8
  %cmp39 = icmp eq i32 %30, 5
  br i1 %cmp39, label %land.end, label %land.lhs.true40

land.lhs.true40:                                  ; preds = %land.lhs.true37
  %31 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type41 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %31, i32 0, i32 0
  %32 = load i32, i32* %type41, align 8
  %cmp42 = icmp eq i32 %32, 11
  br i1 %cmp42, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true40
  %33 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type43 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %33, i32 0, i32 0
  %34 = load i32, i32* %type43, align 8
  %cmp44 = icmp eq i32 %34, 1
  %lnot = xor i1 %cmp44, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true40, %land.lhs.true37, %while.cond
  %35 = phi i1 [ false, %land.lhs.true40 ], [ false, %land.lhs.true37 ], [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %35, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %36 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @readToken(%struct.sTokenInfoSQL* %36)
  %37 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type45 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %37, i32 0, i32 0
  %38 = load i32, i32* %type45, align 8
  %cmp46 = icmp eq i32 %38, 11
  br i1 %cmp46, label %if.then47, label %if.end48

if.then47:                                        ; preds = %while.body
  %39 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  call void @skipArgumentList(%struct.sTokenInfoSQL* %39)
  br label %if.end48

if.end48:                                         ; preds = %if.then47, %while.body
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %do.cond

do.cond:                                          ; preds = %while.end
  %40 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type49 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %40, i32 0, i32 0
  %41 = load i32, i32* %type49, align 8
  %cmp50 = icmp eq i32 %41, 5
  br i1 %cmp50, label %land.end55, label %land.rhs51

land.rhs51:                                       ; preds = %do.cond
  %42 = load %struct.sTokenInfoSQL*, %struct.sTokenInfoSQL** %token.addr, align 8
  %type52 = getelementptr inbounds %struct.sTokenInfoSQL, %struct.sTokenInfoSQL* %42, i32 0, i32 0
  %43 = load i32, i32* %type52, align 8
  %cmp53 = icmp eq i32 %43, 1
  %lnot54 = xor i1 %cmp53, true
  br label %land.end55

land.end55:                                       ; preds = %land.rhs51, %do.cond
  %44 = phi i1 [ false, %do.cond ], [ %lnot54, %land.rhs51 ]
  br i1 %44, label %do.body, label %do.end

do.end:                                           ; preds = %if.then3, %land.end55
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
