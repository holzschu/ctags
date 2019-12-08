; ModuleID = 'itcl.c'
source_filename = "itcl.c"
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
%struct.keywordTable = type { i8*, i32 }
%struct.itclSubparser = type { %struct.sTclSubparser, i8, i8 }
%struct.sParserDefinition = type { i8*, %struct.sKindDefinition*, i32, i8**, i8**, i8**, void (i32)*, void (i32, i1)*, void ()*, i32 (i32)*, i8* (%struct._MIO*, i32*, i32)**, i32, i8, i8, i8, i8, %struct.tagRegexTable*, i32, %struct.keywordTable*, i32, %struct.sTagXpathTableTable*, i32, i8, %struct.sFieldDefinition*, i32, %struct.sXtagDefinition*, i32, %struct.sParserDependency*, i32, %struct.sParameterHandlerTable*, i32, %struct.sXpathFileSpec*, i32, i32, i8 }
%struct._MIO = type opaque
%struct.tagRegexTable = type { i8*, i8*, i8*, i8*, i8*, i8 }
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

@itclSubparser = global { { %struct.sSubparser, void (%struct.sTclSubparser*, i8*, i8*)*, void (%struct.sTclSubparser*, i8*, i8*)*, i32 (%struct.sTclSubparser*, i8*, i32, i8*)* }, i8, i8 } { { %struct.sSubparser, void (%struct.sTclSubparser*, i8*, i8*)*, void (%struct.sTclSubparser*, i8*, i8*)*, i32 (%struct.sTclSubparser*, i8*, i32, i8*)* } { %struct.sSubparser { %struct.sSlaveParser* null, %struct.sSubparser* null, i8 0, i8 0, i32 3, void (%struct.sSubparser*)* @inputStart, void (%struct.sSubparser*)* null, void (%struct.sSubparser*, i8*)* null, void (%struct.sSubparser*, %struct.sTagEntryInfo*, i32)* null }, void (%struct.sTclSubparser*, i8*, i8*)* @packageRequirementNotify, void (%struct.sTclSubparser*, i8*, i8*)* @namespaceImportNotify, i32 (%struct.sTclSubparser*, i8*, i32, i8*)* @commandNotify }, i8 0, i8 0 }, align 8
@.str = private unnamed_addr constant [5 x i8] c"ITcl\00", align 1
@dependencies = internal global [1 x %struct.sParserDependency] [%struct.sParserDependency { i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i8* bitcast ({ { %struct.sSubparser, void (%struct.sTclSubparser*, i8*, i8*)*, void (%struct.sTclSubparser*, i8*, i8*)*, i32 (%struct.sTclSubparser*, i8*, i32, i8*)* }, i8, i8 }* @itclSubparser to i8*) }], align 8
@ITclKinds = internal global [5 x %struct.sKindDefinition] [%struct.sKindDefinition { i8 1, i8 99, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 109, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* getelementptr inbounds ([1 x %struct.sScopeSeparator], [1 x %struct.sScopeSeparator]* @ITclGenericSeparators, i32 0, i32 0), i32 1, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 118, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* getelementptr inbounds ([1 x %struct.sScopeSeparator], [1 x %struct.sScopeSeparator]* @ITclGenericSeparators, i32 0, i32 0), i32 1, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 67, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* getelementptr inbounds ([1 x %struct.sScopeSeparator], [1 x %struct.sScopeSeparator]* @ITclGenericSeparators, i32 0, i32 0), i32 1, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 112, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.17, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* getelementptr inbounds ([1 x %struct.sScopeSeparator], [1 x %struct.sScopeSeparator]* @ITclGenericSeparators, i32 0, i32 0), i32 1, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }], align 8
@extensions = internal constant [2 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i8* null], align 8
@ITclKeywordTable = internal constant [8 x %struct.keywordTable] [%struct.keywordTable { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i32 0 }, %struct.keywordTable { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i32 1 }, %struct.keywordTable { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i32 2 }, %struct.keywordTable { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), i32 3 }, %struct.keywordTable { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i32 4 }, %struct.keywordTable { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i32 5 }, %struct.keywordTable { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i32 6 }, %struct.keywordTable { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), i32 7 }], align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"Itcl\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"itcl::*\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"itcl::class\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"class\00", align 1
@resolveKeyword.lang = internal global i32 -1, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"protected\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"private\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"public\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"Tcl\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"classes\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"method\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"methods\00", align 1
@ITclGenericSeparators = internal global [1 x %struct.sScopeSeparator] [%struct.sScopeSeparator { i32 -3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0) }], align 8
@.str.12 = private unnamed_addr constant [9 x i8] c"variable\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"object-specific variables\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"common\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"common variables\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"procedure\00", align 1
@.str.17 = private unnamed_addr constant [40 x i8] c"procedures within the  class  namespace\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"::\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"itcl\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"inherit\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"proc\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @inputStart(%struct.sSubparser* %s) #0 {
entry:
  %s.addr = alloca %struct.sSubparser*, align 8
  %itcl = alloca %struct.itclSubparser*, align 8
  store %struct.sSubparser* %s, %struct.sSubparser** %s.addr, align 8
  %0 = load %struct.sSubparser*, %struct.sSubparser** %s.addr, align 8
  %1 = bitcast %struct.sSubparser* %0 to %struct.itclSubparser*
  store %struct.itclSubparser* %1, %struct.itclSubparser** %itcl, align 8
  %2 = load %struct.itclSubparser*, %struct.itclSubparser** %itcl, align 8
  %foundITclPackageRequired = getelementptr inbounds %struct.itclSubparser, %struct.itclSubparser* %2, i32 0, i32 1
  store i8 0, i8* %foundITclPackageRequired, align 8
  %3 = load %struct.itclSubparser*, %struct.itclSubparser** %itcl, align 8
  %foundITclNamespaceImported = getelementptr inbounds %struct.itclSubparser, %struct.itclSubparser* %3, i32 0, i32 2
  store i8 0, i8* %foundITclNamespaceImported, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @packageRequirementNotify(%struct.sTclSubparser* %s, i8* %package, i8* %pstate) #0 {
entry:
  %s.addr = alloca %struct.sTclSubparser*, align 8
  %package.addr = alloca i8*, align 8
  %pstate.addr = alloca i8*, align 8
  %itcl = alloca %struct.itclSubparser*, align 8
  store %struct.sTclSubparser* %s, %struct.sTclSubparser** %s.addr, align 8
  store i8* %package, i8** %package.addr, align 8
  store i8* %pstate, i8** %pstate.addr, align 8
  %0 = load %struct.sTclSubparser*, %struct.sTclSubparser** %s.addr, align 8
  %1 = bitcast %struct.sTclSubparser* %0 to %struct.itclSubparser*
  store %struct.itclSubparser* %1, %struct.itclSubparser** %itcl, align 8
  %2 = load i8*, i8** %package.addr, align 8
  %call = call i32 @strcmp(i8* %2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.itclSubparser*, %struct.itclSubparser** %itcl, align 8
  %foundITclPackageRequired = getelementptr inbounds %struct.itclSubparser, %struct.itclSubparser* %3, i32 0, i32 1
  store i8 1, i8* %foundITclPackageRequired, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @namespaceImportNotify(%struct.sTclSubparser* %s, i8* %namespace, i8* %pstate) #0 {
entry:
  %s.addr = alloca %struct.sTclSubparser*, align 8
  %namespace.addr = alloca i8*, align 8
  %pstate.addr = alloca i8*, align 8
  %itcl = alloca %struct.itclSubparser*, align 8
  store %struct.sTclSubparser* %s, %struct.sTclSubparser** %s.addr, align 8
  store i8* %namespace, i8** %namespace.addr, align 8
  store i8* %pstate, i8** %pstate.addr, align 8
  %0 = load %struct.sTclSubparser*, %struct.sTclSubparser** %s.addr, align 8
  %1 = bitcast %struct.sTclSubparser* %0 to %struct.itclSubparser*
  store %struct.itclSubparser* %1, %struct.itclSubparser** %itcl, align 8
  %2 = load i8*, i8** %namespace.addr, align 8
  %call = call i32 @strcmp(i8* %2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i8*, i8** %namespace.addr, align 8
  %call1 = call i32 @strcmp(i8* %3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct.itclSubparser*, %struct.itclSubparser** %itcl, align 8
  %foundITclNamespaceImported = getelementptr inbounds %struct.itclSubparser, %struct.itclSubparser* %4, i32 0, i32 2
  store i8 1, i8* %foundITclNamespaceImported, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @commandNotify(%struct.sTclSubparser* %s, i8* %command, i32 %parentIndex, i8* %pstate) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.sTclSubparser*, align 8
  %command.addr = alloca i8*, align 8
  %parentIndex.addr = alloca i32, align 4
  %pstate.addr = alloca i8*, align 8
  %itcl = alloca %struct.itclSubparser*, align 8
  %r = alloca i32, align 4
  store %struct.sTclSubparser* %s, %struct.sTclSubparser** %s.addr, align 8
  store i8* %command, i8** %command.addr, align 8
  store i32 %parentIndex, i32* %parentIndex.addr, align 4
  store i8* %pstate, i8** %pstate.addr, align 8
  %0 = load %struct.sTclSubparser*, %struct.sTclSubparser** %s.addr, align 8
  %1 = bitcast %struct.sTclSubparser* %0 to %struct.itclSubparser*
  store %struct.itclSubparser* %1, %struct.itclSubparser** %itcl, align 8
  store i32 0, i32* %r, align 4
  %2 = load %struct.itclSubparser*, %struct.itclSubparser** %itcl, align 8
  %foundITclPackageRequired = getelementptr inbounds %struct.itclSubparser, %struct.itclSubparser* %2, i32 0, i32 1
  %3 = load i8, i8* %foundITclPackageRequired, align 8
  %tobool = trunc i8 %3 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %r, align 4
  store i32 %4, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.itclSubparser*, %struct.itclSubparser** %itcl, align 8
  %foundITclNamespaceImported = getelementptr inbounds %struct.itclSubparser, %struct.itclSubparser* %5, i32 0, i32 2
  %6 = load i8, i8* %foundITclNamespaceImported, align 1
  %tobool1 = trunc i8 %6 to i1
  br i1 %tobool1, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.end
  %7 = load i8*, i8** %command.addr, align 8
  %call = call i32 @strcmp(i8* %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.end
  %8 = load i8*, i8** %command.addr, align 8
  %call2 = call i32 @strcmp(i8* %8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %lor.lhs.false, %land.lhs.true
  %9 = load %struct.sTclSubparser*, %struct.sTclSubparser** %s.addr, align 8
  %10 = load i32, i32* %parentIndex.addr, align 4
  %11 = load i8*, i8** %pstate.addr, align 8
  %call5 = call i32 @parseClass(%struct.sTclSubparser* %9, i32 %10, i8* %11)
  store i32 %call5, i32* %r, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %lor.lhs.false
  %12 = load i32, i32* %r, align 4
  store i32 %12, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end6, %if.then
  %13 = load i32, i32* %retval, align 4
  ret i32 %13
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sParserDefinition* @ITclParser() #0 {
entry:
  %def = alloca %struct.sParserDefinition*, align 8
  %call = call %struct.sParserDefinition* @parserNew(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.sParserDefinition* %call, %struct.sParserDefinition** %def, align 8
  %0 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %dependencies = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %0, i32 0, i32 27
  store %struct.sParserDependency* getelementptr inbounds ([1 x %struct.sParserDependency], [1 x %struct.sParserDependency]* @dependencies, i64 0, i64 0), %struct.sParserDependency** %dependencies, align 8
  %1 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %dependencyCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %1, i32 0, i32 28
  store i32 1, i32* %dependencyCount, align 8
  %2 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %2, i32 0, i32 1
  store %struct.sKindDefinition* getelementptr inbounds ([5 x %struct.sKindDefinition], [5 x %struct.sKindDefinition]* @ITclKinds, i64 0, i64 0), %struct.sKindDefinition** %kindTable, align 8
  %3 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %3, i32 0, i32 2
  store i32 5, i32* %kindCount, align 8
  %4 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %extensions = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %4, i32 0, i32 3
  store i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @extensions, i64 0, i64 0), i8*** %extensions, align 8
  %5 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %parser = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %5, i32 0, i32 8
  store void ()* @findITclTags, void ()** %parser, align 8
  %6 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %useCork = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %6, i32 0, i32 12
  store i8 1, i8* %useCork, align 4
  %7 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %requestAutomaticFQTag = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %7, i32 0, i32 15
  store i8 1, i8* %requestAutomaticFQTag, align 1
  %8 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %keywordTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %8, i32 0, i32 18
  store %struct.keywordTable* getelementptr inbounds ([8 x %struct.keywordTable], [8 x %struct.keywordTable]* @ITclKeywordTable, i64 0, i64 0), %struct.keywordTable** %keywordTable, align 8
  %9 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %keywordCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %9, i32 0, i32 19
  store i32 8, i32* %keywordCount, align 8
  %10 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  ret %struct.sParserDefinition* %10
}

declare %struct.sParserDefinition* @parserNew(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @findITclTags() #0 {
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
  %protection = alloca i32, align 4
  %k = alloca i32, align 4
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
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %string = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %4, i32 0, i32 2
  %5 = load %struct.sVString*, %struct.sVString** %string, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %5, i32 0, i32 2
  %6 = load i8*, i8** %buffer, align 8
  call void @initTagEntry(%struct.sTagEntryInfo* %e, i8* %6, i32 0)
  %7 = load i32, i32* %parentIndex.addr, align 4
  %extensionFields = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %e, i32 0, i32 11
  %scopeIndex = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields, i32 0, i32 7
  store i32 %7, i32* %scopeIndex, align 8
  %call2 = call i32 @makeTagEntry(%struct.sTagEntryInfo* %e)
  store i32 %call2, i32* %r, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %call3 = call zeroext i1 @tokenSkipToType(%struct.sTokenInfo* %8, i16 signext 123)
  br i1 %call3, label %if.then4, label %if.end34

if.then4:                                         ; preds = %if.end
  store i32 -1, i32* %protection, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then4
  %9 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  call void @tokenRead(%struct.sTokenInfo* %9)
  %10 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %type5 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %10, i32 0, i32 0
  %11 = load i16, i16* %type5, align 8
  %conv6 = sext i16 %11 to i32
  %cmp7 = icmp eq i32 %conv6, 259
  br i1 %cmp7, label %if.then13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body
  %12 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %type9 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %12, i32 0, i32 0
  %13 = load i16, i16* %type9, align 8
  %conv10 = sext i16 %13 to i32
  %cmp11 = icmp eq i32 %conv10, 258
  br i1 %cmp11, label %if.then13, label %if.else

if.then13:                                        ; preds = %lor.lhs.false, %do.body
  %14 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %string14 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %14, i32 0, i32 2
  %15 = load %struct.sVString*, %struct.sVString** %string14, align 8
  %call15 = call i32 @resolveKeyword(%struct.sVString* %15)
  store i32 %call15, i32* %k, align 4
  %16 = load i32, i32* %k, align 4
  switch i32 %16, label %sw.default [
    i32 0, label %sw.bb
    i32 5, label %sw.bb16
    i32 1, label %sw.bb17
    i32 6, label %sw.bb18
    i32 4, label %sw.bb19
    i32 3, label %sw.bb19
    i32 2, label %sw.bb19
    i32 7, label %sw.bb20
  ]

sw.bb:                                            ; preds = %if.then13
  %17 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %18 = load i32, i32* %r, align 4
  call void @parseInherit(%struct.sTokenInfo* %17, i32 %18)
  store i32 -1, i32* %protection, align 4
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.then13
  %19 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %20 = load i32, i32* %r, align 4
  %21 = load i32, i32* %protection, align 4
  call void @parseVariable(%struct.sTokenInfo* %19, i32 %20, i32 %21)
  store i32 -1, i32* %protection, align 4
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.then13
  %22 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %23 = load i32, i32* %r, align 4
  %24 = load i32, i32* %protection, align 4
  call void @parseMethod(%struct.sTokenInfo* %22, i32 %23, i32 %24)
  store i32 -1, i32* %protection, align 4
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.then13
  %25 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %26 = load i32, i32* %r, align 4
  %27 = load i32, i32* %protection, align 4
  call void @parseCommon(%struct.sTokenInfo* %25, i32 %26, i32 %27)
  store i32 -1, i32* %protection, align 4
  br label %sw.epilog

sw.bb19:                                          ; preds = %if.then13, %if.then13, %if.then13
  %28 = load i32, i32* %k, align 4
  store i32 %28, i32* %protection, align 4
  br label %do.cond

sw.bb20:                                          ; preds = %if.then13
  %29 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %30 = load i32, i32* %r, align 4
  %31 = load i32, i32* %protection, align 4
  call void @parseProc(%struct.sTokenInfo* %29, i32 %30, i32 %31)
  store i32 -1, i32* %protection, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.then13
  store i32 -1, i32* %protection, align 4
  %32 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  call void @skipToEndOfTclCmdline(%struct.sTokenInfo* %32)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb20, %sw.bb18, %sw.bb17, %sw.bb16, %sw.bb
  br label %if.end28

if.else:                                          ; preds = %lor.lhs.false
  %33 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %type21 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %33, i32 0, i32 0
  %34 = load i16, i16* %type21, align 8
  %conv22 = sext i16 %34 to i32
  %cmp23 = icmp eq i32 %conv22, 125
  br i1 %cmp23, label %if.then25, label %if.else26

if.then25:                                        ; preds = %if.else
  store i32 -1, i32* %protection, align 4
  br label %do.end

if.else26:                                        ; preds = %if.else
  store i32 -1, i32* %protection, align 4
  %35 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  call void @skipToEndOfTclCmdline(%struct.sTokenInfo* %35)
  br label %if.end27

if.end27:                                         ; preds = %if.else26
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %sw.epilog
  br label %do.cond

do.cond:                                          ; preds = %if.end28, %sw.bb19
  %36 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %type29 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %36, i32 0, i32 0
  %37 = load i16, i16* %type29, align 8
  %conv30 = sext i16 %37 to i32
  %38 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %klass = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %38, i32 0, i32 3
  %39 = load %struct.tokenInfoClass*, %struct.tokenInfoClass** %klass, align 8
  %typeForEOF = getelementptr inbounds %struct.tokenInfoClass, %struct.tokenInfoClass* %39, i32 0, i32 4
  %40 = load i16, i16* %typeForEOF, align 2
  %conv31 = sext i16 %40 to i32
  %cmp32 = icmp eq i32 %conv30, %conv31
  %lnot = xor i1 %cmp32, true
  br i1 %lnot, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.then25
  br label %if.end34

if.end34:                                         ; preds = %do.end, %if.end
  %41 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  call void @tokenDestroy(%struct.sTokenInfo* %41)
  %42 = load i32, i32* %r, align 4
  ret i32 %42
}

declare %struct.sTokenInfo* @newTclToken(i8*) #1

declare void @tokenRead(%struct.sTokenInfo*) #1

declare void @initTagEntry(%struct.sTagEntryInfo*, i8*, i32) #1

declare i32 @makeTagEntry(%struct.sTagEntryInfo*) #1

declare zeroext i1 @tokenSkipToType(%struct.sTokenInfo*, i16 signext) #1

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

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseInherit(%struct.sTokenInfo* %token, i32 %r) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %r.addr = alloca i32, align 4
  %inherits = alloca %struct.sVString*, align 8
  %e = alloca %struct.sTagEntryInfo*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  store i32 %r, i32* %r.addr, align 4
  %call = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call, %struct.sVString** %inherits, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @tokenRead(%struct.sTokenInfo* %0)
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %1, i32 0, i32 0
  %2 = load i16, i16* %type, align 8
  %conv = sext i16 %2 to i32
  %cmp = icmp eq i32 %conv, 259
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %3 = load %struct.sVString*, %struct.sVString** %inherits, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %3, i32 0, i32 0
  %4 = load i64, i64* %length, align 8
  %cmp2 = icmp ne i64 %4, 0
  br i1 %cmp2, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  %5 = load %struct.sVString*, %struct.sVString** %inherits, align 8
  call void @vStringPut(%struct.sVString* %5, i32 44)
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then
  %6 = load %struct.sVString*, %struct.sVString** %inherits, align 8
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %7, i32 0, i32 2
  %8 = load %struct.sVString*, %struct.sVString** %string, align 8
  call void @vStringCat(%struct.sVString* %6, %struct.sVString* %8)
  br label %if.end11

if.else:                                          ; preds = %do.body
  %9 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type5 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %9, i32 0, i32 0
  %10 = load i16, i16* %type5, align 8
  %conv6 = sext i16 %10 to i32
  %cmp7 = icmp eq i32 %conv6, 261
  br i1 %cmp7, label %if.then9, label %if.else10

if.then9:                                         ; preds = %if.else
  br label %do.end

if.else10:                                        ; preds = %if.else
  %11 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @skipToEndOfTclCmdline(%struct.sTokenInfo* %11)
  br label %do.end

if.end11:                                         ; preds = %if.end
  br label %do.cond

do.cond:                                          ; preds = %if.end11
  br i1 true, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.else10, %if.then9
  %12 = load %struct.sVString*, %struct.sVString** %inherits, align 8
  %length12 = getelementptr inbounds %struct.sVString, %struct.sVString* %12, i32 0, i32 0
  %13 = load i64, i64* %length12, align 8
  %cmp13 = icmp ugt i64 %13, 0
  br i1 %cmp13, label %if.then15, label %if.end20

if.then15:                                        ; preds = %do.end
  %14 = load i32, i32* %r.addr, align 4
  %call16 = call %struct.sTagEntryInfo* @getEntryInCorkQueue(i32 %14)
  store %struct.sTagEntryInfo* %call16, %struct.sTagEntryInfo** %e, align 8
  %15 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %e, align 8
  %tobool = icmp ne %struct.sTagEntryInfo* %15, null
  br i1 %tobool, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.then15
  %16 = load %struct.sVString*, %struct.sVString** %inherits, align 8
  %call18 = call i8* @vStringDeleteUnwrap(%struct.sVString* %16)
  %17 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %e, align 8
  %extensionFields = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %17, i32 0, i32 11
  %inheritance = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields, i32 0, i32 3
  store i8* %call18, i8** %inheritance, align 8
  br label %return

if.end19:                                         ; preds = %if.then15
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %do.end
  %18 = load %struct.sVString*, %struct.sVString** %inherits, align 8
  call void @vStringDelete(%struct.sVString* %18)
  br label %return

return:                                           ; preds = %if.end20, %if.then17
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseVariable(%struct.sTokenInfo* %token, i32 %r, i32 %protection) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %r.addr = alloca i32, align 4
  %protection.addr = alloca i32, align 4
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  store i32 %r, i32* %r.addr, align 4
  store i32 %protection, i32* %protection.addr, align 4
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %1 = load i32, i32* %r.addr, align 4
  %2 = load i32, i32* %protection.addr, align 4
  call void @parseSubobject(%struct.sTokenInfo* %0, i32 %1, i32 2, i32 %2)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseMethod(%struct.sTokenInfo* %token, i32 %r, i32 %protection) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %r.addr = alloca i32, align 4
  %protection.addr = alloca i32, align 4
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  store i32 %r, i32* %r.addr, align 4
  store i32 %protection, i32* %protection.addr, align 4
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %1 = load i32, i32* %r.addr, align 4
  %2 = load i32, i32* %protection.addr, align 4
  call void @parseSubobject(%struct.sTokenInfo* %0, i32 %1, i32 1, i32 %2)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseCommon(%struct.sTokenInfo* %token, i32 %r, i32 %protection) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %r.addr = alloca i32, align 4
  %protection.addr = alloca i32, align 4
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  store i32 %r, i32* %r.addr, align 4
  store i32 %protection, i32* %protection.addr, align 4
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %1 = load i32, i32* %r.addr, align 4
  %2 = load i32, i32* %protection.addr, align 4
  call void @parseSubobject(%struct.sTokenInfo* %0, i32 %1, i32 3, i32 %2)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseProc(%struct.sTokenInfo* %token, i32 %r, i32 %protection) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %r.addr = alloca i32, align 4
  %protection.addr = alloca i32, align 4
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  store i32 %r, i32* %r.addr, align 4
  store i32 %protection, i32* %protection.addr, align 4
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %1 = load i32, i32* %r.addr, align 4
  %2 = load i32, i32* %protection.addr, align 4
  call void @parseSubobject(%struct.sTokenInfo* %0, i32 %1, i32 4, i32 %2)
  ret void
}

declare void @skipToEndOfTclCmdline(%struct.sTokenInfo*) #1

declare void @tokenDestroy(%struct.sTokenInfo*) #1

declare i32 @getInputLanguage() #1

declare i32 @lookupKeyword(i8*, i32) #1

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

declare void @vStringCat(%struct.sVString*, %struct.sVString*) #1

declare %struct.sTagEntryInfo* @getEntryInCorkQueue(i32) #1

declare i8* @vStringDeleteUnwrap(%struct.sVString*) #1

declare void @vStringDelete(%struct.sVString*) #1

declare void @vStringResize(%struct.sVString*, i64) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseSubobject(%struct.sTokenInfo* %token, i32 %parent, i32 %kind, i32 %protection) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %parent.addr = alloca i32, align 4
  %kind.addr = alloca i32, align 4
  %protection.addr = alloca i32, align 4
  %r = alloca i32, align 4
  %e = alloca %struct.sTagEntryInfo, align 8
  %e5 = alloca %struct.sTagEntryInfo*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  store i32 %parent, i32* %parent.addr, align 4
  store i32 %kind, i32* %kind.addr, align 4
  store i32 %protection, i32* %protection.addr, align 4
  store i32 0, i32* %r, align 4
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
  %6 = load i32, i32* %kind.addr, align 4
  call void @initTagEntry(%struct.sTagEntryInfo* %e, i8* %5, i32 %6)
  %7 = load i32, i32* %parent.addr, align 4
  %extensionFields = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %e, i32 0, i32 11
  %scopeIndex = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields, i32 0, i32 7
  store i32 %7, i32* %scopeIndex, align 8
  %8 = load i32, i32* %protection.addr, align 4
  call void @attachProtectionMaybe(%struct.sTagEntryInfo* %e, i32 %8)
  %call = call i32 @makeTagEntry(%struct.sTagEntryInfo* %e)
  store i32 %call, i32* %r, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @skipToEndOfTclCmdline(%struct.sTokenInfo* %9)
  %10 = load i32, i32* %r, align 4
  %cmp2 = icmp ne i32 %10, 0
  br i1 %cmp2, label %if.then4, label %if.end8

if.then4:                                         ; preds = %if.end
  %11 = load i32, i32* %r, align 4
  %call6 = call %struct.sTagEntryInfo* @getEntryInCorkQueue(i32 %11)
  store %struct.sTagEntryInfo* %call6, %struct.sTagEntryInfo** %e5, align 8
  %12 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %lineNumber = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %12, i32 0, i32 4
  %13 = load i64, i64* %lineNumber, align 8
  %14 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %e5, align 8
  %extensionFields7 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %14, i32 0, i32 11
  %endLine = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields7, i32 0, i32 11
  store i64 %13, i64* %endLine, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %if.end
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @attachProtectionMaybe(%struct.sTagEntryInfo* %e, i32 %protection) #0 {
entry:
  %e.addr = alloca %struct.sTagEntryInfo*, align 8
  %protection.addr = alloca i32, align 4
  store %struct.sTagEntryInfo* %e, %struct.sTagEntryInfo** %e.addr, align 8
  store i32 %protection, i32* %protection.addr, align 4
  %0 = load i32, i32* %protection.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 3, label %sw.bb
    i32 2, label %sw.bb1
    i32 4, label %sw.bb4
  ]

sw.bb:                                            ; preds = %entry
  %1 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %e.addr, align 8
  %extensionFields = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %1, i32 0, i32 11
  %implementation = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields, i32 0, i32 2
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8** %implementation, align 8
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %2 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %e.addr, align 8
  %extensionFields2 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %2, i32 0, i32 11
  %implementation3 = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields2, i32 0, i32 2
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8** %implementation3, align 8
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %3 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %e.addr, align 8
  %extensionFields5 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %3, i32 0, i32 11
  %implementation6 = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields5, i32 0, i32 2
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8** %implementation6, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb4, %sw.bb1, %sw.bb
  ret void
}

declare void @scheduleRunningBaseparser(i32) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 10.0.0 (https://github.com/holzschu/clang.git 0cfc630fbdb62e96720b611a57123ef3eb13e297) (https://github.com/holzschu/llvm.git 0d8a71e39b28502c24718f7e74b5acbcfe36dfe0)"}
