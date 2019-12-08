; ModuleID = 'json.c'
source_filename = "json.c"
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
%struct.tokenInfo = type { i32, i32, %struct.sVString*, %struct.sVString*, i64, %struct._MIOPos }

@.str = private unnamed_addr constant [5 x i8] c"JSON\00", align 1
@extensions = internal constant [2 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* null], align 8
@JsonKinds = internal global [6 x %struct.sKindDefinition] [%struct.sKindDefinition { i8 1, i8 111, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 97, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 110, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 115, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 98, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 122, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }], align 8
@JsonKeywordTable = internal constant [3 x %struct.keywordTable] [%struct.keywordTable { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i32 0 }, %struct.keywordTable { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i32 1 }, %struct.keywordTable { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i32 2 }], align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"json\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"object\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"objects\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"array\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"arrays\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"number\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"numbers\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"strings\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"bool\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"booleans\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"nulls\00", align 1
@Lang_json = internal global i32 0, align 4
@.str.14 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"false\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sParserDefinition* @JsonParser() #0 {
entry:
  %def = alloca %struct.sParserDefinition*, align 8
  %call = call %struct.sParserDefinition* @parserNew(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.sParserDefinition* %call, %struct.sParserDefinition** %def, align 8
  %0 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %extensions = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %0, i32 0, i32 3
  store i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @extensions, i64 0, i64 0), i8*** %extensions, align 8
  %1 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %1, i32 0, i32 1
  store %struct.sKindDefinition* getelementptr inbounds ([6 x %struct.sKindDefinition], [6 x %struct.sKindDefinition]* @JsonKinds, i64 0, i64 0), %struct.sKindDefinition** %kindTable, align 8
  %2 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %2, i32 0, i32 2
  store i32 6, i32* %kindCount, align 8
  %3 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %parser = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %3, i32 0, i32 8
  store void ()* @findJsonTags, void ()** %parser, align 8
  %4 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %initialize = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %4, i32 0, i32 6
  store void (i32)* @initialize, void (i32)** %initialize, align 8
  %5 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %keywordTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %5, i32 0, i32 18
  store %struct.keywordTable* getelementptr inbounds ([3 x %struct.keywordTable], [3 x %struct.keywordTable]* @JsonKeywordTable, i64 0, i64 0), %struct.keywordTable** %keywordTable, align 8
  %6 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %keywordCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %6, i32 0, i32 19
  store i32 3, i32* %keywordCount, align 8
  %7 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %allowNullTag = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %7, i32 0, i32 14
  store i8 1, i8* %allowNullTag, align 2
  %8 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  ret %struct.sParserDefinition* %8
}

declare %struct.sParserDefinition* @parserNew(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @findJsonTags() #0 {
entry:
  %token = alloca %struct.tokenInfo*, align 8
  %call = call %struct.tokenInfo* @newToken()
  store %struct.tokenInfo* %call, %struct.tokenInfo** %token, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load %struct.tokenInfo*, %struct.tokenInfo** %token, align 8
  call void @readTokenFull(%struct.tokenInfo* %0, i1 zeroext false)
  %1 = load %struct.tokenInfo*, %struct.tokenInfo** %token, align 8
  call void @parseValue(%struct.tokenInfo* %1)
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %2 = load %struct.tokenInfo*, %struct.tokenInfo** %token, align 8
  %type = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %2, i32 0, i32 0
  %3 = load i32, i32* %type, align 8
  %cmp = icmp ne i32 %3, 0
  br i1 %cmp, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %4 = load %struct.tokenInfo*, %struct.tokenInfo** %token, align 8
  call void @deleteToken(%struct.tokenInfo* %4)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @initialize(i32 %language) #0 {
entry:
  %language.addr = alloca i32, align 4
  store i32 %language, i32* %language.addr, align 4
  %0 = load i32, i32* %language.addr, align 4
  store i32 %0, i32* @Lang_json, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct.tokenInfo* @newToken() #0 {
entry:
  %token = alloca %struct.tokenInfo*, align 8
  %tmp = alloca %struct._MIOPos, align 8
  %call = call i8* @eMalloc(i64 48)
  %0 = bitcast i8* %call to %struct.tokenInfo*
  store %struct.tokenInfo* %0, %struct.tokenInfo** %token, align 8
  %1 = load %struct.tokenInfo*, %struct.tokenInfo** %token, align 8
  %type = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %1, i32 0, i32 0
  store i32 1, i32* %type, align 8
  %2 = load %struct.tokenInfo*, %struct.tokenInfo** %token, align 8
  %scopeKind = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %2, i32 0, i32 1
  store i32 -1, i32* %scopeKind, align 4
  %call1 = call %struct.sVString* @vStringNew()
  %3 = load %struct.tokenInfo*, %struct.tokenInfo** %token, align 8
  %string = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %3, i32 0, i32 2
  store %struct.sVString* %call1, %struct.sVString** %string, align 8
  %call2 = call %struct.sVString* @vStringNew()
  %4 = load %struct.tokenInfo*, %struct.tokenInfo** %token, align 8
  %scope = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %4, i32 0, i32 3
  store %struct.sVString* %call2, %struct.sVString** %scope, align 8
  %call3 = call i64 @getInputLineNumber()
  %5 = load %struct.tokenInfo*, %struct.tokenInfo** %token, align 8
  %lineNumber = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %5, i32 0, i32 4
  store i64 %call3, i64* %lineNumber, align 8
  %6 = load %struct.tokenInfo*, %struct.tokenInfo** %token, align 8
  %filePosition = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %6, i32 0, i32 5
  %call4 = call [2 x i64] @getInputFilePosition()
  %7 = bitcast %struct._MIOPos* %tmp to [2 x i64]*
  store [2 x i64] %call4, [2 x i64]* %7, align 8
  %8 = bitcast %struct._MIOPos* %filePosition to i8*
  %9 = bitcast %struct._MIOPos* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 %9, i64 16, i1 false)
  %10 = load %struct.tokenInfo*, %struct.tokenInfo** %token, align 8
  ret %struct.tokenInfo* %10
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @readTokenFull(%struct.tokenInfo* %token, i1 zeroext %includeStringRepr) #0 {
entry:
  %token.addr = alloca %struct.tokenInfo*, align 8
  %includeStringRepr.addr = alloca i8, align 1
  %c = alloca i32, align 4
  %vStringClear_s = alloca %struct.sVString*, align 8
  %tmp = alloca %struct._MIOPos, align 8
  %escaped = alloca i8, align 1
  store %struct.tokenInfo* %token, %struct.tokenInfo** %token.addr, align 8
  %frombool = zext i1 %includeStringRepr to i8
  store i8 %frombool, i8* %includeStringRepr.addr, align 1
  %0 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %0, i32 0, i32 0
  store i32 1, i32* %type, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %1 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %string = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %1, i32 0, i32 2
  %2 = load %struct.sVString*, %struct.sVString** %string, align 8
  store %struct.sVString* %2, %struct.sVString** %vStringClear_s, align 8
  %3 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %3, i32 0, i32 0
  store i64 0, i64* %length, align 8
  %4 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %4, i32 0, i32 2
  %5 = load i8*, i8** %buffer, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 0
  store i8 0, i8* %arrayidx, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %lor.end, %do.end
  %call = call i32 @getcFromInputFile()
  store i32 %call, i32* %c, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body1
  %6 = load i32, i32* %c, align 4
  %cmp = icmp eq i32 %6, 9
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.cond
  %7 = load i32, i32* %c, align 4
  %cmp2 = icmp eq i32 %7, 32
  br i1 %cmp2, label %lor.end, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %8 = load i32, i32* %c, align 4
  %cmp4 = icmp eq i32 %8, 13
  br i1 %cmp4, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false3
  %9 = load i32, i32* %c, align 4
  %cmp5 = icmp eq i32 %9, 10
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false3, %lor.lhs.false, %do.cond
  %10 = phi i1 [ true, %lor.lhs.false3 ], [ true, %lor.lhs.false ], [ true, %do.cond ], [ %cmp5, %lor.rhs ]
  br i1 %10, label %do.body1, label %do.end6

do.end6:                                          ; preds = %lor.end
  %call7 = call i64 @getInputLineNumber()
  %11 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %lineNumber = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %11, i32 0, i32 4
  store i64 %call7, i64* %lineNumber, align 8
  %12 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %filePosition = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %12, i32 0, i32 5
  %call8 = call [2 x i64] @getInputFilePosition()
  %13 = bitcast %struct._MIOPos* %tmp to [2 x i64]*
  store [2 x i64] %call8, [2 x i64]* %13, align 8
  %14 = bitcast %struct._MIOPos* %filePosition to i8*
  %15 = bitcast %struct._MIOPos* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 %15, i64 16, i1 false)
  %16 = load i32, i32* %c, align 4
  switch i32 %16, label %sw.default [
    i32 -1, label %sw.bb
    i32 91, label %sw.bb10
    i32 93, label %sw.bb12
    i32 123, label %sw.bb14
    i32 125, label %sw.bb16
    i32 58, label %sw.bb18
    i32 44, label %sw.bb20
    i32 34, label %sw.bb22
  ]

sw.bb:                                            ; preds = %do.end6
  %17 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type9 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %17, i32 0, i32 0
  store i32 0, i32* %type9, align 8
  br label %sw.epilog81

sw.bb10:                                          ; preds = %do.end6
  %18 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type11 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %18, i32 0, i32 0
  store i32 2, i32* %type11, align 8
  br label %sw.epilog81

sw.bb12:                                          ; preds = %do.end6
  %19 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type13 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %19, i32 0, i32 0
  store i32 3, i32* %type13, align 8
  br label %sw.epilog81

sw.bb14:                                          ; preds = %do.end6
  %20 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type15 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %20, i32 0, i32 0
  store i32 4, i32* %type15, align 8
  br label %sw.epilog81

sw.bb16:                                          ; preds = %do.end6
  %21 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type17 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %21, i32 0, i32 0
  store i32 5, i32* %type17, align 8
  br label %sw.epilog81

sw.bb18:                                          ; preds = %do.end6
  %22 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type19 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %22, i32 0, i32 0
  store i32 6, i32* %type19, align 8
  br label %sw.epilog81

sw.bb20:                                          ; preds = %do.end6
  %23 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type21 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %23, i32 0, i32 0
  store i32 7, i32* %type21, align 8
  br label %sw.epilog81

sw.bb22:                                          ; preds = %do.end6
  store i8 0, i8* %escaped, align 1
  %24 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type23 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %24, i32 0, i32 0
  store i32 12, i32* %type23, align 8
  br label %while.body

while.body:                                       ; preds = %sw.bb22, %if.end42
  %call24 = call i32 @getcFromInputFile()
  store i32 %call24, i32* %c, align 4
  %25 = load i8, i8* %escaped, align 1
  %tobool = trunc i8 %25 to i1
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  store i8 0, i8* %escaped, align 1
  br label %if.end38

if.else:                                          ; preds = %while.body
  %26 = load i32, i32* %c, align 4
  %cmp25 = icmp eq i32 %26, 92
  br i1 %cmp25, label %if.then26, label %if.else27

if.then26:                                        ; preds = %if.else
  store i8 1, i8* %escaped, align 1
  br label %if.end37

if.else27:                                        ; preds = %if.else
  %27 = load i32, i32* %c, align 4
  %cmp28 = icmp sge i32 %27, 0
  br i1 %cmp28, label %land.lhs.true, label %if.else31

land.lhs.true:                                    ; preds = %if.else27
  %28 = load i32, i32* %c, align 4
  %cmp29 = icmp sle i32 %28, 31
  br i1 %cmp29, label %if.then30, label %if.else31

if.then30:                                        ; preds = %land.lhs.true
  br label %while.end

if.else31:                                        ; preds = %land.lhs.true, %if.else27
  %29 = load i32, i32* %c, align 4
  %cmp32 = icmp eq i32 %29, 34
  br i1 %cmp32, label %if.then35, label %lor.lhs.false33

lor.lhs.false33:                                  ; preds = %if.else31
  %30 = load i32, i32* %c, align 4
  %cmp34 = icmp eq i32 %30, -1
  br i1 %cmp34, label %if.then35, label %if.end

if.then35:                                        ; preds = %lor.lhs.false33, %if.else31
  br label %while.end

if.end:                                           ; preds = %lor.lhs.false33
  br label %if.end36

if.end36:                                         ; preds = %if.end
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.then26
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %if.then
  %31 = load i8, i8* %includeStringRepr.addr, align 1
  %tobool39 = trunc i8 %31 to i1
  br i1 %tobool39, label %if.then40, label %if.end42

if.then40:                                        ; preds = %if.end38
  %32 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %string41 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %32, i32 0, i32 2
  %33 = load %struct.sVString*, %struct.sVString** %string41, align 8
  %34 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %33, i32 %34)
  br label %if.end42

if.end42:                                         ; preds = %if.then40, %if.end38
  br label %while.body

while.end:                                        ; preds = %if.then35, %if.then30
  br label %sw.epilog81

sw.default:                                       ; preds = %do.end6
  %35 = load i32, i32* %c, align 4
  %call43 = call i32 @isalnum(i32 %35) #4
  %tobool44 = icmp ne i32 %call43, 0
  br i1 %tobool44, label %if.else53, label %lor.lhs.false45

lor.lhs.false45:                                  ; preds = %sw.default
  %36 = load i32, i32* %c, align 4
  %cmp46 = icmp eq i32 %36, 43
  br i1 %cmp46, label %if.else53, label %lor.lhs.false47

lor.lhs.false47:                                  ; preds = %lor.lhs.false45
  %37 = load i32, i32* %c, align 4
  %cmp48 = icmp eq i32 %37, 45
  br i1 %cmp48, label %if.else53, label %lor.lhs.false49

lor.lhs.false49:                                  ; preds = %lor.lhs.false47
  %38 = load i32, i32* %c, align 4
  %cmp50 = icmp eq i32 %38, 46
  br i1 %cmp50, label %if.else53, label %if.then51

if.then51:                                        ; preds = %lor.lhs.false49
  %39 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type52 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %39, i32 0, i32 0
  store i32 1, i32* %type52, align 8
  br label %if.end80

if.else53:                                        ; preds = %lor.lhs.false49, %lor.lhs.false47, %lor.lhs.false45, %sw.default
  br label %do.body54

do.body54:                                        ; preds = %land.end, %if.else53
  %40 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %string55 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %40, i32 0, i32 2
  %41 = load %struct.sVString*, %struct.sVString** %string55, align 8
  %42 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %41, i32 %42)
  %call56 = call i32 @getcFromInputFile()
  store i32 %call56, i32* %c, align 4
  br label %do.cond57

do.cond57:                                        ; preds = %do.body54
  %43 = load i32, i32* %c, align 4
  %cmp58 = icmp ne i32 %43, -1
  br i1 %cmp58, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond57
  %44 = load i32, i32* %c, align 4
  %call59 = call i32 @isalnum(i32 %44) #4
  %tobool60 = icmp ne i32 %call59, 0
  br i1 %tobool60, label %lor.end67, label %lor.lhs.false61

lor.lhs.false61:                                  ; preds = %land.rhs
  %45 = load i32, i32* %c, align 4
  %cmp62 = icmp eq i32 %45, 43
  br i1 %cmp62, label %lor.end67, label %lor.lhs.false63

lor.lhs.false63:                                  ; preds = %lor.lhs.false61
  %46 = load i32, i32* %c, align 4
  %cmp64 = icmp eq i32 %46, 45
  br i1 %cmp64, label %lor.end67, label %lor.rhs65

lor.rhs65:                                        ; preds = %lor.lhs.false63
  %47 = load i32, i32* %c, align 4
  %cmp66 = icmp eq i32 %47, 46
  br label %lor.end67

lor.end67:                                        ; preds = %lor.rhs65, %lor.lhs.false63, %lor.lhs.false61, %land.rhs
  %48 = phi i1 [ true, %lor.lhs.false63 ], [ true, %lor.lhs.false61 ], [ true, %land.rhs ], [ %cmp66, %lor.rhs65 ]
  br label %land.end

land.end:                                         ; preds = %lor.end67, %do.cond57
  %49 = phi i1 [ false, %do.cond57 ], [ %48, %lor.end67 ]
  br i1 %49, label %do.body54, label %do.end68

do.end68:                                         ; preds = %land.end
  %50 = load i32, i32* %c, align 4
  call void @ungetcToInputFile(i32 %50)
  %51 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %string69 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %51, i32 0, i32 2
  %52 = load %struct.sVString*, %struct.sVString** %string69, align 8
  %buffer70 = getelementptr inbounds %struct.sVString, %struct.sVString* %52, i32 0, i32 2
  %53 = load i8*, i8** %buffer70, align 8
  %54 = load i32, i32* @Lang_json, align 4
  %call71 = call i32 @lookupKeyword(i8* %53, i32 %54)
  switch i32 %call71, label %sw.default78 [
    i32 0, label %sw.bb72
    i32 1, label %sw.bb74
    i32 2, label %sw.bb76
  ]

sw.bb72:                                          ; preds = %do.end68
  %55 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type73 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %55, i32 0, i32 0
  store i32 8, i32* %type73, align 8
  br label %sw.epilog

sw.bb74:                                          ; preds = %do.end68
  %56 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type75 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %56, i32 0, i32 0
  store i32 9, i32* %type75, align 8
  br label %sw.epilog

sw.bb76:                                          ; preds = %do.end68
  %57 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type77 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %57, i32 0, i32 0
  store i32 10, i32* %type77, align 8
  br label %sw.epilog

sw.default78:                                     ; preds = %do.end68
  %58 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type79 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %58, i32 0, i32 0
  store i32 11, i32* %type79, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default78, %sw.bb76, %sw.bb74, %sw.bb72
  br label %if.end80

if.end80:                                         ; preds = %sw.epilog, %if.then51
  br label %sw.epilog81

sw.epilog81:                                      ; preds = %if.end80, %while.end, %sw.bb20, %sw.bb18, %sw.bb16, %sw.bb14, %sw.bb12, %sw.bb10, %sw.bb
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseValue(%struct.tokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.tokenInfo*, align 8
  %name = alloca %struct.tokenInfo*, align 8
  %tagKind = alloca i32, align 4
  %name21 = alloca %struct.tokenInfo*, align 8
  %buf = alloca [32 x i8], align 1
  %nth = alloca i32, align 4
  %tagKind29 = alloca i32, align 4
  store %struct.tokenInfo* %token, %struct.tokenInfo** %token.addr, align 8
  %0 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %0, i32 0, i32 0
  %1 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %1, 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call %struct.tokenInfo* @newToken()
  store %struct.tokenInfo* %call, %struct.tokenInfo** %name, align 8
  br label %do.body

do.body:                                          ; preds = %land.end, %if.then
  %2 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @readTokenFull(%struct.tokenInfo* %2, i1 zeroext true)
  %3 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type1 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %3, i32 0, i32 0
  %4 = load i32, i32* %type1, align 8
  %cmp2 = icmp eq i32 %4, 12
  br i1 %cmp2, label %if.then3, label %if.end9

if.then3:                                         ; preds = %do.body
  store i32 5, i32* %tagKind, align 4
  %5 = load %struct.tokenInfo*, %struct.tokenInfo** %name, align 8
  %6 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @copyToken(%struct.tokenInfo* %5, %struct.tokenInfo* %6)
  %7 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @skipToOneOf3(%struct.tokenInfo* %7, i32 5, i32 6, i32 7)
  %8 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type4 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %8, i32 0, i32 0
  %9 = load i32, i32* %type4, align 8
  %cmp5 = icmp eq i32 %9, 6
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then3
  %10 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @readTokenFull(%struct.tokenInfo* %10, i1 zeroext false)
  %11 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type7 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %11, i32 0, i32 0
  %12 = load i32, i32* %type7, align 8
  %call8 = call i32 @tokenToKind(i32 %12)
  store i32 %call8, i32* %tagKind, align 4
  %13 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %14 = load %struct.tokenInfo*, %struct.tokenInfo** %name, align 8
  %15 = load i32, i32* %tagKind, align 4
  call void @pushScope(%struct.tokenInfo* %13, %struct.tokenInfo* %14, i32 %15)
  %16 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @parseValue(%struct.tokenInfo* %16)
  %17 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %18 = load %struct.tokenInfo*, %struct.tokenInfo** %name, align 8
  call void @popScope(%struct.tokenInfo* %17, %struct.tokenInfo* %18)
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then3
  %19 = load %struct.tokenInfo*, %struct.tokenInfo** %name, align 8
  %20 = load i32, i32* %tagKind, align 4
  call void @makeJsonTag(%struct.tokenInfo* %19, i32 %20)
  br label %if.end9

if.end9:                                          ; preds = %if.end, %do.body
  %21 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @skipToOneOf3(%struct.tokenInfo* %21, i32 5, i32 7, i32 0)
  br label %do.cond

do.cond:                                          ; preds = %if.end9
  %22 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type10 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %22, i32 0, i32 0
  %23 = load i32, i32* %type10, align 8
  %cmp11 = icmp ne i32 %23, 0
  br i1 %cmp11, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %24 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type12 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %24, i32 0, i32 0
  %25 = load i32, i32* %type12, align 8
  %cmp13 = icmp ne i32 %25, 5
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %26 = phi i1 [ false, %do.cond ], [ %cmp13, %land.rhs ]
  br i1 %26, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  %27 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type14 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %27, i32 0, i32 0
  %28 = load i32, i32* %type14, align 8
  %cmp15 = icmp eq i32 %28, 5
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %do.end
  %29 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @readTokenFull(%struct.tokenInfo* %29, i1 zeroext false)
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %do.end
  %30 = load %struct.tokenInfo*, %struct.tokenInfo** %name, align 8
  call void @deleteToken(%struct.tokenInfo* %30)
  br label %if.end43

if.else:                                          ; preds = %entry
  %31 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type18 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %31, i32 0, i32 0
  %32 = load i32, i32* %type18, align 8
  %cmp19 = icmp eq i32 %32, 2
  br i1 %cmp19, label %if.then20, label %if.end42

if.then20:                                        ; preds = %if.else
  %call22 = call %struct.tokenInfo* @newToken()
  store %struct.tokenInfo* %call22, %struct.tokenInfo** %name21, align 8
  store i32 0, i32* %nth, align 4
  %33 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @readTokenFull(%struct.tokenInfo* %33, i1 zeroext false)
  br label %while.cond

while.cond:                                       ; preds = %if.end37, %if.then20
  %34 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type23 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %34, i32 0, i32 0
  %35 = load i32, i32* %type23, align 8
  %cmp24 = icmp ne i32 %35, 0
  br i1 %cmp24, label %land.rhs25, label %land.end28

land.rhs25:                                       ; preds = %while.cond
  %36 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type26 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %36, i32 0, i32 0
  %37 = load i32, i32* %type26, align 8
  %cmp27 = icmp ne i32 %37, 3
  br label %land.end28

land.end28:                                       ; preds = %land.rhs25, %while.cond
  %38 = phi i1 [ false, %while.cond ], [ %cmp27, %land.rhs25 ]
  br i1 %38, label %while.body, label %while.end

while.body:                                       ; preds = %land.end28
  %39 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type30 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %39, i32 0, i32 0
  %40 = load i32, i32* %type30, align 8
  %call31 = call i32 @tokenToKind(i32 %40)
  store i32 %call31, i32* %tagKind29, align 4
  %41 = load %struct.tokenInfo*, %struct.tokenInfo** %name21, align 8
  %42 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @copyToken(%struct.tokenInfo* %41, %struct.tokenInfo* %42)
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %buf, i64 0, i64 0
  %43 = load i32, i32* %nth, align 4
  %inc = add i32 %43, 1
  store i32 %inc, i32* %nth, align 4
  %call32 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* %arraydecay, i64 32, i32 0, i64 32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i32 %43)
  %44 = load %struct.tokenInfo*, %struct.tokenInfo** %name21, align 8
  %string = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %44, i32 0, i32 2
  %45 = load %struct.sVString*, %struct.sVString** %string, align 8
  %arraydecay33 = getelementptr inbounds [32 x i8], [32 x i8]* %buf, i64 0, i64 0
  call void @vStringCopyS(%struct.sVString* %45, i8* %arraydecay33)
  %46 = load %struct.tokenInfo*, %struct.tokenInfo** %name21, align 8
  %47 = load i32, i32* %tagKind29, align 4
  call void @makeJsonTag(%struct.tokenInfo* %46, i32 %47)
  %48 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %49 = load %struct.tokenInfo*, %struct.tokenInfo** %name21, align 8
  %50 = load i32, i32* %tagKind29, align 4
  call void @pushScope(%struct.tokenInfo* %48, %struct.tokenInfo* %49, i32 %50)
  %51 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @parseValue(%struct.tokenInfo* %51)
  %52 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %53 = load %struct.tokenInfo*, %struct.tokenInfo** %name21, align 8
  call void @popScope(%struct.tokenInfo* %52, %struct.tokenInfo* %53)
  %54 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @skipToOneOf3(%struct.tokenInfo* %54, i32 3, i32 7, i32 0)
  %55 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type34 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %55, i32 0, i32 0
  %56 = load i32, i32* %type34, align 8
  %cmp35 = icmp ne i32 %56, 3
  br i1 %cmp35, label %if.then36, label %if.end37

if.then36:                                        ; preds = %while.body
  %57 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @readTokenFull(%struct.tokenInfo* %57, i1 zeroext false)
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %while.body
  br label %while.cond

while.end:                                        ; preds = %land.end28
  %58 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type38 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %58, i32 0, i32 0
  %59 = load i32, i32* %type38, align 8
  %cmp39 = icmp eq i32 %59, 3
  br i1 %cmp39, label %if.then40, label %if.end41

if.then40:                                        ; preds = %while.end
  %60 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @readTokenFull(%struct.tokenInfo* %60, i1 zeroext false)
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %while.end
  %61 = load %struct.tokenInfo*, %struct.tokenInfo** %name21, align 8
  call void @deleteToken(%struct.tokenInfo* %61)
  br label %if.end42

if.end42:                                         ; preds = %if.end41, %if.else
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %if.end17
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @deleteToken(%struct.tokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.tokenInfo*, align 8
  store %struct.tokenInfo* %token, %struct.tokenInfo** %token.addr, align 8
  %0 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %string = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %0, i32 0, i32 2
  %1 = load %struct.sVString*, %struct.sVString** %string, align 8
  call void @vStringDelete(%struct.sVString* %1)
  %2 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %scope = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %2, i32 0, i32 3
  %3 = load %struct.sVString*, %struct.sVString** %scope, align 8
  call void @vStringDelete(%struct.sVString* %3)
  %4 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %5 = bitcast %struct.tokenInfo* %4 to i8*
  call void @eFree(i8* %5)
  ret void
}

declare i8* @eMalloc(i64) #1

declare %struct.sVString* @vStringNew() #1

declare i64 @getInputLineNumber() #1

declare [2 x i64] @getInputFilePosition() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare i32 @getcFromInputFile() #1

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

; Function Attrs: nounwind readonly
declare i32 @isalnum(i32) #3

declare void @ungetcToInputFile(i32) #1

declare i32 @lookupKeyword(i8*, i32) #1

declare void @vStringResize(%struct.sVString*, i64) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @copyToken(%struct.tokenInfo* %dest, %struct.tokenInfo* %src) #0 {
entry:
  %dest.addr = alloca %struct.tokenInfo*, align 8
  %src.addr = alloca %struct.tokenInfo*, align 8
  store %struct.tokenInfo* %dest, %struct.tokenInfo** %dest.addr, align 8
  store %struct.tokenInfo* %src, %struct.tokenInfo** %src.addr, align 8
  %0 = load %struct.tokenInfo*, %struct.tokenInfo** %src.addr, align 8
  %type = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %0, i32 0, i32 0
  %1 = load i32, i32* %type, align 8
  %2 = load %struct.tokenInfo*, %struct.tokenInfo** %dest.addr, align 8
  %type1 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %2, i32 0, i32 0
  store i32 %1, i32* %type1, align 8
  %3 = load %struct.tokenInfo*, %struct.tokenInfo** %src.addr, align 8
  %scopeKind = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %3, i32 0, i32 1
  %4 = load i32, i32* %scopeKind, align 4
  %5 = load %struct.tokenInfo*, %struct.tokenInfo** %dest.addr, align 8
  %scopeKind2 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %5, i32 0, i32 1
  store i32 %4, i32* %scopeKind2, align 4
  %6 = load %struct.tokenInfo*, %struct.tokenInfo** %dest.addr, align 8
  %string = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %6, i32 0, i32 2
  %7 = load %struct.sVString*, %struct.sVString** %string, align 8
  %8 = load %struct.tokenInfo*, %struct.tokenInfo** %src.addr, align 8
  %string3 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %8, i32 0, i32 2
  %9 = load %struct.sVString*, %struct.sVString** %string3, align 8
  call void @vStringCopy(%struct.sVString* %7, %struct.sVString* %9)
  %10 = load %struct.tokenInfo*, %struct.tokenInfo** %dest.addr, align 8
  %scope = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %10, i32 0, i32 3
  %11 = load %struct.sVString*, %struct.sVString** %scope, align 8
  %12 = load %struct.tokenInfo*, %struct.tokenInfo** %src.addr, align 8
  %scope4 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %12, i32 0, i32 3
  %13 = load %struct.sVString*, %struct.sVString** %scope4, align 8
  call void @vStringCopy(%struct.sVString* %11, %struct.sVString* %13)
  %14 = load %struct.tokenInfo*, %struct.tokenInfo** %src.addr, align 8
  %lineNumber = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %14, i32 0, i32 4
  %15 = load i64, i64* %lineNumber, align 8
  %16 = load %struct.tokenInfo*, %struct.tokenInfo** %dest.addr, align 8
  %lineNumber5 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %16, i32 0, i32 4
  store i64 %15, i64* %lineNumber5, align 8
  %17 = load %struct.tokenInfo*, %struct.tokenInfo** %dest.addr, align 8
  %filePosition = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %17, i32 0, i32 5
  %18 = load %struct.tokenInfo*, %struct.tokenInfo** %src.addr, align 8
  %filePosition6 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %18, i32 0, i32 5
  %19 = bitcast %struct._MIOPos* %filePosition to i8*
  %20 = bitcast %struct._MIOPos* %filePosition6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 %20, i64 16, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @skipToOneOf3(%struct.tokenInfo* %token, i32 %type1, i32 %type2, i32 %type3) #0 {
entry:
  %token.addr = alloca %struct.tokenInfo*, align 8
  %type1.addr = alloca i32, align 4
  %type2.addr = alloca i32, align 4
  %type3.addr = alloca i32, align 4
  store %struct.tokenInfo* %token, %struct.tokenInfo** %token.addr, align 8
  store i32 %type1, i32* %type1.addr, align 4
  store i32 %type2, i32* %type2.addr, align 4
  store i32 %type3, i32* %type3.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end16, %entry
  %0 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %0, i32 0, i32 0
  %1 = load i32, i32* %type, align 8
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %2 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type4 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %2, i32 0, i32 0
  %3 = load i32, i32* %type4, align 8
  %4 = load i32, i32* %type1.addr, align 4
  %cmp5 = icmp ne i32 %3, %4
  br i1 %cmp5, label %land.lhs.true6, label %land.end

land.lhs.true6:                                   ; preds = %land.lhs.true
  %5 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type7 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %5, i32 0, i32 0
  %6 = load i32, i32* %type7, align 8
  %7 = load i32, i32* %type2.addr, align 4
  %cmp8 = icmp ne i32 %6, %7
  br i1 %cmp8, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true6
  %8 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type9 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %8, i32 0, i32 0
  %9 = load i32, i32* %type9, align 8
  %10 = load i32, i32* %type3.addr, align 4
  %cmp10 = icmp ne i32 %9, %10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true6, %land.lhs.true, %while.cond
  %11 = phi i1 [ false, %land.lhs.true6 ], [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp10, %land.rhs ]
  br i1 %11, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %12 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @readTokenFull(%struct.tokenInfo* %12, i1 zeroext false)
  %13 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type11 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %13, i32 0, i32 0
  %14 = load i32, i32* %type11, align 8
  %cmp12 = icmp eq i32 %14, 4
  br i1 %cmp12, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %15 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @skipToOneOf3(%struct.tokenInfo* %15, i32 5, i32 0, i32 0)
  %16 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @readTokenFull(%struct.tokenInfo* %16, i1 zeroext false)
  br label %if.end16

if.else:                                          ; preds = %while.body
  %17 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type13 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %17, i32 0, i32 0
  %18 = load i32, i32* %type13, align 8
  %cmp14 = icmp eq i32 %18, 2
  br i1 %cmp14, label %if.then15, label %if.end

if.then15:                                        ; preds = %if.else
  %19 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @skipToOneOf3(%struct.tokenInfo* %19, i32 3, i32 0, i32 0)
  %20 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @readTokenFull(%struct.tokenInfo* %20, i1 zeroext false)
  br label %if.end

if.end:                                           ; preds = %if.then15, %if.else
  br label %if.end16

if.end16:                                         ; preds = %if.end, %if.then
  br label %while.cond

while.end:                                        ; preds = %land.end
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @tokenToKind(i32 %type) #0 {
entry:
  %retval = alloca i32, align 4
  %type.addr = alloca i32, align 4
  store i32 %type, i32* %type.addr, align 4
  %0 = load i32, i32* %type.addr, align 4
  switch i32 %0, label %sw.default [
    i32 4, label %sw.bb
    i32 2, label %sw.bb1
    i32 12, label %sw.bb2
    i32 8, label %sw.bb3
    i32 9, label %sw.bb3
    i32 11, label %sw.bb4
  ]

sw.bb:                                            ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

sw.bb1:                                           ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

sw.bb2:                                           ; preds = %entry
  store i32 3, i32* %retval, align 4
  br label %return

sw.bb3:                                           ; preds = %entry, %entry
  store i32 4, i32* %retval, align 4
  br label %return

sw.bb4:                                           ; preds = %entry
  store i32 2, i32* %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  store i32 5, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load i32, i32* %retval, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @pushScope(%struct.tokenInfo* %token, %struct.tokenInfo* %parent, i32 %parentKind) #0 {
entry:
  %token.addr = alloca %struct.tokenInfo*, align 8
  %parent.addr = alloca %struct.tokenInfo*, align 8
  %parentKind.addr = alloca i32, align 4
  store %struct.tokenInfo* %token, %struct.tokenInfo** %token.addr, align 8
  store %struct.tokenInfo* %parent, %struct.tokenInfo** %parent.addr, align 8
  store i32 %parentKind, i32* %parentKind.addr, align 4
  %0 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %scope = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %0, i32 0, i32 3
  %1 = load %struct.sVString*, %struct.sVString** %scope, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %1, i32 0, i32 0
  %2 = load i64, i64* %length, align 8
  %cmp = icmp ugt i64 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %scope1 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %3, i32 0, i32 3
  %4 = load %struct.sVString*, %struct.sVString** %scope1, align 8
  call void @vStringPut(%struct.sVString* %4, i32 46)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %scope2 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %5, i32 0, i32 3
  %6 = load %struct.sVString*, %struct.sVString** %scope2, align 8
  %7 = load %struct.tokenInfo*, %struct.tokenInfo** %parent.addr, align 8
  %string = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %7, i32 0, i32 2
  %8 = load %struct.sVString*, %struct.sVString** %string, align 8
  call void @vStringCat(%struct.sVString* %6, %struct.sVString* %8)
  %9 = load i32, i32* %parentKind.addr, align 4
  %10 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %scopeKind = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %10, i32 0, i32 1
  store i32 %9, i32* %scopeKind, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @popScope(%struct.tokenInfo* %token, %struct.tokenInfo* %parent) #0 {
entry:
  %token.addr = alloca %struct.tokenInfo*, align 8
  %parent.addr = alloca %struct.tokenInfo*, align 8
  store %struct.tokenInfo* %token, %struct.tokenInfo** %token.addr, align 8
  store %struct.tokenInfo* %parent, %struct.tokenInfo** %parent.addr, align 8
  %0 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %scope = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %0, i32 0, i32 3
  %1 = load %struct.sVString*, %struct.sVString** %scope, align 8
  %2 = load %struct.tokenInfo*, %struct.tokenInfo** %parent.addr, align 8
  %scope1 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %2, i32 0, i32 3
  %3 = load %struct.sVString*, %struct.sVString** %scope1, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %3, i32 0, i32 0
  %4 = load i64, i64* %length, align 8
  call void @vStringTruncate(%struct.sVString* %1, i64 %4)
  %5 = load %struct.tokenInfo*, %struct.tokenInfo** %parent.addr, align 8
  %scopeKind = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %5, i32 0, i32 1
  %6 = load i32, i32* %scopeKind, align 4
  %7 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %scopeKind2 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %7, i32 0, i32 1
  store i32 %6, i32* %scopeKind2, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @makeJsonTag(%struct.tokenInfo* %token, i32 %kind) #0 {
entry:
  %token.addr = alloca %struct.tokenInfo*, align 8
  %kind.addr = alloca i32, align 4
  %e = alloca %struct.sTagEntryInfo, align 8
  store %struct.tokenInfo* %token, %struct.tokenInfo** %token.addr, align 8
  store i32 %kind, i32* %kind.addr, align 4
  %0 = load i32, i32* %kind.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [6 x %struct.sKindDefinition], [6 x %struct.sKindDefinition]* @JsonKinds, i64 0, i64 %idxprom
  %enabled = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %arrayidx, i32 0, i32 0
  %1 = load i8, i8* %enabled, align 8
  %tobool = trunc i8 %1 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %string = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %2, i32 0, i32 2
  %3 = load %struct.sVString*, %struct.sVString** %string, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %3, i32 0, i32 2
  %4 = load i8*, i8** %buffer, align 8
  %5 = load i32, i32* %kind.addr, align 4
  call void @initTagEntry(%struct.sTagEntryInfo* %e, i8* %4, i32 %5)
  %6 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %lineNumber = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %6, i32 0, i32 4
  %7 = load i64, i64* %lineNumber, align 8
  %lineNumber1 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %e, i32 0, i32 1
  store i64 %7, i64* %lineNumber1, align 8
  %filePosition = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %e, i32 0, i32 4
  %8 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %filePosition2 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %8, i32 0, i32 5
  %9 = bitcast %struct._MIOPos* %filePosition to i8*
  %10 = bitcast %struct._MIOPos* %filePosition2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 %10, i64 16, i1 false)
  %11 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %scope = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %11, i32 0, i32 3
  %12 = load %struct.sVString*, %struct.sVString** %scope, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %12, i32 0, i32 0
  %13 = load i64, i64* %length, align 8
  %cmp = icmp ugt i64 %13, 0
  br i1 %cmp, label %if.then3, label %if.end7

if.then3:                                         ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then3
  br label %do.end

do.end:                                           ; preds = %do.body
  %14 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %scopeKind = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %14, i32 0, i32 1
  %15 = load i32, i32* %scopeKind, align 4
  %extensionFields = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %e, i32 0, i32 11
  %scopeKindIndex = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields, i32 0, i32 5
  store i32 %15, i32* %scopeKindIndex, align 4
  %16 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %scope4 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %16, i32 0, i32 3
  %17 = load %struct.sVString*, %struct.sVString** %scope4, align 8
  %buffer5 = getelementptr inbounds %struct.sVString, %struct.sVString* %17, i32 0, i32 2
  %18 = load i8*, i8** %buffer5, align 8
  %extensionFields6 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %e, i32 0, i32 11
  %scopeName = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields6, i32 0, i32 6
  store i8* %18, i8** %scopeName, align 8
  br label %if.end7

if.end7:                                          ; preds = %do.end, %if.end
  %call = call i32 @makeTagEntry(%struct.sTagEntryInfo* %e)
  br label %return

return:                                           ; preds = %if.end7, %if.then
  ret void
}

declare i32 @__snprintf_chk(i8*, i64, i32, i64, i8*, ...) #1

declare void @vStringCopyS(%struct.sVString*, i8*) #1

declare void @vStringCopy(%struct.sVString*, %struct.sVString*) #1

declare void @vStringCat(%struct.sVString*, %struct.sVString*) #1

declare void @vStringTruncate(%struct.sVString*, i64) #1

declare void @initTagEntry(%struct.sTagEntryInfo*, i8*, i32) #1

declare i32 @makeTagEntry(%struct.sTagEntryInfo*) #1

declare void @vStringDelete(%struct.sVString*) #1

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
