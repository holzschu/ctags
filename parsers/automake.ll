; ModuleID = 'automake.c'
source_filename = "automake.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-ios11.0.0"

%struct.sBlacklist = type { i32, i8*, i64 }
%struct.sParserDependency = type { i32, i8*, i8* }
%struct.sKindDefinition = type { i8, i8, i8*, i8*, i8, i32, %struct.sRoleDesc*, %struct.sScopeSeparator*, i32, i32, i32, %struct.sKindDefinition*, %struct.sKindDefinition* }
%struct.sRoleDesc = type { i8, i8*, i8* }
%struct.sScopeSeparator = type { i32, i8* }
%struct.sAutomakeSubparser = type { %struct.sMakeSubparser, %struct.sHashTable*, i32 }
%struct.sMakeSubparser = type { %struct.sSubparser, void (%struct.sMakeSubparser*, i8*)*, void (%struct.sMakeSubparser*, i8*)*, void (%struct.sMakeSubparser*, i8*, i1, i1)* }
%struct.sSubparser = type { %struct.sSlaveParser*, %struct.sSubparser*, i8, i8, i32, void (%struct.sSubparser*)*, void (%struct.sSubparser*)*, void (%struct.sSubparser*, i8*)*, void (%struct.sSubparser*, %struct.sTagEntryInfo*, i32)* }
%struct.sSlaveParser = type { i32, i32, i8*, %struct.sSlaveParser* }
%struct.sTagEntryInfo = type { i8, i64, i8*, i32, %struct._MIOPos, i32, i8*, i8*, i32, [2 x i8], i8*, %struct.anon, i32, [5 x %struct.sTagField], %struct.sPtrArray*, i32, i8*, i64 }
%struct._MIOPos = type { i32, %union.anon.0 }
%union.anon.0 = type { i64 }
%struct.anon = type { i8*, i8*, i8*, i8*, i32, i32, i8*, i32, i8*, [2 x i8*], i32, i64 }
%struct.sTagField = type { i32, i8*, i8 }
%struct.sPtrArray = type opaque
%struct.sHashTable = type opaque
%struct.sParserDefinition = type { i8*, %struct.sKindDefinition*, i32, i8**, i8**, i8**, void (i32)*, void (i32, i1)*, void ()*, i32 (i32)*, i8* (%struct._MIO*, i32*, i32)**, i32, i8, i8, i8, i8, %struct.tagRegexTable*, i32, %struct.keywordTable*, i32, %struct.sTagXpathTableTable*, i32, i8, %struct.sFieldDefinition*, i32, %struct.sXtagDefinition*, i32, %struct.sParserDependency*, i32, %struct.sParameterHandlerTable*, i32, %struct.sXpathFileSpec*, i32, i32, i8 }
%struct._MIO = type opaque
%struct.tagRegexTable = type { i8*, i8*, i8*, i8*, i8*, i8 }
%struct.keywordTable = type { i8*, i32 }
%struct.sTagXpathTableTable = type { %struct.sTagXpathTable*, i32 }
%struct.sTagXpathTable = type { i8*, i32, %union.anon, i8* }
%union.anon = type { %struct.sTagXpathMakeTagSpec }
%struct.sTagXpathMakeTagSpec = type { i32, i32, void (i8*, %struct.sTagXpathMakeTagSpec*, %struct.sTagEntryInfo*, i8*)* }
%struct.sFieldDefinition = type { i8, i8*, i8*, i8, [5 x i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)*], i1 (%struct.sTagEntryInfo*)*, i32, i32 }
%struct.sVString = type { i64, i64, i8* }
%struct.sXtagDefinition = type { i8, i8, i8*, i8*, i1 (%struct.sXtagDefinition*)*, i1 (%struct.sXtagDefinition*)*, i32 }
%struct.sParameterHandlerTable = type { i8*, i8*, void (i32, i8*, i8*)* }
%struct.sXpathFileSpec = type { i8*, i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [6 x i8] c"EXTRA\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"noinst\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"check\00", align 1
@am_blacklist = global [4 x %struct.sBlacklist] [%struct.sBlacklist { i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i64 5 }, %struct.sBlacklist { i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i64 6 }, %struct.sBlacklist { i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i64 5 }, %struct.sBlacklist zeroinitializer], align 8
@.str.3 = private unnamed_addr constant [9 x i8] c"Automake\00", align 1
@dependencies = internal global [1 x %struct.sParserDependency] [%struct.sParserDependency { i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* bitcast (%struct.sAutomakeSubparser* @automakeSubparser to i8*) }], align 8
@AutomakeKinds = internal global [8 x %struct.sKindDefinition] [%struct.sKindDefinition { i8 1, i8 100, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0), i8 0, i32 6, %struct.sRoleDesc* getelementptr inbounds ([6 x %struct.sRoleDesc], [6 x %struct.sRoleDesc]* @AutomakeDirectoryRoles, i32 0, i32 0), %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 80, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* getelementptr inbounds ([1 x %struct.sScopeSeparator], [1 x %struct.sScopeSeparator]* @AutomakeSeparators, i32 0, i32 0), i32 1, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 77, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* getelementptr inbounds ([1 x %struct.sScopeSeparator], [1 x %struct.sScopeSeparator]* @AutomakeSeparators, i32 0, i32 0), i32 1, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 84, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* getelementptr inbounds ([1 x %struct.sScopeSeparator], [1 x %struct.sScopeSeparator]* @AutomakeSeparators, i32 0, i32 0), i32 1, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 76, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* getelementptr inbounds ([1 x %struct.sScopeSeparator], [1 x %struct.sScopeSeparator]* @AutomakeSeparators, i32 0, i32 0), i32 1, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 83, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* getelementptr inbounds ([1 x %struct.sScopeSeparator], [1 x %struct.sScopeSeparator]* @AutomakeSeparators, i32 0, i32 0), i32 1, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* getelementptr inbounds ([1 x %struct.sScopeSeparator], [1 x %struct.sScopeSeparator]* @AutomakeSeparators, i32 0, i32 0), i32 1, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 99, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i32 0, i32 0), i8 1, i32 1, %struct.sRoleDesc* getelementptr inbounds ([1 x %struct.sRoleDesc], [1 x %struct.sRoleDesc]* @AutomakeConditionRoles, i32 0, i32 0), %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }], align 8
@extensions = internal constant [2 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.39, i32 0, i32 0), i8* null], align 8
@patterns = internal constant [2 x i8*] [i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i32 0, i32 0), i8* null], align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"Make\00", align 1
@automakeSubparser = internal global %struct.sAutomakeSubparser { %struct.sMakeSubparser { %struct.sSubparser { %struct.sSlaveParser* null, %struct.sSubparser* null, i8 0, i8 0, i32 2, void (%struct.sSubparser*)* @inputStart, void (%struct.sSubparser*)* @inputEnd, void (%struct.sSubparser*, i8*)* null, void (%struct.sSubparser*, %struct.sTagEntryInfo*, i32)* null }, void (%struct.sMakeSubparser*, i8*)* @valueCallback, void (%struct.sMakeSubparser*, i8*)* @directiveCallback, void (%struct.sMakeSubparser*, i8*, i1, i1)* @newMacroCallback }, %struct.sHashTable* null, i32 0 }, align 8
@.str.5 = private unnamed_addr constant [3 x i8] c"if\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"dir\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"_PROGRAMS\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"_MANS\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"_LTLIBRARIES\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"_LIBRARIES\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"_SCRIPTS\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"_DATA\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"dist_\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"directory\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"directories\00", align 1
@AutomakeDirectoryRoles = internal global [6 x %struct.sRoleDesc] [%struct.sRoleDesc { i8 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.30, i32 0, i32 0) }, %struct.sRoleDesc { i8 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.31, i32 0, i32 0) }, %struct.sRoleDesc { i8 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.32, i32 0, i32 0) }, %struct.sRoleDesc { i8 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.33, i32 0, i32 0) }, %struct.sRoleDesc { i8 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.34, i32 0, i32 0) }, %struct.sRoleDesc { i8 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.35, i32 0, i32 0) }], align 8
@.str.16 = private unnamed_addr constant [8 x i8] c"program\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"programs\00", align 1
@AutomakeSeparators = internal global [1 x %struct.sScopeSeparator] [%struct.sScopeSeparator { i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i32 0, i32 0) }], align 8
@.str.18 = private unnamed_addr constant [4 x i8] c"man\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"manuals\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"ltlibrary\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"ltlibraries\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"library\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"libraries\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"script\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"scripts\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"datum\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"condition\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"conditions\00", align 1
@AutomakeConditionRoles = internal global [1 x %struct.sRoleDesc] [%struct.sRoleDesc { i8 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.38, i32 0, i32 0) }], align 8
@.str.30 = private unnamed_addr constant [31 x i8] c"directory for PROGRAMS primary\00", align 1
@.str.31 = private unnamed_addr constant [27 x i8] c"directory for MANS primary\00", align 1
@.str.32 = private unnamed_addr constant [34 x i8] c"directory for LTLIBRARIES primary\00", align 1
@.str.33 = private unnamed_addr constant [32 x i8] c"directory for LIBRARIES primary\00", align 1
@.str.34 = private unnamed_addr constant [30 x i8] c"directory for SCRIPTS primary\00", align 1
@.str.35 = private unnamed_addr constant [27 x i8] c"directory for DATA primary\00", align 1
@.str.36 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"branched\00", align 1
@.str.38 = private unnamed_addr constant [19 x i8] c"used for branching\00", align 1
@.str.39 = private unnamed_addr constant [3 x i8] c"am\00", align 1
@.str.40 = private unnamed_addr constant [12 x i8] c"Makefile.am\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sParserDefinition* @AutomakeParser() #0 {
entry:
  %def = alloca %struct.sParserDefinition*, align 8
  %call = call %struct.sParserDefinition* @parserNew(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  store %struct.sParserDefinition* %call, %struct.sParserDefinition** %def, align 8
  %0 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %dependencies = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %0, i32 0, i32 27
  store %struct.sParserDependency* getelementptr inbounds ([1 x %struct.sParserDependency], [1 x %struct.sParserDependency]* @dependencies, i64 0, i64 0), %struct.sParserDependency** %dependencies, align 8
  %1 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %dependencyCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %1, i32 0, i32 28
  store i32 1, i32* %dependencyCount, align 8
  %2 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %2, i32 0, i32 1
  store %struct.sKindDefinition* getelementptr inbounds ([8 x %struct.sKindDefinition], [8 x %struct.sKindDefinition]* @AutomakeKinds, i64 0, i64 0), %struct.sKindDefinition** %kindTable, align 8
  %3 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %3, i32 0, i32 2
  store i32 8, i32* %kindCount, align 8
  %4 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %extensions = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %4, i32 0, i32 3
  store i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @extensions, i64 0, i64 0), i8*** %extensions, align 8
  %5 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %patterns = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %5, i32 0, i32 4
  store i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @patterns, i64 0, i64 0), i8*** %patterns, align 8
  %6 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %parser = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %6, i32 0, i32 8
  store void ()* @findAutomakeTags, void ()** %parser, align 8
  %7 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %useCork = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %7, i32 0, i32 12
  store i8 1, i8* %useCork, align 4
  %8 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  ret %struct.sParserDefinition* %8
}

declare %struct.sParserDefinition* @parserNew(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @findAutomakeTags() #0 {
entry:
  call void @scheduleRunningBaseparser(i32 0)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @inputStart(%struct.sSubparser* %s) #0 {
entry:
  %s.addr = alloca %struct.sSubparser*, align 8
  %automake = alloca %struct.sAutomakeSubparser*, align 8
  store %struct.sSubparser* %s, %struct.sSubparser** %s.addr, align 8
  %0 = load %struct.sSubparser*, %struct.sSubparser** %s.addr, align 8
  %1 = bitcast %struct.sSubparser* %0 to %struct.sAutomakeSubparser*
  store %struct.sAutomakeSubparser* %1, %struct.sAutomakeSubparser** %automake, align 8
  %call = call %struct.sHashTable* @hashTableNew(i32 11, i32 (i8*)* @hashCstrhash, i1 (i8*, i8*)* @hashCstreq, void (i8*)* @eFree, void (i8*)* @eFree)
  %2 = load %struct.sAutomakeSubparser*, %struct.sAutomakeSubparser** %automake, align 8
  %directories = getelementptr inbounds %struct.sAutomakeSubparser, %struct.sAutomakeSubparser* %2, i32 0, i32 1
  store %struct.sHashTable* %call, %struct.sHashTable** %directories, align 8
  %3 = load %struct.sAutomakeSubparser*, %struct.sAutomakeSubparser** %automake, align 8
  %index = getelementptr inbounds %struct.sAutomakeSubparser, %struct.sAutomakeSubparser* %3, i32 0, i32 2
  store i32 0, i32* %index, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @inputEnd(%struct.sSubparser* %s) #0 {
entry:
  %s.addr = alloca %struct.sSubparser*, align 8
  %automake = alloca %struct.sAutomakeSubparser*, align 8
  store %struct.sSubparser* %s, %struct.sSubparser** %s.addr, align 8
  %0 = load %struct.sSubparser*, %struct.sSubparser** %s.addr, align 8
  %1 = bitcast %struct.sSubparser* %0 to %struct.sAutomakeSubparser*
  store %struct.sAutomakeSubparser* %1, %struct.sAutomakeSubparser** %automake, align 8
  %2 = load %struct.sAutomakeSubparser*, %struct.sAutomakeSubparser** %automake, align 8
  %directories = getelementptr inbounds %struct.sAutomakeSubparser, %struct.sAutomakeSubparser* %2, i32 0, i32 1
  %3 = load %struct.sHashTable*, %struct.sHashTable** %directories, align 8
  call void @hashTableDelete(%struct.sHashTable* %3)
  %4 = load %struct.sAutomakeSubparser*, %struct.sAutomakeSubparser** %automake, align 8
  %directories1 = getelementptr inbounds %struct.sAutomakeSubparser, %struct.sAutomakeSubparser* %4, i32 0, i32 1
  store %struct.sHashTable* null, %struct.sHashTable** %directories1, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @valueCallback(%struct.sMakeSubparser* %make, i8* %name) #0 {
entry:
  %make.addr = alloca %struct.sMakeSubparser*, align 8
  %name.addr = alloca i8*, align 8
  %automake = alloca %struct.sAutomakeSubparser*, align 8
  %p = alloca i32, align 4
  %parent = alloca %struct.sTagEntryInfo*, align 8
  %k = alloca i32, align 4
  %elt = alloca %struct.sTagEntryInfo, align 8
  store %struct.sMakeSubparser* %make, %struct.sMakeSubparser** %make.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load %struct.sMakeSubparser*, %struct.sMakeSubparser** %make.addr, align 8
  %1 = bitcast %struct.sMakeSubparser* %0 to %struct.sAutomakeSubparser*
  store %struct.sAutomakeSubparser* %1, %struct.sAutomakeSubparser** %automake, align 8
  %2 = load %struct.sAutomakeSubparser*, %struct.sAutomakeSubparser** %automake, align 8
  %index = getelementptr inbounds %struct.sAutomakeSubparser, %struct.sAutomakeSubparser* %2, i32 0, i32 2
  %3 = load i32, i32* %index, align 8
  store i32 %3, i32* %p, align 4
  %4 = load i32, i32* %p, align 4
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end8

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %p, align 4
  %call = call %struct.sTagEntryInfo* @getEntryInCorkQueue(i32 %5)
  store %struct.sTagEntryInfo* %call, %struct.sTagEntryInfo** %parent, align 8
  %6 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %parent, align 8
  %kindIndex = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %6, i32 0, i32 8
  %7 = load i32, i32* %kindIndex, align 8
  %cmp1 = icmp eq i32 %7, 0
  br i1 %cmp1, label %land.lhs.true, label %if.end8

land.lhs.true:                                    ; preds = %if.end
  %8 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %parent, align 8
  %extensionFields = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %8, i32 0, i32 11
  %roleIndex = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields, i32 0, i32 10
  %9 = load i32, i32* %roleIndex, align 8
  %cmp2 = icmp ne i32 %9, -1
  br i1 %cmp2, label %if.then3, label %if.end8

if.then3:                                         ; preds = %land.lhs.true
  %10 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %parent, align 8
  %extensionFields4 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %10, i32 0, i32 11
  %roleIndex5 = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields4, i32 0, i32 10
  %11 = load i32, i32* %roleIndex5, align 8
  %add = add nsw i32 1, %11
  store i32 %add, i32* %k, align 4
  %12 = load i8*, i8** %name.addr, align 8
  %13 = load i32, i32* %k, align 4
  call void @initTagEntry(%struct.sTagEntryInfo* %elt, i8* %12, i32 %13)
  %14 = load i32, i32* %p, align 4
  %extensionFields6 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %elt, i32 0, i32 11
  %scopeIndex = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields6, i32 0, i32 7
  store i32 %14, i32* %scopeIndex, align 8
  %call7 = call i32 @makeTagEntry(%struct.sTagEntryInfo* %elt)
  br label %if.end8

if.end8:                                          ; preds = %if.then, %if.then3, %land.lhs.true, %if.end
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @directiveCallback(%struct.sMakeSubparser* %make, i8* %directive) #0 {
entry:
  %make.addr = alloca %struct.sMakeSubparser*, align 8
  %directive.addr = alloca i8*, align 8
  %c = alloca i32, align 4
  %condition = alloca %struct.sVString*, align 8
  store %struct.sMakeSubparser* %make, %struct.sMakeSubparser** %make.addr, align 8
  store i8* %directive, i8** %directive.addr, align 8
  %0 = load i8*, i8** %directive.addr, align 8
  %call = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end14, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call1, %struct.sVString** %condition, align 8
  %call2 = call i32 @nextChar()
  %call3 = call i32 @skipToNonWhite(i32 %call2)
  store i32 %call3, i32* %c, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.then
  %1 = load i32, i32* %c, align 4
  %cmp = icmp ne i32 %1, -1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %2 = load i32, i32* %c, align 4
  %cmp4 = icmp ne i32 %2, 10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %3 = phi i1 [ false, %while.cond ], [ %cmp4, %land.rhs ]
  br i1 %3, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %4 = load i32, i32* %c, align 4
  %cmp5 = icmp ne i32 %4, 33
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %while.body
  %5 = load %struct.sVString*, %struct.sVString** %condition, align 8
  %6 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %5, i32 %6)
  br label %if.end

if.end:                                           ; preds = %if.then6, %while.body
  %call7 = call i32 @nextChar()
  store i32 %call7, i32* %c, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %7 = load i32, i32* %c, align 4
  %cmp8 = icmp eq i32 %7, 10
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %while.end
  %8 = load i32, i32* %c, align 4
  call void @ungetcToInputFile(i32 %8)
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %while.end
  %9 = load %struct.sVString*, %struct.sVString** %condition, align 8
  call void @vStringStripTrailing(%struct.sVString* %9)
  %10 = load %struct.sVString*, %struct.sVString** %condition, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %10, i32 0, i32 0
  %11 = load i64, i64* %length, align 8
  %cmp11 = icmp ugt i64 %11, 0
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end10
  %12 = load %struct.sVString*, %struct.sVString** %condition, align 8
  call void @refCondtionAM(%struct.sVString* %12)
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end10
  %13 = load %struct.sVString*, %struct.sVString** %condition, align 8
  call void @vStringDelete(%struct.sVString* %13)
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @newMacroCallback(%struct.sMakeSubparser* %make, i8* %name, i1 zeroext %with_define_directive, i1 zeroext %appending) #0 {
entry:
  %make.addr = alloca %struct.sMakeSubparser*, align 8
  %name.addr = alloca i8*, align 8
  %with_define_directive.addr = alloca i8, align 1
  %appending.addr = alloca i8, align 1
  %automake = alloca %struct.sAutomakeSubparser*, align 8
  store %struct.sMakeSubparser* %make, %struct.sMakeSubparser** %make.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  %frombool = zext i1 %with_define_directive to i8
  store i8 %frombool, i8* %with_define_directive.addr, align 1
  %frombool1 = zext i1 %appending to i8
  store i8 %frombool1, i8* %appending.addr, align 1
  %0 = load %struct.sMakeSubparser*, %struct.sMakeSubparser** %make.addr, align 8
  %1 = bitcast %struct.sMakeSubparser* %0 to %struct.sAutomakeSubparser*
  store %struct.sAutomakeSubparser* %1, %struct.sAutomakeSubparser** %automake, align 8
  %2 = load %struct.sAutomakeSubparser*, %struct.sAutomakeSubparser** %automake, align 8
  %index = getelementptr inbounds %struct.sAutomakeSubparser, %struct.sAutomakeSubparser* %2, i32 0, i32 2
  store i32 0, i32* %index, align 8
  %3 = load i8, i8* %with_define_directive.addr, align 1
  %tobool = trunc i8 %3 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.sAutomakeSubparser*, %struct.sAutomakeSubparser** %automake, align 8
  %5 = load i8*, i8** %name.addr, align 8
  %6 = load i8, i8* %appending.addr, align 1
  %tobool2 = trunc i8 %6 to i1
  %call = call zeroext i1 @automakeMakeTag(%struct.sAutomakeSubparser* %4, i8* %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i1 zeroext %tobool2, i32 0, i32 -1, %struct.sBlacklist* getelementptr inbounds ([4 x %struct.sBlacklist], [4 x %struct.sBlacklist]* @am_blacklist, i64 0, i64 0))
  br i1 %call, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %7 = load %struct.sAutomakeSubparser*, %struct.sAutomakeSubparser** %automake, align 8
  %8 = load i8*, i8** %name.addr, align 8
  %9 = load i8, i8* %appending.addr, align 1
  %tobool3 = trunc i8 %9 to i1
  %call4 = call zeroext i1 @automakeMakeTag(%struct.sAutomakeSubparser* %7, i8* %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i1 zeroext %tobool3, i32 0, i32 0, %struct.sBlacklist* getelementptr inbounds ([4 x %struct.sBlacklist], [4 x %struct.sBlacklist]* @am_blacklist, i64 0, i64 0))
  br i1 %call4, label %lor.end, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %10 = load %struct.sAutomakeSubparser*, %struct.sAutomakeSubparser** %automake, align 8
  %11 = load i8*, i8** %name.addr, align 8
  %12 = load i8, i8* %appending.addr, align 1
  %tobool6 = trunc i8 %12 to i1
  %call7 = call zeroext i1 @automakeMakeTag(%struct.sAutomakeSubparser* %10, i8* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i1 zeroext %tobool6, i32 0, i32 1, %struct.sBlacklist* getelementptr inbounds ([4 x %struct.sBlacklist], [4 x %struct.sBlacklist]* @am_blacklist, i64 0, i64 0))
  br i1 %call7, label %lor.end, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %lor.lhs.false5
  %13 = load %struct.sAutomakeSubparser*, %struct.sAutomakeSubparser** %automake, align 8
  %14 = load i8*, i8** %name.addr, align 8
  %15 = load i8, i8* %appending.addr, align 1
  %tobool9 = trunc i8 %15 to i1
  %call10 = call zeroext i1 @automakeMakeTag(%struct.sAutomakeSubparser* %13, i8* %14, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i1 zeroext %tobool9, i32 0, i32 2, %struct.sBlacklist* getelementptr inbounds ([4 x %struct.sBlacklist], [4 x %struct.sBlacklist]* @am_blacklist, i64 0, i64 0))
  br i1 %call10, label %lor.end, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %lor.lhs.false8
  %16 = load %struct.sAutomakeSubparser*, %struct.sAutomakeSubparser** %automake, align 8
  %17 = load i8*, i8** %name.addr, align 8
  %18 = load i8, i8* %appending.addr, align 1
  %tobool12 = trunc i8 %18 to i1
  %call13 = call zeroext i1 @automakeMakeTag(%struct.sAutomakeSubparser* %16, i8* %17, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i1 zeroext %tobool12, i32 0, i32 3, %struct.sBlacklist* getelementptr inbounds ([4 x %struct.sBlacklist], [4 x %struct.sBlacklist]* @am_blacklist, i64 0, i64 0))
  br i1 %call13, label %lor.end, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false11
  %19 = load %struct.sAutomakeSubparser*, %struct.sAutomakeSubparser** %automake, align 8
  %20 = load i8*, i8** %name.addr, align 8
  %21 = load i8, i8* %appending.addr, align 1
  %tobool15 = trunc i8 %21 to i1
  %call16 = call zeroext i1 @automakeMakeTag(%struct.sAutomakeSubparser* %19, i8* %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i1 zeroext %tobool15, i32 0, i32 4, %struct.sBlacklist* getelementptr inbounds ([4 x %struct.sBlacklist], [4 x %struct.sBlacklist]* @am_blacklist, i64 0, i64 0))
  br i1 %call16, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false14
  %22 = load %struct.sAutomakeSubparser*, %struct.sAutomakeSubparser** %automake, align 8
  %23 = load i8*, i8** %name.addr, align 8
  %24 = load i8, i8* %appending.addr, align 1
  %tobool17 = trunc i8 %24 to i1
  %call18 = call zeroext i1 @automakeMakeTag(%struct.sAutomakeSubparser* %22, i8* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i1 zeroext %tobool17, i32 0, i32 5, %struct.sBlacklist* getelementptr inbounds ([4 x %struct.sBlacklist], [4 x %struct.sBlacklist]* @am_blacklist, i64 0, i64 0))
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false14, %lor.lhs.false11, %lor.lhs.false8, %lor.lhs.false5, %lor.lhs.false, %if.end
  %25 = phi i1 [ true, %lor.lhs.false14 ], [ true, %lor.lhs.false11 ], [ true, %lor.lhs.false8 ], [ true, %lor.lhs.false5 ], [ true, %lor.lhs.false ], [ true, %if.end ], [ %call18, %lor.rhs ]
  %lor.ext = zext i1 %25 to i32
  br label %return

return:                                           ; preds = %lor.end, %if.then
  ret void
}

declare %struct.sHashTable* @hashTableNew(i32, i32 (i8*)*, i1 (i8*, i8*)*, void (i8*)*, void (i8*)*) #1

declare i32 @hashCstrhash(i8*) #1

declare zeroext i1 @hashCstreq(i8*, i8*) #1

declare void @eFree(i8*) #1

declare void @hashTableDelete(%struct.sHashTable*) #1

declare %struct.sTagEntryInfo* @getEntryInCorkQueue(i32) #1

declare void @initTagEntry(%struct.sTagEntryInfo*, i8*, i32) #1

declare i32 @makeTagEntry(%struct.sTagEntryInfo*) #1

declare i32 @strcmp(i8*, i8*) #1

declare %struct.sVString* @vStringNew() #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @skipToNonWhite(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* %c.addr, align 4
  %cmp = icmp ne i32 %0, 10
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %1 = load i32, i32* %c.addr, align 4
  %call = call i32 @isspace(i32 %1) #3
  %tobool = icmp ne i32 %call, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %2 = phi i1 [ false, %while.cond ], [ %tobool, %land.rhs ]
  br i1 %2, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %call1 = call i32 @nextChar()
  store i32 %call1, i32* %c.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %3 = load i32, i32* %c.addr, align 4
  ret i32 %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @nextChar() #0 {
entry:
  %c = alloca i32, align 4
  %call = call i32 @getcFromInputFile()
  store i32 %call, i32* %c, align 4
  %0 = load i32, i32* %c, align 4
  %cmp = icmp eq i32 %0, 92
  br i1 %cmp, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %call1 = call i32 @getcFromInputFile()
  store i32 %call1, i32* %c, align 4
  %1 = load i32, i32* %c, align 4
  %cmp2 = icmp eq i32 %1, 10
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  %call4 = call i32 @nextChar()
  store i32 %call4, i32* %c, align 4
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry
  %2 = load i32, i32* %c, align 4
  ret i32 %2
}

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

declare void @vStringStripTrailing(%struct.sVString*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @refCondtionAM(%struct.sVString* %directive) #0 {
entry:
  %directive.addr = alloca %struct.sVString*, align 8
  store %struct.sVString* %directive, %struct.sVString** %directive.addr, align 8
  %0 = load %struct.sVString*, %struct.sVString** %directive.addr, align 8
  %call = call i32 @makeSimpleRefTag(%struct.sVString* %0, i32 7, i32 0)
  ret void
}

declare void @vStringDelete(%struct.sVString*) #1

; Function Attrs: nounwind readonly
declare i32 @isspace(i32) #2

declare i32 @getcFromInputFile() #1

declare void @vStringResize(%struct.sVString*, i64) #1

declare i32 @makeSimpleRefTag(%struct.sVString*, i32, i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @automakeMakeTag(%struct.sAutomakeSubparser* %automake, i8* %name, i8* %suffix, i1 zeroext %appending, i32 %kindex, i32 %rindex, %struct.sBlacklist* %blacklist) #0 {
entry:
  %retval = alloca i1, align 1
  %automake.addr = alloca %struct.sAutomakeSubparser*, align 8
  %name.addr = alloca i8*, align 8
  %suffix.addr = alloca i8*, align 8
  %appending.addr = alloca i8, align 1
  %kindex.addr = alloca i32, align 4
  %rindex.addr = alloca i32, align 4
  %blacklist.addr = alloca %struct.sBlacklist*, align 8
  %expected_len = alloca i64, align 8
  %len = alloca i64, align 8
  %tail = alloca i8*, align 8
  %subname = alloca %struct.sVString*, align 8
  %i = alloca i32, align 4
  store %struct.sAutomakeSubparser* %automake, %struct.sAutomakeSubparser** %automake.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* %suffix, i8** %suffix.addr, align 8
  %frombool = zext i1 %appending to i8
  store i8 %frombool, i8* %appending.addr, align 1
  store i32 %kindex, i32* %kindex.addr, align 4
  store i32 %rindex, i32* %rindex.addr, align 4
  store %struct.sBlacklist* %blacklist, %struct.sBlacklist** %blacklist.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %call = call i64 @strlen(i8* %0)
  store i64 %call, i64* %len, align 8
  %1 = load i8*, i8** %suffix.addr, align 8
  %call1 = call i64 @strlen(i8* %1)
  store i64 %call1, i64* %expected_len, align 8
  %2 = load i64, i64* %len, align 8
  %3 = load i64, i64* %expected_len, align 8
  %cmp = icmp ule i64 %2, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load %struct.sBlacklist*, %struct.sBlacklist** %blacklist.addr, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds %struct.sBlacklist, %struct.sBlacklist* %4, i64 %idxprom
  %type = getelementptr inbounds %struct.sBlacklist, %struct.sBlacklist* %arrayidx, i32 0, i32 0
  %6 = load i32, i32* %type, align 8
  %cmp2 = icmp ne i32 %6, 0
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i8*, i8** %name.addr, align 8
  %8 = load %struct.sBlacklist*, %struct.sBlacklist** %blacklist.addr, align 8
  %9 = load i32, i32* %i, align 4
  %idx.ext = sext i32 %9 to i64
  %add.ptr = getelementptr inbounds %struct.sBlacklist, %struct.sBlacklist* %8, i64 %idx.ext
  %call3 = call zeroext i1 @bl_check(i8* %7, %struct.sBlacklist* %add.ptr)
  %conv = zext i1 %call3 to i32
  %cmp4 = icmp eq i32 %conv, 0
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %for.body
  store i1 false, i1* %retval, align 1
  br label %return

if.end7:                                          ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end7
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load i8*, i8** %name.addr, align 8
  %12 = load i64, i64* %len, align 8
  %add.ptr8 = getelementptr inbounds i8, i8* %11, i64 %12
  %13 = load i64, i64* %expected_len, align 8
  %idx.neg = sub i64 0, %13
  %add.ptr9 = getelementptr inbounds i8, i8* %add.ptr8, i64 %idx.neg
  store i8* %add.ptr9, i8** %tail, align 8
  %14 = load i8*, i8** %tail, align 8
  %15 = load i8*, i8** %suffix.addr, align 8
  %call10 = call i32 @strcmp(i8* %14, i8* %15)
  %tobool = icmp ne i32 %call10, 0
  br i1 %tobool, label %if.then11, label %if.end12

if.then11:                                        ; preds = %for.end
  store i1 false, i1* %retval, align 1
  br label %return

if.end12:                                         ; preds = %for.end
  %call13 = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call13, %struct.sVString** %subname, align 8
  %16 = load i8*, i8** %name.addr, align 8
  %call14 = call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i64 5)
  %cmp15 = icmp eq i32 %call14, 0
  br i1 %cmp15, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.end12
  %17 = load %struct.sVString*, %struct.sVString** %subname, align 8
  %18 = load i8*, i8** %name.addr, align 8
  %add.ptr18 = getelementptr inbounds i8, i8* %18, i64 5
  %19 = load i64, i64* %len, align 8
  %20 = load i64, i64* %expected_len, align 8
  %sub = sub i64 %19, %20
  %sub19 = sub i64 %sub, 5
  call void @vStringNCopyS(%struct.sVString* %17, i8* %add.ptr18, i64 %sub19)
  br label %if.end21

if.else:                                          ; preds = %if.end12
  %21 = load %struct.sVString*, %struct.sVString** %subname, align 8
  %22 = load i8*, i8** %name.addr, align 8
  %23 = load i64, i64* %len, align 8
  %24 = load i64, i64* %expected_len, align 8
  %sub20 = sub i64 %23, %24
  call void @vStringNCopyS(%struct.sVString* %21, i8* %22, i64 %sub20)
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then17
  %25 = load i32, i32* %rindex.addr, align 4
  %cmp22 = icmp eq i32 %25, -1
  br i1 %cmp22, label %if.then24, label %if.else27

if.then24:                                        ; preds = %if.end21
  %26 = load %struct.sVString*, %struct.sVString** %subname, align 8
  %27 = load i32, i32* %kindex.addr, align 4
  %call25 = call i32 @makeSimpleTag(%struct.sVString* %26, i32 %27)
  %28 = load %struct.sAutomakeSubparser*, %struct.sAutomakeSubparser** %automake.addr, align 8
  %index = getelementptr inbounds %struct.sAutomakeSubparser, %struct.sAutomakeSubparser* %28, i32 0, i32 2
  store i32 %call25, i32* %index, align 8
  %29 = load %struct.sAutomakeSubparser*, %struct.sAutomakeSubparser** %automake.addr, align 8
  %directories = getelementptr inbounds %struct.sAutomakeSubparser, %struct.sAutomakeSubparser* %29, i32 0, i32 1
  %30 = load %struct.sHashTable*, %struct.sHashTable** %directories, align 8
  %31 = load %struct.sVString*, %struct.sVString** %subname, align 8
  %32 = load %struct.sAutomakeSubparser*, %struct.sAutomakeSubparser** %automake.addr, align 8
  %index26 = getelementptr inbounds %struct.sAutomakeSubparser, %struct.sAutomakeSubparser* %32, i32 0, i32 2
  %33 = load i32, i32* %index26, align 8
  call void @addAutomakeDirectory(%struct.sHashTable* %30, %struct.sVString* %31, i32 %33)
  br label %if.end43

if.else27:                                        ; preds = %if.end21
  %34 = load %struct.sAutomakeSubparser*, %struct.sAutomakeSubparser** %automake.addr, align 8
  %index28 = getelementptr inbounds %struct.sAutomakeSubparser, %struct.sAutomakeSubparser* %34, i32 0, i32 2
  store i32 0, i32* %index28, align 8
  %35 = load i8, i8* %appending.addr, align 1
  %tobool29 = trunc i8 %35 to i1
  br i1 %tobool29, label %if.then30, label %if.end34

if.then30:                                        ; preds = %if.else27
  %36 = load %struct.sAutomakeSubparser*, %struct.sAutomakeSubparser** %automake.addr, align 8
  %directories31 = getelementptr inbounds %struct.sAutomakeSubparser, %struct.sAutomakeSubparser* %36, i32 0, i32 1
  %37 = load %struct.sHashTable*, %struct.sHashTable** %directories31, align 8
  %38 = load %struct.sVString*, %struct.sVString** %subname, align 8
  %call32 = call i32 @lookupAutomakeDirectory(%struct.sHashTable* %37, %struct.sVString* %38)
  %39 = load %struct.sAutomakeSubparser*, %struct.sAutomakeSubparser** %automake.addr, align 8
  %index33 = getelementptr inbounds %struct.sAutomakeSubparser, %struct.sAutomakeSubparser* %39, i32 0, i32 2
  store i32 %call32, i32* %index33, align 8
  br label %if.end34

if.end34:                                         ; preds = %if.then30, %if.else27
  %40 = load i8, i8* %appending.addr, align 1
  %tobool35 = trunc i8 %40 to i1
  br i1 %tobool35, label %lor.lhs.false, label %if.then39

lor.lhs.false:                                    ; preds = %if.end34
  %41 = load %struct.sAutomakeSubparser*, %struct.sAutomakeSubparser** %automake.addr, align 8
  %index36 = getelementptr inbounds %struct.sAutomakeSubparser, %struct.sAutomakeSubparser* %41, i32 0, i32 2
  %42 = load i32, i32* %index36, align 8
  %cmp37 = icmp eq i32 %42, 0
  br i1 %cmp37, label %if.then39, label %if.end42

if.then39:                                        ; preds = %lor.lhs.false, %if.end34
  %43 = load %struct.sVString*, %struct.sVString** %subname, align 8
  %44 = load i32, i32* %kindex.addr, align 4
  %45 = load i32, i32* %rindex.addr, align 4
  %call40 = call i32 @makeSimpleRefTag(%struct.sVString* %43, i32 %44, i32 %45)
  %46 = load %struct.sAutomakeSubparser*, %struct.sAutomakeSubparser** %automake.addr, align 8
  %index41 = getelementptr inbounds %struct.sAutomakeSubparser, %struct.sAutomakeSubparser* %46, i32 0, i32 2
  store i32 %call40, i32* %index41, align 8
  br label %if.end42

if.end42:                                         ; preds = %if.then39, %lor.lhs.false
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %if.then24
  %47 = load %struct.sVString*, %struct.sVString** %subname, align 8
  call void @vStringDelete(%struct.sVString* %47)
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end43, %if.then11, %if.then6, %if.then
  %48 = load i1, i1* %retval, align 1
  ret i1 %48
}

declare i64 @strlen(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @bl_check(i8* %name, %struct.sBlacklist* %blacklist) #0 {
entry:
  %retval = alloca i1, align 1
  %name.addr = alloca i8*, align 8
  %blacklist.addr = alloca %struct.sBlacklist*, align 8
  store i8* %name, i8** %name.addr, align 8
  store %struct.sBlacklist* %blacklist, %struct.sBlacklist** %blacklist.addr, align 8
  %0 = load %struct.sBlacklist*, %struct.sBlacklist** %blacklist.addr, align 8
  %type = getelementptr inbounds %struct.sBlacklist, %struct.sBlacklist* %0, i32 0, i32 0
  %1 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.sBlacklist*, %struct.sBlacklist** %blacklist.addr, align 8
  %substr = getelementptr inbounds %struct.sBlacklist, %struct.sBlacklist* %2, i32 0, i32 1
  %3 = load i8*, i8** %substr, align 8
  %4 = load i8*, i8** %name.addr, align 8
  %5 = load %struct.sBlacklist*, %struct.sBlacklist** %blacklist.addr, align 8
  %len = getelementptr inbounds %struct.sBlacklist, %struct.sBlacklist* %5, i32 0, i32 2
  %6 = load i64, i64* %len, align 8
  %call = call i32 @strncmp(i8* %3, i8* %4, i64 %6)
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  store i1 false, i1* %retval, align 1
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.else, %if.then
  %7 = load i1, i1* %retval, align 1
  ret i1 %7
}

declare i32 @strncmp(i8*, i8*, i64) #1

declare void @vStringNCopyS(%struct.sVString*, i8*, i64) #1

declare i32 @makeSimpleTag(%struct.sVString*, i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @addAutomakeDirectory(%struct.sHashTable* %directories, %struct.sVString* %name, i32 %corkIndex) #0 {
entry:
  %directories.addr = alloca %struct.sHashTable*, align 8
  %name.addr = alloca %struct.sVString*, align 8
  %corkIndex.addr = alloca i32, align 4
  %k = alloca i8*, align 8
  %i = alloca i32*, align 8
  store %struct.sHashTable* %directories, %struct.sHashTable** %directories.addr, align 8
  store %struct.sVString* %name, %struct.sVString** %name.addr, align 8
  store i32 %corkIndex, i32* %corkIndex.addr, align 4
  %0 = load %struct.sVString*, %struct.sVString** %name.addr, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %0, i32 0, i32 2
  %1 = load i8*, i8** %buffer, align 8
  %call = call i8* @eStrdup(i8* %1)
  store i8* %call, i8** %k, align 8
  %call1 = call i8* @eMalloc(i64 4)
  %2 = bitcast i8* %call1 to i32*
  store i32* %2, i32** %i, align 8
  %3 = load i32, i32* %corkIndex.addr, align 4
  %4 = load i32*, i32** %i, align 8
  store i32 %3, i32* %4, align 4
  %5 = load %struct.sHashTable*, %struct.sHashTable** %directories.addr, align 8
  %6 = load i8*, i8** %k, align 8
  %7 = load i32*, i32** %i, align 8
  %8 = bitcast i32* %7 to i8*
  call void @hashTablePutItem(%struct.sHashTable* %5, i8* %6, i8* %8)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @lookupAutomakeDirectory(%struct.sHashTable* %directories, %struct.sVString* %name) #0 {
entry:
  %retval = alloca i32, align 4
  %directories.addr = alloca %struct.sHashTable*, align 8
  %name.addr = alloca %struct.sVString*, align 8
  %i = alloca i32*, align 8
  store %struct.sHashTable* %directories, %struct.sHashTable** %directories.addr, align 8
  store %struct.sVString* %name, %struct.sVString** %name.addr, align 8
  %0 = load %struct.sHashTable*, %struct.sHashTable** %directories.addr, align 8
  %1 = load %struct.sVString*, %struct.sVString** %name.addr, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %1, i32 0, i32 2
  %2 = load i8*, i8** %buffer, align 8
  %call = call i8* @hashTableGetItem(%struct.sHashTable* %0, i8* %2)
  %3 = bitcast i8* %call to i32*
  store i32* %3, i32** %i, align 8
  %4 = load i32*, i32** %i, align 8
  %tobool = icmp ne i32* %4, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load i32*, i32** %i, align 8
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %7 = load i32, i32* %retval, align 4
  ret i32 %7
}

declare i8* @eStrdup(i8*) #1

declare i8* @eMalloc(i64) #1

declare void @hashTablePutItem(%struct.sHashTable*, i8*, i8*) #1

declare i8* @hashTableGetItem(%struct.sHashTable*, i8*) #1

declare void @scheduleRunningBaseparser(i32) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 10.0.0 (https://github.com/holzschu/clang.git 0cfc630fbdb62e96720b611a57123ef3eb13e297) (https://github.com/holzschu/llvm.git 0d8a71e39b28502c24718f7e74b5acbcfe36dfe0)"}
