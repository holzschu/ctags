; ModuleID = 'objc.c'
source_filename = "objc.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-ios11.0.0"

%struct.sKindDefinition = type { i8, i8, i8*, i8*, i8, i32, %struct.sRoleDesc*, %struct.sScopeSeparator*, i32, i32, i32, %struct.sKindDefinition*, %struct.sKindDefinition* }
%struct.sRoleDesc = type { i8, i8*, i8* }
%struct.sScopeSeparator = type { i32, i8* }
%struct._MIO = type opaque
%struct.keywordTable = type { i8*, i32 }
%struct.sVString = type { i64, i64, i8* }
%struct.sParserDefinition = type { i8*, %struct.sKindDefinition*, i32, i8**, i8**, i8**, void (i32)*, void (i32, i1)*, void ()*, i32 (i32)*, i8* (%struct._MIO*, i32*, i32)**, i32, i8, i8, i8, i8, %struct.tagRegexTable*, i32, %struct.keywordTable*, i32, %struct.sTagXpathTableTable*, i32, i8, %struct.sFieldDefinition*, i32, %struct.sXtagDefinition*, i32, %struct.sParserDependency*, i32, %struct.sParameterHandlerTable*, i32, %struct.sXpathFileSpec*, i32, i32, i8 }
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
%struct.sXtagDefinition = type { i8, i8, i8*, i8*, i1 (%struct.sXtagDefinition*)*, i1 (%struct.sXtagDefinition*)*, i32 }
%struct.sParserDependency = type { i32, i8*, i8* }
%struct.sParameterHandlerTable = type { i8*, i8*, void (i32, i8*, i8*)* }
%struct.sXpathFileSpec = type { i8*, i8*, i8*, i8*, i8*, i8* }
%struct._lexingState = type { %struct.sVString*, i8* }

@.str = private unnamed_addr constant [11 x i8] c"ObjectiveC\00", align 1
@ObjcKinds = internal global [13 x %struct.sKindDefinition] [%struct.sKindDefinition { i8 1, i8 105, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 73, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 80, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 109, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 99, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 118, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 69, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 102, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 112, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 116, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 115, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 101, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 77, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.26, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }], align 8
@extensions = internal constant [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i32 0, i32 0), i8* null], align 8
@aliases = internal constant [3 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i32 0, i32 0), i8* null], align 8
@selectors = internal global [3 x i8* (%struct._MIO*, i32*, i32)*] [i8* (%struct._MIO*, i32*, i32)* @selectByObjectiveCAndMatLabKeywords, i8* (%struct._MIO*, i32*, i32)* @selectByObjectiveCKeywords, i8* (%struct._MIO*, i32*, i32)* null], align 8
@objcKeywordTable = internal constant [21 x %struct.keywordTable] [%struct.keywordTable { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0), i32 0 }, %struct.keywordTable { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i32 0, i32 0), i32 1 }, %struct.keywordTable { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0), i32 2 }, %struct.keywordTable { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.35, i32 0, i32 0), i32 3 }, %struct.keywordTable { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i32 0, i32 0), i32 4 }, %struct.keywordTable { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i32 0, i32 0), i32 5 }, %struct.keywordTable { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i32 0, i32 0), i32 6 }, %struct.keywordTable { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i32 0, i32 0), i32 9 }, %struct.keywordTable { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.40, i32 0, i32 0), i32 7 }, %struct.keywordTable { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i32 0, i32 0), i32 8 }, %struct.keywordTable { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i32 0, i32 0), i32 10 }, %struct.keywordTable { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i32 0, i32 0), i32 11 }, %struct.keywordTable { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i32 0, i32 0), i32 12 }, %struct.keywordTable { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.45, i32 0, i32 0), i32 13 }, %struct.keywordTable { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.46, i32 0, i32 0), i32 14 }, %struct.keywordTable { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.47, i32 0, i32 0), i32 15 }, %struct.keywordTable { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.48, i32 0, i32 0), i32 16 }, %struct.keywordTable { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.49, i32 0, i32 0), i32 17 }, %struct.keywordTable { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i32 0, i32 0), i32 18 }, %struct.keywordTable { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.51, i32 0, i32 0), i32 19 }, %struct.keywordTable { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.52, i32 0, i32 0), i32 20 }], align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"interface\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"class interface\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"implementation\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"class implementation\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"protocol\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"Protocol\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"method\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"Object's method\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"class\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"Class' method\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"var\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"Global variable\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"field\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"Object field\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"function\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"A function\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"A property\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"typedef\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"A type alias\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"struct\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"A type structure\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"enum\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"An enumeration\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"macro\00", align 1
@.str.26 = private unnamed_addr constant [21 x i8] c"A preprocessor macro\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"mm\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"objc\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"objective-c\00", align 1
@parentName = internal global %struct.sVString* null, align 8
@tempName = internal global %struct.sVString* null, align 8
@fullMethodName = internal global %struct.sVString* null, align 8
@prevIdent = internal global %struct.sVString* null, align 8
@.str.32 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@signature = internal global %struct.sVString* null, align 8
@comeAfter = internal global void (%struct.sVString*, i32)* null, align 8
@fallback = internal global void (%struct.sVString*, i32)* null, align 8
@parentType = internal global i32 0, align 4
@ignoreBalanced_count = internal global i32 0, align 4
@methodKind = internal global i32 0, align 4
@parseStruct_gotName = internal global i8 0, align 1
@parseEnumFields_prev = internal global void (%struct.sVString*, i32)* null, align 8
@parseEnum_named = internal global i8 0, align 1
@ignorePreprocStuff_escaped = internal global i8 0, align 1
@toDoNext = internal global void (%struct.sVString*, i32)* null, align 8
@.str.33 = private unnamed_addr constant [7 x i8] c"define\00", align 1
@parseStructMembers.prev = internal global void (%struct.sVString*, i32)* null, align 8
@waitedToken = internal global i32 0, align 4
@.str.34 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@fallBackToken = internal global i32 0, align 4
@Lang_ObjectiveC = internal global i32 0, align 4
@.str.35 = private unnamed_addr constant [16 x i8] c"@implementation\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"@interface\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"@protocol\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"@encode\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"@property\00", align 1
@.str.40 = private unnamed_addr constant [14 x i8] c"@synchronized\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"@selector\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"@end\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"@defs\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"@class\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"@private\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"@package\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"@public\00", align 1
@.str.48 = private unnamed_addr constant [11 x i8] c"@protected\00", align 1
@.str.49 = private unnamed_addr constant [12 x i8] c"@synthesize\00", align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"@dynamic\00", align 1
@.str.51 = private unnamed_addr constant [10 x i8] c"@optional\00", align 1
@.str.52 = private unnamed_addr constant [10 x i8] c"@required\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sParserDefinition* @ObjcParser() #0 {
entry:
  %def = alloca %struct.sParserDefinition*, align 8
  %call = call %struct.sParserDefinition* @parserNew(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store %struct.sParserDefinition* %call, %struct.sParserDefinition** %def, align 8
  %0 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %0, i32 0, i32 1
  store %struct.sKindDefinition* getelementptr inbounds ([13 x %struct.sKindDefinition], [13 x %struct.sKindDefinition]* @ObjcKinds, i64 0, i64 0), %struct.sKindDefinition** %kindTable, align 8
  %1 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %1, i32 0, i32 2
  store i32 13, i32* %kindCount, align 8
  %2 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %extensions = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %2, i32 0, i32 3
  store i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @extensions, i64 0, i64 0), i8*** %extensions, align 8
  %3 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %aliases = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %3, i32 0, i32 5
  store i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @aliases, i64 0, i64 0), i8*** %aliases, align 8
  %4 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %parser = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %4, i32 0, i32 8
  store void ()* @findObjcTags, void ()** %parser, align 8
  %5 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %initialize = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %5, i32 0, i32 6
  store void (i32)* @objcInitialize, void (i32)** %initialize, align 8
  %6 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %selectLanguage = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %6, i32 0, i32 10
  store i8* (%struct._MIO*, i32*, i32)** getelementptr inbounds ([3 x i8* (%struct._MIO*, i32*, i32)*], [3 x i8* (%struct._MIO*, i32*, i32)*]* @selectors, i64 0, i64 0), i8* (%struct._MIO*, i32*, i32)*** %selectLanguage, align 8
  %7 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %keywordTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %7, i32 0, i32 18
  store %struct.keywordTable* getelementptr inbounds ([21 x %struct.keywordTable], [21 x %struct.keywordTable]* @objcKeywordTable, i64 0, i64 0), %struct.keywordTable** %keywordTable, align 8
  %8 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %keywordCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %8, i32 0, i32 19
  store i32 21, i32* %keywordCount, align 8
  %9 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %useCork = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %9, i32 0, i32 12
  store i8 1, i8* %useCork, align 4
  %10 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  ret %struct.sParserDefinition* %10
}

declare %struct.sParserDefinition* @parserNew(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @findObjcTags() #0 {
entry:
  %name = alloca %struct.sVString*, align 8
  %st = alloca %struct._lexingState, align 8
  %tok = alloca i32, align 4
  %call = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call, %struct.sVString** %name, align 8
  %call1 = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call1, %struct.sVString** @parentName, align 8
  %call2 = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call2, %struct.sVString** @tempName, align 8
  %call3 = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call3, %struct.sVString** @fullMethodName, align 8
  %call4 = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call4, %struct.sVString** @prevIdent, align 8
  %call5 = call %struct.sVString* @vStringNewInit(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i64 0, i64 0))
  store %struct.sVString* %call5, %struct.sVString** @signature, align 8
  store void (%struct.sVString*, i32)* null, void (%struct.sVString*, i32)** @comeAfter, align 8
  store void (%struct.sVString*, i32)* null, void (%struct.sVString*, i32)** @fallback, align 8
  store i32 0, i32* @parentType, align 4
  store i32 0, i32* @ignoreBalanced_count, align 4
  store i32 0, i32* @methodKind, align 4
  store i8 0, i8* @parseStruct_gotName, align 1
  store void (%struct.sVString*, i32)* null, void (%struct.sVString*, i32)** @parseEnumFields_prev, align 8
  store i8 0, i8* @parseEnum_named, align 1
  store i8 0, i8* @ignorePreprocStuff_escaped, align 1
  %call6 = call %struct.sVString* @vStringNew()
  %name7 = getelementptr inbounds %struct._lexingState, %struct._lexingState* %st, i32 0, i32 0
  store %struct.sVString* %call6, %struct.sVString** %name7, align 8
  %call8 = call i8* @readLineFromInputFile()
  %cp = getelementptr inbounds %struct._lexingState, %struct._lexingState* %st, i32 0, i32 1
  store i8* %call8, i8** %cp, align 8
  store void (%struct.sVString*, i32)* @globalScope, void (%struct.sVString*, i32)** @toDoNext, align 8
  %call9 = call i32 @lex(%struct._lexingState* %st)
  store i32 %call9, i32* %tok, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* %tok, align 4
  %cmp = icmp ne i32 %0, 39
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load void (%struct.sVString*, i32)*, void (%struct.sVString*, i32)** @toDoNext, align 8
  %name10 = getelementptr inbounds %struct._lexingState, %struct._lexingState* %st, i32 0, i32 0
  %2 = load %struct.sVString*, %struct.sVString** %name10, align 8
  %3 = load i32, i32* %tok, align 4
  call void %1(%struct.sVString* %2, i32 %3)
  %call11 = call i32 @lex(%struct._lexingState* %st)
  store i32 %call11, i32* %tok, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %name12 = getelementptr inbounds %struct._lexingState, %struct._lexingState* %st, i32 0, i32 0
  %4 = load %struct.sVString*, %struct.sVString** %name12, align 8
  call void @vStringDelete(%struct.sVString* %4)
  %5 = load %struct.sVString*, %struct.sVString** %name, align 8
  call void @vStringDelete(%struct.sVString* %5)
  %6 = load %struct.sVString*, %struct.sVString** @parentName, align 8
  call void @vStringDelete(%struct.sVString* %6)
  %7 = load %struct.sVString*, %struct.sVString** @tempName, align 8
  call void @vStringDelete(%struct.sVString* %7)
  %8 = load %struct.sVString*, %struct.sVString** @fullMethodName, align 8
  call void @vStringDelete(%struct.sVString* %8)
  %9 = load %struct.sVString*, %struct.sVString** @prevIdent, align 8
  call void @vStringDelete(%struct.sVString* %9)
  %10 = load %struct.sVString*, %struct.sVString** @signature, align 8
  call void @vStringDelete(%struct.sVString* %10)
  store %struct.sVString* null, %struct.sVString** @signature, align 8
  store %struct.sVString* null, %struct.sVString** @parentName, align 8
  store %struct.sVString* null, %struct.sVString** @tempName, align 8
  store %struct.sVString* null, %struct.sVString** @prevIdent, align 8
  store %struct.sVString* null, %struct.sVString** @fullMethodName, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @objcInitialize(i32 %language) #0 {
entry:
  %language.addr = alloca i32, align 4
  store i32 %language, i32* %language.addr, align 4
  %0 = load i32, i32* %language.addr, align 4
  store i32 %0, i32* @Lang_ObjectiveC, align 4
  ret void
}

declare %struct.sVString* @vStringNew() #1

declare %struct.sVString* @vStringNewInit(i8*) #1

declare i8* @readLineFromInputFile() #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @globalScope(%struct.sVString* %ident, i32 %what) #0 {
entry:
  %ident.addr = alloca %struct.sVString*, align 8
  %what.addr = alloca i32, align 4
  %vStringClear_s = alloca %struct.sVString*, align 8
  store %struct.sVString* %ident, %struct.sVString** %ident.addr, align 8
  store i32 %what, i32* %what.addr, align 4
  %0 = load i32, i32* %what.addr, align 4
  switch i32 %0, label %sw.default [
    i32 34, label %sw.bb
    i32 1, label %sw.bb1
    i32 22, label %sw.bb2
    i32 26, label %sw.bb3
    i32 4, label %sw.bb4
    i32 3, label %sw.bb5
    i32 5, label %sw.bb6
    i32 0, label %sw.bb7
    i32 28, label %sw.bb8
    i32 10, label %sw.bb9
    i32 15, label %sw.bb9
    i32 16, label %sw.bb9
    i32 13, label %sw.bb9
  ]

sw.bb:                                            ; preds = %entry
  store void (%struct.sVString*, i32)* @parsePreproc, void (%struct.sVString*, i32)** @toDoNext, align 8
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  store void (%struct.sVString*, i32)* @parseStruct, void (%struct.sVString*, i32)** @toDoNext, align 8
  store void (%struct.sVString*, i32)* @globalScope, void (%struct.sVString*, i32)** @comeAfter, align 8
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %1 = load %struct.sVString*, %struct.sVString** @tempName, align 8
  %2 = load %struct.sVString*, %struct.sVString** %ident.addr, align 8
  call void @vStringCopy(%struct.sVString* %1, %struct.sVString* %2)
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %3 = load %struct.sVString*, %struct.sVString** @tempName, align 8
  %call = call i32 @addTag(%struct.sVString* %3, i32 7)
  br label %do.body

do.body:                                          ; preds = %sw.bb3
  %4 = load %struct.sVString*, %struct.sVString** @tempName, align 8
  store %struct.sVString* %4, %struct.sVString** %vStringClear_s, align 8
  %5 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %5, i32 0, i32 0
  store i64 0, i64* %length, align 8
  %6 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %6, i32 0, i32 2
  %7 = load i8*, i8** %buffer, align 8
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 0
  store i8 0, i8* %arrayidx, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  store void (%struct.sVString*, i32)* @globalScope, void (%struct.sVString*, i32)** @comeAfter, align 8
  store void (%struct.sVString*, i32)* @ignoreBalanced, void (%struct.sVString*, i32)** @toDoNext, align 8
  %8 = load %struct.sVString*, %struct.sVString** %ident.addr, align 8
  %9 = load i32, i32* %what.addr, align 4
  call void @ignoreBalanced(%struct.sVString* %8, i32 %9)
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  store void (%struct.sVString*, i32)* @parseInterface, void (%struct.sVString*, i32)** @toDoNext, align 8
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  store void (%struct.sVString*, i32)* @parseImplementation, void (%struct.sVString*, i32)** @toDoNext, align 8
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  store void (%struct.sVString*, i32)* @parseProtocol, void (%struct.sVString*, i32)** @toDoNext, align 8
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  store void (%struct.sVString*, i32)* @parseTypedef, void (%struct.sVString*, i32)** @toDoNext, align 8
  store void (%struct.sVString*, i32)* @globalScope, void (%struct.sVString*, i32)** @comeAfter, align 8
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  store void (%struct.sVString*, i32)* @globalScope, void (%struct.sVString*, i32)** @comeAfter, align 8
  store void (%struct.sVString*, i32)* @ignoreBalanced, void (%struct.sVString*, i32)** @toDoNext, align 8
  %10 = load %struct.sVString*, %struct.sVString** %ident.addr, align 8
  %11 = load i32, i32* %what.addr, align 4
  call void @ignoreBalanced(%struct.sVString* %10, i32 %11)
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry, %entry, %entry, %entry
  br label %sw.default

sw.default:                                       ; preds = %entry, %sw.bb9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %do.end, %sw.bb2, %sw.bb1, %sw.bb
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @lex(%struct._lexingState* %st) #0 {
entry:
  %retval = alloca i32, align 4
  %st.addr = alloca %struct._lexingState*, align 8
  %retType = alloca i32, align 4
  store %struct._lexingState* %st, %struct._lexingState** %st.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %entry
  %0 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %cp = getelementptr inbounds %struct._lexingState, %struct._lexingState* %0, i32 0, i32 1
  %1 = load i8*, i8** %cp, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %2 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %cp1 = getelementptr inbounds %struct._lexingState, %struct._lexingState* %2, i32 0, i32 1
  %3 = load i8*, i8** %cp1, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 0
  %4 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %cmp2 = icmp eq i32 %conv, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %5 = phi i1 [ true, %while.cond ], [ %cmp2, %lor.rhs ]
  br i1 %5, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %call = call i8* @readLineFromInputFile()
  %6 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %cp4 = getelementptr inbounds %struct._lexingState, %struct._lexingState* %6, i32 0, i32 1
  store i8* %call, i8** %cp4, align 8
  %7 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %cp5 = getelementptr inbounds %struct._lexingState, %struct._lexingState* %7, i32 0, i32 1
  %8 = load i8*, i8** %cp5, align 8
  %cmp6 = icmp eq i8* %8, null
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 39, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %while.body
  store i32 37, i32* %retval, align 4
  br label %return

while.end:                                        ; preds = %lor.end
  %9 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %cp8 = getelementptr inbounds %struct._lexingState, %struct._lexingState* %9, i32 0, i32 1
  %10 = load i8*, i8** %cp8, align 8
  %11 = load i8, i8* %10, align 1
  %call9 = call zeroext i1 @isAlpha(i8 signext %11)
  br i1 %call9, label %if.then10, label %if.else15

if.then10:                                        ; preds = %while.end
  %12 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  call void @readIdentifier(%struct._lexingState* %12)
  %13 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %name = getelementptr inbounds %struct._lexingState, %struct._lexingState* %13, i32 0, i32 0
  %14 = load %struct.sVString*, %struct.sVString** %name, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %14, i32 0, i32 2
  %15 = load i8*, i8** %buffer, align 8
  %16 = load i32, i32* @Lang_ObjectiveC, align 4
  %call11 = call i32 @lookupKeyword(i8* %15, i32 %16)
  store i32 %call11, i32* %retType, align 4
  %17 = load i32, i32* %retType, align 4
  %cmp12 = icmp eq i32 %17, -1
  br i1 %cmp12, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.then10
  store i32 22, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %if.then10
  %18 = load i32, i32* %retType, align 4
  store i32 %18, i32* %retval, align 4
  br label %return

if.else15:                                        ; preds = %while.end
  %19 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %cp16 = getelementptr inbounds %struct._lexingState, %struct._lexingState* %19, i32 0, i32 1
  %20 = load i8*, i8** %cp16, align 8
  %21 = load i8, i8* %20, align 1
  %conv17 = zext i8 %21 to i32
  %cmp18 = icmp eq i32 %conv17, 64
  br i1 %cmp18, label %if.then20, label %if.else28

if.then20:                                        ; preds = %if.else15
  %22 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  call void @readIdentifierObjcDirective(%struct._lexingState* %22)
  %23 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %name21 = getelementptr inbounds %struct._lexingState, %struct._lexingState* %23, i32 0, i32 0
  %24 = load %struct.sVString*, %struct.sVString** %name21, align 8
  %buffer22 = getelementptr inbounds %struct.sVString, %struct.sVString* %24, i32 0, i32 2
  %25 = load i8*, i8** %buffer22, align 8
  %26 = load i32, i32* @Lang_ObjectiveC, align 4
  %call23 = call i32 @lookupKeyword(i8* %25, i32 %26)
  store i32 %call23, i32* %retType, align 4
  %27 = load i32, i32* %retType, align 4
  %cmp24 = icmp eq i32 %27, -1
  br i1 %cmp24, label %if.then26, label %if.else27

if.then26:                                        ; preds = %if.then20
  store i32 38, i32* %retval, align 4
  br label %return

if.else27:                                        ; preds = %if.then20
  %28 = load i32, i32* %retType, align 4
  store i32 %28, i32* %retval, align 4
  br label %return

if.else28:                                        ; preds = %if.else15
  %29 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %cp29 = getelementptr inbounds %struct._lexingState, %struct._lexingState* %29, i32 0, i32 1
  %30 = load i8*, i8** %cp29, align 8
  %31 = load i8, i8* %30, align 1
  %call30 = call zeroext i1 @isSpace(i8 signext %31)
  br i1 %call30, label %if.then31, label %if.else33

if.then31:                                        ; preds = %if.else28
  %32 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  call void @eatWhiteSpace(%struct._lexingState* %32)
  %33 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %call32 = call i32 @lex(%struct._lexingState* %33)
  store i32 %call32, i32* %retval, align 4
  br label %return

if.else33:                                        ; preds = %if.else28
  %34 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %cp34 = getelementptr inbounds %struct._lexingState, %struct._lexingState* %34, i32 0, i32 1
  %35 = load i8*, i8** %cp34, align 8
  %36 = load i8, i8* %35, align 1
  %conv35 = zext i8 %36 to i32
  switch i32 %conv35, label %sw.default [
    i32 40, label %sw.bb
    i32 92, label %sw.bb37
    i32 35, label %sw.bb40
    i32 47, label %sw.bb43
    i32 41, label %sw.bb63
    i32 123, label %sw.bb66
    i32 125, label %sw.bb69
    i32 91, label %sw.bb72
    i32 93, label %sw.bb75
    i32 44, label %sw.bb78
    i32 59, label %sw.bb81
    i32 58, label %sw.bb84
    i32 34, label %sw.bb87
    i32 43, label %sw.bb88
    i32 45, label %sw.bb91
    i32 42, label %sw.bb94
  ]

sw.bb:                                            ; preds = %if.else33
  %37 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %cp36 = getelementptr inbounds %struct._lexingState, %struct._lexingState* %37, i32 0, i32 1
  %38 = load i8*, i8** %cp36, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %incdec.ptr, i8** %cp36, align 8
  store i32 26, i32* %retval, align 4
  br label %return

sw.bb37:                                          ; preds = %if.else33
  %39 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %cp38 = getelementptr inbounds %struct._lexingState, %struct._lexingState* %39, i32 0, i32 1
  %40 = load i8*, i8** %cp38, align 8
  %incdec.ptr39 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %incdec.ptr39, i8** %cp38, align 8
  store i32 35, i32* %retval, align 4
  br label %return

sw.bb40:                                          ; preds = %if.else33
  %41 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %cp41 = getelementptr inbounds %struct._lexingState, %struct._lexingState* %41, i32 0, i32 1
  %42 = load i8*, i8** %cp41, align 8
  %incdec.ptr42 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %incdec.ptr42, i8** %cp41, align 8
  store i32 34, i32* %retval, align 4
  br label %return

sw.bb43:                                          ; preds = %if.else33
  %43 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %cp44 = getelementptr inbounds %struct._lexingState, %struct._lexingState* %43, i32 0, i32 1
  %44 = load i8*, i8** %cp44, align 8
  %arrayidx45 = getelementptr inbounds i8, i8* %44, i64 1
  %45 = load i8, i8* %arrayidx45, align 1
  %conv46 = zext i8 %45 to i32
  %cmp47 = icmp eq i32 %conv46, 42
  br i1 %cmp47, label %if.then49, label %if.else51

if.then49:                                        ; preds = %sw.bb43
  %46 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  call void @eatComment(%struct._lexingState* %46)
  %47 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %call50 = call i32 @lex(%struct._lexingState* %47)
  store i32 %call50, i32* %retval, align 4
  br label %return

if.else51:                                        ; preds = %sw.bb43
  %48 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %cp52 = getelementptr inbounds %struct._lexingState, %struct._lexingState* %48, i32 0, i32 1
  %49 = load i8*, i8** %cp52, align 8
  %arrayidx53 = getelementptr inbounds i8, i8* %49, i64 1
  %50 = load i8, i8* %arrayidx53, align 1
  %conv54 = zext i8 %50 to i32
  %cmp55 = icmp eq i32 %conv54, 47
  br i1 %cmp55, label %if.then57, label %if.else60

if.then57:                                        ; preds = %if.else51
  %51 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %cp58 = getelementptr inbounds %struct._lexingState, %struct._lexingState* %51, i32 0, i32 1
  store i8* null, i8** %cp58, align 8
  %52 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %call59 = call i32 @lex(%struct._lexingState* %52)
  store i32 %call59, i32* %retval, align 4
  br label %return

if.else60:                                        ; preds = %if.else51
  %53 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %cp61 = getelementptr inbounds %struct._lexingState, %struct._lexingState* %53, i32 0, i32 1
  %54 = load i8*, i8** %cp61, align 8
  %incdec.ptr62 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %incdec.ptr62, i8** %cp61, align 8
  store i32 38, i32* %retval, align 4
  br label %return

sw.bb63:                                          ; preds = %if.else33
  %55 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %cp64 = getelementptr inbounds %struct._lexingState, %struct._lexingState* %55, i32 0, i32 1
  %56 = load i8*, i8** %cp64, align 8
  %incdec.ptr65 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %incdec.ptr65, i8** %cp64, align 8
  store i32 27, i32* %retval, align 4
  br label %return

sw.bb66:                                          ; preds = %if.else33
  %57 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %cp67 = getelementptr inbounds %struct._lexingState, %struct._lexingState* %57, i32 0, i32 1
  %58 = load i8*, i8** %cp67, align 8
  %incdec.ptr68 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %incdec.ptr68, i8** %cp67, align 8
  store i32 28, i32* %retval, align 4
  br label %return

sw.bb69:                                          ; preds = %if.else33
  %59 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %cp70 = getelementptr inbounds %struct._lexingState, %struct._lexingState* %59, i32 0, i32 1
  %60 = load i8*, i8** %cp70, align 8
  %incdec.ptr71 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %incdec.ptr71, i8** %cp70, align 8
  store i32 29, i32* %retval, align 4
  br label %return

sw.bb72:                                          ; preds = %if.else33
  %61 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %cp73 = getelementptr inbounds %struct._lexingState, %struct._lexingState* %61, i32 0, i32 1
  %62 = load i8*, i8** %cp73, align 8
  %incdec.ptr74 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %incdec.ptr74, i8** %cp73, align 8
  store i32 30, i32* %retval, align 4
  br label %return

sw.bb75:                                          ; preds = %if.else33
  %63 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %cp76 = getelementptr inbounds %struct._lexingState, %struct._lexingState* %63, i32 0, i32 1
  %64 = load i8*, i8** %cp76, align 8
  %incdec.ptr77 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %incdec.ptr77, i8** %cp76, align 8
  store i32 31, i32* %retval, align 4
  br label %return

sw.bb78:                                          ; preds = %if.else33
  %65 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %cp79 = getelementptr inbounds %struct._lexingState, %struct._lexingState* %65, i32 0, i32 1
  %66 = load i8*, i8** %cp79, align 8
  %incdec.ptr80 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %incdec.ptr80, i8** %cp79, align 8
  store i32 23, i32* %retval, align 4
  br label %return

sw.bb81:                                          ; preds = %if.else33
  %67 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %cp82 = getelementptr inbounds %struct._lexingState, %struct._lexingState* %67, i32 0, i32 1
  %68 = load i8*, i8** %cp82, align 8
  %incdec.ptr83 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %incdec.ptr83, i8** %cp82, align 8
  store i32 32, i32* %retval, align 4
  br label %return

sw.bb84:                                          ; preds = %if.else33
  %69 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %cp85 = getelementptr inbounds %struct._lexingState, %struct._lexingState* %69, i32 0, i32 1
  %70 = load i8*, i8** %cp85, align 8
  %incdec.ptr86 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %incdec.ptr86, i8** %cp85, align 8
  store i32 33, i32* %retval, align 4
  br label %return

sw.bb87:                                          ; preds = %if.else33
  %71 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  call void @eatString(%struct._lexingState* %71)
  store i32 38, i32* %retval, align 4
  br label %return

sw.bb88:                                          ; preds = %if.else33
  %72 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %cp89 = getelementptr inbounds %struct._lexingState, %struct._lexingState* %72, i32 0, i32 1
  %73 = load i8*, i8** %cp89, align 8
  %incdec.ptr90 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %incdec.ptr90, i8** %cp89, align 8
  store i32 24, i32* %retval, align 4
  br label %return

sw.bb91:                                          ; preds = %if.else33
  %74 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %cp92 = getelementptr inbounds %struct._lexingState, %struct._lexingState* %74, i32 0, i32 1
  %75 = load i8*, i8** %cp92, align 8
  %incdec.ptr93 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %incdec.ptr93, i8** %cp92, align 8
  store i32 25, i32* %retval, align 4
  br label %return

sw.bb94:                                          ; preds = %if.else33
  %76 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %cp95 = getelementptr inbounds %struct._lexingState, %struct._lexingState* %76, i32 0, i32 1
  %77 = load i8*, i8** %cp95, align 8
  %incdec.ptr96 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %incdec.ptr96, i8** %cp95, align 8
  store i32 36, i32* %retval, align 4
  br label %return

sw.default:                                       ; preds = %if.else33
  %78 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %cp97 = getelementptr inbounds %struct._lexingState, %struct._lexingState* %78, i32 0, i32 1
  %79 = load i8*, i8** %cp97, align 8
  %incdec.ptr98 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %incdec.ptr98, i8** %cp97, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  br label %if.end99

if.end99:                                         ; preds = %sw.epilog
  br label %if.end100

if.end100:                                        ; preds = %if.end99
  br label %if.end101

if.end101:                                        ; preds = %if.end100
  store i32 38, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end101, %sw.bb94, %sw.bb91, %sw.bb88, %sw.bb87, %sw.bb84, %sw.bb81, %sw.bb78, %sw.bb75, %sw.bb72, %sw.bb69, %sw.bb66, %sw.bb63, %if.else60, %if.then57, %if.then49, %sw.bb40, %sw.bb37, %sw.bb, %if.then31, %if.else27, %if.then26, %if.else, %if.then14, %if.end, %if.then
  %80 = load i32, i32* %retval, align 4
  ret i32 %80
}

declare void @vStringDelete(%struct.sVString*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parsePreproc(%struct.sVString* %ident, i32 %what) #0 {
entry:
  %ident.addr = alloca %struct.sVString*, align 8
  %what.addr = alloca i32, align 4
  store %struct.sVString* %ident, %struct.sVString** %ident.addr, align 8
  store i32 %what, i32* %what.addr, align 4
  %0 = load i32, i32* %what.addr, align 4
  switch i32 %0, label %sw.default [
    i32 22, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %1 = load %struct.sVString*, %struct.sVString** %ident.addr, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %1, i32 0, i32 2
  %2 = load i8*, i8** %buffer, align 8
  %call = call i32 @strcmp(i8* %2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i64 0, i64 0))
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  store void (%struct.sVString*, i32)* @parseMacroName, void (%struct.sVString*, i32)** @toDoNext, align 8
  br label %if.end

if.else:                                          ; preds = %sw.bb
  store void (%struct.sVString*, i32)* @ignorePreprocStuff, void (%struct.sVString*, i32)** @toDoNext, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store void (%struct.sVString*, i32)* @ignorePreprocStuff, void (%struct.sVString*, i32)** @toDoNext, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseStruct(%struct.sVString* %ident, i32 %what) #0 {
entry:
  %ident.addr = alloca %struct.sVString*, align 8
  %what.addr = alloca i32, align 4
  store %struct.sVString* %ident, %struct.sVString** %ident.addr, align 8
  store i32 %what, i32* %what.addr, align 4
  %0 = load i32, i32* %what.addr, align 4
  switch i32 %0, label %sw.default [
    i32 22, label %sw.bb
    i32 28, label %sw.bb1
    i32 32, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  %1 = load i8, i8* @parseStruct_gotName, align 1
  %tobool = trunc i8 %1 to i1
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %sw.bb
  %2 = load %struct.sVString*, %struct.sVString** %ident.addr, align 8
  %call = call i32 @addTag(%struct.sVString* %2, i32 10)
  %3 = load %struct.sVString*, %struct.sVString** %ident.addr, align 8
  call void @pushEnclosingContext(%struct.sVString* %3, i32 10)
  store i8 1, i8* @parseStruct_gotName, align 1
  br label %if.end

if.else:                                          ; preds = %sw.bb
  store i8 0, i8* @parseStruct_gotName, align 1
  call void @popEnclosingContext()
  %4 = load void (%struct.sVString*, i32)*, void (%struct.sVString*, i32)** @comeAfter, align 8
  store void (%struct.sVString*, i32)* %4, void (%struct.sVString*, i32)** @toDoNext, align 8
  %5 = load void (%struct.sVString*, i32)*, void (%struct.sVString*, i32)** @comeAfter, align 8
  %6 = load %struct.sVString*, %struct.sVString** %ident.addr, align 8
  %7 = load i32, i32* %what.addr, align 4
  call void %5(%struct.sVString* %6, i32 %7)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  store void (%struct.sVString*, i32)* @parseStructMembers, void (%struct.sVString*, i32)** @toDoNext, align 8
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %8 = load i8, i8* @parseStruct_gotName, align 1
  %tobool3 = trunc i8 %8 to i1
  br i1 %tobool3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %sw.bb2
  call void @popEnclosingContext()
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %sw.bb2
  %9 = load void (%struct.sVString*, i32)*, void (%struct.sVString*, i32)** @comeAfter, align 8
  store void (%struct.sVString*, i32)* %9, void (%struct.sVString*, i32)** @toDoNext, align 8
  %10 = load void (%struct.sVString*, i32)*, void (%struct.sVString*, i32)** @comeAfter, align 8
  %11 = load %struct.sVString*, %struct.sVString** %ident.addr, align 8
  %12 = load i32, i32* %what.addr, align 4
  call void %10(%struct.sVString* %11, i32 %12)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end5, %sw.bb1, %if.end
  ret void
}

declare void @vStringCopy(%struct.sVString*, %struct.sVString*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @addTag(%struct.sVString* %ident, i32 %kind) #0 {
entry:
  %retval = alloca i32, align 4
  %ident.addr = alloca %struct.sVString*, align 8
  %kind.addr = alloca i32, align 4
  %toCreate = alloca %struct.sTagEntryInfo, align 8
  store %struct.sVString* %ident, %struct.sVString** %ident.addr, align 8
  store i32 %kind, i32* %kind.addr, align 4
  %0 = load i32, i32* %kind.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [13 x %struct.sKindDefinition], [13 x %struct.sKindDefinition]* @ObjcKinds, i64 0, i64 %idxprom
  %enabled = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %arrayidx, i32 0, i32 0
  %1 = load i8, i8* %enabled, align 8
  %tobool = trunc i8 %1 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.sVString*, %struct.sVString** %ident.addr, align 8
  %3 = load i32, i32* %kind.addr, align 4
  call void @prepareTag(%struct.sTagEntryInfo* %toCreate, %struct.sVString* %2, i32 %3)
  %call = call i32 @makeTagEntry(%struct.sTagEntryInfo* %toCreate)
  store i32 %call, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @ignoreBalanced(%struct.sVString* %ident, i32 %what) #0 {
entry:
  %ident.addr = alloca %struct.sVString*, align 8
  %what.addr = alloca i32, align 4
  store %struct.sVString* %ident, %struct.sVString** %ident.addr, align 8
  store i32 %what, i32* %what.addr, align 4
  %0 = load i32, i32* %what.addr, align 4
  switch i32 %0, label %sw.default [
    i32 26, label %sw.bb
    i32 28, label %sw.bb
    i32 30, label %sw.bb
    i32 27, label %sw.bb1
    i32 29, label %sw.bb1
    i32 31, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry
  %1 = load i32, i32* @ignoreBalanced_count, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* @ignoreBalanced_count, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry, %entry, %entry
  %2 = load i32, i32* @ignoreBalanced_count, align 4
  %dec = add nsw i32 %2, -1
  store i32 %dec, i32* @ignoreBalanced_count, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb1, %sw.bb
  %3 = load i32, i32* @ignoreBalanced_count, align 4
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.epilog
  %4 = load void (%struct.sVString*, i32)*, void (%struct.sVString*, i32)** @comeAfter, align 8
  store void (%struct.sVString*, i32)* %4, void (%struct.sVString*, i32)** @toDoNext, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseInterface(%struct.sVString* %ident, i32 %what) #0 {
entry:
  %ident.addr = alloca %struct.sVString*, align 8
  %what.addr = alloca i32, align 4
  store %struct.sVString* %ident, %struct.sVString** %ident.addr, align 8
  store i32 %what, i32* %what.addr, align 4
  %0 = load i32, i32* %what.addr, align 4
  %cmp = icmp eq i32 %0, 22
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.sVString*, %struct.sVString** %ident.addr, align 8
  %call = call i32 @addTag(%struct.sVString* %1, i32 0)
  %2 = load %struct.sVString*, %struct.sVString** %ident.addr, align 8
  call void @pushEnclosingContext(%struct.sVString* %2, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store void (%struct.sVString*, i32)* @parseMethods, void (%struct.sVString*, i32)** @toDoNext, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseImplementation(%struct.sVString* %ident, i32 %what) #0 {
entry:
  %ident.addr = alloca %struct.sVString*, align 8
  %what.addr = alloca i32, align 4
  store %struct.sVString* %ident, %struct.sVString** %ident.addr, align 8
  store i32 %what, i32* %what.addr, align 4
  %0 = load i32, i32* %what.addr, align 4
  %cmp = icmp eq i32 %0, 22
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.sVString*, %struct.sVString** %ident.addr, align 8
  %call = call i32 @addTag(%struct.sVString* %1, i32 1)
  %2 = load %struct.sVString*, %struct.sVString** %ident.addr, align 8
  call void @pushEnclosingContext(%struct.sVString* %2, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store void (%struct.sVString*, i32)* @parseImplemMethods, void (%struct.sVString*, i32)** @toDoNext, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseProtocol(%struct.sVString* %ident, i32 %what) #0 {
entry:
  %ident.addr = alloca %struct.sVString*, align 8
  %what.addr = alloca i32, align 4
  store %struct.sVString* %ident, %struct.sVString** %ident.addr, align 8
  store i32 %what, i32* %what.addr, align 4
  %0 = load i32, i32* %what.addr, align 4
  %cmp = icmp eq i32 %0, 22
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.sVString*, %struct.sVString** %ident.addr, align 8
  %call = call i32 @addTag(%struct.sVString* %1, i32 2)
  %2 = load %struct.sVString*, %struct.sVString** %ident.addr, align 8
  call void @pushEnclosingContext(%struct.sVString* %2, i32 2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store void (%struct.sVString*, i32)* @parseMethods, void (%struct.sVString*, i32)** @toDoNext, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseTypedef(%struct.sVString* %ident, i32 %what) #0 {
entry:
  %ident.addr = alloca %struct.sVString*, align 8
  %what.addr = alloca i32, align 4
  %vStringClear_s = alloca %struct.sVString*, align 8
  store %struct.sVString* %ident, %struct.sVString** %ident.addr, align 8
  store i32 %what, i32* %what.addr, align 4
  %0 = load i32, i32* %what.addr, align 4
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 22, label %sw.bb2
    i32 32, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  store void (%struct.sVString*, i32)* @parseStruct, void (%struct.sVString*, i32)** @toDoNext, align 8
  store void (%struct.sVString*, i32)* @parseTypedef, void (%struct.sVString*, i32)** @comeAfter, align 8
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  store void (%struct.sVString*, i32)* @parseEnum, void (%struct.sVString*, i32)** @toDoNext, align 8
  store void (%struct.sVString*, i32)* @parseTypedef, void (%struct.sVString*, i32)** @comeAfter, align 8
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %1 = load %struct.sVString*, %struct.sVString** @tempName, align 8
  %2 = load %struct.sVString*, %struct.sVString** %ident.addr, align 8
  call void @vStringCopy(%struct.sVString* %1, %struct.sVString* %2)
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %3 = load %struct.sVString*, %struct.sVString** @tempName, align 8
  %call = call i32 @addTag(%struct.sVString* %3, i32 9)
  br label %do.body

do.body:                                          ; preds = %sw.bb3
  %4 = load %struct.sVString*, %struct.sVString** @tempName, align 8
  store %struct.sVString* %4, %struct.sVString** %vStringClear_s, align 8
  %5 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %5, i32 0, i32 0
  store i64 0, i64* %length, align 8
  %6 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %6, i32 0, i32 2
  %7 = load i8*, i8** %buffer, align 8
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 0
  store i8 0, i8* %arrayidx, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  store void (%struct.sVString*, i32)* @globalScope, void (%struct.sVString*, i32)** @toDoNext, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %do.end, %sw.bb2, %sw.bb1, %sw.bb
  ret void
}

declare i32 @strcmp(i8*, i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseMacroName(%struct.sVString* %ident, i32 %what) #0 {
entry:
  %ident.addr = alloca %struct.sVString*, align 8
  %what.addr = alloca i32, align 4
  store %struct.sVString* %ident, %struct.sVString** %ident.addr, align 8
  store i32 %what, i32* %what.addr, align 4
  %0 = load i32, i32* %what.addr, align 4
  %cmp = icmp eq i32 %0, 22
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.sVString*, %struct.sVString** %ident.addr, align 8
  %call = call i32 @addTag(%struct.sVString* %1, i32 12)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store void (%struct.sVString*, i32)* @ignorePreprocStuff, void (%struct.sVString*, i32)** @toDoNext, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @ignorePreprocStuff(%struct.sVString* %ident, i32 %what) #0 {
entry:
  %ident.addr = alloca %struct.sVString*, align 8
  %what.addr = alloca i32, align 4
  store %struct.sVString* %ident, %struct.sVString** %ident.addr, align 8
  store i32 %what, i32* %what.addr, align 4
  %0 = load i32, i32* %what.addr, align 4
  switch i32 %0, label %sw.default [
    i32 35, label %sw.bb
    i32 37, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  store i8 1, i8* @ignorePreprocStuff_escaped, align 1
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %1 = load i8, i8* @ignorePreprocStuff_escaped, align 1
  %tobool = trunc i8 %1 to i1
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb1
  store i8 0, i8* @ignorePreprocStuff_escaped, align 1
  br label %if.end

if.else:                                          ; preds = %sw.bb1
  store void (%struct.sVString*, i32)* @globalScope, void (%struct.sVString*, i32)** @toDoNext, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store i8 0, i8* @ignorePreprocStuff_escaped, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end, %sw.bb
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @pushEnclosingContext(%struct.sVString* %parent, i32 %type) #0 {
entry:
  %parent.addr = alloca %struct.sVString*, align 8
  %type.addr = alloca i32, align 4
  store %struct.sVString* %parent, %struct.sVString** %parent.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  %0 = load %struct.sVString*, %struct.sVString** @parentName, align 8
  %1 = load %struct.sVString*, %struct.sVString** %parent.addr, align 8
  call void @vStringCopy(%struct.sVString* %0, %struct.sVString* %1)
  %2 = load i32, i32* %type.addr, align 4
  store i32 %2, i32* @parentType, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @popEnclosingContext() #0 {
entry:
  %vStringClear_s = alloca %struct.sVString*, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.sVString*, %struct.sVString** @parentName, align 8
  store %struct.sVString* %0, %struct.sVString** %vStringClear_s, align 8
  %1 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %1, i32 0, i32 0
  store i64 0, i64* %length, align 8
  %2 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %2, i32 0, i32 2
  %3 = load i8*, i8** %buffer, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 0
  store i8 0, i8* %arrayidx, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseStructMembers(%struct.sVString* %ident, i32 %what) #0 {
entry:
  %ident.addr = alloca %struct.sVString*, align 8
  %what.addr = alloca i32, align 4
  %vStringClear_s = alloca %struct.sVString*, align 8
  store %struct.sVString* %ident, %struct.sVString** %ident.addr, align 8
  store i32 %what, i32* %what.addr, align 4
  %0 = load void (%struct.sVString*, i32)*, void (%struct.sVString*, i32)** @parseStructMembers.prev, align 8
  %cmp = icmp ne void (%struct.sVString*, i32)* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load void (%struct.sVString*, i32)*, void (%struct.sVString*, i32)** @parseStructMembers.prev, align 8
  store void (%struct.sVString*, i32)* %1, void (%struct.sVString*, i32)** @comeAfter, align 8
  store void (%struct.sVString*, i32)* null, void (%struct.sVString*, i32)** @parseStructMembers.prev, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, i32* %what.addr, align 4
  switch i32 %2, label %sw.default [
    i32 22, label %sw.bb
    i32 32, label %sw.bb1
    i32 28, label %sw.bb2
    i32 26, label %sw.bb2
    i32 30, label %sw.bb2
    i32 29, label %sw.bb3
  ]

sw.bb:                                            ; preds = %if.end
  %3 = load %struct.sVString*, %struct.sVString** @tempName, align 8
  %4 = load %struct.sVString*, %struct.sVString** %ident.addr, align 8
  call void @vStringCopy(%struct.sVString* %3, %struct.sVString* %4)
  br label %sw.epilog

sw.bb1:                                           ; preds = %if.end
  %5 = load %struct.sVString*, %struct.sVString** @tempName, align 8
  %call = call i32 @addTag(%struct.sVString* %5, i32 6)
  br label %do.body

do.body:                                          ; preds = %sw.bb1
  %6 = load %struct.sVString*, %struct.sVString** @tempName, align 8
  store %struct.sVString* %6, %struct.sVString** %vStringClear_s, align 8
  %7 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %7, i32 0, i32 0
  store i64 0, i64* %length, align 8
  %8 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %8, i32 0, i32 2
  %9 = load i8*, i8** %buffer, align 8
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 0
  store i8 0, i8* %arrayidx, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end, %if.end, %if.end
  store void (%struct.sVString*, i32)* @ignoreBalanced, void (%struct.sVString*, i32)** @toDoNext, align 8
  %10 = load void (%struct.sVString*, i32)*, void (%struct.sVString*, i32)** @comeAfter, align 8
  store void (%struct.sVString*, i32)* %10, void (%struct.sVString*, i32)** @parseStructMembers.prev, align 8
  store void (%struct.sVString*, i32)* @parseStructMembers, void (%struct.sVString*, i32)** @comeAfter, align 8
  %11 = load %struct.sVString*, %struct.sVString** %ident.addr, align 8
  %12 = load i32, i32* %what.addr, align 4
  call void @ignoreBalanced(%struct.sVString* %11, i32 %12)
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end
  %13 = load void (%struct.sVString*, i32)*, void (%struct.sVString*, i32)** @comeAfter, align 8
  store void (%struct.sVString*, i32)* %13, void (%struct.sVString*, i32)** @toDoNext, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb3, %sw.bb2, %do.end, %sw.bb
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @prepareTag(%struct.sTagEntryInfo* %tag, %struct.sVString* %name, i32 %kind) #0 {
entry:
  %tag.addr = alloca %struct.sTagEntryInfo*, align 8
  %name.addr = alloca %struct.sVString*, align 8
  %kind.addr = alloca i32, align 4
  store %struct.sTagEntryInfo* %tag, %struct.sTagEntryInfo** %tag.addr, align 8
  store %struct.sVString* %name, %struct.sVString** %name.addr, align 8
  store i32 %kind, i32* %kind.addr, align 4
  %0 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %1 = load %struct.sVString*, %struct.sVString** %name.addr, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %1, i32 0, i32 2
  %2 = load i8*, i8** %buffer, align 8
  %3 = load i32, i32* %kind.addr, align 4
  call void @initTagEntry(%struct.sTagEntryInfo* %0, i8* %2, i32 %3)
  %4 = load %struct.sVString*, %struct.sVString** @parentName, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %4, i32 0, i32 0
  %5 = load i64, i64* %length, align 8
  %cmp = icmp ugt i64 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32, i32* @parentType, align 4
  %7 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %extensionFields = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %7, i32 0, i32 11
  %scopeKindIndex = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields, i32 0, i32 5
  store i32 %6, i32* %scopeKindIndex, align 4
  %8 = load %struct.sVString*, %struct.sVString** @parentName, align 8
  %buffer1 = getelementptr inbounds %struct.sVString, %struct.sVString* %8, i32 0, i32 2
  %9 = load i8*, i8** %buffer1, align 8
  %10 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %extensionFields2 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %10, i32 0, i32 11
  %scopeName = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields2, i32 0, i32 6
  store i8* %9, i8** %scopeName, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i32 @makeTagEntry(%struct.sTagEntryInfo*) #1

declare void @initTagEntry(%struct.sTagEntryInfo*, i8*, i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseMethods(%struct.sVString* %ident, i32 %what) #0 {
entry:
  %ident.addr = alloca %struct.sVString*, align 8
  %what.addr = alloca i32, align 4
  store %struct.sVString* %ident, %struct.sVString** %ident.addr, align 8
  store i32 %what, i32* %what.addr, align 4
  %0 = load i32, i32* %what.addr, align 4
  switch i32 %0, label %sw.default [
    i32 24, label %sw.bb
    i32 25, label %sw.bb1
    i32 9, label %sw.bb2
    i32 10, label %sw.bb3
    i32 28, label %sw.bb4
  ]

sw.bb:                                            ; preds = %entry
  store void (%struct.sVString*, i32)* @parseMethodsName, void (%struct.sVString*, i32)** @toDoNext, align 8
  store i32 4, i32* @methodKind, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  store void (%struct.sVString*, i32)* @parseMethodsName, void (%struct.sVString*, i32)** @toDoNext, align 8
  store i32 3, i32* @methodKind, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  store void (%struct.sVString*, i32)* @parseProperty, void (%struct.sVString*, i32)** @toDoNext, align 8
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @popEnclosingContext()
  store void (%struct.sVString*, i32)* @globalScope, void (%struct.sVString*, i32)** @toDoNext, align 8
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  store void (%struct.sVString*, i32)* @parseFields, void (%struct.sVString*, i32)** @toDoNext, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseMethodsName(%struct.sVString* %ident, i32 %what) #0 {
entry:
  %ident.addr = alloca %struct.sVString*, align 8
  %what.addr = alloca i32, align 4
  store %struct.sVString* %ident, %struct.sVString** %ident.addr, align 8
  store i32 %what, i32* %what.addr, align 4
  %0 = load %struct.sVString*, %struct.sVString** %ident.addr, align 8
  %1 = load i32, i32* %what.addr, align 4
  call void @parseMethodsNameCommon(%struct.sVString* %0, i32 %1, void (%struct.sVString*, i32)* @parseMethodsName, void (%struct.sVString*, i32)* @parseMethods)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseProperty(%struct.sVString* %ident, i32 %what) #0 {
entry:
  %ident.addr = alloca %struct.sVString*, align 8
  %what.addr = alloca i32, align 4
  %vStringClear_s = alloca %struct.sVString*, align 8
  store %struct.sVString* %ident, %struct.sVString** %ident.addr, align 8
  store i32 %what, i32* %what.addr, align 4
  %0 = load i32, i32* %what.addr, align 4
  switch i32 %0, label %sw.default [
    i32 26, label %sw.bb
    i32 22, label %sw.bb1
    i32 32, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  store void (%struct.sVString*, i32)* @tillToken, void (%struct.sVString*, i32)** @toDoNext, align 8
  store void (%struct.sVString*, i32)* @parseProperty, void (%struct.sVString*, i32)** @comeAfter, align 8
  store i32 27, i32* @waitedToken, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %1 = load %struct.sVString*, %struct.sVString** @tempName, align 8
  %2 = load %struct.sVString*, %struct.sVString** %ident.addr, align 8
  call void @vStringCopy(%struct.sVString* %1, %struct.sVString* %2)
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %3 = load %struct.sVString*, %struct.sVString** @tempName, align 8
  %call = call i32 @addTag(%struct.sVString* %3, i32 8)
  br label %do.body

do.body:                                          ; preds = %sw.bb2
  %4 = load %struct.sVString*, %struct.sVString** @tempName, align 8
  store %struct.sVString* %4, %struct.sVString** %vStringClear_s, align 8
  %5 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %5, i32 0, i32 0
  store i64 0, i64* %length, align 8
  %6 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %6, i32 0, i32 2
  %7 = load i8*, i8** %buffer, align 8
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 0
  store i8 0, i8* %arrayidx, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  store void (%struct.sVString*, i32)* @parseMethods, void (%struct.sVString*, i32)** @toDoNext, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %do.end, %sw.bb1, %sw.bb
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseFields(%struct.sVString* %ident, i32 %what) #0 {
entry:
  %ident.addr = alloca %struct.sVString*, align 8
  %what.addr = alloca i32, align 4
  %vStringClear_s = alloca %struct.sVString*, align 8
  store %struct.sVString* %ident, %struct.sVString** %ident.addr, align 8
  store i32 %what, i32* %what.addr, align 4
  %0 = load i32, i32* %what.addr, align 4
  switch i32 %0, label %sw.default [
    i32 29, label %sw.bb
    i32 30, label %sw.bb1
    i32 26, label %sw.bb1
    i32 22, label %sw.bb2
    i32 32, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  store void (%struct.sVString*, i32)* @parseMethods, void (%struct.sVString*, i32)** @toDoNext, align 8
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry, %entry
  store void (%struct.sVString*, i32)* @ignoreBalanced, void (%struct.sVString*, i32)** @toDoNext, align 8
  store void (%struct.sVString*, i32)* @parseFields, void (%struct.sVString*, i32)** @comeAfter, align 8
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %1 = load %struct.sVString*, %struct.sVString** @tempName, align 8
  %2 = load %struct.sVString*, %struct.sVString** %ident.addr, align 8
  call void @vStringCopy(%struct.sVString* %1, %struct.sVString* %2)
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %3 = load %struct.sVString*, %struct.sVString** @tempName, align 8
  %call = call i32 @addTag(%struct.sVString* %3, i32 6)
  br label %do.body

do.body:                                          ; preds = %sw.bb3
  %4 = load %struct.sVString*, %struct.sVString** @tempName, align 8
  store %struct.sVString* %4, %struct.sVString** %vStringClear_s, align 8
  %5 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %5, i32 0, i32 0
  store i64 0, i64* %length, align 8
  %6 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %6, i32 0, i32 2
  %7 = load i8*, i8** %buffer, align 8
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 0
  store i8 0, i8* %arrayidx, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %do.end, %sw.bb2, %sw.bb1, %sw.bb
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseMethodsNameCommon(%struct.sVString* %ident, i32 %what, void (%struct.sVString*, i32)* %reEnter, void (%struct.sVString*, i32)* %nextAction) #0 {
entry:
  %ident.addr = alloca %struct.sVString*, align 8
  %what.addr = alloca i32, align 4
  %reEnter.addr = alloca void (%struct.sVString*, i32)*, align 8
  %nextAction.addr = alloca void (%struct.sVString*, i32)*, align 8
  %index = alloca i32, align 4
  %vStringClear_s = alloca %struct.sVString*, align 8
  %vStringClear_s49 = alloca %struct.sVString*, align 8
  %vStringClear_s57 = alloca %struct.sVString*, align 8
  %e = alloca %struct.sTagEntryInfo*, align 8
  %vStringClear_s78 = alloca %struct.sVString*, align 8
  store %struct.sVString* %ident, %struct.sVString** %ident.addr, align 8
  store i32 %what, i32* %what.addr, align 4
  store void (%struct.sVString*, i32)* %reEnter, void (%struct.sVString*, i32)** %reEnter.addr, align 8
  store void (%struct.sVString*, i32)* %nextAction, void (%struct.sVString*, i32)** %nextAction.addr, align 8
  %0 = load i32, i32* %what.addr, align 4
  switch i32 %0, label %sw.default [
    i32 26, label %sw.bb
    i32 33, label %sw.bb3
    i32 22, label %sw.bb9
    i32 28, label %sw.bb43
    i32 32, label %sw.bb43
  ]

sw.bb:                                            ; preds = %entry
  store void (%struct.sVString*, i32)* @tillToken, void (%struct.sVString*, i32)** @toDoNext, align 8
  %1 = load void (%struct.sVString*, i32)*, void (%struct.sVString*, i32)** %reEnter.addr, align 8
  store void (%struct.sVString*, i32)* %1, void (%struct.sVString*, i32)** @comeAfter, align 8
  store i32 27, i32* @waitedToken, align 4
  %2 = load %struct.sVString*, %struct.sVString** @prevIdent, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %2, i32 0, i32 0
  %3 = load i64, i64* %length, align 8
  %cmp = icmp eq i64 %3, 0
  br i1 %cmp, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %sw.bb
  %4 = load %struct.sVString*, %struct.sVString** @fullMethodName, align 8
  %length1 = getelementptr inbounds %struct.sVString, %struct.sVString* %4, i32 0, i32 0
  %5 = load i64, i64* %length1, align 8
  %cmp2 = icmp eq i64 %5, 0
  br i1 %cmp2, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true, %sw.bb
  store void (%struct.sVString*, i32)* @tillTokenWithCapturingSignature, void (%struct.sVString*, i32)** @toDoNext, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %6 = load %struct.sVString*, %struct.sVString** @fullMethodName, align 8
  %7 = load %struct.sVString*, %struct.sVString** @prevIdent, align 8
  call void @vStringCat(%struct.sVString* %6, %struct.sVString* %7)
  %8 = load %struct.sVString*, %struct.sVString** @fullMethodName, align 8
  call void @vStringPut(%struct.sVString* %8, i32 58)
  br label %do.body

do.body:                                          ; preds = %sw.bb3
  %9 = load %struct.sVString*, %struct.sVString** @prevIdent, align 8
  store %struct.sVString* %9, %struct.sVString** %vStringClear_s, align 8
  %10 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %length4 = getelementptr inbounds %struct.sVString, %struct.sVString* %10, i32 0, i32 0
  store i64 0, i64* %length4, align 8
  %11 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %11, i32 0, i32 2
  %12 = load i8*, i8** %buffer, align 8
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 0
  store i8 0, i8* %arrayidx, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  %13 = load %struct.sVString*, %struct.sVString** @signature, align 8
  %length5 = getelementptr inbounds %struct.sVString, %struct.sVString* %13, i32 0, i32 0
  %14 = load i64, i64* %length5, align 8
  %cmp6 = icmp ugt i64 %14, 1
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %do.end
  %15 = load %struct.sVString*, %struct.sVString** @signature, align 8
  call void @vStringPut(%struct.sVString* %15, i32 44)
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %do.end
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  %16 = load %struct.sVString*, %struct.sVString** @prevIdent, align 8
  %length10 = getelementptr inbounds %struct.sVString, %struct.sVString* %16, i32 0, i32 0
  %17 = load i64, i64* %length10, align 8
  %cmp11 = icmp ugt i64 %17, 0
  br i1 %cmp11, label %land.lhs.true12, label %lor.lhs.false25

land.lhs.true12:                                  ; preds = %sw.bb9
  %18 = load %struct.sVString*, %struct.sVString** @signature, align 8
  %buffer13 = getelementptr inbounds %struct.sVString, %struct.sVString* %18, i32 0, i32 2
  %19 = load i8*, i8** %buffer13, align 8
  %20 = load %struct.sVString*, %struct.sVString** @signature, align 8
  %length14 = getelementptr inbounds %struct.sVString, %struct.sVString* %20, i32 0, i32 0
  %21 = load i64, i64* %length14, align 8
  %sub = sub i64 %21, 1
  %arrayidx15 = getelementptr inbounds i8, i8* %19, i64 %sub
  %22 = load i8, i8* %arrayidx15, align 1
  %conv = sext i8 %22 to i32
  %cmp16 = icmp eq i32 %conv, 44
  br i1 %cmp16, label %if.then41, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true12
  %23 = load %struct.sVString*, %struct.sVString** @signature, align 8
  %buffer18 = getelementptr inbounds %struct.sVString, %struct.sVString* %23, i32 0, i32 2
  %24 = load i8*, i8** %buffer18, align 8
  %25 = load %struct.sVString*, %struct.sVString** @signature, align 8
  %length19 = getelementptr inbounds %struct.sVString, %struct.sVString* %25, i32 0, i32 0
  %26 = load i64, i64* %length19, align 8
  %sub20 = sub i64 %26, 1
  %arrayidx21 = getelementptr inbounds i8, i8* %24, i64 %sub20
  %27 = load i8, i8* %arrayidx21, align 1
  %conv22 = sext i8 %27 to i32
  %cmp23 = icmp eq i32 %conv22, 40
  br i1 %cmp23, label %if.then41, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %lor.lhs.false, %sw.bb9
  %28 = load %struct.sVString*, %struct.sVString** @prevIdent, align 8
  %length26 = getelementptr inbounds %struct.sVString, %struct.sVString* %28, i32 0, i32 0
  %29 = load i64, i64* %length26, align 8
  %cmp27 = icmp eq i64 %29, 0
  br i1 %cmp27, label %land.lhs.true29, label %if.end42

land.lhs.true29:                                  ; preds = %lor.lhs.false25
  %30 = load %struct.sVString*, %struct.sVString** @fullMethodName, align 8
  %length30 = getelementptr inbounds %struct.sVString, %struct.sVString* %30, i32 0, i32 0
  %31 = load i64, i64* %length30, align 8
  %cmp31 = icmp ugt i64 %31, 0
  br i1 %cmp31, label %land.lhs.true33, label %if.end42

land.lhs.true33:                                  ; preds = %land.lhs.true29
  %32 = load %struct.sVString*, %struct.sVString** @signature, align 8
  %buffer34 = getelementptr inbounds %struct.sVString, %struct.sVString* %32, i32 0, i32 2
  %33 = load i8*, i8** %buffer34, align 8
  %34 = load %struct.sVString*, %struct.sVString** @signature, align 8
  %length35 = getelementptr inbounds %struct.sVString, %struct.sVString* %34, i32 0, i32 0
  %35 = load i64, i64* %length35, align 8
  %sub36 = sub i64 %35, 1
  %arrayidx37 = getelementptr inbounds i8, i8* %33, i64 %sub36
  %36 = load i8, i8* %arrayidx37, align 1
  %conv38 = sext i8 %36 to i32
  %cmp39 = icmp eq i32 %conv38, 40
  br i1 %cmp39, label %if.then41, label %if.end42

if.then41:                                        ; preds = %land.lhs.true33, %lor.lhs.false, %land.lhs.true12
  %37 = load %struct.sVString*, %struct.sVString** @signature, align 8
  call void @vStringCatS(%struct.sVString* %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i64 0, i64 0))
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %land.lhs.true33, %land.lhs.true29, %lor.lhs.false25
  %38 = load %struct.sVString*, %struct.sVString** @prevIdent, align 8
  %39 = load %struct.sVString*, %struct.sVString** %ident.addr, align 8
  call void @vStringCopy(%struct.sVString* %38, %struct.sVString* %39)
  br label %sw.epilog

sw.bb43:                                          ; preds = %entry, %entry
  %40 = load %struct.sVString*, %struct.sVString** @fullMethodName, align 8
  %length44 = getelementptr inbounds %struct.sVString, %struct.sVString* %40, i32 0, i32 0
  %41 = load i64, i64* %length44, align 8
  %cmp45 = icmp ne i64 %41, 0
  br i1 %cmp45, label %if.then47, label %if.else

if.then47:                                        ; preds = %sw.bb43
  %42 = load %struct.sVString*, %struct.sVString** @fullMethodName, align 8
  %43 = load i32, i32* @methodKind, align 4
  %call = call i32 @addTag(%struct.sVString* %42, i32 %43)
  store i32 %call, i32* %index, align 4
  br label %do.body48

do.body48:                                        ; preds = %if.then47
  %44 = load %struct.sVString*, %struct.sVString** @fullMethodName, align 8
  store %struct.sVString* %44, %struct.sVString** %vStringClear_s49, align 8
  %45 = load %struct.sVString*, %struct.sVString** %vStringClear_s49, align 8
  %length50 = getelementptr inbounds %struct.sVString, %struct.sVString* %45, i32 0, i32 0
  store i64 0, i64* %length50, align 8
  %46 = load %struct.sVString*, %struct.sVString** %vStringClear_s49, align 8
  %buffer51 = getelementptr inbounds %struct.sVString, %struct.sVString* %46, i32 0, i32 2
  %47 = load i8*, i8** %buffer51, align 8
  %arrayidx52 = getelementptr inbounds i8, i8* %47, i64 0
  store i8 0, i8* %arrayidx52, align 1
  br label %do.end53

do.end53:                                         ; preds = %do.body48
  br label %if.end55

if.else:                                          ; preds = %sw.bb43
  %48 = load %struct.sVString*, %struct.sVString** @prevIdent, align 8
  %49 = load i32, i32* @methodKind, align 4
  %call54 = call i32 @addTag(%struct.sVString* %48, i32 %49)
  store i32 %call54, i32* %index, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.else, %do.end53
  %50 = load void (%struct.sVString*, i32)*, void (%struct.sVString*, i32)** %nextAction.addr, align 8
  store void (%struct.sVString*, i32)* %50, void (%struct.sVString*, i32)** @toDoNext, align 8
  %51 = load %struct.sVString*, %struct.sVString** %ident.addr, align 8
  %52 = load i32, i32* %what.addr, align 4
  call void @parseImplemMethods(%struct.sVString* %51, i32 %52)
  br label %do.body56

do.body56:                                        ; preds = %if.end55
  %53 = load %struct.sVString*, %struct.sVString** @prevIdent, align 8
  store %struct.sVString* %53, %struct.sVString** %vStringClear_s57, align 8
  %54 = load %struct.sVString*, %struct.sVString** %vStringClear_s57, align 8
  %length58 = getelementptr inbounds %struct.sVString, %struct.sVString* %54, i32 0, i32 0
  store i64 0, i64* %length58, align 8
  %55 = load %struct.sVString*, %struct.sVString** %vStringClear_s57, align 8
  %buffer59 = getelementptr inbounds %struct.sVString, %struct.sVString* %55, i32 0, i32 2
  %56 = load i8*, i8** %buffer59, align 8
  %arrayidx60 = getelementptr inbounds i8, i8* %56, i64 0
  store i8 0, i8* %arrayidx60, align 1
  br label %do.end61

do.end61:                                         ; preds = %do.body56
  %57 = load i32, i32* %index, align 4
  %cmp62 = icmp ne i32 %57, 0
  br i1 %cmp62, label %if.then64, label %if.end83

if.then64:                                        ; preds = %do.end61
  %58 = load i32, i32* %index, align 4
  %call65 = call %struct.sTagEntryInfo* @getEntryInCorkQueue(i32 %58)
  store %struct.sTagEntryInfo* %call65, %struct.sTagEntryInfo** %e, align 8
  %59 = load %struct.sVString*, %struct.sVString** @signature, align 8
  %buffer66 = getelementptr inbounds %struct.sVString, %struct.sVString* %59, i32 0, i32 2
  %60 = load i8*, i8** %buffer66, align 8
  %61 = load %struct.sVString*, %struct.sVString** @signature, align 8
  %length67 = getelementptr inbounds %struct.sVString, %struct.sVString* %61, i32 0, i32 0
  %62 = load i64, i64* %length67, align 8
  %sub68 = sub i64 %62, 1
  %arrayidx69 = getelementptr inbounds i8, i8* %60, i64 %sub68
  %63 = load i8, i8* %arrayidx69, align 1
  %conv70 = sext i8 %63 to i32
  %cmp71 = icmp eq i32 %conv70, 44
  br i1 %cmp71, label %if.then73, label %if.end74

if.then73:                                        ; preds = %if.then64
  %64 = load %struct.sVString*, %struct.sVString** @signature, align 8
  call void @vStringCatS(%struct.sVString* %64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i64 0, i64 0))
  br label %if.end74

if.end74:                                         ; preds = %if.then73, %if.then64
  %65 = load %struct.sVString*, %struct.sVString** @signature, align 8
  call void @vStringPut(%struct.sVString* %65, i32 41)
  %66 = load %struct.sVString*, %struct.sVString** @signature, align 8
  %buffer75 = getelementptr inbounds %struct.sVString, %struct.sVString* %66, i32 0, i32 2
  %67 = load i8*, i8** %buffer75, align 8
  %call76 = call i8* @eStrdup(i8* %67)
  %68 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %e, align 8
  %extensionFields = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %68, i32 0, i32 11
  %signature = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields, i32 0, i32 8
  store i8* %call76, i8** %signature, align 8
  br label %do.body77

do.body77:                                        ; preds = %if.end74
  %69 = load %struct.sVString*, %struct.sVString** @signature, align 8
  store %struct.sVString* %69, %struct.sVString** %vStringClear_s78, align 8
  %70 = load %struct.sVString*, %struct.sVString** %vStringClear_s78, align 8
  %length79 = getelementptr inbounds %struct.sVString, %struct.sVString* %70, i32 0, i32 0
  store i64 0, i64* %length79, align 8
  %71 = load %struct.sVString*, %struct.sVString** %vStringClear_s78, align 8
  %buffer80 = getelementptr inbounds %struct.sVString, %struct.sVString* %71, i32 0, i32 2
  %72 = load i8*, i8** %buffer80, align 8
  %arrayidx81 = getelementptr inbounds i8, i8* %72, i64 0
  store i8 0, i8* %arrayidx81, align 1
  br label %do.end82

do.end82:                                         ; preds = %do.body77
  %73 = load %struct.sVString*, %struct.sVString** @signature, align 8
  call void @vStringPut(%struct.sVString* %73, i32 40)
  br label %if.end83

if.end83:                                         ; preds = %do.end82, %do.end61
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end83, %if.end42, %if.end8, %if.end
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @tillToken(%struct.sVString* %ident, i32 %what) #0 {
entry:
  %ident.addr = alloca %struct.sVString*, align 8
  %what.addr = alloca i32, align 4
  store %struct.sVString* %ident, %struct.sVString** %ident.addr, align 8
  store i32 %what, i32* %what.addr, align 4
  %0 = load i32, i32* %what.addr, align 4
  %1 = load i32, i32* @waitedToken, align 4
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load void (%struct.sVString*, i32)*, void (%struct.sVString*, i32)** @comeAfter, align 8
  store void (%struct.sVString*, i32)* %2, void (%struct.sVString*, i32)** @toDoNext, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @tillTokenWithCapturingSignature(%struct.sVString* %ident, i32 %what) #0 {
entry:
  %ident.addr = alloca %struct.sVString*, align 8
  %what.addr = alloca i32, align 4
  store %struct.sVString* %ident, %struct.sVString** %ident.addr, align 8
  store i32 %what, i32* %what.addr, align 4
  %0 = load %struct.sVString*, %struct.sVString** %ident.addr, align 8
  %1 = load i32, i32* %what.addr, align 4
  call void @tillToken(%struct.sVString* %0, i32 %1)
  %2 = load i32, i32* %what.addr, align 4
  %3 = load i32, i32* @waitedToken, align 4
  %cmp = icmp ne i32 %2, %3
  br i1 %cmp, label %if.then, label %if.end26

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %what.addr, align 4
  %cmp1 = icmp eq i32 %4, 36
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %5 = load %struct.sVString*, %struct.sVString** @signature, align 8
  call void @vStringPut(%struct.sVString* %5, i32 42)
  br label %if.end25

if.else:                                          ; preds = %if.then
  %6 = load %struct.sVString*, %struct.sVString** %ident.addr, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %6, i32 0, i32 0
  %7 = load i64, i64* %length, align 8
  %cmp3 = icmp ugt i64 %7, 0
  br i1 %cmp3, label %if.then4, label %if.end24

if.then4:                                         ; preds = %if.else
  %8 = load %struct.sVString*, %struct.sVString** @signature, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %8, i32 0, i32 2
  %9 = load i8*, i8** %buffer, align 8
  %10 = load %struct.sVString*, %struct.sVString** @signature, align 8
  %length5 = getelementptr inbounds %struct.sVString, %struct.sVString* %10, i32 0, i32 0
  %11 = load i64, i64* %length5, align 8
  %sub = sub i64 %11, 1
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub
  %12 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %12 to i32
  %cmp6 = icmp eq i32 %conv, 44
  br i1 %cmp6, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then4
  %13 = load %struct.sVString*, %struct.sVString** @signature, align 8
  %buffer8 = getelementptr inbounds %struct.sVString, %struct.sVString* %13, i32 0, i32 2
  %14 = load i8*, i8** %buffer8, align 8
  %15 = load %struct.sVString*, %struct.sVString** @signature, align 8
  %length9 = getelementptr inbounds %struct.sVString, %struct.sVString* %15, i32 0, i32 0
  %16 = load i64, i64* %length9, align 8
  %sub10 = sub i64 %16, 1
  %arrayidx11 = getelementptr inbounds i8, i8* %14, i64 %sub10
  %17 = load i8, i8* %arrayidx11, align 1
  %conv12 = sext i8 %17 to i32
  %cmp13 = icmp eq i32 %conv12, 40
  br i1 %cmp13, label %if.end, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %lor.lhs.false
  %18 = load %struct.sVString*, %struct.sVString** @signature, align 8
  %buffer16 = getelementptr inbounds %struct.sVString, %struct.sVString* %18, i32 0, i32 2
  %19 = load i8*, i8** %buffer16, align 8
  %20 = load %struct.sVString*, %struct.sVString** @signature, align 8
  %length17 = getelementptr inbounds %struct.sVString, %struct.sVString* %20, i32 0, i32 0
  %21 = load i64, i64* %length17, align 8
  %sub18 = sub i64 %21, 1
  %arrayidx19 = getelementptr inbounds i8, i8* %19, i64 %sub18
  %22 = load i8, i8* %arrayidx19, align 1
  %conv20 = sext i8 %22 to i32
  %cmp21 = icmp eq i32 %conv20, 32
  br i1 %cmp21, label %if.end, label %if.then23

if.then23:                                        ; preds = %lor.lhs.false15
  %23 = load %struct.sVString*, %struct.sVString** @signature, align 8
  call void @vStringPut(%struct.sVString* %23, i32 32)
  br label %if.end

if.end:                                           ; preds = %if.then23, %lor.lhs.false15, %lor.lhs.false, %if.then4
  %24 = load %struct.sVString*, %struct.sVString** @signature, align 8
  %25 = load %struct.sVString*, %struct.sVString** %ident.addr, align 8
  call void @vStringCat(%struct.sVString* %24, %struct.sVString* %25)
  br label %if.end24

if.end24:                                         ; preds = %if.end, %if.else
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.then2
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %entry
  ret void
}

declare void @vStringCat(%struct.sVString*, %struct.sVString*) #1

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
define internal void @parseImplemMethods(%struct.sVString* %ident, i32 %what) #0 {
entry:
  %ident.addr = alloca %struct.sVString*, align 8
  %what.addr = alloca i32, align 4
  store %struct.sVString* %ident, %struct.sVString** %ident.addr, align 8
  store i32 %what, i32* %what.addr, align 4
  %0 = load i32, i32* %what.addr, align 4
  switch i32 %0, label %sw.default [
    i32 24, label %sw.bb
    i32 25, label %sw.bb1
    i32 10, label %sw.bb2
    i32 28, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  store void (%struct.sVString*, i32)* @parseMethodsImplemName, void (%struct.sVString*, i32)** @toDoNext, align 8
  store i32 4, i32* @methodKind, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  store void (%struct.sVString*, i32)* @parseMethodsImplemName, void (%struct.sVString*, i32)** @toDoNext, align 8
  store i32 3, i32* @methodKind, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @popEnclosingContext()
  store void (%struct.sVString*, i32)* @globalScope, void (%struct.sVString*, i32)** @toDoNext, align 8
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  store void (%struct.sVString*, i32)* @ignoreBalanced, void (%struct.sVString*, i32)** @toDoNext, align 8
  %1 = load %struct.sVString*, %struct.sVString** %ident.addr, align 8
  %2 = load i32, i32* %what.addr, align 4
  call void @ignoreBalanced(%struct.sVString* %1, i32 %2)
  store void (%struct.sVString*, i32)* @parseImplemMethods, void (%struct.sVString*, i32)** @comeAfter, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  ret void
}

declare %struct.sTagEntryInfo* @getEntryInCorkQueue(i32) #1

declare i8* @eStrdup(i8*) #1

declare void @vStringResize(%struct.sVString*, i64) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseMethodsImplemName(%struct.sVString* %ident, i32 %what) #0 {
entry:
  %ident.addr = alloca %struct.sVString*, align 8
  %what.addr = alloca i32, align 4
  store %struct.sVString* %ident, %struct.sVString** %ident.addr, align 8
  store i32 %what, i32* %what.addr, align 4
  %0 = load %struct.sVString*, %struct.sVString** %ident.addr, align 8
  %1 = load i32, i32* %what.addr, align 4
  call void @parseMethodsNameCommon(%struct.sVString* %0, i32 %1, void (%struct.sVString*, i32)* @parseMethodsImplemName, void (%struct.sVString*, i32)* @parseImplemMethods)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseEnum(%struct.sVString* %ident, i32 %what) #0 {
entry:
  %ident.addr = alloca %struct.sVString*, align 8
  %what.addr = alloca i32, align 4
  store %struct.sVString* %ident, %struct.sVString** %ident.addr, align 8
  store i32 %what, i32* %what.addr, align 4
  %0 = load i32, i32* %what.addr, align 4
  switch i32 %0, label %sw.default [
    i32 22, label %sw.bb
    i32 28, label %sw.bb1
    i32 32, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  %1 = load i8, i8* @parseEnum_named, align 1
  %tobool = trunc i8 %1 to i1
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %sw.bb
  %2 = load %struct.sVString*, %struct.sVString** %ident.addr, align 8
  %call = call i32 @addTag(%struct.sVString* %2, i32 11)
  %3 = load %struct.sVString*, %struct.sVString** %ident.addr, align 8
  call void @pushEnclosingContext(%struct.sVString* %3, i32 11)
  store i8 1, i8* @parseEnum_named, align 1
  br label %if.end

if.else:                                          ; preds = %sw.bb
  store i8 0, i8* @parseEnum_named, align 1
  call void @popEnclosingContext()
  %4 = load void (%struct.sVString*, i32)*, void (%struct.sVString*, i32)** @comeAfter, align 8
  store void (%struct.sVString*, i32)* %4, void (%struct.sVString*, i32)** @toDoNext, align 8
  %5 = load void (%struct.sVString*, i32)*, void (%struct.sVString*, i32)** @comeAfter, align 8
  %6 = load %struct.sVString*, %struct.sVString** %ident.addr, align 8
  %7 = load i32, i32* %what.addr, align 4
  call void %5(%struct.sVString* %6, i32 %7)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  store void (%struct.sVString*, i32)* @parseEnumFields, void (%struct.sVString*, i32)** @toDoNext, align 8
  store i8 0, i8* @parseEnum_named, align 1
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %8 = load i8, i8* @parseEnum_named, align 1
  %tobool3 = trunc i8 %8 to i1
  br i1 %tobool3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %sw.bb2
  call void @popEnclosingContext()
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %sw.bb2
  %9 = load void (%struct.sVString*, i32)*, void (%struct.sVString*, i32)** @comeAfter, align 8
  store void (%struct.sVString*, i32)* %9, void (%struct.sVString*, i32)** @toDoNext, align 8
  %10 = load void (%struct.sVString*, i32)*, void (%struct.sVString*, i32)** @comeAfter, align 8
  %11 = load %struct.sVString*, %struct.sVString** %ident.addr, align 8
  %12 = load i32, i32* %what.addr, align 4
  call void %10(%struct.sVString* %11, i32 %12)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end5, %sw.bb1, %if.end
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseEnumFields(%struct.sVString* %ident, i32 %what) #0 {
entry:
  %ident.addr = alloca %struct.sVString*, align 8
  %what.addr = alloca i32, align 4
  store %struct.sVString* %ident, %struct.sVString** %ident.addr, align 8
  store i32 %what, i32* %what.addr, align 4
  %0 = load void (%struct.sVString*, i32)*, void (%struct.sVString*, i32)** @parseEnumFields_prev, align 8
  %cmp = icmp ne void (%struct.sVString*, i32)* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load void (%struct.sVString*, i32)*, void (%struct.sVString*, i32)** @parseEnumFields_prev, align 8
  store void (%struct.sVString*, i32)* %1, void (%struct.sVString*, i32)** @comeAfter, align 8
  store void (%struct.sVString*, i32)* null, void (%struct.sVString*, i32)** @parseEnumFields_prev, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, i32* %what.addr, align 4
  switch i32 %2, label %sw.default [
    i32 22, label %sw.bb
    i32 29, label %sw.bb1
  ]

sw.bb:                                            ; preds = %if.end
  %3 = load %struct.sVString*, %struct.sVString** %ident.addr, align 8
  %call = call i32 @addTag(%struct.sVString* %3, i32 11)
  %4 = load void (%struct.sVString*, i32)*, void (%struct.sVString*, i32)** @comeAfter, align 8
  store void (%struct.sVString*, i32)* %4, void (%struct.sVString*, i32)** @parseEnumFields_prev, align 8
  store i32 23, i32* @waitedToken, align 4
  store i32 29, i32* @fallBackToken, align 4
  %5 = load void (%struct.sVString*, i32)*, void (%struct.sVString*, i32)** @comeAfter, align 8
  store void (%struct.sVString*, i32)* %5, void (%struct.sVString*, i32)** @fallback, align 8
  store void (%struct.sVString*, i32)* @parseEnumFields, void (%struct.sVString*, i32)** @comeAfter, align 8
  store void (%struct.sVString*, i32)* @tillTokenOrFallBack, void (%struct.sVString*, i32)** @toDoNext, align 8
  br label %sw.epilog

sw.bb1:                                           ; preds = %if.end
  %6 = load void (%struct.sVString*, i32)*, void (%struct.sVString*, i32)** @comeAfter, align 8
  store void (%struct.sVString*, i32)* %6, void (%struct.sVString*, i32)** @toDoNext, align 8
  call void @popEnclosingContext()
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb1, %sw.bb
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @tillTokenOrFallBack(%struct.sVString* %ident, i32 %what) #0 {
entry:
  %ident.addr = alloca %struct.sVString*, align 8
  %what.addr = alloca i32, align 4
  store %struct.sVString* %ident, %struct.sVString** %ident.addr, align 8
  store i32 %what, i32* %what.addr, align 4
  %0 = load i32, i32* %what.addr, align 4
  %1 = load i32, i32* @waitedToken, align 4
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load void (%struct.sVString*, i32)*, void (%struct.sVString*, i32)** @comeAfter, align 8
  store void (%struct.sVString*, i32)* %2, void (%struct.sVString*, i32)** @toDoNext, align 8
  br label %if.end3

if.else:                                          ; preds = %entry
  %3 = load i32, i32* %what.addr, align 4
  %4 = load i32, i32* @fallBackToken, align 4
  %cmp1 = icmp eq i32 %3, %4
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.else
  %5 = load void (%struct.sVString*, i32)*, void (%struct.sVString*, i32)** @fallback, align 8
  store void (%struct.sVString*, i32)* %5, void (%struct.sVString*, i32)** @toDoNext, align 8
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.else
  br label %if.end3

if.end3:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @isAlpha(i8 signext %c) #0 {
entry:
  %c.addr = alloca i8, align 1
  store i8 %c, i8* %c.addr, align 1
  %0 = load i8, i8* %c.addr, align 1
  %call = call zeroext i1 @isLowerAlpha(i8 signext %0)
  br i1 %call, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %1 = load i8, i8* %c.addr, align 1
  %call1 = call zeroext i1 @isUpperAlpha(i8 signext %1)
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %call1, %lor.rhs ]
  ret i1 %2
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @readIdentifier(%struct._lexingState* %st) #0 {
entry:
  %st.addr = alloca %struct._lexingState*, align 8
  %p = alloca i8*, align 8
  %vStringClear_s = alloca %struct.sVString*, align 8
  store %struct._lexingState* %st, %struct._lexingState** %st.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %name = getelementptr inbounds %struct._lexingState, %struct._lexingState* %0, i32 0, i32 0
  %1 = load %struct.sVString*, %struct.sVString** %name, align 8
  store %struct.sVString* %1, %struct.sVString** %vStringClear_s, align 8
  %2 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %2, i32 0, i32 0
  store i64 0, i64* %length, align 8
  %3 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %3, i32 0, i32 2
  %4 = load i8*, i8** %buffer, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 0
  store i8 0, i8* %arrayidx, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  %5 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %cp = getelementptr inbounds %struct._lexingState, %struct._lexingState* %5, i32 0, i32 1
  %6 = load i8*, i8** %cp, align 8
  %7 = load i8, i8* %6, align 1
  %call = call zeroext i1 @isAlpha(i8 signext %7)
  br i1 %call, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %8 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %cp1 = getelementptr inbounds %struct._lexingState, %struct._lexingState* %8, i32 0, i32 1
  %9 = load i8*, i8** %cp1, align 8
  %10 = load i8, i8* %9, align 1
  %conv = zext i8 %10 to i32
  %cmp = icmp eq i32 %conv, 95
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %do.end
  %11 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %name3 = getelementptr inbounds %struct._lexingState, %struct._lexingState* %11, i32 0, i32 0
  %12 = load %struct.sVString*, %struct.sVString** %name3, align 8
  %13 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %cp4 = getelementptr inbounds %struct._lexingState, %struct._lexingState* %13, i32 0, i32 1
  %14 = load i8*, i8** %cp4, align 8
  %15 = load i8, i8* %14, align 1
  %conv5 = zext i8 %15 to i32
  call void @vStringPut(%struct.sVString* %12, i32 %conv5)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %16 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %cp6 = getelementptr inbounds %struct._lexingState, %struct._lexingState* %16, i32 0, i32 1
  %17 = load i8*, i8** %cp6, align 8
  %add.ptr = getelementptr inbounds i8, i8* %17, i64 1
  store i8* %add.ptr, i8** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %18 = load i8*, i8** %p, align 8
  %19 = load i8, i8* %18, align 1
  %call7 = call zeroext i1 @isIdent(i8 signext %19)
  br i1 %call7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %name8 = getelementptr inbounds %struct._lexingState, %struct._lexingState* %20, i32 0, i32 0
  %21 = load %struct.sVString*, %struct.sVString** %name8, align 8
  %22 = load i8*, i8** %p, align 8
  %23 = load i8, i8* %22, align 1
  %conv9 = zext i8 %23 to i32
  call void @vStringPut(%struct.sVString* %21, i32 %conv9)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %24 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %25 = load i8*, i8** %p, align 8
  %26 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %cp10 = getelementptr inbounds %struct._lexingState, %struct._lexingState* %26, i32 0, i32 1
  store i8* %25, i8** %cp10, align 8
  ret void
}

declare i32 @lookupKeyword(i8*, i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @readIdentifierObjcDirective(%struct._lexingState* %st) #0 {
entry:
  %st.addr = alloca %struct._lexingState*, align 8
  %p = alloca i8*, align 8
  %vStringClear_s = alloca %struct.sVString*, align 8
  store %struct._lexingState* %st, %struct._lexingState** %st.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %name = getelementptr inbounds %struct._lexingState, %struct._lexingState* %0, i32 0, i32 0
  %1 = load %struct.sVString*, %struct.sVString** %name, align 8
  store %struct.sVString* %1, %struct.sVString** %vStringClear_s, align 8
  %2 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %2, i32 0, i32 0
  store i64 0, i64* %length, align 8
  %3 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %3, i32 0, i32 2
  %4 = load i8*, i8** %buffer, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 0
  store i8 0, i8* %arrayidx, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  %5 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %cp = getelementptr inbounds %struct._lexingState, %struct._lexingState* %5, i32 0, i32 1
  %6 = load i8*, i8** %cp, align 8
  %7 = load i8, i8* %6, align 1
  %conv = zext i8 %7 to i32
  %cmp = icmp eq i32 %conv, 64
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  %8 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %name2 = getelementptr inbounds %struct._lexingState, %struct._lexingState* %8, i32 0, i32 0
  %9 = load %struct.sVString*, %struct.sVString** %name2, align 8
  %10 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %cp3 = getelementptr inbounds %struct._lexingState, %struct._lexingState* %10, i32 0, i32 1
  %11 = load i8*, i8** %cp3, align 8
  %12 = load i8, i8* %11, align 1
  %conv4 = zext i8 %12 to i32
  call void @vStringPut(%struct.sVString* %9, i32 %conv4)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end
  %13 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %cp5 = getelementptr inbounds %struct._lexingState, %struct._lexingState* %13, i32 0, i32 1
  %14 = load i8*, i8** %cp5, align 8
  %add.ptr = getelementptr inbounds i8, i8* %14, i64 1
  store i8* %add.ptr, i8** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %15 = load i8*, i8** %p, align 8
  %16 = load i8, i8* %15, align 1
  %call = call zeroext i1 @isIdent(i8 signext %16)
  br i1 %call, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %name6 = getelementptr inbounds %struct._lexingState, %struct._lexingState* %17, i32 0, i32 0
  %18 = load %struct.sVString*, %struct.sVString** %name6, align 8
  %19 = load i8*, i8** %p, align 8
  %20 = load i8, i8* %19, align 1
  %conv7 = zext i8 %20 to i32
  call void @vStringPut(%struct.sVString* %18, i32 %conv7)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load i8*, i8** %p, align 8
  %23 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %cp8 = getelementptr inbounds %struct._lexingState, %struct._lexingState* %23, i32 0, i32 1
  store i8* %22, i8** %cp8, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @isSpace(i8 signext %c) #0 {
entry:
  %c.addr = alloca i8, align 1
  store i8 %c, i8* %c.addr, align 1
  %0 = load i8, i8* %c.addr, align 1
  %conv = sext i8 %0 to i32
  %cmp = icmp eq i32 %conv, 32
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %1 = load i8, i8* %c.addr, align 1
  %conv2 = sext i8 %1 to i32
  %cmp3 = icmp eq i32 %conv2, 9
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %cmp3, %lor.rhs ]
  ret i1 %2
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @eatWhiteSpace(%struct._lexingState* %st) #0 {
entry:
  %st.addr = alloca %struct._lexingState*, align 8
  %cp = alloca i8*, align 8
  store %struct._lexingState* %st, %struct._lexingState** %st.addr, align 8
  %0 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %cp1 = getelementptr inbounds %struct._lexingState, %struct._lexingState* %0, i32 0, i32 1
  %1 = load i8*, i8** %cp1, align 8
  store i8* %1, i8** %cp, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i8*, i8** %cp, align 8
  %3 = load i8, i8* %2, align 1
  %call = call zeroext i1 @isSpace(i8 signext %3)
  br i1 %call, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i8*, i8** %cp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %cp, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %5 = load i8*, i8** %cp, align 8
  %6 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %cp2 = getelementptr inbounds %struct._lexingState, %struct._lexingState* %6, i32 0, i32 1
  store i8* %5, i8** %cp2, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @eatComment(%struct._lexingState* %st) #0 {
entry:
  %st.addr = alloca %struct._lexingState*, align 8
  %unfinished = alloca i8, align 1
  %lastIsStar = alloca i8, align 1
  %c = alloca i8*, align 8
  store %struct._lexingState* %st, %struct._lexingState** %st.addr, align 8
  store i8 1, i8* %unfinished, align 1
  store i8 0, i8* %lastIsStar, align 1
  %0 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %cp = getelementptr inbounds %struct._lexingState, %struct._lexingState* %0, i32 0, i32 1
  %1 = load i8*, i8** %cp, align 8
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 2
  store i8* %add.ptr, i8** %c, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end20, %entry
  %2 = load i8, i8* %unfinished, align 1
  %tobool = trunc i8 %2 to i1
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i8*, i8** %c, align 8
  %cmp = icmp eq i8* %3, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %4 = load i8*, i8** %c, align 8
  %5 = load i8, i8* %4, align 1
  %conv = zext i8 %5 to i32
  %cmp1 = icmp eq i32 %conv, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %while.body
  %call = call i8* @readLineFromInputFile()
  %6 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %cp3 = getelementptr inbounds %struct._lexingState, %struct._lexingState* %6, i32 0, i32 1
  store i8* %call, i8** %cp3, align 8
  %7 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %cp4 = getelementptr inbounds %struct._lexingState, %struct._lexingState* %7, i32 0, i32 1
  %8 = load i8*, i8** %cp4, align 8
  %cmp5 = icmp eq i8* %8, null
  br i1 %cmp5, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.then
  br label %return

if.end:                                           ; preds = %if.then
  %9 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %cp8 = getelementptr inbounds %struct._lexingState, %struct._lexingState* %9, i32 0, i32 1
  %10 = load i8*, i8** %cp8, align 8
  store i8* %10, i8** %c, align 8
  br label %if.end20

if.else:                                          ; preds = %lor.lhs.false
  %11 = load i8*, i8** %c, align 8
  %12 = load i8, i8* %11, align 1
  %conv9 = zext i8 %12 to i32
  %cmp10 = icmp eq i32 %conv9, 47
  br i1 %cmp10, label %land.lhs.true, label %if.else15

land.lhs.true:                                    ; preds = %if.else
  %13 = load i8, i8* %lastIsStar, align 1
  %tobool12 = trunc i8 %13 to i1
  br i1 %tobool12, label %if.then14, label %if.else15

if.then14:                                        ; preds = %land.lhs.true
  store i8 0, i8* %unfinished, align 1
  br label %if.end19

if.else15:                                        ; preds = %land.lhs.true, %if.else
  %14 = load i8*, i8** %c, align 8
  %15 = load i8, i8* %14, align 1
  %conv16 = zext i8 %15 to i32
  %cmp17 = icmp eq i32 42, %conv16
  %frombool = zext i1 %cmp17 to i8
  store i8 %frombool, i8* %lastIsStar, align 1
  %16 = load i8*, i8** %c, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr, i8** %c, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.else15, %if.then14
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.end
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %17 = load i8*, i8** %c, align 8
  %18 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %cp21 = getelementptr inbounds %struct._lexingState, %struct._lexingState* %18, i32 0, i32 1
  store i8* %17, i8** %cp21, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then7
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @eatString(%struct._lexingState* %st) #0 {
entry:
  %st.addr = alloca %struct._lexingState*, align 8
  %lastIsBackSlash = alloca i8, align 1
  %unfinished = alloca i8, align 1
  %c = alloca i8*, align 8
  store %struct._lexingState* %st, %struct._lexingState** %st.addr, align 8
  store i8 0, i8* %lastIsBackSlash, align 1
  store i8 1, i8* %unfinished, align 1
  %0 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %cp = getelementptr inbounds %struct._lexingState, %struct._lexingState* %0, i32 0, i32 1
  %1 = load i8*, i8** %cp, align 8
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 1
  store i8* %add.ptr, i8** %c, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end12, %entry
  %2 = load i8, i8* %unfinished, align 1
  %tobool = trunc i8 %2 to i1
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i8*, i8** %c, align 8
  %cmp = icmp eq i8* %3, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %4 = load i8*, i8** %c, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 0
  %5 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %cmp1 = icmp eq i32 %conv, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %while.body
  br label %while.end

if.else:                                          ; preds = %lor.lhs.false
  %6 = load i8*, i8** %c, align 8
  %7 = load i8, i8* %6, align 1
  %conv3 = zext i8 %7 to i32
  %cmp4 = icmp eq i32 %conv3, 34
  br i1 %cmp4, label %land.lhs.true, label %if.else8

land.lhs.true:                                    ; preds = %if.else
  %8 = load i8, i8* %lastIsBackSlash, align 1
  %tobool6 = trunc i8 %8 to i1
  br i1 %tobool6, label %if.else8, label %if.then7

if.then7:                                         ; preds = %land.lhs.true
  store i8 0, i8* %unfinished, align 1
  br label %if.end

if.else8:                                         ; preds = %land.lhs.true, %if.else
  %9 = load i8*, i8** %c, align 8
  %10 = load i8, i8* %9, align 1
  %conv9 = zext i8 %10 to i32
  %cmp10 = icmp eq i32 %conv9, 92
  %frombool = zext i1 %cmp10 to i8
  store i8 %frombool, i8* %lastIsBackSlash, align 1
  br label %if.end

if.end:                                           ; preds = %if.else8, %if.then7
  br label %if.end12

if.end12:                                         ; preds = %if.end
  %11 = load i8*, i8** %c, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr, i8** %c, align 8
  br label %while.cond

while.end:                                        ; preds = %if.then, %while.cond
  %12 = load i8*, i8** %c, align 8
  %13 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %cp13 = getelementptr inbounds %struct._lexingState, %struct._lexingState* %13, i32 0, i32 1
  store i8* %12, i8** %cp13, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @isLowerAlpha(i8 signext %c) #0 {
entry:
  %c.addr = alloca i8, align 1
  store i8 %c, i8* %c.addr, align 1
  %0 = load i8, i8* %c.addr, align 1
  %conv = sext i8 %0 to i32
  %cmp = icmp sge i32 %conv, 97
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %1 = load i8, i8* %c.addr, align 1
  %conv2 = sext i8 %1 to i32
  %cmp3 = icmp sle i32 %conv2, 122
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp3, %land.rhs ]
  ret i1 %2
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @isUpperAlpha(i8 signext %c) #0 {
entry:
  %c.addr = alloca i8, align 1
  store i8 %c, i8* %c.addr, align 1
  %0 = load i8, i8* %c.addr, align 1
  %conv = sext i8 %0 to i32
  %cmp = icmp sge i32 %conv, 65
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %1 = load i8, i8* %c.addr, align 1
  %conv2 = sext i8 %1 to i32
  %cmp3 = icmp sle i32 %conv2, 90
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp3, %land.rhs ]
  ret i1 %2
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @isIdent(i8 signext %c) #0 {
entry:
  %c.addr = alloca i8, align 1
  store i8 %c, i8* %c.addr, align 1
  %0 = load i8, i8* %c.addr, align 1
  %call = call zeroext i1 @isNum(i8 signext %0)
  br i1 %call, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8, i8* %c.addr, align 1
  %call1 = call zeroext i1 @isAlpha(i8 signext %1)
  br i1 %call1, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %2 = load i8, i8* %c.addr, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 95
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %entry
  %3 = phi i1 [ true, %lor.lhs.false ], [ true, %entry ], [ %cmp, %lor.rhs ]
  ret i1 %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @isNum(i8 signext %c) #0 {
entry:
  %c.addr = alloca i8, align 1
  store i8 %c, i8* %c.addr, align 1
  %0 = load i8, i8* %c.addr, align 1
  %conv = sext i8 %0 to i32
  %cmp = icmp sge i32 %conv, 48
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %1 = load i8, i8* %c.addr, align 1
  %conv2 = sext i8 %1 to i32
  %cmp3 = icmp sle i32 %conv2, 57
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp3, %land.rhs ]
  ret i1 %2
}

declare i8* @selectByObjectiveCAndMatLabKeywords(%struct._MIO*, i32*, i32) #1

declare i8* @selectByObjectiveCKeywords(%struct._MIO*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 10.0.0 (https://github.com/holzschu/clang.git 0cfc630fbdb62e96720b611a57123ef3eb13e297) (https://github.com/holzschu/llvm.git 0d8a71e39b28502c24718f7e74b5acbcfe36dfe0)"}
