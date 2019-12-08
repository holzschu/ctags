; ModuleID = 'flex.c'
source_filename = "flex.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-ios11.0.0"

%struct.sKindDefinition = type { i8, i8, i8*, i8*, i8, i32, %struct.sRoleDesc*, %struct.sScopeSeparator*, i32, i32, i32, %struct.sKindDefinition*, %struct.sKindDefinition* }
%struct.sRoleDesc = type { i8, i8*, i8* }
%struct.sScopeSeparator = type { i32, i8* }
%struct.keywordTable = type { i8*, i32 }
%struct.sPtrArray = type opaque
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
%struct.sFieldDefinition = type { i8, i8*, i8*, i8, [5 x i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)*], i1 (%struct.sTagEntryInfo*)*, i32, i32 }
%struct.sVString = type { i64, i64, i8* }
%struct.sXtagDefinition = type { i8, i8, i8*, i8*, i1 (%struct.sXtagDefinition*)*, i1 (%struct.sXtagDefinition*)*, i32 }
%struct.sParserDependency = type { i32, i8*, i8* }
%struct.sParameterHandlerTable = type { i8*, i8*, void (i32, i8*, i8*)* }
%struct.sXpathFileSpec = type { i8*, i8*, i8*, i8*, i8*, i8* }
%struct.sTokenInfo = type { i32, i32, %struct.sVString*, %struct.sVString*, i64, %struct._MIOPos, i32, i8, i8 }

@.str = private unnamed_addr constant [5 x i8] c"Flex\00", align 1
@extensions = internal constant [3 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* null], align 8
@FlexKinds = internal global [6 x %struct.sKindDefinition] [%struct.sKindDefinition { i8 1, i8 102, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 99, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 109, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 112, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 118, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 120, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }], align 8
@FlexKeywordTable = internal constant [28 x %struct.keywordTable] [%struct.keywordTable { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i32 0 }, %struct.keywordTable { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i32 1 }, %struct.keywordTable { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), i32 2 }, %struct.keywordTable { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0), i32 3 }, %struct.keywordTable { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), i32 4 }, %struct.keywordTable { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i32 0, i32 0), i32 5 }, %struct.keywordTable { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), i32 6 }, %struct.keywordTable { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), i32 7 }, %struct.keywordTable { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i32 0, i32 0), i32 8 }, %struct.keywordTable { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i32 9 }, %struct.keywordTable { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i32 0, i32 0), i32 10 }, %struct.keywordTable { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i32 11 }, %struct.keywordTable { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0), i32 12 }, %struct.keywordTable { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0), i32 13 }, %struct.keywordTable { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i32 0, i32 0), i32 14 }, %struct.keywordTable { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), i32 15 }, %struct.keywordTable { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i32 0, i32 0), i32 16 }, %struct.keywordTable { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0), i32 17 }, %struct.keywordTable { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i32 0, i32 0), i32 18 }, %struct.keywordTable { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0), i32 19 }, %struct.keywordTable { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i32 20 }, %struct.keywordTable { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i32 0, i32 0), i32 21 }, %struct.keywordTable { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i32 0, i32 0), i32 22 }, %struct.keywordTable { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0), i32 23 }, %struct.keywordTable { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0), i32 24 }, %struct.keywordTable { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i32 0, i32 0), i32 25 }, %struct.keywordTable { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.39, i32 0, i32 0), i32 26 }, %struct.keywordTable { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i32 0, i32 0), i32 27 }], align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"as\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"mxml\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"function\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"functions\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"class\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"classes\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"method\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"methods\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"properties\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"variable\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"global variables\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"mxtag\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"mxtags\00", align 1
@ClassNames = internal global %struct.sPtrArray* null, align 8
@FunctionNames = internal global %struct.sPtrArray* null, align 8
@Lang_flex = internal global i32 0, align 4
@.str.15 = private unnamed_addr constant [9 x i8] c"Function\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"object\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"Object\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"prototype\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"var\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"for\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"while\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"do\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"if\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"else\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"switch\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"try\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"catch\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"finally\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"public\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"private\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"static\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"script\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"cdata\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"mx\00", align 1
@.str.39 = private unnamed_addr constant [3 x i8] c"fx\00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"override\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sParserDefinition* @FlexParser() #0 {
entry:
  %def = alloca %struct.sParserDefinition*, align 8
  %call = call %struct.sParserDefinition* @parserNew(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.sParserDefinition* %call, %struct.sParserDefinition** %def, align 8
  %0 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %extensions = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %0, i32 0, i32 3
  store i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @extensions, i64 0, i64 0), i8*** %extensions, align 8
  %1 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %1, i32 0, i32 1
  store %struct.sKindDefinition* getelementptr inbounds ([6 x %struct.sKindDefinition], [6 x %struct.sKindDefinition]* @FlexKinds, i64 0, i64 0), %struct.sKindDefinition** %kindTable, align 8
  %2 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %2, i32 0, i32 2
  store i32 6, i32* %kindCount, align 8
  %3 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %parser = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %3, i32 0, i32 8
  store void ()* @findFlexTags, void ()** %parser, align 8
  %4 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %initialize = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %4, i32 0, i32 6
  store void (i32)* @initialize, void (i32)** %initialize, align 8
  %5 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %keywordTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %5, i32 0, i32 18
  store %struct.keywordTable* getelementptr inbounds ([28 x %struct.keywordTable], [28 x %struct.keywordTable]* @FlexKeywordTable, i64 0, i64 0), %struct.keywordTable** %keywordTable, align 8
  %6 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %keywordCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %6, i32 0, i32 19
  store i32 28, i32* %keywordCount, align 8
  %7 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  ret %struct.sParserDefinition* %7
}

declare %struct.sParserDefinition* @parserNew(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @findFlexTags() #0 {
entry:
  %token = alloca %struct.sTokenInfo*, align 8
  %call = call %struct.sTokenInfo* @newToken()
  store %struct.sTokenInfo* %call, %struct.sTokenInfo** %token, align 8
  %call1 = call %struct.sPtrArray* @stringListNew()
  store %struct.sPtrArray* %call1, %struct.sPtrArray** @ClassNames, align 8
  %call2 = call %struct.sPtrArray* @stringListNew()
  store %struct.sPtrArray* %call2, %struct.sPtrArray** @FunctionNames, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  call void @parseFlexFile(%struct.sTokenInfo* %0)
  %1 = load %struct.sPtrArray*, %struct.sPtrArray** @ClassNames, align 8
  call void @stringListDelete(%struct.sPtrArray* %1)
  %2 = load %struct.sPtrArray*, %struct.sPtrArray** @FunctionNames, align 8
  call void @stringListDelete(%struct.sPtrArray* %2)
  store %struct.sPtrArray* null, %struct.sPtrArray** @ClassNames, align 8
  store %struct.sPtrArray* null, %struct.sPtrArray** @FunctionNames, align 8
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  call void @deleteToken(%struct.sTokenInfo* %3)
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
  store i32 %0, i32* @Lang_flex, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct.sTokenInfo* @newToken() #0 {
entry:
  %token = alloca %struct.sTokenInfo*, align 8
  %tmp = alloca %struct._MIOPos, align 8
  %call = call i8* @eMalloc(i64 56)
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
  %5 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %nestLevel = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %5, i32 0, i32 6
  store i32 0, i32* %nestLevel, align 8
  %6 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %isClass = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %6, i32 0, i32 8
  store i8 0, i8* %isClass, align 1
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %ignoreTag = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %7, i32 0, i32 7
  store i8 0, i8* %ignoreTag, align 4
  %call3 = call i64 @getInputLineNumber()
  %8 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %lineNumber = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %8, i32 0, i32 4
  store i64 %call3, i64* %lineNumber, align 8
  %9 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %filePosition = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %9, i32 0, i32 5
  %call4 = call [2 x i64] @getInputFilePosition()
  %10 = bitcast %struct._MIOPos* %tmp to [2 x i64]*
  store [2 x i64] %call4, [2 x i64]* %10, align 8
  %11 = bitcast %struct._MIOPos* %filePosition to i8*
  %12 = bitcast %struct._MIOPos* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 16, i1 false)
  %13 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  ret %struct.sTokenInfo* %13
}

declare %struct.sPtrArray* @stringListNew() #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseFlexFile(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %0)
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %1, i32 0, i32 0
  %2 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %2, 20
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call = call zeroext i1 @parseMXML(%struct.sTokenInfo* %3)
  br label %if.end28

if.else:                                          ; preds = %do.body
  %4 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type1 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %4, i32 0, i32 0
  %5 = load i32, i32* %type1, align 8
  %cmp2 = icmp eq i32 %5, 23
  br i1 %cmp2, label %if.then3, label %if.else25

if.then3:                                         ; preds = %if.else
  %6 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %6)
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type4 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %7, i32 0, i32 0
  %8 = load i32, i32* %type4, align 8
  %cmp5 = icmp eq i32 %8, 25
  br i1 %cmp5, label %if.then6, label %if.else11

if.then6:                                         ; preds = %if.then3
  %9 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %9)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then6
  %10 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type7 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %10, i32 0, i32 0
  %11 = load i32, i32* %type7, align 8
  %cmp8 = icmp eq i32 %11, 25
  br i1 %cmp8, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %12 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type9 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %12, i32 0, i32 0
  %13 = load i32, i32* %type9, align 8
  %cmp10 = icmp eq i32 %13, 1
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %14 = phi i1 [ true, %while.cond ], [ %cmp10, %lor.rhs ]
  %lnot = xor i1 %14, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %15 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %15)
  br label %while.cond

while.end:                                        ; preds = %lor.end
  %16 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %16)
  br label %if.end24

if.else11:                                        ; preds = %if.then3
  %17 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %17, i32 0, i32 1
  %18 = load i32, i32* %keyword, align 4
  %cmp12 = icmp eq i32 %18, -1
  br i1 %cmp12, label %if.then13, label %if.end

if.then13:                                        ; preds = %if.else11
  %19 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %19)
  br label %while.cond14

while.cond14:                                     ; preds = %while.body22, %if.then13
  %20 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type15 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %20, i32 0, i32 0
  %21 = load i32, i32* %type15, align 8
  %cmp16 = icmp eq i32 %21, 24
  br i1 %cmp16, label %lor.end20, label %lor.rhs17

lor.rhs17:                                        ; preds = %while.cond14
  %22 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type18 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %22, i32 0, i32 0
  %23 = load i32, i32* %type18, align 8
  %cmp19 = icmp eq i32 %23, 1
  br label %lor.end20

lor.end20:                                        ; preds = %lor.rhs17, %while.cond14
  %24 = phi i1 [ true, %while.cond14 ], [ %cmp19, %lor.rhs17 ]
  %lnot21 = xor i1 %24, true
  br i1 %lnot21, label %while.body22, label %while.end23

while.body22:                                     ; preds = %lor.end20
  %25 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %25)
  br label %while.cond14

while.end23:                                      ; preds = %lor.end20
  br label %if.end

if.end:                                           ; preds = %while.end23, %if.else11
  br label %if.end24

if.end24:                                         ; preds = %if.end, %while.end
  br label %if.end27

if.else25:                                        ; preds = %if.else
  %26 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call26 = call zeroext i1 @parseActionScript(%struct.sTokenInfo* %26)
  br label %if.end27

if.end27:                                         ; preds = %if.else25, %if.end24
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.then
  br label %do.cond

do.cond:                                          ; preds = %if.end28
  %27 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type29 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %27, i32 0, i32 0
  %28 = load i32, i32* %type29, align 8
  %cmp30 = icmp eq i32 %28, 1
  %lnot31 = xor i1 %cmp30, true
  br i1 %lnot31, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  ret void
}

declare void @stringListDelete(%struct.sPtrArray*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @deleteToken(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 2
  %1 = load %struct.sVString*, %struct.sVString** %string, align 8
  call void @vStringDelete(%struct.sVString* %1)
  %2 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %scope = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %2, i32 0, i32 3
  %3 = load %struct.sVString*, %struct.sVString** %scope, align 8
  call void @vStringDelete(%struct.sVString* %3)
  %4 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %5 = bitcast %struct.sTokenInfo* %4 to i8*
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
define internal void @readToken(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %c = alloca i32, align 4
  %vStringClear_s = alloca %struct.sVString*, align 8
  %tmp = alloca %struct._MIOPos, align 8
  %tmp38 = alloca %struct._MIOPos, align 8
  %tmp50 = alloca %struct._MIOPos, align 8
  %d = alloca i32, align 4
  %tmp64 = alloca %struct._MIOPos, align 8
  %tmp90 = alloca %struct._MIOPos, align 8
  %d97 = alloca i32, align 4
  %tmp113 = alloca %struct._MIOPos, align 8
  %e = alloca i32, align 4
  %tmp125 = alloca %struct._MIOPos, align 8
  %f = alloca i32, align 4
  %tmp137 = alloca %struct._MIOPos, align 8
  %e171 = alloca i32, align 4
  %tmp183 = alloca %struct._MIOPos, align 8
  %f192 = alloca i32, align 4
  %tmp200 = alloca %struct._MIOPos, align 8
  %tmp207 = alloca %struct._MIOPos, align 8
  %tmp218 = alloca %struct._MIOPos, align 8
  %tmp225 = alloca %struct._MIOPos, align 8
  %e230 = alloca i32, align 4
  %tmp242 = alloca %struct._MIOPos, align 8
  %f245 = alloca i32, align 4
  %tmp257 = alloca %struct._MIOPos, align 8
  %g = alloca i32, align 4
  %tmp269 = alloca %struct._MIOPos, align 8
  %tmp276 = alloca %struct._MIOPos, align 8
  %tmp287 = alloca %struct._MIOPos, align 8
  %tmp294 = alloca %struct._MIOPos, align 8
  %tmp305 = alloca %struct._MIOPos, align 8
  %tmp329 = alloca %struct._MIOPos, align 8
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

getNextChar:                                      ; preds = %do.end159, %if.then81, %do.end78, %do.end
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
    i32 44, label %sw.bb14
    i32 46, label %sw.bb16
    i32 58, label %sw.bb18
    i32 123, label %sw.bb20
    i32 125, label %sw.bb22
    i32 61, label %sw.bb24
    i32 91, label %sw.bb26
    i32 93, label %sw.bb28
    i32 63, label %sw.bb30
    i32 39, label %sw.bb32
    i32 34, label %sw.bb32
    i32 92, label %sw.bb40
    i32 47, label %sw.bb52
    i32 60, label %sw.bb96
    i32 62, label %sw.bb300
    i32 33, label %sw.bb307
  ]

sw.bb:                                            ; preds = %do.end6
  %17 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type7 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %17, i32 0, i32 0
  store i32 1, i32* %type7, align 8
  br label %sw.epilog

sw.bb8:                                           ; preds = %do.end6
  %18 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type9 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %18, i32 0, i32 0
  store i32 8, i32* %type9, align 8
  br label %sw.epilog

sw.bb10:                                          ; preds = %do.end6
  %19 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type11 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %19, i32 0, i32 0
  store i32 3, i32* %type11, align 8
  br label %sw.epilog

sw.bb12:                                          ; preds = %do.end6
  %20 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type13 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %20, i32 0, i32 0
  store i32 4, i32* %type13, align 8
  br label %sw.epilog

sw.bb14:                                          ; preds = %do.end6
  %21 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type15 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %21, i32 0, i32 0
  store i32 6, i32* %type15, align 8
  br label %sw.epilog

sw.bb16:                                          ; preds = %do.end6
  %22 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type17 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %22, i32 0, i32 0
  store i32 12, i32* %type17, align 8
  br label %sw.epilog

sw.bb18:                                          ; preds = %do.end6
  %23 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type19 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %23, i32 0, i32 0
  store i32 5, i32* %type19, align 8
  br label %sw.epilog

sw.bb20:                                          ; preds = %do.end6
  %24 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type21 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %24, i32 0, i32 0
  store i32 13, i32* %type21, align 8
  br label %sw.epilog

sw.bb22:                                          ; preds = %do.end6
  %25 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type23 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %25, i32 0, i32 0
  store i32 14, i32* %type23, align 8
  br label %sw.epilog

sw.bb24:                                          ; preds = %do.end6
  %26 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type25 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %26, i32 0, i32 0
  store i32 15, i32* %type25, align 8
  br label %sw.epilog

sw.bb26:                                          ; preds = %do.end6
  %27 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type27 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %27, i32 0, i32 0
  store i32 18, i32* %type27, align 8
  br label %sw.epilog

sw.bb28:                                          ; preds = %do.end6
  %28 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type29 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %28, i32 0, i32 0
  store i32 19, i32* %type29, align 8
  br label %sw.epilog

sw.bb30:                                          ; preds = %do.end6
  %29 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type31 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %29, i32 0, i32 0
  store i32 25, i32* %type31, align 8
  br label %sw.epilog

sw.bb32:                                          ; preds = %do.end6, %do.end6
  %30 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type33 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %30, i32 0, i32 0
  store i32 11, i32* %type33, align 8
  %31 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string34 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %31, i32 0, i32 2
  %32 = load %struct.sVString*, %struct.sVString** %string34, align 8
  %33 = load i32, i32* %c, align 4
  call void @parseString(%struct.sVString* %32, i32 %33)
  %call35 = call i64 @getInputLineNumber()
  %34 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %lineNumber36 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %34, i32 0, i32 4
  store i64 %call35, i64* %lineNumber36, align 8
  %35 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %filePosition37 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %35, i32 0, i32 5
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
  %cmp42 = icmp ne i32 %39, 92
  br i1 %cmp42, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %sw.bb40
  %40 = load i32, i32* %c, align 4
  %cmp43 = icmp ne i32 %40, 34
  br i1 %cmp43, label %land.lhs.true44, label %if.end

land.lhs.true44:                                  ; preds = %land.lhs.true
  %41 = load i32, i32* %c, align 4
  %call45 = call i32 @isspace(i32 %41) #4
  %tobool = icmp ne i32 %call45, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true44
  %42 = load i32, i32* %c, align 4
  call void @ungetcToInputFile(i32 %42)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true44, %land.lhs.true, %sw.bb40
  %43 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type46 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %43, i32 0, i32 0
  store i32 2, i32* %type46, align 8
  %call47 = call i64 @getInputLineNumber()
  %44 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %lineNumber48 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %44, i32 0, i32 4
  store i64 %call47, i64* %lineNumber48, align 8
  %45 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %filePosition49 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %45, i32 0, i32 5
  %call51 = call [2 x i64] @getInputFilePosition()
  %46 = bitcast %struct._MIOPos* %tmp50 to [2 x i64]*
  store [2 x i64] %call51, [2 x i64]* %46, align 8
  %47 = bitcast %struct._MIOPos* %filePosition49 to i8*
  %48 = bitcast %struct._MIOPos* %tmp50 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %47, i8* align 8 %48, i64 16, i1 false)
  br label %sw.epilog

sw.bb52:                                          ; preds = %do.end6
  %call53 = call i32 @getcFromInputFile()
  store i32 %call53, i32* %d, align 4
  %49 = load i32, i32* %d, align 4
  %cmp54 = icmp ne i32 %49, 42
  br i1 %cmp54, label %land.lhs.true55, label %if.else

land.lhs.true55:                                  ; preds = %sw.bb52
  %50 = load i32, i32* %d, align 4
  %cmp56 = icmp ne i32 %50, 47
  br i1 %cmp56, label %land.lhs.true57, label %if.else

land.lhs.true57:                                  ; preds = %land.lhs.true55
  %51 = load i32, i32* %d, align 4
  %cmp58 = icmp ne i32 %51, 62
  br i1 %cmp58, label %if.then59, label %if.else

if.then59:                                        ; preds = %land.lhs.true57
  %52 = load i32, i32* %d, align 4
  call void @ungetcToInputFile(i32 %52)
  %53 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type60 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %53, i32 0, i32 0
  store i32 17, i32* %type60, align 8
  %call61 = call i64 @getInputLineNumber()
  %54 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %lineNumber62 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %54, i32 0, i32 4
  store i64 %call61, i64* %lineNumber62, align 8
  %55 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %filePosition63 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %55, i32 0, i32 5
  %call65 = call [2 x i64] @getInputFilePosition()
  %56 = bitcast %struct._MIOPos* %tmp64 to [2 x i64]*
  store [2 x i64] %call65, [2 x i64]* %56, align 8
  %57 = bitcast %struct._MIOPos* %filePosition63 to i8*
  %58 = bitcast %struct._MIOPos* %tmp64 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %57, i8* align 8 %58, i64 16, i1 false)
  br label %if.end95

if.else:                                          ; preds = %land.lhs.true57, %land.lhs.true55, %sw.bb52
  %59 = load i32, i32* %d, align 4
  %cmp66 = icmp eq i32 %59, 42
  br i1 %cmp66, label %if.then67, label %if.else79

if.then67:                                        ; preds = %if.else
  br label %do.body68

do.body68:                                        ; preds = %land.end, %if.then67
  %call69 = call i32 @skipToCharacterInInputFile(i32 42)
  %call70 = call i32 @getcFromInputFile()
  store i32 %call70, i32* %c, align 4
  %60 = load i32, i32* %c, align 4
  %cmp71 = icmp eq i32 %60, 47
  br i1 %cmp71, label %if.then72, label %if.else73

if.then72:                                        ; preds = %do.body68
  br label %do.end78

if.else73:                                        ; preds = %do.body68
  %61 = load i32, i32* %c, align 4
  call void @ungetcToInputFile(i32 %61)
  br label %if.end74

if.end74:                                         ; preds = %if.else73
  br label %do.cond75

do.cond75:                                        ; preds = %if.end74
  %62 = load i32, i32* %c, align 4
  %cmp76 = icmp ne i32 %62, -1
  br i1 %cmp76, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond75
  %63 = load i32, i32* %c, align 4
  %cmp77 = icmp ne i32 %63, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond75
  %64 = phi i1 [ false, %do.cond75 ], [ %cmp77, %land.rhs ]
  br i1 %64, label %do.body68, label %do.end78

do.end78:                                         ; preds = %land.end, %if.then72
  br label %getNextChar

if.else79:                                        ; preds = %if.else
  %65 = load i32, i32* %d, align 4
  %cmp80 = icmp eq i32 %65, 47
  br i1 %cmp80, label %if.then81, label %if.else83

if.then81:                                        ; preds = %if.else79
  %call82 = call i32 @skipToCharacterInInputFile(i32 10)
  br label %getNextChar

if.else83:                                        ; preds = %if.else79
  %66 = load i32, i32* %d, align 4
  %cmp84 = icmp eq i32 %66, 62
  br i1 %cmp84, label %if.then85, label %if.end92

if.then85:                                        ; preds = %if.else83
  %67 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type86 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %67, i32 0, i32 0
  store i32 22, i32* %type86, align 8
  %call87 = call i64 @getInputLineNumber()
  %68 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %lineNumber88 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %68, i32 0, i32 4
  store i64 %call87, i64* %lineNumber88, align 8
  %69 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %filePosition89 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %69, i32 0, i32 5
  %call91 = call [2 x i64] @getInputFilePosition()
  %70 = bitcast %struct._MIOPos* %tmp90 to [2 x i64]*
  store [2 x i64] %call91, [2 x i64]* %70, align 8
  %71 = bitcast %struct._MIOPos* %filePosition89 to i8*
  %72 = bitcast %struct._MIOPos* %tmp90 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %71, i8* align 8 %72, i64 16, i1 false)
  br label %if.end92

if.end92:                                         ; preds = %if.then85, %if.else83
  br label %if.end93

if.end93:                                         ; preds = %if.end92
  br label %if.end94

if.end94:                                         ; preds = %if.end93
  br label %if.end95

if.end95:                                         ; preds = %if.end94, %if.then59
  br label %sw.epilog

sw.bb96:                                          ; preds = %do.end6
  %call98 = call i32 @getcFromInputFile()
  store i32 %call98, i32* %d97, align 4
  %73 = load i32, i32* %d97, align 4
  %cmp99 = icmp ne i32 %73, 33
  br i1 %cmp99, label %land.lhs.true100, label %if.else115

land.lhs.true100:                                 ; preds = %sw.bb96
  %74 = load i32, i32* %d97, align 4
  %cmp101 = icmp ne i32 %74, 47
  br i1 %cmp101, label %land.lhs.true102, label %if.else115

land.lhs.true102:                                 ; preds = %land.lhs.true100
  %75 = load i32, i32* %d97, align 4
  %cmp103 = icmp ne i32 %75, 109
  br i1 %cmp103, label %land.lhs.true104, label %if.else115

land.lhs.true104:                                 ; preds = %land.lhs.true102
  %76 = load i32, i32* %d97, align 4
  %cmp105 = icmp ne i32 %76, 102
  br i1 %cmp105, label %land.lhs.true106, label %if.else115

land.lhs.true106:                                 ; preds = %land.lhs.true104
  %77 = load i32, i32* %d97, align 4
  %cmp107 = icmp ne i32 %77, 115
  br i1 %cmp107, label %if.then108, label %if.else115

if.then108:                                       ; preds = %land.lhs.true106
  %78 = load i32, i32* %d97, align 4
  call void @ungetcToInputFile(i32 %78)
  %79 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type109 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %79, i32 0, i32 0
  store i32 23, i32* %type109, align 8
  %call110 = call i64 @getInputLineNumber()
  %80 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %lineNumber111 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %80, i32 0, i32 4
  store i64 %call110, i64* %lineNumber111, align 8
  %81 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %filePosition112 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %81, i32 0, i32 5
  %call114 = call [2 x i64] @getInputFilePosition()
  %82 = bitcast %struct._MIOPos* %tmp113 to [2 x i64]*
  store [2 x i64] %call114, [2 x i64]* %82, align 8
  %83 = bitcast %struct._MIOPos* %filePosition112 to i8*
  %84 = bitcast %struct._MIOPos* %tmp113 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %83, i8* align 8 %84, i64 16, i1 false)
  br label %sw.epilog

if.else115:                                       ; preds = %land.lhs.true106, %land.lhs.true104, %land.lhs.true102, %land.lhs.true100, %sw.bb96
  %85 = load i32, i32* %d97, align 4
  %cmp116 = icmp eq i32 %85, 33
  br i1 %cmp116, label %if.then117, label %if.else164

if.then117:                                       ; preds = %if.else115
  %call118 = call i32 @getcFromInputFile()
  store i32 %call118, i32* %e, align 4
  %86 = load i32, i32* %e, align 4
  %cmp119 = icmp ne i32 %86, 45
  br i1 %cmp119, label %if.then120, label %if.else127

if.then120:                                       ; preds = %if.then117
  %87 = load i32, i32* %e, align 4
  call void @ungetcToInputFile(i32 %87)
  %88 = load i32, i32* %d97, align 4
  call void @ungetcToInputFile(i32 %88)
  %89 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type121 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %89, i32 0, i32 0
  store i32 23, i32* %type121, align 8
  %call122 = call i64 @getInputLineNumber()
  %90 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %lineNumber123 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %90, i32 0, i32 4
  store i64 %call122, i64* %lineNumber123, align 8
  %91 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %filePosition124 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %91, i32 0, i32 5
  %call126 = call [2 x i64] @getInputFilePosition()
  %92 = bitcast %struct._MIOPos* %tmp125 to [2 x i64]*
  store [2 x i64] %call126, [2 x i64]* %92, align 8
  %93 = bitcast %struct._MIOPos* %filePosition124 to i8*
  %94 = bitcast %struct._MIOPos* %tmp125 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %93, i8* align 8 %94, i64 16, i1 false)
  br label %if.end163

if.else127:                                       ; preds = %if.then117
  %95 = load i32, i32* %e, align 4
  %cmp128 = icmp eq i32 %95, 45
  br i1 %cmp128, label %if.then129, label %if.end162

if.then129:                                       ; preds = %if.else127
  %call130 = call i32 @getcFromInputFile()
  store i32 %call130, i32* %f, align 4
  %96 = load i32, i32* %f, align 4
  %cmp131 = icmp ne i32 %96, 45
  br i1 %cmp131, label %if.then132, label %if.else139

if.then132:                                       ; preds = %if.then129
  %97 = load i32, i32* %f, align 4
  call void @ungetcToInputFile(i32 %97)
  %98 = load i32, i32* %e, align 4
  call void @ungetcToInputFile(i32 %98)
  %99 = load i32, i32* %d97, align 4
  call void @ungetcToInputFile(i32 %99)
  %100 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type133 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %100, i32 0, i32 0
  store i32 23, i32* %type133, align 8
  %call134 = call i64 @getInputLineNumber()
  %101 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %lineNumber135 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %101, i32 0, i32 4
  store i64 %call134, i64* %lineNumber135, align 8
  %102 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %filePosition136 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %102, i32 0, i32 5
  %call138 = call [2 x i64] @getInputFilePosition()
  %103 = bitcast %struct._MIOPos* %tmp137 to [2 x i64]*
  store [2 x i64] %call138, [2 x i64]* %103, align 8
  %104 = bitcast %struct._MIOPos* %filePosition136 to i8*
  %105 = bitcast %struct._MIOPos* %tmp137 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %104, i8* align 8 %105, i64 16, i1 false)
  br label %if.end161

if.else139:                                       ; preds = %if.then129
  %106 = load i32, i32* %f, align 4
  %cmp140 = icmp eq i32 %106, 45
  br i1 %cmp140, label %if.then141, label %if.end160

if.then141:                                       ; preds = %if.else139
  br label %do.body142

do.body142:                                       ; preds = %land.end158, %if.then141
  %call143 = call i32 @skipToCharacterInInputFile(i32 45)
  %call144 = call i32 @getcFromInputFile()
  store i32 %call144, i32* %c, align 4
  %107 = load i32, i32* %c, align 4
  %cmp145 = icmp eq i32 %107, 45
  br i1 %cmp145, label %if.then146, label %if.else152

if.then146:                                       ; preds = %do.body142
  %call147 = call i32 @getcFromInputFile()
  store i32 %call147, i32* %d97, align 4
  %108 = load i32, i32* %d97, align 4
  %cmp148 = icmp eq i32 %108, 62
  br i1 %cmp148, label %if.then149, label %if.else150

if.then149:                                       ; preds = %if.then146
  br label %do.end159

if.else150:                                       ; preds = %if.then146
  %109 = load i32, i32* %d97, align 4
  call void @ungetcToInputFile(i32 %109)
  %110 = load i32, i32* %c, align 4
  call void @ungetcToInputFile(i32 %110)
  br label %if.end151

if.end151:                                        ; preds = %if.else150
  br label %do.end159

if.else152:                                       ; preds = %do.body142
  %111 = load i32, i32* %c, align 4
  call void @ungetcToInputFile(i32 %111)
  br label %if.end153

if.end153:                                        ; preds = %if.else152
  br label %do.cond154

do.cond154:                                       ; preds = %if.end153
  %112 = load i32, i32* %c, align 4
  %cmp155 = icmp ne i32 %112, -1
  br i1 %cmp155, label %land.rhs156, label %land.end158

land.rhs156:                                      ; preds = %do.cond154
  %113 = load i32, i32* %c, align 4
  %cmp157 = icmp ne i32 %113, 0
  br label %land.end158

land.end158:                                      ; preds = %land.rhs156, %do.cond154
  %114 = phi i1 [ false, %do.cond154 ], [ %cmp157, %land.rhs156 ]
  br i1 %114, label %do.body142, label %do.end159

do.end159:                                        ; preds = %land.end158, %if.end151, %if.then149
  br label %getNextChar

if.end160:                                        ; preds = %if.else139
  br label %if.end161

if.end161:                                        ; preds = %if.end160, %if.then132
  br label %if.end162

if.end162:                                        ; preds = %if.end161, %if.else127
  br label %if.end163

if.end163:                                        ; preds = %if.end162, %if.then120
  br label %if.end298

if.else164:                                       ; preds = %if.else115
  %115 = load i32, i32* %d97, align 4
  %cmp165 = icmp eq i32 %115, 109
  br i1 %cmp165, label %if.then170, label %lor.lhs.false166

lor.lhs.false166:                                 ; preds = %if.else164
  %116 = load i32, i32* %d97, align 4
  %cmp167 = icmp eq i32 %116, 102
  br i1 %cmp167, label %if.then170, label %lor.lhs.false168

lor.lhs.false168:                                 ; preds = %lor.lhs.false166
  %117 = load i32, i32* %d97, align 4
  %cmp169 = icmp eq i32 %117, 115
  br i1 %cmp169, label %if.then170, label %if.else227

if.then170:                                       ; preds = %lor.lhs.false168, %lor.lhs.false166, %if.else164
  %call172 = call i32 @getcFromInputFile()
  store i32 %call172, i32* %e171, align 4
  %118 = load i32, i32* %d97, align 4
  %cmp173 = icmp eq i32 %118, 109
  br i1 %cmp173, label %land.lhs.true176, label %lor.lhs.false174

lor.lhs.false174:                                 ; preds = %if.then170
  %119 = load i32, i32* %d97, align 4
  %cmp175 = icmp eq i32 %119, 102
  br i1 %cmp175, label %land.lhs.true176, label %if.else185

land.lhs.true176:                                 ; preds = %lor.lhs.false174, %if.then170
  %120 = load i32, i32* %e171, align 4
  %cmp177 = icmp ne i32 %120, 120
  br i1 %cmp177, label %if.then178, label %if.else185

if.then178:                                       ; preds = %land.lhs.true176
  %121 = load i32, i32* %e171, align 4
  call void @ungetcToInputFile(i32 %121)
  %122 = load i32, i32* %d97, align 4
  call void @ungetcToInputFile(i32 %122)
  %123 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type179 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %123, i32 0, i32 0
  store i32 23, i32* %type179, align 8
  %call180 = call i64 @getInputLineNumber()
  %124 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %lineNumber181 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %124, i32 0, i32 4
  store i64 %call180, i64* %lineNumber181, align 8
  %125 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %filePosition182 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %125, i32 0, i32 5
  %call184 = call [2 x i64] @getInputFilePosition()
  %126 = bitcast %struct._MIOPos* %tmp183 to [2 x i64]*
  store [2 x i64] %call184, [2 x i64]* %126, align 8
  %127 = bitcast %struct._MIOPos* %filePosition182 to i8*
  %128 = bitcast %struct._MIOPos* %tmp183 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %127, i8* align 8 %128, i64 16, i1 false)
  br label %sw.epilog

if.else185:                                       ; preds = %land.lhs.true176, %lor.lhs.false174
  %129 = load i32, i32* %d97, align 4
  %cmp186 = icmp eq i32 %129, 109
  br i1 %cmp186, label %land.lhs.true189, label %lor.lhs.false187

lor.lhs.false187:                                 ; preds = %if.else185
  %130 = load i32, i32* %d97, align 4
  %cmp188 = icmp eq i32 %130, 102
  br i1 %cmp188, label %land.lhs.true189, label %if.end209

land.lhs.true189:                                 ; preds = %lor.lhs.false187, %if.else185
  %131 = load i32, i32* %e171, align 4
  %cmp190 = icmp eq i32 %131, 120
  br i1 %cmp190, label %if.then191, label %if.end209

if.then191:                                       ; preds = %land.lhs.true189
  %call193 = call i32 @getcFromInputFile()
  store i32 %call193, i32* %f192, align 4
  %132 = load i32, i32* %f192, align 4
  %cmp194 = icmp ne i32 %132, 58
  br i1 %cmp194, label %if.then195, label %if.else202

if.then195:                                       ; preds = %if.then191
  %133 = load i32, i32* %f192, align 4
  call void @ungetcToInputFile(i32 %133)
  %134 = load i32, i32* %e171, align 4
  call void @ungetcToInputFile(i32 %134)
  %135 = load i32, i32* %d97, align 4
  call void @ungetcToInputFile(i32 %135)
  %136 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type196 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %136, i32 0, i32 0
  store i32 23, i32* %type196, align 8
  %call197 = call i64 @getInputLineNumber()
  %137 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %lineNumber198 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %137, i32 0, i32 4
  store i64 %call197, i64* %lineNumber198, align 8
  %138 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %filePosition199 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %138, i32 0, i32 5
  %call201 = call [2 x i64] @getInputFilePosition()
  %139 = bitcast %struct._MIOPos* %tmp200 to [2 x i64]*
  store [2 x i64] %call201, [2 x i64]* %139, align 8
  %140 = bitcast %struct._MIOPos* %filePosition199 to i8*
  %141 = bitcast %struct._MIOPos* %tmp200 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %140, i8* align 8 %141, i64 16, i1 false)
  br label %sw.epilog

if.else202:                                       ; preds = %if.then191
  %142 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type203 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %142, i32 0, i32 0
  store i32 20, i32* %type203, align 8
  %call204 = call i64 @getInputLineNumber()
  %143 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %lineNumber205 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %143, i32 0, i32 4
  store i64 %call204, i64* %lineNumber205, align 8
  %144 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %filePosition206 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %144, i32 0, i32 5
  %call208 = call [2 x i64] @getInputFilePosition()
  %145 = bitcast %struct._MIOPos* %tmp207 to [2 x i64]*
  store [2 x i64] %call208, [2 x i64]* %145, align 8
  %146 = bitcast %struct._MIOPos* %filePosition206 to i8*
  %147 = bitcast %struct._MIOPos* %tmp207 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %146, i8* align 8 %147, i64 16, i1 false)
  br label %sw.epilog

if.end209:                                        ; preds = %land.lhs.true189, %lor.lhs.false187
  %148 = load i32, i32* %d97, align 4
  %cmp210 = icmp eq i32 %148, 115
  br i1 %cmp210, label %land.lhs.true211, label %if.else220

land.lhs.true211:                                 ; preds = %if.end209
  %149 = load i32, i32* %e171, align 4
  %cmp212 = icmp eq i32 %149, 58
  br i1 %cmp212, label %if.then213, label %if.else220

if.then213:                                       ; preds = %land.lhs.true211
  %150 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type214 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %150, i32 0, i32 0
  store i32 20, i32* %type214, align 8
  %call215 = call i64 @getInputLineNumber()
  %151 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %lineNumber216 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %151, i32 0, i32 4
  store i64 %call215, i64* %lineNumber216, align 8
  %152 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %filePosition217 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %152, i32 0, i32 5
  %call219 = call [2 x i64] @getInputFilePosition()
  %153 = bitcast %struct._MIOPos* %tmp218 to [2 x i64]*
  store [2 x i64] %call219, [2 x i64]* %153, align 8
  %154 = bitcast %struct._MIOPos* %filePosition217 to i8*
  %155 = bitcast %struct._MIOPos* %tmp218 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %154, i8* align 8 %155, i64 16, i1 false)
  br label %sw.epilog

if.else220:                                       ; preds = %land.lhs.true211, %if.end209
  %156 = load i32, i32* %e171, align 4
  call void @ungetcToInputFile(i32 %156)
  %157 = load i32, i32* %d97, align 4
  call void @ungetcToInputFile(i32 %157)
  %158 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type221 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %158, i32 0, i32 0
  store i32 23, i32* %type221, align 8
  %call222 = call i64 @getInputLineNumber()
  %159 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %lineNumber223 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %159, i32 0, i32 4
  store i64 %call222, i64* %lineNumber223, align 8
  %160 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %filePosition224 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %160, i32 0, i32 5
  %call226 = call [2 x i64] @getInputFilePosition()
  %161 = bitcast %struct._MIOPos* %tmp225 to [2 x i64]*
  store [2 x i64] %call226, [2 x i64]* %161, align 8
  %162 = bitcast %struct._MIOPos* %filePosition224 to i8*
  %163 = bitcast %struct._MIOPos* %tmp225 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %162, i8* align 8 %163, i64 16, i1 false)
  br label %sw.epilog

if.else227:                                       ; preds = %lor.lhs.false168
  %164 = load i32, i32* %d97, align 4
  %cmp228 = icmp eq i32 %164, 47
  br i1 %cmp228, label %if.then229, label %if.end296

if.then229:                                       ; preds = %if.else227
  %call231 = call i32 @getcFromInputFile()
  store i32 %call231, i32* %e230, align 4
  %165 = load i32, i32* %e230, align 4
  %cmp232 = icmp eq i32 %165, 109
  br i1 %cmp232, label %if.else244, label %lor.lhs.false233

lor.lhs.false233:                                 ; preds = %if.then229
  %166 = load i32, i32* %e230, align 4
  %cmp234 = icmp eq i32 %166, 102
  br i1 %cmp234, label %if.else244, label %lor.lhs.false235

lor.lhs.false235:                                 ; preds = %lor.lhs.false233
  %167 = load i32, i32* %e230, align 4
  %cmp236 = icmp eq i32 %167, 115
  br i1 %cmp236, label %if.else244, label %if.then237

if.then237:                                       ; preds = %lor.lhs.false235
  %168 = load i32, i32* %e230, align 4
  call void @ungetcToInputFile(i32 %168)
  %169 = load i32, i32* %d97, align 4
  call void @ungetcToInputFile(i32 %169)
  %170 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type238 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %170, i32 0, i32 0
  store i32 23, i32* %type238, align 8
  %call239 = call i64 @getInputLineNumber()
  %171 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %lineNumber240 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %171, i32 0, i32 4
  store i64 %call239, i64* %lineNumber240, align 8
  %172 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %filePosition241 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %172, i32 0, i32 5
  %call243 = call [2 x i64] @getInputFilePosition()
  %173 = bitcast %struct._MIOPos* %tmp242 to [2 x i64]*
  store [2 x i64] %call243, [2 x i64]* %173, align 8
  %174 = bitcast %struct._MIOPos* %filePosition241 to i8*
  %175 = bitcast %struct._MIOPos* %tmp242 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %174, i8* align 8 %175, i64 16, i1 false)
  br label %sw.epilog

if.else244:                                       ; preds = %lor.lhs.false235, %lor.lhs.false233, %if.then229
  %call246 = call i32 @getcFromInputFile()
  store i32 %call246, i32* %f245, align 4
  %176 = load i32, i32* %e230, align 4
  %cmp247 = icmp eq i32 %176, 109
  br i1 %cmp247, label %land.lhs.true250, label %lor.lhs.false248

lor.lhs.false248:                                 ; preds = %if.else244
  %177 = load i32, i32* %e230, align 4
  %cmp249 = icmp eq i32 %177, 102
  br i1 %cmp249, label %land.lhs.true250, label %if.else259

land.lhs.true250:                                 ; preds = %lor.lhs.false248, %if.else244
  %178 = load i32, i32* %f245, align 4
  %cmp251 = icmp ne i32 %178, 120
  br i1 %cmp251, label %if.then252, label %if.else259

if.then252:                                       ; preds = %land.lhs.true250
  %179 = load i32, i32* %f245, align 4
  call void @ungetcToInputFile(i32 %179)
  %180 = load i32, i32* %e230, align 4
  call void @ungetcToInputFile(i32 %180)
  %181 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type253 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %181, i32 0, i32 0
  store i32 23, i32* %type253, align 8
  %call254 = call i64 @getInputLineNumber()
  %182 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %lineNumber255 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %182, i32 0, i32 4
  store i64 %call254, i64* %lineNumber255, align 8
  %183 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %filePosition256 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %183, i32 0, i32 5
  %call258 = call [2 x i64] @getInputFilePosition()
  %184 = bitcast %struct._MIOPos* %tmp257 to [2 x i64]*
  store [2 x i64] %call258, [2 x i64]* %184, align 8
  %185 = bitcast %struct._MIOPos* %filePosition256 to i8*
  %186 = bitcast %struct._MIOPos* %tmp257 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %185, i8* align 8 %186, i64 16, i1 false)
  br label %sw.epilog

if.else259:                                       ; preds = %land.lhs.true250, %lor.lhs.false248
  %187 = load i32, i32* %f245, align 4
  %cmp260 = icmp eq i32 %187, 120
  br i1 %cmp260, label %if.then261, label %if.end278

if.then261:                                       ; preds = %if.else259
  %call262 = call i32 @getcFromInputFile()
  store i32 %call262, i32* %g, align 4
  %188 = load i32, i32* %g, align 4
  %cmp263 = icmp ne i32 %188, 58
  br i1 %cmp263, label %if.then264, label %if.else271

if.then264:                                       ; preds = %if.then261
  %189 = load i32, i32* %g, align 4
  call void @ungetcToInputFile(i32 %189)
  %190 = load i32, i32* %f245, align 4
  call void @ungetcToInputFile(i32 %190)
  %191 = load i32, i32* %e230, align 4
  call void @ungetcToInputFile(i32 %191)
  %192 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type265 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %192, i32 0, i32 0
  store i32 23, i32* %type265, align 8
  %call266 = call i64 @getInputLineNumber()
  %193 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %lineNumber267 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %193, i32 0, i32 4
  store i64 %call266, i64* %lineNumber267, align 8
  %194 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %filePosition268 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %194, i32 0, i32 5
  %call270 = call [2 x i64] @getInputFilePosition()
  %195 = bitcast %struct._MIOPos* %tmp269 to [2 x i64]*
  store [2 x i64] %call270, [2 x i64]* %195, align 8
  %196 = bitcast %struct._MIOPos* %filePosition268 to i8*
  %197 = bitcast %struct._MIOPos* %tmp269 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %196, i8* align 8 %197, i64 16, i1 false)
  br label %sw.epilog

if.else271:                                       ; preds = %if.then261
  %198 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type272 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %198, i32 0, i32 0
  store i32 21, i32* %type272, align 8
  %call273 = call i64 @getInputLineNumber()
  %199 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %lineNumber274 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %199, i32 0, i32 4
  store i64 %call273, i64* %lineNumber274, align 8
  %200 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %filePosition275 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %200, i32 0, i32 5
  %call277 = call [2 x i64] @getInputFilePosition()
  %201 = bitcast %struct._MIOPos* %tmp276 to [2 x i64]*
  store [2 x i64] %call277, [2 x i64]* %201, align 8
  %202 = bitcast %struct._MIOPos* %filePosition275 to i8*
  %203 = bitcast %struct._MIOPos* %tmp276 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %202, i8* align 8 %203, i64 16, i1 false)
  br label %sw.epilog

if.end278:                                        ; preds = %if.else259
  %204 = load i32, i32* %e230, align 4
  %cmp279 = icmp eq i32 %204, 115
  br i1 %cmp279, label %land.lhs.true280, label %if.else289

land.lhs.true280:                                 ; preds = %if.end278
  %205 = load i32, i32* %f245, align 4
  %cmp281 = icmp eq i32 %205, 58
  br i1 %cmp281, label %if.then282, label %if.else289

if.then282:                                       ; preds = %land.lhs.true280
  %206 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type283 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %206, i32 0, i32 0
  store i32 21, i32* %type283, align 8
  %call284 = call i64 @getInputLineNumber()
  %207 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %lineNumber285 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %207, i32 0, i32 4
  store i64 %call284, i64* %lineNumber285, align 8
  %208 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %filePosition286 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %208, i32 0, i32 5
  %call288 = call [2 x i64] @getInputFilePosition()
  %209 = bitcast %struct._MIOPos* %tmp287 to [2 x i64]*
  store [2 x i64] %call288, [2 x i64]* %209, align 8
  %210 = bitcast %struct._MIOPos* %filePosition286 to i8*
  %211 = bitcast %struct._MIOPos* %tmp287 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %210, i8* align 8 %211, i64 16, i1 false)
  br label %sw.epilog

if.else289:                                       ; preds = %land.lhs.true280, %if.end278
  %212 = load i32, i32* %f245, align 4
  call void @ungetcToInputFile(i32 %212)
  %213 = load i32, i32* %e230, align 4
  call void @ungetcToInputFile(i32 %213)
  %214 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type290 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %214, i32 0, i32 0
  store i32 23, i32* %type290, align 8
  %call291 = call i64 @getInputLineNumber()
  %215 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %lineNumber292 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %215, i32 0, i32 4
  store i64 %call291, i64* %lineNumber292, align 8
  %216 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %filePosition293 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %216, i32 0, i32 5
  %call295 = call [2 x i64] @getInputFilePosition()
  %217 = bitcast %struct._MIOPos* %tmp294 to [2 x i64]*
  store [2 x i64] %call295, [2 x i64]* %217, align 8
  %218 = bitcast %struct._MIOPos* %filePosition293 to i8*
  %219 = bitcast %struct._MIOPos* %tmp294 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %218, i8* align 8 %219, i64 16, i1 false)
  br label %sw.epilog

if.end296:                                        ; preds = %if.else227
  br label %if.end297

if.end297:                                        ; preds = %if.end296
  br label %if.end298

if.end298:                                        ; preds = %if.end297, %if.end163
  br label %if.end299

if.end299:                                        ; preds = %if.end298
  br label %sw.epilog

sw.bb300:                                         ; preds = %do.end6
  %220 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type301 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %220, i32 0, i32 0
  store i32 24, i32* %type301, align 8
  %call302 = call i64 @getInputLineNumber()
  %221 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %lineNumber303 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %221, i32 0, i32 4
  store i64 %call302, i64* %lineNumber303, align 8
  %222 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %filePosition304 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %222, i32 0, i32 5
  %call306 = call [2 x i64] @getInputFilePosition()
  %223 = bitcast %struct._MIOPos* %tmp305 to [2 x i64]*
  store [2 x i64] %call306, [2 x i64]* %223, align 8
  %224 = bitcast %struct._MIOPos* %filePosition304 to i8*
  %225 = bitcast %struct._MIOPos* %tmp305 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %224, i8* align 8 %225, i64 16, i1 false)
  br label %sw.epilog

sw.bb307:                                         ; preds = %do.end6
  %226 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type308 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %226, i32 0, i32 0
  store i32 16, i32* %type308, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %do.end6
  %227 = load i32, i32* %c, align 4
  %call309 = call i32 @isalpha(i32 %227) #4
  %tobool310 = icmp ne i32 %call309, 0
  br i1 %tobool310, label %if.else324, label %lor.lhs.false311

lor.lhs.false311:                                 ; preds = %sw.default
  %228 = load i32, i32* %c, align 4
  %call312 = call i32 @isdigit(i32 %228) #4
  %tobool313 = icmp ne i32 %call312, 0
  br i1 %tobool313, label %if.else324, label %lor.lhs.false314

lor.lhs.false314:                                 ; preds = %lor.lhs.false311
  %229 = load i32, i32* %c, align 4
  %cmp315 = icmp eq i32 %229, 36
  br i1 %cmp315, label %if.else324, label %lor.lhs.false316

lor.lhs.false316:                                 ; preds = %lor.lhs.false314
  %230 = load i32, i32* %c, align 4
  %cmp317 = icmp eq i32 %230, 64
  br i1 %cmp317, label %if.else324, label %lor.lhs.false318

lor.lhs.false318:                                 ; preds = %lor.lhs.false316
  %231 = load i32, i32* %c, align 4
  %cmp319 = icmp eq i32 %231, 95
  br i1 %cmp319, label %if.else324, label %lor.lhs.false320

lor.lhs.false320:                                 ; preds = %lor.lhs.false318
  %232 = load i32, i32* %c, align 4
  %cmp321 = icmp eq i32 %232, 35
  br i1 %cmp321, label %if.else324, label %if.then322

if.then322:                                       ; preds = %lor.lhs.false320
  %233 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type323 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %233, i32 0, i32 0
  store i32 0, i32* %type323, align 8
  br label %if.end342

if.else324:                                       ; preds = %lor.lhs.false320, %lor.lhs.false318, %lor.lhs.false316, %lor.lhs.false314, %lor.lhs.false311, %sw.default
  %234 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string325 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %234, i32 0, i32 2
  %235 = load %struct.sVString*, %struct.sVString** %string325, align 8
  %236 = load i32, i32* %c, align 4
  call void @parseIdentifier(%struct.sVString* %235, i32 %236)
  %call326 = call i64 @getInputLineNumber()
  %237 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %lineNumber327 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %237, i32 0, i32 4
  store i64 %call326, i64* %lineNumber327, align 8
  %238 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %filePosition328 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %238, i32 0, i32 5
  %call330 = call [2 x i64] @getInputFilePosition()
  %239 = bitcast %struct._MIOPos* %tmp329 to [2 x i64]*
  store [2 x i64] %call330, [2 x i64]* %239, align 8
  %240 = bitcast %struct._MIOPos* %filePosition328 to i8*
  %241 = bitcast %struct._MIOPos* %tmp329 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %240, i8* align 8 %241, i64 16, i1 false)
  %242 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string331 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %242, i32 0, i32 2
  %243 = load %struct.sVString*, %struct.sVString** %string331, align 8
  %buffer332 = getelementptr inbounds %struct.sVString, %struct.sVString* %243, i32 0, i32 2
  %244 = load i8*, i8** %buffer332, align 8
  %245 = load i32, i32* @Lang_flex, align 4
  %call333 = call i32 @lookupCaseKeyword(i8* %244, i32 %245)
  %246 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword334 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %246, i32 0, i32 1
  store i32 %call333, i32* %keyword334, align 4
  %247 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword335 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %247, i32 0, i32 1
  %248 = load i32, i32* %keyword335, align 4
  %cmp336 = icmp eq i32 %248, -1
  br i1 %cmp336, label %if.then337, label %if.else339

if.then337:                                       ; preds = %if.else324
  %249 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type338 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %249, i32 0, i32 0
  store i32 10, i32* %type338, align 8
  br label %if.end341

if.else339:                                       ; preds = %if.else324
  %250 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type340 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %250, i32 0, i32 0
  store i32 7, i32* %type340, align 8
  br label %if.end341

if.end341:                                        ; preds = %if.else339, %if.then337
  br label %if.end342

if.end342:                                        ; preds = %if.end341, %if.then322
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end342, %sw.bb307, %sw.bb300, %if.end299, %if.else289, %if.then282, %if.else271, %if.then264, %if.then252, %if.then237, %if.else220, %if.then213, %if.else202, %if.then195, %if.then178, %if.then108, %if.end95, %if.end, %sw.bb32, %sw.bb30, %sw.bb28, %sw.bb26, %sw.bb24, %sw.bb22, %sw.bb20, %sw.bb18, %sw.bb16, %sw.bb14, %sw.bb12, %sw.bb10, %sw.bb8, %sw.bb
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @parseMXML(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %name = alloca %struct.sTokenInfo*, align 8
  %type = alloca %struct.sTokenInfo*, align 8
  %inside_attributes = alloca i8, align 1
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  %call = call %struct.sTokenInfo* @newToken()
  store %struct.sTokenInfo* %call, %struct.sTokenInfo** %name, align 8
  %call1 = call %struct.sTokenInfo* @newToken()
  store %struct.sTokenInfo* %call1, %struct.sTokenInfo** %type, align 8
  store i8 1, i8* %inside_attributes, align 1
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %0)
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %1, i32 0, i32 1
  %2 = load i32, i32* %keyword, align 4
  %cmp = icmp eq i32 %2, 23
  br i1 %cmp, label %if.then, label %if.end23

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %lor.end, %if.then
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %3)
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %4 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type2 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %4, i32 0, i32 0
  %5 = load i32, i32* %type2, align 8
  %cmp3 = icmp eq i32 %5, 22
  br i1 %cmp3, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.cond
  %6 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type4 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %6, i32 0, i32 0
  %7 = load i32, i32* %type4, align 8
  %cmp5 = icmp eq i32 %7, 21
  br i1 %cmp5, label %lor.end, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %8 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type7 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %8, i32 0, i32 0
  %9 = load i32, i32* %type7, align 8
  %cmp8 = icmp eq i32 %9, 24
  br i1 %cmp8, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false6
  %10 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type9 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %10, i32 0, i32 0
  %11 = load i32, i32* %type9, align 8
  %cmp10 = icmp eq i32 %11, 1
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false6, %lor.lhs.false, %do.cond
  %12 = phi i1 [ true, %lor.lhs.false6 ], [ true, %lor.lhs.false ], [ true, %do.cond ], [ %cmp10, %lor.rhs ]
  %lnot = xor i1 %12, true
  br i1 %lnot, label %do.body, label %do.end

do.end:                                           ; preds = %lor.end
  %13 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type11 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %13, i32 0, i32 0
  %14 = load i32, i32* %type11, align 8
  %cmp12 = icmp eq i32 %14, 21
  br i1 %cmp12, label %if.then13, label %if.end

if.then13:                                        ; preds = %do.end
  %15 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %15)
  %16 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %16)
  br label %cleanUp

if.end:                                           ; preds = %do.end
  %17 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type14 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %17, i32 0, i32 0
  %18 = load i32, i32* %type14, align 8
  %cmp15 = icmp eq i32 %18, 22
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end
  br label %cleanUp

if.end17:                                         ; preds = %if.end
  %19 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %19)
  %20 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call18 = call zeroext i1 @parseCDATA(%struct.sTokenInfo* %20)
  %21 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %21)
  %22 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type19 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %22, i32 0, i32 0
  %23 = load i32, i32* %type19, align 8
  %cmp20 = icmp eq i32 %23, 21
  br i1 %cmp20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end17
  %24 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %24)
  %25 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %25)
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end17
  br label %cleanUp

if.end23:                                         ; preds = %entry
  %26 = load %struct.sTokenInfo*, %struct.sTokenInfo** %type, align 8
  %27 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @copyToken(%struct.sTokenInfo* %26, %struct.sTokenInfo* %27)
  %28 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %28)
  br label %do.body24

do.body24:                                        ; preds = %lor.end62, %if.end23
  %29 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type25 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %29, i32 0, i32 0
  %30 = load i32, i32* %type25, align 8
  %cmp26 = icmp eq i32 %30, 24
  br i1 %cmp26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %do.body24
  store i8 0, i8* %inside_attributes, align 1
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %do.body24
  %31 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type29 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %31, i32 0, i32 0
  %32 = load i32, i32* %type29, align 8
  %cmp30 = icmp eq i32 %32, 23
  br i1 %cmp30, label %if.then31, label %if.else

if.then31:                                        ; preds = %if.end28
  %33 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call32 = call zeroext i1 @parseNamespace(%struct.sTokenInfo* %33)
  %34 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %34)
  br label %if.end52

if.else:                                          ; preds = %if.end28
  %35 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type33 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %35, i32 0, i32 0
  %36 = load i32, i32* %type33, align 8
  %cmp34 = icmp eq i32 %36, 20
  br i1 %cmp34, label %if.then35, label %if.else37

if.then35:                                        ; preds = %if.else
  %37 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call36 = call zeroext i1 @parseMXML(%struct.sTokenInfo* %37)
  %38 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %38)
  br label %if.end51

if.else37:                                        ; preds = %if.else
  %39 = load i8, i8* %inside_attributes, align 1
  %tobool = trunc i8 %39 to i1
  br i1 %tobool, label %land.lhs.true, label %if.else49

land.lhs.true:                                    ; preds = %if.else37
  %40 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword38 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %40, i32 0, i32 1
  %41 = load i32, i32* %keyword38, align 4
  %cmp39 = icmp eq i32 %41, 21
  br i1 %cmp39, label %if.then43, label %lor.lhs.false40

lor.lhs.false40:                                  ; preds = %land.lhs.true
  %42 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword41 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %42, i32 0, i32 1
  %43 = load i32, i32* %keyword41, align 4
  %cmp42 = icmp eq i32 %43, 22
  br i1 %cmp42, label %if.then43, label %if.else49

if.then43:                                        ; preds = %lor.lhs.false40, %land.lhs.true
  %44 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  %string = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %44, i32 0, i32 2
  %45 = load %struct.sVString*, %struct.sVString** %string, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %45, i32 0, i32 0
  %46 = load i64, i64* %length, align 8
  %cmp44 = icmp eq i64 %46, 0
  br i1 %cmp44, label %if.then45, label %if.else47

if.then45:                                        ; preds = %if.then43
  %47 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %47)
  %48 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %48)
  %49 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  %50 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @copyToken(%struct.sTokenInfo* %49, %struct.sTokenInfo* %50)
  %51 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  %52 = load %struct.sTokenInfo*, %struct.sTokenInfo** %type, align 8
  %string46 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %52, i32 0, i32 2
  %53 = load %struct.sVString*, %struct.sVString** %string46, align 8
  call void @addToScope(%struct.sTokenInfo* %51, %struct.sVString* %53)
  %54 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  call void @makeMXTag(%struct.sTokenInfo* %54)
  br label %if.end48

if.else47:                                        ; preds = %if.then43
  %55 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %55)
  br label %if.end48

if.end48:                                         ; preds = %if.else47, %if.then45
  br label %if.end50

if.else49:                                        ; preds = %lor.lhs.false40, %if.else37
  %56 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %56)
  br label %if.end50

if.end50:                                         ; preds = %if.else49, %if.end48
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %if.then35
  br label %if.end52

if.end52:                                         ; preds = %if.end51, %if.then31
  br label %do.cond53

do.cond53:                                        ; preds = %if.end52
  %57 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type54 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %57, i32 0, i32 0
  %58 = load i32, i32* %type54, align 8
  %cmp55 = icmp eq i32 %58, 22
  br i1 %cmp55, label %lor.end62, label %lor.lhs.false56

lor.lhs.false56:                                  ; preds = %do.cond53
  %59 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type57 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %59, i32 0, i32 0
  %60 = load i32, i32* %type57, align 8
  %cmp58 = icmp eq i32 %60, 21
  br i1 %cmp58, label %lor.end62, label %lor.rhs59

lor.rhs59:                                        ; preds = %lor.lhs.false56
  %61 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type60 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %61, i32 0, i32 0
  %62 = load i32, i32* %type60, align 8
  %cmp61 = icmp eq i32 %62, 1
  br label %lor.end62

lor.end62:                                        ; preds = %lor.rhs59, %lor.lhs.false56, %do.cond53
  %63 = phi i1 [ true, %lor.lhs.false56 ], [ true, %do.cond53 ], [ %cmp61, %lor.rhs59 ]
  %lnot63 = xor i1 %63, true
  br i1 %lnot63, label %do.body24, label %do.end64

do.end64:                                         ; preds = %lor.end62
  %64 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type65 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %64, i32 0, i32 0
  %65 = load i32, i32* %type65, align 8
  %cmp66 = icmp eq i32 %65, 21
  br i1 %cmp66, label %if.then67, label %if.end68

if.then67:                                        ; preds = %do.end64
  %66 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %66)
  %67 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %67)
  br label %if.end68

if.end68:                                         ; preds = %if.then67, %do.end64
  br label %cleanUp

cleanUp:                                          ; preds = %if.end68, %if.end22, %if.then16, %if.then13
  %68 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  call void @deleteToken(%struct.sTokenInfo* %68)
  %69 = load %struct.sTokenInfo*, %struct.sTokenInfo** %type, align 8
  call void @deleteToken(%struct.sTokenInfo* %69)
  ret i1 true
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @parseActionScript(%struct.sTokenInfo* %token) #0 {
entry:
  %retval = alloca i1, align 1
  %token.addr = alloca %struct.sTokenInfo*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %0)
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %1, i32 0, i32 0
  %2 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %2, 23
  br i1 %cmp, label %if.then, label %if.end11

if.then:                                          ; preds = %do.body
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %3)
  %4 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type1 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %4, i32 0, i32 0
  %5 = load i32, i32* %type1, align 8
  %cmp2 = icmp eq i32 %5, 15
  br i1 %cmp2, label %if.then3, label %if.end10

if.then3:                                         ; preds = %if.then
  %6 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type4 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %6, i32 0, i32 0
  %7 = load i32, i32* %type4, align 8
  %cmp5 = icmp eq i32 %7, 18
  br i1 %cmp5, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.then3
  %8 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %8)
  %9 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %9, i32 0, i32 1
  %10 = load i32, i32* %keyword, align 4
  %cmp7 = icmp eq i32 %10, 24
  br i1 %cmp7, label %if.then8, label %if.end

if.then8:                                         ; preds = %if.then6
  %11 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %11)
  br label %if.end

if.end:                                           ; preds = %if.then8, %if.then6
  br label %if.end9

if.end9:                                          ; preds = %if.end, %if.then3
  br label %if.end10

if.end10:                                         ; preds = %if.end9, %if.then
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %do.body
  %12 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type12 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %12, i32 0, i32 0
  %13 = load i32, i32* %type12, align 8
  %cmp13 = icmp eq i32 %13, 19
  br i1 %cmp13, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end11
  %14 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %14)
  %15 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type15 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %15, i32 0, i32 0
  %16 = load i32, i32* %type15, align 8
  %cmp16 = icmp eq i32 %16, 19
  br i1 %cmp16, label %if.then17, label %if.end22

if.then17:                                        ; preds = %if.then14
  %17 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %17)
  %18 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type18 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %18, i32 0, i32 0
  %19 = load i32, i32* %type18, align 8
  %cmp19 = icmp eq i32 %19, 24
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.then17
  store i1 true, i1* %retval, align 1
  br label %return

if.end21:                                         ; preds = %if.then17
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.then14
  br label %if.end60

if.else:                                          ; preds = %if.end11
  %20 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type23 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %20, i32 0, i32 0
  %21 = load i32, i32* %type23, align 8
  %cmp24 = icmp eq i32 %21, 21
  br i1 %cmp24, label %if.then25, label %if.else26

if.then25:                                        ; preds = %if.else
  %22 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %22)
  %23 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %23)
  store i1 true, i1* %retval, align 1
  br label %return

if.else26:                                        ; preds = %if.else
  %24 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type27 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %24, i32 0, i32 0
  %25 = load i32, i32* %type27, align 8
  %cmp28 = icmp eq i32 %25, 20
  br i1 %cmp28, label %if.then29, label %if.else30

if.then29:                                        ; preds = %if.else26
  %26 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call = call zeroext i1 @parseMXML(%struct.sTokenInfo* %26)
  br label %if.end58

if.else30:                                        ; preds = %if.else26
  %27 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type31 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %27, i32 0, i32 0
  %28 = load i32, i32* %type31, align 8
  %cmp32 = icmp eq i32 %28, 7
  br i1 %cmp32, label %if.then33, label %if.else55

if.then33:                                        ; preds = %if.else30
  %29 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword34 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %29, i32 0, i32 1
  %30 = load i32, i32* %keyword34, align 4
  %cmp35 = icmp eq i32 %30, 18
  br i1 %cmp35, label %if.then41, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then33
  %31 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword36 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %31, i32 0, i32 1
  %32 = load i32, i32* %keyword36, align 4
  %cmp37 = icmp eq i32 %32, 17
  br i1 %cmp37, label %if.then41, label %lor.lhs.false38

lor.lhs.false38:                                  ; preds = %lor.lhs.false
  %33 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword39 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %33, i32 0, i32 1
  %34 = load i32, i32* %keyword39, align 4
  %cmp40 = icmp eq i32 %34, 27
  br i1 %cmp40, label %if.then41, label %if.end42

if.then41:                                        ; preds = %lor.lhs.false38, %lor.lhs.false, %if.then33
  %35 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %35)
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %lor.lhs.false38
  %36 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword43 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %36, i32 0, i32 1
  %37 = load i32, i32* %keyword43, align 4
  %cmp44 = icmp eq i32 %37, 18
  br i1 %cmp44, label %if.then51, label %lor.lhs.false45

lor.lhs.false45:                                  ; preds = %if.end42
  %38 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword46 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %38, i32 0, i32 1
  %39 = load i32, i32* %keyword46, align 4
  %cmp47 = icmp eq i32 %39, 17
  br i1 %cmp47, label %if.then51, label %lor.lhs.false48

lor.lhs.false48:                                  ; preds = %lor.lhs.false45
  %40 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword49 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %40, i32 0, i32 1
  %41 = load i32, i32* %keyword49, align 4
  %cmp50 = icmp eq i32 %41, 27
  br i1 %cmp50, label %if.then51, label %if.end52

if.then51:                                        ; preds = %lor.lhs.false48, %lor.lhs.false45, %if.end42
  %42 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %42)
  br label %if.end52

if.end52:                                         ; preds = %if.then51, %lor.lhs.false48
  %43 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword53 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %43, i32 0, i32 1
  %44 = load i32, i32* %keyword53, align 4
  switch i32 %44, label %sw.default [
    i32 0, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end52
  %45 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @parseFunction(%struct.sTokenInfo* %45)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end52
  %46 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call54 = call zeroext i1 @parseLine(%struct.sTokenInfo* %46)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  br label %if.end57

if.else55:                                        ; preds = %if.else30
  %47 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call56 = call zeroext i1 @parseLine(%struct.sTokenInfo* %47)
  br label %if.end57

if.end57:                                         ; preds = %if.else55, %sw.epilog
  br label %if.end58

if.end58:                                         ; preds = %if.end57, %if.then29
  br label %if.end59

if.end59:                                         ; preds = %if.end58
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %if.end22
  br label %do.cond

do.cond:                                          ; preds = %if.end60
  %48 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type61 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %48, i32 0, i32 0
  %49 = load i32, i32* %type61, align 8
  %cmp62 = icmp eq i32 %49, 1
  %lnot = xor i1 %cmp62, true
  br i1 %lnot, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %do.end, %if.then25, %if.then20
  %50 = load i1, i1* %retval, align 1
  ret i1 %50
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

; Function Attrs: nounwind readonly
declare i32 @isspace(i32) #3

declare void @ungetcToInputFile(i32) #1

declare i32 @skipToCharacterInInputFile(i32) #1

; Function Attrs: nounwind readonly
declare i32 @isalpha(i32) #3

; Function Attrs: nounwind readonly
declare i32 @isdigit(i32) #3

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

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @parseCDATA(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 0
  %1 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %1, 23
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %2)
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type1 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %3, i32 0, i32 0
  %4 = load i32, i32* %type1, align 8
  %cmp2 = icmp eq i32 %4, 16
  br i1 %cmp2, label %if.then3, label %if.end22

if.then3:                                         ; preds = %if.then
  %5 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %5)
  %6 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type4 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %6, i32 0, i32 0
  %7 = load i32, i32* %type4, align 8
  %cmp5 = icmp eq i32 %7, 18
  br i1 %cmp5, label %if.then6, label %if.end21

if.then6:                                         ; preds = %if.then3
  %8 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %8)
  %9 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %9, i32 0, i32 1
  %10 = load i32, i32* %keyword, align 4
  %cmp7 = icmp eq i32 %10, 24
  br i1 %cmp7, label %if.then8, label %if.end20

if.then8:                                         ; preds = %if.then6
  %11 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %11)
  %12 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type9 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %12, i32 0, i32 0
  %13 = load i32, i32* %type9, align 8
  %cmp10 = icmp eq i32 %13, 18
  br i1 %cmp10, label %if.then11, label %if.end19

if.then11:                                        ; preds = %if.then8
  %14 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call = call zeroext i1 @parseActionScript(%struct.sTokenInfo* %14)
  %15 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type12 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %15, i32 0, i32 0
  %16 = load i32, i32* %type12, align 8
  %cmp13 = icmp eq i32 %16, 19
  br i1 %cmp13, label %if.then14, label %if.end18

if.then14:                                        ; preds = %if.then11
  %17 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %17)
  %18 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type15 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %18, i32 0, i32 0
  %19 = load i32, i32* %type15, align 8
  %cmp16 = icmp eq i32 %19, 19
  br i1 %cmp16, label %if.then17, label %if.end

if.then17:                                        ; preds = %if.then14
  %20 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %20)
  br label %if.end

if.end:                                           ; preds = %if.then17, %if.then14
  br label %if.end18

if.end18:                                         ; preds = %if.end, %if.then11
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.then8
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.then6
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %if.then3
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.then
  br label %if.end24

if.else:                                          ; preds = %entry
  %21 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call23 = call zeroext i1 @parseActionScript(%struct.sTokenInfo* %21)
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.end22
  ret i1 true
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @copyToken(%struct.sTokenInfo* %dest, %struct.sTokenInfo* %src) #0 {
entry:
  %dest.addr = alloca %struct.sTokenInfo*, align 8
  %src.addr = alloca %struct.sTokenInfo*, align 8
  store %struct.sTokenInfo* %dest, %struct.sTokenInfo** %dest.addr, align 8
  store %struct.sTokenInfo* %src, %struct.sTokenInfo** %src.addr, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %src.addr, align 8
  %nestLevel = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 6
  %1 = load i32, i32* %nestLevel, align 8
  %2 = load %struct.sTokenInfo*, %struct.sTokenInfo** %dest.addr, align 8
  %nestLevel1 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %2, i32 0, i32 6
  store i32 %1, i32* %nestLevel1, align 8
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %src.addr, align 8
  %lineNumber = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %3, i32 0, i32 4
  %4 = load i64, i64* %lineNumber, align 8
  %5 = load %struct.sTokenInfo*, %struct.sTokenInfo** %dest.addr, align 8
  %lineNumber2 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %5, i32 0, i32 4
  store i64 %4, i64* %lineNumber2, align 8
  %6 = load %struct.sTokenInfo*, %struct.sTokenInfo** %dest.addr, align 8
  %filePosition = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %6, i32 0, i32 5
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %src.addr, align 8
  %filePosition3 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %7, i32 0, i32 5
  %8 = bitcast %struct._MIOPos* %filePosition to i8*
  %9 = bitcast %struct._MIOPos* %filePosition3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 %9, i64 16, i1 false)
  %10 = load %struct.sTokenInfo*, %struct.sTokenInfo** %src.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %10, i32 0, i32 0
  %11 = load i32, i32* %type, align 8
  %12 = load %struct.sTokenInfo*, %struct.sTokenInfo** %dest.addr, align 8
  %type4 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %12, i32 0, i32 0
  store i32 %11, i32* %type4, align 8
  %13 = load %struct.sTokenInfo*, %struct.sTokenInfo** %src.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %13, i32 0, i32 1
  %14 = load i32, i32* %keyword, align 4
  %15 = load %struct.sTokenInfo*, %struct.sTokenInfo** %dest.addr, align 8
  %keyword5 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %15, i32 0, i32 1
  store i32 %14, i32* %keyword5, align 4
  %16 = load %struct.sTokenInfo*, %struct.sTokenInfo** %src.addr, align 8
  %isClass = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %16, i32 0, i32 8
  %17 = load i8, i8* %isClass, align 1
  %tobool = trunc i8 %17 to i1
  %18 = load %struct.sTokenInfo*, %struct.sTokenInfo** %dest.addr, align 8
  %isClass6 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %18, i32 0, i32 8
  %frombool = zext i1 %tobool to i8
  store i8 %frombool, i8* %isClass6, align 1
  %19 = load %struct.sTokenInfo*, %struct.sTokenInfo** %dest.addr, align 8
  %string = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %19, i32 0, i32 2
  %20 = load %struct.sVString*, %struct.sVString** %string, align 8
  %21 = load %struct.sTokenInfo*, %struct.sTokenInfo** %src.addr, align 8
  %string7 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %21, i32 0, i32 2
  %22 = load %struct.sVString*, %struct.sVString** %string7, align 8
  call void @vStringCopy(%struct.sVString* %20, %struct.sVString* %22)
  %23 = load %struct.sTokenInfo*, %struct.sTokenInfo** %dest.addr, align 8
  %scope = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %23, i32 0, i32 3
  %24 = load %struct.sVString*, %struct.sVString** %scope, align 8
  %25 = load %struct.sTokenInfo*, %struct.sTokenInfo** %src.addr, align 8
  %scope8 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %25, i32 0, i32 3
  %26 = load %struct.sVString*, %struct.sVString** %scope8, align 8
  call void @vStringCopy(%struct.sVString* %24, %struct.sVString* %26)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @parseNamespace(%struct.sTokenInfo* %token) #0 {
entry:
  %retval = alloca i1, align 1
  %token.addr = alloca %struct.sTokenInfo*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 0
  %1 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %1, 23
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type1 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %3, i32 0, i32 0
  %4 = load i32, i32* %type1, align 8
  %cmp2 = icmp eq i32 %4, 10
  br i1 %cmp2, label %if.then3, label %if.else12

if.then3:                                         ; preds = %if.end
  %5 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %5)
  %6 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type4 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %6, i32 0, i32 0
  %7 = load i32, i32* %type4, align 8
  %cmp5 = icmp eq i32 %7, 5
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then3
  %8 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %8)
  %9 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type7 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %9, i32 0, i32 0
  %10 = load i32, i32* %type7, align 8
  %cmp8 = icmp eq i32 %10, 10
  br i1 %cmp8, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.then6
  store i1 true, i1* %retval, align 1
  br label %return

if.end10:                                         ; preds = %if.then6
  br label %if.end11

if.else:                                          ; preds = %if.then3
  store i1 true, i1* %retval, align 1
  br label %return

if.end11:                                         ; preds = %if.end10
  br label %if.end13

if.else12:                                        ; preds = %if.end
  store i1 true, i1* %retval, align 1
  br label %return

if.end13:                                         ; preds = %if.end11
  br label %do.body

do.body:                                          ; preds = %lor.end, %if.end13
  %11 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type14 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %11, i32 0, i32 0
  %12 = load i32, i32* %type14, align 8
  %cmp15 = icmp eq i32 %12, 23
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %do.body
  %13 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call = call zeroext i1 @parseNamespace(%struct.sTokenInfo* %13)
  %14 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %14)
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %do.body
  %15 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type18 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %15, i32 0, i32 0
  %16 = load i32, i32* %type18, align 8
  %cmp19 = icmp eq i32 %16, 20
  br i1 %cmp19, label %if.then20, label %if.else22

if.then20:                                        ; preds = %if.end17
  %17 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call21 = call zeroext i1 @parseMXML(%struct.sTokenInfo* %17)
  br label %if.end23

if.else22:                                        ; preds = %if.end17
  %18 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %18)
  br label %if.end23

if.end23:                                         ; preds = %if.else22, %if.then20
  br label %do.cond

do.cond:                                          ; preds = %if.end23
  %19 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type24 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %19, i32 0, i32 0
  %20 = load i32, i32* %type24, align 8
  %cmp25 = icmp eq i32 %20, 22
  br i1 %cmp25, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.cond
  %21 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type26 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %21, i32 0, i32 0
  %22 = load i32, i32* %type26, align 8
  %cmp27 = icmp eq i32 %22, 21
  br i1 %cmp27, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %23 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type28 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %23, i32 0, i32 0
  %24 = load i32, i32* %type28, align 8
  %cmp29 = icmp eq i32 %24, 1
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %do.cond
  %25 = phi i1 [ true, %lor.lhs.false ], [ true, %do.cond ], [ %cmp29, %lor.rhs ]
  %lnot = xor i1 %25, true
  br i1 %lnot, label %do.body, label %do.end

do.end:                                           ; preds = %lor.end
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %do.end, %if.else12, %if.else, %if.then9
  %26 = load i1, i1* %retval, align 1
  ret i1 %26
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @addToScope(%struct.sTokenInfo* %token, %struct.sVString* %extra) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %extra.addr = alloca %struct.sVString*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  store %struct.sVString* %extra, %struct.sVString** %extra.addr, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %scope = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 3
  %1 = load %struct.sVString*, %struct.sVString** %scope, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %1, i32 0, i32 0
  %2 = load i64, i64* %length, align 8
  %cmp = icmp ugt i64 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %scope1 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %3, i32 0, i32 3
  %4 = load %struct.sVString*, %struct.sVString** %scope1, align 8
  call void @vStringPut(%struct.sVString* %4, i32 46)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %scope2 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %5, i32 0, i32 3
  %6 = load %struct.sVString*, %struct.sVString** %scope2, align 8
  %7 = load %struct.sVString*, %struct.sVString** %extra.addr, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %7, i32 0, i32 2
  %8 = load i8*, i8** %buffer, align 8
  call void @vStringCatS(%struct.sVString* %6, i8* %8)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @makeMXTag(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %fulltag = alloca %struct.sVString*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %ignoreTag = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 7
  %1 = load i8, i8* %ignoreTag, align 4
  %tobool = trunc i8 %1 to i1
  br i1 %tobool, label %if.end4, label %if.then

if.then:                                          ; preds = %entry
  %call = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call, %struct.sVString** %fulltag, align 8
  %2 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %scope = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %2, i32 0, i32 3
  %3 = load %struct.sVString*, %struct.sVString** %scope, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %3, i32 0, i32 0
  %4 = load i64, i64* %length, align 8
  %cmp = icmp ugt i64 %4, 0
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.then
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
  br label %if.end

if.else:                                          ; preds = %if.then
  %13 = load %struct.sVString*, %struct.sVString** %fulltag, align 8
  %14 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string3 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %14, i32 0, i32 2
  %15 = load %struct.sVString*, %struct.sVString** %string3, align 8
  call void @vStringCopy(%struct.sVString* %13, %struct.sVString* %15)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then1
  %16 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @makeFlexTag(%struct.sTokenInfo* %16, i32 5)
  %17 = load %struct.sVString*, %struct.sVString** %fulltag, align 8
  call void @vStringDelete(%struct.sVString* %17)
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry
  ret void
}

declare void @vStringCopy(%struct.sVString*, %struct.sVString*) #1

declare void @vStringCatS(%struct.sVString*, i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @makeFlexTag(%struct.sTokenInfo* %token, i32 %kind) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %kind.addr = alloca i32, align 4
  %fulltag = alloca %struct.sVString*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  store i32 %kind, i32* %kind.addr, align 4
  %0 = load i32, i32* %kind.addr, align 4
  %idxprom = zext i32 %0 to i64
  %arrayidx = getelementptr inbounds [6 x %struct.sKindDefinition], [6 x %struct.sKindDefinition]* @FlexKinds, i64 0, i64 %idxprom
  %enabled = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %arrayidx, i32 0, i32 0
  %1 = load i8, i8* %enabled, align 8
  %tobool = trunc i8 %1 to i1
  br i1 %tobool, label %land.lhs.true, label %if.end10

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %ignoreTag = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %2, i32 0, i32 7
  %3 = load i8, i8* %ignoreTag, align 4
  %tobool1 = trunc i8 %3 to i1
  br i1 %tobool1, label %if.end10, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %4 = load i32, i32* %kind.addr, align 4
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %land.lhs.true2, label %if.end

land.lhs.true2:                                   ; preds = %if.then
  %5 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %isClass = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %5, i32 0, i32 8
  %6 = load i8, i8* %isClass, align 1
  %tobool3 = trunc i8 %6 to i1
  br i1 %tobool3, label %if.then4, label %if.end

if.then4:                                         ; preds = %land.lhs.true2
  store i32 2, i32* %kind.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then4, %land.lhs.true2, %if.then
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %scope = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %7, i32 0, i32 3
  %8 = load %struct.sVString*, %struct.sVString** %scope, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %8, i32 0, i32 0
  %9 = load i64, i64* %length, align 8
  %cmp5 = icmp ugt i64 %9, 0
  br i1 %cmp5, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  %call = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call, %struct.sVString** %fulltag, align 8
  %10 = load %struct.sVString*, %struct.sVString** %fulltag, align 8
  %11 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %scope7 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %11, i32 0, i32 3
  %12 = load %struct.sVString*, %struct.sVString** %scope7, align 8
  call void @vStringCopy(%struct.sVString* %10, %struct.sVString* %12)
  %13 = load %struct.sVString*, %struct.sVString** %fulltag, align 8
  call void @vStringPut(%struct.sVString* %13, i32 46)
  %14 = load %struct.sVString*, %struct.sVString** %fulltag, align 8
  %15 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %15, i32 0, i32 2
  %16 = load %struct.sVString*, %struct.sVString** %string, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %16, i32 0, i32 2
  %17 = load i8*, i8** %buffer, align 8
  call void @vStringCatS(%struct.sVString* %14, i8* %17)
  %18 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string8 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %18, i32 0, i32 2
  %19 = load %struct.sVString*, %struct.sVString** %string8, align 8
  %20 = load %struct.sVString*, %struct.sVString** %fulltag, align 8
  call void @vStringCopy(%struct.sVString* %19, %struct.sVString* %20)
  %21 = load %struct.sVString*, %struct.sVString** %fulltag, align 8
  call void @vStringDelete(%struct.sVString* %21)
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end
  %22 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %23 = load i32, i32* %kind.addr, align 4
  call void @makeConstTag(%struct.sTokenInfo* %22, i32 %23)
  br label %if.end10

if.end10:                                         ; preds = %if.end9, %land.lhs.true, %entry
  ret void
}

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
  %idxprom = zext i32 %0 to i64
  %arrayidx = getelementptr inbounds [6 x %struct.sKindDefinition], [6 x %struct.sKindDefinition]* @FlexKinds, i64 0, i64 %idxprom
  %enabled = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %arrayidx, i32 0, i32 0
  %1 = load i8, i8* %enabled, align 8
  %tobool = trunc i8 %1 to i1
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %ignoreTag = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %2, i32 0, i32 7
  %3 = load i8, i8* %ignoreTag, align 4
  %tobool1 = trunc i8 %3 to i1
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %4, i32 0, i32 2
  %5 = load %struct.sVString*, %struct.sVString** %string, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %5, i32 0, i32 2
  %6 = load i8*, i8** %buffer, align 8
  store i8* %6, i8** %name, align 8
  %7 = load i8*, i8** %name, align 8
  %8 = load i32, i32* %kind.addr, align 4
  call void @initTagEntry(%struct.sTagEntryInfo* %e, i8* %7, i32 %8)
  %9 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %lineNumber = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %9, i32 0, i32 4
  %10 = load i64, i64* %lineNumber, align 8
  %lineNumber2 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %e, i32 0, i32 1
  store i64 %10, i64* %lineNumber2, align 8
  %filePosition = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %e, i32 0, i32 4
  %11 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %filePosition3 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %11, i32 0, i32 5
  %12 = bitcast %struct._MIOPos* %filePosition to i8*
  %13 = bitcast %struct._MIOPos* %filePosition3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 %13, i64 16, i1 false)
  %call = call i32 @makeTagEntry(%struct.sTagEntryInfo* %e)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

declare void @initTagEntry(%struct.sTagEntryInfo*, i8*, i32) #1

declare i32 @makeTagEntry(%struct.sTagEntryInfo*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseFunction(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %name = alloca %struct.sTokenInfo*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  %call = call %struct.sTokenInfo* @newToken()
  store %struct.sTokenInfo* %call, %struct.sTokenInfo** %name, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 1
  %1 = load i32, i32* %keyword, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  %4 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @copyToken(%struct.sTokenInfo* %3, %struct.sTokenInfo* %4)
  %5 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %5)
  %6 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %6, i32 0, i32 0
  %7 = load i32, i32* %type, align 8
  %cmp1 = icmp eq i32 %7, 8
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %8 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @skipArgumentList(%struct.sTokenInfo* %8)
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %9 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type4 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %9, i32 0, i32 0
  %10 = load i32, i32* %type4, align 8
  %cmp5 = icmp eq i32 %10, 5
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end3
  %11 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %11)
  %12 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %12)
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end3
  %13 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type8 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %13, i32 0, i32 0
  %14 = load i32, i32* %type8, align 8
  %cmp9 = icmp eq i32 %14, 13
  br i1 %cmp9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end7
  %15 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %16 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  %call11 = call zeroext i1 @parseBlock(%struct.sTokenInfo* %15, %struct.sTokenInfo* %16)
  %17 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  call void @makeFunctionTag(%struct.sTokenInfo* %17)
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end7
  %18 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @findCmdTerm(%struct.sTokenInfo* %18)
  %19 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  call void @deleteToken(%struct.sTokenInfo* %19)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @parseLine(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %is_terminated = alloca i8, align 1
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  store i8 1, i8* %is_terminated, align 1
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 0
  %1 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %1, 7
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %2, i32 0, i32 1
  %3 = load i32, i32* %keyword, align 4
  switch i32 %3, label %sw.default [
    i32 8, label %sw.bb
    i32 9, label %sw.bb
    i32 10, label %sw.bb
    i32 11, label %sw.bb1
    i32 12, label %sw.bb1
    i32 14, label %sw.bb1
    i32 15, label %sw.bb1
    i32 16, label %sw.bb1
    i32 13, label %sw.bb2
  ]

sw.bb:                                            ; preds = %if.then, %if.then, %if.then
  %4 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @parseLoop(%struct.sTokenInfo* %4)
  br label %sw.epilog

sw.bb1:                                           ; preds = %if.then, %if.then, %if.then, %if.then, %if.then
  %5 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call = call zeroext i1 @parseIf(%struct.sTokenInfo* %5)
  %frombool = zext i1 %call to i8
  store i8 %frombool, i8* %is_terminated, align 1
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.then
  %6 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @parseSwitch(%struct.sTokenInfo* %6)
  br label %sw.epilog

sw.default:                                       ; preds = %if.then
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call3 = call zeroext i1 @parseStatement(%struct.sTokenInfo* %7)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb2, %sw.bb1, %sw.bb
  br label %if.end

if.else:                                          ; preds = %entry
  %8 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call4 = call zeroext i1 @parseStatement(%struct.sTokenInfo* %8)
  %frombool5 = zext i1 %call4 to i8
  store i8 %frombool5, i8* %is_terminated, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %sw.epilog
  %9 = load i8, i8* %is_terminated, align 1
  %tobool = trunc i8 %9 to i1
  ret i1 %tobool
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @skipArgumentList(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %nest_level = alloca i32, align 4
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  store i32 0, i32* %nest_level, align 4
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 0
  %1 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %1, 8
  br i1 %cmp, label %if.then, label %if.end17

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %nest_level, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %nest_level, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end16, %if.then
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type1 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %3, i32 0, i32 0
  %4 = load i32, i32* %type1, align 8
  %cmp2 = icmp eq i32 %4, 3
  br i1 %cmp2, label %land.lhs.true, label %lor.rhs

land.lhs.true:                                    ; preds = %while.cond
  %5 = load i32, i32* %nest_level, align 4
  %cmp3 = icmp eq i32 %5, 0
  br i1 %cmp3, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true, %while.cond
  %6 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type4 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %6, i32 0, i32 0
  %7 = load i32, i32* %type4, align 8
  %cmp5 = icmp eq i32 %7, 1
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.lhs.true
  %8 = phi i1 [ true, %land.lhs.true ], [ %cmp5, %lor.rhs ]
  %lnot = xor i1 %8, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %9 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %9)
  %10 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type6 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %10, i32 0, i32 0
  %11 = load i32, i32* %type6, align 8
  %cmp7 = icmp eq i32 %11, 8
  br i1 %cmp7, label %if.then8, label %if.end

if.then8:                                         ; preds = %while.body
  %12 = load i32, i32* %nest_level, align 4
  %inc9 = add nsw i32 %12, 1
  store i32 %inc9, i32* %nest_level, align 4
  br label %if.end

if.end:                                           ; preds = %if.then8, %while.body
  %13 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type10 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %13, i32 0, i32 0
  %14 = load i32, i32* %type10, align 8
  %cmp11 = icmp eq i32 %14, 3
  br i1 %cmp11, label %if.then12, label %if.end16

if.then12:                                        ; preds = %if.end
  %15 = load i32, i32* %nest_level, align 4
  %cmp13 = icmp sgt i32 %15, 0
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.then12
  %16 = load i32, i32* %nest_level, align 4
  %dec = add nsw i32 %16, -1
  store i32 %dec, i32* %nest_level, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.then12
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.end
  br label %while.cond

while.end:                                        ; preds = %lor.end
  %17 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %17)
  br label %if.end17

if.end17:                                         ; preds = %while.end, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @parseBlock(%struct.sTokenInfo* %token, %struct.sTokenInfo* %parent) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %parent.addr = alloca %struct.sTokenInfo*, align 8
  %read_next_token = alloca i8, align 1
  %saveScope = alloca %struct.sVString*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  store %struct.sTokenInfo* %parent, %struct.sTokenInfo** %parent.addr, align 8
  store i8 1, i8* %read_next_token, align 1
  %call = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call, %struct.sVString** %saveScope, align 8
  %0 = load %struct.sVString*, %struct.sVString** %saveScope, align 8
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %scope = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %1, i32 0, i32 3
  %2 = load %struct.sVString*, %struct.sVString** %scope, align 8
  call void @vStringCopy(%struct.sVString* %0, %struct.sVString* %2)
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %nestLevel = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %3, i32 0, i32 6
  %4 = load i32, i32* %nestLevel, align 8
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %nestLevel, align 8
  %5 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %5, i32 0, i32 0
  %6 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %6, 13
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %7, i32 0, i32 1
  %8 = load i32, i32* %keyword, align 4
  %cmp1 = icmp eq i32 %8, -1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %9 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %10 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type2 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %10, i32 0, i32 0
  %11 = load i32, i32* %type2, align 8
  %cmp3 = icmp eq i32 %11, 14
  br i1 %cmp3, label %if.end19, label %if.then4

if.then4:                                         ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %land.end, %if.then4
  %12 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type5 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %12, i32 0, i32 0
  %13 = load i32, i32* %type5, align 8
  %cmp6 = icmp eq i32 %13, 13
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %do.body
  %14 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %15 = load %struct.sTokenInfo*, %struct.sTokenInfo** %parent.addr, align 8
  %call8 = call zeroext i1 @parseBlock(%struct.sTokenInfo* %14, %struct.sTokenInfo* %15)
  br label %if.end10

if.else:                                          ; preds = %do.body
  %16 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call9 = call zeroext i1 @parseLine(%struct.sTokenInfo* %16)
  %frombool = zext i1 %call9 to i8
  store i8 %frombool, i8* %read_next_token, align 1
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then7
  %17 = load i8, i8* %read_next_token, align 1
  %tobool = trunc i8 %17 to i1
  br i1 %tobool, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end10
  %18 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %18)
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end10
  br label %do.cond

do.cond:                                          ; preds = %if.end12
  %19 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type13 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %19, i32 0, i32 0
  %20 = load i32, i32* %type13, align 8
  %cmp14 = icmp eq i32 %20, 14
  br i1 %cmp14, label %land.end, label %land.lhs.true15

land.lhs.true15:                                  ; preds = %do.cond
  %21 = load i8, i8* %read_next_token, align 1
  %tobool16 = trunc i8 %21 to i1
  br i1 %tobool16, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true15
  %22 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type17 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %22, i32 0, i32 0
  %23 = load i32, i32* %type17, align 8
  %cmp18 = icmp eq i32 %23, 1
  %lnot = xor i1 %cmp18, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true15, %do.cond
  %24 = phi i1 [ false, %land.lhs.true15 ], [ false, %do.cond ], [ %lnot, %land.rhs ]
  br i1 %24, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  br label %if.end19

if.end19:                                         ; preds = %do.end, %if.end
  %25 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %scope20 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %25, i32 0, i32 3
  %26 = load %struct.sVString*, %struct.sVString** %scope20, align 8
  %27 = load %struct.sVString*, %struct.sVString** %saveScope, align 8
  call void @vStringCopy(%struct.sVString* %26, %struct.sVString* %27)
  %28 = load %struct.sVString*, %struct.sVString** %saveScope, align 8
  call void @vStringDelete(%struct.sVString* %28)
  %29 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %nestLevel21 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %29, i32 0, i32 6
  %30 = load i32, i32* %nestLevel21, align 8
  %dec = add nsw i32 %30, -1
  store i32 %dec, i32* %nestLevel21, align 8
  ret i1 false
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @makeFunctionTag(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %fulltag = alloca %struct.sVString*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %ignoreTag = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 7
  %1 = load i8, i8* %ignoreTag, align 4
  %tobool = trunc i8 %1 to i1
  br i1 %tobool, label %if.end9, label %if.then

if.then:                                          ; preds = %entry
  %call = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call, %struct.sVString** %fulltag, align 8
  %2 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %scope = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %2, i32 0, i32 3
  %3 = load %struct.sVString*, %struct.sVString** %scope, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %3, i32 0, i32 0
  %4 = load i64, i64* %length, align 8
  %cmp = icmp ugt i64 %4, 0
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.then
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
  br label %if.end

if.else:                                          ; preds = %if.then
  %13 = load %struct.sVString*, %struct.sVString** %fulltag, align 8
  %14 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string3 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %14, i32 0, i32 2
  %15 = load %struct.sVString*, %struct.sVString** %string3, align 8
  call void @vStringCopy(%struct.sVString* %13, %struct.sVString* %15)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then1
  %16 = load %struct.sPtrArray*, %struct.sPtrArray** @FunctionNames, align 8
  %17 = load %struct.sVString*, %struct.sVString** %fulltag, align 8
  %buffer4 = getelementptr inbounds %struct.sVString, %struct.sVString* %17, i32 0, i32 2
  %18 = load i8*, i8** %buffer4, align 8
  %call5 = call zeroext i1 @stringListHas(%struct.sPtrArray* %16, i8* %18)
  br i1 %call5, label %if.end8, label %if.then6

if.then6:                                         ; preds = %if.end
  %19 = load %struct.sPtrArray*, %struct.sPtrArray** @FunctionNames, align 8
  %20 = load %struct.sVString*, %struct.sVString** %fulltag, align 8
  %call7 = call %struct.sVString* @vStringNewCopy(%struct.sVString* %20)
  call void @stringListAdd(%struct.sPtrArray* %19, %struct.sVString* %call7)
  %21 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @makeFlexTag(%struct.sTokenInfo* %21, i32 0)
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end
  %22 = load %struct.sVString*, %struct.sVString** %fulltag, align 8
  call void @vStringDelete(%struct.sVString* %22)
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @findCmdTerm(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end11, %entry
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 0
  %1 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %1, 4
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.cond
  %2 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type1 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %2, i32 0, i32 0
  %3 = load i32, i32* %type1, align 8
  %cmp2 = icmp eq i32 %3, 14
  br i1 %cmp2, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %4 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type3 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %4, i32 0, i32 0
  %5 = load i32, i32* %type3, align 8
  %cmp4 = icmp eq i32 %5, 1
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %while.cond
  %6 = phi i1 [ true, %lor.lhs.false ], [ true, %while.cond ], [ %cmp4, %lor.rhs ]
  %lnot = xor i1 %6, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type5 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %7, i32 0, i32 0
  %8 = load i32, i32* %type5, align 8
  %cmp6 = icmp eq i32 %8, 13
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %9 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %10 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call = call zeroext i1 @parseBlock(%struct.sTokenInfo* %9, %struct.sTokenInfo* %10)
  br label %if.end11

if.else:                                          ; preds = %while.body
  %11 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type7 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %11, i32 0, i32 0
  %12 = load i32, i32* %type7, align 8
  %cmp8 = icmp eq i32 %12, 8
  br i1 %cmp8, label %if.then9, label %if.else10

if.then9:                                         ; preds = %if.else
  %13 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @skipArgumentList(%struct.sTokenInfo* %13)
  br label %if.end

if.else10:                                        ; preds = %if.else
  %14 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %14)
  br label %if.end

if.end:                                           ; preds = %if.else10, %if.then9
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then
  br label %while.cond

while.end:                                        ; preds = %lor.end
  ret void
}

declare zeroext i1 @stringListHas(%struct.sPtrArray*, i8*) #1

declare void @stringListAdd(%struct.sPtrArray*, %struct.sVString*) #1

declare %struct.sVString* @vStringNewCopy(%struct.sVString*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseLoop(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 1
  %1 = load i32, i32* %keyword, align 4
  %cmp = icmp eq i32 %1, 8
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword1 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %2, i32 0, i32 1
  %3 = load i32, i32* %keyword1, align 4
  %cmp2 = icmp eq i32 %3, 9
  br i1 %cmp2, label %if.then, label %if.else10

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %4)
  %5 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %5, i32 0, i32 0
  %6 = load i32, i32* %type, align 8
  %cmp3 = icmp eq i32 %6, 8
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @skipArgumentList(%struct.sTokenInfo* %7)
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then
  %8 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type5 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %8, i32 0, i32 0
  %9 = load i32, i32* %type5, align 8
  %cmp6 = icmp eq i32 %9, 13
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end
  %10 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %11 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call = call zeroext i1 @parseBlock(%struct.sTokenInfo* %10, %struct.sTokenInfo* %11)
  br label %if.end9

if.else:                                          ; preds = %if.end
  %12 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call8 = call zeroext i1 @parseLine(%struct.sTokenInfo* %12)
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then7
  br label %if.end30

if.else10:                                        ; preds = %lor.lhs.false
  %13 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword11 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %13, i32 0, i32 1
  %14 = load i32, i32* %keyword11, align 4
  %cmp12 = icmp eq i32 %14, 10
  br i1 %cmp12, label %if.then13, label %if.end29

if.then13:                                        ; preds = %if.else10
  %15 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %15)
  %16 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type14 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %16, i32 0, i32 0
  %17 = load i32, i32* %type14, align 8
  %cmp15 = icmp eq i32 %17, 13
  br i1 %cmp15, label %if.then16, label %if.else18

if.then16:                                        ; preds = %if.then13
  %18 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %19 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call17 = call zeroext i1 @parseBlock(%struct.sTokenInfo* %18, %struct.sTokenInfo* %19)
  br label %if.end20

if.else18:                                        ; preds = %if.then13
  %20 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call19 = call zeroext i1 @parseLine(%struct.sTokenInfo* %20)
  br label %if.end20

if.end20:                                         ; preds = %if.else18, %if.then16
  %21 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %21)
  %22 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword21 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %22, i32 0, i32 1
  %23 = load i32, i32* %keyword21, align 4
  %cmp22 = icmp eq i32 %23, 9
  br i1 %cmp22, label %if.then23, label %if.end28

if.then23:                                        ; preds = %if.end20
  %24 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %24)
  %25 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type24 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %25, i32 0, i32 0
  %26 = load i32, i32* %type24, align 8
  %cmp25 = icmp eq i32 %26, 8
  br i1 %cmp25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.then23
  %27 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @skipArgumentList(%struct.sTokenInfo* %27)
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.then23
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.end20
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.else10
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.end9
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @parseIf(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %read_next_token = alloca i8, align 1
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  store i8 1, i8* %read_next_token, align 1
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %0)
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %1, i32 0, i32 1
  %2 = load i32, i32* %keyword, align 4
  %cmp = icmp eq i32 %2, 11
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %4, i32 0, i32 0
  %5 = load i32, i32* %type, align 8
  %cmp1 = icmp eq i32 %5, 8
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %6 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @skipArgumentList(%struct.sTokenInfo* %6)
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type4 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %7, i32 0, i32 0
  %8 = load i32, i32* %type4, align 8
  %cmp5 = icmp eq i32 %8, 13
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end3
  %9 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %10 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call = call zeroext i1 @parseBlock(%struct.sTokenInfo* %9, %struct.sTokenInfo* %10)
  br label %if.end22

if.else:                                          ; preds = %if.end3
  %11 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @findCmdTerm(%struct.sTokenInfo* %11)
  %12 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type7 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %12, i32 0, i32 0
  %13 = load i32, i32* %type7, align 8
  %cmp8 = icmp eq i32 %13, 14
  br i1 %cmp8, label %if.then9, label %if.else10

if.then9:                                         ; preds = %if.else
  store i8 0, i8* %read_next_token, align 1
  br label %if.end21

if.else10:                                        ; preds = %if.else
  %14 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %14)
  %15 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type11 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %15, i32 0, i32 0
  %16 = load i32, i32* %type11, align 8
  %cmp12 = icmp eq i32 %16, 14
  br i1 %cmp12, label %if.then13, label %if.else14

if.then13:                                        ; preds = %if.else10
  store i8 0, i8* %read_next_token, align 1
  br label %if.end20

if.else14:                                        ; preds = %if.else10
  %17 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword15 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %17, i32 0, i32 1
  %18 = load i32, i32* %keyword15, align 4
  %cmp16 = icmp eq i32 %18, 12
  br i1 %cmp16, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.else14
  %19 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call18 = call zeroext i1 @parseIf(%struct.sTokenInfo* %19)
  %frombool = zext i1 %call18 to i8
  store i8 %frombool, i8* %read_next_token, align 1
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.else14
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.then13
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %if.then9
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.then6
  %20 = load i8, i8* %read_next_token, align 1
  %tobool = trunc i8 %20 to i1
  ret i1 %tobool
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseSwitch(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %0)
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %1, i32 0, i32 0
  %2 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %2, 8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @skipArgumentList(%struct.sTokenInfo* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type1 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %4, i32 0, i32 0
  %5 = load i32, i32* %type1, align 8
  %cmp2 = icmp eq i32 %5, 13
  br i1 %cmp2, label %if.then3, label %if.end16

if.then3:                                         ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %lor.end, %if.then3
  %6 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %6)
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type4 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %7, i32 0, i32 0
  %8 = load i32, i32* %type4, align 8
  %cmp5 = icmp eq i32 %8, 22
  br i1 %cmp5, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.cond
  %9 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type6 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %9, i32 0, i32 0
  %10 = load i32, i32* %type6, align 8
  %cmp7 = icmp eq i32 %10, 21
  br i1 %cmp7, label %lor.end, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %lor.lhs.false
  %11 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type9 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %11, i32 0, i32 0
  %12 = load i32, i32* %type9, align 8
  %cmp10 = icmp eq i32 %12, 14
  br i1 %cmp10, label %lor.end, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %lor.lhs.false8
  %13 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type12 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %13, i32 0, i32 0
  %14 = load i32, i32* %type12, align 8
  %cmp13 = icmp eq i32 %14, 24
  br i1 %cmp13, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false11
  %15 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type14 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %15, i32 0, i32 0
  %16 = load i32, i32* %type14, align 8
  %cmp15 = icmp eq i32 %16, 1
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false11, %lor.lhs.false8, %lor.lhs.false, %do.cond
  %17 = phi i1 [ true, %lor.lhs.false11 ], [ true, %lor.lhs.false8 ], [ true, %lor.lhs.false ], [ true, %do.cond ], [ %cmp15, %lor.rhs ]
  %lnot = xor i1 %17, true
  br i1 %lnot, label %do.body, label %do.end

do.end:                                           ; preds = %lor.end
  br label %if.end16

if.end16:                                         ; preds = %do.end, %if.end
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @parseStatement(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %name = alloca %struct.sTokenInfo*, align 8
  %secondary_name = alloca %struct.sTokenInfo*, align 8
  %saveScope = alloca %struct.sVString*, align 8
  %is_public = alloca i8, align 1
  %is_class = alloca i8, align 1
  %is_terminated = alloca i8, align 1
  %is_global = alloca i8, align 1
  %fulltag = alloca %struct.sVString*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  %call = call %struct.sTokenInfo* @newToken()
  store %struct.sTokenInfo* %call, %struct.sTokenInfo** %name, align 8
  %call1 = call %struct.sTokenInfo* @newToken()
  store %struct.sTokenInfo* %call1, %struct.sTokenInfo** %secondary_name, align 8
  %call2 = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call2, %struct.sVString** %saveScope, align 8
  store i8 0, i8* %is_public, align 1
  store i8 0, i8* %is_class, align 1
  store i8 1, i8* %is_terminated, align 1
  store i8 0, i8* %is_global, align 1
  %0 = load %struct.sVString*, %struct.sVString** %saveScope, align 8
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %scope = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %1, i32 0, i32 3
  %2 = load %struct.sVString*, %struct.sVString** %scope, align 8
  call void @vStringCopy(%struct.sVString* %0, %struct.sVString* %2)
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %3, i32 0, i32 1
  %4 = load i32, i32* %keyword, align 4
  %cmp = icmp eq i32 %4, 17
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8 1, i8* %is_public, align 1
  %5 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword3 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %6, i32 0, i32 1
  %7 = load i32, i32* %keyword3, align 4
  %cmp4 = icmp eq i32 %7, 18
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  %8 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %8)
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end
  %9 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword7 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %9, i32 0, i32 1
  %10 = load i32, i32* %keyword7, align 4
  %cmp8 = icmp eq i32 %10, 19
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end6
  %11 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %11)
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end6
  %12 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %12, i32 0, i32 0
  %13 = load i32, i32* %type, align 8
  %cmp11 = icmp eq i32 %13, 7
  br i1 %cmp11, label %if.then12, label %if.end22

if.then12:                                        ; preds = %if.end10
  %14 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword13 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %14, i32 0, i32 1
  %15 = load i32, i32* %keyword13, align 4
  switch i32 %15, label %sw.default [
    i32 8, label %sw.bb
    i32 9, label %sw.bb
    i32 10, label %sw.bb
    i32 11, label %sw.bb14
    i32 12, label %sw.bb14
    i32 14, label %sw.bb14
    i32 15, label %sw.bb14
    i32 16, label %sw.bb14
    i32 13, label %sw.bb16
    i32 20, label %sw.bb17
    i32 0, label %sw.bb19
    i32 5, label %sw.bb20
  ]

sw.bb:                                            ; preds = %if.then12, %if.then12, %if.then12
  %16 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @parseLoop(%struct.sTokenInfo* %16)
  br label %sw.epilog

sw.bb14:                                          ; preds = %if.then12, %if.then12, %if.then12, %if.then12, %if.then12
  %17 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call15 = call zeroext i1 @parseIf(%struct.sTokenInfo* %17)
  %frombool = zext i1 %call15 to i8
  store i8 %frombool, i8* %is_terminated, align 1
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.then12
  %18 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @parseSwitch(%struct.sTokenInfo* %18)
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.then12
  %19 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call18 = call zeroext i1 @parseClass(%struct.sTokenInfo* %19)
  br label %cleanUp

sw.bb19:                                          ; preds = %if.then12
  %20 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @parseFunction(%struct.sTokenInfo* %20)
  br label %cleanUp

sw.bb20:                                          ; preds = %if.then12
  %21 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %22 = load i8, i8* %is_public, align 1
  %tobool = trunc i8 %22 to i1
  %call21 = call zeroext i1 @parseVar(%struct.sTokenInfo* %21, i1 zeroext %tobool)
  br label %cleanUp

sw.default:                                       ; preds = %if.then12
  %23 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %23)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb16, %sw.bb14, %sw.bb
  br label %if.end22

if.end22:                                         ; preds = %sw.epilog, %if.end10
  %24 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  %25 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @copyToken(%struct.sTokenInfo* %24, %struct.sTokenInfo* %25)
  br label %while.cond

while.cond:                                       ; preds = %if.end88, %if.end22
  %26 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type23 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %26, i32 0, i32 0
  %27 = load i32, i32* %type23, align 8
  %cmp24 = icmp eq i32 %27, 14
  br i1 %cmp24, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.cond
  %28 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type25 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %28, i32 0, i32 0
  %29 = load i32, i32* %type25, align 8
  %cmp26 = icmp eq i32 %29, 4
  br i1 %cmp26, label %land.end, label %land.lhs.true27

land.lhs.true27:                                  ; preds = %land.lhs.true
  %30 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type28 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %30, i32 0, i32 0
  %31 = load i32, i32* %type28, align 8
  %cmp29 = icmp eq i32 %31, 15
  br i1 %cmp29, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true27
  %32 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type30 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %32, i32 0, i32 0
  %33 = load i32, i32* %type30, align 8
  %cmp31 = icmp eq i32 %33, 1
  %lnot = xor i1 %cmp31, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true27, %land.lhs.true, %while.cond
  %34 = phi i1 [ false, %land.lhs.true27 ], [ false, %land.lhs.true ], [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %34, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %35 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %35)
  %36 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type32 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %36, i32 0, i32 0
  %37 = load i32, i32* %type32, align 8
  %cmp33 = icmp eq i32 %37, 12
  br i1 %cmp33, label %if.then34, label %if.end76

if.then34:                                        ; preds = %while.body
  store i8 0, i8* %is_global, align 1
  br label %do.body

do.body:                                          ; preds = %land.end75, %if.then34
  %38 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %38)
  %39 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword35 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %39, i32 0, i32 1
  %40 = load i32, i32* %keyword35, align 4
  %cmp36 = icmp eq i32 %40, -1
  br i1 %cmp36, label %if.then37, label %if.else42

if.then37:                                        ; preds = %do.body
  %41 = load i8, i8* %is_class, align 1
  %tobool38 = trunc i8 %41 to i1
  br i1 %tobool38, label %if.then39, label %if.else

if.then39:                                        ; preds = %if.then37
  %42 = load %struct.sVString*, %struct.sVString** %saveScope, align 8
  %43 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %scope40 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %43, i32 0, i32 3
  %44 = load %struct.sVString*, %struct.sVString** %scope40, align 8
  call void @vStringCopy(%struct.sVString* %42, %struct.sVString* %44)
  %45 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %46 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  %string = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %46, i32 0, i32 2
  %47 = load %struct.sVString*, %struct.sVString** %string, align 8
  call void @addToScope(%struct.sTokenInfo* %45, %struct.sVString* %47)
  br label %if.end41

if.else:                                          ; preds = %if.then37
  %48 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  %49 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @addContext(%struct.sTokenInfo* %48, %struct.sTokenInfo* %49)
  br label %if.end41

if.end41:                                         ; preds = %if.else, %if.then39
  br label %if.end68

if.else42:                                        ; preds = %do.body
  %50 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword43 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %50, i32 0, i32 1
  %51 = load i32, i32* %keyword43, align 4
  %cmp44 = icmp eq i32 %51, 4
  br i1 %cmp44, label %if.then45, label %if.end67

if.then45:                                        ; preds = %if.else42
  %52 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  call void @makeClassTag(%struct.sTokenInfo* %52)
  store i8 1, i8* %is_class, align 1
  %53 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %53)
  %54 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type46 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %54, i32 0, i32 0
  %55 = load i32, i32* %type46, align 8
  %cmp47 = icmp eq i32 %55, 12
  br i1 %cmp47, label %if.then48, label %if.else56

if.then48:                                        ; preds = %if.then45
  %56 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %56)
  %57 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword49 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %57, i32 0, i32 1
  %58 = load i32, i32* %keyword49, align 4
  %cmp50 = icmp eq i32 %58, -1
  br i1 %cmp50, label %if.then51, label %if.end55

if.then51:                                        ; preds = %if.then48
  %59 = load %struct.sVString*, %struct.sVString** %saveScope, align 8
  %60 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %scope52 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %60, i32 0, i32 3
  %61 = load %struct.sVString*, %struct.sVString** %scope52, align 8
  call void @vStringCopy(%struct.sVString* %59, %struct.sVString* %61)
  %62 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %63 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  %string53 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %63, i32 0, i32 2
  %64 = load %struct.sVString*, %struct.sVString** %string53, align 8
  call void @addToScope(%struct.sTokenInfo* %62, %struct.sVString* %64)
  %65 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @makeFlexTag(%struct.sTokenInfo* %65, i32 2)
  %66 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %ignoreTag = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %66, i32 0, i32 7
  store i8 1, i8* %ignoreTag, align 4
  %67 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @findCmdTerm(%struct.sTokenInfo* %67)
  %68 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %ignoreTag54 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %68, i32 0, i32 7
  store i8 0, i8* %ignoreTag54, align 4
  store i8 1, i8* %is_terminated, align 1
  br label %cleanUp

if.end55:                                         ; preds = %if.then48
  br label %if.end66

if.else56:                                        ; preds = %if.then45
  %69 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type57 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %69, i32 0, i32 0
  %70 = load i32, i32* %type57, align 8
  %cmp58 = icmp eq i32 %70, 15
  br i1 %cmp58, label %if.then59, label %if.end65

if.then59:                                        ; preds = %if.else56
  %71 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %71)
  %72 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type60 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %72, i32 0, i32 0
  %73 = load i32, i32* %type60, align 8
  %cmp61 = icmp eq i32 %73, 13
  br i1 %cmp61, label %if.then62, label %if.end64

if.then62:                                        ; preds = %if.then59
  %74 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %75 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  call void @parseMethods(%struct.sTokenInfo* %74, %struct.sTokenInfo* %75)
  %76 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @findCmdTerm(%struct.sTokenInfo* %76)
  %77 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %ignoreTag63 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %77, i32 0, i32 7
  store i8 0, i8* %ignoreTag63, align 4
  store i8 1, i8* %is_terminated, align 1
  br label %cleanUp

if.end64:                                         ; preds = %if.then59
  br label %if.end65

if.end65:                                         ; preds = %if.end64, %if.else56
  br label %if.end66

if.end66:                                         ; preds = %if.end65, %if.end55
  br label %if.end67

if.end67:                                         ; preds = %if.end66, %if.else42
  br label %if.end68

if.end68:                                         ; preds = %if.end67, %if.end41
  %78 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %78)
  br label %do.cond

do.cond:                                          ; preds = %if.end68
  %79 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type69 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %79, i32 0, i32 0
  %80 = load i32, i32* %type69, align 8
  %cmp70 = icmp eq i32 %80, 12
  br i1 %cmp70, label %land.rhs71, label %land.end75

land.rhs71:                                       ; preds = %do.cond
  %81 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type72 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %81, i32 0, i32 0
  %82 = load i32, i32* %type72, align 8
  %cmp73 = icmp eq i32 %82, 1
  %lnot74 = xor i1 %cmp73, true
  br label %land.end75

land.end75:                                       ; preds = %land.rhs71, %do.cond
  %83 = phi i1 [ false, %do.cond ], [ %lnot74, %land.rhs71 ]
  br i1 %83, label %do.body, label %do.end

do.end:                                           ; preds = %land.end75
  br label %if.end76

if.end76:                                         ; preds = %do.end, %while.body
  %84 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type77 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %84, i32 0, i32 0
  %85 = load i32, i32* %type77, align 8
  %cmp78 = icmp eq i32 %85, 8
  br i1 %cmp78, label %if.then79, label %if.end80

if.then79:                                        ; preds = %if.end76
  %86 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @skipArgumentList(%struct.sTokenInfo* %86)
  br label %if.end80

if.end80:                                         ; preds = %if.then79, %if.end76
  %87 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type81 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %87, i32 0, i32 0
  %88 = load i32, i32* %type81, align 8
  %cmp82 = icmp eq i32 %88, 5
  br i1 %cmp82, label %if.then83, label %if.end84

if.then83:                                        ; preds = %if.end80
  %89 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %89)
  %90 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %90)
  br label %if.end84

if.end84:                                         ; preds = %if.then83, %if.end80
  %91 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type85 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %91, i32 0, i32 0
  %92 = load i32, i32* %type85, align 8
  %cmp86 = icmp eq i32 %92, 18
  br i1 %cmp86, label %if.then87, label %if.end88

if.then87:                                        ; preds = %if.end84
  %93 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @skipArrayList(%struct.sTokenInfo* %93)
  br label %if.end88

if.end88:                                         ; preds = %if.then87, %if.end84
  br label %while.cond

while.end:                                        ; preds = %land.end
  %94 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type89 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %94, i32 0, i32 0
  %95 = load i32, i32* %type89, align 8
  %cmp90 = icmp eq i32 %95, 14
  br i1 %cmp90, label %if.then91, label %if.end92

if.then91:                                        ; preds = %while.end
  store i8 0, i8* %is_terminated, align 1
  br label %cleanUp

if.end92:                                         ; preds = %while.end
  %96 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type93 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %96, i32 0, i32 0
  %97 = load i32, i32* %type93, align 8
  %cmp94 = icmp eq i32 %97, 4
  br i1 %cmp94, label %if.then95, label %if.end105

if.then95:                                        ; preds = %if.end92
  %98 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %nestLevel = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %98, i32 0, i32 6
  %99 = load i32, i32* %nestLevel, align 8
  %cmp96 = icmp eq i32 %99, 0
  br i1 %cmp96, label %land.lhs.true97, label %if.end104

land.lhs.true97:                                  ; preds = %if.then95
  %100 = load i8, i8* %is_global, align 1
  %tobool98 = trunc i8 %100 to i1
  br i1 %tobool98, label %if.then99, label %if.end104

if.then99:                                        ; preds = %land.lhs.true97
  %101 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type100 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %101, i32 0, i32 0
  %102 = load i32, i32* %type100, align 8
  %cmp101 = icmp eq i32 %102, 4
  br i1 %cmp101, label %if.then102, label %if.end103

if.then102:                                       ; preds = %if.then99
  %103 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  call void @makeFlexTag(%struct.sTokenInfo* %103, i32 4)
  br label %if.end103

if.end103:                                        ; preds = %if.then102, %if.then99
  br label %if.end104

if.end104:                                        ; preds = %if.end103, %land.lhs.true97, %if.then95
  br label %cleanUp

if.end105:                                        ; preds = %if.end92
  %104 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type106 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %104, i32 0, i32 0
  %105 = load i32, i32* %type106, align 8
  %cmp107 = icmp eq i32 %105, 15
  br i1 %cmp107, label %if.then108, label %if.end234

if.then108:                                       ; preds = %if.end105
  %106 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %106)
  %107 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword109 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %107, i32 0, i32 1
  %108 = load i32, i32* %keyword109, align 4
  %cmp110 = icmp eq i32 %108, 0
  br i1 %cmp110, label %if.then111, label %if.else142

if.then111:                                       ; preds = %if.then108
  %109 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %109)
  %110 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword112 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %110, i32 0, i32 1
  %111 = load i32, i32* %keyword112, align 4
  %cmp113 = icmp eq i32 %111, -1
  br i1 %cmp113, label %land.lhs.true114, label %if.end118

land.lhs.true114:                                 ; preds = %if.then111
  %112 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type115 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %112, i32 0, i32 0
  %113 = load i32, i32* %type115, align 8
  %cmp116 = icmp eq i32 %113, 8
  br i1 %cmp116, label %if.end118, label %if.then117

if.then117:                                       ; preds = %land.lhs.true114
  %114 = load %struct.sTokenInfo*, %struct.sTokenInfo** %secondary_name, align 8
  %115 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @copyToken(%struct.sTokenInfo* %114, %struct.sTokenInfo* %115)
  %116 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %116)
  br label %if.end118

if.end118:                                        ; preds = %if.then117, %land.lhs.true114, %if.then111
  %117 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type119 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %117, i32 0, i32 0
  %118 = load i32, i32* %type119, align 8
  %cmp120 = icmp eq i32 %118, 8
  br i1 %cmp120, label %if.then121, label %if.end122

if.then121:                                       ; preds = %if.end118
  %119 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @skipArgumentList(%struct.sTokenInfo* %119)
  br label %if.end122

if.end122:                                        ; preds = %if.then121, %if.end118
  %120 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type123 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %120, i32 0, i32 0
  %121 = load i32, i32* %type123, align 8
  %cmp124 = icmp eq i32 %121, 13
  br i1 %cmp124, label %if.then125, label %if.end141

if.then125:                                       ; preds = %if.end122
  %122 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %isClass = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %122, i32 0, i32 8
  %123 = load i8, i8* %isClass, align 1
  %tobool126 = trunc i8 %123 to i1
  br i1 %tobool126, label %if.then127, label %if.else133

if.then127:                                       ; preds = %if.then125
  %124 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  call void @makeFlexTag(%struct.sTokenInfo* %124, i32 2)
  %125 = load %struct.sTokenInfo*, %struct.sTokenInfo** %secondary_name, align 8
  %string128 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %125, i32 0, i32 2
  %126 = load %struct.sVString*, %struct.sVString** %string128, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %126, i32 0, i32 0
  %127 = load i64, i64* %length, align 8
  %cmp129 = icmp ugt i64 %127, 0
  br i1 %cmp129, label %if.then130, label %if.end131

if.then130:                                       ; preds = %if.then127
  %128 = load %struct.sTokenInfo*, %struct.sTokenInfo** %secondary_name, align 8
  call void @makeFunctionTag(%struct.sTokenInfo* %128)
  br label %if.end131

if.end131:                                        ; preds = %if.then130, %if.then127
  %129 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %130 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  %call132 = call zeroext i1 @parseBlock(%struct.sTokenInfo* %129, %struct.sTokenInfo* %130)
  br label %if.end140

if.else133:                                       ; preds = %if.then125
  %131 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %132 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  %call134 = call zeroext i1 @parseBlock(%struct.sTokenInfo* %131, %struct.sTokenInfo* %132)
  %133 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  call void @makeFunctionTag(%struct.sTokenInfo* %133)
  %134 = load %struct.sTokenInfo*, %struct.sTokenInfo** %secondary_name, align 8
  %string135 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %134, i32 0, i32 2
  %135 = load %struct.sVString*, %struct.sVString** %string135, align 8
  %length136 = getelementptr inbounds %struct.sVString, %struct.sVString* %135, i32 0, i32 0
  %136 = load i64, i64* %length136, align 8
  %cmp137 = icmp ugt i64 %136, 0
  br i1 %cmp137, label %if.then138, label %if.end139

if.then138:                                       ; preds = %if.else133
  %137 = load %struct.sTokenInfo*, %struct.sTokenInfo** %secondary_name, align 8
  call void @makeFunctionTag(%struct.sTokenInfo* %137)
  br label %if.end139

if.end139:                                        ; preds = %if.then138, %if.else133
  br label %cleanUp

if.end140:                                        ; preds = %if.end131
  br label %if.end141

if.end141:                                        ; preds = %if.end140, %if.end122
  br label %if.end233

if.else142:                                       ; preds = %if.then108
  %138 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type143 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %138, i32 0, i32 0
  %139 = load i32, i32* %type143, align 8
  %cmp144 = icmp eq i32 %139, 8
  br i1 %cmp144, label %if.then145, label %if.else151

if.then145:                                       ; preds = %if.else142
  %140 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @skipArgumentList(%struct.sTokenInfo* %140)
  %141 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type146 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %141, i32 0, i32 0
  %142 = load i32, i32* %type146, align 8
  %cmp147 = icmp eq i32 %142, 13
  br i1 %cmp147, label %if.then148, label %if.end150

if.then148:                                       ; preds = %if.then145
  %143 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  call void @makeFlexTag(%struct.sTokenInfo* %143, i32 2)
  %144 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %145 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  %call149 = call zeroext i1 @parseBlock(%struct.sTokenInfo* %144, %struct.sTokenInfo* %145)
  br label %if.end150

if.end150:                                        ; preds = %if.then148, %if.then145
  br label %if.end232

if.else151:                                       ; preds = %if.else142
  %146 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type152 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %146, i32 0, i32 0
  %147 = load i32, i32* %type152, align 8
  %cmp153 = icmp eq i32 %147, 13
  br i1 %cmp153, label %if.then154, label %if.else159

if.then154:                                       ; preds = %if.else151
  %148 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %149 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  call void @parseMethods(%struct.sTokenInfo* %148, %struct.sTokenInfo* %149)
  %150 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type155 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %150, i32 0, i32 0
  %151 = load i32, i32* %type155, align 8
  %cmp156 = icmp eq i32 %151, 14
  br i1 %cmp156, label %if.then157, label %if.end158

if.then157:                                       ; preds = %if.then154
  store i8 1, i8* %is_terminated, align 1
  br label %if.end158

if.end158:                                        ; preds = %if.then157, %if.then154
  br label %if.end231

if.else159:                                       ; preds = %if.else151
  %152 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword160 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %152, i32 0, i32 1
  %153 = load i32, i32* %keyword160, align 4
  %cmp161 = icmp eq i32 %153, 6
  br i1 %cmp161, label %if.then162, label %if.else198

if.then162:                                       ; preds = %if.else159
  %154 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %154)
  %155 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword163 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %155, i32 0, i32 1
  %156 = load i32, i32* %keyword163, align 4
  %cmp164 = icmp eq i32 %156, 0
  br i1 %cmp164, label %if.then173, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then162
  %157 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword165 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %157, i32 0, i32 1
  %158 = load i32, i32* %keyword165, align 4
  %cmp166 = icmp eq i32 %158, 1
  br i1 %cmp166, label %if.then173, label %lor.lhs.false167

lor.lhs.false167:                                 ; preds = %lor.lhs.false
  %159 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword168 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %159, i32 0, i32 1
  %160 = load i32, i32* %keyword168, align 4
  %cmp169 = icmp eq i32 %160, 2
  br i1 %cmp169, label %if.then173, label %lor.lhs.false170

lor.lhs.false170:                                 ; preds = %lor.lhs.false167
  %161 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword171 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %161, i32 0, i32 1
  %162 = load i32, i32* %keyword171, align 4
  %cmp172 = icmp eq i32 %162, 3
  br i1 %cmp172, label %if.then173, label %if.end197

if.then173:                                       ; preds = %lor.lhs.false170, %lor.lhs.false167, %lor.lhs.false, %if.then162
  %163 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword174 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %163, i32 0, i32 1
  %164 = load i32, i32* %keyword174, align 4
  %cmp175 = icmp eq i32 %164, 2
  br i1 %cmp175, label %if.then179, label %lor.lhs.false176

lor.lhs.false176:                                 ; preds = %if.then173
  %165 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword177 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %165, i32 0, i32 1
  %166 = load i32, i32* %keyword177, align 4
  %cmp178 = icmp eq i32 %166, 3
  br i1 %cmp178, label %if.then179, label %if.end180

if.then179:                                       ; preds = %lor.lhs.false176, %if.then173
  store i8 1, i8* %is_class, align 1
  br label %if.end180

if.end180:                                        ; preds = %if.then179, %lor.lhs.false176
  %167 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %167)
  %168 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type181 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %168, i32 0, i32 0
  %169 = load i32, i32* %type181, align 8
  %cmp182 = icmp eq i32 %169, 8
  br i1 %cmp182, label %if.then183, label %if.end184

if.then183:                                       ; preds = %if.end180
  %170 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @skipArgumentList(%struct.sTokenInfo* %170)
  br label %if.end184

if.end184:                                        ; preds = %if.then183, %if.end180
  %171 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type185 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %171, i32 0, i32 0
  %172 = load i32, i32* %type185, align 8
  %cmp186 = icmp eq i32 %172, 4
  br i1 %cmp186, label %if.then187, label %if.end196

if.then187:                                       ; preds = %if.end184
  %173 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %nestLevel188 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %173, i32 0, i32 6
  %174 = load i32, i32* %nestLevel188, align 8
  %cmp189 = icmp eq i32 %174, 0
  br i1 %cmp189, label %if.then190, label %if.end195

if.then190:                                       ; preds = %if.then187
  %175 = load i8, i8* %is_class, align 1
  %tobool191 = trunc i8 %175 to i1
  br i1 %tobool191, label %if.then192, label %if.else193

if.then192:                                       ; preds = %if.then190
  %176 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  call void @makeClassTag(%struct.sTokenInfo* %176)
  br label %if.end194

if.else193:                                       ; preds = %if.then190
  %177 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  call void @makeFunctionTag(%struct.sTokenInfo* %177)
  br label %if.end194

if.end194:                                        ; preds = %if.else193, %if.then192
  br label %if.end195

if.end195:                                        ; preds = %if.end194, %if.then187
  br label %if.end196

if.end196:                                        ; preds = %if.end195, %if.end184
  br label %if.end197

if.end197:                                        ; preds = %if.end196, %lor.lhs.false170
  br label %if.end230

if.else198:                                       ; preds = %if.else159
  %178 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword199 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %178, i32 0, i32 1
  %179 = load i32, i32* %keyword199, align 4
  %cmp200 = icmp eq i32 %179, -1
  br i1 %cmp200, label %if.then201, label %if.end229

if.then201:                                       ; preds = %if.else198
  %180 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %nestLevel202 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %180, i32 0, i32 6
  %181 = load i32, i32* %nestLevel202, align 8
  %cmp203 = icmp eq i32 %181, 0
  br i1 %cmp203, label %land.lhs.true204, label %if.end228

land.lhs.true204:                                 ; preds = %if.then201
  %182 = load i8, i8* %is_global, align 1
  %tobool205 = trunc i8 %182 to i1
  br i1 %tobool205, label %if.then206, label %if.end228

if.then206:                                       ; preds = %land.lhs.true204
  %call207 = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call207, %struct.sVString** %fulltag, align 8
  %183 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %scope208 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %183, i32 0, i32 3
  %184 = load %struct.sVString*, %struct.sVString** %scope208, align 8
  %length209 = getelementptr inbounds %struct.sVString, %struct.sVString* %184, i32 0, i32 0
  %185 = load i64, i64* %length209, align 8
  %cmp210 = icmp ugt i64 %185, 0
  br i1 %cmp210, label %if.then211, label %if.else214

if.then211:                                       ; preds = %if.then206
  %186 = load %struct.sVString*, %struct.sVString** %fulltag, align 8
  %187 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %scope212 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %187, i32 0, i32 3
  %188 = load %struct.sVString*, %struct.sVString** %scope212, align 8
  call void @vStringCopy(%struct.sVString* %186, %struct.sVString* %188)
  %189 = load %struct.sVString*, %struct.sVString** %fulltag, align 8
  call void @vStringPut(%struct.sVString* %189, i32 46)
  %190 = load %struct.sVString*, %struct.sVString** %fulltag, align 8
  %191 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string213 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %191, i32 0, i32 2
  %192 = load %struct.sVString*, %struct.sVString** %string213, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %192, i32 0, i32 2
  %193 = load i8*, i8** %buffer, align 8
  call void @vStringCatS(%struct.sVString* %190, i8* %193)
  br label %if.end216

if.else214:                                       ; preds = %if.then206
  %194 = load %struct.sVString*, %struct.sVString** %fulltag, align 8
  %195 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string215 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %195, i32 0, i32 2
  %196 = load %struct.sVString*, %struct.sVString** %string215, align 8
  call void @vStringCopy(%struct.sVString* %194, %struct.sVString* %196)
  br label %if.end216

if.end216:                                        ; preds = %if.else214, %if.then211
  %197 = load %struct.sPtrArray*, %struct.sPtrArray** @FunctionNames, align 8
  %198 = load %struct.sVString*, %struct.sVString** %fulltag, align 8
  %buffer217 = getelementptr inbounds %struct.sVString, %struct.sVString* %198, i32 0, i32 2
  %199 = load i8*, i8** %buffer217, align 8
  %call218 = call zeroext i1 @stringListHas(%struct.sPtrArray* %197, i8* %199)
  br i1 %call218, label %if.end227, label %land.lhs.true219

land.lhs.true219:                                 ; preds = %if.end216
  %200 = load %struct.sPtrArray*, %struct.sPtrArray** @ClassNames, align 8
  %201 = load %struct.sVString*, %struct.sVString** %fulltag, align 8
  %buffer220 = getelementptr inbounds %struct.sVString, %struct.sVString* %201, i32 0, i32 2
  %202 = load i8*, i8** %buffer220, align 8
  %call221 = call zeroext i1 @stringListHas(%struct.sPtrArray* %200, i8* %202)
  br i1 %call221, label %if.end227, label %if.then222

if.then222:                                       ; preds = %land.lhs.true219
  %203 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @findCmdTerm(%struct.sTokenInfo* %203)
  %204 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type223 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %204, i32 0, i32 0
  %205 = load i32, i32* %type223, align 8
  %cmp224 = icmp eq i32 %205, 4
  br i1 %cmp224, label %if.then225, label %if.end226

if.then225:                                       ; preds = %if.then222
  %206 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  call void @makeFlexTag(%struct.sTokenInfo* %206, i32 4)
  br label %if.end226

if.end226:                                        ; preds = %if.then225, %if.then222
  br label %if.end227

if.end227:                                        ; preds = %if.end226, %land.lhs.true219, %if.end216
  %207 = load %struct.sVString*, %struct.sVString** %fulltag, align 8
  call void @vStringDelete(%struct.sVString* %207)
  br label %if.end228

if.end228:                                        ; preds = %if.end227, %land.lhs.true204, %if.then201
  br label %if.end229

if.end229:                                        ; preds = %if.end228, %if.else198
  br label %if.end230

if.end230:                                        ; preds = %if.end229, %if.end197
  br label %if.end231

if.end231:                                        ; preds = %if.end230, %if.end158
  br label %if.end232

if.end232:                                        ; preds = %if.end231, %if.end150
  br label %if.end233

if.end233:                                        ; preds = %if.end232, %if.end141
  br label %if.end234

if.end234:                                        ; preds = %if.end233, %if.end105
  %208 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @findCmdTerm(%struct.sTokenInfo* %208)
  %209 = load i8, i8* %is_terminated, align 1
  %tobool235 = trunc i8 %209 to i1
  br i1 %tobool235, label %if.end240, label %land.lhs.true236

land.lhs.true236:                                 ; preds = %if.end234
  %210 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type237 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %210, i32 0, i32 0
  %211 = load i32, i32* %type237, align 8
  %cmp238 = icmp eq i32 %211, 14
  br i1 %cmp238, label %if.then239, label %if.end240

if.then239:                                       ; preds = %land.lhs.true236
  store i8 0, i8* %is_terminated, align 1
  br label %if.end240

if.end240:                                        ; preds = %if.then239, %land.lhs.true236, %if.end234
  br label %cleanUp

cleanUp:                                          ; preds = %if.end240, %if.end139, %if.end104, %if.then91, %if.then62, %if.then51, %sw.bb20, %sw.bb19, %sw.bb17
  %212 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %scope241 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %212, i32 0, i32 3
  %213 = load %struct.sVString*, %struct.sVString** %scope241, align 8
  %214 = load %struct.sVString*, %struct.sVString** %saveScope, align 8
  call void @vStringCopy(%struct.sVString* %213, %struct.sVString* %214)
  %215 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  call void @deleteToken(%struct.sTokenInfo* %215)
  %216 = load %struct.sTokenInfo*, %struct.sTokenInfo** %secondary_name, align 8
  call void @deleteToken(%struct.sTokenInfo* %216)
  %217 = load %struct.sVString*, %struct.sVString** %saveScope, align 8
  call void @vStringDelete(%struct.sVString* %217)
  %218 = load i8, i8* %is_terminated, align 1
  %tobool242 = trunc i8 %218 to i1
  ret i1 %tobool242
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @parseClass(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %name = alloca %struct.sTokenInfo*, align 8
  %saveScope = alloca %struct.sVString*, align 8
  %saveIsClass = alloca i8, align 1
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  %call = call %struct.sTokenInfo* @newToken()
  store %struct.sTokenInfo* %call, %struct.sTokenInfo** %name, align 8
  %call1 = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call1, %struct.sVString** %saveScope, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %isClass = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 8
  %1 = load i8, i8* %isClass, align 1
  %tobool = trunc i8 %1 to i1
  %frombool = zext i1 %tobool to i8
  store i8 %frombool, i8* %saveIsClass, align 1
  %2 = load %struct.sVString*, %struct.sVString** %saveScope, align 8
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %scope = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %3, i32 0, i32 3
  %4 = load %struct.sVString*, %struct.sVString** %scope, align 8
  call void @vStringCopy(%struct.sVString* %2, %struct.sVString* %4)
  %5 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %5, i32 0, i32 1
  %6 = load i32, i32* %keyword, align 4
  %cmp = icmp eq i32 %6, 20
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %isClass2 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %8, i32 0, i32 8
  store i8 1, i8* %isClass2, align 1
  %9 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %10 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %10, i32 0, i32 2
  %11 = load %struct.sVString*, %struct.sVString** %string, align 8
  call void @addToScope(%struct.sTokenInfo* %9, %struct.sVString* %11)
  %12 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  %13 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @copyToken(%struct.sTokenInfo* %12, %struct.sTokenInfo* %13)
  %14 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %14)
  %15 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %15, i32 0, i32 0
  %16 = load i32, i32* %type, align 8
  %cmp3 = icmp eq i32 %16, 13
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %17 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  call void @makeClassTag(%struct.sTokenInfo* %17)
  %18 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %19 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  %call5 = call zeroext i1 @parseBlock(%struct.sTokenInfo* %18, %struct.sTokenInfo* %19)
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end
  %20 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %scope7 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %20, i32 0, i32 3
  %21 = load %struct.sVString*, %struct.sVString** %scope7, align 8
  %22 = load %struct.sVString*, %struct.sVString** %saveScope, align 8
  call void @vStringCopy(%struct.sVString* %21, %struct.sVString* %22)
  %23 = load i8, i8* %saveIsClass, align 1
  %tobool8 = trunc i8 %23 to i1
  %24 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %isClass9 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %24, i32 0, i32 8
  %frombool10 = zext i1 %tobool8 to i8
  store i8 %frombool10, i8* %isClass9, align 1
  %25 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  call void @deleteToken(%struct.sTokenInfo* %25)
  %26 = load %struct.sVString*, %struct.sVString** %saveScope, align 8
  call void @vStringDelete(%struct.sVString* %26)
  ret i1 true
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @parseVar(%struct.sTokenInfo* %token, i1 zeroext %is_public) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %is_public.addr = alloca i8, align 1
  %name = alloca %struct.sTokenInfo*, align 8
  %secondary_name = alloca %struct.sTokenInfo*, align 8
  %saveScope = alloca %struct.sVString*, align 8
  %is_terminated = alloca i8, align 1
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  %frombool = zext i1 %is_public to i8
  store i8 %frombool, i8* %is_public.addr, align 1
  %call = call %struct.sTokenInfo* @newToken()
  store %struct.sTokenInfo* %call, %struct.sTokenInfo** %name, align 8
  %call1 = call %struct.sTokenInfo* @newToken()
  store %struct.sTokenInfo* %call1, %struct.sTokenInfo** %secondary_name, align 8
  %call2 = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call2, %struct.sVString** %saveScope, align 8
  store i8 1, i8* %is_terminated, align 1
  %0 = load %struct.sVString*, %struct.sVString** %saveScope, align 8
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %scope = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %1, i32 0, i32 3
  %2 = load %struct.sVString*, %struct.sVString** %scope, align 8
  call void @vStringCopy(%struct.sVString* %0, %struct.sVString* %2)
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %3, i32 0, i32 1
  %4 = load i32, i32* %keyword, align 4
  %cmp = icmp eq i32 %4, 5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @copyToken(%struct.sTokenInfo* %6, %struct.sTokenInfo* %7)
  %8 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %8)
  %9 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %9, i32 0, i32 0
  %10 = load i32, i32* %type, align 8
  %cmp3 = icmp eq i32 %10, 5
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  %11 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %11)
  %12 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %12)
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end5
  %13 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type6 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %13, i32 0, i32 0
  %14 = load i32, i32* %type6, align 8
  %cmp7 = icmp eq i32 %14, 4
  br i1 %cmp7, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %15 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type8 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %15, i32 0, i32 0
  %16 = load i32, i32* %type8, align 8
  %cmp9 = icmp eq i32 %16, 1
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %17 = phi i1 [ true, %while.cond ], [ %cmp9, %lor.rhs ]
  %lnot = xor i1 %17, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %18 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %18)
  br label %while.cond

while.end:                                        ; preds = %lor.end
  %19 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type10 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %19, i32 0, i32 0
  %20 = load i32, i32* %type10, align 8
  %cmp11 = icmp eq i32 %20, 4
  br i1 %cmp11, label %if.then12, label %if.end19

if.then12:                                        ; preds = %while.end
  %21 = load i8, i8* %is_public.addr, align 1
  %tobool = trunc i8 %21 to i1
  br i1 %tobool, label %if.then13, label %if.end18

if.then13:                                        ; preds = %if.then12
  %22 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type14 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %22, i32 0, i32 0
  %23 = load i32, i32* %type14, align 8
  %cmp15 = icmp eq i32 %23, 4
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.then13
  %24 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  call void @makeFlexTag(%struct.sTokenInfo* %24, i32 4)
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.then13
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then12
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %while.end
  %25 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %scope20 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %25, i32 0, i32 3
  %26 = load %struct.sVString*, %struct.sVString** %scope20, align 8
  %27 = load %struct.sVString*, %struct.sVString** %saveScope, align 8
  call void @vStringCopy(%struct.sVString* %26, %struct.sVString* %27)
  %28 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  call void @deleteToken(%struct.sTokenInfo* %28)
  %29 = load %struct.sTokenInfo*, %struct.sTokenInfo** %secondary_name, align 8
  call void @deleteToken(%struct.sTokenInfo* %29)
  %30 = load %struct.sVString*, %struct.sVString** %saveScope, align 8
  call void @vStringDelete(%struct.sVString* %30)
  %31 = load i8, i8* %is_terminated, align 1
  %tobool21 = trunc i8 %31 to i1
  ret i1 %tobool21
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @addContext(%struct.sTokenInfo* %parent, %struct.sTokenInfo* %child) #0 {
entry:
  %parent.addr = alloca %struct.sTokenInfo*, align 8
  %child.addr = alloca %struct.sTokenInfo*, align 8
  store %struct.sTokenInfo* %parent, %struct.sTokenInfo** %parent.addr, align 8
  store %struct.sTokenInfo* %child, %struct.sTokenInfo** %child.addr, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %parent.addr, align 8
  %string = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 2
  %1 = load %struct.sVString*, %struct.sVString** %string, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %1, i32 0, i32 0
  %2 = load i64, i64* %length, align 8
  %cmp = icmp ugt i64 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %parent.addr, align 8
  %string1 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %3, i32 0, i32 2
  %4 = load %struct.sVString*, %struct.sVString** %string1, align 8
  call void @vStringPut(%struct.sVString* %4, i32 46)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.sTokenInfo*, %struct.sTokenInfo** %parent.addr, align 8
  %string2 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %5, i32 0, i32 2
  %6 = load %struct.sVString*, %struct.sVString** %string2, align 8
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %child.addr, align 8
  %string3 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %7, i32 0, i32 2
  %8 = load %struct.sVString*, %struct.sVString** %string3, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %8, i32 0, i32 2
  %9 = load i8*, i8** %buffer, align 8
  call void @vStringCatS(%struct.sVString* %6, i8* %9)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @makeClassTag(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %fulltag = alloca %struct.sVString*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %ignoreTag = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 7
  %1 = load i8, i8* %ignoreTag, align 4
  %tobool = trunc i8 %1 to i1
  br i1 %tobool, label %if.end9, label %if.then

if.then:                                          ; preds = %entry
  %call = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call, %struct.sVString** %fulltag, align 8
  %2 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %scope = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %2, i32 0, i32 3
  %3 = load %struct.sVString*, %struct.sVString** %scope, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %3, i32 0, i32 0
  %4 = load i64, i64* %length, align 8
  %cmp = icmp ugt i64 %4, 0
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.then
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
  br label %if.end

if.else:                                          ; preds = %if.then
  %13 = load %struct.sVString*, %struct.sVString** %fulltag, align 8
  %14 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string3 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %14, i32 0, i32 2
  %15 = load %struct.sVString*, %struct.sVString** %string3, align 8
  call void @vStringCopy(%struct.sVString* %13, %struct.sVString* %15)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then1
  %16 = load %struct.sPtrArray*, %struct.sPtrArray** @ClassNames, align 8
  %17 = load %struct.sVString*, %struct.sVString** %fulltag, align 8
  %buffer4 = getelementptr inbounds %struct.sVString, %struct.sVString* %17, i32 0, i32 2
  %18 = load i8*, i8** %buffer4, align 8
  %call5 = call zeroext i1 @stringListHas(%struct.sPtrArray* %16, i8* %18)
  br i1 %call5, label %if.end8, label %if.then6

if.then6:                                         ; preds = %if.end
  %19 = load %struct.sPtrArray*, %struct.sPtrArray** @ClassNames, align 8
  %20 = load %struct.sVString*, %struct.sVString** %fulltag, align 8
  %call7 = call %struct.sVString* @vStringNewCopy(%struct.sVString* %20)
  call void @stringListAdd(%struct.sPtrArray* %19, %struct.sVString* %call7)
  %21 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @makeFlexTag(%struct.sTokenInfo* %21, i32 1)
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end
  %22 = load %struct.sVString*, %struct.sVString** %fulltag, align 8
  call void @vStringDelete(%struct.sVString* %22)
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseMethods(%struct.sTokenInfo* %token, %struct.sTokenInfo* %class) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %class.addr = alloca %struct.sTokenInfo*, align 8
  %name = alloca %struct.sTokenInfo*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  store %struct.sTokenInfo* %class, %struct.sTokenInfo** %class.addr, align 8
  %call = call %struct.sTokenInfo* @newToken()
  store %struct.sTokenInfo* %call, %struct.sTokenInfo** %name, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %0)
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %1, i32 0, i32 0
  %2 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %2, 11
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %3, i32 0, i32 1
  %4 = load i32, i32* %keyword, align 4
  %cmp1 = icmp eq i32 %4, -1
  br i1 %cmp1, label %if.then, label %if.end19

if.then:                                          ; preds = %lor.lhs.false, %do.body
  %5 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  %6 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @copyToken(%struct.sTokenInfo* %5, %struct.sTokenInfo* %6)
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %7)
  %8 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type2 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %8, i32 0, i32 0
  %9 = load i32, i32* %type2, align 8
  %cmp3 = icmp eq i32 %9, 5
  br i1 %cmp3, label %if.then4, label %if.end18

if.then4:                                         ; preds = %if.then
  %10 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %10)
  %11 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword5 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %11, i32 0, i32 1
  %12 = load i32, i32* %keyword5, align 4
  %cmp6 = icmp eq i32 %12, 0
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.then4
  %13 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %13)
  %14 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type8 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %14, i32 0, i32 0
  %15 = load i32, i32* %type8, align 8
  %cmp9 = icmp eq i32 %15, 8
  br i1 %cmp9, label %if.then10, label %if.end

if.then10:                                        ; preds = %if.then7
  %16 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @skipArgumentList(%struct.sTokenInfo* %16)
  br label %if.end

if.end:                                           ; preds = %if.then10, %if.then7
  %17 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type11 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %17, i32 0, i32 0
  %18 = load i32, i32* %type11, align 8
  %cmp12 = icmp eq i32 %18, 13
  br i1 %cmp12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end
  %19 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  %20 = load %struct.sTokenInfo*, %struct.sTokenInfo** %class.addr, align 8
  %string = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %20, i32 0, i32 2
  %21 = load %struct.sVString*, %struct.sVString** %string, align 8
  call void @addToScope(%struct.sTokenInfo* %19, %struct.sVString* %21)
  %22 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  call void @makeFlexTag(%struct.sTokenInfo* %22, i32 2)
  %23 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %24 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  %call14 = call zeroext i1 @parseBlock(%struct.sTokenInfo* %23, %struct.sTokenInfo* %24)
  %25 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %25)
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end
  br label %if.end17

if.else:                                          ; preds = %if.then4
  %26 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  %27 = load %struct.sTokenInfo*, %struct.sTokenInfo** %class.addr, align 8
  %string16 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %27, i32 0, i32 2
  %28 = load %struct.sVString*, %struct.sVString** %string16, align 8
  call void @addToScope(%struct.sTokenInfo* %26, %struct.sVString* %28)
  %29 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  call void @makeFlexTag(%struct.sTokenInfo* %29, i32 3)
  %30 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %30)
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end15
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %lor.lhs.false
  %31 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type20 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %31, i32 0, i32 0
  %32 = load i32, i32* %type20, align 8
  %cmp21 = icmp eq i32 %32, 1
  br i1 %cmp21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end19
  br label %cleanUp

if.end23:                                         ; preds = %if.end19
  br label %do.cond

do.cond:                                          ; preds = %if.end23
  %33 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type24 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %33, i32 0, i32 0
  %34 = load i32, i32* %type24, align 8
  %cmp25 = icmp eq i32 %34, 6
  br i1 %cmp25, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %35 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @findCmdTerm(%struct.sTokenInfo* %35)
  br label %cleanUp

cleanUp:                                          ; preds = %do.end, %if.then22
  %36 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  call void @deleteToken(%struct.sTokenInfo* %36)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @skipArrayList(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %nest_level = alloca i32, align 4
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  store i32 0, i32* %nest_level, align 4
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 0
  %1 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %1, 18
  br i1 %cmp, label %if.then, label %if.end17

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %nest_level, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %nest_level, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end16, %if.then
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type1 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %3, i32 0, i32 0
  %4 = load i32, i32* %type1, align 8
  %cmp2 = icmp eq i32 %4, 19
  br i1 %cmp2, label %land.lhs.true, label %lor.rhs

land.lhs.true:                                    ; preds = %while.cond
  %5 = load i32, i32* %nest_level, align 4
  %cmp3 = icmp eq i32 %5, 0
  br i1 %cmp3, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true, %while.cond
  %6 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type4 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %6, i32 0, i32 0
  %7 = load i32, i32* %type4, align 8
  %cmp5 = icmp eq i32 %7, 1
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.lhs.true
  %8 = phi i1 [ true, %land.lhs.true ], [ %cmp5, %lor.rhs ]
  %lnot = xor i1 %8, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %9 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %9)
  %10 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type6 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %10, i32 0, i32 0
  %11 = load i32, i32* %type6, align 8
  %cmp7 = icmp eq i32 %11, 18
  br i1 %cmp7, label %if.then8, label %if.end

if.then8:                                         ; preds = %while.body
  %12 = load i32, i32* %nest_level, align 4
  %inc9 = add nsw i32 %12, 1
  store i32 %inc9, i32* %nest_level, align 4
  br label %if.end

if.end:                                           ; preds = %if.then8, %while.body
  %13 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type10 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %13, i32 0, i32 0
  %14 = load i32, i32* %type10, align 8
  %cmp11 = icmp eq i32 %14, 19
  br i1 %cmp11, label %if.then12, label %if.end16

if.then12:                                        ; preds = %if.end
  %15 = load i32, i32* %nest_level, align 4
  %cmp13 = icmp sgt i32 %15, 0
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.then12
  %16 = load i32, i32* %nest_level, align 4
  %dec = add nsw i32 %16, -1
  store i32 %dec, i32* %nest_level, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.then12
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.end
  br label %while.cond

while.end:                                        ; preds = %lor.end
  %17 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %17)
  br label %if.end17

if.end17:                                         ; preds = %while.end, %entry
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
