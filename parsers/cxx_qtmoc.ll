; ModuleID = 'cxx/cxx_qtmoc.c'
source_filename = "cxx/cxx_qtmoc.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-ios11.0.0"

%struct.sParserDependency = type { i32, i8*, i8* }
%struct.sKindDefinition = type { i8, i8, i8*, i8*, i8, i32, %struct.sRoleDesc*, %struct.sScopeSeparator*, i32, i32, i32, %struct.sKindDefinition*, %struct.sKindDefinition* }
%struct.sRoleDesc = type { i8, i8*, i8* }
%struct.sScopeSeparator = type { i32, i8* }
%struct.keywordTable = type { i8*, i32 }
%struct.sCxxSubparser = type { %struct.sSubparser, void (%struct.sCxxSubparser*)*, void (%struct.sCxxSubparser*)*, i1 (%struct.sCxxSubparser*, %struct._CXXToken*)*, i1 (%struct.sCxxSubparser*, %struct._CXXToken*)*, i1 (%struct.sCxxSubparser*)*, void (%struct.sCxxSubparser*, %struct._CXXToken*)* }
%struct.sSubparser = type { %struct.sSlaveParser*, %struct.sSubparser*, i8, i8, i32, void (%struct.sSubparser*)*, void (%struct.sSubparser*)*, void (%struct.sSubparser*, i8*)*, void (%struct.sSubparser*, %struct.sTagEntryInfo*, i32)* }
%struct.sSlaveParser = type { i32, i32, i8*, %struct.sSlaveParser* }
%struct.sTagEntryInfo = type { i8, i64, i8*, i32, %struct._MIOPos, i32, i8*, i8*, i32, [2 x i8], i8*, %struct.anon, i32, [5 x %struct.sTagField], %struct.sPtrArray*, i32, i8*, i64 }
%struct._MIOPos = type { i32, %union.anon.0 }
%union.anon.0 = type { i64 }
%struct.anon = type { i8*, i8*, i8*, i8*, i32, i32, i8*, i32, i8*, [2 x i8*], i32, i64 }
%struct.sTagField = type { i32, i8*, i8 }
%struct.sPtrArray = type opaque
%struct._CXXToken = type { i32, %struct.sVString*, i32, %struct._CXXTokenChain*, i8, i32, %struct._MIOPos, %struct._CXXToken*, %struct._CXXToken*, i8, i8 }
%struct.sVString = type { i64, i64, i8* }
%struct._CXXTokenChain = type { %struct._CXXToken*, %struct._CXXToken*, i32 }
%struct._CXXParserState = type { i32, i32, i32, i32, i32, %struct.sKindDefinition*, i32, %struct.sFieldDefinition*, i32, %struct._CXXTokenChain*, %struct._CXXTokenChain*, %struct._CXXToken*, i32, i32, i8 }
%struct.sFieldDefinition = type { i8, i8*, i8*, i8, [5 x i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)*], i1 (%struct.sTagEntryInfo*)*, i32, i32 }
%struct.sParserDefinition = type { i8*, %struct.sKindDefinition*, i32, i8**, i8**, i8**, void (i32)*, void (i32, i1)*, void ()*, i32 (i32)*, i8* (%struct._MIO*, i32*, i32)**, i32, i8, i8, i8, i8, %struct.tagRegexTable*, i32, %struct.keywordTable*, i32, %struct.sTagXpathTableTable*, i32, i8, %struct.sFieldDefinition*, i32, %struct.sXtagDefinition*, i32, %struct.sParserDependency*, i32, %struct.sParameterHandlerTable*, i32, %struct.sXpathFileSpec*, i32, i32, i8 }
%struct._MIO = type opaque
%struct.tagRegexTable = type { i8*, i8*, i8*, i8*, i8*, i8 }
%struct.sTagXpathTableTable = type { %struct.sTagXpathTable*, i32 }
%struct.sTagXpathTable = type { i8*, i32, %union.anon, i8* }
%union.anon = type { %struct.sTagXpathMakeTagSpec }
%struct.sTagXpathMakeTagSpec = type { i32, i32, void (i8*, %struct.sTagXpathMakeTagSpec*, %struct.sTagEntryInfo*, i8*)* }
%struct.sXtagDefinition = type { i8, i8, i8*, i8*, i1 (%struct.sXtagDefinition*)*, i1 (%struct.sXtagDefinition*)*, i32 }
%struct.sParameterHandlerTable = type { i8*, i8*, void (i32, i8*, i8*)* }
%struct.sXpathFileSpec = type { i8*, i8*, i8*, i8*, i8*, i8* }
%struct.sQtMocSubparser = type { %struct.sCxxSubparser, i32, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"QtMoc\00", align 1
@dependencies = internal global [1 x %struct.sParserDependency] [%struct.sParserDependency { i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* bitcast (%struct.sCxxSubparser* @qtMocSubparser to i8*) }], align 8
@QtMocKinds = internal global [3 x %struct.sKindDefinition] [%struct.sKindDefinition { i8 1, i8 115, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 83, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 112, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }], align 8
@QtMocKeywordTable = internal constant [6 x %struct.keywordTable] [%struct.keywordTable { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i32 0 }, %struct.keywordTable { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i32 1 }, %struct.keywordTable { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i32 1 }, %struct.keywordTable { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i32 2 }, %struct.keywordTable { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i32 2 }, %struct.keywordTable { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0), i32 3 }], align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"C++\00", align 1
@qtMocSubparser = internal global %struct.sCxxSubparser { %struct.sSubparser { %struct.sSlaveParser* null, %struct.sSubparser* null, i8 0, i8 0, i32 3, void (%struct.sSubparser*)* @inputStart, void (%struct.sSubparser*)* null, void (%struct.sSubparser*, i8*)* null, void (%struct.sSubparser*, %struct.sTagEntryInfo*, i32)* @makeTagEntryNotify }, void (%struct.sCxxSubparser*)* @enterBlockNotify, void (%struct.sCxxSubparser*)* @leaveBlockNotify, i1 (%struct.sCxxSubparser*, %struct._CXXToken*)* @newIdentifierAsHeadOfMemberNotify, i1 (%struct.sCxxSubparser*, %struct._CXXToken*)* @unknownIdentifierInClassNotify, i1 (%struct.sCxxSubparser*)* @parseAccessSpecifierNotify, void (%struct.sCxxSubparser*, %struct._CXXToken*)* @foundExtraIdentifierAsAccessSpecifier }, align 8
@Lang_QtMoc = internal global i32 0, align 4
@g_cxx = external global %struct._CXXParserState, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"typename\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"slot\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"slots\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"signal\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"signals\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"properties\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"Q_OBJECT\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"Q_SIGNALS\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"Q_SLOTS\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"Q_PROPERTY\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sParserDefinition* @QtMocParser() #0 {
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
  store %struct.sKindDefinition* getelementptr inbounds ([3 x %struct.sKindDefinition], [3 x %struct.sKindDefinition]* @QtMocKinds, i64 0, i64 0), %struct.sKindDefinition** %kindTable, align 8
  %3 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %3, i32 0, i32 2
  store i32 3, i32* %kindCount, align 8
  %4 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %keywordTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %4, i32 0, i32 18
  store %struct.keywordTable* getelementptr inbounds ([6 x %struct.keywordTable], [6 x %struct.keywordTable]* @QtMocKeywordTable, i64 0, i64 0), %struct.keywordTable** %keywordTable, align 8
  %5 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %keywordCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %5, i32 0, i32 19
  store i32 6, i32* %keywordCount, align 8
  %6 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %parser = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %6, i32 0, i32 8
  store void ()* @findQtMocTags, void ()** %parser, align 8
  %7 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %initialize = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %7, i32 0, i32 6
  store void (i32)* @initialize, void (i32)** %initialize, align 8
  %8 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %useCork = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %8, i32 0, i32 12
  store i8 1, i8* %useCork, align 4
  %9 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  ret %struct.sParserDefinition* %9
}

declare %struct.sParserDefinition* @parserNew(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @findQtMocTags() #0 {
entry:
  call void @scheduleRunningBaseparser(i32 0)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @initialize(i32 %lang) #0 {
entry:
  %lang.addr = alloca i32, align 4
  store i32 %lang, i32* %lang.addr, align 4
  %0 = load i32, i32* %lang.addr, align 4
  store i32 %0, i32* @Lang_QtMoc, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @inputStart(%struct.sSubparser* %s) #0 {
entry:
  %s.addr = alloca %struct.sSubparser*, align 8
  %pQtMoc = alloca %struct.sQtMocSubparser*, align 8
  store %struct.sSubparser* %s, %struct.sSubparser** %s.addr, align 8
  %0 = load %struct.sSubparser*, %struct.sSubparser** %s.addr, align 8
  %1 = bitcast %struct.sSubparser* %0 to %struct.sQtMocSubparser*
  store %struct.sQtMocSubparser* %1, %struct.sQtMocSubparser** %pQtMoc, align 8
  %2 = load %struct.sQtMocSubparser*, %struct.sQtMocSubparser** %pQtMoc, align 8
  %iBlockDepth = getelementptr inbounds %struct.sQtMocSubparser, %struct.sQtMocSubparser* %2, i32 0, i32 1
  store i32 0, i32* %iBlockDepth, align 8
  %3 = load %struct.sQtMocSubparser*, %struct.sQtMocSubparser** %pQtMoc, align 8
  %iDepthOfQtClass = getelementptr inbounds %struct.sQtMocSubparser, %struct.sQtMocSubparser* %3, i32 0, i32 2
  store i32 0, i32* %iDepthOfQtClass, align 4
  %4 = load %struct.sQtMocSubparser*, %struct.sQtMocSubparser** %pQtMoc, align 8
  %eMemberMarker = getelementptr inbounds %struct.sQtMocSubparser, %struct.sQtMocSubparser* %4, i32 0, i32 3
  store i32 0, i32* %eMemberMarker, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @makeTagEntryNotify(%struct.sSubparser* %s, %struct.sTagEntryInfo* %entry1, i32 %corkIndex) #0 {
entry:
  %s.addr = alloca %struct.sSubparser*, align 8
  %entry.addr = alloca %struct.sTagEntryInfo*, align 8
  %corkIndex.addr = alloca i32, align 4
  %pQtMoc = alloca %struct.sQtMocSubparser*, align 8
  %parasiteTag = alloca %struct.sTagEntryInfo, align 8
  store %struct.sSubparser* %s, %struct.sSubparser** %s.addr, align 8
  store %struct.sTagEntryInfo* %entry1, %struct.sTagEntryInfo** %entry.addr, align 8
  store i32 %corkIndex, i32* %corkIndex.addr, align 4
  %0 = load %struct.sSubparser*, %struct.sSubparser** %s.addr, align 8
  %1 = bitcast %struct.sSubparser* %0 to %struct.sQtMocSubparser*
  store %struct.sQtMocSubparser* %1, %struct.sQtMocSubparser** %pQtMoc, align 8
  %2 = load %struct.sQtMocSubparser*, %struct.sQtMocSubparser** %pQtMoc, align 8
  %iDepthOfQtClass = getelementptr inbounds %struct.sQtMocSubparser, %struct.sQtMocSubparser* %2, i32 0, i32 2
  %3 = load i32, i32* %iDepthOfQtClass, align 4
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end10

if.end:                                           ; preds = %entry
  %4 = load %struct.sQtMocSubparser*, %struct.sQtMocSubparser** %pQtMoc, align 8
  %eMemberMarker = getelementptr inbounds %struct.sQtMocSubparser, %struct.sQtMocSubparser* %4, i32 0, i32 3
  %5 = load i32, i32* %eMemberMarker, align 8
  %cmp2 = icmp ne i32 %5, 0
  br i1 %cmp2, label %land.lhs.true, label %if.end10

land.lhs.true:                                    ; preds = %if.end
  %6 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %entry.addr, align 8
  %kindIndex = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %6, i32 0, i32 8
  %7 = load i32, i32* %kindIndex, align 8
  %cmp3 = icmp eq i32 %7, 7
  br i1 %cmp3, label %if.then4, label %if.end10

if.then4:                                         ; preds = %land.lhs.true
  %8 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %entry.addr, align 8
  %9 = bitcast %struct.sTagEntryInfo* %parasiteTag to i8*
  %10 = bitcast %struct.sTagEntryInfo* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 %10, i64 344, i1 false)
  %call = call i32 @getInputLanguage()
  %langType = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %parasiteTag, i32 0, i32 5
  store i32 %call, i32* %langType, align 8
  %11 = load %struct.sQtMocSubparser*, %struct.sQtMocSubparser** %pQtMoc, align 8
  %eMemberMarker5 = getelementptr inbounds %struct.sQtMocSubparser, %struct.sQtMocSubparser* %11, i32 0, i32 3
  %12 = load i32, i32* %eMemberMarker5, align 8
  %cmp6 = icmp eq i32 %12, 1
  %13 = zext i1 %cmp6 to i64
  %cond = select i1 %cmp6, i32 0, i32 1
  %kindIndex7 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %parasiteTag, i32 0, i32 8
  store i32 %cond, i32* %kindIndex7, align 8
  %14 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %entry.addr, align 8
  %langType8 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %14, i32 0, i32 5
  %15 = load i32, i32* %langType8, align 8
  %extensionFields = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %parasiteTag, i32 0, i32 11
  %scopeLangType = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields, i32 0, i32 4
  store i32 %15, i32* %scopeLangType, align 8
  %call9 = call i32 @makeTagEntry(%struct.sTagEntryInfo* %parasiteTag)
  br label %if.end10

if.end10:                                         ; preds = %if.then, %if.then4, %land.lhs.true, %if.end
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @enterBlockNotify(%struct.sCxxSubparser* %pSubparser) #0 {
entry:
  %pSubparser.addr = alloca %struct.sCxxSubparser*, align 8
  %pQtMoc = alloca %struct.sQtMocSubparser*, align 8
  store %struct.sCxxSubparser* %pSubparser, %struct.sCxxSubparser** %pSubparser.addr, align 8
  %0 = load %struct.sCxxSubparser*, %struct.sCxxSubparser** %pSubparser.addr, align 8
  %1 = bitcast %struct.sCxxSubparser* %0 to %struct.sQtMocSubparser*
  store %struct.sQtMocSubparser* %1, %struct.sQtMocSubparser** %pQtMoc, align 8
  %2 = load %struct.sQtMocSubparser*, %struct.sQtMocSubparser** %pQtMoc, align 8
  %iBlockDepth = getelementptr inbounds %struct.sQtMocSubparser, %struct.sQtMocSubparser* %2, i32 0, i32 1
  %3 = load i32, i32* %iBlockDepth, align 8
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %iBlockDepth, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @leaveBlockNotify(%struct.sCxxSubparser* %pSubparser) #0 {
entry:
  %pSubparser.addr = alloca %struct.sCxxSubparser*, align 8
  %pQtMoc = alloca %struct.sQtMocSubparser*, align 8
  store %struct.sCxxSubparser* %pSubparser, %struct.sCxxSubparser** %pSubparser.addr, align 8
  %0 = load %struct.sCxxSubparser*, %struct.sCxxSubparser** %pSubparser.addr, align 8
  %1 = bitcast %struct.sCxxSubparser* %0 to %struct.sQtMocSubparser*
  store %struct.sQtMocSubparser* %1, %struct.sQtMocSubparser** %pQtMoc, align 8
  %2 = load %struct.sQtMocSubparser*, %struct.sQtMocSubparser** %pQtMoc, align 8
  %iDepthOfQtClass = getelementptr inbounds %struct.sQtMocSubparser, %struct.sQtMocSubparser* %2, i32 0, i32 2
  %3 = load i32, i32* %iDepthOfQtClass, align 4
  %4 = load %struct.sQtMocSubparser*, %struct.sQtMocSubparser** %pQtMoc, align 8
  %iBlockDepth = getelementptr inbounds %struct.sQtMocSubparser, %struct.sQtMocSubparser* %4, i32 0, i32 1
  %5 = load i32, i32* %iBlockDepth, align 8
  %cmp = icmp eq i32 %3, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.sQtMocSubparser*, %struct.sQtMocSubparser** %pQtMoc, align 8
  %iDepthOfQtClass1 = getelementptr inbounds %struct.sQtMocSubparser, %struct.sQtMocSubparser* %6, i32 0, i32 2
  store i32 0, i32* %iDepthOfQtClass1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.sQtMocSubparser*, %struct.sQtMocSubparser** %pQtMoc, align 8
  %iBlockDepth2 = getelementptr inbounds %struct.sQtMocSubparser, %struct.sQtMocSubparser* %7, i32 0, i32 1
  %8 = load i32, i32* %iBlockDepth2, align 8
  %dec = add nsw i32 %8, -1
  store i32 %dec, i32* %iBlockDepth2, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @newIdentifierAsHeadOfMemberNotify(%struct.sCxxSubparser* %pSubparser, %struct._CXXToken* %pToken) #0 {
entry:
  %retval = alloca i1, align 1
  %pSubparser.addr = alloca %struct.sCxxSubparser*, align 8
  %pToken.addr = alloca %struct._CXXToken*, align 8
  %pQtMoc = alloca %struct.sQtMocSubparser*, align 8
  %keyword = alloca i32, align 4
  store %struct.sCxxSubparser* %pSubparser, %struct.sCxxSubparser** %pSubparser.addr, align 8
  store %struct._CXXToken* %pToken, %struct._CXXToken** %pToken.addr, align 8
  %0 = load %struct.sCxxSubparser*, %struct.sCxxSubparser** %pSubparser.addr, align 8
  %1 = bitcast %struct.sCxxSubparser* %0 to %struct.sQtMocSubparser*
  store %struct.sQtMocSubparser* %1, %struct.sQtMocSubparser** %pQtMoc, align 8
  %2 = load %struct._CXXToken*, %struct._CXXToken** %pToken.addr, align 8
  %pszWord = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %2, i32 0, i32 1
  %3 = load %struct.sVString*, %struct.sVString** %pszWord, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %3, i32 0, i32 2
  %4 = load i8*, i8** %buffer, align 8
  %5 = load i32, i32* @Lang_QtMoc, align 4
  %call = call i32 @lookupKeyword(i8* %4, i32 %5)
  store i32 %call, i32* %keyword, align 4
  %6 = load i32, i32* %keyword, align 4
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %7 = load %struct.sQtMocSubparser*, %struct.sQtMocSubparser** %pQtMoc, align 8
  %iDepthOfQtClass = getelementptr inbounds %struct.sQtMocSubparser, %struct.sQtMocSubparser* %7, i32 0, i32 2
  %8 = load i32, i32* %iDepthOfQtClass, align 4
  %cmp1 = icmp eq i32 %8, 0
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %9 = load %struct.sQtMocSubparser*, %struct.sQtMocSubparser** %pQtMoc, align 8
  %iBlockDepth = getelementptr inbounds %struct.sQtMocSubparser, %struct.sQtMocSubparser* %9, i32 0, i32 1
  %10 = load i32, i32* %iBlockDepth, align 8
  %11 = load %struct.sQtMocSubparser*, %struct.sQtMocSubparser** %pQtMoc, align 8
  %iDepthOfQtClass3 = getelementptr inbounds %struct.sQtMocSubparser, %struct.sQtMocSubparser* %11, i32 0, i32 2
  store i32 %10, i32* %iDepthOfQtClass3, align 4
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  br label %do.body

do.body:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.body
  store i1 true, i1* %retval, align 1
  br label %return

if.end4:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end4, %do.end
  %12 = load i1, i1* %retval, align 1
  ret i1 %12
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @unknownIdentifierInClassNotify(%struct.sCxxSubparser* %pSubparser, %struct._CXXToken* %pToken) #0 {
entry:
  %retval = alloca i1, align 1
  %pSubparser.addr = alloca %struct.sCxxSubparser*, align 8
  %pToken.addr = alloca %struct._CXXToken*, align 8
  %pQtMoc = alloca %struct.sQtMocSubparser*, align 8
  %keyword = alloca i32, align 4
  store %struct.sCxxSubparser* %pSubparser, %struct.sCxxSubparser** %pSubparser.addr, align 8
  store %struct._CXXToken* %pToken, %struct._CXXToken** %pToken.addr, align 8
  %0 = load %struct.sCxxSubparser*, %struct.sCxxSubparser** %pSubparser.addr, align 8
  %1 = bitcast %struct.sCxxSubparser* %0 to %struct.sQtMocSubparser*
  store %struct.sQtMocSubparser* %1, %struct.sQtMocSubparser** %pQtMoc, align 8
  %2 = load %struct.sQtMocSubparser*, %struct.sQtMocSubparser** %pQtMoc, align 8
  %iDepthOfQtClass = getelementptr inbounds %struct.sQtMocSubparser, %struct.sQtMocSubparser* %2, i32 0, i32 2
  %3 = load i32, i32* %iDepthOfQtClass, align 4
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._CXXToken*, %struct._CXXToken** %pToken.addr, align 8
  %pszWord = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %4, i32 0, i32 1
  %5 = load %struct.sVString*, %struct.sVString** %pszWord, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %5, i32 0, i32 2
  %6 = load i8*, i8** %buffer, align 8
  %7 = load i32, i32* @Lang_QtMoc, align 4
  %call = call i32 @lookupKeyword(i8* %6, i32 %7)
  store i32 %call, i32* %keyword, align 4
  %8 = load i32, i32* %keyword, align 4
  switch i32 %8, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
    i32 3, label %sw.bb8
  ]

sw.bb:                                            ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %sw.bb
  br label %do.end

do.end:                                           ; preds = %do.body
  %9 = load %struct._CXXToken*, %struct._CXXToken** %pToken.addr, align 8
  %eKeyword = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %9, i32 0, i32 2
  store i32 64, i32* %eKeyword, align 8
  %call1 = call zeroext i1 @cxxParserParseAccessSpecifier()
  %10 = load %struct.sQtMocSubparser*, %struct.sQtMocSubparser** %pQtMoc, align 8
  %eMemberMarker = getelementptr inbounds %struct.sQtMocSubparser, %struct.sQtMocSubparser* %10, i32 0, i32 3
  store i32 2, i32* %eMemberMarker, align 8
  store i1 true, i1* %retval, align 1
  br label %return

sw.bb2:                                           ; preds = %if.end
  br label %do.body3

do.body3:                                         ; preds = %sw.bb2
  br label %do.end4

do.end4:                                          ; preds = %do.body3
  %11 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %eKeyword5 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %11, i32 0, i32 2
  store i32 64, i32* %eKeyword5, align 8
  %call6 = call zeroext i1 @cxxParserParseAccessSpecifier()
  %12 = load %struct.sQtMocSubparser*, %struct.sQtMocSubparser** %pQtMoc, align 8
  %eMemberMarker7 = getelementptr inbounds %struct.sQtMocSubparser, %struct.sQtMocSubparser* %12, i32 0, i32 3
  store i32 1, i32* %eMemberMarker7, align 8
  store i1 true, i1* %retval, align 1
  br label %return

sw.bb8:                                           ; preds = %if.end
  br label %do.body9

do.body9:                                         ; preds = %sw.bb8
  br label %do.end10

do.end10:                                         ; preds = %do.body9
  %call11 = call zeroext i1 @qtMocParseProperty()
  store i1 true, i1* %retval, align 1
  br label %return

sw.default:                                       ; preds = %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  store i1 false, i1* %retval, align 1
  br label %return

return:                                           ; preds = %sw.epilog, %do.end10, %do.end4, %do.end, %if.then
  %13 = load i1, i1* %retval, align 1
  ret i1 %13
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @parseAccessSpecifierNotify(%struct.sCxxSubparser* %pSubparser) #0 {
entry:
  %retval = alloca i1, align 1
  %pSubparser.addr = alloca %struct.sCxxSubparser*, align 8
  %pQtMoc = alloca %struct.sQtMocSubparser*, align 8
  store %struct.sCxxSubparser* %pSubparser, %struct.sCxxSubparser** %pSubparser.addr, align 8
  %0 = load %struct.sCxxSubparser*, %struct.sCxxSubparser** %pSubparser.addr, align 8
  %1 = bitcast %struct.sCxxSubparser* %0 to %struct.sQtMocSubparser*
  store %struct.sQtMocSubparser* %1, %struct.sQtMocSubparser** %pQtMoc, align 8
  %2 = load %struct.sQtMocSubparser*, %struct.sQtMocSubparser** %pQtMoc, align 8
  %iBlockDepth = getelementptr inbounds %struct.sQtMocSubparser, %struct.sQtMocSubparser* %2, i32 0, i32 1
  %3 = load i32, i32* %iBlockDepth, align 8
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %do.body
  %4 = load %struct.sQtMocSubparser*, %struct.sQtMocSubparser** %pQtMoc, align 8
  %eMemberMarker = getelementptr inbounds %struct.sQtMocSubparser, %struct.sQtMocSubparser* %4, i32 0, i32 3
  store i32 0, i32* %eMemberMarker, align 8
  store i1 true, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  store i1 false, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end, %do.end
  %5 = load i1, i1* %retval, align 1
  ret i1 %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @foundExtraIdentifierAsAccessSpecifier(%struct.sCxxSubparser* %pSubparser, %struct._CXXToken* %pToken) #0 {
entry:
  %pSubparser.addr = alloca %struct.sCxxSubparser*, align 8
  %pToken.addr = alloca %struct._CXXToken*, align 8
  %pQtMoc = alloca %struct.sQtMocSubparser*, align 8
  %keyword = alloca i32, align 4
  store %struct.sCxxSubparser* %pSubparser, %struct.sCxxSubparser** %pSubparser.addr, align 8
  store %struct._CXXToken* %pToken, %struct._CXXToken** %pToken.addr, align 8
  %0 = load %struct.sCxxSubparser*, %struct.sCxxSubparser** %pSubparser.addr, align 8
  %1 = bitcast %struct.sCxxSubparser* %0 to %struct.sQtMocSubparser*
  store %struct.sQtMocSubparser* %1, %struct.sQtMocSubparser** %pQtMoc, align 8
  %2 = load %struct._CXXToken*, %struct._CXXToken** %pToken.addr, align 8
  %pszWord = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %2, i32 0, i32 1
  %3 = load %struct.sVString*, %struct.sVString** %pszWord, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %3, i32 0, i32 2
  %4 = load i8*, i8** %buffer, align 8
  %5 = load i32, i32* @Lang_QtMoc, align 4
  %call = call i32 @lookupKeyword(i8* %4, i32 %5)
  store i32 %call, i32* %keyword, align 4
  %6 = load i32, i32* %keyword, align 4
  %cmp = icmp eq i32 %6, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %do.body
  %7 = load %struct.sQtMocSubparser*, %struct.sQtMocSubparser** %pQtMoc, align 8
  %eMemberMarker = getelementptr inbounds %struct.sQtMocSubparser, %struct.sQtMocSubparser* %7, i32 0, i32 3
  store i32 1, i32* %eMemberMarker, align 8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare i32 @getInputLanguage() #1

declare i32 @makeTagEntry(%struct.sTagEntryInfo*) #1

declare i32 @lookupKeyword(i8*, i32) #1

declare zeroext i1 @cxxParserParseAccessSpecifier() #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @qtMocParseProperty() #0 {
entry:
  %retval = alloca i1, align 1
  %pszPropType = alloca i8*, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %call = call zeroext i1 @cxxParserParseNextToken()
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %do.end
  br label %do.body1

do.body1:                                         ; preds = %if.then
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %do.end
  %0 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %eType = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %0, i32 0, i32 0
  %1 = load i32, i32* %eType, align 8
  %cmp = icmp eq i32 %1, 1048576
  br i1 %cmp, label %if.end6, label %if.then3

if.then3:                                         ; preds = %if.end
  br label %do.body4

do.body4:                                         ; preds = %if.then3
  br label %do.end5

do.end5:                                          ; preds = %do.body4
  store i1 false, i1* %retval, align 1
  br label %return

if.end6:                                          ; preds = %if.end
  %call7 = call zeroext i1 @cxxParserParseNextToken()
  br i1 %call7, label %if.end11, label %if.then8

if.then8:                                         ; preds = %if.end6
  br label %do.body9

do.body9:                                         ; preds = %if.then8
  br label %do.end10

do.end10:                                         ; preds = %do.body9
  store i1 false, i1* %retval, align 1
  br label %return

if.end11:                                         ; preds = %if.end6
  %2 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %eType12 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %2, i32 0, i32 0
  %3 = load i32, i32* %eType12, align 8
  %cmp13 = icmp eq i32 %3, 2
  br i1 %cmp13, label %if.end21, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end11
  %4 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %eType14 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %4, i32 0, i32 0
  %5 = load i32, i32* %eType14, align 8
  %cmp15 = icmp eq i32 %5, 4
  br i1 %cmp15, label %land.lhs.true, label %if.then17

land.lhs.true:                                    ; preds = %lor.lhs.false
  %6 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %eKeyword = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %6, i32 0, i32 2
  %7 = load i32, i32* %eKeyword, align 8
  %call16 = call zeroext i1 @cxxKeywordMayBePartOfTypeName(i32 %7)
  br i1 %call16, label %if.end21, label %if.then17

if.then17:                                        ; preds = %land.lhs.true, %lor.lhs.false
  br label %do.body18

do.body18:                                        ; preds = %if.then17
  br label %do.end19

do.end19:                                         ; preds = %do.body18
  %call20 = call zeroext i1 @cxxParserSkipToClosingParenthesisOrEOF()
  store i1 false, i1* %retval, align 1
  br label %return

if.end21:                                         ; preds = %land.lhs.true, %if.end11
  %8 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %pszWord = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %8, i32 0, i32 1
  %9 = load %struct.sVString*, %struct.sVString** %pszWord, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %9, i32 0, i32 2
  %10 = load i8*, i8** %buffer, align 8
  %call22 = call i8* @eStrdup(i8* %10)
  store i8* %call22, i8** %pszPropType, align 8
  %call23 = call zeroext i1 @cxxParserParseNextToken()
  br i1 %call23, label %if.end27, label %if.then24

if.then24:                                        ; preds = %if.end21
  br label %do.body25

do.body25:                                        ; preds = %if.then24
  br label %do.end26

do.end26:                                         ; preds = %do.body25
  %11 = load i8*, i8** %pszPropType, align 8
  call void @eFree(i8* %11)
  store i1 false, i1* %retval, align 1
  br label %return

if.end27:                                         ; preds = %if.end21
  %12 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %eType28 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %12, i32 0, i32 0
  %13 = load i32, i32* %eType28, align 8
  %cmp29 = icmp eq i32 %13, 2
  br i1 %cmp29, label %if.end34, label %if.then30

if.then30:                                        ; preds = %if.end27
  br label %do.body31

do.body31:                                        ; preds = %if.then30
  br label %do.end32

do.end32:                                         ; preds = %do.body31
  %call33 = call zeroext i1 @cxxParserSkipToClosingParenthesisOrEOF()
  %14 = load i8*, i8** %pszPropType, align 8
  call void @eFree(i8* %14)
  store i1 false, i1* %retval, align 1
  br label %return

if.end34:                                         ; preds = %if.end27
  %15 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %16 = load i8*, i8** %pszPropType, align 8
  call void @qtMocMakeTagForProperty(%struct._CXXToken* %15, i8* %16)
  %17 = load i8*, i8** %pszPropType, align 8
  call void @eFree(i8* %17)
  %call35 = call zeroext i1 @cxxParserSkipToClosingParenthesisOrEOF()
  br label %do.body36

do.body36:                                        ; preds = %if.end34
  br label %do.end37

do.end37:                                         ; preds = %do.body36
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %do.end37, %do.end32, %do.end26, %do.end19, %do.end10, %do.end5, %do.end2
  %18 = load i1, i1* %retval, align 1
  ret i1 %18
}

declare zeroext i1 @cxxParserParseNextToken() #1

declare zeroext i1 @cxxKeywordMayBePartOfTypeName(i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @cxxParserSkipToClosingParenthesisOrEOF() #0 {
entry:
  %retval = alloca i1, align 1
  %0 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %eType = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %0, i32 0, i32 0
  %1 = load i32, i32* %eType, align 8
  %and = and i32 %1, 16777217
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 true, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %call = call zeroext i1 @cxxParserParseUpToOneOf(i32 16777217, i1 zeroext false)
  store i1 %call, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load i1, i1* %retval, align 1
  ret i1 %2
}

declare i8* @eStrdup(i8*) #1

declare void @eFree(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @qtMocMakeTagForProperty(%struct._CXXToken* %pToken, i8* %pszType) #0 {
entry:
  %pToken.addr = alloca %struct._CXXToken*, align 8
  %pszType.addr = alloca i8*, align 8
  %tag = alloca %struct.sTagEntryInfo, align 8
  store %struct._CXXToken* %pToken, %struct._CXXToken** %pToken.addr, align 8
  store i8* %pszType, i8** %pszType.addr, align 8
  %0 = load %struct._CXXToken*, %struct._CXXToken** %pToken.addr, align 8
  %pszWord = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %0, i32 0, i32 1
  %1 = load %struct.sVString*, %struct.sVString** %pszWord, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %1, i32 0, i32 2
  %2 = load i8*, i8** %buffer, align 8
  call void @initTagEntry(%struct.sTagEntryInfo* %tag, i8* %2, i32 2)
  %3 = load %struct._CXXToken*, %struct._CXXToken** %pToken.addr, align 8
  %iLineNumber = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %3, i32 0, i32 5
  %4 = load i32, i32* %iLineNumber, align 4
  %conv = sext i32 %4 to i64
  %lineNumber = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %tag, i32 0, i32 1
  store i64 %conv, i64* %lineNumber, align 8
  %filePosition = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %tag, i32 0, i32 4
  %5 = load %struct._CXXToken*, %struct._CXXToken** %pToken.addr, align 8
  %oFilePosition = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %5, i32 0, i32 6
  %6 = bitcast %struct._MIOPos* %filePosition to i8*
  %7 = bitcast %struct._MIOPos* %oFilePosition to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 %7, i64 16, i1 false)
  %8 = bitcast %struct.sTagEntryInfo* %tag to i8*
  %bf.load = load i8, i8* %8, align 8
  %bf.clear = and i8 %bf.load, -3
  store i8 %bf.clear, i8* %8, align 8
  %call = call zeroext i1 @cxxScopeIsGlobal()
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i32 @getNamedLanguage(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i64 0)
  %extensionFields = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %tag, i32 0, i32 11
  %scopeLangType = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields, i32 0, i32 4
  store i32 %call1, i32* %scopeLangType, align 8
  %call2 = call i32 @cxxScopeGetKind()
  %extensionFields3 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %tag, i32 0, i32 11
  %scopeKindIndex = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields3, i32 0, i32 5
  store i32 %call2, i32* %scopeKindIndex, align 4
  %call4 = call i8* @cxxScopeGetFullName()
  %extensionFields5 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %tag, i32 0, i32 11
  %scopeName = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields5, i32 0, i32 6
  store i8* %call4, i8** %scopeName, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %extensionFields6 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %tag, i32 0, i32 11
  %typeRef = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields6, i32 0, i32 9
  %arrayidx = getelementptr inbounds [2 x i8*], [2 x i8*]* %typeRef, i64 0, i64 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %arrayidx, align 8
  %9 = load i8*, i8** %pszType.addr, align 8
  %extensionFields7 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %tag, i32 0, i32 11
  %typeRef8 = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields7, i32 0, i32 9
  %arrayidx9 = getelementptr inbounds [2 x i8*], [2 x i8*]* %typeRef8, i64 0, i64 1
  store i8* %9, i8** %arrayidx9, align 8
  %call10 = call i32 @makeTagEntry(%struct.sTagEntryInfo* %tag)
  ret void
}

declare zeroext i1 @cxxParserParseUpToOneOf(i32, i1 zeroext) #1

declare void @initTagEntry(%struct.sTagEntryInfo*, i8*, i32) #1

declare zeroext i1 @cxxScopeIsGlobal() #1

declare i32 @getNamedLanguage(i8*, i64) #1

declare i32 @cxxScopeGetKind() #1

declare i8* @cxxScopeGetFullName() #1

declare void @scheduleRunningBaseparser(i32) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 10.0.0 (https://github.com/holzschu/clang.git 0cfc630fbdb62e96720b611a57123ef3eb13e297) (https://github.com/holzschu/llvm.git 0d8a71e39b28502c24718f7e74b5acbcfe36dfe0)"}
