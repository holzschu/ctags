; ModuleID = 'ttcn.c'
source_filename = "ttcn.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-ios11.0.0"

%struct.sKindDefinition = type { i8, i8, i8*, i8*, i8, i32, %struct.sRoleDesc*, %struct.sScopeSeparator*, i32, i32, i32, %struct.sKindDefinition*, %struct.sKindDefinition* }
%struct.sRoleDesc = type { i8, i8*, i8* }
%struct.sScopeSeparator = type { i32, i8* }
%struct.s_ttcnToken = type { i32, %struct.sVString*, i32 }
%struct.sVString = type { i64, i64, i8* }
%struct.s_ttcnOp = type { i32, [3 x i8] }
%struct.s_ttcnKeyword = type { i32, i8*, i32 }
%struct.sParserDefinition = type { i8*, %struct.sKindDefinition*, i32, i8**, i8**, i8**, void (i32)*, void (i32, i1)*, void ()*, i32 (i32)*, i8* (%struct._MIO*, i32*, i32)**, i32, i8, i8, i8, i8, %struct.tagRegexTable*, i32, %struct.keywordTable*, i32, %struct.sTagXpathTableTable*, i32, i8, %struct.sFieldDefinition*, i32, %struct.sXtagDefinition*, i32, %struct.sParserDependency*, i32, %struct.sParameterHandlerTable*, i32, %struct.sXpathFileSpec*, i32, i32, i8 }
%struct._MIO = type opaque
%struct.tagRegexTable = type { i8*, i8*, i8*, i8*, i8*, i8 }
%struct.keywordTable = type { i8*, i32 }
%struct.sTagXpathTableTable = type { %struct.sTagXpathTable*, i32 }
%struct.sTagXpathTable = type { i8*, i32, %union.anon, i8* }
%union.anon = type { %struct.sTagXpathMakeTagSpec }
%struct.sTagXpathMakeTagSpec = type { i32, i32, void (i8*, %struct.sTagXpathMakeTagSpec*, %struct.sTagEntryInfo*, i8*)* }
%struct.sTagEntryInfo = type opaque
%struct.sFieldDefinition = type { i8, i8*, i8*, i8, [5 x i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)*], i1 (%struct.sTagEntryInfo*)*, i32, i32 }
%struct.sXtagDefinition = type { i8, i8, i8*, i8*, i1 (%struct.sXtagDefinition*)*, i1 (%struct.sXtagDefinition*)*, i32 }
%struct.sParserDependency = type { i32, i8*, i8* }
%struct.sParameterHandlerTable = type { i8*, i8*, void (i32, i8*, i8*)* }
%struct.sXpathFileSpec = type { i8*, i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [5 x i8] c"TTCN\00", align 1
@ttcnKinds = internal global [15 x %struct.sKindDefinition] [%struct.sKindDefinition { i8 1, i8 77, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 116, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 99, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 100, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 102, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 115, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 67, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 97, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 71, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 80, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.20, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 118, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 84, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 112, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 109, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.28, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 101, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.30, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }], align 8
@extensions = internal constant [3 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0), i8* null], align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"module\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"module definition\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"type definition\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"const\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"constant definition\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"template\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"template definition\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"function\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"function definition\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"signature\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"signature definition\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"testcase\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"testcase definition\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"altstep\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"altstep definition\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"group\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"group definition\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"modulepar\00", align 1
@.str.20 = private unnamed_addr constant [28 x i8] c"module parameter definition\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"var\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"variable instance\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"timer\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"timer instance\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"port instance\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"member\00", align 1
@.str.28 = private unnamed_addr constant [24 x i8] c"record/set/union member\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"enum\00", align 1
@.str.30 = private unnamed_addr constant [18 x i8] c"enumeration value\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"ttcn\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"ttcn3\00", align 1
@BR_CUR = internal constant [3 x i8] c"{}\00", align 1
@repeatLastToken = internal global i32 0, align 4
@pTtcnToken = internal global %struct.s_ttcnToken* null, align 8
@ttcnOps = internal global [11 x %struct.s_ttcnOp] [%struct.s_ttcnOp { i32 399, [3 x i8] c"..\00" }, %struct.s_ttcnOp { i32 400, [3 x i8] c"==\00" }, %struct.s_ttcnOp { i32 401, [3 x i8] c"!=\00" }, %struct.s_ttcnOp { i32 402, [3 x i8] c"<=\00" }, %struct.s_ttcnOp { i32 403, [3 x i8] c">=\00" }, %struct.s_ttcnOp { i32 404, [3 x i8] c":=\00" }, %struct.s_ttcnOp { i32 405, [3 x i8] c"->\00" }, %struct.s_ttcnOp { i32 406, [3 x i8] c"<<\00" }, %struct.s_ttcnOp { i32 407, [3 x i8] c">>\00" }, %struct.s_ttcnOp { i32 408, [3 x i8] c"<@\00" }, %struct.s_ttcnOp { i32 409, [3 x i8] c"@>\00" }], align 4
@ttcnKeywords = internal global [141 x %struct.s_ttcnKeyword] [%struct.s_ttcnKeyword { i32 258, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 259, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 260, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 261, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 262, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 263, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 264, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), i32 7 }, %struct.s_ttcnKeyword { i32 265, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 266, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 267, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.41, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 268, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 269, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.43, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 270, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 271, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 272, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 273, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.47, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 274, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 275, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.49, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 276, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.50, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 277, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.51, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 278, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.52, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 279, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.53, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 280, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.54, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 281, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i32 2 }, %struct.s_ttcnKeyword { i32 282, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.55, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 283, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.56, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 284, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.57, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 285, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.58, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 286, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.59, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 287, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.60, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 288, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 289, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.62, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 290, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.63, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 291, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.64, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 292, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.65, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 293, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.66, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 294, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.67, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 295, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.68, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 296, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.69, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 297, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.70, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 298, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.71, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 299, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.72, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 300, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.73, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 301, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.74, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 302, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.75, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 303, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.76, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 304, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.77, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 305, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i32 4 }, %struct.s_ttcnKeyword { i32 306, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.78, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 307, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.79, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 308, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.80, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 309, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.81, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 310, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i32 8 }, %struct.s_ttcnKeyword { i32 311, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.82, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 312, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.83, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 313, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.84, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 314, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.85, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 315, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.86, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 316, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.87, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 317, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.88, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 318, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.89, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 319, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.90, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 320, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.91, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 321, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.92, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 322, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.93, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 323, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.94, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 324, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.95, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 325, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.96, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 326, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.97, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 327, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.98, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 328, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.99, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 329, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.100, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 330, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.101, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 331, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.102, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 332, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.103, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 333, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 0 }, %struct.s_ttcnKeyword { i32 334, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), i32 9 }, %struct.s_ttcnKeyword { i32 335, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.104, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 336, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.105, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 337, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.106, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 338, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.107, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 339, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.108, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 340, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.109, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 341, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.110, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 342, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.111, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 343, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.112, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 344, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.113, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 345, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.114, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 346, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.115, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 347, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.116, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 348, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.117, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 349, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.118, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 350, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.119, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 351, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.120, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 352, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.121, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 353, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.122, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 354, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0), i32 12 }, %struct.s_ttcnKeyword { i32 355, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.123, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 356, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.124, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 357, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.125, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 358, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.126, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 359, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.127, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 360, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.128, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 361, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.129, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 362, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.130, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 363, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.131, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 364, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.132, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 365, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.133, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 366, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.134, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 367, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.135, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 368, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.136, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 369, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.137, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 370, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.138, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 371, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.139, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 372, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.140, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 373, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i32 5 }, %struct.s_ttcnKeyword { i32 374, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.141, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 375, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.142, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 376, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.143, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 377, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.144, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 378, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.145, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 379, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i32 3 }, %struct.s_ttcnKeyword { i32 380, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i32 6 }, %struct.s_ttcnKeyword { i32 381, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.146, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 382, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i32 11 }, %struct.s_ttcnKeyword { i32 383, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.147, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 384, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.148, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 385, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.149, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 386, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 1 }, %struct.s_ttcnKeyword { i32 387, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.150, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 388, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.151, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 389, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.152, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 390, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.153, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 391, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.154, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 392, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0), i32 10 }, %struct.s_ttcnKeyword { i32 393, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.155, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 394, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.156, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 395, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.157, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 396, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.158, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 397, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.159, i32 0, i32 0), i32 15 }, %struct.s_ttcnKeyword { i32 398, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.160, i32 0, i32 0), i32 15 }], align 8
@.str.33 = private unnamed_addr constant [7 x i8] c"action\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"activate\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"address\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"alive\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"alt\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"and\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"and4b\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"any\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"anytype\00", align 1
@.str.43 = private unnamed_addr constant [10 x i8] c"bitstring\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"bool\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"case\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"call\00", align 1
@.str.47 = private unnamed_addr constant [6 x i8] c"catch\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"char\00", align 1
@.str.49 = private unnamed_addr constant [11 x i8] c"charstring\00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c"check\00", align 1
@.str.51 = private unnamed_addr constant [6 x i8] c"clear\00", align 1
@.str.52 = private unnamed_addr constant [11 x i8] c"complement\00", align 1
@.str.53 = private unnamed_addr constant [10 x i8] c"component\00", align 1
@.str.54 = private unnamed_addr constant [8 x i8] c"connect\00", align 1
@.str.55 = private unnamed_addr constant [8 x i8] c"control\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"create\00", align 1
@.str.57 = private unnamed_addr constant [11 x i8] c"deactivate\00", align 1
@.str.58 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.59 = private unnamed_addr constant [11 x i8] c"disconnect\00", align 1
@.str.60 = private unnamed_addr constant [8 x i8] c"display\00", align 1
@.str.61 = private unnamed_addr constant [3 x i8] c"do\00", align 1
@.str.62 = private unnamed_addr constant [5 x i8] c"done\00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c"else\00", align 1
@.str.64 = private unnamed_addr constant [7 x i8] c"encode\00", align 1
@.str.65 = private unnamed_addr constant [11 x i8] c"enumerated\00", align 1
@.str.66 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.67 = private unnamed_addr constant [7 x i8] c"except\00", align 1
@.str.68 = private unnamed_addr constant [10 x i8] c"exception\00", align 1
@.str.69 = private unnamed_addr constant [8 x i8] c"execute\00", align 1
@.str.70 = private unnamed_addr constant [8 x i8] c"extends\00", align 1
@.str.71 = private unnamed_addr constant [10 x i8] c"extension\00", align 1
@.str.72 = private unnamed_addr constant [9 x i8] c"external\00", align 1
@.str.73 = private unnamed_addr constant [5 x i8] c"fail\00", align 1
@.str.74 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.75 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.76 = private unnamed_addr constant [4 x i8] c"for\00", align 1
@.str.77 = private unnamed_addr constant [5 x i8] c"from\00", align 1
@.str.78 = private unnamed_addr constant [11 x i8] c"getverdict\00", align 1
@.str.79 = private unnamed_addr constant [8 x i8] c"getcall\00", align 1
@.str.80 = private unnamed_addr constant [9 x i8] c"getreply\00", align 1
@.str.81 = private unnamed_addr constant [5 x i8] c"goto\00", align 1
@.str.82 = private unnamed_addr constant [10 x i8] c"hexstring\00", align 1
@.str.83 = private unnamed_addr constant [3 x i8] c"if\00", align 1
@.str.84 = private unnamed_addr constant [10 x i8] c"ifpresent\00", align 1
@.str.85 = private unnamed_addr constant [7 x i8] c"import\00", align 1
@.str.86 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.87 = private unnamed_addr constant [7 x i8] c"inconc\00", align 1
@.str.88 = private unnamed_addr constant [9 x i8] c"infinity\00", align 1
@.str.89 = private unnamed_addr constant [6 x i8] c"inout\00", align 1
@.str.90 = private unnamed_addr constant [8 x i8] c"integer\00", align 1
@.str.91 = private unnamed_addr constant [11 x i8] c"interleave\00", align 1
@.str.92 = private unnamed_addr constant [5 x i8] c"kill\00", align 1
@.str.93 = private unnamed_addr constant [7 x i8] c"killed\00", align 1
@.str.94 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.95 = private unnamed_addr constant [9 x i8] c"language\00", align 1
@.str.96 = private unnamed_addr constant [7 x i8] c"length\00", align 1
@.str.97 = private unnamed_addr constant [4 x i8] c"log\00", align 1
@.str.98 = private unnamed_addr constant [4 x i8] c"map\00", align 1
@.str.99 = private unnamed_addr constant [6 x i8] c"match\00", align 1
@.str.100 = private unnamed_addr constant [8 x i8] c"message\00", align 1
@.str.101 = private unnamed_addr constant [6 x i8] c"mixed\00", align 1
@.str.102 = private unnamed_addr constant [4 x i8] c"mod\00", align 1
@.str.103 = private unnamed_addr constant [9 x i8] c"modifies\00", align 1
@.str.104 = private unnamed_addr constant [4 x i8] c"mtc\00", align 1
@.str.105 = private unnamed_addr constant [8 x i8] c"noblock\00", align 1
@.str.106 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.107 = private unnamed_addr constant [4 x i8] c"not\00", align 1
@.str.108 = private unnamed_addr constant [6 x i8] c"not4b\00", align 1
@.str.109 = private unnamed_addr constant [7 x i8] c"nowait\00", align 1
@.str.110 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.111 = private unnamed_addr constant [12 x i8] c"octetstring\00", align 1
@.str.112 = private unnamed_addr constant [3 x i8] c"of\00", align 1
@.str.113 = private unnamed_addr constant [5 x i8] c"omit\00", align 1
@.str.114 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.115 = private unnamed_addr constant [9 x i8] c"optional\00", align 1
@.str.116 = private unnamed_addr constant [3 x i8] c"or\00", align 1
@.str.117 = private unnamed_addr constant [5 x i8] c"or4b\00", align 1
@.str.118 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.119 = private unnamed_addr constant [9 x i8] c"override\00", align 1
@.str.120 = private unnamed_addr constant [6 x i8] c"param\00", align 1
@.str.121 = private unnamed_addr constant [5 x i8] c"pass\00", align 1
@.str.122 = private unnamed_addr constant [8 x i8] c"pattern\00", align 1
@.str.123 = private unnamed_addr constant [10 x i8] c"procedure\00", align 1
@.str.124 = private unnamed_addr constant [6 x i8] c"raise\00", align 1
@.str.125 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.126 = private unnamed_addr constant [8 x i8] c"receive\00", align 1
@.str.127 = private unnamed_addr constant [7 x i8] c"record\00", align 1
@.str.128 = private unnamed_addr constant [10 x i8] c"recursive\00", align 1
@.str.129 = private unnamed_addr constant [4 x i8] c"rem\00", align 1
@.str.130 = private unnamed_addr constant [7 x i8] c"repeat\00", align 1
@.str.131 = private unnamed_addr constant [6 x i8] c"reply\00", align 1
@.str.132 = private unnamed_addr constant [7 x i8] c"return\00", align 1
@.str.133 = private unnamed_addr constant [8 x i8] c"running\00", align 1
@.str.134 = private unnamed_addr constant [5 x i8] c"runs\00", align 1
@.str.135 = private unnamed_addr constant [7 x i8] c"select\00", align 1
@.str.136 = private unnamed_addr constant [5 x i8] c"self\00", align 1
@.str.137 = private unnamed_addr constant [5 x i8] c"send\00", align 1
@.str.138 = private unnamed_addr constant [7 x i8] c"sender\00", align 1
@.str.139 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@.str.140 = private unnamed_addr constant [11 x i8] c"setverdict\00", align 1
@.str.141 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@.str.142 = private unnamed_addr constant [5 x i8] c"stop\00", align 1
@.str.143 = private unnamed_addr constant [7 x i8] c"subset\00", align 1
@.str.144 = private unnamed_addr constant [9 x i8] c"superset\00", align 1
@.str.145 = private unnamed_addr constant [7 x i8] c"system\00", align 1
@.str.146 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@.str.147 = private unnamed_addr constant [3 x i8] c"to\00", align 1
@.str.148 = private unnamed_addr constant [8 x i8] c"trigger\00", align 1
@.str.149 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.150 = private unnamed_addr constant [6 x i8] c"union\00", align 1
@.str.151 = private unnamed_addr constant [10 x i8] c"universal\00", align 1
@.str.152 = private unnamed_addr constant [6 x i8] c"unmap\00", align 1
@.str.153 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.154 = private unnamed_addr constant [8 x i8] c"valueof\00", align 1
@.str.155 = private unnamed_addr constant [8 x i8] c"variant\00", align 1
@.str.156 = private unnamed_addr constant [12 x i8] c"verdicttype\00", align 1
@.str.157 = private unnamed_addr constant [6 x i8] c"while\00", align 1
@.str.158 = private unnamed_addr constant [5 x i8] c"with\00", align 1
@.str.159 = private unnamed_addr constant [4 x i8] c"xor\00", align 1
@.str.160 = private unnamed_addr constant [6 x i8] c"xor4b\00", align 1
@BR_PAR = internal constant [3 x i8] c"()\00", align 1
@BR_SQ = internal constant [3 x i8] c"[]\00", align 1
@ttcnExprOps = internal constant [26 x i32] [i32 347, i32 397, i32 265, i32 338, i32 400, i32 401, i32 62, i32 60, i32 403, i32 402, i32 406, i32 407, i32 408, i32 409, i32 348, i32 398, i32 266, i32 339, i32 43, i32 45, i32 38, i32 42, i32 47, i32 331, i32 361, i32 46], align 4

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sParserDefinition* @TTCNParser() #0 {
entry:
  %def = alloca %struct.sParserDefinition*, align 8
  %call = call %struct.sParserDefinition* @parserNew(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.sParserDefinition* %call, %struct.sParserDefinition** %def, align 8
  %0 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %0, i32 0, i32 1
  store %struct.sKindDefinition* getelementptr inbounds ([15 x %struct.sKindDefinition], [15 x %struct.sKindDefinition]* @ttcnKinds, i64 0, i64 0), %struct.sKindDefinition** %kindTable, align 8
  %1 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %1, i32 0, i32 2
  store i32 15, i32* %kindCount, align 8
  %2 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %extensions = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %2, i32 0, i32 3
  store i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @extensions, i64 0, i64 0), i8*** %extensions, align 8
  %3 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %parser = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %3, i32 0, i32 8
  store void ()* @parseTTCN, void ()** %parser, align 8
  %4 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  ret %struct.sParserDefinition* %4
}

declare %struct.sParserDefinition* @parserNew(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseTTCN() #0 {
entry:
  %pTok = alloca %struct.s_ttcnToken*, align 8
  %kind = alloca i32, align 4
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %call = call %struct.s_ttcnToken* @getToken()
  store %struct.s_ttcnToken* %call, %struct.s_ttcnToken** %pTok, align 8
  %tobool = icmp ne %struct.s_ttcnToken* %call, null
  br i1 %tobool, label %while.body, label %while.end57

while.body:                                       ; preds = %while.cond
  %0 = load %struct.s_ttcnToken*, %struct.s_ttcnToken** %pTok, align 8
  %kind1 = getelementptr inbounds %struct.s_ttcnToken, %struct.s_ttcnToken* %0, i32 0, i32 2
  %1 = load i32, i32* %kind1, align 8
  store i32 %1, i32* %kind, align 4
  %2 = load %struct.s_ttcnToken*, %struct.s_ttcnToken** %pTok, align 8
  %type = getelementptr inbounds %struct.s_ttcnToken, %struct.s_ttcnToken* %2, i32 0, i32 0
  %3 = load i32, i32* %type, align 8
  switch i32 %3, label %sw.default [
    i32 333, label %sw.bb
    i32 305, label %sw.bb
    i32 373, label %sw.bb
    i32 380, label %sw.bb
    i32 264, label %sw.bb
    i32 310, label %sw.bb
    i32 392, label %sw.bb3
    i32 281, label %sw.bb5
    i32 354, label %sw.bb5
    i32 382, label %sw.bb8
    i32 386, label %sw.bb10
    i32 379, label %sw.bb12
    i32 334, label %sw.bb20
    i32 314, label %sw.bb41
  ]

sw.bb:                                            ; preds = %while.body, %while.body, %while.body, %while.body, %while.body, %while.body
  %4 = load i32, i32* %kind, align 4
  %call2 = call i32 @parseID(i32 %4)
  br label %sw.epilog

sw.bb3:                                           ; preds = %while.body
  %call4 = call %struct.s_ttcnToken* @matchToken(i32 379)
  br label %sw.bb5

sw.bb5:                                           ; preds = %while.body, %while.body, %sw.bb3
  %call6 = call i32 @parseType()
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb5
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb5
  br label %sw.bb8

sw.bb8:                                           ; preds = %while.body, %if.end
  %5 = load i32, i32* %kind, align 4
  %call9 = call i32 @parseNameInitList(i32 %5)
  br label %sw.epilog

sw.bb10:                                          ; preds = %while.body
  %call11 = call i32 @parseTypeDefBody()
  br label %sw.epilog

sw.bb12:                                          ; preds = %while.body
  %call13 = call i32 @parseType()
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb12
  %call15 = call i32 @parseSignature()
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.then17, label %if.end19

if.then17:                                        ; preds = %lor.lhs.false, %sw.bb12
  %call18 = call i32 @parseID(i32 3)
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %lor.lhs.false
  br label %sw.epilog

sw.bb20:                                          ; preds = %while.body
  %call21 = call %struct.s_ttcnToken* @matchToken(i32 123)
  %tobool22 = icmp ne %struct.s_ttcnToken* %call21, null
  br i1 %tobool22, label %if.then23, label %if.else

if.then23:                                        ; preds = %sw.bb20
  br label %while.cond24

while.cond24:                                     ; preds = %while.end, %if.then23
  %call25 = call i32 @parseType()
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond24
  %call27 = call i32 @parseNameInitList(i32 9)
  %tobool28 = icmp ne i32 %call27, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond24
  %6 = phi i1 [ false, %while.cond24 ], [ %tobool28, %land.rhs ]
  br i1 %6, label %while.body29, label %while.end34

while.body29:                                     ; preds = %land.end
  br label %while.cond30

while.cond30:                                     ; preds = %while.body33, %while.body29
  %call31 = call %struct.s_ttcnToken* @matchToken(i32 59)
  %tobool32 = icmp ne %struct.s_ttcnToken* %call31, null
  br i1 %tobool32, label %while.body33, label %while.end

while.body33:                                     ; preds = %while.cond30
  br label %while.cond30

while.end:                                        ; preds = %while.cond30
  br label %while.cond24

while.end34:                                      ; preds = %land.end
  br label %if.end40

if.else:                                          ; preds = %sw.bb20
  %call35 = call i32 @parseType()
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %if.then37, label %if.end39

if.then37:                                        ; preds = %if.else
  %call38 = call i32 @parseNameInitList(i32 9)
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %if.else
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %while.end34
  br label %sw.epilog

sw.bb41:                                          ; preds = %while.body
  %call42 = call %struct.s_ttcnToken* @matchToken(i32 304)
  %tobool43 = icmp ne %struct.s_ttcnToken* %call42, null
  br i1 %tobool43, label %lor.lhs.false44, label %if.then47

lor.lhs.false44:                                  ; preds = %sw.bb41
  %call45 = call %struct.s_ttcnToken* @matchToken(i32 256)
  %tobool46 = icmp ne %struct.s_ttcnToken* %call45, null
  br i1 %tobool46, label %if.end48, label %if.then47

if.then47:                                        ; preds = %lor.lhs.false44, %sw.bb41
  br label %sw.epilog

if.end48:                                         ; preds = %lor.lhs.false44
  %call49 = call %struct.s_ttcnToken* @matchToken(i32 360)
  %call50 = call %struct.s_ttcnToken* @matchToken(i32 262)
  %tobool51 = icmp ne %struct.s_ttcnToken* %call50, null
  br i1 %tobool51, label %land.lhs.true, label %if.end55

land.lhs.true:                                    ; preds = %if.end48
  %call52 = call %struct.s_ttcnToken* @matchToken(i32 294)
  %tobool53 = icmp ne %struct.s_ttcnToken* %call52, null
  br i1 %tobool53, label %if.end55, label %if.then54

if.then54:                                        ; preds = %land.lhs.true
  br label %sw.epilog

if.end55:                                         ; preds = %land.lhs.true, %if.end48
  %call56 = call i32 @matchBrackets(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @BR_CUR, i64 0, i64 0))
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end55, %if.then54, %if.then47, %if.end40, %if.end19, %sw.bb10, %sw.bb8, %if.then, %sw.bb
  br label %while.cond

while.end57:                                      ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct.s_ttcnToken* @getToken() #0 {
entry:
  %retval = alloca %struct.s_ttcnToken*, align 8
  %c = alloca i32, align 4
  %c2 = alloca i32, align 4
  %i = alloca i32, align 4
  %0 = load i32, i32* @repeatLastToken, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* @repeatLastToken, align 4
  %1 = load %struct.s_ttcnToken*, %struct.s_ttcnToken** @pTtcnToken, align 8
  store %struct.s_ttcnToken* %1, %struct.s_ttcnToken** %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %2 = load %struct.s_ttcnToken*, %struct.s_ttcnToken** @pTtcnToken, align 8
  call void @freeToken(%struct.s_ttcnToken* %2)
  store %struct.s_ttcnToken* null, %struct.s_ttcnToken** @pTtcnToken, align 8
  br label %if.end

if.end:                                           ; preds = %if.else
  %call = call i32 @getNonWhiteSpaceChar()
  store i32 %call, i32* %c, align 4
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  store %struct.s_ttcnToken* null, %struct.s_ttcnToken** %retval, align 8
  br label %return

if.end2:                                          ; preds = %if.end
  %call3 = call i8* @eMalloc(i64 24)
  %3 = bitcast i8* %call3 to %struct.s_ttcnToken*
  store %struct.s_ttcnToken* %3, %struct.s_ttcnToken** @pTtcnToken, align 8
  %4 = load %struct.s_ttcnToken*, %struct.s_ttcnToken** @pTtcnToken, align 8
  %type = getelementptr inbounds %struct.s_ttcnToken, %struct.s_ttcnToken* %4, i32 0, i32 0
  store i32 0, i32* %type, align 8
  %5 = load %struct.s_ttcnToken*, %struct.s_ttcnToken** @pTtcnToken, align 8
  %value = getelementptr inbounds %struct.s_ttcnToken, %struct.s_ttcnToken* %5, i32 0, i32 1
  store %struct.sVString* null, %struct.sVString** %value, align 8
  %6 = load %struct.s_ttcnToken*, %struct.s_ttcnToken** @pTtcnToken, align 8
  %kind = getelementptr inbounds %struct.s_ttcnToken, %struct.s_ttcnToken* %6, i32 0, i32 2
  store i32 15, i32* %kind, align 8
  %7 = load i32, i32* %c, align 4
  %call4 = call i32 @isalpha(i32 %7) #3
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then6, label %if.else14

if.then6:                                         ; preds = %if.end2
  %call7 = call %struct.sVString* @vStringNew()
  %8 = load %struct.s_ttcnToken*, %struct.s_ttcnToken** @pTtcnToken, align 8
  %value8 = getelementptr inbounds %struct.s_ttcnToken, %struct.s_ttcnToken* %8, i32 0, i32 1
  store %struct.sVString* %call7, %struct.sVString** %value8, align 8
  br label %do.body

do.body:                                          ; preds = %lor.end, %if.then6
  %9 = load %struct.s_ttcnToken*, %struct.s_ttcnToken** @pTtcnToken, align 8
  %value9 = getelementptr inbounds %struct.s_ttcnToken, %struct.s_ttcnToken* %9, i32 0, i32 1
  %10 = load %struct.sVString*, %struct.sVString** %value9, align 8
  %11 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %10, i32 %11)
  %call10 = call i32 @getcFromInputFile()
  store i32 %call10, i32* %c, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %12 = load i32, i32* %c, align 4
  %call11 = call i32 @isalnum(i32 %12) #3
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %do.cond
  %13 = load i32, i32* %c, align 4
  %cmp13 = icmp eq i32 %13, 95
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %do.cond
  %14 = phi i1 [ true, %do.cond ], [ %cmp13, %lor.rhs ]
  br i1 %14, label %do.body, label %do.end

do.end:                                           ; preds = %lor.end
  %15 = load i32, i32* %c, align 4
  call void @ungetcToInputFile(i32 %15)
  %16 = load %struct.s_ttcnToken*, %struct.s_ttcnToken** @pTtcnToken, align 8
  call void @findTTCNKeyword(%struct.s_ttcnToken* %16)
  br label %if.end147

if.else14:                                        ; preds = %if.end2
  %17 = load i32, i32* %c, align 4
  %cmp15 = icmp eq i32 %17, 39
  br i1 %cmp15, label %if.then16, label %if.else41

if.then16:                                        ; preds = %if.else14
  %18 = load %struct.s_ttcnToken*, %struct.s_ttcnToken** @pTtcnToken, align 8
  %type17 = getelementptr inbounds %struct.s_ttcnToken, %struct.s_ttcnToken* %18, i32 0, i32 0
  store i32 257, i32* %type17, align 8
  %call18 = call %struct.sVString* @vStringNew()
  %19 = load %struct.s_ttcnToken*, %struct.s_ttcnToken** @pTtcnToken, align 8
  %value19 = getelementptr inbounds %struct.s_ttcnToken, %struct.s_ttcnToken* %19, i32 0, i32 1
  store %struct.sVString* %call18, %struct.sVString** %value19, align 8
  %20 = load %struct.s_ttcnToken*, %struct.s_ttcnToken** @pTtcnToken, align 8
  %value20 = getelementptr inbounds %struct.s_ttcnToken, %struct.s_ttcnToken* %20, i32 0, i32 1
  %21 = load %struct.sVString*, %struct.sVString** %value20, align 8
  %22 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %21, i32 %22)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then16
  %call21 = call i32 @getcFromInputFile()
  store i32 %call21, i32* %c, align 4
  %call22 = call i32 @isxdigit(i32 %call21) #3
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %23 = load %struct.s_ttcnToken*, %struct.s_ttcnToken** @pTtcnToken, align 8
  %value24 = getelementptr inbounds %struct.s_ttcnToken, %struct.s_ttcnToken* %23, i32 0, i32 1
  %24 = load %struct.sVString*, %struct.sVString** %value24, align 8
  %25 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %24, i32 %25)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %26 = load i32, i32* %c, align 4
  %cmp25 = icmp ne i32 %26, 39
  br i1 %cmp25, label %if.then26, label %if.else28

if.then26:                                        ; preds = %while.end
  %27 = load %struct.s_ttcnToken*, %struct.s_ttcnToken** @pTtcnToken, align 8
  %type27 = getelementptr inbounds %struct.s_ttcnToken, %struct.s_ttcnToken* %27, i32 0, i32 0
  store i32 0, i32* %type27, align 8
  br label %if.end40

if.else28:                                        ; preds = %while.end
  %28 = load %struct.s_ttcnToken*, %struct.s_ttcnToken** @pTtcnToken, align 8
  %value29 = getelementptr inbounds %struct.s_ttcnToken, %struct.s_ttcnToken* %28, i32 0, i32 1
  %29 = load %struct.sVString*, %struct.sVString** %value29, align 8
  %30 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %29, i32 %30)
  %call30 = call i32 @getcFromInputFile()
  store i32 %call30, i32* %c, align 4
  %31 = load i32, i32* %c, align 4
  %cmp31 = icmp ne i32 %31, 79
  br i1 %cmp31, label %land.lhs.true, label %if.else37

land.lhs.true:                                    ; preds = %if.else28
  %32 = load i32, i32* %c, align 4
  %cmp32 = icmp ne i32 %32, 72
  br i1 %cmp32, label %land.lhs.true33, label %if.else37

land.lhs.true33:                                  ; preds = %land.lhs.true
  %33 = load i32, i32* %c, align 4
  %cmp34 = icmp ne i32 %33, 66
  br i1 %cmp34, label %if.then35, label %if.else37

if.then35:                                        ; preds = %land.lhs.true33
  %34 = load %struct.s_ttcnToken*, %struct.s_ttcnToken** @pTtcnToken, align 8
  %type36 = getelementptr inbounds %struct.s_ttcnToken, %struct.s_ttcnToken* %34, i32 0, i32 0
  store i32 0, i32* %type36, align 8
  br label %if.end39

if.else37:                                        ; preds = %land.lhs.true33, %land.lhs.true, %if.else28
  %35 = load %struct.s_ttcnToken*, %struct.s_ttcnToken** @pTtcnToken, align 8
  %value38 = getelementptr inbounds %struct.s_ttcnToken, %struct.s_ttcnToken* %35, i32 0, i32 1
  %36 = load %struct.sVString*, %struct.sVString** %value38, align 8
  %37 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %36, i32 %37)
  br label %if.end39

if.end39:                                         ; preds = %if.else37, %if.then35
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.then26
  br label %if.end146

if.else41:                                        ; preds = %if.else14
  %38 = load i32, i32* %c, align 4
  %cmp42 = icmp eq i32 %38, 34
  br i1 %cmp42, label %if.then43, label %if.else66

if.then43:                                        ; preds = %if.else41
  %39 = load %struct.s_ttcnToken*, %struct.s_ttcnToken** @pTtcnToken, align 8
  %type44 = getelementptr inbounds %struct.s_ttcnToken, %struct.s_ttcnToken* %39, i32 0, i32 0
  store i32 257, i32* %type44, align 8
  %call45 = call %struct.sVString* @vStringNew()
  %40 = load %struct.s_ttcnToken*, %struct.s_ttcnToken** @pTtcnToken, align 8
  %value46 = getelementptr inbounds %struct.s_ttcnToken, %struct.s_ttcnToken* %40, i32 0, i32 1
  store %struct.sVString* %call45, %struct.sVString** %value46, align 8
  br label %do.body47

do.body47:                                        ; preds = %land.end, %if.then43
  %41 = load %struct.s_ttcnToken*, %struct.s_ttcnToken** @pTtcnToken, align 8
  %value48 = getelementptr inbounds %struct.s_ttcnToken, %struct.s_ttcnToken* %41, i32 0, i32 1
  %42 = load %struct.sVString*, %struct.sVString** %value48, align 8
  %43 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %42, i32 %43)
  %call49 = call i32 @getcFromInputFile()
  store i32 %call49, i32* %c, align 4
  %44 = load i32, i32* %c, align 4
  %cmp50 = icmp eq i32 %44, 34
  br i1 %cmp50, label %if.then51, label %if.end57

if.then51:                                        ; preds = %do.body47
  %45 = load %struct.s_ttcnToken*, %struct.s_ttcnToken** @pTtcnToken, align 8
  %value52 = getelementptr inbounds %struct.s_ttcnToken, %struct.s_ttcnToken* %45, i32 0, i32 1
  %46 = load %struct.sVString*, %struct.sVString** %value52, align 8
  %47 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %46, i32 %47)
  %call53 = call i32 @getcFromInputFile()
  store i32 %call53, i32* %c2, align 4
  %48 = load i32, i32* %c2, align 4
  %49 = load i32, i32* %c, align 4
  %cmp54 = icmp eq i32 %48, %49
  br i1 %cmp54, label %if.then55, label %if.end56

if.then55:                                        ; preds = %if.then51
  br label %do.cond58

if.end56:                                         ; preds = %if.then51
  %50 = load i32, i32* %c2, align 4
  call void @ungetcToInputFile(i32 %50)
  br label %if.end57

if.end57:                                         ; preds = %if.end56, %do.body47
  br label %do.cond58

do.cond58:                                        ; preds = %if.end57, %if.then55
  %51 = load i32, i32* %c, align 4
  %cmp59 = icmp ne i32 %51, 34
  br i1 %cmp59, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond58
  %52 = load i32, i32* %c, align 4
  %cmp60 = icmp ne i32 %52, -1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond58
  %53 = phi i1 [ false, %do.cond58 ], [ %cmp60, %land.rhs ]
  br i1 %53, label %do.body47, label %do.end61

do.end61:                                         ; preds = %land.end
  %54 = load i32, i32* %c, align 4
  %cmp62 = icmp ne i32 %54, 34
  br i1 %cmp62, label %if.then63, label %if.end65

if.then63:                                        ; preds = %do.end61
  %55 = load %struct.s_ttcnToken*, %struct.s_ttcnToken** @pTtcnToken, align 8
  %type64 = getelementptr inbounds %struct.s_ttcnToken, %struct.s_ttcnToken* %55, i32 0, i32 0
  store i32 0, i32* %type64, align 8
  br label %if.end65

if.end65:                                         ; preds = %if.then63, %do.end61
  br label %if.end145

if.else66:                                        ; preds = %if.else41
  %56 = load i32, i32* %c, align 4
  %call67 = call i32 @isdigit(i32 %56) #3
  %tobool68 = icmp ne i32 %call67, 0
  br i1 %tobool68, label %if.then69, label %if.else120

if.then69:                                        ; preds = %if.else66
  %57 = load %struct.s_ttcnToken*, %struct.s_ttcnToken** @pTtcnToken, align 8
  %type70 = getelementptr inbounds %struct.s_ttcnToken, %struct.s_ttcnToken* %57, i32 0, i32 0
  store i32 257, i32* %type70, align 8
  %call71 = call %struct.sVString* @vStringNew()
  %58 = load %struct.s_ttcnToken*, %struct.s_ttcnToken** @pTtcnToken, align 8
  %value72 = getelementptr inbounds %struct.s_ttcnToken, %struct.s_ttcnToken* %58, i32 0, i32 1
  store %struct.sVString* %call71, %struct.sVString** %value72, align 8
  br label %do.body73

do.body73:                                        ; preds = %do.cond75, %if.then69
  %59 = load %struct.s_ttcnToken*, %struct.s_ttcnToken** @pTtcnToken, align 8
  %value74 = getelementptr inbounds %struct.s_ttcnToken, %struct.s_ttcnToken* %59, i32 0, i32 1
  %60 = load %struct.sVString*, %struct.sVString** %value74, align 8
  %61 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %60, i32 %61)
  br label %do.cond75

do.cond75:                                        ; preds = %do.body73
  %call76 = call i32 @getcFromInputFile()
  store i32 %call76, i32* %c, align 4
  %call77 = call i32 @isdigit(i32 %call76) #3
  %tobool78 = icmp ne i32 %call77, 0
  br i1 %tobool78, label %do.body73, label %do.end79

do.end79:                                         ; preds = %do.cond75
  %62 = load i32, i32* %c, align 4
  %cmp80 = icmp eq i32 %62, 46
  br i1 %cmp80, label %if.then81, label %if.end90

if.then81:                                        ; preds = %do.end79
  %63 = load %struct.s_ttcnToken*, %struct.s_ttcnToken** @pTtcnToken, align 8
  %value82 = getelementptr inbounds %struct.s_ttcnToken, %struct.s_ttcnToken* %63, i32 0, i32 1
  %64 = load %struct.sVString*, %struct.sVString** %value82, align 8
  %65 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %64, i32 %65)
  br label %while.cond83

while.cond83:                                     ; preds = %while.body87, %if.then81
  %call84 = call i32 @getcFromInputFile()
  store i32 %call84, i32* %c, align 4
  %call85 = call i32 @isdigit(i32 %call84) #3
  %tobool86 = icmp ne i32 %call85, 0
  br i1 %tobool86, label %while.body87, label %while.end89

while.body87:                                     ; preds = %while.cond83
  %66 = load %struct.s_ttcnToken*, %struct.s_ttcnToken** @pTtcnToken, align 8
  %value88 = getelementptr inbounds %struct.s_ttcnToken, %struct.s_ttcnToken* %66, i32 0, i32 1
  %67 = load %struct.sVString*, %struct.sVString** %value88, align 8
  %68 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %67, i32 %68)
  br label %while.cond83

while.end89:                                      ; preds = %while.cond83
  br label %if.end90

if.end90:                                         ; preds = %while.end89, %do.end79
  %69 = load i32, i32* %c, align 4
  %cmp91 = icmp eq i32 %69, 69
  br i1 %cmp91, label %if.then93, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end90
  %70 = load i32, i32* %c, align 4
  %cmp92 = icmp eq i32 %70, 101
  br i1 %cmp92, label %if.then93, label %if.end119

if.then93:                                        ; preds = %lor.lhs.false, %if.end90
  %71 = load %struct.s_ttcnToken*, %struct.s_ttcnToken** @pTtcnToken, align 8
  %value94 = getelementptr inbounds %struct.s_ttcnToken, %struct.s_ttcnToken* %71, i32 0, i32 1
  %72 = load %struct.sVString*, %struct.sVString** %value94, align 8
  %73 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %72, i32 %73)
  %call95 = call i32 @getcFromInputFile()
  store i32 %call95, i32* %c, align 4
  %cmp96 = icmp eq i32 %call95, 45
  br i1 %cmp96, label %if.then97, label %if.else99

if.then97:                                        ; preds = %if.then93
  %74 = load %struct.s_ttcnToken*, %struct.s_ttcnToken** @pTtcnToken, align 8
  %value98 = getelementptr inbounds %struct.s_ttcnToken, %struct.s_ttcnToken* %74, i32 0, i32 1
  %75 = load %struct.sVString*, %struct.sVString** %value98, align 8
  %76 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %75, i32 %76)
  br label %if.end100

if.else99:                                        ; preds = %if.then93
  %77 = load i32, i32* %c, align 4
  call void @ungetcToInputFile(i32 %77)
  br label %if.end100

if.end100:                                        ; preds = %if.else99, %if.then97
  br label %while.cond101

while.cond101:                                    ; preds = %while.body105, %if.end100
  %call102 = call i32 @getcFromInputFile()
  store i32 %call102, i32* %c, align 4
  %call103 = call i32 @isdigit(i32 %call102) #3
  %tobool104 = icmp ne i32 %call103, 0
  br i1 %tobool104, label %while.body105, label %while.end107

while.body105:                                    ; preds = %while.cond101
  %78 = load %struct.s_ttcnToken*, %struct.s_ttcnToken** @pTtcnToken, align 8
  %value106 = getelementptr inbounds %struct.s_ttcnToken, %struct.s_ttcnToken* %78, i32 0, i32 1
  %79 = load %struct.sVString*, %struct.sVString** %value106, align 8
  %80 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %79, i32 %80)
  br label %while.cond101

while.end107:                                     ; preds = %while.cond101
  %81 = load i32, i32* %c, align 4
  %cmp108 = icmp eq i32 %81, 46
  br i1 %cmp108, label %if.then109, label %if.end118

if.then109:                                       ; preds = %while.end107
  %82 = load %struct.s_ttcnToken*, %struct.s_ttcnToken** @pTtcnToken, align 8
  %value110 = getelementptr inbounds %struct.s_ttcnToken, %struct.s_ttcnToken* %82, i32 0, i32 1
  %83 = load %struct.sVString*, %struct.sVString** %value110, align 8
  %84 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %83, i32 %84)
  br label %while.cond111

while.cond111:                                    ; preds = %while.body115, %if.then109
  %call112 = call i32 @getcFromInputFile()
  store i32 %call112, i32* %c, align 4
  %call113 = call i32 @isdigit(i32 %call112) #3
  %tobool114 = icmp ne i32 %call113, 0
  br i1 %tobool114, label %while.body115, label %while.end117

while.body115:                                    ; preds = %while.cond111
  %85 = load %struct.s_ttcnToken*, %struct.s_ttcnToken** @pTtcnToken, align 8
  %value116 = getelementptr inbounds %struct.s_ttcnToken, %struct.s_ttcnToken* %85, i32 0, i32 1
  %86 = load %struct.sVString*, %struct.sVString** %value116, align 8
  %87 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %86, i32 %87)
  br label %while.cond111

while.end117:                                     ; preds = %while.cond111
  br label %if.end118

if.end118:                                        ; preds = %while.end117, %while.end107
  br label %if.end119

if.end119:                                        ; preds = %if.end118, %lor.lhs.false
  %88 = load i32, i32* %c, align 4
  call void @ungetcToInputFile(i32 %88)
  br label %if.end144

if.else120:                                       ; preds = %if.else66
  %call121 = call i32 @getcFromInputFile()
  store i32 %call121, i32* %c2, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else120
  %89 = load i32, i32* %i, align 4
  %cmp122 = icmp slt i32 %89, 11
  br i1 %cmp122, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %90 = load i32, i32* %c, align 4
  %91 = load i32, i32* %i, align 4
  %idxprom = sext i32 %91 to i64
  %arrayidx = getelementptr inbounds [11 x %struct.s_ttcnOp], [11 x %struct.s_ttcnOp]* @ttcnOps, i64 0, i64 %idxprom
  %name = getelementptr inbounds %struct.s_ttcnOp, %struct.s_ttcnOp* %arrayidx, i32 0, i32 1
  %arrayidx123 = getelementptr inbounds [3 x i8], [3 x i8]* %name, i64 0, i64 0
  %92 = load i8, i8* %arrayidx123, align 4
  %conv = sext i8 %92 to i32
  %cmp124 = icmp eq i32 %90, %conv
  br i1 %cmp124, label %land.lhs.true126, label %if.end138

land.lhs.true126:                                 ; preds = %for.body
  %93 = load i32, i32* %c2, align 4
  %94 = load i32, i32* %i, align 4
  %idxprom127 = sext i32 %94 to i64
  %arrayidx128 = getelementptr inbounds [11 x %struct.s_ttcnOp], [11 x %struct.s_ttcnOp]* @ttcnOps, i64 0, i64 %idxprom127
  %name129 = getelementptr inbounds %struct.s_ttcnOp, %struct.s_ttcnOp* %arrayidx128, i32 0, i32 1
  %arrayidx130 = getelementptr inbounds [3 x i8], [3 x i8]* %name129, i64 0, i64 1
  %95 = load i8, i8* %arrayidx130, align 1
  %conv131 = sext i8 %95 to i32
  %cmp132 = icmp eq i32 %93, %conv131
  br i1 %cmp132, label %if.then134, label %if.end138

if.then134:                                       ; preds = %land.lhs.true126
  %96 = load i32, i32* %i, align 4
  %idxprom135 = sext i32 %96 to i64
  %arrayidx136 = getelementptr inbounds [11 x %struct.s_ttcnOp], [11 x %struct.s_ttcnOp]* @ttcnOps, i64 0, i64 %idxprom135
  %id = getelementptr inbounds %struct.s_ttcnOp, %struct.s_ttcnOp* %arrayidx136, i32 0, i32 0
  %97 = load i32, i32* %id, align 4
  %98 = load %struct.s_ttcnToken*, %struct.s_ttcnToken** @pTtcnToken, align 8
  %type137 = getelementptr inbounds %struct.s_ttcnToken, %struct.s_ttcnToken* %98, i32 0, i32 0
  store i32 %97, i32* %type137, align 8
  br label %for.end

if.end138:                                        ; preds = %land.lhs.true126, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end138
  %99 = load i32, i32* %i, align 4
  %inc = add nsw i32 %99, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then134, %for.cond
  %100 = load i32, i32* %i, align 4
  %cmp139 = icmp eq i32 %100, 11
  br i1 %cmp139, label %if.then141, label %if.end143

if.then141:                                       ; preds = %for.end
  %101 = load i32, i32* %c, align 4
  %102 = load %struct.s_ttcnToken*, %struct.s_ttcnToken** @pTtcnToken, align 8
  %type142 = getelementptr inbounds %struct.s_ttcnToken, %struct.s_ttcnToken* %102, i32 0, i32 0
  store i32 %101, i32* %type142, align 8
  %103 = load i32, i32* %c2, align 4
  call void @ungetcToInputFile(i32 %103)
  br label %if.end143

if.end143:                                        ; preds = %if.then141, %for.end
  br label %if.end144

if.end144:                                        ; preds = %if.end143, %if.end119
  br label %if.end145

if.end145:                                        ; preds = %if.end144, %if.end65
  br label %if.end146

if.end146:                                        ; preds = %if.end145, %if.end40
  br label %if.end147

if.end147:                                        ; preds = %if.end146, %do.end
  %104 = load %struct.s_ttcnToken*, %struct.s_ttcnToken** @pTtcnToken, align 8
  %type148 = getelementptr inbounds %struct.s_ttcnToken, %struct.s_ttcnToken* %104, i32 0, i32 0
  %105 = load i32, i32* %type148, align 8
  %cmp149 = icmp ne i32 %105, 256
  br i1 %cmp149, label %land.lhs.true151, label %if.end158

land.lhs.true151:                                 ; preds = %if.end147
  %106 = load %struct.s_ttcnToken*, %struct.s_ttcnToken** @pTtcnToken, align 8
  %type152 = getelementptr inbounds %struct.s_ttcnToken, %struct.s_ttcnToken* %106, i32 0, i32 0
  %107 = load i32, i32* %type152, align 8
  %cmp153 = icmp ne i32 %107, 257
  br i1 %cmp153, label %if.then155, label %if.end158

if.then155:                                       ; preds = %land.lhs.true151
  %108 = load %struct.s_ttcnToken*, %struct.s_ttcnToken** @pTtcnToken, align 8
  %value156 = getelementptr inbounds %struct.s_ttcnToken, %struct.s_ttcnToken* %108, i32 0, i32 1
  %109 = load %struct.sVString*, %struct.sVString** %value156, align 8
  call void @vStringDelete(%struct.sVString* %109)
  %110 = load %struct.s_ttcnToken*, %struct.s_ttcnToken** @pTtcnToken, align 8
  %value157 = getelementptr inbounds %struct.s_ttcnToken, %struct.s_ttcnToken* %110, i32 0, i32 1
  store %struct.sVString* null, %struct.sVString** %value157, align 8
  br label %if.end158

if.end158:                                        ; preds = %if.then155, %land.lhs.true151, %if.end147
  %111 = load %struct.s_ttcnToken*, %struct.s_ttcnToken** @pTtcnToken, align 8
  store %struct.s_ttcnToken* %111, %struct.s_ttcnToken** %retval, align 8
  br label %return

return:                                           ; preds = %if.end158, %if.then1, %if.then
  %112 = load %struct.s_ttcnToken*, %struct.s_ttcnToken** %retval, align 8
  ret %struct.s_ttcnToken* %112
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @parseID(i32 %kind) #0 {
entry:
  %retval = alloca i32, align 4
  %kind.addr = alloca i32, align 4
  %pTok = alloca %struct.s_ttcnToken*, align 8
  store i32 %kind, i32* %kind.addr, align 4
  %call = call %struct.s_ttcnToken* @matchToken(i32 256)
  store %struct.s_ttcnToken* %call, %struct.s_ttcnToken** %pTok, align 8
  %0 = load %struct.s_ttcnToken*, %struct.s_ttcnToken** %pTok, align 8
  %tobool = icmp ne %struct.s_ttcnToken* %0, null
  br i1 %tobool, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %kind.addr, align 4
  %cmp = icmp ult i32 %1, 15
  br i1 %cmp, label %if.then1, label %if.end

if.then1:                                         ; preds = %if.then
  %2 = load %struct.s_ttcnToken*, %struct.s_ttcnToken** %pTok, align 8
  %value = getelementptr inbounds %struct.s_ttcnToken, %struct.s_ttcnToken* %2, i32 0, i32 1
  %3 = load %struct.sVString*, %struct.sVString** %value, align 8
  %4 = load i32, i32* %kind.addr, align 4
  %call2 = call i32 @makeSimpleTag(%struct.sVString* %3, i32 %4)
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then
  store i32 1, i32* %retval, align 4
  br label %return

if.end3:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end3, %if.end
  %5 = load i32, i32* %retval, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct.s_ttcnToken* @matchToken(i32 %toktype) #0 {
entry:
  %retval = alloca %struct.s_ttcnToken*, align 8
  %toktype.addr = alloca i32, align 4
  %pTok = alloca %struct.s_ttcnToken*, align 8
  store i32 %toktype, i32* %toktype.addr, align 4
  %call = call %struct.s_ttcnToken* @getToken()
  store %struct.s_ttcnToken* %call, %struct.s_ttcnToken** %pTok, align 8
  %0 = load %struct.s_ttcnToken*, %struct.s_ttcnToken** %pTok, align 8
  %tobool = icmp ne %struct.s_ttcnToken* %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.s_ttcnToken*, %struct.s_ttcnToken** %pTok, align 8
  %type = getelementptr inbounds %struct.s_ttcnToken, %struct.s_ttcnToken* %1, i32 0, i32 0
  %2 = load i32, i32* %type, align 8
  %3 = load i32, i32* %toktype.addr, align 4
  %cmp = icmp eq i32 %2, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct.s_ttcnToken*, %struct.s_ttcnToken** %pTok, align 8
  store %struct.s_ttcnToken* %4, %struct.s_ttcnToken** %retval, align 8
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  call void @ungetToken()
  store %struct.s_ttcnToken* null, %struct.s_ttcnToken** %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct.s_ttcnToken*, %struct.s_ttcnToken** %retval, align 8
  ret %struct.s_ttcnToken* %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @parseType() #0 {
entry:
  %retval = alloca i32, align 4
  %pTok = alloca %struct.s_ttcnToken*, align 8
  %call = call %struct.s_ttcnToken* @getToken()
  store %struct.s_ttcnToken* %call, %struct.s_ttcnToken** %pTok, align 8
  %0 = load %struct.s_ttcnToken*, %struct.s_ttcnToken** %pTok, align 8
  %tobool = icmp ne %struct.s_ttcnToken* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.s_ttcnToken*, %struct.s_ttcnToken** %pTok, align 8
  %type = getelementptr inbounds %struct.s_ttcnToken, %struct.s_ttcnToken* %1, i32 0, i32 0
  %2 = load i32, i32* %type, align 8
  switch i32 %2, label %sw.default [
    i32 269, label %sw.bb
    i32 270, label %sw.bb
    i32 275, label %sw.bb
    i32 319, label %sw.bb
    i32 342, label %sw.bb
    i32 311, label %sw.bb
    i32 394, label %sw.bb
    i32 302, label %sw.bb
    i32 260, label %sw.bb
    i32 285, label %sw.bb
    i32 268, label %sw.bb
    i32 388, label %sw.bb1
    i32 256, label %sw.bb5
  ]

sw.bb:                                            ; preds = %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end
  store i32 1, i32* %retval, align 4
  br label %return

sw.bb1:                                           ; preds = %if.end
  %call2 = call %struct.s_ttcnToken* @matchToken(i32 275)
  %tobool3 = icmp ne %struct.s_ttcnToken* %call2, null
  br i1 %tobool3, label %if.else, label %if.then4

if.then4:                                         ; preds = %sw.bb1
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb1
  store i32 1, i32* %retval, align 4
  br label %return

sw.bb5:                                           ; preds = %if.end
  %call6 = call %struct.s_ttcnToken* @matchToken(i32 46)
  %tobool7 = icmp ne %struct.s_ttcnToken* %call6, null
  br i1 %tobool7, label %land.lhs.true, label %if.end11

land.lhs.true:                                    ; preds = %sw.bb5
  %call8 = call %struct.s_ttcnToken* @matchToken(i32 256)
  %tobool9 = icmp ne %struct.s_ttcnToken* %call8, null
  br i1 %tobool9, label %if.end11, label %if.then10

if.then10:                                        ; preds = %land.lhs.true
  br label %sw.epilog

if.end11:                                         ; preds = %land.lhs.true, %sw.bb5
  %call12 = call i32 @matchBrackets(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @BR_PAR, i64 0, i64 0))
  %call13 = call i32 @parseExtendedFieldReference()
  store i32 1, i32* %retval, align 4
  br label %return

sw.default:                                       ; preds = %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.then10, %if.then4
  call void @ungetToken()
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %if.end11, %if.else, %sw.bb, %if.then
  %3 = load i32, i32* %retval, align 4
  ret i32 %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @parseNameInitList(i32 %kind) #0 {
entry:
  %retval = alloca i32, align 4
  %kind.addr = alloca i32, align 4
  store i32 %kind, i32* %kind.addr, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load i32, i32* %kind.addr, align 4
  %call = call i32 @parseID(i32 %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %do.body
  %call1 = call i32 @parseArrayDef()
  %call2 = call i32 @parseInitializer()
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %call3 = call %struct.s_ttcnToken* @matchToken(i32 44)
  %tobool4 = icmp ne %struct.s_ttcnToken* %call3, null
  br i1 %tobool4, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %do.end, %if.then
  %1 = load i32, i32* %retval, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @parseTypeDefBody() #0 {
entry:
  %retval = alloca i32, align 4
  %pTok = alloca %struct.s_ttcnToken*, align 8
  %call = call %struct.s_ttcnToken* @getToken()
  store %struct.s_ttcnToken* %call, %struct.s_ttcnToken** %pTok, align 8
  %0 = load %struct.s_ttcnToken*, %struct.s_ttcnToken** %pTok, align 8
  %tobool = icmp ne %struct.s_ttcnToken* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.s_ttcnToken*, %struct.s_ttcnToken** %pTok, align 8
  %type = getelementptr inbounds %struct.s_ttcnToken, %struct.s_ttcnToken* %1, i32 0, i32 0
  %2 = load i32, i32* %type, align 8
  switch i32 %2, label %sw.default [
    i32 359, label %sw.bb
    i32 371, label %sw.bb
    i32 387, label %sw.bb12
    i32 292, label %sw.bb22
    i32 354, label %sw.bb31
    i32 279, label %sw.bb31
  ]

sw.bb:                                            ; preds = %if.end, %if.end
  %call1 = call i32 @parseStringLength()
  %call2 = call %struct.s_ttcnToken* @matchToken(i32 343)
  %tobool3 = icmp ne %struct.s_ttcnToken* %call2, null
  br i1 %tobool3, label %if.then4, label %if.end11

if.then4:                                         ; preds = %sw.bb
  %call5 = call i32 @parseType()
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %land.rhs, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then4
  %call7 = call i32 @parseNestedTypeDef()
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.lhs.false, %if.then4
  %call9 = call i32 @parseID(i32 1)
  %tobool10 = icmp ne i32 %call9, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.lhs.false
  %3 = phi i1 [ false, %lor.lhs.false ], [ %tobool10, %land.rhs ]
  %land.ext = zext i1 %3 to i32
  store i32 %land.ext, i32* %retval, align 4
  br label %return

if.end11:                                         ; preds = %sw.bb
  br label %sw.bb12

sw.bb12:                                          ; preds = %if.end, %if.end11
  %call13 = call i32 @parseID(i32 1)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end19, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %sw.bb12
  %call16 = call %struct.s_ttcnToken* @matchToken(i32 260)
  %tobool17 = icmp ne %struct.s_ttcnToken* %call16, null
  br i1 %tobool17, label %if.end19, label %if.then18

if.then18:                                        ; preds = %lor.lhs.false15
  store i32 0, i32* %retval, align 4
  br label %return

if.end19:                                         ; preds = %lor.lhs.false15, %sw.bb12
  %call20 = call i32 @matchBrackets(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @BR_PAR, i64 0, i64 0))
  %call21 = call i32 @parseStructure()
  store i32 %call21, i32* %retval, align 4
  br label %return

sw.bb22:                                          ; preds = %if.end
  %call23 = call i32 @parseID(i32 1)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.end29, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %sw.bb22
  %call26 = call %struct.s_ttcnToken* @matchToken(i32 260)
  %tobool27 = icmp ne %struct.s_ttcnToken* %call26, null
  br i1 %tobool27, label %if.end29, label %if.then28

if.then28:                                        ; preds = %lor.lhs.false25
  store i32 0, i32* %retval, align 4
  br label %return

if.end29:                                         ; preds = %lor.lhs.false25, %sw.bb22
  %call30 = call i32 @parseEnumeration()
  store i32 %call30, i32* %retval, align 4
  br label %return

sw.bb31:                                          ; preds = %if.end, %if.end
  %call32 = call i32 @parseID(i32 1)
  store i32 %call32, i32* %retval, align 4
  br label %return

sw.default:                                       ; preds = %if.end
  call void @ungetToken()
  %call33 = call i32 @parseType()
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %land.rhs35, label %land.end38

land.rhs35:                                       ; preds = %sw.default
  %call36 = call i32 @parseID(i32 1)
  %tobool37 = icmp ne i32 %call36, 0
  br label %land.end38

land.end38:                                       ; preds = %land.rhs35, %sw.default
  %4 = phi i1 [ false, %sw.default ], [ %tobool37, %land.rhs35 ]
  %land.ext39 = zext i1 %4 to i32
  store i32 %land.ext39, i32* %retval, align 4
  br label %return

return:                                           ; preds = %land.end38, %sw.bb31, %if.end29, %if.then28, %if.end19, %if.then18, %land.end, %if.then
  %5 = load i32, i32* %retval, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @parseSignature() #0 {
entry:
  %call = call %struct.s_ttcnToken* @matchToken(i32 373)
  %tobool = icmp ne %struct.s_ttcnToken* %call, null
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %call1 = call %struct.s_ttcnToken* @matchToken(i32 256)
  %tobool2 = icmp ne %struct.s_ttcnToken* %call1, null
  br i1 %tobool2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call %struct.s_ttcnToken* @matchToken(i32 46)
  %tobool4 = icmp ne %struct.s_ttcnToken* %call3, null
  br i1 %tobool4, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %land.rhs
  %call5 = call %struct.s_ttcnToken* @matchToken(i32 256)
  %tobool6 = icmp ne %struct.s_ttcnToken* %call5, null
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %0 = phi i1 [ true, %land.rhs ], [ %tobool6, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %land.lhs.true, %entry
  %1 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %0, %lor.end ]
  %land.ext = zext i1 %1 to i32
  ret i32 %land.ext
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @matchBrackets(i8* %br) #0 {
entry:
  %retval = alloca i32, align 4
  %br.addr = alloca i8*, align 8
  %brcount = alloca i32, align 4
  store i8* %br, i8** %br.addr, align 8
  %0 = load i8*, i8** %br.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %1 to i32
  %call = call %struct.s_ttcnToken* @matchToken(i32 %conv)
  %tobool = icmp ne %struct.s_ttcnToken* %call, null
  br i1 %tobool, label %if.then, label %if.end18

if.then:                                          ; preds = %entry
  store i32 1, i32* %brcount, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end17, %if.then
  %2 = load i32, i32* %brcount, align 4
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i8*, i8** %br.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %3, i64 0
  %4 = load i8, i8* %arrayidx2, align 1
  %conv3 = sext i8 %4 to i32
  %call4 = call %struct.s_ttcnToken* @matchToken(i32 %conv3)
  %tobool5 = icmp ne %struct.s_ttcnToken* %call4, null
  br i1 %tobool5, label %if.then6, label %if.else

if.then6:                                         ; preds = %while.body
  %5 = load i32, i32* %brcount, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %brcount, align 4
  br label %if.end17

if.else:                                          ; preds = %while.body
  %6 = load i8*, i8** %br.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %6, i64 1
  %7 = load i8, i8* %arrayidx7, align 1
  %conv8 = sext i8 %7 to i32
  %call9 = call %struct.s_ttcnToken* @matchToken(i32 %conv8)
  %tobool10 = icmp ne %struct.s_ttcnToken* %call9, null
  br i1 %tobool10, label %if.then11, label %if.else12

if.then11:                                        ; preds = %if.else
  %8 = load i32, i32* %brcount, align 4
  %dec = add nsw i32 %8, -1
  store i32 %dec, i32* %brcount, align 4
  br label %if.end16

if.else12:                                        ; preds = %if.else
  %call13 = call %struct.s_ttcnToken* @getToken()
  %tobool14 = icmp ne %struct.s_ttcnToken* %call13, null
  br i1 %tobool14, label %if.end, label %if.then15

if.then15:                                        ; preds = %if.else12
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.else12
  br label %if.end16

if.end16:                                         ; preds = %if.end, %if.then11
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then6
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 1, i32* %retval, align 4
  br label %return

if.end18:                                         ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end18, %while.end, %if.then15
  %9 = load i32, i32* %retval, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @freeToken(%struct.s_ttcnToken* %pTok) #0 {
entry:
  %pTok.addr = alloca %struct.s_ttcnToken*, align 8
  store %struct.s_ttcnToken* %pTok, %struct.s_ttcnToken** %pTok.addr, align 8
  %0 = load %struct.s_ttcnToken*, %struct.s_ttcnToken** %pTok.addr, align 8
  %tobool = icmp ne %struct.s_ttcnToken* %0, null
  br i1 %tobool, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %1 = load %struct.s_ttcnToken*, %struct.s_ttcnToken** %pTok.addr, align 8
  %value = getelementptr inbounds %struct.s_ttcnToken, %struct.s_ttcnToken* %1, i32 0, i32 1
  %2 = load %struct.sVString*, %struct.sVString** %value, align 8
  %tobool1 = icmp ne %struct.sVString* %2, null
  br i1 %tobool1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %3 = load %struct.s_ttcnToken*, %struct.s_ttcnToken** %pTok.addr, align 8
  %value3 = getelementptr inbounds %struct.s_ttcnToken, %struct.s_ttcnToken* %3, i32 0, i32 1
  %4 = load %struct.sVString*, %struct.sVString** %value3, align 8
  call void @vStringDelete(%struct.sVString* %4)
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %5 = load %struct.s_ttcnToken*, %struct.s_ttcnToken** %pTok.addr, align 8
  %6 = bitcast %struct.s_ttcnToken* %5 to i8*
  call void @eFree(i8* %6)
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @getNonWhiteSpaceChar() #0 {
entry:
  %c = alloca i32, align 4
  %c2 = alloca i32, align 4
  br label %while.body

while.body:                                       ; preds = %entry
  br label %while.cond1

while.cond1:                                      ; preds = %while.body3, %while.body
  %call = call i32 @getcFromInputFile()
  store i32 %call, i32* %c, align 4
  %call2 = call i32 @isspace(i32 %call) #3
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond1
  %0 = load i32, i32* %c, align 4
  %cmp = icmp ne i32 %0, -1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond1
  %1 = phi i1 [ false, %while.cond1 ], [ %cmp, %land.rhs ]
  br i1 %1, label %while.body3, label %while.end

while.body3:                                      ; preds = %land.end
  br label %while.cond1

while.end:                                        ; preds = %land.end
  %2 = load i32, i32* %c, align 4
  %cmp4 = icmp eq i32 %2, 47
  br i1 %cmp4, label %if.then, label %if.end32

if.then:                                          ; preds = %while.end
  %call5 = call i32 @getcFromInputFile()
  store i32 %call5, i32* %c2, align 4
  %3 = load i32, i32* %c2, align 4
  %cmp6 = icmp eq i32 %3, 47
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.then
  br label %while.cond8

while.cond8:                                      ; preds = %while.body14, %if.then7
  %call9 = call i32 @getcFromInputFile()
  store i32 %call9, i32* %c, align 4
  %cmp10 = icmp ne i32 %call9, -1
  br i1 %cmp10, label %land.rhs11, label %land.end13

land.rhs11:                                       ; preds = %while.cond8
  %4 = load i32, i32* %c, align 4
  %cmp12 = icmp ne i32 %4, 10
  br label %land.end13

land.end13:                                       ; preds = %land.rhs11, %while.cond8
  %5 = phi i1 [ false, %while.cond8 ], [ %cmp12, %land.rhs11 ]
  br i1 %5, label %while.body14, label %while.end15

while.body14:                                     ; preds = %land.end13
  br label %while.cond8

while.end15:                                      ; preds = %land.end13
  br label %if.end31

if.else:                                          ; preds = %if.then
  %6 = load i32, i32* %c2, align 4
  %cmp16 = icmp eq i32 %6, 42
  br i1 %cmp16, label %if.then17, label %if.else29

if.then17:                                        ; preds = %if.else
  br label %while.cond18

while.cond18:                                     ; preds = %if.end27, %if.then17
  %call19 = call i32 @getcFromInputFile()
  store i32 %call19, i32* %c, align 4
  %cmp20 = icmp ne i32 %call19, -1
  br i1 %cmp20, label %while.body21, label %while.end28

while.body21:                                     ; preds = %while.cond18
  %7 = load i32, i32* %c, align 4
  %cmp22 = icmp eq i32 %7, 42
  br i1 %cmp22, label %if.then23, label %if.end27

if.then23:                                        ; preds = %while.body21
  %call24 = call i32 @getcFromInputFile()
  store i32 %call24, i32* %c2, align 4
  %8 = load i32, i32* %c2, align 4
  %cmp25 = icmp eq i32 %8, 47
  br i1 %cmp25, label %if.then26, label %if.end

if.then26:                                        ; preds = %if.then23
  br label %while.end28

if.end:                                           ; preds = %if.then23
  %9 = load i32, i32* %c2, align 4
  call void @ungetcToInputFile(i32 %9)
  br label %if.end27

if.end27:                                         ; preds = %if.end, %while.body21
  br label %while.cond18

while.end28:                                      ; preds = %if.then26, %while.cond18
  br label %if.end30

if.else29:                                        ; preds = %if.else
  %10 = load i32, i32* %c2, align 4
  call void @ungetcToInputFile(i32 %10)
  br label %while.end33

if.end30:                                         ; preds = %while.end28
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %while.end15
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %while.end
  br label %while.end33

while.end33:                                      ; preds = %if.end32, %if.else29
  %11 = load i32, i32* %c, align 4
  ret i32 %11
}

declare i8* @eMalloc(i64) #1

; Function Attrs: nounwind readonly
declare i32 @isalpha(i32) #2

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

declare i32 @getcFromInputFile() #1

; Function Attrs: nounwind readonly
declare i32 @isalnum(i32) #2

declare void @ungetcToInputFile(i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @findTTCNKeyword(%struct.s_ttcnToken* %pTok) #0 {
entry:
  %pTok.addr = alloca %struct.s_ttcnToken*, align 8
  %k = alloca %struct.s_ttcnKeyword*, align 8
  store %struct.s_ttcnToken* %pTok, %struct.s_ttcnToken** %pTok.addr, align 8
  %0 = load %struct.s_ttcnToken*, %struct.s_ttcnToken** %pTok.addr, align 8
  %tobool = icmp ne %struct.s_ttcnToken* %0, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.s_ttcnToken*, %struct.s_ttcnToken** %pTok.addr, align 8
  %value = getelementptr inbounds %struct.s_ttcnToken, %struct.s_ttcnToken* %1, i32 0, i32 1
  %2 = load %struct.sVString*, %struct.sVString** %value, align 8
  %tobool1 = icmp ne %struct.sVString* %2, null
  br i1 %tobool1, label %lor.lhs.false2, label %if.then

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %3 = load %struct.s_ttcnToken*, %struct.s_ttcnToken** %pTok.addr, align 8
  %value3 = getelementptr inbounds %struct.s_ttcnToken, %struct.s_ttcnToken* %3, i32 0, i32 1
  %4 = load %struct.sVString*, %struct.sVString** %value3, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %4, i32 0, i32 2
  %5 = load i8*, i8** %buffer, align 8
  %tobool4 = icmp ne i8* %5, null
  br i1 %tobool4, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  br label %if.end11

if.end:                                           ; preds = %lor.lhs.false2
  %6 = load %struct.s_ttcnToken*, %struct.s_ttcnToken** %pTok.addr, align 8
  %value5 = getelementptr inbounds %struct.s_ttcnToken, %struct.s_ttcnToken* %6, i32 0, i32 1
  %7 = load %struct.sVString*, %struct.sVString** %value5, align 8
  %buffer6 = getelementptr inbounds %struct.sVString, %struct.sVString* %7, i32 0, i32 2
  %8 = load i8*, i8** %buffer6, align 8
  %call = call i8* @bsearch(i8* %8, i8* bitcast ([141 x %struct.s_ttcnKeyword]* @ttcnKeywords to i8*), i64 141, i64 24, i32 (i8*, i8*)* @ttcnKeywordsCompare)
  %9 = bitcast i8* %call to %struct.s_ttcnKeyword*
  store %struct.s_ttcnKeyword* %9, %struct.s_ttcnKeyword** %k, align 8
  %10 = load %struct.s_ttcnKeyword*, %struct.s_ttcnKeyword** %k, align 8
  %tobool7 = icmp ne %struct.s_ttcnKeyword* %10, null
  br i1 %tobool7, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end
  %11 = load %struct.s_ttcnKeyword*, %struct.s_ttcnKeyword** %k, align 8
  %id = getelementptr inbounds %struct.s_ttcnKeyword, %struct.s_ttcnKeyword* %11, i32 0, i32 0
  %12 = load i32, i32* %id, align 8
  %13 = load %struct.s_ttcnToken*, %struct.s_ttcnToken** %pTok.addr, align 8
  %type = getelementptr inbounds %struct.s_ttcnToken, %struct.s_ttcnToken* %13, i32 0, i32 0
  store i32 %12, i32* %type, align 8
  %14 = load %struct.s_ttcnKeyword*, %struct.s_ttcnKeyword** %k, align 8
  %kind = getelementptr inbounds %struct.s_ttcnKeyword, %struct.s_ttcnKeyword* %14, i32 0, i32 2
  %15 = load i32, i32* %kind, align 8
  %16 = load %struct.s_ttcnToken*, %struct.s_ttcnToken** %pTok.addr, align 8
  %kind9 = getelementptr inbounds %struct.s_ttcnToken, %struct.s_ttcnToken* %16, i32 0, i32 2
  store i32 %15, i32* %kind9, align 8
  br label %if.end11

if.else:                                          ; preds = %if.end
  %17 = load %struct.s_ttcnToken*, %struct.s_ttcnToken** %pTok.addr, align 8
  %type10 = getelementptr inbounds %struct.s_ttcnToken, %struct.s_ttcnToken* %17, i32 0, i32 0
  store i32 256, i32* %type10, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.then, %if.else, %if.then8
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @isxdigit(i32) #2

; Function Attrs: nounwind readonly
declare i32 @isdigit(i32) #2

declare void @vStringDelete(%struct.sVString*) #1

declare void @eFree(i8*) #1

; Function Attrs: nounwind readonly
declare i32 @isspace(i32) #2

declare void @vStringResize(%struct.sVString*, i64) #1

declare i8* @bsearch(i8*, i8*, i64, i64, i32 (i8*, i8*)*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @ttcnKeywordsCompare(i8* %key, i8* %member) #0 {
entry:
  %key.addr = alloca i8*, align 8
  %member.addr = alloca i8*, align 8
  store i8* %key, i8** %key.addr, align 8
  store i8* %member, i8** %member.addr, align 8
  %0 = load i8*, i8** %key.addr, align 8
  %1 = load i8*, i8** %member.addr, align 8
  %2 = bitcast i8* %1 to %struct.s_ttcnKeyword*
  %name = getelementptr inbounds %struct.s_ttcnKeyword, %struct.s_ttcnKeyword* %2, i32 0, i32 1
  %3 = load i8*, i8** %name, align 8
  %call = call i32 @strcmp(i8* %0, i8* %3)
  ret i32 %call
}

declare i32 @strcmp(i8*, i8*) #1

declare i32 @makeSimpleTag(%struct.sVString*, i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @ungetToken() #0 {
entry:
  store i32 1, i32* @repeatLastToken, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @parseExtendedFieldReference() #0 {
entry:
  %res = alloca i32, align 4
  store i32 0, i32* %res, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %call = call %struct.s_ttcnToken* @matchToken(i32 46)
  %tobool = icmp ne %struct.s_ttcnToken* %call, null
  br i1 %tobool, label %land.lhs.true, label %lor.rhs

land.lhs.true:                                    ; preds = %while.cond
  %call1 = call %struct.s_ttcnToken* @matchToken(i32 256)
  %tobool2 = icmp ne %struct.s_ttcnToken* %call1, null
  br i1 %tobool2, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true, %while.cond
  %call3 = call i32 @matchBrackets(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @BR_SQ, i64 0, i64 0))
  %tobool4 = icmp ne i32 %call3, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.lhs.true
  %0 = phi i1 [ true, %land.lhs.true ], [ %tobool4, %lor.rhs ]
  br i1 %0, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  store i32 1, i32* %res, align 4
  br label %while.cond

while.end:                                        ; preds = %lor.end
  %1 = load i32, i32* %res, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @parseArrayDef() #0 {
entry:
  %res = alloca i32, align 4
  store i32 0, i32* %res, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %call = call i32 @matchBrackets(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @BR_SQ, i64 0, i64 0))
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 1, i32* %res, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %0 = load i32, i32* %res, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @parseInitializer() #0 {
entry:
  %retval = alloca i32, align 4
  %call = call %struct.s_ttcnToken* @matchToken(i32 404)
  %tobool = icmp ne %struct.s_ttcnToken* %call, null
  br i1 %tobool, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %call1 = call i32 @matchBrackets(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @BR_CUR, i64 0, i64 0))
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %call4 = call i32 @parseSimpleExpression()
  store i32 %call4, i32* %retval, align 4
  br label %return

if.end5:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end5, %if.end, %if.then3
  %0 = load i32, i32* %retval, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @parseSimpleExpression() #0 {
entry:
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %call = call i32 @matchExprOperator()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %while.cond1

while.cond1:                                      ; preds = %while.end11, %while.end
  %call2 = call i32 @parseExprOperand()
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond1
  %call4 = call i32 @matchExprOperator()
  %tobool5 = icmp ne i32 %call4, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond1
  %0 = phi i1 [ false, %while.cond1 ], [ %tobool5, %land.rhs ]
  br i1 %0, label %while.body6, label %while.end12

while.body6:                                      ; preds = %land.end
  br label %while.cond7

while.cond7:                                      ; preds = %while.body10, %while.body6
  %call8 = call i32 @matchExprOperator()
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %while.body10, label %while.end11

while.body10:                                     ; preds = %while.cond7
  br label %while.cond7

while.end11:                                      ; preds = %while.cond7
  br label %while.cond1

while.end12:                                      ; preds = %land.end
  ret i32 1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @matchExprOperator() #0 {
entry:
  %retval = alloca i32, align 4
  %pTok = alloca %struct.s_ttcnToken*, align 8
  %i = alloca i32, align 4
  %call = call %struct.s_ttcnToken* @getToken()
  store %struct.s_ttcnToken* %call, %struct.s_ttcnToken** %pTok, align 8
  %0 = load %struct.s_ttcnToken*, %struct.s_ttcnToken** %pTok, align 8
  %tobool = icmp ne %struct.s_ttcnToken* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 26
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.s_ttcnToken*, %struct.s_ttcnToken** %pTok, align 8
  %type = getelementptr inbounds %struct.s_ttcnToken, %struct.s_ttcnToken* %2, i32 0, i32 0
  %3 = load i32, i32* %type, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [26 x i32], [26 x i32]* @ttcnExprOps, i64 0, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  %cmp1 = icmp eq i32 %3, %5
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %for.body
  store i32 1, i32* %retval, align 4
  br label %return

if.end3:                                          ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end3
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @ungetToken()
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then2, %if.then
  %7 = load i32, i32* %retval, align 4
  ret i32 %7
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @parseExprOperand() #0 {
entry:
  %retval = alloca i32, align 4
  %pTok = alloca %struct.s_ttcnToken*, align 8
  %call = call i32 @matchBrackets(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @BR_PAR, i64 0, i64 0))
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call %struct.s_ttcnToken* @getToken()
  store %struct.s_ttcnToken* %call1, %struct.s_ttcnToken** %pTok, align 8
  %tobool2 = icmp ne %struct.s_ttcnToken* %call1, null
  br i1 %tobool2, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %0 = load %struct.s_ttcnToken*, %struct.s_ttcnToken** %pTok, align 8
  %type = getelementptr inbounds %struct.s_ttcnToken, %struct.s_ttcnToken* %0, i32 0, i32 0
  %1 = load i32, i32* %type, align 8
  switch i32 %1, label %sw.default [
    i32 283, label %sw.bb
    i32 296, label %sw.bb7
    i32 328, label %sw.bb7
    i32 391, label %sw.bb7
    i32 259, label %sw.bb7
    i32 274, label %sw.bb7
    i32 368, label %sw.bb9
    i32 378, label %sw.bb9
    i32 335, label %sw.bb9
    i32 365, label %sw.bb9
    i32 261, label %sw.bb9
    i32 306, label %sw.bb9
    i32 357, label %sw.bb9
    i32 267, label %sw.bb9
    i32 257, label %sw.bb9
    i32 385, label %sw.bb9
    i32 301, label %sw.bb9
    i32 352, label %sw.bb9
    i32 300, label %sw.bb9
    i32 316, label %sw.bb9
    i32 337, label %sw.bb9
    i32 293, label %sw.bb9
    i32 341, label %sw.bb9
    i32 344, label %sw.bb9
    i32 256, label %sw.bb10
  ]

sw.bb:                                            ; preds = %if.end4
  %call5 = call i32 @matchBrackets(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @BR_PAR, i64 0, i64 0))
  %call6 = call %struct.s_ttcnToken* @matchToken(i32 261)
  store i32 1, i32* %retval, align 4
  br label %return

sw.bb7:                                           ; preds = %if.end4, %if.end4, %if.end4, %if.end4, %if.end4
  %call8 = call i32 @matchBrackets(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @BR_PAR, i64 0, i64 0))
  store i32 %call8, i32* %retval, align 4
  br label %return

sw.bb9:                                           ; preds = %if.end4, %if.end4, %if.end4, %if.end4, %if.end4, %if.end4, %if.end4, %if.end4, %if.end4, %if.end4, %if.end4, %if.end4, %if.end4, %if.end4, %if.end4, %if.end4, %if.end4, %if.end4
  store i32 1, i32* %retval, align 4
  br label %return

sw.bb10:                                          ; preds = %if.end4
  %call11 = call i32 @matchBrackets(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @BR_PAR, i64 0, i64 0))
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.end16, label %if.then13

if.then13:                                        ; preds = %sw.bb10
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then13
  %call14 = call i32 @matchBrackets(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @BR_SQ, i64 0, i64 0))
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end16

if.end16:                                         ; preds = %while.end, %sw.bb10
  store i32 1, i32* %retval, align 4
  br label %return

sw.default:                                       ; preds = %if.end4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  call void @ungetToken()
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %if.end16, %sw.bb9, %sw.bb7, %sw.bb, %if.then3, %if.then
  %2 = load i32, i32* %retval, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @parseStringLength() #0 {
entry:
  %call = call %struct.s_ttcnToken* @matchToken(i32 325)
  %tobool = icmp ne %struct.s_ttcnToken* %call, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %call1 = call i32 @matchBrackets(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @BR_PAR, i64 0, i64 0))
  %tobool2 = icmp ne i32 %call1, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i1 [ false, %entry ], [ %tobool2, %land.rhs ]
  %land.ext = zext i1 %0 to i32
  ret i32 %land.ext
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @parseNestedTypeDef() #0 {
entry:
  %retval = alloca i32, align 4
  %pTok = alloca %struct.s_ttcnToken*, align 8
  %call = call %struct.s_ttcnToken* @getToken()
  store %struct.s_ttcnToken* %call, %struct.s_ttcnToken** %pTok, align 8
  %0 = load %struct.s_ttcnToken*, %struct.s_ttcnToken** %pTok, align 8
  %tobool = icmp ne %struct.s_ttcnToken* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.s_ttcnToken*, %struct.s_ttcnToken** %pTok, align 8
  %type = getelementptr inbounds %struct.s_ttcnToken, %struct.s_ttcnToken* %1, i32 0, i32 0
  %2 = load i32, i32* %type, align 8
  switch i32 %2, label %sw.default [
    i32 359, label %sw.bb
    i32 371, label %sw.bb
    i32 387, label %sw.bb10
    i32 292, label %sw.bb12
  ]

sw.bb:                                            ; preds = %if.end, %if.end
  %call1 = call i32 @parseStringLength()
  %call2 = call %struct.s_ttcnToken* @matchToken(i32 343)
  %tobool3 = icmp ne %struct.s_ttcnToken* %call2, null
  br i1 %tobool3, label %if.then4, label %if.end9

if.then4:                                         ; preds = %sw.bb
  %call5 = call i32 @parseType()
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.then4
  %call7 = call i32 @parseNestedTypeDef()
  %tobool8 = icmp ne i32 %call7, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then4
  %3 = phi i1 [ true, %if.then4 ], [ %tobool8, %lor.rhs ]
  %lor.ext = zext i1 %3 to i32
  store i32 %lor.ext, i32* %retval, align 4
  br label %return

if.end9:                                          ; preds = %sw.bb
  br label %sw.bb10

sw.bb10:                                          ; preds = %if.end, %if.end9
  %call11 = call i32 @parseStructure()
  store i32 %call11, i32* %retval, align 4
  br label %return

sw.bb12:                                          ; preds = %if.end
  %call13 = call i32 @parseEnumeration()
  store i32 %call13, i32* %retval, align 4
  br label %return

sw.default:                                       ; preds = %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  call void @ungetToken()
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb12, %sw.bb10, %lor.end, %if.then
  %4 = load i32, i32* %retval, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @parseStructure() #0 {
entry:
  %retval = alloca i32, align 4
  %call = call %struct.s_ttcnToken* @matchToken(i32 123)
  %tobool = icmp ne %struct.s_ttcnToken* %call, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  %call1 = call i32 @parseType()
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body
  %call3 = call i32 @parseNestedTypeDef()
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %land.lhs.true, label %if.then7

land.lhs.true:                                    ; preds = %lor.lhs.false, %do.body
  %call5 = call i32 @parseID(i32 13)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.end8, label %if.then7

if.then7:                                         ; preds = %land.lhs.true, %lor.lhs.false
  store i32 0, i32* %retval, align 4
  br label %return

if.end8:                                          ; preds = %land.lhs.true
  %call9 = call i32 @parseArrayDef()
  %call10 = call i32 @matchBrackets(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @BR_PAR, i64 0, i64 0))
  %call11 = call i32 @parseStringLength()
  %call12 = call %struct.s_ttcnToken* @matchToken(i32 346)
  br label %do.cond

do.cond:                                          ; preds = %if.end8
  %call13 = call %struct.s_ttcnToken* @matchToken(i32 44)
  %tobool14 = icmp ne %struct.s_ttcnToken* %call13, null
  br i1 %tobool14, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %call15 = call %struct.s_ttcnToken* @matchToken(i32 125)
  %tobool16 = icmp ne %struct.s_ttcnToken* %call15, null
  br i1 %tobool16, label %if.end18, label %if.then17

if.then17:                                        ; preds = %do.end
  store i32 0, i32* %retval, align 4
  br label %return

if.end18:                                         ; preds = %do.end
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end18, %if.then17, %if.then7, %if.then
  %0 = load i32, i32* %retval, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @parseEnumeration() #0 {
entry:
  %retval = alloca i32, align 4
  %call = call %struct.s_ttcnToken* @matchToken(i32 123)
  %tobool = icmp ne %struct.s_ttcnToken* %call, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  %call1 = call i32 @parseID(i32 14)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end4, label %if.then3

if.then3:                                         ; preds = %do.body
  store i32 0, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %do.body
  %call5 = call i32 @matchBrackets(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @BR_PAR, i64 0, i64 0))
  br label %do.cond

do.cond:                                          ; preds = %if.end4
  %call6 = call %struct.s_ttcnToken* @matchToken(i32 44)
  %tobool7 = icmp ne %struct.s_ttcnToken* %call6, null
  br i1 %tobool7, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %call8 = call %struct.s_ttcnToken* @matchToken(i32 125)
  %tobool9 = icmp ne %struct.s_ttcnToken* %call8, null
  br i1 %tobool9, label %if.end11, label %if.then10

if.then10:                                        ; preds = %do.end
  store i32 0, i32* %retval, align 4
  br label %return

if.end11:                                         ; preds = %do.end
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end11, %if.then10, %if.then3, %if.then
  %0 = load i32, i32* %retval, align 4
  ret i32 %0
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 10.0.0 (https://github.com/holzschu/clang.git 0cfc630fbdb62e96720b611a57123ef3eb13e297) (https://github.com/holzschu/llvm.git 0d8a71e39b28502c24718f7e74b5acbcfe36dfe0)"}
