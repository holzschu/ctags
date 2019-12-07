; ModuleID = 'go.c'
source_filename = "go.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-ios11.0.0"

%struct.sKindDefinition = type { i8, i8, i8*, i8*, i8, i32, %struct.sRoleDesc*, %struct.sScopeSeparator*, i32, i32, i32, %struct.sKindDefinition*, %struct.sKindDefinition* }
%struct.sRoleDesc = type { i8, i8*, i8* }
%struct.sScopeSeparator = type { i32, i8* }
%struct.keywordTable = type { i8*, i32 }
%struct.sObjPool = type opaque
%struct.sVString = type { i64, i64, i8* }
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
%struct.sXtagDefinition = type { i8, i8, i8*, i8*, i1 (%struct.sXtagDefinition*)*, i1 (%struct.sXtagDefinition*)*, i32 }
%struct.sParserDependency = type { i32, i8*, i8* }
%struct.sParameterHandlerTable = type { i8*, i8*, void (i32, i8*, i8*)* }
%struct.sXpathFileSpec = type { i8*, i8*, i8*, i8*, i8*, i8* }
%struct.sTokenInfo = type { i32, i32, %struct.sVString*, i64, %struct._MIOPos }

@.str = private unnamed_addr constant [3 x i8] c"Go\00", align 1
@GoKinds = internal global [10 x %struct.sKindDefinition] [%struct.sKindDefinition { i8 1, i8 112, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 102, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 99, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 116, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 118, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 115, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 105, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 109, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 77, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.18, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 117, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0), i8 1, i32 1, %struct.sRoleDesc* getelementptr inbounds ([1 x %struct.sRoleDesc], [1 x %struct.sRoleDesc]* @GoUnknownRoles, i32 0, i32 0), %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }], align 8
@extensions = internal constant [2 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i32 0, i32 0), i8* null], align 8
@GoKeywordTable = internal constant [10 x %struct.keywordTable] [%struct.keywordTable { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 0 }, %struct.keywordTable { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0), i32 1 }, %struct.keywordTable { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i32 2 }, %struct.keywordTable { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 3 }, %struct.keywordTable { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i32 4 }, %struct.keywordTable { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 5 }, %struct.keywordTable { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i32 6 }, %struct.keywordTable { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i32 7 }, %struct.keywordTable { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i32 8 }, %struct.keywordTable { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0), i32 9 }], align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"package\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"packages\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"func\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"functions\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"const\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"constants\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"types\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"var\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"variables\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"struct\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"structs\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"interface\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"interfaces\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"member\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"struct members\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"anonMember\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"struct anonymous members\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@GoUnknownRoles = internal global [1 x %struct.sRoleDesc] [%struct.sRoleDesc { i8 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i32 0, i32 0) }], align 8
@.str.20 = private unnamed_addr constant [13 x i8] c"receiverType\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"receiver type\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"go\00", align 1
@TokenPool = internal global %struct.sObjPool* null, align 8
@readToken.lastTokenType = internal global i32 -1, align 4
@signature = internal global %struct.sVString* null, align 8
@Lang_go = internal global i32 0, align 4
@.str.23 = private unnamed_addr constant [3 x i8] c"<-\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"typename\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"import\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"map\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"chan\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sParserDefinition* @GoParser() #0 {
entry:
  %def = alloca %struct.sParserDefinition*, align 8
  %call = call %struct.sParserDefinition* @parserNew(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store %struct.sParserDefinition* %call, %struct.sParserDefinition** %def, align 8
  %0 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %0, i32 0, i32 1
  store %struct.sKindDefinition* getelementptr inbounds ([10 x %struct.sKindDefinition], [10 x %struct.sKindDefinition]* @GoKinds, i64 0, i64 0), %struct.sKindDefinition** %kindTable, align 8
  %1 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %1, i32 0, i32 2
  store i32 10, i32* %kindCount, align 8
  %2 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %extensions = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %2, i32 0, i32 3
  store i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @extensions, i64 0, i64 0), i8*** %extensions, align 8
  %3 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %parser = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %3, i32 0, i32 8
  store void ()* @findGoTags, void ()** %parser, align 8
  %4 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %initialize = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %4, i32 0, i32 6
  store void (i32)* @initialize, void (i32)** %initialize, align 8
  %5 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %finalize = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %5, i32 0, i32 7
  store void (i32, i1)* @finalize, void (i32, i1)** %finalize, align 8
  %6 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %keywordTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %6, i32 0, i32 18
  store %struct.keywordTable* getelementptr inbounds ([10 x %struct.keywordTable], [10 x %struct.keywordTable]* @GoKeywordTable, i64 0, i64 0), %struct.keywordTable** %keywordTable, align 8
  %7 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %keywordCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %7, i32 0, i32 19
  store i32 10, i32* %keywordCount, align 8
  %8 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %useCork = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %8, i32 0, i32 12
  store i8 1, i8* %useCork, align 4
  %9 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %requestAutomaticFQTag = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %9, i32 0, i32 15
  store i8 1, i8* %requestAutomaticFQTag, align 1
  %10 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  ret %struct.sParserDefinition* %10
}

declare %struct.sParserDefinition* @parserNew(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @findGoTags() #0 {
entry:
  %token = alloca %struct.sTokenInfo*, align 8
  %0 = load %struct.sObjPool*, %struct.sObjPool** @TokenPool, align 8
  %call = call i8* @objPoolGet(%struct.sObjPool* %0)
  %1 = bitcast i8* %call to %struct.sTokenInfo*
  store %struct.sTokenInfo* %1, %struct.sTokenInfo** %token, align 8
  %2 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  call void @parseGoFile(%struct.sTokenInfo* %2)
  %3 = load %struct.sObjPool*, %struct.sObjPool** @TokenPool, align 8
  %4 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %5 = bitcast %struct.sTokenInfo* %4 to i8*
  call void @objPoolPut(%struct.sObjPool* %3, i8* %5)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @initialize(i32 %language) #0 {
entry:
  %language.addr = alloca i32, align 4
  store i32 %language, i32* %language.addr, align 4
  %0 = load i32, i32* %language.addr, align 4
  store i32 %0, i32* @Lang_go, align 4
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

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseGoFile(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %scope = alloca i32, align 4
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  store i32 0, i32* %scope, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %0)
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %1, i32 0, i32 0
  %2 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %2, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %3, i32 0, i32 1
  %4 = load i32, i32* %keyword, align 4
  switch i32 %4, label %sw.default [
    i32 0, label %sw.bb
    i32 5, label %sw.bb1
    i32 2, label %sw.bb2
    i32 3, label %sw.bb3
    i32 4, label %sw.bb4
  ]

sw.bb:                                            ; preds = %if.then
  %5 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call = call i32 @parsePackage(%struct.sTokenInfo* %5)
  store i32 %call, i32* %scope, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %if.then
  %6 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %7 = load i32, i32* %scope, align 4
  call void @parseFunctionOrMethod(%struct.sTokenInfo* %6, i32 %7)
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.then
  %8 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %9 = load i32, i32* %scope, align 4
  call void @parseConstTypeVar(%struct.sTokenInfo* %8, i32 2, i32 %9)
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.then
  %10 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %11 = load i32, i32* %scope, align 4
  call void @parseConstTypeVar(%struct.sTokenInfo* %10, i32 3, i32 %11)
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.then
  %12 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %13 = load i32, i32* %scope, align 4
  call void @parseConstTypeVar(%struct.sTokenInfo* %12, i32 4, i32 %13)
  br label %sw.epilog

sw.default:                                       ; preds = %if.then
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  br label %if.end13

if.else:                                          ; preds = %do.body
  %14 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type5 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %14, i32 0, i32 0
  %15 = load i32, i32* %type5, align 8
  %cmp6 = icmp eq i32 %15, 4
  br i1 %cmp6, label %if.then12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %16 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type7 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %16, i32 0, i32 0
  %17 = load i32, i32* %type7, align 8
  %cmp8 = icmp eq i32 %17, 6
  br i1 %cmp8, label %if.then12, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %18 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type10 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %18, i32 0, i32 0
  %19 = load i32, i32* %type10, align 8
  %cmp11 = icmp eq i32 %19, 8
  br i1 %cmp11, label %if.then12, label %if.end

if.then12:                                        ; preds = %lor.lhs.false9, %lor.lhs.false, %if.else
  %20 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @skipToMatched(%struct.sTokenInfo* %20)
  br label %if.end

if.end:                                           ; preds = %if.then12, %lor.lhs.false9
  br label %if.end13

if.end13:                                         ; preds = %if.end, %sw.epilog
  br label %do.cond

do.cond:                                          ; preds = %if.end13
  %21 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type14 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %21, i32 0, i32 0
  %22 = load i32, i32* %type14, align 8
  %cmp15 = icmp ne i32 %22, 15
  br i1 %cmp15, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  ret void
}

declare void @objPoolPut(%struct.sObjPool*, i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @readToken(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %c = alloca i32, align 4
  %firstWhitespace = alloca i8, align 1
  %whitespace = alloca i8, align 1
  %vStringClear_s = alloca %struct.sVString*, align 8
  %tmp = alloca %struct._MIOPos, align 8
  %hasNewline = alloca i8, align 1
  %d = alloca i32, align 4
  %tmp67 = alloca %struct._MIOPos, align 8
  %d70 = alloca i32, align 4
  %tmp108 = alloca %struct._MIOPos, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  store i8 1, i8* %firstWhitespace, align 1
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 0
  store i32 -1, i32* %type, align 8
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

getNextChar:                                      ; preds = %do.end58, %sw.bb36, %do.end
  br label %do.body1

do.body1:                                         ; preds = %do.cond, %getNextChar
  %call = call i32 @getcFromInputFile()
  store i32 %call, i32* %c, align 4
  %call2 = call i64 @getInputLineNumber()
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %lineNumber = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %7, i32 0, i32 3
  store i64 %call2, i64* %lineNumber, align 8
  %8 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %filePosition = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %8, i32 0, i32 4
  %call3 = call [2 x i64] @getInputFilePosition()
  %9 = bitcast %struct._MIOPos* %tmp to [2 x i64]*
  store [2 x i64] %call3, [2 x i64]* %9, align 8
  %10 = bitcast %struct._MIOPos* %filePosition to i8*
  %11 = bitcast %struct._MIOPos* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 16, i1 false)
  %12 = load i32, i32* %c, align 4
  %cmp = icmp eq i32 %12, 10
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body1
  %13 = load i32, i32* @readToken.lastTokenType, align 4
  %cmp4 = icmp eq i32 %13, 2
  br i1 %cmp4, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %14 = load i32, i32* @readToken.lastTokenType, align 4
  %cmp5 = icmp eq i32 %14, 3
  br i1 %cmp5, label %if.then, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %15 = load i32, i32* @readToken.lastTokenType, align 4
  %cmp7 = icmp eq i32 %15, 0
  br i1 %cmp7, label %if.then, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %lor.lhs.false6
  %16 = load i32, i32* @readToken.lastTokenType, align 4
  %cmp9 = icmp eq i32 %16, 5
  br i1 %cmp9, label %if.then, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false8
  %17 = load i32, i32* @readToken.lastTokenType, align 4
  %cmp11 = icmp eq i32 %17, 7
  br i1 %cmp11, label %if.then, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false10
  %18 = load i32, i32* @readToken.lastTokenType, align 4
  %cmp13 = icmp eq i32 %18, 9
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false12, %lor.lhs.false10, %lor.lhs.false8, %lor.lhs.false6, %lor.lhs.false, %land.lhs.true
  store i32 59, i32* %c, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false12, %do.body1
  %19 = load i32, i32* %c, align 4
  %cmp14 = icmp eq i32 %19, 9
  br i1 %cmp14, label %lor.end, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %if.end
  %20 = load i32, i32* %c, align 4
  %cmp16 = icmp eq i32 %20, 32
  br i1 %cmp16, label %lor.end, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %lor.lhs.false15
  %21 = load i32, i32* %c, align 4
  %cmp18 = icmp eq i32 %21, 13
  br i1 %cmp18, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false17
  %22 = load i32, i32* %c, align 4
  %cmp19 = icmp eq i32 %22, 10
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false17, %lor.lhs.false15, %if.end
  %23 = phi i1 [ true, %lor.lhs.false17 ], [ true, %lor.lhs.false15 ], [ true, %if.end ], [ %cmp19, %lor.rhs ]
  %frombool = zext i1 %23 to i8
  store i8 %frombool, i8* %whitespace, align 1
  %24 = load %struct.sVString*, %struct.sVString** @signature, align 8
  %tobool = icmp ne %struct.sVString* %24, null
  br i1 %tobool, label %land.lhs.true20, label %if.end28

land.lhs.true20:                                  ; preds = %lor.end
  %25 = load i8, i8* %whitespace, align 1
  %tobool21 = trunc i8 %25 to i1
  br i1 %tobool21, label %land.lhs.true22, label %if.end28

land.lhs.true22:                                  ; preds = %land.lhs.true20
  %26 = load i8, i8* %firstWhitespace, align 1
  %tobool23 = trunc i8 %26 to i1
  br i1 %tobool23, label %land.lhs.true24, label %if.end28

land.lhs.true24:                                  ; preds = %land.lhs.true22
  %27 = load %struct.sVString*, %struct.sVString** @signature, align 8
  %length25 = getelementptr inbounds %struct.sVString, %struct.sVString* %27, i32 0, i32 0
  %28 = load i64, i64* %length25, align 8
  %cmp26 = icmp ult i64 %28, 512
  br i1 %cmp26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %land.lhs.true24
  store i8 0, i8* %firstWhitespace, align 1
  %29 = load %struct.sVString*, %struct.sVString** @signature, align 8
  call void @vStringPut(%struct.sVString* %29, i32 32)
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %land.lhs.true24, %land.lhs.true22, %land.lhs.true20, %lor.end
  br label %do.cond

do.cond:                                          ; preds = %if.end28
  %30 = load i8, i8* %whitespace, align 1
  %tobool29 = trunc i8 %30 to i1
  br i1 %tobool29, label %do.body1, label %do.end30

do.end30:                                         ; preds = %do.cond
  %31 = load i32, i32* %c, align 4
  switch i32 %31, label %sw.default96 [
    i32 -1, label %sw.bb
    i32 59, label %sw.bb32
    i32 47, label %sw.bb34
    i32 34, label %sw.bb61
    i32 39, label %sw.bb61
    i32 96, label %sw.bb61
    i32 60, label %sw.bb69
    i32 40, label %sw.bb78
    i32 41, label %sw.bb80
    i32 123, label %sw.bb82
    i32 125, label %sw.bb84
    i32 91, label %sw.bb86
    i32 93, label %sw.bb88
    i32 42, label %sw.bb90
    i32 46, label %sw.bb92
    i32 44, label %sw.bb94
  ]

sw.bb:                                            ; preds = %do.end30
  %32 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type31 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %32, i32 0, i32 0
  store i32 15, i32* %type31, align 8
  br label %sw.epilog124

sw.bb32:                                          ; preds = %do.end30
  %33 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type33 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %33, i32 0, i32 0
  store i32 10, i32* %type33, align 8
  br label %sw.epilog124

sw.bb34:                                          ; preds = %do.end30
  store i8 0, i8* %hasNewline, align 1
  %call35 = call i32 @getcFromInputFile()
  store i32 %call35, i32* %d, align 4
  %34 = load i32, i32* %d, align 4
  switch i32 %34, label %sw.default [
    i32 47, label %sw.bb36
    i32 42, label %sw.bb38
  ]

sw.bb36:                                          ; preds = %sw.bb34
  %call37 = call i32 @skipToCharacterInInputFile(i32 10)
  call void @ungetcToInputFile(i32 10)
  br label %getNextChar

sw.bb38:                                          ; preds = %sw.bb34
  br label %do.body39

do.body39:                                        ; preds = %land.end57, %sw.bb38
  br label %do.body40

do.body40:                                        ; preds = %land.end, %do.body39
  %call41 = call i32 @getcFromInputFile()
  store i32 %call41, i32* %d, align 4
  %35 = load i32, i32* %d, align 4
  %cmp42 = icmp eq i32 %35, 10
  br i1 %cmp42, label %if.then43, label %if.end44

if.then43:                                        ; preds = %do.body40
  store i8 1, i8* %hasNewline, align 1
  br label %if.end44

if.end44:                                         ; preds = %if.then43, %do.body40
  br label %do.cond45

do.cond45:                                        ; preds = %if.end44
  %36 = load i32, i32* %d, align 4
  %cmp46 = icmp ne i32 %36, -1
  br i1 %cmp46, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond45
  %37 = load i32, i32* %d, align 4
  %cmp47 = icmp ne i32 %37, 42
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond45
  %38 = phi i1 [ false, %do.cond45 ], [ %cmp47, %land.rhs ]
  br i1 %38, label %do.body40, label %do.end48

do.end48:                                         ; preds = %land.end
  %call49 = call i32 @getcFromInputFile()
  store i32 %call49, i32* %c, align 4
  %39 = load i32, i32* %c, align 4
  %cmp50 = icmp eq i32 %39, 47
  br i1 %cmp50, label %if.then51, label %if.else

if.then51:                                        ; preds = %do.end48
  br label %do.end58

if.else:                                          ; preds = %do.end48
  %40 = load i32, i32* %c, align 4
  call void @ungetcToInputFile(i32 %40)
  br label %if.end52

if.end52:                                         ; preds = %if.else
  br label %do.cond53

do.cond53:                                        ; preds = %if.end52
  %41 = load i32, i32* %c, align 4
  %cmp54 = icmp ne i32 %41, -1
  br i1 %cmp54, label %land.rhs55, label %land.end57

land.rhs55:                                       ; preds = %do.cond53
  %42 = load i32, i32* %c, align 4
  %cmp56 = icmp ne i32 %42, 0
  br label %land.end57

land.end57:                                       ; preds = %land.rhs55, %do.cond53
  %43 = phi i1 [ false, %do.cond53 ], [ %cmp56, %land.rhs55 ]
  br i1 %43, label %do.body39, label %do.end58

do.end58:                                         ; preds = %land.end57, %if.then51
  %44 = load i8, i8* %hasNewline, align 1
  %tobool59 = trunc i8 %44 to i1
  %45 = zext i1 %tobool59 to i64
  %cond = select i1 %tobool59, i32 10, i32 32
  call void @ungetcToInputFile(i32 %cond)
  br label %getNextChar

sw.default:                                       ; preds = %sw.bb34
  %46 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type60 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %46, i32 0, i32 0
  store i32 0, i32* %type60, align 8
  %47 = load i32, i32* %d, align 4
  call void @ungetcToInputFile(i32 %47)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  br label %sw.epilog124

sw.bb61:                                          ; preds = %do.end30, %do.end30, %do.end30
  %48 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type62 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %48, i32 0, i32 0
  store i32 3, i32* %type62, align 8
  %49 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string63 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %49, i32 0, i32 2
  %50 = load %struct.sVString*, %struct.sVString** %string63, align 8
  %51 = load i32, i32* %c, align 4
  call void @parseString(%struct.sVString* %50, i32 %51)
  %call64 = call i64 @getInputLineNumber()
  %52 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %lineNumber65 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %52, i32 0, i32 3
  store i64 %call64, i64* %lineNumber65, align 8
  %53 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %filePosition66 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %53, i32 0, i32 4
  %call68 = call [2 x i64] @getInputFilePosition()
  %54 = bitcast %struct._MIOPos* %tmp67 to [2 x i64]*
  store [2 x i64] %call68, [2 x i64]* %54, align 8
  %55 = bitcast %struct._MIOPos* %filePosition66 to i8*
  %56 = bitcast %struct._MIOPos* %tmp67 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %55, i8* align 8 %56, i64 16, i1 false)
  br label %sw.epilog124

sw.bb69:                                          ; preds = %do.end30
  %call71 = call i32 @getcFromInputFile()
  store i32 %call71, i32* %d70, align 4
  %57 = load i32, i32* %d70, align 4
  %cmp72 = icmp eq i32 %57, 45
  br i1 %cmp72, label %if.then73, label %if.else75

if.then73:                                        ; preds = %sw.bb69
  %58 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type74 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %58, i32 0, i32 0
  store i32 12, i32* %type74, align 8
  br label %if.end77

if.else75:                                        ; preds = %sw.bb69
  %59 = load i32, i32* %d70, align 4
  call void @ungetcToInputFile(i32 %59)
  %60 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type76 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %60, i32 0, i32 0
  store i32 0, i32* %type76, align 8
  br label %if.end77

if.end77:                                         ; preds = %if.else75, %if.then73
  br label %sw.epilog124

sw.bb78:                                          ; preds = %do.end30
  %61 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type79 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %61, i32 0, i32 0
  store i32 4, i32* %type79, align 8
  br label %sw.epilog124

sw.bb80:                                          ; preds = %do.end30
  %62 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type81 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %62, i32 0, i32 0
  store i32 5, i32* %type81, align 8
  br label %sw.epilog124

sw.bb82:                                          ; preds = %do.end30
  %63 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type83 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %63, i32 0, i32 0
  store i32 6, i32* %type83, align 8
  br label %sw.epilog124

sw.bb84:                                          ; preds = %do.end30
  %64 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type85 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %64, i32 0, i32 0
  store i32 7, i32* %type85, align 8
  br label %sw.epilog124

sw.bb86:                                          ; preds = %do.end30
  %65 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type87 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %65, i32 0, i32 0
  store i32 8, i32* %type87, align 8
  br label %sw.epilog124

sw.bb88:                                          ; preds = %do.end30
  %66 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type89 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %66, i32 0, i32 0
  store i32 9, i32* %type89, align 8
  br label %sw.epilog124

sw.bb90:                                          ; preds = %do.end30
  %67 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type91 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %67, i32 0, i32 0
  store i32 11, i32* %type91, align 8
  br label %sw.epilog124

sw.bb92:                                          ; preds = %do.end30
  %68 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type93 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %68, i32 0, i32 0
  store i32 13, i32* %type93, align 8
  br label %sw.epilog124

sw.bb94:                                          ; preds = %do.end30
  %69 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type95 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %69, i32 0, i32 0
  store i32 14, i32* %type95, align 8
  br label %sw.epilog124

sw.default96:                                     ; preds = %do.end30
  %70 = load i32, i32* %c, align 4
  %call97 = call i32 @isalpha(i32 %70) #4
  %tobool98 = icmp ne i32 %call97, 0
  br i1 %tobool98, label %if.then103, label %lor.lhs.false99

lor.lhs.false99:                                  ; preds = %sw.default96
  %71 = load i32, i32* %c, align 4
  %cmp100 = icmp eq i32 %71, 95
  br i1 %cmp100, label %if.then103, label %lor.lhs.false101

lor.lhs.false101:                                 ; preds = %lor.lhs.false99
  %72 = load i32, i32* %c, align 4
  %cmp102 = icmp sgt i32 %72, 128
  br i1 %cmp102, label %if.then103, label %if.else121

if.then103:                                       ; preds = %lor.lhs.false101, %lor.lhs.false99, %sw.default96
  %73 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string104 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %73, i32 0, i32 2
  %74 = load %struct.sVString*, %struct.sVString** %string104, align 8
  %75 = load i32, i32* %c, align 4
  call void @parseIdentifier(%struct.sVString* %74, i32 %75)
  %call105 = call i64 @getInputLineNumber()
  %76 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %lineNumber106 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %76, i32 0, i32 3
  store i64 %call105, i64* %lineNumber106, align 8
  %77 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %filePosition107 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %77, i32 0, i32 4
  %call109 = call [2 x i64] @getInputFilePosition()
  %78 = bitcast %struct._MIOPos* %tmp108 to [2 x i64]*
  store [2 x i64] %call109, [2 x i64]* %78, align 8
  %79 = bitcast %struct._MIOPos* %filePosition107 to i8*
  %80 = bitcast %struct._MIOPos* %tmp108 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %79, i8* align 8 %80, i64 16, i1 false)
  %81 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string110 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %81, i32 0, i32 2
  %82 = load %struct.sVString*, %struct.sVString** %string110, align 8
  %buffer111 = getelementptr inbounds %struct.sVString, %struct.sVString* %82, i32 0, i32 2
  %83 = load i8*, i8** %buffer111, align 8
  %84 = load i32, i32* @Lang_go, align 4
  %call112 = call i32 @lookupKeyword(i8* %83, i32 %84)
  %85 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword113 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %85, i32 0, i32 1
  store i32 %call112, i32* %keyword113, align 4
  %86 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword114 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %86, i32 0, i32 1
  %87 = load i32, i32* %keyword114, align 4
  %cmp115 = icmp eq i32 %87, -1
  br i1 %cmp115, label %if.then116, label %if.else118

if.then116:                                       ; preds = %if.then103
  %88 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type117 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %88, i32 0, i32 0
  store i32 2, i32* %type117, align 8
  br label %if.end120

if.else118:                                       ; preds = %if.then103
  %89 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type119 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %89, i32 0, i32 0
  store i32 1, i32* %type119, align 8
  br label %if.end120

if.end120:                                        ; preds = %if.else118, %if.then116
  br label %if.end123

if.else121:                                       ; preds = %lor.lhs.false101
  %90 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type122 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %90, i32 0, i32 0
  store i32 0, i32* %type122, align 8
  br label %if.end123

if.end123:                                        ; preds = %if.else121, %if.end120
  br label %sw.epilog124

sw.epilog124:                                     ; preds = %if.end123, %sw.bb94, %sw.bb92, %sw.bb90, %sw.bb88, %sw.bb86, %sw.bb84, %sw.bb82, %sw.bb80, %sw.bb78, %if.end77, %sw.bb61, %sw.epilog, %sw.bb32, %sw.bb
  %91 = load %struct.sVString*, %struct.sVString** @signature, align 8
  %tobool125 = icmp ne %struct.sVString* %91, null
  br i1 %tobool125, label %land.lhs.true126, label %if.end153

land.lhs.true126:                                 ; preds = %sw.epilog124
  %92 = load %struct.sVString*, %struct.sVString** @signature, align 8
  %length127 = getelementptr inbounds %struct.sVString, %struct.sVString* %92, i32 0, i32 0
  %93 = load i64, i64* %length127, align 8
  %cmp128 = icmp ult i64 %93, 512
  br i1 %cmp128, label %if.then129, label %if.end153

if.then129:                                       ; preds = %land.lhs.true126
  %94 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type130 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %94, i32 0, i32 0
  %95 = load i32, i32* %type130, align 8
  %cmp131 = icmp eq i32 %95, 12
  br i1 %cmp131, label %if.then132, label %if.else133

if.then132:                                       ; preds = %if.then129
  %96 = load %struct.sVString*, %struct.sVString** @signature, align 8
  call void @vStringCatS(%struct.sVString* %96, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0))
  br label %if.end152

if.else133:                                       ; preds = %if.then129
  %97 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type134 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %97, i32 0, i32 0
  %98 = load i32, i32* %type134, align 8
  %cmp135 = icmp eq i32 %98, 3
  br i1 %cmp135, label %if.then136, label %if.else138

if.then136:                                       ; preds = %if.else133
  %99 = load %struct.sVString*, %struct.sVString** @signature, align 8
  call void @vStringPut(%struct.sVString* %99, i32 96)
  %100 = load %struct.sVString*, %struct.sVString** @signature, align 8
  %101 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string137 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %101, i32 0, i32 2
  %102 = load %struct.sVString*, %struct.sVString** %string137, align 8
  call void @vStringCat(%struct.sVString* %100, %struct.sVString* %102)
  %103 = load %struct.sVString*, %struct.sVString** @signature, align 8
  call void @vStringPut(%struct.sVString* %103, i32 96)
  br label %if.end151

if.else138:                                       ; preds = %if.else133
  %104 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type139 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %104, i32 0, i32 0
  %105 = load i32, i32* %type139, align 8
  %cmp140 = icmp eq i32 %105, 2
  br i1 %cmp140, label %if.then144, label %lor.lhs.false141

lor.lhs.false141:                                 ; preds = %if.else138
  %106 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type142 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %106, i32 0, i32 0
  %107 = load i32, i32* %type142, align 8
  %cmp143 = icmp eq i32 %107, 1
  br i1 %cmp143, label %if.then144, label %if.else146

if.then144:                                       ; preds = %lor.lhs.false141, %if.else138
  %108 = load %struct.sVString*, %struct.sVString** @signature, align 8
  %109 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string145 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %109, i32 0, i32 2
  %110 = load %struct.sVString*, %struct.sVString** %string145, align 8
  call void @vStringCat(%struct.sVString* %108, %struct.sVString* %110)
  br label %if.end150

if.else146:                                       ; preds = %lor.lhs.false141
  %111 = load i32, i32* %c, align 4
  %cmp147 = icmp ne i32 %111, -1
  br i1 %cmp147, label %if.then148, label %if.end149

if.then148:                                       ; preds = %if.else146
  %112 = load %struct.sVString*, %struct.sVString** @signature, align 8
  %113 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %112, i32 %113)
  br label %if.end149

if.end149:                                        ; preds = %if.then148, %if.else146
  br label %if.end150

if.end150:                                        ; preds = %if.end149, %if.then144
  br label %if.end151

if.end151:                                        ; preds = %if.end150, %if.then136
  br label %if.end152

if.end152:                                        ; preds = %if.end151, %if.then132
  br label %if.end153

if.end153:                                        ; preds = %if.end152, %land.lhs.true126, %sw.epilog124
  %114 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type154 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %114, i32 0, i32 0
  %115 = load i32, i32* %type154, align 8
  store i32 %115, i32* @readToken.lastTokenType, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @parsePackage(%struct.sTokenInfo* %token) #0 {
entry:
  %retval = alloca i32, align 4
  %token.addr = alloca %struct.sTokenInfo*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %0)
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %1, i32 0, i32 0
  %2 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %2, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call = call i32 @makeTag(%struct.sTokenInfo* %3, i32 0, i32 0, i8* null, i8* null)
  store i32 %call, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %4 = load i32, i32* %retval, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseFunctionOrMethod(%struct.sTokenInfo* %token, i32 %scope) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %scope.addr = alloca i32, align 4
  %receiver_type_token = alloca %struct.sTokenInfo*, align 8
  %functionToken = alloca %struct.sTokenInfo*, align 8
  %func_scope = alloca i32, align 4
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  store i32 %scope, i32* %scope.addr, align 4
  store %struct.sTokenInfo* null, %struct.sTokenInfo** %receiver_type_token, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %0)
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %1, i32 0, i32 0
  %2 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %2, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call = call %struct.sTokenInfo* @parseReceiver(%struct.sTokenInfo* %3)
  store %struct.sTokenInfo* %call, %struct.sTokenInfo** %receiver_type_token, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type1 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %4, i32 0, i32 0
  %5 = load i32, i32* %type1, align 8
  %cmp2 = icmp eq i32 %5, 2
  br i1 %cmp2, label %if.then3, label %if.end16

if.then3:                                         ; preds = %if.end
  %6 = load %struct.sObjPool*, %struct.sObjPool** @TokenPool, align 8
  %call4 = call i8* @objPoolGet(%struct.sObjPool* %6)
  %7 = bitcast i8* %call4 to %struct.sTokenInfo*
  store %struct.sTokenInfo* %7, %struct.sTokenInfo** %functionToken, align 8
  %8 = load %struct.sTokenInfo*, %struct.sTokenInfo** %functionToken, align 8
  %9 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @copyToken(%struct.sTokenInfo* %8, %struct.sTokenInfo* %9)
  %call5 = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call5, %struct.sVString** @signature, align 8
  %10 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %10)
  %11 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call6 = call zeroext i1 @skipToMatchedNoRead(%struct.sTokenInfo* %11)
  %12 = load %struct.sVString*, %struct.sVString** @signature, align 8
  call void @vStringStripLeading(%struct.sVString* %12)
  %13 = load %struct.sVString*, %struct.sVString** @signature, align 8
  call void @vStringStripTrailing(%struct.sVString* %13)
  %14 = load %struct.sTokenInfo*, %struct.sTokenInfo** %receiver_type_token, align 8
  %tobool = icmp ne %struct.sTokenInfo* %14, null
  br i1 %tobool, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.then3
  %15 = load %struct.sTokenInfo*, %struct.sTokenInfo** %receiver_type_token, align 8
  %16 = load i32, i32* %scope.addr, align 4
  %call8 = call i32 @makeTag(%struct.sTokenInfo* %15, i32 9, i32 %16, i8* null, i8* null)
  store i32 %call8, i32* %func_scope, align 4
  br label %if.end9

if.else:                                          ; preds = %if.then3
  %17 = load i32, i32* %scope.addr, align 4
  store i32 %17, i32* %func_scope, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then7
  %18 = load %struct.sTokenInfo*, %struct.sTokenInfo** %functionToken, align 8
  %19 = load i32, i32* %func_scope, align 4
  %20 = load %struct.sVString*, %struct.sVString** @signature, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %20, i32 0, i32 2
  %21 = load i8*, i8** %buffer, align 8
  %call10 = call i32 @makeTag(%struct.sTokenInfo* %18, i32 1, i32 %19, i8* %21, i8* null)
  %22 = load %struct.sObjPool*, %struct.sObjPool** @TokenPool, align 8
  %23 = load %struct.sTokenInfo*, %struct.sTokenInfo** %functionToken, align 8
  %24 = bitcast %struct.sTokenInfo* %23 to i8*
  call void @objPoolPut(%struct.sObjPool* %22, i8* %24)
  %25 = load %struct.sVString*, %struct.sVString** @signature, align 8
  call void @vStringDelete(%struct.sVString* %25)
  store %struct.sVString* null, %struct.sVString** @signature, align 8
  %26 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %26)
  %27 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call11 = call zeroext i1 @skipType(%struct.sTokenInfo* %27)
  %28 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type12 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %28, i32 0, i32 0
  %29 = load i32, i32* %type12, align 8
  %cmp13 = icmp eq i32 %29, 6
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end9
  %30 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @skipToMatched(%struct.sTokenInfo* %30)
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end9
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.end
  %31 = load %struct.sTokenInfo*, %struct.sTokenInfo** %receiver_type_token, align 8
  %tobool17 = icmp ne %struct.sTokenInfo* %31, null
  br i1 %tobool17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end16
  %32 = load %struct.sObjPool*, %struct.sObjPool** @TokenPool, align 8
  %33 = load %struct.sTokenInfo*, %struct.sTokenInfo** %receiver_type_token, align 8
  %34 = bitcast %struct.sTokenInfo* %33 to i8*
  call void @objPoolPut(%struct.sObjPool* %32, i8* %34)
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end16
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseConstTypeVar(%struct.sTokenInfo* %token, i32 %kind, i32 %scope) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %kind.addr = alloca i32, align 4
  %scope.addr = alloca i32, align 4
  %usesParens = alloca i8, align 1
  %member_scope = alloca i32, align 4
  %typeToken = alloca %struct.sTokenInfo*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  store i32 %kind, i32* %kind.addr, align 4
  store i32 %scope, i32* %scope.addr, align 4
  store i8 0, i8* %usesParens, align 1
  %0 = load i32, i32* %scope.addr, align 4
  store i32 %0, i32* %member_scope, align 4
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %1)
  %2 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %2, i32 0, i32 0
  %3 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %3, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8 1, i8* %usesParens, align 1
  %4 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %do.body

do.body:                                          ; preds = %land.end61, %if.end
  store %struct.sTokenInfo* null, %struct.sTokenInfo** %typeToken, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end26, %do.body
  %5 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type1 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %5, i32 0, i32 0
  %6 = load i32, i32* %type1, align 8
  %cmp2 = icmp eq i32 %6, 15
  %lnot = xor i1 %cmp2, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type3 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %7, i32 0, i32 0
  %8 = load i32, i32* %type3, align 8
  %cmp4 = icmp eq i32 %8, 2
  br i1 %cmp4, label %if.then5, label %if.end22

if.then5:                                         ; preds = %while.body
  %9 = load i32, i32* %kind.addr, align 4
  %cmp6 = icmp eq i32 %9, 3
  br i1 %cmp6, label %if.then7, label %if.else19

if.then7:                                         ; preds = %if.then5
  %10 = load %struct.sObjPool*, %struct.sObjPool** @TokenPool, align 8
  %call = call i8* @objPoolGet(%struct.sObjPool* %10)
  %11 = bitcast i8* %call to %struct.sTokenInfo*
  store %struct.sTokenInfo* %11, %struct.sTokenInfo** %typeToken, align 8
  %12 = load %struct.sTokenInfo*, %struct.sTokenInfo** %typeToken, align 8
  %13 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @copyToken(%struct.sTokenInfo* %12, %struct.sTokenInfo* %13)
  %14 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %14)
  %15 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %15, i32 0, i32 1
  %16 = load i32, i32* %keyword, align 4
  %cmp8 = icmp eq i32 %16, 6
  br i1 %cmp8, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.then7
  %17 = load %struct.sTokenInfo*, %struct.sTokenInfo** %typeToken, align 8
  %18 = load i32, i32* %scope.addr, align 4
  %call10 = call i32 @makeTag(%struct.sTokenInfo* %17, i32 5, i32 %18, i8* null, i8* null)
  store i32 %call10, i32* %member_scope, align 4
  br label %if.end18

if.else:                                          ; preds = %if.then7
  %19 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword11 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %19, i32 0, i32 1
  %20 = load i32, i32* %keyword11, align 4
  %cmp12 = icmp eq i32 %20, 7
  br i1 %cmp12, label %if.then13, label %if.else15

if.then13:                                        ; preds = %if.else
  %21 = load %struct.sTokenInfo*, %struct.sTokenInfo** %typeToken, align 8
  %22 = load i32, i32* %scope.addr, align 4
  %call14 = call i32 @makeTag(%struct.sTokenInfo* %21, i32 6, i32 %22, i8* null, i8* null)
  store i32 %call14, i32* %member_scope, align 4
  br label %if.end17

if.else15:                                        ; preds = %if.else
  %23 = load %struct.sTokenInfo*, %struct.sTokenInfo** %typeToken, align 8
  %24 = load i32, i32* %kind.addr, align 4
  %25 = load i32, i32* %scope.addr, align 4
  %call16 = call i32 @makeTag(%struct.sTokenInfo* %23, i32 %24, i32 %25, i8* null, i8* null)
  store i32 %call16, i32* %member_scope, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.else15, %if.then13
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then9
  br label %while.end

if.else19:                                        ; preds = %if.then5
  %26 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %27 = load i32, i32* %kind.addr, align 4
  %28 = load i32, i32* %scope.addr, align 4
  %call20 = call i32 @makeTag(%struct.sTokenInfo* %26, i32 %27, i32 %28, i8* null, i8* null)
  br label %if.end21

if.end21:                                         ; preds = %if.else19
  %29 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %29)
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %while.body
  %30 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type23 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %30, i32 0, i32 0
  %31 = load i32, i32* %type23, align 8
  %cmp24 = icmp eq i32 %31, 14
  br i1 %cmp24, label %if.end26, label %if.then25

if.then25:                                        ; preds = %if.end22
  br label %while.end

if.end26:                                         ; preds = %if.end22
  %32 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %32)
  br label %while.cond

while.end:                                        ; preds = %if.then25, %if.end18, %while.cond
  %33 = load %struct.sTokenInfo*, %struct.sTokenInfo** %typeToken, align 8
  %tobool = icmp ne %struct.sTokenInfo* %33, null
  br i1 %tobool, label %if.then27, label %if.else34

if.then27:                                        ; preds = %while.end
  %34 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword28 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %34, i32 0, i32 1
  %35 = load i32, i32* %keyword28, align 4
  %cmp29 = icmp eq i32 %35, 6
  br i1 %cmp29, label %if.then30, label %if.else31

if.then30:                                        ; preds = %if.then27
  %36 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %37 = load i32, i32* %member_scope, align 4
  call void @parseStructMembers(%struct.sTokenInfo* %36, i32 %37)
  br label %if.end33

if.else31:                                        ; preds = %if.then27
  %38 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call32 = call zeroext i1 @skipType(%struct.sTokenInfo* %38)
  br label %if.end33

if.end33:                                         ; preds = %if.else31, %if.then30
  %39 = load %struct.sObjPool*, %struct.sObjPool** @TokenPool, align 8
  %40 = load %struct.sTokenInfo*, %struct.sTokenInfo** %typeToken, align 8
  %41 = bitcast %struct.sTokenInfo* %40 to i8*
  call void @objPoolPut(%struct.sObjPool* %39, i8* %41)
  br label %if.end36

if.else34:                                        ; preds = %while.end
  %42 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call35 = call zeroext i1 @skipType(%struct.sTokenInfo* %42)
  br label %if.end36

if.end36:                                         ; preds = %if.else34, %if.end33
  br label %while.cond37

while.cond37:                                     ; preds = %while.body45, %if.end36
  %43 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type38 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %43, i32 0, i32 0
  %44 = load i32, i32* %type38, align 8
  %cmp39 = icmp eq i32 %44, 10
  br i1 %cmp39, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.cond37
  %45 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type40 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %45, i32 0, i32 0
  %46 = load i32, i32* %type40, align 8
  %cmp41 = icmp eq i32 %46, 5
  br i1 %cmp41, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true
  %47 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type42 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %47, i32 0, i32 0
  %48 = load i32, i32* %type42, align 8
  %cmp43 = icmp eq i32 %48, 15
  %lnot44 = xor i1 %cmp43, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond37
  %49 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond37 ], [ %lnot44, %land.rhs ]
  br i1 %49, label %while.body45, label %while.end46

while.body45:                                     ; preds = %land.end
  %50 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %50)
  %51 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @skipToMatched(%struct.sTokenInfo* %51)
  br label %while.cond37

while.end46:                                      ; preds = %land.end
  %52 = load i8, i8* %usesParens, align 1
  %tobool47 = trunc i8 %52 to i1
  br i1 %tobool47, label %land.lhs.true48, label %if.end52

land.lhs.true48:                                  ; preds = %while.end46
  %53 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type49 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %53, i32 0, i32 0
  %54 = load i32, i32* %type49, align 8
  %cmp50 = icmp eq i32 %54, 5
  br i1 %cmp50, label %if.end52, label %if.then51

if.then51:                                        ; preds = %land.lhs.true48
  %55 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %55)
  br label %if.end52

if.end52:                                         ; preds = %if.then51, %land.lhs.true48, %while.end46
  br label %do.cond

do.cond:                                          ; preds = %if.end52
  %56 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type53 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %56, i32 0, i32 0
  %57 = load i32, i32* %type53, align 8
  %cmp54 = icmp eq i32 %57, 15
  br i1 %cmp54, label %land.end61, label %land.lhs.true55

land.lhs.true55:                                  ; preds = %do.cond
  %58 = load i8, i8* %usesParens, align 1
  %tobool56 = trunc i8 %58 to i1
  br i1 %tobool56, label %land.rhs57, label %land.end61

land.rhs57:                                       ; preds = %land.lhs.true55
  %59 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type58 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %59, i32 0, i32 0
  %60 = load i32, i32* %type58, align 8
  %cmp59 = icmp eq i32 %60, 5
  %lnot60 = xor i1 %cmp59, true
  br label %land.end61

land.end61:                                       ; preds = %land.rhs57, %land.lhs.true55, %do.cond
  %61 = phi i1 [ false, %land.lhs.true55 ], [ false, %do.cond ], [ %lnot60, %land.rhs57 ]
  br i1 %61, label %do.body, label %do.end

do.end:                                           ; preds = %land.end61
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @skipToMatched(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call = call zeroext i1 @skipToMatchedNoRead(%struct.sTokenInfo* %0)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %1)
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

declare i32 @skipToCharacterInInputFile(i32) #1

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

while.cond:                                       ; preds = %if.end15, %entry
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
  br label %if.end15

if.else:                                          ; preds = %while.body
  %2 = load i32, i32* %c, align 4
  %cmp1 = icmp eq i32 %2, 92
  br i1 %cmp1, label %land.lhs.true, label %if.else9

land.lhs.true:                                    ; preds = %if.else
  %3 = load i32, i32* %delimiter.addr, align 4
  %cmp2 = icmp ne i32 %3, 96
  br i1 %cmp2, label %if.then3, label %if.else9

if.then3:                                         ; preds = %land.lhs.true
  %call4 = call i32 @getcFromInputFile()
  store i32 %call4, i32* %c, align 4
  %4 = load i32, i32* %c, align 4
  %cmp5 = icmp ne i32 %4, 39
  br i1 %cmp5, label %land.lhs.true6, label %if.end

land.lhs.true6:                                   ; preds = %if.then3
  %5 = load i32, i32* %c, align 4
  %cmp7 = icmp ne i32 %5, 34
  br i1 %cmp7, label %if.then8, label %if.end

if.then8:                                         ; preds = %land.lhs.true6
  %6 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  call void @vStringPut(%struct.sVString* %6, i32 92)
  br label %if.end

if.end:                                           ; preds = %if.then8, %land.lhs.true6, %if.then3
  %7 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %8 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %7, i32 %8)
  br label %if.end14

if.else9:                                         ; preds = %land.lhs.true, %if.else
  %9 = load i32, i32* %c, align 4
  %10 = load i32, i32* %delimiter.addr, align 4
  %cmp10 = icmp eq i32 %9, %10
  br i1 %cmp10, label %if.then11, label %if.else12

if.then11:                                        ; preds = %if.else9
  store i8 1, i8* %end, align 1
  br label %if.end13

if.else12:                                        ; preds = %if.else9
  %11 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %12 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %11, i32 %12)
  br label %if.end13

if.end13:                                         ; preds = %if.else12, %if.then11
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.end
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.then
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
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

do.body:                                          ; preds = %lor.end, %entry
  %1 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %2 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %1, i32 %2)
  %call = call i32 @getcFromInputFile()
  store i32 %call, i32* %c, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %3 = load i32, i32* %c, align 4
  %call1 = call i32 @isalpha(i32 %3) #4
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.cond
  %4 = load i32, i32* %c, align 4
  %cmp = icmp eq i32 %4, 95
  br i1 %cmp, label %lor.end, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %5 = load i32, i32* %c, align 4
  %cmp3 = icmp sgt i32 %5, 128
  br i1 %cmp3, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false2
  %6 = load i32, i32* %c, align 4
  %call4 = call i32 @isdigit(i32 %6) #4
  %tobool5 = icmp ne i32 %call4, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false2, %lor.lhs.false, %do.cond
  %7 = phi i1 [ true, %lor.lhs.false2 ], [ true, %lor.lhs.false ], [ true, %do.cond ], [ %tobool5, %lor.rhs ]
  br i1 %7, label %do.body, label %do.end

do.end:                                           ; preds = %lor.end
  %8 = load i32, i32* %c, align 4
  call void @ungetcToInputFile(i32 %8)
  ret void
}

declare i32 @lookupKeyword(i8*, i32) #1

declare void @vStringCatS(%struct.sVString*, i8*) #1

declare void @vStringCat(%struct.sVString*, %struct.sVString*) #1

declare void @vStringResize(%struct.sVString*, i64) #1

; Function Attrs: nounwind readonly
declare i32 @isdigit(i32) #3

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @makeTag(%struct.sTokenInfo* %token, i32 %kind, i32 %scope, i8* %argList, i8* %typeref) #0 {
entry:
  %retval = alloca i32, align 4
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %kind.addr = alloca i32, align 4
  %scope.addr = alloca i32, align 4
  %argList.addr = alloca i8*, align 8
  %typeref.addr = alloca i8*, align 8
  %name = alloca i8*, align 8
  %e = alloca %struct.sTagEntryInfo, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  store i32 %kind, i32* %kind.addr, align 4
  store i32 %scope, i32* %scope.addr, align 4
  store i8* %argList, i8** %argList.addr, align 8
  store i8* %typeref, i8** %typeref.addr, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 2
  %1 = load %struct.sVString*, %struct.sVString** %string, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %1, i32 0, i32 2
  %2 = load i8*, i8** %buffer, align 8
  store i8* %2, i8** %name, align 8
  %3 = load i32, i32* %kind.addr, align 4
  %cmp = icmp eq i32 %3, 9
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load i8*, i8** %name, align 8
  %5 = load i32, i32* %kind.addr, align 4
  call void @initRefTagEntry(%struct.sTagEntryInfo* %e, i8* %4, i32 %5, i32 0)
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load i8*, i8** %name, align 8
  %7 = load i32, i32* %kind.addr, align 4
  call void @initTagEntry(%struct.sTagEntryInfo* %e, i8* %6, i32 %7)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load i32, i32* %kind.addr, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [10 x %struct.sKindDefinition], [10 x %struct.sKindDefinition]* @GoKinds, i64 0, i64 %idxprom
  %enabled = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %arrayidx, i32 0, i32 0
  %9 = load i8, i8* %enabled, align 8
  %tobool = trunc i8 %9 to i1
  br i1 %tobool, label %if.end2, label %if.then1

if.then1:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4
  br label %return

if.end2:                                          ; preds = %if.end
  %10 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %lineNumber = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %10, i32 0, i32 3
  %11 = load i64, i64* %lineNumber, align 8
  %lineNumber3 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %e, i32 0, i32 1
  store i64 %11, i64* %lineNumber3, align 8
  %filePosition = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %e, i32 0, i32 4
  %12 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %filePosition4 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %12, i32 0, i32 4
  %13 = bitcast %struct._MIOPos* %filePosition to i8*
  %14 = bitcast %struct._MIOPos* %filePosition4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 16, i1 false)
  %15 = load i8*, i8** %argList.addr, align 8
  %tobool5 = icmp ne i8* %15, null
  br i1 %tobool5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end2
  %16 = load i8*, i8** %argList.addr, align 8
  %extensionFields = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %e, i32 0, i32 11
  %signature = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields, i32 0, i32 8
  store i8* %16, i8** %signature, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end2
  %17 = load i8*, i8** %typeref.addr, align 8
  %tobool8 = icmp ne i8* %17, null
  br i1 %tobool8, label %if.then9, label %if.end15

if.then9:                                         ; preds = %if.end7
  %extensionFields10 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %e, i32 0, i32 11
  %typeRef = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields10, i32 0, i32 9
  %arrayidx11 = getelementptr inbounds [2 x i8*], [2 x i8*]* %typeRef, i64 0, i64 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i64 0, i64 0), i8** %arrayidx11, align 8
  %18 = load i8*, i8** %typeref.addr, align 8
  %extensionFields12 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %e, i32 0, i32 11
  %typeRef13 = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields12, i32 0, i32 9
  %arrayidx14 = getelementptr inbounds [2 x i8*], [2 x i8*]* %typeRef13, i64 0, i64 1
  store i8* %18, i8** %arrayidx14, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then9, %if.end7
  %19 = load i32, i32* %scope.addr, align 4
  %extensionFields16 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %e, i32 0, i32 11
  %scopeIndex = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields16, i32 0, i32 7
  store i32 %19, i32* %scopeIndex, align 8
  %call = call i32 @makeTagEntry(%struct.sTagEntryInfo* %e)
  store i32 %call, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end15, %if.then1
  %20 = load i32, i32* %retval, align 4
  ret i32 %20
}

declare void @initRefTagEntry(%struct.sTagEntryInfo*, i8*, i32, i32) #1

declare void @initTagEntry(%struct.sTagEntryInfo*, i8*, i32) #1

declare i32 @makeTagEntry(%struct.sTagEntryInfo*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct.sTokenInfo* @parseReceiver(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %receiver_type_token = alloca %struct.sTokenInfo*, align 8
  %nest_level = alloca i32, align 4
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  store %struct.sTokenInfo* null, %struct.sTokenInfo** %receiver_type_token, align 8
  store i32 1, i32* %nest_level, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end13, %entry
  %0 = load i32, i32* %nest_level, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %1, i32 0, i32 0
  %2 = load i32, i32* %type, align 8
  %cmp1 = icmp eq i32 %2, 15
  %lnot = xor i1 %cmp1, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %3 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %3, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %4 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type2 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %4, i32 0, i32 0
  %5 = load i32, i32* %type2, align 8
  %cmp3 = icmp eq i32 %5, 2
  br i1 %cmp3, label %if.then, label %if.end5

if.then:                                          ; preds = %while.body
  %6 = load %struct.sTokenInfo*, %struct.sTokenInfo** %receiver_type_token, align 8
  %tobool = icmp ne %struct.sTokenInfo* %6, null
  br i1 %tobool, label %if.end, label %if.then4

if.then4:                                         ; preds = %if.then
  %7 = load %struct.sObjPool*, %struct.sObjPool** @TokenPool, align 8
  %call = call i8* @objPoolGet(%struct.sObjPool* %7)
  %8 = bitcast i8* %call to %struct.sTokenInfo*
  store %struct.sTokenInfo* %8, %struct.sTokenInfo** %receiver_type_token, align 8
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then
  %9 = load %struct.sTokenInfo*, %struct.sTokenInfo** %receiver_type_token, align 8
  %10 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @copyToken(%struct.sTokenInfo* %9, %struct.sTokenInfo* %10)
  br label %if.end5

if.end5:                                          ; preds = %if.end, %while.body
  %11 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %11)
  %12 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type6 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %12, i32 0, i32 0
  %13 = load i32, i32* %type6, align 8
  %cmp7 = icmp eq i32 %13, 4
  br i1 %cmp7, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end5
  %14 = load i32, i32* %nest_level, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %nest_level, align 4
  br label %if.end13

if.else:                                          ; preds = %if.end5
  %15 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type9 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %15, i32 0, i32 0
  %16 = load i32, i32* %type9, align 8
  %cmp10 = icmp eq i32 %16, 5
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.else
  %17 = load i32, i32* %nest_level, align 4
  %dec = add nsw i32 %17, -1
  store i32 %dec, i32* %nest_level, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.else
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.then8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %18 = load i32, i32* %nest_level, align 4
  %cmp14 = icmp sgt i32 %18, 0
  br i1 %cmp14, label %land.lhs.true, label %if.end17

land.lhs.true:                                    ; preds = %while.end
  %19 = load %struct.sTokenInfo*, %struct.sTokenInfo** %receiver_type_token, align 8
  %tobool15 = icmp ne %struct.sTokenInfo* %19, null
  br i1 %tobool15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %land.lhs.true
  %20 = load %struct.sObjPool*, %struct.sObjPool** @TokenPool, align 8
  %21 = load %struct.sTokenInfo*, %struct.sTokenInfo** %receiver_type_token, align 8
  %22 = bitcast %struct.sTokenInfo* %21 to i8*
  call void @objPoolPut(%struct.sObjPool* %20, i8* %22)
  store %struct.sTokenInfo* null, %struct.sTokenInfo** %receiver_type_token, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %land.lhs.true, %while.end
  %23 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %23)
  %24 = load %struct.sTokenInfo*, %struct.sTokenInfo** %receiver_type_token, align 8
  ret %struct.sTokenInfo* %24
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @copyToken(%struct.sTokenInfo* %dest, %struct.sTokenInfo* %other) #0 {
entry:
  %dest.addr = alloca %struct.sTokenInfo*, align 8
  %other.addr = alloca %struct.sTokenInfo*, align 8
  store %struct.sTokenInfo* %dest, %struct.sTokenInfo** %dest.addr, align 8
  store %struct.sTokenInfo* %other, %struct.sTokenInfo** %other.addr, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %other.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 0
  %1 = load i32, i32* %type, align 8
  %2 = load %struct.sTokenInfo*, %struct.sTokenInfo** %dest.addr, align 8
  %type1 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %2, i32 0, i32 0
  store i32 %1, i32* %type1, align 8
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %other.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %3, i32 0, i32 1
  %4 = load i32, i32* %keyword, align 4
  %5 = load %struct.sTokenInfo*, %struct.sTokenInfo** %dest.addr, align 8
  %keyword2 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %5, i32 0, i32 1
  store i32 %4, i32* %keyword2, align 4
  %6 = load %struct.sTokenInfo*, %struct.sTokenInfo** %dest.addr, align 8
  %string = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %6, i32 0, i32 2
  %7 = load %struct.sVString*, %struct.sVString** %string, align 8
  %8 = load %struct.sTokenInfo*, %struct.sTokenInfo** %other.addr, align 8
  %string3 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %8, i32 0, i32 2
  %9 = load %struct.sVString*, %struct.sVString** %string3, align 8
  call void @vStringCopy(%struct.sVString* %7, %struct.sVString* %9)
  %10 = load %struct.sTokenInfo*, %struct.sTokenInfo** %other.addr, align 8
  %lineNumber = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %10, i32 0, i32 3
  %11 = load i64, i64* %lineNumber, align 8
  %12 = load %struct.sTokenInfo*, %struct.sTokenInfo** %dest.addr, align 8
  %lineNumber4 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %12, i32 0, i32 3
  store i64 %11, i64* %lineNumber4, align 8
  %13 = load %struct.sTokenInfo*, %struct.sTokenInfo** %dest.addr, align 8
  %filePosition = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %13, i32 0, i32 4
  %14 = load %struct.sTokenInfo*, %struct.sTokenInfo** %other.addr, align 8
  %filePosition5 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %14, i32 0, i32 4
  %15 = bitcast %struct._MIOPos* %filePosition to i8*
  %16 = bitcast %struct._MIOPos* %filePosition5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 %16, i64 16, i1 false)
  ret void
}

declare %struct.sVString* @vStringNew() #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @skipToMatchedNoRead(%struct.sTokenInfo* %token) #0 {
entry:
  %retval = alloca i1, align 1
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %nest_level = alloca i32, align 4
  %open_token = alloca i32, align 4
  %close_token = alloca i32, align 4
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  store i32 0, i32* %nest_level, align 4
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 0
  %1 = load i32, i32* %type, align 8
  store i32 %1, i32* %open_token, align 4
  %2 = load i32, i32* %open_token, align 4
  switch i32 %2, label %sw.default [
    i32 4, label %sw.bb
    i32 6, label %sw.bb1
    i32 8, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  store i32 5, i32* %close_token, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  store i32 7, i32* %close_token, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  store i32 9, i32* %close_token, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store i1 false, i1* %retval, align 1
  br label %return

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb1, %sw.bb
  %3 = load i32, i32* %nest_level, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %nest_level, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end11, %sw.epilog
  %4 = load i32, i32* %nest_level, align 4
  %cmp = icmp sgt i32 %4, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %5 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type3 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %5, i32 0, i32 0
  %6 = load i32, i32* %type3, align 8
  %cmp4 = icmp eq i32 %6, 15
  %lnot = xor i1 %cmp4, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %7 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %7, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %8 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %8)
  %9 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type5 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %9, i32 0, i32 0
  %10 = load i32, i32* %type5, align 8
  %11 = load i32, i32* %open_token, align 4
  %cmp6 = icmp eq i32 %10, %11
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %12 = load i32, i32* %nest_level, align 4
  %inc7 = add nsw i32 %12, 1
  store i32 %inc7, i32* %nest_level, align 4
  br label %if.end11

if.else:                                          ; preds = %while.body
  %13 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type8 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %13, i32 0, i32 0
  %14 = load i32, i32* %type8, align 8
  %15 = load i32, i32* %close_token, align 4
  %cmp9 = icmp eq i32 %14, %15
  br i1 %cmp9, label %if.then10, label %if.end

if.then10:                                        ; preds = %if.else
  %16 = load i32, i32* %nest_level, align 4
  %dec = add nsw i32 %16, -1
  store i32 %dec, i32* %nest_level, align 4
  br label %if.end

if.end:                                           ; preds = %if.then10, %if.else
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then
  br label %while.cond

while.end:                                        ; preds = %land.end
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %while.end, %sw.default
  %17 = load i1, i1* %retval, align 1
  ret i1 %17
}

declare void @vStringStripLeading(%struct.sVString*) #1

declare void @vStringStripTrailing(%struct.sVString*) #1

declare void @vStringDelete(%struct.sVString*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @skipType(%struct.sTokenInfo* %token) #0 {
entry:
  %retval = alloca i1, align 1
  %token.addr = alloca %struct.sTokenInfo*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 0
  %1 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %1, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @skipToMatched(%struct.sTokenInfo* %2)
  store i1 true, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type1 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %3, i32 0, i32 0
  %4 = load i32, i32* %type1, align 8
  %cmp2 = icmp eq i32 %4, 2
  br i1 %cmp2, label %if.then3, label %if.end12

if.then3:                                         ; preds = %if.end
  %5 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %5)
  %6 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type4 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %6, i32 0, i32 0
  %7 = load i32, i32* %type4, align 8
  %cmp5 = icmp eq i32 %7, 13
  br i1 %cmp5, label %if.then6, label %if.end11

if.then6:                                         ; preds = %if.then3
  %8 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %8)
  %9 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type7 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %9, i32 0, i32 0
  %10 = load i32, i32* %type7, align 8
  %cmp8 = icmp eq i32 %10, 2
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.then6
  %11 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %11)
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.then6
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %if.then3
  store i1 true, i1* %retval, align 1
  br label %return

if.end12:                                         ; preds = %if.end
  %12 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %12, i32 0, i32 1
  %13 = load i32, i32* %keyword, align 4
  %cmp13 = icmp eq i32 %13, 6
  br i1 %cmp13, label %if.then16, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end12
  %14 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword14 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %14, i32 0, i32 1
  %15 = load i32, i32* %keyword14, align 4
  %cmp15 = icmp eq i32 %15, 7
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %lor.lhs.false, %if.end12
  %16 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %16)
  %17 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @skipToMatched(%struct.sTokenInfo* %17)
  store i1 true, i1* %retval, align 1
  br label %return

if.end17:                                         ; preds = %lor.lhs.false
  %18 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type18 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %18, i32 0, i32 0
  %19 = load i32, i32* %type18, align 8
  %cmp19 = icmp eq i32 %19, 8
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end17
  %20 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @skipToMatched(%struct.sTokenInfo* %20)
  %21 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call = call zeroext i1 @skipType(%struct.sTokenInfo* %21)
  store i1 %call, i1* %retval, align 1
  br label %return

if.end21:                                         ; preds = %if.end17
  %22 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type22 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %22, i32 0, i32 0
  %23 = load i32, i32* %type22, align 8
  %cmp23 = icmp eq i32 %23, 11
  br i1 %cmp23, label %if.then30, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %if.end21
  %24 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword25 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %24, i32 0, i32 1
  %25 = load i32, i32* %keyword25, align 4
  %cmp26 = icmp eq i32 %25, 9
  br i1 %cmp26, label %if.then30, label %lor.lhs.false27

lor.lhs.false27:                                  ; preds = %lor.lhs.false24
  %26 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type28 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %26, i32 0, i32 0
  %27 = load i32, i32* %type28, align 8
  %cmp29 = icmp eq i32 %27, 12
  br i1 %cmp29, label %if.then30, label %if.end32

if.then30:                                        ; preds = %lor.lhs.false27, %lor.lhs.false24, %if.end21
  %28 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %28)
  %29 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call31 = call zeroext i1 @skipType(%struct.sTokenInfo* %29)
  store i1 %call31, i1* %retval, align 1
  br label %return

if.end32:                                         ; preds = %lor.lhs.false27
  %30 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword33 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %30, i32 0, i32 1
  %31 = load i32, i32* %keyword33, align 4
  %cmp34 = icmp eq i32 %31, 8
  br i1 %cmp34, label %if.then35, label %if.end37

if.then35:                                        ; preds = %if.end32
  %32 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %32)
  %33 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @skipToMatched(%struct.sTokenInfo* %33)
  %34 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call36 = call zeroext i1 @skipType(%struct.sTokenInfo* %34)
  store i1 %call36, i1* %retval, align 1
  br label %return

if.end37:                                         ; preds = %if.end32
  %35 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword38 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %35, i32 0, i32 1
  %36 = load i32, i32* %keyword38, align 4
  %cmp39 = icmp eq i32 %36, 5
  br i1 %cmp39, label %if.then40, label %if.end42

if.then40:                                        ; preds = %if.end37
  %37 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %37)
  %38 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @skipToMatched(%struct.sTokenInfo* %38)
  %39 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call41 = call zeroext i1 @skipType(%struct.sTokenInfo* %39)
  store i1 %call41, i1* %retval, align 1
  br label %return

if.end42:                                         ; preds = %if.end37
  store i1 false, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end42, %if.then40, %if.then35, %if.then30, %if.then20, %if.then16, %if.end11, %if.then
  %40 = load i1, i1* %retval, align 1
  ret i1 %40
}

declare void @vStringCopy(%struct.sVString*, %struct.sVString*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseStructMembers(%struct.sTokenInfo* %token, i32 %scope) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %scope.addr = alloca i32, align 4
  %typeForAnonMember = alloca %struct.sVString*, align 8
  %memberCandidate = alloca %struct.sTokenInfo*, align 8
  %first = alloca i8, align 1
  %anonMember = alloca %struct.sTokenInfo*, align 8
  %vStringClear_s = alloca %struct.sVString*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  store i32 %scope, i32* %scope.addr, align 4
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %0)
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %1, i32 0, i32 0
  %2 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %2, 6
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %call = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call, %struct.sVString** %typeForAnonMember, align 8
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %3)
  br label %while.cond

while.cond:                                       ; preds = %if.end106, %if.end
  %4 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type1 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %4, i32 0, i32 0
  %5 = load i32, i32* %type1, align 8
  %cmp2 = icmp eq i32 %5, 15
  br i1 %cmp2, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %6 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type3 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %6, i32 0, i32 0
  %7 = load i32, i32* %type3, align 8
  %cmp4 = icmp eq i32 %7, 7
  %lnot = xor i1 %cmp4, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %8 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %8, label %while.body, label %while.end107

while.body:                                       ; preds = %land.end
  store %struct.sTokenInfo* null, %struct.sTokenInfo** %memberCandidate, align 8
  store i8 1, i8* %first, align 1
  br label %while.cond5

while.cond5:                                      ; preds = %if.end25, %while.body
  %9 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type6 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %9, i32 0, i32 0
  %10 = load i32, i32* %type6, align 8
  %cmp7 = icmp eq i32 %10, 15
  %lnot8 = xor i1 %cmp7, true
  br i1 %lnot8, label %while.body9, label %while.end

while.body9:                                      ; preds = %while.cond5
  %11 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type10 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %11, i32 0, i32 0
  %12 = load i32, i32* %type10, align 8
  %cmp11 = icmp eq i32 %12, 2
  br i1 %cmp11, label %if.then12, label %if.end21

if.then12:                                        ; preds = %while.body9
  %13 = load i8, i8* %first, align 1
  %tobool = trunc i8 %13 to i1
  br i1 %tobool, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.then12
  %14 = load %struct.sObjPool*, %struct.sObjPool** @TokenPool, align 8
  %call14 = call i8* @objPoolGet(%struct.sObjPool* %14)
  %15 = bitcast i8* %call14 to %struct.sTokenInfo*
  store %struct.sTokenInfo* %15, %struct.sTokenInfo** %memberCandidate, align 8
  %16 = load %struct.sTokenInfo*, %struct.sTokenInfo** %memberCandidate, align 8
  %17 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @copyToken(%struct.sTokenInfo* %16, %struct.sTokenInfo* %17)
  store i8 0, i8* %first, align 1
  br label %if.end20

if.else:                                          ; preds = %if.then12
  %18 = load %struct.sTokenInfo*, %struct.sTokenInfo** %memberCandidate, align 8
  %tobool15 = icmp ne %struct.sTokenInfo* %18, null
  br i1 %tobool15, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.else
  %19 = load %struct.sTokenInfo*, %struct.sTokenInfo** %memberCandidate, align 8
  %20 = load i32, i32* %scope.addr, align 4
  %call17 = call i32 @makeTag(%struct.sTokenInfo* %19, i32 7, i32 %20, i8* null, i8* null)
  %21 = load %struct.sObjPool*, %struct.sObjPool** @TokenPool, align 8
  %22 = load %struct.sTokenInfo*, %struct.sTokenInfo** %memberCandidate, align 8
  %23 = bitcast %struct.sTokenInfo* %22 to i8*
  call void @objPoolPut(%struct.sObjPool* %21, i8* %23)
  store %struct.sTokenInfo* null, %struct.sTokenInfo** %memberCandidate, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.else
  %24 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %25 = load i32, i32* %scope.addr, align 4
  %call19 = call i32 @makeTag(%struct.sTokenInfo* %24, i32 7, i32 %25, i8* null, i8* null)
  br label %if.end20

if.end20:                                         ; preds = %if.end18, %if.then13
  %26 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %26)
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %while.body9
  %27 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type22 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %27, i32 0, i32 0
  %28 = load i32, i32* %type22, align 8
  %cmp23 = icmp eq i32 %28, 14
  br i1 %cmp23, label %if.end25, label %if.then24

if.then24:                                        ; preds = %if.end21
  br label %while.end

if.end25:                                         ; preds = %if.end21
  %29 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %29)
  br label %while.cond5

while.end:                                        ; preds = %if.then24, %while.cond5
  %30 = load i8, i8* %first, align 1
  %tobool26 = trunc i8 %30 to i1
  br i1 %tobool26, label %land.lhs.true, label %if.else30

land.lhs.true:                                    ; preds = %while.end
  %31 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type27 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %31, i32 0, i32 0
  %32 = load i32, i32* %type27, align 8
  %cmp28 = icmp eq i32 %32, 11
  br i1 %cmp28, label %if.then29, label %if.else30

if.then29:                                        ; preds = %land.lhs.true
  %33 = load %struct.sVString*, %struct.sVString** %typeForAnonMember, align 8
  call void @vStringPut(%struct.sVString* %33, i32 42)
  %34 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %34)
  br label %if.end42

if.else30:                                        ; preds = %land.lhs.true, %while.end
  %35 = load %struct.sTokenInfo*, %struct.sTokenInfo** %memberCandidate, align 8
  %tobool31 = icmp ne %struct.sTokenInfo* %35, null
  br i1 %tobool31, label %land.lhs.true32, label %if.end41

land.lhs.true32:                                  ; preds = %if.else30
  %36 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type33 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %36, i32 0, i32 0
  %37 = load i32, i32* %type33, align 8
  %cmp34 = icmp eq i32 %37, 13
  br i1 %cmp34, label %if.then40, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true32
  %38 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type35 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %38, i32 0, i32 0
  %39 = load i32, i32* %type35, align 8
  %cmp36 = icmp eq i32 %39, 3
  br i1 %cmp36, label %if.then40, label %lor.lhs.false37

lor.lhs.false37:                                  ; preds = %lor.lhs.false
  %40 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type38 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %40, i32 0, i32 0
  %41 = load i32, i32* %type38, align 8
  %cmp39 = icmp eq i32 %41, 10
  br i1 %cmp39, label %if.then40, label %if.end41

if.then40:                                        ; preds = %lor.lhs.false37, %lor.lhs.false, %land.lhs.true32
  %42 = load %struct.sVString*, %struct.sVString** %typeForAnonMember, align 8
  %43 = load %struct.sTokenInfo*, %struct.sTokenInfo** %memberCandidate, align 8
  %string = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %43, i32 0, i32 2
  %44 = load %struct.sVString*, %struct.sVString** %string, align 8
  call void @vStringCat(%struct.sVString* %42, %struct.sVString* %44)
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %lor.lhs.false37, %if.else30
  br label %if.end42

if.end42:                                         ; preds = %if.end41, %if.then29
  %45 = load %struct.sVString*, %struct.sVString** %typeForAnonMember, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %45, i32 0, i32 0
  %46 = load i64, i64* %length, align 8
  %cmp43 = icmp ugt i64 %46, 0
  br i1 %cmp43, label %if.then44, label %if.else78

if.then44:                                        ; preds = %if.end42
  store %struct.sTokenInfo* null, %struct.sTokenInfo** %anonMember, align 8
  %47 = load %struct.sTokenInfo*, %struct.sTokenInfo** %memberCandidate, align 8
  %tobool45 = icmp ne %struct.sTokenInfo* %47, null
  br i1 %tobool45, label %if.then46, label %if.end48

if.then46:                                        ; preds = %if.then44
  %48 = load %struct.sObjPool*, %struct.sObjPool** @TokenPool, align 8
  %call47 = call i8* @objPoolGet(%struct.sObjPool* %48)
  %49 = bitcast i8* %call47 to %struct.sTokenInfo*
  store %struct.sTokenInfo* %49, %struct.sTokenInfo** %anonMember, align 8
  %50 = load %struct.sTokenInfo*, %struct.sTokenInfo** %anonMember, align 8
  %51 = load %struct.sTokenInfo*, %struct.sTokenInfo** %memberCandidate, align 8
  call void @copyToken(%struct.sTokenInfo* %50, %struct.sTokenInfo* %51)
  br label %if.end48

if.end48:                                         ; preds = %if.then46, %if.then44
  br label %while.cond49

while.cond49:                                     ; preds = %if.end68, %if.end48
  %52 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type50 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %52, i32 0, i32 0
  %53 = load i32, i32* %type50, align 8
  %cmp51 = icmp eq i32 %53, 2
  br i1 %cmp51, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond49
  %54 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type52 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %54, i32 0, i32 0
  %55 = load i32, i32* %type52, align 8
  %cmp53 = icmp eq i32 %55, 13
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond49
  %56 = phi i1 [ true, %while.cond49 ], [ %cmp53, %lor.rhs ]
  br i1 %56, label %while.body54, label %while.end69

while.body54:                                     ; preds = %lor.end
  %57 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type55 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %57, i32 0, i32 0
  %58 = load i32, i32* %type55, align 8
  %cmp56 = icmp eq i32 %58, 2
  br i1 %cmp56, label %if.then57, label %if.else63

if.then57:                                        ; preds = %while.body54
  %59 = load %struct.sTokenInfo*, %struct.sTokenInfo** %anonMember, align 8
  %tobool58 = icmp ne %struct.sTokenInfo* %59, null
  br i1 %tobool58, label %if.end61, label %if.then59

if.then59:                                        ; preds = %if.then57
  %60 = load %struct.sObjPool*, %struct.sObjPool** @TokenPool, align 8
  %call60 = call i8* @objPoolGet(%struct.sObjPool* %60)
  %61 = bitcast i8* %call60 to %struct.sTokenInfo*
  store %struct.sTokenInfo* %61, %struct.sTokenInfo** %anonMember, align 8
  br label %if.end61

if.end61:                                         ; preds = %if.then59, %if.then57
  %62 = load %struct.sTokenInfo*, %struct.sTokenInfo** %anonMember, align 8
  %63 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @copyToken(%struct.sTokenInfo* %62, %struct.sTokenInfo* %63)
  %64 = load %struct.sVString*, %struct.sVString** %typeForAnonMember, align 8
  %65 = load %struct.sTokenInfo*, %struct.sTokenInfo** %anonMember, align 8
  %string62 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %65, i32 0, i32 2
  %66 = load %struct.sVString*, %struct.sVString** %string62, align 8
  call void @vStringCat(%struct.sVString* %64, %struct.sVString* %66)
  br label %if.end68

if.else63:                                        ; preds = %while.body54
  %67 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type64 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %67, i32 0, i32 0
  %68 = load i32, i32* %type64, align 8
  %cmp65 = icmp eq i32 %68, 13
  br i1 %cmp65, label %if.then66, label %if.end67

if.then66:                                        ; preds = %if.else63
  %69 = load %struct.sVString*, %struct.sVString** %typeForAnonMember, align 8
  call void @vStringPut(%struct.sVString* %69, i32 46)
  br label %if.end67

if.end67:                                         ; preds = %if.then66, %if.else63
  br label %if.end68

if.end68:                                         ; preds = %if.end67, %if.end61
  %70 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %70)
  br label %while.cond49

while.end69:                                      ; preds = %lor.end
  %71 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type70 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %71, i32 0, i32 0
  %72 = load i32, i32* %type70, align 8
  %cmp71 = icmp eq i32 %72, 3
  br i1 %cmp71, label %if.then72, label %if.end73

if.then72:                                        ; preds = %while.end69
  %73 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %73)
  br label %if.end73

if.end73:                                         ; preds = %if.then72, %while.end69
  %74 = load %struct.sTokenInfo*, %struct.sTokenInfo** %anonMember, align 8
  %tobool74 = icmp ne %struct.sTokenInfo* %74, null
  br i1 %tobool74, label %if.then75, label %if.end77

if.then75:                                        ; preds = %if.end73
  %75 = load %struct.sTokenInfo*, %struct.sTokenInfo** %anonMember, align 8
  %76 = load i32, i32* %scope.addr, align 4
  %77 = load %struct.sVString*, %struct.sVString** %typeForAnonMember, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %77, i32 0, i32 2
  %78 = load i8*, i8** %buffer, align 8
  %call76 = call i32 @makeTag(%struct.sTokenInfo* %75, i32 8, i32 %76, i8* null, i8* %78)
  %79 = load %struct.sObjPool*, %struct.sObjPool** @TokenPool, align 8
  %80 = load %struct.sTokenInfo*, %struct.sTokenInfo** %anonMember, align 8
  %81 = bitcast %struct.sTokenInfo* %80 to i8*
  call void @objPoolPut(%struct.sObjPool* %79, i8* %81)
  br label %if.end77

if.end77:                                         ; preds = %if.then75, %if.end73
  br label %if.end84

if.else78:                                        ; preds = %if.end42
  %82 = load %struct.sTokenInfo*, %struct.sTokenInfo** %memberCandidate, align 8
  %tobool79 = icmp ne %struct.sTokenInfo* %82, null
  br i1 %tobool79, label %if.then80, label %if.end83

if.then80:                                        ; preds = %if.else78
  %83 = load %struct.sTokenInfo*, %struct.sTokenInfo** %memberCandidate, align 8
  %84 = load i32, i32* %scope.addr, align 4
  %call81 = call i32 @makeTag(%struct.sTokenInfo* %83, i32 7, i32 %84, i8* null, i8* null)
  %85 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call82 = call zeroext i1 @skipType(%struct.sTokenInfo* %85)
  br label %if.end83

if.end83:                                         ; preds = %if.then80, %if.else78
  br label %if.end84

if.end84:                                         ; preds = %if.end83, %if.end77
  %86 = load %struct.sTokenInfo*, %struct.sTokenInfo** %memberCandidate, align 8
  %tobool85 = icmp ne %struct.sTokenInfo* %86, null
  br i1 %tobool85, label %if.then86, label %if.end87

if.then86:                                        ; preds = %if.end84
  %87 = load %struct.sObjPool*, %struct.sObjPool** @TokenPool, align 8
  %88 = load %struct.sTokenInfo*, %struct.sTokenInfo** %memberCandidate, align 8
  %89 = bitcast %struct.sTokenInfo* %88 to i8*
  call void @objPoolPut(%struct.sObjPool* %87, i8* %89)
  br label %if.end87

if.end87:                                         ; preds = %if.then86, %if.end84
  br label %do.body

do.body:                                          ; preds = %if.end87
  %90 = load %struct.sVString*, %struct.sVString** %typeForAnonMember, align 8
  store %struct.sVString* %90, %struct.sVString** %vStringClear_s, align 8
  %91 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %length88 = getelementptr inbounds %struct.sVString, %struct.sVString* %91, i32 0, i32 0
  store i64 0, i64* %length88, align 8
  %92 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %buffer89 = getelementptr inbounds %struct.sVString, %struct.sVString* %92, i32 0, i32 2
  %93 = load i8*, i8** %buffer89, align 8
  %arrayidx = getelementptr inbounds i8, i8* %93, i64 0
  store i8 0, i8* %arrayidx, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %while.cond90

while.cond90:                                     ; preds = %while.body101, %do.end
  %94 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type91 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %94, i32 0, i32 0
  %95 = load i32, i32* %type91, align 8
  %cmp92 = icmp eq i32 %95, 10
  br i1 %cmp92, label %land.end100, label %land.lhs.true93

land.lhs.true93:                                  ; preds = %while.cond90
  %96 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type94 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %96, i32 0, i32 0
  %97 = load i32, i32* %type94, align 8
  %cmp95 = icmp eq i32 %97, 7
  br i1 %cmp95, label %land.end100, label %land.rhs96

land.rhs96:                                       ; preds = %land.lhs.true93
  %98 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type97 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %98, i32 0, i32 0
  %99 = load i32, i32* %type97, align 8
  %cmp98 = icmp eq i32 %99, 15
  %lnot99 = xor i1 %cmp98, true
  br label %land.end100

land.end100:                                      ; preds = %land.rhs96, %land.lhs.true93, %while.cond90
  %100 = phi i1 [ false, %land.lhs.true93 ], [ false, %while.cond90 ], [ %lnot99, %land.rhs96 ]
  br i1 %100, label %while.body101, label %while.end102

while.body101:                                    ; preds = %land.end100
  %101 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %101)
  %102 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @skipToMatched(%struct.sTokenInfo* %102)
  br label %while.cond90

while.end102:                                     ; preds = %land.end100
  %103 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type103 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %103, i32 0, i32 0
  %104 = load i32, i32* %type103, align 8
  %cmp104 = icmp eq i32 %104, 7
  br i1 %cmp104, label %if.end106, label %if.then105

if.then105:                                       ; preds = %while.end102
  %105 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @readToken(%struct.sTokenInfo* %105)
  br label %if.end106

if.end106:                                        ; preds = %if.then105, %while.end102
  br label %while.cond

while.end107:                                     ; preds = %land.end
  %106 = load %struct.sVString*, %struct.sVString** %typeForAnonMember, align 8
  call void @vStringDelete(%struct.sVString* %106)
  br label %return

return:                                           ; preds = %while.end107, %if.then
  ret void
}

declare %struct.sObjPool* @objPoolNew(i32, i8* (i8*)*, void (i8*)*, void (i8*)*, i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @newPoolToken(i8* %createArg) #0 {
entry:
  %createArg.addr = alloca i8*, align 8
  %token = alloca %struct.sTokenInfo*, align 8
  store i8* %createArg, i8** %createArg.addr, align 8
  %call = call i8* @eMalloc(i64 40)
  %0 = bitcast i8* %call to %struct.sTokenInfo*
  store %struct.sTokenInfo* %0, %struct.sTokenInfo** %token, align 8
  %call1 = call %struct.sVString* @vStringNew()
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %string = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %1, i32 0, i32 2
  store %struct.sVString* %call1, %struct.sVString** %string, align 8
  %2 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %3 = bitcast %struct.sTokenInfo* %2 to i8*
  ret i8* %3
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
  %5 = bitcast %struct.sTokenInfo* %4 to i8*
  call void @eFree(i8* %5)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @clearPoolToken(i8* %data) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %token = alloca %struct.sTokenInfo*, align 8
  %tmp = alloca %struct._MIOPos, align 8
  %vStringClear_s = alloca %struct.sVString*, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.sTokenInfo*
  store %struct.sTokenInfo* %1, %struct.sTokenInfo** %token, align 8
  %2 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %2, i32 0, i32 0
  store i32 -1, i32* %type, align 8
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %3, i32 0, i32 1
  store i32 -1, i32* %keyword, align 4
  %call = call i64 @getInputLineNumber()
  %4 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %lineNumber = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %4, i32 0, i32 3
  store i64 %call, i64* %lineNumber, align 8
  %5 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %filePosition = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %5, i32 0, i32 4
  %call1 = call [2 x i64] @getInputFilePosition()
  %6 = bitcast %struct._MIOPos* %tmp to [2 x i64]*
  store [2 x i64] %call1, [2 x i64]* %6, align 8
  %7 = bitcast %struct._MIOPos* %filePosition to i8*
  %8 = bitcast %struct._MIOPos* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 %8, i64 16, i1 false)
  br label %do.body

do.body:                                          ; preds = %entry
  %9 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %string = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %9, i32 0, i32 2
  %10 = load %struct.sVString*, %struct.sVString** %string, align 8
  store %struct.sVString* %10, %struct.sVString** %vStringClear_s, align 8
  %11 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %11, i32 0, i32 0
  store i64 0, i64* %length, align 8
  %12 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %12, i32 0, i32 2
  %13 = load i8*, i8** %buffer, align 8
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 0
  store i8 0, i8* %arrayidx, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
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
