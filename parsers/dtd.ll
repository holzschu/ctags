; ModuleID = 'dtd.c'
source_filename = "dtd.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-ios11.0.0"

%struct.sKindDefinition = type { i8, i8, i8*, i8*, i8, i32, %struct.sRoleDesc*, %struct.sScopeSeparator*, i32, i32, i32, %struct.sKindDefinition*, %struct.sKindDefinition* }
%struct.sRoleDesc = type { i8, i8*, i8* }
%struct.sScopeSeparator = type { i32, i8* }
%struct.keywordTable = type { i8*, i32 }
%struct.tokenInfoClass = type { i32, i16, i16, i16, i16, i64, %struct.tokenTypePair*, i32, void (%struct.sTokenInfo*, i8*)*, void (%struct.sTokenInfo*, i8*)*, void (%struct.sTokenInfo*)*, void (%struct.sTokenInfo*)*, void (%struct.sTokenInfo*, %struct.sTokenInfo*, i8*)*, %struct.sObjPool*, %struct.sPtrArray* }
%struct.tokenTypePair = type { i16, i16 }
%struct.sTokenInfo = type { i16, i16, %struct.sVString*, %struct.tokenInfoClass*, i64, %struct._MIOPos }
%struct.sVString = type { i64, i64, i8* }
%struct._MIOPos = type { i32, %union.anon.0 }
%union.anon.0 = type { i64 }
%struct.sObjPool = type opaque
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
%struct.sTokenExtra = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"DTD\00", align 1
@DtdKinds = internal global [5 x %struct.sKindDefinition] [%struct.sKindDefinition { i8 1, i8 69, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 112, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i32 0, i32 0), i8 0, i32 3, %struct.sRoleDesc* getelementptr inbounds ([3 x %struct.sRoleDesc], [3 x %struct.sRoleDesc]* @DtdEntityRoles, i32 0, i32 0), %struct.sScopeSeparator* getelementptr inbounds ([1 x %struct.sScopeSeparator], [1 x %struct.sScopeSeparator]* @DtdParameterEntrySeparators, i32 0, i32 0), i32 1, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 101, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i8 0, i32 1, %struct.sRoleDesc* getelementptr inbounds ([1 x %struct.sRoleDesc], [1 x %struct.sRoleDesc]* @DtdElementRoles, i32 0, i32 0), %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 97, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* getelementptr inbounds ([1 x %struct.sScopeSeparator], [1 x %struct.sScopeSeparator]* @DtdAttSeparators, i32 0, i32 0), i32 1, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 110, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }], align 8
@extensions = internal constant [3 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i32 0, i32 0), i8* null], align 8
@DtdKeywordTable = internal constant [16 x %struct.keywordTable] [%struct.keywordTable { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i32 0), i32 0 }, %struct.keywordTable { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0), i32 1 }, %struct.keywordTable { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0), i32 2 }, %struct.keywordTable { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0), i32 3 }, %struct.keywordTable { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0), i32 4 }, %struct.keywordTable { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0), i32 5 }, %struct.keywordTable { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), i32 6 }, %struct.keywordTable { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i32 7 }, %struct.keywordTable { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i32 0, i32 0), i32 7 }, %struct.keywordTable { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0), i32 7 }, %struct.keywordTable { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0), i32 7 }, %struct.keywordTable { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i32 0, i32 0), i32 7 }, %struct.keywordTable { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0), i32 7 }, %struct.keywordTable { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i32 0, i32 0), i32 7 }, %struct.keywordTable { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.37, i32 0, i32 0), i32 8 }, %struct.keywordTable { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i32 0, i32 0), i32 8 }], align 8
@Lang_dtd = internal global i32 0, align 4
@dtdTokenInfoClass = internal global %struct.tokenInfoClass { i32 16, i16 257, i16 -1, i16 258, i16 256, i64 4, %struct.tokenTypePair* null, i32 0, void (%struct.sTokenInfo*, i8*)* null, void (%struct.sTokenInfo*, i8*)* @readToken, void (%struct.sTokenInfo*)* @clearToken, void (%struct.sTokenInfo*)* null, void (%struct.sTokenInfo*, %struct.sTokenInfo*, i8*)* @copyToken, %struct.sObjPool* null, %struct.sPtrArray* null }, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"entity\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"entities\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"parameterEntity\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"parameter entities\00", align 1
@DtdEntityRoles = internal global [3 x %struct.sRoleDesc] [%struct.sRoleDesc { i8 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0) }, %struct.sRoleDesc { i8 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0) }, %struct.sRoleDesc { i8 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i32 0, i32 0) }], align 8
@DtdParameterEntrySeparators = internal global [1 x %struct.sScopeSeparator] [%struct.sScopeSeparator { i32 -3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0) }], align 8
@.str.5 = private unnamed_addr constant [8 x i8] c"element\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"elements\00", align 1
@DtdElementRoles = internal global [1 x %struct.sRoleDesc] [%struct.sRoleDesc { i8 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i32 0, i32 0) }], align 8
@.str.7 = private unnamed_addr constant [10 x i8] c"attribute\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"attributes\00", align 1
@DtdAttSeparators = internal global [1 x %struct.sScopeSeparator] [%struct.sScopeSeparator { i32 -3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i32 0, i32 0) }], align 8
@.str.9 = private unnamed_addr constant [9 x i8] c"notation\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"notations\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"elementName\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"element names\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"condition\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"conditions\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"partOfAttDef\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"part of attribute definition\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"/%\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"attOwner\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"attributes owner\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"/@\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"dtd\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"mod\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"ENTITY\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"ELEMENT\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"ATTLIST\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"INCLUDE\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"IGNORE\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"NOTATION\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"FIXED\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"CDATA\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"ID\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"IDREF\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"IDREFS\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"ENTITIES\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"NMTOKEN\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"NMTOKENS\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"REQUIRED\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"IMPLIED\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sParserDefinition* @DtdParser() #0 {
entry:
  %def = alloca %struct.sParserDefinition*, align 8
  %call = call %struct.sParserDefinition* @parserNew(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store %struct.sParserDefinition* %call, %struct.sParserDefinition** %def, align 8
  %0 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %initialize = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %0, i32 0, i32 6
  store void (i32)* @initialize, void (i32)** %initialize, align 8
  %1 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %parser = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %1, i32 0, i32 8
  store void ()* @findDtdTags, void ()** %parser, align 8
  %2 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %2, i32 0, i32 1
  store %struct.sKindDefinition* getelementptr inbounds ([5 x %struct.sKindDefinition], [5 x %struct.sKindDefinition]* @DtdKinds, i64 0, i64 0), %struct.sKindDefinition** %kindTable, align 8
  %3 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %3, i32 0, i32 2
  store i32 5, i32* %kindCount, align 8
  %4 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %extensions = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %4, i32 0, i32 3
  store i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @extensions, i64 0, i64 0), i8*** %extensions, align 8
  %5 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %keywordTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %5, i32 0, i32 18
  store %struct.keywordTable* getelementptr inbounds ([16 x %struct.keywordTable], [16 x %struct.keywordTable]* @DtdKeywordTable, i64 0, i64 0), %struct.keywordTable** %keywordTable, align 8
  %6 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %keywordCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %6, i32 0, i32 19
  store i32 16, i32* %keywordCount, align 8
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
define internal void @initialize(i32 %language) #0 {
entry:
  %language.addr = alloca i32, align 4
  store i32 %language, i32* %language.addr, align 4
  %0 = load i32, i32* %language.addr, align 4
  store i32 %0, i32* @Lang_dtd, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @findDtdTags() #0 {
entry:
  %token = alloca %struct.sTokenInfo*, align 8
  %call = call %struct.sTokenInfo* @newDtdToken()
  store %struct.sTokenInfo* %call, %struct.sTokenInfo** %token, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  call void @tokenRead(%struct.sTokenInfo* %0)
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  call void @parseDtdTag1(%struct.sTokenInfo* %1)
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %2 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %2, i32 0, i32 0
  %3 = load i16, i16* %type, align 8
  %conv = sext i16 %3 to i32
  %4 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %klass = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %4, i32 0, i32 3
  %5 = load %struct.tokenInfoClass*, %struct.tokenInfoClass** %klass, align 8
  %typeForEOF = getelementptr inbounds %struct.tokenInfoClass, %struct.tokenInfoClass* %5, i32 0, i32 4
  %6 = load i16, i16* %typeForEOF, align 2
  %conv1 = sext i16 %6 to i32
  %cmp = icmp eq i32 %conv, %conv1
  %lnot = xor i1 %cmp, true
  br i1 %lnot, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  call void @tokenDestroy(%struct.sTokenInfo* %7)
  call void @flashTokenBacklog(%struct.tokenInfoClass* @dtdTokenInfoClass)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct.sTokenInfo* @newDtdToken() #0 {
entry:
  %call = call i8* @newToken(%struct.tokenInfoClass* @dtdTokenInfoClass)
  %0 = bitcast i8* %call to %struct.sTokenInfo*
  ret %struct.sTokenInfo* %0
}

declare void @tokenRead(%struct.sTokenInfo*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseDtdTag1(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 0
  %1 = load i16, i16* %type, align 8
  %conv = sext i16 %1 to i32
  %cmp = icmp eq i32 %conv, 260
  br i1 %cmp, label %if.then, label %if.end70

if.then:                                          ; preds = %entry
  %2 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @tokenRead(%struct.sTokenInfo* %2)
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type2 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %3, i32 0, i32 0
  %4 = load i16, i16* %type2, align 8
  %conv3 = sext i16 %4 to i32
  %5 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %klass = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %5, i32 0, i32 3
  %6 = load %struct.tokenInfoClass*, %struct.tokenInfoClass** %klass, align 8
  %typeForKeyword = getelementptr inbounds %struct.tokenInfoClass, %struct.tokenInfoClass* %6, i32 0, i32 3
  %7 = load i16, i16* %typeForKeyword, align 8
  %conv4 = sext i16 %7 to i32
  %cmp5 = icmp eq i32 %conv3, %conv4
  br i1 %cmp5, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %8 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %8, i32 0, i32 1
  %9 = load i16, i16* %keyword, align 2
  %conv7 = sext i16 %9 to i32
  %cmp8 = icmp eq i32 %conv7, 1
  br i1 %cmp8, label %if.then10, label %if.else

if.then10:                                        ; preds = %land.lhs.true
  %10 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @parseElement(%struct.sTokenInfo* %10, i1 zeroext true)
  br label %if.end69

if.else:                                          ; preds = %land.lhs.true, %if.then
  %11 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type11 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %11, i32 0, i32 0
  %12 = load i16, i16* %type11, align 8
  %conv12 = sext i16 %12 to i32
  %13 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %klass13 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %13, i32 0, i32 3
  %14 = load %struct.tokenInfoClass*, %struct.tokenInfoClass** %klass13, align 8
  %typeForKeyword14 = getelementptr inbounds %struct.tokenInfoClass, %struct.tokenInfoClass* %14, i32 0, i32 3
  %15 = load i16, i16* %typeForKeyword14, align 8
  %conv15 = sext i16 %15 to i32
  %cmp16 = icmp eq i32 %conv12, %conv15
  br i1 %cmp16, label %land.lhs.true18, label %if.else24

land.lhs.true18:                                  ; preds = %if.else
  %16 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword19 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %16, i32 0, i32 1
  %17 = load i16, i16* %keyword19, align 2
  %conv20 = sext i16 %17 to i32
  %cmp21 = icmp eq i32 %conv20, 2
  br i1 %cmp21, label %if.then23, label %if.else24

if.then23:                                        ; preds = %land.lhs.true18
  %18 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @parseAttlist(%struct.sTokenInfo* %18)
  br label %if.end68

if.else24:                                        ; preds = %land.lhs.true18, %if.else
  %19 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type25 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %19, i32 0, i32 0
  %20 = load i16, i16* %type25, align 8
  %conv26 = sext i16 %20 to i32
  %21 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %klass27 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %21, i32 0, i32 3
  %22 = load %struct.tokenInfoClass*, %struct.tokenInfoClass** %klass27, align 8
  %typeForKeyword28 = getelementptr inbounds %struct.tokenInfoClass, %struct.tokenInfoClass* %22, i32 0, i32 3
  %23 = load i16, i16* %typeForKeyword28, align 8
  %conv29 = sext i16 %23 to i32
  %cmp30 = icmp eq i32 %conv26, %conv29
  br i1 %cmp30, label %land.lhs.true32, label %if.else38

land.lhs.true32:                                  ; preds = %if.else24
  %24 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword33 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %24, i32 0, i32 1
  %25 = load i16, i16* %keyword33, align 2
  %conv34 = sext i16 %25 to i32
  %cmp35 = icmp eq i32 %conv34, 0
  br i1 %cmp35, label %if.then37, label %if.else38

if.then37:                                        ; preds = %land.lhs.true32
  %26 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @parseEntity(%struct.sTokenInfo* %26)
  br label %if.end67

if.else38:                                        ; preds = %land.lhs.true32, %if.else24
  %27 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type39 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %27, i32 0, i32 0
  %28 = load i16, i16* %type39, align 8
  %conv40 = sext i16 %28 to i32
  %29 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %klass41 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %29, i32 0, i32 3
  %30 = load %struct.tokenInfoClass*, %struct.tokenInfoClass** %klass41, align 8
  %typeForKeyword42 = getelementptr inbounds %struct.tokenInfoClass, %struct.tokenInfoClass* %30, i32 0, i32 3
  %31 = load i16, i16* %typeForKeyword42, align 8
  %conv43 = sext i16 %31 to i32
  %cmp44 = icmp eq i32 %conv40, %conv43
  br i1 %cmp44, label %land.lhs.true46, label %if.else52

land.lhs.true46:                                  ; preds = %if.else38
  %32 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword47 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %32, i32 0, i32 1
  %33 = load i16, i16* %keyword47, align 2
  %conv48 = sext i16 %33 to i32
  %cmp49 = icmp eq i32 %conv48, 5
  br i1 %cmp49, label %if.then51, label %if.else52

if.then51:                                        ; preds = %land.lhs.true46
  %34 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @parseNotation(%struct.sTokenInfo* %34)
  br label %if.end66

if.else52:                                        ; preds = %land.lhs.true46, %if.else38
  %35 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type53 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %35, i32 0, i32 0
  %36 = load i16, i16* %type53, align 8
  %conv54 = sext i16 %36 to i32
  %cmp55 = icmp eq i32 %conv54, 91
  br i1 %cmp55, label %if.then57, label %if.else58

if.then57:                                        ; preds = %if.else52
  %37 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @tokenRead(%struct.sTokenInfo* %37)
  %38 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @parseSection(%struct.sTokenInfo* %38)
  %39 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call = call zeroext i1 @tokenSkipToType(%struct.sTokenInfo* %39, i16 signext 93)
  br label %if.end65

if.else58:                                        ; preds = %if.else52
  %40 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type59 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %40, i32 0, i32 0
  %41 = load i16, i16* %type59, align 8
  %conv60 = sext i16 %41 to i32
  %cmp61 = icmp eq i32 %conv60, 62
  br i1 %cmp61, label %if.end, label %if.then63

if.then63:                                        ; preds = %if.else58
  %42 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call64 = call zeroext i1 @tokenSkipToType(%struct.sTokenInfo* %42, i16 signext 62)
  br label %if.end

if.end:                                           ; preds = %if.then63, %if.else58
  br label %if.end65

if.end65:                                         ; preds = %if.end, %if.then57
  br label %if.end66

if.end66:                                         ; preds = %if.end65, %if.then51
  br label %if.end67

if.end67:                                         ; preds = %if.end66, %if.then37
  br label %if.end68

if.end68:                                         ; preds = %if.end67, %if.then23
  br label %if.end69

if.end69:                                         ; preds = %if.end68, %if.then10
  br label %if.end70

if.end70:                                         ; preds = %if.end69, %entry
  ret void
}

declare void @tokenDestroy(%struct.sTokenInfo*) #1

declare void @flashTokenBacklog(%struct.tokenInfoClass*) #1

declare i8* @newToken(%struct.tokenInfoClass*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseElement(%struct.sTokenInfo* %token, i1 zeroext %skipToClose) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %skipToClose.addr = alloca i8, align 1
  %e = alloca %struct.sTagEntryInfo, align 8
  %original_index = alloca i64, align 8
  %identifier = alloca %struct.sTokenInfo*, align 8
  %current_index = alloca i64, align 8
  %index = alloca i32, align 4
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  %frombool = zext i1 %skipToClose to i8
  store i8 %frombool, i8* %skipToClose.addr, align 1
  %0 = load i8, i8* %skipToClose.addr, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i64 @countEntryInCorkQueue()
  store i64 %call, i64* %original_index, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @tokenRead(%struct.sTokenInfo* %1)
  %2 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %2, i32 0, i32 0
  %3 = load i16, i16* %type, align 8
  %conv = sext i16 %3 to i32
  %cmp = icmp eq i32 %conv, 37
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %4 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call3 = call %struct.sTokenInfo* @parserParameterEntityRef(%struct.sTokenInfo* %4)
  store %struct.sTokenInfo* %call3, %struct.sTokenInfo** %identifier, align 8
  %5 = load %struct.sTokenInfo*, %struct.sTokenInfo** %identifier, align 8
  %tobool4 = icmp ne %struct.sTokenInfo* %5, null
  br i1 %tobool4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.then2
  %6 = load %struct.sTokenInfo*, %struct.sTokenInfo** %identifier, align 8
  %call6 = call i32 @makeDtdTagMaybe(%struct.sTagEntryInfo* %e, %struct.sTokenInfo* %6, i32 1, i32 0)
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %identifier, align 8
  call void @tokenDestroy(%struct.sTokenInfo* %7)
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.then2
  br label %if.end31

if.else:                                          ; preds = %if.end
  %8 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type8 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %8, i32 0, i32 0
  %9 = load i16, i16* %type8, align 8
  %conv9 = sext i16 %9 to i32
  %cmp10 = icmp eq i32 %conv9, 259
  br i1 %cmp10, label %if.then12, label %if.else14

if.then12:                                        ; preds = %if.else
  %10 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call13 = call i32 @makeDtdTagMaybe(%struct.sTagEntryInfo* %e, %struct.sTokenInfo* %10, i32 2, i32 -1)
  br label %if.end30

if.else14:                                        ; preds = %if.else
  %11 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type15 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %11, i32 0, i32 0
  %12 = load i16, i16* %type15, align 8
  %conv16 = sext i16 %12 to i32
  %cmp17 = icmp eq i32 %conv16, 40
  br i1 %cmp17, label %if.then19, label %if.end29

if.then19:                                        ; preds = %if.else14
  br label %do.body

do.body:                                          ; preds = %land.end, %if.then19
  %13 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @parseElement(%struct.sTokenInfo* %13, i1 zeroext false)
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %14 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type20 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %14, i32 0, i32 0
  %15 = load i16, i16* %type20, align 8
  %conv21 = sext i16 %15 to i32
  %16 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %klass = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %16, i32 0, i32 3
  %17 = load %struct.tokenInfoClass*, %struct.tokenInfoClass** %klass, align 8
  %typeForEOF = getelementptr inbounds %struct.tokenInfoClass, %struct.tokenInfoClass* %17, i32 0, i32 4
  %18 = load i16, i16* %typeForEOF, align 2
  %conv22 = sext i16 %18 to i32
  %cmp23 = icmp eq i32 %conv21, %conv22
  br i1 %cmp23, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %do.cond
  %19 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type25 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %19, i32 0, i32 0
  %20 = load i16, i16* %type25, align 8
  %conv26 = sext i16 %20 to i32
  %cmp27 = icmp ne i32 %conv26, 41
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %21 = phi i1 [ false, %do.cond ], [ %cmp27, %land.rhs ]
  br i1 %21, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  br label %if.end29

if.end29:                                         ; preds = %do.end, %if.else14
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.then12
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %if.end7
  %22 = load i8, i8* %skipToClose.addr, align 1
  %tobool32 = trunc i8 %22 to i1
  br i1 %tobool32, label %if.then33, label %if.end45

if.then33:                                        ; preds = %if.end31
  %call34 = call i64 @countEntryInCorkQueue()
  store i64 %call34, i64* %current_index, align 8
  %23 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call35 = call zeroext i1 @tokenSkipToType(%struct.sTokenInfo* %23, i16 signext 62)
  br i1 %call35, label %land.lhs.true, label %if.end44

land.lhs.true:                                    ; preds = %if.then33
  %24 = load i64, i64* %current_index, align 8
  %25 = load i64, i64* %original_index, align 8
  %cmp37 = icmp ugt i64 %24, %25
  br i1 %cmp37, label %if.then39, label %if.end44

if.then39:                                        ; preds = %land.lhs.true
  %26 = load i64, i64* %original_index, align 8
  %conv40 = trunc i64 %26 to i32
  store i32 %conv40, i32* %index, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then39
  %27 = load i32, i32* %index, align 4
  %conv41 = zext i32 %27 to i64
  %28 = load i64, i64* %current_index, align 8
  %cmp42 = icmp ult i64 %conv41, %28
  br i1 %cmp42, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %29 = load i32, i32* %index, align 4
  %30 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %lineNumber = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %30, i32 0, i32 4
  %31 = load i64, i64* %lineNumber, align 8
  call void @backpatchEndField(i32 %29, i64 %31)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %32 = load i32, i32* %index, align 4
  %inc = add i32 %32, 1
  store i32 %inc, i32* %index, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end44

if.end44:                                         ; preds = %for.end, %land.lhs.true, %if.then33
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %if.end31
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseAttlist(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %e = alloca %struct.sTagEntryInfo, align 8
  %index = alloca i32, align 4
  %identifier = alloca %struct.sTokenInfo*, align 8
  %element = alloca %struct.sTokenInfo*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  store i32 0, i32* %index, align 4
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @tokenRead(%struct.sTokenInfo* %0)
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %1, i32 0, i32 0
  %2 = load i16, i16* %type, align 8
  %conv = sext i16 %2 to i32
  %cmp = icmp eq i32 %conv, 37
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @tokenRead(%struct.sTokenInfo* %3)
  %4 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type2 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %4, i32 0, i32 0
  %5 = load i16, i16* %type2, align 8
  %conv3 = sext i16 %5 to i32
  %cmp4 = icmp eq i32 %conv3, 259
  br i1 %cmp4, label %if.then6, label %if.end11

if.then6:                                         ; preds = %if.then
  %6 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call = call %struct.sTokenInfo* @parserParameterEntityRef(%struct.sTokenInfo* %6)
  store %struct.sTokenInfo* %call, %struct.sTokenInfo** %identifier, align 8
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %identifier, align 8
  %tobool = icmp ne %struct.sTokenInfo* %7, null
  br i1 %tobool, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.then6
  %8 = load %struct.sTokenInfo*, %struct.sTokenInfo** %identifier, align 8
  %call8 = call i32 @makeDtdTagMaybe(%struct.sTagEntryInfo* %e, %struct.sTokenInfo* %8, i32 0, i32 0)
  store i32 %call8, i32* %index, align 4
  %9 = load %struct.sTokenInfo*, %struct.sTokenInfo** %identifier, align 8
  call void @tokenDestroy(%struct.sTokenInfo* %9)
  %10 = load i32, i32* %index, align 4
  %11 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %12 = bitcast %struct.sTokenInfo* %11 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %12, i64 48
  %13 = bitcast i8* %add.ptr to %struct.sTokenExtra*
  %scopeIndex = getelementptr inbounds %struct.sTokenExtra, %struct.sTokenExtra* %13, i32 0, i32 0
  store i32 %10, i32* %scopeIndex, align 4
  %14 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @parseAttDefs(%struct.sTokenInfo* %14)
  %15 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %16 = bitcast %struct.sTokenInfo* %15 to i8*
  %add.ptr9 = getelementptr inbounds i8, i8* %16, i64 48
  %17 = bitcast i8* %add.ptr9 to %struct.sTokenExtra*
  %scopeIndex10 = getelementptr inbounds %struct.sTokenExtra, %struct.sTokenExtra* %17, i32 0, i32 0
  store i32 0, i32* %scopeIndex10, align 4
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then6
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then
  br label %if.end24

if.else:                                          ; preds = %entry
  %18 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type12 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %18, i32 0, i32 0
  %19 = load i16, i16* %type12, align 8
  %conv13 = sext i16 %19 to i32
  %cmp14 = icmp eq i32 %conv13, 259
  br i1 %cmp14, label %if.then16, label %if.end23

if.then16:                                        ; preds = %if.else
  %20 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call17 = call i8* @newTokenByCopying(%struct.sTokenInfo* %20)
  %21 = bitcast i8* %call17 to %struct.sTokenInfo*
  store %struct.sTokenInfo* %21, %struct.sTokenInfo** %element, align 8
  %22 = load %struct.sTokenInfo*, %struct.sTokenInfo** %element, align 8
  %call18 = call i32 @makeDtdTagMaybe(%struct.sTagEntryInfo* %e, %struct.sTokenInfo* %22, i32 2, i32 0)
  store i32 %call18, i32* %index, align 4
  %23 = load %struct.sTokenInfo*, %struct.sTokenInfo** %element, align 8
  call void @tokenDestroy(%struct.sTokenInfo* %23)
  %24 = load i32, i32* %index, align 4
  %25 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %26 = bitcast %struct.sTokenInfo* %25 to i8*
  %add.ptr19 = getelementptr inbounds i8, i8* %26, i64 48
  %27 = bitcast i8* %add.ptr19 to %struct.sTokenExtra*
  %scopeIndex20 = getelementptr inbounds %struct.sTokenExtra, %struct.sTokenExtra* %27, i32 0, i32 0
  store i32 %24, i32* %scopeIndex20, align 4
  %28 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @parseAttDefs(%struct.sTokenInfo* %28)
  %29 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %30 = bitcast %struct.sTokenInfo* %29 to i8*
  %add.ptr21 = getelementptr inbounds i8, i8* %30, i64 48
  %31 = bitcast i8* %add.ptr21 to %struct.sTokenExtra*
  %scopeIndex22 = getelementptr inbounds %struct.sTokenExtra, %struct.sTokenExtra* %31, i32 0, i32 0
  store i32 0, i32* %scopeIndex22, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then16, %if.else
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.end11
  %32 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call25 = call zeroext i1 @tokenSkipToType(%struct.sTokenInfo* %32, i16 signext 62)
  %33 = load i32, i32* %index, align 4
  %34 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %lineNumber = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %34, i32 0, i32 4
  %35 = load i64, i64* %lineNumber, align 8
  call void @backpatchEndField(i32 %33, i64 %35)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseEntity(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %e = alloca %struct.sTagEntryInfo, align 8
  %index = alloca i32, align 4
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  store i32 0, i32* %index, align 4
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @tokenRead(%struct.sTokenInfo* %0)
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %1, i32 0, i32 0
  %2 = load i16, i16* %type, align 8
  %conv = sext i16 %2 to i32
  %cmp = icmp eq i32 %conv, 37
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @tokenRead(%struct.sTokenInfo* %3)
  %4 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type2 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %4, i32 0, i32 0
  %5 = load i16, i16* %type2, align 8
  %conv3 = sext i16 %5 to i32
  %cmp4 = icmp eq i32 %conv3, 259
  br i1 %cmp4, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then
  %6 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call = call i32 @makeDtdTagMaybe(%struct.sTagEntryInfo* %e, %struct.sTokenInfo* %6, i32 1, i32 -1)
  store i32 %call, i32* %index, align 4
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then
  br label %if.end14

if.else:                                          ; preds = %entry
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type7 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %7, i32 0, i32 0
  %8 = load i16, i16* %type7, align 8
  %conv8 = sext i16 %8 to i32
  %cmp9 = icmp eq i32 %conv8, 259
  br i1 %cmp9, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.else
  %9 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call12 = call i32 @makeDtdTagMaybe(%struct.sTagEntryInfo* %e, %struct.sTokenInfo* %9, i32 0, i32 -1)
  store i32 %call12, i32* %index, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.else
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.end
  %10 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call15 = call zeroext i1 @tokenSkipToType(%struct.sTokenInfo* %10, i16 signext 62)
  br i1 %call15, label %land.lhs.true, label %if.end20

land.lhs.true:                                    ; preds = %if.end14
  %11 = load i32, i32* %index, align 4
  %cmp17 = icmp ne i32 %11, 0
  br i1 %cmp17, label %if.then19, label %if.end20

if.then19:                                        ; preds = %land.lhs.true
  %12 = load i32, i32* %index, align 4
  %13 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %lineNumber = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %13, i32 0, i32 4
  %14 = load i64, i64* %lineNumber, align 8
  call void @backpatchEndField(i32 %12, i64 %14)
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %land.lhs.true, %if.end14
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseNotation(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %index = alloca i32, align 4
  %e = alloca %struct.sTagEntryInfo, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  store i32 0, i32* %index, align 4
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
  %call = call i32 @makeDtdTagMaybe(%struct.sTagEntryInfo* %e, %struct.sTokenInfo* %3, i32 4, i32 -1)
  store i32 %call, i32* %index, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call2 = call zeroext i1 @tokenSkipToType(%struct.sTokenInfo* %4, i16 signext 62)
  %5 = load i32, i32* %index, align 4
  %6 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %lineNumber = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %6, i32 0, i32 4
  %7 = load i64, i64* %lineNumber, align 8
  call void @backpatchEndField(i32 %5, i64 %7)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseSection(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %condition = alloca %struct.sTokenInfo*, align 8
  %e = alloca %struct.sTagEntryInfo, align 8
  %index = alloca i32, align 4
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 0
  %1 = load i16, i16* %type, align 8
  %conv = sext i16 %1 to i32
  %2 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %klass = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %2, i32 0, i32 3
  %3 = load %struct.tokenInfoClass*, %struct.tokenInfoClass** %klass, align 8
  %typeForKeyword = getelementptr inbounds %struct.tokenInfoClass, %struct.tokenInfoClass* %3, i32 0, i32 3
  %4 = load i16, i16* %typeForKeyword, align 8
  %conv1 = sext i16 %4 to i32
  %cmp = icmp eq i32 %conv, %conv1
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %5 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %5, i32 0, i32 1
  %6 = load i16, i16* %keyword, align 2
  %conv3 = sext i16 %6 to i32
  %cmp4 = icmp eq i32 %conv3, 4
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call = call zeroext i1 @tokenSkipToType(%struct.sTokenInfo* %7, i16 signext 93)
  br label %if.end74

if.else:                                          ; preds = %land.lhs.true, %entry
  %8 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type6 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %8, i32 0, i32 0
  %9 = load i16, i16* %type6, align 8
  %conv7 = sext i16 %9 to i32
  %10 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %klass8 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %10, i32 0, i32 3
  %11 = load %struct.tokenInfoClass*, %struct.tokenInfoClass** %klass8, align 8
  %typeForKeyword9 = getelementptr inbounds %struct.tokenInfoClass, %struct.tokenInfoClass* %11, i32 0, i32 3
  %12 = load i16, i16* %typeForKeyword9, align 8
  %conv10 = sext i16 %12 to i32
  %cmp11 = icmp eq i32 %conv7, %conv10
  br i1 %cmp11, label %land.lhs.true13, label %if.else34

land.lhs.true13:                                  ; preds = %if.else
  %13 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword14 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %13, i32 0, i32 1
  %14 = load i16, i16* %keyword14, align 2
  %conv15 = sext i16 %14 to i32
  %cmp16 = icmp eq i32 %conv15, 3
  br i1 %cmp16, label %if.then18, label %if.else34

if.then18:                                        ; preds = %land.lhs.true13
  %15 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @tokenRead(%struct.sTokenInfo* %15)
  %16 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type19 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %16, i32 0, i32 0
  %17 = load i16, i16* %type19, align 8
  %conv20 = sext i16 %17 to i32
  %cmp21 = icmp eq i32 %conv20, 91
  br i1 %cmp21, label %if.then23, label %if.end

if.then23:                                        ; preds = %if.then18
  br label %do.body

do.body:                                          ; preds = %land.end, %if.then23
  %18 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @tokenRead(%struct.sTokenInfo* %18)
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %19 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type24 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %19, i32 0, i32 0
  %20 = load i16, i16* %type24, align 8
  %conv25 = sext i16 %20 to i32
  %21 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %klass26 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %21, i32 0, i32 3
  %22 = load %struct.tokenInfoClass*, %struct.tokenInfoClass** %klass26, align 8
  %typeForEOF = getelementptr inbounds %struct.tokenInfoClass, %struct.tokenInfoClass* %22, i32 0, i32 4
  %23 = load i16, i16* %typeForEOF, align 2
  %conv27 = sext i16 %23 to i32
  %cmp28 = icmp eq i32 %conv25, %conv27
  br i1 %cmp28, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %do.cond
  %24 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type30 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %24, i32 0, i32 0
  %25 = load i16, i16* %type30, align 8
  %conv31 = sext i16 %25 to i32
  %cmp32 = icmp ne i32 %conv31, 93
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %26 = phi i1 [ false, %do.cond ], [ %cmp32, %land.rhs ]
  br i1 %26, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then18
  br label %if.end73

if.else34:                                        ; preds = %land.lhs.true13, %if.else
  %27 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type35 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %27, i32 0, i32 0
  %28 = load i16, i16* %type35, align 8
  %conv36 = sext i16 %28 to i32
  %cmp37 = icmp eq i32 %conv36, 37
  br i1 %cmp37, label %if.then39, label %if.end72

if.then39:                                        ; preds = %if.else34
  %29 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call40 = call %struct.sTokenInfo* @parserParameterEntityRef(%struct.sTokenInfo* %29)
  store %struct.sTokenInfo* %call40, %struct.sTokenInfo** %condition, align 8
  %30 = load %struct.sTokenInfo*, %struct.sTokenInfo** %condition, align 8
  %tobool = icmp ne %struct.sTokenInfo* %30, null
  br i1 %tobool, label %if.then41, label %if.end71

if.then41:                                        ; preds = %if.then39
  %31 = load %struct.sTokenInfo*, %struct.sTokenInfo** %condition, align 8
  %call42 = call i32 @makeDtdTagMaybe(%struct.sTagEntryInfo* %e, %struct.sTokenInfo* %31, i32 1, i32 1)
  store i32 %call42, i32* %index, align 4
  %32 = load %struct.sTokenInfo*, %struct.sTokenInfo** %condition, align 8
  call void @tokenDestroy(%struct.sTokenInfo* %32)
  %33 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @tokenRead(%struct.sTokenInfo* %33)
  %34 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type43 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %34, i32 0, i32 0
  %35 = load i16, i16* %type43, align 8
  %conv44 = sext i16 %35 to i32
  %cmp45 = icmp eq i32 %conv44, 91
  br i1 %cmp45, label %if.then47, label %if.end70

if.then47:                                        ; preds = %if.then41
  br label %do.body48

do.body48:                                        ; preds = %land.end62, %if.then47
  %36 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @tokenRead(%struct.sTokenInfo* %36)
  %37 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @parseDtdTag1(%struct.sTokenInfo* %37)
  br label %do.cond49

do.cond49:                                        ; preds = %do.body48
  %38 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type50 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %38, i32 0, i32 0
  %39 = load i16, i16* %type50, align 8
  %conv51 = sext i16 %39 to i32
  %40 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %klass52 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %40, i32 0, i32 3
  %41 = load %struct.tokenInfoClass*, %struct.tokenInfoClass** %klass52, align 8
  %typeForEOF53 = getelementptr inbounds %struct.tokenInfoClass, %struct.tokenInfoClass* %41, i32 0, i32 4
  %42 = load i16, i16* %typeForEOF53, align 2
  %conv54 = sext i16 %42 to i32
  %cmp55 = icmp eq i32 %conv51, %conv54
  br i1 %cmp55, label %land.end62, label %land.rhs57

land.rhs57:                                       ; preds = %do.cond49
  %43 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type58 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %43, i32 0, i32 0
  %44 = load i16, i16* %type58, align 8
  %conv59 = sext i16 %44 to i32
  %cmp60 = icmp ne i32 %conv59, 93
  br label %land.end62

land.end62:                                       ; preds = %land.rhs57, %do.cond49
  %45 = phi i1 [ false, %do.cond49 ], [ %cmp60, %land.rhs57 ]
  br i1 %45, label %do.body48, label %do.end63

do.end63:                                         ; preds = %land.end62
  %46 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type64 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %46, i32 0, i32 0
  %47 = load i16, i16* %type64, align 8
  %conv65 = sext i16 %47 to i32
  %cmp66 = icmp eq i32 %conv65, 93
  br i1 %cmp66, label %if.then68, label %if.end69

if.then68:                                        ; preds = %do.end63
  %48 = load i32, i32* %index, align 4
  %49 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %lineNumber = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %49, i32 0, i32 4
  %50 = load i64, i64* %lineNumber, align 8
  call void @backpatchEndField(i32 %48, i64 %50)
  br label %if.end69

if.end69:                                         ; preds = %if.then68, %do.end63
  br label %if.end70

if.end70:                                         ; preds = %if.end69, %if.then41
  br label %if.end71

if.end71:                                         ; preds = %if.end70, %if.then39
  br label %if.end72

if.end72:                                         ; preds = %if.end71, %if.else34
  br label %if.end73

if.end73:                                         ; preds = %if.end72, %if.end
  br label %if.end74

if.end74:                                         ; preds = %if.end73, %if.then
  ret void
}

declare zeroext i1 @tokenSkipToType(%struct.sTokenInfo*, i16 signext) #1

declare i64 @countEntryInCorkQueue() #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct.sTokenInfo* @parserParameterEntityRef(%struct.sTokenInfo* %token) #0 {
entry:
  %retval = alloca %struct.sTokenInfo*, align 8
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %identifier = alloca %struct.sTokenInfo*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
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
  %call = call i8* @newTokenByCopying(%struct.sTokenInfo* %3)
  %4 = bitcast i8* %call to %struct.sTokenInfo*
  store %struct.sTokenInfo* %4, %struct.sTokenInfo** %identifier, align 8
  %5 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @tokenRead(%struct.sTokenInfo* %5)
  %6 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type2 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %6, i32 0, i32 0
  %7 = load i16, i16* %type2, align 8
  %conv3 = sext i16 %7 to i32
  %cmp4 = icmp eq i32 %conv3, 59
  br i1 %cmp4, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then
  %8 = load %struct.sTokenInfo*, %struct.sTokenInfo** %identifier, align 8
  store %struct.sTokenInfo* %8, %struct.sTokenInfo** %retval, align 8
  br label %return

if.else:                                          ; preds = %if.then
  %9 = load %struct.sTokenInfo*, %struct.sTokenInfo** %identifier, align 8
  call void @tokenDestroy(%struct.sTokenInfo* %9)
  store %struct.sTokenInfo* null, %struct.sTokenInfo** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  store %struct.sTokenInfo* null, %struct.sTokenInfo** %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.else, %if.then6
  %10 = load %struct.sTokenInfo*, %struct.sTokenInfo** %retval, align 8
  ret %struct.sTokenInfo* %10
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @makeDtdTagMaybe(%struct.sTagEntryInfo* %e, %struct.sTokenInfo* %token, i32 %kind, i32 %role) #0 {
entry:
  %retval = alloca i32, align 4
  %e.addr = alloca %struct.sTagEntryInfo*, align 8
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %kind.addr = alloca i32, align 4
  %role.addr = alloca i32, align 4
  store %struct.sTagEntryInfo* %e, %struct.sTagEntryInfo** %e.addr, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  store i32 %kind, i32* %kind.addr, align 4
  store i32 %role, i32* %role.addr, align 4
  %0 = load i32, i32* %role.addr, align 4
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %kind.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [5 x %struct.sKindDefinition], [5 x %struct.sKindDefinition]* @DtdKinds, i64 0, i64 %idxprom
  %enabled = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %arrayidx, i32 0, i32 0
  %2 = load i8, i8* %enabled, align 8
  %tobool = trunc i8 %2 to i1
  br i1 %tobool, label %if.end, label %if.then1

if.then1:                                         ; preds = %if.then
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end10

if.else:                                          ; preds = %entry
  %call = call zeroext i1 @isXtagEnabled(i32 4)
  br i1 %call, label %land.lhs.true, label %if.then8

land.lhs.true:                                    ; preds = %if.else
  %3 = load i32, i32* %kind.addr, align 4
  %idxprom2 = sext i32 %3 to i64
  %arrayidx3 = getelementptr inbounds [5 x %struct.sKindDefinition], [5 x %struct.sKindDefinition]* @DtdKinds, i64 0, i64 %idxprom2
  %roles = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %arrayidx3, i32 0, i32 6
  %4 = load %struct.sRoleDesc*, %struct.sRoleDesc** %roles, align 8
  %5 = load i32, i32* %role.addr, align 4
  %idxprom4 = sext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds %struct.sRoleDesc, %struct.sRoleDesc* %4, i64 %idxprom4
  %enabled6 = getelementptr inbounds %struct.sRoleDesc, %struct.sRoleDesc* %arrayidx5, i32 0, i32 0
  %6 = load i8, i8* %enabled6, align 8
  %tobool7 = trunc i8 %6 to i1
  br i1 %tobool7, label %if.end9, label %if.then8

if.then8:                                         ; preds = %land.lhs.true, %if.else
  store i32 0, i32* %retval, align 4
  br label %return

if.end9:                                          ; preds = %land.lhs.true
  br label %if.end10

if.end10:                                         ; preds = %if.end9, %if.end
  %7 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %e.addr, align 8
  %8 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %8, i32 0, i32 2
  %9 = load %struct.sVString*, %struct.sVString** %string, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %9, i32 0, i32 2
  %10 = load i8*, i8** %buffer, align 8
  %11 = load i32, i32* %kind.addr, align 4
  %12 = load i32, i32* %role.addr, align 4
  call void @initRefTagEntry(%struct.sTagEntryInfo* %7, i8* %10, i32 %11, i32 %12)
  %13 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %lineNumber = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %13, i32 0, i32 4
  %14 = load i64, i64* %lineNumber, align 8
  %15 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %e.addr, align 8
  %lineNumber11 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %15, i32 0, i32 1
  store i64 %14, i64* %lineNumber11, align 8
  %16 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %e.addr, align 8
  %filePosition = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %16, i32 0, i32 4
  %17 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %filePosition12 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %17, i32 0, i32 5
  %18 = bitcast %struct._MIOPos* %filePosition to i8*
  %19 = bitcast %struct._MIOPos* %filePosition12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 %19, i64 16, i1 false)
  %20 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %21 = bitcast %struct.sTokenInfo* %20 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %21, i64 48
  %22 = bitcast i8* %add.ptr to %struct.sTokenExtra*
  %scopeIndex = getelementptr inbounds %struct.sTokenExtra, %struct.sTokenExtra* %22, i32 0, i32 0
  %23 = load i32, i32* %scopeIndex, align 4
  %24 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %e.addr, align 8
  %extensionFields = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %24, i32 0, i32 11
  %scopeIndex13 = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields, i32 0, i32 7
  store i32 %23, i32* %scopeIndex13, align 8
  %25 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %e.addr, align 8
  %call14 = call i32 @makeTagEntry(%struct.sTagEntryInfo* %25)
  store i32 %call14, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end10, %if.then8, %if.then1
  %26 = load i32, i32* %retval, align 4
  ret i32 %26
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @backpatchEndField(i32 %index, i64 %lineNumber) #0 {
entry:
  %index.addr = alloca i32, align 4
  %lineNumber.addr = alloca i64, align 8
  %ep = alloca %struct.sTagEntryInfo*, align 8
  store i32 %index, i32* %index.addr, align 4
  store i64 %lineNumber, i64* %lineNumber.addr, align 8
  %0 = load i32, i32* %index.addr, align 4
  %call = call %struct.sTagEntryInfo* @getEntryInCorkQueue(i32 %0)
  store %struct.sTagEntryInfo* %call, %struct.sTagEntryInfo** %ep, align 8
  %1 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %ep, align 8
  %tobool = icmp ne %struct.sTagEntryInfo* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %lineNumber.addr, align 8
  %3 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %ep, align 8
  %extensionFields = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %3, i32 0, i32 11
  %endLine = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields, i32 0, i32 11
  store i64 %2, i64* %endLine, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i8* @newTokenByCopying(%struct.sTokenInfo*) #1

declare zeroext i1 @isXtagEnabled(i32) #1

declare void @initRefTagEntry(%struct.sTagEntryInfo*, i8*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare i32 @makeTagEntry(%struct.sTagEntryInfo*) #1

declare %struct.sTagEntryInfo* @getEntryInCorkQueue(i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseAttDefs(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %e = alloca %struct.sTagEntryInfo, align 8
  %identifier = alloca %struct.sTokenInfo*, align 8
  %e99 = alloca %struct.sTagEntryInfo, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
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
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call = call i32 @makeDtdTagMaybe(%struct.sTagEntryInfo* %e, %struct.sTokenInfo* %3, i32 3, i32 -1)
  br label %if.end115

if.else:                                          ; preds = %do.body
  %4 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type2 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %4, i32 0, i32 0
  %5 = load i16, i16* %type2, align 8
  %conv3 = sext i16 %5 to i32
  %6 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %klass = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %6, i32 0, i32 3
  %7 = load %struct.tokenInfoClass*, %struct.tokenInfoClass** %klass, align 8
  %typeForKeyword = getelementptr inbounds %struct.tokenInfoClass, %struct.tokenInfoClass* %7, i32 0, i32 3
  %8 = load i16, i16* %typeForKeyword, align 8
  %conv4 = sext i16 %8 to i32
  %cmp5 = icmp eq i32 %conv3, %conv4
  br i1 %cmp5, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.else
  %9 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %9, i32 0, i32 1
  %10 = load i16, i16* %keyword, align 2
  %conv7 = sext i16 %10 to i32
  %cmp8 = icmp eq i32 %conv7, 7
  br i1 %cmp8, label %if.then22, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.else
  %11 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type10 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %11, i32 0, i32 0
  %12 = load i16, i16* %type10, align 8
  %conv11 = sext i16 %12 to i32
  %13 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %klass12 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %13, i32 0, i32 3
  %14 = load %struct.tokenInfoClass*, %struct.tokenInfoClass** %klass12, align 8
  %typeForKeyword13 = getelementptr inbounds %struct.tokenInfoClass, %struct.tokenInfoClass* %14, i32 0, i32 3
  %15 = load i16, i16* %typeForKeyword13, align 8
  %conv14 = sext i16 %15 to i32
  %cmp15 = icmp eq i32 %conv11, %conv14
  br i1 %cmp15, label %land.lhs.true17, label %if.else23

land.lhs.true17:                                  ; preds = %lor.lhs.false
  %16 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword18 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %16, i32 0, i32 1
  %17 = load i16, i16* %keyword18, align 2
  %conv19 = sext i16 %17 to i32
  %cmp20 = icmp eq i32 %conv19, 0
  br i1 %cmp20, label %if.then22, label %if.else23

if.then22:                                        ; preds = %land.lhs.true17, %land.lhs.true
  br label %if.end114

if.else23:                                        ; preds = %land.lhs.true17, %lor.lhs.false
  %18 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type24 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %18, i32 0, i32 0
  %19 = load i16, i16* %type24, align 8
  %conv25 = sext i16 %19 to i32
  %20 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %klass26 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %20, i32 0, i32 3
  %21 = load %struct.tokenInfoClass*, %struct.tokenInfoClass** %klass26, align 8
  %typeForKeyword27 = getelementptr inbounds %struct.tokenInfoClass, %struct.tokenInfoClass* %21, i32 0, i32 3
  %22 = load i16, i16* %typeForKeyword27, align 8
  %conv28 = sext i16 %22 to i32
  %cmp29 = icmp eq i32 %conv25, %conv28
  br i1 %cmp29, label %land.lhs.true31, label %if.else43

land.lhs.true31:                                  ; preds = %if.else23
  %23 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword32 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %23, i32 0, i32 1
  %24 = load i16, i16* %keyword32, align 2
  %conv33 = sext i16 %24 to i32
  %cmp34 = icmp eq i32 %conv33, 5
  br i1 %cmp34, label %if.then36, label %if.else43

if.then36:                                        ; preds = %land.lhs.true31
  %25 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @tokenRead(%struct.sTokenInfo* %25)
  %26 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type37 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %26, i32 0, i32 0
  %27 = load i16, i16* %type37, align 8
  %conv38 = sext i16 %27 to i32
  %cmp39 = icmp eq i32 %conv38, 40
  br i1 %cmp39, label %if.then41, label %if.end

if.then41:                                        ; preds = %if.then36
  %28 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call42 = call zeroext i1 @tokenSkipToType(%struct.sTokenInfo* %28, i16 signext 41)
  br label %if.end

if.end:                                           ; preds = %if.then41, %if.then36
  br label %if.end113

if.else43:                                        ; preds = %land.lhs.true31, %if.else23
  %29 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type44 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %29, i32 0, i32 0
  %30 = load i16, i16* %type44, align 8
  %conv45 = sext i16 %30 to i32
  %cmp46 = icmp eq i32 %conv45, 40
  br i1 %cmp46, label %if.then48, label %if.else50

if.then48:                                        ; preds = %if.else43
  %31 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call49 = call zeroext i1 @tokenSkipToType(%struct.sTokenInfo* %31, i16 signext 41)
  br label %if.end112

if.else50:                                        ; preds = %if.else43
  %32 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type51 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %32, i32 0, i32 0
  %33 = load i16, i16* %type51, align 8
  %conv52 = sext i16 %33 to i32
  %cmp53 = icmp eq i32 %conv52, 35
  br i1 %cmp53, label %if.then55, label %if.else85

if.then55:                                        ; preds = %if.else50
  %34 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @tokenRead(%struct.sTokenInfo* %34)
  %35 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type56 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %35, i32 0, i32 0
  %36 = load i16, i16* %type56, align 8
  %conv57 = sext i16 %36 to i32
  %37 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %klass58 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %37, i32 0, i32 3
  %38 = load %struct.tokenInfoClass*, %struct.tokenInfoClass** %klass58, align 8
  %typeForKeyword59 = getelementptr inbounds %struct.tokenInfoClass, %struct.tokenInfoClass* %38, i32 0, i32 3
  %39 = load i16, i16* %typeForKeyword59, align 8
  %conv60 = sext i16 %39 to i32
  %cmp61 = icmp eq i32 %conv57, %conv60
  br i1 %cmp61, label %land.lhs.true63, label %if.else69

land.lhs.true63:                                  ; preds = %if.then55
  %40 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword64 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %40, i32 0, i32 1
  %41 = load i16, i16* %keyword64, align 2
  %conv65 = sext i16 %41 to i32
  %cmp66 = icmp eq i32 %conv65, 6
  br i1 %cmp66, label %if.then68, label %if.else69

if.then68:                                        ; preds = %land.lhs.true63
  %42 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @tokenRead(%struct.sTokenInfo* %42)
  br label %if.end84

if.else69:                                        ; preds = %land.lhs.true63, %if.then55
  %43 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type70 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %43, i32 0, i32 0
  %44 = load i16, i16* %type70, align 8
  %conv71 = sext i16 %44 to i32
  %45 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %klass72 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %45, i32 0, i32 3
  %46 = load %struct.tokenInfoClass*, %struct.tokenInfoClass** %klass72, align 8
  %typeForKeyword73 = getelementptr inbounds %struct.tokenInfoClass, %struct.tokenInfoClass* %46, i32 0, i32 3
  %47 = load i16, i16* %typeForKeyword73, align 8
  %conv74 = sext i16 %47 to i32
  %cmp75 = icmp eq i32 %conv71, %conv74
  br i1 %cmp75, label %land.lhs.true77, label %if.end83

land.lhs.true77:                                  ; preds = %if.else69
  %48 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword78 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %48, i32 0, i32 1
  %49 = load i16, i16* %keyword78, align 2
  %conv79 = sext i16 %49 to i32
  %cmp80 = icmp eq i32 %conv79, 8
  br i1 %cmp80, label %if.then82, label %if.end83

if.then82:                                        ; preds = %land.lhs.true77
  br label %if.end83

if.end83:                                         ; preds = %if.then82, %land.lhs.true77, %if.else69
  br label %if.end84

if.end84:                                         ; preds = %if.end83, %if.then68
  br label %if.end111

if.else85:                                        ; preds = %if.else50
  %50 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type86 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %50, i32 0, i32 0
  %51 = load i16, i16* %type86, align 8
  %conv87 = sext i16 %51 to i32
  %cmp88 = icmp eq i32 %conv87, 261
  br i1 %cmp88, label %if.then90, label %if.else91

if.then90:                                        ; preds = %if.else85
  br label %if.end110

if.else91:                                        ; preds = %if.else85
  %52 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type92 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %52, i32 0, i32 0
  %53 = load i16, i16* %type92, align 8
  %conv93 = sext i16 %53 to i32
  %cmp94 = icmp eq i32 %conv93, 37
  br i1 %cmp94, label %if.then96, label %if.else102

if.then96:                                        ; preds = %if.else91
  %54 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call97 = call %struct.sTokenInfo* @parserParameterEntityRef(%struct.sTokenInfo* %54)
  store %struct.sTokenInfo* %call97, %struct.sTokenInfo** %identifier, align 8
  %55 = load %struct.sTokenInfo*, %struct.sTokenInfo** %identifier, align 8
  %tobool = icmp ne %struct.sTokenInfo* %55, null
  br i1 %tobool, label %if.then98, label %if.end101

if.then98:                                        ; preds = %if.then96
  %56 = load %struct.sTokenInfo*, %struct.sTokenInfo** %identifier, align 8
  %call100 = call i32 @makeDtdTagMaybe(%struct.sTagEntryInfo* %e99, %struct.sTokenInfo* %56, i32 1, i32 2)
  %57 = load %struct.sTokenInfo*, %struct.sTokenInfo** %identifier, align 8
  call void @tokenDestroy(%struct.sTokenInfo* %57)
  br label %if.end101

if.end101:                                        ; preds = %if.then98, %if.then96
  br label %if.end109

if.else102:                                       ; preds = %if.else91
  %58 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type103 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %58, i32 0, i32 0
  %59 = load i16, i16* %type103, align 8
  %conv104 = sext i16 %59 to i32
  %cmp105 = icmp eq i32 %conv104, 62
  br i1 %cmp105, label %if.then107, label %if.end108

if.then107:                                       ; preds = %if.else102
  %60 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %61 = bitcast %struct.sTokenInfo* %60 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %61, i64 48
  %62 = bitcast i8* %add.ptr to %struct.sTokenExtra*
  %scopeIndex = getelementptr inbounds %struct.sTokenExtra, %struct.sTokenExtra* %62, i32 0, i32 0
  store i32 0, i32* %scopeIndex, align 4
  %63 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @tokenUnread(%struct.sTokenInfo* %63)
  br label %do.end

if.end108:                                        ; preds = %if.else102
  br label %if.end109

if.end109:                                        ; preds = %if.end108, %if.end101
  br label %if.end110

if.end110:                                        ; preds = %if.end109, %if.then90
  br label %if.end111

if.end111:                                        ; preds = %if.end110, %if.end84
  br label %if.end112

if.end112:                                        ; preds = %if.end111, %if.then48
  br label %if.end113

if.end113:                                        ; preds = %if.end112, %if.end
  br label %if.end114

if.end114:                                        ; preds = %if.end113, %if.then22
  br label %if.end115

if.end115:                                        ; preds = %if.end114, %if.then
  br label %do.cond

do.cond:                                          ; preds = %if.end115
  %64 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type116 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %64, i32 0, i32 0
  %65 = load i16, i16* %type116, align 8
  %conv117 = sext i16 %65 to i32
  %66 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %klass118 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %66, i32 0, i32 3
  %67 = load %struct.tokenInfoClass*, %struct.tokenInfoClass** %klass118, align 8
  %typeForEOF = getelementptr inbounds %struct.tokenInfoClass, %struct.tokenInfoClass* %67, i32 0, i32 4
  %68 = load i16, i16* %typeForEOF, align 2
  %conv119 = sext i16 %68 to i32
  %cmp120 = icmp eq i32 %conv117, %conv119
  %lnot = xor i1 %cmp120, true
  br i1 %lnot, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.then107
  ret void
}

declare void @tokenUnread(%struct.sTokenInfo*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @readToken(%struct.sTokenInfo* %token, i8* %data) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %data.addr = alloca i8*, align 8
  %c = alloca i32, align 4
  %c0 = alloca i32, align 4
  %vStringClear_s = alloca %struct.sVString*, align 8
  %tmp = alloca %struct._MIOPos, align 8
  %c1 = alloca i32, align 4
  %c2 = alloca i32, align 4
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 0
  store i16 257, i16* %type, align 8
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %1, i32 0, i32 1
  store i16 -1, i16* %keyword, align 2
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
  br label %retry

retry:                                            ; preds = %if.then36, %do.end
  br label %do.body1

do.body1:                                         ; preds = %lor.end, %retry
  %call = call i32 @getcFromInputFile()
  store i32 %call, i32* %c, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body1
  %7 = load i32, i32* %c, align 4
  %cmp = icmp eq i32 %7, 32
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.cond
  %8 = load i32, i32* %c, align 4
  %cmp2 = icmp eq i32 %8, 9
  br i1 %cmp2, label %lor.end, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %9 = load i32, i32* %c, align 4
  %cmp4 = icmp eq i32 %9, 12
  br i1 %cmp4, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false3
  %10 = load i32, i32* %c, align 4
  %cmp5 = icmp eq i32 %10, 10
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false3, %lor.lhs.false, %do.cond
  %11 = phi i1 [ true, %lor.lhs.false3 ], [ true, %lor.lhs.false ], [ true, %do.cond ], [ %cmp5, %lor.rhs ]
  br i1 %11, label %do.body1, label %do.end6

do.end6:                                          ; preds = %lor.end
  %call7 = call i64 @getInputLineNumber()
  %12 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %lineNumber = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %12, i32 0, i32 4
  store i64 %call7, i64* %lineNumber, align 8
  %13 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %filePosition = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %13, i32 0, i32 5
  %call8 = call [2 x i64] @getInputFilePosition()
  %14 = bitcast %struct._MIOPos* %tmp to [2 x i64]*
  store [2 x i64] %call8, [2 x i64]* %14, align 8
  %15 = bitcast %struct._MIOPos* %filePosition to i8*
  %16 = bitcast %struct._MIOPos* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 %16, i64 16, i1 false)
  %17 = load i32, i32* %c, align 4
  switch i32 %17, label %sw.default [
    i32 -1, label %sw.bb
    i32 59, label %sw.bb10
    i32 38, label %sw.bb10
    i32 37, label %sw.bb10
    i32 62, label %sw.bb10
    i32 35, label %sw.bb10
    i32 63, label %sw.bb10
    i32 91, label %sw.bb10
    i32 93, label %sw.bb10
    i32 124, label %sw.bb10
    i32 44, label %sw.bb10
    i32 40, label %sw.bb10
    i32 41, label %sw.bb10
    i32 43, label %sw.bb10
    i32 60, label %sw.bb12
    i32 45, label %sw.bb19
    i32 34, label %sw.bb42
    i32 39, label %sw.bb42
  ]

sw.bb:                                            ; preds = %do.end6
  %18 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type9 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %18, i32 0, i32 0
  store i16 256, i16* %type9, align 8
  br label %sw.epilog

sw.bb10:                                          ; preds = %do.end6, %do.end6, %do.end6, %do.end6, %do.end6, %do.end6, %do.end6, %do.end6, %do.end6, %do.end6, %do.end6, %do.end6, %do.end6
  %19 = load i32, i32* %c, align 4
  %conv = trunc i32 %19 to i16
  %20 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type11 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %20, i32 0, i32 0
  store i16 %conv, i16* %type11, align 8
  br label %sw.epilog

sw.bb12:                                          ; preds = %do.end6
  %call13 = call i32 @getcFromInputFile()
  store i32 %call13, i32* %c0, align 4
  %21 = load i32, i32* %c0, align 4
  %cmp14 = icmp eq i32 %21, 33
  br i1 %cmp14, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb12
  %22 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type16 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %22, i32 0, i32 0
  store i16 260, i16* %type16, align 8
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb12
  %23 = load i32, i32* %c0, align 4
  call void @ungetcToInputFile(i32 %23)
  %24 = load i32, i32* %c, align 4
  %conv17 = trunc i32 %24 to i16
  %25 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type18 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %25, i32 0, i32 0
  store i16 %conv17, i16* %type18, align 8
  br label %sw.epilog

sw.bb19:                                          ; preds = %do.end6
  %call20 = call i32 @getcFromInputFile()
  store i32 %call20, i32* %c0, align 4
  %26 = load i32, i32* %c0, align 4
  %cmp21 = icmp eq i32 %26, 45
  br i1 %cmp21, label %if.then23, label %if.else38

if.then23:                                        ; preds = %sw.bb19
  br label %while.cond

while.cond:                                       ; preds = %if.end37, %if.then23
  %call24 = call i32 @getcFromInputFile()
  store i32 %call24, i32* %c1, align 4
  %cmp25 = icmp ne i32 %call24, -1
  br i1 %cmp25, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %27 = load i32, i32* %c1, align 4
  %cmp27 = icmp eq i32 %27, 45
  br i1 %cmp27, label %if.then29, label %if.end37

if.then29:                                        ; preds = %while.body
  %call30 = call i32 @getcFromInputFile()
  store i32 %call30, i32* %c2, align 4
  %28 = load i32, i32* %c2, align 4
  %cmp31 = icmp eq i32 %28, 45
  br i1 %cmp31, label %if.then36, label %lor.lhs.false33

lor.lhs.false33:                                  ; preds = %if.then29
  %29 = load i32, i32* %c2, align 4
  %cmp34 = icmp eq i32 %29, -1
  br i1 %cmp34, label %if.then36, label %if.end

if.then36:                                        ; preds = %lor.lhs.false33, %if.then29
  br label %retry

if.end:                                           ; preds = %lor.lhs.false33
  br label %if.end37

if.end37:                                         ; preds = %if.end, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end41

if.else38:                                        ; preds = %sw.bb19
  %30 = load i32, i32* %c0, align 4
  call void @ungetcToInputFile(i32 %30)
  %31 = load i32, i32* %c, align 4
  %conv39 = trunc i32 %31 to i16
  %32 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type40 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %32, i32 0, i32 0
  store i16 %conv39, i16* %type40, align 8
  br label %if.end41

if.end41:                                         ; preds = %if.else38, %while.end
  br label %sw.epilog

sw.bb42:                                          ; preds = %do.end6, %do.end6
  %33 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type43 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %33, i32 0, i32 0
  store i16 261, i16* %type43, align 8
  br label %while.cond44

while.cond44:                                     ; preds = %if.end55, %sw.bb42
  %call45 = call i32 @getcFromInputFile()
  store i32 %call45, i32* %c0, align 4
  %tobool = icmp ne i32 %call45, 0
  br i1 %tobool, label %while.body46, label %while.end56

while.body46:                                     ; preds = %while.cond44
  %34 = load i32, i32* %c0, align 4
  %cmp47 = icmp eq i32 %34, -1
  br i1 %cmp47, label %if.then52, label %lor.lhs.false49

lor.lhs.false49:                                  ; preds = %while.body46
  %35 = load i32, i32* %c0, align 4
  %36 = load i32, i32* %c, align 4
  %cmp50 = icmp eq i32 %35, %36
  br i1 %cmp50, label %if.then52, label %if.else53

if.then52:                                        ; preds = %lor.lhs.false49, %while.body46
  br label %while.end56

if.else53:                                        ; preds = %lor.lhs.false49
  %37 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string54 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %37, i32 0, i32 2
  %38 = load %struct.sVString*, %struct.sVString** %string54, align 8
  %39 = load i32, i32* %c0, align 4
  call void @vStringPut(%struct.sVString* %38, i32 %39)
  br label %if.end55

if.end55:                                         ; preds = %if.else53
  br label %while.cond44

while.end56:                                      ; preds = %if.then52, %while.cond44
  br label %sw.epilog

sw.default:                                       ; preds = %do.end6
  %40 = load i32, i32* %c, align 4
  %call57 = call i32 @isalnum(i32 %40) #4
  %tobool58 = icmp ne i32 %call57, 0
  br i1 %tobool58, label %if.then71, label %lor.lhs.false59

lor.lhs.false59:                                  ; preds = %sw.default
  %41 = load i32, i32* %c, align 4
  %cmp60 = icmp eq i32 %41, 45
  br i1 %cmp60, label %if.then71, label %lor.lhs.false62

lor.lhs.false62:                                  ; preds = %lor.lhs.false59
  %42 = load i32, i32* %c, align 4
  %cmp63 = icmp eq i32 %42, 95
  br i1 %cmp63, label %if.then71, label %lor.lhs.false65

lor.lhs.false65:                                  ; preds = %lor.lhs.false62
  %43 = load i32, i32* %c, align 4
  %cmp66 = icmp eq i32 %43, 46
  br i1 %cmp66, label %if.then71, label %lor.lhs.false68

lor.lhs.false68:                                  ; preds = %lor.lhs.false65
  %44 = load i32, i32* %c, align 4
  %cmp69 = icmp eq i32 %44, 58
  br i1 %cmp69, label %if.then71, label %if.else110

if.then71:                                        ; preds = %lor.lhs.false68, %lor.lhs.false65, %lor.lhs.false62, %lor.lhs.false59, %sw.default
  %45 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string72 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %45, i32 0, i32 2
  %46 = load %struct.sVString*, %struct.sVString** %string72, align 8
  %47 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %46, i32 %47)
  br label %while.cond73

while.cond73:                                     ; preds = %if.end94, %if.then71
  %call74 = call i32 @getcFromInputFile()
  store i32 %call74, i32* %c, align 4
  %tobool75 = icmp ne i32 %call74, 0
  br i1 %tobool75, label %while.body76, label %while.end95

while.body76:                                     ; preds = %while.cond73
  %48 = load i32, i32* %c, align 4
  %call77 = call i32 @isalnum(i32 %48) #4
  %tobool78 = icmp ne i32 %call77, 0
  br i1 %tobool78, label %if.then91, label %lor.lhs.false79

lor.lhs.false79:                                  ; preds = %while.body76
  %49 = load i32, i32* %c, align 4
  %cmp80 = icmp eq i32 %49, 45
  br i1 %cmp80, label %if.then91, label %lor.lhs.false82

lor.lhs.false82:                                  ; preds = %lor.lhs.false79
  %50 = load i32, i32* %c, align 4
  %cmp83 = icmp eq i32 %50, 95
  br i1 %cmp83, label %if.then91, label %lor.lhs.false85

lor.lhs.false85:                                  ; preds = %lor.lhs.false82
  %51 = load i32, i32* %c, align 4
  %cmp86 = icmp eq i32 %51, 46
  br i1 %cmp86, label %if.then91, label %lor.lhs.false88

lor.lhs.false88:                                  ; preds = %lor.lhs.false85
  %52 = load i32, i32* %c, align 4
  %cmp89 = icmp eq i32 %52, 58
  br i1 %cmp89, label %if.then91, label %if.else93

if.then91:                                        ; preds = %lor.lhs.false88, %lor.lhs.false85, %lor.lhs.false82, %lor.lhs.false79, %while.body76
  %53 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string92 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %53, i32 0, i32 2
  %54 = load %struct.sVString*, %struct.sVString** %string92, align 8
  %55 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %54, i32 %55)
  br label %if.end94

if.else93:                                        ; preds = %lor.lhs.false88
  %56 = load i32, i32* %c, align 4
  call void @ungetcToInputFile(i32 %56)
  br label %while.end95

if.end94:                                         ; preds = %if.then91
  br label %while.cond73

while.end95:                                      ; preds = %if.else93, %while.cond73
  %57 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string96 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %57, i32 0, i32 2
  %58 = load %struct.sVString*, %struct.sVString** %string96, align 8
  %buffer97 = getelementptr inbounds %struct.sVString, %struct.sVString* %58, i32 0, i32 2
  %59 = load i8*, i8** %buffer97, align 8
  %60 = load i32, i32* @Lang_dtd, align 4
  %call98 = call i32 @lookupKeyword(i8* %59, i32 %60)
  %conv99 = trunc i32 %call98 to i16
  %61 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword100 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %61, i32 0, i32 1
  store i16 %conv99, i16* %keyword100, align 2
  %62 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword101 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %62, i32 0, i32 1
  %63 = load i16, i16* %keyword101, align 2
  %conv102 = sext i16 %63 to i32
  %cmp103 = icmp eq i32 %conv102, -1
  br i1 %cmp103, label %if.then105, label %if.else107

if.then105:                                       ; preds = %while.end95
  %64 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type106 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %64, i32 0, i32 0
  store i16 259, i16* %type106, align 8
  br label %if.end109

if.else107:                                       ; preds = %while.end95
  %65 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type108 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %65, i32 0, i32 0
  store i16 258, i16* %type108, align 8
  br label %if.end109

if.end109:                                        ; preds = %if.else107, %if.then105
  br label %if.end113

if.else110:                                       ; preds = %lor.lhs.false68
  %66 = load i32, i32* %c, align 4
  %conv111 = trunc i32 %66 to i16
  %67 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type112 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %67, i32 0, i32 0
  store i16 %conv111, i16* %type112, align 8
  br label %if.end113

if.end113:                                        ; preds = %if.else110, %if.end109
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end113, %while.end56, %if.end41, %if.else, %if.then, %sw.bb10, %sw.bb
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
  %2 = bitcast i8* %add.ptr to %struct.sTokenExtra*
  %scopeIndex = getelementptr inbounds %struct.sTokenExtra, %struct.sTokenExtra* %2, i32 0, i32 0
  store i32 0, i32* %scopeIndex, align 4
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
  %2 = bitcast i8* %add.ptr to %struct.sTokenExtra*
  %scopeIndex = getelementptr inbounds %struct.sTokenExtra, %struct.sTokenExtra* %2, i32 0, i32 0
  %3 = load i32, i32* %scopeIndex, align 4
  %4 = load %struct.sTokenInfo*, %struct.sTokenInfo** %dest.addr, align 8
  %5 = bitcast %struct.sTokenInfo* %4 to i8*
  %add.ptr1 = getelementptr inbounds i8, i8* %5, i64 48
  %6 = bitcast i8* %add.ptr1 to %struct.sTokenExtra*
  %scopeIndex2 = getelementptr inbounds %struct.sTokenExtra, %struct.sTokenExtra* %6, i32 0, i32 0
  store i32 %3, i32* %scopeIndex2, align 4
  ret void
}

declare i32 @getcFromInputFile() #1

declare i64 @getInputLineNumber() #1

declare [2 x i64] @getInputFilePosition() #1

declare void @ungetcToInputFile(i32) #1

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

declare i32 @lookupKeyword(i8*, i32) #1

declare void @vStringResize(%struct.sVString*, i64) #1

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
