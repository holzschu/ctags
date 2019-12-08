; ModuleID = 'eiffel.c'
source_filename = "eiffel.c"
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
%struct.sTokenInfo = type { i32, i32, i8, %struct.sVString*, %struct.sVString*, %struct.sVString* }

@.str = private unnamed_addr constant [7 x i8] c"Eiffel\00", align 1
@EiffelKinds = internal global [3 x %struct.sKindDefinition] [%struct.sKindDefinition { i8 1, i8 99, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 102, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 0, i8 108, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }], align 8
@extensions = internal constant [2 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), i8* null], align 8
@EiffelKeywordTable = internal constant [65 x %struct.keywordTable] [%struct.keywordTable { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i32 0 }, %struct.keywordTable { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i32 1 }, %struct.keywordTable { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i32 2 }, %struct.keywordTable { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0), i32 3 }, %struct.keywordTable { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0), i32 4 }, %struct.keywordTable { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0), i32 5 }, %struct.keywordTable { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i32 6 }, %struct.keywordTable { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), i32 7 }, %struct.keywordTable { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i32 8 }, %struct.keywordTable { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 9 }, %struct.keywordTable { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0), i32 10 }, %struct.keywordTable { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i32 0, i32 0), i32 11 }, %struct.keywordTable { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0), i32 12 }, %struct.keywordTable { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0), i32 13 }, %struct.keywordTable { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i32 14 }, %struct.keywordTable { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0), i32 15 }, %struct.keywordTable { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i32 0, i32 0), i32 16 }, %struct.keywordTable { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i32 0, i32 0), i32 17 }, %struct.keywordTable { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0), i32 18 }, %struct.keywordTable { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i32 0, i32 0), i32 19 }, %struct.keywordTable { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i32 0, i32 0), i32 20 }, %struct.keywordTable { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i32 0, i32 0), i32 21 }, %struct.keywordTable { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i32 0, i32 0), i32 22 }, %struct.keywordTable { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0), i32 23 }, %struct.keywordTable { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i32 0, i32 0), i32 24 }, %struct.keywordTable { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0), i32 25 }, %struct.keywordTable { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i32 26 }, %struct.keywordTable { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i32 0, i32 0), i32 27 }, %struct.keywordTable { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0), i32 28 }, %struct.keywordTable { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i32 0, i32 0), i32 29 }, %struct.keywordTable { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i32 0, i32 0), i32 30 }, %struct.keywordTable { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.39, i32 0, i32 0), i32 40 }, %struct.keywordTable { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i32 0, i32 0), i32 31 }, %struct.keywordTable { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i32 0, i32 0), i32 32 }, %struct.keywordTable { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i32 0, i32 0), i32 32 }, %struct.keywordTable { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43, i32 0, i32 0), i32 33 }, %struct.keywordTable { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i32 0, i32 0), i32 34 }, %struct.keywordTable { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i32 0, i32 0), i32 35 }, %struct.keywordTable { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i32 0, i32 0), i32 36 }, %struct.keywordTable { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i32 37 }, %struct.keywordTable { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i32 0, i32 0), i32 38 }, %struct.keywordTable { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.48, i32 0, i32 0), i32 39 }, %struct.keywordTable { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i32 0, i32 0), i32 40 }, %struct.keywordTable { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i32 0, i32 0), i32 41 }, %struct.keywordTable { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.51, i32 0, i32 0), i32 42 }, %struct.keywordTable { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i32 0, i32 0), i32 43 }, %struct.keywordTable { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.53, i32 0, i32 0), i32 44 }, %struct.keywordTable { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i32 0, i32 0), i32 45 }, %struct.keywordTable { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.55, i32 0, i32 0), i32 46 }, %struct.keywordTable { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.56, i32 0, i32 0), i32 47 }, %struct.keywordTable { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.57, i32 0, i32 0), i32 48 }, %struct.keywordTable { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i32 0, i32 0), i32 49 }, %struct.keywordTable { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i32 0, i32 0), i32 50 }, %struct.keywordTable { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.60, i32 0, i32 0), i32 51 }, %struct.keywordTable { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.61, i32 0, i32 0), i32 52 }, %struct.keywordTable { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.62, i32 0, i32 0), i32 53 }, %struct.keywordTable { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.63, i32 0, i32 0), i32 54 }, %struct.keywordTable { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.64, i32 0, i32 0), i32 55 }, %struct.keywordTable { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.65, i32 0, i32 0), i32 56 }, %struct.keywordTable { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.66, i32 0, i32 0), i32 57 }, %struct.keywordTable { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.67, i32 0, i32 0), i32 58 }, %struct.keywordTable { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i32 0, i32 0), i32 59 }, %struct.keywordTable { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.69, i32 0, i32 0), i32 60 }, %struct.keywordTable { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.70, i32 0, i32 0), i32 61 }, %struct.keywordTable { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.71, i32 0, i32 0), i32 62 }], align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"class\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"classes\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"feature\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"features\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"local\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"local entities\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@Lang_eiffel = internal global i32 0, align 4
@.str.8 = private unnamed_addr constant [4 x i8] c"BIT\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"NONE\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"across\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"alias\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"and\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"as\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"assign\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"attached\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"attribute\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"check\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"convert\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"create\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"creation\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"current\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"deferred\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"detachable\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"do\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"else\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"elseif\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"end\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"ensure\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"expanded\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"export\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"external\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"from\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"frozen\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"if\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"implies\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"indexing\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"infix\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"inherit\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"insert\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"inspect\00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"invariant\00", align 1
@.str.45 = private unnamed_addr constant [3 x i8] c"is\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"like\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"loop\00", align 1
@.str.48 = private unnamed_addr constant [4 x i8] c"not\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c"note\00", align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"obsolete\00", align 1
@.str.51 = private unnamed_addr constant [4 x i8] c"old\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"once\00", align 1
@.str.53 = private unnamed_addr constant [3 x i8] c"or\00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"prefix\00", align 1
@.str.55 = private unnamed_addr constant [9 x i8] c"redefine\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"rename\00", align 1
@.str.57 = private unnamed_addr constant [8 x i8] c"require\00", align 1
@.str.58 = private unnamed_addr constant [7 x i8] c"rescue\00", align 1
@.str.59 = private unnamed_addr constant [7 x i8] c"result\00", align 1
@.str.60 = private unnamed_addr constant [6 x i8] c"retry\00", align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"select\00", align 1
@.str.62 = private unnamed_addr constant [9 x i8] c"separate\00", align 1
@.str.63 = private unnamed_addr constant [6 x i8] c"strip\00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"then\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.66 = private unnamed_addr constant [9 x i8] c"undefine\00", align 1
@.str.67 = private unnamed_addr constant [7 x i8] c"unique\00", align 1
@.str.68 = private unnamed_addr constant [6 x i8] c"until\00", align 1
@.str.69 = private unnamed_addr constant [8 x i8] c"variant\00", align 1
@.str.70 = private unnamed_addr constant [5 x i8] c"when\00", align 1
@.str.71 = private unnamed_addr constant [4 x i8] c"xor\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sParserDefinition* @EiffelParser() #0 {
entry:
  %def = alloca %struct.sParserDefinition*, align 8
  %call = call %struct.sParserDefinition* @parserNew(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store %struct.sParserDefinition* %call, %struct.sParserDefinition** %def, align 8
  %0 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %0, i32 0, i32 1
  store %struct.sKindDefinition* getelementptr inbounds ([3 x %struct.sKindDefinition], [3 x %struct.sKindDefinition]* @EiffelKinds, i64 0, i64 0), %struct.sKindDefinition** %kindTable, align 8
  %1 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %1, i32 0, i32 2
  store i32 3, i32* %kindCount, align 8
  %2 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %extensions = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %2, i32 0, i32 3
  store i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @extensions, i64 0, i64 0), i8*** %extensions, align 8
  %3 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %parser = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %3, i32 0, i32 8
  store void ()* @findEiffelTags, void ()** %parser, align 8
  %4 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %initialize = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %4, i32 0, i32 6
  store void (i32)* @initialize, void (i32)** %initialize, align 8
  %5 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %keywordTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %5, i32 0, i32 18
  store %struct.keywordTable* getelementptr inbounds ([65 x %struct.keywordTable], [65 x %struct.keywordTable]* @EiffelKeywordTable, i64 0, i64 0), %struct.keywordTable** %keywordTable, align 8
  %6 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %keywordCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %6, i32 0, i32 19
  store i32 65, i32* %keywordCount, align 8
  %7 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  ret %struct.sParserDefinition* %7
}

declare %struct.sParserDefinition* @parserNew(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @findEiffelTags() #0 {
entry:
  %token = alloca %struct.sTokenInfo*, align 8
  %call = call %struct.sTokenInfo* @newToken()
  store %struct.sTokenInfo* %call, %struct.sTokenInfo** %token, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %call1 = call zeroext i1 @findKeyword(%struct.sTokenInfo* %0, i32 9)
  br i1 %call1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  call void @parseClass(%struct.sTokenInfo* %1)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %2 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  call void @deleteToken(%struct.sTokenInfo* %2)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @initialize(i32 %language) #0 {
entry:
  %language.addr = alloca i32, align 4
  store i32 %language, i32* %language.addr, align 4
  %0 = load i32, i32* %language.addr, align 4
  store i32 %0, i32* @Lang_eiffel, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct.sTokenInfo* @newToken() #0 {
entry:
  %token = alloca %struct.sTokenInfo*, align 8
  %call = call i8* @eMalloc(i64 40)
  %0 = bitcast i8* %call to %struct.sTokenInfo*
  store %struct.sTokenInfo* %0, %struct.sTokenInfo** %token, align 8
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %1, i32 0, i32 0
  store i32 1, i32* %type, align 8
  %2 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %2, i32 0, i32 1
  store i32 -1, i32* %keyword, align 4
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %isExported = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %3, i32 0, i32 2
  store i8 1, i8* %isExported, align 8
  %call1 = call %struct.sVString* @vStringNew()
  %4 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %string = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %4, i32 0, i32 3
  store %struct.sVString* %call1, %struct.sVString** %string, align 8
  %call2 = call %struct.sVString* @vStringNew()
  %5 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %className = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %5, i32 0, i32 4
  store %struct.sVString* %call2, %struct.sVString** %className, align 8
  %call3 = call %struct.sVString* @vStringNew()
  %6 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %featureName = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %6, i32 0, i32 5
  store %struct.sVString* %call3, %struct.sVString** %featureName, align 8
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  ret %struct.sTokenInfo* %7
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @findKeyword(%struct.sTokenInfo* %token, i32 %keyword) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %keyword.addr = alloca i32, align 4
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  store i32 %keyword, i32* %keyword.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword1 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 1
  %1 = load i32, i32* %keyword1, align 4
  %2 = load i32, i32* %keyword.addr, align 4
  %cmp = icmp eq i32 %1, %2
  br i1 %cmp, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %3, i32 0, i32 0
  %4 = load i32, i32* %type, align 8
  %cmp2 = icmp eq i32 %4, 0
  %lnot = xor i1 %cmp2, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %5 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %5, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %6 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %6)
  br label %while.cond

while.end:                                        ; preds = %land.end
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword3 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %7, i32 0, i32 1
  %8 = load i32, i32* %keyword3, align 4
  %9 = load i32, i32* %keyword.addr, align 4
  %cmp4 = icmp eq i32 %8, %9
  ret i1 %cmp4
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseClass(%struct.sTokenInfo* %token) #0 {
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
  %cmp = icmp eq i32 %2, 12
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @makeEiffelClassTag(%struct.sTokenInfo* %3)
  %4 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end
  br label %do.body1

do.body1:                                         ; preds = %land.end, %if.end
  %5 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type2 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %5, i32 0, i32 0
  %6 = load i32, i32* %type2, align 8
  %cmp3 = icmp eq i32 %6, 16
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %do.body1
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @parseGeneric(%struct.sTokenInfo* %7, i1 zeroext true)
  br label %if.end12

if.else:                                          ; preds = %do.body1
  %8 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type5 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %8, i32 0, i32 0
  %9 = load i32, i32* %type5, align 8
  %cmp6 = icmp eq i32 %9, 13
  br i1 %cmp6, label %if.else8, label %if.then7

if.then7:                                         ; preds = %if.else
  %10 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %10)
  br label %if.end11

if.else8:                                         ; preds = %if.else
  %11 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %11, i32 0, i32 1
  %12 = load i32, i32* %keyword, align 4
  switch i32 %12, label %sw.default [
    i32 32, label %sw.bb
    i32 26, label %sw.bb9
    i32 10, label %sw.bb10
  ]

sw.bb:                                            ; preds = %if.else8
  %13 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @parseInherit(%struct.sTokenInfo* %13)
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.else8
  %14 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @parseFeatureClauses(%struct.sTokenInfo* %14)
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.else8
  %15 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @parseConvert(%struct.sTokenInfo* %15)
  br label %sw.epilog

sw.default:                                       ; preds = %if.else8
  %16 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %16)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb10, %sw.bb9, %sw.bb
  br label %if.end11

if.end11:                                         ; preds = %sw.epilog, %if.then7
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %if.then4
  br label %do.cond

do.cond:                                          ; preds = %if.end12
  %17 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword13 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %17, i32 0, i32 1
  %18 = load i32, i32* %keyword13, align 4
  %cmp14 = icmp eq i32 %18, 20
  br i1 %cmp14, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %do.cond
  %19 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type15 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %19, i32 0, i32 0
  %20 = load i32, i32* %type15, align 8
  %cmp16 = icmp eq i32 %20, 0
  %lnot = xor i1 %cmp16, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %21 = phi i1 [ false, %do.cond ], [ %lnot, %land.rhs ]
  br i1 %21, label %do.body1, label %do.end17

do.end17:                                         ; preds = %land.end
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @deleteToken(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 3
  %1 = load %struct.sVString*, %struct.sVString** %string, align 8
  call void @vStringDelete(%struct.sVString* %1)
  %2 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %className = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %2, i32 0, i32 4
  %3 = load %struct.sVString*, %struct.sVString** %className, align 8
  call void @vStringDelete(%struct.sVString* %3)
  %4 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %featureName = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %4, i32 0, i32 5
  %5 = load %struct.sVString*, %struct.sVString** %featureName, align 8
  call void @vStringDelete(%struct.sVString* %5)
  %6 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %7 = bitcast %struct.sTokenInfo* %6 to i8*
  call void @eFree(i8* %7)
  ret void
}

declare i8* @eMalloc(i64) #1

declare %struct.sVString* @vStringNew() #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @readToken(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %c = alloca i32, align 4
  %vStringClear_s = alloca %struct.sVString*, align 8
  %c2 = alloca i32, align 4
  %numeric = alloca %struct.sVString*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 0
  store i32 1, i32* %type, align 8
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %1, i32 0, i32 1
  store i32 -1, i32* %keyword, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %2, i32 0, i32 3
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

getNextChar:                                      ; preds = %if.then37, %do.end
  br label %do.body1

do.body1:                                         ; preds = %lor.end, %getNextChar
  %call = call i32 @getcFromInputFile()
  store i32 %call, i32* %c, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body1
  %7 = load i32, i32* %c, align 4
  %cmp = icmp eq i32 %7, 9
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.cond
  %8 = load i32, i32* %c, align 4
  %cmp2 = icmp eq i32 %8, 32
  br i1 %cmp2, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %9 = load i32, i32* %c, align 4
  %cmp3 = icmp eq i32 %9, 10
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %do.cond
  %10 = phi i1 [ true, %lor.lhs.false ], [ true, %do.cond ], [ %cmp3, %lor.rhs ]
  br i1 %10, label %do.body1, label %do.end4

do.end4:                                          ; preds = %lor.end
  %11 = load i32, i32* %c, align 4
  switch i32 %11, label %sw.default [
    i32 -1, label %sw.bb
    i32 59, label %sw.bb6
    i32 33, label %sw.bb8
    i32 125, label %sw.bb10
    i32 93, label %sw.bb12
    i32 41, label %sw.bb14
    i32 44, label %sw.bb16
    i32 36, label %sw.bb18
    i32 46, label %sw.bb20
    i32 123, label %sw.bb22
    i32 91, label %sw.bb24
    i32 40, label %sw.bb26
    i32 126, label %sw.bb28
    i32 43, label %sw.bb30
    i32 42, label %sw.bb30
    i32 94, label %sw.bb30
    i32 61, label %sw.bb30
    i32 45, label %sw.bb32
    i32 63, label %sw.bb45
    i32 58, label %sw.bb45
    i32 60, label %sw.bb62
    i32 62, label %sw.bb72
    i32 47, label %sw.bb83
    i32 92, label %sw.bb94
    i32 34, label %sw.bb103
    i32 39, label %sw.bb106
  ]

sw.bb:                                            ; preds = %do.end4
  %12 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type5 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %12, i32 0, i32 0
  store i32 0, i32* %type5, align 8
  br label %sw.epilog

sw.bb6:                                           ; preds = %do.end4
  %13 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type7 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %13, i32 0, i32 0
  store i32 20, i32* %type7, align 8
  br label %sw.epilog

sw.bb8:                                           ; preds = %do.end4
  %14 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type9 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %14, i32 0, i32 0
  store i32 2, i32* %type9, align 8
  br label %sw.epilog

sw.bb10:                                          ; preds = %do.end4
  %15 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type11 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %15, i32 0, i32 0
  store i32 4, i32* %type11, align 8
  br label %sw.epilog

sw.bb12:                                          ; preds = %do.end4
  %16 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type13 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %16, i32 0, i32 0
  store i32 5, i32* %type13, align 8
  br label %sw.epilog

sw.bb14:                                          ; preds = %do.end4
  %17 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type15 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %17, i32 0, i32 0
  store i32 6, i32* %type15, align 8
  br label %sw.epilog

sw.bb16:                                          ; preds = %do.end4
  %18 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type17 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %18, i32 0, i32 0
  store i32 8, i32* %type17, align 8
  br label %sw.epilog

sw.bb18:                                          ; preds = %do.end4
  %19 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type19 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %19, i32 0, i32 0
  store i32 11, i32* %type19, align 8
  br label %sw.epilog

sw.bb20:                                          ; preds = %do.end4
  %20 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type21 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %20, i32 0, i32 0
  store i32 10, i32* %type21, align 8
  br label %sw.epilog

sw.bb22:                                          ; preds = %do.end4
  %21 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type23 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %21, i32 0, i32 0
  store i32 15, i32* %type23, align 8
  br label %sw.epilog

sw.bb24:                                          ; preds = %do.end4
  %22 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type25 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %22, i32 0, i32 0
  store i32 16, i32* %type25, align 8
  br label %sw.epilog

sw.bb26:                                          ; preds = %do.end4
  %23 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type27 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %23, i32 0, i32 0
  store i32 17, i32* %type27, align 8
  br label %sw.epilog

sw.bb28:                                          ; preds = %do.end4
  %24 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type29 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %24, i32 0, i32 0
  store i32 22, i32* %type29, align 8
  br label %sw.epilog

sw.bb30:                                          ; preds = %do.end4, %do.end4, %do.end4, %do.end4
  %25 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type31 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %25, i32 0, i32 0
  store i32 18, i32* %type31, align 8
  br label %sw.epilog

sw.bb32:                                          ; preds = %do.end4
  %call33 = call i32 @getcFromInputFile()
  store i32 %call33, i32* %c, align 4
  %26 = load i32, i32* %c, align 4
  %cmp34 = icmp eq i32 %26, 62
  br i1 %cmp34, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb32
  %27 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type35 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %27, i32 0, i32 0
  store i32 9, i32* %type35, align 8
  br label %if.end44

if.else:                                          ; preds = %sw.bb32
  %28 = load i32, i32* %c, align 4
  %cmp36 = icmp eq i32 %28, 45
  br i1 %cmp36, label %if.then37, label %if.else39

if.then37:                                        ; preds = %if.else
  %call38 = call i32 @skipToCharacter(i32 10)
  br label %getNextChar

if.else39:                                        ; preds = %if.else
  %29 = load i32, i32* %c, align 4
  %call40 = call i32 @isspace(i32 %29) #3
  %tobool = icmp ne i32 %call40, 0
  br i1 %tobool, label %if.end, label %if.then41

if.then41:                                        ; preds = %if.else39
  %30 = load i32, i32* %c, align 4
  call void @ungetcToInputFile(i32 %30)
  br label %if.end

if.end:                                           ; preds = %if.then41, %if.else39
  %31 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type42 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %31, i32 0, i32 0
  store i32 18, i32* %type42, align 8
  br label %if.end43

if.end43:                                         ; preds = %if.end
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %if.then
  br label %sw.epilog

sw.bb45:                                          ; preds = %do.end4, %do.end4
  %call46 = call i32 @getcFromInputFile()
  store i32 %call46, i32* %c2, align 4
  %32 = load i32, i32* %c2, align 4
  %cmp47 = icmp eq i32 %32, 61
  br i1 %cmp47, label %if.then48, label %if.else50

if.then48:                                        ; preds = %sw.bb45
  %33 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type49 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %33, i32 0, i32 0
  store i32 18, i32* %type49, align 8
  br label %if.end61

if.else50:                                        ; preds = %sw.bb45
  %34 = load i32, i32* %c2, align 4
  %call51 = call i32 @isspace(i32 %34) #3
  %tobool52 = icmp ne i32 %call51, 0
  br i1 %tobool52, label %if.end54, label %if.then53

if.then53:                                        ; preds = %if.else50
  %35 = load i32, i32* %c2, align 4
  call void @ungetcToInputFile(i32 %35)
  br label %if.end54

if.end54:                                         ; preds = %if.then53, %if.else50
  %36 = load i32, i32* %c, align 4
  %cmp55 = icmp eq i32 %36, 58
  br i1 %cmp55, label %if.then56, label %if.else58

if.then56:                                        ; preds = %if.end54
  %37 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type57 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %37, i32 0, i32 0
  store i32 7, i32* %type57, align 8
  br label %if.end60

if.else58:                                        ; preds = %if.end54
  %38 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type59 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %38, i32 0, i32 0
  store i32 19, i32* %type59, align 8
  br label %if.end60

if.end60:                                         ; preds = %if.else58, %if.then56
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %if.then48
  br label %sw.epilog

sw.bb62:                                          ; preds = %do.end4
  %call63 = call i32 @getcFromInputFile()
  store i32 %call63, i32* %c, align 4
  %39 = load i32, i32* %c, align 4
  %cmp64 = icmp ne i32 %39, 61
  br i1 %cmp64, label %land.lhs.true, label %if.end70

land.lhs.true:                                    ; preds = %sw.bb62
  %40 = load i32, i32* %c, align 4
  %cmp65 = icmp ne i32 %40, 62
  br i1 %cmp65, label %land.lhs.true66, label %if.end70

land.lhs.true66:                                  ; preds = %land.lhs.true
  %41 = load i32, i32* %c, align 4
  %call67 = call i32 @isspace(i32 %41) #3
  %tobool68 = icmp ne i32 %call67, 0
  br i1 %tobool68, label %if.end70, label %if.then69

if.then69:                                        ; preds = %land.lhs.true66
  %42 = load i32, i32* %c, align 4
  call void @ungetcToInputFile(i32 %42)
  br label %if.end70

if.end70:                                         ; preds = %if.then69, %land.lhs.true66, %land.lhs.true, %sw.bb62
  %43 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type71 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %43, i32 0, i32 0
  store i32 18, i32* %type71, align 8
  br label %sw.epilog

sw.bb72:                                          ; preds = %do.end4
  %call73 = call i32 @getcFromInputFile()
  store i32 %call73, i32* %c, align 4
  %44 = load i32, i32* %c, align 4
  %cmp74 = icmp ne i32 %44, 61
  br i1 %cmp74, label %land.lhs.true75, label %if.end81

land.lhs.true75:                                  ; preds = %sw.bb72
  %45 = load i32, i32* %c, align 4
  %cmp76 = icmp ne i32 %45, 62
  br i1 %cmp76, label %land.lhs.true77, label %if.end81

land.lhs.true77:                                  ; preds = %land.lhs.true75
  %46 = load i32, i32* %c, align 4
  %call78 = call i32 @isspace(i32 %46) #3
  %tobool79 = icmp ne i32 %call78, 0
  br i1 %tobool79, label %if.end81, label %if.then80

if.then80:                                        ; preds = %land.lhs.true77
  %47 = load i32, i32* %c, align 4
  call void @ungetcToInputFile(i32 %47)
  br label %if.end81

if.end81:                                         ; preds = %if.then80, %land.lhs.true77, %land.lhs.true75, %sw.bb72
  %48 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type82 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %48, i32 0, i32 0
  store i32 18, i32* %type82, align 8
  br label %sw.epilog

sw.bb83:                                          ; preds = %do.end4
  %call84 = call i32 @getcFromInputFile()
  store i32 %call84, i32* %c, align 4
  %49 = load i32, i32* %c, align 4
  %cmp85 = icmp ne i32 %49, 47
  br i1 %cmp85, label %land.lhs.true86, label %if.end92

land.lhs.true86:                                  ; preds = %sw.bb83
  %50 = load i32, i32* %c, align 4
  %cmp87 = icmp ne i32 %50, 61
  br i1 %cmp87, label %land.lhs.true88, label %if.end92

land.lhs.true88:                                  ; preds = %land.lhs.true86
  %51 = load i32, i32* %c, align 4
  %call89 = call i32 @isspace(i32 %51) #3
  %tobool90 = icmp ne i32 %call89, 0
  br i1 %tobool90, label %if.end92, label %if.then91

if.then91:                                        ; preds = %land.lhs.true88
  %52 = load i32, i32* %c, align 4
  call void @ungetcToInputFile(i32 %52)
  br label %if.end92

if.end92:                                         ; preds = %if.then91, %land.lhs.true88, %land.lhs.true86, %sw.bb83
  %53 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type93 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %53, i32 0, i32 0
  store i32 18, i32* %type93, align 8
  br label %sw.epilog

sw.bb94:                                          ; preds = %do.end4
  %call95 = call i32 @getcFromInputFile()
  store i32 %call95, i32* %c, align 4
  %54 = load i32, i32* %c, align 4
  %cmp96 = icmp ne i32 %54, 92
  br i1 %cmp96, label %land.lhs.true97, label %if.end101

land.lhs.true97:                                  ; preds = %sw.bb94
  %55 = load i32, i32* %c, align 4
  %call98 = call i32 @isspace(i32 %55) #3
  %tobool99 = icmp ne i32 %call98, 0
  br i1 %tobool99, label %if.end101, label %if.then100

if.then100:                                       ; preds = %land.lhs.true97
  %56 = load i32, i32* %c, align 4
  call void @ungetcToInputFile(i32 %56)
  br label %if.end101

if.end101:                                        ; preds = %if.then100, %land.lhs.true97, %sw.bb94
  %57 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type102 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %57, i32 0, i32 0
  store i32 18, i32* %type102, align 8
  br label %sw.epilog

sw.bb103:                                         ; preds = %do.end4
  %58 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type104 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %58, i32 0, i32 0
  store i32 21, i32* %type104, align 8
  %59 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string105 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %59, i32 0, i32 3
  %60 = load %struct.sVString*, %struct.sVString** %string105, align 8
  call void @parseString(%struct.sVString* %60)
  br label %sw.epilog

sw.bb106:                                         ; preds = %do.end4
  %61 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type107 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %61, i32 0, i32 0
  store i32 3, i32* %type107, align 8
  %call108 = call i32 @parseCharacter()
  br label %sw.epilog

sw.default:                                       ; preds = %do.end4
  %62 = load i32, i32* %c, align 4
  %call109 = call i32 @isalpha(i32 %62) #3
  %tobool110 = icmp ne i32 %call109, 0
  br i1 %tobool110, label %if.then111, label %if.else124

if.then111:                                       ; preds = %sw.default
  %63 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string112 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %63, i32 0, i32 3
  %64 = load %struct.sVString*, %struct.sVString** %string112, align 8
  %65 = load i32, i32* %c, align 4
  call void @parseIdentifier(%struct.sVString* %64, i32 %65)
  %66 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string113 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %66, i32 0, i32 3
  %67 = load %struct.sVString*, %struct.sVString** %string113, align 8
  %buffer114 = getelementptr inbounds %struct.sVString, %struct.sVString* %67, i32 0, i32 2
  %68 = load i8*, i8** %buffer114, align 8
  %69 = load i32, i32* @Lang_eiffel, align 4
  %call115 = call i32 @lookupCaseKeyword(i8* %68, i32 %69)
  %70 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword116 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %70, i32 0, i32 1
  store i32 %call115, i32* %keyword116, align 4
  %71 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword117 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %71, i32 0, i32 1
  %72 = load i32, i32* %keyword117, align 4
  %cmp118 = icmp eq i32 %72, -1
  br i1 %cmp118, label %if.then119, label %if.else121

if.then119:                                       ; preds = %if.then111
  %73 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type120 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %73, i32 0, i32 0
  store i32 12, i32* %type120, align 8
  br label %if.end123

if.else121:                                       ; preds = %if.then111
  %74 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type122 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %74, i32 0, i32 0
  store i32 13, i32* %type122, align 8
  br label %if.end123

if.end123:                                        ; preds = %if.else121, %if.then119
  br label %if.end146

if.else124:                                       ; preds = %sw.default
  %75 = load i32, i32* %c, align 4
  %call125 = call i32 @isdigit(i32 %75) #3
  %tobool126 = icmp ne i32 %call125, 0
  br i1 %tobool126, label %if.then127, label %if.else131

if.then127:                                       ; preds = %if.else124
  %76 = load i32, i32* %c, align 4
  %call128 = call %struct.sVString* @parseNumeric(i32 %76)
  store %struct.sVString* %call128, %struct.sVString** %numeric, align 8
  %77 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string129 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %77, i32 0, i32 3
  %78 = load %struct.sVString*, %struct.sVString** %string129, align 8
  %79 = load %struct.sVString*, %struct.sVString** %numeric, align 8
  call void @vStringCat(%struct.sVString* %78, %struct.sVString* %79)
  %80 = load %struct.sVString*, %struct.sVString** %numeric, align 8
  call void @vStringDelete(%struct.sVString* %80)
  %81 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type130 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %81, i32 0, i32 0
  store i32 14, i32* %type130, align 8
  br label %if.end145

if.else131:                                       ; preds = %if.else124
  %82 = load i32, i32* %c, align 4
  %cmp132 = icmp eq i32 %82, 64
  br i1 %cmp132, label %if.then139, label %lor.lhs.false133

lor.lhs.false133:                                 ; preds = %if.else131
  %83 = load i32, i32* %c, align 4
  %cmp134 = icmp eq i32 %83, 35
  br i1 %cmp134, label %if.then139, label %lor.lhs.false135

lor.lhs.false135:                                 ; preds = %lor.lhs.false133
  %84 = load i32, i32* %c, align 4
  %cmp136 = icmp eq i32 %84, 124
  br i1 %cmp136, label %if.then139, label %lor.lhs.false137

lor.lhs.false137:                                 ; preds = %lor.lhs.false135
  %85 = load i32, i32* %c, align 4
  %cmp138 = icmp eq i32 %85, 38
  br i1 %cmp138, label %if.then139, label %if.else142

if.then139:                                       ; preds = %lor.lhs.false137, %lor.lhs.false135, %lor.lhs.false133, %if.else131
  %86 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string140 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %86, i32 0, i32 3
  %87 = load %struct.sVString*, %struct.sVString** %string140, align 8
  %88 = load i32, i32* %c, align 4
  call void @parseFreeOperator(%struct.sVString* %87, i32 %88)
  %89 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type141 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %89, i32 0, i32 0
  store i32 18, i32* %type141, align 8
  br label %if.end144

if.else142:                                       ; preds = %lor.lhs.false137
  %90 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type143 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %90, i32 0, i32 0
  store i32 1, i32* %type143, align 8
  br label %if.end144

if.end144:                                        ; preds = %if.else142, %if.then139
  br label %if.end145

if.end145:                                        ; preds = %if.end144, %if.then127
  br label %if.end146

if.end146:                                        ; preds = %if.end145, %if.end123
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end146, %sw.bb106, %sw.bb103, %if.end101, %if.end92, %if.end81, %if.end70, %if.end61, %if.end44, %sw.bb30, %sw.bb28, %sw.bb26, %sw.bb24, %sw.bb22, %sw.bb20, %sw.bb18, %sw.bb16, %sw.bb14, %sw.bb12, %sw.bb10, %sw.bb8, %sw.bb6, %sw.bb
  ret void
}

declare i32 @getcFromInputFile() #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @skipToCharacter(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  %d = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  br label %do.body

do.body:                                          ; preds = %land.end, %entry
  %call = call i32 @getcFromInputFile()
  store i32 %call, i32* %d, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %0 = load i32, i32* %d, align 4
  %cmp = icmp ne i32 %0, -1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %1 = load i32, i32* %d, align 4
  %2 = load i32, i32* %c.addr, align 4
  %cmp1 = icmp ne i32 %1, %2
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %3 = phi i1 [ false, %do.cond ], [ %cmp1, %land.rhs ]
  br i1 %3, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  %4 = load i32, i32* %d, align 4
  ret i32 %4
}

; Function Attrs: nounwind readonly
declare i32 @isspace(i32) #2

declare void @ungetcToInputFile(i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseString(%struct.sVString* %string) #0 {
entry:
  %string.addr = alloca %struct.sVString*, align 8
  %verbatim = alloca i8, align 1
  %align = alloca i8, align 1
  %end = alloca i8, align 1
  %verbatimCloser = alloca %struct.sVString*, align 8
  %lastLine = alloca %struct.sVString*, align 8
  %prev = alloca i32, align 4
  %c = alloca i32, align 4
  %vStringClear_s = alloca %struct.sVString*, align 8
  %vStringClear_s21 = alloca %struct.sVString*, align 8
  %vStringClear_s27 = alloca %struct.sVString*, align 8
  %vStringClear_s38 = alloca %struct.sVString*, align 8
  store %struct.sVString* %string, %struct.sVString** %string.addr, align 8
  store i8 0, i8* %verbatim, align 1
  store i8 0, i8* %align, align 1
  store i8 0, i8* %end, align 1
  %call = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call, %struct.sVString** %verbatimCloser, align 8
  %call1 = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call1, %struct.sVString** %lastLine, align 8
  store i32 0, i32* %prev, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end66, %entry
  %0 = load i8, i8* %end, align 1
  %tobool = trunc i8 %0 to i1
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call2 = call i32 @getcFromInputFile()
  store i32 %call2, i32* %c, align 4
  %1 = load i32, i32* %c, align 4
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  store i8 1, i8* %end, align 1
  br label %if.end60

if.else:                                          ; preds = %while.body
  %2 = load i32, i32* %c, align 4
  %cmp3 = icmp eq i32 %2, 34
  br i1 %cmp3, label %if.then4, label %if.else11

if.then4:                                         ; preds = %if.else
  %3 = load i8, i8* %verbatim, align 1
  %tobool5 = trunc i8 %3 to i1
  br i1 %tobool5, label %if.else7, label %if.then6

if.then6:                                         ; preds = %if.then4
  store i8 1, i8* %end, align 1
  br label %if.end

if.else7:                                         ; preds = %if.then4
  %4 = load %struct.sVString*, %struct.sVString** %lastLine, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %4, i32 0, i32 2
  %5 = load i8*, i8** %buffer, align 8
  %6 = load %struct.sVString*, %struct.sVString** %verbatimCloser, align 8
  %buffer8 = getelementptr inbounds %struct.sVString, %struct.sVString* %6, i32 0, i32 2
  %7 = load i8*, i8** %buffer8, align 8
  %call9 = call i32 @strcmp(i8* %5, i8* %7)
  %cmp10 = icmp eq i32 %call9, 0
  %frombool = zext i1 %cmp10 to i8
  store i8 %frombool, i8* %end, align 1
  br label %if.end

if.end:                                           ; preds = %if.else7, %if.then6
  br label %if.end59

if.else11:                                        ; preds = %if.else
  %8 = load i32, i32* %c, align 4
  %cmp12 = icmp eq i32 %8, 10
  br i1 %cmp12, label %if.then13, label %if.else53

if.then13:                                        ; preds = %if.else11
  %9 = load i8, i8* %verbatim, align 1
  %tobool14 = trunc i8 %9 to i1
  br i1 %tobool14, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.then13
  br label %do.body

do.body:                                          ; preds = %if.then15
  %10 = load %struct.sVString*, %struct.sVString** %lastLine, align 8
  store %struct.sVString* %10, %struct.sVString** %vStringClear_s, align 8
  %11 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %11, i32 0, i32 0
  store i64 0, i64* %length, align 8
  %12 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %buffer16 = getelementptr inbounds %struct.sVString, %struct.sVString* %12, i32 0, i32 2
  %13 = load i8*, i8** %buffer16, align 8
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 0
  store i8 0, i8* %arrayidx, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %if.end17

if.end17:                                         ; preds = %do.end, %if.then13
  %14 = load i32, i32* %prev, align 4
  %cmp18 = icmp eq i32 %14, 91
  br i1 %cmp18, label %if.then19, label %if.end43

if.then19:                                        ; preds = %if.end17
  store i8 1, i8* %verbatim, align 1
  br label %do.body20

do.body20:                                        ; preds = %if.then19
  %15 = load %struct.sVString*, %struct.sVString** %verbatimCloser, align 8
  store %struct.sVString* %15, %struct.sVString** %vStringClear_s21, align 8
  %16 = load %struct.sVString*, %struct.sVString** %vStringClear_s21, align 8
  %length22 = getelementptr inbounds %struct.sVString, %struct.sVString* %16, i32 0, i32 0
  store i64 0, i64* %length22, align 8
  %17 = load %struct.sVString*, %struct.sVString** %vStringClear_s21, align 8
  %buffer23 = getelementptr inbounds %struct.sVString, %struct.sVString* %17, i32 0, i32 2
  %18 = load i8*, i8** %buffer23, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %18, i64 0
  store i8 0, i8* %arrayidx24, align 1
  br label %do.end25

do.end25:                                         ; preds = %do.body20
  br label %do.body26

do.body26:                                        ; preds = %do.end25
  %19 = load %struct.sVString*, %struct.sVString** %lastLine, align 8
  store %struct.sVString* %19, %struct.sVString** %vStringClear_s27, align 8
  %20 = load %struct.sVString*, %struct.sVString** %vStringClear_s27, align 8
  %length28 = getelementptr inbounds %struct.sVString, %struct.sVString* %20, i32 0, i32 0
  store i64 0, i64* %length28, align 8
  %21 = load %struct.sVString*, %struct.sVString** %vStringClear_s27, align 8
  %buffer29 = getelementptr inbounds %struct.sVString, %struct.sVString* %21, i32 0, i32 2
  %22 = load i8*, i8** %buffer29, align 8
  %arrayidx30 = getelementptr inbounds i8, i8* %22, i64 0
  store i8 0, i8* %arrayidx30, align 1
  br label %do.end31

do.end31:                                         ; preds = %do.body26
  %23 = load i32, i32* %prev, align 4
  %cmp32 = icmp eq i32 %23, 123
  br i1 %cmp32, label %if.then33, label %if.else34

if.then33:                                        ; preds = %do.end31
  %24 = load %struct.sVString*, %struct.sVString** %verbatimCloser, align 8
  call void @vStringPut(%struct.sVString* %24, i32 125)
  br label %if.end35

if.else34:                                        ; preds = %do.end31
  %25 = load %struct.sVString*, %struct.sVString** %verbatimCloser, align 8
  call void @vStringPut(%struct.sVString* %25, i32 93)
  store i8 1, i8* %align, align 1
  br label %if.end35

if.end35:                                         ; preds = %if.else34, %if.then33
  %26 = load %struct.sVString*, %struct.sVString** %verbatimCloser, align 8
  %27 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %28 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %length36 = getelementptr inbounds %struct.sVString, %struct.sVString* %28, i32 0, i32 0
  %29 = load i64, i64* %length36, align 8
  %sub = sub i64 %29, 1
  call void @vStringNCat(%struct.sVString* %26, %struct.sVString* %27, i64 %sub)
  br label %do.body37

do.body37:                                        ; preds = %if.end35
  %30 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  store %struct.sVString* %30, %struct.sVString** %vStringClear_s38, align 8
  %31 = load %struct.sVString*, %struct.sVString** %vStringClear_s38, align 8
  %length39 = getelementptr inbounds %struct.sVString, %struct.sVString* %31, i32 0, i32 0
  store i64 0, i64* %length39, align 8
  %32 = load %struct.sVString*, %struct.sVString** %vStringClear_s38, align 8
  %buffer40 = getelementptr inbounds %struct.sVString, %struct.sVString* %32, i32 0, i32 2
  %33 = load i8*, i8** %buffer40, align 8
  %arrayidx41 = getelementptr inbounds i8, i8* %33, i64 0
  store i8 0, i8* %arrayidx41, align 1
  br label %do.end42

do.end42:                                         ; preds = %do.body37
  br label %if.end43

if.end43:                                         ; preds = %do.end42, %if.end17
  %34 = load i8, i8* %verbatim, align 1
  %tobool44 = trunc i8 %34 to i1
  br i1 %tobool44, label %land.lhs.true, label %if.end52

land.lhs.true:                                    ; preds = %if.end43
  %35 = load i8, i8* %align, align 1
  %tobool45 = trunc i8 %35 to i1
  br i1 %tobool45, label %if.then46, label %if.end52

if.then46:                                        ; preds = %land.lhs.true
  br label %do.body47

do.body47:                                        ; preds = %do.cond, %if.then46
  %call48 = call i32 @getcFromInputFile()
  store i32 %call48, i32* %c, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body47
  %36 = load i32, i32* %c, align 4
  %call49 = call i32 @isspace(i32 %36) #3
  %tobool50 = icmp ne i32 %call49, 0
  br i1 %tobool50, label %do.body47, label %do.end51

do.end51:                                         ; preds = %do.cond
  br label %if.end52

if.end52:                                         ; preds = %do.end51, %land.lhs.true, %if.end43
  br label %if.end58

if.else53:                                        ; preds = %if.else11
  %37 = load i32, i32* %c, align 4
  %cmp54 = icmp eq i32 %37, 37
  br i1 %cmp54, label %if.then55, label %if.end57

if.then55:                                        ; preds = %if.else53
  %call56 = call i32 @parseEscapedCharacter()
  store i32 %call56, i32* %c, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.then55, %if.else53
  br label %if.end58

if.end58:                                         ; preds = %if.end57, %if.end52
  br label %if.end59

if.end59:                                         ; preds = %if.end58, %if.end
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %if.then
  %38 = load i8, i8* %end, align 1
  %tobool61 = trunc i8 %38 to i1
  br i1 %tobool61, label %if.end66, label %if.then62

if.then62:                                        ; preds = %if.end60
  %39 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %40 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %39, i32 %40)
  %41 = load i8, i8* %verbatim, align 1
  %tobool63 = trunc i8 %41 to i1
  br i1 %tobool63, label %if.then64, label %if.end65

if.then64:                                        ; preds = %if.then62
  %42 = load %struct.sVString*, %struct.sVString** %lastLine, align 8
  %43 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %42, i32 %43)
  br label %if.end65

if.end65:                                         ; preds = %if.then64, %if.then62
  %44 = load i32, i32* %c, align 4
  store i32 %44, i32* %prev, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.end65, %if.end60
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %45 = load %struct.sVString*, %struct.sVString** %lastLine, align 8
  call void @vStringDelete(%struct.sVString* %45)
  %46 = load %struct.sVString*, %struct.sVString** %verbatimCloser, align 8
  call void @vStringDelete(%struct.sVString* %46)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @parseCharacter() #0 {
entry:
  %c = alloca i32, align 4
  %result = alloca i32, align 4
  %call = call i32 @getcFromInputFile()
  store i32 %call, i32* %c, align 4
  %0 = load i32, i32* %c, align 4
  store i32 %0, i32* %result, align 4
  %1 = load i32, i32* %c, align 4
  %cmp = icmp eq i32 %1, 37
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 @parseEscapedCharacter()
  store i32 %call1, i32* %result, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 @getcFromInputFile()
  store i32 %call2, i32* %c, align 4
  %2 = load i32, i32* %c, align 4
  %cmp3 = icmp ne i32 %2, 39
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %call5 = call i32 @skipToCharacter(i32 10)
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end
  %3 = load i32, i32* %result, align 4
  ret i32 %3
}

; Function Attrs: nounwind readonly
declare i32 @isalpha(i32) #2

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
  %call = call i32 @getcFromInputFile()
  store i32 %call, i32* %c, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %3 = load i32, i32* %c, align 4
  %call1 = call i32 @isalnum(i32 %3) #3
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
  %call2 = call i32 @isspace(i32 %6) #3
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.end, label %if.then

if.then:                                          ; preds = %do.end
  %7 = load i32, i32* %c, align 4
  call void @ungetcToInputFile(i32 %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end
  ret void
}

declare i32 @lookupCaseKeyword(i8*, i32) #1

; Function Attrs: nounwind readonly
declare i32 @isdigit(i32) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct.sVString* @parseNumeric(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  %string = alloca %struct.sVString*, align 8
  %integer = alloca %struct.sVString*, align 8
  store i32 %c, i32* %c.addr, align 4
  %call = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call, %struct.sVString** %string, align 8
  %0 = load i32, i32* %c.addr, align 4
  %call1 = call %struct.sVString* @parseInteger(i32 %0)
  store %struct.sVString* %call1, %struct.sVString** %integer, align 8
  %1 = load %struct.sVString*, %struct.sVString** %string, align 8
  %2 = load %struct.sVString*, %struct.sVString** %integer, align 8
  call void @vStringCopy(%struct.sVString* %1, %struct.sVString* %2)
  %3 = load %struct.sVString*, %struct.sVString** %integer, align 8
  call void @vStringDelete(%struct.sVString* %3)
  %call2 = call i32 @getcFromInputFile()
  store i32 %call2, i32* %c.addr, align 4
  %4 = load i32, i32* %c.addr, align 4
  %cmp = icmp eq i32 %4, 46
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call3 = call %struct.sVString* @parseInteger(i32 0)
  store %struct.sVString* %call3, %struct.sVString** %integer, align 8
  %5 = load %struct.sVString*, %struct.sVString** %string, align 8
  %6 = load i32, i32* %c.addr, align 4
  call void @vStringPut(%struct.sVString* %5, i32 %6)
  %7 = load %struct.sVString*, %struct.sVString** %string, align 8
  %8 = load %struct.sVString*, %struct.sVString** %integer, align 8
  call void @vStringCat(%struct.sVString* %7, %struct.sVString* %8)
  %9 = load %struct.sVString*, %struct.sVString** %integer, align 8
  call void @vStringDelete(%struct.sVString* %9)
  %call4 = call i32 @getcFromInputFile()
  store i32 %call4, i32* %c.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load i32, i32* %c.addr, align 4
  %call5 = call i32 @tolower(i32 %10) #3
  %cmp6 = icmp eq i32 %call5, 101
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end
  %call8 = call %struct.sVString* @parseInteger(i32 0)
  store %struct.sVString* %call8, %struct.sVString** %integer, align 8
  %11 = load %struct.sVString*, %struct.sVString** %string, align 8
  %12 = load i32, i32* %c.addr, align 4
  call void @vStringPut(%struct.sVString* %11, i32 %12)
  %13 = load %struct.sVString*, %struct.sVString** %string, align 8
  %14 = load %struct.sVString*, %struct.sVString** %integer, align 8
  call void @vStringCat(%struct.sVString* %13, %struct.sVString* %14)
  %15 = load %struct.sVString*, %struct.sVString** %integer, align 8
  call void @vStringDelete(%struct.sVString* %15)
  br label %if.end12

if.else:                                          ; preds = %if.end
  %16 = load i32, i32* %c.addr, align 4
  %call9 = call i32 @isspace(i32 %16) #3
  %tobool = icmp ne i32 %call9, 0
  br i1 %tobool, label %if.end11, label %if.then10

if.then10:                                        ; preds = %if.else
  %17 = load i32, i32* %c.addr, align 4
  call void @ungetcToInputFile(i32 %17)
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.else
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %if.then7
  %18 = load %struct.sVString*, %struct.sVString** %string, align 8
  ret %struct.sVString* %18
}

declare void @vStringCat(%struct.sVString*, %struct.sVString*) #1

declare void @vStringDelete(%struct.sVString*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseFreeOperator(%struct.sVString* %string, i32 %firstChar) #0 {
entry:
  %string.addr = alloca %struct.sVString*, align 8
  %firstChar.addr = alloca i32, align 4
  %c = alloca i32, align 4
  store %struct.sVString* %string, %struct.sVString** %string.addr, align 8
  store i32 %firstChar, i32* %firstChar.addr, align 4
  %0 = load i32, i32* %firstChar.addr, align 4
  store i32 %0, i32* %c, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %1 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %2 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %1, i32 %2)
  %call = call i32 @getcFromInputFile()
  store i32 %call, i32* %c, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %3 = load i32, i32* %c, align 4
  %cmp = icmp sgt i32 %3, 32
  br i1 %cmp, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %4 = load i32, i32* %c, align 4
  %call1 = call i32 @isspace(i32 %4) #3
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %do.end
  %5 = load i32, i32* %c, align 4
  call void @ungetcToInputFile(i32 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end
  ret void
}

declare i32 @strcmp(i8*, i8*) #1

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

declare void @vStringNCat(%struct.sVString*, %struct.sVString*, i64) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @parseEscapedCharacter() #0 {
entry:
  %d = alloca i32, align 4
  %c = alloca i32, align 4
  %string = alloca %struct.sVString*, align 8
  %value = alloca i8*, align 8
  %ascii = alloca i64, align 8
  store i32 0, i32* %d, align 4
  %call = call i32 @getcFromInputFile()
  store i32 %call, i32* %c, align 4
  %0 = load i32, i32* %c, align 4
  switch i32 %0, label %sw.default [
    i32 65, label %sw.bb
    i32 66, label %sw.bb1
    i32 67, label %sw.bb2
    i32 68, label %sw.bb3
    i32 70, label %sw.bb4
    i32 72, label %sw.bb5
    i32 76, label %sw.bb6
    i32 78, label %sw.bb7
    i32 81, label %sw.bb8
    i32 82, label %sw.bb9
    i32 83, label %sw.bb10
    i32 84, label %sw.bb11
    i32 85, label %sw.bb12
    i32 86, label %sw.bb13
    i32 37, label %sw.bb14
    i32 39, label %sw.bb15
    i32 34, label %sw.bb16
    i32 40, label %sw.bb17
    i32 41, label %sw.bb18
    i32 60, label %sw.bb19
    i32 62, label %sw.bb20
    i32 10, label %sw.bb21
    i32 47, label %sw.bb23
  ]

sw.bb:                                            ; preds = %entry
  store i32 64, i32* %d, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  store i32 8, i32* %d, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  store i32 94, i32* %d, align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  store i32 36, i32* %d, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  store i32 12, i32* %d, align 4
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  store i32 92, i32* %d, align 4
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  store i32 126, i32* %d, align 4
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  store i32 10, i32* %d, align 4
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  store i32 96, i32* %d, align 4
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  store i32 13, i32* %d, align 4
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  store i32 35, i32* %d, align 4
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  store i32 9, i32* %d, align 4
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  store i32 0, i32* %d, align 4
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  store i32 124, i32* %d, align 4
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  store i32 37, i32* %d, align 4
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  store i32 39, i32* %d, align 4
  br label %sw.epilog

sw.bb16:                                          ; preds = %entry
  store i32 34, i32* %d, align 4
  br label %sw.epilog

sw.bb17:                                          ; preds = %entry
  store i32 91, i32* %d, align 4
  br label %sw.epilog

sw.bb18:                                          ; preds = %entry
  store i32 93, i32* %d, align 4
  br label %sw.epilog

sw.bb19:                                          ; preds = %entry
  store i32 123, i32* %d, align 4
  br label %sw.epilog

sw.bb20:                                          ; preds = %entry
  store i32 125, i32* %d, align 4
  br label %sw.epilog

sw.bb21:                                          ; preds = %entry
  %call22 = call i32 @skipToCharacter(i32 37)
  br label %sw.epilog

sw.bb23:                                          ; preds = %entry
  %call24 = call %struct.sVString* @parseInteger(i32 0)
  store %struct.sVString* %call24, %struct.sVString** %string, align 8
  %1 = load %struct.sVString*, %struct.sVString** %string, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %1, i32 0, i32 2
  %2 = load i8*, i8** %buffer, align 8
  store i8* %2, i8** %value, align 8
  %3 = load i8*, i8** %value, align 8
  %call25 = call i64 @atol(i8* %3)
  store i64 %call25, i64* %ascii, align 8
  %4 = load %struct.sVString*, %struct.sVString** %string, align 8
  call void @vStringDelete(%struct.sVString* %4)
  %call26 = call i32 @getcFromInputFile()
  store i32 %call26, i32* %c, align 4
  %5 = load i32, i32* %c, align 4
  %cmp = icmp eq i32 %5, 47
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %sw.bb23
  %6 = load i64, i64* %ascii, align 8
  %cmp27 = icmp ult i64 %6, 256
  br i1 %cmp27, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %7 = load i64, i64* %ascii, align 8
  %conv = trunc i64 %7 to i32
  store i32 %conv, i32* %d, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %sw.bb23
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end, %sw.bb21, %sw.bb20, %sw.bb19, %sw.bb18, %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %8 = load i32, i32* %d, align 4
  ret i32 %8
}

declare void @vStringResize(%struct.sVString*, i64) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct.sVString* @parseInteger(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  %string = alloca %struct.sVString*, align 8
  store i32 %c, i32* %c.addr, align 4
  %call = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call, %struct.sVString** %string, align 8
  %0 = load i32, i32* %c.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 @getcFromInputFile()
  store i32 %call1, i32* %c.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, i32* %c.addr, align 4
  %cmp2 = icmp eq i32 %1, 45
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %2 = load %struct.sVString*, %struct.sVString** %string, align 8
  %3 = load i32, i32* %c.addr, align 4
  call void @vStringPut(%struct.sVString* %2, i32 %3)
  %call4 = call i32 @getcFromInputFile()
  store i32 %call4, i32* %c.addr, align 4
  br label %if.end9

if.else:                                          ; preds = %if.end
  %4 = load i32, i32* %c.addr, align 4
  %call5 = call i32 @isdigit(i32 %4) #3
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.end8, label %if.then6

if.then6:                                         ; preds = %if.else
  %call7 = call i32 @getcFromInputFile()
  store i32 %call7, i32* %c.addr, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.else
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %if.then3
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end9
  %5 = load i32, i32* %c.addr, align 4
  %cmp10 = icmp ne i32 %5, -1
  br i1 %cmp10, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %6 = load i32, i32* %c.addr, align 4
  %call11 = call i32 @isdigit(i32 %6) #3
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %7 = load i32, i32* %c.addr, align 4
  %cmp13 = icmp eq i32 %7, 95
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %8 = phi i1 [ true, %land.rhs ], [ %cmp13, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %while.cond
  %9 = phi i1 [ false, %while.cond ], [ %8, %lor.end ]
  br i1 %9, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %10 = load %struct.sVString*, %struct.sVString** %string, align 8
  %11 = load i32, i32* %c.addr, align 4
  call void @vStringPut(%struct.sVString* %10, i32 %11)
  %call14 = call i32 @getcFromInputFile()
  store i32 %call14, i32* %c.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %12 = load i32, i32* %c.addr, align 4
  call void @ungetcToInputFile(i32 %12)
  %13 = load %struct.sVString*, %struct.sVString** %string, align 8
  ret %struct.sVString* %13
}

declare i64 @atol(i8*) #1

; Function Attrs: nounwind readonly
declare i32 @isalnum(i32) #2

declare void @vStringCopy(%struct.sVString*, %struct.sVString*) #1

; Function Attrs: nounwind readonly
declare i32 @tolower(i32) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @makeEiffelClassTag(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %name = alloca i8*, align 8
  %e = alloca %struct.sTagEntryInfo, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  %0 = load i8, i8* getelementptr inbounds ([3 x %struct.sKindDefinition], [3 x %struct.sKindDefinition]* @EiffelKinds, i64 0, i64 0, i32 0), align 8
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %1, i32 0, i32 3
  %2 = load %struct.sVString*, %struct.sVString** %string, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %2, i32 0, i32 2
  %3 = load i8*, i8** %buffer, align 8
  store i8* %3, i8** %name, align 8
  %4 = load i8*, i8** %name, align 8
  call void @initTagEntry(%struct.sTagEntryInfo* %e, i8* %4, i32 0)
  %call = call i32 @makeTagEntry(%struct.sTagEntryInfo* %e)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %className = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %5, i32 0, i32 4
  %6 = load %struct.sVString*, %struct.sVString** %className, align 8
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string1 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %7, i32 0, i32 3
  %8 = load %struct.sVString*, %struct.sVString** %string1, align 8
  call void @vStringCopy(%struct.sVString* %6, %struct.sVString* %8)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseGeneric(%struct.sTokenInfo* %token, i1 zeroext %declaration) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %declaration.addr = alloca i8, align 1
  %depth = alloca i32, align 4
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  %frombool = zext i1 %declaration to i8
  store i8 %frombool, i8* %declaration.addr, align 1
  store i32 0, i32* %depth, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %land.end, %do.end
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 0
  %1 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %1, 16
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body1
  %2 = load i32, i32* %depth, align 4
  %inc = add i32 %2, 1
  store i32 %inc, i32* %depth, align 4
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %3)
  br label %if.end6

if.else:                                          ; preds = %do.body1
  %4 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type2 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %4, i32 0, i32 0
  %5 = load i32, i32* %type2, align 8
  %cmp3 = icmp eq i32 %5, 5
  br i1 %cmp3, label %if.then4, label %if.else5

if.then4:                                         ; preds = %if.else
  %6 = load i32, i32* %depth, align 4
  %dec = add i32 %6, -1
  store i32 %dec, i32* %depth, align 4
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %7)
  br label %if.end

if.else5:                                         ; preds = %if.else
  %8 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call = call zeroext i1 @parseType(%struct.sTokenInfo* %8)
  br label %if.end

if.end:                                           ; preds = %if.else5, %if.then4
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.then
  br label %do.cond

do.cond:                                          ; preds = %if.end6
  %9 = load i32, i32* %depth, align 4
  %cmp7 = icmp ugt i32 %9, 0
  br i1 %cmp7, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %10 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type8 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %10, i32 0, i32 0
  %11 = load i32, i32* %type8, align 8
  %cmp9 = icmp eq i32 %11, 0
  %lnot = xor i1 %cmp9, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %12 = phi i1 [ false, %do.cond ], [ %lnot, %land.rhs ]
  br i1 %12, label %do.body1, label %do.end10

do.end10:                                         ; preds = %land.end
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseInherit(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %0)
  br label %while.cond

while.cond:                                       ; preds = %if.end11, %do.end
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %1, i32 0, i32 0
  %2 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %2, 12
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call = call zeroext i1 @parseType(%struct.sTokenInfo* %3)
  %4 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type1 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %4, i32 0, i32 0
  %5 = load i32, i32* %type1, align 8
  %cmp2 = icmp eq i32 %5, 13
  br i1 %cmp2, label %if.then, label %if.end7

if.then:                                          ; preds = %while.body
  %6 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %6, i32 0, i32 1
  %7 = load i32, i32* %keyword, align 4
  switch i32 %7, label %sw.default [
    i32 47, label %sw.bb
    i32 23, label %sw.bb3
    i32 57, label %sw.bb3
    i32 46, label %sw.bb3
    i32 52, label %sw.bb3
    i32 20, label %sw.bb6
  ]

sw.bb:                                            ; preds = %if.then
  %8 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @parseRename(%struct.sTokenInfo* %8)
  br label %sw.bb3

sw.bb3:                                           ; preds = %if.then, %if.then, %if.then, %if.then, %sw.bb
  %9 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call4 = call zeroext i1 @findKeyword(%struct.sTokenInfo* %9, i32 20)
  br i1 %call4, label %if.then5, label %if.end

if.then5:                                         ; preds = %sw.bb3
  %10 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %10)
  br label %if.end

if.end:                                           ; preds = %if.then5, %sw.bb3
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.then
  %11 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %11)
  br label %sw.epilog

sw.default:                                       ; preds = %if.then
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb6, %if.end
  br label %if.end7

if.end7:                                          ; preds = %sw.epilog, %while.body
  %12 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type8 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %12, i32 0, i32 0
  %13 = load i32, i32* %type8, align 8
  %cmp9 = icmp eq i32 %13, 20
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end7
  %14 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %14)
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end7
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseFeatureClauses(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %land.end, %do.end
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 1
  %1 = load i32, i32* %keyword, align 4
  %cmp = icmp eq i32 %1, 26
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body1
  %2 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @parseExport(%struct.sTokenInfo* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body1
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword2 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %3, i32 0, i32 1
  %4 = load i32, i32* %keyword2, align 4
  %cmp3 = icmp eq i32 %4, 26
  br i1 %cmp3, label %if.end12, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %5 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword4 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %5, i32 0, i32 1
  %6 = load i32, i32* %keyword4, align 4
  %cmp5 = icmp eq i32 %6, 34
  br i1 %cmp5, label %if.end12, label %land.lhs.true6

land.lhs.true6:                                   ; preds = %land.lhs.true
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword7 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %7, i32 0, i32 1
  %8 = load i32, i32* %keyword7, align 4
  %cmp8 = icmp eq i32 %8, 40
  br i1 %cmp8, label %if.end12, label %if.then9

if.then9:                                         ; preds = %land.lhs.true6
  %9 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call = call zeroext i1 @parseFeature(%struct.sTokenInfo* %9)
  br i1 %call, label %if.end11, label %if.then10

if.then10:                                        ; preds = %if.then9
  %10 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %10)
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.then9
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %land.lhs.true6, %land.lhs.true, %if.end
  br label %do.cond

do.cond:                                          ; preds = %if.end12
  %11 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword13 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %11, i32 0, i32 1
  %12 = load i32, i32* %keyword13, align 4
  %cmp14 = icmp eq i32 %12, 20
  br i1 %cmp14, label %land.end, label %land.lhs.true15

land.lhs.true15:                                  ; preds = %do.cond
  %13 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword16 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %13, i32 0, i32 1
  %14 = load i32, i32* %keyword16, align 4
  %cmp17 = icmp eq i32 %14, 34
  br i1 %cmp17, label %land.end, label %land.lhs.true18

land.lhs.true18:                                  ; preds = %land.lhs.true15
  %15 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword19 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %15, i32 0, i32 1
  %16 = load i32, i32* %keyword19, align 4
  %cmp20 = icmp eq i32 %16, 40
  br i1 %cmp20, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true18
  %17 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %17, i32 0, i32 0
  %18 = load i32, i32* %type, align 8
  %cmp21 = icmp eq i32 %18, 0
  %lnot = xor i1 %cmp21, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true18, %land.lhs.true15, %do.cond
  %19 = phi i1 [ false, %land.lhs.true18 ], [ false, %land.lhs.true15 ], [ false, %do.cond ], [ %lnot, %land.rhs ]
  br i1 %19, label %do.body1, label %do.end22

do.end22:                                         ; preds = %land.end
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseConvert(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.cond, %do.end
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %0)
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %1, i32 0, i32 0
  %2 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %2, 12
  br i1 %cmp, label %if.else, label %if.then

if.then:                                          ; preds = %do.body1
  br label %do.end28

if.else:                                          ; preds = %do.body1
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type2 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %3, i32 0, i32 0
  %4 = load i32, i32* %type2, align 8
  %cmp3 = icmp eq i32 %4, 17
  br i1 %cmp3, label %if.then4, label %if.else9

if.then4:                                         ; preds = %if.else
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then4
  %5 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type5 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %5, i32 0, i32 0
  %6 = load i32, i32* %type5, align 8
  %cmp6 = icmp eq i32 %6, 6
  br i1 %cmp6, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type7 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %7, i32 0, i32 0
  %8 = load i32, i32* %type7, align 8
  %cmp8 = icmp eq i32 %8, 0
  %lnot = xor i1 %cmp8, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %9 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %9, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %10 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %10)
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %if.end24

if.else9:                                         ; preds = %if.else
  %11 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type10 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %11, i32 0, i32 0
  %12 = load i32, i32* %type10, align 8
  %cmp11 = icmp eq i32 %12, 7
  br i1 %cmp11, label %if.then12, label %if.end23

if.then12:                                        ; preds = %if.else9
  %13 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %13)
  %14 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type13 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %14, i32 0, i32 0
  %15 = load i32, i32* %type13, align 8
  %cmp14 = icmp eq i32 %15, 15
  br i1 %cmp14, label %if.else16, label %if.then15

if.then15:                                        ; preds = %if.then12
  br label %do.end28

if.else16:                                        ; preds = %if.then12
  br label %while.cond17

while.cond17:                                     ; preds = %while.body21, %if.else16
  %16 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type18 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %16, i32 0, i32 0
  %17 = load i32, i32* %type18, align 8
  %cmp19 = icmp eq i32 %17, 4
  %lnot20 = xor i1 %cmp19, true
  br i1 %lnot20, label %while.body21, label %while.end22

while.body21:                                     ; preds = %while.cond17
  %18 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %18)
  br label %while.cond17

while.end22:                                      ; preds = %while.cond17
  br label %if.end

if.end:                                           ; preds = %while.end22
  br label %if.end23

if.end23:                                         ; preds = %if.end, %if.else9
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %while.end
  br label %if.end25

if.end25:                                         ; preds = %if.end24
  br label %do.cond

do.cond:                                          ; preds = %if.end25
  %19 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type26 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %19, i32 0, i32 0
  %20 = load i32, i32* %type26, align 8
  %cmp27 = icmp eq i32 %20, 8
  br i1 %cmp27, label %do.body1, label %do.end28

do.end28:                                         ; preds = %do.cond, %if.then15, %if.then
  ret void
}

declare void @initTagEntry(%struct.sTagEntryInfo*, i8*, i32) #1

declare i32 @makeTagEntry(%struct.sTagEntryInfo*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @parseType(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %id = alloca %struct.sTokenInfo*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  %call = call %struct.sTokenInfo* @newToken()
  store %struct.sTokenInfo* %call, %struct.sTokenInfo** %id, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %id, align 8
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @copyToken(%struct.sTokenInfo* %0, %struct.sTokenInfo* %1)
  %2 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %2)
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %3, i32 0, i32 0
  %4 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %4, 7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.sTokenInfo*, %struct.sTokenInfo** %id, align 8
  call void @readToken(%struct.sTokenInfo* %5)
  %6 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %id, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %7, i32 0, i32 1
  %8 = load i32, i32* %keyword, align 4
  %cmp1 = icmp eq i32 %8, 36
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %9 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type3 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %9, i32 0, i32 0
  %10 = load i32, i32* %type3, align 8
  %cmp4 = icmp eq i32 %10, 12
  br i1 %cmp4, label %if.then7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then2
  %11 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword5 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %11, i32 0, i32 1
  %12 = load i32, i32* %keyword5, align 4
  %cmp6 = icmp eq i32 %12, 13
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %lor.lhs.false, %if.then2
  %13 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %13)
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %lor.lhs.false
  br label %if.end32

if.else:                                          ; preds = %if.end
  %14 = load %struct.sTokenInfo*, %struct.sTokenInfo** %id, align 8
  %keyword9 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %14, i32 0, i32 1
  %15 = load i32, i32* %keyword9, align 4
  %cmp10 = icmp eq i32 %15, 6
  br i1 %cmp10, label %if.then17, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %if.else
  %16 = load %struct.sTokenInfo*, %struct.sTokenInfo** %id, align 8
  %keyword12 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %16, i32 0, i32 1
  %17 = load i32, i32* %keyword12, align 4
  %cmp13 = icmp eq i32 %17, 16
  br i1 %cmp13, label %if.then17, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false11
  %18 = load %struct.sTokenInfo*, %struct.sTokenInfo** %id, align 8
  %keyword15 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %18, i32 0, i32 1
  %19 = load i32, i32* %keyword15, align 4
  %cmp16 = icmp eq i32 %19, 22
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %lor.lhs.false14, %lor.lhs.false11, %if.else
  %20 = load %struct.sTokenInfo*, %struct.sTokenInfo** %id, align 8
  %21 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @copyToken(%struct.sTokenInfo* %20, %struct.sTokenInfo* %21)
  %22 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %22)
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %lor.lhs.false14
  %23 = load %struct.sTokenInfo*, %struct.sTokenInfo** %id, align 8
  %type19 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %23, i32 0, i32 0
  %24 = load i32, i32* %type19, align 8
  %cmp20 = icmp eq i32 %24, 12
  br i1 %cmp20, label %if.then21, label %if.end31

if.then21:                                        ; preds = %if.end18
  %25 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type22 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %25, i32 0, i32 0
  %26 = load i32, i32* %type22, align 8
  %cmp23 = icmp eq i32 %26, 16
  br i1 %cmp23, label %if.then24, label %if.else25

if.then24:                                        ; preds = %if.then21
  %27 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @parseGeneric(%struct.sTokenInfo* %27, i1 zeroext false)
  br label %if.end30

if.else25:                                        ; preds = %if.then21
  %28 = load %struct.sTokenInfo*, %struct.sTokenInfo** %id, align 8
  %string = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %28, i32 0, i32 3
  %29 = load %struct.sVString*, %struct.sVString** %string, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %29, i32 0, i32 2
  %30 = load i8*, i8** %buffer, align 8
  %call26 = call i32 @strcmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* %30)
  %cmp27 = icmp eq i32 %call26, 0
  br i1 %cmp27, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.else25
  %31 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %31)
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %if.else25
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.then24
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %if.end18
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %if.end8
  %32 = load %struct.sTokenInfo*, %struct.sTokenInfo** %id, align 8
  call void @deleteToken(%struct.sTokenInfo* %32)
  ret i1 true
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @copyToken(%struct.sTokenInfo* %dst, %struct.sTokenInfo* %src) #0 {
entry:
  %dst.addr = alloca %struct.sTokenInfo*, align 8
  %src.addr = alloca %struct.sTokenInfo*, align 8
  store %struct.sTokenInfo* %dst, %struct.sTokenInfo** %dst.addr, align 8
  store %struct.sTokenInfo* %src, %struct.sTokenInfo** %src.addr, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %src.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 0
  %1 = load i32, i32* %type, align 8
  %2 = load %struct.sTokenInfo*, %struct.sTokenInfo** %dst.addr, align 8
  %type1 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %2, i32 0, i32 0
  store i32 %1, i32* %type1, align 8
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %src.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %3, i32 0, i32 1
  %4 = load i32, i32* %keyword, align 4
  %5 = load %struct.sTokenInfo*, %struct.sTokenInfo** %dst.addr, align 8
  %keyword2 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %5, i32 0, i32 1
  store i32 %4, i32* %keyword2, align 4
  %6 = load %struct.sTokenInfo*, %struct.sTokenInfo** %src.addr, align 8
  %isExported = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %6, i32 0, i32 2
  %7 = load i8, i8* %isExported, align 8
  %tobool = trunc i8 %7 to i1
  %8 = load %struct.sTokenInfo*, %struct.sTokenInfo** %dst.addr, align 8
  %isExported3 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %8, i32 0, i32 2
  %frombool = zext i1 %tobool to i8
  store i8 %frombool, i8* %isExported3, align 8
  %9 = load %struct.sTokenInfo*, %struct.sTokenInfo** %dst.addr, align 8
  %string = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %9, i32 0, i32 3
  %10 = load %struct.sVString*, %struct.sVString** %string, align 8
  %11 = load %struct.sTokenInfo*, %struct.sTokenInfo** %src.addr, align 8
  %string4 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %11, i32 0, i32 3
  %12 = load %struct.sVString*, %struct.sVString** %string4, align 8
  call void @vStringCopy(%struct.sVString* %10, %struct.sVString* %12)
  %13 = load %struct.sTokenInfo*, %struct.sTokenInfo** %dst.addr, align 8
  %className = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %13, i32 0, i32 4
  %14 = load %struct.sVString*, %struct.sVString** %className, align 8
  %15 = load %struct.sTokenInfo*, %struct.sTokenInfo** %src.addr, align 8
  %className5 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %15, i32 0, i32 4
  %16 = load %struct.sVString*, %struct.sVString** %className5, align 8
  call void @vStringCopy(%struct.sVString* %14, %struct.sVString* %16)
  %17 = load %struct.sTokenInfo*, %struct.sTokenInfo** %dst.addr, align 8
  %featureName = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %17, i32 0, i32 5
  %18 = load %struct.sVString*, %struct.sVString** %featureName, align 8
  %19 = load %struct.sTokenInfo*, %struct.sTokenInfo** %src.addr, align 8
  %featureName6 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %19, i32 0, i32 5
  %20 = load %struct.sVString*, %struct.sVString** %featureName6, align 8
  call void @vStringCopy(%struct.sVString* %18, %struct.sVString* %20)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseRename(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.cond, %do.end
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %0)
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call = call zeroext i1 @readFeatureName(%struct.sTokenInfo* %1)
  br i1 %call, label %if.then, label %if.end6

if.then:                                          ; preds = %do.body1
  %2 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %2)
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %3, i32 0, i32 1
  %4 = load i32, i32* %keyword, align 4
  %cmp = icmp eq i32 %4, 4
  br i1 %cmp, label %if.then2, label %if.end5

if.then2:                                         ; preds = %if.then
  %5 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %5)
  %6 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call3 = call zeroext i1 @readFeatureName(%struct.sTokenInfo* %6)
  br i1 %call3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then2
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @makeEiffelFeatureTag(%struct.sTokenInfo* %7)
  %8 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %8)
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then2
  br label %if.end5

if.end5:                                          ; preds = %if.end, %if.then
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %do.body1
  br label %do.cond

do.cond:                                          ; preds = %if.end6
  %9 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %9, i32 0, i32 0
  %10 = load i32, i32* %type, align 8
  %cmp7 = icmp eq i32 %10, 8
  br i1 %cmp7, label %do.body1, label %do.end8

do.end8:                                          ; preds = %do.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @readFeatureName(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %isFeatureName = alloca i8, align 1
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  store i8 0, i8* %isFeatureName, align 1
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 1
  %1 = load i32, i32* %keyword, align 4
  %cmp = icmp eq i32 %1, 28
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %3, i32 0, i32 0
  %4 = load i32, i32* %type, align 8
  %cmp1 = icmp eq i32 %4, 12
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  store i8 1, i8* %isFeatureName, align 1
  br label %if.end18

if.else:                                          ; preds = %if.end
  %5 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword3 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %5, i32 0, i32 1
  %6 = load i32, i32* %keyword3, align 4
  %cmp4 = icmp eq i32 %6, 5
  br i1 %cmp4, label %if.then5, label %if.else6

if.then5:                                         ; preds = %if.else
  store i8 1, i8* %isFeatureName, align 1
  br label %if.end17

if.else6:                                         ; preds = %if.else
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword7 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %7, i32 0, i32 1
  %8 = load i32, i32* %keyword7, align 4
  %cmp8 = icmp eq i32 %8, 31
  br i1 %cmp8, label %if.then11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else6
  %9 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword9 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %9, i32 0, i32 1
  %10 = load i32, i32* %keyword9, align 4
  %cmp10 = icmp eq i32 %10, 45
  br i1 %cmp10, label %if.then11, label %if.end16

if.then11:                                        ; preds = %lor.lhs.false, %if.else6
  %11 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %11)
  %12 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type12 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %12, i32 0, i32 0
  %13 = load i32, i32* %type12, align 8
  %cmp13 = icmp eq i32 %13, 21
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.then11
  store i8 1, i8* %isFeatureName, align 1
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.then11
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %lor.lhs.false
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then5
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then2
  %14 = load i8, i8* %isFeatureName, align 1
  %tobool = trunc i8 %14 to i1
  ret i1 %tobool
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @makeEiffelFeatureTag(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %name = alloca i8*, align 8
  %e = alloca %struct.sTagEntryInfo, align 8
  %qualified = alloca %struct.sVString*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  %0 = load i8, i8* getelementptr inbounds ([3 x %struct.sKindDefinition], [3 x %struct.sKindDefinition]* @EiffelKinds, i64 0, i64 1, i32 0), align 8
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %land.lhs.true, label %if.end21

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %isExported = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %1, i32 0, i32 2
  %2 = load i8, i8* %isExported, align 8
  %tobool1 = trunc i8 %2 to i1
  br i1 %tobool1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %call = call zeroext i1 @isXtagEnabled(i32 0)
  br i1 %call, label %if.then, label %if.end21

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %3, i32 0, i32 3
  %4 = load %struct.sVString*, %struct.sVString** %string, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %4, i32 0, i32 2
  %5 = load i8*, i8** %buffer, align 8
  store i8* %5, i8** %name, align 8
  %6 = load i8*, i8** %name, align 8
  call void @initTagEntry(%struct.sTagEntryInfo* %e, i8* %6, i32 1)
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %isExported2 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %7, i32 0, i32 2
  %8 = load i8, i8* %isExported2, align 8
  %tobool3 = trunc i8 %8 to i1
  %lnot = xor i1 %tobool3, true
  %conv = zext i1 %lnot to i32
  %9 = bitcast %struct.sTagEntryInfo* %e to i8*
  %10 = trunc i32 %conv to i8
  %bf.load = load i8, i8* %9, align 8
  %bf.value = and i8 %10, 1
  %bf.shl = shl i8 %bf.value, 1
  %bf.clear = and i8 %bf.load, -3
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, i8* %9, align 8
  %bf.result.cast = zext i8 %bf.value to i32
  %11 = bitcast %struct.sTagEntryInfo* %e to i8*
  %bf.load4 = load i8, i8* %11, align 8
  %bf.lshr = lshr i8 %bf.load4, 1
  %bf.clear5 = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear5 to i32
  %tobool6 = icmp ne i32 %bf.cast, 0
  br i1 %tobool6, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.then
  call void @markTagExtraBit(%struct.sTagEntryInfo* %e, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then
  %extensionFields = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %e, i32 0, i32 11
  %scopeKindIndex = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields, i32 0, i32 5
  store i32 0, i32* %scopeKindIndex, align 4
  %12 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %className = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %12, i32 0, i32 4
  %13 = load %struct.sVString*, %struct.sVString** %className, align 8
  %buffer8 = getelementptr inbounds %struct.sVString, %struct.sVString* %13, i32 0, i32 2
  %14 = load i8*, i8** %buffer8, align 8
  %extensionFields9 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %e, i32 0, i32 11
  %scopeName = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields9, i32 0, i32 6
  store i8* %14, i8** %scopeName, align 8
  %call10 = call i32 @makeTagEntry(%struct.sTagEntryInfo* %e)
  %call11 = call zeroext i1 @isXtagEnabled(i32 3)
  br i1 %call11, label %if.then12, label %if.end20

if.then12:                                        ; preds = %if.end
  %15 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %className13 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %15, i32 0, i32 4
  %16 = load %struct.sVString*, %struct.sVString** %className13, align 8
  %buffer14 = getelementptr inbounds %struct.sVString, %struct.sVString* %16, i32 0, i32 2
  %17 = load i8*, i8** %buffer14, align 8
  %call15 = call %struct.sVString* @vStringNewInit(i8* %17)
  store %struct.sVString* %call15, %struct.sVString** %qualified, align 8
  %18 = load %struct.sVString*, %struct.sVString** %qualified, align 8
  call void @vStringPut(%struct.sVString* %18, i32 46)
  %19 = load %struct.sVString*, %struct.sVString** %qualified, align 8
  %20 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string16 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %20, i32 0, i32 3
  %21 = load %struct.sVString*, %struct.sVString** %string16, align 8
  call void @vStringCat(%struct.sVString* %19, %struct.sVString* %21)
  %22 = load %struct.sVString*, %struct.sVString** %qualified, align 8
  %buffer17 = getelementptr inbounds %struct.sVString, %struct.sVString* %22, i32 0, i32 2
  %23 = load i8*, i8** %buffer17, align 8
  %name18 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %e, i32 0, i32 7
  store i8* %23, i8** %name18, align 8
  call void @markTagExtraBit(%struct.sTagEntryInfo* %e, i32 3)
  %call19 = call i32 @makeTagEntry(%struct.sTagEntryInfo* %e)
  %24 = load %struct.sVString*, %struct.sVString** %qualified, align 8
  call void @vStringDelete(%struct.sVString* %24)
  br label %if.end20

if.end20:                                         ; preds = %if.then12, %if.end
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %lor.lhs.false, %entry
  %25 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %featureName = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %25, i32 0, i32 5
  %26 = load %struct.sVString*, %struct.sVString** %featureName, align 8
  %27 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string22 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %27, i32 0, i32 3
  %28 = load %struct.sVString*, %struct.sVString** %string22, align 8
  call void @vStringCopy(%struct.sVString* %26, %struct.sVString* %28)
  ret void
}

declare zeroext i1 @isXtagEnabled(i32) #1

declare void @markTagExtraBit(%struct.sTagEntryInfo*, i32) #1

declare %struct.sVString* @vStringNewInit(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseExport(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %isExported = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 2
  store i8 1, i8* %isExported, align 8
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %1)
  %2 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %2, i32 0, i32 0
  %3 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %3, 15
  br i1 %cmp, label %if.then, label %if.end12

if.then:                                          ; preds = %entry
  %4 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %isExported1 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %4, i32 0, i32 2
  store i8 0, i8* %isExported1, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.then
  %5 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type2 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %5, i32 0, i32 0
  %6 = load i32, i32* %type2, align 8
  %cmp3 = icmp eq i32 %6, 4
  br i1 %cmp3, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type4 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %7, i32 0, i32 0
  %8 = load i32, i32* %type4, align 8
  %cmp5 = icmp eq i32 %8, 0
  %lnot = xor i1 %cmp5, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %9 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %9, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %10 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type6 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %10, i32 0, i32 0
  %11 = load i32, i32* %type6, align 8
  %cmp7 = icmp eq i32 %11, 12
  br i1 %cmp7, label %if.then8, label %if.end

if.then8:                                         ; preds = %while.body
  %12 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call = call zeroext i1 @isIdentifierMatch(%struct.sTokenInfo* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %lnot9 = xor i1 %call, true
  %lnot.ext = zext i1 %lnot9 to i32
  %13 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %isExported10 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %13, i32 0, i32 2
  %14 = load i8, i8* %isExported10, align 8
  %tobool = trunc i8 %14 to i1
  %conv = zext i1 %tobool to i32
  %or = or i32 %conv, %lnot.ext
  %tobool11 = icmp ne i32 %or, 0
  %frombool = zext i1 %tobool11 to i8
  store i8 %frombool, i8* %isExported10, align 8
  br label %if.end

if.end:                                           ; preds = %if.then8, %while.body
  %15 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %15)
  br label %while.cond

while.end:                                        ; preds = %land.end
  %16 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %16)
  br label %if.end12

if.end12:                                         ; preds = %while.end, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @parseFeature(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %found = alloca i8, align 1
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  store i8 0, i8* %found, align 1
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call = call zeroext i1 @readFeatureName(%struct.sTokenInfo* %0)
  br i1 %call, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i8 1, i8* %found, align 1
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @makeEiffelFeatureTag(%struct.sTokenInfo* %1)
  %2 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %2)
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %3, i32 0, i32 0
  %4 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %4, 8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %5 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %6 = load i8, i8* %found, align 1
  %tobool = trunc i8 %6 to i1
  br i1 %tobool, label %if.then1, label %if.end29

if.then1:                                         ; preds = %while.end
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %7, i32 0, i32 1
  %8 = load i32, i32* %keyword, align 4
  %cmp2 = icmp eq i32 %8, 1
  br i1 %cmp2, label %if.then3, label %if.end8

if.then3:                                         ; preds = %if.then1
  %9 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %9)
  %10 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type4 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %10, i32 0, i32 0
  %11 = load i32, i32* %type4, align 8
  %cmp5 = icmp eq i32 %11, 21
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.then3
  %12 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @makeEiffelFeatureTag(%struct.sTokenInfo* %12)
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.then3
  %13 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %13)
  br label %if.end8

if.end8:                                          ; preds = %if.end7, %if.then1
  %14 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type9 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %14, i32 0, i32 0
  %15 = load i32, i32* %type9, align 8
  %cmp10 = icmp eq i32 %15, 17
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end8
  %16 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @parseArguments(%struct.sTokenInfo* %16)
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end8
  %17 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type13 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %17, i32 0, i32 0
  %18 = load i32, i32* %type13, align 8
  %cmp14 = icmp eq i32 %18, 7
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end12
  %19 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @parseEntityType(%struct.sTokenInfo* %19)
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end12
  %20 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword17 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %20, i32 0, i32 1
  %21 = load i32, i32* %keyword17, align 4
  %cmp18 = icmp eq i32 %21, 5
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end16
  %22 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %22)
  %23 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %23)
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end16
  %24 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword21 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %24, i32 0, i32 1
  %25 = load i32, i32* %keyword21, align 4
  %cmp22 = icmp eq i32 %25, 41
  br i1 %cmp22, label %if.then23, label %if.end28

if.then23:                                        ; preds = %if.end20
  %26 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %26)
  %27 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type24 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %27, i32 0, i32 0
  %28 = load i32, i32* %type24, align 8
  %cmp25 = icmp eq i32 %28, 21
  br i1 %cmp25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.then23
  %29 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %29)
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.then23
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.end20
  %30 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @findFeatureEnd(%struct.sTokenInfo* %30)
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %while.end
  %31 = load i8, i8* %found, align 1
  %tobool30 = trunc i8 %31 to i1
  ret i1 %tobool30
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @isIdentifierMatch(%struct.sTokenInfo* %token, i8* %name) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %name.addr = alloca i8*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 0
  %1 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %1, 12
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %2 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %2, i32 0, i32 3
  %3 = load %struct.sVString*, %struct.sVString** %string, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %3, i32 0, i32 2
  %4 = load i8*, i8** %buffer, align 8
  %5 = load i8*, i8** %name.addr, align 8
  %call = call i32 @strcasecmp(i8* %4, i8* %5)
  %cmp1 = icmp eq i32 %call, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %6 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ]
  ret i1 %6
}

declare i32 @strcasecmp(i8*, i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseArguments(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call = call zeroext i1 @findToken(%struct.sTokenInfo* %0, i32 6)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseEntityType(%struct.sTokenInfo* %token) #0 {
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
  %cmp = icmp eq i32 %2, 2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type1 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %3, i32 0, i32 0
  %4 = load i32, i32* %type1, align 8
  %cmp2 = icmp eq i32 %4, 19
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %do.end
  %5 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %6 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call = call zeroext i1 @parseType(%struct.sTokenInfo* %6)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @findFeatureEnd(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %isFound = alloca i8, align 1
  %depth = alloca i32, align 4
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 1
  %1 = load i32, i32* %keyword, align 4
  %cmp = icmp eq i32 %1, 35
  %frombool = zext i1 %cmp to i8
  store i8 %frombool, i8* %isFound, align 1
  %2 = load i8, i8* %isFound, align 1
  %tobool = trunc i8 %2 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword1 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %4, i32 0, i32 1
  %5 = load i32, i32* %keyword1, align 4
  switch i32 %5, label %sw.default8 [
    i32 7, label %sw.bb
    i32 15, label %sw.bb
    i32 17, label %sw.bb
    i32 24, label %sw.bb
    i32 37, label %sw.bb
    i32 40, label %sw.bb
    i32 41, label %sw.bb
    i32 43, label %sw.bb
    i32 48, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end
  store i32 1, i32* %depth, align 4
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %sw.bb
  %6 = load i32, i32* %depth, align 4
  %cmp2 = icmp sgt i32 %6, 0
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %7, i32 0, i32 0
  %8 = load i32, i32* %type, align 8
  %cmp3 = icmp eq i32 %8, 0
  %lnot = xor i1 %cmp3, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %9 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %9, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %10 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword4 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %10, i32 0, i32 1
  %11 = load i32, i32* %keyword4, align 4
  switch i32 %11, label %sw.default [
    i32 8, label %sw.bb5
    i32 14, label %sw.bb5
    i32 27, label %sw.bb5
    i32 0, label %sw.bb5
    i32 29, label %sw.bb5
    i32 33, label %sw.bb5
    i32 37, label %sw.bb6
    i32 20, label %sw.bb7
  ]

sw.bb5:                                           ; preds = %while.body, %while.body, %while.body, %while.body, %while.body, %while.body
  %12 = load i32, i32* %depth, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %depth, align 4
  br label %sw.epilog

sw.bb6:                                           ; preds = %while.body
  %13 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @parseLocal(%struct.sTokenInfo* %13)
  br label %sw.epilog

sw.bb7:                                           ; preds = %while.body
  %14 = load i32, i32* %depth, align 4
  %dec = add nsw i32 %14, -1
  store i32 %dec, i32* %depth, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb7, %sw.bb6, %sw.bb5
  %15 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %15)
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %sw.epilog18

sw.default8:                                      ; preds = %if.end
  %16 = load i8, i8* %isFound, align 1
  %tobool9 = trunc i8 %16 to i1
  br i1 %tobool9, label %if.then12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.default8
  %17 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type10 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %17, i32 0, i32 0
  %18 = load i32, i32* %type10, align 8
  %cmp11 = icmp eq i32 %18, 18
  br i1 %cmp11, label %if.then12, label %if.end17

if.then12:                                        ; preds = %lor.lhs.false, %sw.default8
  %19 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type13 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %19, i32 0, i32 0
  %20 = load i32, i32* %type13, align 8
  %cmp14 = icmp eq i32 %20, 18
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.then12
  %21 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %21)
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.then12
  %22 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %22)
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %lor.lhs.false
  br label %sw.epilog18

sw.epilog18:                                      ; preds = %if.end17, %while.end
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @findToken(%struct.sTokenInfo* %token, i32 %type) #0 {
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
  br i1 %cmp, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type2 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %3, i32 0, i32 0
  %4 = load i32, i32* %type2, align 8
  %cmp3 = icmp eq i32 %4, 0
  %lnot = xor i1 %cmp3, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %5 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %5, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %6 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %6)
  br label %while.cond

while.end:                                        ; preds = %land.end
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type4 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %7, i32 0, i32 0
  %8 = load i32, i32* %type4, align 8
  %9 = load i32, i32* %type.addr, align 4
  %cmp5 = icmp eq i32 %8, %9
  ret i1 %cmp5
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseLocal(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %0)
  br label %while.cond

while.cond:                                       ; preds = %if.end12, %do.end
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %1, i32 0, i32 1
  %2 = load i32, i32* %keyword, align 4
  %cmp = icmp eq i32 %2, 17
  br i1 %cmp, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.cond
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword1 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %3, i32 0, i32 1
  %4 = load i32, i32* %keyword1, align 4
  %cmp2 = icmp eq i32 %4, 43
  br i1 %cmp2, label %land.end, label %land.lhs.true3

land.lhs.true3:                                   ; preds = %land.lhs.true
  %5 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword4 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %5, i32 0, i32 1
  %6 = load i32, i32* %keyword4, align 4
  %cmp5 = icmp eq i32 %6, 7
  br i1 %cmp5, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true3
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %7, i32 0, i32 0
  %8 = load i32, i32* %type, align 8
  %cmp6 = icmp eq i32 %8, 0
  %lnot = xor i1 %cmp6, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true3, %land.lhs.true, %while.cond
  %9 = phi i1 [ false, %land.lhs.true3 ], [ false, %land.lhs.true ], [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %9, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %10 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type7 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %10, i32 0, i32 0
  %11 = load i32, i32* %type7, align 8
  %cmp8 = icmp eq i32 %11, 12
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %12 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @makeEiffelLocalTag(%struct.sTokenInfo* %12)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %13 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %13)
  %14 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type9 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %14, i32 0, i32 0
  %15 = load i32, i32* %type9, align 8
  %cmp10 = icmp eq i32 %15, 7
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end
  %16 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @parseEntityType(%struct.sTokenInfo* %16)
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end
  br label %while.cond

while.end:                                        ; preds = %land.end
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @makeEiffelLocalTag(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %name = alloca i8*, align 8
  %scope = alloca %struct.sVString*, align 8
  %e = alloca %struct.sTagEntryInfo, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  %0 = load i8, i8* getelementptr inbounds ([3 x %struct.sKindDefinition], [3 x %struct.sKindDefinition]* @EiffelKinds, i64 0, i64 2, i32 0), align 8
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call = call zeroext i1 @isXtagEnabled(i32 0)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %1, i32 0, i32 3
  %2 = load %struct.sVString*, %struct.sVString** %string, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %2, i32 0, i32 2
  %3 = load i8*, i8** %buffer, align 8
  store i8* %3, i8** %name, align 8
  %call1 = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call1, %struct.sVString** %scope, align 8
  %4 = load i8*, i8** %name, align 8
  call void @initTagEntry(%struct.sTagEntryInfo* %e, i8* %4, i32 2)
  %5 = bitcast %struct.sTagEntryInfo* %e to i8*
  %bf.load = load i8, i8* %5, align 8
  %bf.clear = and i8 %bf.load, -3
  %bf.set = or i8 %bf.clear, 2
  store i8 %bf.set, i8* %5, align 8
  call void @markTagExtraBit(%struct.sTagEntryInfo* %e, i32 0)
  %6 = load %struct.sVString*, %struct.sVString** %scope, align 8
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %className = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %7, i32 0, i32 4
  %8 = load %struct.sVString*, %struct.sVString** %className, align 8
  call void @vStringCopy(%struct.sVString* %6, %struct.sVString* %8)
  %9 = load %struct.sVString*, %struct.sVString** %scope, align 8
  call void @vStringPut(%struct.sVString* %9, i32 46)
  %10 = load %struct.sVString*, %struct.sVString** %scope, align 8
  %11 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %featureName = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %11, i32 0, i32 5
  %12 = load %struct.sVString*, %struct.sVString** %featureName, align 8
  call void @vStringCat(%struct.sVString* %10, %struct.sVString* %12)
  %extensionFields = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %e, i32 0, i32 11
  %scopeKindIndex = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields, i32 0, i32 5
  store i32 1, i32* %scopeKindIndex, align 4
  %13 = load %struct.sVString*, %struct.sVString** %scope, align 8
  %buffer2 = getelementptr inbounds %struct.sVString, %struct.sVString* %13, i32 0, i32 2
  %14 = load i8*, i8** %buffer2, align 8
  %extensionFields3 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %e, i32 0, i32 11
  %scopeName = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields3, i32 0, i32 6
  store i8* %14, i8** %scopeName, align 8
  %call4 = call i32 @makeTagEntry(%struct.sTagEntryInfo* %e)
  %15 = load %struct.sVString*, %struct.sVString** %scope, align 8
  call void @vStringDelete(%struct.sVString* %15)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

declare void @eFree(i8*) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 10.0.0 (https://github.com/holzschu/clang.git 0cfc630fbdb62e96720b611a57123ef3eb13e297) (https://github.com/holzschu/llvm.git 0d8a71e39b28502c24718f7e74b5acbcfe36dfe0)"}
