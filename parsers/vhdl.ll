; ModuleID = 'vhdl.c'
source_filename = "vhdl.c"
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
%struct.sTokenInfo = type { i32, i32, %struct.sVString*, %struct.sVString*, i64, %struct._MIOPos }

@.str = private unnamed_addr constant [5 x i8] c"VHDL\00", align 1
@VhdlKinds = internal global [11 x %struct.sKindDefinition] [%struct.sKindDefinition { i8 1, i8 99, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 116, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 84, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 114, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 101, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 0, i8 67, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 0, i8 100, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 102, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.16, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 112, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.18, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 80, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 0, i8 108, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }], align 8
@extensions = internal constant [3 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0), i8* null], align 8
@VhdlKeywordTable = internal constant [95 x %struct.keywordTable] [%struct.keywordTable { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i32 0, i32 0), i32 0 }, %struct.keywordTable { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0), i32 1 }, %struct.keywordTable { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i32 2 }, %struct.keywordTable { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), i32 3 }, %struct.keywordTable { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i32 0, i32 0), i32 4 }, %struct.keywordTable { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i32 0, i32 0), i32 5 }, %struct.keywordTable { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.31, i32 0, i32 0), i32 6 }, %struct.keywordTable { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0), i32 7 }, %struct.keywordTable { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0), i32 8 }, %struct.keywordTable { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i32 0, i32 0), i32 9 }, %struct.keywordTable { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0), i32 10 }, %struct.keywordTable { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0), i32 11 }, %struct.keywordTable { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i32 0, i32 0), i32 12 }, %struct.keywordTable { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i32 0, i32 0), i32 13 }, %struct.keywordTable { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i32 0, i32 0), i32 14 }, %struct.keywordTable { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i32 0, i32 0), i32 15 }, %struct.keywordTable { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i32 16 }, %struct.keywordTable { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.41, i32 0, i32 0), i32 17 }, %struct.keywordTable { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 18 }, %struct.keywordTable { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.42, i32 0, i32 0), i32 19 }, %struct.keywordTable { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i32 0, i32 0), i32 20 }, %struct.keywordTable { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i32 0, i32 0), i32 21 }, %struct.keywordTable { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i32 0, i32 0), i32 22 }, %struct.keywordTable { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.46, i32 0, i32 0), i32 23 }, %struct.keywordTable { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i32 24 }, %struct.keywordTable { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i32 0, i32 0), i32 25 }, %struct.keywordTable { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i32 0, i32 0), i32 26 }, %struct.keywordTable { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.49, i32 0, i32 0), i32 27 }, %struct.keywordTable { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i32 28 }, %struct.keywordTable { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i32 0, i32 0), i32 29 }, %struct.keywordTable { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.51, i32 0, i32 0), i32 30 }, %struct.keywordTable { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.52, i32 0, i32 0), i32 31 }, %struct.keywordTable { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i32 0, i32 0), i32 32 }, %struct.keywordTable { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.54, i32 0, i32 0), i32 33 }, %struct.keywordTable { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.55, i32 0, i32 0), i32 34 }, %struct.keywordTable { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.56, i32 0, i32 0), i32 35 }, %struct.keywordTable { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.57, i32 0, i32 0), i32 36 }, %struct.keywordTable { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i32 0, i32 0), i32 37 }, %struct.keywordTable { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.59, i32 0, i32 0), i32 38 }, %struct.keywordTable { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.60, i32 0, i32 0), i32 39 }, %struct.keywordTable { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.61, i32 0, i32 0), i32 40 }, %struct.keywordTable { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.62, i32 0, i32 0), i32 41 }, %struct.keywordTable { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.63, i32 0, i32 0), i32 42 }, %struct.keywordTable { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.64, i32 0, i32 0), i32 43 }, %struct.keywordTable { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.65, i32 0, i32 0), i32 44 }, %struct.keywordTable { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.66, i32 0, i32 0), i32 45 }, %struct.keywordTable { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.67, i32 0, i32 0), i32 46 }, %struct.keywordTable { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.68, i32 0, i32 0), i32 47 }, %struct.keywordTable { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.69, i32 0, i32 0), i32 48 }, %struct.keywordTable { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.70, i32 0, i32 0), i32 49 }, %struct.keywordTable { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.71, i32 0, i32 0), i32 50 }, %struct.keywordTable { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.72, i32 0, i32 0), i32 51 }, %struct.keywordTable { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.73, i32 0, i32 0), i32 52 }, %struct.keywordTable { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.74, i32 0, i32 0), i32 53 }, %struct.keywordTable { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.75, i32 0, i32 0), i32 54 }, %struct.keywordTable { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.76, i32 0, i32 0), i32 55 }, %struct.keywordTable { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.77, i32 0, i32 0), i32 56 }, %struct.keywordTable { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.78, i32 0, i32 0), i32 57 }, %struct.keywordTable { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0), i32 58 }, %struct.keywordTable { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.79, i32 0, i32 0), i32 59 }, %struct.keywordTable { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.80, i32 0, i32 0), i32 60 }, %struct.keywordTable { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), i32 61 }, %struct.keywordTable { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.81, i32 0, i32 0), i32 62 }, %struct.keywordTable { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.82, i32 0, i32 0), i32 63 }, %struct.keywordTable { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.83, i32 0, i32 0), i32 64 }, %struct.keywordTable { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i32 65 }, %struct.keywordTable { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.84, i32 0, i32 0), i32 66 }, %struct.keywordTable { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.85, i32 0, i32 0), i32 67 }, %struct.keywordTable { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.86, i32 0, i32 0), i32 68 }, %struct.keywordTable { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.87, i32 0, i32 0), i32 69 }, %struct.keywordTable { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.88, i32 0, i32 0), i32 70 }, %struct.keywordTable { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.89, i32 0, i32 0), i32 71 }, %struct.keywordTable { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.90, i32 0, i32 0), i32 72 }, %struct.keywordTable { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.91, i32 0, i32 0), i32 73 }, %struct.keywordTable { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.92, i32 0, i32 0), i32 74 }, %struct.keywordTable { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.93, i32 0, i32 0), i32 75 }, %struct.keywordTable { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.94, i32 0, i32 0), i32 76 }, %struct.keywordTable { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.95, i32 0, i32 0), i32 77 }, %struct.keywordTable { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.96, i32 0, i32 0), i32 78 }, %struct.keywordTable { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i32 79 }, %struct.keywordTable { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.97, i32 0, i32 0), i32 80 }, %struct.keywordTable { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.98, i32 0, i32 0), i32 81 }, %struct.keywordTable { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.99, i32 0, i32 0), i32 82 }, %struct.keywordTable { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 83 }, %struct.keywordTable { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.100, i32 0, i32 0), i32 84 }, %struct.keywordTable { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.101, i32 0, i32 0), i32 85 }, %struct.keywordTable { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.102, i32 0, i32 0), i32 86 }, %struct.keywordTable { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.103, i32 0, i32 0), i32 87 }, %struct.keywordTable { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.104, i32 0, i32 0), i32 88 }, %struct.keywordTable { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.105, i32 0, i32 0), i32 89 }, %struct.keywordTable { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.106, i32 0, i32 0), i32 90 }, %struct.keywordTable { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.107, i32 0, i32 0), i32 91 }, %struct.keywordTable { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.108, i32 0, i32 0), i32 92 }, %struct.keywordTable { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.109, i32 0, i32 0), i32 93 }, %struct.keywordTable { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.110, i32 0, i32 0), i32 94 }], align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"constant\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"constant declarations\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"type definitions\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"subtype\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"subtype definitions\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"record\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"record names\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"entity\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"entity declarations\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"component\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"component declarations\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"prototype\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"prototypes\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"function\00", align 1
@.str.16 = private unnamed_addr constant [37 x i8] c"function prototypes and declarations\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"procedure\00", align 1
@.str.18 = private unnamed_addr constant [38 x i8] c"procedure prototypes and declarations\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"package\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"package definitions\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"local\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"local definitions\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"vhdl\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"vhd\00", align 1
@Lang_vhdl = internal global i32 0, align 4
@.str.25 = private unnamed_addr constant [4 x i8] c"abs\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"access\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"after\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"alias\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"and\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"architecture\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"array\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"assert\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"attribute\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"begin\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"block\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"body\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"buffer\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"bus\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"case\00", align 1
@.str.41 = private unnamed_addr constant [14 x i8] c"configuration\00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c"disconnect\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"downto\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"else\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"elsif\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c"end\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"exit\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c"for\00", align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"generate\00", align 1
@.str.51 = private unnamed_addr constant [8 x i8] c"generic\00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c"group\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"guarded\00", align 1
@.str.54 = private unnamed_addr constant [3 x i8] c"if\00", align 1
@.str.55 = private unnamed_addr constant [7 x i8] c"impure\00", align 1
@.str.56 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.57 = private unnamed_addr constant [9 x i8] c"inertial\00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"inout\00", align 1
@.str.59 = private unnamed_addr constant [3 x i8] c"is\00", align 1
@.str.60 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.61 = private unnamed_addr constant [8 x i8] c"library\00", align 1
@.str.62 = private unnamed_addr constant [8 x i8] c"linkage\00", align 1
@.str.63 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"loop\00", align 1
@.str.65 = private unnamed_addr constant [4 x i8] c"map\00", align 1
@.str.66 = private unnamed_addr constant [4 x i8] c"mod\00", align 1
@.str.67 = private unnamed_addr constant [5 x i8] c"nand\00", align 1
@.str.68 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@.str.69 = private unnamed_addr constant [5 x i8] c"next\00", align 1
@.str.70 = private unnamed_addr constant [4 x i8] c"nor\00", align 1
@.str.71 = private unnamed_addr constant [4 x i8] c"not\00", align 1
@.str.72 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.73 = private unnamed_addr constant [3 x i8] c"of\00", align 1
@.str.74 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.75 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@.str.76 = private unnamed_addr constant [3 x i8] c"or\00", align 1
@.str.77 = private unnamed_addr constant [7 x i8] c"others\00", align 1
@.str.78 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.79 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@.str.80 = private unnamed_addr constant [10 x i8] c"postponed\00", align 1
@.str.81 = private unnamed_addr constant [8 x i8] c"process\00", align 1
@.str.82 = private unnamed_addr constant [5 x i8] c"pure\00", align 1
@.str.83 = private unnamed_addr constant [6 x i8] c"range\00", align 1
@.str.84 = private unnamed_addr constant [9 x i8] c"register\00", align 1
@.str.85 = private unnamed_addr constant [7 x i8] c"reject\00", align 1
@.str.86 = private unnamed_addr constant [7 x i8] c"return\00", align 1
@.str.87 = private unnamed_addr constant [4 x i8] c"rol\00", align 1
@.str.88 = private unnamed_addr constant [4 x i8] c"ror\00", align 1
@.str.89 = private unnamed_addr constant [7 x i8] c"select\00", align 1
@.str.90 = private unnamed_addr constant [9 x i8] c"severity\00", align 1
@.str.91 = private unnamed_addr constant [7 x i8] c"signal\00", align 1
@.str.92 = private unnamed_addr constant [7 x i8] c"shared\00", align 1
@.str.93 = private unnamed_addr constant [4 x i8] c"sla\00", align 1
@.str.94 = private unnamed_addr constant [4 x i8] c"sli\00", align 1
@.str.95 = private unnamed_addr constant [4 x i8] c"sra\00", align 1
@.str.96 = private unnamed_addr constant [4 x i8] c"srl\00", align 1
@.str.97 = private unnamed_addr constant [5 x i8] c"then\00", align 1
@.str.98 = private unnamed_addr constant [3 x i8] c"to\00", align 1
@.str.99 = private unnamed_addr constant [10 x i8] c"transport\00", align 1
@.str.100 = private unnamed_addr constant [11 x i8] c"unaffected\00", align 1
@.str.101 = private unnamed_addr constant [6 x i8] c"units\00", align 1
@.str.102 = private unnamed_addr constant [6 x i8] c"until\00", align 1
@.str.103 = private unnamed_addr constant [4 x i8] c"use\00", align 1
@.str.104 = private unnamed_addr constant [9 x i8] c"variable\00", align 1
@.str.105 = private unnamed_addr constant [5 x i8] c"wait\00", align 1
@.str.106 = private unnamed_addr constant [5 x i8] c"when\00", align 1
@.str.107 = private unnamed_addr constant [6 x i8] c"while\00", align 1
@.str.108 = private unnamed_addr constant [5 x i8] c"with\00", align 1
@.str.109 = private unnamed_addr constant [5 x i8] c"xnor\00", align 1
@.str.110 = private unnamed_addr constant [4 x i8] c"xor\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sParserDefinition* @VhdlParser() #0 {
entry:
  %def = alloca %struct.sParserDefinition*, align 8
  %call = call %struct.sParserDefinition* @parserNew(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.sParserDefinition* %call, %struct.sParserDefinition** %def, align 8
  %0 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %0, i32 0, i32 1
  store %struct.sKindDefinition* getelementptr inbounds ([11 x %struct.sKindDefinition], [11 x %struct.sKindDefinition]* @VhdlKinds, i64 0, i64 0), %struct.sKindDefinition** %kindTable, align 8
  %1 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %1, i32 0, i32 2
  store i32 11, i32* %kindCount, align 8
  %2 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %extensions = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %2, i32 0, i32 3
  store i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @extensions, i64 0, i64 0), i8*** %extensions, align 8
  %3 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %parser = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %3, i32 0, i32 8
  store void ()* @findVhdlTags, void ()** %parser, align 8
  %4 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %initialize = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %4, i32 0, i32 6
  store void (i32)* @initialize, void (i32)** %initialize, align 8
  %5 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %keywordTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %5, i32 0, i32 18
  store %struct.keywordTable* getelementptr inbounds ([95 x %struct.keywordTable], [95 x %struct.keywordTable]* @VhdlKeywordTable, i64 0, i64 0), %struct.keywordTable** %keywordTable, align 8
  %6 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %keywordCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %6, i32 0, i32 19
  store i32 95, i32* %keywordCount, align 8
  %7 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  ret %struct.sParserDefinition* %7
}

declare %struct.sParserDefinition* @parserNew(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @findVhdlTags() #0 {
entry:
  %token = alloca %struct.sTokenInfo*, align 8
  %call = call %struct.sTokenInfo* @newToken()
  store %struct.sTokenInfo* %call, %struct.sTokenInfo** %token, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %call1 = call i32 @parseVhdlFile(%struct.sTokenInfo* %0)
  %cmp = icmp ne i32 %call1, 1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  call void @deleteToken(%struct.sTokenInfo* %1)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @initialize(i32 %language) #0 {
entry:
  %language.addr = alloca i32, align 4
  store i32 %language, i32* %language.addr, align 4
  %0 = load i32, i32* %language.addr, align 4
  store i32 %0, i32* @Lang_vhdl, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct.sTokenInfo* @newToken() #0 {
entry:
  %token = alloca %struct.sTokenInfo*, align 8
  %tmp = alloca %struct._MIOPos, align 8
  %call = call i8* @eMalloc(i64 48)
  %0 = bitcast i8* %call to %struct.sTokenInfo*
  store %struct.sTokenInfo* %0, %struct.sTokenInfo** %token, align 8
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %1, i32 0, i32 0
  store i32 0, i32* %type, align 8
  %2 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %2, i32 0, i32 1
  store i32 -1, i32* %keyword, align 4
  %call1 = call %struct.sVString* @vStringNew()
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %string = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %3, i32 0, i32 2
  store %struct.sVString* %call1, %struct.sVString** %string, align 8
  %call2 = call %struct.sVString* @vStringNew()
  %4 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %scope = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %4, i32 0, i32 3
  store %struct.sVString* %call2, %struct.sVString** %scope, align 8
  %call3 = call i64 @getInputLineNumber()
  %5 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %lineNumber = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %5, i32 0, i32 4
  store i64 %call3, i64* %lineNumber, align 8
  %6 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %filePosition = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %6, i32 0, i32 5
  %call4 = call [2 x i64] @getInputFilePosition()
  %7 = bitcast %struct._MIOPos* %tmp to [2 x i64]*
  store [2 x i64] %call4, [2 x i64]* %7, align 8
  %8 = bitcast %struct._MIOPos* %filePosition to i8*
  %9 = bitcast %struct._MIOPos* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 %9, i64 16, i1 false)
  %10 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  ret %struct.sTokenInfo* %10
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @parseVhdlFile(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  br label %do.body

do.body:                                          ; preds = %land.end, %entry
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %0)
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @parseKeywords(%struct.sTokenInfo* %1, i1 zeroext false)
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %2 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %2, i32 0, i32 1
  %3 = load i32, i32* %keyword, align 4
  %cmp = icmp eq i32 %3, 23
  br i1 %cmp, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %do.cond
  %4 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %4, i32 0, i32 0
  %5 = load i32, i32* %type, align 8
  %cmp1 = icmp eq i32 %5, 1
  %lnot = xor i1 %cmp1, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %6 = phi i1 [ false, %do.cond ], [ %lnot, %land.rhs ]
  br i1 %6, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type2 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %7, i32 0, i32 0
  %8 = load i32, i32* %type2, align 8
  ret i32 %8
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
  %string = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %1, i32 0, i32 2
  %2 = load %struct.sVString*, %struct.sVString** %string, align 8
  call void @vStringDelete(%struct.sVString* %2)
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %scope = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %3, i32 0, i32 3
  %4 = load %struct.sVString*, %struct.sVString** %scope, align 8
  call void @vStringDelete(%struct.sVString* %4)
  %5 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %6 = bitcast %struct.sTokenInfo* %5 to i8*
  call void @eFree(i8* %6)
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
  %tmp25 = alloca %struct._MIOPos, align 8
  %tmp46 = alloca %struct._MIOPos, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 0
  store i32 0, i32* %type, align 8
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %1, i32 0, i32 1
  store i32 -1, i32* %keyword, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %2, i32 0, i32 2
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

getNextChar:                                      ; preds = %if.then, %do.end
  br label %do.body1

do.body1:                                         ; preds = %lor.end, %getNextChar
  %call = call i32 @getcFromInputFile()
  store i32 %call, i32* %c, align 4
  %call2 = call i64 @getInputLineNumber()
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %lineNumber = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %7, i32 0, i32 4
  store i64 %call2, i64* %lineNumber, align 8
  %8 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %filePosition = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %8, i32 0, i32 5
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
    i32 59, label %sw.bb12
    i32 46, label %sw.bb14
    i32 44, label %sw.bb16
    i32 39, label %sw.bb18
    i32 34, label %sw.bb19
    i32 45, label %sw.bb27
  ]

sw.bb:                                            ; preds = %do.end6
  %17 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type7 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %17, i32 0, i32 0
  store i32 1, i32* %type7, align 8
  br label %sw.epilog

sw.bb8:                                           ; preds = %do.end6
  %18 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type9 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %18, i32 0, i32 0
  store i32 2, i32* %type9, align 8
  br label %sw.epilog

sw.bb10:                                          ; preds = %do.end6
  %19 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type11 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %19, i32 0, i32 0
  store i32 3, i32* %type11, align 8
  br label %sw.epilog

sw.bb12:                                          ; preds = %do.end6
  %20 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type13 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %20, i32 0, i32 0
  store i32 9, i32* %type13, align 8
  br label %sw.epilog

sw.bb14:                                          ; preds = %do.end6
  %21 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type15 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %21, i32 0, i32 0
  store i32 7, i32* %type15, align 8
  br label %sw.epilog

sw.bb16:                                          ; preds = %do.end6
  %22 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type17 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %22, i32 0, i32 0
  store i32 4, i32* %type17, align 8
  br label %sw.epilog

sw.bb18:                                          ; preds = %do.end6
  br label %sw.epilog

sw.bb19:                                          ; preds = %do.end6
  %23 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type20 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %23, i32 0, i32 0
  store i32 10, i32* %type20, align 8
  %24 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string21 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %24, i32 0, i32 2
  %25 = load %struct.sVString*, %struct.sVString** %string21, align 8
  %26 = load i32, i32* %c, align 4
  call void @parseString(%struct.sVString* %25, i32 %26)
  %call22 = call i64 @getInputLineNumber()
  %27 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %lineNumber23 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %27, i32 0, i32 4
  store i64 %call22, i64* %lineNumber23, align 8
  %28 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %filePosition24 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %28, i32 0, i32 5
  %call26 = call [2 x i64] @getInputFilePosition()
  %29 = bitcast %struct._MIOPos* %tmp25 to [2 x i64]*
  store [2 x i64] %call26, [2 x i64]* %29, align 8
  %30 = bitcast %struct._MIOPos* %filePosition24 to i8*
  %31 = bitcast %struct._MIOPos* %tmp25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %30, i8* align 8 %31, i64 16, i1 false)
  br label %sw.epilog

sw.bb27:                                          ; preds = %do.end6
  %call28 = call i32 @getcFromInputFile()
  store i32 %call28, i32* %c, align 4
  %32 = load i32, i32* %c, align 4
  %cmp29 = icmp eq i32 %32, 45
  br i1 %cmp29, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb27
  %call30 = call i32 @skipToCharacterInInputFile(i32 10)
  br label %getNextChar

if.else:                                          ; preds = %sw.bb27
  %33 = load i32, i32* %c, align 4
  %call31 = call i32 @isspace(i32 %33) #4
  %tobool = icmp ne i32 %call31, 0
  br i1 %tobool, label %if.end, label %if.then32

if.then32:                                        ; preds = %if.else
  %34 = load i32, i32* %c, align 4
  call void @ungetcToInputFile(i32 %34)
  br label %if.end

if.end:                                           ; preds = %if.then32, %if.else
  %35 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type33 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %35, i32 0, i32 0
  store i32 8, i32* %type33, align 8
  br label %if.end34

if.end34:                                         ; preds = %if.end
  br label %sw.epilog

sw.default:                                       ; preds = %do.end6
  %36 = load i32, i32* %c, align 4
  %call35 = call i32 @isalpha(i32 %36) #4
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %if.else41, label %lor.lhs.false37

lor.lhs.false37:                                  ; preds = %sw.default
  %37 = load i32, i32* %c, align 4
  %cmp38 = icmp eq i32 %37, 95
  br i1 %cmp38, label %if.else41, label %if.then39

if.then39:                                        ; preds = %lor.lhs.false37
  %38 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type40 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %38, i32 0, i32 0
  store i32 0, i32* %type40, align 8
  br label %if.end59

if.else41:                                        ; preds = %lor.lhs.false37, %sw.default
  %39 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string42 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %39, i32 0, i32 2
  %40 = load %struct.sVString*, %struct.sVString** %string42, align 8
  %41 = load i32, i32* %c, align 4
  call void @parseIdentifier(%struct.sVString* %40, i32 %41)
  %call43 = call i64 @getInputLineNumber()
  %42 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %lineNumber44 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %42, i32 0, i32 4
  store i64 %call43, i64* %lineNumber44, align 8
  %43 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %filePosition45 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %43, i32 0, i32 5
  %call47 = call [2 x i64] @getInputFilePosition()
  %44 = bitcast %struct._MIOPos* %tmp46 to [2 x i64]*
  store [2 x i64] %call47, [2 x i64]* %44, align 8
  %45 = bitcast %struct._MIOPos* %filePosition45 to i8*
  %46 = bitcast %struct._MIOPos* %tmp46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %45, i8* align 8 %46, i64 16, i1 false)
  %47 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string48 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %47, i32 0, i32 2
  %48 = load %struct.sVString*, %struct.sVString** %string48, align 8
  %buffer49 = getelementptr inbounds %struct.sVString, %struct.sVString* %48, i32 0, i32 2
  %49 = load i8*, i8** %buffer49, align 8
  %50 = load i32, i32* @Lang_vhdl, align 4
  %call50 = call i32 @lookupCaseKeyword(i8* %49, i32 %50)
  %51 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword51 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %51, i32 0, i32 1
  store i32 %call50, i32* %keyword51, align 4
  %52 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword52 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %52, i32 0, i32 1
  %53 = load i32, i32* %keyword52, align 4
  %cmp53 = icmp eq i32 %53, -1
  br i1 %cmp53, label %if.then54, label %if.else56

if.then54:                                        ; preds = %if.else41
  %54 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type55 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %54, i32 0, i32 0
  store i32 5, i32* %type55, align 8
  br label %if.end58

if.else56:                                        ; preds = %if.else41
  %55 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type57 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %55, i32 0, i32 0
  store i32 6, i32* %type57, align 8
  br label %if.end58

if.end58:                                         ; preds = %if.else56, %if.then54
  br label %if.end59

if.end59:                                         ; preds = %if.end58, %if.then39
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end59, %if.end34, %sw.bb19, %sw.bb18, %sw.bb16, %sw.bb14, %sw.bb12, %sw.bb10, %sw.bb8, %sw.bb
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseKeywords(%struct.sTokenInfo* %token, i1 zeroext %local) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %local.addr = alloca i8, align 1
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  %frombool = zext i1 %local to i8
  store i8 %frombool, i8* %local.addr, align 1
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 1
  %1 = load i32, i32* %keyword, align 4
  switch i32 %1, label %sw.default [
    i32 23, label %sw.bb
    i32 18, label %sw.bb1
    i32 83, label %sw.bb2
    i32 79, label %sw.bb3
    i32 24, label %sw.bb4
    i32 16, label %sw.bb5
    i32 28, label %sw.bb6
    i32 61, label %sw.bb7
    i32 58, label %sw.bb8
  ]

sw.bb:                                            ; preds = %entry
  %call = call i32 @skipToCharacterInInputFile(i32 59)
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %2 = load i8, i8* %local.addr, align 1
  %tobool = trunc i8 %2 to i1
  call void @parseConstant(i1 zeroext %tobool)
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @parseTypes(%struct.sTokenInfo* %3)
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %4 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @parseTypes(%struct.sTokenInfo* %4)
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %5 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @parseModule(%struct.sTokenInfo* %5)
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %6 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @parseModule(%struct.sTokenInfo* %6)
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @parseSubProgram(%struct.sTokenInfo* %7)
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  %8 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @parseSubProgram(%struct.sTokenInfo* %8)
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  %9 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @parsePackage(%struct.sTokenInfo* %9)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
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

while.cond:                                       ; preds = %if.end9, %entry
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
  br label %if.end9

if.else:                                          ; preds = %while.body
  %2 = load i32, i32* %c, align 4
  %cmp1 = icmp eq i32 %2, 92
  br i1 %cmp1, label %if.then2, label %if.else4

if.then2:                                         ; preds = %if.else
  %call3 = call i32 @getcFromInputFile()
  store i32 %call3, i32* %c, align 4
  %3 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %4 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %3, i32 %4)
  br label %if.end8

if.else4:                                         ; preds = %if.else
  %5 = load i32, i32* %c, align 4
  %6 = load i32, i32* %delimiter.addr, align 4
  %cmp5 = icmp eq i32 %5, %6
  br i1 %cmp5, label %if.then6, label %if.else7

if.then6:                                         ; preds = %if.else4
  store i8 1, i8* %end, align 1
  br label %if.end

if.else7:                                         ; preds = %if.else4
  %7 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %8 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %7, i32 %8)
  br label %if.end

if.end:                                           ; preds = %if.else7, %if.then6
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then2
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %if.then
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

declare i32 @skipToCharacterInInputFile(i32) #1

; Function Attrs: nounwind readonly
declare i32 @isspace(i32) #3

declare void @ungetcToInputFile(i32) #1

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
  br i1 %tobool4, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %5 = load i32, i32* %c, align 4
  %cmp = icmp eq i32 %5, 95
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %do.cond
  %6 = phi i1 [ true, %lor.lhs.false ], [ true, %do.cond ], [ %cmp, %lor.rhs ]
  br i1 %6, label %do.body1, label %do.end5

do.end5:                                          ; preds = %lor.end
  %7 = load i32, i32* %c, align 4
  %call6 = call i32 @isspace(i32 %7) #4
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.end, label %if.then

if.then:                                          ; preds = %do.end5
  %8 = load i32, i32* %c, align 4
  call void @ungetcToInputFile(i32 %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end5
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

; Function Attrs: nounwind readonly
declare i32 @isdigit(i32) #3

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseConstant(i1 zeroext %local) #0 {
entry:
  %local.addr = alloca i8, align 1
  %name = alloca %struct.sTokenInfo*, align 8
  %frombool = zext i1 %local to i8
  store i8 %frombool, i8* %local.addr, align 1
  %call = call %struct.sTokenInfo* @newToken()
  store %struct.sTokenInfo* %call, %struct.sTokenInfo** %name, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  call void @readToken(%struct.sTokenInfo* %0)
  %1 = load i8, i8* %local.addr, align 1
  %tobool = trunc i8 %1 to i1
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  call void @makeVhdlTag(%struct.sTokenInfo* %2, i32 10)
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  call void @makeVhdlTag(%struct.sTokenInfo* %3, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call1 = call i32 @skipToCharacterInInputFile(i32 59)
  %4 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  call void @deleteToken(%struct.sTokenInfo* %4)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseTypes(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %name = alloca %struct.sTokenInfo*, align 8
  %kind = alloca i32, align 4
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  %call = call %struct.sTokenInfo* @newToken()
  store %struct.sTokenInfo* %call, %struct.sTokenInfo** %name, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 1
  %1 = load i32, i32* %keyword, align 4
  %cmp = icmp eq i32 %1, 83
  %2 = zext i1 %cmp to i64
  %cond = select i1 %cmp, i32 1, i32 2
  store i32 %cond, i32* %kind, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  call void @readToken(%struct.sTokenInfo* %3)
  %4 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %4)
  %5 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword1 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %5, i32 0, i32 1
  %6 = load i32, i32* %keyword1, align 4
  %cmp2 = icmp eq i32 %6, 38
  br i1 %cmp2, label %if.then, label %if.end6

if.then:                                          ; preds = %do.end
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %7)
  %8 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword3 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %8, i32 0, i32 1
  %9 = load i32, i32* %keyword3, align 4
  %cmp4 = icmp eq i32 %9, 65
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then
  %10 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  %11 = load i32, i32* %kind, align 4
  call void @makeVhdlTag(%struct.sTokenInfo* %10, i32 %11)
  %12 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @parseRecord(%struct.sTokenInfo* %12)
  br label %if.end

if.else:                                          ; preds = %if.then
  %13 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  %14 = load i32, i32* %kind, align 4
  call void @makeVhdlTag(%struct.sTokenInfo* %13, i32 %14)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then5
  br label %if.end6

if.end6:                                          ; preds = %if.end, %do.end
  %15 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  call void @deleteToken(%struct.sTokenInfo* %15)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseModule(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %name = alloca %struct.sTokenInfo*, align 8
  %kind = alloca i32, align 4
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  %call = call %struct.sTokenInfo* @newToken()
  store %struct.sTokenInfo* %call, %struct.sTokenInfo** %name, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 1
  %1 = load i32, i32* %keyword, align 4
  %cmp = icmp eq i32 %1, 24
  %2 = zext i1 %cmp to i64
  %cond = select i1 %cmp, i32 4, i32 5
  store i32 %cond, i32* %kind, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  call void @readToken(%struct.sTokenInfo* %3)
  %4 = load i32, i32* %kind, align 4
  %cmp1 = icmp eq i32 %4, 5
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %do.end
  %5 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  call void @makeVhdlTag(%struct.sTokenInfo* %5, i32 5)
  call void @skipToKeyword(i32 23)
  %call2 = call i32 @skipToCharacterInInputFile(i32 59)
  br label %if.end7

if.else:                                          ; preds = %do.end
  %6 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %6)
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword3 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %7, i32 0, i32 1
  %8 = load i32, i32* %keyword3, align 4
  %cmp4 = icmp eq i32 %8, 38
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.else
  %9 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  call void @makeVhdlTag(%struct.sTokenInfo* %9, i32 4)
  call void @skipToKeyword(i32 23)
  %call6 = call i32 @skipToCharacterInInputFile(i32 59)
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.else
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then
  %10 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  call void @deleteToken(%struct.sTokenInfo* %10)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseSubProgram(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %name = alloca %struct.sTokenInfo*, align 8
  %endSubProgram = alloca i8, align 1
  %kind = alloca i32, align 4
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  %call = call %struct.sTokenInfo* @newToken()
  store %struct.sTokenInfo* %call, %struct.sTokenInfo** %name, align 8
  store i8 0, i8* %endSubProgram, align 1
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 1
  %1 = load i32, i32* %keyword, align 4
  %cmp = icmp eq i32 %1, 28
  %2 = zext i1 %cmp to i64
  %cond = select i1 %cmp, i32 7, i32 8
  store i32 %cond, i32* %kind, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  call void @readToken(%struct.sTokenInfo* %3)
  %4 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %4)
  %5 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %5, i32 0, i32 0
  %6 = load i32, i32* %type, align 8
  %cmp1 = icmp eq i32 %6, 2
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @skipToMatched(%struct.sTokenInfo* %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end
  %8 = load i32, i32* %kind, align 4
  %cmp2 = icmp eq i32 %8, 7
  br i1 %cmp2, label %if.then3, label %if.end14

if.then3:                                         ; preds = %if.end
  %9 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword4 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %9, i32 0, i32 1
  %10 = load i32, i32* %keyword4, align 4
  %cmp5 = icmp eq i32 %10, 68
  br i1 %cmp5, label %if.then6, label %if.end13

if.then6:                                         ; preds = %if.then3
  %11 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %11)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then6
  %12 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword7 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %12, i32 0, i32 1
  %13 = load i32, i32* %keyword7, align 4
  %cmp8 = icmp eq i32 %13, 38
  br i1 %cmp8, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.cond
  %14 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type9 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %14, i32 0, i32 0
  %15 = load i32, i32* %type9, align 8
  %cmp10 = icmp eq i32 %15, 9
  br i1 %cmp10, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true
  %16 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type11 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %16, i32 0, i32 0
  %17 = load i32, i32* %type11, align 8
  %cmp12 = icmp eq i32 %17, 1
  %lnot = xor i1 %cmp12, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %18 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %18, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %19 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %19)
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %if.end13

if.end13:                                         ; preds = %while.end, %if.then3
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.end
  %20 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type15 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %20, i32 0, i32 0
  %21 = load i32, i32* %type15, align 8
  %cmp16 = icmp eq i32 %21, 9
  br i1 %cmp16, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.end14
  %22 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  call void @makeVhdlTag(%struct.sTokenInfo* %22, i32 6)
  br label %if.end60

if.else:                                          ; preds = %if.end14
  %23 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword18 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %23, i32 0, i32 1
  %24 = load i32, i32* %keyword18, align 4
  %cmp19 = icmp eq i32 %24, 38
  br i1 %cmp19, label %if.then20, label %if.end59

if.then20:                                        ; preds = %if.else
  %25 = load i32, i32* %kind, align 4
  %cmp21 = icmp eq i32 %25, 7
  br i1 %cmp21, label %if.then22, label %if.else38

if.then22:                                        ; preds = %if.then20
  %26 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  call void @makeVhdlTag(%struct.sTokenInfo* %26, i32 7)
  br label %do.body23

do.body23:                                        ; preds = %do.cond, %if.then22
  %27 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %27)
  %28 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword24 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %28, i32 0, i32 1
  %29 = load i32, i32* %keyword24, align 4
  %cmp25 = icmp eq i32 %29, 23
  br i1 %cmp25, label %if.then26, label %if.else29

if.then26:                                        ; preds = %do.body23
  %30 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %30)
  %31 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %32 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  %string = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %32, i32 0, i32 2
  %33 = load %struct.sVString*, %struct.sVString** %string, align 8
  %call27 = call zeroext i1 @isKeywordOrIdent(%struct.sTokenInfo* %31, i32 28, %struct.sVString* %33)
  %frombool = zext i1 %call27 to i8
  store i8 %frombool, i8* %endSubProgram, align 1
  %call28 = call i32 @skipToCharacterInInputFile(i32 59)
  br label %if.end35

if.else29:                                        ; preds = %do.body23
  %34 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type30 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %34, i32 0, i32 0
  %35 = load i32, i32* %type30, align 8
  %cmp31 = icmp eq i32 %35, 1
  br i1 %cmp31, label %if.then32, label %if.else33

if.then32:                                        ; preds = %if.else29
  store i8 1, i8* %endSubProgram, align 1
  br label %if.end34

if.else33:                                        ; preds = %if.else29
  %36 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @parseKeywords(%struct.sTokenInfo* %36, i1 zeroext true)
  br label %if.end34

if.end34:                                         ; preds = %if.else33, %if.then32
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.then26
  br label %do.cond

do.cond:                                          ; preds = %if.end35
  %37 = load i8, i8* %endSubProgram, align 1
  %tobool = trunc i8 %37 to i1
  %lnot36 = xor i1 %tobool, true
  br i1 %lnot36, label %do.body23, label %do.end37

do.end37:                                         ; preds = %do.cond
  br label %if.end58

if.else38:                                        ; preds = %if.then20
  %38 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  call void @makeVhdlTag(%struct.sTokenInfo* %38, i32 8)
  br label %do.body39

do.body39:                                        ; preds = %do.cond54, %if.else38
  %39 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %39)
  %40 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword40 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %40, i32 0, i32 1
  %41 = load i32, i32* %keyword40, align 4
  %cmp41 = icmp eq i32 %41, 23
  br i1 %cmp41, label %if.then42, label %if.else47

if.then42:                                        ; preds = %do.body39
  %42 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %42)
  %43 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %44 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  %string43 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %44, i32 0, i32 2
  %45 = load %struct.sVString*, %struct.sVString** %string43, align 8
  %call44 = call zeroext i1 @isKeywordOrIdent(%struct.sTokenInfo* %43, i32 61, %struct.sVString* %45)
  %frombool45 = zext i1 %call44 to i8
  store i8 %frombool45, i8* %endSubProgram, align 1
  %call46 = call i32 @skipToCharacterInInputFile(i32 59)
  br label %if.end53

if.else47:                                        ; preds = %do.body39
  %46 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type48 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %46, i32 0, i32 0
  %47 = load i32, i32* %type48, align 8
  %cmp49 = icmp eq i32 %47, 1
  br i1 %cmp49, label %if.then50, label %if.else51

if.then50:                                        ; preds = %if.else47
  store i8 1, i8* %endSubProgram, align 1
  br label %if.end52

if.else51:                                        ; preds = %if.else47
  %48 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @parseKeywords(%struct.sTokenInfo* %48, i1 zeroext true)
  br label %if.end52

if.end52:                                         ; preds = %if.else51, %if.then50
  br label %if.end53

if.end53:                                         ; preds = %if.end52, %if.then42
  br label %do.cond54

do.cond54:                                        ; preds = %if.end53
  %49 = load i8, i8* %endSubProgram, align 1
  %tobool55 = trunc i8 %49 to i1
  %lnot56 = xor i1 %tobool55, true
  br i1 %lnot56, label %do.body39, label %do.end57

do.end57:                                         ; preds = %do.cond54
  br label %if.end58

if.end58:                                         ; preds = %do.end57, %do.end37
  br label %if.end59

if.end59:                                         ; preds = %if.end58, %if.else
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %if.then17
  %50 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  call void @deleteToken(%struct.sTokenInfo* %50)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parsePackage(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %name = alloca %struct.sTokenInfo*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  %call = call %struct.sTokenInfo* @newToken()
  store %struct.sTokenInfo* %call, %struct.sTokenInfo** %name, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %0)
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %1, i32 0, i32 1
  %2 = load i32, i32* %keyword, align 4
  %cmp = icmp eq i32 %2, 12
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.end
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  call void @readToken(%struct.sTokenInfo* %3)
  %4 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  call void @makeVhdlTag(%struct.sTokenInfo* %4, i32 9)
  br label %if.end3

if.else:                                          ; preds = %do.end
  %5 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %5, i32 0, i32 0
  %6 = load i32, i32* %type, align 8
  %cmp1 = icmp eq i32 %6, 5
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.else
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @makeVhdlTag(%struct.sTokenInfo* %7, i32 9)
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.else
  br label %if.end3

if.end3:                                          ; preds = %if.end, %if.then
  %8 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  call void @deleteToken(%struct.sTokenInfo* %8)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @makeVhdlTag(%struct.sTokenInfo* %token, i32 %kind) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %kind.addr = alloca i32, align 4
  %fulltag = alloca %struct.sVString*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  store i32 %kind, i32* %kind.addr, align 4
  %0 = load i32, i32* %kind.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [11 x %struct.sKindDefinition], [11 x %struct.sKindDefinition]* @VhdlKinds, i64 0, i64 %idxprom
  %enabled = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %arrayidx, i32 0, i32 0
  %1 = load i8, i8* %enabled, align 8
  %tobool = trunc i8 %1 to i1
  br i1 %tobool, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %2 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %scope = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %2, i32 0, i32 3
  %3 = load %struct.sVString*, %struct.sVString** %scope, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %3, i32 0, i32 0
  %4 = load i64, i64* %length, align 8
  %cmp = icmp ugt i64 %4, 0
  br i1 %cmp, label %if.then1, label %if.end

if.then1:                                         ; preds = %if.then
  %call = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call, %struct.sVString** %fulltag, align 8
  %5 = load %struct.sVString*, %struct.sVString** %fulltag, align 8
  %6 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %scope2 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %6, i32 0, i32 3
  %7 = load %struct.sVString*, %struct.sVString** %scope2, align 8
  call void @vStringCopy(%struct.sVString* %5, %struct.sVString* %7)
  %8 = load %struct.sVString*, %struct.sVString** %fulltag, align 8
  call void @vStringPut(%struct.sVString* %8, i32 46)
  %9 = load %struct.sVString*, %struct.sVString** %fulltag, align 8
  %10 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %10, i32 0, i32 2
  %11 = load %struct.sVString*, %struct.sVString** %string, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %11, i32 0, i32 2
  %12 = load i8*, i8** %buffer, align 8
  call void @vStringCatS(%struct.sVString* %9, i8* %12)
  %13 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string3 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %13, i32 0, i32 2
  %14 = load %struct.sVString*, %struct.sVString** %string3, align 8
  %15 = load %struct.sVString*, %struct.sVString** %fulltag, align 8
  call void @vStringCopy(%struct.sVString* %14, %struct.sVString* %15)
  %16 = load %struct.sVString*, %struct.sVString** %fulltag, align 8
  call void @vStringDelete(%struct.sVString* %16)
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then
  %17 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %18 = load i32, i32* %kind.addr, align 4
  call void @makeConstTag(%struct.sTokenInfo* %17, i32 %18)
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry
  ret void
}

declare void @vStringCopy(%struct.sVString*, %struct.sVString*) #1

declare void @vStringCatS(%struct.sVString*, i8*) #1

declare void @vStringDelete(%struct.sVString*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @makeConstTag(%struct.sTokenInfo* %token, i32 %kind) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %kind.addr = alloca i32, align 4
  %name = alloca i8*, align 8
  %e = alloca %struct.sTagEntryInfo, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  store i32 %kind, i32* %kind.addr, align 4
  %0 = load i32, i32* %kind.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [11 x %struct.sKindDefinition], [11 x %struct.sKindDefinition]* @VhdlKinds, i64 0, i64 %idxprom
  %enabled = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %arrayidx, i32 0, i32 0
  %1 = load i8, i8* %enabled, align 8
  %tobool = trunc i8 %1 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %2, i32 0, i32 2
  %3 = load %struct.sVString*, %struct.sVString** %string, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %3, i32 0, i32 2
  %4 = load i8*, i8** %buffer, align 8
  store i8* %4, i8** %name, align 8
  %5 = load i8*, i8** %name, align 8
  %6 = load i32, i32* %kind.addr, align 4
  call void @initTagEntry(%struct.sTagEntryInfo* %e, i8* %5, i32 %6)
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %lineNumber = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %7, i32 0, i32 4
  %8 = load i64, i64* %lineNumber, align 8
  %lineNumber1 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %e, i32 0, i32 1
  store i64 %8, i64* %lineNumber1, align 8
  %filePosition = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %e, i32 0, i32 4
  %9 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %filePosition2 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %9, i32 0, i32 5
  %10 = bitcast %struct._MIOPos* %filePosition to i8*
  %11 = bitcast %struct._MIOPos* %filePosition2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 16, i1 false)
  %call = call i32 @makeTagEntry(%struct.sTagEntryInfo* %e)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @initTagEntry(%struct.sTagEntryInfo*, i8*, i32) #1

declare i32 @makeTagEntry(%struct.sTagEntryInfo*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseRecord(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %name = alloca %struct.sTokenInfo*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  %call = call %struct.sTokenInfo* @newToken()
  store %struct.sTokenInfo* %call, %struct.sTokenInfo** %name, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  call void @readToken(%struct.sTokenInfo* %0)
  br label %do.body1

do.body1:                                         ; preds = %land.end, %do.end
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %1)
  %call2 = call i32 @skipToCharacterInInputFile(i32 59)
  %2 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  call void @makeVhdlTag(%struct.sTokenInfo* %2, i32 3)
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  call void @readToken(%struct.sTokenInfo* %3)
  br label %do.cond

do.cond:                                          ; preds = %do.body1
  %4 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %4, i32 0, i32 1
  %5 = load i32, i32* %keyword, align 4
  %cmp = icmp eq i32 %5, 23
  br i1 %cmp, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %do.cond
  %6 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %6, i32 0, i32 0
  %7 = load i32, i32* %type, align 8
  %cmp3 = icmp eq i32 %7, 1
  %lnot = xor i1 %cmp3, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %8 = phi i1 [ false, %do.cond ], [ %lnot, %land.rhs ]
  br i1 %8, label %do.body1, label %do.end4

do.end4:                                          ; preds = %land.end
  %call5 = call i32 @skipToCharacterInInputFile(i32 59)
  %9 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  call void @deleteToken(%struct.sTokenInfo* %9)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @skipToKeyword(i32 %keyword) #0 {
entry:
  %keyword.addr = alloca i32, align 4
  %token = alloca %struct.sTokenInfo*, align 8
  store i32 %keyword, i32* %keyword.addr, align 4
  %call = call %struct.sTokenInfo* @newToken()
  store %struct.sTokenInfo* %call, %struct.sTokenInfo** %token, align 8
  br label %do.body

do.body:                                          ; preds = %land.end, %entry
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  call void @readToken(%struct.sTokenInfo* %0)
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %1, i32 0, i32 0
  %2 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %2, 1
  br i1 %cmp, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %do.cond
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %keyword1 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %3, i32 0, i32 1
  %4 = load i32, i32* %keyword1, align 4
  %5 = load i32, i32* %keyword.addr, align 4
  %cmp2 = icmp eq i32 %4, %5
  %lnot = xor i1 %cmp2, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %6 = phi i1 [ false, %do.cond ], [ %lnot, %land.rhs ]
  br i1 %6, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  call void @deleteToken(%struct.sTokenInfo* %7)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @skipToMatched(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %nest_level = alloca i32, align 4
  %open_token = alloca i32, align 4
  %close_token = alloca i32, align 4
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  store i32 0, i32* %nest_level, align 4
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 0
  %1 = load i32, i32* %type, align 8
  switch i32 %1, label %sw.default [
    i32 2, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  store i32 2, i32* %open_token, align 4
  store i32 3, i32* %close_token, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %if.end18

sw.epilog:                                        ; preds = %sw.bb
  %2 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type1 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %2, i32 0, i32 0
  %3 = load i32, i32* %type1, align 8
  %4 = load i32, i32* %open_token, align 4
  %cmp = icmp eq i32 %3, %4
  br i1 %cmp, label %if.then, label %if.end18

if.then:                                          ; preds = %sw.epilog
  %5 = load i32, i32* %nest_level, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %nest_level, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end17, %if.then
  %6 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type2 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %6, i32 0, i32 0
  %7 = load i32, i32* %type2, align 8
  %8 = load i32, i32* %close_token, align 4
  %cmp3 = icmp eq i32 %7, %8
  br i1 %cmp3, label %land.lhs.true, label %land.rhs

land.lhs.true:                                    ; preds = %while.cond
  %9 = load i32, i32* %nest_level, align 4
  %cmp4 = icmp eq i32 %9, 0
  br i1 %cmp4, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true, %while.cond
  %10 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type5 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %10, i32 0, i32 0
  %11 = load i32, i32* %type5, align 8
  %cmp6 = icmp eq i32 %11, 1
  %lnot = xor i1 %cmp6, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true
  %12 = phi i1 [ false, %land.lhs.true ], [ %lnot, %land.rhs ]
  br i1 %12, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %13 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %13)
  %14 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type7 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %14, i32 0, i32 0
  %15 = load i32, i32* %type7, align 8
  %16 = load i32, i32* %open_token, align 4
  %cmp8 = icmp eq i32 %15, %16
  br i1 %cmp8, label %if.then9, label %if.end

if.then9:                                         ; preds = %while.body
  %17 = load i32, i32* %nest_level, align 4
  %inc10 = add nsw i32 %17, 1
  store i32 %inc10, i32* %nest_level, align 4
  br label %if.end

if.end:                                           ; preds = %if.then9, %while.body
  %18 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type11 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %18, i32 0, i32 0
  %19 = load i32, i32* %type11, align 8
  %20 = load i32, i32* %close_token, align 4
  %cmp12 = icmp eq i32 %19, %20
  br i1 %cmp12, label %if.then13, label %if.end17

if.then13:                                        ; preds = %if.end
  %21 = load i32, i32* %nest_level, align 4
  %cmp14 = icmp sgt i32 %21, 0
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.then13
  %22 = load i32, i32* %nest_level, align 4
  %dec = add nsw i32 %22, -1
  store i32 %dec, i32* %nest_level, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.then13
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.end
  br label %while.cond

while.end:                                        ; preds = %land.end
  %23 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %23)
  br label %if.end18

if.end18:                                         ; preds = %sw.default, %while.end, %sw.epilog
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @isKeywordOrIdent(%struct.sTokenInfo* %token, i32 %keyword, %struct.sVString* %name) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %keyword.addr = alloca i32, align 4
  %name.addr = alloca %struct.sVString*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  store i32 %keyword, i32* %keyword.addr, align 4
  store %struct.sVString* %name, %struct.sVString** %name.addr, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword1 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 1
  %1 = load i32, i32* %keyword1, align 4
  %2 = load i32, i32* %keyword.addr, align 4
  %cmp = icmp eq i32 %1, %2
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %4 = load %struct.sVString*, %struct.sVString** %name.addr, align 8
  %call = call zeroext i1 @isIdentifierMatch(%struct.sTokenInfo* %3, %struct.sVString* %4)
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %5 = phi i1 [ true, %entry ], [ %call, %lor.rhs ]
  ret i1 %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @isIdentifierMatch(%struct.sTokenInfo* %token, %struct.sVString* %name) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %name.addr = alloca %struct.sVString*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  store %struct.sVString* %name, %struct.sVString** %name.addr, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 0
  %1 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %1, 5
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %2 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %2, i32 0, i32 2
  %3 = load %struct.sVString*, %struct.sVString** %string, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %3, i32 0, i32 2
  %4 = load i8*, i8** %buffer, align 8
  %5 = load %struct.sVString*, %struct.sVString** %name.addr, align 8
  %buffer1 = getelementptr inbounds %struct.sVString, %struct.sVString* %5, i32 0, i32 2
  %6 = load i8*, i8** %buffer1, align 8
  %call = call i32 @strcasecmp(i8* %4, i8* %6)
  %cmp2 = icmp eq i32 %call, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %7 = phi i1 [ false, %entry ], [ %cmp2, %land.rhs ]
  ret i1 %7
}

declare i32 @strcasecmp(i8*, i8*) #1

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
