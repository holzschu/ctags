; ModuleID = 'jscript.c'
source_filename = "jscript.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-ios11.0.0"

%struct.sKindDefinition = type { i8, i8, i8*, i8*, i8, i32, %struct.sRoleDesc*, %struct.sScopeSeparator*, i32, i32, i32, %struct.sKindDefinition*, %struct.sKindDefinition* }
%struct.sRoleDesc = type { i8, i8*, i8* }
%struct.sScopeSeparator = type { i32, i8* }
%struct.keywordTable = type { i8*, i32 }
%struct.sObjPool = type opaque
%struct.sTokenInfo = type { i32, i32, %struct.sVString*, %struct.sVString*, i64, %struct._MIOPos, i32, i8 }
%struct.sVString = type { i64, i64, i8* }
%struct._MIOPos = type { i32, %union.anon.0 }
%union.anon.0 = type { i64 }
%struct.sPtrArray = type opaque
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

@.str = private unnamed_addr constant [11 x i8] c"JavaScript\00", align 1
@extensions = internal constant [3 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* null], align 8
@aliases = internal constant [6 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i8* null], align 8
@JsKinds = internal global [7 x %struct.sKindDefinition] [%struct.sKindDefinition { i8 1, i8 102, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 99, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 109, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 112, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 67, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 118, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 103, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }], align 8
@JsKeywordTable = internal constant [26 x %struct.keywordTable] [%struct.keywordTable { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i32 0 }, %struct.keywordTable { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), i32 1 }, %struct.keywordTable { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i32 0, i32 0), i32 2 }, %struct.keywordTable { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i32 0, i32 0), i32 3 }, %struct.keywordTable { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i32 4 }, %struct.keywordTable { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i32 0, i32 0), i32 5 }, %struct.keywordTable { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), i32 6 }, %struct.keywordTable { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i32 0, i32 0), i32 7 }, %struct.keywordTable { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0), i32 8 }, %struct.keywordTable { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i32 0, i32 0), i32 9 }, %struct.keywordTable { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0), i32 10 }, %struct.keywordTable { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i32 0, i32 0), i32 11 }, %struct.keywordTable { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i32 0, i32 0), i32 12 }, %struct.keywordTable { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i32 0, i32 0), i32 13 }, %struct.keywordTable { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0), i32 14 }, %struct.keywordTable { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i32 0, i32 0), i32 15 }, %struct.keywordTable { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i32 0, i32 0), i32 16 }, %struct.keywordTable { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i32 0, i32 0), i32 17 }, %struct.keywordTable { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i32 0, i32 0), i32 18 }, %struct.keywordTable { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i32 0, i32 0), i32 19 }, %struct.keywordTable { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i32 20 }, %struct.keywordTable { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i32 0, i32 0), i32 21 }, %struct.keywordTable { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i32 0, i32 0), i32 22 }, %struct.keywordTable { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i32 0, i32 0), i32 23 }, %struct.keywordTable { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i32 0, i32 0), i32 24 }, %struct.keywordTable { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i32 0, i32 0), i32 25 }], align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"js\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"jsx\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"node\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"nodejs\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"seed\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"gjs\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"function\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"functions\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"class\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"classes\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"method\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"methods\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"properties\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"constant\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"constants\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"variable\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"global variables\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"generator\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"generators\00", align 1
@TokenPool = internal global %struct.sObjPool* null, align 8
@NextToken = internal global %struct.sTokenInfo* null, align 8
@ClassNames = internal global %struct.sPtrArray* null, align 8
@FunctionNames = internal global %struct.sPtrArray* null, align 8
@LastTokenType = internal global i32 0, align 4
@Lang_js = internal global i32 0, align 4
@.str.21 = private unnamed_addr constant [18 x i8] c"AnonymousFunction\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"AnonymousClass\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"Function\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"Object\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"prototype\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"var\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"let\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"const\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"for\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"while\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"do\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"if\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"else\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"switch\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"try\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"catch\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"finally\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"sap\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"return\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"extends\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"static\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"export\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"async\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sParserDefinition* @JavaScriptParser() #0 {
entry:
  %def = alloca %struct.sParserDefinition*, align 8
  %call = call %struct.sParserDefinition* @parserNew(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store %struct.sParserDefinition* %call, %struct.sParserDefinition** %def, align 8
  %0 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %extensions = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %0, i32 0, i32 3
  store i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @extensions, i64 0, i64 0), i8*** %extensions, align 8
  %1 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %aliases = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %1, i32 0, i32 5
  store i8** getelementptr inbounds ([6 x i8*], [6 x i8*]* @aliases, i64 0, i64 0), i8*** %aliases, align 8
  %2 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %2, i32 0, i32 1
  store %struct.sKindDefinition* getelementptr inbounds ([7 x %struct.sKindDefinition], [7 x %struct.sKindDefinition]* @JsKinds, i64 0, i64 0), %struct.sKindDefinition** %kindTable, align 8
  %3 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %3, i32 0, i32 2
  store i32 7, i32* %kindCount, align 8
  %4 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %parser = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %4, i32 0, i32 8
  store void ()* @findJsTags, void ()** %parser, align 8
  %5 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %initialize = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %5, i32 0, i32 6
  store void (i32)* @initialize, void (i32)** %initialize, align 8
  %6 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %finalize = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %6, i32 0, i32 7
  store void (i32, i1)* @finalize, void (i32, i1)** %finalize, align 8
  %7 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %keywordTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %7, i32 0, i32 18
  store %struct.keywordTable* getelementptr inbounds ([26 x %struct.keywordTable], [26 x %struct.keywordTable]* @JsKeywordTable, i64 0, i64 0), %struct.keywordTable** %keywordTable, align 8
  %8 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %keywordCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %8, i32 0, i32 19
  store i32 26, i32* %keywordCount, align 8
  %9 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  ret %struct.sParserDefinition* %9
}

declare %struct.sParserDefinition* @parserNew(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @findJsTags() #0 {
entry:
  %token = alloca %struct.sTokenInfo*, align 8
  %0 = load %struct.sObjPool*, %struct.sObjPool** @TokenPool, align 8
  %call = call i8* @objPoolGet(%struct.sObjPool* %0)
  %1 = bitcast i8* %call to %struct.sTokenInfo*
  store %struct.sTokenInfo* %1, %struct.sTokenInfo** %token, align 8
  store %struct.sTokenInfo* null, %struct.sTokenInfo** @NextToken, align 8
  %call1 = call %struct.sPtrArray* @stringListNew()
  store %struct.sPtrArray* %call1, %struct.sPtrArray** @ClassNames, align 8
  %call2 = call %struct.sPtrArray* @stringListNew()
  store %struct.sPtrArray* %call2, %struct.sPtrArray** @FunctionNames, align 8
  store i32 0, i32* @LastTokenType, align 4
  %2 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  call void @parseJsFile(%struct.sTokenInfo* %2)
  %3 = load %struct.sPtrArray*, %struct.sPtrArray** @ClassNames, align 8
  call void @stringListDelete(%struct.sPtrArray* %3)
  %4 = load %struct.sPtrArray*, %struct.sPtrArray** @FunctionNames, align 8
  call void @stringListDelete(%struct.sPtrArray* %4)
  store %struct.sPtrArray* null, %struct.sPtrArray** @ClassNames, align 8
  store %struct.sPtrArray* null, %struct.sPtrArray** @FunctionNames, align 8
  %5 = load %struct.sObjPool*, %struct.sObjPool** @TokenPool, align 8
  %6 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %7 = bitcast %struct.sTokenInfo* %6 to i8*
  call void @objPoolPut(%struct.sObjPool* %5, i8* %7)
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
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
  store i32 %0, i32* @Lang_js, align 4
  %call = call %struct.sObjPool* @objPoolNew(i32 16, i8* (i8*)* @newPoolToken, void (i8*)* @deletePoolToken, void (i8*)* @clearPoolToken, i8* null)
  store %struct.sObjPool* %call, %struct.sObjPool** @TokenPool, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @finalize(i32 %language, i1 zeroext %initialized) #0 {
entry:
  %language.addr = alloca i32, align 4
  %initialized.addr = alloca i8, align 1
  store i32 %language, i32* %language.addr, align 4
  %frombool = zext i1 %initialized to i8
  store i8 %frombool, i8* %initialized.addr, align 1
  %0 = load i8, i8* %initialized.addr, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.sObjPool*, %struct.sObjPool** @TokenPool, align 8
  call void @objPoolDelete(%struct.sObjPool* %1)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare i8* @objPoolGet(%struct.sObjPool*) #1

declare %struct.sPtrArray* @stringListNew() #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseJsFile(%struct.sTokenInfo* %token) #0 {
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
  %cmp = icmp eq i32 %2, 7
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %do.body1
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %3, i32 0, i32 1
  %4 = load i32, i32* %keyword, align 4
  %cmp2 = icmp eq i32 %4, 18
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @parseUI5(%struct.sTokenInfo* %5)
  br label %if.end12

if.else:                                          ; preds = %land.lhs.true, %do.body1
  %6 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type3 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %6, i32 0, i32 0
  %7 = load i32, i32* %type3, align 8
  %cmp4 = icmp eq i32 %7, 7
  br i1 %cmp4, label %land.lhs.true5, label %if.else11

land.lhs.true5:                                   ; preds = %if.else
  %8 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword6 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %8, i32 0, i32 1
  %9 = load i32, i32* %keyword6, align 4
  %cmp7 = icmp eq i32 %9, 24
  br i1 %cmp7, label %if.then10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true5
  %10 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword8 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %10, i32 0, i32 1
  %11 = load i32, i32* %keyword8, align 4
  %cmp9 = icmp eq i32 %11, 23
  br i1 %cmp9, label %if.then10, label %if.else11

if.then10:                                        ; preds = %lor.lhs.false, %land.lhs.true5
  br label %if.end

if.else11:                                        ; preds = %lor.lhs.false, %if.else
  %12 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call = call zeroext i1 @parseLine(%struct.sTokenInfo* %12, i1 zeroext false)
  br label %if.end

if.end:                                           ; preds = %if.else11, %if.then10
  br label %if.end12

if.end12:                                         ; preds = %if.end, %if.then
  br label %do.cond

do.cond:                                          ; preds = %if.end12
  %13 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type13 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %13, i32 0, i32 0
  %14 = load i32, i32* %type13, align 8
  %cmp14 = icmp eq i32 %14, 1
  %lnot = xor i1 %cmp14, true
  br i1 %lnot, label %do.body1, label %do.end15

do.end15:                                         ; preds = %do.cond
  br label %do.body16

do.body16:                                        ; preds = %do.end15
  br label %do.end18

do.end18:                                         ; preds = %do.body16
  ret void
}

declare void @stringListDelete(%struct.sPtrArray*) #1

declare void @objPoolPut(%struct.sObjPool*, i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @readToken(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readTokenFull(%struct.sTokenInfo* %0, i1 zeroext false, %struct.sVString* null)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseUI5(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %name = alloca %struct.sTokenInfo*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  %0 = load %struct.sObjPool*, %struct.sObjPool** @TokenPool, align 8
  %call = call i8* @objPoolGet(%struct.sObjPool* %0)
  %1 = bitcast i8* %call to %struct.sTokenInfo*
  store %struct.sTokenInfo* %1, %struct.sTokenInfo** %name, align 8
  %2 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %2)
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %3, i32 0, i32 0
  %4 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %4, 12
  br i1 %cmp, label %if.then, label %if.end20

if.then:                                          ; preds = %entry
  %5 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %5)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %6 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type1 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %6, i32 0, i32 0
  %7 = load i32, i32* %type1, align 8
  %cmp2 = icmp eq i32 %7, 8
  br i1 %cmp2, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %8 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type3 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %8, i32 0, i32 0
  %9 = load i32, i32* %type3, align 8
  %cmp4 = icmp eq i32 %9, 1
  %lnot = xor i1 %cmp4, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %10 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %10, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %11 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %11)
  br label %while.cond

while.end:                                        ; preds = %land.end
  %12 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %12)
  %13 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type5 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %13, i32 0, i32 0
  %14 = load i32, i32* %type5, align 8
  %cmp6 = icmp eq i32 %14, 10
  br i1 %cmp6, label %if.then7, label %if.end

if.then7:                                         ; preds = %while.end
  %15 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  %16 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @copyToken(%struct.sTokenInfo* %15, %struct.sTokenInfo* %16, i1 zeroext true)
  %17 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %17)
  br label %if.end

if.end:                                           ; preds = %if.then7, %while.end
  %18 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type8 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %18, i32 0, i32 0
  %19 = load i32, i32* %type8, align 8
  %cmp9 = icmp eq i32 %19, 6
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end
  %20 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %20)
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end
  br label %do.body

do.body:                                          ; preds = %land.end19, %if.end11
  %21 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %22 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  %call12 = call zeroext i1 @parseMethods(%struct.sTokenInfo* %21, %struct.sTokenInfo* %22, i1 zeroext false)
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %23 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type13 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %23, i32 0, i32 0
  %24 = load i32, i32* %type13, align 8
  %cmp14 = icmp eq i32 %24, 14
  br i1 %cmp14, label %land.end19, label %land.rhs15

land.rhs15:                                       ; preds = %do.cond
  %25 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type16 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %25, i32 0, i32 0
  %26 = load i32, i32* %type16, align 8
  %cmp17 = icmp eq i32 %26, 1
  %lnot18 = xor i1 %cmp17, true
  br label %land.end19

land.end19:                                       ; preds = %land.rhs15, %do.cond
  %27 = phi i1 [ false, %do.cond ], [ %lnot18, %land.rhs15 ]
  br i1 %27, label %do.body, label %do.end

do.end:                                           ; preds = %land.end19
  br label %if.end20

if.end20:                                         ; preds = %do.end, %entry
  %28 = load %struct.sObjPool*, %struct.sObjPool** @TokenPool, align 8
  %29 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  %30 = bitcast %struct.sTokenInfo* %29 to i8*
  call void @objPoolPut(%struct.sObjPool* %28, i8* %30)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @parseLine(%struct.sTokenInfo* %token, i1 zeroext %is_inside_class) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %is_inside_class.addr = alloca i8, align 1
  %is_terminated = alloca i8, align 1
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  %frombool = zext i1 %is_inside_class to i8
  store i8 %frombool, i8* %is_inside_class.addr, align 1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  store i8 1, i8* %is_terminated, align 1
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 0
  %1 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %1, 7
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.end
  %2 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %2, i32 0, i32 1
  %3 = load i32, i32* %keyword, align 4
  switch i32 %3, label %sw.default [
    i32 9, label %sw.bb
    i32 10, label %sw.bb
    i32 11, label %sw.bb
    i32 12, label %sw.bb2
    i32 13, label %sw.bb2
    i32 15, label %sw.bb2
    i32 16, label %sw.bb2
    i32 17, label %sw.bb2
    i32 14, label %sw.bb5
    i32 19, label %sw.bb6
    i32 25, label %sw.bb6
    i32 0, label %sw.bb9
    i32 20, label %sw.bb10
  ]

sw.bb:                                            ; preds = %if.then, %if.then, %if.then
  %4 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call = call zeroext i1 @parseLoop(%struct.sTokenInfo* %4)
  %frombool1 = zext i1 %call to i8
  store i8 %frombool1, i8* %is_terminated, align 1
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.then, %if.then, %if.then, %if.then, %if.then
  %5 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call3 = call zeroext i1 @parseIf(%struct.sTokenInfo* %5)
  %frombool4 = zext i1 %call3 to i8
  store i8 %frombool4, i8* %is_terminated, align 1
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.then
  %6 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @parseSwitch(%struct.sTokenInfo* %6)
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.then, %if.then
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %7)
  %8 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %9 = load i8, i8* %is_inside_class.addr, align 1
  %tobool = trunc i8 %9 to i1
  %call7 = call zeroext i1 @parseLine(%struct.sTokenInfo* %8, i1 zeroext %tobool)
  %frombool8 = zext i1 %call7 to i8
  store i8 %frombool8, i8* %is_terminated, align 1
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.then
  %10 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @parseFunction(%struct.sTokenInfo* %10)
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.then
  %11 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call11 = call zeroext i1 @parseES6Class(%struct.sTokenInfo* %11, %struct.sTokenInfo* null)
  %frombool12 = zext i1 %call11 to i8
  store i8 %frombool12, i8* %is_terminated, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %if.then
  %12 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %13 = load i8, i8* %is_inside_class.addr, align 1
  %tobool13 = trunc i8 %13 to i1
  %call14 = call zeroext i1 @parseStatement(%struct.sTokenInfo* %12, i1 zeroext %tobool13)
  %frombool15 = zext i1 %call14 to i8
  store i8 %frombool15, i8* %is_terminated, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb10, %sw.bb9, %sw.bb6, %sw.bb5, %sw.bb2, %sw.bb
  br label %if.end

if.else:                                          ; preds = %do.end
  %14 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %15 = load i8, i8* %is_inside_class.addr, align 1
  %tobool16 = trunc i8 %15 to i1
  %call17 = call zeroext i1 @parseStatement(%struct.sTokenInfo* %14, i1 zeroext %tobool16)
  %frombool18 = zext i1 %call17 to i8
  store i8 %frombool18, i8* %is_terminated, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %sw.epilog
  br label %do.body19

do.body19:                                        ; preds = %if.end
  br label %do.end20

do.end20:                                         ; preds = %do.body19
  %16 = load i8, i8* %is_terminated, align 1
  %tobool21 = trunc i8 %16 to i1
  ret i1 %tobool21
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @readTokenFull(%struct.sTokenInfo* %token, i1 zeroext %include_newlines, %struct.sVString* %repr) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %include_newlines.addr = alloca i8, align 1
  %repr.addr = alloca %struct.sVString*, align 8
  %c = alloca i32, align 4
  %i = alloca i32, align 4
  %newline_encountered = alloca i8, align 1
  %vStringClear_s = alloca %struct.sVString*, align 8
  %tmp = alloca %struct._MIOPos, align 8
  %d = alloca i32, align 4
  %tmp63 = alloca %struct._MIOPos, align 8
  %tmp75 = alloca %struct._MIOPos, align 8
  %tmp95 = alloca %struct._MIOPos, align 8
  %d98 = alloca i32, align 4
  %tmp110 = alloca %struct._MIOPos, align 8
  %tmp177 = alloca %struct._MIOPos, align 8
  %vStringClear_s261 = alloca %struct.sVString*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  %frombool = zext i1 %include_newlines to i8
  store i8 %frombool, i8* %include_newlines.addr, align 1
  store %struct.sVString* %repr, %struct.sVString** %repr.addr, align 8
  store i8 0, i8* %newline_encountered, align 1
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** @NextToken, align 8
  %tobool = icmp ne %struct.sTokenInfo* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %2 = load %struct.sTokenInfo*, %struct.sTokenInfo** @NextToken, align 8
  call void @copyToken(%struct.sTokenInfo* %1, %struct.sTokenInfo* %2, i1 zeroext false)
  %3 = load %struct.sObjPool*, %struct.sObjPool** @TokenPool, align 8
  %4 = load %struct.sTokenInfo*, %struct.sTokenInfo** @NextToken, align 8
  %5 = bitcast %struct.sTokenInfo* %4 to i8*
  call void @objPoolPut(%struct.sObjPool* %3, i8* %5)
  store %struct.sTokenInfo* null, %struct.sTokenInfo** @NextToken, align 8
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %6, i32 0, i32 0
  store i32 0, i32* %type, align 8
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %7, i32 0, i32 1
  store i32 -1, i32* %keyword, align 4
  br label %do.body

do.body:                                          ; preds = %if.end
  %8 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %8, i32 0, i32 2
  %9 = load %struct.sVString*, %struct.sVString** %string, align 8
  store %struct.sVString* %9, %struct.sVString** %vStringClear_s, align 8
  %10 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %10, i32 0, i32 0
  store i64 0, i64* %length, align 8
  %11 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %11, i32 0, i32 2
  %12 = load i8*, i8** %buffer, align 8
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 0
  store i8 0, i8* %arrayidx, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %getNextChar

getNextChar:                                      ; preds = %if.else152, %if.end138, %do.end131, %do.end
  store i32 0, i32* %i, align 4
  br label %do.body1

do.body1:                                         ; preds = %lor.end, %getNextChar
  %call = call i32 @getcFromInputFile()
  store i32 %call, i32* %c, align 4
  %13 = load i8, i8* %include_newlines.addr, align 1
  %tobool2 = trunc i8 %13 to i1
  br i1 %tobool2, label %land.lhs.true, label %if.end5

land.lhs.true:                                    ; preds = %do.body1
  %14 = load i32, i32* %c, align 4
  %cmp = icmp eq i32 %14, 13
  br i1 %cmp, label %if.then4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %15 = load i32, i32* %c, align 4
  %cmp3 = icmp eq i32 %15, 10
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %lor.lhs.false, %land.lhs.true
  store i8 1, i8* %newline_encountered, align 1
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %lor.lhs.false, %do.body1
  %16 = load i32, i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.end5
  %17 = load i32, i32* %c, align 4
  %cmp6 = icmp eq i32 %17, 9
  br i1 %cmp6, label %lor.end, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %do.cond
  %18 = load i32, i32* %c, align 4
  %cmp8 = icmp eq i32 %18, 32
  br i1 %cmp8, label %lor.end, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false7
  %19 = load i32, i32* %c, align 4
  %cmp10 = icmp eq i32 %19, 13
  br i1 %cmp10, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false9
  %20 = load i32, i32* %c, align 4
  %cmp11 = icmp eq i32 %20, 10
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false9, %lor.lhs.false7, %do.cond
  %21 = phi i1 [ true, %lor.lhs.false9 ], [ true, %lor.lhs.false7 ], [ true, %do.cond ], [ %cmp11, %lor.rhs ]
  br i1 %21, label %do.body1, label %do.end12

do.end12:                                         ; preds = %lor.end
  %call13 = call i64 @getInputLineNumber()
  %22 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %lineNumber = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %22, i32 0, i32 4
  store i64 %call13, i64* %lineNumber, align 8
  %23 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %filePosition = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %23, i32 0, i32 5
  %call14 = call [2 x i64] @getInputFilePosition()
  %24 = bitcast %struct._MIOPos* %tmp to [2 x i64]*
  store [2 x i64] %call14, [2 x i64]* %24, align 8
  %25 = bitcast %struct._MIOPos* %filePosition to i8*
  %26 = bitcast %struct._MIOPos* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 8 %26, i64 16, i1 false)
  %27 = load %struct.sVString*, %struct.sVString** %repr.addr, align 8
  %tobool15 = icmp ne %struct.sVString* %27, null
  br i1 %tobool15, label %land.lhs.true16, label %if.end22

land.lhs.true16:                                  ; preds = %do.end12
  %28 = load i32, i32* %c, align 4
  %cmp17 = icmp ne i32 %28, -1
  br i1 %cmp17, label %if.then18, label %if.end22

if.then18:                                        ; preds = %land.lhs.true16
  %29 = load i32, i32* %i, align 4
  %cmp19 = icmp sgt i32 %29, 1
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.then18
  %30 = load %struct.sVString*, %struct.sVString** %repr.addr, align 8
  call void @vStringPut(%struct.sVString* %30, i32 32)
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.then18
  %31 = load %struct.sVString*, %struct.sVString** %repr.addr, align 8
  %32 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %31, i32 %32)
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %land.lhs.true16, %do.end12
  %33 = load i32, i32* %c, align 4
  switch i32 %33, label %sw.default156 [
    i32 -1, label %sw.bb
    i32 40, label %sw.bb24
    i32 41, label %sw.bb26
    i32 59, label %sw.bb28
    i32 44, label %sw.bb30
    i32 46, label %sw.bb32
    i32 58, label %sw.bb34
    i32 123, label %sw.bb36
    i32 125, label %sw.bb38
    i32 61, label %sw.bb40
    i32 91, label %sw.bb42
    i32 93, label %sw.bb44
    i32 43, label %sw.bb46
    i32 45, label %sw.bb46
    i32 42, label %sw.bb53
    i32 37, label %sw.bb55
    i32 63, label %sw.bb55
    i32 62, label %sw.bb55
    i32 60, label %sw.bb55
    i32 94, label %sw.bb55
    i32 124, label %sw.bb55
    i32 38, label %sw.bb55
    i32 39, label %sw.bb57
    i32 34, label %sw.bb57
    i32 96, label %sw.bb69
    i32 92, label %sw.bb81
    i32 47, label %sw.bb97
    i32 35, label %sw.bb142
  ]

sw.bb:                                            ; preds = %if.end22
  %34 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type23 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %34, i32 0, i32 0
  store i32 1, i32* %type23, align 8
  br label %sw.epilog200

sw.bb24:                                          ; preds = %if.end22
  %35 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type25 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %35, i32 0, i32 0
  store i32 8, i32* %type25, align 8
  br label %sw.epilog200

sw.bb26:                                          ; preds = %if.end22
  %36 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type27 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %36, i32 0, i32 0
  store i32 3, i32* %type27, align 8
  br label %sw.epilog200

sw.bb28:                                          ; preds = %if.end22
  %37 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type29 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %37, i32 0, i32 0
  store i32 4, i32* %type29, align 8
  br label %sw.epilog200

sw.bb30:                                          ; preds = %if.end22
  %38 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type31 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %38, i32 0, i32 0
  store i32 6, i32* %type31, align 8
  br label %sw.epilog200

sw.bb32:                                          ; preds = %if.end22
  %39 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type33 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %39, i32 0, i32 0
  store i32 12, i32* %type33, align 8
  br label %sw.epilog200

sw.bb34:                                          ; preds = %if.end22
  %40 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type35 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %40, i32 0, i32 0
  store i32 5, i32* %type35, align 8
  br label %sw.epilog200

sw.bb36:                                          ; preds = %if.end22
  %41 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type37 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %41, i32 0, i32 0
  store i32 13, i32* %type37, align 8
  br label %sw.epilog200

sw.bb38:                                          ; preds = %if.end22
  %42 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type39 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %42, i32 0, i32 0
  store i32 14, i32* %type39, align 8
  br label %sw.epilog200

sw.bb40:                                          ; preds = %if.end22
  %43 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type41 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %43, i32 0, i32 0
  store i32 15, i32* %type41, align 8
  br label %sw.epilog200

sw.bb42:                                          ; preds = %if.end22
  %44 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type43 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %44, i32 0, i32 0
  store i32 16, i32* %type43, align 8
  br label %sw.epilog200

sw.bb44:                                          ; preds = %if.end22
  %45 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type45 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %45, i32 0, i32 0
  store i32 17, i32* %type45, align 8
  br label %sw.epilog200

sw.bb46:                                          ; preds = %if.end22, %if.end22
  %call47 = call i32 @getcFromInputFile()
  store i32 %call47, i32* %d, align 4
  %46 = load i32, i32* %d, align 4
  %47 = load i32, i32* %c, align 4
  %cmp48 = icmp eq i32 %46, %47
  br i1 %cmp48, label %if.then49, label %if.else

if.then49:                                        ; preds = %sw.bb46
  %48 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type50 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %48, i32 0, i32 0
  store i32 19, i32* %type50, align 8
  br label %if.end52

if.else:                                          ; preds = %sw.bb46
  %49 = load i32, i32* %d, align 4
  call void @ungetcToInputFile(i32 %49)
  %50 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type51 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %50, i32 0, i32 0
  store i32 21, i32* %type51, align 8
  br label %if.end52

if.end52:                                         ; preds = %if.else, %if.then49
  br label %sw.epilog200

sw.bb53:                                          ; preds = %if.end22
  %51 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type54 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %51, i32 0, i32 0
  store i32 20, i32* %type54, align 8
  br label %sw.epilog200

sw.bb55:                                          ; preds = %if.end22, %if.end22, %if.end22, %if.end22, %if.end22, %if.end22, %if.end22
  %52 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type56 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %52, i32 0, i32 0
  store i32 21, i32* %type56, align 8
  br label %sw.epilog200

sw.bb57:                                          ; preds = %if.end22, %if.end22
  %53 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type58 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %53, i32 0, i32 0
  store i32 10, i32* %type58, align 8
  %54 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string59 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %54, i32 0, i32 2
  %55 = load %struct.sVString*, %struct.sVString** %string59, align 8
  %56 = load i32, i32* %c, align 4
  call void @parseString(%struct.sVString* %55, i32 %56)
  %call60 = call i64 @getInputLineNumber()
  %57 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %lineNumber61 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %57, i32 0, i32 4
  store i64 %call60, i64* %lineNumber61, align 8
  %58 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %filePosition62 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %58, i32 0, i32 5
  %call64 = call [2 x i64] @getInputFilePosition()
  %59 = bitcast %struct._MIOPos* %tmp63 to [2 x i64]*
  store [2 x i64] %call64, [2 x i64]* %59, align 8
  %60 = bitcast %struct._MIOPos* %filePosition62 to i8*
  %61 = bitcast %struct._MIOPos* %tmp63 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %60, i8* align 8 %61, i64 16, i1 false)
  %62 = load %struct.sVString*, %struct.sVString** %repr.addr, align 8
  %tobool65 = icmp ne %struct.sVString* %62, null
  br i1 %tobool65, label %if.then66, label %if.end68

if.then66:                                        ; preds = %sw.bb57
  %63 = load %struct.sVString*, %struct.sVString** %repr.addr, align 8
  %64 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string67 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %64, i32 0, i32 2
  %65 = load %struct.sVString*, %struct.sVString** %string67, align 8
  call void @vStringCat(%struct.sVString* %63, %struct.sVString* %65)
  %66 = load %struct.sVString*, %struct.sVString** %repr.addr, align 8
  %67 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %66, i32 %67)
  br label %if.end68

if.end68:                                         ; preds = %if.then66, %sw.bb57
  br label %sw.epilog200

sw.bb69:                                          ; preds = %if.end22
  %68 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type70 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %68, i32 0, i32 0
  store i32 11, i32* %type70, align 8
  %69 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string71 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %69, i32 0, i32 2
  %70 = load %struct.sVString*, %struct.sVString** %string71, align 8
  call void @parseTemplateString(%struct.sVString* %70)
  %call72 = call i64 @getInputLineNumber()
  %71 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %lineNumber73 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %71, i32 0, i32 4
  store i64 %call72, i64* %lineNumber73, align 8
  %72 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %filePosition74 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %72, i32 0, i32 5
  %call76 = call [2 x i64] @getInputFilePosition()
  %73 = bitcast %struct._MIOPos* %tmp75 to [2 x i64]*
  store [2 x i64] %call76, [2 x i64]* %73, align 8
  %74 = bitcast %struct._MIOPos* %filePosition74 to i8*
  %75 = bitcast %struct._MIOPos* %tmp75 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %74, i8* align 8 %75, i64 16, i1 false)
  %76 = load %struct.sVString*, %struct.sVString** %repr.addr, align 8
  %tobool77 = icmp ne %struct.sVString* %76, null
  br i1 %tobool77, label %if.then78, label %if.end80

if.then78:                                        ; preds = %sw.bb69
  %77 = load %struct.sVString*, %struct.sVString** %repr.addr, align 8
  %78 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string79 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %78, i32 0, i32 2
  %79 = load %struct.sVString*, %struct.sVString** %string79, align 8
  call void @vStringCat(%struct.sVString* %77, %struct.sVString* %79)
  %80 = load %struct.sVString*, %struct.sVString** %repr.addr, align 8
  %81 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %80, i32 %81)
  br label %if.end80

if.end80:                                         ; preds = %if.then78, %sw.bb69
  br label %sw.epilog200

sw.bb81:                                          ; preds = %if.end22
  %call82 = call i32 @getcFromInputFile()
  store i32 %call82, i32* %c, align 4
  %82 = load i32, i32* %c, align 4
  %cmp83 = icmp ne i32 %82, 92
  br i1 %cmp83, label %land.lhs.true84, label %if.end90

land.lhs.true84:                                  ; preds = %sw.bb81
  %83 = load i32, i32* %c, align 4
  %cmp85 = icmp ne i32 %83, 34
  br i1 %cmp85, label %land.lhs.true86, label %if.end90

land.lhs.true86:                                  ; preds = %land.lhs.true84
  %84 = load i32, i32* %c, align 4
  %call87 = call i32 @isspace(i32 %84) #4
  %tobool88 = icmp ne i32 %call87, 0
  br i1 %tobool88, label %if.end90, label %if.then89

if.then89:                                        ; preds = %land.lhs.true86
  %85 = load i32, i32* %c, align 4
  call void @ungetcToInputFile(i32 %85)
  br label %if.end90

if.end90:                                         ; preds = %if.then89, %land.lhs.true86, %land.lhs.true84, %sw.bb81
  %86 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type91 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %86, i32 0, i32 0
  store i32 2, i32* %type91, align 8
  %call92 = call i64 @getInputLineNumber()
  %87 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %lineNumber93 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %87, i32 0, i32 4
  store i64 %call92, i64* %lineNumber93, align 8
  %88 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %filePosition94 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %88, i32 0, i32 5
  %call96 = call [2 x i64] @getInputFilePosition()
  %89 = bitcast %struct._MIOPos* %tmp95 to [2 x i64]*
  store [2 x i64] %call96, [2 x i64]* %89, align 8
  %90 = bitcast %struct._MIOPos* %filePosition94 to i8*
  %91 = bitcast %struct._MIOPos* %tmp95 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %90, i8* align 8 %91, i64 16, i1 false)
  br label %sw.epilog200

sw.bb97:                                          ; preds = %if.end22
  %call99 = call i32 @getcFromInputFile()
  store i32 %call99, i32* %d98, align 4
  %92 = load i32, i32* %d98, align 4
  %cmp100 = icmp ne i32 %92, 42
  br i1 %cmp100, label %land.lhs.true101, label %if.else112

land.lhs.true101:                                 ; preds = %sw.bb97
  %93 = load i32, i32* %d98, align 4
  %cmp102 = icmp ne i32 %93, 47
  br i1 %cmp102, label %if.then103, label %if.else112

if.then103:                                       ; preds = %land.lhs.true101
  %94 = load i32, i32* %d98, align 4
  call void @ungetcToInputFile(i32 %94)
  %95 = load i32, i32* @LastTokenType, align 4
  switch i32 %95, label %sw.default [
    i32 2, label %sw.bb104
    i32 9, label %sw.bb104
    i32 10, label %sw.bb104
    i32 11, label %sw.bb104
    i32 14, label %sw.bb104
    i32 3, label %sw.bb104
    i32 17, label %sw.bb104
  ]

sw.bb104:                                         ; preds = %if.then103, %if.then103, %if.then103, %if.then103, %if.then103, %if.then103, %if.then103
  %96 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type105 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %96, i32 0, i32 0
  store i32 21, i32* %type105, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.then103
  %97 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type106 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %97, i32 0, i32 0
  store i32 18, i32* %type106, align 8
  call void @parseRegExp()
  %call107 = call i64 @getInputLineNumber()
  %98 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %lineNumber108 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %98, i32 0, i32 4
  store i64 %call107, i64* %lineNumber108, align 8
  %99 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %filePosition109 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %99, i32 0, i32 5
  %call111 = call [2 x i64] @getInputFilePosition()
  %100 = bitcast %struct._MIOPos* %tmp110 to [2 x i64]*
  store [2 x i64] %call111, [2 x i64]* %100, align 8
  %101 = bitcast %struct._MIOPos* %filePosition109 to i8*
  %102 = bitcast %struct._MIOPos* %tmp110 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %101, i8* align 8 %102, i64 16, i1 false)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb104
  br label %if.end141

if.else112:                                       ; preds = %land.lhs.true101, %sw.bb97
  %103 = load %struct.sVString*, %struct.sVString** %repr.addr, align 8
  %tobool113 = icmp ne %struct.sVString* %103, null
  br i1 %tobool113, label %if.then114, label %if.end118

if.then114:                                       ; preds = %if.else112
  %104 = load %struct.sVString*, %struct.sVString** %repr.addr, align 8
  %buffer115 = getelementptr inbounds %struct.sVString, %struct.sVString* %104, i32 0, i32 2
  %105 = load i8*, i8** %buffer115, align 8
  %106 = load %struct.sVString*, %struct.sVString** %repr.addr, align 8
  %length116 = getelementptr inbounds %struct.sVString, %struct.sVString* %106, i32 0, i32 0
  %107 = load i64, i64* %length116, align 8
  %dec = add i64 %107, -1
  store i64 %dec, i64* %length116, align 8
  %arrayidx117 = getelementptr inbounds i8, i8* %105, i64 %dec
  store i8 0, i8* %arrayidx117, align 1
  br label %if.end118

if.end118:                                        ; preds = %if.then114, %if.else112
  %108 = load i32, i32* %d98, align 4
  %cmp119 = icmp eq i32 %108, 42
  br i1 %cmp119, label %if.then120, label %if.else132

if.then120:                                       ; preds = %if.end118
  br label %do.body121

do.body121:                                       ; preds = %land.end, %if.then120
  %call122 = call i32 @skipToCharacterInInputFile(i32 42)
  %call123 = call i32 @getcFromInputFile()
  store i32 %call123, i32* %c, align 4
  %109 = load i32, i32* %c, align 4
  %cmp124 = icmp eq i32 %109, 47
  br i1 %cmp124, label %if.then125, label %if.else126

if.then125:                                       ; preds = %do.body121
  br label %do.end131

if.else126:                                       ; preds = %do.body121
  %110 = load i32, i32* %c, align 4
  call void @ungetcToInputFile(i32 %110)
  br label %if.end127

if.end127:                                        ; preds = %if.else126
  br label %do.cond128

do.cond128:                                       ; preds = %if.end127
  %111 = load i32, i32* %c, align 4
  %cmp129 = icmp ne i32 %111, -1
  br i1 %cmp129, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond128
  %112 = load i32, i32* %c, align 4
  %cmp130 = icmp ne i32 %112, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond128
  %113 = phi i1 [ false, %do.cond128 ], [ %cmp130, %land.rhs ]
  br i1 %113, label %do.body121, label %do.end131

do.end131:                                        ; preds = %land.end, %if.then125
  br label %getNextChar

if.else132:                                       ; preds = %if.end118
  %114 = load i32, i32* %d98, align 4
  %cmp133 = icmp eq i32 %114, 47
  br i1 %cmp133, label %if.then134, label %if.end139

if.then134:                                       ; preds = %if.else132
  %call135 = call i32 @skipToCharacterInInputFile(i32 10)
  %115 = load i8, i8* %include_newlines.addr, align 1
  %tobool136 = trunc i8 %115 to i1
  br i1 %tobool136, label %if.then137, label %if.end138

if.then137:                                       ; preds = %if.then134
  call void @ungetcToInputFile(i32 10)
  br label %if.end138

if.end138:                                        ; preds = %if.then137, %if.then134
  br label %getNextChar

if.end139:                                        ; preds = %if.else132
  br label %if.end140

if.end140:                                        ; preds = %if.end139
  br label %if.end141

if.end141:                                        ; preds = %if.end140, %sw.epilog
  br label %sw.epilog200

sw.bb142:                                         ; preds = %if.end22
  %116 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %lineNumber143 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %116, i32 0, i32 4
  %117 = load i64, i64* %lineNumber143, align 8
  %cmp144 = icmp ugt i64 %117, 1
  br i1 %cmp144, label %if.then145, label %if.else147

if.then145:                                       ; preds = %sw.bb142
  %118 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type146 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %118, i32 0, i32 0
  store i32 0, i32* %type146, align 8
  br label %if.end155

if.else147:                                       ; preds = %sw.bb142
  %call148 = call i32 @getcFromInputFile()
  store i32 %call148, i32* %c, align 4
  %cmp149 = icmp ne i32 %call148, 33
  br i1 %cmp149, label %if.then150, label %if.else152

if.then150:                                       ; preds = %if.else147
  %119 = load i32, i32* %c, align 4
  call void @ungetcToInputFile(i32 %119)
  %120 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type151 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %120, i32 0, i32 0
  store i32 0, i32* %type151, align 8
  br label %if.end154

if.else152:                                       ; preds = %if.else147
  %call153 = call i32 @skipToCharacterInInputFile(i32 10)
  br label %getNextChar

if.end154:                                        ; preds = %if.then150
  br label %if.end155

if.end155:                                        ; preds = %if.end154, %if.then145
  br label %sw.epilog200

sw.default156:                                    ; preds = %if.end22
  %121 = load i32, i32* %c, align 4
  %call157 = call i32 @isalpha(i32 %121) #4
  %tobool158 = icmp ne i32 %call157, 0
  br i1 %tobool158, label %if.else172, label %lor.lhs.false159

lor.lhs.false159:                                 ; preds = %sw.default156
  %122 = load i32, i32* %c, align 4
  %call160 = call i32 @isdigit(i32 %122) #4
  %tobool161 = icmp ne i32 %call160, 0
  br i1 %tobool161, label %if.else172, label %lor.lhs.false162

lor.lhs.false162:                                 ; preds = %lor.lhs.false159
  %123 = load i32, i32* %c, align 4
  %cmp163 = icmp eq i32 %123, 36
  br i1 %cmp163, label %if.else172, label %lor.lhs.false164

lor.lhs.false164:                                 ; preds = %lor.lhs.false162
  %124 = load i32, i32* %c, align 4
  %cmp165 = icmp eq i32 %124, 64
  br i1 %cmp165, label %if.else172, label %lor.lhs.false166

lor.lhs.false166:                                 ; preds = %lor.lhs.false164
  %125 = load i32, i32* %c, align 4
  %cmp167 = icmp eq i32 %125, 95
  br i1 %cmp167, label %if.else172, label %lor.lhs.false168

lor.lhs.false168:                                 ; preds = %lor.lhs.false166
  %126 = load i32, i32* %c, align 4
  %cmp169 = icmp eq i32 %126, 35
  br i1 %cmp169, label %if.else172, label %if.then170

if.then170:                                       ; preds = %lor.lhs.false168
  %127 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type171 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %127, i32 0, i32 0
  store i32 0, i32* %type171, align 8
  br label %if.end199

if.else172:                                       ; preds = %lor.lhs.false168, %lor.lhs.false166, %lor.lhs.false164, %lor.lhs.false162, %lor.lhs.false159, %sw.default156
  %128 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string173 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %128, i32 0, i32 2
  %129 = load %struct.sVString*, %struct.sVString** %string173, align 8
  %130 = load i32, i32* %c, align 4
  call void @parseIdentifier(%struct.sVString* %129, i32 %130)
  %call174 = call i64 @getInputLineNumber()
  %131 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %lineNumber175 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %131, i32 0, i32 4
  store i64 %call174, i64* %lineNumber175, align 8
  %132 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %filePosition176 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %132, i32 0, i32 5
  %call178 = call [2 x i64] @getInputFilePosition()
  %133 = bitcast %struct._MIOPos* %tmp177 to [2 x i64]*
  store [2 x i64] %call178, [2 x i64]* %133, align 8
  %134 = bitcast %struct._MIOPos* %filePosition176 to i8*
  %135 = bitcast %struct._MIOPos* %tmp177 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %134, i8* align 8 %135, i64 16, i1 false)
  %136 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string179 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %136, i32 0, i32 2
  %137 = load %struct.sVString*, %struct.sVString** %string179, align 8
  %buffer180 = getelementptr inbounds %struct.sVString, %struct.sVString* %137, i32 0, i32 2
  %138 = load i8*, i8** %buffer180, align 8
  %139 = load i32, i32* @Lang_js, align 4
  %call181 = call i32 @lookupKeyword(i8* %138, i32 %139)
  %140 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword182 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %140, i32 0, i32 1
  store i32 %call181, i32* %keyword182, align 4
  %141 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword183 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %141, i32 0, i32 1
  %142 = load i32, i32* %keyword183, align 4
  %cmp184 = icmp eq i32 %142, -1
  br i1 %cmp184, label %if.then185, label %if.else187

if.then185:                                       ; preds = %if.else172
  %143 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type186 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %143, i32 0, i32 0
  store i32 9, i32* %type186, align 8
  br label %if.end189

if.else187:                                       ; preds = %if.else172
  %144 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type188 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %144, i32 0, i32 0
  store i32 7, i32* %type188, align 8
  br label %if.end189

if.end189:                                        ; preds = %if.else187, %if.then185
  %145 = load %struct.sVString*, %struct.sVString** %repr.addr, align 8
  %tobool190 = icmp ne %struct.sVString* %145, null
  br i1 %tobool190, label %land.lhs.true191, label %if.end198

land.lhs.true191:                                 ; preds = %if.end189
  %146 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string192 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %146, i32 0, i32 2
  %147 = load %struct.sVString*, %struct.sVString** %string192, align 8
  %length193 = getelementptr inbounds %struct.sVString, %struct.sVString* %147, i32 0, i32 0
  %148 = load i64, i64* %length193, align 8
  %cmp194 = icmp ugt i64 %148, 1
  br i1 %cmp194, label %if.then195, label %if.end198

if.then195:                                       ; preds = %land.lhs.true191
  %149 = load %struct.sVString*, %struct.sVString** %repr.addr, align 8
  %150 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string196 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %150, i32 0, i32 2
  %151 = load %struct.sVString*, %struct.sVString** %string196, align 8
  %buffer197 = getelementptr inbounds %struct.sVString, %struct.sVString* %151, i32 0, i32 2
  %152 = load i8*, i8** %buffer197, align 8
  %add.ptr = getelementptr inbounds i8, i8* %152, i64 1
  call void @vStringCatS(%struct.sVString* %149, i8* %add.ptr)
  br label %if.end198

if.end198:                                        ; preds = %if.then195, %land.lhs.true191, %if.end189
  br label %if.end199

if.end199:                                        ; preds = %if.end198, %if.then170
  br label %sw.epilog200

sw.epilog200:                                     ; preds = %if.end199, %if.end155, %if.end141, %if.end90, %if.end80, %if.end68, %sw.bb55, %sw.bb53, %if.end52, %sw.bb44, %sw.bb42, %sw.bb40, %sw.bb38, %sw.bb36, %sw.bb34, %sw.bb32, %sw.bb30, %sw.bb28, %sw.bb26, %sw.bb24, %sw.bb
  %153 = load i8, i8* %include_newlines.addr, align 1
  %tobool201 = trunc i8 %153 to i1
  br i1 %tobool201, label %land.lhs.true202, label %if.end273

land.lhs.true202:                                 ; preds = %sw.epilog200
  %154 = load i8, i8* %newline_encountered, align 1
  %tobool203 = trunc i8 %154 to i1
  br i1 %tobool203, label %if.then204, label %if.end273

if.then204:                                       ; preds = %land.lhs.true202
  %155 = load i32, i32* @LastTokenType, align 4
  %cmp205 = icmp eq i32 %155, 4
  br i1 %cmp205, label %if.end272, label %lor.lhs.false206

lor.lhs.false206:                                 ; preds = %if.then204
  %156 = load i32, i32* @LastTokenType, align 4
  %cmp207 = icmp eq i32 %156, 1
  br i1 %cmp207, label %if.end272, label %lor.lhs.false208

lor.lhs.false208:                                 ; preds = %lor.lhs.false206
  %157 = load i32, i32* @LastTokenType, align 4
  %cmp209 = icmp eq i32 %157, 6
  br i1 %cmp209, label %if.end272, label %lor.lhs.false210

lor.lhs.false210:                                 ; preds = %lor.lhs.false208
  %158 = load i32, i32* @LastTokenType, align 4
  %cmp211 = icmp eq i32 %158, 13
  br i1 %cmp211, label %if.end272, label %land.lhs.true212

land.lhs.true212:                                 ; preds = %lor.lhs.false210
  %159 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type213 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %159, i32 0, i32 0
  %160 = load i32, i32* %type213, align 8
  %cmp214 = icmp eq i32 %160, 4
  br i1 %cmp214, label %if.end272, label %lor.lhs.false215

lor.lhs.false215:                                 ; preds = %land.lhs.true212
  %161 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type216 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %161, i32 0, i32 0
  %162 = load i32, i32* %type216, align 8
  %cmp217 = icmp eq i32 %162, 1
  br i1 %cmp217, label %if.end272, label %lor.lhs.false218

lor.lhs.false218:                                 ; preds = %lor.lhs.false215
  %163 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type219 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %163, i32 0, i32 0
  %164 = load i32, i32* %type219, align 8
  %cmp220 = icmp eq i32 %164, 6
  br i1 %cmp220, label %if.end272, label %lor.lhs.false221

lor.lhs.false221:                                 ; preds = %lor.lhs.false218
  %165 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type222 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %165, i32 0, i32 0
  %166 = load i32, i32* %type222, align 8
  %cmp223 = icmp eq i32 %166, 13
  br i1 %cmp223, label %if.end272, label %land.lhs.true224

land.lhs.true224:                                 ; preds = %lor.lhs.false221
  %167 = load i32, i32* @LastTokenType, align 4
  %cmp225 = icmp eq i32 %167, 15
  br i1 %cmp225, label %if.end272, label %lor.lhs.false226

lor.lhs.false226:                                 ; preds = %land.lhs.true224
  %168 = load i32, i32* @LastTokenType, align 4
  %cmp227 = icmp eq i32 %168, 5
  br i1 %cmp227, label %if.end272, label %lor.lhs.false228

lor.lhs.false228:                                 ; preds = %lor.lhs.false226
  %169 = load i32, i32* @LastTokenType, align 4
  %cmp229 = icmp eq i32 %169, 12
  br i1 %cmp229, label %if.end272, label %lor.lhs.false230

lor.lhs.false230:                                 ; preds = %lor.lhs.false228
  %170 = load i32, i32* @LastTokenType, align 4
  %cmp231 = icmp eq i32 %170, 20
  br i1 %cmp231, label %if.end272, label %lor.lhs.false232

lor.lhs.false232:                                 ; preds = %lor.lhs.false230
  %171 = load i32, i32* @LastTokenType, align 4
  %cmp233 = icmp eq i32 %171, 21
  br i1 %cmp233, label %if.end272, label %land.lhs.true234

land.lhs.true234:                                 ; preds = %lor.lhs.false232
  %172 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type235 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %172, i32 0, i32 0
  %173 = load i32, i32* %type235, align 8
  %cmp236 = icmp eq i32 %173, 15
  br i1 %cmp236, label %if.end272, label %lor.lhs.false237

lor.lhs.false237:                                 ; preds = %land.lhs.true234
  %174 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type238 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %174, i32 0, i32 0
  %175 = load i32, i32* %type238, align 8
  %cmp239 = icmp eq i32 %175, 5
  br i1 %cmp239, label %if.end272, label %lor.lhs.false240

lor.lhs.false240:                                 ; preds = %lor.lhs.false237
  %176 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type241 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %176, i32 0, i32 0
  %177 = load i32, i32* %type241, align 8
  %cmp242 = icmp eq i32 %177, 12
  br i1 %cmp242, label %if.end272, label %lor.lhs.false243

lor.lhs.false243:                                 ; preds = %lor.lhs.false240
  %178 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type244 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %178, i32 0, i32 0
  %179 = load i32, i32* %type244, align 8
  %cmp245 = icmp eq i32 %179, 20
  br i1 %cmp245, label %if.end272, label %lor.lhs.false246

lor.lhs.false246:                                 ; preds = %lor.lhs.false243
  %180 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type247 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %180, i32 0, i32 0
  %181 = load i32, i32* %type247, align 8
  %cmp248 = icmp eq i32 %181, 21
  br i1 %cmp248, label %if.end272, label %land.lhs.true249

land.lhs.true249:                                 ; preds = %lor.lhs.false246
  %182 = load i32, i32* @LastTokenType, align 4
  %cmp250 = icmp eq i32 %182, 8
  br i1 %cmp250, label %if.end272, label %lor.lhs.false251

lor.lhs.false251:                                 ; preds = %land.lhs.true249
  %183 = load i32, i32* @LastTokenType, align 4
  %cmp252 = icmp eq i32 %183, 16
  br i1 %cmp252, label %if.end272, label %if.then253

if.then253:                                       ; preds = %lor.lhs.false251
  br label %do.body254

do.body254:                                       ; preds = %if.then253
  br label %do.end256

do.end256:                                        ; preds = %do.body254
  %184 = load %struct.sObjPool*, %struct.sObjPool** @TokenPool, align 8
  %call257 = call i8* @objPoolGet(%struct.sObjPool* %184)
  %185 = bitcast i8* %call257 to %struct.sTokenInfo*
  store %struct.sTokenInfo* %185, %struct.sTokenInfo** @NextToken, align 8
  %186 = load %struct.sTokenInfo*, %struct.sTokenInfo** @NextToken, align 8
  %187 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @copyToken(%struct.sTokenInfo* %186, %struct.sTokenInfo* %187, i1 zeroext false)
  %188 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type258 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %188, i32 0, i32 0
  store i32 4, i32* %type258, align 8
  %189 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword259 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %189, i32 0, i32 1
  store i32 -1, i32* %keyword259, align 4
  br label %do.body260

do.body260:                                       ; preds = %do.end256
  %190 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string262 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %190, i32 0, i32 2
  %191 = load %struct.sVString*, %struct.sVString** %string262, align 8
  store %struct.sVString* %191, %struct.sVString** %vStringClear_s261, align 8
  %192 = load %struct.sVString*, %struct.sVString** %vStringClear_s261, align 8
  %length263 = getelementptr inbounds %struct.sVString, %struct.sVString* %192, i32 0, i32 0
  store i64 0, i64* %length263, align 8
  %193 = load %struct.sVString*, %struct.sVString** %vStringClear_s261, align 8
  %buffer264 = getelementptr inbounds %struct.sVString, %struct.sVString* %193, i32 0, i32 2
  %194 = load i8*, i8** %buffer264, align 8
  %arrayidx265 = getelementptr inbounds i8, i8* %194, i64 0
  store i8 0, i8* %arrayidx265, align 1
  br label %do.end267

do.end267:                                        ; preds = %do.body260
  %195 = load %struct.sVString*, %struct.sVString** %repr.addr, align 8
  %tobool268 = icmp ne %struct.sVString* %195, null
  br i1 %tobool268, label %if.then269, label %if.end271

if.then269:                                       ; preds = %do.end267
  %196 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string270 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %196, i32 0, i32 2
  %197 = load %struct.sVString*, %struct.sVString** %string270, align 8
  call void @vStringPut(%struct.sVString* %197, i32 10)
  br label %if.end271

if.end271:                                        ; preds = %if.then269, %do.end267
  br label %if.end272

if.end272:                                        ; preds = %if.end271, %lor.lhs.false251, %land.lhs.true249, %lor.lhs.false246, %lor.lhs.false243, %lor.lhs.false240, %lor.lhs.false237, %land.lhs.true234, %lor.lhs.false232, %lor.lhs.false230, %lor.lhs.false228, %lor.lhs.false226, %land.lhs.true224, %lor.lhs.false221, %lor.lhs.false218, %lor.lhs.false215, %land.lhs.true212, %lor.lhs.false210, %lor.lhs.false208, %lor.lhs.false206, %if.then204
  br label %if.end273

if.end273:                                        ; preds = %if.end272, %land.lhs.true202, %sw.epilog200
  %198 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type274 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %198, i32 0, i32 0
  %199 = load i32, i32* %type274, align 8
  store i32 %199, i32* @LastTokenType, align 4
  br label %return

return:                                           ; preds = %if.end273, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @copyToken(%struct.sTokenInfo* %dest, %struct.sTokenInfo* %src, i1 zeroext %include_non_read_info) #0 {
entry:
  %dest.addr = alloca %struct.sTokenInfo*, align 8
  %src.addr = alloca %struct.sTokenInfo*, align 8
  %include_non_read_info.addr = alloca i8, align 1
  store %struct.sTokenInfo* %dest, %struct.sTokenInfo** %dest.addr, align 8
  store %struct.sTokenInfo* %src, %struct.sTokenInfo** %src.addr, align 8
  %frombool = zext i1 %include_non_read_info to i8
  store i8 %frombool, i8* %include_non_read_info.addr, align 1
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %src.addr, align 8
  %lineNumber = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 4
  %1 = load i64, i64* %lineNumber, align 8
  %2 = load %struct.sTokenInfo*, %struct.sTokenInfo** %dest.addr, align 8
  %lineNumber1 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %2, i32 0, i32 4
  store i64 %1, i64* %lineNumber1, align 8
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %dest.addr, align 8
  %filePosition = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %3, i32 0, i32 5
  %4 = load %struct.sTokenInfo*, %struct.sTokenInfo** %src.addr, align 8
  %filePosition2 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %4, i32 0, i32 5
  %5 = bitcast %struct._MIOPos* %filePosition to i8*
  %6 = bitcast %struct._MIOPos* %filePosition2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 8 %6, i64 16, i1 false)
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %src.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %7, i32 0, i32 0
  %8 = load i32, i32* %type, align 8
  %9 = load %struct.sTokenInfo*, %struct.sTokenInfo** %dest.addr, align 8
  %type3 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %9, i32 0, i32 0
  store i32 %8, i32* %type3, align 8
  %10 = load %struct.sTokenInfo*, %struct.sTokenInfo** %src.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %10, i32 0, i32 1
  %11 = load i32, i32* %keyword, align 4
  %12 = load %struct.sTokenInfo*, %struct.sTokenInfo** %dest.addr, align 8
  %keyword4 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %12, i32 0, i32 1
  store i32 %11, i32* %keyword4, align 4
  %13 = load %struct.sTokenInfo*, %struct.sTokenInfo** %dest.addr, align 8
  %string = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %13, i32 0, i32 2
  %14 = load %struct.sVString*, %struct.sVString** %string, align 8
  %15 = load %struct.sTokenInfo*, %struct.sTokenInfo** %src.addr, align 8
  %string5 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %15, i32 0, i32 2
  %16 = load %struct.sVString*, %struct.sVString** %string5, align 8
  call void @vStringCopy(%struct.sVString* %14, %struct.sVString* %16)
  %17 = load i8, i8* %include_non_read_info.addr, align 1
  %tobool = trunc i8 %17 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %18 = load %struct.sTokenInfo*, %struct.sTokenInfo** %src.addr, align 8
  %nestLevel = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %18, i32 0, i32 6
  %19 = load i32, i32* %nestLevel, align 8
  %20 = load %struct.sTokenInfo*, %struct.sTokenInfo** %dest.addr, align 8
  %nestLevel6 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %20, i32 0, i32 6
  store i32 %19, i32* %nestLevel6, align 8
  %21 = load %struct.sTokenInfo*, %struct.sTokenInfo** %dest.addr, align 8
  %scope = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %21, i32 0, i32 3
  %22 = load %struct.sVString*, %struct.sVString** %scope, align 8
  %23 = load %struct.sTokenInfo*, %struct.sTokenInfo** %src.addr, align 8
  %scope7 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %23, i32 0, i32 3
  %24 = load %struct.sVString*, %struct.sVString** %scope7, align 8
  call void @vStringCopy(%struct.sVString* %22, %struct.sVString* %24)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i32 @getcFromInputFile() #1

declare i64 @getInputLineNumber() #1

declare [2 x i64] @getInputFilePosition() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

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

declare void @ungetcToInputFile(i32) #1

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

while.cond:                                       ; preds = %if.end26, %entry
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
  br label %if.end26

if.else:                                          ; preds = %while.body
  %2 = load i32, i32* %c, align 4
  %cmp1 = icmp eq i32 %2, 92
  br i1 %cmp1, label %if.then2, label %if.else15

if.then2:                                         ; preds = %if.else
  %call3 = call i32 @getcFromInputFile()
  store i32 %call3, i32* %c, align 4
  %3 = load i32, i32* %c, align 4
  %cmp4 = icmp ne i32 %3, 13
  br i1 %cmp4, label %land.lhs.true, label %if.else7

land.lhs.true:                                    ; preds = %if.then2
  %4 = load i32, i32* %c, align 4
  %cmp5 = icmp ne i32 %4, 10
  br i1 %cmp5, label %if.then6, label %if.else7

if.then6:                                         ; preds = %land.lhs.true
  %5 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %6 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %5, i32 %6)
  br label %if.end14

if.else7:                                         ; preds = %land.lhs.true, %if.then2
  %7 = load i32, i32* %c, align 4
  %cmp8 = icmp eq i32 %7, 13
  br i1 %cmp8, label %if.then9, label %if.end13

if.then9:                                         ; preds = %if.else7
  %call10 = call i32 @getcFromInputFile()
  store i32 %call10, i32* %c, align 4
  %8 = load i32, i32* %c, align 4
  %cmp11 = icmp ne i32 %8, 10
  br i1 %cmp11, label %if.then12, label %if.end

if.then12:                                        ; preds = %if.then9
  %9 = load i32, i32* %c, align 4
  call void @ungetcToInputFile(i32 %9)
  br label %if.end

if.end:                                           ; preds = %if.then12, %if.then9
  br label %if.end13

if.end13:                                         ; preds = %if.end, %if.else7
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.then6
  br label %if.end25

if.else15:                                        ; preds = %if.else
  %10 = load i32, i32* %c, align 4
  %11 = load i32, i32* %delimiter.addr, align 4
  %cmp16 = icmp eq i32 %10, %11
  br i1 %cmp16, label %if.then17, label %if.else18

if.then17:                                        ; preds = %if.else15
  store i8 1, i8* %end, align 1
  br label %if.end24

if.else18:                                        ; preds = %if.else15
  %12 = load i32, i32* %c, align 4
  %cmp19 = icmp eq i32 %12, 13
  br i1 %cmp19, label %if.then21, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else18
  %13 = load i32, i32* %c, align 4
  %cmp20 = icmp eq i32 %13, 10
  br i1 %cmp20, label %if.then21, label %if.else22

if.then21:                                        ; preds = %lor.lhs.false, %if.else18
  store i8 1, i8* %end, align 1
  %14 = load i32, i32* %c, align 4
  call void @ungetcToInputFile(i32 %14)
  br label %if.end23

if.else22:                                        ; preds = %lor.lhs.false
  %15 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %16 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %15, i32 %16)
  br label %if.end23

if.end23:                                         ; preds = %if.else22, %if.then21
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.then17
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.end14
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %if.then
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

declare void @vStringCat(%struct.sVString*, %struct.sVString*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseTemplateString(%struct.sVString* %string) #0 {
entry:
  %string.addr = alloca %struct.sVString*, align 8
  %c = alloca i32, align 4
  %depth = alloca i32, align 4
  %token = alloca %struct.sTokenInfo*, align 8
  store %struct.sVString* %string, %struct.sVString** %string.addr, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond30, %entry
  %call = call i32 @getcFromInputFile()
  store i32 %call, i32* %c, align 4
  %0 = load i32, i32* %c, align 4
  %cmp = icmp eq i32 %0, 96
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body
  %1 = load i32, i32* %c, align 4
  %cmp1 = icmp eq i32 %1, -1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %do.body
  br label %do.end32

if.end:                                           ; preds = %lor.lhs.false
  %2 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %3 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %2, i32 %3)
  %4 = load i32, i32* %c, align 4
  %cmp2 = icmp eq i32 %4, 92
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %call4 = call i32 @getcFromInputFile()
  store i32 %call4, i32* %c, align 4
  %5 = load i32, i32* %c, align 4
  %cmp5 = icmp ne i32 %5, -1
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.then3
  %6 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %7 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %6, i32 %7)
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.then3
  br label %if.end29

if.else:                                          ; preds = %if.end
  %8 = load i32, i32* %c, align 4
  %cmp8 = icmp eq i32 %8, 36
  br i1 %cmp8, label %if.then9, label %if.end28

if.then9:                                         ; preds = %if.else
  %call10 = call i32 @getcFromInputFile()
  store i32 %call10, i32* %c, align 4
  %9 = load i32, i32* %c, align 4
  %cmp11 = icmp ne i32 %9, 123
  br i1 %cmp11, label %if.then12, label %if.else13

if.then12:                                        ; preds = %if.then9
  %10 = load i32, i32* %c, align 4
  call void @ungetcToInputFile(i32 %10)
  br label %if.end27

if.else13:                                        ; preds = %if.then9
  store i32 1, i32* %depth, align 4
  %11 = load %struct.sObjPool*, %struct.sObjPool** @TokenPool, align 8
  %call14 = call i8* @objPoolGet(%struct.sObjPool* %11)
  %12 = bitcast i8* %call14 to %struct.sTokenInfo*
  store %struct.sTokenInfo* %12, %struct.sTokenInfo** %token, align 8
  store i32 0, i32* @LastTokenType, align 4
  %13 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %14 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %13, i32 %14)
  br label %do.body15

do.body15:                                        ; preds = %land.end, %if.else13
  %15 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %16 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  call void @readTokenFull(%struct.sTokenInfo* %15, i1 zeroext false, %struct.sVString* %16)
  %17 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %17, i32 0, i32 0
  %18 = load i32, i32* %type, align 8
  %cmp16 = icmp eq i32 %18, 13
  br i1 %cmp16, label %if.then17, label %if.else18

if.then17:                                        ; preds = %do.body15
  %19 = load i32, i32* %depth, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %depth, align 4
  br label %if.end23

if.else18:                                        ; preds = %do.body15
  %20 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %type19 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %20, i32 0, i32 0
  %21 = load i32, i32* %type19, align 8
  %cmp20 = icmp eq i32 %21, 14
  br i1 %cmp20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.else18
  %22 = load i32, i32* %depth, align 4
  %dec = add nsw i32 %22, -1
  store i32 %dec, i32* %depth, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.else18
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %if.then17
  br label %do.cond

do.cond:                                          ; preds = %if.end23
  %23 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %type24 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %23, i32 0, i32 0
  %24 = load i32, i32* %type24, align 8
  %cmp25 = icmp eq i32 %24, 1
  br i1 %cmp25, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %do.cond
  %25 = load i32, i32* %depth, align 4
  %cmp26 = icmp sgt i32 %25, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %26 = phi i1 [ false, %do.cond ], [ %cmp26, %land.rhs ]
  br i1 %26, label %do.body15, label %do.end

do.end:                                           ; preds = %land.end
  %27 = load %struct.sObjPool*, %struct.sObjPool** @TokenPool, align 8
  %28 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %29 = bitcast %struct.sTokenInfo* %28 to i8*
  call void @objPoolPut(%struct.sObjPool* %27, i8* %29)
  br label %if.end27

if.end27:                                         ; preds = %do.end, %if.then12
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.else
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.end7
  br label %do.cond30

do.cond30:                                        ; preds = %if.end29
  %30 = load i32, i32* %c, align 4
  %cmp31 = icmp ne i32 %30, -1
  br i1 %cmp31, label %do.body, label %do.end32

do.end32:                                         ; preds = %do.cond30, %if.then
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @isspace(i32) #3

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseRegExp() #0 {
entry:
  %c = alloca i32, align 4
  %in_range = alloca i8, align 1
  store i8 0, i8* %in_range, align 1
  br label %do.body

do.body:                                          ; preds = %do.cond22, %entry
  %call = call i32 @getcFromInputFile()
  store i32 %call, i32* %c, align 4
  %0 = load i8, i8* %in_range, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %do.body
  %1 = load i32, i32* %c, align 4
  %cmp = icmp eq i32 %1, 47
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %do.body1

do.body1:                                         ; preds = %do.cond, %if.then
  %call2 = call i32 @getcFromInputFile()
  store i32 %call2, i32* %c, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body1
  %2 = load i32, i32* %c, align 4
  %call3 = call i32 @isalpha(i32 %2) #4
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %do.body1, label %do.end

do.end:                                           ; preds = %do.cond
  %3 = load i32, i32* %c, align 4
  call void @ungetcToInputFile(i32 %3)
  br label %do.end24

if.else:                                          ; preds = %land.lhs.true, %do.body
  %4 = load i32, i32* %c, align 4
  %cmp5 = icmp eq i32 %4, 10
  br i1 %cmp5, label %if.then7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %5 = load i32, i32* %c, align 4
  %cmp6 = icmp eq i32 %5, 13
  br i1 %cmp6, label %if.then7, label %if.else8

if.then7:                                         ; preds = %lor.lhs.false, %if.else
  %6 = load i32, i32* %c, align 4
  call void @ungetcToInputFile(i32 %6)
  br label %do.end24

if.else8:                                         ; preds = %lor.lhs.false
  %7 = load i32, i32* %c, align 4
  %cmp9 = icmp eq i32 %7, 92
  br i1 %cmp9, label %if.then10, label %if.else12

if.then10:                                        ; preds = %if.else8
  %call11 = call i32 @getcFromInputFile()
  store i32 %call11, i32* %c, align 4
  br label %if.end19

if.else12:                                        ; preds = %if.else8
  %8 = load i32, i32* %c, align 4
  %cmp13 = icmp eq i32 %8, 91
  br i1 %cmp13, label %if.then14, label %if.else15

if.then14:                                        ; preds = %if.else12
  store i8 1, i8* %in_range, align 1
  br label %if.end18

if.else15:                                        ; preds = %if.else12
  %9 = load i32, i32* %c, align 4
  %cmp16 = icmp eq i32 %9, 93
  br i1 %cmp16, label %if.then17, label %if.end

if.then17:                                        ; preds = %if.else15
  store i8 0, i8* %in_range, align 1
  br label %if.end

if.end:                                           ; preds = %if.then17, %if.else15
  br label %if.end18

if.end18:                                         ; preds = %if.end, %if.then14
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.then10
  br label %if.end20

if.end20:                                         ; preds = %if.end19
  br label %if.end21

if.end21:                                         ; preds = %if.end20
  br label %do.cond22

do.cond22:                                        ; preds = %if.end21
  %10 = load i32, i32* %c, align 4
  %cmp23 = icmp ne i32 %10, -1
  br i1 %cmp23, label %do.body, label %do.end24

do.end24:                                         ; preds = %do.cond22, %if.then7, %do.end
  ret void
}

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
  call void @ungetcToInputFile(i32 %10)
  ret void
}

declare i32 @lookupKeyword(i8*, i32) #1

declare void @vStringCatS(%struct.sVString*, i8*) #1

declare void @vStringCopy(%struct.sVString*, %struct.sVString*) #1

declare void @vStringResize(%struct.sVString*, i64) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @parseMethods(%struct.sTokenInfo* %token, %struct.sTokenInfo* %class, i1 zeroext %is_es6_class) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %class.addr = alloca %struct.sTokenInfo*, align 8
  %is_es6_class.addr = alloca i8, align 1
  %name = alloca %struct.sTokenInfo*, align 8
  %has_methods = alloca i8, align 1
  %saveScope = alloca %struct.sVString*, align 8
  %is_generator = alloca i8, align 1
  %is_shorthand = alloca i8, align 1
  %signature = alloca %struct.sVString*, align 8
  %has_child_methods = alloca i8, align 1
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  store %struct.sTokenInfo* %class, %struct.sTokenInfo** %class.addr, align 8
  %frombool = zext i1 %is_es6_class to i8
  store i8 %frombool, i8* %is_es6_class.addr, align 1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.sObjPool*, %struct.sObjPool** @TokenPool, align 8
  %call = call i8* @objPoolGet(%struct.sObjPool* %0)
  %1 = bitcast i8* %call to %struct.sTokenInfo*
  store %struct.sTokenInfo* %1, %struct.sTokenInfo** %name, align 8
  store i8 0, i8* %has_methods, align 1
  %call1 = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call1, %struct.sVString** %saveScope, align 8
  %2 = load %struct.sVString*, %struct.sVString** %saveScope, align 8
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %scope = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %3, i32 0, i32 3
  %4 = load %struct.sVString*, %struct.sVString** %scope, align 8
  call void @vStringCopy(%struct.sVString* %2, %struct.sVString* %4)
  %5 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %6 = load %struct.sTokenInfo*, %struct.sTokenInfo** %class.addr, align 8
  %string = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %6, i32 0, i32 2
  %7 = load %struct.sVString*, %struct.sVString** %string, align 8
  call void @addToScope(%struct.sTokenInfo* %5, %struct.sVString* %7)
  br label %do.body2

do.body2:                                         ; preds = %lor.end, %do.end
  %8 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %8)
  %9 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %9, i32 0, i32 0
  %10 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %10, 14
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body2
  br label %cleanUp

if.end:                                           ; preds = %do.body2
  %11 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %11, i32 0, i32 1
  %12 = load i32, i32* %keyword, align 4
  %cmp3 = icmp eq i32 %12, 25
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  %13 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %13)
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end
  %14 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type6 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %14, i32 0, i32 0
  %15 = load i32, i32* %type6, align 8
  %cmp7 = icmp eq i32 %15, 7
  br i1 %cmp7, label %if.end90, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end5
  %16 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type8 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %16, i32 0, i32 0
  %17 = load i32, i32* %type8, align 8
  %cmp9 = icmp eq i32 %17, 4
  br i1 %cmp9, label %if.end90, label %if.then10

if.then10:                                        ; preds = %land.lhs.true
  store i8 0, i8* %is_generator, align 1
  store i8 0, i8* %is_shorthand, align 1
  %18 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type11 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %18, i32 0, i32 0
  %19 = load i32, i32* %type11, align 8
  %cmp12 = icmp eq i32 %19, 20
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.then10
  store i8 1, i8* %is_generator, align 1
  %20 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %20)
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.then10
  %21 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  %22 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @copyToken(%struct.sTokenInfo* %21, %struct.sTokenInfo* %22, i1 zeroext true)
  %23 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %23)
  %24 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type15 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %24, i32 0, i32 0
  %25 = load i32, i32* %type15, align 8
  %cmp16 = icmp eq i32 %25, 8
  %frombool17 = zext i1 %cmp16 to i8
  store i8 %frombool17, i8* %is_shorthand, align 1
  %26 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type18 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %26, i32 0, i32 0
  %27 = load i32, i32* %type18, align 8
  %cmp19 = icmp eq i32 %27, 5
  br i1 %cmp19, label %if.then20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end14
  %28 = load i8, i8* %is_shorthand, align 1
  %tobool = trunc i8 %28 to i1
  br i1 %tobool, label %if.then20, label %if.end89

if.then20:                                        ; preds = %lor.lhs.false, %if.end14
  %29 = load i8, i8* %is_shorthand, align 1
  %tobool21 = trunc i8 %29 to i1
  br i1 %tobool21, label %if.end27, label %if.then22

if.then22:                                        ; preds = %if.then20
  %30 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %30)
  %31 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword23 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %31, i32 0, i32 1
  %32 = load i32, i32* %keyword23, align 4
  %cmp24 = icmp eq i32 %32, 25
  br i1 %cmp24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.then22
  %33 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %33)
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.then22
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %if.then20
  %34 = load i8, i8* %is_shorthand, align 1
  %tobool28 = trunc i8 %34 to i1
  br i1 %tobool28, label %if.then32, label %lor.lhs.false29

lor.lhs.false29:                                  ; preds = %if.end27
  %35 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword30 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %35, i32 0, i32 1
  %36 = load i32, i32* %keyword30, align 4
  %cmp31 = icmp eq i32 %36, 0
  br i1 %cmp31, label %if.then32, label %if.else

if.then32:                                        ; preds = %lor.lhs.false29, %if.end27
  br label %do.body33

do.body33:                                        ; preds = %if.then32
  br label %do.end34

do.end34:                                         ; preds = %do.body33
  %call35 = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call35, %struct.sVString** %signature, align 8
  %37 = load i8, i8* %is_shorthand, align 1
  %tobool36 = trunc i8 %37 to i1
  br i1 %tobool36, label %if.end42, label %if.then37

if.then37:                                        ; preds = %do.end34
  %38 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %38)
  %39 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type38 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %39, i32 0, i32 0
  %40 = load i32, i32* %type38, align 8
  %cmp39 = icmp eq i32 %40, 20
  br i1 %cmp39, label %if.then40, label %if.end41

if.then40:                                        ; preds = %if.then37
  store i8 1, i8* %is_generator, align 1
  %41 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %41)
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %if.then37
  br label %if.end42

if.end42:                                         ; preds = %if.end41, %do.end34
  %42 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type43 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %42, i32 0, i32 0
  %43 = load i32, i32* %type43, align 8
  %cmp44 = icmp eq i32 %43, 8
  br i1 %cmp44, label %if.then45, label %if.end46

if.then45:                                        ; preds = %if.end42
  %44 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %45 = load %struct.sVString*, %struct.sVString** %signature, align 8
  call void @skipArgumentList(%struct.sTokenInfo* %44, i1 zeroext false, %struct.sVString* %45)
  br label %if.end46

if.end46:                                         ; preds = %if.then45, %if.end42
  %46 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type47 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %46, i32 0, i32 0
  %47 = load i32, i32* %type47, align 8
  %cmp48 = icmp eq i32 %47, 13
  br i1 %cmp48, label %if.then49, label %if.end56

if.then49:                                        ; preds = %if.end46
  store i8 1, i8* %has_methods, align 1
  %48 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  %49 = load i8, i8* %is_generator, align 1
  %tobool50 = trunc i8 %49 to i1
  %50 = zext i1 %tobool50 to i64
  %cond = select i1 %tobool50, i32 6, i32 2
  %51 = load %struct.sVString*, %struct.sVString** %signature, align 8
  call void @makeJsTag(%struct.sTokenInfo* %48, i32 %cond, %struct.sVString* %51, %struct.sVString* null)
  %52 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %53 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  %string51 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %53, i32 0, i32 2
  %54 = load %struct.sVString*, %struct.sVString** %string51, align 8
  %call52 = call zeroext i1 @parseBlock(%struct.sTokenInfo* %52, %struct.sVString* %54)
  %55 = load i8, i8* %is_es6_class.addr, align 1
  %tobool53 = trunc i8 %55 to i1
  br i1 %tobool53, label %if.end55, label %if.then54

if.then54:                                        ; preds = %if.then49
  %56 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %56)
  br label %if.end55

if.end55:                                         ; preds = %if.then54, %if.then49
  br label %if.end56

if.end56:                                         ; preds = %if.end55, %if.end46
  %57 = load %struct.sVString*, %struct.sVString** %signature, align 8
  call void @vStringDelete(%struct.sVString* %57)
  br label %if.end88

if.else:                                          ; preds = %lor.lhs.false29
  %58 = load i8, i8* %is_es6_class.addr, align 1
  %tobool57 = trunc i8 %58 to i1
  br i1 %tobool57, label %if.end87, label %if.then58

if.then58:                                        ; preds = %if.else
  store i8 0, i8* %has_child_methods, align 1
  br label %while.cond

while.cond:                                       ; preds = %if.end82, %if.then58
  %59 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type59 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %59, i32 0, i32 0
  %60 = load i32, i32* %type59, align 8
  %cmp60 = icmp eq i32 %60, 6
  br i1 %cmp60, label %land.end, label %land.lhs.true61

land.lhs.true61:                                  ; preds = %while.cond
  %61 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type62 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %61, i32 0, i32 0
  %62 = load i32, i32* %type62, align 8
  %cmp63 = icmp eq i32 %62, 14
  br i1 %cmp63, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true61
  %63 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type64 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %63, i32 0, i32 0
  %64 = load i32, i32* %type64, align 8
  %cmp65 = icmp eq i32 %64, 1
  %lnot = xor i1 %cmp65, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true61, %while.cond
  %65 = phi i1 [ false, %land.lhs.true61 ], [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %65, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %66 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type66 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %66, i32 0, i32 0
  %67 = load i32, i32* %type66, align 8
  %cmp67 = icmp eq i32 %67, 13
  br i1 %cmp67, label %if.then68, label %if.else71

if.then68:                                        ; preds = %while.body
  %68 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %69 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  %call69 = call zeroext i1 @parseMethods(%struct.sTokenInfo* %68, %struct.sTokenInfo* %69, i1 zeroext false)
  %frombool70 = zext i1 %call69 to i8
  store i8 %frombool70, i8* %has_child_methods, align 1
  %70 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %70)
  br label %if.end82

if.else71:                                        ; preds = %while.body
  %71 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type72 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %71, i32 0, i32 0
  %72 = load i32, i32* %type72, align 8
  %cmp73 = icmp eq i32 %72, 8
  br i1 %cmp73, label %if.then74, label %if.else75

if.then74:                                        ; preds = %if.else71
  %73 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @skipArgumentList(%struct.sTokenInfo* %73, i1 zeroext false, %struct.sVString* null)
  br label %if.end81

if.else75:                                        ; preds = %if.else71
  %74 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type76 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %74, i32 0, i32 0
  %75 = load i32, i32* %type76, align 8
  %cmp77 = icmp eq i32 %75, 16
  br i1 %cmp77, label %if.then78, label %if.else79

if.then78:                                        ; preds = %if.else75
  %76 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @skipArrayList(%struct.sTokenInfo* %76, i1 zeroext false)
  br label %if.end80

if.else79:                                        ; preds = %if.else75
  %77 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %77)
  br label %if.end80

if.end80:                                         ; preds = %if.else79, %if.then78
  br label %if.end81

if.end81:                                         ; preds = %if.end80, %if.then74
  br label %if.end82

if.end82:                                         ; preds = %if.end81, %if.then68
  br label %while.cond

while.end:                                        ; preds = %land.end
  store i8 1, i8* %has_methods, align 1
  %78 = load i8, i8* %has_child_methods, align 1
  %tobool83 = trunc i8 %78 to i1
  br i1 %tobool83, label %if.then84, label %if.else85

if.then84:                                        ; preds = %while.end
  %79 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  call void @makeJsTag(%struct.sTokenInfo* %79, i32 1, %struct.sVString* null, %struct.sVString* null)
  br label %if.end86

if.else85:                                        ; preds = %while.end
  %80 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  call void @makeJsTag(%struct.sTokenInfo* %80, i32 3, %struct.sVString* null, %struct.sVString* null)
  br label %if.end86

if.end86:                                         ; preds = %if.else85, %if.then84
  br label %if.end87

if.end87:                                         ; preds = %if.end86, %if.else
  br label %if.end88

if.end88:                                         ; preds = %if.end87, %if.end56
  br label %if.end89

if.end89:                                         ; preds = %if.end88, %lor.lhs.false
  br label %if.end90

if.end90:                                         ; preds = %if.end89, %land.lhs.true, %if.end5
  br label %do.cond

do.cond:                                          ; preds = %if.end90
  %81 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type91 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %81, i32 0, i32 0
  %82 = load i32, i32* %type91, align 8
  %cmp92 = icmp eq i32 %82, 6
  br i1 %cmp92, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %do.cond
  %83 = load i8, i8* %is_es6_class.addr, align 1
  %tobool93 = trunc i8 %83 to i1
  br i1 %tobool93, label %land.rhs94, label %land.end98

land.rhs94:                                       ; preds = %lor.rhs
  %84 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type95 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %84, i32 0, i32 0
  %85 = load i32, i32* %type95, align 8
  %cmp96 = icmp eq i32 %85, 1
  %lnot97 = xor i1 %cmp96, true
  br label %land.end98

land.end98:                                       ; preds = %land.rhs94, %lor.rhs
  %86 = phi i1 [ false, %lor.rhs ], [ %lnot97, %land.rhs94 ]
  br label %lor.end

lor.end:                                          ; preds = %land.end98, %do.cond
  %87 = phi i1 [ true, %do.cond ], [ %86, %land.end98 ]
  br i1 %87, label %do.body2, label %do.end99

do.end99:                                         ; preds = %lor.end
  br label %do.body100

do.body100:                                       ; preds = %do.end99
  br label %do.end102

do.end102:                                        ; preds = %do.body100
  %88 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call103 = call zeroext i1 @findCmdTerm(%struct.sTokenInfo* %88, i1 zeroext false, i1 zeroext false)
  br label %cleanUp

cleanUp:                                          ; preds = %do.end102, %if.then
  %89 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %scope104 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %89, i32 0, i32 3
  %90 = load %struct.sVString*, %struct.sVString** %scope104, align 8
  %91 = load %struct.sVString*, %struct.sVString** %saveScope, align 8
  call void @vStringCopy(%struct.sVString* %90, %struct.sVString* %91)
  %92 = load %struct.sVString*, %struct.sVString** %saveScope, align 8
  call void @vStringDelete(%struct.sVString* %92)
  %93 = load %struct.sObjPool*, %struct.sObjPool** @TokenPool, align 8
  %94 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  %95 = bitcast %struct.sTokenInfo* %94 to i8*
  call void @objPoolPut(%struct.sObjPool* %93, i8* %95)
  br label %do.body105

do.body105:                                       ; preds = %cleanUp
  br label %do.end107

do.end107:                                        ; preds = %do.body105
  %96 = load i8, i8* %has_methods, align 1
  %tobool108 = trunc i8 %96 to i1
  ret i1 %tobool108
}

declare %struct.sVString* @vStringNew() #1

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
define internal void @skipArgumentList(%struct.sTokenInfo* %token, i1 zeroext %include_newlines, %struct.sVString* %repr) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %include_newlines.addr = alloca i8, align 1
  %repr.addr = alloca %struct.sVString*, align 8
  %nest_level = alloca i32, align 4
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  %frombool = zext i1 %include_newlines to i8
  store i8 %frombool, i8* %include_newlines.addr, align 1
  store %struct.sVString* %repr, %struct.sVString** %repr.addr, align 8
  store i32 0, i32* %nest_level, align 4
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 0
  %1 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %1, 8
  br i1 %cmp, label %if.then, label %if.end19

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %nest_level, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %nest_level, align 4
  %3 = load %struct.sVString*, %struct.sVString** %repr.addr, align 8
  %tobool = icmp ne %struct.sVString* %3, null
  br i1 %tobool, label %if.then1, label %if.end

if.then1:                                         ; preds = %if.then
  %4 = load %struct.sVString*, %struct.sVString** %repr.addr, align 8
  call void @vStringPut(%struct.sVString* %4, i32 40)
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then
  br label %while.cond

while.cond:                                       ; preds = %if.end17, %if.end
  %5 = load i32, i32* %nest_level, align 4
  %cmp2 = icmp sgt i32 %5, 0
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %6 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type3 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %6, i32 0, i32 0
  %7 = load i32, i32* %type3, align 8
  %cmp4 = icmp eq i32 %7, 1
  %lnot = xor i1 %cmp4, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %8 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %8, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %9 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %10 = load %struct.sVString*, %struct.sVString** %repr.addr, align 8
  call void @readTokenFull(%struct.sTokenInfo* %9, i1 zeroext false, %struct.sVString* %10)
  %11 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type5 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %11, i32 0, i32 0
  %12 = load i32, i32* %type5, align 8
  %cmp6 = icmp eq i32 %12, 8
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %while.body
  %13 = load i32, i32* %nest_level, align 4
  %inc8 = add nsw i32 %13, 1
  store i32 %inc8, i32* %nest_level, align 4
  br label %if.end17

if.else:                                          ; preds = %while.body
  %14 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type9 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %14, i32 0, i32 0
  %15 = load i32, i32* %type9, align 8
  %cmp10 = icmp eq i32 %15, 3
  br i1 %cmp10, label %if.then11, label %if.else12

if.then11:                                        ; preds = %if.else
  %16 = load i32, i32* %nest_level, align 4
  %dec = add nsw i32 %16, -1
  store i32 %dec, i32* %nest_level, align 4
  br label %if.end16

if.else12:                                        ; preds = %if.else
  %17 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %17, i32 0, i32 1
  %18 = load i32, i32* %keyword, align 4
  %cmp13 = icmp eq i32 %18, 0
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.else12
  %19 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @parseFunction(%struct.sTokenInfo* %19)
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.else12
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.then11
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then7
  br label %while.cond

while.end:                                        ; preds = %land.end
  %20 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %21 = load i8, i8* %include_newlines.addr, align 1
  %tobool18 = trunc i8 %21 to i1
  call void @readTokenFull(%struct.sTokenInfo* %20, i1 zeroext %tobool18, %struct.sVString* null)
  br label %if.end19

if.end19:                                         ; preds = %while.end, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @makeJsTag(%struct.sTokenInfo* %token, i32 %kind, %struct.sVString* %signature, %struct.sVString* %inheritance) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %kind.addr = alloca i32, align 4
  %signature.addr = alloca %struct.sVString*, align 8
  %inheritance.addr = alloca %struct.sVString*, align 8
  %name = alloca i8*, align 8
  %fullscope = alloca %struct.sVString*, align 8
  %p = alloca i8*, align 8
  %e = alloca %struct.sTagEntryInfo, align 8
  %parent_kind = alloca i32, align 4
  %i = alloca i64, align 8
  %c = alloca i8, align 1
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  store i32 %kind, i32* %kind.addr, align 4
  store %struct.sVString* %signature, %struct.sVString** %signature.addr, align 8
  store %struct.sVString* %inheritance, %struct.sVString** %inheritance.addr, align 8
  %0 = load i32, i32* %kind.addr, align 4
  %idxprom = zext i32 %0 to i64
  %arrayidx = getelementptr inbounds [7 x %struct.sKindDefinition], [7 x %struct.sKindDefinition]* @JsKinds, i64 0, i64 %idxprom
  %enabled = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %arrayidx, i32 0, i32 0
  %1 = load i8, i8* %enabled, align 8
  %tobool = trunc i8 %1 to i1
  br i1 %tobool, label %land.lhs.true, label %if.end49

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %ignoreTag = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %2, i32 0, i32 7
  %3 = load i8, i8* %ignoreTag, align 4
  %tobool1 = trunc i8 %3 to i1
  br i1 %tobool1, label %if.end49, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %4, i32 0, i32 2
  %5 = load %struct.sVString*, %struct.sVString** %string, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %5, i32 0, i32 2
  %6 = load i8*, i8** %buffer, align 8
  store i8* %6, i8** %name, align 8
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %scope = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %7, i32 0, i32 3
  %8 = load %struct.sVString*, %struct.sVString** %scope, align 8
  %call = call %struct.sVString* @vStringNewCopy(%struct.sVString* %8)
  store %struct.sVString* %call, %struct.sVString** %fullscope, align 8
  %9 = load i32, i32* %kind.addr, align 4
  %cmp = icmp ne i32 %9, 3
  br i1 %cmp, label %land.lhs.true2, label %if.end8

land.lhs.true2:                                   ; preds = %if.then
  %10 = load i8*, i8** %name, align 8
  %call3 = call i8* @strrchr(i8* %10, i32 46)
  store i8* %call3, i8** %p, align 8
  %cmp4 = icmp ne i8* %call3, null
  br i1 %cmp4, label %if.then5, label %if.end8

if.then5:                                         ; preds = %land.lhs.true2
  %11 = load %struct.sVString*, %struct.sVString** %fullscope, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %11, i32 0, i32 0
  %12 = load i64, i64* %length, align 8
  %cmp6 = icmp ugt i64 %12, 0
  br i1 %cmp6, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.then5
  %13 = load %struct.sVString*, %struct.sVString** %fullscope, align 8
  call void @vStringPut(%struct.sVString* %13, i32 46)
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then5
  %14 = load %struct.sVString*, %struct.sVString** %fullscope, align 8
  %15 = load i8*, i8** %name, align 8
  %16 = load i8*, i8** %p, align 8
  %17 = load i8*, i8** %name, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %16 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %17 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @vStringNCatS(%struct.sVString* %14, i8* %15, i64 %sub.ptr.sub)
  %18 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %18, i64 1
  store i8* %add.ptr, i8** %name, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.end, %land.lhs.true2, %if.then
  %19 = load i8*, i8** %name, align 8
  %20 = load i32, i32* %kind.addr, align 4
  call void @initTagEntry(%struct.sTagEntryInfo* %e, i8* %19, i32 %20)
  br label %do.body

do.body:                                          ; preds = %if.end8
  br label %do.end

do.end:                                           ; preds = %do.body
  %21 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %lineNumber = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %21, i32 0, i32 4
  %22 = load i64, i64* %lineNumber, align 8
  %lineNumber9 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %e, i32 0, i32 1
  store i64 %22, i64* %lineNumber9, align 8
  %filePosition = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %e, i32 0, i32 4
  %23 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %filePosition10 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %23, i32 0, i32 5
  %24 = bitcast %struct._MIOPos* %filePosition to i8*
  %25 = bitcast %struct._MIOPos* %filePosition10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %24, i8* align 8 %25, i64 16, i1 false)
  %26 = load %struct.sVString*, %struct.sVString** %fullscope, align 8
  %length11 = getelementptr inbounds %struct.sVString, %struct.sVString* %26, i32 0, i32 0
  %27 = load i64, i64* %length11, align 8
  %cmp12 = icmp ugt i64 %27, 0
  br i1 %cmp12, label %if.then13, label %if.end19

if.then13:                                        ; preds = %do.end
  store i32 1, i32* %parent_kind, align 4
  %28 = load i32, i32* %kind.addr, align 4
  %cmp14 = icmp eq i32 %28, 0
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.then13
  store i32 0, i32* %parent_kind, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.then13
  %29 = load i32, i32* %parent_kind, align 4
  %extensionFields = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %e, i32 0, i32 11
  %scopeKindIndex = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields, i32 0, i32 5
  store i32 %29, i32* %scopeKindIndex, align 4
  %30 = load %struct.sVString*, %struct.sVString** %fullscope, align 8
  %buffer17 = getelementptr inbounds %struct.sVString, %struct.sVString* %30, i32 0, i32 2
  %31 = load i8*, i8** %buffer17, align 8
  %extensionFields18 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %e, i32 0, i32 11
  %scopeName = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields18, i32 0, i32 6
  store i8* %31, i8** %scopeName, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.end16, %do.end
  %32 = load %struct.sVString*, %struct.sVString** %signature.addr, align 8
  %tobool20 = icmp ne %struct.sVString* %32, null
  br i1 %tobool20, label %land.lhs.true21, label %if.end41

land.lhs.true21:                                  ; preds = %if.end19
  %33 = load %struct.sVString*, %struct.sVString** %signature.addr, align 8
  %length22 = getelementptr inbounds %struct.sVString, %struct.sVString* %33, i32 0, i32 0
  %34 = load i64, i64* %length22, align 8
  %tobool23 = icmp ne i64 %34, 0
  br i1 %tobool23, label %if.then24, label %if.end41

if.then24:                                        ; preds = %land.lhs.true21
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then24
  %35 = load i64, i64* %i, align 8
  %36 = load %struct.sVString*, %struct.sVString** %signature.addr, align 8
  %length25 = getelementptr inbounds %struct.sVString, %struct.sVString* %36, i32 0, i32 0
  %37 = load i64, i64* %length25, align 8
  %cmp26 = icmp ult i64 %35, %37
  br i1 %cmp26, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %38 = load %struct.sVString*, %struct.sVString** %signature.addr, align 8
  %buffer27 = getelementptr inbounds %struct.sVString, %struct.sVString* %38, i32 0, i32 2
  %39 = load i8*, i8** %buffer27, align 8
  %40 = load i64, i64* %i, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %39, i64 %40
  %41 = load i8, i8* %arrayidx28, align 1
  store i8 %41, i8* %c, align 1
  %42 = load i8, i8* %c, align 1
  %conv = zext i8 %42 to i32
  %cmp29 = icmp slt i32 %conv, 32
  br i1 %cmp29, label %if.then34, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %43 = load i8, i8* %c, align 1
  %conv31 = zext i8 %43 to i32
  %cmp32 = icmp eq i32 %conv31, 127
  br i1 %cmp32, label %if.then34, label %if.end37

if.then34:                                        ; preds = %lor.lhs.false, %for.body
  %44 = load %struct.sVString*, %struct.sVString** %signature.addr, align 8
  %buffer35 = getelementptr inbounds %struct.sVString, %struct.sVString* %44, i32 0, i32 2
  %45 = load i8*, i8** %buffer35, align 8
  %46 = load i64, i64* %i, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %45, i64 %46
  store i8 32, i8* %arrayidx36, align 1
  br label %if.end37

if.end37:                                         ; preds = %if.then34, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end37
  %47 = load i64, i64* %i, align 8
  %inc = add i64 %47, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %48 = load %struct.sVString*, %struct.sVString** %signature.addr, align 8
  %buffer38 = getelementptr inbounds %struct.sVString, %struct.sVString* %48, i32 0, i32 2
  %49 = load i8*, i8** %buffer38, align 8
  %extensionFields39 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %e, i32 0, i32 11
  %signature40 = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields39, i32 0, i32 8
  store i8* %49, i8** %signature40, align 8
  br label %if.end41

if.end41:                                         ; preds = %for.end, %land.lhs.true21, %if.end19
  %50 = load %struct.sVString*, %struct.sVString** %inheritance.addr, align 8
  %tobool42 = icmp ne %struct.sVString* %50, null
  br i1 %tobool42, label %if.then43, label %if.end47

if.then43:                                        ; preds = %if.end41
  %51 = load %struct.sVString*, %struct.sVString** %inheritance.addr, align 8
  %buffer44 = getelementptr inbounds %struct.sVString, %struct.sVString* %51, i32 0, i32 2
  %52 = load i8*, i8** %buffer44, align 8
  %extensionFields45 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %e, i32 0, i32 11
  %inheritance46 = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields45, i32 0, i32 3
  store i8* %52, i8** %inheritance46, align 8
  br label %if.end47

if.end47:                                         ; preds = %if.then43, %if.end41
  %call48 = call i32 @makeTagEntry(%struct.sTagEntryInfo* %e)
  %53 = load %struct.sVString*, %struct.sVString** %fullscope, align 8
  call void @vStringDelete(%struct.sVString* %53)
  br label %if.end49

if.end49:                                         ; preds = %if.end47, %land.lhs.true, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @parseBlock(%struct.sTokenInfo* %token, %struct.sVString* %parentScope) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %parentScope.addr = alloca %struct.sVString*, align 8
  %is_class = alloca i8, align 1
  %read_next_token = alloca i8, align 1
  %saveScope = alloca %struct.sVString*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  store %struct.sVString* %parentScope, %struct.sVString** %parentScope.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  store i8 0, i8* %is_class, align 1
  store i8 1, i8* %read_next_token, align 1
  %call = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call, %struct.sVString** %saveScope, align 8
  %0 = load %struct.sVString*, %struct.sVString** %saveScope, align 8
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %scope = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %1, i32 0, i32 3
  %2 = load %struct.sVString*, %struct.sVString** %scope, align 8
  call void @vStringCopy(%struct.sVString* %0, %struct.sVString* %2)
  %3 = load %struct.sVString*, %struct.sVString** %parentScope.addr, align 8
  %tobool = icmp ne %struct.sVString* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  %4 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %5 = load %struct.sVString*, %struct.sVString** %parentScope.addr, align 8
  call void @addToScope(%struct.sTokenInfo* %4, %struct.sVString* %5)
  %6 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %nestLevel = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %6, i32 0, i32 6
  %7 = load i32, i32* %nestLevel, align 8
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %nestLevel, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end
  %8 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %8, i32 0, i32 0
  %9 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %9, 13
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  %10 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %10)
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.end
  %11 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type3 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %11, i32 0, i32 0
  %12 = load i32, i32* %type3, align 8
  %cmp4 = icmp eq i32 %12, 14
  br i1 %cmp4, label %if.end43, label %if.then5

if.then5:                                         ; preds = %if.end2
  br label %do.body6

do.body6:                                         ; preds = %land.end, %if.then5
  store i8 1, i8* %read_next_token, align 1
  %13 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %13, i32 0, i32 1
  %14 = load i32, i32* %keyword, align 4
  %cmp7 = icmp eq i32 %14, 8
  br i1 %cmp7, label %if.then8, label %if.else

if.then8:                                         ; preds = %do.body6
  store i8 1, i8* %is_class, align 1
  %15 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %16 = load i8, i8* %is_class, align 1
  %tobool9 = trunc i8 %16 to i1
  %call10 = call zeroext i1 @parseLine(%struct.sTokenInfo* %15, i1 zeroext %tobool9)
  %frombool = zext i1 %call10 to i8
  store i8 %frombool, i8* %read_next_token, align 1
  br label %if.end33

if.else:                                          ; preds = %do.body6
  %17 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword11 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %17, i32 0, i32 1
  %18 = load i32, i32* %keyword11, align 4
  %cmp12 = icmp eq i32 %18, 4
  br i1 %cmp12, label %if.then18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %19 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword13 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %19, i32 0, i32 1
  %20 = load i32, i32* %keyword13, align 4
  %cmp14 = icmp eq i32 %20, 5
  br i1 %cmp14, label %if.then18, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %lor.lhs.false
  %21 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword16 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %21, i32 0, i32 1
  %22 = load i32, i32* %keyword16, align 4
  %cmp17 = icmp eq i32 %22, 6
  br i1 %cmp17, label %if.then18, label %if.else22

if.then18:                                        ; preds = %lor.lhs.false15, %lor.lhs.false, %if.else
  %23 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %24 = load i8, i8* %is_class, align 1
  %tobool19 = trunc i8 %24 to i1
  %call20 = call zeroext i1 @parseLine(%struct.sTokenInfo* %23, i1 zeroext %tobool19)
  %frombool21 = zext i1 %call20 to i8
  store i8 %frombool21, i8* %read_next_token, align 1
  br label %if.end32

if.else22:                                        ; preds = %lor.lhs.false15
  %25 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type23 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %25, i32 0, i32 0
  %26 = load i32, i32* %type23, align 8
  %cmp24 = icmp eq i32 %26, 13
  br i1 %cmp24, label %if.then25, label %if.else27

if.then25:                                        ; preds = %if.else22
  %27 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call26 = call zeroext i1 @parseBlock(%struct.sTokenInfo* %27, %struct.sVString* null)
  br label %if.end31

if.else27:                                        ; preds = %if.else22
  %28 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %29 = load i8, i8* %is_class, align 1
  %tobool28 = trunc i8 %29 to i1
  %call29 = call zeroext i1 @parseLine(%struct.sTokenInfo* %28, i1 zeroext %tobool28)
  %frombool30 = zext i1 %call29 to i8
  store i8 %frombool30, i8* %read_next_token, align 1
  br label %if.end31

if.end31:                                         ; preds = %if.else27, %if.then25
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %if.then18
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.then8
  %30 = load i8, i8* %read_next_token, align 1
  %tobool34 = trunc i8 %30 to i1
  br i1 %tobool34, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.end33
  %31 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %31)
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %if.end33
  br label %do.cond

do.cond:                                          ; preds = %if.end36
  %32 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type37 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %32, i32 0, i32 0
  %33 = load i32, i32* %type37, align 8
  %cmp38 = icmp eq i32 %33, 1
  br i1 %cmp38, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %do.cond
  %34 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type39 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %34, i32 0, i32 0
  %35 = load i32, i32* %type39, align 8
  %cmp40 = icmp eq i32 %35, 14
  br i1 %cmp40, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true
  %36 = load i8, i8* %read_next_token, align 1
  %tobool41 = trunc i8 %36 to i1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %do.cond
  %37 = phi i1 [ false, %land.lhs.true ], [ false, %do.cond ], [ %tobool41, %land.rhs ]
  br i1 %37, label %do.body6, label %do.end42

do.end42:                                         ; preds = %land.end
  br label %if.end43

if.end43:                                         ; preds = %do.end42, %if.end2
  %38 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %scope44 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %38, i32 0, i32 3
  %39 = load %struct.sVString*, %struct.sVString** %scope44, align 8
  %40 = load %struct.sVString*, %struct.sVString** %saveScope, align 8
  call void @vStringCopy(%struct.sVString* %39, %struct.sVString* %40)
  %41 = load %struct.sVString*, %struct.sVString** %saveScope, align 8
  call void @vStringDelete(%struct.sVString* %41)
  %42 = load %struct.sVString*, %struct.sVString** %parentScope.addr, align 8
  %tobool45 = icmp ne %struct.sVString* %42, null
  br i1 %tobool45, label %if.then46, label %if.end48

if.then46:                                        ; preds = %if.end43
  %43 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %nestLevel47 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %43, i32 0, i32 6
  %44 = load i32, i32* %nestLevel47, align 8
  %dec = add nsw i32 %44, -1
  store i32 %dec, i32* %nestLevel47, align 8
  br label %if.end48

if.end48:                                         ; preds = %if.then46, %if.end43
  br label %do.body49

do.body49:                                        ; preds = %if.end48
  br label %do.end51

do.end51:                                         ; preds = %do.body49
  %45 = load i8, i8* %is_class, align 1
  %tobool52 = trunc i8 %45 to i1
  ret i1 %tobool52
}

declare void @vStringDelete(%struct.sVString*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @skipArrayList(%struct.sTokenInfo* %token, i1 zeroext %include_newlines) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %include_newlines.addr = alloca i8, align 1
  %nest_level = alloca i32, align 4
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  %frombool = zext i1 %include_newlines to i8
  store i8 %frombool, i8* %include_newlines.addr, align 1
  store i32 0, i32* %nest_level, align 4
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 0
  %1 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %1, 16
  br i1 %cmp, label %if.then, label %if.end12

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %nest_level, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %nest_level, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end11, %if.then
  %3 = load i32, i32* %nest_level, align 4
  %cmp1 = icmp sgt i32 %3, 0
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %4 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type2 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %4, i32 0, i32 0
  %5 = load i32, i32* %type2, align 8
  %cmp3 = icmp eq i32 %5, 1
  %lnot = xor i1 %cmp3, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %7)
  %8 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type4 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %8, i32 0, i32 0
  %9 = load i32, i32* %type4, align 8
  %cmp5 = icmp eq i32 %9, 16
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %while.body
  %10 = load i32, i32* %nest_level, align 4
  %inc7 = add nsw i32 %10, 1
  store i32 %inc7, i32* %nest_level, align 4
  br label %if.end11

if.else:                                          ; preds = %while.body
  %11 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type8 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %11, i32 0, i32 0
  %12 = load i32, i32* %type8, align 8
  %cmp9 = icmp eq i32 %12, 17
  br i1 %cmp9, label %if.then10, label %if.end

if.then10:                                        ; preds = %if.else
  %13 = load i32, i32* %nest_level, align 4
  %dec = add nsw i32 %13, -1
  store i32 %dec, i32* %nest_level, align 4
  br label %if.end

if.end:                                           ; preds = %if.then10, %if.else
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then6
  br label %while.cond

while.end:                                        ; preds = %land.end
  %14 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %15 = load i8, i8* %include_newlines.addr, align 1
  %tobool = trunc i8 %15 to i1
  call void @readTokenFull(%struct.sTokenInfo* %14, i1 zeroext %tobool, %struct.sVString* null)
  br label %if.end12

if.end12:                                         ; preds = %while.end, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @findCmdTerm(%struct.sTokenInfo* %token, i1 zeroext %include_newlines, i1 zeroext %include_commas) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %include_newlines.addr = alloca i8, align 1
  %include_commas.addr = alloca i8, align 1
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  %frombool = zext i1 %include_newlines to i8
  store i8 %frombool, i8* %include_newlines.addr, align 1
  %frombool1 = zext i1 %include_commas to i8
  store i8 %frombool1, i8* %include_commas.addr, align 1
  br label %while.cond

while.cond:                                       ; preds = %if.end25, %entry
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 0
  %1 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %1, 4
  br i1 %cmp, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.cond
  %2 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type2 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %2, i32 0, i32 0
  %3 = load i32, i32* %type2, align 8
  %cmp3 = icmp eq i32 %3, 14
  br i1 %cmp3, label %land.end, label %land.lhs.true4

land.lhs.true4:                                   ; preds = %land.lhs.true
  %4 = load i8, i8* %include_commas.addr, align 1
  %tobool = trunc i8 %4 to i1
  br i1 %tobool, label %land.lhs.true5, label %land.rhs

land.lhs.true5:                                   ; preds = %land.lhs.true4
  %5 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type6 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %5, i32 0, i32 0
  %6 = load i32, i32* %type6, align 8
  %cmp7 = icmp eq i32 %6, 6
  br i1 %cmp7, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true5, %land.lhs.true4
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type8 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %7, i32 0, i32 0
  %8 = load i32, i32* %type8, align 8
  %cmp9 = icmp eq i32 %8, 1
  %lnot = xor i1 %cmp9, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true5, %land.lhs.true, %while.cond
  %9 = phi i1 [ false, %land.lhs.true5 ], [ false, %land.lhs.true ], [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %9, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %10 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type10 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %10, i32 0, i32 0
  %11 = load i32, i32* %type10, align 8
  %cmp11 = icmp eq i32 %11, 13
  br i1 %cmp11, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %12 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call = call zeroext i1 @parseBlock(%struct.sTokenInfo* %12, %struct.sVString* null)
  %13 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %14 = load i8, i8* %include_newlines.addr, align 1
  %tobool12 = trunc i8 %14 to i1
  call void @readTokenFull(%struct.sTokenInfo* %13, i1 zeroext %tobool12, %struct.sVString* null)
  br label %if.end25

if.else:                                          ; preds = %while.body
  %15 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type13 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %15, i32 0, i32 0
  %16 = load i32, i32* %type13, align 8
  %cmp14 = icmp eq i32 %16, 8
  br i1 %cmp14, label %if.then15, label %if.else17

if.then15:                                        ; preds = %if.else
  %17 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %18 = load i8, i8* %include_newlines.addr, align 1
  %tobool16 = trunc i8 %18 to i1
  call void @skipArgumentList(%struct.sTokenInfo* %17, i1 zeroext %tobool16, %struct.sVString* null)
  br label %if.end24

if.else17:                                        ; preds = %if.else
  %19 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type18 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %19, i32 0, i32 0
  %20 = load i32, i32* %type18, align 8
  %cmp19 = icmp eq i32 %20, 16
  br i1 %cmp19, label %if.then20, label %if.else22

if.then20:                                        ; preds = %if.else17
  %21 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %22 = load i8, i8* %include_newlines.addr, align 1
  %tobool21 = trunc i8 %22 to i1
  call void @skipArrayList(%struct.sTokenInfo* %21, i1 zeroext %tobool21)
  br label %if.end

if.else22:                                        ; preds = %if.else17
  %23 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %24 = load i8, i8* %include_newlines.addr, align 1
  %tobool23 = trunc i8 %24 to i1
  call void @readTokenFull(%struct.sTokenInfo* %23, i1 zeroext %tobool23, %struct.sVString* null)
  br label %if.end

if.end:                                           ; preds = %if.else22, %if.then20
  br label %if.end24

if.end24:                                         ; preds = %if.end, %if.then15
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.then
  br label %while.cond

while.end:                                        ; preds = %land.end
  %25 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type26 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %25, i32 0, i32 0
  %26 = load i32, i32* %type26, align 8
  %cmp27 = icmp eq i32 %26, 4
  ret i1 %cmp27
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseFunction(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %name = alloca %struct.sTokenInfo*, align 8
  %signature = alloca %struct.sVString*, align 8
  %is_class = alloca i8, align 1
  %is_generator = alloca i8, align 1
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  %0 = load %struct.sObjPool*, %struct.sObjPool** @TokenPool, align 8
  %call = call i8* @objPoolGet(%struct.sObjPool* %0)
  %1 = bitcast i8* %call to %struct.sTokenInfo*
  store %struct.sTokenInfo* %1, %struct.sTokenInfo** %name, align 8
  %call1 = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call1, %struct.sVString** %signature, align 8
  store i8 0, i8* %is_class, align 1
  store i8 0, i8* %is_generator, align 1
  %2 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @copyToken(%struct.sTokenInfo* %2, %struct.sTokenInfo* %3, i1 zeroext true)
  %4 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  call void @readToken(%struct.sTokenInfo* %4)
  %5 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %5, i32 0, i32 0
  %6 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %6, 20
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8 1, i8* %is_generator, align 1
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  call void @readToken(%struct.sTokenInfo* %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  %type2 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %8, i32 0, i32 0
  %9 = load i32, i32* %type2, align 8
  %cmp3 = icmp eq i32 %9, 8
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %10 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %11 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  call void @copyToken(%struct.sTokenInfo* %10, %struct.sTokenInfo* %11, i1 zeroext false)
  %12 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  %string = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %12, i32 0, i32 2
  %13 = load %struct.sVString*, %struct.sVString** %string, align 8
  call void @anonGenerate(%struct.sVString* %13, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i64 0, i64 0), i32 0)
  br label %if.end10

if.else:                                          ; preds = %if.end
  %14 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  %type5 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %14, i32 0, i32 0
  %15 = load i32, i32* %type5, align 8
  %cmp6 = icmp eq i32 %15, 9
  br i1 %cmp6, label %if.else8, label %if.then7

if.then7:                                         ; preds = %if.else
  br label %cleanUp

if.else8:                                         ; preds = %if.else
  %16 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %16)
  br label %if.end9

if.end9:                                          ; preds = %if.else8
  br label %if.end10

if.end10:                                         ; preds = %if.end9, %if.then4
  br label %while.cond

while.cond:                                       ; preds = %if.end16, %if.end10
  %17 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type11 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %17, i32 0, i32 0
  %18 = load i32, i32* %type11, align 8
  %cmp12 = icmp eq i32 %18, 12
  br i1 %cmp12, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %19 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %19)
  %20 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type13 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %20, i32 0, i32 0
  %21 = load i32, i32* %type13, align 8
  %cmp14 = icmp eq i32 %21, 7
  br i1 %cmp14, label %if.end16, label %if.then15

if.then15:                                        ; preds = %while.body
  %22 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  %23 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @addContext(%struct.sTokenInfo* %22, %struct.sTokenInfo* %23)
  %24 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %24)
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %25 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type17 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %25, i32 0, i32 0
  %26 = load i32, i32* %type17, align 8
  %cmp18 = icmp eq i32 %26, 8
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %while.end
  %27 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %28 = load %struct.sVString*, %struct.sVString** %signature, align 8
  call void @skipArgumentList(%struct.sTokenInfo* %27, i1 zeroext false, %struct.sVString* %28)
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %while.end
  %29 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type21 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %29, i32 0, i32 0
  %30 = load i32, i32* %type21, align 8
  %cmp22 = icmp eq i32 %30, 13
  br i1 %cmp22, label %if.then23, label %if.end30

if.then23:                                        ; preds = %if.end20
  %31 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %32 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  %string24 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %32, i32 0, i32 2
  %33 = load %struct.sVString*, %struct.sVString** %string24, align 8
  %call25 = call zeroext i1 @parseBlock(%struct.sTokenInfo* %31, %struct.sVString* %33)
  %frombool = zext i1 %call25 to i8
  store i8 %frombool, i8* %is_class, align 1
  %34 = load i8, i8* %is_class, align 1
  %tobool = trunc i8 %34 to i1
  br i1 %tobool, label %if.then26, label %if.else27

if.then26:                                        ; preds = %if.then23
  %35 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  %36 = load %struct.sVString*, %struct.sVString** %signature, align 8
  call void @makeClassTag(%struct.sTokenInfo* %35, %struct.sVString* %36, %struct.sVString* null)
  br label %if.end29

if.else27:                                        ; preds = %if.then23
  %37 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  %38 = load %struct.sVString*, %struct.sVString** %signature, align 8
  %39 = load i8, i8* %is_generator, align 1
  %tobool28 = trunc i8 %39 to i1
  call void @makeFunctionTag(%struct.sTokenInfo* %37, %struct.sVString* %38, i1 zeroext %tobool28)
  br label %if.end29

if.end29:                                         ; preds = %if.else27, %if.then26
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.end20
  %40 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call31 = call zeroext i1 @findCmdTerm(%struct.sTokenInfo* %40, i1 zeroext false, i1 zeroext false)
  br label %cleanUp

cleanUp:                                          ; preds = %if.end30, %if.then7
  %41 = load %struct.sVString*, %struct.sVString** %signature, align 8
  call void @vStringDelete(%struct.sVString* %41)
  %42 = load %struct.sObjPool*, %struct.sObjPool** @TokenPool, align 8
  %43 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  %44 = bitcast %struct.sTokenInfo* %43 to i8*
  call void @objPoolPut(%struct.sObjPool* %42, i8* %44)
  ret void
}

declare void @anonGenerate(%struct.sVString*, i8*, i32) #1

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
define internal void @makeClassTag(%struct.sTokenInfo* %token, %struct.sVString* %signature, %struct.sVString* %inheritance) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %signature.addr = alloca %struct.sVString*, align 8
  %inheritance.addr = alloca %struct.sVString*, align 8
  %fulltag = alloca %struct.sVString*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  store %struct.sVString* %signature, %struct.sVString** %signature.addr, align 8
  store %struct.sVString* %inheritance, %struct.sVString** %inheritance.addr, align 8
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
  %22 = load %struct.sVString*, %struct.sVString** %signature.addr, align 8
  %23 = load %struct.sVString*, %struct.sVString** %inheritance.addr, align 8
  call void @makeJsTag(%struct.sTokenInfo* %21, i32 1, %struct.sVString* %22, %struct.sVString* %23)
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end
  %24 = load %struct.sVString*, %struct.sVString** %fulltag, align 8
  call void @vStringDelete(%struct.sVString* %24)
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @makeFunctionTag(%struct.sTokenInfo* %token, %struct.sVString* %signature, i1 zeroext %generator) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %signature.addr = alloca %struct.sVString*, align 8
  %generator.addr = alloca i8, align 1
  %fulltag = alloca %struct.sVString*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  store %struct.sVString* %signature, %struct.sVString** %signature.addr, align 8
  %frombool = zext i1 %generator to i8
  store i8 %frombool, i8* %generator.addr, align 1
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %ignoreTag = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 7
  %1 = load i8, i8* %ignoreTag, align 4
  %tobool = trunc i8 %1 to i1
  br i1 %tobool, label %if.end10, label %if.then

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
  br i1 %call5, label %if.end9, label %if.then6

if.then6:                                         ; preds = %if.end
  %19 = load %struct.sPtrArray*, %struct.sPtrArray** @FunctionNames, align 8
  %20 = load %struct.sVString*, %struct.sVString** %fulltag, align 8
  %call7 = call %struct.sVString* @vStringNewCopy(%struct.sVString* %20)
  call void @stringListAdd(%struct.sPtrArray* %19, %struct.sVString* %call7)
  %21 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %22 = load i8, i8* %generator.addr, align 1
  %tobool8 = trunc i8 %22 to i1
  %23 = zext i1 %tobool8 to i64
  %cond = select i1 %tobool8, i32 6, i32 0
  %24 = load %struct.sVString*, %struct.sVString** %signature.addr, align 8
  call void @makeJsTag(%struct.sTokenInfo* %21, i32 %cond, %struct.sVString* %24, %struct.sVString* null)
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end
  %25 = load %struct.sVString*, %struct.sVString** %fulltag, align 8
  call void @vStringDelete(%struct.sVString* %25)
  br label %if.end10

if.end10:                                         ; preds = %if.end9, %entry
  ret void
}

declare zeroext i1 @stringListHas(%struct.sPtrArray*, i8*) #1

declare void @stringListAdd(%struct.sPtrArray*, %struct.sVString*) #1

declare %struct.sVString* @vStringNewCopy(%struct.sVString*) #1

declare i8* @strrchr(i8*, i32) #1

declare void @vStringNCatS(%struct.sVString*, i8*, i64) #1

declare void @initTagEntry(%struct.sTagEntryInfo*, i8*, i32) #1

declare i32 @makeTagEntry(%struct.sTagEntryInfo*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @parseLoop(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %is_terminated = alloca i8, align 1
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  store i8 1, i8* %is_terminated, align 1
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 1
  %1 = load i32, i32* %keyword, align 4
  %cmp = icmp eq i32 %1, 9
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword1 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %2, i32 0, i32 1
  %3 = load i32, i32* %keyword1, align 4
  %cmp2 = icmp eq i32 %3, 10
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
  call void @skipArgumentList(%struct.sTokenInfo* %7, i1 zeroext false, %struct.sVString* null)
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then
  %8 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type5 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %8, i32 0, i32 0
  %9 = load i32, i32* %type5, align 8
  %cmp6 = icmp eq i32 %9, 13
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end
  %10 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call = call zeroext i1 @parseBlock(%struct.sTokenInfo* %10, %struct.sVString* null)
  br label %if.end9

if.else:                                          ; preds = %if.end
  %11 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call8 = call zeroext i1 @parseLine(%struct.sTokenInfo* %11, i1 zeroext false)
  %frombool = zext i1 %call8 to i8
  store i8 %frombool, i8* %is_terminated, align 1
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then7
  br label %if.end39

if.else10:                                        ; preds = %lor.lhs.false
  %12 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword11 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %12, i32 0, i32 1
  %13 = load i32, i32* %keyword11, align 4
  %cmp12 = icmp eq i32 %13, 11
  br i1 %cmp12, label %if.then13, label %if.end38

if.then13:                                        ; preds = %if.else10
  %14 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %14)
  %15 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type14 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %15, i32 0, i32 0
  %16 = load i32, i32* %type14, align 8
  %cmp15 = icmp eq i32 %16, 13
  br i1 %cmp15, label %if.then16, label %if.else18

if.then16:                                        ; preds = %if.then13
  %17 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call17 = call zeroext i1 @parseBlock(%struct.sTokenInfo* %17, %struct.sVString* null)
  br label %if.end21

if.else18:                                        ; preds = %if.then13
  %18 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call19 = call zeroext i1 @parseLine(%struct.sTokenInfo* %18, i1 zeroext false)
  %frombool20 = zext i1 %call19 to i8
  store i8 %frombool20, i8* %is_terminated, align 1
  br label %if.end21

if.end21:                                         ; preds = %if.else18, %if.then16
  %19 = load i8, i8* %is_terminated, align 1
  %tobool = trunc i8 %19 to i1
  br i1 %tobool, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end21
  %20 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %20)
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.end21
  %21 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword24 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %21, i32 0, i32 1
  %22 = load i32, i32* %keyword24, align 4
  %cmp25 = icmp eq i32 %22, 10
  br i1 %cmp25, label %if.then26, label %if.end37

if.then26:                                        ; preds = %if.end23
  %23 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %23)
  %24 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type27 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %24, i32 0, i32 0
  %25 = load i32, i32* %type27, align 8
  %cmp28 = icmp eq i32 %25, 8
  br i1 %cmp28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.then26
  %26 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @skipArgumentList(%struct.sTokenInfo* %26, i1 zeroext true, %struct.sVString* null)
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.then26
  %27 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type31 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %27, i32 0, i32 0
  %28 = load i32, i32* %type31, align 8
  %cmp32 = icmp eq i32 %28, 4
  br i1 %cmp32, label %if.end36, label %if.then33

if.then33:                                        ; preds = %if.end30
  %29 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call34 = call zeroext i1 @parseLine(%struct.sTokenInfo* %29, i1 zeroext false)
  %frombool35 = zext i1 %call34 to i8
  store i8 %frombool35, i8* %is_terminated, align 1
  br label %if.end36

if.end36:                                         ; preds = %if.then33, %if.end30
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.end23
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %if.else10
  br label %if.end39

if.end39:                                         ; preds = %if.end38, %if.end9
  %30 = load i8, i8* %is_terminated, align 1
  %tobool40 = trunc i8 %30 to i1
  ret i1 %tobool40
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
  %cmp = icmp eq i32 %2, 12
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
  call void @skipArgumentList(%struct.sTokenInfo* %6, i1 zeroext false, %struct.sVString* null)
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type4 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %7, i32 0, i32 0
  %8 = load i32, i32* %type4, align 8
  %cmp5 = icmp eq i32 %8, 13
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end3
  %9 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call = call zeroext i1 @parseBlock(%struct.sTokenInfo* %9, %struct.sVString* null)
  br label %if.end8

if.else:                                          ; preds = %if.end3
  %10 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call7 = call zeroext i1 @findCmdTerm(%struct.sTokenInfo* %10, i1 zeroext true, i1 zeroext false)
  %frombool = zext i1 %call7 to i8
  store i8 %frombool, i8* %read_next_token, align 1
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then6
  %11 = load i8, i8* %read_next_token, align 1
  %tobool = trunc i8 %11 to i1
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
  call void @skipArgumentList(%struct.sTokenInfo* %3, i1 zeroext false, %struct.sVString* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type1 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %4, i32 0, i32 0
  %5 = load i32, i32* %type1, align 8
  %cmp2 = icmp eq i32 %5, 13
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %6 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call = call zeroext i1 @parseBlock(%struct.sTokenInfo* %6, %struct.sVString* null)
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @parseES6Class(%struct.sTokenInfo* %token, %struct.sTokenInfo* %targetName) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %targetName.addr = alloca %struct.sTokenInfo*, align 8
  %className = alloca %struct.sTokenInfo*, align 8
  %inheritance = alloca %struct.sVString*, align 8
  %is_anonymous = alloca i8, align 1
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  store %struct.sTokenInfo* %targetName, %struct.sTokenInfo** %targetName.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.sObjPool*, %struct.sObjPool** @TokenPool, align 8
  %call = call i8* @objPoolGet(%struct.sObjPool* %0)
  %1 = bitcast i8* %call to %struct.sTokenInfo*
  store %struct.sTokenInfo* %1, %struct.sTokenInfo** %className, align 8
  store %struct.sVString* null, %struct.sVString** %inheritance, align 8
  store i8 1, i8* %is_anonymous, align 1
  %2 = load %struct.sTokenInfo*, %struct.sTokenInfo** %className, align 8
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @copyToken(%struct.sTokenInfo* %2, %struct.sTokenInfo* %3, i1 zeroext true)
  %4 = load %struct.sTokenInfo*, %struct.sTokenInfo** %className, align 8
  call void @readToken(%struct.sTokenInfo* %4)
  %5 = load %struct.sTokenInfo*, %struct.sTokenInfo** %className, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %5, i32 0, i32 0
  %6 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %6, 9
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.end
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %7)
  store i8 0, i8* %is_anonymous, align 1
  br label %if.end2

if.else:                                          ; preds = %do.end
  %8 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %9 = load %struct.sTokenInfo*, %struct.sTokenInfo** %className, align 8
  call void @copyToken(%struct.sTokenInfo* %8, %struct.sTokenInfo* %9, i1 zeroext true)
  %10 = load %struct.sTokenInfo*, %struct.sTokenInfo** %targetName.addr, align 8
  %tobool = icmp ne %struct.sTokenInfo* %10, null
  br i1 %tobool, label %if.end, label %if.then1

if.then1:                                         ; preds = %if.else
  %11 = load %struct.sTokenInfo*, %struct.sTokenInfo** %className, align 8
  %string = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %11, i32 0, i32 2
  %12 = load %struct.sVString*, %struct.sVString** %string, align 8
  call void @anonGenerate(%struct.sVString* %12, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i64 0, i64 0), i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.else
  br label %if.end2

if.end2:                                          ; preds = %if.end, %if.then
  %13 = load %struct.sTokenInfo*, %struct.sTokenInfo** %targetName.addr, align 8
  %tobool3 = icmp ne %struct.sTokenInfo* %13, null
  br i1 %tobool3, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end2
  %14 = load %struct.sTokenInfo*, %struct.sTokenInfo** %className, align 8
  store %struct.sTokenInfo* %14, %struct.sTokenInfo** %targetName.addr, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end2
  %15 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %15, i32 0, i32 1
  %16 = load i32, i32* %keyword, align 4
  %cmp6 = icmp eq i32 %16, 21
  br i1 %cmp6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end5
  %call8 = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call8, %struct.sVString** %inheritance, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end5
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end9
  %17 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type10 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %17, i32 0, i32 0
  %18 = load i32, i32* %type10, align 8
  %cmp11 = icmp eq i32 %18, 13
  br i1 %cmp11, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.cond
  %19 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type12 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %19, i32 0, i32 0
  %20 = load i32, i32* %type12, align 8
  %cmp13 = icmp eq i32 %20, 1
  br i1 %cmp13, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true
  %21 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type14 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %21, i32 0, i32 0
  %22 = load i32, i32* %type14, align 8
  %cmp15 = icmp eq i32 %22, 4
  %lnot = xor i1 %cmp15, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %23 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %23, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %24 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %25 = load %struct.sVString*, %struct.sVString** %inheritance, align 8
  call void @readTokenFull(%struct.sTokenInfo* %24, i1 zeroext false, %struct.sVString* %25)
  br label %while.cond

while.end:                                        ; preds = %land.end
  %26 = load %struct.sVString*, %struct.sVString** %inheritance, align 8
  %tobool16 = icmp ne %struct.sVString* %26, null
  br i1 %tobool16, label %land.lhs.true17, label %if.end23

land.lhs.true17:                                  ; preds = %while.end
  %27 = load %struct.sVString*, %struct.sVString** %inheritance, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %27, i32 0, i32 0
  %28 = load i64, i64* %length, align 8
  %cmp18 = icmp ugt i64 %28, 0
  br i1 %cmp18, label %land.lhs.true19, label %if.end23

land.lhs.true19:                                  ; preds = %land.lhs.true17
  %29 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type20 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %29, i32 0, i32 0
  %30 = load i32, i32* %type20, align 8
  %cmp21 = icmp eq i32 %30, 1
  br i1 %cmp21, label %if.end23, label %if.then22

if.then22:                                        ; preds = %land.lhs.true19
  %31 = load %struct.sVString*, %struct.sVString** %inheritance, align 8
  call void @vStringChop(%struct.sVString* %31)
  %32 = load %struct.sVString*, %struct.sVString** %inheritance, align 8
  call void @vStringStripTrailing(%struct.sVString* %32)
  %33 = load %struct.sVString*, %struct.sVString** %inheritance, align 8
  call void @vStringStripLeading(%struct.sVString* %33)
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %land.lhs.true19, %land.lhs.true17, %while.end
  br label %do.body24

do.body24:                                        ; preds = %if.end23
  br label %do.end25

do.end25:                                         ; preds = %do.body24
  %34 = load %struct.sTokenInfo*, %struct.sTokenInfo** %targetName.addr, align 8
  %35 = load %struct.sVString*, %struct.sVString** %inheritance, align 8
  call void @makeJsTag(%struct.sTokenInfo* %34, i32 1, %struct.sVString* null, %struct.sVString* %35)
  %36 = load i8, i8* %is_anonymous, align 1
  %tobool26 = trunc i8 %36 to i1
  br i1 %tobool26, label %if.end30, label %land.lhs.true27

land.lhs.true27:                                  ; preds = %do.end25
  %37 = load %struct.sTokenInfo*, %struct.sTokenInfo** %targetName.addr, align 8
  %38 = load %struct.sTokenInfo*, %struct.sTokenInfo** %className, align 8
  %cmp28 = icmp ne %struct.sTokenInfo* %37, %38
  br i1 %cmp28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %land.lhs.true27
  %39 = load %struct.sTokenInfo*, %struct.sTokenInfo** %className, align 8
  %40 = load %struct.sVString*, %struct.sVString** %inheritance, align 8
  call void @makeJsTag(%struct.sTokenInfo* %39, i32 1, %struct.sVString* null, %struct.sVString* %40)
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %land.lhs.true27, %do.end25
  %41 = load %struct.sVString*, %struct.sVString** %inheritance, align 8
  %tobool31 = icmp ne %struct.sVString* %41, null
  br i1 %tobool31, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end30
  %42 = load %struct.sVString*, %struct.sVString** %inheritance, align 8
  call void @vStringDelete(%struct.sVString* %42)
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.end30
  %43 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type34 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %43, i32 0, i32 0
  %44 = load i32, i32* %type34, align 8
  %cmp35 = icmp eq i32 %44, 13
  br i1 %cmp35, label %if.then36, label %if.end38

if.then36:                                        ; preds = %if.end33
  %45 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %46 = load %struct.sTokenInfo*, %struct.sTokenInfo** %targetName.addr, align 8
  %call37 = call zeroext i1 @parseMethods(%struct.sTokenInfo* %45, %struct.sTokenInfo* %46, i1 zeroext true)
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %if.end33
  %47 = load %struct.sObjPool*, %struct.sObjPool** @TokenPool, align 8
  %48 = load %struct.sTokenInfo*, %struct.sTokenInfo** %className, align 8
  %49 = bitcast %struct.sTokenInfo* %48 to i8*
  call void @objPoolPut(%struct.sObjPool* %47, i8* %49)
  br label %do.body39

do.body39:                                        ; preds = %if.end38
  br label %do.end40

do.end40:                                         ; preds = %do.body39
  ret i1 true
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @parseStatement(%struct.sTokenInfo* %token, i1 zeroext %is_inside_class) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %is_inside_class.addr = alloca i8, align 1
  %name = alloca %struct.sTokenInfo*, align 8
  %secondary_name = alloca %struct.sTokenInfo*, align 8
  %method_body_token = alloca %struct.sTokenInfo*, align 8
  %saveScope = alloca %struct.sVString*, align 8
  %is_class = alloca i8, align 1
  %is_var = alloca i8, align 1
  %is_const = alloca i8, align 1
  %is_terminated = alloca i8, align 1
  %is_global = alloca i8, align 1
  %has_methods = alloca i8, align 1
  %fulltag = alloca %struct.sVString*, align 8
  %vStringClear_s = alloca %struct.sVString*, align 8
  %vStringClear_s54 = alloca %struct.sVString*, align 8
  %signature = alloca %struct.sVString*, align 8
  %parenDepth = alloca i32, align 4
  %signature189 = alloca %struct.sVString*, align 8
  %is_generator = alloca i8, align 1
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  %frombool = zext i1 %is_inside_class to i8
  store i8 %frombool, i8* %is_inside_class.addr, align 1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.sObjPool*, %struct.sObjPool** @TokenPool, align 8
  %call = call i8* @objPoolGet(%struct.sObjPool* %0)
  %1 = bitcast i8* %call to %struct.sTokenInfo*
  store %struct.sTokenInfo* %1, %struct.sTokenInfo** %name, align 8
  %2 = load %struct.sObjPool*, %struct.sObjPool** @TokenPool, align 8
  %call1 = call i8* @objPoolGet(%struct.sObjPool* %2)
  %3 = bitcast i8* %call1 to %struct.sTokenInfo*
  store %struct.sTokenInfo* %3, %struct.sTokenInfo** %secondary_name, align 8
  %4 = load %struct.sObjPool*, %struct.sObjPool** @TokenPool, align 8
  %call2 = call i8* @objPoolGet(%struct.sObjPool* %4)
  %5 = bitcast i8* %call2 to %struct.sTokenInfo*
  store %struct.sTokenInfo* %5, %struct.sTokenInfo** %method_body_token, align 8
  %call3 = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call3, %struct.sVString** %saveScope, align 8
  store i8 0, i8* %is_class, align 1
  store i8 0, i8* %is_var, align 1
  store i8 0, i8* %is_const, align 1
  store i8 1, i8* %is_terminated, align 1
  store i8 0, i8* %is_global, align 1
  store i8 0, i8* %has_methods, align 1
  %6 = load %struct.sVString*, %struct.sVString** %saveScope, align 8
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %scope = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %7, i32 0, i32 3
  %8 = load %struct.sVString*, %struct.sVString** %scope, align 8
  call void @vStringCopy(%struct.sVString* %6, %struct.sVString* %8)
  %9 = load i8, i8* %is_inside_class.addr, align 1
  %tobool = trunc i8 %9 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  store i8 1, i8* %is_class, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end
  %10 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %10, i32 0, i32 1
  %11 = load i32, i32* %keyword, align 4
  %cmp = icmp eq i32 %11, 4
  br i1 %cmp, label %if.then9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %12 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword4 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %12, i32 0, i32 1
  %13 = load i32, i32* %keyword4, align 4
  %cmp5 = icmp eq i32 %13, 5
  br i1 %cmp5, label %if.then9, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %14 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword7 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %14, i32 0, i32 1
  %15 = load i32, i32* %keyword7, align 4
  %cmp8 = icmp eq i32 %15, 6
  br i1 %cmp8, label %if.then9, label %if.end18

if.then9:                                         ; preds = %lor.lhs.false6, %lor.lhs.false, %if.end
  br label %do.body10

do.body10:                                        ; preds = %if.then9
  br label %do.end11

do.end11:                                         ; preds = %do.body10
  %16 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword12 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %16, i32 0, i32 1
  %17 = load i32, i32* %keyword12, align 4
  %cmp13 = icmp eq i32 %17, 6
  %frombool14 = zext i1 %cmp13 to i8
  store i8 %frombool14, i8* %is_const, align 1
  %18 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %nestLevel = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %18, i32 0, i32 6
  %19 = load i32, i32* %nestLevel, align 8
  %cmp15 = icmp eq i32 %19, 0
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %do.end11
  store i8 1, i8* %is_global, align 1
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %do.end11
  %20 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %20)
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %lor.lhs.false6
  br label %nextVar

nextVar:                                          ; preds = %if.then422, %if.then171, %if.end18
  %21 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword19 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %21, i32 0, i32 1
  %22 = load i32, i32* %keyword19, align 4
  %cmp20 = icmp eq i32 %22, 8
  br i1 %cmp20, label %if.then21, label %if.end27

if.then21:                                        ; preds = %nextVar
  br label %do.body22

do.body22:                                        ; preds = %if.then21
  br label %do.end23

do.end23:                                         ; preds = %do.body22
  %23 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %23)
  %24 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %24, i32 0, i32 0
  %25 = load i32, i32* %type, align 8
  %cmp24 = icmp eq i32 %25, 12
  br i1 %cmp24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %do.end23
  %26 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %26)
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %do.end23
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %nextVar
  %27 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  %28 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @copyToken(%struct.sTokenInfo* %27, %struct.sTokenInfo* %28, i1 zeroext true)
  br label %do.body28

do.body28:                                        ; preds = %if.end27
  br label %do.end29

do.end29:                                         ; preds = %do.body28
  br label %while.cond

while.cond:                                       ; preds = %if.end146, %do.end29
  %29 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type30 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %29, i32 0, i32 0
  %30 = load i32, i32* %type30, align 8
  %cmp31 = icmp eq i32 %30, 14
  br i1 %cmp31, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.cond
  %31 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type32 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %31, i32 0, i32 0
  %32 = load i32, i32* %type32, align 8
  %cmp33 = icmp eq i32 %32, 4
  br i1 %cmp33, label %land.end, label %land.lhs.true34

land.lhs.true34:                                  ; preds = %land.lhs.true
  %33 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type35 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %33, i32 0, i32 0
  %34 = load i32, i32* %type35, align 8
  %cmp36 = icmp eq i32 %34, 15
  br i1 %cmp36, label %land.end, label %land.lhs.true37

land.lhs.true37:                                  ; preds = %land.lhs.true34
  %35 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type38 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %35, i32 0, i32 0
  %36 = load i32, i32* %type38, align 8
  %cmp39 = icmp eq i32 %36, 6
  br i1 %cmp39, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true37
  %37 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type40 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %37, i32 0, i32 0
  %38 = load i32, i32* %type40, align 8
  %cmp41 = icmp eq i32 %38, 1
  %lnot = xor i1 %cmp41, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true37, %land.lhs.true34, %land.lhs.true, %while.cond
  %39 = phi i1 [ false, %land.lhs.true37 ], [ false, %land.lhs.true34 ], [ false, %land.lhs.true ], [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %39, label %while.body, label %while.end147

while.body:                                       ; preds = %land.end
  %40 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type42 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %40, i32 0, i32 0
  %41 = load i32, i32* %type42, align 8
  %cmp43 = icmp eq i32 %41, 13
  br i1 %cmp43, label %if.then44, label %if.end46

if.then44:                                        ; preds = %while.body
  %42 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call45 = call zeroext i1 @parseBlock(%struct.sTokenInfo* %42, %struct.sVString* null)
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %while.body
  %43 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type47 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %43, i32 0, i32 0
  %44 = load i32, i32* %type47, align 8
  %cmp48 = icmp eq i32 %44, 12
  br i1 %cmp48, label %if.then49, label %if.else137

if.then49:                                        ; preds = %if.end46
  store i8 0, i8* %is_global, align 1
  br label %do.body50

do.body50:                                        ; preds = %if.then49
  %45 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %scope51 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %45, i32 0, i32 3
  %46 = load %struct.sVString*, %struct.sVString** %scope51, align 8
  store %struct.sVString* %46, %struct.sVString** %vStringClear_s, align 8
  %47 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %47, i32 0, i32 0
  store i64 0, i64* %length, align 8
  %48 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %48, i32 0, i32 2
  %49 = load i8*, i8** %buffer, align 8
  %arrayidx = getelementptr inbounds i8, i8* %49, i64 0
  store i8 0, i8* %arrayidx, align 1
  br label %do.end52

do.end52:                                         ; preds = %do.body50
  br label %do.body53

do.body53:                                        ; preds = %do.end52
  %50 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  %scope55 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %50, i32 0, i32 3
  %51 = load %struct.sVString*, %struct.sVString** %scope55, align 8
  store %struct.sVString* %51, %struct.sVString** %vStringClear_s54, align 8
  %52 = load %struct.sVString*, %struct.sVString** %vStringClear_s54, align 8
  %length56 = getelementptr inbounds %struct.sVString, %struct.sVString* %52, i32 0, i32 0
  store i64 0, i64* %length56, align 8
  %53 = load %struct.sVString*, %struct.sVString** %vStringClear_s54, align 8
  %buffer57 = getelementptr inbounds %struct.sVString, %struct.sVString* %53, i32 0, i32 2
  %54 = load i8*, i8** %buffer57, align 8
  %arrayidx58 = getelementptr inbounds i8, i8* %54, i64 0
  store i8 0, i8* %arrayidx58, align 1
  br label %do.end59

do.end59:                                         ; preds = %do.body53
  br label %do.body60

do.body60:                                        ; preds = %do.cond, %do.end59
  %55 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %55)
  %56 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type61 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %56, i32 0, i32 0
  %57 = load i32, i32* %type61, align 8
  %cmp62 = icmp eq i32 %57, 7
  br i1 %cmp62, label %if.else67, label %if.then63

if.then63:                                        ; preds = %do.body60
  %58 = load i8, i8* %is_class, align 1
  %tobool64 = trunc i8 %58 to i1
  br i1 %tobool64, label %if.then65, label %if.else

if.then65:                                        ; preds = %if.then63
  %59 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %60 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  %string = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %60, i32 0, i32 2
  %61 = load %struct.sVString*, %struct.sVString** %string, align 8
  call void @addToScope(%struct.sTokenInfo* %59, %struct.sVString* %61)
  br label %if.end66

if.else:                                          ; preds = %if.then63
  %62 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  %63 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @addContext(%struct.sTokenInfo* %62, %struct.sTokenInfo* %63)
  br label %if.end66

if.end66:                                         ; preds = %if.else, %if.then65
  %64 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %64)
  br label %if.end133

if.else67:                                        ; preds = %do.body60
  %65 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword68 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %65, i32 0, i32 1
  %66 = load i32, i32* %keyword68, align 4
  %cmp69 = icmp eq i32 %66, 3
  br i1 %cmp69, label %if.then70, label %if.else131

if.then70:                                        ; preds = %if.else67
  %67 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  %type71 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %67, i32 0, i32 0
  %68 = load i32, i32* %type71, align 8
  %cmp72 = icmp eq i32 %68, 9
  br i1 %cmp72, label %if.end77, label %lor.lhs.false73

lor.lhs.false73:                                  ; preds = %if.then70
  %69 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  %type74 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %69, i32 0, i32 0
  %70 = load i32, i32* %type74, align 8
  %cmp75 = icmp eq i32 %70, 10
  br i1 %cmp75, label %if.end77, label %if.then76

if.then76:                                        ; preds = %lor.lhs.false73
  br label %cleanUp

if.end77:                                         ; preds = %lor.lhs.false73, %if.then70
  %71 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  call void @makeClassTag(%struct.sTokenInfo* %71, %struct.sVString* null, %struct.sVString* null)
  store i8 1, i8* %is_class, align 1
  %72 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %72)
  %73 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type78 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %73, i32 0, i32 0
  %74 = load i32, i32* %type78, align 8
  %cmp79 = icmp eq i32 %74, 12
  br i1 %cmp79, label %if.then80, label %if.else119

if.then80:                                        ; preds = %if.end77
  %75 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %75)
  %76 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type81 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %76, i32 0, i32 0
  %77 = load i32, i32* %type81, align 8
  %cmp82 = icmp eq i32 %77, 7
  br i1 %cmp82, label %if.end118, label %if.then83

if.then83:                                        ; preds = %if.then80
  %call84 = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call84, %struct.sVString** %signature, align 8
  %78 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %79 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  %string85 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %79, i32 0, i32 2
  %80 = load %struct.sVString*, %struct.sVString** %string85, align 8
  call void @addToScope(%struct.sTokenInfo* %78, %struct.sVString* %80)
  %81 = load %struct.sTokenInfo*, %struct.sTokenInfo** %method_body_token, align 8
  %82 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @copyToken(%struct.sTokenInfo* %81, %struct.sTokenInfo* %82, i1 zeroext true)
  %83 = load %struct.sTokenInfo*, %struct.sTokenInfo** %method_body_token, align 8
  call void @readToken(%struct.sTokenInfo* %83)
  br label %while.cond86

while.cond86:                                     ; preds = %if.end107, %if.then83
  %84 = load %struct.sTokenInfo*, %struct.sTokenInfo** %method_body_token, align 8
  %type87 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %84, i32 0, i32 0
  %85 = load i32, i32* %type87, align 8
  %cmp88 = icmp eq i32 %85, 4
  br i1 %cmp88, label %land.end99, label %land.lhs.true89

land.lhs.true89:                                  ; preds = %while.cond86
  %86 = load %struct.sTokenInfo*, %struct.sTokenInfo** %method_body_token, align 8
  %type90 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %86, i32 0, i32 0
  %87 = load i32, i32* %type90, align 8
  %cmp91 = icmp eq i32 %87, 14
  br i1 %cmp91, label %land.end99, label %land.lhs.true92

land.lhs.true92:                                  ; preds = %land.lhs.true89
  %88 = load %struct.sTokenInfo*, %struct.sTokenInfo** %method_body_token, align 8
  %type93 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %88, i32 0, i32 0
  %89 = load i32, i32* %type93, align 8
  %cmp94 = icmp eq i32 %89, 13
  br i1 %cmp94, label %land.end99, label %land.rhs95

land.rhs95:                                       ; preds = %land.lhs.true92
  %90 = load %struct.sTokenInfo*, %struct.sTokenInfo** %method_body_token, align 8
  %type96 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %90, i32 0, i32 0
  %91 = load i32, i32* %type96, align 8
  %cmp97 = icmp eq i32 %91, 1
  %lnot98 = xor i1 %cmp97, true
  br label %land.end99

land.end99:                                       ; preds = %land.rhs95, %land.lhs.true92, %land.lhs.true89, %while.cond86
  %92 = phi i1 [ false, %land.lhs.true92 ], [ false, %land.lhs.true89 ], [ false, %while.cond86 ], [ %lnot98, %land.rhs95 ]
  br i1 %92, label %while.body100, label %while.end

while.body100:                                    ; preds = %land.end99
  %93 = load %struct.sTokenInfo*, %struct.sTokenInfo** %method_body_token, align 8
  %type101 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %93, i32 0, i32 0
  %94 = load i32, i32* %type101, align 8
  %cmp102 = icmp eq i32 %94, 8
  br i1 %cmp102, label %if.then103, label %if.else106

if.then103:                                       ; preds = %while.body100
  %95 = load %struct.sTokenInfo*, %struct.sTokenInfo** %method_body_token, align 8
  %96 = load %struct.sVString*, %struct.sVString** %signature, align 8
  %length104 = getelementptr inbounds %struct.sVString, %struct.sVString* %96, i32 0, i32 0
  %97 = load i64, i64* %length104, align 8
  %cmp105 = icmp eq i64 %97, 0
  br i1 %cmp105, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then103
  %98 = load %struct.sVString*, %struct.sVString** %signature, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then103
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.sVString* [ %98, %cond.true ], [ null, %cond.false ]
  call void @skipArgumentList(%struct.sTokenInfo* %95, i1 zeroext false, %struct.sVString* %cond)
  br label %if.end107

if.else106:                                       ; preds = %while.body100
  %99 = load %struct.sTokenInfo*, %struct.sTokenInfo** %method_body_token, align 8
  call void @readToken(%struct.sTokenInfo* %99)
  br label %if.end107

if.end107:                                        ; preds = %if.else106, %cond.end
  br label %while.cond86

while.end:                                        ; preds = %land.end99
  %100 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %101 = load %struct.sVString*, %struct.sVString** %signature, align 8
  call void @makeJsTag(%struct.sTokenInfo* %100, i32 2, %struct.sVString* %101, %struct.sVString* null)
  %102 = load %struct.sVString*, %struct.sVString** %signature, align 8
  call void @vStringDelete(%struct.sVString* %102)
  %103 = load %struct.sTokenInfo*, %struct.sTokenInfo** %method_body_token, align 8
  %type108 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %103, i32 0, i32 0
  %104 = load i32, i32* %type108, align 8
  %cmp109 = icmp eq i32 %104, 13
  br i1 %cmp109, label %if.then110, label %if.else113

if.then110:                                       ; preds = %while.end
  %105 = load %struct.sTokenInfo*, %struct.sTokenInfo** %method_body_token, align 8
  %106 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string111 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %106, i32 0, i32 2
  %107 = load %struct.sVString*, %struct.sVString** %string111, align 8
  %call112 = call zeroext i1 @parseBlock(%struct.sTokenInfo* %105, %struct.sVString* %107)
  store i8 1, i8* %is_terminated, align 1
  br label %if.end117

if.else113:                                       ; preds = %while.end
  %108 = load %struct.sTokenInfo*, %struct.sTokenInfo** %method_body_token, align 8
  %type114 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %108, i32 0, i32 0
  %109 = load i32, i32* %type114, align 8
  %cmp115 = icmp eq i32 %109, 4
  %frombool116 = zext i1 %cmp115 to i8
  store i8 %frombool116, i8* %is_terminated, align 1
  br label %if.end117

if.end117:                                        ; preds = %if.else113, %if.then110
  br label %cleanUp

if.end118:                                        ; preds = %if.then80
  br label %if.end130

if.else119:                                       ; preds = %if.end77
  %110 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type120 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %110, i32 0, i32 0
  %111 = load i32, i32* %type120, align 8
  %cmp121 = icmp eq i32 %111, 15
  br i1 %cmp121, label %if.then122, label %if.end129

if.then122:                                       ; preds = %if.else119
  %112 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %112)
  %113 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type123 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %113, i32 0, i32 0
  %114 = load i32, i32* %type123, align 8
  %cmp124 = icmp eq i32 %114, 13
  br i1 %cmp124, label %if.then125, label %if.end128

if.then125:                                       ; preds = %if.then122
  %115 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %116 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  %call126 = call zeroext i1 @parseMethods(%struct.sTokenInfo* %115, %struct.sTokenInfo* %116, i1 zeroext false)
  %117 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call127 = call zeroext i1 @findCmdTerm(%struct.sTokenInfo* %117, i1 zeroext false, i1 zeroext false)
  %118 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %ignoreTag = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %118, i32 0, i32 7
  store i8 0, i8* %ignoreTag, align 4
  store i8 1, i8* %is_terminated, align 1
  br label %cleanUp

if.end128:                                        ; preds = %if.then122
  br label %if.end129

if.end129:                                        ; preds = %if.end128, %if.else119
  br label %if.end130

if.end130:                                        ; preds = %if.end129, %if.end118
  br label %if.end132

if.else131:                                       ; preds = %if.else67
  %119 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %119)
  br label %if.end132

if.end132:                                        ; preds = %if.else131, %if.end130
  br label %if.end133

if.end133:                                        ; preds = %if.end132, %if.end66
  br label %do.cond

do.cond:                                          ; preds = %if.end133
  %120 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type134 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %120, i32 0, i32 0
  %121 = load i32, i32* %type134, align 8
  %cmp135 = icmp eq i32 %121, 12
  br i1 %cmp135, label %do.body60, label %do.end136

do.end136:                                        ; preds = %do.cond
  br label %if.end138

if.else137:                                       ; preds = %if.end46
  %122 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readTokenFull(%struct.sTokenInfo* %122, i1 zeroext true, %struct.sVString* null)
  br label %if.end138

if.end138:                                        ; preds = %if.else137, %do.end136
  %123 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type139 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %123, i32 0, i32 0
  %124 = load i32, i32* %type139, align 8
  %cmp140 = icmp eq i32 %124, 8
  br i1 %cmp140, label %if.then141, label %if.end142

if.then141:                                       ; preds = %if.end138
  %125 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @skipArgumentList(%struct.sTokenInfo* %125, i1 zeroext false, %struct.sVString* null)
  br label %if.end142

if.end142:                                        ; preds = %if.then141, %if.end138
  %126 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type143 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %126, i32 0, i32 0
  %127 = load i32, i32* %type143, align 8
  %cmp144 = icmp eq i32 %127, 16
  br i1 %cmp144, label %if.then145, label %if.end146

if.then145:                                       ; preds = %if.end142
  %128 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @skipArrayList(%struct.sTokenInfo* %128, i1 zeroext false)
  br label %if.end146

if.end146:                                        ; preds = %if.then145, %if.end142
  br label %while.cond

while.end147:                                     ; preds = %land.end
  %129 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type148 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %129, i32 0, i32 0
  %130 = load i32, i32* %type148, align 8
  %cmp149 = icmp eq i32 %130, 14
  br i1 %cmp149, label %if.then150, label %if.end151

if.then150:                                       ; preds = %while.end147
  store i8 0, i8* %is_terminated, align 1
  br label %cleanUp

if.end151:                                        ; preds = %while.end147
  %131 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type152 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %131, i32 0, i32 0
  %132 = load i32, i32* %type152, align 8
  %cmp153 = icmp eq i32 %132, 4
  br i1 %cmp153, label %if.then160, label %lor.lhs.false154

lor.lhs.false154:                                 ; preds = %if.end151
  %133 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type155 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %133, i32 0, i32 0
  %134 = load i32, i32* %type155, align 8
  %cmp156 = icmp eq i32 %134, 1
  br i1 %cmp156, label %if.then160, label %lor.lhs.false157

lor.lhs.false157:                                 ; preds = %lor.lhs.false154
  %135 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type158 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %135, i32 0, i32 0
  %136 = load i32, i32* %type158, align 8
  %cmp159 = icmp eq i32 %136, 6
  br i1 %cmp159, label %if.then160, label %if.end173

if.then160:                                       ; preds = %lor.lhs.false157, %lor.lhs.false154, %if.end151
  %137 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %nestLevel161 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %137, i32 0, i32 6
  %138 = load i32, i32* %nestLevel161, align 8
  %cmp162 = icmp eq i32 %138, 0
  br i1 %cmp162, label %land.lhs.true163, label %if.end168

land.lhs.true163:                                 ; preds = %if.then160
  %139 = load i8, i8* %is_global, align 1
  %tobool164 = trunc i8 %139 to i1
  br i1 %tobool164, label %if.then165, label %if.end168

if.then165:                                       ; preds = %land.lhs.true163
  %140 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  %141 = load i8, i8* %is_const, align 1
  %tobool166 = trunc i8 %141 to i1
  %142 = zext i1 %tobool166 to i64
  %cond167 = select i1 %tobool166, i32 4, i32 5
  call void @makeJsTag(%struct.sTokenInfo* %140, i32 %cond167, %struct.sVString* null, %struct.sVString* null)
  br label %if.end168

if.end168:                                        ; preds = %if.then165, %land.lhs.true163, %if.then160
  %143 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type169 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %143, i32 0, i32 0
  %144 = load i32, i32* %type169, align 8
  %cmp170 = icmp eq i32 %144, 6
  br i1 %cmp170, label %if.then171, label %if.end172

if.then171:                                       ; preds = %if.end168
  %145 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %145)
  br label %nextVar

if.end172:                                        ; preds = %if.end168
  br label %cleanUp

if.end173:                                        ; preds = %lor.lhs.false157
  %146 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type174 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %146, i32 0, i32 0
  %147 = load i32, i32* %type174, align 8
  %cmp175 = icmp eq i32 %147, 15
  br i1 %cmp175, label %if.then176, label %if.end411

if.then176:                                       ; preds = %if.end173
  store i32 0, i32* %parenDepth, align 4
  %148 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %148)
  br label %while.cond177

while.cond177:                                    ; preds = %while.body180, %if.then176
  %149 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type178 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %149, i32 0, i32 0
  %150 = load i32, i32* %type178, align 8
  %cmp179 = icmp eq i32 %150, 8
  br i1 %cmp179, label %while.body180, label %while.end181

while.body180:                                    ; preds = %while.cond177
  %151 = load i32, i32* %parenDepth, align 4
  %inc = add nsw i32 %151, 1
  store i32 %inc, i32* %parenDepth, align 4
  %152 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %152)
  br label %while.cond177

while.end181:                                     ; preds = %while.cond177
  %153 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword182 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %153, i32 0, i32 1
  %154 = load i32, i32* %keyword182, align 4
  %cmp183 = icmp eq i32 %154, 25
  br i1 %cmp183, label %if.then184, label %if.end185

if.then184:                                       ; preds = %while.end181
  %155 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %155)
  br label %if.end185

if.end185:                                        ; preds = %if.then184, %while.end181
  %156 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword186 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %156, i32 0, i32 1
  %157 = load i32, i32* %keyword186, align 4
  %cmp187 = icmp eq i32 %157, 0
  br i1 %cmp187, label %if.then188, label %if.else251

if.then188:                                       ; preds = %if.end185
  %call190 = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call190, %struct.sVString** %signature189, align 8
  store i8 0, i8* %is_generator, align 1
  %158 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %158)
  %159 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type191 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %159, i32 0, i32 0
  %160 = load i32, i32* %type191, align 8
  %cmp192 = icmp eq i32 %160, 20
  br i1 %cmp192, label %if.then193, label %if.end194

if.then193:                                       ; preds = %if.then188
  store i8 1, i8* %is_generator, align 1
  %161 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %161)
  br label %if.end194

if.end194:                                        ; preds = %if.then193, %if.then188
  %162 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type195 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %162, i32 0, i32 0
  %163 = load i32, i32* %type195, align 8
  %cmp196 = icmp eq i32 %163, 7
  br i1 %cmp196, label %if.end201, label %land.lhs.true197

land.lhs.true197:                                 ; preds = %if.end194
  %164 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type198 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %164, i32 0, i32 0
  %165 = load i32, i32* %type198, align 8
  %cmp199 = icmp eq i32 %165, 8
  br i1 %cmp199, label %if.end201, label %if.then200

if.then200:                                       ; preds = %land.lhs.true197
  %166 = load %struct.sTokenInfo*, %struct.sTokenInfo** %secondary_name, align 8
  %167 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @copyToken(%struct.sTokenInfo* %166, %struct.sTokenInfo* %167, i1 zeroext true)
  %168 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %168)
  br label %if.end201

if.end201:                                        ; preds = %if.then200, %land.lhs.true197, %if.end194
  %169 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type202 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %169, i32 0, i32 0
  %170 = load i32, i32* %type202, align 8
  %cmp203 = icmp eq i32 %170, 8
  br i1 %cmp203, label %if.then204, label %if.end205

if.then204:                                       ; preds = %if.end201
  %171 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %172 = load %struct.sVString*, %struct.sVString** %signature189, align 8
  call void @skipArgumentList(%struct.sTokenInfo* %171, i1 zeroext false, %struct.sVString* %172)
  br label %if.end205

if.end205:                                        ; preds = %if.then204, %if.end201
  %173 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type206 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %173, i32 0, i32 0
  %174 = load i32, i32* %type206, align 8
  %cmp207 = icmp eq i32 %174, 13
  br i1 %cmp207, label %if.then208, label %if.end250

if.then208:                                       ; preds = %if.end205
  %175 = load i8, i8* %is_inside_class.addr, align 1
  %tobool209 = trunc i8 %175 to i1
  br i1 %tobool209, label %if.then210, label %if.else221

if.then210:                                       ; preds = %if.then208
  %176 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  %177 = load i8, i8* %is_generator, align 1
  %tobool211 = trunc i8 %177 to i1
  %178 = zext i1 %tobool211 to i64
  %cond212 = select i1 %tobool211, i32 6, i32 2
  %179 = load %struct.sVString*, %struct.sVString** %signature189, align 8
  call void @makeJsTag(%struct.sTokenInfo* %176, i32 %cond212, %struct.sVString* %179, %struct.sVString* null)
  %180 = load %struct.sTokenInfo*, %struct.sTokenInfo** %secondary_name, align 8
  %string213 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %180, i32 0, i32 2
  %181 = load %struct.sVString*, %struct.sVString** %string213, align 8
  %length214 = getelementptr inbounds %struct.sVString, %struct.sVString* %181, i32 0, i32 0
  %182 = load i64, i64* %length214, align 8
  %cmp215 = icmp ugt i64 %182, 0
  br i1 %cmp215, label %if.then216, label %if.end218

if.then216:                                       ; preds = %if.then210
  %183 = load %struct.sTokenInfo*, %struct.sTokenInfo** %secondary_name, align 8
  %184 = load %struct.sVString*, %struct.sVString** %signature189, align 8
  %185 = load i8, i8* %is_generator, align 1
  %tobool217 = trunc i8 %185 to i1
  call void @makeFunctionTag(%struct.sTokenInfo* %183, %struct.sVString* %184, i1 zeroext %tobool217)
  br label %if.end218

if.end218:                                        ; preds = %if.then216, %if.then210
  %186 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %187 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  %string219 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %187, i32 0, i32 2
  %188 = load %struct.sVString*, %struct.sVString** %string219, align 8
  %call220 = call zeroext i1 @parseBlock(%struct.sTokenInfo* %186, %struct.sVString* %188)
  br label %if.end249

if.else221:                                       ; preds = %if.then208
  %189 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  %type222 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %189, i32 0, i32 0
  %190 = load i32, i32* %type222, align 8
  %cmp223 = icmp eq i32 %190, 9
  br i1 %cmp223, label %if.end234, label %lor.lhs.false224

lor.lhs.false224:                                 ; preds = %if.else221
  %191 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  %type225 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %191, i32 0, i32 0
  %192 = load i32, i32* %type225, align 8
  %cmp226 = icmp eq i32 %192, 10
  br i1 %cmp226, label %if.end234, label %lor.lhs.false227

lor.lhs.false227:                                 ; preds = %lor.lhs.false224
  %193 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  %type228 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %193, i32 0, i32 0
  %194 = load i32, i32* %type228, align 8
  %cmp229 = icmp eq i32 %194, 7
  br i1 %cmp229, label %if.end234, label %if.then230

if.then230:                                       ; preds = %lor.lhs.false227
  br label %do.body231

do.body231:                                       ; preds = %if.then230
  br label %do.end233

do.end233:                                        ; preds = %do.body231
  %195 = load %struct.sVString*, %struct.sVString** %signature189, align 8
  call void @vStringDelete(%struct.sVString* %195)
  br label %cleanUp

if.end234:                                        ; preds = %lor.lhs.false227, %lor.lhs.false224, %if.else221
  %196 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %197 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  %string235 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %197, i32 0, i32 2
  %198 = load %struct.sVString*, %struct.sVString** %string235, align 8
  %call236 = call zeroext i1 @parseBlock(%struct.sTokenInfo* %196, %struct.sVString* %198)
  %frombool237 = zext i1 %call236 to i8
  store i8 %frombool237, i8* %is_class, align 1
  %199 = load i8, i8* %is_class, align 1
  %tobool238 = trunc i8 %199 to i1
  br i1 %tobool238, label %if.then239, label %if.else240

if.then239:                                       ; preds = %if.end234
  %200 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  %201 = load %struct.sVString*, %struct.sVString** %signature189, align 8
  call void @makeClassTag(%struct.sTokenInfo* %200, %struct.sVString* %201, %struct.sVString* null)
  br label %if.end242

if.else240:                                       ; preds = %if.end234
  %202 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  %203 = load %struct.sVString*, %struct.sVString** %signature189, align 8
  %204 = load i8, i8* %is_generator, align 1
  %tobool241 = trunc i8 %204 to i1
  call void @makeFunctionTag(%struct.sTokenInfo* %202, %struct.sVString* %203, i1 zeroext %tobool241)
  br label %if.end242

if.end242:                                        ; preds = %if.else240, %if.then239
  %205 = load %struct.sTokenInfo*, %struct.sTokenInfo** %secondary_name, align 8
  %string243 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %205, i32 0, i32 2
  %206 = load %struct.sVString*, %struct.sVString** %string243, align 8
  %length244 = getelementptr inbounds %struct.sVString, %struct.sVString* %206, i32 0, i32 0
  %207 = load i64, i64* %length244, align 8
  %cmp245 = icmp ugt i64 %207, 0
  br i1 %cmp245, label %if.then246, label %if.end248

if.then246:                                       ; preds = %if.end242
  %208 = load %struct.sTokenInfo*, %struct.sTokenInfo** %secondary_name, align 8
  %209 = load %struct.sVString*, %struct.sVString** %signature189, align 8
  %210 = load i8, i8* %is_generator, align 1
  %tobool247 = trunc i8 %210 to i1
  call void @makeFunctionTag(%struct.sTokenInfo* %208, %struct.sVString* %209, i1 zeroext %tobool247)
  br label %if.end248

if.end248:                                        ; preds = %if.then246, %if.end242
  br label %if.end249

if.end249:                                        ; preds = %if.end248, %if.end218
  br label %if.end250

if.end250:                                        ; preds = %if.end249, %if.end205
  %211 = load %struct.sVString*, %struct.sVString** %signature189, align 8
  call void @vStringDelete(%struct.sVString* %211)
  br label %if.end384

if.else251:                                       ; preds = %if.end185
  %212 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword252 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %212, i32 0, i32 1
  %213 = load i32, i32* %keyword252, align 4
  %cmp253 = icmp eq i32 %213, 20
  br i1 %cmp253, label %if.then254, label %if.else257

if.then254:                                       ; preds = %if.else251
  %214 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %215 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  %call255 = call zeroext i1 @parseES6Class(%struct.sTokenInfo* %214, %struct.sTokenInfo* %215)
  %frombool256 = zext i1 %call255 to i8
  store i8 %frombool256, i8* %is_terminated, align 1
  br label %if.end383

if.else257:                                       ; preds = %if.else251
  %216 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type258 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %216, i32 0, i32 0
  %217 = load i32, i32* %type258, align 8
  %cmp259 = icmp eq i32 %217, 13
  br i1 %cmp259, label %if.then260, label %if.else300

if.then260:                                       ; preds = %if.else257
  %218 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %219 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  %call261 = call zeroext i1 @parseMethods(%struct.sTokenInfo* %218, %struct.sTokenInfo* %219, i1 zeroext false)
  %frombool262 = zext i1 %call261 to i8
  store i8 %frombool262, i8* %has_methods, align 1
  %220 = load i8, i8* %has_methods, align 1
  %tobool263 = trunc i8 %220 to i1
  br i1 %tobool263, label %if.then264, label %if.else265

if.then264:                                       ; preds = %if.then260
  %221 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  call void @makeJsTag(%struct.sTokenInfo* %221, i32 1, %struct.sVString* null, %struct.sVString* null)
  br label %if.end292

if.else265:                                       ; preds = %if.then260
  %222 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %nestLevel266 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %222, i32 0, i32 6
  %223 = load i32, i32* %nestLevel266, align 8
  %cmp267 = icmp eq i32 %223, 0
  br i1 %cmp267, label %land.lhs.true268, label %if.end291

land.lhs.true268:                                 ; preds = %if.else265
  %224 = load i8, i8* %is_global, align 1
  %tobool269 = trunc i8 %224 to i1
  br i1 %tobool269, label %if.then270, label %if.end291

if.then270:                                       ; preds = %land.lhs.true268
  %call271 = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call271, %struct.sVString** %fulltag, align 8
  %225 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %scope272 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %225, i32 0, i32 3
  %226 = load %struct.sVString*, %struct.sVString** %scope272, align 8
  %length273 = getelementptr inbounds %struct.sVString, %struct.sVString* %226, i32 0, i32 0
  %227 = load i64, i64* %length273, align 8
  %cmp274 = icmp ugt i64 %227, 0
  br i1 %cmp274, label %if.then275, label %if.else279

if.then275:                                       ; preds = %if.then270
  %228 = load %struct.sVString*, %struct.sVString** %fulltag, align 8
  %229 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %scope276 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %229, i32 0, i32 3
  %230 = load %struct.sVString*, %struct.sVString** %scope276, align 8
  call void @vStringCopy(%struct.sVString* %228, %struct.sVString* %230)
  %231 = load %struct.sVString*, %struct.sVString** %fulltag, align 8
  call void @vStringPut(%struct.sVString* %231, i32 46)
  %232 = load %struct.sVString*, %struct.sVString** %fulltag, align 8
  %233 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string277 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %233, i32 0, i32 2
  %234 = load %struct.sVString*, %struct.sVString** %string277, align 8
  %buffer278 = getelementptr inbounds %struct.sVString, %struct.sVString* %234, i32 0, i32 2
  %235 = load i8*, i8** %buffer278, align 8
  call void @vStringCatS(%struct.sVString* %232, i8* %235)
  br label %if.end281

if.else279:                                       ; preds = %if.then270
  %236 = load %struct.sVString*, %struct.sVString** %fulltag, align 8
  %237 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string280 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %237, i32 0, i32 2
  %238 = load %struct.sVString*, %struct.sVString** %string280, align 8
  call void @vStringCopy(%struct.sVString* %236, %struct.sVString* %238)
  br label %if.end281

if.end281:                                        ; preds = %if.else279, %if.then275
  %239 = load %struct.sPtrArray*, %struct.sPtrArray** @FunctionNames, align 8
  %240 = load %struct.sVString*, %struct.sVString** %fulltag, align 8
  %buffer282 = getelementptr inbounds %struct.sVString, %struct.sVString* %240, i32 0, i32 2
  %241 = load i8*, i8** %buffer282, align 8
  %call283 = call zeroext i1 @stringListHas(%struct.sPtrArray* %239, i8* %241)
  br i1 %call283, label %if.end290, label %land.lhs.true284

land.lhs.true284:                                 ; preds = %if.end281
  %242 = load %struct.sPtrArray*, %struct.sPtrArray** @ClassNames, align 8
  %243 = load %struct.sVString*, %struct.sVString** %fulltag, align 8
  %buffer285 = getelementptr inbounds %struct.sVString, %struct.sVString* %243, i32 0, i32 2
  %244 = load i8*, i8** %buffer285, align 8
  %call286 = call zeroext i1 @stringListHas(%struct.sPtrArray* %242, i8* %244)
  br i1 %call286, label %if.end290, label %if.then287

if.then287:                                       ; preds = %land.lhs.true284
  %245 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  %246 = load i8, i8* %is_const, align 1
  %tobool288 = trunc i8 %246 to i1
  %247 = zext i1 %tobool288 to i64
  %cond289 = select i1 %tobool288, i32 4, i32 5
  call void @makeJsTag(%struct.sTokenInfo* %245, i32 %cond289, %struct.sVString* null, %struct.sVString* null)
  br label %if.end290

if.end290:                                        ; preds = %if.then287, %land.lhs.true284, %if.end281
  %248 = load %struct.sVString*, %struct.sVString** %fulltag, align 8
  call void @vStringDelete(%struct.sVString* %248)
  br label %if.end291

if.end291:                                        ; preds = %if.end290, %land.lhs.true268, %if.else265
  br label %if.end292

if.end292:                                        ; preds = %if.end291, %if.then264
  %249 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type293 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %249, i32 0, i32 0
  %250 = load i32, i32* %type293, align 8
  %cmp294 = icmp eq i32 %250, 14
  br i1 %cmp294, label %if.then295, label %if.end299

if.then295:                                       ; preds = %if.end292
  %251 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readTokenFull(%struct.sTokenInfo* %251, i1 zeroext true, %struct.sVString* null)
  %252 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type296 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %252, i32 0, i32 0
  %253 = load i32, i32* %type296, align 8
  %cmp297 = icmp eq i32 %253, 4
  %frombool298 = zext i1 %cmp297 to i8
  store i8 %frombool298, i8* %is_terminated, align 1
  br label %if.end299

if.end299:                                        ; preds = %if.then295, %if.end292
  br label %if.end382

if.else300:                                       ; preds = %if.else257
  %254 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword301 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %254, i32 0, i32 1
  %255 = load i32, i32* %keyword301, align 4
  %cmp302 = icmp eq i32 %255, 7
  br i1 %cmp302, label %if.then303, label %if.else350

if.then303:                                       ; preds = %if.else300
  %256 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %256)
  %257 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type304 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %257, i32 0, i32 0
  %258 = load i32, i32* %type304, align 8
  %cmp305 = icmp eq i32 %258, 9
  %frombool306 = zext i1 %cmp305 to i8
  store i8 %frombool306, i8* %is_var, align 1
  %259 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword307 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %259, i32 0, i32 1
  %260 = load i32, i32* %keyword307, align 4
  %cmp308 = icmp eq i32 %260, 0
  br i1 %cmp308, label %if.then317, label %lor.lhs.false309

lor.lhs.false309:                                 ; preds = %if.then303
  %261 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword310 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %261, i32 0, i32 1
  %262 = load i32, i32* %keyword310, align 4
  %cmp311 = icmp eq i32 %262, 1
  br i1 %cmp311, label %if.then317, label %lor.lhs.false312

lor.lhs.false312:                                 ; preds = %lor.lhs.false309
  %263 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword313 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %263, i32 0, i32 1
  %264 = load i32, i32* %keyword313, align 4
  %cmp314 = icmp eq i32 %264, 2
  br i1 %cmp314, label %if.then317, label %lor.lhs.false315

lor.lhs.false315:                                 ; preds = %lor.lhs.false312
  %265 = load i8, i8* %is_var, align 1
  %tobool316 = trunc i8 %265 to i1
  br i1 %tobool316, label %if.then317, label %if.end349

if.then317:                                       ; preds = %lor.lhs.false315, %lor.lhs.false312, %lor.lhs.false309, %if.then303
  %266 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword318 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %266, i32 0, i32 1
  %267 = load i32, i32* %keyword318, align 4
  %cmp319 = icmp eq i32 %267, 2
  br i1 %cmp319, label %if.then320, label %if.end321

if.then320:                                       ; preds = %if.then317
  store i8 1, i8* %is_class, align 1
  br label %if.end321

if.end321:                                        ; preds = %if.then320, %if.then317
  %268 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %268)
  %269 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type322 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %269, i32 0, i32 0
  %270 = load i32, i32* %type322, align 8
  %cmp323 = icmp eq i32 %270, 8
  br i1 %cmp323, label %if.then324, label %if.end325

if.then324:                                       ; preds = %if.end321
  %271 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @skipArgumentList(%struct.sTokenInfo* %271, i1 zeroext true, %struct.sVString* null)
  br label %if.end325

if.end325:                                        ; preds = %if.then324, %if.end321
  %272 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type326 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %272, i32 0, i32 0
  %273 = load i32, i32* %type326, align 8
  %cmp327 = icmp eq i32 %273, 4
  br i1 %cmp327, label %if.then328, label %if.else343

if.then328:                                       ; preds = %if.end325
  %274 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %nestLevel329 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %274, i32 0, i32 6
  %275 = load i32, i32* %nestLevel329, align 8
  %cmp330 = icmp eq i32 %275, 0
  br i1 %cmp330, label %if.then331, label %if.end342

if.then331:                                       ; preds = %if.then328
  %276 = load i8, i8* %is_var, align 1
  %tobool332 = trunc i8 %276 to i1
  br i1 %tobool332, label %if.then333, label %if.else336

if.then333:                                       ; preds = %if.then331
  %277 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  %278 = load i8, i8* %is_const, align 1
  %tobool334 = trunc i8 %278 to i1
  %279 = zext i1 %tobool334 to i64
  %cond335 = select i1 %tobool334, i32 4, i32 5
  call void @makeJsTag(%struct.sTokenInfo* %277, i32 %cond335, %struct.sVString* null, %struct.sVString* null)
  br label %if.end341

if.else336:                                       ; preds = %if.then331
  %280 = load i8, i8* %is_class, align 1
  %tobool337 = trunc i8 %280 to i1
  br i1 %tobool337, label %if.then338, label %if.else339

if.then338:                                       ; preds = %if.else336
  %281 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  call void @makeClassTag(%struct.sTokenInfo* %281, %struct.sVString* null, %struct.sVString* null)
  br label %if.end340

if.else339:                                       ; preds = %if.else336
  %282 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  call void @makeFunctionTag(%struct.sTokenInfo* %282, %struct.sVString* null, i1 zeroext false)
  br label %if.end340

if.end340:                                        ; preds = %if.else339, %if.then338
  br label %if.end341

if.end341:                                        ; preds = %if.end340, %if.then333
  br label %if.end342

if.end342:                                        ; preds = %if.end341, %if.then328
  br label %if.end348

if.else343:                                       ; preds = %if.end325
  %283 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type344 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %283, i32 0, i32 0
  %284 = load i32, i32* %type344, align 8
  %cmp345 = icmp eq i32 %284, 14
  br i1 %cmp345, label %if.then346, label %if.end347

if.then346:                                       ; preds = %if.else343
  store i8 0, i8* %is_terminated, align 1
  br label %if.end347

if.end347:                                        ; preds = %if.then346, %if.else343
  br label %if.end348

if.end348:                                        ; preds = %if.end347, %if.end342
  br label %if.end349

if.end349:                                        ; preds = %if.end348, %lor.lhs.false315
  br label %if.end381

if.else350:                                       ; preds = %if.else300
  %285 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type351 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %285, i32 0, i32 0
  %286 = load i32, i32* %type351, align 8
  %cmp352 = icmp eq i32 %286, 7
  br i1 %cmp352, label %if.end380, label %if.then353

if.then353:                                       ; preds = %if.else350
  %287 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %nestLevel354 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %287, i32 0, i32 6
  %288 = load i32, i32* %nestLevel354, align 8
  %cmp355 = icmp eq i32 %288, 0
  br i1 %cmp355, label %land.lhs.true356, label %if.end379

land.lhs.true356:                                 ; preds = %if.then353
  %289 = load i8, i8* %is_global, align 1
  %tobool357 = trunc i8 %289 to i1
  br i1 %tobool357, label %if.then358, label %if.end379

if.then358:                                       ; preds = %land.lhs.true356
  %call359 = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call359, %struct.sVString** %fulltag, align 8
  %290 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %scope360 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %290, i32 0, i32 3
  %291 = load %struct.sVString*, %struct.sVString** %scope360, align 8
  %length361 = getelementptr inbounds %struct.sVString, %struct.sVString* %291, i32 0, i32 0
  %292 = load i64, i64* %length361, align 8
  %cmp362 = icmp ugt i64 %292, 0
  br i1 %cmp362, label %if.then363, label %if.else367

if.then363:                                       ; preds = %if.then358
  %293 = load %struct.sVString*, %struct.sVString** %fulltag, align 8
  %294 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %scope364 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %294, i32 0, i32 3
  %295 = load %struct.sVString*, %struct.sVString** %scope364, align 8
  call void @vStringCopy(%struct.sVString* %293, %struct.sVString* %295)
  %296 = load %struct.sVString*, %struct.sVString** %fulltag, align 8
  call void @vStringPut(%struct.sVString* %296, i32 46)
  %297 = load %struct.sVString*, %struct.sVString** %fulltag, align 8
  %298 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string365 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %298, i32 0, i32 2
  %299 = load %struct.sVString*, %struct.sVString** %string365, align 8
  %buffer366 = getelementptr inbounds %struct.sVString, %struct.sVString* %299, i32 0, i32 2
  %300 = load i8*, i8** %buffer366, align 8
  call void @vStringCatS(%struct.sVString* %297, i8* %300)
  br label %if.end369

if.else367:                                       ; preds = %if.then358
  %301 = load %struct.sVString*, %struct.sVString** %fulltag, align 8
  %302 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string368 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %302, i32 0, i32 2
  %303 = load %struct.sVString*, %struct.sVString** %string368, align 8
  call void @vStringCopy(%struct.sVString* %301, %struct.sVString* %303)
  br label %if.end369

if.end369:                                        ; preds = %if.else367, %if.then363
  %304 = load %struct.sPtrArray*, %struct.sPtrArray** @FunctionNames, align 8
  %305 = load %struct.sVString*, %struct.sVString** %fulltag, align 8
  %buffer370 = getelementptr inbounds %struct.sVString, %struct.sVString* %305, i32 0, i32 2
  %306 = load i8*, i8** %buffer370, align 8
  %call371 = call zeroext i1 @stringListHas(%struct.sPtrArray* %304, i8* %306)
  br i1 %call371, label %if.end378, label %land.lhs.true372

land.lhs.true372:                                 ; preds = %if.end369
  %307 = load %struct.sPtrArray*, %struct.sPtrArray** @ClassNames, align 8
  %308 = load %struct.sVString*, %struct.sVString** %fulltag, align 8
  %buffer373 = getelementptr inbounds %struct.sVString, %struct.sVString* %308, i32 0, i32 2
  %309 = load i8*, i8** %buffer373, align 8
  %call374 = call zeroext i1 @stringListHas(%struct.sPtrArray* %307, i8* %309)
  br i1 %call374, label %if.end378, label %if.then375

if.then375:                                       ; preds = %land.lhs.true372
  %310 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  %311 = load i8, i8* %is_const, align 1
  %tobool376 = trunc i8 %311 to i1
  %312 = zext i1 %tobool376 to i64
  %cond377 = select i1 %tobool376, i32 4, i32 5
  call void @makeJsTag(%struct.sTokenInfo* %310, i32 %cond377, %struct.sVString* null, %struct.sVString* null)
  br label %if.end378

if.end378:                                        ; preds = %if.then375, %land.lhs.true372, %if.end369
  %313 = load %struct.sVString*, %struct.sVString** %fulltag, align 8
  call void @vStringDelete(%struct.sVString* %313)
  br label %if.end379

if.end379:                                        ; preds = %if.end378, %land.lhs.true356, %if.then353
  br label %if.end380

if.end380:                                        ; preds = %if.end379, %if.else350
  br label %if.end381

if.end381:                                        ; preds = %if.end380, %if.end349
  br label %if.end382

if.end382:                                        ; preds = %if.end381, %if.end299
  br label %if.end383

if.end383:                                        ; preds = %if.end382, %if.then254
  br label %if.end384

if.end384:                                        ; preds = %if.end383, %if.end250
  %314 = load i32, i32* %parenDepth, align 4
  %cmp385 = icmp sgt i32 %314, 0
  br i1 %cmp385, label %if.then386, label %if.end410

if.then386:                                       ; preds = %if.end384
  br label %while.cond387

while.cond387:                                    ; preds = %if.end404, %if.then386
  %315 = load i32, i32* %parenDepth, align 4
  %cmp388 = icmp sgt i32 %315, 0
  br i1 %cmp388, label %land.rhs389, label %land.end393

land.rhs389:                                      ; preds = %while.cond387
  %316 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type390 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %316, i32 0, i32 0
  %317 = load i32, i32* %type390, align 8
  %cmp391 = icmp eq i32 %317, 1
  %lnot392 = xor i1 %cmp391, true
  br label %land.end393

land.end393:                                      ; preds = %land.rhs389, %while.cond387
  %318 = phi i1 [ false, %while.cond387 ], [ %lnot392, %land.rhs389 ]
  br i1 %318, label %while.body394, label %while.end405

while.body394:                                    ; preds = %land.end393
  %319 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type395 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %319, i32 0, i32 0
  %320 = load i32, i32* %type395, align 8
  %cmp396 = icmp eq i32 %320, 8
  br i1 %cmp396, label %if.then397, label %if.else399

if.then397:                                       ; preds = %while.body394
  %321 = load i32, i32* %parenDepth, align 4
  %inc398 = add nsw i32 %321, 1
  store i32 %inc398, i32* %parenDepth, align 4
  br label %if.end404

if.else399:                                       ; preds = %while.body394
  %322 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type400 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %322, i32 0, i32 0
  %323 = load i32, i32* %type400, align 8
  %cmp401 = icmp eq i32 %323, 3
  br i1 %cmp401, label %if.then402, label %if.end403

if.then402:                                       ; preds = %if.else399
  %324 = load i32, i32* %parenDepth, align 4
  %dec = add nsw i32 %324, -1
  store i32 %dec, i32* %parenDepth, align 4
  br label %if.end403

if.end403:                                        ; preds = %if.then402, %if.else399
  br label %if.end404

if.end404:                                        ; preds = %if.end403, %if.then397
  %325 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readTokenFull(%struct.sTokenInfo* %325, i1 zeroext true, %struct.sVString* null)
  br label %while.cond387

while.end405:                                     ; preds = %land.end393
  %326 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type406 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %326, i32 0, i32 0
  %327 = load i32, i32* %type406, align 8
  %cmp407 = icmp eq i32 %327, 14
  br i1 %cmp407, label %if.then408, label %if.end409

if.then408:                                       ; preds = %while.end405
  store i8 0, i8* %is_terminated, align 1
  br label %if.end409

if.end409:                                        ; preds = %if.then408, %while.end405
  br label %if.end410

if.end410:                                        ; preds = %if.end409, %if.end384
  br label %if.end411

if.end411:                                        ; preds = %if.end410, %if.end173
  %328 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type412 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %328, i32 0, i32 0
  %329 = load i32, i32* %type412, align 8
  %cmp413 = icmp eq i32 %329, 14
  br i1 %cmp413, label %if.end424, label %land.lhs.true414

land.lhs.true414:                                 ; preds = %if.end411
  %330 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type415 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %330, i32 0, i32 0
  %331 = load i32, i32* %type415, align 8
  %cmp416 = icmp eq i32 %331, 4
  br i1 %cmp416, label %if.end424, label %if.then417

if.then417:                                       ; preds = %land.lhs.true414
  %332 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call418 = call zeroext i1 @findCmdTerm(%struct.sTokenInfo* %332, i1 zeroext true, i1 zeroext true)
  %frombool419 = zext i1 %call418 to i8
  store i8 %frombool419, i8* %is_terminated, align 1
  %333 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type420 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %333, i32 0, i32 0
  %334 = load i32, i32* %type420, align 8
  %cmp421 = icmp eq i32 %334, 6
  br i1 %cmp421, label %if.then422, label %if.end423

if.then422:                                       ; preds = %if.then417
  %335 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %335)
  br label %nextVar

if.end423:                                        ; preds = %if.then417
  br label %if.end424

if.end424:                                        ; preds = %if.end423, %land.lhs.true414, %if.end411
  br label %cleanUp

cleanUp:                                          ; preds = %if.end424, %do.end233, %if.end172, %if.then150, %if.then125, %if.end117, %if.then76
  %336 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %scope425 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %336, i32 0, i32 3
  %337 = load %struct.sVString*, %struct.sVString** %scope425, align 8
  %338 = load %struct.sVString*, %struct.sVString** %saveScope, align 8
  call void @vStringCopy(%struct.sVString* %337, %struct.sVString* %338)
  %339 = load %struct.sObjPool*, %struct.sObjPool** @TokenPool, align 8
  %340 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  %341 = bitcast %struct.sTokenInfo* %340 to i8*
  call void @objPoolPut(%struct.sObjPool* %339, i8* %341)
  %342 = load %struct.sObjPool*, %struct.sObjPool** @TokenPool, align 8
  %343 = load %struct.sTokenInfo*, %struct.sTokenInfo** %secondary_name, align 8
  %344 = bitcast %struct.sTokenInfo* %343 to i8*
  call void @objPoolPut(%struct.sObjPool* %342, i8* %344)
  %345 = load %struct.sObjPool*, %struct.sObjPool** @TokenPool, align 8
  %346 = load %struct.sTokenInfo*, %struct.sTokenInfo** %method_body_token, align 8
  %347 = bitcast %struct.sTokenInfo* %346 to i8*
  call void @objPoolPut(%struct.sObjPool* %345, i8* %347)
  %348 = load %struct.sVString*, %struct.sVString** %saveScope, align 8
  call void @vStringDelete(%struct.sVString* %348)
  br label %do.body426

do.body426:                                       ; preds = %cleanUp
  br label %do.end428

do.end428:                                        ; preds = %do.body426
  %349 = load i8, i8* %is_terminated, align 1
  %tobool429 = trunc i8 %349 to i1
  ret i1 %tobool429
}

declare void @vStringChop(%struct.sVString*) #1

declare void @vStringStripTrailing(%struct.sVString*) #1

declare void @vStringStripLeading(%struct.sVString*) #1

declare %struct.sObjPool* @objPoolNew(i32, i8* (i8*)*, void (i8*)*, void (i8*)*, i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @newPoolToken(i8* %createArg) #0 {
entry:
  %createArg.addr = alloca i8*, align 8
  %token = alloca %struct.sTokenInfo*, align 8
  store i8* %createArg, i8** %createArg.addr, align 8
  %call = call i8* @eMalloc(i64 56)
  %0 = bitcast i8* %call to %struct.sTokenInfo*
  store %struct.sTokenInfo* %0, %struct.sTokenInfo** %token, align 8
  %call1 = call %struct.sVString* @vStringNew()
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %string = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %1, i32 0, i32 2
  store %struct.sVString* %call1, %struct.sVString** %string, align 8
  %call2 = call %struct.sVString* @vStringNew()
  %2 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %scope = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %2, i32 0, i32 3
  store %struct.sVString* %call2, %struct.sVString** %scope, align 8
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %4 = bitcast %struct.sTokenInfo* %3 to i8*
  ret i8* %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @deletePoolToken(i8* %data) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %token = alloca %struct.sTokenInfo*, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.sTokenInfo*
  store %struct.sTokenInfo* %1, %struct.sTokenInfo** %token, align 8
  %2 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %string = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %2, i32 0, i32 2
  %3 = load %struct.sVString*, %struct.sVString** %string, align 8
  call void @vStringDelete(%struct.sVString* %3)
  %4 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %scope = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %4, i32 0, i32 3
  %5 = load %struct.sVString*, %struct.sVString** %scope, align 8
  call void @vStringDelete(%struct.sVString* %5)
  %6 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %7 = bitcast %struct.sTokenInfo* %6 to i8*
  call void @eFree(i8* %7)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @clearPoolToken(i8* %data) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %token = alloca %struct.sTokenInfo*, align 8
  %tmp = alloca %struct._MIOPos, align 8
  %vStringClear_s = alloca %struct.sVString*, align 8
  %vStringClear_s3 = alloca %struct.sVString*, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.sTokenInfo*
  store %struct.sTokenInfo* %1, %struct.sTokenInfo** %token, align 8
  %2 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %2, i32 0, i32 0
  store i32 0, i32* %type, align 8
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %3, i32 0, i32 1
  store i32 -1, i32* %keyword, align 4
  %4 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %nestLevel = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %4, i32 0, i32 6
  store i32 0, i32* %nestLevel, align 8
  %5 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %ignoreTag = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %5, i32 0, i32 7
  store i8 0, i8* %ignoreTag, align 4
  %call = call i64 @getInputLineNumber()
  %6 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %lineNumber = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %6, i32 0, i32 4
  store i64 %call, i64* %lineNumber, align 8
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %filePosition = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %7, i32 0, i32 5
  %call1 = call [2 x i64] @getInputFilePosition()
  %8 = bitcast %struct._MIOPos* %tmp to [2 x i64]*
  store [2 x i64] %call1, [2 x i64]* %8, align 8
  %9 = bitcast %struct._MIOPos* %filePosition to i8*
  %10 = bitcast %struct._MIOPos* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 %10, i64 16, i1 false)
  br label %do.body

do.body:                                          ; preds = %entry
  %11 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %string = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %11, i32 0, i32 2
  %12 = load %struct.sVString*, %struct.sVString** %string, align 8
  store %struct.sVString* %12, %struct.sVString** %vStringClear_s, align 8
  %13 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %13, i32 0, i32 0
  store i64 0, i64* %length, align 8
  %14 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %14, i32 0, i32 2
  %15 = load i8*, i8** %buffer, align 8
  %arrayidx = getelementptr inbounds i8, i8* %15, i64 0
  store i8 0, i8* %arrayidx, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body2

do.body2:                                         ; preds = %do.end
  %16 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %scope = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %16, i32 0, i32 3
  %17 = load %struct.sVString*, %struct.sVString** %scope, align 8
  store %struct.sVString* %17, %struct.sVString** %vStringClear_s3, align 8
  %18 = load %struct.sVString*, %struct.sVString** %vStringClear_s3, align 8
  %length4 = getelementptr inbounds %struct.sVString, %struct.sVString* %18, i32 0, i32 0
  store i64 0, i64* %length4, align 8
  %19 = load %struct.sVString*, %struct.sVString** %vStringClear_s3, align 8
  %buffer5 = getelementptr inbounds %struct.sVString, %struct.sVString* %19, i32 0, i32 2
  %20 = load i8*, i8** %buffer5, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %20, i64 0
  store i8 0, i8* %arrayidx6, align 1
  br label %do.end7

do.end7:                                          ; preds = %do.body2
  ret void
}

declare i8* @eMalloc(i64) #1

declare void @eFree(i8*) #1

declare void @objPoolDelete(%struct.sObjPool*) #1

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
