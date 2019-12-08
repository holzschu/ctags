; ModuleID = 'tcloo.c'
source_filename = "tcloo.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-ios11.0.0"

%struct.sSubparser = type { %struct.sSlaveParser*, %struct.sSubparser*, i8, i8, i32, void (%struct.sSubparser*)*, void (%struct.sSubparser*)*, void (%struct.sSubparser*, i8*)*, void (%struct.sSubparser*, %struct.sTagEntryInfo*, i32)* }
%struct.sSlaveParser = type { i32, i32, i8*, %struct.sSlaveParser* }
%struct.sTagEntryInfo = type { i8, i64, i8*, i32, %struct._MIOPos, i32, i8*, i8*, i32, [2 x i8], i8*, %struct.anon, i32, [5 x %struct.sTagField], %struct.sPtrArray*, i32, i8*, i64 }
%struct._MIOPos = type { i32, %union.anon }
%union.anon = type { i64 }
%struct.anon = type { i8*, i8*, i8*, i8*, i32, i32, i8*, i32, i8*, [2 x i8*], i32, i64 }
%struct.sTagField = type { i32, i8*, i8 }
%struct.sPtrArray = type opaque
%struct.sTclSubparser = type { %struct.sSubparser, {}*, {}*, i32 (%struct.sTclSubparser*, i8*, i32, i8*)* }
%struct.sParserDependency = type { i32, i8*, i8* }
%struct.sKindDefinition = type { i8, i8, i8*, i8*, i8, i32, %struct.sRoleDesc*, %struct.sScopeSeparator*, i32, i32, i32, %struct.sKindDefinition*, %struct.sKindDefinition* }
%struct.sRoleDesc = type { i8, i8*, i8* }
%struct.sScopeSeparator = type { i32, i8* }
%struct.tclooSubparser = type { %struct.sTclSubparser, i8 }
%struct.sParserDefinition = type { i8*, %struct.sKindDefinition*, i32, i8**, i8**, i8**, void (i32)*, void (i32, i1)*, void ()*, i32 (i32)*, i8* (%struct._MIO*, i32*, i32)**, i32, i8, i8, i8, i8, %struct.tagRegexTable*, i32, %struct.keywordTable*, i32, %struct.sTagXpathTableTable*, i32, i8, %struct.sFieldDefinition*, i32, %struct.sXtagDefinition*, i32, %struct.sParserDependency*, i32, %struct.sParameterHandlerTable*, i32, %struct.sXpathFileSpec*, i32, i32, i8 }
%struct._MIO = type opaque
%struct.tagRegexTable = type { i8*, i8*, i8*, i8*, i8*, i8 }
%struct.keywordTable = type { i8*, i32 }
%struct.sTagXpathTableTable = type { %struct.sTagXpathTable*, i32 }
%struct.sTagXpathTable = type { i8*, i32, %union.anon.0, i8* }
%union.anon.0 = type { %struct.sTagXpathMakeTagSpec }
%struct.sTagXpathMakeTagSpec = type { i32, i32, void (i8*, %struct.sTagXpathMakeTagSpec*, %struct.sTagEntryInfo*, i8*)* }
%struct.sFieldDefinition = type { i8, i8*, i8*, i8, [5 x i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)*], i1 (%struct.sTagEntryInfo*)*, i32, i32 }
%struct.sVString = type { i64, i64, i8* }
%struct.sXtagDefinition = type { i8, i8, i8*, i8*, i1 (%struct.sXtagDefinition*)*, i1 (%struct.sXtagDefinition*)*, i32 }
%struct.sParameterHandlerTable = type { i8*, i8*, void (i32, i8*, i8*)* }
%struct.sXpathFileSpec = type { i8*, i8*, i8*, i8*, i8*, i8* }
%struct.sTokenInfo = type { i16, i16, %struct.sVString*, %struct.tokenInfoClass*, i64, %struct._MIOPos }
%struct.tokenInfoClass = type { i32, i16, i16, i16, i16, i64, %struct.tokenTypePair*, i32, void (%struct.sTokenInfo*, i8*)*, void (%struct.sTokenInfo*, i8*)*, void (%struct.sTokenInfo*)*, void (%struct.sTokenInfo*)*, void (%struct.sTokenInfo*, %struct.sTokenInfo*, i8*)*, %struct.sObjPool*, %struct.sPtrArray* }
%struct.tokenTypePair = type { i16, i16 }
%struct.sObjPool = type opaque

@tclooSubparser = global { { %struct.sSubparser, void (%struct.sTclSubparser*, i8*, i8*)*, void (%struct.sTclSubparser*, i8*, i8*)*, i32 (%struct.sTclSubparser*, i8*, i32, i8*)* }, i8 } { { %struct.sSubparser, void (%struct.sTclSubparser*, i8*, i8*)*, void (%struct.sTclSubparser*, i8*, i8*)*, i32 (%struct.sTclSubparser*, i8*, i32, i8*)* } { %struct.sSubparser { %struct.sSlaveParser* null, %struct.sSubparser* null, i8 0, i8 0, i32 3, void (%struct.sSubparser*)* @inputStart, void (%struct.sSubparser*)* null, void (%struct.sSubparser*, i8*)* null, void (%struct.sSubparser*, %struct.sTagEntryInfo*, i32)* null }, void (%struct.sTclSubparser*, i8*, i8*)* null, void (%struct.sTclSubparser*, i8*, i8*)* @namespaceImportNotify, i32 (%struct.sTclSubparser*, i8*, i32, i8*)* @commandNotify }, i8 0 }, align 8
@.str = private unnamed_addr constant [6 x i8] c"TclOO\00", align 1
@dependencies = internal global [1 x %struct.sParserDependency] [%struct.sParserDependency { i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i8* bitcast ({ { %struct.sSubparser, void (%struct.sTclSubparser*, i8*, i8*)*, void (%struct.sTclSubparser*, i8*, i8*)*, i32 (%struct.sTclSubparser*, i8*, i32, i8*)* }, i8 }* @tclooSubparser to i8*) }], align 8
@TclOOKinds = internal global [2 x %struct.sKindDefinition] [%struct.sKindDefinition { i8 1, i8 99, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 109, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* getelementptr inbounds ([1 x %struct.sScopeSeparator], [1 x %struct.sScopeSeparator]* @TclOOGenericSeparators, i32 0, i32 0), i32 1, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }], align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"oo::*\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"oo::class\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"class\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"create\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"method\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"superclass\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"Tcl\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"classes\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"methods\00", align 1
@TclOOGenericSeparators = internal global [1 x %struct.sScopeSeparator] [%struct.sScopeSeparator { i32 -3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0) }], align 8
@.str.10 = private unnamed_addr constant [3 x i8] c"::\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @inputStart(%struct.sSubparser* %s) #0 {
entry:
  %s.addr = alloca %struct.sSubparser*, align 8
  %tcloo = alloca %struct.tclooSubparser*, align 8
  store %struct.sSubparser* %s, %struct.sSubparser** %s.addr, align 8
  %0 = load %struct.sSubparser*, %struct.sSubparser** %s.addr, align 8
  %1 = bitcast %struct.sSubparser* %0 to %struct.tclooSubparser*
  store %struct.tclooSubparser* %1, %struct.tclooSubparser** %tcloo, align 8
  %2 = load %struct.tclooSubparser*, %struct.tclooSubparser** %tcloo, align 8
  %foundTclOONamespaceImported = getelementptr inbounds %struct.tclooSubparser, %struct.tclooSubparser* %2, i32 0, i32 1
  store i8 0, i8* %foundTclOONamespaceImported, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @namespaceImportNotify(%struct.sTclSubparser* %s, i8* %namespace, i8* %pstate) #0 {
entry:
  %s.addr = alloca %struct.sTclSubparser*, align 8
  %namespace.addr = alloca i8*, align 8
  %pstate.addr = alloca i8*, align 8
  %tcloo = alloca %struct.tclooSubparser*, align 8
  store %struct.sTclSubparser* %s, %struct.sTclSubparser** %s.addr, align 8
  store i8* %namespace, i8** %namespace.addr, align 8
  store i8* %pstate, i8** %pstate.addr, align 8
  %0 = load %struct.sTclSubparser*, %struct.sTclSubparser** %s.addr, align 8
  %1 = bitcast %struct.sTclSubparser* %0 to %struct.tclooSubparser*
  store %struct.tclooSubparser* %1, %struct.tclooSubparser** %tcloo, align 8
  %2 = load i8*, i8** %namespace.addr, align 8
  %call = call i32 @strcmp(i8* %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i8*, i8** %namespace.addr, align 8
  %call1 = call i32 @strcmp(i8* %3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct.tclooSubparser*, %struct.tclooSubparser** %tcloo, align 8
  %foundTclOONamespaceImported = getelementptr inbounds %struct.tclooSubparser, %struct.tclooSubparser* %4, i32 0, i32 1
  store i8 1, i8* %foundTclOONamespaceImported, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @commandNotify(%struct.sTclSubparser* %s, i8* %command, i32 %parentIndex, i8* %pstate) #0 {
entry:
  %s.addr = alloca %struct.sTclSubparser*, align 8
  %command.addr = alloca i8*, align 8
  %parentIndex.addr = alloca i32, align 4
  %pstate.addr = alloca i8*, align 8
  %tcloo = alloca %struct.tclooSubparser*, align 8
  %r = alloca i32, align 4
  store %struct.sTclSubparser* %s, %struct.sTclSubparser** %s.addr, align 8
  store i8* %command, i8** %command.addr, align 8
  store i32 %parentIndex, i32* %parentIndex.addr, align 4
  store i8* %pstate, i8** %pstate.addr, align 8
  %0 = load %struct.sTclSubparser*, %struct.sTclSubparser** %s.addr, align 8
  %1 = bitcast %struct.sTclSubparser* %0 to %struct.tclooSubparser*
  store %struct.tclooSubparser* %1, %struct.tclooSubparser** %tcloo, align 8
  store i32 0, i32* %r, align 4
  %2 = load %struct.tclooSubparser*, %struct.tclooSubparser** %tcloo, align 8
  %foundTclOONamespaceImported = getelementptr inbounds %struct.tclooSubparser, %struct.tclooSubparser* %2, i32 0, i32 1
  %3 = load i8, i8* %foundTclOONamespaceImported, align 8
  %tobool = trunc i8 %3 to i1
  br i1 %tobool, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %4 = load i8*, i8** %command.addr, align 8
  %call = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %5 = load i8*, i8** %command.addr, align 8
  %call1 = call i32 @strcmp(i8* %5, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %6 = load %struct.sTclSubparser*, %struct.sTclSubparser** %s.addr, align 8
  %7 = load i32, i32* %parentIndex.addr, align 4
  %8 = load i8*, i8** %pstate.addr, align 8
  %call3 = call i32 @parseClass(%struct.sTclSubparser* %6, i32 %7, i8* %8)
  store i32 %call3, i32* %r, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %9 = load i32, i32* %r, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sParserDefinition* @TclOOParser() #0 {
entry:
  %def = alloca %struct.sParserDefinition*, align 8
  %call = call %struct.sParserDefinition* @parserNew(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store %struct.sParserDefinition* %call, %struct.sParserDefinition** %def, align 8
  %0 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %dependencies = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %0, i32 0, i32 27
  store %struct.sParserDependency* getelementptr inbounds ([1 x %struct.sParserDependency], [1 x %struct.sParserDependency]* @dependencies, i64 0, i64 0), %struct.sParserDependency** %dependencies, align 8
  %1 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %dependencyCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %1, i32 0, i32 28
  store i32 1, i32* %dependencyCount, align 8
  %2 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %2, i32 0, i32 1
  store %struct.sKindDefinition* getelementptr inbounds ([2 x %struct.sKindDefinition], [2 x %struct.sKindDefinition]* @TclOOKinds, i64 0, i64 0), %struct.sKindDefinition** %kindTable, align 8
  %3 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %3, i32 0, i32 2
  store i32 2, i32* %kindCount, align 8
  %4 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %parser = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %4, i32 0, i32 8
  store void ()* @findTclOOTags, void ()** %parser, align 8
  %5 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %useCork = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %5, i32 0, i32 12
  store i8 1, i8* %useCork, align 4
  %6 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %requestAutomaticFQTag = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %6, i32 0, i32 15
  store i8 1, i8* %requestAutomaticFQTag, align 1
  %7 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  ret %struct.sParserDefinition* %7
}

declare %struct.sParserDefinition* @parserNew(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @findTclOOTags() #0 {
entry:
  call void @scheduleRunningBaseparser(i32 -1)
  ret void
}

declare i32 @strcmp(i8*, i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @parseClass(%struct.sTclSubparser* %s, i32 %parentIndex, i8* %pstate) #0 {
entry:
  %s.addr = alloca %struct.sTclSubparser*, align 8
  %parentIndex.addr = alloca i32, align 4
  %pstate.addr = alloca i8*, align 8
  %token = alloca %struct.sTokenInfo*, align 8
  %r = alloca i32, align 4
  %e = alloca %struct.sTagEntryInfo, align 8
  store %struct.sTclSubparser* %s, %struct.sTclSubparser** %s.addr, align 8
  store i32 %parentIndex, i32* %parentIndex.addr, align 4
  store i8* %pstate, i8** %pstate.addr, align 8
  %0 = load i8*, i8** %pstate.addr, align 8
  %call = call %struct.sTokenInfo* @newTclToken(i8* %0)
  store %struct.sTokenInfo* %call, %struct.sTokenInfo** %token, align 8
  store i32 0, i32* %r, align 4
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  call void @tokenRead(%struct.sTokenInfo* %1)
  %2 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %2, i32 0, i32 0
  %3 = load i16, i16* %type, align 8
  %conv = sext i16 %3 to i32
  %cmp = icmp eq i32 %conv, 259
  br i1 %cmp, label %land.lhs.true, label %if.end53

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %string = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %4, i32 0, i32 2
  %5 = load %struct.sVString*, %struct.sVString** %string, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %5, i32 0, i32 2
  %6 = load i8*, i8** %buffer, align 8
  %call2 = call i32 @strcmp(i8* %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.then, label %if.end53

if.then:                                          ; preds = %land.lhs.true
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  call void @tokenRead(%struct.sTokenInfo* %7)
  %8 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %type5 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %8, i32 0, i32 0
  %9 = load i16, i16* %type5, align 8
  %conv6 = sext i16 %9 to i32
  %cmp7 = icmp eq i32 %conv6, 259
  br i1 %cmp7, label %if.then9, label %if.end

if.then9:                                         ; preds = %if.then
  %10 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %string10 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %10, i32 0, i32 2
  %11 = load %struct.sVString*, %struct.sVString** %string10, align 8
  %buffer11 = getelementptr inbounds %struct.sVString, %struct.sVString* %11, i32 0, i32 2
  %12 = load i8*, i8** %buffer11, align 8
  call void @initTagEntry(%struct.sTagEntryInfo* %e, i8* %12, i32 0)
  %13 = load i32, i32* %parentIndex.addr, align 4
  %extensionFields = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %e, i32 0, i32 11
  %scopeIndex = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields, i32 0, i32 7
  store i32 %13, i32* %scopeIndex, align 8
  %call12 = call i32 @makeTagEntry(%struct.sTagEntryInfo* %e)
  store i32 %call12, i32* %r, align 4
  br label %if.end

if.end:                                           ; preds = %if.then9, %if.then
  %14 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %call13 = call zeroext i1 @tokenSkipToType(%struct.sTokenInfo* %14, i16 signext 123)
  br i1 %call13, label %if.then14, label %if.end52

if.then14:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then14
  %15 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  call void @tokenRead(%struct.sTokenInfo* %15)
  %16 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %type15 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %16, i32 0, i32 0
  %17 = load i16, i16* %type15, align 8
  %conv16 = sext i16 %17 to i32
  %cmp17 = icmp eq i32 %conv16, 259
  br i1 %cmp17, label %if.then23, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body
  %18 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %type19 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %18, i32 0, i32 0
  %19 = load i16, i16* %type19, align 8
  %conv20 = sext i16 %19 to i32
  %cmp21 = icmp eq i32 %conv20, 258
  br i1 %cmp21, label %if.then23, label %if.else39

if.then23:                                        ; preds = %lor.lhs.false, %do.body
  %20 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %string24 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %20, i32 0, i32 2
  %21 = load %struct.sVString*, %struct.sVString** %string24, align 8
  %buffer25 = getelementptr inbounds %struct.sVString, %struct.sVString* %21, i32 0, i32 2
  %22 = load i8*, i8** %buffer25, align 8
  %call26 = call i32 @strcmp(i8* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %cmp27 = icmp eq i32 %call26, 0
  br i1 %cmp27, label %if.then29, label %if.else

if.then29:                                        ; preds = %if.then23
  %23 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %24 = load i32, i32* %r, align 4
  call void @parseMethod(%struct.sTokenInfo* %23, i32 %24)
  br label %if.end38

if.else:                                          ; preds = %if.then23
  %25 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %string30 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %25, i32 0, i32 2
  %26 = load %struct.sVString*, %struct.sVString** %string30, align 8
  %buffer31 = getelementptr inbounds %struct.sVString, %struct.sVString* %26, i32 0, i32 2
  %27 = load i8*, i8** %buffer31, align 8
  %call32 = call i32 @strcmp(i8* %27, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %cmp33 = icmp eq i32 %call32, 0
  br i1 %cmp33, label %if.then35, label %if.else36

if.then35:                                        ; preds = %if.else
  %28 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %29 = load i32, i32* %r, align 4
  call void @parseSuperclass(%struct.sTokenInfo* %28, i32 %29)
  br label %if.end37

if.else36:                                        ; preds = %if.else
  %30 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  call void @skipToEndOfTclCmdline(%struct.sTokenInfo* %30)
  br label %if.end37

if.end37:                                         ; preds = %if.else36, %if.then35
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %if.then29
  br label %if.end46

if.else39:                                        ; preds = %lor.lhs.false
  %31 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %type40 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %31, i32 0, i32 0
  %32 = load i16, i16* %type40, align 8
  %conv41 = sext i16 %32 to i32
  %cmp42 = icmp eq i32 %conv41, 125
  br i1 %cmp42, label %if.then44, label %if.end45

if.then44:                                        ; preds = %if.else39
  br label %do.end

if.end45:                                         ; preds = %if.else39
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %if.end38
  br label %do.cond

do.cond:                                          ; preds = %if.end46
  %33 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %type47 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %33, i32 0, i32 0
  %34 = load i16, i16* %type47, align 8
  %conv48 = sext i16 %34 to i32
  %35 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %klass = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %35, i32 0, i32 3
  %36 = load %struct.tokenInfoClass*, %struct.tokenInfoClass** %klass, align 8
  %typeForEOF = getelementptr inbounds %struct.tokenInfoClass, %struct.tokenInfoClass* %36, i32 0, i32 4
  %37 = load i16, i16* %typeForEOF, align 2
  %conv49 = sext i16 %37 to i32
  %cmp50 = icmp eq i32 %conv48, %conv49
  %lnot = xor i1 %cmp50, true
  br i1 %lnot, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.then44
  br label %if.end52

if.end52:                                         ; preds = %do.end, %if.end
  br label %if.end53

if.end53:                                         ; preds = %if.end52, %land.lhs.true, %entry
  %38 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  call void @skipToEndOfTclCmdline(%struct.sTokenInfo* %38)
  %39 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  call void @tokenDestroy(%struct.sTokenInfo* %39)
  %40 = load i32, i32* %r, align 4
  ret i32 %40
}

declare %struct.sTokenInfo* @newTclToken(i8*) #1

declare void @tokenRead(%struct.sTokenInfo*) #1

declare void @initTagEntry(%struct.sTagEntryInfo*, i8*, i32) #1

declare i32 @makeTagEntry(%struct.sTagEntryInfo*) #1

declare zeroext i1 @tokenSkipToType(%struct.sTokenInfo*, i16 signext) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseMethod(%struct.sTokenInfo* %token, i32 %owner) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %owner.addr = alloca i32, align 4
  %e = alloca %struct.sTagEntryInfo, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  store i32 %owner, i32* %owner.addr, align 4
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @tokenRead(%struct.sTokenInfo* %0)
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %1, i32 0, i32 0
  %2 = load i16, i16* %type, align 8
  %conv = sext i16 %2 to i32
  %cmp = icmp eq i32 %conv, 259
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %3, i32 0, i32 2
  %4 = load %struct.sVString*, %struct.sVString** %string, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %4, i32 0, i32 2
  %5 = load i8*, i8** %buffer, align 8
  call void @initTagEntry(%struct.sTagEntryInfo* %e, i8* %5, i32 1)
  %6 = load i32, i32* %owner.addr, align 4
  %extensionFields = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %e, i32 0, i32 11
  %scopeIndex = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields, i32 0, i32 7
  store i32 %6, i32* %scopeIndex, align 8
  %call = call i32 @makeTagEntry(%struct.sTagEntryInfo* %e)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @skipToEndOfTclCmdline(%struct.sTokenInfo* %7)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseSuperclass(%struct.sTokenInfo* %token, i32 %this_class) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %this_class.addr = alloca i32, align 4
  %e = alloca %struct.sTagEntryInfo*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  store i32 %this_class, i32* %this_class.addr, align 4
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @tokenRead(%struct.sTokenInfo* %0)
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %1, i32 0, i32 0
  %2 = load i16, i16* %type, align 8
  %conv = sext i16 %2 to i32
  %cmp = icmp eq i32 %conv, 259
  br i1 %cmp, label %if.then, label %if.end11

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %this_class.addr, align 4
  %call = call %struct.sTagEntryInfo* @getEntryInCorkQueue(i32 %3)
  store %struct.sTagEntryInfo* %call, %struct.sTagEntryInfo** %e, align 8
  %4 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %e, align 8
  %tobool = icmp ne %struct.sTagEntryInfo* %4, null
  br i1 %tobool, label %if.then2, label %if.end10

if.then2:                                         ; preds = %if.then
  %5 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %e, align 8
  %extensionFields = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %5, i32 0, i32 11
  %inheritance = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields, i32 0, i32 3
  %6 = load i8*, i8** %inheritance, align 8
  %tobool3 = icmp ne i8* %6, null
  br i1 %tobool3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then2
  %7 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %e, align 8
  %extensionFields5 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %7, i32 0, i32 11
  %inheritance6 = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields5, i32 0, i32 3
  %8 = load i8*, i8** %inheritance6, align 8
  call void @eFree(i8* %8)
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then2
  %9 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %9, i32 0, i32 2
  %10 = load %struct.sVString*, %struct.sVString** %string, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %10, i32 0, i32 2
  %11 = load i8*, i8** %buffer, align 8
  %call7 = call i8* @eStrdup(i8* %11)
  %12 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %e, align 8
  %extensionFields8 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %12, i32 0, i32 11
  %inheritance9 = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields8, i32 0, i32 3
  store i8* %call7, i8** %inheritance9, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %entry
  %13 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @skipToEndOfTclCmdline(%struct.sTokenInfo* %13)
  ret void
}

declare void @skipToEndOfTclCmdline(%struct.sTokenInfo*) #1

declare void @tokenDestroy(%struct.sTokenInfo*) #1

declare %struct.sTagEntryInfo* @getEntryInCorkQueue(i32) #1

declare void @eFree(i8*) #1

declare i8* @eStrdup(i8*) #1

declare void @scheduleRunningBaseparser(i32) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 10.0.0 (https://github.com/holzschu/clang.git 0cfc630fbdb62e96720b611a57123ef3eb13e297) (https://github.com/holzschu/llvm.git 0d8a71e39b28502c24718f7e74b5acbcfe36dfe0)"}
