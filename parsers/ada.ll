; ModuleID = 'ada.c'
source_filename = "ada.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-ios11.0.0"

%struct.sKindDefinition = type { i8, i8, i8*, i8*, i8, i32, %struct.sRoleDesc*, %struct.sScopeSeparator*, i32, i32, i32, %struct.sKindDefinition*, %struct.sKindDefinition* }
%struct.sRoleDesc = type { i8, i8*, i8* }
%struct.sScopeSeparator = type { i32, i8* }
%struct._MIOPos = type { i32, %union.anon.0 }
%union.anon.0 = type { i64 }
%struct.sParserDefinition = type { i8*, %struct.sKindDefinition*, i32, i8**, i8**, i8**, void (i32)*, void (i32, i1)*, void ()*, i32 (i32)*, i8* (%struct._MIO*, i32*, i32)**, i32, i8, i8, i8, i8, %struct.tagRegexTable*, i32, %struct.keywordTable*, i32, %struct.sTagXpathTableTable*, i32, i8, %struct.sFieldDefinition*, i32, %struct.sXtagDefinition*, i32, %struct.sParserDependency*, i32, %struct.sParameterHandlerTable*, i32, %struct.sXpathFileSpec*, i32, i32, i8 }
%struct._MIO = type opaque
%struct.tagRegexTable = type { i8*, i8*, i8*, i8*, i8*, i8 }
%struct.keywordTable = type { i8*, i32 }
%struct.sTagXpathTableTable = type { %struct.sTagXpathTable*, i32 }
%struct.sTagXpathTable = type { i8*, i32, %union.anon, i8* }
%union.anon = type { %struct.sTagXpathMakeTagSpec }
%struct.sTagXpathMakeTagSpec = type { i32, i32, void (i8*, %struct.sTagXpathMakeTagSpec*, %struct.sTagEntryInfo*, i8*)* }
%struct.sTagEntryInfo = type { i8, i64, i8*, i32, %struct._MIOPos, i32, i8*, i8*, i32, [2 x i8], i8*, %struct.anon, i32, [5 x %struct.sTagField], %struct.sPtrArray*, i32, i8*, i64 }
%struct.anon = type { i8*, i8*, i8*, i8*, i32, i32, i8*, i32, i8*, [2 x i8*], i32, i64 }
%struct.sTagField = type { i32, i8*, i8 }
%struct.sPtrArray = type opaque
%struct.sFieldDefinition = type { i8, i8*, i8*, i8, [5 x i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)*], i1 (%struct.sTagEntryInfo*)*, i32, i32 }
%struct.sVString = type { i64, i64, i8* }
%struct.sXtagDefinition = type { i8, i8, i8*, i8*, i1 (%struct.sXtagDefinition*)*, i1 (%struct.sXtagDefinition*)*, i32 }
%struct.sParserDependency = type { i32, i8*, i8* }
%struct.sParameterHandlerTable = type { i8*, i8*, void (i32, i8*, i8*)* }
%struct.sXpathFileSpec = type { i8*, i8*, i8*, i8*, i8*, i8* }
%struct.sAdaTokenInfo = type { i32, i8, i8, i8*, %struct.sTagEntryInfo, %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo*, %struct.sAdaTokenList }
%struct.sAdaTokenList = type { i32, %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo* }

@.str = private unnamed_addr constant [4 x i8] c"Ada\00", align 1
@AdaKinds = internal global [26 x %struct.sKindDefinition] [%struct.sKindDefinition { i8 1, i8 80, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 112, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 0, i8 84, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 116, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 0, i8 85, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 117, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 99, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 108, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 0, i8 86, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 118, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 102, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.22, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 110, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 120, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 82, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.28, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 114, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 75, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.32, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 107, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 79, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.36, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 111, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 0, i8 69, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.40, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 101, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.42, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 98, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 105, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.46, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 0, i8 97, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.48, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 0, i8 121, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.50, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 83, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.52, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }], align 8
@extensions = internal constant [4 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* null], align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"packspec\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"package specifications\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"package\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"packages\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"typespec\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"type specifications\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"types\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"subspec\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"subtype specifications\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"subtype\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"subtypes\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"component\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"record type components\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"enum type literals\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"varspec\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"variable specifications\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"variable\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"variables\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"formal\00", align 1
@.str.22 = private unnamed_addr constant [26 x i8] c"generic formal parameters\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"constant\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"constants\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"exception\00", align 1
@.str.26 = private unnamed_addr constant [24 x i8] c"user defined exceptions\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"subprogspec\00", align 1
@.str.28 = private unnamed_addr constant [26 x i8] c"subprogram specifications\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"subprogram\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"subprograms\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"taskspec\00", align 1
@.str.32 = private unnamed_addr constant [20 x i8] c"task specifications\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"task\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"tasks\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"protectspec\00", align 1
@.str.36 = private unnamed_addr constant [30 x i8] c"protected data specifications\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"protected\00", align 1
@.str.38 = private unnamed_addr constant [15 x i8] c"protected data\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"entryspec\00", align 1
@.str.40 = private unnamed_addr constant [41 x i8] c"task/protected data entry specifications\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@.str.42 = private unnamed_addr constant [28 x i8] c"task/protected data entries\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"labels\00", align 1
@.str.45 = private unnamed_addr constant [11 x i8] c"identifier\00", align 1
@.str.46 = private unnamed_addr constant [25 x i8] c"loop/declare identifiers\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"autovar\00", align 1
@.str.48 = private unnamed_addr constant [20 x i8] c"automatic variables\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c"anon\00", align 1
@.str.50 = private unnamed_addr constant [36 x i8] c"loops and blocks with no identifier\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"separate\00", align 1
@.str.52 = private unnamed_addr constant [21 x i8] c"(ctags internal use)\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c"adb\00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c"ads\00", align 1
@exception = internal global i32 0, align 4
@line = internal global i8* null, align 8
@pos = internal global i32 0, align 4
@matchLineNum = internal global i64 0, align 8
@eofCount = internal global i32 0, align 4
@matchFilePos = internal global %struct._MIOPos zeroinitializer, align 8
@eofError = internal global [48 x i32] zeroinitializer, align 4
@lineLen = internal global i32 0, align 4
@.str.55 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.56 = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.57 = private unnamed_addr constant [2 x i8] c")\00", align 1
@AdaKeywords = internal global [39 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.92, i32 0, i32 0)], align 8
@.str.58 = private unnamed_addr constant [3 x i8] c"<<\00", align 1
@.str.59 = private unnamed_addr constant [3 x i8] c">>\00", align 1
@.str.60 = private unnamed_addr constant [3 x i8] c"=>\00", align 1
@.str.61 = private unnamed_addr constant [3 x i8] c":=\00", align 1
@.str.62 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.63 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.64 = private unnamed_addr constant [7 x i8] c"accept\00", align 1
@.str.65 = private unnamed_addr constant [6 x i8] c"begin\00", align 1
@.str.66 = private unnamed_addr constant [5 x i8] c"body\00", align 1
@.str.67 = private unnamed_addr constant [5 x i8] c"case\00", align 1
@.str.68 = private unnamed_addr constant [8 x i8] c"declare\00", align 1
@.str.69 = private unnamed_addr constant [3 x i8] c"do\00", align 1
@.str.70 = private unnamed_addr constant [5 x i8] c"else\00", align 1
@.str.71 = private unnamed_addr constant [6 x i8] c"elsif\00", align 1
@.str.72 = private unnamed_addr constant [4 x i8] c"end\00", align 1
@.str.73 = private unnamed_addr constant [4 x i8] c"for\00", align 1
@.str.74 = private unnamed_addr constant [9 x i8] c"function\00", align 1
@.str.75 = private unnamed_addr constant [8 x i8] c"generic\00", align 1
@.str.76 = private unnamed_addr constant [3 x i8] c"if\00", align 1
@.str.77 = private unnamed_addr constant [3 x i8] c"is\00", align 1
@.str.78 = private unnamed_addr constant [5 x i8] c"loop\00", align 1
@.str.79 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@.str.80 = private unnamed_addr constant [3 x i8] c"or\00", align 1
@.str.81 = private unnamed_addr constant [7 x i8] c"pragma\00", align 1
@.str.82 = private unnamed_addr constant [8 x i8] c"private\00", align 1
@.str.83 = private unnamed_addr constant [10 x i8] c"procedure\00", align 1
@.str.84 = private unnamed_addr constant [7 x i8] c"record\00", align 1
@.str.85 = private unnamed_addr constant [8 x i8] c"renames\00", align 1
@.str.86 = private unnamed_addr constant [7 x i8] c"select\00", align 1
@.str.87 = private unnamed_addr constant [5 x i8] c"then\00", align 1
@.str.88 = private unnamed_addr constant [6 x i8] c"until\00", align 1
@.str.89 = private unnamed_addr constant [4 x i8] c"use\00", align 1
@.str.90 = private unnamed_addr constant [5 x i8] c"when\00", align 1
@.str.91 = private unnamed_addr constant [6 x i8] c"while\00", align 1
@.str.92 = private unnamed_addr constant [5 x i8] c"with\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sParserDefinition* @AdaParser() #0 {
entry:
  %def = alloca %struct.sParserDefinition*, align 8
  %call = call %struct.sParserDefinition* @parserNew(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store %struct.sParserDefinition* %call, %struct.sParserDefinition** %def, align 8
  %0 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %0, i32 0, i32 1
  store %struct.sKindDefinition* getelementptr inbounds ([26 x %struct.sKindDefinition], [26 x %struct.sKindDefinition]* @AdaKinds, i64 0, i64 0), %struct.sKindDefinition** %kindTable, align 8
  %1 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %1, i32 0, i32 2
  store i32 26, i32* %kindCount, align 8
  %2 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %extensions = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %2, i32 0, i32 3
  store i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @extensions, i64 0, i64 0), i8*** %extensions, align 8
  %3 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %parser = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %3, i32 0, i32 8
  store void ()* @findAdaTags, void ()** %parser, align 8
  %4 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  ret %struct.sParserDefinition* %4
}

declare %struct.sParserDefinition* @parserNew(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @findAdaTags() #0 {
entry:
  %root = alloca %struct.sAdaTokenInfo, align 8
  %tmp = alloca %struct.sAdaTokenInfo*, align 8
  %tmp1 = alloca %struct._MIOPos, align 8
  store i32 0, i32* @exception, align 4
  store i8* null, i8** @line, align 8
  store i32 0, i32* @pos, align 4
  store i64 0, i64* @matchLineNum, align 8
  store i32 0, i32* @eofCount, align 4
  %call = call [2 x i64] @getInputFilePosition()
  %0 = bitcast %struct._MIOPos* %tmp1 to [2 x i64]*
  store [2 x i64] %call, [2 x i64]* %0, align 8
  %1 = bitcast %struct._MIOPos* %tmp1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct._MIOPos* @matchFilePos to i8*), i8* align 8 %1, i64 16, i1 false)
  %kind = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %root, i32 0, i32 0
  store i32 -1, i32* %kind, align 8
  %isSpec = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %root, i32 0, i32 1
  store i8 0, i8* %isSpec, align 4
  %name = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %root, i32 0, i32 3
  store i8* null, i8** %name, align 8
  %parent = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %root, i32 0, i32 5
  store %struct.sAdaTokenInfo* null, %struct.sAdaTokenInfo** %parent, align 8
  %isPrivate = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %root, i32 0, i32 2
  store i8 0, i8* %isPrivate, align 1
  %children = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %root, i32 0, i32 8
  call void @initAdaTokenList(%struct.sAdaTokenList* %children)
  call void @readNewLine()
  %2 = load i32, i32* @exception, align 4
  %cmp = icmp eq i32 %2, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %out

if.end:                                           ; preds = %entry
  %call2 = call i32 @setjmp(i32* getelementptr inbounds ([48 x i32], [48 x i32]* @eofError, i64 0, i64 0)) #6
  store i32 %call2, i32* @exception, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %3 = load i32, i32* @exception, align 4
  %cmp3 = icmp ne i32 %3, 1
  br i1 %cmp3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %call4 = call %struct.sAdaTokenInfo* @adaParse(i32 0, %struct.sAdaTokenInfo* %root)
  %cmp5 = icmp ne %struct.sAdaTokenInfo* %call4, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %4 = phi i1 [ false, %while.cond ], [ %cmp5, %land.rhs ]
  br i1 %4, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  br label %while.cond

while.end:                                        ; preds = %land.end
  %children6 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %root, i32 0, i32 8
  %head = getelementptr inbounds %struct.sAdaTokenList, %struct.sAdaTokenList* %children6, i32 0, i32 1
  %5 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %head, align 8
  store %struct.sAdaTokenInfo* %5, %struct.sAdaTokenInfo** %tmp, align 8
  br label %while.cond7

while.cond7:                                      ; preds = %while.body9, %while.end
  %6 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %tmp, align 8
  %cmp8 = icmp ne %struct.sAdaTokenInfo* %6, null
  br i1 %cmp8, label %while.body9, label %while.end10

while.body9:                                      ; preds = %while.cond7
  %7 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %tmp, align 8
  call void @storeAdaTags(%struct.sAdaTokenInfo* %7, i8* null)
  %8 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %tmp, align 8
  %next = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %8, i32 0, i32 7
  %9 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %next, align 8
  store %struct.sAdaTokenInfo* %9, %struct.sAdaTokenInfo** %tmp, align 8
  br label %while.cond7

while.end10:                                      ; preds = %while.cond7
  br label %out

out:                                              ; preds = %while.end10, %if.then
  %children11 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %root, i32 0, i32 8
  call void @freeAdaTokenList(%struct.sAdaTokenList* %children11)
  ret void
}

declare [2 x i64] @getInputFilePosition() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @initAdaTokenList(%struct.sAdaTokenList* %list) #0 {
entry:
  %list.addr = alloca %struct.sAdaTokenList*, align 8
  store %struct.sAdaTokenList* %list, %struct.sAdaTokenList** %list.addr, align 8
  %0 = load %struct.sAdaTokenList*, %struct.sAdaTokenList** %list.addr, align 8
  %cmp = icmp ne %struct.sAdaTokenList* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.sAdaTokenList*, %struct.sAdaTokenList** %list.addr, align 8
  %numTokens = getelementptr inbounds %struct.sAdaTokenList, %struct.sAdaTokenList* %1, i32 0, i32 0
  store i32 0, i32* %numTokens, align 8
  %2 = load %struct.sAdaTokenList*, %struct.sAdaTokenList** %list.addr, align 8
  %head = getelementptr inbounds %struct.sAdaTokenList, %struct.sAdaTokenList* %2, i32 0, i32 1
  store %struct.sAdaTokenInfo* null, %struct.sAdaTokenInfo** %head, align 8
  %3 = load %struct.sAdaTokenList*, %struct.sAdaTokenList** %list.addr, align 8
  %tail = getelementptr inbounds %struct.sAdaTokenList, %struct.sAdaTokenList* %3, i32 0, i32 2
  store %struct.sAdaTokenInfo* null, %struct.sAdaTokenInfo** %tail, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @readNewLine() #0 {
entry:
  br label %while.body

while.body:                                       ; preds = %entry, %if.end7
  %call = call i8* @readLineFromInputFile()
  store i8* %call, i8** @line, align 8
  store i32 0, i32* @pos, align 4
  %0 = load i8*, i8** @line, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 0, i32* @lineLen, align 4
  store i32 1, i32* @exception, align 4
  %1 = load i32, i32* @eofCount, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* @eofCount, align 4
  %2 = load i32, i32* @eofCount, align 4
  %cmp1 = icmp sge i32 %2, 1000
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %3 = load i32, i32* @exception, align 4
  call void @longjmp(i32* getelementptr inbounds ([48 x i32], [48 x i32]* @eofError, i64 0, i64 0), i32 %3) #7
  unreachable

if.else:                                          ; preds = %if.then
  br label %return

if.end:                                           ; preds = %while.body
  %4 = load i8*, i8** @line, align 8
  %call3 = call i64 @strlen(i8* %4)
  %conv = trunc i64 %call3 to i32
  store i32 %conv, i32* @lineLen, align 4
  %5 = load i32, i32* @lineLen, align 4
  %cmp4 = icmp sgt i32 %5, 0
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  br label %return

if.end7:                                          ; preds = %if.end
  br label %while.body

return:                                           ; preds = %if.then6, %if.else
  ret void
}

; Function Attrs: returns_twice
declare i32 @setjmp(i32*) #3

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct.sAdaTokenInfo* @adaParse(i32 %mode, %struct.sAdaTokenInfo* %parent) #0 {
entry:
  %retval = alloca %struct.sAdaTokenInfo*, align 8
  %mode.addr = alloca i32, align 4
  %parent.addr = alloca %struct.sAdaTokenInfo*, align 8
  %i = alloca i32, align 4
  %genericParamsRoot = alloca %struct.sAdaTokenInfo, align 8
  %token = alloca %struct.sAdaTokenInfo*, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store %struct.sAdaTokenInfo* %parent, %struct.sAdaTokenInfo** %parent.addr, align 8
  store %struct.sAdaTokenInfo* null, %struct.sAdaTokenInfo** %token, align 8
  %children = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %genericParamsRoot, i32 0, i32 8
  call void @initAdaTokenList(%struct.sAdaTokenList* %children)
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %if.then28, %if.then18, %entry
  %0 = load i32, i32* @exception, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %while.body, label %while.end558

while.body:                                       ; preds = %while.cond
  call void @skipWhiteSpace()
  %1 = load i32, i32* @exception, align 4
  %cmp1 = icmp eq i32 %1, 1
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  br label %while.end558

if.else:                                          ; preds = %while.body
  %2 = load i32, i32* @pos, align 4
  %cmp2 = icmp eq i32 %2, 0
  br i1 %cmp2, label %land.lhs.true9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %3 = load i8*, i8** @line, align 8
  %4 = load i32, i32* @pos, align 4
  %sub = sub nsw i32 %4, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %5 to i32
  %call = call i32 @isalnum(i32 %conv) #8
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.else19, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false
  %6 = load i8*, i8** @line, align 8
  %7 = load i32, i32* @pos, align 4
  %sub3 = sub nsw i32 %7, 1
  %idxprom4 = sext i32 %sub3 to i64
  %arrayidx5 = getelementptr inbounds i8, i8* %6, i64 %idxprom4
  %8 = load i8, i8* %arrayidx5, align 1
  %conv6 = sext i8 %8 to i32
  %cmp7 = icmp ne i32 %conv6, 95
  br i1 %cmp7, label %land.lhs.true9, label %if.else19

land.lhs.true9:                                   ; preds = %land.lhs.true, %if.else
  %9 = load i32, i32* @pos, align 4
  %10 = load i32, i32* @lineLen, align 4
  %cmp10 = icmp slt i32 %9, %10
  br i1 %cmp10, label %land.lhs.true12, label %if.else19

land.lhs.true12:                                  ; preds = %land.lhs.true9
  %11 = load i8*, i8** @line, align 8
  %12 = load i32, i32* @pos, align 4
  %idxprom13 = sext i32 %12 to i64
  %arrayidx14 = getelementptr inbounds i8, i8* %11, i64 %idxprom13
  %call15 = call i32 @strncasecmp(i8* %arrayidx14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0), i64 2)
  %cmp16 = icmp eq i32 %call15, 0
  br i1 %cmp16, label %if.then18, label %if.else19

if.then18:                                        ; preds = %land.lhs.true12
  call void @readNewLine()
  br label %while.cond

if.else19:                                        ; preds = %land.lhs.true12, %land.lhs.true9, %land.lhs.true, %lor.lhs.false
  %call20 = call zeroext i1 @adaKeywordCmp(i32 22)
  br i1 %call20, label %if.then28, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %if.else19
  %call23 = call zeroext i1 @adaKeywordCmp(i32 38)
  br i1 %call23, label %if.then28, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %lor.lhs.false22
  %call26 = call zeroext i1 @adaKeywordCmp(i32 35)
  br i1 %call26, label %if.then28, label %if.end

if.then28:                                        ; preds = %lor.lhs.false25, %lor.lhs.false22, %if.else19
  call void @skipPast(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i64 0, i64 0))
  br label %while.cond

if.end:                                           ; preds = %lor.lhs.false25
  br label %if.end29

if.end29:                                         ; preds = %if.end
  br label %if.end30

if.end30:                                         ; preds = %if.end29
  %13 = load i32, i32* %mode.addr, align 4
  switch i32 %13, label %sw.default [
    i32 0, label %sw.bb
    i32 4, label %sw.bb97
    i32 1, label %sw.bb224
    i32 2, label %sw.bb318
    i32 3, label %sw.bb538
  ]

sw.bb:                                            ; preds = %if.end30
  %call31 = call zeroext i1 @adaKeywordCmp(i32 21)
  br i1 %call31, label %if.then32, label %if.else34

if.then32:                                        ; preds = %sw.bb
  %14 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %parent.addr, align 8
  %call33 = call %struct.sAdaTokenInfo* @adaParseBlock(%struct.sAdaTokenInfo* %14, i32 1)
  store %struct.sAdaTokenInfo* %call33, %struct.sAdaTokenInfo** %token, align 8
  br label %if.end91

if.else34:                                        ; preds = %sw.bb
  %call35 = call zeroext i1 @adaKeywordCmp(i32 24)
  br i1 %call35, label %if.then40, label %lor.lhs.false37

lor.lhs.false37:                                  ; preds = %if.else34
  %call38 = call zeroext i1 @adaKeywordCmp(i32 13)
  br i1 %call38, label %if.then40, label %if.else42

if.then40:                                        ; preds = %lor.lhs.false37, %if.else34
  %15 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %parent.addr, align 8
  %call41 = call %struct.sAdaTokenInfo* @adaParseSubprogram(%struct.sAdaTokenInfo* %15, i32 14)
  store %struct.sAdaTokenInfo* %call41, %struct.sAdaTokenInfo** %token, align 8
  br label %if.end90

if.else42:                                        ; preds = %lor.lhs.false37
  %call43 = call zeroext i1 @adaKeywordCmp(i32 31)
  br i1 %call43, label %if.then44, label %if.else46

if.then44:                                        ; preds = %if.else42
  %16 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %parent.addr, align 8
  %call45 = call %struct.sAdaTokenInfo* @adaParseBlock(%struct.sAdaTokenInfo* %16, i32 16)
  store %struct.sAdaTokenInfo* %call45, %struct.sAdaTokenInfo** %token, align 8
  br label %if.end89

if.else46:                                        ; preds = %if.else42
  %call47 = call zeroext i1 @adaKeywordCmp(i32 25)
  br i1 %call47, label %if.then48, label %if.else50

if.then48:                                        ; preds = %if.else46
  %17 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %parent.addr, align 8
  %call49 = call %struct.sAdaTokenInfo* @adaParseBlock(%struct.sAdaTokenInfo* %17, i32 18)
  store %struct.sAdaTokenInfo* %call49, %struct.sAdaTokenInfo** %token, align 8
  br label %if.end88

if.else50:                                        ; preds = %if.else46
  %call51 = call zeroext i1 @adaKeywordCmp(i32 14)
  br i1 %call51, label %if.then52, label %if.else53

if.then52:                                        ; preds = %if.else50
  store i32 4, i32* %mode.addr, align 4
  br label %sw.epilog

if.else53:                                        ; preds = %if.else50
  %call54 = call zeroext i1 @adaKeywordCmp(i32 29)
  br i1 %call54, label %if.then55, label %if.else85

if.then55:                                        ; preds = %if.else53
  call void @skipWhiteSpace()
  %18 = load i32, i32* @exception, align 4
  %cmp56 = icmp ne i32 %18, 1
  br i1 %cmp56, label %land.lhs.true58, label %if.else83

land.lhs.true58:                                  ; preds = %if.then55
  %19 = load i8*, i8** @line, align 8
  %20 = load i32, i32* @pos, align 4
  %idxprom59 = sext i32 %20 to i64
  %arrayidx60 = getelementptr inbounds i8, i8* %19, i64 %idxprom59
  %21 = load i8, i8* %arrayidx60, align 1
  %conv61 = sext i8 %21 to i32
  %cmp62 = icmp eq i32 %conv61, 40
  br i1 %cmp62, label %if.then64, label %if.else83

if.then64:                                        ; preds = %land.lhs.true58
  call void @movePos(i32 1)
  call void @skipWhiteSpace()
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then64
  %22 = load i32, i32* @pos, align 4
  %23 = load i32, i32* %i, align 4
  %add = add nsw i32 %22, %23
  %24 = load i32, i32* @lineLen, align 4
  %cmp65 = icmp slt i32 %add, %24
  br i1 %cmp65, label %land.lhs.true67, label %land.end

land.lhs.true67:                                  ; preds = %for.cond
  %25 = load i8*, i8** @line, align 8
  %26 = load i32, i32* @pos, align 4
  %27 = load i32, i32* %i, align 4
  %add68 = add nsw i32 %26, %27
  %idxprom69 = sext i32 %add68 to i64
  %arrayidx70 = getelementptr inbounds i8, i8* %25, i64 %idxprom69
  %28 = load i8, i8* %arrayidx70, align 1
  %conv71 = sext i8 %28 to i32
  %cmp72 = icmp ne i32 %conv71, 41
  br i1 %cmp72, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true67
  %29 = load i8*, i8** @line, align 8
  %30 = load i32, i32* @pos, align 4
  %31 = load i32, i32* %i, align 4
  %add74 = add nsw i32 %30, %31
  %idxprom75 = sext i32 %add74 to i64
  %arrayidx76 = getelementptr inbounds i8, i8* %29, i64 %idxprom75
  %32 = load i8, i8* %arrayidx76, align 1
  %conv77 = sext i8 %32 to i32
  %call78 = call i32 @isspace(i32 %conv77) #8
  %tobool79 = icmp ne i32 %call78, 0
  %lnot = xor i1 %tobool79, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true67, %for.cond
  %33 = phi i1 [ false, %land.lhs.true67 ], [ false, %for.cond ], [ %lnot, %land.rhs ]
  br i1 %33, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %34 = load i32, i32* %i, align 4
  %inc = add nsw i32 %34, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %35 = load i8*, i8** @line, align 8
  %36 = load i32, i32* @pos, align 4
  %idxprom80 = sext i32 %36 to i64
  %arrayidx81 = getelementptr inbounds i8, i8* %35, i64 %idxprom80
  %37 = load i32, i32* %i, align 4
  %38 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %parent.addr, align 8
  %call82 = call %struct.sAdaTokenInfo* @newAdaToken(i8* %arrayidx81, i32 %37, i32 25, i1 zeroext false, %struct.sAdaTokenInfo* %38)
  store %struct.sAdaTokenInfo* %call82, %struct.sAdaTokenInfo** %token, align 8
  %39 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token, align 8
  store %struct.sAdaTokenInfo* %39, %struct.sAdaTokenInfo** %parent.addr, align 8
  store %struct.sAdaTokenInfo* null, %struct.sAdaTokenInfo** %token, align 8
  call void @skipPast(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.57, i64 0, i64 0))
  br label %if.end84

if.else83:                                        ; preds = %land.lhs.true58, %if.then55
  call void @skipPast(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i64 0, i64 0))
  br label %if.end84

if.end84:                                         ; preds = %if.else83, %for.end
  br label %if.end86

if.else85:                                        ; preds = %if.else53
  store %struct.sAdaTokenInfo* null, %struct.sAdaTokenInfo** %token, align 8
  call void @skipPast(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i64 0, i64 0))
  br label %if.end86

if.end86:                                         ; preds = %if.else85, %if.end84
  br label %if.end87

if.end87:                                         ; preds = %if.end86
  br label %if.end88

if.end88:                                         ; preds = %if.end87, %if.then48
  br label %if.end89

if.end89:                                         ; preds = %if.end88, %if.then44
  br label %if.end90

if.end90:                                         ; preds = %if.end89, %if.then40
  br label %if.end91

if.end91:                                         ; preds = %if.end90, %if.then32
  %40 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token, align 8
  %cmp92 = icmp ne %struct.sAdaTokenInfo* %40, null
  br i1 %cmp92, label %if.then94, label %if.end96

if.then94:                                        ; preds = %if.end91
  %41 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token, align 8
  %children95 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %genericParamsRoot, i32 0, i32 8
  call void @appendAdaTokenList(%struct.sAdaTokenInfo* %41, %struct.sAdaTokenList* %children95)
  br label %if.end96

if.end96:                                         ; preds = %if.then94, %if.end91
  br label %sw.epilog

sw.bb97:                                          ; preds = %if.end30
  %call98 = call zeroext i1 @adaKeywordCmp(i32 21)
  br i1 %call98, label %if.then99, label %if.else101

if.then99:                                        ; preds = %sw.bb97
  %42 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %parent.addr, align 8
  %call100 = call %struct.sAdaTokenInfo* @adaParseBlock(%struct.sAdaTokenInfo* %42, i32 1)
  store %struct.sAdaTokenInfo* %call100, %struct.sAdaTokenInfo** %token, align 8
  br label %if.end218

if.else101:                                       ; preds = %sw.bb97
  %call102 = call zeroext i1 @adaKeywordCmp(i32 24)
  br i1 %call102, label %if.then107, label %lor.lhs.false104

lor.lhs.false104:                                 ; preds = %if.else101
  %call105 = call zeroext i1 @adaKeywordCmp(i32 13)
  br i1 %call105, label %if.then107, label %if.else109

if.then107:                                       ; preds = %lor.lhs.false104, %if.else101
  %43 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %parent.addr, align 8
  %call108 = call %struct.sAdaTokenInfo* @adaParseSubprogram(%struct.sAdaTokenInfo* %43, i32 14)
  store %struct.sAdaTokenInfo* %call108, %struct.sAdaTokenInfo** %token, align 8
  br label %if.end217

if.else109:                                       ; preds = %lor.lhs.false104
  %call110 = call zeroext i1 @adaKeywordCmp(i32 31)
  br i1 %call110, label %if.then111, label %if.else113

if.then111:                                       ; preds = %if.else109
  %44 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %parent.addr, align 8
  %call112 = call %struct.sAdaTokenInfo* @adaParseBlock(%struct.sAdaTokenInfo* %44, i32 16)
  store %struct.sAdaTokenInfo* %call112, %struct.sAdaTokenInfo** %token, align 8
  br label %if.end216

if.else113:                                       ; preds = %if.else109
  %call114 = call zeroext i1 @adaKeywordCmp(i32 25)
  br i1 %call114, label %if.then115, label %if.else117

if.then115:                                       ; preds = %if.else113
  %45 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %parent.addr, align 8
  %call116 = call %struct.sAdaTokenInfo* @adaParseBlock(%struct.sAdaTokenInfo* %45, i32 18)
  store %struct.sAdaTokenInfo* %call116, %struct.sAdaTokenInfo** %token, align 8
  br label %if.end215

if.else117:                                       ; preds = %if.else113
  %call118 = call zeroext i1 @adaKeywordCmp(i32 33)
  br i1 %call118, label %if.then119, label %if.else153

if.then119:                                       ; preds = %if.else117
  call void @skipWhiteSpace()
  store i32 1, i32* %i, align 4
  br label %for.cond120

for.cond120:                                      ; preds = %for.inc147, %if.then119
  %46 = load i32, i32* @pos, align 4
  %47 = load i32, i32* %i, align 4
  %add121 = add nsw i32 %46, %47
  %48 = load i32, i32* @lineLen, align 4
  %cmp122 = icmp slt i32 %add121, %48
  br i1 %cmp122, label %land.lhs.true124, label %land.end145

land.lhs.true124:                                 ; preds = %for.cond120
  %49 = load i8*, i8** @line, align 8
  %50 = load i32, i32* @pos, align 4
  %51 = load i32, i32* %i, align 4
  %add125 = add nsw i32 %50, %51
  %idxprom126 = sext i32 %add125 to i64
  %arrayidx127 = getelementptr inbounds i8, i8* %49, i64 %idxprom126
  %52 = load i8, i8* %arrayidx127, align 1
  %conv128 = sext i8 %52 to i32
  %call129 = call i32 @isspace(i32 %conv128) #8
  %tobool130 = icmp ne i32 %call129, 0
  br i1 %tobool130, label %land.end145, label %land.lhs.true131

land.lhs.true131:                                 ; preds = %land.lhs.true124
  %53 = load i8*, i8** @line, align 8
  %54 = load i32, i32* @pos, align 4
  %55 = load i32, i32* %i, align 4
  %add132 = add nsw i32 %54, %55
  %idxprom133 = sext i32 %add132 to i64
  %arrayidx134 = getelementptr inbounds i8, i8* %53, i64 %idxprom133
  %56 = load i8, i8* %arrayidx134, align 1
  %conv135 = sext i8 %56 to i32
  %cmp136 = icmp ne i32 %conv135, 40
  br i1 %cmp136, label %land.rhs138, label %land.end145

land.rhs138:                                      ; preds = %land.lhs.true131
  %57 = load i8*, i8** @line, align 8
  %58 = load i32, i32* @pos, align 4
  %59 = load i32, i32* %i, align 4
  %add139 = add nsw i32 %58, %59
  %idxprom140 = sext i32 %add139 to i64
  %arrayidx141 = getelementptr inbounds i8, i8* %57, i64 %idxprom140
  %60 = load i8, i8* %arrayidx141, align 1
  %conv142 = sext i8 %60 to i32
  %cmp143 = icmp ne i32 %conv142, 59
  br label %land.end145

land.end145:                                      ; preds = %land.rhs138, %land.lhs.true131, %land.lhs.true124, %for.cond120
  %61 = phi i1 [ false, %land.lhs.true131 ], [ false, %land.lhs.true124 ], [ false, %for.cond120 ], [ %cmp143, %land.rhs138 ]
  br i1 %61, label %for.body146, label %for.end149

for.body146:                                      ; preds = %land.end145
  br label %for.inc147

for.inc147:                                       ; preds = %for.body146
  %62 = load i32, i32* %i, align 4
  %inc148 = add nsw i32 %62, 1
  store i32 %inc148, i32* %i, align 4
  br label %for.cond120

for.end149:                                       ; preds = %land.end145
  %63 = load i8*, i8** @line, align 8
  %64 = load i32, i32* @pos, align 4
  %idxprom150 = sext i32 %64 to i64
  %arrayidx151 = getelementptr inbounds i8, i8* %63, i64 %idxprom150
  %65 = load i32, i32* %i, align 4
  %call152 = call %struct.sAdaTokenInfo* @newAdaToken(i8* %arrayidx151, i32 %65, i32 10, i1 zeroext false, %struct.sAdaTokenInfo* null)
  call void @appendAdaToken(%struct.sAdaTokenInfo* %genericParamsRoot, %struct.sAdaTokenInfo* %call152)
  call void @skipPast(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i64 0, i64 0))
  br label %if.end214

if.else153:                                       ; preds = %if.else117
  %call154 = call zeroext i1 @adaKeywordCmp(i32 38)
  br i1 %call154, label %if.then155, label %if.else212

if.then155:                                       ; preds = %if.else153
  call void @skipWhiteSpace()
  call void @skipUntilWhiteSpace()
  call void @skipWhiteSpace()
  store i32 1, i32* %i, align 4
  br label %for.cond156

for.cond156:                                      ; preds = %for.inc183, %if.then155
  %66 = load i32, i32* @pos, align 4
  %67 = load i32, i32* %i, align 4
  %add157 = add nsw i32 %66, %67
  %68 = load i32, i32* @lineLen, align 4
  %cmp158 = icmp slt i32 %add157, %68
  br i1 %cmp158, label %land.lhs.true160, label %land.end181

land.lhs.true160:                                 ; preds = %for.cond156
  %69 = load i8*, i8** @line, align 8
  %70 = load i32, i32* @pos, align 4
  %71 = load i32, i32* %i, align 4
  %add161 = add nsw i32 %70, %71
  %idxprom162 = sext i32 %add161 to i64
  %arrayidx163 = getelementptr inbounds i8, i8* %69, i64 %idxprom162
  %72 = load i8, i8* %arrayidx163, align 1
  %conv164 = sext i8 %72 to i32
  %call165 = call i32 @isspace(i32 %conv164) #8
  %tobool166 = icmp ne i32 %call165, 0
  br i1 %tobool166, label %land.end181, label %land.lhs.true167

land.lhs.true167:                                 ; preds = %land.lhs.true160
  %73 = load i8*, i8** @line, align 8
  %74 = load i32, i32* @pos, align 4
  %75 = load i32, i32* %i, align 4
  %add168 = add nsw i32 %74, %75
  %idxprom169 = sext i32 %add168 to i64
  %arrayidx170 = getelementptr inbounds i8, i8* %73, i64 %idxprom169
  %76 = load i8, i8* %arrayidx170, align 1
  %conv171 = sext i8 %76 to i32
  %cmp172 = icmp ne i32 %conv171, 40
  br i1 %cmp172, label %land.rhs174, label %land.end181

land.rhs174:                                      ; preds = %land.lhs.true167
  %77 = load i8*, i8** @line, align 8
  %78 = load i32, i32* @pos, align 4
  %79 = load i32, i32* %i, align 4
  %add175 = add nsw i32 %78, %79
  %idxprom176 = sext i32 %add175 to i64
  %arrayidx177 = getelementptr inbounds i8, i8* %77, i64 %idxprom176
  %80 = load i8, i8* %arrayidx177, align 1
  %conv178 = sext i8 %80 to i32
  %cmp179 = icmp ne i32 %conv178, 59
  br label %land.end181

land.end181:                                      ; preds = %land.rhs174, %land.lhs.true167, %land.lhs.true160, %for.cond156
  %81 = phi i1 [ false, %land.lhs.true167 ], [ false, %land.lhs.true160 ], [ false, %for.cond156 ], [ %cmp179, %land.rhs174 ]
  br i1 %81, label %for.body182, label %for.end185

for.body182:                                      ; preds = %land.end181
  br label %for.inc183

for.inc183:                                       ; preds = %for.body182
  %82 = load i32, i32* %i, align 4
  %inc184 = add nsw i32 %82, 1
  store i32 %inc184, i32* %i, align 4
  br label %for.cond156

for.end185:                                       ; preds = %land.end181
  %83 = load i8*, i8** @line, align 8
  %84 = load i32, i32* @pos, align 4
  %idxprom186 = sext i32 %84 to i64
  %arrayidx187 = getelementptr inbounds i8, i8* %83, i64 %idxprom186
  %85 = load i32, i32* %i, align 4
  %call188 = call %struct.sAdaTokenInfo* @newAdaToken(i8* %arrayidx187, i32 %85, i32 10, i1 zeroext false, %struct.sAdaTokenInfo* null)
  call void @appendAdaToken(%struct.sAdaTokenInfo* %genericParamsRoot, %struct.sAdaTokenInfo* %call188)
  %86 = load i32, i32* %i, align 4
  call void @movePos(i32 %86)
  %87 = load i32, i32* @exception, align 4
  %cmp189 = icmp ne i32 %87, 1
  br i1 %cmp189, label %land.lhs.true191, label %if.end211

land.lhs.true191:                                 ; preds = %for.end185
  %88 = load i8*, i8** @line, align 8
  %89 = load i32, i32* @pos, align 4
  %idxprom192 = sext i32 %89 to i64
  %arrayidx193 = getelementptr inbounds i8, i8* %88, i64 %idxprom192
  %90 = load i8, i8* %arrayidx193, align 1
  %conv194 = sext i8 %90 to i32
  %cmp195 = icmp eq i32 %conv194, 40
  br i1 %cmp195, label %if.then197, label %if.end211

if.then197:                                       ; preds = %land.lhs.true191
  br label %while.cond198

while.cond198:                                    ; preds = %while.body208, %if.then197
  %91 = load i32, i32* @exception, align 4
  %cmp199 = icmp ne i32 %91, 1
  br i1 %cmp199, label %land.rhs201, label %land.end207

land.rhs201:                                      ; preds = %while.cond198
  %92 = load i8*, i8** @line, align 8
  %93 = load i32, i32* @pos, align 4
  %idxprom202 = sext i32 %93 to i64
  %arrayidx203 = getelementptr inbounds i8, i8* %92, i64 %idxprom202
  %94 = load i8, i8* %arrayidx203, align 1
  %conv204 = sext i8 %94 to i32
  %cmp205 = icmp ne i32 %conv204, 41
  br label %land.end207

land.end207:                                      ; preds = %land.rhs201, %while.cond198
  %95 = phi i1 [ false, %while.cond198 ], [ %cmp205, %land.rhs201 ]
  br i1 %95, label %while.body208, label %while.end

while.body208:                                    ; preds = %land.end207
  call void @movePos(i32 1)
  %children209 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %genericParamsRoot, i32 0, i32 8
  %tail = getelementptr inbounds %struct.sAdaTokenList, %struct.sAdaTokenList* %children209, i32 0, i32 2
  %96 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %tail, align 8
  %call210 = call %struct.sAdaTokenInfo* @adaParseVariables(%struct.sAdaTokenInfo* %96, i32 23)
  br label %while.cond198

while.end:                                        ; preds = %land.end207
  call void @movePos(i32 1)
  br label %if.end211

if.end211:                                        ; preds = %while.end, %land.lhs.true191, %for.end185
  call void @skipPast(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i64 0, i64 0))
  br label %if.end213

if.else212:                                       ; preds = %if.else153
  store %struct.sAdaTokenInfo* null, %struct.sAdaTokenInfo** %token, align 8
  call void @skipPast(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i64 0, i64 0))
  br label %if.end213

if.end213:                                        ; preds = %if.else212, %if.end211
  br label %if.end214

if.end214:                                        ; preds = %if.end213, %for.end149
  br label %if.end215

if.end215:                                        ; preds = %if.end214, %if.then115
  br label %if.end216

if.end216:                                        ; preds = %if.end215, %if.then111
  br label %if.end217

if.end217:                                        ; preds = %if.end216, %if.then107
  br label %if.end218

if.end218:                                        ; preds = %if.end217, %if.then99
  %97 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token, align 8
  %cmp219 = icmp ne %struct.sAdaTokenInfo* %97, null
  br i1 %cmp219, label %if.then221, label %if.end223

if.then221:                                       ; preds = %if.end218
  %98 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token, align 8
  %children222 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %genericParamsRoot, i32 0, i32 8
  call void @appendAdaTokenList(%struct.sAdaTokenInfo* %98, %struct.sAdaTokenList* %children222)
  store i32 0, i32* %mode.addr, align 4
  br label %if.end223

if.end223:                                        ; preds = %if.then221, %if.end218
  br label %sw.epilog

sw.bb224:                                         ; preds = %if.end30
  %call225 = call zeroext i1 @adaKeywordCmp(i32 21)
  br i1 %call225, label %if.then226, label %if.else228

if.then226:                                       ; preds = %sw.bb224
  %99 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %parent.addr, align 8
  %call227 = call %struct.sAdaTokenInfo* @adaParseBlock(%struct.sAdaTokenInfo* %99, i32 1)
  store %struct.sAdaTokenInfo* %call227, %struct.sAdaTokenInfo** %token, align 8
  br label %if.end296

if.else228:                                       ; preds = %sw.bb224
  %call229 = call zeroext i1 @adaKeywordCmp(i32 24)
  br i1 %call229, label %if.then234, label %lor.lhs.false231

lor.lhs.false231:                                 ; preds = %if.else228
  %call232 = call zeroext i1 @adaKeywordCmp(i32 13)
  br i1 %call232, label %if.then234, label %if.else236

if.then234:                                       ; preds = %lor.lhs.false231, %if.else228
  %100 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %parent.addr, align 8
  %call235 = call %struct.sAdaTokenInfo* @adaParseSubprogram(%struct.sAdaTokenInfo* %100, i32 14)
  store %struct.sAdaTokenInfo* %call235, %struct.sAdaTokenInfo** %token, align 8
  br label %if.end295

if.else236:                                       ; preds = %lor.lhs.false231
  %call237 = call zeroext i1 @adaKeywordCmp(i32 31)
  br i1 %call237, label %if.then238, label %if.else240

if.then238:                                       ; preds = %if.else236
  %101 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %parent.addr, align 8
  %call239 = call %struct.sAdaTokenInfo* @adaParseBlock(%struct.sAdaTokenInfo* %101, i32 16)
  store %struct.sAdaTokenInfo* %call239, %struct.sAdaTokenInfo** %token, align 8
  br label %if.end294

if.else240:                                       ; preds = %if.else236
  %call241 = call zeroext i1 @adaKeywordCmp(i32 25)
  br i1 %call241, label %if.then242, label %if.else244

if.then242:                                       ; preds = %if.else240
  %102 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %parent.addr, align 8
  %call243 = call %struct.sAdaTokenInfo* @adaParseBlock(%struct.sAdaTokenInfo* %102, i32 18)
  store %struct.sAdaTokenInfo* %call243, %struct.sAdaTokenInfo** %token, align 8
  br label %if.end293

if.else244:                                       ; preds = %if.else240
  %call245 = call zeroext i1 @adaKeywordCmp(i32 14)
  br i1 %call245, label %if.then246, label %if.else247

if.then246:                                       ; preds = %if.else244
  store i32 4, i32* %mode.addr, align 4
  br label %sw.epilog

if.else247:                                       ; preds = %if.else244
  %call248 = call zeroext i1 @adaKeywordCmp(i32 33)
  br i1 %call248, label %if.then249, label %if.else251

if.then249:                                       ; preds = %if.else247
  %103 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %parent.addr, align 8
  %call250 = call %struct.sAdaTokenInfo* @adaParseType(%struct.sAdaTokenInfo* %103, i32 3)
  store %struct.sAdaTokenInfo* %call250, %struct.sAdaTokenInfo** %token, align 8
  br label %if.end291

if.else251:                                       ; preds = %if.else247
  %call252 = call zeroext i1 @adaKeywordCmp(i32 30)
  br i1 %call252, label %if.then253, label %if.else255

if.then253:                                       ; preds = %if.else251
  %104 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %parent.addr, align 8
  %call254 = call %struct.sAdaTokenInfo* @adaParseType(%struct.sAdaTokenInfo* %104, i32 5)
  store %struct.sAdaTokenInfo* %call254, %struct.sAdaTokenInfo** %token, align 8
  br label %if.end290

if.else255:                                       ; preds = %if.else251
  %call256 = call zeroext i1 @adaKeywordCmp(i32 1)
  br i1 %call256, label %if.then257, label %if.else258

if.then257:                                       ; preds = %if.else255
  store i32 2, i32* %mode.addr, align 4
  br label %sw.epilog

if.else258:                                       ; preds = %if.else255
  %call259 = call zeroext i1 @adaKeywordCmp(i32 12)
  br i1 %call259, label %if.then260, label %if.else264

if.then260:                                       ; preds = %if.else258
  call void @skipPastKeyword(i32 35)
  call void @skipWhiteSpace()
  %call261 = call zeroext i1 @adaKeywordCmp(i32 26)
  br i1 %call261, label %if.then262, label %if.end263

if.then262:                                       ; preds = %if.then260
  call void @skipPastKeyword(i32 26)
  br label %if.end263

if.end263:                                        ; preds = %if.then262, %if.then260
  call void @skipPast(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i64 0, i64 0))
  br label %if.end288

if.else264:                                       ; preds = %if.else258
  %call265 = call zeroext i1 @adaKeywordCmp(i32 9)
  br i1 %call265, label %if.then266, label %if.else272

if.then266:                                       ; preds = %if.else264
  call void @skipWhiteSpace()
  %105 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %parent.addr, align 8
  %name = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %105, i32 0, i32 3
  %106 = load i8*, i8** %name, align 8
  %call267 = call zeroext i1 @adaCmp(i8* %106)
  br i1 %call267, label %if.then268, label %if.else270

if.then268:                                       ; preds = %if.then266
  call void @skipPast(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i64 0, i64 0))
  %children269 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %genericParamsRoot, i32 0, i32 8
  call void @freeAdaTokenList(%struct.sAdaTokenList* %children269)
  %107 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token, align 8
  store %struct.sAdaTokenInfo* %107, %struct.sAdaTokenInfo** %retval, align 8
  br label %return

if.else270:                                       ; preds = %if.then266
  store %struct.sAdaTokenInfo* null, %struct.sAdaTokenInfo** %token, align 8
  call void @skipPast(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i64 0, i64 0))
  br label %if.end271

if.end271:                                        ; preds = %if.else270
  br label %if.end287

if.else272:                                       ; preds = %if.else264
  %call273 = call zeroext i1 @adaKeywordCmp(i32 10)
  br i1 %call273, label %if.then274, label %if.else276

if.then274:                                       ; preds = %if.else272
  %108 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %parent.addr, align 8
  %call275 = call %struct.sAdaTokenInfo* @adaParseSubprogram(%struct.sAdaTokenInfo* %108, i32 20)
  store %struct.sAdaTokenInfo* %call275, %struct.sAdaTokenInfo** %token, align 8
  br label %if.end286

if.else276:                                       ; preds = %if.else272
  %call277 = call zeroext i1 @adaKeywordCmp(i32 23)
  br i1 %call277, label %if.then278, label %if.else283

if.then278:                                       ; preds = %if.else276
  %109 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %parent.addr, align 8
  %cmp279 = icmp ne %struct.sAdaTokenInfo* %109, null
  br i1 %cmp279, label %if.then281, label %if.end282

if.then281:                                       ; preds = %if.then278
  %110 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %parent.addr, align 8
  %isPrivate = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %110, i32 0, i32 2
  store i8 1, i8* %isPrivate, align 1
  br label %if.end282

if.end282:                                        ; preds = %if.then281, %if.then278
  call void @skipWhiteSpace()
  br label %if.end285

if.else283:                                       ; preds = %if.else276
  %111 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %parent.addr, align 8
  %call284 = call %struct.sAdaTokenInfo* @adaParseVariables(%struct.sAdaTokenInfo* %111, i32 9)
  store %struct.sAdaTokenInfo* %call284, %struct.sAdaTokenInfo** %token, align 8
  call void @skipPast(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i64 0, i64 0))
  br label %if.end285

if.end285:                                        ; preds = %if.else283, %if.end282
  br label %if.end286

if.end286:                                        ; preds = %if.end285, %if.then274
  br label %if.end287

if.end287:                                        ; preds = %if.end286, %if.end271
  br label %if.end288

if.end288:                                        ; preds = %if.end287, %if.end263
  br label %if.end289

if.end289:                                        ; preds = %if.end288
  br label %if.end290

if.end290:                                        ; preds = %if.end289, %if.then253
  br label %if.end291

if.end291:                                        ; preds = %if.end290, %if.then249
  br label %if.end292

if.end292:                                        ; preds = %if.end291
  br label %if.end293

if.end293:                                        ; preds = %if.end292, %if.then242
  br label %if.end294

if.end294:                                        ; preds = %if.end293, %if.then238
  br label %if.end295

if.end295:                                        ; preds = %if.end294, %if.then234
  br label %if.end296

if.end296:                                        ; preds = %if.end295, %if.then226
  %112 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token, align 8
  %cmp297 = icmp ne %struct.sAdaTokenInfo* %112, null
  br i1 %cmp297, label %if.then299, label %if.end317

if.then299:                                       ; preds = %if.end296
  %113 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token, align 8
  %kind = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %113, i32 0, i32 0
  %114 = load i32, i32* %kind, align 8
  %cmp300 = icmp eq i32 %114, 1
  br i1 %cmp300, label %if.then314, label %lor.lhs.false302

lor.lhs.false302:                                 ; preds = %if.then299
  %115 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token, align 8
  %kind303 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %115, i32 0, i32 0
  %116 = load i32, i32* %kind303, align 8
  %cmp304 = icmp eq i32 %116, 14
  br i1 %cmp304, label %if.then314, label %lor.lhs.false306

lor.lhs.false306:                                 ; preds = %lor.lhs.false302
  %117 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token, align 8
  %kind307 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %117, i32 0, i32 0
  %118 = load i32, i32* %kind307, align 8
  %cmp308 = icmp eq i32 %118, 16
  br i1 %cmp308, label %if.then314, label %lor.lhs.false310

lor.lhs.false310:                                 ; preds = %lor.lhs.false306
  %119 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token, align 8
  %kind311 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %119, i32 0, i32 0
  %120 = load i32, i32* %kind311, align 8
  %cmp312 = icmp eq i32 %120, 18
  br i1 %cmp312, label %if.then314, label %if.end316

if.then314:                                       ; preds = %lor.lhs.false310, %lor.lhs.false306, %lor.lhs.false302, %if.then299
  %121 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token, align 8
  %children315 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %genericParamsRoot, i32 0, i32 8
  call void @appendAdaTokenList(%struct.sAdaTokenInfo* %121, %struct.sAdaTokenList* %children315)
  br label %if.end316

if.end316:                                        ; preds = %if.then314, %lor.lhs.false310
  br label %if.end317

if.end317:                                        ; preds = %if.end316, %if.end296
  br label %sw.epilog

sw.bb318:                                         ; preds = %if.end30
  %call319 = call zeroext i1 @adaKeywordCmp(i32 5)
  br i1 %call319, label %if.then320, label %if.else324

if.then320:                                       ; preds = %sw.bb318
  %122 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %parent.addr, align 8
  %call321 = call %struct.sAdaTokenInfo* @newAdaToken(i8* null, i32 0, i32 24, i1 zeroext false, %struct.sAdaTokenInfo* %122)
  store %struct.sAdaTokenInfo* %call321, %struct.sAdaTokenInfo** %token, align 8
  %123 = load i64, i64* @matchLineNum, align 8
  %124 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token, align 8
  %tag = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %124, i32 0, i32 4
  %lineNumber = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %tag, i32 0, i32 1
  store i64 %123, i64* %lineNumber, align 8
  %125 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token, align 8
  %tag322 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %125, i32 0, i32 4
  %filePosition = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %tag322, i32 0, i32 4
  %126 = bitcast %struct._MIOPos* %filePosition to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %126, i8* align 8 bitcast (%struct._MIOPos* @matchFilePos to i8*), i64 16, i1 false)
  %127 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token, align 8
  %call323 = call %struct.sAdaTokenInfo* @adaParse(i32 1, %struct.sAdaTokenInfo* %127)
  br label %if.end537

if.else324:                                       ; preds = %sw.bb318
  %call325 = call zeroext i1 @adaKeywordCmp(i32 1)
  br i1 %call325, label %if.then326, label %if.else333

if.then326:                                       ; preds = %if.else324
  %128 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %parent.addr, align 8
  %call327 = call %struct.sAdaTokenInfo* @newAdaToken(i8* null, i32 0, i32 24, i1 zeroext false, %struct.sAdaTokenInfo* %128)
  store %struct.sAdaTokenInfo* %call327, %struct.sAdaTokenInfo** %token, align 8
  %129 = load i64, i64* @matchLineNum, align 8
  %130 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token, align 8
  %tag328 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %130, i32 0, i32 4
  %lineNumber329 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %tag328, i32 0, i32 1
  store i64 %129, i64* %lineNumber329, align 8
  %131 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token, align 8
  %tag330 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %131, i32 0, i32 4
  %filePosition331 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %tag330, i32 0, i32 4
  %132 = bitcast %struct._MIOPos* %filePosition331 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %132, i8* align 8 bitcast (%struct._MIOPos* @matchFilePos to i8*), i64 16, i1 false)
  %133 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token, align 8
  %call332 = call %struct.sAdaTokenInfo* @adaParse(i32 2, %struct.sAdaTokenInfo* %133)
  br label %if.end536

if.else333:                                       ; preds = %if.else324
  %call334 = call zeroext i1 @adaKeywordCmp(i32 11)
  br i1 %call334, label %if.then335, label %if.else336

if.then335:                                       ; preds = %if.else333
  store i32 3, i32* %mode.addr, align 4
  br label %sw.epilog

if.else336:                                       ; preds = %if.else333
  %call337 = call zeroext i1 @adaKeywordCmp(i32 9)
  br i1 %call337, label %if.then338, label %if.else354

if.then338:                                       ; preds = %if.else336
  call void @skipWhiteSpace()
  %134 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %parent.addr, align 8
  %name339 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %134, i32 0, i32 3
  %135 = load i8*, i8** %name339, align 8
  %call340 = call zeroext i1 @adaCmp(i8* %135)
  br i1 %call340, label %if.then341, label %if.else343

if.then341:                                       ; preds = %if.then338
  call void @skipPast(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i64 0, i64 0))
  %children342 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %genericParamsRoot, i32 0, i32 8
  call void @freeAdaTokenList(%struct.sAdaTokenList* %children342)
  %136 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token, align 8
  store %struct.sAdaTokenInfo* %136, %struct.sAdaTokenInfo** %retval, align 8
  br label %return

if.else343:                                       ; preds = %if.then338
  %call344 = call zeroext i1 @adaKeywordCmp(i32 18)
  br i1 %call344, label %if.then345, label %if.else351

if.then345:                                       ; preds = %if.else343
  call void @skipWhiteSpace()
  %137 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %parent.addr, align 8
  %name346 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %137, i32 0, i32 3
  %138 = load i8*, i8** %name346, align 8
  %call347 = call zeroext i1 @adaCmp(i8* %138)
  br i1 %call347, label %if.then348, label %if.end350

if.then348:                                       ; preds = %if.then345
  call void @skipPast(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i64 0, i64 0))
  %children349 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %genericParamsRoot, i32 0, i32 8
  call void @freeAdaTokenList(%struct.sAdaTokenList* %children349)
  %139 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token, align 8
  store %struct.sAdaTokenInfo* %139, %struct.sAdaTokenInfo** %retval, align 8
  br label %return

if.end350:                                        ; preds = %if.then345
  br label %if.end352

if.else351:                                       ; preds = %if.else343
  call void @skipPast(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i64 0, i64 0))
  br label %if.end352

if.end352:                                        ; preds = %if.else351, %if.end350
  br label %if.end353

if.end353:                                        ; preds = %if.end352
  br label %if.end534

if.else354:                                       ; preds = %if.else336
  %call355 = call zeroext i1 @adaKeywordCmp(i32 0)
  br i1 %call355, label %if.then356, label %if.else358

if.then356:                                       ; preds = %if.else354
  %140 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %parent.addr, align 8
  %call357 = call %struct.sAdaTokenInfo* @adaParseSubprogram(%struct.sAdaTokenInfo* %140, i32 20)
  br label %if.end533

if.else358:                                       ; preds = %if.else354
  %call359 = call zeroext i1 @adaKeywordCmp(i32 12)
  br i1 %call359, label %if.then360, label %if.else366

if.then360:                                       ; preds = %if.else358
  %141 = load i8*, i8** getelementptr inbounds ([39 x i8*], [39 x i8*]* @AdaKeywords, i64 0, i64 18), align 8
  %142 = load i8*, i8** getelementptr inbounds ([39 x i8*], [39 x i8*]* @AdaKeywords, i64 0, i64 18), align 8
  %call361 = call i64 @strlen(i8* %142)
  %conv362 = trunc i64 %call361 to i32
  %143 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %parent.addr, align 8
  %call363 = call %struct.sAdaTokenInfo* @newAdaToken(i8* %141, i32 %conv362, i32 24, i1 zeroext false, %struct.sAdaTokenInfo* %143)
  store %struct.sAdaTokenInfo* %call363, %struct.sAdaTokenInfo** %token, align 8
  %144 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token, align 8
  %call364 = call %struct.sAdaTokenInfo* @adaParseLoopVar(%struct.sAdaTokenInfo* %144)
  %145 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token, align 8
  %call365 = call %struct.sAdaTokenInfo* @adaParse(i32 2, %struct.sAdaTokenInfo* %145)
  br label %if.end532

if.else366:                                       ; preds = %if.else358
  %call367 = call zeroext i1 @adaKeywordCmp(i32 37)
  br i1 %call367, label %if.then368, label %if.else373

if.then368:                                       ; preds = %if.else366
  %146 = load i8*, i8** getelementptr inbounds ([39 x i8*], [39 x i8*]* @AdaKeywords, i64 0, i64 18), align 8
  %147 = load i8*, i8** getelementptr inbounds ([39 x i8*], [39 x i8*]* @AdaKeywords, i64 0, i64 18), align 8
  %call369 = call i64 @strlen(i8* %147)
  %conv370 = trunc i64 %call369 to i32
  %148 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %parent.addr, align 8
  %call371 = call %struct.sAdaTokenInfo* @newAdaToken(i8* %146, i32 %conv370, i32 24, i1 zeroext false, %struct.sAdaTokenInfo* %148)
  store %struct.sAdaTokenInfo* %call371, %struct.sAdaTokenInfo** %token, align 8
  call void @skipPastKeyword(i32 18)
  call void @skipWhiteSpace()
  %149 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token, align 8
  %call372 = call %struct.sAdaTokenInfo* @adaParse(i32 2, %struct.sAdaTokenInfo* %149)
  br label %if.end531

if.else373:                                       ; preds = %if.else366
  %call374 = call zeroext i1 @adaKeywordCmp(i32 18)
  br i1 %call374, label %if.then375, label %if.else384

if.then375:                                       ; preds = %if.else373
  %150 = load i8*, i8** getelementptr inbounds ([39 x i8*], [39 x i8*]* @AdaKeywords, i64 0, i64 18), align 8
  %151 = load i8*, i8** getelementptr inbounds ([39 x i8*], [39 x i8*]* @AdaKeywords, i64 0, i64 18), align 8
  %call376 = call i64 @strlen(i8* %151)
  %conv377 = trunc i64 %call376 to i32
  %152 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %parent.addr, align 8
  %call378 = call %struct.sAdaTokenInfo* @newAdaToken(i8* %150, i32 %conv377, i32 24, i1 zeroext false, %struct.sAdaTokenInfo* %152)
  store %struct.sAdaTokenInfo* %call378, %struct.sAdaTokenInfo** %token, align 8
  %153 = load i64, i64* @matchLineNum, align 8
  %154 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token, align 8
  %tag379 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %154, i32 0, i32 4
  %lineNumber380 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %tag379, i32 0, i32 1
  store i64 %153, i64* %lineNumber380, align 8
  %155 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token, align 8
  %tag381 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %155, i32 0, i32 4
  %filePosition382 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %tag381, i32 0, i32 4
  %156 = bitcast %struct._MIOPos* %filePosition382 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %156, i8* align 8 bitcast (%struct._MIOPos* @matchFilePos to i8*), i64 16, i1 false)
  call void @skipWhiteSpace()
  %157 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token, align 8
  %call383 = call %struct.sAdaTokenInfo* @adaParse(i32 2, %struct.sAdaTokenInfo* %157)
  br label %if.end530

if.else384:                                       ; preds = %if.else373
  %158 = load i8*, i8** @line, align 8
  %cmp385 = icmp ne i8* %158, null
  br i1 %cmp385, label %land.lhs.true387, label %if.else418

land.lhs.true387:                                 ; preds = %if.else384
  %159 = load i8*, i8** @line, align 8
  %160 = load i32, i32* @pos, align 4
  %idxprom388 = sext i32 %160 to i64
  %arrayidx389 = getelementptr inbounds i8, i8* %159, i64 %idxprom388
  %call390 = call i32 @strncasecmp(i8* %arrayidx389, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.58, i64 0, i64 0), i64 2)
  %cmp391 = icmp eq i32 %call390, 0
  br i1 %cmp391, label %if.then393, label %if.else418

if.then393:                                       ; preds = %land.lhs.true387
  call void @movePos(i32 2)
  store i32 1, i32* %i, align 4
  br label %for.cond394

for.cond394:                                      ; preds = %for.inc407, %if.then393
  %161 = load i32, i32* @pos, align 4
  %162 = load i32, i32* %i, align 4
  %add395 = add nsw i32 %161, %162
  %163 = load i32, i32* @lineLen, align 4
  %cmp396 = icmp slt i32 %add395, %163
  br i1 %cmp396, label %land.rhs398, label %land.end405

land.rhs398:                                      ; preds = %for.cond394
  %164 = load i8*, i8** @line, align 8
  %165 = load i32, i32* @pos, align 4
  %166 = load i32, i32* %i, align 4
  %add399 = add nsw i32 %165, %166
  %idxprom400 = sext i32 %add399 to i64
  %arrayidx401 = getelementptr inbounds i8, i8* %164, i64 %idxprom400
  %call402 = call i32 @strncasecmp(i8* %arrayidx401, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.59, i64 0, i64 0), i64 2)
  %cmp403 = icmp ne i32 %call402, 0
  br label %land.end405

land.end405:                                      ; preds = %land.rhs398, %for.cond394
  %167 = phi i1 [ false, %for.cond394 ], [ %cmp403, %land.rhs398 ]
  br i1 %167, label %for.body406, label %for.end409

for.body406:                                      ; preds = %land.end405
  br label %for.inc407

for.inc407:                                       ; preds = %for.body406
  %168 = load i32, i32* %i, align 4
  %inc408 = add nsw i32 %168, 1
  store i32 %inc408, i32* %i, align 4
  br label %for.cond394

for.end409:                                       ; preds = %land.end405
  %169 = load i32, i32* @pos, align 4
  %170 = load i32, i32* %i, align 4
  %add410 = add nsw i32 %169, %170
  %171 = load i32, i32* @lineLen, align 4
  %cmp411 = icmp slt i32 %add410, %171
  br i1 %cmp411, label %if.then413, label %if.end417

if.then413:                                       ; preds = %for.end409
  %172 = load i8*, i8** @line, align 8
  %173 = load i32, i32* @pos, align 4
  %idxprom414 = sext i32 %173 to i64
  %arrayidx415 = getelementptr inbounds i8, i8* %172, i64 %idxprom414
  %174 = load i32, i32* %i, align 4
  %175 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %parent.addr, align 8
  %call416 = call %struct.sAdaTokenInfo* @newAdaToken(i8* %arrayidx415, i32 %174, i32 21, i1 zeroext false, %struct.sAdaTokenInfo* %175)
  store %struct.sAdaTokenInfo* %call416, %struct.sAdaTokenInfo** %token, align 8
  call void @skipPast(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.59, i64 0, i64 0))
  store %struct.sAdaTokenInfo* null, %struct.sAdaTokenInfo** %token, align 8
  br label %if.end417

if.end417:                                        ; preds = %if.then413, %for.end409
  br label %if.end529

if.else418:                                       ; preds = %land.lhs.true387, %if.else384
  %call419 = call zeroext i1 @adaKeywordCmp(i32 28)
  br i1 %call419, label %if.then427, label %lor.lhs.false421

lor.lhs.false421:                                 ; preds = %if.else418
  %call422 = call zeroext i1 @adaKeywordCmp(i32 20)
  br i1 %call422, label %if.then427, label %lor.lhs.false424

lor.lhs.false424:                                 ; preds = %lor.lhs.false421
  %call425 = call zeroext i1 @adaKeywordCmp(i32 7)
  br i1 %call425, label %if.then427, label %if.else428

if.then427:                                       ; preds = %lor.lhs.false424, %lor.lhs.false421, %if.else418
  call void @skipWhiteSpace()
  br label %if.end528

if.else428:                                       ; preds = %lor.lhs.false424
  %call429 = call zeroext i1 @adaKeywordCmp(i32 15)
  br i1 %call429, label %if.then434, label %lor.lhs.false431

lor.lhs.false431:                                 ; preds = %if.else428
  %call432 = call zeroext i1 @adaKeywordCmp(i32 8)
  br i1 %call432, label %if.then434, label %if.else435

if.then434:                                       ; preds = %lor.lhs.false431, %if.else428
  call void @skipPastKeyword(i32 32)
  br label %if.end527

if.else435:                                       ; preds = %lor.lhs.false431
  %call436 = call zeroext i1 @adaKeywordCmp(i32 3)
  br i1 %call436, label %if.then437, label %if.else438

if.then437:                                       ; preds = %if.else435
  call void @skipPastKeyword(i32 17)
  br label %if.end526

if.else438:                                       ; preds = %if.else435
  %call439 = call zeroext i1 @adaKeywordCmp(i32 36)
  br i1 %call439, label %if.then440, label %if.else441

if.then440:                                       ; preds = %if.else438
  call void @skipPast(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.60, i64 0, i64 0))
  br label %if.end525

if.else441:                                       ; preds = %if.else438
  store %struct.sAdaTokenInfo* null, %struct.sAdaTokenInfo** %token, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond442

for.cond442:                                      ; preds = %for.inc489, %if.else441
  %176 = load i32, i32* @pos, align 4
  %177 = load i32, i32* %i, align 4
  %add443 = add nsw i32 %176, %177
  %178 = load i32, i32* @lineLen, align 4
  %cmp444 = icmp slt i32 %add443, %178
  br i1 %cmp444, label %for.body446, label %for.end491

for.body446:                                      ; preds = %for.cond442
  %179 = load i8*, i8** @line, align 8
  %180 = load i32, i32* @pos, align 4
  %181 = load i32, i32* %i, align 4
  %add447 = add nsw i32 %180, %181
  %idxprom448 = sext i32 %add447 to i64
  %arrayidx449 = getelementptr inbounds i8, i8* %179, i64 %idxprom448
  %182 = load i8, i8* %arrayidx449, align 1
  %conv450 = sext i8 %182 to i32
  %call451 = call i32 @isalnum(i32 %conv450) #8
  %tobool452 = icmp ne i32 %call451, 0
  br i1 %tobool452, label %if.else468, label %land.lhs.true453

land.lhs.true453:                                 ; preds = %for.body446
  %183 = load i8*, i8** @line, align 8
  %184 = load i32, i32* @pos, align 4
  %185 = load i32, i32* %i, align 4
  %add454 = add nsw i32 %184, %185
  %idxprom455 = sext i32 %add454 to i64
  %arrayidx456 = getelementptr inbounds i8, i8* %183, i64 %idxprom455
  %186 = load i8, i8* %arrayidx456, align 1
  %conv457 = sext i8 %186 to i32
  %cmp458 = icmp ne i32 %conv457, 95
  br i1 %cmp458, label %land.lhs.true460, label %if.else468

land.lhs.true460:                                 ; preds = %land.lhs.true453
  %187 = load i8*, i8** @line, align 8
  %188 = load i32, i32* @pos, align 4
  %189 = load i32, i32* %i, align 4
  %add461 = add nsw i32 %188, %189
  %idxprom462 = sext i32 %add461 to i64
  %arrayidx463 = getelementptr inbounds i8, i8* %187, i64 %idxprom462
  %190 = load i8, i8* %arrayidx463, align 1
  %conv464 = sext i8 %190 to i32
  %cmp465 = icmp ne i32 %conv464, 58
  br i1 %cmp465, label %if.then467, label %if.else468

if.then467:                                       ; preds = %land.lhs.true460
  br label %for.end491

if.else468:                                       ; preds = %land.lhs.true460, %land.lhs.true453, %for.body446
  %191 = load i8*, i8** @line, align 8
  %192 = load i32, i32* @pos, align 4
  %193 = load i32, i32* %i, align 4
  %add469 = add nsw i32 %192, %193
  %idxprom470 = sext i32 %add469 to i64
  %arrayidx471 = getelementptr inbounds i8, i8* %191, i64 %idxprom470
  %194 = load i8, i8* %arrayidx471, align 1
  %conv472 = sext i8 %194 to i32
  %cmp473 = icmp eq i32 %conv472, 58
  br i1 %cmp473, label %land.lhs.true475, label %if.end487

land.lhs.true475:                                 ; preds = %if.else468
  %195 = load i8*, i8** @line, align 8
  %196 = load i32, i32* @pos, align 4
  %197 = load i32, i32* %i, align 4
  %add476 = add nsw i32 %196, %197
  %add477 = add nsw i32 %add476, 1
  %idxprom478 = sext i32 %add477 to i64
  %arrayidx479 = getelementptr inbounds i8, i8* %195, i64 %idxprom478
  %198 = load i8, i8* %arrayidx479, align 1
  %conv480 = sext i8 %198 to i32
  %cmp481 = icmp ne i32 %conv480, 61
  br i1 %cmp481, label %if.then483, label %if.end487

if.then483:                                       ; preds = %land.lhs.true475
  %199 = load i8*, i8** @line, align 8
  %200 = load i32, i32* @pos, align 4
  %idxprom484 = sext i32 %200 to i64
  %arrayidx485 = getelementptr inbounds i8, i8* %199, i64 %idxprom484
  %201 = load i32, i32* %i, align 4
  %202 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %parent.addr, align 8
  %call486 = call %struct.sAdaTokenInfo* @newAdaToken(i8* %arrayidx485, i32 %201, i32 22, i1 zeroext false, %struct.sAdaTokenInfo* %202)
  store %struct.sAdaTokenInfo* %call486, %struct.sAdaTokenInfo** %token, align 8
  br label %for.end491

if.end487:                                        ; preds = %land.lhs.true475, %if.else468
  br label %if.end488

if.end488:                                        ; preds = %if.end487
  br label %for.inc489

for.inc489:                                       ; preds = %if.end488
  %203 = load i32, i32* %i, align 4
  %inc490 = add nsw i32 %203, 1
  store i32 %inc490, i32* %i, align 4
  br label %for.cond442

for.end491:                                       ; preds = %if.then483, %if.then467, %for.cond442
  %204 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token, align 8
  %cmp492 = icmp ne %struct.sAdaTokenInfo* %204, null
  br i1 %cmp492, label %if.then494, label %if.else523

if.then494:                                       ; preds = %for.end491
  %205 = load i32, i32* %i, align 4
  %add495 = add nsw i32 %205, 1
  call void @movePos(i32 %add495)
  call void @skipWhiteSpace()
  %call496 = call zeroext i1 @adaKeywordCmp(i32 5)
  br i1 %call496, label %if.then497, label %if.else499

if.then497:                                       ; preds = %if.then494
  %206 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token, align 8
  %call498 = call %struct.sAdaTokenInfo* @adaParse(i32 1, %struct.sAdaTokenInfo* %206)
  br label %if.end522

if.else499:                                       ; preds = %if.then494
  %call500 = call zeroext i1 @adaKeywordCmp(i32 1)
  br i1 %call500, label %if.then501, label %if.else503

if.then501:                                       ; preds = %if.else499
  %207 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token, align 8
  %call502 = call %struct.sAdaTokenInfo* @adaParse(i32 2, %struct.sAdaTokenInfo* %207)
  br label %if.end521

if.else503:                                       ; preds = %if.else499
  %call504 = call zeroext i1 @adaKeywordCmp(i32 12)
  br i1 %call504, label %if.then505, label %if.else508

if.then505:                                       ; preds = %if.else503
  %208 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token, align 8
  %call506 = call %struct.sAdaTokenInfo* @adaParseLoopVar(%struct.sAdaTokenInfo* %208)
  %209 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token, align 8
  %call507 = call %struct.sAdaTokenInfo* @adaParse(i32 2, %struct.sAdaTokenInfo* %209)
  br label %if.end520

if.else508:                                       ; preds = %if.else503
  %call509 = call zeroext i1 @adaKeywordCmp(i32 37)
  br i1 %call509, label %if.then510, label %if.else512

if.then510:                                       ; preds = %if.else508
  call void @skipPastKeyword(i32 18)
  call void @skipWhiteSpace()
  %210 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token, align 8
  %call511 = call %struct.sAdaTokenInfo* @adaParse(i32 2, %struct.sAdaTokenInfo* %210)
  br label %if.end519

if.else512:                                       ; preds = %if.else508
  %call513 = call zeroext i1 @adaKeywordCmp(i32 18)
  br i1 %call513, label %if.then514, label %if.else516

if.then514:                                       ; preds = %if.else512
  call void @skipWhiteSpace()
  %211 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token, align 8
  %call515 = call %struct.sAdaTokenInfo* @adaParse(i32 2, %struct.sAdaTokenInfo* %211)
  br label %if.end518

if.else516:                                       ; preds = %if.else512
  %212 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %parent.addr, align 8
  %children517 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %212, i32 0, i32 8
  %213 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token, align 8
  call void @freeAdaToken(%struct.sAdaTokenList* %children517, %struct.sAdaTokenInfo* %213)
  store %struct.sAdaTokenInfo* null, %struct.sAdaTokenInfo** %token, align 8
  br label %if.end518

if.end518:                                        ; preds = %if.else516, %if.then514
  br label %if.end519

if.end519:                                        ; preds = %if.end518, %if.then510
  br label %if.end520

if.end520:                                        ; preds = %if.end519, %if.then505
  br label %if.end521

if.end521:                                        ; preds = %if.end520, %if.then501
  br label %if.end522

if.end522:                                        ; preds = %if.end521, %if.then497
  br label %if.end524

if.else523:                                       ; preds = %for.end491
  call void @skipPast(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i64 0, i64 0))
  br label %if.end524

if.end524:                                        ; preds = %if.else523, %if.end522
  br label %if.end525

if.end525:                                        ; preds = %if.end524, %if.then440
  br label %if.end526

if.end526:                                        ; preds = %if.end525, %if.then437
  br label %if.end527

if.end527:                                        ; preds = %if.end526, %if.then434
  br label %if.end528

if.end528:                                        ; preds = %if.end527, %if.then427
  br label %if.end529

if.end529:                                        ; preds = %if.end528, %if.end417
  br label %if.end530

if.end530:                                        ; preds = %if.end529, %if.then375
  br label %if.end531

if.end531:                                        ; preds = %if.end530, %if.then368
  br label %if.end532

if.end532:                                        ; preds = %if.end531, %if.then360
  br label %if.end533

if.end533:                                        ; preds = %if.end532, %if.then356
  br label %if.end534

if.end534:                                        ; preds = %if.end533, %if.end353
  br label %if.end535

if.end535:                                        ; preds = %if.end534
  br label %if.end536

if.end536:                                        ; preds = %if.end535, %if.then326
  br label %if.end537

if.end537:                                        ; preds = %if.end536, %if.then320
  br label %sw.epilog

sw.bb538:                                         ; preds = %if.end30
  %call539 = call zeroext i1 @adaKeywordCmp(i32 22)
  br i1 %call539, label %if.then540, label %if.else541

if.then540:                                       ; preds = %sw.bb538
  call void @skipPast(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i64 0, i64 0))
  br label %if.end557

if.else541:                                       ; preds = %sw.bb538
  %call542 = call zeroext i1 @adaKeywordCmp(i32 36)
  br i1 %call542, label %if.then543, label %if.else545

if.then543:                                       ; preds = %if.else541
  call void @skipWhiteSpace()
  %214 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %parent.addr, align 8
  %call544 = call %struct.sAdaTokenInfo* @adaParseVariables(%struct.sAdaTokenInfo* %214, i32 23)
  store %struct.sAdaTokenInfo* %call544, %struct.sAdaTokenInfo** %token, align 8
  br label %if.end556

if.else545:                                       ; preds = %if.else541
  %call546 = call zeroext i1 @adaKeywordCmp(i32 9)
  br i1 %call546, label %if.then547, label %if.else554

if.then547:                                       ; preds = %if.else545
  call void @skipWhiteSpace()
  %215 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %parent.addr, align 8
  %name548 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %215, i32 0, i32 3
  %216 = load i8*, i8** %name548, align 8
  %call549 = call zeroext i1 @adaCmp(i8* %216)
  br i1 %call549, label %if.then550, label %if.else552

if.then550:                                       ; preds = %if.then547
  call void @skipPast(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i64 0, i64 0))
  %children551 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %genericParamsRoot, i32 0, i32 8
  call void @freeAdaTokenList(%struct.sAdaTokenList* %children551)
  %217 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token, align 8
  store %struct.sAdaTokenInfo* %217, %struct.sAdaTokenInfo** %retval, align 8
  br label %return

if.else552:                                       ; preds = %if.then547
  call void @skipPast(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i64 0, i64 0))
  br label %if.end553

if.end553:                                        ; preds = %if.else552
  br label %if.end555

if.else554:                                       ; preds = %if.else545
  call void @skipPast(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i64 0, i64 0))
  br label %if.end555

if.end555:                                        ; preds = %if.else554, %if.end553
  br label %if.end556

if.end556:                                        ; preds = %if.end555, %if.then543
  br label %if.end557

if.end557:                                        ; preds = %if.end556, %if.then540
  br label %sw.epilog

sw.default:                                       ; preds = %if.end30
  br label %do.body

do.body:                                          ; preds = %sw.default
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %if.end557, %if.end537, %if.then335, %if.end317, %if.then257, %if.then246, %if.end223, %if.end96, %if.then52
  br label %while.cond

while.end558:                                     ; preds = %if.then, %while.cond
  %children559 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %genericParamsRoot, i32 0, i32 8
  call void @freeAdaTokenList(%struct.sAdaTokenList* %children559)
  %218 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token, align 8
  store %struct.sAdaTokenInfo* %218, %struct.sAdaTokenInfo** %retval, align 8
  br label %return

return:                                           ; preds = %while.end558, %if.then550, %if.then348, %if.then341, %if.then268
  %219 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %retval, align 8
  ret %struct.sAdaTokenInfo* %219
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @storeAdaTags(%struct.sAdaTokenInfo* %token, i8* %parentScope) #0 {
entry:
  %token.addr = alloca %struct.sAdaTokenInfo*, align 8
  %parentScope.addr = alloca i8*, align 8
  %currentScope = alloca i8*, align 8
  %tmp = alloca %struct.sAdaTokenInfo*, align 8
  store %struct.sAdaTokenInfo* %token, %struct.sAdaTokenInfo** %token.addr, align 8
  store i8* %parentScope, i8** %parentScope.addr, align 8
  store i8* null, i8** %currentScope, align 8
  store %struct.sAdaTokenInfo* null, %struct.sAdaTokenInfo** %tmp, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token.addr, align 8
  %isSpec = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %0, i32 0, i32 1
  %1 = load i8, i8* %isSpec, align 4
  %tobool = trunc i8 %1 to i1
  %conv = zext i1 %tobool to i32
  %cmp = icmp eq i32 %conv, 1
  br i1 %cmp, label %if.then, label %if.end7

if.then:                                          ; preds = %do.end
  %2 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token.addr, align 8
  %kind = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %2, i32 0, i32 0
  call void @makeSpec(i32* %kind)
  %3 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token.addr, align 8
  %kind2 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %3, i32 0, i32 0
  %4 = load i32, i32* %kind2, align 8
  %cmp3 = icmp ne i32 %4, -1
  br i1 %cmp3, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  %5 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token.addr, align 8
  %kind6 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %5, i32 0, i32 0
  %6 = load i32, i32* %kind6, align 8
  %7 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token.addr, align 8
  %tag = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %7, i32 0, i32 4
  %kindIndex = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %tag, i32 0, i32 8
  store i32 %6, i32* %kindIndex, align 8
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then
  br label %if.end7

if.end7:                                          ; preds = %if.end, %do.end
  %8 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token.addr, align 8
  %parent = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %8, i32 0, i32 5
  %9 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %parent, align 8
  %cmp8 = icmp ne %struct.sAdaTokenInfo* %9, null
  br i1 %cmp8, label %if.then10, label %if.end41

if.then10:                                        ; preds = %if.end7
  %10 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token.addr, align 8
  %parent11 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %10, i32 0, i32 5
  %11 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %parent11, align 8
  %kind12 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %11, i32 0, i32 0
  %12 = load i32, i32* %kind12, align 8
  %cmp13 = icmp sgt i32 %12, -1
  br i1 %cmp13, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then10
  %13 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token.addr, align 8
  %parent15 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %13, i32 0, i32 5
  %14 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %parent15, align 8
  %kind16 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %14, i32 0, i32 0
  %15 = load i32, i32* %kind16, align 8
  %cmp17 = icmp slt i32 %15, 26
  br i1 %cmp17, label %if.then19, label %if.else

if.then19:                                        ; preds = %land.lhs.true
  %16 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token.addr, align 8
  %parent20 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %16, i32 0, i32 5
  %17 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %parent20, align 8
  %kind21 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %17, i32 0, i32 0
  %18 = load i32, i32* %kind21, align 8
  %19 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token.addr, align 8
  %tag22 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %19, i32 0, i32 4
  %extensionFields = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %tag22, i32 0, i32 11
  %scopeKindIndex = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields, i32 0, i32 5
  store i32 %18, i32* %scopeKindIndex, align 4
  %20 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token.addr, align 8
  %parent23 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %20, i32 0, i32 5
  %21 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %parent23, align 8
  %name = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %21, i32 0, i32 3
  %22 = load i8*, i8** %name, align 8
  %23 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token.addr, align 8
  %tag24 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %23, i32 0, i32 4
  %extensionFields25 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %tag24, i32 0, i32 11
  %scopeName = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields25, i32 0, i32 6
  store i8* %22, i8** %scopeName, align 8
  br label %if.end40

if.else:                                          ; preds = %land.lhs.true, %if.then10
  %24 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token.addr, align 8
  %parent26 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %24, i32 0, i32 5
  %25 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %parent26, align 8
  %kind27 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %25, i32 0, i32 0
  %26 = load i32, i32* %kind27, align 8
  %cmp28 = icmp eq i32 %26, 25
  br i1 %cmp28, label %if.then30, label %if.end39

if.then30:                                        ; preds = %if.else
  %27 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token.addr, align 8
  %tag31 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %27, i32 0, i32 4
  %extensionFields32 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %tag31, i32 0, i32 11
  %scopeKindIndex33 = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields32, i32 0, i32 5
  store i32 25, i32* %scopeKindIndex33, align 4
  %28 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token.addr, align 8
  %parent34 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %28, i32 0, i32 5
  %29 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %parent34, align 8
  %name35 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %29, i32 0, i32 3
  %30 = load i8*, i8** %name35, align 8
  %31 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token.addr, align 8
  %tag36 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %31, i32 0, i32 4
  %extensionFields37 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %tag36, i32 0, i32 11
  %scopeName38 = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields37, i32 0, i32 6
  store i8* %30, i8** %scopeName38, align 8
  br label %if.end39

if.end39:                                         ; preds = %if.then30, %if.else
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.then19
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.end7
  %32 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token.addr, align 8
  %kind42 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %32, i32 0, i32 0
  %33 = load i32, i32* %kind42, align 8
  %cmp43 = icmp eq i32 %33, 24
  br i1 %cmp43, label %land.lhs.true45, label %if.end53

land.lhs.true45:                                  ; preds = %if.end41
  %34 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token.addr, align 8
  %name46 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %34, i32 0, i32 3
  %35 = load i8*, i8** %name46, align 8
  %cmp47 = icmp eq i8* %35, null
  br i1 %cmp47, label %if.then49, label %if.end53

if.then49:                                        ; preds = %land.lhs.true45
  %36 = load i8*, i8** getelementptr inbounds ([39 x i8*], [39 x i8*]* @AdaKeywords, i64 0, i64 5), align 8
  %37 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token.addr, align 8
  %name50 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %37, i32 0, i32 3
  store i8* %36, i8** %name50, align 8
  %38 = load i8*, i8** getelementptr inbounds ([39 x i8*], [39 x i8*]* @AdaKeywords, i64 0, i64 5), align 8
  %39 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token.addr, align 8
  %tag51 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %39, i32 0, i32 4
  %name52 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %tag51, i32 0, i32 7
  store i8* %38, i8** %name52, align 8
  br label %if.end53

if.end53:                                         ; preds = %if.then49, %land.lhs.true45, %if.end41
  %40 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token.addr, align 8
  %kind54 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %40, i32 0, i32 0
  %41 = load i32, i32* %kind54, align 8
  %cmp55 = icmp sgt i32 %41, -1
  br i1 %cmp55, label %land.lhs.true57, label %if.end164

land.lhs.true57:                                  ; preds = %if.end53
  %42 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token.addr, align 8
  %kind58 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %42, i32 0, i32 0
  %43 = load i32, i32* %kind58, align 8
  %cmp59 = icmp slt i32 %43, 26
  br i1 %cmp59, label %land.lhs.true61, label %if.end164

land.lhs.true61:                                  ; preds = %land.lhs.true57
  %44 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token.addr, align 8
  %kind62 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %44, i32 0, i32 0
  %45 = load i32, i32* %kind62, align 8
  %idxprom = sext i32 %45 to i64
  %arrayidx = getelementptr inbounds [26 x %struct.sKindDefinition], [26 x %struct.sKindDefinition]* @AdaKinds, i64 0, i64 %idxprom
  %enabled = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %arrayidx, i32 0, i32 0
  %46 = load i8, i8* %enabled, align 8
  %tobool63 = trunc i8 %46 to i1
  %conv64 = zext i1 %tobool63 to i32
  %cmp65 = icmp eq i32 %conv64, 1
  br i1 %cmp65, label %land.lhs.true67, label %if.end164

land.lhs.true67:                                  ; preds = %land.lhs.true61
  %47 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token.addr, align 8
  %name68 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %47, i32 0, i32 3
  %48 = load i8*, i8** %name68, align 8
  %cmp69 = icmp ne i8* %48, null
  br i1 %cmp69, label %land.lhs.true71, label %if.end164

land.lhs.true71:                                  ; preds = %land.lhs.true67
  %49 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token.addr, align 8
  %kind72 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %49, i32 0, i32 0
  %50 = load i32, i32* %kind72, align 8
  %cmp73 = icmp eq i32 %50, 24
  br i1 %cmp73, label %land.lhs.true75, label %lor.lhs.false

land.lhs.true75:                                  ; preds = %land.lhs.true71
  %51 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token.addr, align 8
  %children = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %51, i32 0, i32 8
  %head = getelementptr inbounds %struct.sAdaTokenList, %struct.sAdaTokenList* %children, i32 0, i32 1
  %52 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %head, align 8
  %cmp76 = icmp ne %struct.sAdaTokenInfo* %52, null
  br i1 %cmp76, label %land.lhs.true81, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true75, %land.lhs.true71
  %53 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token.addr, align 8
  %kind78 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %53, i32 0, i32 0
  %54 = load i32, i32* %kind78, align 8
  %cmp79 = icmp ne i32 %54, 24
  br i1 %cmp79, label %land.lhs.true81, label %if.end164

land.lhs.true81:                                  ; preds = %lor.lhs.false, %land.lhs.true75
  %call = call zeroext i1 @isXtagEnabled(i32 0)
  %conv82 = zext i1 %call to i32
  %cmp83 = icmp eq i32 %conv82, 1
  br i1 %cmp83, label %if.then94, label %lor.lhs.false85

lor.lhs.false85:                                  ; preds = %land.lhs.true81
  %call86 = call zeroext i1 @isXtagEnabled(i32 0)
  %conv87 = zext i1 %call86 to i32
  %cmp88 = icmp eq i32 %conv87, 0
  br i1 %cmp88, label %land.lhs.true90, label %if.end164

land.lhs.true90:                                  ; preds = %lor.lhs.false85
  %55 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token.addr, align 8
  %tag91 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %55, i32 0, i32 4
  %56 = bitcast %struct.sTagEntryInfo* %tag91 to i8*
  %bf.load = load i8, i8* %56, align 8
  %bf.lshr = lshr i8 %bf.load, 1
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %cmp92 = icmp eq i32 %bf.cast, 0
  br i1 %cmp92, label %if.then94, label %if.end164

if.then94:                                        ; preds = %land.lhs.true90, %land.lhs.true81
  %57 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token.addr, align 8
  %tag95 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %57, i32 0, i32 4
  %call96 = call i32 @makeTagEntry(%struct.sTagEntryInfo* %tag95)
  %call97 = call zeroext i1 @isXtagEnabled(i32 3)
  %conv98 = zext i1 %call97 to i32
  %cmp99 = icmp eq i32 %conv98, 1
  br i1 %cmp99, label %land.lhs.true101, label %if.end163

land.lhs.true101:                                 ; preds = %if.then94
  %58 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token.addr, align 8
  %kind102 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %58, i32 0, i32 0
  %59 = load i32, i32* %kind102, align 8
  %cmp103 = icmp ne i32 %59, 6
  br i1 %cmp103, label %land.lhs.true105, label %if.end163

land.lhs.true105:                                 ; preds = %land.lhs.true101
  %60 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token.addr, align 8
  %kind106 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %60, i32 0, i32 0
  %61 = load i32, i32* %kind106, align 8
  %cmp107 = icmp ne i32 %61, 7
  br i1 %cmp107, label %land.lhs.true109, label %if.end163

land.lhs.true109:                                 ; preds = %land.lhs.true105
  %62 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token.addr, align 8
  %kind110 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %62, i32 0, i32 0
  %63 = load i32, i32* %kind110, align 8
  %cmp111 = icmp ne i32 %63, 10
  br i1 %cmp111, label %land.lhs.true113, label %if.end163

land.lhs.true113:                                 ; preds = %land.lhs.true109
  %64 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token.addr, align 8
  %kind114 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %64, i32 0, i32 0
  %65 = load i32, i32* %kind114, align 8
  %cmp115 = icmp ne i32 %65, 21
  br i1 %cmp115, label %land.lhs.true117, label %if.end163

land.lhs.true117:                                 ; preds = %land.lhs.true113
  %66 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token.addr, align 8
  %kind118 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %66, i32 0, i32 0
  %67 = load i32, i32* %kind118, align 8
  %cmp119 = icmp ne i32 %67, 22
  br i1 %cmp119, label %land.lhs.true121, label %if.end163

land.lhs.true121:                                 ; preds = %land.lhs.true117
  %68 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token.addr, align 8
  %kind122 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %68, i32 0, i32 0
  %69 = load i32, i32* %kind122, align 8
  %cmp123 = icmp ne i32 %69, 23
  br i1 %cmp123, label %land.lhs.true125, label %if.end163

land.lhs.true125:                                 ; preds = %land.lhs.true121
  %70 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token.addr, align 8
  %kind126 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %70, i32 0, i32 0
  %71 = load i32, i32* %kind126, align 8
  %cmp127 = icmp ne i32 %71, 24
  br i1 %cmp127, label %if.then129, label %if.end163

if.then129:                                       ; preds = %land.lhs.true125
  %72 = load i8*, i8** %parentScope.addr, align 8
  %cmp130 = icmp ne i8* %72, null
  br i1 %cmp130, label %if.then132, label %if.else160

if.then132:                                       ; preds = %if.then129
  %73 = load i8*, i8** %parentScope.addr, align 8
  %call133 = call i64 @strlen(i8* %73)
  %74 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token.addr, align 8
  %name134 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %74, i32 0, i32 3
  %75 = load i8*, i8** %name134, align 8
  %call135 = call i64 @strlen(i8* %75)
  %add = add i64 %call133, %call135
  %add136 = add i64 %add, 2
  %mul = mul i64 %add136, 1
  %call137 = call i8* @eMalloc(i64 %mul)
  store i8* %call137, i8** %currentScope, align 8
  %76 = load i8*, i8** %currentScope, align 8
  %77 = load i8*, i8** %parentScope.addr, align 8
  %78 = load i8*, i8** %parentScope.addr, align 8
  %call138 = call i64 @strlen(i8* %78)
  %call139 = call i8* @strncpy(i8* %76, i8* %77, i64 %call138)
  %79 = load i8*, i8** %currentScope, align 8
  %80 = load i8*, i8** %parentScope.addr, align 8
  %call140 = call i64 @strlen(i8* %80)
  %arrayidx141 = getelementptr inbounds i8, i8* %79, i64 %call140
  store i8 46, i8* %arrayidx141, align 1
  %81 = load i8*, i8** %currentScope, align 8
  %82 = load i8*, i8** %parentScope.addr, align 8
  %call142 = call i64 @strlen(i8* %82)
  %add143 = add i64 %call142, 1
  %arrayidx144 = getelementptr inbounds i8, i8* %81, i64 %add143
  %83 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token.addr, align 8
  %name145 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %83, i32 0, i32 3
  %84 = load i8*, i8** %name145, align 8
  %85 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token.addr, align 8
  %name146 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %85, i32 0, i32 3
  %86 = load i8*, i8** %name146, align 8
  %call147 = call i64 @strlen(i8* %86)
  %call148 = call i8* @strncpy(i8* %arrayidx144, i8* %84, i64 %call147)
  %87 = load i8*, i8** %currentScope, align 8
  %88 = load i8*, i8** %parentScope.addr, align 8
  %call149 = call i64 @strlen(i8* %88)
  %add150 = add i64 %call149, 1
  %89 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token.addr, align 8
  %name151 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %89, i32 0, i32 3
  %90 = load i8*, i8** %name151, align 8
  %call152 = call i64 @strlen(i8* %90)
  %add153 = add i64 %add150, %call152
  %arrayidx154 = getelementptr inbounds i8, i8* %87, i64 %add153
  store i8 0, i8* %arrayidx154, align 1
  %91 = load i8*, i8** %currentScope, align 8
  %92 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token.addr, align 8
  %tag155 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %92, i32 0, i32 4
  %name156 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %tag155, i32 0, i32 7
  store i8* %91, i8** %name156, align 8
  %93 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token.addr, align 8
  %tag157 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %93, i32 0, i32 4
  call void @markTagExtraBit(%struct.sTagEntryInfo* %tag157, i32 3)
  %94 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token.addr, align 8
  %tag158 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %94, i32 0, i32 4
  %call159 = call i32 @makeTagEntry(%struct.sTagEntryInfo* %tag158)
  br label %if.end162

if.else160:                                       ; preds = %if.then129
  %95 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token.addr, align 8
  %name161 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %95, i32 0, i32 3
  %96 = load i8*, i8** %name161, align 8
  store i8* %96, i8** %currentScope, align 8
  br label %if.end162

if.end162:                                        ; preds = %if.else160, %if.then132
  br label %if.end163

if.end163:                                        ; preds = %if.end162, %land.lhs.true125, %land.lhs.true121, %land.lhs.true117, %land.lhs.true113, %land.lhs.true109, %land.lhs.true105, %land.lhs.true101, %if.then94
  br label %if.end164

if.end164:                                        ; preds = %if.end163, %land.lhs.true90, %lor.lhs.false85, %lor.lhs.false, %land.lhs.true67, %land.lhs.true61, %land.lhs.true57, %if.end53
  %97 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token.addr, align 8
  %children165 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %97, i32 0, i32 8
  %head166 = getelementptr inbounds %struct.sAdaTokenList, %struct.sAdaTokenList* %children165, i32 0, i32 1
  %98 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %head166, align 8
  store %struct.sAdaTokenInfo* %98, %struct.sAdaTokenInfo** %tmp, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end164
  %99 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %tmp, align 8
  %cmp167 = icmp ne %struct.sAdaTokenInfo* %99, null
  br i1 %cmp167, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %100 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %tmp, align 8
  %101 = load i8*, i8** %currentScope, align 8
  call void @storeAdaTags(%struct.sAdaTokenInfo* %100, i8* %101)
  %102 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %tmp, align 8
  %next = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %102, i32 0, i32 7
  %103 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %next, align 8
  store %struct.sAdaTokenInfo* %103, %struct.sAdaTokenInfo** %tmp, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %104 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token.addr, align 8
  %kind169 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %104, i32 0, i32 0
  %105 = load i32, i32* %kind169, align 8
  %cmp170 = icmp eq i32 %105, 24
  br i1 %cmp170, label %land.lhs.true172, label %if.end182

land.lhs.true172:                                 ; preds = %while.end
  %106 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token.addr, align 8
  %name173 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %106, i32 0, i32 3
  %107 = load i8*, i8** %name173, align 8
  %108 = load i8*, i8** getelementptr inbounds ([39 x i8*], [39 x i8*]* @AdaKeywords, i64 0, i64 5), align 8
  %109 = load i8*, i8** getelementptr inbounds ([39 x i8*], [39 x i8*]* @AdaKeywords, i64 0, i64 5), align 8
  %call174 = call i64 @strlen(i8* %109)
  %call175 = call i32 @strncasecmp(i8* %107, i8* %108, i64 %call174)
  %cmp176 = icmp eq i32 %call175, 0
  br i1 %cmp176, label %if.then178, label %if.end182

if.then178:                                       ; preds = %land.lhs.true172
  %110 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token.addr, align 8
  %name179 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %110, i32 0, i32 3
  store i8* null, i8** %name179, align 8
  %111 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token.addr, align 8
  %tag180 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %111, i32 0, i32 4
  %name181 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %tag180, i32 0, i32 7
  store i8* null, i8** %name181, align 8
  br label %if.end182

if.end182:                                        ; preds = %if.then178, %land.lhs.true172, %while.end
  %112 = load i8*, i8** %currentScope, align 8
  %cmp183 = icmp ne i8* %112, null
  br i1 %cmp183, label %land.lhs.true185, label %if.end190

land.lhs.true185:                                 ; preds = %if.end182
  %113 = load i8*, i8** %currentScope, align 8
  %114 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token.addr, align 8
  %name186 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %114, i32 0, i32 3
  %115 = load i8*, i8** %name186, align 8
  %cmp187 = icmp ne i8* %113, %115
  br i1 %cmp187, label %if.then189, label %if.end190

if.then189:                                       ; preds = %land.lhs.true185
  %116 = load i8*, i8** %currentScope, align 8
  call void @eFree(i8* %116)
  br label %if.end190

if.end190:                                        ; preds = %if.then189, %land.lhs.true185, %if.end182
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @freeAdaTokenList(%struct.sAdaTokenList* %list) #0 {
entry:
  %list.addr = alloca %struct.sAdaTokenList*, align 8
  store %struct.sAdaTokenList* %list, %struct.sAdaTokenList** %list.addr, align 8
  %0 = load %struct.sAdaTokenList*, %struct.sAdaTokenList** %list.addr, align 8
  %cmp = icmp ne %struct.sAdaTokenList* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %1 = load %struct.sAdaTokenList*, %struct.sAdaTokenList** %list.addr, align 8
  %head = getelementptr inbounds %struct.sAdaTokenList, %struct.sAdaTokenList* %1, i32 0, i32 1
  %2 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %head, align 8
  %cmp1 = icmp ne %struct.sAdaTokenInfo* %2, null
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct.sAdaTokenList*, %struct.sAdaTokenList** %list.addr, align 8
  %4 = load %struct.sAdaTokenList*, %struct.sAdaTokenList** %list.addr, align 8
  %head2 = getelementptr inbounds %struct.sAdaTokenList, %struct.sAdaTokenList* %4, i32 0, i32 1
  %5 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %head2, align 8
  call void @freeAdaToken(%struct.sAdaTokenList* %3, %struct.sAdaTokenInfo* %5)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end

if.end:                                           ; preds = %while.end, %entry
  ret void
}

declare i8* @readLineFromInputFile() #1

; Function Attrs: noreturn
declare void @longjmp(i32*, i32) #4

declare i64 @strlen(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @skipWhiteSpace() #0 {
entry:
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* @exception, align 4
  %cmp = icmp ne i32 %0, 1
  br i1 %cmp, label %land.rhs, label %land.end17

land.rhs:                                         ; preds = %while.cond
  %1 = load i32, i32* @pos, align 4
  %cmp1 = icmp eq i32 %1, 0
  br i1 %cmp1, label %land.lhs.true8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.rhs
  %2 = load i8*, i8** @line, align 8
  %3 = load i32, i32* @pos, align 4
  %sub = sub nsw i32 %3, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %4 to i32
  %call = call i32 @isalnum(i32 %conv) #8
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false
  %5 = load i8*, i8** @line, align 8
  %6 = load i32, i32* @pos, align 4
  %sub2 = sub nsw i32 %6, 1
  %idxprom3 = sext i32 %sub2 to i64
  %arrayidx4 = getelementptr inbounds i8, i8* %5, i64 %idxprom3
  %7 = load i8, i8* %arrayidx4, align 1
  %conv5 = sext i8 %7 to i32
  %cmp6 = icmp ne i32 %conv5, 95
  br i1 %cmp6, label %land.lhs.true8, label %land.end

land.lhs.true8:                                   ; preds = %land.lhs.true, %land.rhs
  %8 = load i32, i32* @pos, align 4
  %9 = load i32, i32* @lineLen, align 4
  %cmp9 = icmp slt i32 %8, %9
  br i1 %cmp9, label %land.rhs11, label %land.end

land.rhs11:                                       ; preds = %land.lhs.true8
  %10 = load i8*, i8** @line, align 8
  %11 = load i32, i32* @pos, align 4
  %idxprom12 = sext i32 %11 to i64
  %arrayidx13 = getelementptr inbounds i8, i8* %10, i64 %idxprom12
  %call14 = call i32 @strncasecmp(i8* %arrayidx13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0), i64 2)
  %cmp15 = icmp eq i32 %call14, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs11, %land.lhs.true8, %land.lhs.true, %lor.lhs.false
  %12 = phi i1 [ false, %land.lhs.true8 ], [ false, %land.lhs.true ], [ false, %lor.lhs.false ], [ %cmp15, %land.rhs11 ]
  br label %land.end17

land.end17:                                       ; preds = %land.end, %while.cond
  %13 = phi i1 [ false, %while.cond ], [ %12, %land.end ]
  br i1 %13, label %while.body, label %while.end

while.body:                                       ; preds = %land.end17
  call void @readNewLine()
  br label %while.cond

while.end:                                        ; preds = %land.end17
  br label %while.cond18

while.cond18:                                     ; preds = %while.end61, %while.end
  %14 = load i32, i32* @exception, align 4
  %cmp19 = icmp ne i32 %14, 1
  br i1 %cmp19, label %land.rhs21, label %land.end27

land.rhs21:                                       ; preds = %while.cond18
  %15 = load i8*, i8** @line, align 8
  %16 = load i32, i32* @pos, align 4
  %idxprom22 = sext i32 %16 to i64
  %arrayidx23 = getelementptr inbounds i8, i8* %15, i64 %idxprom22
  %17 = load i8, i8* %arrayidx23, align 1
  %conv24 = sext i8 %17 to i32
  %call25 = call i32 @isspace(i32 %conv24) #8
  %tobool26 = icmp ne i32 %call25, 0
  br label %land.end27

land.end27:                                       ; preds = %land.rhs21, %while.cond18
  %18 = phi i1 [ false, %while.cond18 ], [ %tobool26, %land.rhs21 ]
  br i1 %18, label %while.body28, label %while.end62

while.body28:                                     ; preds = %land.end27
  call void @movePos(i32 1)
  br label %while.cond29

while.cond29:                                     ; preds = %while.body60, %while.body28
  %19 = load i32, i32* @exception, align 4
  %cmp30 = icmp ne i32 %19, 1
  br i1 %cmp30, label %land.rhs32, label %land.end59

land.rhs32:                                       ; preds = %while.cond29
  %20 = load i32, i32* @pos, align 4
  %cmp33 = icmp eq i32 %20, 0
  br i1 %cmp33, label %land.lhs.true49, label %lor.lhs.false35

lor.lhs.false35:                                  ; preds = %land.rhs32
  %21 = load i8*, i8** @line, align 8
  %22 = load i32, i32* @pos, align 4
  %sub36 = sub nsw i32 %22, 1
  %idxprom37 = sext i32 %sub36 to i64
  %arrayidx38 = getelementptr inbounds i8, i8* %21, i64 %idxprom37
  %23 = load i8, i8* %arrayidx38, align 1
  %conv39 = sext i8 %23 to i32
  %call40 = call i32 @isalnum(i32 %conv39) #8
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %land.end58, label %land.lhs.true42

land.lhs.true42:                                  ; preds = %lor.lhs.false35
  %24 = load i8*, i8** @line, align 8
  %25 = load i32, i32* @pos, align 4
  %sub43 = sub nsw i32 %25, 1
  %idxprom44 = sext i32 %sub43 to i64
  %arrayidx45 = getelementptr inbounds i8, i8* %24, i64 %idxprom44
  %26 = load i8, i8* %arrayidx45, align 1
  %conv46 = sext i8 %26 to i32
  %cmp47 = icmp ne i32 %conv46, 95
  br i1 %cmp47, label %land.lhs.true49, label %land.end58

land.lhs.true49:                                  ; preds = %land.lhs.true42, %land.rhs32
  %27 = load i32, i32* @pos, align 4
  %28 = load i32, i32* @lineLen, align 4
  %cmp50 = icmp slt i32 %27, %28
  br i1 %cmp50, label %land.rhs52, label %land.end58

land.rhs52:                                       ; preds = %land.lhs.true49
  %29 = load i8*, i8** @line, align 8
  %30 = load i32, i32* @pos, align 4
  %idxprom53 = sext i32 %30 to i64
  %arrayidx54 = getelementptr inbounds i8, i8* %29, i64 %idxprom53
  %call55 = call i32 @strncasecmp(i8* %arrayidx54, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0), i64 2)
  %cmp56 = icmp eq i32 %call55, 0
  br label %land.end58

land.end58:                                       ; preds = %land.rhs52, %land.lhs.true49, %land.lhs.true42, %lor.lhs.false35
  %31 = phi i1 [ false, %land.lhs.true49 ], [ false, %land.lhs.true42 ], [ false, %lor.lhs.false35 ], [ %cmp56, %land.rhs52 ]
  br label %land.end59

land.end59:                                       ; preds = %land.end58, %while.cond29
  %32 = phi i1 [ false, %while.cond29 ], [ %31, %land.end58 ]
  br i1 %32, label %while.body60, label %while.end61

while.body60:                                     ; preds = %land.end59
  call void @readNewLine()
  br label %while.cond29

while.end61:                                      ; preds = %land.end59
  br label %while.cond18

while.end62:                                      ; preds = %land.end27
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @isalnum(i32) #5

declare i32 @strncasecmp(i8*, i8*, i64) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @adaKeywordCmp(i32 %keyword) #0 {
entry:
  %retval = alloca i1, align 1
  %keyword.addr = alloca i32, align 4
  %status = alloca i8, align 1
  %tmp = alloca %struct._MIOPos, align 8
  store i32 %keyword, i32* %keyword.addr, align 4
  store i8 0, i8* %status, align 1
  %0 = load i8*, i8** @line, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* @exception, align 4
  %1 = load i8, i8* %status, align 1
  %tobool = trunc i8 %1 to i1
  store i1 %tobool, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** @line, align 8
  %3 = load i32, i32* @pos, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %idxprom
  %4 = load i32, i32* @lineLen, align 4
  %5 = load i32, i32* @pos, align 4
  %sub = sub nsw i32 %4, %5
  %6 = load i32, i32* %keyword.addr, align 4
  %idxprom1 = zext i32 %6 to i64
  %arrayidx2 = getelementptr inbounds [39 x i8*], [39 x i8*]* @AdaKeywords, i64 0, i64 %idxprom1
  %7 = load i8*, i8** %arrayidx2, align 8
  %call = call zeroext i1 @cmp(i8* %arrayidx, i32 %sub, i8* %7)
  %frombool = zext i1 %call to i8
  store i8 %frombool, i8* %status, align 1
  %8 = load i8, i8* %status, align 1
  %tobool3 = trunc i8 %8 to i1
  %conv = zext i1 %tobool3 to i32
  %cmp4 = icmp eq i32 %conv, 1
  br i1 %cmp4, label %if.then6, label %if.end13

if.then6:                                         ; preds = %if.end
  %call7 = call i64 @getInputLineNumber()
  store i64 %call7, i64* @matchLineNum, align 8
  %call8 = call [2 x i64] @getInputFilePosition()
  %9 = bitcast %struct._MIOPos* %tmp to [2 x i64]*
  store [2 x i64] %call8, [2 x i64]* %9, align 8
  %10 = bitcast %struct._MIOPos* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct._MIOPos* @matchFilePos to i8*), i8* align 8 %10, i64 16, i1 false)
  %11 = load i32, i32* %keyword.addr, align 4
  %idxprom9 = zext i32 %11 to i64
  %arrayidx10 = getelementptr inbounds [39 x i8*], [39 x i8*]* @AdaKeywords, i64 0, i64 %idxprom9
  %12 = load i8*, i8** %arrayidx10, align 8
  %call11 = call i64 @strlen(i8* %12)
  %conv12 = trunc i64 %call11 to i32
  call void @movePos(i32 %conv12)
  br label %if.end13

if.end13:                                         ; preds = %if.then6, %if.end
  %13 = load i8, i8* %status, align 1
  %tobool14 = trunc i8 %13 to i1
  store i1 %tobool14, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end13, %if.then
  %14 = load i1, i1* %retval, align 1
  ret i1 %14
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @skipPast(i8* %past) #0 {
entry:
  %past.addr = alloca i8*, align 8
  store i8* %past, i8** %past.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* @exception, align 4
  %cmp = icmp ne i32 %0, 1
  br i1 %cmp, label %land.rhs, label %land.end17

land.rhs:                                         ; preds = %while.cond
  %1 = load i32, i32* @pos, align 4
  %cmp1 = icmp eq i32 %1, 0
  br i1 %cmp1, label %land.lhs.true8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.rhs
  %2 = load i8*, i8** @line, align 8
  %3 = load i32, i32* @pos, align 4
  %sub = sub nsw i32 %3, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %4 to i32
  %call = call i32 @isalnum(i32 %conv) #8
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false
  %5 = load i8*, i8** @line, align 8
  %6 = load i32, i32* @pos, align 4
  %sub2 = sub nsw i32 %6, 1
  %idxprom3 = sext i32 %sub2 to i64
  %arrayidx4 = getelementptr inbounds i8, i8* %5, i64 %idxprom3
  %7 = load i8, i8* %arrayidx4, align 1
  %conv5 = sext i8 %7 to i32
  %cmp6 = icmp ne i32 %conv5, 95
  br i1 %cmp6, label %land.lhs.true8, label %land.end

land.lhs.true8:                                   ; preds = %land.lhs.true, %land.rhs
  %8 = load i32, i32* @pos, align 4
  %9 = load i32, i32* @lineLen, align 4
  %cmp9 = icmp slt i32 %8, %9
  br i1 %cmp9, label %land.rhs11, label %land.end

land.rhs11:                                       ; preds = %land.lhs.true8
  %10 = load i8*, i8** @line, align 8
  %11 = load i32, i32* @pos, align 4
  %idxprom12 = sext i32 %11 to i64
  %arrayidx13 = getelementptr inbounds i8, i8* %10, i64 %idxprom12
  %call14 = call i32 @strncasecmp(i8* %arrayidx13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0), i64 2)
  %cmp15 = icmp eq i32 %call14, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs11, %land.lhs.true8, %land.lhs.true, %lor.lhs.false
  %12 = phi i1 [ false, %land.lhs.true8 ], [ false, %land.lhs.true ], [ false, %lor.lhs.false ], [ %cmp15, %land.rhs11 ]
  br label %land.end17

land.end17:                                       ; preds = %land.end, %while.cond
  %13 = phi i1 [ false, %while.cond ], [ %12, %land.end ]
  br i1 %13, label %while.body, label %while.end

while.body:                                       ; preds = %land.end17
  call void @readNewLine()
  br label %while.cond

while.end:                                        ; preds = %land.end17
  br label %while.cond18

while.cond18:                                     ; preds = %while.end57, %while.end
  %14 = load i32, i32* @exception, align 4
  %cmp19 = icmp ne i32 %14, 1
  br i1 %cmp19, label %land.rhs21, label %land.end23

land.rhs21:                                       ; preds = %while.cond18
  %15 = load i8*, i8** %past.addr, align 8
  %call22 = call zeroext i1 @adaCmp(i8* %15)
  %lnot = xor i1 %call22, true
  br label %land.end23

land.end23:                                       ; preds = %land.rhs21, %while.cond18
  %16 = phi i1 [ false, %while.cond18 ], [ %lnot, %land.rhs21 ]
  br i1 %16, label %while.body24, label %while.end58

while.body24:                                     ; preds = %land.end23
  call void @movePos(i32 1)
  br label %while.cond25

while.cond25:                                     ; preds = %while.body56, %while.body24
  %17 = load i32, i32* @exception, align 4
  %cmp26 = icmp ne i32 %17, 1
  br i1 %cmp26, label %land.rhs28, label %land.end55

land.rhs28:                                       ; preds = %while.cond25
  %18 = load i32, i32* @pos, align 4
  %cmp29 = icmp eq i32 %18, 0
  br i1 %cmp29, label %land.lhs.true45, label %lor.lhs.false31

lor.lhs.false31:                                  ; preds = %land.rhs28
  %19 = load i8*, i8** @line, align 8
  %20 = load i32, i32* @pos, align 4
  %sub32 = sub nsw i32 %20, 1
  %idxprom33 = sext i32 %sub32 to i64
  %arrayidx34 = getelementptr inbounds i8, i8* %19, i64 %idxprom33
  %21 = load i8, i8* %arrayidx34, align 1
  %conv35 = sext i8 %21 to i32
  %call36 = call i32 @isalnum(i32 %conv35) #8
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %land.end54, label %land.lhs.true38

land.lhs.true38:                                  ; preds = %lor.lhs.false31
  %22 = load i8*, i8** @line, align 8
  %23 = load i32, i32* @pos, align 4
  %sub39 = sub nsw i32 %23, 1
  %idxprom40 = sext i32 %sub39 to i64
  %arrayidx41 = getelementptr inbounds i8, i8* %22, i64 %idxprom40
  %24 = load i8, i8* %arrayidx41, align 1
  %conv42 = sext i8 %24 to i32
  %cmp43 = icmp ne i32 %conv42, 95
  br i1 %cmp43, label %land.lhs.true45, label %land.end54

land.lhs.true45:                                  ; preds = %land.lhs.true38, %land.rhs28
  %25 = load i32, i32* @pos, align 4
  %26 = load i32, i32* @lineLen, align 4
  %cmp46 = icmp slt i32 %25, %26
  br i1 %cmp46, label %land.rhs48, label %land.end54

land.rhs48:                                       ; preds = %land.lhs.true45
  %27 = load i8*, i8** @line, align 8
  %28 = load i32, i32* @pos, align 4
  %idxprom49 = sext i32 %28 to i64
  %arrayidx50 = getelementptr inbounds i8, i8* %27, i64 %idxprom49
  %call51 = call i32 @strncasecmp(i8* %arrayidx50, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0), i64 2)
  %cmp52 = icmp eq i32 %call51, 0
  br label %land.end54

land.end54:                                       ; preds = %land.rhs48, %land.lhs.true45, %land.lhs.true38, %lor.lhs.false31
  %29 = phi i1 [ false, %land.lhs.true45 ], [ false, %land.lhs.true38 ], [ false, %lor.lhs.false31 ], [ %cmp52, %land.rhs48 ]
  br label %land.end55

land.end55:                                       ; preds = %land.end54, %while.cond25
  %30 = phi i1 [ false, %while.cond25 ], [ %29, %land.end54 ]
  br i1 %30, label %while.body56, label %while.end57

while.body56:                                     ; preds = %land.end55
  call void @readNewLine()
  br label %while.cond25

while.end57:                                      ; preds = %land.end55
  br label %while.cond18

while.end58:                                      ; preds = %land.end23
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct.sAdaTokenInfo* @adaParseBlock(%struct.sAdaTokenInfo* %parent, i32 %kind) #0 {
entry:
  %retval = alloca %struct.sAdaTokenInfo*, align 8
  %parent.addr = alloca %struct.sAdaTokenInfo*, align 8
  %kind.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %token = alloca %struct.sAdaTokenInfo*, align 8
  %isSpec = alloca i8, align 1
  store %struct.sAdaTokenInfo* %parent, %struct.sAdaTokenInfo** %parent.addr, align 8
  store i32 %kind, i32* %kind.addr, align 4
  store i8 1, i8* %isSpec, align 1
  call void @skipWhiteSpace()
  %call = call zeroext i1 @adaKeywordCmp(i32 2)
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i8 0, i8* %isSpec, align 1
  br label %if.end5

if.else:                                          ; preds = %entry
  %call1 = call zeroext i1 @adaKeywordCmp(i32 33)
  br i1 %call1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.else
  %0 = load i32, i32* %kind.addr, align 4
  %cmp = icmp ne i32 %0, 18
  br i1 %cmp, label %land.lhs.true2, label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %1 = load i32, i32* %kind.addr, align 4
  %cmp3 = icmp ne i32 %1, 16
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %land.lhs.true2
  store %struct.sAdaTokenInfo* null, %struct.sAdaTokenInfo** %retval, align 8
  br label %return

if.end:                                           ; preds = %land.lhs.true2, %land.lhs.true, %if.else
  br label %if.end5

if.end5:                                          ; preds = %if.end, %if.then
  call void @skipWhiteSpace()
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end5
  %2 = load i32, i32* @pos, align 4
  %3 = load i32, i32* %i, align 4
  %add = add nsw i32 %2, %3
  %4 = load i32, i32* @lineLen, align 4
  %cmp6 = icmp slt i32 %add, %4
  br i1 %cmp6, label %land.lhs.true7, label %land.end

land.lhs.true7:                                   ; preds = %for.cond
  %5 = load i8*, i8** @line, align 8
  %6 = load i32, i32* @pos, align 4
  %7 = load i32, i32* %i, align 4
  %add8 = add nsw i32 %6, %7
  %idxprom = sext i32 %add8 to i64
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %idxprom
  %8 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %8 to i32
  %call9 = call i32 @isspace(i32 %conv) #8
  %tobool = icmp ne i32 %call9, 0
  br i1 %tobool, label %land.end, label %land.lhs.true10

land.lhs.true10:                                  ; preds = %land.lhs.true7
  %9 = load i8*, i8** @line, align 8
  %10 = load i32, i32* @pos, align 4
  %11 = load i32, i32* %i, align 4
  %add11 = add nsw i32 %10, %11
  %idxprom12 = sext i32 %add11 to i64
  %arrayidx13 = getelementptr inbounds i8, i8* %9, i64 %idxprom12
  %12 = load i8, i8* %arrayidx13, align 1
  %conv14 = sext i8 %12 to i32
  %cmp15 = icmp ne i32 %conv14, 40
  br i1 %cmp15, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true10
  %13 = load i8*, i8** @line, align 8
  %14 = load i32, i32* @pos, align 4
  %15 = load i32, i32* %i, align 4
  %add17 = add nsw i32 %14, %15
  %idxprom18 = sext i32 %add17 to i64
  %arrayidx19 = getelementptr inbounds i8, i8* %13, i64 %idxprom18
  %16 = load i8, i8* %arrayidx19, align 1
  %conv20 = sext i8 %16 to i32
  %cmp21 = icmp ne i32 %conv20, 59
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true10, %land.lhs.true7, %for.cond
  %17 = phi i1 [ false, %land.lhs.true10 ], [ false, %land.lhs.true7 ], [ false, %for.cond ], [ %cmp21, %land.rhs ]
  br i1 %17, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %19 = load i8*, i8** @line, align 8
  %20 = load i32, i32* @pos, align 4
  %idxprom23 = sext i32 %20 to i64
  %arrayidx24 = getelementptr inbounds i8, i8* %19, i64 %idxprom23
  %21 = load i32, i32* %i, align 4
  %22 = load i32, i32* %kind.addr, align 4
  %23 = load i8, i8* %isSpec, align 1
  %tobool25 = trunc i8 %23 to i1
  %24 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %parent.addr, align 8
  %call26 = call %struct.sAdaTokenInfo* @newAdaToken(i8* %arrayidx24, i32 %21, i32 %22, i1 zeroext %tobool25, %struct.sAdaTokenInfo* %24)
  store %struct.sAdaTokenInfo* %call26, %struct.sAdaTokenInfo** %token, align 8
  %25 = load i32, i32* %i, align 4
  call void @movePos(i32 %25)
  call void @skipWhiteSpace()
  %26 = load i32, i32* @exception, align 4
  %cmp27 = icmp ne i32 %26, 1
  br i1 %cmp27, label %land.lhs.true29, label %if.end46

land.lhs.true29:                                  ; preds = %for.end
  %27 = load i8*, i8** @line, align 8
  %28 = load i32, i32* @pos, align 4
  %idxprom30 = sext i32 %28 to i64
  %arrayidx31 = getelementptr inbounds i8, i8* %27, i64 %idxprom30
  %29 = load i8, i8* %arrayidx31, align 1
  %conv32 = sext i8 %29 to i32
  %cmp33 = icmp eq i32 %conv32, 40
  br i1 %cmp33, label %if.then35, label %if.end46

if.then35:                                        ; preds = %land.lhs.true29
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then35
  %30 = load i32, i32* @exception, align 4
  %cmp36 = icmp ne i32 %30, 1
  br i1 %cmp36, label %land.rhs38, label %land.end44

land.rhs38:                                       ; preds = %while.cond
  %31 = load i8*, i8** @line, align 8
  %32 = load i32, i32* @pos, align 4
  %idxprom39 = sext i32 %32 to i64
  %arrayidx40 = getelementptr inbounds i8, i8* %31, i64 %idxprom39
  %33 = load i8, i8* %arrayidx40, align 1
  %conv41 = sext i8 %33 to i32
  %cmp42 = icmp ne i32 %conv41, 41
  br label %land.end44

land.end44:                                       ; preds = %land.rhs38, %while.cond
  %34 = phi i1 [ false, %while.cond ], [ %cmp42, %land.rhs38 ]
  br i1 %34, label %while.body, label %while.end

while.body:                                       ; preds = %land.end44
  call void @movePos(i32 1)
  %35 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token, align 8
  %call45 = call %struct.sAdaTokenInfo* @adaParseVariables(%struct.sAdaTokenInfo* %35, i32 23)
  br label %while.cond

while.end:                                        ; preds = %land.end44
  call void @movePos(i32 1)
  br label %if.end46

if.end46:                                         ; preds = %while.end, %land.lhs.true29, %for.end
  br label %while.cond47

while.cond47:                                     ; preds = %if.end77, %if.end46
  %36 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token, align 8
  %cmp48 = icmp ne %struct.sAdaTokenInfo* %36, null
  br i1 %cmp48, label %while.body50, label %while.end78

while.body50:                                     ; preds = %while.cond47
  call void @skipWhiteSpace()
  %call51 = call zeroext i1 @adaKeywordCmp(i32 17)
  br i1 %call51, label %if.then52, label %if.else62

if.then52:                                        ; preds = %while.body50
  call void @skipWhiteSpace()
  %call53 = call zeroext i1 @adaKeywordCmp(i32 29)
  br i1 %call53, label %if.then54, label %if.else55

if.then54:                                        ; preds = %if.then52
  %37 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %parent.addr, align 8
  %children = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %37, i32 0, i32 8
  %38 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token, align 8
  call void @freeAdaToken(%struct.sAdaTokenList* %children, %struct.sAdaTokenInfo* %38)
  store %struct.sAdaTokenInfo* null, %struct.sAdaTokenInfo** %token, align 8
  call void @skipPast(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i64 0, i64 0))
  br label %if.end61

if.else55:                                        ; preds = %if.then52
  %call56 = call zeroext i1 @adaKeywordCmp(i32 19)
  br i1 %call56, label %if.then57, label %if.else58

if.then57:                                        ; preds = %if.else55
  call void @skipPast(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i64 0, i64 0))
  br label %if.end60

if.else58:                                        ; preds = %if.else55
  %39 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token, align 8
  %call59 = call %struct.sAdaTokenInfo* @adaParse(i32 1, %struct.sAdaTokenInfo* %39)
  br label %if.end60

if.end60:                                         ; preds = %if.else58, %if.then57
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %if.then54
  br label %while.end78

if.else62:                                        ; preds = %while.body50
  %call63 = call zeroext i1 @adaKeywordCmp(i32 27)
  br i1 %call63, label %if.then64, label %if.else65

if.then64:                                        ; preds = %if.else62
  call void @skipPast(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i64 0, i64 0))
  br label %while.end78

if.else65:                                        ; preds = %if.else62
  %call66 = call zeroext i1 @adaCmp(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i64 0, i64 0))
  br i1 %call66, label %if.then67, label %if.else69

if.then67:                                        ; preds = %if.else65
  %40 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token, align 8
  %isSpec68 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %40, i32 0, i32 1
  store i8 1, i8* %isSpec68, align 4
  br label %while.end78

if.else69:                                        ; preds = %if.else65
  call void @skipUntilWhiteSpace()
  br label %if.end70

if.end70:                                         ; preds = %if.else69
  br label %if.end71

if.end71:                                         ; preds = %if.end70
  br label %if.end72

if.end72:                                         ; preds = %if.end71
  %41 = load i32, i32* @exception, align 4
  %cmp73 = icmp eq i32 %41, 1
  br i1 %cmp73, label %if.then75, label %if.end77

if.then75:                                        ; preds = %if.end72
  %42 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %parent.addr, align 8
  %children76 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %42, i32 0, i32 8
  %43 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token, align 8
  call void @freeAdaToken(%struct.sAdaTokenList* %children76, %struct.sAdaTokenInfo* %43)
  store %struct.sAdaTokenInfo* null, %struct.sAdaTokenInfo** %token, align 8
  br label %if.end77

if.end77:                                         ; preds = %if.then75, %if.end72
  br label %while.cond47

while.end78:                                      ; preds = %if.then67, %if.then64, %if.end61, %while.cond47
  %44 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token, align 8
  store %struct.sAdaTokenInfo* %44, %struct.sAdaTokenInfo** %retval, align 8
  br label %return

return:                                           ; preds = %while.end78, %if.then4
  %45 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %retval, align 8
  ret %struct.sAdaTokenInfo* %45
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct.sAdaTokenInfo* @adaParseSubprogram(%struct.sAdaTokenInfo* %parent, i32 %kind) #0 {
entry:
  %parent.addr = alloca %struct.sAdaTokenInfo*, align 8
  %kind.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %token = alloca %struct.sAdaTokenInfo*, align 8
  %tmpToken = alloca %struct.sAdaTokenInfo*, align 8
  store %struct.sAdaTokenInfo* %parent, %struct.sAdaTokenInfo** %parent.addr, align 8
  store i32 %kind, i32* %kind.addr, align 4
  store %struct.sAdaTokenInfo* null, %struct.sAdaTokenInfo** %tmpToken, align 8
  call void @skipWhiteSpace()
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* @pos, align 4
  %1 = load i32, i32* %i, align 4
  %add = add nsw i32 %0, %1
  %2 = load i32, i32* @lineLen, align 4
  %cmp = icmp slt i32 %add, %2
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %for.cond
  %3 = load i8*, i8** @line, align 8
  %4 = load i32, i32* @pos, align 4
  %5 = load i32, i32* %i, align 4
  %add1 = add nsw i32 %4, %5
  %idxprom = sext i32 %add1 to i64
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %6 to i32
  %call = call i32 @isspace(i32 %conv) #8
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.end, label %land.lhs.true2

land.lhs.true2:                                   ; preds = %land.lhs.true
  %7 = load i8*, i8** @line, align 8
  %8 = load i32, i32* @pos, align 4
  %9 = load i32, i32* %i, align 4
  %add3 = add nsw i32 %8, %9
  %idxprom4 = sext i32 %add3 to i64
  %arrayidx5 = getelementptr inbounds i8, i8* %7, i64 %idxprom4
  %10 = load i8, i8* %arrayidx5, align 1
  %conv6 = sext i8 %10 to i32
  %cmp7 = icmp ne i32 %conv6, 40
  br i1 %cmp7, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true2
  %11 = load i8*, i8** @line, align 8
  %12 = load i32, i32* @pos, align 4
  %13 = load i32, i32* %i, align 4
  %add9 = add nsw i32 %12, %13
  %idxprom10 = sext i32 %add9 to i64
  %arrayidx11 = getelementptr inbounds i8, i8* %11, i64 %idxprom10
  %14 = load i8, i8* %arrayidx11, align 1
  %conv12 = sext i8 %14 to i32
  %cmp13 = icmp ne i32 %conv12, 59
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true2, %land.lhs.true, %for.cond
  %15 = phi i1 [ false, %land.lhs.true2 ], [ false, %land.lhs.true ], [ false, %for.cond ], [ %cmp13, %land.rhs ]
  br i1 %15, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %17 = load i8*, i8** @line, align 8
  %18 = load i32, i32* @pos, align 4
  %idxprom15 = sext i32 %18 to i64
  %arrayidx16 = getelementptr inbounds i8, i8* %17, i64 %idxprom15
  %19 = load i32, i32* %i, align 4
  %20 = load i32, i32* %kind.addr, align 4
  %21 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %parent.addr, align 8
  %call17 = call %struct.sAdaTokenInfo* @newAdaToken(i8* %arrayidx16, i32 %19, i32 %20, i1 zeroext false, %struct.sAdaTokenInfo* %21)
  store %struct.sAdaTokenInfo* %call17, %struct.sAdaTokenInfo** %token, align 8
  %22 = load i32, i32* %i, align 4
  call void @movePos(i32 %22)
  call void @skipWhiteSpace()
  %23 = load i32, i32* @exception, align 4
  %cmp18 = icmp ne i32 %23, 1
  br i1 %cmp18, label %land.lhs.true20, label %if.end68

land.lhs.true20:                                  ; preds = %for.end
  %24 = load i8*, i8** @line, align 8
  %25 = load i32, i32* @pos, align 4
  %idxprom21 = sext i32 %25 to i64
  %arrayidx22 = getelementptr inbounds i8, i8* %24, i64 %idxprom21
  %26 = load i8, i8* %arrayidx22, align 1
  %conv23 = sext i8 %26 to i32
  %cmp24 = icmp eq i32 %conv23, 40
  br i1 %cmp24, label %land.lhs.true26, label %if.end68

land.lhs.true26:                                  ; preds = %land.lhs.true20
  %27 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token, align 8
  %cmp27 = icmp ne %struct.sAdaTokenInfo* %27, null
  br i1 %cmp27, label %if.then, label %if.end68

if.then:                                          ; preds = %land.lhs.true26
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %28 = load i32, i32* @exception, align 4
  %cmp29 = icmp ne i32 %28, 1
  br i1 %cmp29, label %land.rhs31, label %land.end37

land.rhs31:                                       ; preds = %while.cond
  %29 = load i8*, i8** @line, align 8
  %30 = load i32, i32* @pos, align 4
  %idxprom32 = sext i32 %30 to i64
  %arrayidx33 = getelementptr inbounds i8, i8* %29, i64 %idxprom32
  %31 = load i8, i8* %arrayidx33, align 1
  %conv34 = sext i8 %31 to i32
  %cmp35 = icmp ne i32 %conv34, 41
  br label %land.end37

land.end37:                                       ; preds = %land.rhs31, %while.cond
  %32 = phi i1 [ false, %while.cond ], [ %cmp35, %land.rhs31 ]
  br i1 %32, label %while.body, label %while.end

while.body:                                       ; preds = %land.end37
  call void @movePos(i32 1)
  %33 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token, align 8
  %call38 = call %struct.sAdaTokenInfo* @adaParseVariables(%struct.sAdaTokenInfo* %33, i32 23)
  store %struct.sAdaTokenInfo* %call38, %struct.sAdaTokenInfo** %tmpToken, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end37
  call void @movePos(i32 1)
  %34 = load i32, i32* %kind.addr, align 4
  %cmp39 = icmp eq i32 %34, 20
  br i1 %cmp39, label %land.lhs.true41, label %if.end67

land.lhs.true41:                                  ; preds = %while.end
  %35 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %tmpToken, align 8
  %cmp42 = icmp eq %struct.sAdaTokenInfo* %35, null
  br i1 %cmp42, label %if.then44, label %if.end67

if.then44:                                        ; preds = %land.lhs.true41
  call void @skipWhiteSpace()
  %36 = load i32, i32* @exception, align 4
  %cmp45 = icmp ne i32 %36, 1
  br i1 %cmp45, label %land.lhs.true47, label %if.end

land.lhs.true47:                                  ; preds = %if.then44
  %37 = load i8*, i8** @line, align 8
  %38 = load i32, i32* @pos, align 4
  %idxprom48 = sext i32 %38 to i64
  %arrayidx49 = getelementptr inbounds i8, i8* %37, i64 %idxprom48
  %39 = load i8, i8* %arrayidx49, align 1
  %conv50 = sext i8 %39 to i32
  %cmp51 = icmp eq i32 %conv50, 40
  br i1 %cmp51, label %if.then53, label %if.end

if.then53:                                        ; preds = %land.lhs.true47
  br label %while.cond54

while.cond54:                                     ; preds = %while.body64, %if.then53
  %40 = load i32, i32* @exception, align 4
  %cmp55 = icmp ne i32 %40, 1
  br i1 %cmp55, label %land.rhs57, label %land.end63

land.rhs57:                                       ; preds = %while.cond54
  %41 = load i8*, i8** @line, align 8
  %42 = load i32, i32* @pos, align 4
  %idxprom58 = sext i32 %42 to i64
  %arrayidx59 = getelementptr inbounds i8, i8* %41, i64 %idxprom58
  %43 = load i8, i8* %arrayidx59, align 1
  %conv60 = sext i8 %43 to i32
  %cmp61 = icmp ne i32 %conv60, 41
  br label %land.end63

land.end63:                                       ; preds = %land.rhs57, %while.cond54
  %44 = phi i1 [ false, %while.cond54 ], [ %cmp61, %land.rhs57 ]
  br i1 %44, label %while.body64, label %while.end66

while.body64:                                     ; preds = %land.end63
  call void @movePos(i32 1)
  %45 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token, align 8
  %call65 = call %struct.sAdaTokenInfo* @adaParseVariables(%struct.sAdaTokenInfo* %45, i32 23)
  br label %while.cond54

while.end66:                                      ; preds = %land.end63
  call void @movePos(i32 1)
  br label %if.end

if.end:                                           ; preds = %while.end66, %land.lhs.true47, %if.then44
  br label %if.end67

if.end67:                                         ; preds = %if.end, %land.lhs.true41, %while.end
  br label %if.end68

if.end68:                                         ; preds = %if.end67, %land.lhs.true26, %land.lhs.true20, %for.end
  br label %while.cond69

while.cond69:                                     ; preds = %if.end101, %if.end68
  %46 = load i32, i32* @exception, align 4
  %cmp70 = icmp ne i32 %46, 1
  br i1 %cmp70, label %land.rhs72, label %land.end75

land.rhs72:                                       ; preds = %while.cond69
  %47 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token, align 8
  %cmp73 = icmp ne %struct.sAdaTokenInfo* %47, null
  br label %land.end75

land.end75:                                       ; preds = %land.rhs72, %while.cond69
  %48 = phi i1 [ false, %while.cond69 ], [ %cmp73, %land.rhs72 ]
  br i1 %48, label %while.body76, label %while.end102

while.body76:                                     ; preds = %land.end75
  call void @skipWhiteSpace()
  %call77 = call zeroext i1 @adaKeywordCmp(i32 17)
  br i1 %call77, label %if.then78, label %if.else87

if.then78:                                        ; preds = %while.body76
  call void @skipWhiteSpace()
  %call79 = call zeroext i1 @adaKeywordCmp(i32 29)
  br i1 %call79, label %if.then80, label %if.else

if.then80:                                        ; preds = %if.then78
  %49 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %parent.addr, align 8
  %children = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %49, i32 0, i32 8
  %50 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token, align 8
  call void @freeAdaToken(%struct.sAdaTokenList* %children, %struct.sAdaTokenInfo* %50)
  store %struct.sAdaTokenInfo* null, %struct.sAdaTokenInfo** %token, align 8
  call void @skipPast(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i64 0, i64 0))
  br label %if.end86

if.else:                                          ; preds = %if.then78
  %call81 = call zeroext i1 @adaKeywordCmp(i32 19)
  br i1 %call81, label %if.then82, label %if.else83

if.then82:                                        ; preds = %if.else
  call void @skipPast(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i64 0, i64 0))
  br label %if.end85

if.else83:                                        ; preds = %if.else
  %51 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token, align 8
  %call84 = call %struct.sAdaTokenInfo* @adaParse(i32 1, %struct.sAdaTokenInfo* %51)
  br label %if.end85

if.end85:                                         ; preds = %if.else83, %if.then82
  br label %if.end86

if.end86:                                         ; preds = %if.end85, %if.then80
  br label %while.end102

if.else87:                                        ; preds = %while.body76
  %call88 = call zeroext i1 @adaKeywordCmp(i32 27)
  br i1 %call88, label %if.then89, label %if.else90

if.then89:                                        ; preds = %if.else87
  call void @skipPast(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i64 0, i64 0))
  br label %while.end102

if.else90:                                        ; preds = %if.else87
  %call91 = call zeroext i1 @adaKeywordCmp(i32 6)
  br i1 %call91, label %if.then92, label %if.else94

if.then92:                                        ; preds = %if.else90
  %52 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token, align 8
  %call93 = call %struct.sAdaTokenInfo* @adaParse(i32 2, %struct.sAdaTokenInfo* %52)
  br label %while.end102

if.else94:                                        ; preds = %if.else90
  %call95 = call zeroext i1 @adaCmp(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i64 0, i64 0))
  br i1 %call95, label %if.then96, label %if.else97

if.then96:                                        ; preds = %if.else94
  %53 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token, align 8
  %isSpec = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %53, i32 0, i32 1
  store i8 1, i8* %isSpec, align 4
  br label %while.end102

if.else97:                                        ; preds = %if.else94
  call void @movePos(i32 1)
  call void @skipPastWord()
  br label %if.end98

if.end98:                                         ; preds = %if.else97
  br label %if.end99

if.end99:                                         ; preds = %if.end98
  br label %if.end100

if.end100:                                        ; preds = %if.end99
  br label %if.end101

if.end101:                                        ; preds = %if.end100
  br label %while.cond69

while.end102:                                     ; preds = %if.then96, %if.then92, %if.then89, %if.end86, %land.end75
  %54 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token, align 8
  ret %struct.sAdaTokenInfo* %54
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @movePos(i32 %amount) #0 {
entry:
  %amount.addr = alloca i32, align 4
  store i32 %amount, i32* %amount.addr, align 4
  %0 = load i32, i32* %amount.addr, align 4
  %1 = load i32, i32* @pos, align 4
  %add = add nsw i32 %1, %0
  store i32 %add, i32* @pos, align 4
  %2 = load i32, i32* @exception, align 4
  %cmp = icmp ne i32 %2, 1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* @pos, align 4
  %4 = load i32, i32* @lineLen, align 4
  %cmp1 = icmp sge i32 %3, %4
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @readNewLine()
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @isspace(i32) #5

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct.sAdaTokenInfo* @newAdaToken(i8* %name, i32 %len, i32 %kind, i1 zeroext %isSpec, %struct.sAdaTokenInfo* %parent) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %kind.addr = alloca i32, align 4
  %isSpec.addr = alloca i8, align 1
  %parent.addr = alloca %struct.sAdaTokenInfo*, align 8
  %tmpName = alloca i8*, align 8
  %token = alloca %struct.sAdaTokenInfo*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store i32 %kind, i32* %kind.addr, align 4
  %frombool = zext i1 %isSpec to i8
  store i8 %frombool, i8* %isSpec.addr, align 1
  store %struct.sAdaTokenInfo* %parent, %struct.sAdaTokenInfo** %parent.addr, align 8
  store i8* null, i8** %tmpName, align 8
  %call = call i8* @eMalloc(i64 408)
  %0 = bitcast i8* %call to %struct.sAdaTokenInfo*
  store %struct.sAdaTokenInfo* %0, %struct.sAdaTokenInfo** %token, align 8
  %1 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token, align 8
  %name1 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %1, i32 0, i32 3
  store i8* null, i8** %name1, align 8
  %2 = load i8*, i8** %name.addr, align 8
  %cmp = icmp ne i8* %2, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* %len.addr, align 4
  %cmp2 = icmp ne i32 %3, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %4 = load i32, i32* %len.addr, align 4
  %add = add nsw i32 %4, 1
  %conv = sext i32 %add to i64
  %mul = mul i64 %conv, 1
  %call3 = call i8* @eMalloc(i64 %mul)
  store i8* %call3, i8** %tmpName, align 8
  %5 = load i8*, i8** %tmpName, align 8
  %6 = load i8*, i8** %name.addr, align 8
  %7 = load i32, i32* %len.addr, align 4
  %conv4 = sext i32 %7 to i64
  %call5 = call i8* @strncpy(i8* %5, i8* %6, i64 %conv4)
  %8 = load i8*, i8** %tmpName, align 8
  %9 = load i32, i32* %len.addr, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %10 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token, align 8
  %tag = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %10, i32 0, i32 4
  %11 = load i8*, i8** %tmpName, align 8
  call void @initTagEntry(%struct.sTagEntryInfo* %tag, i8* %11, i32 -1)
  %12 = load i32, i32* %kind.addr, align 4
  %13 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token, align 8
  %kind6 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %13, i32 0, i32 0
  store i32 %12, i32* %kind6, align 8
  %14 = load i8, i8* %isSpec.addr, align 1
  %tobool = trunc i8 %14 to i1
  %15 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token, align 8
  %isSpec7 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %15, i32 0, i32 1
  %frombool8 = zext i1 %tobool to i8
  store i8 %frombool8, i8* %isSpec7, align 4
  %16 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token, align 8
  %isPrivate = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %16, i32 0, i32 2
  store i8 0, i8* %isPrivate, align 1
  %17 = load i8*, i8** %tmpName, align 8
  %18 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token, align 8
  %name9 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %18, i32 0, i32 3
  store i8* %17, i8** %name9, align 8
  %19 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %parent.addr, align 8
  %20 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token, align 8
  %parent10 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %20, i32 0, i32 5
  store %struct.sAdaTokenInfo* %19, %struct.sAdaTokenInfo** %parent10, align 8
  %21 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %parent.addr, align 8
  %cmp11 = icmp ne %struct.sAdaTokenInfo* %21, null
  br i1 %cmp11, label %land.lhs.true13, label %if.else

land.lhs.true13:                                  ; preds = %if.end
  %22 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %parent.addr, align 8
  %isPrivate14 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %22, i32 0, i32 2
  %23 = load i8, i8* %isPrivate14, align 1
  %tobool15 = trunc i8 %23 to i1
  %conv16 = zext i1 %tobool15 to i32
  %cmp17 = icmp eq i32 %conv16, 0
  br i1 %cmp17, label %land.lhs.true19, label %if.else

land.lhs.true19:                                  ; preds = %land.lhs.true13
  %24 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %parent.addr, align 8
  %kind20 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %24, i32 0, i32 0
  %25 = load i32, i32* %kind20, align 8
  %cmp21 = icmp eq i32 %25, -1
  br i1 %cmp21, label %if.then48, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true19
  %26 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %parent.addr, align 8
  %kind23 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %26, i32 0, i32 0
  %27 = load i32, i32* %kind23, align 8
  %cmp24 = icmp eq i32 %27, 25
  br i1 %cmp24, label %if.then48, label %lor.lhs.false26

lor.lhs.false26:                                  ; preds = %lor.lhs.false
  %28 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %parent.addr, align 8
  %isSpec27 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %28, i32 0, i32 1
  %29 = load i8, i8* %isSpec27, align 4
  %tobool28 = trunc i8 %29 to i1
  %conv29 = zext i1 %tobool28 to i32
  %cmp30 = icmp eq i32 %conv29, 1
  br i1 %cmp30, label %land.lhs.true32, label %if.else

land.lhs.true32:                                  ; preds = %lor.lhs.false26
  %30 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %parent.addr, align 8
  %kind33 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %30, i32 0, i32 0
  %31 = load i32, i32* %kind33, align 8
  %cmp34 = icmp eq i32 %31, 1
  br i1 %cmp34, label %if.then48, label %lor.lhs.false36

lor.lhs.false36:                                  ; preds = %land.lhs.true32
  %32 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %parent.addr, align 8
  %kind37 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %32, i32 0, i32 0
  %33 = load i32, i32* %kind37, align 8
  %cmp38 = icmp eq i32 %33, 14
  br i1 %cmp38, label %if.then48, label %lor.lhs.false40

lor.lhs.false40:                                  ; preds = %lor.lhs.false36
  %34 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %parent.addr, align 8
  %kind41 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %34, i32 0, i32 0
  %35 = load i32, i32* %kind41, align 8
  %cmp42 = icmp eq i32 %35, 18
  br i1 %cmp42, label %if.then48, label %lor.lhs.false44

lor.lhs.false44:                                  ; preds = %lor.lhs.false40
  %36 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %parent.addr, align 8
  %kind45 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %36, i32 0, i32 0
  %37 = load i32, i32* %kind45, align 8
  %cmp46 = icmp eq i32 %37, 16
  br i1 %cmp46, label %if.then48, label %if.else

if.then48:                                        ; preds = %lor.lhs.false44, %lor.lhs.false40, %lor.lhs.false36, %land.lhs.true32, %lor.lhs.false, %land.lhs.true19
  %38 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token, align 8
  %tag49 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %38, i32 0, i32 4
  %39 = bitcast %struct.sTagEntryInfo* %tag49 to i8*
  %bf.load = load i8, i8* %39, align 8
  %bf.clear = and i8 %bf.load, -3
  store i8 %bf.clear, i8* %39, align 8
  br label %if.end54

if.else:                                          ; preds = %lor.lhs.false44, %lor.lhs.false26, %land.lhs.true13, %if.end
  %40 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token, align 8
  %tag50 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %40, i32 0, i32 4
  call void @markTagExtraBit(%struct.sTagEntryInfo* %tag50, i32 0)
  %41 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token, align 8
  %tag51 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %41, i32 0, i32 4
  %42 = bitcast %struct.sTagEntryInfo* %tag51 to i8*
  %bf.load52 = load i8, i8* %42, align 8
  %bf.clear53 = and i8 %bf.load52, -3
  %bf.set = or i8 %bf.clear53, 2
  store i8 %bf.set, i8* %42, align 8
  br label %if.end54

if.end54:                                         ; preds = %if.else, %if.then48
  %43 = load i32, i32* %kind.addr, align 4
  %cmp55 = icmp sgt i32 %43, -1
  br i1 %cmp55, label %if.then57, label %if.else59

if.then57:                                        ; preds = %if.end54
  %44 = load i32, i32* %kind.addr, align 4
  %45 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token, align 8
  %tag58 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %45, i32 0, i32 4
  %kindIndex = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %tag58, i32 0, i32 8
  store i32 %44, i32* %kindIndex, align 8
  br label %if.end62

if.else59:                                        ; preds = %if.end54
  %46 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token, align 8
  %tag60 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %46, i32 0, i32 4
  %kindIndex61 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %tag60, i32 0, i32 8
  store i32 -1, i32* %kindIndex61, align 8
  br label %if.end62

if.end62:                                         ; preds = %if.else59, %if.then57
  %47 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token, align 8
  %children = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %47, i32 0, i32 8
  call void @initAdaTokenList(%struct.sAdaTokenList* %children)
  %48 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %parent.addr, align 8
  %49 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token, align 8
  call void @appendAdaToken(%struct.sAdaTokenInfo* %48, %struct.sAdaTokenInfo* %49)
  %50 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token, align 8
  ret %struct.sAdaTokenInfo* %50
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @appendAdaTokenList(%struct.sAdaTokenInfo* %parent, %struct.sAdaTokenList* %children) #0 {
entry:
  %parent.addr = alloca %struct.sAdaTokenInfo*, align 8
  %children.addr = alloca %struct.sAdaTokenList*, align 8
  %tmp = alloca %struct.sAdaTokenInfo*, align 8
  store %struct.sAdaTokenInfo* %parent, %struct.sAdaTokenInfo** %parent.addr, align 8
  store %struct.sAdaTokenList* %children, %struct.sAdaTokenList** %children.addr, align 8
  store %struct.sAdaTokenInfo* null, %struct.sAdaTokenInfo** %tmp, align 8
  %0 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %parent.addr, align 8
  %cmp = icmp ne %struct.sAdaTokenInfo* %0, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.sAdaTokenList*, %struct.sAdaTokenList** %children.addr, align 8
  %cmp1 = icmp ne %struct.sAdaTokenList* %1, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %2 = load %struct.sAdaTokenList*, %struct.sAdaTokenList** %children.addr, align 8
  %head = getelementptr inbounds %struct.sAdaTokenList, %struct.sAdaTokenList* %2, i32 0, i32 1
  %3 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %head, align 8
  %cmp2 = icmp ne %struct.sAdaTokenInfo* %3, null
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct.sAdaTokenList*, %struct.sAdaTokenList** %children.addr, align 8
  %head3 = getelementptr inbounds %struct.sAdaTokenList, %struct.sAdaTokenList* %4, i32 0, i32 1
  %5 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %head3, align 8
  %next = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %5, i32 0, i32 7
  %6 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %next, align 8
  store %struct.sAdaTokenInfo* %6, %struct.sAdaTokenInfo** %tmp, align 8
  %7 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %parent.addr, align 8
  %8 = load %struct.sAdaTokenList*, %struct.sAdaTokenList** %children.addr, align 8
  %head4 = getelementptr inbounds %struct.sAdaTokenList, %struct.sAdaTokenList* %8, i32 0, i32 1
  %9 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %head4, align 8
  call void @appendAdaToken(%struct.sAdaTokenInfo* %7, %struct.sAdaTokenInfo* %9)
  %10 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %tmp, align 8
  %11 = load %struct.sAdaTokenList*, %struct.sAdaTokenList** %children.addr, align 8
  %head5 = getelementptr inbounds %struct.sAdaTokenList, %struct.sAdaTokenList* %11, i32 0, i32 1
  store %struct.sAdaTokenInfo* %10, %struct.sAdaTokenInfo** %head5, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %12 = load %struct.sAdaTokenList*, %struct.sAdaTokenList** %children.addr, align 8
  call void @initAdaTokenList(%struct.sAdaTokenList* %12)
  br label %if.end

if.end:                                           ; preds = %while.end, %land.lhs.true, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @appendAdaToken(%struct.sAdaTokenInfo* %parent, %struct.sAdaTokenInfo* %token) #0 {
entry:
  %parent.addr = alloca %struct.sAdaTokenInfo*, align 8
  %token.addr = alloca %struct.sAdaTokenInfo*, align 8
  store %struct.sAdaTokenInfo* %parent, %struct.sAdaTokenInfo** %parent.addr, align 8
  store %struct.sAdaTokenInfo* %token, %struct.sAdaTokenInfo** %token.addr, align 8
  %0 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %parent.addr, align 8
  %cmp = icmp ne %struct.sAdaTokenInfo* %0, null
  br i1 %cmp, label %land.lhs.true, label %if.end19

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token.addr, align 8
  %cmp1 = icmp ne %struct.sAdaTokenInfo* %1, null
  br i1 %cmp1, label %if.then, label %if.end19

if.then:                                          ; preds = %land.lhs.true
  %2 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %parent.addr, align 8
  %children = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %2, i32 0, i32 8
  %numTokens = getelementptr inbounds %struct.sAdaTokenList, %struct.sAdaTokenList* %children, i32 0, i32 0
  %3 = load i32, i32* %numTokens, align 8
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %numTokens, align 8
  %4 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %parent.addr, align 8
  %5 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token.addr, align 8
  %parent2 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %5, i32 0, i32 5
  store %struct.sAdaTokenInfo* %4, %struct.sAdaTokenInfo** %parent2, align 8
  %6 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %parent.addr, align 8
  %children3 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %6, i32 0, i32 8
  %tail = getelementptr inbounds %struct.sAdaTokenList, %struct.sAdaTokenList* %children3, i32 0, i32 2
  %7 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %tail, align 8
  %8 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token.addr, align 8
  %prev = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %8, i32 0, i32 6
  store %struct.sAdaTokenInfo* %7, %struct.sAdaTokenInfo** %prev, align 8
  %9 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token.addr, align 8
  %next = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %9, i32 0, i32 7
  store %struct.sAdaTokenInfo* null, %struct.sAdaTokenInfo** %next, align 8
  %10 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %parent.addr, align 8
  %children4 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %10, i32 0, i32 8
  %tail5 = getelementptr inbounds %struct.sAdaTokenList, %struct.sAdaTokenList* %children4, i32 0, i32 2
  %11 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %tail5, align 8
  %cmp6 = icmp ne %struct.sAdaTokenInfo* %11, null
  br i1 %cmp6, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.then
  %12 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token.addr, align 8
  %13 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %parent.addr, align 8
  %children8 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %13, i32 0, i32 8
  %tail9 = getelementptr inbounds %struct.sAdaTokenList, %struct.sAdaTokenList* %children8, i32 0, i32 2
  %14 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %tail9, align 8
  %next10 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %14, i32 0, i32 7
  store %struct.sAdaTokenInfo* %12, %struct.sAdaTokenInfo** %next10, align 8
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then
  %15 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token.addr, align 8
  %16 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %parent.addr, align 8
  %children11 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %16, i32 0, i32 8
  %tail12 = getelementptr inbounds %struct.sAdaTokenList, %struct.sAdaTokenList* %children11, i32 0, i32 2
  store %struct.sAdaTokenInfo* %15, %struct.sAdaTokenInfo** %tail12, align 8
  %17 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %parent.addr, align 8
  %children13 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %17, i32 0, i32 8
  %head = getelementptr inbounds %struct.sAdaTokenList, %struct.sAdaTokenList* %children13, i32 0, i32 1
  %18 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %head, align 8
  %cmp14 = icmp eq %struct.sAdaTokenInfo* %18, null
  br i1 %cmp14, label %if.then15, label %if.end18

if.then15:                                        ; preds = %if.end
  %19 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token.addr, align 8
  %20 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %parent.addr, align 8
  %children16 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %20, i32 0, i32 8
  %head17 = getelementptr inbounds %struct.sAdaTokenList, %struct.sAdaTokenList* %children16, i32 0, i32 1
  store %struct.sAdaTokenInfo* %19, %struct.sAdaTokenInfo** %head17, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.end
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %land.lhs.true, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @skipUntilWhiteSpace() #0 {
entry:
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* @exception, align 4
  %cmp = icmp ne i32 %0, 1
  br i1 %cmp, label %land.rhs, label %land.end17

land.rhs:                                         ; preds = %while.cond
  %1 = load i32, i32* @pos, align 4
  %cmp1 = icmp eq i32 %1, 0
  br i1 %cmp1, label %land.lhs.true8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.rhs
  %2 = load i8*, i8** @line, align 8
  %3 = load i32, i32* @pos, align 4
  %sub = sub nsw i32 %3, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %4 to i32
  %call = call i32 @isalnum(i32 %conv) #8
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false
  %5 = load i8*, i8** @line, align 8
  %6 = load i32, i32* @pos, align 4
  %sub2 = sub nsw i32 %6, 1
  %idxprom3 = sext i32 %sub2 to i64
  %arrayidx4 = getelementptr inbounds i8, i8* %5, i64 %idxprom3
  %7 = load i8, i8* %arrayidx4, align 1
  %conv5 = sext i8 %7 to i32
  %cmp6 = icmp ne i32 %conv5, 95
  br i1 %cmp6, label %land.lhs.true8, label %land.end

land.lhs.true8:                                   ; preds = %land.lhs.true, %land.rhs
  %8 = load i32, i32* @pos, align 4
  %9 = load i32, i32* @lineLen, align 4
  %cmp9 = icmp slt i32 %8, %9
  br i1 %cmp9, label %land.rhs11, label %land.end

land.rhs11:                                       ; preds = %land.lhs.true8
  %10 = load i8*, i8** @line, align 8
  %11 = load i32, i32* @pos, align 4
  %idxprom12 = sext i32 %11 to i64
  %arrayidx13 = getelementptr inbounds i8, i8* %10, i64 %idxprom12
  %call14 = call i32 @strncasecmp(i8* %arrayidx13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0), i64 2)
  %cmp15 = icmp eq i32 %call14, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs11, %land.lhs.true8, %land.lhs.true, %lor.lhs.false
  %12 = phi i1 [ false, %land.lhs.true8 ], [ false, %land.lhs.true ], [ false, %lor.lhs.false ], [ %cmp15, %land.rhs11 ]
  br label %land.end17

land.end17:                                       ; preds = %land.end, %while.cond
  %13 = phi i1 [ false, %while.cond ], [ %12, %land.end ]
  br i1 %13, label %while.body, label %while.end

while.body:                                       ; preds = %land.end17
  call void @readNewLine()
  br label %while.cond

while.end:                                        ; preds = %land.end17
  br label %while.cond18

while.cond18:                                     ; preds = %while.end70, %while.end
  %14 = load i32, i32* @exception, align 4
  %cmp19 = icmp ne i32 %14, 1
  br i1 %cmp19, label %land.rhs21, label %land.end27

land.rhs21:                                       ; preds = %while.cond18
  %15 = load i8*, i8** @line, align 8
  %16 = load i32, i32* @pos, align 4
  %idxprom22 = sext i32 %16 to i64
  %arrayidx23 = getelementptr inbounds i8, i8* %15, i64 %idxprom22
  %17 = load i8, i8* %arrayidx23, align 1
  %conv24 = sext i8 %17 to i32
  %call25 = call i32 @isspace(i32 %conv24) #8
  %tobool26 = icmp ne i32 %call25, 0
  %lnot = xor i1 %tobool26, true
  br label %land.end27

land.end27:                                       ; preds = %land.rhs21, %while.cond18
  %18 = phi i1 [ false, %while.cond18 ], [ %lnot, %land.rhs21 ]
  br i1 %18, label %while.body28, label %while.end71

while.body28:                                     ; preds = %land.end27
  %19 = load i32, i32* @pos, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* @pos, align 4
  %20 = load i32, i32* @pos, align 4
  %21 = load i32, i32* @lineLen, align 4
  %cmp29 = icmp sge i32 %20, %21
  br i1 %cmp29, label %if.then, label %if.end37

if.then:                                          ; preds = %while.body28
  %call31 = call i8* @readLineFromInputFile()
  store i8* %call31, i8** @line, align 8
  store i32 0, i32* @pos, align 4
  %22 = load i8*, i8** @line, align 8
  %cmp32 = icmp eq i8* %22, null
  br i1 %cmp32, label %if.then34, label %if.end

if.then34:                                        ; preds = %if.then
  store i32 0, i32* @lineLen, align 4
  store i32 1, i32* @exception, align 4
  br label %while.end71

if.end:                                           ; preds = %if.then
  %23 = load i8*, i8** @line, align 8
  %call35 = call i64 @strlen(i8* %23)
  %conv36 = trunc i64 %call35 to i32
  store i32 %conv36, i32* @lineLen, align 4
  br label %while.end71

if.end37:                                         ; preds = %while.body28
  br label %while.cond38

while.cond38:                                     ; preds = %while.body69, %if.end37
  %24 = load i32, i32* @exception, align 4
  %cmp39 = icmp ne i32 %24, 1
  br i1 %cmp39, label %land.rhs41, label %land.end68

land.rhs41:                                       ; preds = %while.cond38
  %25 = load i32, i32* @pos, align 4
  %cmp42 = icmp eq i32 %25, 0
  br i1 %cmp42, label %land.lhs.true58, label %lor.lhs.false44

lor.lhs.false44:                                  ; preds = %land.rhs41
  %26 = load i8*, i8** @line, align 8
  %27 = load i32, i32* @pos, align 4
  %sub45 = sub nsw i32 %27, 1
  %idxprom46 = sext i32 %sub45 to i64
  %arrayidx47 = getelementptr inbounds i8, i8* %26, i64 %idxprom46
  %28 = load i8, i8* %arrayidx47, align 1
  %conv48 = sext i8 %28 to i32
  %call49 = call i32 @isalnum(i32 %conv48) #8
  %tobool50 = icmp ne i32 %call49, 0
  br i1 %tobool50, label %land.end67, label %land.lhs.true51

land.lhs.true51:                                  ; preds = %lor.lhs.false44
  %29 = load i8*, i8** @line, align 8
  %30 = load i32, i32* @pos, align 4
  %sub52 = sub nsw i32 %30, 1
  %idxprom53 = sext i32 %sub52 to i64
  %arrayidx54 = getelementptr inbounds i8, i8* %29, i64 %idxprom53
  %31 = load i8, i8* %arrayidx54, align 1
  %conv55 = sext i8 %31 to i32
  %cmp56 = icmp ne i32 %conv55, 95
  br i1 %cmp56, label %land.lhs.true58, label %land.end67

land.lhs.true58:                                  ; preds = %land.lhs.true51, %land.rhs41
  %32 = load i32, i32* @pos, align 4
  %33 = load i32, i32* @lineLen, align 4
  %cmp59 = icmp slt i32 %32, %33
  br i1 %cmp59, label %land.rhs61, label %land.end67

land.rhs61:                                       ; preds = %land.lhs.true58
  %34 = load i8*, i8** @line, align 8
  %35 = load i32, i32* @pos, align 4
  %idxprom62 = sext i32 %35 to i64
  %arrayidx63 = getelementptr inbounds i8, i8* %34, i64 %idxprom62
  %call64 = call i32 @strncasecmp(i8* %arrayidx63, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0), i64 2)
  %cmp65 = icmp eq i32 %call64, 0
  br label %land.end67

land.end67:                                       ; preds = %land.rhs61, %land.lhs.true58, %land.lhs.true51, %lor.lhs.false44
  %36 = phi i1 [ false, %land.lhs.true58 ], [ false, %land.lhs.true51 ], [ false, %lor.lhs.false44 ], [ %cmp65, %land.rhs61 ]
  br label %land.end68

land.end68:                                       ; preds = %land.end67, %while.cond38
  %37 = phi i1 [ false, %while.cond38 ], [ %36, %land.end67 ]
  br i1 %37, label %while.body69, label %while.end70

while.body69:                                     ; preds = %land.end68
  call void @readNewLine()
  br label %while.cond38

while.end70:                                      ; preds = %land.end68
  br label %while.cond18

while.end71:                                      ; preds = %if.then34, %if.end, %land.end27
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct.sAdaTokenInfo* @adaParseVariables(%struct.sAdaTokenInfo* %parent, i32 %kind) #0 {
entry:
  %parent.addr = alloca %struct.sAdaTokenInfo*, align 8
  %kind.addr = alloca i32, align 4
  %varEndPos = alloca i32, align 4
  %tokenStart = alloca i32, align 4
  %token = alloca %struct.sAdaTokenInfo*, align 8
  %i = alloca i32, align 4
  %bufPos = alloca i32, align 4
  %bufLen = alloca i32, align 4
  %buf = alloca i8*, align 8
  %lineNum = alloca i64, align 8
  %filePosIndex = alloca i32, align 4
  %filePosSize = alloca i32, align 4
  %filePos = alloca %struct._MIOPos*, align 8
  %tmp = alloca %struct._MIOPos, align 8
  %tmp216 = alloca %struct._MIOPos, align 8
  store %struct.sAdaTokenInfo* %parent, %struct.sAdaTokenInfo** %parent.addr, align 8
  store i32 %kind, i32* %kind.addr, align 4
  store i32 -1, i32* %varEndPos, align 4
  store i32 -1, i32* %tokenStart, align 4
  store %struct.sAdaTokenInfo* null, %struct.sAdaTokenInfo** %token, align 8
  store i32 0, i32* %i, align 4
  store i32 0, i32* %bufPos, align 4
  store i32 0, i32* %bufLen, align 4
  store i8* null, i8** %buf, align 8
  store i32 0, i32* %filePosIndex, align 4
  store i32 32, i32* %filePosSize, align 4
  %0 = load i32, i32* %filePosSize, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 %conv, 16
  %call = call i8* @eMalloc(i64 %mul)
  %1 = bitcast i8* %call to %struct._MIOPos*
  store %struct._MIOPos* %1, %struct._MIOPos** %filePos, align 8
  call void @skipWhiteSpace()
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i32, i32* @exception, align 4
  %cmp = icmp ne i32 %2, 1
  br i1 %cmp, label %land.rhs, label %land.end21

land.rhs:                                         ; preds = %while.cond
  %3 = load i32, i32* @pos, align 4
  %cmp2 = icmp eq i32 %3, 0
  br i1 %cmp2, label %land.lhs.true12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.rhs
  %4 = load i8*, i8** @line, align 8
  %5 = load i32, i32* @pos, align 4
  %sub = sub nsw i32 %5, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1
  %conv4 = sext i8 %6 to i32
  %call5 = call i32 @isalnum(i32 %conv4) #8
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false
  %7 = load i8*, i8** @line, align 8
  %8 = load i32, i32* @pos, align 4
  %sub6 = sub nsw i32 %8, 1
  %idxprom7 = sext i32 %sub6 to i64
  %arrayidx8 = getelementptr inbounds i8, i8* %7, i64 %idxprom7
  %9 = load i8, i8* %arrayidx8, align 1
  %conv9 = sext i8 %9 to i32
  %cmp10 = icmp ne i32 %conv9, 95
  br i1 %cmp10, label %land.lhs.true12, label %land.end

land.lhs.true12:                                  ; preds = %land.lhs.true, %land.rhs
  %10 = load i32, i32* @pos, align 4
  %11 = load i32, i32* @lineLen, align 4
  %cmp13 = icmp slt i32 %10, %11
  br i1 %cmp13, label %land.rhs15, label %land.end

land.rhs15:                                       ; preds = %land.lhs.true12
  %12 = load i8*, i8** @line, align 8
  %13 = load i32, i32* @pos, align 4
  %idxprom16 = sext i32 %13 to i64
  %arrayidx17 = getelementptr inbounds i8, i8* %12, i64 %idxprom16
  %call18 = call i32 @strncasecmp(i8* %arrayidx17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0), i64 2)
  %cmp19 = icmp eq i32 %call18, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs15, %land.lhs.true12, %land.lhs.true, %lor.lhs.false
  %14 = phi i1 [ false, %land.lhs.true12 ], [ false, %land.lhs.true ], [ false, %lor.lhs.false ], [ %cmp19, %land.rhs15 ]
  br label %land.end21

land.end21:                                       ; preds = %land.end, %while.cond
  %15 = phi i1 [ false, %while.cond ], [ %14, %land.end ]
  br i1 %15, label %while.body, label %while.end

while.body:                                       ; preds = %land.end21
  call void @readNewLine()
  br label %while.cond

while.end:                                        ; preds = %land.end21
  %call22 = call i64 @getInputLineNumber()
  store i64 %call22, i64* %lineNum, align 8
  %16 = load %struct._MIOPos*, %struct._MIOPos** %filePos, align 8
  %17 = load i32, i32* %filePosIndex, align 4
  %idxprom23 = sext i32 %17 to i64
  %arrayidx24 = getelementptr inbounds %struct._MIOPos, %struct._MIOPos* %16, i64 %idxprom23
  %call25 = call [2 x i64] @getInputFilePosition()
  %18 = bitcast %struct._MIOPos* %tmp to [2 x i64]*
  store [2 x i64] %call25, [2 x i64]* %18, align 8
  %19 = bitcast %struct._MIOPos* %arrayidx24 to i8*
  %20 = bitcast %struct._MIOPos* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 %20, i64 16, i1 false)
  %21 = load i32, i32* @lineLen, align 4
  %22 = load i32, i32* @pos, align 4
  %sub26 = sub nsw i32 %21, %22
  store i32 %sub26, i32* %bufLen, align 4
  %23 = load i32, i32* %bufLen, align 4
  %add = add nsw i32 %23, 1
  %conv27 = sext i32 %add to i64
  %mul28 = mul i64 %conv27, 1
  %call29 = call i8* @eMalloc(i64 %mul28)
  store i8* %call29, i8** %buf, align 8
  %24 = load i8*, i8** %buf, align 8
  %25 = load i8*, i8** @line, align 8
  %26 = load i32, i32* @pos, align 4
  %idxprom30 = sext i32 %26 to i64
  %arrayidx31 = getelementptr inbounds i8, i8* %25, i64 %idxprom30
  %27 = load i32, i32* %bufLen, align 4
  %conv32 = sext i32 %27 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %24, i8* align 1 %arrayidx31, i64 %conv32, i1 false)
  %28 = load i8*, i8** %buf, align 8
  %29 = load i32, i32* %bufLen, align 4
  %idxprom33 = sext i32 %29 to i64
  %arrayidx34 = getelementptr inbounds i8, i8* %28, i64 %idxprom33
  store i8 0, i8* %arrayidx34, align 1
  br label %while.cond35

while.cond35:                                     ; preds = %if.end230, %while.end
  %30 = load i32, i32* @exception, align 4
  %cmp36 = icmp ne i32 %30, 1
  br i1 %cmp36, label %while.body38, label %while.end231

while.body38:                                     ; preds = %while.cond35
  %31 = load i32, i32* %bufPos, align 4
  %cmp39 = icmp eq i32 %31, 0
  br i1 %cmp39, label %land.lhs.true55, label %lor.lhs.false41

lor.lhs.false41:                                  ; preds = %while.body38
  %32 = load i8*, i8** %buf, align 8
  %33 = load i32, i32* %bufPos, align 4
  %sub42 = sub nsw i32 %33, 1
  %idxprom43 = sext i32 %sub42 to i64
  %arrayidx44 = getelementptr inbounds i8, i8* %32, i64 %idxprom43
  %34 = load i8, i8* %arrayidx44, align 1
  %conv45 = sext i8 %34 to i32
  %call46 = call i32 @isalnum(i32 %conv45) #8
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %if.else, label %land.lhs.true48

land.lhs.true48:                                  ; preds = %lor.lhs.false41
  %35 = load i8*, i8** %buf, align 8
  %36 = load i32, i32* %bufPos, align 4
  %sub49 = sub nsw i32 %36, 1
  %idxprom50 = sext i32 %sub49 to i64
  %arrayidx51 = getelementptr inbounds i8, i8* %35, i64 %idxprom50
  %37 = load i8, i8* %arrayidx51, align 1
  %conv52 = sext i8 %37 to i32
  %cmp53 = icmp ne i32 %conv52, 95
  br i1 %cmp53, label %land.lhs.true55, label %if.else

land.lhs.true55:                                  ; preds = %land.lhs.true48, %while.body38
  %38 = load i32, i32* %bufPos, align 4
  %39 = load i32, i32* %bufLen, align 4
  %cmp56 = icmp slt i32 %38, %39
  br i1 %cmp56, label %land.lhs.true58, label %if.else

land.lhs.true58:                                  ; preds = %land.lhs.true55
  %40 = load i8*, i8** %buf, align 8
  %41 = load i32, i32* %bufPos, align 4
  %idxprom59 = sext i32 %41 to i64
  %arrayidx60 = getelementptr inbounds i8, i8* %40, i64 %idxprom59
  %call61 = call i32 @strncasecmp(i8* %arrayidx60, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0), i64 2)
  %cmp62 = icmp eq i32 %call61, 0
  br i1 %cmp62, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true58
  %42 = load i32, i32* %bufLen, align 4
  %sub64 = sub nsw i32 %42, 1
  store i32 %sub64, i32* %bufPos, align 4
  %43 = load i32, i32* %tokenStart, align 4
  %cmp65 = icmp ne i32 %43, -2
  br i1 %cmp65, label %if.then67, label %if.end

if.then67:                                        ; preds = %if.then
  store i32 -1, i32* %tokenStart, align 4
  br label %if.end

if.end:                                           ; preds = %if.then67, %if.then
  br label %if.end196

if.else:                                          ; preds = %land.lhs.true58, %land.lhs.true55, %land.lhs.true48, %lor.lhs.false41
  %44 = load i8*, i8** %buf, align 8
  %45 = load i32, i32* %bufPos, align 4
  %idxprom68 = sext i32 %45 to i64
  %arrayidx69 = getelementptr inbounds i8, i8* %44, i64 %idxprom68
  %46 = load i8, i8* %arrayidx69, align 1
  %conv70 = sext i8 %46 to i32
  %cmp71 = icmp eq i32 %conv70, 40
  br i1 %cmp71, label %if.then73, label %if.else74

if.then73:                                        ; preds = %if.else
  %47 = load i32, i32* %i, align 4
  %inc = add nsw i32 %47, 1
  store i32 %inc, i32* %i, align 4
  br label %if.end195

if.else74:                                        ; preds = %if.else
  %48 = load i8*, i8** %buf, align 8
  %49 = load i32, i32* %bufPos, align 4
  %idxprom75 = sext i32 %49 to i64
  %arrayidx76 = getelementptr inbounds i8, i8* %48, i64 %idxprom75
  %50 = load i8, i8* %arrayidx76, align 1
  %conv77 = sext i8 %50 to i32
  %cmp78 = icmp eq i32 %conv77, 41
  br i1 %cmp78, label %if.then80, label %if.else86

if.then80:                                        ; preds = %if.else74
  %51 = load i32, i32* %i, align 4
  %cmp81 = icmp eq i32 %51, 0
  br i1 %cmp81, label %if.then83, label %if.else84

if.then83:                                        ; preds = %if.then80
  br label %while.end231

if.else84:                                        ; preds = %if.then80
  %52 = load i32, i32* %i, align 4
  %dec = add nsw i32 %52, -1
  store i32 %dec, i32* %i, align 4
  br label %if.end85

if.end85:                                         ; preds = %if.else84
  br label %if.end194

if.else86:                                        ; preds = %if.else74
  %53 = load i8*, i8** %buf, align 8
  %54 = load i32, i32* %bufPos, align 4
  %idxprom87 = sext i32 %54 to i64
  %arrayidx88 = getelementptr inbounds i8, i8* %53, i64 %idxprom87
  %55 = load i8, i8* %arrayidx88, align 1
  %conv89 = sext i8 %55 to i32
  %cmp90 = icmp eq i32 %conv89, 59
  br i1 %cmp90, label %if.then108, label %lor.lhs.false92

lor.lhs.false92:                                  ; preds = %if.else86
  %56 = load i32, i32* %bufPos, align 4
  %add93 = add nsw i32 %56, 1
  %57 = load i32, i32* %bufLen, align 4
  %cmp94 = icmp slt i32 %add93, %57
  br i1 %cmp94, label %land.lhs.true96, label %if.else109

land.lhs.true96:                                  ; preds = %lor.lhs.false92
  %58 = load i8*, i8** %buf, align 8
  %59 = load i32, i32* %bufPos, align 4
  %idxprom97 = sext i32 %59 to i64
  %arrayidx98 = getelementptr inbounds i8, i8* %58, i64 %idxprom97
  %call99 = call i32 @strncasecmp(i8* %arrayidx98, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i64 0, i64 0), i64 2)
  %cmp100 = icmp eq i32 %call99, 0
  br i1 %cmp100, label %if.then108, label %lor.lhs.false102

lor.lhs.false102:                                 ; preds = %land.lhs.true96
  %60 = load i8*, i8** %buf, align 8
  %61 = load i32, i32* %bufPos, align 4
  %idxprom103 = sext i32 %61 to i64
  %arrayidx104 = getelementptr inbounds i8, i8* %60, i64 %idxprom103
  %call105 = call i32 @strncasecmp(i8* %arrayidx104, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.60, i64 0, i64 0), i64 2)
  %cmp106 = icmp eq i32 %call105, 0
  br i1 %cmp106, label %if.then108, label %if.else109

if.then108:                                       ; preds = %lor.lhs.false102, %land.lhs.true96, %if.else86
  br label %while.end231

if.else109:                                       ; preds = %lor.lhs.false102, %lor.lhs.false92
  %62 = load i8*, i8** %buf, align 8
  %63 = load i32, i32* %bufPos, align 4
  %idxprom110 = sext i32 %63 to i64
  %arrayidx111 = getelementptr inbounds i8, i8* %62, i64 %idxprom110
  %64 = load i8, i8* %arrayidx111, align 1
  %conv112 = sext i8 %64 to i32
  %cmp113 = icmp eq i32 %conv112, 58
  br i1 %cmp113, label %land.lhs.true115, label %if.else127

land.lhs.true115:                                 ; preds = %if.else109
  %65 = load i32, i32* %bufPos, align 4
  %add116 = add nsw i32 %65, 1
  %66 = load i32, i32* %bufLen, align 4
  %cmp117 = icmp sge i32 %add116, %66
  br i1 %cmp117, label %if.then126, label %lor.lhs.false119

lor.lhs.false119:                                 ; preds = %land.lhs.true115
  %67 = load i8*, i8** %buf, align 8
  %68 = load i32, i32* %bufPos, align 4
  %add120 = add nsw i32 %68, 1
  %idxprom121 = sext i32 %add120 to i64
  %arrayidx122 = getelementptr inbounds i8, i8* %67, i64 %idxprom121
  %69 = load i8, i8* %arrayidx122, align 1
  %conv123 = sext i8 %69 to i32
  %cmp124 = icmp ne i32 %conv123, 61
  br i1 %cmp124, label %if.then126, label %if.else127

if.then126:                                       ; preds = %lor.lhs.false119, %land.lhs.true115
  %70 = load i32, i32* %bufPos, align 4
  store i32 %70, i32* %varEndPos, align 4
  br label %if.end192

if.else127:                                       ; preds = %lor.lhs.false119, %if.else109
  %71 = load i32, i32* %kind.addr, align 4
  %cmp128 = icmp eq i32 %71, 9
  br i1 %cmp128, label %land.lhs.true130, label %if.else143

land.lhs.true130:                                 ; preds = %if.else127
  %72 = load i32, i32* %varEndPos, align 4
  %cmp131 = icmp ne i32 %72, -1
  br i1 %cmp131, label %land.lhs.true133, label %if.else143

land.lhs.true133:                                 ; preds = %land.lhs.true130
  %73 = load i8*, i8** %buf, align 8
  %74 = load i32, i32* %bufPos, align 4
  %idxprom134 = sext i32 %74 to i64
  %arrayidx135 = getelementptr inbounds i8, i8* %73, i64 %idxprom134
  %75 = load i8, i8* %arrayidx135, align 1
  %conv136 = sext i8 %75 to i32
  %call137 = call i32 @isspace(i32 %conv136) #8
  %tobool138 = icmp ne i32 %call137, 0
  br i1 %tobool138, label %if.else143, label %land.lhs.true139

land.lhs.true139:                                 ; preds = %land.lhs.true133
  %76 = load i32, i32* %tokenStart, align 4
  %cmp140 = icmp eq i32 %76, -1
  br i1 %cmp140, label %if.then142, label %if.else143

if.then142:                                       ; preds = %land.lhs.true139
  %77 = load i32, i32* %bufPos, align 4
  store i32 %77, i32* %tokenStart, align 4
  br label %if.end191

if.else143:                                       ; preds = %land.lhs.true139, %land.lhs.true133, %land.lhs.true130, %if.else127
  %78 = load i32, i32* %kind.addr, align 4
  %cmp144 = icmp eq i32 %78, 9
  br i1 %cmp144, label %land.lhs.true146, label %if.end190

land.lhs.true146:                                 ; preds = %if.else143
  %79 = load i32, i32* %varEndPos, align 4
  %cmp147 = icmp ne i32 %79, -1
  br i1 %cmp147, label %land.lhs.true149, label %if.end190

land.lhs.true149:                                 ; preds = %land.lhs.true146
  %80 = load i32, i32* %tokenStart, align 4
  %cmp150 = icmp sge i32 %80, 0
  br i1 %cmp150, label %land.lhs.true152, label %if.end190

land.lhs.true152:                                 ; preds = %land.lhs.true149
  %81 = load i32, i32* %bufPos, align 4
  %add153 = add nsw i32 %81, 1
  %82 = load i32, i32* %bufLen, align 4
  %cmp154 = icmp sge i32 %add153, %82
  br i1 %cmp154, label %if.then170, label %lor.lhs.false156

lor.lhs.false156:                                 ; preds = %land.lhs.true152
  %83 = load i8*, i8** %buf, align 8
  %84 = load i32, i32* %bufPos, align 4
  %add157 = add nsw i32 %84, 1
  %idxprom158 = sext i32 %add157 to i64
  %arrayidx159 = getelementptr inbounds i8, i8* %83, i64 %idxprom158
  %85 = load i8, i8* %arrayidx159, align 1
  %conv160 = sext i8 %85 to i32
  %call161 = call i32 @isspace(i32 %conv160) #8
  %tobool162 = icmp ne i32 %call161, 0
  br i1 %tobool162, label %if.then170, label %lor.lhs.false163

lor.lhs.false163:                                 ; preds = %lor.lhs.false156
  %86 = load i8*, i8** %buf, align 8
  %87 = load i32, i32* %bufPos, align 4
  %add164 = add nsw i32 %87, 1
  %idxprom165 = sext i32 %add164 to i64
  %arrayidx166 = getelementptr inbounds i8, i8* %86, i64 %idxprom165
  %88 = load i8, i8* %arrayidx166, align 1
  %conv167 = sext i8 %88 to i32
  %cmp168 = icmp eq i32 %conv167, 59
  br i1 %cmp168, label %if.then170, label %if.end190

if.then170:                                       ; preds = %lor.lhs.false163, %lor.lhs.false156, %land.lhs.true152
  %89 = load i8*, i8** %buf, align 8
  %90 = load i32, i32* %tokenStart, align 4
  %idxprom171 = sext i32 %90 to i64
  %arrayidx172 = getelementptr inbounds i8, i8* %89, i64 %idxprom171
  %91 = load i32, i32* %bufLen, align 4
  %92 = load i32, i32* %tokenStart, align 4
  %sub173 = sub nsw i32 %91, %92
  %93 = load i8*, i8** getelementptr inbounds ([39 x i8*], [39 x i8*]* @AdaKeywords, i64 0, i64 4), align 8
  %call174 = call zeroext i1 @cmp(i8* %arrayidx172, i32 %sub173, i8* %93)
  %conv175 = zext i1 %call174 to i32
  %cmp176 = icmp eq i32 %conv175, 1
  br i1 %cmp176, label %if.then178, label %if.else179

if.then178:                                       ; preds = %if.then170
  store i32 11, i32* %kind.addr, align 4
  br label %if.end189

if.else179:                                       ; preds = %if.then170
  %94 = load i8*, i8** %buf, align 8
  %95 = load i32, i32* %tokenStart, align 4
  %idxprom180 = sext i32 %95 to i64
  %arrayidx181 = getelementptr inbounds i8, i8* %94, i64 %idxprom180
  %96 = load i32, i32* %bufLen, align 4
  %97 = load i32, i32* %tokenStart, align 4
  %sub182 = sub nsw i32 %96, %97
  %98 = load i8*, i8** getelementptr inbounds ([39 x i8*], [39 x i8*]* @AdaKeywords, i64 0, i64 11), align 8
  %call183 = call zeroext i1 @cmp(i8* %arrayidx181, i32 %sub182, i8* %98)
  %conv184 = zext i1 %call183 to i32
  %cmp185 = icmp eq i32 %conv184, 1
  br i1 %cmp185, label %if.then187, label %if.end188

if.then187:                                       ; preds = %if.else179
  store i32 12, i32* %kind.addr, align 4
  br label %if.end188

if.end188:                                        ; preds = %if.then187, %if.else179
  br label %if.end189

if.end189:                                        ; preds = %if.end188, %if.then178
  store i32 -2, i32* %tokenStart, align 4
  br label %if.end190

if.end190:                                        ; preds = %if.end189, %lor.lhs.false163, %land.lhs.true149, %land.lhs.true146, %if.else143
  br label %if.end191

if.end191:                                        ; preds = %if.end190, %if.then142
  br label %if.end192

if.end192:                                        ; preds = %if.end191, %if.then126
  br label %if.end193

if.end193:                                        ; preds = %if.end192
  br label %if.end194

if.end194:                                        ; preds = %if.end193, %if.end85
  br label %if.end195

if.end195:                                        ; preds = %if.end194, %if.then73
  br label %if.end196

if.end196:                                        ; preds = %if.end195, %if.end
  %99 = load i32, i32* %bufPos, align 4
  %inc197 = add nsw i32 %99, 1
  store i32 %inc197, i32* %bufPos, align 4
  %100 = load i32, i32* @exception, align 4
  %cmp198 = icmp ne i32 %100, 1
  br i1 %cmp198, label %land.lhs.true200, label %if.end230

land.lhs.true200:                                 ; preds = %if.end196
  %101 = load i32, i32* %bufPos, align 4
  %102 = load i32, i32* %bufLen, align 4
  %cmp201 = icmp sge i32 %101, %102
  br i1 %cmp201, label %if.then203, label %if.end230

if.then203:                                       ; preds = %land.lhs.true200
  call void @readNewLine()
  %103 = load i32, i32* %filePosIndex, align 4
  %inc204 = add nsw i32 %103, 1
  store i32 %inc204, i32* %filePosIndex, align 4
  br label %while.cond205

while.cond205:                                    ; preds = %while.body208, %if.then203
  %104 = load i32, i32* %filePosIndex, align 4
  %105 = load i32, i32* %filePosSize, align 4
  %cmp206 = icmp sge i32 %104, %105
  br i1 %cmp206, label %while.body208, label %while.end213

while.body208:                                    ; preds = %while.cond205
  %106 = load i32, i32* %filePosSize, align 4
  %mul209 = mul nsw i32 %106, 2
  store i32 %mul209, i32* %filePosSize, align 4
  %107 = load %struct._MIOPos*, %struct._MIOPos** %filePos, align 8
  %108 = bitcast %struct._MIOPos* %107 to i8*
  %109 = load i32, i32* %filePosSize, align 4
  %conv210 = sext i32 %109 to i64
  %mul211 = mul i64 %conv210, 16
  %call212 = call i8* @eRealloc(i8* %108, i64 %mul211)
  %110 = bitcast i8* %call212 to %struct._MIOPos*
  store %struct._MIOPos* %110, %struct._MIOPos** %filePos, align 8
  br label %while.cond205

while.end213:                                     ; preds = %while.cond205
  %111 = load %struct._MIOPos*, %struct._MIOPos** %filePos, align 8
  %112 = load i32, i32* %filePosIndex, align 4
  %idxprom214 = sext i32 %112 to i64
  %arrayidx215 = getelementptr inbounds %struct._MIOPos, %struct._MIOPos* %111, i64 %idxprom214
  %call217 = call [2 x i64] @getInputFilePosition()
  %113 = bitcast %struct._MIOPos* %tmp216 to [2 x i64]*
  store [2 x i64] %call217, [2 x i64]* %113, align 8
  %114 = bitcast %struct._MIOPos* %arrayidx215 to i8*
  %115 = bitcast %struct._MIOPos* %tmp216 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %114, i8* align 8 %115, i64 16, i1 false)
  %116 = load i32, i32* %bufLen, align 4
  %inc218 = add nsw i32 %116, 1
  store i32 %inc218, i32* %bufLen, align 4
  %117 = load i32, i32* %bufPos, align 4
  %inc219 = add nsw i32 %117, 1
  store i32 %inc219, i32* %bufPos, align 4
  %118 = load i32, i32* @lineLen, align 4
  %119 = load i32, i32* %bufLen, align 4
  %add220 = add nsw i32 %119, %118
  store i32 %add220, i32* %bufLen, align 4
  %120 = load i8*, i8** %buf, align 8
  %121 = load i32, i32* %bufLen, align 4
  %add221 = add nsw i32 %121, 1
  %conv222 = sext i32 %add221 to i64
  %mul223 = mul i64 %conv222, 1
  %call224 = call i8* @eRealloc(i8* %120, i64 %mul223)
  store i8* %call224, i8** %buf, align 8
  %122 = load i8*, i8** %buf, align 8
  %123 = load i32, i32* %bufPos, align 4
  %idxprom225 = sext i32 %123 to i64
  %arrayidx226 = getelementptr inbounds i8, i8* %122, i64 %idxprom225
  %124 = load i8*, i8** @line, align 8
  %125 = load i32, i32* @lineLen, align 4
  %conv227 = sext i32 %125 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %arrayidx226, i8* align 1 %124, i64 %conv227, i1 false)
  %126 = load i8*, i8** %buf, align 8
  %127 = load i32, i32* %bufLen, align 4
  %idxprom228 = sext i32 %127 to i64
  %arrayidx229 = getelementptr inbounds i8, i8* %126, i64 %idxprom228
  store i8 0, i8* %arrayidx229, align 1
  br label %if.end230

if.end230:                                        ; preds = %while.end213, %land.lhs.true200, %if.end196
  br label %while.cond35

while.end231:                                     ; preds = %if.then108, %if.then83, %while.cond35
  %128 = load i32, i32* %kind.addr, align 4
  %cmp232 = icmp eq i32 %128, 7
  br i1 %cmp232, label %land.lhs.true234, label %if.end244

land.lhs.true234:                                 ; preds = %while.end231
  %129 = load i8*, i8** %buf, align 8
  %130 = load i32, i32* %bufPos, align 4
  %idxprom235 = sext i32 %130 to i64
  %arrayidx236 = getelementptr inbounds i8, i8* %129, i64 %idxprom235
  %131 = load i8, i8* %arrayidx236, align 1
  %conv237 = sext i8 %131 to i32
  %cmp238 = icmp eq i32 %conv237, 41
  br i1 %cmp238, label %land.lhs.true240, label %if.end244

land.lhs.true240:                                 ; preds = %land.lhs.true234
  %132 = load i32, i32* %varEndPos, align 4
  %cmp241 = icmp eq i32 %132, -1
  br i1 %cmp241, label %if.then243, label %if.end244

if.then243:                                       ; preds = %land.lhs.true240
  %133 = load i32, i32* %bufPos, align 4
  store i32 %133, i32* %varEndPos, align 4
  br label %if.end244

if.end244:                                        ; preds = %if.then243, %land.lhs.true240, %land.lhs.true234, %while.end231
  %134 = load i32, i32* %varEndPos, align 4
  %cmp245 = icmp ne i32 %134, -1
  br i1 %cmp245, label %if.then247, label %if.end380

if.then247:                                       ; preds = %if.end244
  store i32 0, i32* %tokenStart, align 4
  store i32 0, i32* %filePosIndex, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc361, %if.then247
  %135 = load i32, i32* %i, align 4
  %136 = load i32, i32* %varEndPos, align 4
  %cmp248 = icmp slt i32 %135, %136
  br i1 %cmp248, label %for.body, label %for.end363

for.body:                                         ; preds = %for.cond
  %137 = load i32, i32* %i, align 4
  %cmp250 = icmp eq i32 %137, 0
  br i1 %cmp250, label %land.lhs.true266, label %lor.lhs.false252

lor.lhs.false252:                                 ; preds = %for.body
  %138 = load i8*, i8** %buf, align 8
  %139 = load i32, i32* %i, align 4
  %sub253 = sub nsw i32 %139, 1
  %idxprom254 = sext i32 %sub253 to i64
  %arrayidx255 = getelementptr inbounds i8, i8* %138, i64 %idxprom254
  %140 = load i8, i8* %arrayidx255, align 1
  %conv256 = sext i8 %140 to i32
  %call257 = call i32 @isalnum(i32 %conv256) #8
  %tobool258 = icmp ne i32 %call257, 0
  br i1 %tobool258, label %if.else288, label %land.lhs.true259

land.lhs.true259:                                 ; preds = %lor.lhs.false252
  %141 = load i8*, i8** %buf, align 8
  %142 = load i32, i32* %i, align 4
  %sub260 = sub nsw i32 %142, 1
  %idxprom261 = sext i32 %sub260 to i64
  %arrayidx262 = getelementptr inbounds i8, i8* %141, i64 %idxprom261
  %143 = load i8, i8* %arrayidx262, align 1
  %conv263 = sext i8 %143 to i32
  %cmp264 = icmp ne i32 %conv263, 95
  br i1 %cmp264, label %land.lhs.true266, label %if.else288

land.lhs.true266:                                 ; preds = %land.lhs.true259, %for.body
  %144 = load i32, i32* %i, align 4
  %145 = load i32, i32* %varEndPos, align 4
  %cmp267 = icmp slt i32 %144, %145
  br i1 %cmp267, label %land.lhs.true269, label %if.else288

land.lhs.true269:                                 ; preds = %land.lhs.true266
  %146 = load i8*, i8** %buf, align 8
  %147 = load i32, i32* %i, align 4
  %idxprom270 = sext i32 %147 to i64
  %arrayidx271 = getelementptr inbounds i8, i8* %146, i64 %idxprom270
  %call272 = call i32 @strncasecmp(i8* %arrayidx271, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0), i64 2)
  %cmp273 = icmp eq i32 %call272, 0
  br i1 %cmp273, label %if.then275, label %if.else288

if.then275:                                       ; preds = %land.lhs.true269
  br label %for.cond276

for.cond276:                                      ; preds = %for.inc, %if.then275
  %148 = load i32, i32* %i, align 4
  %149 = load i32, i32* %varEndPos, align 4
  %cmp277 = icmp slt i32 %148, %149
  br i1 %cmp277, label %land.rhs279, label %land.end285

land.rhs279:                                      ; preds = %for.cond276
  %150 = load i8*, i8** %buf, align 8
  %151 = load i32, i32* %i, align 4
  %idxprom280 = sext i32 %151 to i64
  %arrayidx281 = getelementptr inbounds i8, i8* %150, i64 %idxprom280
  %152 = load i8, i8* %arrayidx281, align 1
  %conv282 = sext i8 %152 to i32
  %cmp283 = icmp ne i32 %conv282, 0
  br label %land.end285

land.end285:                                      ; preds = %land.rhs279, %for.cond276
  %153 = phi i1 [ false, %for.cond276 ], [ %cmp283, %land.rhs279 ]
  br i1 %153, label %for.body286, label %for.end

for.body286:                                      ; preds = %land.end285
  br label %for.inc

for.inc:                                          ; preds = %for.body286
  %154 = load i32, i32* %i, align 4
  %inc287 = add nsw i32 %154, 1
  store i32 %inc287, i32* %i, align 4
  br label %for.cond276

for.end:                                          ; preds = %land.end285
  br label %if.end352

if.else288:                                       ; preds = %land.lhs.true269, %land.lhs.true266, %land.lhs.true259, %lor.lhs.false252
  %155 = load i32, i32* %tokenStart, align 4
  %cmp289 = icmp ne i32 %155, -1
  br i1 %cmp289, label %land.lhs.true291, label %if.else328

land.lhs.true291:                                 ; preds = %if.else288
  %156 = load i8*, i8** %buf, align 8
  %157 = load i32, i32* %i, align 4
  %idxprom292 = sext i32 %157 to i64
  %arrayidx293 = getelementptr inbounds i8, i8* %156, i64 %idxprom292
  %158 = load i8, i8* %arrayidx293, align 1
  %conv294 = sext i8 %158 to i32
  %call295 = call i32 @isspace(i32 %conv294) #8
  %tobool296 = icmp ne i32 %call295, 0
  br i1 %tobool296, label %if.then309, label %lor.lhs.false297

lor.lhs.false297:                                 ; preds = %land.lhs.true291
  %159 = load i8*, i8** %buf, align 8
  %160 = load i32, i32* %i, align 4
  %idxprom298 = sext i32 %160 to i64
  %arrayidx299 = getelementptr inbounds i8, i8* %159, i64 %idxprom298
  %161 = load i8, i8* %arrayidx299, align 1
  %conv300 = sext i8 %161 to i32
  %cmp301 = icmp eq i32 %conv300, 44
  br i1 %cmp301, label %if.then309, label %lor.lhs.false303

lor.lhs.false303:                                 ; preds = %lor.lhs.false297
  %162 = load i8*, i8** %buf, align 8
  %163 = load i32, i32* %i, align 4
  %idxprom304 = sext i32 %163 to i64
  %arrayidx305 = getelementptr inbounds i8, i8* %162, i64 %idxprom304
  %164 = load i8, i8* %arrayidx305, align 1
  %conv306 = sext i8 %164 to i32
  %cmp307 = icmp eq i32 %conv306, 0
  br i1 %cmp307, label %if.then309, label %if.else328

if.then309:                                       ; preds = %lor.lhs.false303, %lor.lhs.false297, %land.lhs.true291
  %165 = load i8*, i8** %buf, align 8
  %166 = load i32, i32* %tokenStart, align 4
  %idxprom310 = sext i32 %166 to i64
  %arrayidx311 = getelementptr inbounds i8, i8* %165, i64 %idxprom310
  %167 = load i32, i32* %varEndPos, align 4
  %call312 = call zeroext i1 @cmp(i8* %arrayidx311, i32 %167, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.62, i64 0, i64 0))
  br i1 %call312, label %if.end327, label %land.lhs.true313

land.lhs.true313:                                 ; preds = %if.then309
  %168 = load i8*, i8** %buf, align 8
  %169 = load i32, i32* %tokenStart, align 4
  %idxprom314 = sext i32 %169 to i64
  %arrayidx315 = getelementptr inbounds i8, i8* %168, i64 %idxprom314
  %170 = load i32, i32* %varEndPos, align 4
  %call316 = call zeroext i1 @cmp(i8* %arrayidx315, i32 %170, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.63, i64 0, i64 0))
  br i1 %call316, label %if.end327, label %if.then317

if.then317:                                       ; preds = %land.lhs.true313
  %171 = load i8*, i8** %buf, align 8
  %172 = load i32, i32* %tokenStart, align 4
  %idxprom318 = sext i32 %172 to i64
  %arrayidx319 = getelementptr inbounds i8, i8* %171, i64 %idxprom318
  %173 = load i32, i32* %i, align 4
  %174 = load i32, i32* %tokenStart, align 4
  %sub320 = sub nsw i32 %173, %174
  %175 = load i32, i32* %kind.addr, align 4
  %176 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %parent.addr, align 8
  %call321 = call %struct.sAdaTokenInfo* @newAdaToken(i8* %arrayidx319, i32 %sub320, i32 %175, i1 zeroext false, %struct.sAdaTokenInfo* %176)
  store %struct.sAdaTokenInfo* %call321, %struct.sAdaTokenInfo** %token, align 8
  %177 = load i64, i64* %lineNum, align 8
  %178 = load i32, i32* %filePosIndex, align 4
  %conv322 = sext i32 %178 to i64
  %add323 = add i64 %177, %conv322
  %179 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token, align 8
  %tag = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %179, i32 0, i32 4
  %lineNumber = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %tag, i32 0, i32 1
  store i64 %add323, i64* %lineNumber, align 8
  %180 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token, align 8
  %tag324 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %180, i32 0, i32 4
  %filePosition = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %tag324, i32 0, i32 4
  %181 = load %struct._MIOPos*, %struct._MIOPos** %filePos, align 8
  %182 = load i32, i32* %filePosIndex, align 4
  %idxprom325 = sext i32 %182 to i64
  %arrayidx326 = getelementptr inbounds %struct._MIOPos, %struct._MIOPos* %181, i64 %idxprom325
  %183 = bitcast %struct._MIOPos* %filePosition to i8*
  %184 = bitcast %struct._MIOPos* %arrayidx326 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %183, i8* align 8 %184, i64 16, i1 false)
  br label %if.end327

if.end327:                                        ; preds = %if.then317, %land.lhs.true313, %if.then309
  store i32 -1, i32* %tokenStart, align 4
  br label %if.end351

if.else328:                                       ; preds = %lor.lhs.false303, %if.else288
  %185 = load i32, i32* %tokenStart, align 4
  %cmp329 = icmp eq i32 %185, -1
  br i1 %cmp329, label %land.lhs.true331, label %if.end350

land.lhs.true331:                                 ; preds = %if.else328
  %186 = load i8*, i8** %buf, align 8
  %187 = load i32, i32* %i, align 4
  %idxprom332 = sext i32 %187 to i64
  %arrayidx333 = getelementptr inbounds i8, i8* %186, i64 %idxprom332
  %188 = load i8, i8* %arrayidx333, align 1
  %conv334 = sext i8 %188 to i32
  %call335 = call i32 @isspace(i32 %conv334) #8
  %tobool336 = icmp ne i32 %call335, 0
  br i1 %tobool336, label %if.end350, label %lor.lhs.false337

lor.lhs.false337:                                 ; preds = %land.lhs.true331
  %189 = load i8*, i8** %buf, align 8
  %190 = load i32, i32* %i, align 4
  %idxprom338 = sext i32 %190 to i64
  %arrayidx339 = getelementptr inbounds i8, i8* %189, i64 %idxprom338
  %191 = load i8, i8* %arrayidx339, align 1
  %conv340 = sext i8 %191 to i32
  %cmp341 = icmp eq i32 %conv340, 44
  br i1 %cmp341, label %if.end350, label %lor.lhs.false343

lor.lhs.false343:                                 ; preds = %lor.lhs.false337
  %192 = load i8*, i8** %buf, align 8
  %193 = load i32, i32* %i, align 4
  %idxprom344 = sext i32 %193 to i64
  %arrayidx345 = getelementptr inbounds i8, i8* %192, i64 %idxprom344
  %194 = load i8, i8* %arrayidx345, align 1
  %conv346 = sext i8 %194 to i32
  %cmp347 = icmp eq i32 %conv346, 0
  br i1 %cmp347, label %if.end350, label %if.then349

if.then349:                                       ; preds = %lor.lhs.false343
  %195 = load i32, i32* %i, align 4
  store i32 %195, i32* %tokenStart, align 4
  br label %if.end350

if.end350:                                        ; preds = %if.then349, %lor.lhs.false343, %lor.lhs.false337, %land.lhs.true331, %if.else328
  br label %if.end351

if.end351:                                        ; preds = %if.end350, %if.end327
  br label %if.end352

if.end352:                                        ; preds = %if.end351, %for.end
  %196 = load i8*, i8** %buf, align 8
  %197 = load i32, i32* %i, align 4
  %idxprom353 = sext i32 %197 to i64
  %arrayidx354 = getelementptr inbounds i8, i8* %196, i64 %idxprom353
  %198 = load i8, i8* %arrayidx354, align 1
  %conv355 = sext i8 %198 to i32
  %cmp356 = icmp eq i32 %conv355, 0
  br i1 %cmp356, label %if.then358, label %if.end360

if.then358:                                       ; preds = %if.end352
  %199 = load i32, i32* %filePosIndex, align 4
  %inc359 = add nsw i32 %199, 1
  store i32 %inc359, i32* %filePosIndex, align 4
  br label %if.end360

if.end360:                                        ; preds = %if.then358, %if.end352
  br label %for.inc361

for.inc361:                                       ; preds = %if.end360
  %200 = load i32, i32* %i, align 4
  %inc362 = add nsw i32 %200, 1
  store i32 %inc362, i32* %i, align 4
  br label %for.cond

for.end363:                                       ; preds = %for.cond
  %201 = load i32, i32* %tokenStart, align 4
  %cmp364 = icmp ne i32 %201, -1
  br i1 %cmp364, label %if.then366, label %if.end379

if.then366:                                       ; preds = %for.end363
  %202 = load i8*, i8** %buf, align 8
  %203 = load i32, i32* %tokenStart, align 4
  %idxprom367 = sext i32 %203 to i64
  %arrayidx368 = getelementptr inbounds i8, i8* %202, i64 %idxprom367
  %204 = load i32, i32* %i, align 4
  %205 = load i32, i32* %tokenStart, align 4
  %sub369 = sub nsw i32 %204, %205
  %206 = load i32, i32* %kind.addr, align 4
  %207 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %parent.addr, align 8
  %call370 = call %struct.sAdaTokenInfo* @newAdaToken(i8* %arrayidx368, i32 %sub369, i32 %206, i1 zeroext false, %struct.sAdaTokenInfo* %207)
  store %struct.sAdaTokenInfo* %call370, %struct.sAdaTokenInfo** %token, align 8
  %208 = load i64, i64* %lineNum, align 8
  %209 = load i32, i32* %filePosIndex, align 4
  %conv371 = sext i32 %209 to i64
  %add372 = add i64 %208, %conv371
  %210 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token, align 8
  %tag373 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %210, i32 0, i32 4
  %lineNumber374 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %tag373, i32 0, i32 1
  store i64 %add372, i64* %lineNumber374, align 8
  %211 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token, align 8
  %tag375 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %211, i32 0, i32 4
  %filePosition376 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %tag375, i32 0, i32 4
  %212 = load %struct._MIOPos*, %struct._MIOPos** %filePos, align 8
  %213 = load i32, i32* %filePosIndex, align 4
  %idxprom377 = sext i32 %213 to i64
  %arrayidx378 = getelementptr inbounds %struct._MIOPos, %struct._MIOPos* %212, i64 %idxprom377
  %214 = bitcast %struct._MIOPos* %filePosition376 to i8*
  %215 = bitcast %struct._MIOPos* %arrayidx378 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %214, i8* align 8 %215, i64 16, i1 false)
  br label %if.end379

if.end379:                                        ; preds = %if.then366, %for.end363
  br label %if.end380

if.end380:                                        ; preds = %if.end379, %if.end244
  %216 = load i32, i32* @lineLen, align 4
  %217 = load i32, i32* %bufLen, align 4
  %218 = load i32, i32* %bufPos, align 4
  %sub381 = sub nsw i32 %217, %218
  %sub382 = sub nsw i32 %216, %sub381
  %219 = load i32, i32* @pos, align 4
  %sub383 = sub nsw i32 %sub382, %219
  call void @movePos(i32 %sub383)
  %220 = load i8*, i8** %buf, align 8
  call void @eFree(i8* %220)
  %221 = load %struct._MIOPos*, %struct._MIOPos** %filePos, align 8
  %222 = bitcast %struct._MIOPos* %221 to i8*
  call void @eFree(i8* %222)
  %223 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token, align 8
  ret %struct.sAdaTokenInfo* %223
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct.sAdaTokenInfo* @adaParseType(%struct.sAdaTokenInfo* %parent, i32 %kind) #0 {
entry:
  %parent.addr = alloca %struct.sAdaTokenInfo*, align 8
  %kind.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %token = alloca %struct.sAdaTokenInfo*, align 8
  store %struct.sAdaTokenInfo* %parent, %struct.sAdaTokenInfo** %parent.addr, align 8
  store i32 %kind, i32* %kind.addr, align 4
  store %struct.sAdaTokenInfo* null, %struct.sAdaTokenInfo** %token, align 8
  call void @skipWhiteSpace()
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* @pos, align 4
  %1 = load i32, i32* %i, align 4
  %add = add nsw i32 %0, %1
  %2 = load i32, i32* @lineLen, align 4
  %cmp = icmp slt i32 %add, %2
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %for.cond
  %3 = load i8*, i8** @line, align 8
  %4 = load i32, i32* @pos, align 4
  %5 = load i32, i32* %i, align 4
  %add1 = add nsw i32 %4, %5
  %idxprom = sext i32 %add1 to i64
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %6 to i32
  %call = call i32 @isspace(i32 %conv) #8
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.end, label %land.lhs.true2

land.lhs.true2:                                   ; preds = %land.lhs.true
  %7 = load i8*, i8** @line, align 8
  %8 = load i32, i32* @pos, align 4
  %9 = load i32, i32* %i, align 4
  %add3 = add nsw i32 %8, %9
  %idxprom4 = sext i32 %add3 to i64
  %arrayidx5 = getelementptr inbounds i8, i8* %7, i64 %idxprom4
  %10 = load i8, i8* %arrayidx5, align 1
  %conv6 = sext i8 %10 to i32
  %cmp7 = icmp ne i32 %conv6, 40
  br i1 %cmp7, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true2
  %11 = load i8*, i8** @line, align 8
  %12 = load i32, i32* @pos, align 4
  %13 = load i32, i32* %i, align 4
  %add9 = add nsw i32 %12, %13
  %idxprom10 = sext i32 %add9 to i64
  %arrayidx11 = getelementptr inbounds i8, i8* %11, i64 %idxprom10
  %14 = load i8, i8* %arrayidx11, align 1
  %conv12 = sext i8 %14 to i32
  %cmp13 = icmp ne i32 %conv12, 59
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true2, %land.lhs.true, %for.cond
  %15 = phi i1 [ false, %land.lhs.true2 ], [ false, %land.lhs.true ], [ false, %for.cond ], [ %cmp13, %land.rhs ]
  br i1 %15, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %17 = load i8*, i8** @line, align 8
  %18 = load i32, i32* @pos, align 4
  %idxprom15 = sext i32 %18 to i64
  %arrayidx16 = getelementptr inbounds i8, i8* %17, i64 %idxprom15
  %19 = load i32, i32* %i, align 4
  %20 = load i32, i32* %kind.addr, align 4
  %21 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %parent.addr, align 8
  %call17 = call %struct.sAdaTokenInfo* @newAdaToken(i8* %arrayidx16, i32 %19, i32 %20, i1 zeroext false, %struct.sAdaTokenInfo* %21)
  store %struct.sAdaTokenInfo* %call17, %struct.sAdaTokenInfo** %token, align 8
  %22 = load i32, i32* %i, align 4
  call void @movePos(i32 %22)
  call void @skipWhiteSpace()
  %23 = load i32, i32* @exception, align 4
  %cmp18 = icmp ne i32 %23, 1
  br i1 %cmp18, label %land.lhs.true20, label %if.end

land.lhs.true20:                                  ; preds = %for.end
  %24 = load i8*, i8** @line, align 8
  %25 = load i32, i32* @pos, align 4
  %idxprom21 = sext i32 %25 to i64
  %arrayidx22 = getelementptr inbounds i8, i8* %24, i64 %idxprom21
  %26 = load i8, i8* %arrayidx22, align 1
  %conv23 = sext i8 %26 to i32
  %cmp24 = icmp eq i32 %conv23, 40
  br i1 %cmp24, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true20
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %27 = load i32, i32* @exception, align 4
  %cmp26 = icmp ne i32 %27, 1
  br i1 %cmp26, label %land.rhs28, label %land.end34

land.rhs28:                                       ; preds = %while.cond
  %28 = load i8*, i8** @line, align 8
  %29 = load i32, i32* @pos, align 4
  %idxprom29 = sext i32 %29 to i64
  %arrayidx30 = getelementptr inbounds i8, i8* %28, i64 %idxprom29
  %30 = load i8, i8* %arrayidx30, align 1
  %conv31 = sext i8 %30 to i32
  %cmp32 = icmp ne i32 %conv31, 41
  br label %land.end34

land.end34:                                       ; preds = %land.rhs28, %while.cond
  %31 = phi i1 [ false, %while.cond ], [ %cmp32, %land.rhs28 ]
  br i1 %31, label %while.body, label %while.end

while.body:                                       ; preds = %land.end34
  call void @movePos(i32 1)
  %32 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token, align 8
  %call35 = call %struct.sAdaTokenInfo* @adaParseVariables(%struct.sAdaTokenInfo* %32, i32 23)
  br label %while.cond

while.end:                                        ; preds = %land.end34
  call void @movePos(i32 1)
  call void @skipWhiteSpace()
  br label %if.end

if.end:                                           ; preds = %while.end, %land.lhs.true20, %for.end
  %call36 = call zeroext i1 @adaKeywordCmp(i32 17)
  br i1 %call36, label %if.then37, label %if.else73

if.then37:                                        ; preds = %if.end
  call void @skipWhiteSpace()
  %33 = load i32, i32* @exception, align 4
  %cmp38 = icmp ne i32 %33, 1
  br i1 %cmp38, label %land.lhs.true40, label %if.else

land.lhs.true40:                                  ; preds = %if.then37
  %34 = load i8*, i8** @line, align 8
  %35 = load i32, i32* @pos, align 4
  %idxprom41 = sext i32 %35 to i64
  %arrayidx42 = getelementptr inbounds i8, i8* %34, i64 %idxprom41
  %36 = load i8, i8* %arrayidx42, align 1
  %conv43 = sext i8 %36 to i32
  %cmp44 = icmp eq i32 %conv43, 40
  br i1 %cmp44, label %if.then46, label %if.else

if.then46:                                        ; preds = %land.lhs.true40
  call void @movePos(i32 1)
  %37 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token, align 8
  %call47 = call %struct.sAdaTokenInfo* @adaParseVariables(%struct.sAdaTokenInfo* %37, i32 7)
  br label %if.end72

if.else:                                          ; preds = %land.lhs.true40, %if.then37
  %call48 = call zeroext i1 @adaKeywordCmp(i32 26)
  br i1 %call48, label %if.then49, label %if.end71

if.then49:                                        ; preds = %if.else
  br label %while.cond50

while.cond50:                                     ; preds = %if.end69, %if.then49
  %38 = load i32, i32* @exception, align 4
  %cmp51 = icmp ne i32 %38, 1
  br i1 %cmp51, label %while.body53, label %while.end70

while.body53:                                     ; preds = %while.cond50
  call void @skipWhiteSpace()
  %call54 = call zeroext i1 @adaKeywordCmp(i32 9)
  br i1 %call54, label %if.then55, label %if.else59

if.then55:                                        ; preds = %while.body53
  call void @skipWhiteSpace()
  %call56 = call zeroext i1 @adaKeywordCmp(i32 26)
  br i1 %call56, label %if.then57, label %if.end58

if.then57:                                        ; preds = %if.then55
  br label %while.end70

if.end58:                                         ; preds = %if.then55
  call void @skipPast(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i64 0, i64 0))
  br label %if.end69

if.else59:                                        ; preds = %while.body53
  %call60 = call zeroext i1 @adaKeywordCmp(i32 3)
  br i1 %call60, label %if.then61, label %if.else62

if.then61:                                        ; preds = %if.else59
  call void @skipPastKeyword(i32 17)
  br label %if.end68

if.else62:                                        ; preds = %if.else59
  %call63 = call zeroext i1 @adaKeywordCmp(i32 36)
  br i1 %call63, label %if.then64, label %if.else65

if.then64:                                        ; preds = %if.else62
  call void @skipPast(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.60, i64 0, i64 0))
  br label %if.end67

if.else65:                                        ; preds = %if.else62
  %39 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token, align 8
  %call66 = call %struct.sAdaTokenInfo* @adaParseVariables(%struct.sAdaTokenInfo* %39, i32 6)
  call void @skipPast(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i64 0, i64 0))
  br label %if.end67

if.end67:                                         ; preds = %if.else65, %if.then64
  br label %if.end68

if.end68:                                         ; preds = %if.end67, %if.then61
  br label %if.end69

if.end69:                                         ; preds = %if.end68, %if.end58
  br label %while.cond50

while.end70:                                      ; preds = %if.then57, %while.cond50
  br label %if.end71

if.end71:                                         ; preds = %while.end70, %if.else
  br label %if.end72

if.end72:                                         ; preds = %if.end71, %if.then46
  br label %if.end74

if.else73:                                        ; preds = %if.end
  %40 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token, align 8
  %isSpec = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %40, i32 0, i32 1
  store i8 1, i8* %isSpec, align 4
  br label %if.end74

if.end74:                                         ; preds = %if.else73, %if.end72
  call void @skipPast(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i64 0, i64 0))
  %41 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token, align 8
  ret %struct.sAdaTokenInfo* %41
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @skipPastKeyword(i32 %keyword) #0 {
entry:
  %keyword.addr = alloca i32, align 4
  store i32 %keyword, i32* %keyword.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* @exception, align 4
  %cmp = icmp ne i32 %0, 1
  br i1 %cmp, label %land.rhs, label %land.end17

land.rhs:                                         ; preds = %while.cond
  %1 = load i32, i32* @pos, align 4
  %cmp1 = icmp eq i32 %1, 0
  br i1 %cmp1, label %land.lhs.true8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.rhs
  %2 = load i8*, i8** @line, align 8
  %3 = load i32, i32* @pos, align 4
  %sub = sub nsw i32 %3, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %4 to i32
  %call = call i32 @isalnum(i32 %conv) #8
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false
  %5 = load i8*, i8** @line, align 8
  %6 = load i32, i32* @pos, align 4
  %sub2 = sub nsw i32 %6, 1
  %idxprom3 = sext i32 %sub2 to i64
  %arrayidx4 = getelementptr inbounds i8, i8* %5, i64 %idxprom3
  %7 = load i8, i8* %arrayidx4, align 1
  %conv5 = sext i8 %7 to i32
  %cmp6 = icmp ne i32 %conv5, 95
  br i1 %cmp6, label %land.lhs.true8, label %land.end

land.lhs.true8:                                   ; preds = %land.lhs.true, %land.rhs
  %8 = load i32, i32* @pos, align 4
  %9 = load i32, i32* @lineLen, align 4
  %cmp9 = icmp slt i32 %8, %9
  br i1 %cmp9, label %land.rhs11, label %land.end

land.rhs11:                                       ; preds = %land.lhs.true8
  %10 = load i8*, i8** @line, align 8
  %11 = load i32, i32* @pos, align 4
  %idxprom12 = sext i32 %11 to i64
  %arrayidx13 = getelementptr inbounds i8, i8* %10, i64 %idxprom12
  %call14 = call i32 @strncasecmp(i8* %arrayidx13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0), i64 2)
  %cmp15 = icmp eq i32 %call14, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs11, %land.lhs.true8, %land.lhs.true, %lor.lhs.false
  %12 = phi i1 [ false, %land.lhs.true8 ], [ false, %land.lhs.true ], [ false, %lor.lhs.false ], [ %cmp15, %land.rhs11 ]
  br label %land.end17

land.end17:                                       ; preds = %land.end, %while.cond
  %13 = phi i1 [ false, %while.cond ], [ %12, %land.end ]
  br i1 %13, label %while.body, label %while.end

while.body:                                       ; preds = %land.end17
  call void @readNewLine()
  br label %while.cond

while.end:                                        ; preds = %land.end17
  br label %while.cond18

while.cond18:                                     ; preds = %while.end57, %while.end
  %14 = load i32, i32* @exception, align 4
  %cmp19 = icmp ne i32 %14, 1
  br i1 %cmp19, label %land.rhs21, label %land.end23

land.rhs21:                                       ; preds = %while.cond18
  %15 = load i32, i32* %keyword.addr, align 4
  %call22 = call zeroext i1 @adaKeywordCmp(i32 %15)
  %lnot = xor i1 %call22, true
  br label %land.end23

land.end23:                                       ; preds = %land.rhs21, %while.cond18
  %16 = phi i1 [ false, %while.cond18 ], [ %lnot, %land.rhs21 ]
  br i1 %16, label %while.body24, label %while.end58

while.body24:                                     ; preds = %land.end23
  call void @movePos(i32 1)
  br label %while.cond25

while.cond25:                                     ; preds = %while.body56, %while.body24
  %17 = load i32, i32* @exception, align 4
  %cmp26 = icmp ne i32 %17, 1
  br i1 %cmp26, label %land.rhs28, label %land.end55

land.rhs28:                                       ; preds = %while.cond25
  %18 = load i32, i32* @pos, align 4
  %cmp29 = icmp eq i32 %18, 0
  br i1 %cmp29, label %land.lhs.true45, label %lor.lhs.false31

lor.lhs.false31:                                  ; preds = %land.rhs28
  %19 = load i8*, i8** @line, align 8
  %20 = load i32, i32* @pos, align 4
  %sub32 = sub nsw i32 %20, 1
  %idxprom33 = sext i32 %sub32 to i64
  %arrayidx34 = getelementptr inbounds i8, i8* %19, i64 %idxprom33
  %21 = load i8, i8* %arrayidx34, align 1
  %conv35 = sext i8 %21 to i32
  %call36 = call i32 @isalnum(i32 %conv35) #8
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %land.end54, label %land.lhs.true38

land.lhs.true38:                                  ; preds = %lor.lhs.false31
  %22 = load i8*, i8** @line, align 8
  %23 = load i32, i32* @pos, align 4
  %sub39 = sub nsw i32 %23, 1
  %idxprom40 = sext i32 %sub39 to i64
  %arrayidx41 = getelementptr inbounds i8, i8* %22, i64 %idxprom40
  %24 = load i8, i8* %arrayidx41, align 1
  %conv42 = sext i8 %24 to i32
  %cmp43 = icmp ne i32 %conv42, 95
  br i1 %cmp43, label %land.lhs.true45, label %land.end54

land.lhs.true45:                                  ; preds = %land.lhs.true38, %land.rhs28
  %25 = load i32, i32* @pos, align 4
  %26 = load i32, i32* @lineLen, align 4
  %cmp46 = icmp slt i32 %25, %26
  br i1 %cmp46, label %land.rhs48, label %land.end54

land.rhs48:                                       ; preds = %land.lhs.true45
  %27 = load i8*, i8** @line, align 8
  %28 = load i32, i32* @pos, align 4
  %idxprom49 = sext i32 %28 to i64
  %arrayidx50 = getelementptr inbounds i8, i8* %27, i64 %idxprom49
  %call51 = call i32 @strncasecmp(i8* %arrayidx50, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0), i64 2)
  %cmp52 = icmp eq i32 %call51, 0
  br label %land.end54

land.end54:                                       ; preds = %land.rhs48, %land.lhs.true45, %land.lhs.true38, %lor.lhs.false31
  %29 = phi i1 [ false, %land.lhs.true45 ], [ false, %land.lhs.true38 ], [ false, %lor.lhs.false31 ], [ %cmp52, %land.rhs48 ]
  br label %land.end55

land.end55:                                       ; preds = %land.end54, %while.cond25
  %30 = phi i1 [ false, %while.cond25 ], [ %29, %land.end54 ]
  br i1 %30, label %while.body56, label %while.end57

while.body56:                                     ; preds = %land.end55
  call void @readNewLine()
  br label %while.cond25

while.end57:                                      ; preds = %land.end55
  br label %while.cond18

while.end58:                                      ; preds = %land.end23
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @adaCmp(i8* %match) #0 {
entry:
  %retval = alloca i1, align 1
  %match.addr = alloca i8*, align 8
  %status = alloca i8, align 1
  %tmp = alloca %struct._MIOPos, align 8
  store i8* %match, i8** %match.addr, align 8
  store i8 0, i8* %status, align 1
  %0 = load i8*, i8** @line, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* @exception, align 4
  %1 = load i8, i8* %status, align 1
  %tobool = trunc i8 %1 to i1
  store i1 %tobool, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** @line, align 8
  %3 = load i32, i32* @pos, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %idxprom
  %4 = load i32, i32* @lineLen, align 4
  %5 = load i32, i32* @pos, align 4
  %sub = sub nsw i32 %4, %5
  %6 = load i8*, i8** %match.addr, align 8
  %call = call zeroext i1 @cmp(i8* %arrayidx, i32 %sub, i8* %6)
  %frombool = zext i1 %call to i8
  store i8 %frombool, i8* %status, align 1
  %7 = load i8, i8* %status, align 1
  %tobool1 = trunc i8 %7 to i1
  %conv = zext i1 %tobool1 to i32
  %cmp2 = icmp eq i32 %conv, 1
  br i1 %cmp2, label %land.lhs.true, label %if.end11

land.lhs.true:                                    ; preds = %if.end
  %8 = load i8*, i8** %match.addr, align 8
  %cmp4 = icmp ne i8* %8, null
  br i1 %cmp4, label %if.then6, label %if.end11

if.then6:                                         ; preds = %land.lhs.true
  %call7 = call i64 @getInputLineNumber()
  store i64 %call7, i64* @matchLineNum, align 8
  %call8 = call [2 x i64] @getInputFilePosition()
  %9 = bitcast %struct._MIOPos* %tmp to [2 x i64]*
  store [2 x i64] %call8, [2 x i64]* %9, align 8
  %10 = bitcast %struct._MIOPos* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct._MIOPos* @matchFilePos to i8*), i8* align 8 %10, i64 16, i1 false)
  %11 = load i8*, i8** %match.addr, align 8
  %call9 = call i64 @strlen(i8* %11)
  %conv10 = trunc i64 %call9 to i32
  call void @movePos(i32 %conv10)
  br label %if.end11

if.end11:                                         ; preds = %if.then6, %land.lhs.true, %if.end
  %12 = load i8, i8* %status, align 1
  %tobool12 = trunc i8 %12 to i1
  store i1 %tobool12, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end11, %if.then
  %13 = load i1, i1* %retval, align 1
  ret i1 %13
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct.sAdaTokenInfo* @adaParseLoopVar(%struct.sAdaTokenInfo* %parent) #0 {
entry:
  %parent.addr = alloca %struct.sAdaTokenInfo*, align 8
  %i = alloca i32, align 4
  %token = alloca %struct.sAdaTokenInfo*, align 8
  store %struct.sAdaTokenInfo* %parent, %struct.sAdaTokenInfo** %parent.addr, align 8
  store %struct.sAdaTokenInfo* null, %struct.sAdaTokenInfo** %token, align 8
  call void @skipWhiteSpace()
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* @pos, align 4
  %1 = load i32, i32* %i, align 4
  %add = add nsw i32 %0, %1
  %2 = load i32, i32* @lineLen, align 4
  %cmp = icmp slt i32 %add, %2
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %3 = load i8*, i8** @line, align 8
  %4 = load i32, i32* @pos, align 4
  %5 = load i32, i32* %i, align 4
  %add1 = add nsw i32 %4, %5
  %idxprom = sext i32 %add1 to i64
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %6 to i32
  %call = call i32 @isspace(i32 %conv) #8
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %7 = phi i1 [ false, %for.cond ], [ %lnot, %land.rhs ]
  br i1 %7, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %9 = load i8*, i8** @line, align 8
  %10 = load i32, i32* @pos, align 4
  %idxprom2 = sext i32 %10 to i64
  %arrayidx3 = getelementptr inbounds i8, i8* %9, i64 %idxprom2
  %11 = load i32, i32* %i, align 4
  %12 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %parent.addr, align 8
  %call4 = call %struct.sAdaTokenInfo* @newAdaToken(i8* %arrayidx3, i32 %11, i32 23, i1 zeroext false, %struct.sAdaTokenInfo* %12)
  store %struct.sAdaTokenInfo* %call4, %struct.sAdaTokenInfo** %token, align 8
  %13 = load i32, i32* %i, align 4
  call void @movePos(i32 %13)
  call void @skipPastKeyword(i32 18)
  %14 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token, align 8
  ret %struct.sAdaTokenInfo* %14
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @freeAdaToken(%struct.sAdaTokenList* %list, %struct.sAdaTokenInfo* %token) #0 {
entry:
  %list.addr = alloca %struct.sAdaTokenList*, align 8
  %token.addr = alloca %struct.sAdaTokenInfo*, align 8
  store %struct.sAdaTokenList* %list, %struct.sAdaTokenList** %list.addr, align 8
  store %struct.sAdaTokenInfo* %token, %struct.sAdaTokenInfo** %token.addr, align 8
  %0 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token.addr, align 8
  %cmp = icmp ne %struct.sAdaTokenInfo* %0, null
  br i1 %cmp, label %if.then, label %if.end34

if.then:                                          ; preds = %entry
  %1 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token.addr, align 8
  %name = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %1, i32 0, i32 3
  %2 = load i8*, i8** %name, align 8
  %cmp1 = icmp ne i8* %2, null
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %3 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token.addr, align 8
  %name3 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %3, i32 0, i32 3
  %4 = load i8*, i8** %name3, align 8
  call void @eFree(i8* %4)
  %5 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token.addr, align 8
  %name4 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %5, i32 0, i32 3
  store i8* null, i8** %name4, align 8
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %6 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token.addr, align 8
  %children = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %6, i32 0, i32 8
  call void @freeAdaTokenList(%struct.sAdaTokenList* %children)
  %7 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token.addr, align 8
  %prev = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %7, i32 0, i32 6
  %8 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %prev, align 8
  %cmp5 = icmp ne %struct.sAdaTokenInfo* %8, null
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  %9 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token.addr, align 8
  %next = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %9, i32 0, i32 7
  %10 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %next, align 8
  %11 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token.addr, align 8
  %prev7 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %11, i32 0, i32 6
  %12 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %prev7, align 8
  %next8 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %12, i32 0, i32 7
  store %struct.sAdaTokenInfo* %10, %struct.sAdaTokenInfo** %next8, align 8
  br label %if.end15

if.else:                                          ; preds = %if.end
  %13 = load %struct.sAdaTokenList*, %struct.sAdaTokenList** %list.addr, align 8
  %cmp9 = icmp ne %struct.sAdaTokenList* %13, null
  br i1 %cmp9, label %land.lhs.true, label %if.end14

land.lhs.true:                                    ; preds = %if.else
  %14 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token.addr, align 8
  %prev10 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %14, i32 0, i32 6
  %15 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %prev10, align 8
  %cmp11 = icmp eq %struct.sAdaTokenInfo* %15, null
  br i1 %cmp11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %land.lhs.true
  %16 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token.addr, align 8
  %next13 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %16, i32 0, i32 7
  %17 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %next13, align 8
  %18 = load %struct.sAdaTokenList*, %struct.sAdaTokenList** %list.addr, align 8
  %head = getelementptr inbounds %struct.sAdaTokenList, %struct.sAdaTokenList* %18, i32 0, i32 1
  store %struct.sAdaTokenInfo* %17, %struct.sAdaTokenInfo** %head, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %land.lhs.true, %if.else
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.then6
  %19 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token.addr, align 8
  %next16 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %19, i32 0, i32 7
  %20 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %next16, align 8
  %cmp17 = icmp ne %struct.sAdaTokenInfo* %20, null
  br i1 %cmp17, label %if.then18, label %if.else22

if.then18:                                        ; preds = %if.end15
  %21 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token.addr, align 8
  %prev19 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %21, i32 0, i32 6
  %22 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %prev19, align 8
  %23 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token.addr, align 8
  %next20 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %23, i32 0, i32 7
  %24 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %next20, align 8
  %prev21 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %24, i32 0, i32 6
  store %struct.sAdaTokenInfo* %22, %struct.sAdaTokenInfo** %prev21, align 8
  br label %if.end30

if.else22:                                        ; preds = %if.end15
  %25 = load %struct.sAdaTokenList*, %struct.sAdaTokenList** %list.addr, align 8
  %cmp23 = icmp ne %struct.sAdaTokenList* %25, null
  br i1 %cmp23, label %land.lhs.true24, label %if.end29

land.lhs.true24:                                  ; preds = %if.else22
  %26 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token.addr, align 8
  %next25 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %26, i32 0, i32 7
  %27 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %next25, align 8
  %cmp26 = icmp eq %struct.sAdaTokenInfo* %27, null
  br i1 %cmp26, label %if.then27, label %if.end29

if.then27:                                        ; preds = %land.lhs.true24
  %28 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token.addr, align 8
  %prev28 = getelementptr inbounds %struct.sAdaTokenInfo, %struct.sAdaTokenInfo* %28, i32 0, i32 6
  %29 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %prev28, align 8
  %30 = load %struct.sAdaTokenList*, %struct.sAdaTokenList** %list.addr, align 8
  %tail = getelementptr inbounds %struct.sAdaTokenList, %struct.sAdaTokenList* %30, i32 0, i32 2
  store %struct.sAdaTokenInfo* %29, %struct.sAdaTokenInfo** %tail, align 8
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %land.lhs.true24, %if.else22
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.then18
  %31 = load %struct.sAdaTokenList*, %struct.sAdaTokenList** %list.addr, align 8
  %cmp31 = icmp ne %struct.sAdaTokenList* %31, null
  br i1 %cmp31, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end30
  %32 = load %struct.sAdaTokenList*, %struct.sAdaTokenList** %list.addr, align 8
  %numTokens = getelementptr inbounds %struct.sAdaTokenList, %struct.sAdaTokenList* %32, i32 0, i32 0
  %33 = load i32, i32* %numTokens, align 8
  %dec = add nsw i32 %33, -1
  store i32 %dec, i32* %numTokens, align 8
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.end30
  %34 = load %struct.sAdaTokenInfo*, %struct.sAdaTokenInfo** %token.addr, align 8
  %35 = bitcast %struct.sAdaTokenInfo* %34 to i8*
  call void @eFree(i8* %35)
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @cmp(i8* %buf, i32 %len, i8* %match) #0 {
entry:
  %retval = alloca i1, align 1
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %match.addr = alloca i8*, align 8
  %status = alloca i8, align 1
  %matchLen = alloca i32, align 4
  store i8* %buf, i8** %buf.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store i8* %match, i8** %match.addr, align 8
  store i8 0, i8* %status, align 1
  %0 = load i8*, i8** %match.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 true, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %buf.addr, align 8
  %cmp1 = icmp eq i8* %1, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %2 = load i8, i8* %status, align 1
  %tobool = trunc i8 %2 to i1
  store i1 %tobool, i1* %retval, align 1
  br label %return

if.end3:                                          ; preds = %if.end
  %3 = load i8*, i8** %match.addr, align 8
  %call = call i64 @strlen(i8* %3)
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %matchLen, align 4
  %4 = load i8*, i8** %buf.addr, align 8
  %5 = load i8*, i8** %match.addr, align 8
  %6 = load i32, i32* %matchLen, align 4
  %conv4 = sext i32 %6 to i64
  %call5 = call i32 @strncasecmp(i8* %4, i8* %5, i64 %conv4)
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %land.lhs.true, label %if.end41

land.lhs.true:                                    ; preds = %if.end3
  %7 = load i32, i32* %matchLen, align 4
  %8 = load i32, i32* %len.addr, align 4
  %cmp8 = icmp eq i32 %7, %8
  br i1 %cmp8, label %if.then40, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %9 = load i32, i32* %matchLen, align 4
  %10 = load i32, i32* %len.addr, align 4
  %cmp10 = icmp slt i32 %9, %10
  br i1 %cmp10, label %land.lhs.true12, label %if.end41

land.lhs.true12:                                  ; preds = %lor.lhs.false
  %11 = load i8*, i8** %buf.addr, align 8
  %12 = load i32, i32* %matchLen, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 %idxprom
  %13 = load i8, i8* %arrayidx, align 1
  %conv13 = sext i8 %13 to i32
  %call14 = call i32 @isspace(i32 %conv13) #8
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then40, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %land.lhs.true12
  %14 = load i8*, i8** %buf.addr, align 8
  %15 = load i32, i32* %matchLen, align 4
  %idxprom17 = sext i32 %15 to i64
  %arrayidx18 = getelementptr inbounds i8, i8* %14, i64 %idxprom17
  %16 = load i8, i8* %arrayidx18, align 1
  %conv19 = sext i8 %16 to i32
  %cmp20 = icmp eq i32 %conv19, 40
  br i1 %cmp20, label %if.then40, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %lor.lhs.false16
  %17 = load i8*, i8** %buf.addr, align 8
  %18 = load i32, i32* %matchLen, align 4
  %idxprom23 = sext i32 %18 to i64
  %arrayidx24 = getelementptr inbounds i8, i8* %17, i64 %idxprom23
  %19 = load i8, i8* %arrayidx24, align 1
  %conv25 = sext i8 %19 to i32
  %cmp26 = icmp eq i32 %conv25, 41
  br i1 %cmp26, label %if.then40, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %lor.lhs.false22
  %20 = load i8*, i8** %buf.addr, align 8
  %21 = load i32, i32* %matchLen, align 4
  %idxprom29 = sext i32 %21 to i64
  %arrayidx30 = getelementptr inbounds i8, i8* %20, i64 %idxprom29
  %22 = load i8, i8* %arrayidx30, align 1
  %conv31 = sext i8 %22 to i32
  %cmp32 = icmp eq i32 %conv31, 58
  br i1 %cmp32, label %if.then40, label %lor.lhs.false34

lor.lhs.false34:                                  ; preds = %lor.lhs.false28
  %23 = load i8*, i8** %buf.addr, align 8
  %24 = load i32, i32* %matchLen, align 4
  %idxprom35 = sext i32 %24 to i64
  %arrayidx36 = getelementptr inbounds i8, i8* %23, i64 %idxprom35
  %25 = load i8, i8* %arrayidx36, align 1
  %conv37 = sext i8 %25 to i32
  %cmp38 = icmp eq i32 %conv37, 59
  br i1 %cmp38, label %if.then40, label %if.end41

if.then40:                                        ; preds = %lor.lhs.false34, %lor.lhs.false28, %lor.lhs.false22, %lor.lhs.false16, %land.lhs.true12, %land.lhs.true
  store i8 1, i8* %status, align 1
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %lor.lhs.false34, %lor.lhs.false, %if.end3
  %26 = load i8, i8* %status, align 1
  %tobool42 = trunc i8 %26 to i1
  store i1 %tobool42, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end41, %if.then2, %if.then
  %27 = load i1, i1* %retval, align 1
  ret i1 %27
}

declare i64 @getInputLineNumber() #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @skipPastWord() #0 {
entry:
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* @exception, align 4
  %cmp = icmp ne i32 %0, 1
  br i1 %cmp, label %land.rhs, label %land.end17

land.rhs:                                         ; preds = %while.cond
  %1 = load i32, i32* @pos, align 4
  %cmp1 = icmp eq i32 %1, 0
  br i1 %cmp1, label %land.lhs.true8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.rhs
  %2 = load i8*, i8** @line, align 8
  %3 = load i32, i32* @pos, align 4
  %sub = sub nsw i32 %3, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %4 to i32
  %call = call i32 @isalnum(i32 %conv) #8
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false
  %5 = load i8*, i8** @line, align 8
  %6 = load i32, i32* @pos, align 4
  %sub2 = sub nsw i32 %6, 1
  %idxprom3 = sext i32 %sub2 to i64
  %arrayidx4 = getelementptr inbounds i8, i8* %5, i64 %idxprom3
  %7 = load i8, i8* %arrayidx4, align 1
  %conv5 = sext i8 %7 to i32
  %cmp6 = icmp ne i32 %conv5, 95
  br i1 %cmp6, label %land.lhs.true8, label %land.end

land.lhs.true8:                                   ; preds = %land.lhs.true, %land.rhs
  %8 = load i32, i32* @pos, align 4
  %9 = load i32, i32* @lineLen, align 4
  %cmp9 = icmp slt i32 %8, %9
  br i1 %cmp9, label %land.rhs11, label %land.end

land.rhs11:                                       ; preds = %land.lhs.true8
  %10 = load i8*, i8** @line, align 8
  %11 = load i32, i32* @pos, align 4
  %idxprom12 = sext i32 %11 to i64
  %arrayidx13 = getelementptr inbounds i8, i8* %10, i64 %idxprom12
  %call14 = call i32 @strncasecmp(i8* %arrayidx13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0), i64 2)
  %cmp15 = icmp eq i32 %call14, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs11, %land.lhs.true8, %land.lhs.true, %lor.lhs.false
  %12 = phi i1 [ false, %land.lhs.true8 ], [ false, %land.lhs.true ], [ false, %lor.lhs.false ], [ %cmp15, %land.rhs11 ]
  br label %land.end17

land.end17:                                       ; preds = %land.end, %while.cond
  %13 = phi i1 [ false, %while.cond ], [ %12, %land.end ]
  br i1 %13, label %while.body, label %while.end

while.body:                                       ; preds = %land.end17
  call void @readNewLine()
  br label %while.cond

while.end:                                        ; preds = %land.end17
  br label %while.cond18

while.cond18:                                     ; preds = %while.end94, %while.end
  %14 = load i32, i32* @exception, align 4
  %cmp19 = icmp ne i32 %14, 1
  br i1 %cmp19, label %land.lhs.true21, label %land.end51

land.lhs.true21:                                  ; preds = %while.cond18
  %15 = load i8*, i8** @line, align 8
  %16 = load i32, i32* @pos, align 4
  %idxprom22 = sext i32 %16 to i64
  %arrayidx23 = getelementptr inbounds i8, i8* %15, i64 %idxprom22
  %17 = load i8, i8* %arrayidx23, align 1
  %conv24 = sext i8 %17 to i32
  %call25 = call i32 @isspace(i32 %conv24) #8
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %land.end51, label %land.lhs.true27

land.lhs.true27:                                  ; preds = %land.lhs.true21
  %18 = load i8*, i8** @line, align 8
  %19 = load i32, i32* @pos, align 4
  %idxprom28 = sext i32 %19 to i64
  %arrayidx29 = getelementptr inbounds i8, i8* %18, i64 %idxprom28
  %20 = load i8, i8* %arrayidx29, align 1
  %conv30 = sext i8 %20 to i32
  %cmp31 = icmp ne i32 %conv30, 40
  br i1 %cmp31, label %land.lhs.true33, label %land.end51

land.lhs.true33:                                  ; preds = %land.lhs.true27
  %21 = load i8*, i8** @line, align 8
  %22 = load i32, i32* @pos, align 4
  %idxprom34 = sext i32 %22 to i64
  %arrayidx35 = getelementptr inbounds i8, i8* %21, i64 %idxprom34
  %23 = load i8, i8* %arrayidx35, align 1
  %conv36 = sext i8 %23 to i32
  %cmp37 = icmp ne i32 %conv36, 41
  br i1 %cmp37, label %land.lhs.true39, label %land.end51

land.lhs.true39:                                  ; preds = %land.lhs.true33
  %24 = load i8*, i8** @line, align 8
  %25 = load i32, i32* @pos, align 4
  %idxprom40 = sext i32 %25 to i64
  %arrayidx41 = getelementptr inbounds i8, i8* %24, i64 %idxprom40
  %26 = load i8, i8* %arrayidx41, align 1
  %conv42 = sext i8 %26 to i32
  %cmp43 = icmp ne i32 %conv42, 58
  br i1 %cmp43, label %land.rhs45, label %land.end51

land.rhs45:                                       ; preds = %land.lhs.true39
  %27 = load i8*, i8** @line, align 8
  %28 = load i32, i32* @pos, align 4
  %idxprom46 = sext i32 %28 to i64
  %arrayidx47 = getelementptr inbounds i8, i8* %27, i64 %idxprom46
  %29 = load i8, i8* %arrayidx47, align 1
  %conv48 = sext i8 %29 to i32
  %cmp49 = icmp ne i32 %conv48, 59
  br label %land.end51

land.end51:                                       ; preds = %land.rhs45, %land.lhs.true39, %land.lhs.true33, %land.lhs.true27, %land.lhs.true21, %while.cond18
  %30 = phi i1 [ false, %land.lhs.true39 ], [ false, %land.lhs.true33 ], [ false, %land.lhs.true27 ], [ false, %land.lhs.true21 ], [ false, %while.cond18 ], [ %cmp49, %land.rhs45 ]
  br i1 %30, label %while.body52, label %while.end95

while.body52:                                     ; preds = %land.end51
  %31 = load i32, i32* @pos, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* @pos, align 4
  %32 = load i32, i32* @pos, align 4
  %33 = load i32, i32* @lineLen, align 4
  %cmp53 = icmp sge i32 %32, %33
  br i1 %cmp53, label %if.then, label %if.end61

if.then:                                          ; preds = %while.body52
  %call55 = call i8* @readLineFromInputFile()
  store i8* %call55, i8** @line, align 8
  store i32 0, i32* @pos, align 4
  %34 = load i8*, i8** @line, align 8
  %cmp56 = icmp eq i8* %34, null
  br i1 %cmp56, label %if.then58, label %if.end

if.then58:                                        ; preds = %if.then
  store i32 0, i32* @lineLen, align 4
  store i32 1, i32* @exception, align 4
  br label %while.end95

if.end:                                           ; preds = %if.then
  %35 = load i8*, i8** @line, align 8
  %call59 = call i64 @strlen(i8* %35)
  %conv60 = trunc i64 %call59 to i32
  store i32 %conv60, i32* @lineLen, align 4
  br label %while.end95

if.end61:                                         ; preds = %while.body52
  br label %while.cond62

while.cond62:                                     ; preds = %while.body93, %if.end61
  %36 = load i32, i32* @exception, align 4
  %cmp63 = icmp ne i32 %36, 1
  br i1 %cmp63, label %land.rhs65, label %land.end92

land.rhs65:                                       ; preds = %while.cond62
  %37 = load i32, i32* @pos, align 4
  %cmp66 = icmp eq i32 %37, 0
  br i1 %cmp66, label %land.lhs.true82, label %lor.lhs.false68

lor.lhs.false68:                                  ; preds = %land.rhs65
  %38 = load i8*, i8** @line, align 8
  %39 = load i32, i32* @pos, align 4
  %sub69 = sub nsw i32 %39, 1
  %idxprom70 = sext i32 %sub69 to i64
  %arrayidx71 = getelementptr inbounds i8, i8* %38, i64 %idxprom70
  %40 = load i8, i8* %arrayidx71, align 1
  %conv72 = sext i8 %40 to i32
  %call73 = call i32 @isalnum(i32 %conv72) #8
  %tobool74 = icmp ne i32 %call73, 0
  br i1 %tobool74, label %land.end91, label %land.lhs.true75

land.lhs.true75:                                  ; preds = %lor.lhs.false68
  %41 = load i8*, i8** @line, align 8
  %42 = load i32, i32* @pos, align 4
  %sub76 = sub nsw i32 %42, 1
  %idxprom77 = sext i32 %sub76 to i64
  %arrayidx78 = getelementptr inbounds i8, i8* %41, i64 %idxprom77
  %43 = load i8, i8* %arrayidx78, align 1
  %conv79 = sext i8 %43 to i32
  %cmp80 = icmp ne i32 %conv79, 95
  br i1 %cmp80, label %land.lhs.true82, label %land.end91

land.lhs.true82:                                  ; preds = %land.lhs.true75, %land.rhs65
  %44 = load i32, i32* @pos, align 4
  %45 = load i32, i32* @lineLen, align 4
  %cmp83 = icmp slt i32 %44, %45
  br i1 %cmp83, label %land.rhs85, label %land.end91

land.rhs85:                                       ; preds = %land.lhs.true82
  %46 = load i8*, i8** @line, align 8
  %47 = load i32, i32* @pos, align 4
  %idxprom86 = sext i32 %47 to i64
  %arrayidx87 = getelementptr inbounds i8, i8* %46, i64 %idxprom86
  %call88 = call i32 @strncasecmp(i8* %arrayidx87, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0), i64 2)
  %cmp89 = icmp eq i32 %call88, 0
  br label %land.end91

land.end91:                                       ; preds = %land.rhs85, %land.lhs.true82, %land.lhs.true75, %lor.lhs.false68
  %48 = phi i1 [ false, %land.lhs.true82 ], [ false, %land.lhs.true75 ], [ false, %lor.lhs.false68 ], [ %cmp89, %land.rhs85 ]
  br label %land.end92

land.end92:                                       ; preds = %land.end91, %while.cond62
  %49 = phi i1 [ false, %while.cond62 ], [ %48, %land.end91 ]
  br i1 %49, label %while.body93, label %while.end94

while.body93:                                     ; preds = %land.end92
  call void @readNewLine()
  br label %while.cond62

while.end94:                                      ; preds = %land.end92
  br label %while.cond18

while.end95:                                      ; preds = %if.then58, %if.end, %land.end51
  ret void
}

declare i8* @eMalloc(i64) #1

declare i8* @strncpy(i8*, i8*, i64) #1

declare void @initTagEntry(%struct.sTagEntryInfo*, i8*, i32) #1

declare void @markTagExtraBit(%struct.sTagEntryInfo*, i32) #1

declare i8* @eRealloc(i8*, i64) #1

declare void @eFree(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @makeSpec(i32* %kind) #0 {
entry:
  %kind.addr = alloca i32*, align 8
  store i32* %kind, i32** %kind.addr, align 8
  %0 = load i32*, i32** %kind.addr, align 8
  %1 = load i32, i32* %0, align 4
  switch i32 %1, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb1
    i32 5, label %sw.bb2
    i32 9, label %sw.bb3
    i32 14, label %sw.bb4
    i32 16, label %sw.bb5
    i32 18, label %sw.bb6
    i32 20, label %sw.bb7
  ]

sw.bb:                                            ; preds = %entry
  %2 = load i32*, i32** %kind.addr, align 8
  store i32 0, i32* %2, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %3 = load i32*, i32** %kind.addr, align 8
  store i32 2, i32* %3, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %4 = load i32*, i32** %kind.addr, align 8
  store i32 4, i32* %4, align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %5 = load i32*, i32** %kind.addr, align 8
  store i32 8, i32* %5, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %6 = load i32*, i32** %kind.addr, align 8
  store i32 13, i32* %6, align 4
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %7 = load i32*, i32** %kind.addr, align 8
  store i32 15, i32* %7, align 4
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  %8 = load i32*, i32** %kind.addr, align 8
  store i32 17, i32* %8, align 4
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  %9 = load i32*, i32** %kind.addr, align 8
  store i32 19, i32* %9, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %10 = load i32*, i32** %kind.addr, align 8
  store i32 -1, i32* %10, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  ret void
}

declare zeroext i1 @isXtagEnabled(i32) #1

declare i32 @makeTagEntry(%struct.sTagEntryInfo*) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { returns_twice }
attributes #7 = { noreturn }
attributes #8 = { nounwind readonly }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 10.0.0 (https://github.com/holzschu/clang.git 0cfc630fbdb62e96720b611a57123ef3eb13e297) (https://github.com/holzschu/llvm.git 0d8a71e39b28502c24718f7e74b5acbcfe36dfe0)"}
