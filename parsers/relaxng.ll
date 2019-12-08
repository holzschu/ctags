; ModuleID = 'relaxng.c'
source_filename = "relaxng.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-ios11.0.0"

%struct.sKindDefinition = type { i8, i8, i8*, i8*, i8, i32, %struct.sRoleDesc*, %struct.sScopeSeparator*, i32, i32, i32, %struct.sKindDefinition*, %struct.sKindDefinition* }
%struct.sRoleDesc = type { i8, i8*, i8* }
%struct.sScopeSeparator = type { i32, i8* }
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
%struct.sTagXpathRecurSpec = type { void (i8*, %struct.sTagXpathRecurSpec*, i8*, i8*)*, i32 }
%struct.sParserDefinition = type { i8*, %struct.sKindDefinition*, i32, i8**, i8**, i8**, void (i32)*, void (i32, i1)*, void ()*, i32 (i32)*, i8* (%struct._MIO*, i32*, i32)**, i32, i8, i8, i8, i8, %struct.tagRegexTable*, i32, %struct.keywordTable*, i32, %struct.sTagXpathTableTable*, i32, i8, %struct.sFieldDefinition*, i32, %struct.sXtagDefinition*, i32, %struct.sParserDependency*, i32, %struct.sParameterHandlerTable*, i32, %struct.sXpathFileSpec*, i32, i32, i8 }
%struct._MIO = type opaque
%struct.tagRegexTable = type { i8*, i8*, i8*, i8*, i8*, i8 }
%struct.keywordTable = type { i8*, i32 }
%struct.sFieldDefinition = type { i8, i8*, i8*, i8, [5 x i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)*], i1 (%struct.sTagEntryInfo*)*, i32, i32 }
%struct.sVString = type { i64, i64, i8* }
%struct.sXtagDefinition = type { i8, i8, i8*, i8*, i1 (%struct.sXtagDefinition*)*, i1 (%struct.sXtagDefinition*)*, i32 }
%struct.sParserDependency = type { i32, i8*, i8* }
%struct.sParameterHandlerTable = type { i8*, i8*, void (i32, i8*, i8*)* }
%struct.sXpathFileSpec = type { i8*, i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [8 x i8] c"RelaxNG\00", align 1
@RelaxNGKinds = internal global [3 x %struct.sKindDefinition] [%struct.sKindDefinition { i8 1, i8 101, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 97, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 110, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }], align 8
@extensions = internal constant [2 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i8* null], align 8
@relaxngXpathTableTable = internal global [5 x %struct.sTagXpathTableTable] [%struct.sTagXpathTableTable { %struct.sTagXpathTable* getelementptr inbounds ([2 x %struct.sTagXpathTable], [2 x %struct.sTagXpathTable]* bitcast ([2 x { i8*, i32, { %struct.sTagXpathRecurSpec }, i8* }]* @relaxngXpathMainTable to [2 x %struct.sTagXpathTable]*), i32 0, i32 0), i32 2 }, %struct.sTagXpathTableTable { %struct.sTagXpathTable* getelementptr inbounds ([1 x %struct.sTagXpathTable], [1 x %struct.sTagXpathTable]* @relaxngXpathElementNameTable, i32 0, i32 0), i32 1 }, %struct.sTagXpathTableTable { %struct.sTagXpathTable* getelementptr inbounds ([3 x %struct.sTagXpathTable], [3 x %struct.sTagXpathTable]* bitcast (<{ { i8*, i32, { %struct.sTagXpathRecurSpec }, i8* }, %struct.sTagXpathTable, { i8*, i32, { %struct.sTagXpathRecurSpec }, i8* } }>* @relaxngXpathPatternTable to [3 x %struct.sTagXpathTable]*), i32 0, i32 0), i32 3 }, %struct.sTagXpathTableTable { %struct.sTagXpathTable* getelementptr inbounds ([2 x %struct.sTagXpathTable], [2 x %struct.sTagXpathTable]* bitcast ([2 x { i8*, i32, { %struct.sTagXpathRecurSpec }, i8* }]* @relaxngXpathGrammerTable to [2 x %struct.sTagXpathTable]*), i32 0, i32 0), i32 2 }, %struct.sTagXpathTableTable { %struct.sTagXpathTable* getelementptr inbounds ([1 x %struct.sTagXpathTable], [1 x %struct.sTagXpathTable]* @relaxngXpathDefineNameTable, i32 0, i32 0), i32 1 }], align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"element\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"elements\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"attribute\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"attributes\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"namedPattern\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"named patterns\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"rng\00", align 1
@relaxngXpathElementNameTable = internal global [1 x %struct.sTagXpathTable] [%struct.sTagXpathTable { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i32 0, %union.anon { %struct.sTagXpathMakeTagSpec { i32 0, i32 -1, void (i8*, %struct.sTagXpathMakeTagSpec*, %struct.sTagEntryInfo*, i8*)* @makeTagWithUpdatingScope } }, i8* null }], align 8
@relaxngXpathDefineNameTable = internal global [1 x %struct.sTagXpathTable] [%struct.sTagXpathTable { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i32 0, %union.anon { %struct.sTagXpathMakeTagSpec { i32 2, i32 -1, void (i8*, %struct.sTagXpathMakeTagSpec*, %struct.sTagEntryInfo*, i8*)* @makeTagWithUpdatingScope } }, i8* null }], align 8
@.str.8 = private unnamed_addr constant [27 x i8] c"/*[local-name()='element']\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"/*[local-name()='grammar']\00", align 1
@relaxngXpathMainTable = internal global [2 x { i8*, i32, { %struct.sTagXpathRecurSpec }, i8* }] [{ i8*, i32, { %struct.sTagXpathRecurSpec }, i8* } { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i32 0, i32 0), i32 1, { %struct.sTagXpathRecurSpec } { %struct.sTagXpathRecurSpec { void (i8*, %struct.sTagXpathRecurSpec*, i8*, i8*)* @relaxngMakeAndFindTagsUnderElement, i32 2 } }, i8* null }, { i8*, i32, { %struct.sTagXpathRecurSpec }, i8* } { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i32 0, i32 0), i32 1, { %struct.sTagXpathRecurSpec } { %struct.sTagXpathRecurSpec { void (i8*, %struct.sTagXpathRecurSpec*, i8*, i8*)* @relaxngFindTags, i32 3 } }, i8* null }], align 8
@.str.11 = private unnamed_addr constant [6 x i8] c"@name\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"./*[local-name()='element']\00", align 1
@.str.13 = private unnamed_addr constant [36 x i8] c"./*[local-name()='attribute']/@name\00", align 1
@.str.14 = private unnamed_addr constant [64 x i8] c"./*[not(local-name()='element')][not(local-name()='attribute')]\00", align 1
@relaxngXpathPatternTable = internal global <{ { i8*, i32, { %struct.sTagXpathRecurSpec }, i8* }, %struct.sTagXpathTable, { i8*, i32, { %struct.sTagXpathRecurSpec }, i8* } }> <{ { i8*, i32, { %struct.sTagXpathRecurSpec }, i8* } { i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i32 0, i32 0), i32 1, { %struct.sTagXpathRecurSpec } { %struct.sTagXpathRecurSpec { void (i8*, %struct.sTagXpathRecurSpec*, i8*, i8*)* @relaxngMakeAndFindTagsUnderElement, i32 2 } }, i8* null }, %struct.sTagXpathTable { i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.13, i32 0, i32 0), i32 0, %union.anon { %struct.sTagXpathMakeTagSpec { i32 1, i32 -1, void (i8*, %struct.sTagXpathMakeTagSpec*, %struct.sTagEntryInfo*, i8*)* @makeTagWithScope } }, i8* null }, { i8*, i32, { %struct.sTagXpathRecurSpec }, i8* } { i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.14, i32 0, i32 0), i32 1, { %struct.sTagXpathRecurSpec } { %struct.sTagXpathRecurSpec { void (i8*, %struct.sTagXpathRecurSpec*, i8*, i8*)* @relaxngFindTags, i32 2 } }, i8* null } }>, align 8
@.str.16 = private unnamed_addr constant [26 x i8] c"./*[local-name()='start']\00", align 1
@.str.17 = private unnamed_addr constant [27 x i8] c"./*[local-name()='define']\00", align 1
@relaxngXpathGrammerTable = internal global [2 x { i8*, i32, { %struct.sTagXpathRecurSpec }, i8* }] [{ i8*, i32, { %struct.sTagXpathRecurSpec }, i8* } { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i32 0, i32 0), i32 1, { %struct.sTagXpathRecurSpec } { %struct.sTagXpathRecurSpec { void (i8*, %struct.sTagXpathRecurSpec*, i8*, i8*)* @relaxngFindTags, i32 2 } }, i8* null }, { i8*, i32, { %struct.sTagXpathRecurSpec }, i8* } { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.17, i32 0, i32 0), i32 1, { %struct.sTagXpathRecurSpec } { %struct.sTagXpathRecurSpec { void (i8*, %struct.sTagXpathRecurSpec*, i8*, i8*)* @relaxngMakeAndFindTagsUnderDefine, i32 2 } }, i8* null }], align 8

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sParserDefinition* @RelaxNGParser() #0 {
entry:
  %def = alloca %struct.sParserDefinition*, align 8
  %call = call %struct.sParserDefinition* @parserNew(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store %struct.sParserDefinition* %call, %struct.sParserDefinition** %def, align 8
  %0 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %0, i32 0, i32 1
  store %struct.sKindDefinition* getelementptr inbounds ([3 x %struct.sKindDefinition], [3 x %struct.sKindDefinition]* @RelaxNGKinds, i64 0, i64 0), %struct.sKindDefinition** %kindTable, align 8
  %1 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %1, i32 0, i32 2
  store i32 3, i32* %kindCount, align 8
  %2 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %extensions = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %2, i32 0, i32 3
  store i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @extensions, i64 0, i64 0), i8*** %extensions, align 8
  %3 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %parser = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %3, i32 0, i32 8
  store void ()* @findRelaxNGTags, void ()** %parser, align 8
  %4 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %tagXpathTableTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %4, i32 0, i32 20
  store %struct.sTagXpathTableTable* getelementptr inbounds ([5 x %struct.sTagXpathTableTable], [5 x %struct.sTagXpathTableTable]* @relaxngXpathTableTable, i64 0, i64 0), %struct.sTagXpathTableTable** %tagXpathTableTable, align 8
  %5 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %tagXpathTableCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %5, i32 0, i32 21
  store i32 5, i32* %tagXpathTableCount, align 8
  %6 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %useCork = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %6, i32 0, i32 12
  store i8 1, i8* %useCork, align 4
  %7 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  ret %struct.sParserDefinition* %7
}

declare %struct.sParserDefinition* @parserNew(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @findRelaxNGTags() #0 {
entry:
  %corkIndex = alloca i32, align 4
  store i32 0, i32* %corkIndex, align 4
  %0 = bitcast i32* %corkIndex to i8*
  call void @findXMLTags(i8* null, i8* null, %struct.sTagXpathTableTable* getelementptr inbounds ([5 x %struct.sTagXpathTableTable], [5 x %struct.sTagXpathTableTable]* @relaxngXpathTableTable, i64 0, i64 0), %struct.sKindDefinition* getelementptr inbounds ([3 x %struct.sKindDefinition], [3 x %struct.sKindDefinition]* @RelaxNGKinds, i64 0, i64 0), i8* %0)
  ret void
}

declare void @findXMLTags(i8*, i8*, %struct.sTagXpathTableTable*, %struct.sKindDefinition*, i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @relaxngMakeAndFindTagsUnderElement(i8* %node, %struct.sTagXpathRecurSpec* %spec, i8* %ctx, i8* %userData) #0 {
entry:
  %node.addr = alloca i8*, align 8
  %spec.addr = alloca %struct.sTagXpathRecurSpec*, align 8
  %ctx.addr = alloca i8*, align 8
  %userData.addr = alloca i8*, align 8
  store i8* %node, i8** %node.addr, align 8
  store %struct.sTagXpathRecurSpec* %spec, %struct.sTagXpathRecurSpec** %spec.addr, align 8
  store i8* %ctx, i8** %ctx.addr, align 8
  store i8* %userData, i8** %userData.addr, align 8
  %0 = load i8*, i8** %node.addr, align 8
  %1 = load %struct.sTagXpathRecurSpec*, %struct.sTagXpathRecurSpec** %spec.addr, align 8
  %2 = load i8*, i8** %ctx.addr, align 8
  %3 = load i8*, i8** %userData.addr, align 8
  call void @relaxngMakeAndFindTags(i8* %0, %struct.sTagXpathRecurSpec* %1, i8* %2, i32 1, i8* %3)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @relaxngFindTags(i8* %node, %struct.sTagXpathRecurSpec* %spec, i8* %ctx, i8* %userData) #0 {
entry:
  %node.addr = alloca i8*, align 8
  %spec.addr = alloca %struct.sTagXpathRecurSpec*, align 8
  %ctx.addr = alloca i8*, align 8
  %userData.addr = alloca i8*, align 8
  %corkIndex = alloca i32, align 4
  store i8* %node, i8** %node.addr, align 8
  store %struct.sTagXpathRecurSpec* %spec, %struct.sTagXpathRecurSpec** %spec.addr, align 8
  store i8* %ctx, i8** %ctx.addr, align 8
  store i8* %userData, i8** %userData.addr, align 8
  %0 = load i8*, i8** %userData.addr, align 8
  %1 = bitcast i8* %0 to i32*
  %2 = load i32, i32* %1, align 4
  store i32 %2, i32* %corkIndex, align 4
  %3 = load i8*, i8** %ctx.addr, align 8
  %4 = load i8*, i8** %node.addr, align 8
  %5 = load %struct.sTagXpathRecurSpec*, %struct.sTagXpathRecurSpec** %spec.addr, align 8
  %nextTable = getelementptr inbounds %struct.sTagXpathRecurSpec, %struct.sTagXpathRecurSpec* %5, i32 0, i32 1
  %6 = load i32, i32* %nextTable, align 8
  %idx.ext = sext i32 %6 to i64
  %add.ptr = getelementptr inbounds %struct.sTagXpathTableTable, %struct.sTagXpathTableTable* getelementptr inbounds ([5 x %struct.sTagXpathTableTable], [5 x %struct.sTagXpathTableTable]* @relaxngXpathTableTable, i64 0, i64 0), i64 %idx.ext
  %7 = bitcast i32* %corkIndex to i8*
  call void @findXMLTags(i8* %3, i8* %4, %struct.sTagXpathTableTable* %add.ptr, %struct.sKindDefinition* getelementptr inbounds ([3 x %struct.sKindDefinition], [3 x %struct.sKindDefinition]* @RelaxNGKinds, i64 0, i64 0), i8* %7)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @relaxngMakeAndFindTags(i8* %node, %struct.sTagXpathRecurSpec* %spec, i8* %ctx, i32 %nextTable, i8* %userData) #0 {
entry:
  %node.addr = alloca i8*, align 8
  %spec.addr = alloca %struct.sTagXpathRecurSpec*, align 8
  %ctx.addr = alloca i8*, align 8
  %nextTable.addr = alloca i32, align 4
  %userData.addr = alloca i8*, align 8
  %corkIndex = alloca i32, align 4
  store i8* %node, i8** %node.addr, align 8
  store %struct.sTagXpathRecurSpec* %spec, %struct.sTagXpathRecurSpec** %spec.addr, align 8
  store i8* %ctx, i8** %ctx.addr, align 8
  store i32 %nextTable, i32* %nextTable.addr, align 4
  store i8* %userData, i8** %userData.addr, align 8
  %0 = load i8*, i8** %userData.addr, align 8
  %1 = bitcast i8* %0 to i32*
  %2 = load i32, i32* %1, align 4
  store i32 %2, i32* %corkIndex, align 4
  %3 = load i8*, i8** %ctx.addr, align 8
  %4 = load i8*, i8** %node.addr, align 8
  %5 = load i32, i32* %nextTable.addr, align 4
  %idx.ext = sext i32 %5 to i64
  %add.ptr = getelementptr inbounds %struct.sTagXpathTableTable, %struct.sTagXpathTableTable* getelementptr inbounds ([5 x %struct.sTagXpathTableTable], [5 x %struct.sTagXpathTableTable]* @relaxngXpathTableTable, i64 0, i64 0), i64 %idx.ext
  %6 = bitcast i32* %corkIndex to i8*
  call void @findXMLTags(i8* %3, i8* %4, %struct.sTagXpathTableTable* %add.ptr, %struct.sKindDefinition* getelementptr inbounds ([3 x %struct.sKindDefinition], [3 x %struct.sKindDefinition]* @RelaxNGKinds, i64 0, i64 0), i8* %6)
  %7 = load i8*, i8** %node.addr, align 8
  %8 = load %struct.sTagXpathRecurSpec*, %struct.sTagXpathRecurSpec** %spec.addr, align 8
  %9 = load i8*, i8** %ctx.addr, align 8
  %10 = bitcast i32* %corkIndex to i8*
  call void @relaxngFindTags(i8* %7, %struct.sTagXpathRecurSpec* %8, i8* %9, i8* %10)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @makeTagWithUpdatingScope(i8* %node, %struct.sTagXpathMakeTagSpec* %spec, %struct.sTagEntryInfo* %tag, i8* %userData) #0 {
entry:
  %node.addr = alloca i8*, align 8
  %spec.addr = alloca %struct.sTagXpathMakeTagSpec*, align 8
  %tag.addr = alloca %struct.sTagEntryInfo*, align 8
  %userData.addr = alloca i8*, align 8
  %corkIndex = alloca i32*, align 8
  store i8* %node, i8** %node.addr, align 8
  store %struct.sTagXpathMakeTagSpec* %spec, %struct.sTagXpathMakeTagSpec** %spec.addr, align 8
  store %struct.sTagEntryInfo* %tag, %struct.sTagEntryInfo** %tag.addr, align 8
  store i8* %userData, i8** %userData.addr, align 8
  %0 = load i8*, i8** %userData.addr, align 8
  %1 = bitcast i8* %0 to i32*
  store i32* %1, i32** %corkIndex, align 8
  %2 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %3 = load i32*, i32** %corkIndex, align 8
  %4 = load i32, i32* %3, align 4
  call void @setScope(%struct.sTagEntryInfo* %2, i32 %4)
  %5 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %call = call i32 @makeTagEntry(%struct.sTagEntryInfo* %5)
  %6 = load i32*, i32** %corkIndex, align 8
  store i32 %call, i32* %6, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @setScope(%struct.sTagEntryInfo* %tag, i32 %index) #0 {
entry:
  %tag.addr = alloca %struct.sTagEntryInfo*, align 8
  %index.addr = alloca i32, align 4
  store %struct.sTagEntryInfo* %tag, %struct.sTagEntryInfo** %tag.addr, align 8
  store i32 %index, i32* %index.addr, align 4
  %0 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %extensionFields = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %0, i32 0, i32 11
  %scopeKindIndex = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields, i32 0, i32 5
  store i32 -1, i32* %scopeKindIndex, align 4
  %1 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %extensionFields1 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %1, i32 0, i32 11
  %scopeName = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields1, i32 0, i32 6
  store i8* null, i8** %scopeName, align 8
  %2 = load i32, i32* %index.addr, align 4
  %3 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %extensionFields2 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %3, i32 0, i32 11
  %scopeIndex = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields2, i32 0, i32 7
  store i32 %2, i32* %scopeIndex, align 8
  ret void
}

declare i32 @makeTagEntry(%struct.sTagEntryInfo*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @makeTagWithScope(i8* %node, %struct.sTagXpathMakeTagSpec* %spec, %struct.sTagEntryInfo* %tag, i8* %userData) #0 {
entry:
  %node.addr = alloca i8*, align 8
  %spec.addr = alloca %struct.sTagXpathMakeTagSpec*, align 8
  %tag.addr = alloca %struct.sTagEntryInfo*, align 8
  %userData.addr = alloca i8*, align 8
  store i8* %node, i8** %node.addr, align 8
  store %struct.sTagXpathMakeTagSpec* %spec, %struct.sTagXpathMakeTagSpec** %spec.addr, align 8
  store %struct.sTagEntryInfo* %tag, %struct.sTagEntryInfo** %tag.addr, align 8
  store i8* %userData, i8** %userData.addr, align 8
  %0 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %1 = load i8*, i8** %userData.addr, align 8
  %2 = bitcast i8* %1 to i32*
  %3 = load i32, i32* %2, align 4
  call void @setScope(%struct.sTagEntryInfo* %0, i32 %3)
  %4 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %call = call i32 @makeTagEntry(%struct.sTagEntryInfo* %4)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @relaxngMakeAndFindTagsUnderDefine(i8* %node, %struct.sTagXpathRecurSpec* %spec, i8* %ctx, i8* %userData) #0 {
entry:
  %node.addr = alloca i8*, align 8
  %spec.addr = alloca %struct.sTagXpathRecurSpec*, align 8
  %ctx.addr = alloca i8*, align 8
  %userData.addr = alloca i8*, align 8
  store i8* %node, i8** %node.addr, align 8
  store %struct.sTagXpathRecurSpec* %spec, %struct.sTagXpathRecurSpec** %spec.addr, align 8
  store i8* %ctx, i8** %ctx.addr, align 8
  store i8* %userData, i8** %userData.addr, align 8
  %0 = load i8*, i8** %node.addr, align 8
  %1 = load %struct.sTagXpathRecurSpec*, %struct.sTagXpathRecurSpec** %spec.addr, align 8
  %2 = load i8*, i8** %ctx.addr, align 8
  %3 = load i8*, i8** %userData.addr, align 8
  call void @relaxngMakeAndFindTags(i8* %0, %struct.sTagXpathRecurSpec* %1, i8* %2, i32 4, i8* %3)
  ret void
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 10.0.0 (https://github.com/holzschu/clang.git 0cfc630fbdb62e96720b611a57123ef3eb13e297) (https://github.com/holzschu/llvm.git 0d8a71e39b28502c24718f7e74b5acbcfe36dfe0)"}
