; ModuleID = 'tcl.c'
source_filename = "tcl.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-ios11.0.0"

%struct.tokenTypePair = type { i16, i16 }
%struct.tokenInfoClass = type { i32, i16, i16, i16, i16, i64, %struct.tokenTypePair*, i32, void (%struct.sTokenInfo*, i8*)*, void (%struct.sTokenInfo*, i8*)*, void (%struct.sTokenInfo*)*, void (%struct.sTokenInfo*)*, void (%struct.sTokenInfo*, %struct.sTokenInfo*, i8*)*, %struct.sObjPool*, %struct.sPtrArray* }
%struct.sTokenInfo = type { i16, i16, %struct.sVString*, %struct.tokenInfoClass*, i64, %struct._MIOPos }
%struct.sVString = type { i64, i64, i8* }
%struct._MIOPos = type { i32, %union.anon }
%union.anon = type { i64 }
%struct.sObjPool = type opaque
%struct.sPtrArray = type opaque
%struct.sKindDefinition = type { i8, i8, i8*, i8*, i8, i32, %struct.sRoleDesc*, %struct.sScopeSeparator*, i32, i32, i32, %struct.sKindDefinition*, %struct.sKindDefinition* }
%struct.sRoleDesc = type { i8, i8*, i8* }
%struct.sScopeSeparator = type { i32, i8* }
%struct.keywordTable = type { i8*, i32 }
%struct.sTclParserState = type { i32 }
%struct.sParserDefinition = type { i8*, %struct.sKindDefinition*, i32, i8**, i8**, i8**, void (i32)*, void (i32, i1)*, void ()*, i32 (i32)*, i8* (%struct._MIO*, i32*, i32)**, i32, i8, i8, i8, i8, %struct.tagRegexTable*, i32, %struct.keywordTable*, i32, %struct.sTagXpathTableTable*, i32, i8, %struct.sFieldDefinition*, i32, %struct.sXtagDefinition*, i32, %struct.sParserDependency*, i32, %struct.sParameterHandlerTable*, i32, %struct.sXpathFileSpec*, i32, i32, i8 }
%struct._MIO = type opaque
%struct.tagRegexTable = type { i8*, i8*, i8*, i8*, i8*, i8 }
%struct.sTagXpathTableTable = type { %struct.sTagXpathTable*, i32 }
%struct.sTagXpathTable = type { i8*, i32, %union.anon.0, i8* }
%union.anon.0 = type { %struct.sTagXpathMakeTagSpec }
%struct.sTagXpathMakeTagSpec = type { i32, i32, void (i8*, %struct.sTagXpathMakeTagSpec*, %struct.sTagEntryInfo*, i8*)* }
%struct.sTagEntryInfo = type { i8, i64, i8*, i32, %struct._MIOPos, i32, i8*, i8*, i32, [2 x i8], i8*, %struct.anon, i32, [5 x %struct.sTagField], %struct.sPtrArray*, i32, i8*, i64 }
%struct.anon = type { i8*, i8*, i8*, i8*, i32, i32, i8*, i32, i8*, [2 x i8*], i32, i64 }
%struct.sTagField = type { i32, i8*, i8 }
%struct.sFieldDefinition = type { i8, i8*, i8*, i8, [5 x i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)*], i1 (%struct.sTagEntryInfo*)*, i32, i32 }
%struct.sXtagDefinition = type { i8, i8, i8*, i8*, i1 (%struct.sXtagDefinition*)*, i1 (%struct.sXtagDefinition*)*, i32 }
%struct.sParserDependency = type { i32, i8*, i8* }
%struct.sParameterHandlerTable = type { i8*, i8*, void (i32, i8*, i8*)* }
%struct.sXpathFileSpec = type { i8*, i8*, i8*, i8*, i8*, i8* }
%struct.tokenExtra = type { i32, %struct.sTclParserState* }
%struct.sSubparser = type { %struct.sSlaveParser*, %struct.sSubparser*, i8, i8, i32, void (%struct.sSubparser*)*, void (%struct.sSubparser*)*, void (%struct.sSubparser*, i8*)*, void (%struct.sSubparser*, %struct.sTagEntryInfo*, i32)* }
%struct.sSlaveParser = type { i32, i32, i8*, %struct.sSlaveParser* }
%struct.sTclSubparser = type { %struct.sSubparser, void (%struct.sTclSubparser*, i8*, i8*)*, void (%struct.sTclSubparser*, i8*, i8*)*, i32 (%struct.sTclSubparser*, i8*, i32, i8*)* }

@typePairs = global [2 x %struct.tokenTypePair] [%struct.tokenTypePair { i16 123, i16 125 }, %struct.tokenTypePair { i16 91, i16 93 }], align 2
@tclTokenInfoClass = internal global %struct.tokenInfoClass { i32 4, i16 257, i16 -1, i16 258, i16 256, i64 16, %struct.tokenTypePair* getelementptr inbounds ([2 x %struct.tokenTypePair], [2 x %struct.tokenTypePair]* @typePairs, i32 0, i32 0), i32 2, void (%struct.sTokenInfo*, i8*)* @initToken, void (%struct.sTokenInfo*, i8*)* @readToken, void (%struct.sTokenInfo*)* @clearToken, void (%struct.sTokenInfo*)* null, void (%struct.sTokenInfo*, %struct.sTokenInfo*, i8*)* @copyToken, %struct.sObjPool* null, %struct.sPtrArray* null }, align 8
@.str = private unnamed_addr constant [4 x i8] c"Tcl\00", align 1
@TclKinds = internal global [2 x %struct.sKindDefinition] [%struct.sKindDefinition { i8 1, i8 112, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* getelementptr inbounds ([1 x %struct.sScopeSeparator], [1 x %struct.sScopeSeparator]* @TclGenericSeparators, i32 0, i32 0), i32 1, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 110, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* getelementptr inbounds ([1 x %struct.sScopeSeparator], [1 x %struct.sScopeSeparator]* @TclGenericSeparators, i32 0, i32 0), i32 1, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }], align 8
@extensions = internal constant [5 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i8* null], align 8
@aliases = internal constant [3 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i8* null], align 8
@TclKeywordTable = internal constant [4 x %struct.keywordTable] [%struct.keywordTable { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i32 0 }, %struct.keywordTable { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i32 1 }, %struct.keywordTable { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i32 2 }, %struct.keywordTable { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), i32 3 }], align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"{}[]\00", align 1
@resolveKeyword.lang = internal global i32 -1, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"procedure\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"procedures\00", align 1
@TclGenericSeparators = internal global [1 x %struct.sScopeSeparator] [%struct.sScopeSeparator { i32 -3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0) }], align 8
@.str.4 = private unnamed_addr constant [10 x i8] c"namespace\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"namespaces\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"::\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"tcl\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"tk\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"wish\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"exp\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"expect\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"tclsh\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"proc\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"eval\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"package\00", align 1
@__const.findTclTags.pstate = private unnamed_addr constant %struct.sTclParserState { i32 257 }, align 4
@.str.16 = private unnamed_addr constant [7 x i8] c"import\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"require\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sTokenInfo* @newTclToken(i8* %pstate) #0 {
entry:
  %pstate.addr = alloca i8*, align 8
  store i8* %pstate, i8** %pstate.addr, align 8
  %0 = load i8*, i8** %pstate.addr, align 8
  %call = call i8* @newTokenFull(%struct.tokenInfoClass* @tclTokenInfoClass, i8* %0)
  %1 = bitcast i8* %call to %struct.sTokenInfo*
  ret %struct.sTokenInfo* %1
}

declare i8* @newTokenFull(%struct.tokenInfoClass*, i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @skipToEndOfTclCmdline(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @skipToEndOfCmdline(%struct.sTokenInfo* %0)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @skipToEndOfCmdline(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call = call zeroext i1 @tokenIsEOL(%struct.sTokenInfo* %0)
  %lnot = xor i1 %call, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %1, i32 0, i32 0
  %2 = load i16, i16* %type, align 8
  %conv = sext i16 %2 to i32
  %cmp = icmp eq i32 %conv, 123
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type2 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %3, i32 0, i32 0
  %4 = load i16, i16* %type2, align 8
  %conv3 = sext i16 %4 to i32
  %cmp4 = icmp eq i32 %conv3, 91
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %while.body
  %5 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call6 = call zeroext i1 @tokenSkipOverPair(%struct.sTokenInfo* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %6 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @tokenRead(%struct.sTokenInfo* %6)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sParserDefinition* @TclParser() #0 {
entry:
  %def = alloca %struct.sParserDefinition*, align 8
  %call = call %struct.sParserDefinition* @parserNew(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store %struct.sParserDefinition* %call, %struct.sParserDefinition** %def, align 8
  %0 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %0, i32 0, i32 1
  store %struct.sKindDefinition* getelementptr inbounds ([2 x %struct.sKindDefinition], [2 x %struct.sKindDefinition]* @TclKinds, i64 0, i64 0), %struct.sKindDefinition** %kindTable, align 8
  %1 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %1, i32 0, i32 2
  store i32 2, i32* %kindCount, align 8
  %2 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %extensions = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %2, i32 0, i32 3
  store i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @extensions, i64 0, i64 0), i8*** %extensions, align 8
  %3 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %aliases = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %3, i32 0, i32 5
  store i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @aliases, i64 0, i64 0), i8*** %aliases, align 8
  %4 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %keywordTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %4, i32 0, i32 18
  store %struct.keywordTable* getelementptr inbounds ([4 x %struct.keywordTable], [4 x %struct.keywordTable]* @TclKeywordTable, i64 0, i64 0), %struct.keywordTable** %keywordTable, align 8
  %5 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %keywordCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %5, i32 0, i32 19
  store i32 4, i32* %keywordCount, align 8
  %6 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %parser = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %6, i32 0, i32 8
  store void ()* @findTclTags, void ()** %parser, align 8
  %7 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %useCork = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %7, i32 0, i32 12
  store i8 1, i8* %useCork, align 4
  %8 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %requestAutomaticFQTag = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %8, i32 0, i32 15
  store i8 1, i8* %requestAutomaticFQTag, align 1
  %9 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  ret %struct.sParserDefinition* %9
}

declare %struct.sParserDefinition* @parserNew(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @findTclTags() #0 {
entry:
  %pstate = alloca %struct.sTclParserState, align 4
  %token = alloca %struct.sTokenInfo*, align 8
  %0 = bitcast %struct.sTclParserState* %pstate to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %0, i8* align 4 bitcast (%struct.sTclParserState* @__const.findTclTags.pstate to i8*), i64 4, i1 false)
  %1 = bitcast %struct.sTclParserState* %pstate to i8*
  %call = call %struct.sTokenInfo* @newTclToken(i8* %1)
  store %struct.sTokenInfo* %call, %struct.sTokenInfo** %token, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %2 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  call void @tokenRead(%struct.sTokenInfo* %2)
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %3, i32 0, i32 0
  %4 = load i16, i16* %type, align 8
  %conv = sext i16 %4 to i32
  %5 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %klass = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %5, i32 0, i32 3
  %6 = load %struct.tokenInfoClass*, %struct.tokenInfoClass** %klass, align 8
  %typeForKeyword = getelementptr inbounds %struct.tokenInfoClass, %struct.tokenInfoClass* %6, i32 0, i32 3
  %7 = load i16, i16* %typeForKeyword, align 8
  %conv1 = sext i16 %7 to i32
  %cmp = icmp eq i32 %conv, %conv1
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %do.body
  %8 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %8, i32 0, i32 1
  %9 = load i16, i16* %keyword, align 2
  %conv3 = sext i16 %9 to i32
  %cmp4 = icmp eq i32 %conv3, 1
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %10 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  call void @parseNamespace(%struct.sTokenInfo* %10, i32 0)
  br label %if.end43

if.else:                                          ; preds = %land.lhs.true, %do.body
  %11 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %type6 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %11, i32 0, i32 0
  %12 = load i16, i16* %type6, align 8
  %conv7 = sext i16 %12 to i32
  %13 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %klass8 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %13, i32 0, i32 3
  %14 = load %struct.tokenInfoClass*, %struct.tokenInfoClass** %klass8, align 8
  %typeForKeyword9 = getelementptr inbounds %struct.tokenInfoClass, %struct.tokenInfoClass* %14, i32 0, i32 3
  %15 = load i16, i16* %typeForKeyword9, align 8
  %conv10 = sext i16 %15 to i32
  %cmp11 = icmp eq i32 %conv7, %conv10
  br i1 %cmp11, label %land.lhs.true13, label %if.else19

land.lhs.true13:                                  ; preds = %if.else
  %16 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %keyword14 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %16, i32 0, i32 1
  %17 = load i16, i16* %keyword14, align 2
  %conv15 = sext i16 %17 to i32
  %cmp16 = icmp eq i32 %conv15, 0
  br i1 %cmp16, label %if.then18, label %if.else19

if.then18:                                        ; preds = %land.lhs.true13
  %18 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  call void @parseProc(%struct.sTokenInfo* %18, i32 0)
  br label %if.end42

if.else19:                                        ; preds = %land.lhs.true13, %if.else
  %19 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %type20 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %19, i32 0, i32 0
  %20 = load i16, i16* %type20, align 8
  %conv21 = sext i16 %20 to i32
  %21 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %klass22 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %21, i32 0, i32 3
  %22 = load %struct.tokenInfoClass*, %struct.tokenInfoClass** %klass22, align 8
  %typeForKeyword23 = getelementptr inbounds %struct.tokenInfoClass, %struct.tokenInfoClass* %22, i32 0, i32 3
  %23 = load i16, i16* %typeForKeyword23, align 8
  %conv24 = sext i16 %23 to i32
  %cmp25 = icmp eq i32 %conv21, %conv24
  br i1 %cmp25, label %land.lhs.true27, label %if.else33

land.lhs.true27:                                  ; preds = %if.else19
  %24 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %keyword28 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %24, i32 0, i32 1
  %25 = load i16, i16* %keyword28, align 2
  %conv29 = sext i16 %25 to i32
  %cmp30 = icmp eq i32 %conv29, 3
  br i1 %cmp30, label %if.then32, label %if.else33

if.then32:                                        ; preds = %land.lhs.true27
  %26 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  call void @parsePackage(%struct.sTokenInfo* %26)
  br label %if.end41

if.else33:                                        ; preds = %land.lhs.true27, %if.else19
  %27 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %type34 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %27, i32 0, i32 0
  %28 = load i16, i16* %type34, align 8
  %conv35 = sext i16 %28 to i32
  %cmp36 = icmp eq i32 %conv35, 259
  br i1 %cmp36, label %if.then38, label %if.else40

if.then38:                                        ; preds = %if.else33
  %29 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %call39 = call i32 @notifyCommand(%struct.sTokenInfo* %29, i32 0)
  %30 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  call void @skipToEndOfCmdline(%struct.sTokenInfo* %30)
  br label %if.end

if.else40:                                        ; preds = %if.else33
  %31 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  call void @skipToEndOfCmdline(%struct.sTokenInfo* %31)
  br label %if.end

if.end:                                           ; preds = %if.else40, %if.then38
  br label %if.end41

if.end41:                                         ; preds = %if.end, %if.then32
  br label %if.end42

if.end42:                                         ; preds = %if.end41, %if.then18
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %if.then
  br label %do.cond

do.cond:                                          ; preds = %if.end43
  %32 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %type44 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %32, i32 0, i32 0
  %33 = load i16, i16* %type44, align 8
  %conv45 = sext i16 %33 to i32
  %34 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %klass46 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %34, i32 0, i32 3
  %35 = load %struct.tokenInfoClass*, %struct.tokenInfoClass** %klass46, align 8
  %typeForEOF = getelementptr inbounds %struct.tokenInfoClass, %struct.tokenInfoClass* %35, i32 0, i32 4
  %36 = load i16, i16* %typeForEOF, align 2
  %conv47 = sext i16 %36 to i32
  %cmp48 = icmp eq i32 %conv45, %conv47
  %lnot = xor i1 %cmp48, true
  br i1 %lnot, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %37 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  call void @tokenDestroy(%struct.sTokenInfo* %37)
  call void @flashTokenBacklog(%struct.tokenInfoClass* @tclTokenInfoClass)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @initToken(%struct.sTokenInfo* %token, i8* %data) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.sTclParserState*
  %2 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %3 = bitcast %struct.sTokenInfo* %2 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 48
  %4 = bitcast i8* %add.ptr to %struct.tokenExtra*
  %pstate = getelementptr inbounds %struct.tokenExtra, %struct.tokenExtra* %4, i32 0, i32 1
  store %struct.sTclParserState* %1, %struct.sTclParserState** %pstate, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @readToken(%struct.sTokenInfo* %token, i8* %data) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %data.addr = alloca i8*, align 8
  %pstate = alloca %struct.sTclParserState*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %1 = bitcast %struct.sTokenInfo* %0 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 48
  %2 = bitcast i8* %add.ptr to %struct.tokenExtra*
  %pstate1 = getelementptr inbounds %struct.tokenExtra, %struct.tokenExtra* %2, i32 0, i32 1
  %3 = load %struct.sTclParserState*, %struct.sTclParserState** %pstate1, align 8
  store %struct.sTclParserState* %3, %struct.sTclParserState** %pstate, align 8
  %4 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %5 = load %struct.sTclParserState*, %struct.sTclParserState** %pstate, align 8
  call void @readToken0(%struct.sTokenInfo* %4, %struct.sTclParserState* %5)
  %6 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %6, i32 0, i32 0
  %7 = load i16, i16* %type, align 8
  %conv = sext i16 %7 to i32
  %8 = load %struct.sTclParserState*, %struct.sTclParserState** %pstate, align 8
  %lastTokenType = getelementptr inbounds %struct.sTclParserState, %struct.sTclParserState* %8, i32 0, i32 0
  store i32 %conv, i32* %lastTokenType, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @clearToken(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %1 = bitcast %struct.sTokenInfo* %0 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 48
  %2 = bitcast i8* %add.ptr to %struct.tokenExtra*
  %scopeIndex = getelementptr inbounds %struct.tokenExtra, %struct.tokenExtra* %2, i32 0, i32 0
  store i32 0, i32* %scopeIndex, align 8
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %4 = bitcast %struct.sTokenInfo* %3 to i8*
  %add.ptr1 = getelementptr inbounds i8, i8* %4, i64 48
  %5 = bitcast i8* %add.ptr1 to %struct.tokenExtra*
  %pstate = getelementptr inbounds %struct.tokenExtra, %struct.tokenExtra* %5, i32 0, i32 1
  store %struct.sTclParserState* null, %struct.sTclParserState** %pstate, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @copyToken(%struct.sTokenInfo* %dest, %struct.sTokenInfo* %src, i8* %data) #0 {
entry:
  %dest.addr = alloca %struct.sTokenInfo*, align 8
  %src.addr = alloca %struct.sTokenInfo*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.sTokenInfo* %dest, %struct.sTokenInfo** %dest.addr, align 8
  store %struct.sTokenInfo* %src, %struct.sTokenInfo** %src.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %src.addr, align 8
  %1 = bitcast %struct.sTokenInfo* %0 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 48
  %2 = bitcast i8* %add.ptr to %struct.tokenExtra*
  %scopeIndex = getelementptr inbounds %struct.tokenExtra, %struct.tokenExtra* %2, i32 0, i32 0
  %3 = load i32, i32* %scopeIndex, align 8
  %4 = load %struct.sTokenInfo*, %struct.sTokenInfo** %dest.addr, align 8
  %5 = bitcast %struct.sTokenInfo* %4 to i8*
  %add.ptr1 = getelementptr inbounds i8, i8* %5, i64 48
  %6 = bitcast i8* %add.ptr1 to %struct.tokenExtra*
  %scopeIndex2 = getelementptr inbounds %struct.tokenExtra, %struct.tokenExtra* %6, i32 0, i32 0
  store i32 %3, i32* %scopeIndex2, align 8
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %src.addr, align 8
  %8 = bitcast %struct.sTokenInfo* %7 to i8*
  %add.ptr3 = getelementptr inbounds i8, i8* %8, i64 48
  %9 = bitcast i8* %add.ptr3 to %struct.tokenExtra*
  %pstate = getelementptr inbounds %struct.tokenExtra, %struct.tokenExtra* %9, i32 0, i32 1
  %10 = load %struct.sTclParserState*, %struct.sTclParserState** %pstate, align 8
  %11 = load %struct.sTokenInfo*, %struct.sTokenInfo** %dest.addr, align 8
  %12 = bitcast %struct.sTokenInfo* %11 to i8*
  %add.ptr4 = getelementptr inbounds i8, i8* %12, i64 48
  %13 = bitcast i8* %add.ptr4 to %struct.tokenExtra*
  %pstate5 = getelementptr inbounds %struct.tokenExtra, %struct.tokenExtra* %13, i32 0, i32 1
  store %struct.sTclParserState* %10, %struct.sTclParserState** %pstate5, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @readToken0(%struct.sTokenInfo* %token, %struct.sTclParserState* %pstate) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %pstate.addr = alloca %struct.sTclParserState*, align 8
  %c = alloca i32, align 4
  %escaped = alloca i8, align 1
  %bol = alloca i8, align 1
  %vStringClear_s = alloca %struct.sVString*, align 8
  %c0 = alloca i32, align 4
  %tmp = alloca %struct._MIOPos, align 8
  %c051 = alloca i32, align 4
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  store %struct.sTclParserState* %pstate, %struct.sTclParserState** %pstate.addr, align 8
  store i32 -1, i32* %c, align 4
  %0 = load %struct.sTclParserState*, %struct.sTclParserState** %pstate.addr, align 8
  %lastTokenType = getelementptr inbounds %struct.sTclParserState, %struct.sTclParserState* %0, i32 0, i32 0
  %1 = load i32, i32* %lastTokenType, align 4
  %cmp = icmp eq i32 %1, 261
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.sTclParserState*, %struct.sTclParserState** %pstate.addr, align 8
  %lastTokenType1 = getelementptr inbounds %struct.sTclParserState, %struct.sTclParserState* %2, i32 0, i32 0
  %3 = load i32, i32* %lastTokenType1, align 4
  %cmp2 = icmp eq i32 %3, 59
  br i1 %cmp2, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %4 = load %struct.sTclParserState*, %struct.sTclParserState** %pstate.addr, align 8
  %lastTokenType3 = getelementptr inbounds %struct.sTclParserState, %struct.sTclParserState* %4, i32 0, i32 0
  %5 = load i32, i32* %lastTokenType3, align 4
  %cmp4 = icmp eq i32 %5, 257
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %entry
  %6 = phi i1 [ true, %lor.lhs.false ], [ true, %entry ], [ %cmp4, %lor.rhs ]
  %frombool = zext i1 %6 to i8
  store i8 %frombool, i8* %bol, align 1
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %7, i32 0, i32 0
  store i16 257, i16* %type, align 8
  %8 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %8, i32 0, i32 1
  store i16 -1, i16* %keyword, align 2
  br label %do.body

do.body:                                          ; preds = %lor.end
  %9 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
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
  br label %getNextChar

getNextChar:                                      ; preds = %if.end32, %sw.bb, %do.end
  store i8 0, i8* %escaped, align 1
  br label %do.body5

do.body5:                                         ; preds = %lor.end11, %getNextChar
  %call = call i32 @getcFromInputFile()
  store i32 %call, i32* %c, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body5
  %14 = load i32, i32* %c, align 4
  %cmp6 = icmp eq i32 %14, 32
  br i1 %cmp6, label %lor.end11, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %do.cond
  %15 = load i32, i32* %c, align 4
  %cmp8 = icmp eq i32 %15, 9
  br i1 %cmp8, label %lor.end11, label %lor.rhs9

lor.rhs9:                                         ; preds = %lor.lhs.false7
  %16 = load i32, i32* %c, align 4
  %cmp10 = icmp eq i32 %16, 12
  br label %lor.end11

lor.end11:                                        ; preds = %lor.rhs9, %lor.lhs.false7, %do.cond
  %17 = phi i1 [ true, %lor.lhs.false7 ], [ true, %do.cond ], [ %cmp10, %lor.rhs9 ]
  br i1 %17, label %do.body5, label %do.end12

do.end12:                                         ; preds = %lor.end11
  %18 = load i32, i32* %c, align 4
  %cmp13 = icmp eq i32 %18, 92
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %do.end12
  store i8 0, i8* %bol, align 1
  %call14 = call i32 @getcFromInputFile()
  store i32 %call14, i32* %c0, align 4
  %19 = load i32, i32* %c0, align 4
  switch i32 %19, label %sw.default [
    i32 10, label %sw.bb
    i32 13, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.then, %if.then
  br label %getNextChar

sw.default:                                       ; preds = %if.then
  store i8 1, i8* %escaped, align 1
  %20 = load i32, i32* %c0, align 4
  store i32 %20, i32* %c, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %do.end12
  %call15 = call i64 @getInputLineNumber()
  %21 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %lineNumber = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %21, i32 0, i32 4
  store i64 %call15, i64* %lineNumber, align 8
  %22 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %filePosition = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %22, i32 0, i32 5
  %call16 = call [2 x i64] @getInputFilePosition()
  %23 = bitcast %struct._MIOPos* %tmp to [2 x i64]*
  store [2 x i64] %call16, [2 x i64]* %23, align 8
  %24 = bitcast %struct._MIOPos* %filePosition to i8*
  %25 = bitcast %struct._MIOPos* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %24, i8* align 8 %25, i64 16, i1 false)
  %26 = load i32, i32* %c, align 4
  switch i32 %26, label %sw.default72 [
    i32 -1, label %sw.bb17
    i32 10, label %sw.bb19
    i32 13, label %sw.bb19
    i32 35, label %sw.bb21
    i32 34, label %sw.bb34
    i32 59, label %sw.bb41
    i32 123, label %sw.bb41
    i32 125, label %sw.bb41
    i32 91, label %sw.bb41
    i32 93, label %sw.bb41
    i32 36, label %sw.bb46
  ]

sw.bb17:                                          ; preds = %if.end
  %27 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type18 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %27, i32 0, i32 0
  store i16 256, i16* %type18, align 8
  br label %sw.epilog88

sw.bb19:                                          ; preds = %if.end, %if.end
  %28 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type20 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %28, i32 0, i32 0
  store i16 261, i16* %type20, align 8
  br label %sw.epilog88

sw.bb21:                                          ; preds = %if.end
  %29 = load i8, i8* %escaped, align 1
  %tobool = trunc i8 %29 to i1
  br i1 %tobool, label %if.end33, label %if.then22

if.then22:                                        ; preds = %sw.bb21
  %30 = load i8, i8* %bol, align 1
  %tobool23 = trunc i8 %30 to i1
  br i1 %tobool23, label %if.then24, label %if.end32

if.then24:                                        ; preds = %if.then22
  br label %do.body25

do.body25:                                        ; preds = %land.end, %if.then24
  %call26 = call i32 @getcFromInputFile()
  store i32 %call26, i32* %c, align 4
  br label %do.cond27

do.cond27:                                        ; preds = %do.body25
  %31 = load i32, i32* %c, align 4
  %cmp28 = icmp ne i32 %31, -1
  br i1 %cmp28, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %do.cond27
  %32 = load i32, i32* %c, align 4
  %cmp29 = icmp ne i32 %32, 13
  br i1 %cmp29, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %33 = load i32, i32* %c, align 4
  %cmp30 = icmp ne i32 %33, 10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %do.cond27
  %34 = phi i1 [ false, %land.lhs.true ], [ false, %do.cond27 ], [ %cmp30, %land.rhs ]
  br i1 %34, label %do.body25, label %do.end31

do.end31:                                         ; preds = %land.end
  br label %if.end32

if.end32:                                         ; preds = %do.end31, %if.then22
  br label %getNextChar

if.end33:                                         ; preds = %sw.bb21
  br label %sw.bb34

sw.bb34:                                          ; preds = %if.end, %if.end33
  %35 = load i8, i8* %escaped, align 1
  %tobool35 = trunc i8 %35 to i1
  br i1 %tobool35, label %if.end40, label %if.then36

if.then36:                                        ; preds = %sw.bb34
  %36 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type37 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %36, i32 0, i32 0
  store i16 262, i16* %type37, align 8
  %37 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string38 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %37, i32 0, i32 2
  %38 = load %struct.sVString*, %struct.sVString** %string38, align 8
  %39 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %38, i32 %39)
  %40 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string39 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %40, i32 0, i32 2
  %41 = load %struct.sVString*, %struct.sVString** %string39, align 8
  call void @readString(%struct.sVString* %41)
  br label %sw.epilog88

if.end40:                                         ; preds = %sw.bb34
  br label %sw.bb41

sw.bb41:                                          ; preds = %if.end, %if.end, %if.end, %if.end, %if.end, %if.end40
  %42 = load i8, i8* %escaped, align 1
  %tobool42 = trunc i8 %42 to i1
  br i1 %tobool42, label %if.end45, label %if.then43

if.then43:                                        ; preds = %sw.bb41
  %43 = load i32, i32* %c, align 4
  %conv = trunc i32 %43 to i16
  %44 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type44 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %44, i32 0, i32 0
  store i16 %conv, i16* %type44, align 8
  br label %sw.epilog88

if.end45:                                         ; preds = %sw.bb41
  br label %sw.bb46

sw.bb46:                                          ; preds = %if.end, %if.end45
  %45 = load i8, i8* %escaped, align 1
  %tobool47 = trunc i8 %45 to i1
  br i1 %tobool47, label %if.end71, label %if.then48

if.then48:                                        ; preds = %sw.bb46
  %46 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string49 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %46, i32 0, i32 2
  %47 = load %struct.sVString*, %struct.sVString** %string49, align 8
  %48 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %47, i32 %48)
  %49 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type50 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %49, i32 0, i32 0
  store i16 260, i16* %type50, align 8
  %call52 = call i32 @getcFromInputFile()
  store i32 %call52, i32* %c051, align 4
  %50 = load i32, i32* %c051, align 4
  %cmp53 = icmp eq i32 %50, -1
  br i1 %cmp53, label %if.then55, label %if.end56

if.then55:                                        ; preds = %if.then48
  br label %sw.epilog88

if.end56:                                         ; preds = %if.then48
  %51 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string57 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %51, i32 0, i32 2
  %52 = load %struct.sVString*, %struct.sVString** %string57, align 8
  %53 = load i32, i32* %c051, align 4
  call void @vStringPut(%struct.sVString* %52, i32 %53)
  %54 = load i32, i32* %c051, align 4
  %cmp58 = icmp eq i32 %54, 123
  br i1 %cmp58, label %if.then60, label %if.else

if.then60:                                        ; preds = %if.end56
  br label %while.cond

while.cond:                                       ; preds = %if.end68, %if.then60
  %call61 = call i32 @getcFromInputFile()
  store i32 %call61, i32* %c051, align 4
  %cmp62 = icmp ne i32 %call61, -1
  br i1 %cmp62, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %55 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string64 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %55, i32 0, i32 2
  %56 = load %struct.sVString*, %struct.sVString** %string64, align 8
  %57 = load i32, i32* %c051, align 4
  call void @vStringPut(%struct.sVString* %56, i32 %57)
  %58 = load i32, i32* %c051, align 4
  %cmp65 = icmp eq i32 %58, 125
  br i1 %cmp65, label %if.then67, label %if.end68

if.then67:                                        ; preds = %while.body
  br label %while.end

if.end68:                                         ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %if.then67, %while.cond
  br label %if.end70

if.else:                                          ; preds = %if.end56
  %59 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string69 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %59, i32 0, i32 2
  %60 = load %struct.sVString*, %struct.sVString** %string69, align 8
  call void @readIdentifier(%struct.sVString* %60)
  br label %if.end70

if.end70:                                         ; preds = %if.else, %while.end
  br label %sw.epilog88

if.end71:                                         ; preds = %sw.bb46
  br label %sw.default72

sw.default72:                                     ; preds = %if.end, %if.end71
  %61 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string73 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %61, i32 0, i32 2
  %62 = load %struct.sVString*, %struct.sVString** %string73, align 8
  %63 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %62, i32 %63)
  %64 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string74 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %64, i32 0, i32 2
  %65 = load %struct.sVString*, %struct.sVString** %string74, align 8
  call void @readIdentifier(%struct.sVString* %65)
  %66 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string75 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %66, i32 0, i32 2
  %67 = load %struct.sVString*, %struct.sVString** %string75, align 8
  %call76 = call i32 @resolveKeyword(%struct.sVString* %67)
  %conv77 = trunc i32 %call76 to i16
  %68 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword78 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %68, i32 0, i32 1
  store i16 %conv77, i16* %keyword78, align 2
  %69 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword79 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %69, i32 0, i32 1
  %70 = load i16, i16* %keyword79, align 2
  %conv80 = sext i16 %70 to i32
  %cmp81 = icmp eq i32 %conv80, -1
  br i1 %cmp81, label %if.then83, label %if.else85

if.then83:                                        ; preds = %sw.default72
  %71 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type84 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %71, i32 0, i32 0
  store i16 259, i16* %type84, align 8
  br label %if.end87

if.else85:                                        ; preds = %sw.default72
  %72 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type86 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %72, i32 0, i32 0
  store i16 258, i16* %type86, align 8
  br label %if.end87

if.end87:                                         ; preds = %if.else85, %if.then83
  br label %sw.epilog88

sw.epilog88:                                      ; preds = %if.end87, %if.end70, %if.then55, %if.then43, %if.then36, %sw.bb19, %sw.bb17
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

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @readString(%struct.sVString* %string) #0 {
entry:
  %string.addr = alloca %struct.sVString*, align 8
  %c = alloca i32, align 4
  %escaped = alloca i8, align 1
  store %struct.sVString* %string, %struct.sVString** %string.addr, align 8
  store i8 0, i8* %escaped, align 1
  br label %while.body

while.body:                                       ; preds = %entry, %sw.epilog
  %call = call i32 @getcFromInputFile()
  store i32 %call, i32* %c, align 4
  %0 = load i32, i32* %c, align 4
  switch i32 %0, label %sw.default [
    i32 -1, label %sw.bb
    i32 92, label %sw.bb1
    i32 34, label %sw.bb2
  ]

sw.bb:                                            ; preds = %while.body
  br label %return

sw.bb1:                                           ; preds = %while.body
  %1 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %2 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %1, i32 %2)
  store i8 1, i8* %escaped, align 1
  br label %sw.epilog

sw.bb2:                                           ; preds = %while.body
  %3 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %4 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %3, i32 %4)
  %5 = load i8, i8* %escaped, align 1
  %tobool = trunc i8 %5 to i1
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb2
  store i8 0, i8* %escaped, align 1
  br label %if.end

if.else:                                          ; preds = %sw.bb2
  br label %return

if.end:                                           ; preds = %if.then
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  store i8 0, i8* %escaped, align 1
  %6 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %7 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %6, i32 %7)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end, %sw.bb1
  br label %while.body

return:                                           ; preds = %if.else, %sw.bb
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @readIdentifier(%struct.sVString* %string) #0 {
entry:
  %string.addr = alloca %struct.sVString*, align 8
  %c = alloca i32, align 4
  store %struct.sVString* %string, %struct.sVString** %string.addr, align 8
  br label %while.body

while.body:                                       ; preds = %entry, %if.end
  %call = call i32 @getcFromInputFile()
  store i32 %call, i32* %c, align 4
  %0 = load i32, i32* %c, align 4
  %call1 = call i32 @isgraph(i32 %0) #4
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %while.body
  %1 = load i32, i32* %c, align 4
  %call2 = call i8* @strchr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %1)
  %tobool3 = icmp ne i8* %call2, null
  br i1 %tobool3, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %2 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %3 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %2, i32 %3)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %while.body
  %4 = load i32, i32* %c, align 4
  call void @ungetcToInputFile(i32 %4)
  br label %while.end

if.end:                                           ; preds = %if.then
  br label %while.body

while.end:                                        ; preds = %if.else
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @resolveKeyword(%struct.sVString* %string) #0 {
entry:
  %string.addr = alloca %struct.sVString*, align 8
  %s = alloca i8*, align 8
  store %struct.sVString* %string, %struct.sVString** %string.addr, align 8
  %0 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %0, i32 0, i32 2
  %1 = load i8*, i8** %buffer, align 8
  store i8* %1, i8** %s, align 8
  %2 = load i32, i32* @resolveKeyword.lang, align 4
  %cmp = icmp eq i32 %2, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 @getInputLanguage()
  store i32 %call, i32* @resolveKeyword.lang, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %s, align 8
  %4 = load i32, i32* @resolveKeyword.lang, align 4
  %call1 = call i32 @lookupKeyword(i8* %3, i32 %4)
  ret i32 %call1
}

declare void @vStringResize(%struct.sVString*, i64) #1

; Function Attrs: nounwind readonly
declare i32 @isgraph(i32) #3

declare i8* @strchr(i8*, i32) #1

declare void @ungetcToInputFile(i32) #1

declare i32 @getInputLanguage() #1

declare i32 @lookupKeyword(i8*, i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @tokenIsEOL(%struct.sTokenInfo* %token) #0 {
entry:
  %retval = alloca i1, align 1
  %token.addr = alloca %struct.sTokenInfo*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 0
  %1 = load i16, i16* %type, align 8
  %conv = sext i16 %1 to i32
  %cmp = icmp eq i32 %conv, 59
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type2 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %2, i32 0, i32 0
  %3 = load i16, i16* %type2, align 8
  %conv3 = sext i16 %3 to i32
  %cmp4 = icmp eq i32 %conv3, 261
  br i1 %cmp4, label %if.then, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %4 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type7 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %4, i32 0, i32 0
  %5 = load i16, i16* %type7, align 8
  %conv8 = sext i16 %5 to i32
  %6 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %klass = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %6, i32 0, i32 3
  %7 = load %struct.tokenInfoClass*, %struct.tokenInfoClass** %klass, align 8
  %typeForEOF = getelementptr inbounds %struct.tokenInfoClass, %struct.tokenInfoClass* %7, i32 0, i32 4
  %8 = load i16, i16* %typeForEOF, align 2
  %conv9 = sext i16 %8 to i32
  %cmp10 = icmp eq i32 %conv8, %conv9
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false6, %lor.lhs.false, %entry
  store i1 true, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %lor.lhs.false6
  store i1 false, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end, %if.then
  %9 = load i1, i1* %retval, align 1
  ret i1 %9
}

declare zeroext i1 @tokenSkipOverPair(%struct.sTokenInfo*) #1

declare void @tokenRead(%struct.sTokenInfo*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseNamespace(%struct.sTokenInfo* %token, i32 %parent) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %parent.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %e = alloca %struct.sTagEntryInfo*, align 8
  %e99 = alloca %struct.sTagEntryInfo*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  store i32 %parent, i32* %parent.addr, align 4
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @tokenRead(%struct.sTokenInfo* %0)
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %1, i32 0, i32 0
  %2 = load i16, i16* %type, align 8
  %conv = sext i16 %2 to i32
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %klass = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %3, i32 0, i32 3
  %4 = load %struct.tokenInfoClass*, %struct.tokenInfoClass** %klass, align 8
  %typeForEOF = getelementptr inbounds %struct.tokenInfoClass, %struct.tokenInfoClass* %4, i32 0, i32 4
  %5 = load i16, i16* %typeForEOF, align 2
  %conv1 = sext i16 %5 to i32
  %cmp = icmp eq i32 %conv, %conv1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %do.end

if.end:                                           ; preds = %entry
  %6 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type3 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %6, i32 0, i32 0
  %7 = load i16, i16* %type3, align 8
  %conv4 = sext i16 %7 to i32
  %cmp5 = icmp eq i32 %conv4, 259
  br i1 %cmp5, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %8 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %8, i32 0, i32 2
  %9 = load %struct.sVString*, %struct.sVString** %string, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %9, i32 0, i32 2
  %10 = load i8*, i8** %buffer, align 8
  %call = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0))
  %cmp7 = icmp eq i32 %call, 0
  br i1 %cmp7, label %if.then9, label %if.else

if.then9:                                         ; preds = %land.lhs.true
  br label %while.body

while.body:                                       ; preds = %if.then9, %if.then21, %if.end22
  %11 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @tokenRead(%struct.sTokenInfo* %11)
  %12 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type10 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %12, i32 0, i32 0
  %13 = load i16, i16* %type10, align 8
  %conv11 = sext i16 %13 to i32
  %cmp12 = icmp eq i32 %conv11, 259
  br i1 %cmp12, label %if.end15, label %if.then14

if.then14:                                        ; preds = %while.body
  br label %while.end

if.end15:                                         ; preds = %while.body
  %14 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string16 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %14, i32 0, i32 2
  %15 = load %struct.sVString*, %struct.sVString** %string16, align 8
  %buffer17 = getelementptr inbounds %struct.sVString, %struct.sVString* %15, i32 0, i32 2
  %16 = load i8*, i8** %buffer17, align 8
  %arrayidx = getelementptr inbounds i8, i8* %16, i64 0
  %17 = load i8, i8* %arrayidx, align 1
  %conv18 = sext i8 %17 to i32
  %cmp19 = icmp eq i32 %conv18, 45
  br i1 %cmp19, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end15
  br label %while.body

if.end22:                                         ; preds = %if.end15
  %18 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @notifyNamespaceImport(%struct.sTokenInfo* %18)
  br label %while.body

while.end:                                        ; preds = %if.then14
  %19 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @skipToEndOfCmdline(%struct.sTokenInfo* %19)
  br label %do.end

if.else:                                          ; preds = %land.lhs.true, %if.end
  %20 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type23 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %20, i32 0, i32 0
  %21 = load i16, i16* %type23, align 8
  %conv24 = sext i16 %21 to i32
  %22 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %klass25 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %22, i32 0, i32 3
  %23 = load %struct.tokenInfoClass*, %struct.tokenInfoClass** %klass25, align 8
  %typeForKeyword = getelementptr inbounds %struct.tokenInfoClass, %struct.tokenInfoClass* %23, i32 0, i32 3
  %24 = load i16, i16* %typeForKeyword, align 8
  %conv26 = sext i16 %24 to i32
  %cmp27 = icmp eq i32 %conv24, %conv26
  br i1 %cmp27, label %land.lhs.true29, label %if.then33

land.lhs.true29:                                  ; preds = %if.else
  %25 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %25, i32 0, i32 1
  %26 = load i16, i16* %keyword, align 2
  %conv30 = sext i16 %26 to i32
  %cmp31 = icmp eq i32 %conv30, 2
  br i1 %cmp31, label %if.end34, label %if.then33

if.then33:                                        ; preds = %land.lhs.true29, %if.else
  br label %do.end

if.end34:                                         ; preds = %land.lhs.true29
  br label %if.end35

if.end35:                                         ; preds = %if.end34
  %27 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @tokenRead(%struct.sTokenInfo* %27)
  %28 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type36 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %28, i32 0, i32 0
  %29 = load i16, i16* %type36, align 8
  %conv37 = sext i16 %29 to i32
  %cmp38 = icmp eq i32 %conv37, 259
  br i1 %cmp38, label %if.end41, label %if.then40

if.then40:                                        ; preds = %if.end35
  %30 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @skipToEndOfCmdline(%struct.sTokenInfo* %30)
  br label %do.end

if.end41:                                         ; preds = %if.end35
  %31 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string42 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %31, i32 0, i32 2
  %32 = load %struct.sVString*, %struct.sVString** %string42, align 8
  %call43 = call i32 @makeSimpleTag(%struct.sVString* %32, i32 1)
  store i32 %call43, i32* %index, align 4
  %33 = load i32, i32* %parent.addr, align 4
  %cmp44 = icmp ne i32 %33, 0
  br i1 %cmp44, label %land.lhs.true46, label %if.end52

land.lhs.true46:                                  ; preds = %if.end41
  %34 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string47 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %34, i32 0, i32 2
  %35 = load %struct.sVString*, %struct.sVString** %string47, align 8
  %buffer48 = getelementptr inbounds %struct.sVString, %struct.sVString* %35, i32 0, i32 2
  %36 = load i8*, i8** %buffer48, align 8
  %call49 = call i32 @strncmp(i8* %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i64 2)
  %tobool = icmp ne i32 %call49, 0
  br i1 %tobool, label %if.then50, label %if.end52

if.then50:                                        ; preds = %land.lhs.true46
  %37 = load i32, i32* %index, align 4
  %call51 = call %struct.sTagEntryInfo* @getEntryInCorkQueue(i32 %37)
  store %struct.sTagEntryInfo* %call51, %struct.sTagEntryInfo** %e, align 8
  %38 = load i32, i32* %parent.addr, align 4
  %39 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %e, align 8
  %extensionFields = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %39, i32 0, i32 11
  %scopeIndex = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields, i32 0, i32 7
  store i32 %38, i32* %scopeIndex, align 8
  br label %if.end52

if.end52:                                         ; preds = %if.then50, %land.lhs.true46, %if.end41
  %40 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @tokenRead(%struct.sTokenInfo* %40)
  %41 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type53 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %41, i32 0, i32 0
  %42 = load i16, i16* %type53, align 8
  %conv54 = sext i16 %42 to i32
  %cmp55 = icmp ne i32 %conv54, 123
  br i1 %cmp55, label %if.then57, label %if.end58

if.then57:                                        ; preds = %if.end52
  %43 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @skipToEndOfCmdline(%struct.sTokenInfo* %43)
  br label %do.end

if.end58:                                         ; preds = %if.end52
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end58
  %44 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @tokenRead(%struct.sTokenInfo* %44)
  %45 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type59 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %45, i32 0, i32 0
  %46 = load i16, i16* %type59, align 8
  %conv60 = sext i16 %46 to i32
  %47 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %klass61 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %47, i32 0, i32 3
  %48 = load %struct.tokenInfoClass*, %struct.tokenInfoClass** %klass61, align 8
  %typeForKeyword62 = getelementptr inbounds %struct.tokenInfoClass, %struct.tokenInfoClass* %48, i32 0, i32 3
  %49 = load i16, i16* %typeForKeyword62, align 8
  %conv63 = sext i16 %49 to i32
  %cmp64 = icmp eq i32 %conv60, %conv63
  br i1 %cmp64, label %land.lhs.true66, label %if.else72

land.lhs.true66:                                  ; preds = %do.body
  %50 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword67 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %50, i32 0, i32 1
  %51 = load i16, i16* %keyword67, align 2
  %conv68 = sext i16 %51 to i32
  %cmp69 = icmp eq i32 %conv68, 1
  br i1 %cmp69, label %if.then71, label %if.else72

if.then71:                                        ; preds = %land.lhs.true66
  %52 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %53 = load i32, i32* %index, align 4
  call void @parseNamespace(%struct.sTokenInfo* %52, i32 %53)
  br label %if.end106

if.else72:                                        ; preds = %land.lhs.true66, %do.body
  %54 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type73 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %54, i32 0, i32 0
  %55 = load i16, i16* %type73, align 8
  %conv74 = sext i16 %55 to i32
  %56 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %klass75 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %56, i32 0, i32 3
  %57 = load %struct.tokenInfoClass*, %struct.tokenInfoClass** %klass75, align 8
  %typeForKeyword76 = getelementptr inbounds %struct.tokenInfoClass, %struct.tokenInfoClass* %57, i32 0, i32 3
  %58 = load i16, i16* %typeForKeyword76, align 8
  %conv77 = sext i16 %58 to i32
  %cmp78 = icmp eq i32 %conv74, %conv77
  br i1 %cmp78, label %land.lhs.true80, label %if.else86

land.lhs.true80:                                  ; preds = %if.else72
  %59 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword81 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %59, i32 0, i32 1
  %60 = load i16, i16* %keyword81, align 2
  %conv82 = sext i16 %60 to i32
  %cmp83 = icmp eq i32 %conv82, 0
  br i1 %cmp83, label %if.then85, label %if.else86

if.then85:                                        ; preds = %land.lhs.true80
  %61 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %62 = load i32, i32* %index, align 4
  call void @parseProc(%struct.sTokenInfo* %61, i32 %62)
  br label %if.end105

if.else86:                                        ; preds = %land.lhs.true80, %if.else72
  %63 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type87 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %63, i32 0, i32 0
  %64 = load i16, i16* %type87, align 8
  %conv88 = sext i16 %64 to i32
  %cmp89 = icmp eq i32 %conv88, 259
  br i1 %cmp89, label %if.then91, label %if.else93

if.then91:                                        ; preds = %if.else86
  %65 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %66 = load i32, i32* %index, align 4
  %call92 = call i32 @notifyCommand(%struct.sTokenInfo* %65, i32 %66)
  %67 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @skipToEndOfCmdline(%struct.sTokenInfo* %67)
  br label %if.end104

if.else93:                                        ; preds = %if.else86
  %68 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type94 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %68, i32 0, i32 0
  %69 = load i16, i16* %type94, align 8
  %conv95 = sext i16 %69 to i32
  %cmp96 = icmp eq i32 %conv95, 125
  br i1 %cmp96, label %if.then98, label %if.else102

if.then98:                                        ; preds = %if.else93
  %70 = load i32, i32* %index, align 4
  %call100 = call %struct.sTagEntryInfo* @getEntryInCorkQueue(i32 %70)
  store %struct.sTagEntryInfo* %call100, %struct.sTagEntryInfo** %e99, align 8
  %71 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %lineNumber = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %71, i32 0, i32 4
  %72 = load i64, i64* %lineNumber, align 8
  %73 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %e99, align 8
  %extensionFields101 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %73, i32 0, i32 11
  %endLine = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields101, i32 0, i32 11
  store i64 %72, i64* %endLine, align 8
  br label %do.end

if.else102:                                       ; preds = %if.else93
  %74 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @skipToEndOfCmdline(%struct.sTokenInfo* %74)
  br label %if.end103

if.end103:                                        ; preds = %if.else102
  br label %if.end104

if.end104:                                        ; preds = %if.end103, %if.then91
  br label %if.end105

if.end105:                                        ; preds = %if.end104, %if.then85
  br label %if.end106

if.end106:                                        ; preds = %if.end105, %if.then71
  br label %do.cond

do.cond:                                          ; preds = %if.end106
  %75 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type107 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %75, i32 0, i32 0
  %76 = load i16, i16* %type107, align 8
  %conv108 = sext i16 %76 to i32
  %77 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %klass109 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %77, i32 0, i32 3
  %78 = load %struct.tokenInfoClass*, %struct.tokenInfoClass** %klass109, align 8
  %typeForEOF110 = getelementptr inbounds %struct.tokenInfoClass, %struct.tokenInfoClass* %78, i32 0, i32 4
  %79 = load i16, i16* %typeForEOF110, align 2
  %conv111 = sext i16 %79 to i32
  %cmp112 = icmp eq i32 %conv108, %conv111
  %lnot = xor i1 %cmp112, true
  br i1 %lnot, label %do.body, label %do.end

do.end:                                           ; preds = %if.then, %while.end, %if.then33, %if.then40, %if.then57, %do.cond, %if.then98
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseProc(%struct.sTokenInfo* %token, i32 %parent) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %parent.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %index_fq = alloca i32, align 4
  %last = alloca i8*, align 8
  %e = alloca %struct.sTagEntryInfo, align 8
  %len = alloca i32, align 4
  %ns = alloca %struct.sVString*, align 8
  %e_parent = alloca %struct.sTagEntryInfo*, align 8
  %e_fq = alloca %struct.sTagEntryInfo*, align 8
  %ep = alloca %struct.sTagEntryInfo*, align 8
  %e50 = alloca %struct.sTagEntryInfo*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  store i32 %parent, i32* %parent.addr, align 4
  store i32 0, i32* %index, align 4
  store i32 0, i32* %index_fq, align 4
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @tokenRead(%struct.sTokenInfo* %0)
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %1, i32 0, i32 0
  %2 = load i16, i16* %type, align 8
  %conv = sext i16 %2 to i32
  %cmp = icmp eq i32 %conv, 259
  br i1 %cmp, label %if.then, label %if.end43

if.then:                                          ; preds = %entry
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call = call i8* @getLastComponentInIdentifier(%struct.sTokenInfo* %3)
  store i8* %call, i8** %last, align 8
  %4 = load i8*, i8** %last, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %if.then2, label %if.else37

if.then2:                                         ; preds = %if.then
  %5 = load i8*, i8** %last, align 8
  call void @initTagEntry(%struct.sTagEntryInfo* %e, i8* %5, i32 0)
  %6 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %lineNumber = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %6, i32 0, i32 4
  %7 = load i64, i64* %lineNumber, align 8
  %lineNumber3 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %e, i32 0, i32 1
  store i64 %7, i64* %lineNumber3, align 8
  %filePosition = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %e, i32 0, i32 4
  %8 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %filePosition4 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %8, i32 0, i32 5
  %9 = bitcast %struct._MIOPos* %filePosition to i8*
  %10 = bitcast %struct._MIOPos* %filePosition4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 %10, i64 16, i1 false)
  %11 = load i8*, i8** %last, align 8
  %12 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %12, i32 0, i32 2
  %13 = load %struct.sVString*, %struct.sVString** %string, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %13, i32 0, i32 2
  %14 = load i8*, i8** %buffer, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %11 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %14 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv5 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv5, i32* %len, align 4
  %call6 = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call6, %struct.sVString** %ns, align 8
  %15 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call7 = call zeroext i1 @isAbsoluteIdentifier(%struct.sTokenInfo* %15)
  br i1 %call7, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.then2
  %16 = load i32, i32* %len, align 4
  %cmp9 = icmp sgt i32 %16, 2
  br i1 %cmp9, label %if.then11, label %if.end

if.then11:                                        ; preds = %if.then8
  %17 = load %struct.sVString*, %struct.sVString** %ns, align 8
  %18 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string12 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %18, i32 0, i32 2
  %19 = load %struct.sVString*, %struct.sVString** %string12, align 8
  %20 = load i32, i32* %len, align 4
  %sub = sub nsw i32 %20, 2
  %conv13 = sext i32 %sub to i64
  call void @vStringNCopy(%struct.sVString* %17, %struct.sVString* %19, i64 %conv13)
  br label %if.end

if.end:                                           ; preds = %if.then11, %if.then8
  br label %if.end24

if.else:                                          ; preds = %if.then2
  %21 = load i32, i32* %parent.addr, align 4
  %cmp14 = icmp eq i32 %21, 0
  br i1 %cmp14, label %if.then16, label %if.else18

if.then16:                                        ; preds = %if.else
  %22 = load %struct.sVString*, %struct.sVString** %ns, align 8
  %23 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string17 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %23, i32 0, i32 2
  %24 = load %struct.sVString*, %struct.sVString** %string17, align 8
  call void @vStringCopy(%struct.sVString* %22, %struct.sVString* %24)
  br label %if.end23

if.else18:                                        ; preds = %if.else
  %25 = load i32, i32* %parent.addr, align 4
  %call19 = call %struct.sTagEntryInfo* @getEntryInCorkQueue(i32 %25)
  store %struct.sTagEntryInfo* %call19, %struct.sTagEntryInfo** %e_parent, align 8
  %26 = load %struct.sVString*, %struct.sVString** %ns, align 8
  %27 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %e_parent, align 8
  %name = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %27, i32 0, i32 7
  %28 = load i8*, i8** %name, align 8
  call void @vStringCatS(%struct.sVString* %26, i8* %28)
  %29 = load %struct.sVString*, %struct.sVString** %ns, align 8
  call void @vStringCatS(%struct.sVString* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %30 = load %struct.sVString*, %struct.sVString** %ns, align 8
  %31 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string20 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %31, i32 0, i32 2
  %32 = load %struct.sVString*, %struct.sVString** %string20, align 8
  %33 = load i32, i32* %len, align 4
  %sub21 = sub nsw i32 %33, 2
  %conv22 = sext i32 %sub21 to i64
  call void @vStringNCopy(%struct.sVString* %30, %struct.sVString* %32, i64 %conv22)
  br label %if.end23

if.end23:                                         ; preds = %if.else18, %if.then16
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.end
  %34 = load %struct.sVString*, %struct.sVString** %ns, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %34, i32 0, i32 0
  %35 = load i64, i64* %length, align 8
  %cmp25 = icmp ugt i64 %35, 0
  br i1 %cmp25, label %if.then27, label %if.end30

if.then27:                                        ; preds = %if.end24
  %extensionFields = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %e, i32 0, i32 11
  %scopeKindIndex = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields, i32 0, i32 5
  store i32 1, i32* %scopeKindIndex, align 4
  %36 = load %struct.sVString*, %struct.sVString** %ns, align 8
  %buffer28 = getelementptr inbounds %struct.sVString, %struct.sVString* %36, i32 0, i32 2
  %37 = load i8*, i8** %buffer28, align 8
  %extensionFields29 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %e, i32 0, i32 11
  %scopeName = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields29, i32 0, i32 6
  store i8* %37, i8** %scopeName, align 8
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %if.end24
  %call31 = call i32 @makeTagEntry(%struct.sTagEntryInfo* %e)
  store i32 %call31, i32* %index, align 4
  %call32 = call zeroext i1 @isXtagEnabled(i32 3)
  br i1 %call32, label %if.then33, label %if.end36

if.then33:                                        ; preds = %if.end30
  %38 = load %struct.sVString*, %struct.sVString** %ns, align 8
  call void @vStringCatS(%struct.sVString* %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %39 = load %struct.sVString*, %struct.sVString** %ns, align 8
  %40 = load i8*, i8** %last, align 8
  call void @vStringCatS(%struct.sVString* %39, i8* %40)
  %41 = load %struct.sVString*, %struct.sVString** %ns, align 8
  %call34 = call i32 @makeSimpleTag(%struct.sVString* %41, i32 0)
  store i32 %call34, i32* %index_fq, align 4
  %42 = load i32, i32* %index_fq, align 4
  %call35 = call %struct.sTagEntryInfo* @getEntryInCorkQueue(i32 %42)
  store %struct.sTagEntryInfo* %call35, %struct.sTagEntryInfo** %e_fq, align 8
  %43 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %e_fq, align 8
  call void @markTagExtraBit(%struct.sTagEntryInfo* %43, i32 3)
  br label %if.end36

if.end36:                                         ; preds = %if.then33, %if.end30
  %44 = load %struct.sVString*, %struct.sVString** %ns, align 8
  call void @vStringDelete(%struct.sVString* %44)
  br label %if.end42

if.else37:                                        ; preds = %if.then
  %45 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string38 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %45, i32 0, i32 2
  %46 = load %struct.sVString*, %struct.sVString** %string38, align 8
  %call39 = call i32 @makeSimpleTag(%struct.sVString* %46, i32 0)
  store i32 %call39, i32* %index, align 4
  %47 = load i32, i32* %index, align 4
  %call40 = call %struct.sTagEntryInfo* @getEntryInCorkQueue(i32 %47)
  store %struct.sTagEntryInfo* %call40, %struct.sTagEntryInfo** %ep, align 8
  %48 = load i32, i32* %parent.addr, align 4
  %49 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %ep, align 8
  %extensionFields41 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %49, i32 0, i32 11
  %scopeIndex = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields41, i32 0, i32 7
  store i32 %48, i32* %scopeIndex, align 8
  br label %if.end42

if.end42:                                         ; preds = %if.else37, %if.end36
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %entry
  %50 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call44 = call zeroext i1 @tokenIsEOL(%struct.sTokenInfo* %50)
  br i1 %call44, label %if.end46, label %if.then45

if.then45:                                        ; preds = %if.end43
  %51 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @tokenRead(%struct.sTokenInfo* %51)
  %52 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @skipToEndOfCmdline(%struct.sTokenInfo* %52)
  br label %if.end46

if.end46:                                         ; preds = %if.then45, %if.end43
  %53 = load i32, i32* %index, align 4
  %cmp47 = icmp ne i32 %53, 0
  br i1 %cmp47, label %if.then49, label %if.end62

if.then49:                                        ; preds = %if.end46
  %54 = load i32, i32* %index, align 4
  %call51 = call %struct.sTagEntryInfo* @getEntryInCorkQueue(i32 %54)
  store %struct.sTagEntryInfo* %call51, %struct.sTagEntryInfo** %e50, align 8
  %55 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %lineNumber52 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %55, i32 0, i32 4
  %56 = load i64, i64* %lineNumber52, align 8
  %57 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %e50, align 8
  %extensionFields53 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %57, i32 0, i32 11
  %endLine = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields53, i32 0, i32 11
  store i64 %56, i64* %endLine, align 8
  %58 = load i32, i32* %index_fq, align 4
  %cmp54 = icmp ne i32 %58, 0
  br i1 %cmp54, label %if.then56, label %if.end61

if.then56:                                        ; preds = %if.then49
  %59 = load i32, i32* %index_fq, align 4
  %call57 = call %struct.sTagEntryInfo* @getEntryInCorkQueue(i32 %59)
  store %struct.sTagEntryInfo* %call57, %struct.sTagEntryInfo** %e50, align 8
  %60 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %lineNumber58 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %60, i32 0, i32 4
  %61 = load i64, i64* %lineNumber58, align 8
  %62 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %e50, align 8
  %extensionFields59 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %62, i32 0, i32 11
  %endLine60 = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields59, i32 0, i32 11
  store i64 %61, i64* %endLine60, align 8
  br label %if.end61

if.end61:                                         ; preds = %if.then56, %if.then49
  br label %if.end62

if.end62:                                         ; preds = %if.end61, %if.end46
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parsePackage(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @tokenRead(%struct.sTokenInfo* %0)
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %1, i32 0, i32 0
  %2 = load i16, i16* %type, align 8
  %conv = sext i16 %2 to i32
  %cmp = icmp eq i32 %conv, 259
  br i1 %cmp, label %land.lhs.true, label %if.end31

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %3, i32 0, i32 2
  %4 = load %struct.sVString*, %struct.sVString** %string, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %4, i32 0, i32 2
  %5 = load i8*, i8** %buffer, align 8
  %call = call i32 @strcmp(i8* %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0))
  %cmp2 = icmp eq i32 %call, 0
  br i1 %cmp2, label %if.then, label %if.end31

if.then:                                          ; preds = %land.lhs.true
  br label %next

next:                                             ; preds = %if.then18, %if.then
  %6 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @tokenRead(%struct.sTokenInfo* %6)
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type4 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %7, i32 0, i32 0
  %8 = load i16, i16* %type4, align 8
  %conv5 = sext i16 %8 to i32
  %cmp6 = icmp eq i32 %conv5, 259
  br i1 %cmp6, label %land.lhs.true8, label %if.end30

land.lhs.true8:                                   ; preds = %next
  %9 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string9 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %9, i32 0, i32 2
  %10 = load %struct.sVString*, %struct.sVString** %string9, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %10, i32 0, i32 0
  %11 = load i64, i64* %length, align 8
  %cmp10 = icmp ugt i64 %11, 0
  br i1 %cmp10, label %if.then12, label %if.end30

if.then12:                                        ; preds = %land.lhs.true8
  %12 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string13 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %12, i32 0, i32 2
  %13 = load %struct.sVString*, %struct.sVString** %string13, align 8
  %buffer14 = getelementptr inbounds %struct.sVString, %struct.sVString* %13, i32 0, i32 2
  %14 = load i8*, i8** %buffer14, align 8
  %arrayidx = getelementptr inbounds i8, i8* %14, i64 0
  %15 = load i8, i8* %arrayidx, align 1
  %conv15 = sext i8 %15 to i32
  %cmp16 = icmp eq i32 %conv15, 45
  br i1 %cmp16, label %if.then18, label %if.end

if.then18:                                        ; preds = %if.then12
  br label %next

if.end:                                           ; preds = %if.then12
  %16 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type19 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %16, i32 0, i32 0
  %17 = load i16, i16* %type19, align 8
  %conv20 = sext i16 %17 to i32
  %cmp21 = icmp eq i32 %conv20, 259
  br i1 %cmp21, label %land.lhs.true23, label %if.end29

land.lhs.true23:                                  ; preds = %if.end
  %18 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string24 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %18, i32 0, i32 2
  %19 = load %struct.sVString*, %struct.sVString** %string24, align 8
  %length25 = getelementptr inbounds %struct.sVString, %struct.sVString* %19, i32 0, i32 0
  %20 = load i64, i64* %length25, align 8
  %cmp26 = icmp ugt i64 %20, 0
  br i1 %cmp26, label %if.then28, label %if.end29

if.then28:                                        ; preds = %land.lhs.true23
  %21 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @notifyPackageRequirement(%struct.sTokenInfo* %21)
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %land.lhs.true23, %if.end
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %land.lhs.true8, %next
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %land.lhs.true, %entry
  %22 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @skipToEndOfCmdline(%struct.sTokenInfo* %22)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @notifyCommand(%struct.sTokenInfo* %token, i32 %parent) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %parent.addr = alloca i32, align 4
  %sub = alloca %struct.sSubparser*, align 8
  %r = alloca i32, align 4
  %tclsub = alloca %struct.sTclSubparser*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  store i32 %parent, i32* %parent.addr, align 4
  store i32 0, i32* %r, align 4
  store %struct.sSubparser* null, %struct.sSubparser** %sub, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end5, %entry
  %0 = load %struct.sSubparser*, %struct.sSubparser** %sub, align 8
  %call = call %struct.sSubparser* @getNextSubparser(%struct.sSubparser* %0, i1 zeroext false)
  store %struct.sSubparser* %call, %struct.sSubparser** %sub, align 8
  %cmp = icmp ne %struct.sSubparser* %call, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.sSubparser*, %struct.sSubparser** %sub, align 8
  %2 = bitcast %struct.sSubparser* %1 to %struct.sTclSubparser*
  store %struct.sTclSubparser* %2, %struct.sTclSubparser** %tclsub, align 8
  %3 = load %struct.sTclSubparser*, %struct.sTclSubparser** %tclsub, align 8
  %commandNotify = getelementptr inbounds %struct.sTclSubparser, %struct.sTclSubparser* %3, i32 0, i32 3
  %4 = load i32 (%struct.sTclSubparser*, i8*, i32, i8*)*, i32 (%struct.sTclSubparser*, i8*, i32, i8*)** %commandNotify, align 8
  %tobool = icmp ne i32 (%struct.sTclSubparser*, i8*, i32, i8*)* %4, null
  br i1 %tobool, label %if.then, label %if.end5

if.then:                                          ; preds = %while.body
  %5 = load %struct.sSubparser*, %struct.sSubparser** %sub, align 8
  call void @enterSubparser(%struct.sSubparser* %5)
  %6 = load %struct.sTclSubparser*, %struct.sTclSubparser** %tclsub, align 8
  %commandNotify1 = getelementptr inbounds %struct.sTclSubparser, %struct.sTclSubparser* %6, i32 0, i32 3
  %7 = load i32 (%struct.sTclSubparser*, i8*, i32, i8*)*, i32 (%struct.sTclSubparser*, i8*, i32, i8*)** %commandNotify1, align 8
  %8 = load %struct.sTclSubparser*, %struct.sTclSubparser** %tclsub, align 8
  %9 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %9, i32 0, i32 2
  %10 = load %struct.sVString*, %struct.sVString** %string, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %10, i32 0, i32 2
  %11 = load i8*, i8** %buffer, align 8
  %12 = load i32, i32* %parent.addr, align 4
  %13 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %14 = bitcast %struct.sTokenInfo* %13 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %14, i64 48
  %15 = bitcast i8* %add.ptr to %struct.tokenExtra*
  %pstate = getelementptr inbounds %struct.tokenExtra, %struct.tokenExtra* %15, i32 0, i32 1
  %16 = load %struct.sTclParserState*, %struct.sTclParserState** %pstate, align 8
  %17 = bitcast %struct.sTclParserState* %16 to i8*
  %call2 = call i32 %7(%struct.sTclSubparser* %8, i8* %11, i32 %12, i8* %17)
  store i32 %call2, i32* %r, align 4
  call void @leaveSubparser()
  %18 = load i32, i32* %r, align 4
  %cmp3 = icmp ne i32 %18, 0
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  br label %while.end

if.end:                                           ; preds = %if.then
  br label %if.end5

if.end5:                                          ; preds = %if.end, %while.body
  br label %while.cond

while.end:                                        ; preds = %if.then4, %while.cond
  %19 = load i32, i32* %r, align 4
  ret i32 %19
}

declare void @tokenDestroy(%struct.sTokenInfo*) #1

declare void @flashTokenBacklog(%struct.tokenInfoClass*) #1

declare i32 @strcmp(i8*, i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @notifyNamespaceImport(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %sub = alloca %struct.sSubparser*, align 8
  %tclsub = alloca %struct.sTclSubparser*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  store %struct.sSubparser* null, %struct.sSubparser** %sub, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %struct.sSubparser*, %struct.sSubparser** %sub, align 8
  %call = call %struct.sSubparser* @getNextSubparser(%struct.sSubparser* %0, i1 zeroext false)
  store %struct.sSubparser* %call, %struct.sSubparser** %sub, align 8
  %cmp = icmp ne %struct.sSubparser* %call, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.sSubparser*, %struct.sSubparser** %sub, align 8
  %2 = bitcast %struct.sSubparser* %1 to %struct.sTclSubparser*
  store %struct.sTclSubparser* %2, %struct.sTclSubparser** %tclsub, align 8
  %3 = load %struct.sTclSubparser*, %struct.sTclSubparser** %tclsub, align 8
  %namespaceImportNotify = getelementptr inbounds %struct.sTclSubparser, %struct.sTclSubparser* %3, i32 0, i32 2
  %4 = load void (%struct.sTclSubparser*, i8*, i8*)*, void (%struct.sTclSubparser*, i8*, i8*)** %namespaceImportNotify, align 8
  %tobool = icmp ne void (%struct.sTclSubparser*, i8*, i8*)* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %5 = load %struct.sSubparser*, %struct.sSubparser** %sub, align 8
  call void @enterSubparser(%struct.sSubparser* %5)
  %6 = load %struct.sTclSubparser*, %struct.sTclSubparser** %tclsub, align 8
  %namespaceImportNotify1 = getelementptr inbounds %struct.sTclSubparser, %struct.sTclSubparser* %6, i32 0, i32 2
  %7 = load void (%struct.sTclSubparser*, i8*, i8*)*, void (%struct.sTclSubparser*, i8*, i8*)** %namespaceImportNotify1, align 8
  %8 = load %struct.sTclSubparser*, %struct.sTclSubparser** %tclsub, align 8
  %9 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %9, i32 0, i32 2
  %10 = load %struct.sVString*, %struct.sVString** %string, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %10, i32 0, i32 2
  %11 = load i8*, i8** %buffer, align 8
  %12 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %13 = bitcast %struct.sTokenInfo* %12 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %13, i64 48
  %14 = bitcast i8* %add.ptr to %struct.tokenExtra*
  %pstate = getelementptr inbounds %struct.tokenExtra, %struct.tokenExtra* %14, i32 0, i32 1
  %15 = load %struct.sTclParserState*, %struct.sTclParserState** %pstate, align 8
  %16 = bitcast %struct.sTclParserState* %15 to i8*
  call void %7(%struct.sTclSubparser* %8, i8* %11, i8* %16)
  call void @leaveSubparser()
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

declare i32 @makeSimpleTag(%struct.sVString*, i32) #1

declare i32 @strncmp(i8*, i8*, i64) #1

declare %struct.sTagEntryInfo* @getEntryInCorkQueue(i32) #1

declare %struct.sSubparser* @getNextSubparser(%struct.sSubparser*, i1 zeroext) #1

declare void @enterSubparser(%struct.sSubparser*) #1

declare void @leaveSubparser() #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @getLastComponentInIdentifier(%struct.sTokenInfo* %token) #0 {
entry:
  %retval = alloca i8*, align 8
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %s = alloca i8*, align 8
  %last = alloca i8*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 2
  %1 = load %struct.sVString*, %struct.sVString** %string, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %1, i32 0, i32 2
  %2 = load i8*, i8** %buffer, align 8
  store i8* %2, i8** %s, align 8
  %3 = load i8*, i8** %s, align 8
  %call = call i8* @strrstr(i8* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  store i8* %call, i8** %last, align 8
  %4 = load i8*, i8** %last, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load i8*, i8** %last, align 8
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 2
  store i8* %add.ptr, i8** %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then
  %6 = load i8*, i8** %retval, align 8
  ret i8* %6
}

declare void @initTagEntry(%struct.sTagEntryInfo*, i8*, i32) #1

declare %struct.sVString* @vStringNew() #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @isAbsoluteIdentifier(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 2
  %1 = load %struct.sVString*, %struct.sVString** %string, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %1, i32 0, i32 2
  %2 = load i8*, i8** %buffer, align 8
  %call = call i32 @strncmp(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i64 2)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  ret i1 %lnot
}

declare void @vStringNCopy(%struct.sVString*, %struct.sVString*, i64) #1

declare void @vStringCopy(%struct.sVString*, %struct.sVString*) #1

declare void @vStringCatS(%struct.sVString*, i8*) #1

declare i32 @makeTagEntry(%struct.sTagEntryInfo*) #1

declare zeroext i1 @isXtagEnabled(i32) #1

declare void @markTagExtraBit(%struct.sTagEntryInfo*, i32) #1

declare void @vStringDelete(%struct.sVString*) #1

declare i8* @strrstr(i8*, i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @notifyPackageRequirement(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %sub = alloca %struct.sSubparser*, align 8
  %tclsub = alloca %struct.sTclSubparser*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  store %struct.sSubparser* null, %struct.sSubparser** %sub, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %struct.sSubparser*, %struct.sSubparser** %sub, align 8
  %call = call %struct.sSubparser* @getNextSubparser(%struct.sSubparser* %0, i1 zeroext false)
  store %struct.sSubparser* %call, %struct.sSubparser** %sub, align 8
  %cmp = icmp ne %struct.sSubparser* %call, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.sSubparser*, %struct.sSubparser** %sub, align 8
  %2 = bitcast %struct.sSubparser* %1 to %struct.sTclSubparser*
  store %struct.sTclSubparser* %2, %struct.sTclSubparser** %tclsub, align 8
  %3 = load %struct.sTclSubparser*, %struct.sTclSubparser** %tclsub, align 8
  %packageRequirementNotify = getelementptr inbounds %struct.sTclSubparser, %struct.sTclSubparser* %3, i32 0, i32 1
  %4 = load void (%struct.sTclSubparser*, i8*, i8*)*, void (%struct.sTclSubparser*, i8*, i8*)** %packageRequirementNotify, align 8
  %tobool = icmp ne void (%struct.sTclSubparser*, i8*, i8*)* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %5 = load %struct.sSubparser*, %struct.sSubparser** %sub, align 8
  call void @enterSubparser(%struct.sSubparser* %5)
  %6 = load %struct.sTclSubparser*, %struct.sTclSubparser** %tclsub, align 8
  %packageRequirementNotify1 = getelementptr inbounds %struct.sTclSubparser, %struct.sTclSubparser* %6, i32 0, i32 1
  %7 = load void (%struct.sTclSubparser*, i8*, i8*)*, void (%struct.sTclSubparser*, i8*, i8*)** %packageRequirementNotify1, align 8
  %8 = load %struct.sTclSubparser*, %struct.sTclSubparser** %tclsub, align 8
  %9 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %9, i32 0, i32 2
  %10 = load %struct.sVString*, %struct.sVString** %string, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %10, i32 0, i32 2
  %11 = load i8*, i8** %buffer, align 8
  %12 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %13 = bitcast %struct.sTokenInfo* %12 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %13, i64 48
  %14 = bitcast i8* %add.ptr to %struct.tokenExtra*
  %pstate = getelementptr inbounds %struct.tokenExtra, %struct.tokenExtra* %14, i32 0, i32 1
  %15 = load %struct.sTclParserState*, %struct.sTclParserState** %pstate, align 8
  %16 = bitcast %struct.sTclParserState* %15 to i8*
  call void %7(%struct.sTclSubparser* %8, i8* %11, i8* %16)
  call void @leaveSubparser()
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

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
