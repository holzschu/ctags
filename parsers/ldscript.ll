; ModuleID = 'ldscript.c'
source_filename = "ldscript.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-ios11.0.0"

%struct.tokenTypePair = type { i16, i16 }
%struct.sKindDefinition = type { i8, i8, i8*, i8*, i8, i32, %struct.sRoleDesc*, %struct.sScopeSeparator*, i32, i32, i32, %struct.sKindDefinition*, %struct.sKindDefinition* }
%struct.sRoleDesc = type { i8, i8*, i8* }
%struct.sScopeSeparator = type { i32, i8* }
%struct.keywordTable = type { i8*, i32 }
%struct.sFieldDefinition = type { i8, i8*, i8*, i8, [5 x i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)*], i1 (%struct.sTagEntryInfo*)*, i32, i32 }
%struct.sTagEntryInfo = type { i8, i64, i8*, i32, %struct._MIOPos, i32, i8*, i8*, i32, [2 x i8], i8*, %struct.anon, i32, [5 x %struct.sTagField], %struct.sPtrArray*, i32, i8*, i64 }
%struct._MIOPos = type { i32, %union.anon.0 }
%union.anon.0 = type { i64 }
%struct.anon = type { i8*, i8*, i8*, i8*, i32, i32, i8*, i32, i8*, [2 x i8*], i32, i64 }
%struct.sTagField = type { i32, i8*, i8 }
%struct.sPtrArray = type opaque
%struct.sVString = type { i64, i64, i8* }
%struct.tokenInfoClass = type { i32, i16, i16, i16, i16, i64, %struct.tokenTypePair*, i32, void (%struct.sTokenInfo*, i8*)*, void (%struct.sTokenInfo*, i8*)*, void (%struct.sTokenInfo*)*, void (%struct.sTokenInfo*)*, void (%struct.sTokenInfo*, %struct.sTokenInfo*, i8*)*, %struct.sObjPool*, %struct.sPtrArray* }
%struct.sTokenInfo = type { i16, i16, %struct.sVString*, %struct.tokenInfoClass*, i64, %struct._MIOPos }
%struct.sObjPool = type opaque
%struct.sParserDefinition = type { i8*, %struct.sKindDefinition*, i32, i8**, i8**, i8**, void (i32)*, void (i32, i1)*, void ()*, i32 (i32)*, i8* (%struct._MIO*, i32*, i32)**, i32, i8, i8, i8, i8, %struct.tagRegexTable*, i32, %struct.keywordTable*, i32, %struct.sTagXpathTableTable*, i32, i8, %struct.sFieldDefinition*, i32, %struct.sXtagDefinition*, i32, %struct.sParserDependency*, i32, %struct.sParameterHandlerTable*, i32, %struct.sXpathFileSpec*, i32, i32, i8 }
%struct._MIO = type opaque
%struct.tagRegexTable = type { i8*, i8*, i8*, i8*, i8*, i8 }
%struct.sTagXpathTableTable = type { %struct.sTagXpathTable*, i32 }
%struct.sTagXpathTable = type { i8*, i32, %union.anon, i8* }
%union.anon = type { %struct.sTagXpathMakeTagSpec }
%struct.sTagXpathMakeTagSpec = type { i32, i32, void (i8*, %struct.sTagXpathMakeTagSpec*, %struct.sTagEntryInfo*, i8*)* }
%struct.sXtagDefinition = type { i8, i8, i8*, i8*, i1 (%struct.sXtagDefinition*)*, i1 (%struct.sXtagDefinition*)*, i32 }
%struct.sParserDependency = type { i32, i8*, i8* }
%struct.sParameterHandlerTable = type { i8*, i8*, void (i32, i8*, i8*)* }
%struct.sXpathFileSpec = type { i8*, i8*, i8*, i8*, i8*, i8* }
%struct.tokenExtra = type { i32, i16 }

@ldScriptTypePairs = global [1 x %struct.tokenTypePair] [%struct.tokenTypePair { i16 123, i16 125 }], align 2
@.str = private unnamed_addr constant [9 x i8] c"LdScript\00", align 1
@LdScriptKinds = internal global [4 x %struct.sKindDefinition] [%struct.sKindDefinition { i8 1, i8 83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 115, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i8 0, i32 1, %struct.sRoleDesc* getelementptr inbounds ([1 x %struct.sRoleDesc], [1 x %struct.sRoleDesc]* @LdScriptSymbolRoles, i32 0, i32 0), %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 118, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 105, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0), i8 1, i32 2, %struct.sRoleDesc* getelementptr inbounds ([2 x %struct.sRoleDesc], [2 x %struct.sRoleDesc]* @LdScriptInputSectionRoles, i32 0, i32 0), %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }], align 8
@extensions = internal constant [4 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0), i8* null], align 8
@patterns = internal constant [3 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0), i8* null], align 8
@aliases = internal constant [2 x i8*] [i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0), i8* null], align 8
@LdScriptKeywordTable = internal constant [18 x %struct.keywordTable] [%struct.keywordTable { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i32 0 }, %struct.keywordTable { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0), i32 1 }, %struct.keywordTable { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i32 0, i32 0), i32 2 }, %struct.keywordTable { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i32 0, i32 0), i32 3 }, %struct.keywordTable { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0), i32 4 }, %struct.keywordTable { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i32 0, i32 0), i32 5 }, %struct.keywordTable { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i32 0, i32 0), i32 6 }, %struct.keywordTable { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0), i32 7 }, %struct.keywordTable { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i32 0, i32 0), i32 8 }, %struct.keywordTable { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.34, i32 0, i32 0), i32 9 }, %struct.keywordTable { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i32 0, i32 0), i32 10 }, %struct.keywordTable { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0), i32 11 }, %struct.keywordTable { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i32 0, i32 0), i32 12 }, %struct.keywordTable { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i32 0, i32 0), i32 12 }, %struct.keywordTable { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0), i32 12 }, %struct.keywordTable { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i32 0, i32 0), i32 12 }, %struct.keywordTable { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i32 0, i32 0), i32 12 }, %struct.keywordTable { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i32 0, i32 0), i32 12 }], align 8
@LdScriptFields = internal global [1 x %struct.sFieldDefinition] [%struct.sFieldDefinition { i8 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.44, i32 0, i32 0), i8 1, [5 x i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)*] zeroinitializer, i1 (%struct.sTagEntryInfo*)* null, i32 0, i32 0 }], align 8
@Lang_ldscript = internal global i32 0, align 4
@ldScriptTokenInfoClass = internal global %struct.tokenInfoClass { i32 4, i16 257, i16 -1, i16 258, i16 256, i64 8, %struct.tokenTypePair* getelementptr inbounds ([1 x %struct.tokenTypePair], [1 x %struct.tokenTypePair]* @ldScriptTypePairs, i32 0, i32 0), i32 1, void (%struct.sTokenInfo*, i8*)* null, void (%struct.sTokenInfo*, i8*)* @readToken, void (%struct.sTokenInfo*)* @clearToken, void (%struct.sTokenInfo*)* null, void (%struct.sTokenInfo*, %struct.sTokenInfo*, i8*)* @copyToken, %struct.sObjPool* null, %struct.sPtrArray* null }, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"provide\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"provide_hidden\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"hidden\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"DISCARD\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"section\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"sections\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"symbol\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"symbols\00", align 1
@LdScriptSymbolRoles = internal global [1 x %struct.sRoleDesc] [%struct.sRoleDesc { i8 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0) }], align 8
@.str.9 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"versions\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"inputSection\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"input sections\00", align 1
@LdScriptInputSectionRoles = internal global [2 x %struct.sRoleDesc] [%struct.sRoleDesc { i8 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i32 0, i32 0) }, %struct.sRoleDesc { i8 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i32 0, i32 0) }], align 8
@.str.13 = private unnamed_addr constant [11 x i8] c"entrypoint\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"entry points\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"mapped\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"mapped to output section\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"discarded\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"discarded when linking\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"lds\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"scr\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"ld\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"*.lds.S\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"ld.*\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"ld-script\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"ENTRY\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"SECTIONS\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"AT\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"VERSION\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"PROVIDE\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"PROVIDE_HIDDEN\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"HIDDEN\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"EXCLUDE_FILE\00", align 1
@.str.34 = private unnamed_addr constant [20 x i8] c"INPUT_SECTION_FLAGS\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"COMMON\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"KEEP\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"BYTE\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"SHORT\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"LONG\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"QUAD\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"SQUAD\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"FILL\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"assignment\00", align 1
@.str.44 = private unnamed_addr constant [38 x i8] c"how a value is assigned to the symbol\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sParserDefinition* @LdScriptParser() #0 {
entry:
  %def = alloca %struct.sParserDefinition*, align 8
  %call = call %struct.sParserDefinition* @parserNew(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store %struct.sParserDefinition* %call, %struct.sParserDefinition** %def, align 8
  %0 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %initialize = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %0, i32 0, i32 6
  store void (i32)* @initialize, void (i32)** %initialize, align 8
  %1 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %parser = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %1, i32 0, i32 8
  store void ()* @findLdScriptTags, void ()** %parser, align 8
  %2 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %2, i32 0, i32 1
  store %struct.sKindDefinition* getelementptr inbounds ([4 x %struct.sKindDefinition], [4 x %struct.sKindDefinition]* @LdScriptKinds, i64 0, i64 0), %struct.sKindDefinition** %kindTable, align 8
  %3 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %3, i32 0, i32 2
  store i32 4, i32* %kindCount, align 8
  %4 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %extensions = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %4, i32 0, i32 3
  store i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @extensions, i64 0, i64 0), i8*** %extensions, align 8
  %5 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %patterns = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %5, i32 0, i32 4
  store i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @patterns, i64 0, i64 0), i8*** %patterns, align 8
  %6 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %aliases = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %6, i32 0, i32 5
  store i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @aliases, i64 0, i64 0), i8*** %aliases, align 8
  %7 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %keywordTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %7, i32 0, i32 18
  store %struct.keywordTable* getelementptr inbounds ([18 x %struct.keywordTable], [18 x %struct.keywordTable]* @LdScriptKeywordTable, i64 0, i64 0), %struct.keywordTable** %keywordTable, align 8
  %8 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %keywordCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %8, i32 0, i32 19
  store i32 18, i32* %keywordCount, align 8
  %9 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %initialize1 = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %9, i32 0, i32 6
  store void (i32)* @initialize, void (i32)** %initialize1, align 8
  %10 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %fieldTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %10, i32 0, i32 23
  store %struct.sFieldDefinition* getelementptr inbounds ([1 x %struct.sFieldDefinition], [1 x %struct.sFieldDefinition]* @LdScriptFields, i64 0, i64 0), %struct.sFieldDefinition** %fieldTable, align 8
  %11 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %fieldCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %11, i32 0, i32 24
  store i32 1, i32* %fieldCount, align 8
  %12 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %useCork = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %12, i32 0, i32 12
  store i8 1, i8* %useCork, align 4
  %13 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  ret %struct.sParserDefinition* %13
}

declare %struct.sParserDefinition* @parserNew(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @initialize(i32 %language) #0 {
entry:
  %language.addr = alloca i32, align 4
  store i32 %language, i32* %language.addr, align 4
  %0 = load i32, i32* %language.addr, align 4
  store i32 %0, i32* @Lang_ldscript, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @findLdScriptTags() #0 {
entry:
  %token = alloca %struct.sTokenInfo*, align 8
  %tmp = alloca %struct.sTokenInfo*, align 8
  %e = alloca %struct.sTagEntryInfo, align 8
  %call = call %struct.sTokenInfo* @newLdScriptToken()
  store %struct.sTokenInfo* %call, %struct.sTokenInfo** %token, align 8
  %call1 = call %struct.sTokenInfo* @newLdScriptToken()
  store %struct.sTokenInfo* %call1, %struct.sTokenInfo** %tmp, align 8
  call void @cppInit(i1 zeroext false, i1 zeroext false, i1 zeroext false, i1 zeroext false, i32 -1, i32 0, i32 -1, i32 0, i32 0)
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  call void @tokenRead(%struct.sTokenInfo* %0)
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %1, i32 0, i32 0
  %2 = load i16, i16* %type, align 8
  %conv = sext i16 %2 to i32
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %klass = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %3, i32 0, i32 3
  %4 = load %struct.tokenInfoClass*, %struct.tokenInfoClass** %klass, align 8
  %typeForKeyword = getelementptr inbounds %struct.tokenInfoClass, %struct.tokenInfoClass* %4, i32 0, i32 3
  %5 = load i16, i16* %typeForKeyword, align 8
  %conv2 = sext i16 %5 to i32
  %cmp = icmp eq i32 %conv, %conv2
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %do.body
  %6 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %6, i32 0, i32 1
  %7 = load i16, i16* %keyword, align 2
  %conv4 = sext i16 %7 to i32
  %cmp5 = icmp eq i32 %conv4, 0
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %8 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  call void @parseEntry(%struct.sTokenInfo* %8)
  br label %if.end50

if.else:                                          ; preds = %land.lhs.true, %do.body
  %9 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %type7 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %9, i32 0, i32 0
  %10 = load i16, i16* %type7, align 8
  %conv8 = sext i16 %10 to i32
  %11 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %klass9 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %11, i32 0, i32 3
  %12 = load %struct.tokenInfoClass*, %struct.tokenInfoClass** %klass9, align 8
  %typeForKeyword10 = getelementptr inbounds %struct.tokenInfoClass, %struct.tokenInfoClass* %12, i32 0, i32 3
  %13 = load i16, i16* %typeForKeyword10, align 8
  %conv11 = sext i16 %13 to i32
  %cmp12 = icmp eq i32 %conv8, %conv11
  br i1 %cmp12, label %land.lhs.true14, label %if.else20

land.lhs.true14:                                  ; preds = %if.else
  %14 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %keyword15 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %14, i32 0, i32 1
  %15 = load i16, i16* %keyword15, align 2
  %conv16 = sext i16 %15 to i32
  %cmp17 = icmp eq i32 %conv16, 1
  br i1 %cmp17, label %if.then19, label %if.else20

if.then19:                                        ; preds = %land.lhs.true14
  %16 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  call void @parseSections(%struct.sTokenInfo* %16)
  br label %if.end49

if.else20:                                        ; preds = %land.lhs.true14, %if.else
  %17 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %type21 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %17, i32 0, i32 0
  %18 = load i16, i16* %type21, align 8
  %conv22 = sext i16 %18 to i32
  %cmp23 = icmp eq i32 %conv22, 259
  br i1 %cmp23, label %if.then25, label %if.else33

if.then25:                                        ; preds = %if.else20
  %19 = load %struct.sTokenInfo*, %struct.sTokenInfo** %tmp, align 8
  call void @tokenRead(%struct.sTokenInfo* %19)
  %20 = load %struct.sTokenInfo*, %struct.sTokenInfo** %tmp, align 8
  %type26 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %20, i32 0, i32 0
  %21 = load i16, i16* %type26, align 8
  %conv27 = sext i16 %21 to i32
  %cmp28 = icmp eq i32 %conv27, 261
  br i1 %cmp28, label %if.then30, label %if.end

if.then30:                                        ; preds = %if.then25
  %22 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %call31 = call i32 @makeLdScriptTagMaybe(%struct.sTagEntryInfo* %e, %struct.sTokenInfo* %22, i32 1, i32 -1)
  %23 = load %struct.sTokenInfo*, %struct.sTokenInfo** %tmp, align 8
  %call32 = call zeroext i1 @tokenSkipToType(%struct.sTokenInfo* %23, i16 signext 59)
  br label %if.end

if.end:                                           ; preds = %if.then30, %if.then25
  br label %if.end48

if.else33:                                        ; preds = %if.else20
  %24 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %type34 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %24, i32 0, i32 0
  %25 = load i16, i16* %type34, align 8
  %conv35 = sext i16 %25 to i32
  %26 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %klass36 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %26, i32 0, i32 3
  %27 = load %struct.tokenInfoClass*, %struct.tokenInfoClass** %klass36, align 8
  %typeForKeyword37 = getelementptr inbounds %struct.tokenInfoClass, %struct.tokenInfoClass* %27, i32 0, i32 3
  %28 = load i16, i16* %typeForKeyword37, align 8
  %conv38 = sext i16 %28 to i32
  %cmp39 = icmp eq i32 %conv35, %conv38
  br i1 %cmp39, label %land.lhs.true41, label %if.end47

land.lhs.true41:                                  ; preds = %if.else33
  %29 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %keyword42 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %29, i32 0, i32 1
  %30 = load i16, i16* %keyword42, align 2
  %conv43 = sext i16 %30 to i32
  %cmp44 = icmp eq i32 %conv43, 4
  br i1 %cmp44, label %if.then46, label %if.end47

if.then46:                                        ; preds = %land.lhs.true41
  %31 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  call void @parseVersions(%struct.sTokenInfo* %31)
  br label %if.end47

if.end47:                                         ; preds = %if.then46, %land.lhs.true41, %if.else33
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %if.end
  br label %if.end49

if.end49:                                         ; preds = %if.end48, %if.then19
  br label %if.end50

if.end50:                                         ; preds = %if.end49, %if.then
  br label %do.cond

do.cond:                                          ; preds = %if.end50
  %32 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %type51 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %32, i32 0, i32 0
  %33 = load i16, i16* %type51, align 8
  %conv52 = sext i16 %33 to i32
  %34 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %klass53 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %34, i32 0, i32 3
  %35 = load %struct.tokenInfoClass*, %struct.tokenInfoClass** %klass53, align 8
  %typeForEOF = getelementptr inbounds %struct.tokenInfoClass, %struct.tokenInfoClass* %35, i32 0, i32 4
  %36 = load i16, i16* %typeForEOF, align 2
  %conv54 = sext i16 %36 to i32
  %cmp55 = icmp eq i32 %conv52, %conv54
  %lnot = xor i1 %cmp55, true
  br i1 %lnot, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  call void @cppTerminate()
  %37 = load %struct.sTokenInfo*, %struct.sTokenInfo** %tmp, align 8
  call void @tokenDestroy(%struct.sTokenInfo* %37)
  %38 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  call void @tokenDestroy(%struct.sTokenInfo* %38)
  call void @flashTokenBacklog(%struct.tokenInfoClass* @ldScriptTokenInfoClass)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct.sTokenInfo* @newLdScriptToken() #0 {
entry:
  %call = call i8* @newToken(%struct.tokenInfoClass* @ldScriptTokenInfoClass)
  %0 = bitcast i8* %call to %struct.sTokenInfo*
  ret %struct.sTokenInfo* %0
}

declare void @cppInit(i1 zeroext, i1 zeroext, i1 zeroext, i1 zeroext, i32, i32, i32, i32, i32) #1

declare void @tokenRead(%struct.sTokenInfo*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseEntry(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %name = alloca %struct.sTokenInfo*, align 8
  %e = alloca %struct.sTagEntryInfo, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @tokenRead(%struct.sTokenInfo* %0)
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %1, i32 0, i32 0
  %2 = load i16, i16* %type, align 8
  %conv = sext i16 %2 to i32
  %cmp = icmp eq i32 %conv, 40
  br i1 %cmp, label %if.then, label %if.end9

if.then:                                          ; preds = %entry
  %call = call %struct.sTokenInfo* @newLdScriptToken()
  store %struct.sTokenInfo* %call, %struct.sTokenInfo** %name, align 8
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  call void @tokenRead(%struct.sTokenInfo* %3)
  %4 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  %type2 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %4, i32 0, i32 0
  %5 = load i16, i16* %type2, align 8
  %conv3 = sext i16 %5 to i32
  %cmp4 = icmp eq i32 %conv3, 259
  br i1 %cmp4, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then
  %6 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  %call7 = call i32 @makeLdScriptTagMaybe(%struct.sTagEntryInfo* %e, %struct.sTokenInfo* %6, i32 1, i32 0)
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @tokenRead(%struct.sTokenInfo* %7)
  %8 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call8 = call zeroext i1 @tokenSkipToType(%struct.sTokenInfo* %8, i16 signext 41)
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then
  %9 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  call void @tokenDestroy(%struct.sTokenInfo* %9)
  br label %if.end9

if.end9:                                          ; preds = %if.end, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseSections(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @tokenRead(%struct.sTokenInfo* %0)
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %1, i32 0, i32 0
  %2 = load i16, i16* %type, align 8
  %conv = sext i16 %2 to i32
  %cmp = icmp eq i32 %conv, 123
  br i1 %cmp, label %if.then, label %if.end85

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %lor.end, %if.then
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @tokenRead(%struct.sTokenInfo* %3)
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
  br i1 %cmp5, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %do.body
  %9 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %9, i32 0, i32 1
  %10 = load i16, i16* %keyword, align 2
  %conv7 = sext i16 %10 to i32
  %cmp8 = icmp eq i32 %conv7, 0
  br i1 %cmp8, label %if.then10, label %if.else

if.then10:                                        ; preds = %land.lhs.true
  %11 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @parseEntry(%struct.sTokenInfo* %11)
  br label %if.end74

if.else:                                          ; preds = %land.lhs.true, %do.body
  %12 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type11 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %12, i32 0, i32 0
  %13 = load i16, i16* %type11, align 8
  %conv12 = sext i16 %13 to i32
  %cmp13 = icmp eq i32 %conv12, 259
  br i1 %cmp13, label %if.then32, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %14 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type15 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %14, i32 0, i32 0
  %15 = load i16, i16* %type15, align 8
  %conv16 = sext i16 %15 to i32
  %16 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %klass17 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %16, i32 0, i32 3
  %17 = load %struct.tokenInfoClass*, %struct.tokenInfoClass** %klass17, align 8
  %typeForKeyword18 = getelementptr inbounds %struct.tokenInfoClass, %struct.tokenInfoClass* %17, i32 0, i32 3
  %18 = load i16, i16* %typeForKeyword18, align 8
  %conv19 = sext i16 %18 to i32
  %cmp20 = icmp eq i32 %conv16, %conv19
  br i1 %cmp20, label %land.lhs.true22, label %lor.lhs.false27

land.lhs.true22:                                  ; preds = %lor.lhs.false
  %19 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword23 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %19, i32 0, i32 1
  %20 = load i16, i16* %keyword23, align 2
  %conv24 = sext i16 %20 to i32
  %cmp25 = icmp eq i32 %conv24, 2
  br i1 %cmp25, label %if.then32, label %lor.lhs.false27

lor.lhs.false27:                                  ; preds = %land.lhs.true22, %lor.lhs.false
  %21 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type28 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %21, i32 0, i32 0
  %22 = load i16, i16* %type28, align 8
  %conv29 = sext i16 %22 to i32
  %cmp30 = icmp eq i32 %conv29, 266
  br i1 %cmp30, label %if.then32, label %if.else33

if.then32:                                        ; preds = %lor.lhs.false27, %land.lhs.true22, %if.else
  %23 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @parseSection(%struct.sTokenInfo* %23)
  br label %if.end73

if.else33:                                        ; preds = %lor.lhs.false27
  %24 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type34 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %24, i32 0, i32 0
  %25 = load i16, i16* %type34, align 8
  %conv35 = sext i16 %25 to i32
  %26 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %klass36 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %26, i32 0, i32 3
  %27 = load %struct.tokenInfoClass*, %struct.tokenInfoClass** %klass36, align 8
  %typeForKeyword37 = getelementptr inbounds %struct.tokenInfoClass, %struct.tokenInfoClass* %27, i32 0, i32 3
  %28 = load i16, i16* %typeForKeyword37, align 8
  %conv38 = sext i16 %28 to i32
  %cmp39 = icmp eq i32 %conv35, %conv38
  br i1 %cmp39, label %land.lhs.true41, label %lor.lhs.false46

land.lhs.true41:                                  ; preds = %if.else33
  %29 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword42 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %29, i32 0, i32 1
  %30 = load i16, i16* %keyword42, align 2
  %conv43 = sext i16 %30 to i32
  %cmp44 = icmp eq i32 %conv43, 5
  br i1 %cmp44, label %if.then72, label %lor.lhs.false46

lor.lhs.false46:                                  ; preds = %land.lhs.true41, %if.else33
  %31 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type47 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %31, i32 0, i32 0
  %32 = load i16, i16* %type47, align 8
  %conv48 = sext i16 %32 to i32
  %33 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %klass49 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %33, i32 0, i32 3
  %34 = load %struct.tokenInfoClass*, %struct.tokenInfoClass** %klass49, align 8
  %typeForKeyword50 = getelementptr inbounds %struct.tokenInfoClass, %struct.tokenInfoClass* %34, i32 0, i32 3
  %35 = load i16, i16* %typeForKeyword50, align 8
  %conv51 = sext i16 %35 to i32
  %cmp52 = icmp eq i32 %conv48, %conv51
  br i1 %cmp52, label %land.lhs.true54, label %lor.lhs.false59

land.lhs.true54:                                  ; preds = %lor.lhs.false46
  %36 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword55 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %36, i32 0, i32 1
  %37 = load i16, i16* %keyword55, align 2
  %conv56 = sext i16 %37 to i32
  %cmp57 = icmp eq i32 %conv56, 6
  br i1 %cmp57, label %if.then72, label %lor.lhs.false59

lor.lhs.false59:                                  ; preds = %land.lhs.true54, %lor.lhs.false46
  %38 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type60 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %38, i32 0, i32 0
  %39 = load i16, i16* %type60, align 8
  %conv61 = sext i16 %39 to i32
  %40 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %klass62 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %40, i32 0, i32 3
  %41 = load %struct.tokenInfoClass*, %struct.tokenInfoClass** %klass62, align 8
  %typeForKeyword63 = getelementptr inbounds %struct.tokenInfoClass, %struct.tokenInfoClass* %41, i32 0, i32 3
  %42 = load i16, i16* %typeForKeyword63, align 8
  %conv64 = sext i16 %42 to i32
  %cmp65 = icmp eq i32 %conv61, %conv64
  br i1 %cmp65, label %land.lhs.true67, label %if.end

land.lhs.true67:                                  ; preds = %lor.lhs.false59
  %43 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword68 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %43, i32 0, i32 1
  %44 = load i16, i16* %keyword68, align 2
  %conv69 = sext i16 %44 to i32
  %cmp70 = icmp eq i32 %conv69, 7
  br i1 %cmp70, label %if.then72, label %if.end

if.then72:                                        ; preds = %land.lhs.true67, %land.lhs.true54, %land.lhs.true41
  %45 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @parseProvide(%struct.sTokenInfo* %45)
  br label %if.end

if.end:                                           ; preds = %if.then72, %land.lhs.true67, %lor.lhs.false59
  br label %if.end73

if.end73:                                         ; preds = %if.end, %if.then32
  br label %if.end74

if.end74:                                         ; preds = %if.end73, %if.then10
  br label %do.cond

do.cond:                                          ; preds = %if.end74
  %46 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type75 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %46, i32 0, i32 0
  %47 = load i16, i16* %type75, align 8
  %conv76 = sext i16 %47 to i32
  %48 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %klass77 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %48, i32 0, i32 3
  %49 = load %struct.tokenInfoClass*, %struct.tokenInfoClass** %klass77, align 8
  %typeForEOF = getelementptr inbounds %struct.tokenInfoClass, %struct.tokenInfoClass* %49, i32 0, i32 4
  %50 = load i16, i16* %typeForEOF, align 2
  %conv78 = sext i16 %50 to i32
  %cmp79 = icmp eq i32 %conv76, %conv78
  br i1 %cmp79, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %do.cond
  %51 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type81 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %51, i32 0, i32 0
  %52 = load i16, i16* %type81, align 8
  %conv82 = sext i16 %52 to i32
  %cmp83 = icmp eq i32 %conv82, 125
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %do.cond
  %53 = phi i1 [ true, %do.cond ], [ %cmp83, %lor.rhs ]
  %lnot = xor i1 %53, true
  br i1 %lnot, label %do.body, label %do.end

do.end:                                           ; preds = %lor.end
  br label %if.end85

if.end85:                                         ; preds = %do.end, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @makeLdScriptTagMaybe(%struct.sTagEntryInfo* %e, %struct.sTokenInfo* %token, i32 %kind, i32 %role) #0 {
entry:
  %retval = alloca i32, align 4
  %e.addr = alloca %struct.sTagEntryInfo*, align 8
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %kind.addr = alloca i32, align 4
  %role.addr = alloca i32, align 4
  %assignment = alloca i8*, align 8
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
  %arrayidx = getelementptr inbounds [4 x %struct.sKindDefinition], [4 x %struct.sKindDefinition]* @LdScriptKinds, i64 0, i64 %idxprom
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
  %arrayidx3 = getelementptr inbounds [4 x %struct.sKindDefinition], [4 x %struct.sKindDefinition]* @LdScriptKinds, i64 0, i64 %idxprom2
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
  %22 = bitcast i8* %add.ptr to %struct.tokenExtra*
  %scopeIndex = getelementptr inbounds %struct.tokenExtra, %struct.tokenExtra* %22, i32 0, i32 0
  %23 = load i32, i32* %scopeIndex, align 4
  %24 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %e.addr, align 8
  %extensionFields = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %24, i32 0, i32 11
  %scopeIndex13 = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields, i32 0, i32 7
  store i32 %23, i32* %scopeIndex13, align 8
  %25 = load i32, i32* %kind.addr, align 4
  %cmp14 = icmp eq i32 %25, 1
  br i1 %cmp14, label %land.lhs.true15, label %if.end25

land.lhs.true15:                                  ; preds = %if.end10
  %26 = load i8, i8* getelementptr inbounds ([1 x %struct.sFieldDefinition], [1 x %struct.sFieldDefinition]* @LdScriptFields, i64 0, i64 0, i32 3), align 8
  %tobool16 = trunc i8 %26 to i1
  br i1 %tobool16, label %if.then17, label %if.end25

if.then17:                                        ; preds = %land.lhs.true15
  store i8* null, i8** %assignment, align 8
  %27 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %28 = bitcast %struct.sTokenInfo* %27 to i8*
  %add.ptr18 = getelementptr inbounds i8, i8* %28, i64 48
  %29 = bitcast i8* %add.ptr18 to %struct.tokenExtra*
  %assignment19 = getelementptr inbounds %struct.tokenExtra, %struct.tokenExtra* %29, i32 0, i32 1
  %30 = load i16, i16* %assignment19, align 4
  %conv = sext i16 %30 to i32
  switch i32 %conv, label %sw.epilog [
    i32 5, label %sw.bb
    i32 6, label %sw.bb20
    i32 7, label %sw.bb21
  ]

sw.bb:                                            ; preds = %if.then17
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %assignment, align 8
  br label %sw.epilog

sw.bb20:                                          ; preds = %if.then17
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8** %assignment, align 8
  br label %sw.epilog

sw.bb21:                                          ; preds = %if.then17
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %assignment, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then17, %sw.bb21, %sw.bb20, %sw.bb
  %31 = load i8*, i8** %assignment, align 8
  %tobool22 = icmp ne i8* %31, null
  br i1 %tobool22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %sw.epilog
  %32 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %e.addr, align 8
  %33 = load i32, i32* getelementptr inbounds ([1 x %struct.sFieldDefinition], [1 x %struct.sFieldDefinition]* @LdScriptFields, i64 0, i64 0, i32 7), align 4
  %34 = load i8*, i8** %assignment, align 8
  call void @attachParserField(%struct.sTagEntryInfo* %32, i32 %33, i8* %34)
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %sw.epilog
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %land.lhs.true15, %if.end10
  %35 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %e.addr, align 8
  %call26 = call i32 @makeTagEntry(%struct.sTagEntryInfo* %35)
  store i32 %call26, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end25, %if.then8, %if.then1
  %36 = load i32, i32* %retval, align 4
  ret i32 %36
}

declare zeroext i1 @tokenSkipToType(%struct.sTokenInfo*, i16 signext) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseVersions(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @tokenRead(%struct.sTokenInfo* %0)
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %1, i32 0, i32 0
  %2 = load i16, i16* %type, align 8
  %conv = sext i16 %2 to i32
  %cmp = icmp eq i32 %conv, 123
  br i1 %cmp, label %if.then, label %if.end16

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %lor.end, %if.then
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @tokenRead(%struct.sTokenInfo* %3)
  %4 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type2 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %4, i32 0, i32 0
  %5 = load i16, i16* %type2, align 8
  %conv3 = sext i16 %5 to i32
  %cmp4 = icmp eq i32 %conv3, 259
  br i1 %cmp4, label %if.then6, label %if.end

if.then6:                                         ; preds = %do.body
  %6 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @parseVersion(%struct.sTokenInfo* %6)
  br label %if.end

if.end:                                           ; preds = %if.then6, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type7 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %7, i32 0, i32 0
  %8 = load i16, i16* %type7, align 8
  %conv8 = sext i16 %8 to i32
  %9 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %klass = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %9, i32 0, i32 3
  %10 = load %struct.tokenInfoClass*, %struct.tokenInfoClass** %klass, align 8
  %typeForEOF = getelementptr inbounds %struct.tokenInfoClass, %struct.tokenInfoClass* %10, i32 0, i32 4
  %11 = load i16, i16* %typeForEOF, align 2
  %conv9 = sext i16 %11 to i32
  %cmp10 = icmp eq i32 %conv8, %conv9
  br i1 %cmp10, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %do.cond
  %12 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type12 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %12, i32 0, i32 0
  %13 = load i16, i16* %type12, align 8
  %conv13 = sext i16 %13 to i32
  %cmp14 = icmp eq i32 %conv13, 125
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %do.cond
  %14 = phi i1 [ true, %do.cond ], [ %cmp14, %lor.rhs ]
  %lnot = xor i1 %14, true
  br i1 %lnot, label %do.body, label %do.end

do.end:                                           ; preds = %lor.end
  %15 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call = call zeroext i1 @tokenSkipToType(%struct.sTokenInfo* %15, i16 signext 59)
  br label %if.end16

if.end16:                                         ; preds = %do.end, %entry
  ret void
}

declare void @cppTerminate() #1

declare void @tokenDestroy(%struct.sTokenInfo*) #1

declare void @flashTokenBacklog(%struct.tokenInfoClass*) #1

declare i8* @newToken(%struct.tokenInfoClass*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseSection(%struct.sTokenInfo* %name) #0 {
entry:
  %name.addr = alloca %struct.sTokenInfo*, align 8
  %token = alloca %struct.sTokenInfo*, align 8
  %e = alloca %struct.sTagEntryInfo, align 8
  %scope_index = alloca i32, align 4
  store %struct.sTokenInfo* %name, %struct.sTokenInfo** %name.addr, align 8
  %call = call %struct.sTokenInfo* @newLdScriptToken()
  store %struct.sTokenInfo* %call, %struct.sTokenInfo** %token, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  call void @tokenRead(%struct.sTokenInfo* %0)
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %1, i32 0, i32 0
  %2 = load i16, i16* %type, align 8
  %conv = sext i16 %2 to i32
  %cmp = icmp eq i32 %conv, 261
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name.addr, align 8
  %type2 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %3, i32 0, i32 0
  %4 = load i16, i16* %type2, align 8
  %conv3 = sext i16 %4 to i32
  %5 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name.addr, align 8
  %klass = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %5, i32 0, i32 3
  %6 = load %struct.tokenInfoClass*, %struct.tokenInfoClass** %klass, align 8
  %typeForKeyword = getelementptr inbounds %struct.tokenInfoClass, %struct.tokenInfoClass* %6, i32 0, i32 3
  %7 = load i16, i16* %typeForKeyword, align 8
  %conv4 = sext i16 %7 to i32
  %cmp5 = icmp eq i32 %conv3, %conv4
  br i1 %cmp5, label %land.lhs.true, label %if.then10

land.lhs.true:                                    ; preds = %if.then
  %8 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %8, i32 0, i32 1
  %9 = load i16, i16* %keyword, align 2
  %conv7 = sext i16 %9 to i32
  %cmp8 = icmp eq i32 %conv7, 2
  br i1 %cmp8, label %if.end, label %if.then10

if.then10:                                        ; preds = %land.lhs.true, %if.then
  %10 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name.addr, align 8
  %call11 = call i32 @makeLdScriptTagMaybe(%struct.sTagEntryInfo* %e, %struct.sTokenInfo* %10, i32 1, i32 -1)
  br label %if.end

if.end:                                           ; preds = %if.then10, %land.lhs.true
  %11 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %call12 = call zeroext i1 @tokenSkipToType(%struct.sTokenInfo* %11, i16 signext 59)
  br label %if.end52

if.else:                                          ; preds = %entry
  br label %retry

retry:                                            ; preds = %if.then24, %if.else
  %12 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %type13 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %12, i32 0, i32 0
  %13 = load i16, i16* %type13, align 8
  %conv14 = sext i16 %13 to i32
  %cmp15 = icmp eq i32 %conv14, 260
  br i1 %cmp15, label %if.then17, label %if.else19

if.then17:                                        ; preds = %retry
  %14 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %call18 = call zeroext i1 @tokenSkipToType(%struct.sTokenInfo* %14, i16 signext 58)
  br label %if.end34

if.else19:                                        ; preds = %retry
  %15 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %type20 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %15, i32 0, i32 0
  %16 = load i16, i16* %type20, align 8
  %conv21 = sext i16 %16 to i32
  %cmp22 = icmp eq i32 %conv21, 259
  br i1 %cmp22, label %if.then24, label %if.else25

if.then24:                                        ; preds = %if.else19
  %17 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name.addr, align 8
  %18 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  call void @tokenCopy(%struct.sTokenInfo* %17, %struct.sTokenInfo* %18)
  %19 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  call void @tokenRead(%struct.sTokenInfo* %19)
  br label %retry

if.else25:                                        ; preds = %if.else19
  %20 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %type26 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %20, i32 0, i32 0
  %21 = load i16, i16* %type26, align 8
  %conv27 = sext i16 %21 to i32
  %cmp28 = icmp eq i32 %conv27, 40
  br i1 %cmp28, label %if.then30, label %if.end32

if.then30:                                        ; preds = %if.else25
  %22 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %call31 = call zeroext i1 @tokenSkipToType(%struct.sTokenInfo* %22, i16 signext 41)
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.else25
  br label %if.end33

if.end33:                                         ; preds = %if.end32
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.then17
  %23 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %type35 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %23, i32 0, i32 0
  %24 = load i16, i16* %type35, align 8
  %conv36 = sext i16 %24 to i32
  %cmp37 = icmp eq i32 %conv36, 58
  br i1 %cmp37, label %if.then39, label %if.end51

if.then39:                                        ; preds = %if.end34
  %25 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name.addr, align 8
  %type40 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %25, i32 0, i32 0
  %26 = load i16, i16* %type40, align 8
  %conv41 = sext i16 %26 to i32
  %cmp42 = icmp eq i32 %conv41, 266
  br i1 %cmp42, label %if.then44, label %if.else45

if.then44:                                        ; preds = %if.then39
  store i32 0, i32* %scope_index, align 4
  br label %if.end47

if.else45:                                        ; preds = %if.then39
  %27 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name.addr, align 8
  %call46 = call i32 @makeLdScriptTagMaybe(%struct.sTagEntryInfo* %e, %struct.sTokenInfo* %27, i32 0, i32 -1)
  store i32 %call46, i32* %scope_index, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.else45, %if.then44
  %28 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %call48 = call zeroext i1 @tokenSkipToType(%struct.sTokenInfo* %28, i16 signext 123)
  br i1 %call48, label %if.then49, label %if.end50

if.then49:                                        ; preds = %if.end47
  %29 = load i32, i32* %scope_index, align 4
  %30 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %31 = bitcast %struct.sTokenInfo* %30 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %31, i64 48
  %32 = bitcast i8* %add.ptr to %struct.tokenExtra*
  %scopeIndex = getelementptr inbounds %struct.tokenExtra, %struct.tokenExtra* %32, i32 0, i32 0
  store i32 %29, i32* %scopeIndex, align 4
  %33 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  call void @parseOutputSectionCommands(%struct.sTokenInfo* %33, i32 125)
  br label %if.end50

if.end50:                                         ; preds = %if.then49, %if.end47
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %if.end34
  br label %if.end52

if.end52:                                         ; preds = %if.end51, %if.end
  %34 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  call void @tokenDestroy(%struct.sTokenInfo* %34)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseProvide(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %p = alloca i16, align 2
  %e = alloca %struct.sTagEntryInfo, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 1
  %1 = load i16, i16* %keyword, align 2
  store i16 %1, i16* %p, align 2
  %2 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call = call zeroext i1 @tokenSkipToType(%struct.sTokenInfo* %2, i16 signext 40)
  br i1 %call, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @tokenRead(%struct.sTokenInfo* %3)
  %4 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %4, i32 0, i32 0
  %5 = load i16, i16* %type, align 8
  %conv = sext i16 %5 to i32
  %cmp = icmp eq i32 %conv, 259
  br i1 %cmp, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %6 = load i16, i16* %p, align 2
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %8 = bitcast %struct.sTokenInfo* %7 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 48
  %9 = bitcast i8* %add.ptr to %struct.tokenExtra*
  %assignment = getelementptr inbounds %struct.tokenExtra, %struct.tokenExtra* %9, i32 0, i32 1
  store i16 %6, i16* %assignment, align 4
  %10 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call3 = call i32 @makeLdScriptTagMaybe(%struct.sTagEntryInfo* %e, %struct.sTokenInfo* %10, i32 1, i32 -1)
  %11 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %12 = bitcast %struct.sTokenInfo* %11 to i8*
  %add.ptr4 = getelementptr inbounds i8, i8* %12, i64 48
  %13 = bitcast i8* %add.ptr4 to %struct.tokenExtra*
  %assignment5 = getelementptr inbounds %struct.tokenExtra, %struct.tokenExtra* %13, i32 0, i32 1
  store i16 -1, i16* %assignment5, align 4
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %14 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call6 = call zeroext i1 @tokenSkipToType(%struct.sTokenInfo* %14, i16 signext 41)
  br label %if.end7

if.end7:                                          ; preds = %if.end, %entry
  ret void
}

declare void @tokenCopy(%struct.sTokenInfo*, %struct.sTokenInfo*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseOutputSectionCommands(%struct.sTokenInfo* %token, i32 %terminator) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %terminator.addr = alloca i32, align 4
  %tmp = alloca %struct.sTokenInfo*, align 8
  %scope_index = alloca i32, align 4
  %e = alloca %struct.sTagEntryInfo, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  store i32 %terminator, i32* %terminator.addr, align 4
  %call = call %struct.sTokenInfo* @newLdScriptToken()
  store %struct.sTokenInfo* %call, %struct.sTokenInfo** %tmp, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %1 = bitcast %struct.sTokenInfo* %0 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 48
  %2 = bitcast i8* %add.ptr to %struct.tokenExtra*
  %scopeIndex = getelementptr inbounds %struct.tokenExtra, %struct.tokenExtra* %2, i32 0, i32 0
  %3 = load i32, i32* %scopeIndex, align 4
  store i32 %3, i32* %scope_index, align 4
  br label %do.body

do.body:                                          ; preds = %lor.end, %entry
  %4 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @tokenRead(%struct.sTokenInfo* %4)
  %5 = load i32, i32* %scope_index, align 4
  %6 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %7 = bitcast %struct.sTokenInfo* %6 to i8*
  %add.ptr1 = getelementptr inbounds i8, i8* %7, i64 48
  %8 = bitcast i8* %add.ptr1 to %struct.tokenExtra*
  %scopeIndex2 = getelementptr inbounds %struct.tokenExtra, %struct.tokenExtra* %8, i32 0, i32 0
  store i32 %5, i32* %scopeIndex2, align 4
  %9 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %9, i32 0, i32 0
  %10 = load i16, i16* %type, align 8
  %conv = sext i16 %10 to i32
  %11 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %klass = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %11, i32 0, i32 3
  %12 = load %struct.tokenInfoClass*, %struct.tokenInfoClass** %klass, align 8
  %typeForKeyword = getelementptr inbounds %struct.tokenInfoClass, %struct.tokenInfoClass* %12, i32 0, i32 3
  %13 = load i16, i16* %typeForKeyword, align 8
  %conv3 = sext i16 %13 to i32
  %cmp = icmp eq i32 %conv, %conv3
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %do.body
  %14 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %14, i32 0, i32 1
  %15 = load i16, i16* %keyword, align 2
  %conv5 = sext i16 %15 to i32
  %cmp6 = icmp eq i32 %conv5, 9
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %16 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call8 = call zeroext i1 @tokenSkipToType(%struct.sTokenInfo* %16, i16 signext 40)
  %17 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call9 = call zeroext i1 @tokenSkipToType(%struct.sTokenInfo* %17, i16 signext 41)
  br label %if.end151

if.else:                                          ; preds = %land.lhs.true, %do.body
  %18 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type10 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %18, i32 0, i32 0
  %19 = load i16, i16* %type10, align 8
  %conv11 = sext i16 %19 to i32
  %20 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %klass12 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %20, i32 0, i32 3
  %21 = load %struct.tokenInfoClass*, %struct.tokenInfoClass** %klass12, align 8
  %typeForKeyword13 = getelementptr inbounds %struct.tokenInfoClass, %struct.tokenInfoClass* %21, i32 0, i32 3
  %22 = load i16, i16* %typeForKeyword13, align 8
  %conv14 = sext i16 %22 to i32
  %cmp15 = icmp eq i32 %conv11, %conv14
  br i1 %cmp15, label %land.lhs.true17, label %if.else24

land.lhs.true17:                                  ; preds = %if.else
  %23 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword18 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %23, i32 0, i32 1
  %24 = load i16, i16* %keyword18, align 2
  %conv19 = sext i16 %24 to i32
  %cmp20 = icmp eq i32 %conv19, 11
  br i1 %cmp20, label %if.then22, label %if.else24

if.then22:                                        ; preds = %land.lhs.true17
  %25 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call23 = call zeroext i1 @tokenSkipToType(%struct.sTokenInfo* %25, i16 signext 40)
  %26 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @parseOutputSectionCommands(%struct.sTokenInfo* %26, i32 41)
  br label %if.end150

if.else24:                                        ; preds = %land.lhs.true17, %if.else
  %27 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type25 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %27, i32 0, i32 0
  %28 = load i16, i16* %type25, align 8
  %conv26 = sext i16 %28 to i32
  %cmp27 = icmp eq i32 %conv26, 259
  br i1 %cmp27, label %if.then41, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else24
  %29 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type29 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %29, i32 0, i32 0
  %30 = load i16, i16* %type29, align 8
  %conv30 = sext i16 %30 to i32
  %31 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %klass31 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %31, i32 0, i32 3
  %32 = load %struct.tokenInfoClass*, %struct.tokenInfoClass** %klass31, align 8
  %typeForKeyword32 = getelementptr inbounds %struct.tokenInfoClass, %struct.tokenInfoClass* %32, i32 0, i32 3
  %33 = load i16, i16* %typeForKeyword32, align 8
  %conv33 = sext i16 %33 to i32
  %cmp34 = icmp eq i32 %conv30, %conv33
  br i1 %cmp34, label %land.lhs.true36, label %if.else71

land.lhs.true36:                                  ; preds = %lor.lhs.false
  %34 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword37 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %34, i32 0, i32 1
  %35 = load i16, i16* %keyword37, align 2
  %conv38 = sext i16 %35 to i32
  %cmp39 = icmp eq i32 %conv38, 2
  br i1 %cmp39, label %if.then41, label %if.else71

if.then41:                                        ; preds = %land.lhs.true36, %if.else24
  %36 = load %struct.sTokenInfo*, %struct.sTokenInfo** %tmp, align 8
  call void @tokenRead(%struct.sTokenInfo* %36)
  %37 = load %struct.sTokenInfo*, %struct.sTokenInfo** %tmp, align 8
  %type42 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %37, i32 0, i32 0
  %38 = load i16, i16* %type42, align 8
  %conv43 = sext i16 %38 to i32
  %cmp44 = icmp eq i32 %conv43, 261
  br i1 %cmp44, label %if.then46, label %if.else62

if.then46:                                        ; preds = %if.then41
  %39 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type47 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %39, i32 0, i32 0
  %40 = load i16, i16* %type47, align 8
  %conv48 = sext i16 %40 to i32
  %41 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %klass49 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %41, i32 0, i32 3
  %42 = load %struct.tokenInfoClass*, %struct.tokenInfoClass** %klass49, align 8
  %typeForKeyword50 = getelementptr inbounds %struct.tokenInfoClass, %struct.tokenInfoClass* %42, i32 0, i32 3
  %43 = load i16, i16* %typeForKeyword50, align 8
  %conv51 = sext i16 %43 to i32
  %cmp52 = icmp eq i32 %conv48, %conv51
  br i1 %cmp52, label %land.lhs.true54, label %if.then59

land.lhs.true54:                                  ; preds = %if.then46
  %44 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword55 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %44, i32 0, i32 1
  %45 = load i16, i16* %keyword55, align 2
  %conv56 = sext i16 %45 to i32
  %cmp57 = icmp eq i32 %conv56, 2
  br i1 %cmp57, label %if.end, label %if.then59

if.then59:                                        ; preds = %land.lhs.true54, %if.then46
  %46 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call60 = call i32 @makeLdScriptTagMaybe(%struct.sTagEntryInfo* %e, %struct.sTokenInfo* %46, i32 1, i32 -1)
  br label %if.end

if.end:                                           ; preds = %if.then59, %land.lhs.true54
  %47 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call61 = call zeroext i1 @tokenSkipToType(%struct.sTokenInfo* %47, i16 signext 59)
  br label %if.end70

if.else62:                                        ; preds = %if.then41
  %48 = load %struct.sTokenInfo*, %struct.sTokenInfo** %tmp, align 8
  %type63 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %48, i32 0, i32 0
  %49 = load i16, i16* %type63, align 8
  %conv64 = sext i16 %49 to i32
  %cmp65 = icmp eq i32 %conv64, 40
  br i1 %cmp65, label %if.then67, label %if.else68

if.then67:                                        ; preds = %if.else62
  %50 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @parseInputSections(%struct.sTokenInfo* %50)
  br label %if.end69

if.else68:                                        ; preds = %if.else62
  %51 = load %struct.sTokenInfo*, %struct.sTokenInfo** %tmp, align 8
  call void @tokenUnread(%struct.sTokenInfo* %51)
  br label %if.end69

if.end69:                                         ; preds = %if.else68, %if.then67
  br label %if.end70

if.end70:                                         ; preds = %if.end69, %if.end
  br label %if.end149

if.else71:                                        ; preds = %land.lhs.true36, %lor.lhs.false
  %52 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type72 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %52, i32 0, i32 0
  %53 = load i16, i16* %type72, align 8
  %conv73 = sext i16 %53 to i32
  %cmp74 = icmp eq i32 %conv73, 262
  br i1 %cmp74, label %land.lhs.true76, label %lor.lhs.false94

land.lhs.true76:                                  ; preds = %if.else71
  %54 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %54, i32 0, i32 2
  %55 = load %struct.sVString*, %struct.sVString** %string, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %55, i32 0, i32 2
  %56 = load i8*, i8** %buffer, align 8
  %arrayidx = getelementptr inbounds i8, i8* %56, i64 0
  %57 = load i8, i8* %arrayidx, align 1
  %conv77 = sext i8 %57 to i32
  %cmp78 = icmp eq i32 %conv77, 42
  br i1 %cmp78, label %land.lhs.true87, label %lor.lhs.false80

lor.lhs.false80:                                  ; preds = %land.lhs.true76
  %58 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string81 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %58, i32 0, i32 2
  %59 = load %struct.sVString*, %struct.sVString** %string81, align 8
  %buffer82 = getelementptr inbounds %struct.sVString, %struct.sVString* %59, i32 0, i32 2
  %60 = load i8*, i8** %buffer82, align 8
  %arrayidx83 = getelementptr inbounds i8, i8* %60, i64 0
  %61 = load i8, i8* %arrayidx83, align 1
  %conv84 = sext i8 %61 to i32
  %cmp85 = icmp eq i32 %conv84, 63
  br i1 %cmp85, label %land.lhs.true87, label %lor.lhs.false94

land.lhs.true87:                                  ; preds = %lor.lhs.false80, %land.lhs.true76
  %62 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string88 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %62, i32 0, i32 2
  %63 = load %struct.sVString*, %struct.sVString** %string88, align 8
  %buffer89 = getelementptr inbounds %struct.sVString, %struct.sVString* %63, i32 0, i32 2
  %64 = load i8*, i8** %buffer89, align 8
  %arrayidx90 = getelementptr inbounds i8, i8* %64, i64 1
  %65 = load i8, i8* %arrayidx90, align 1
  %conv91 = sext i8 %65 to i32
  %cmp92 = icmp eq i32 %conv91, 0
  br i1 %cmp92, label %if.then99, label %lor.lhs.false94

lor.lhs.false94:                                  ; preds = %land.lhs.true87, %lor.lhs.false80, %if.else71
  %66 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type95 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %66, i32 0, i32 0
  %67 = load i16, i16* %type95, align 8
  %conv96 = sext i16 %67 to i32
  %cmp97 = icmp eq i32 %conv96, 93
  br i1 %cmp97, label %if.then99, label %if.else107

if.then99:                                        ; preds = %lor.lhs.false94, %land.lhs.true87
  %68 = load %struct.sTokenInfo*, %struct.sTokenInfo** %tmp, align 8
  call void @tokenRead(%struct.sTokenInfo* %68)
  %69 = load %struct.sTokenInfo*, %struct.sTokenInfo** %tmp, align 8
  %type100 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %69, i32 0, i32 0
  %70 = load i16, i16* %type100, align 8
  %conv101 = sext i16 %70 to i32
  %cmp102 = icmp eq i32 %conv101, 40
  br i1 %cmp102, label %if.then104, label %if.else105

if.then104:                                       ; preds = %if.then99
  %71 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @parseInputSections(%struct.sTokenInfo* %71)
  br label %if.end106

if.else105:                                       ; preds = %if.then99
  %72 = load %struct.sTokenInfo*, %struct.sTokenInfo** %tmp, align 8
  call void @tokenUnread(%struct.sTokenInfo* %72)
  br label %if.end106

if.end106:                                        ; preds = %if.else105, %if.then104
  br label %if.end148

if.else107:                                       ; preds = %lor.lhs.false94
  %73 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type108 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %73, i32 0, i32 0
  %74 = load i16, i16* %type108, align 8
  %conv109 = sext i16 %74 to i32
  %75 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %klass110 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %75, i32 0, i32 3
  %76 = load %struct.tokenInfoClass*, %struct.tokenInfoClass** %klass110, align 8
  %typeForKeyword111 = getelementptr inbounds %struct.tokenInfoClass, %struct.tokenInfoClass* %76, i32 0, i32 3
  %77 = load i16, i16* %typeForKeyword111, align 8
  %conv112 = sext i16 %77 to i32
  %cmp113 = icmp eq i32 %conv109, %conv112
  br i1 %cmp113, label %land.lhs.true115, label %lor.lhs.false120

land.lhs.true115:                                 ; preds = %if.else107
  %78 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword116 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %78, i32 0, i32 1
  %79 = load i16, i16* %keyword116, align 2
  %conv117 = sext i16 %79 to i32
  %cmp118 = icmp eq i32 %conv117, 5
  br i1 %cmp118, label %if.then146, label %lor.lhs.false120

lor.lhs.false120:                                 ; preds = %land.lhs.true115, %if.else107
  %80 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type121 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %80, i32 0, i32 0
  %81 = load i16, i16* %type121, align 8
  %conv122 = sext i16 %81 to i32
  %82 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %klass123 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %82, i32 0, i32 3
  %83 = load %struct.tokenInfoClass*, %struct.tokenInfoClass** %klass123, align 8
  %typeForKeyword124 = getelementptr inbounds %struct.tokenInfoClass, %struct.tokenInfoClass* %83, i32 0, i32 3
  %84 = load i16, i16* %typeForKeyword124, align 8
  %conv125 = sext i16 %84 to i32
  %cmp126 = icmp eq i32 %conv122, %conv125
  br i1 %cmp126, label %land.lhs.true128, label %lor.lhs.false133

land.lhs.true128:                                 ; preds = %lor.lhs.false120
  %85 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword129 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %85, i32 0, i32 1
  %86 = load i16, i16* %keyword129, align 2
  %conv130 = sext i16 %86 to i32
  %cmp131 = icmp eq i32 %conv130, 6
  br i1 %cmp131, label %if.then146, label %lor.lhs.false133

lor.lhs.false133:                                 ; preds = %land.lhs.true128, %lor.lhs.false120
  %87 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type134 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %87, i32 0, i32 0
  %88 = load i16, i16* %type134, align 8
  %conv135 = sext i16 %88 to i32
  %89 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %klass136 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %89, i32 0, i32 3
  %90 = load %struct.tokenInfoClass*, %struct.tokenInfoClass** %klass136, align 8
  %typeForKeyword137 = getelementptr inbounds %struct.tokenInfoClass, %struct.tokenInfoClass* %90, i32 0, i32 3
  %91 = load i16, i16* %typeForKeyword137, align 8
  %conv138 = sext i16 %91 to i32
  %cmp139 = icmp eq i32 %conv135, %conv138
  br i1 %cmp139, label %land.lhs.true141, label %if.end147

land.lhs.true141:                                 ; preds = %lor.lhs.false133
  %92 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword142 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %92, i32 0, i32 1
  %93 = load i16, i16* %keyword142, align 2
  %conv143 = sext i16 %93 to i32
  %cmp144 = icmp eq i32 %conv143, 7
  br i1 %cmp144, label %if.then146, label %if.end147

if.then146:                                       ; preds = %land.lhs.true141, %land.lhs.true128, %land.lhs.true115
  %94 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @parseProvide(%struct.sTokenInfo* %94)
  br label %if.end147

if.end147:                                        ; preds = %if.then146, %land.lhs.true141, %lor.lhs.false133
  br label %if.end148

if.end148:                                        ; preds = %if.end147, %if.end106
  br label %if.end149

if.end149:                                        ; preds = %if.end148, %if.end70
  br label %if.end150

if.end150:                                        ; preds = %if.end149, %if.then22
  br label %if.end151

if.end151:                                        ; preds = %if.end150, %if.then
  br label %do.cond

do.cond:                                          ; preds = %if.end151
  %95 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type152 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %95, i32 0, i32 0
  %96 = load i16, i16* %type152, align 8
  %conv153 = sext i16 %96 to i32
  %97 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %klass154 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %97, i32 0, i32 3
  %98 = load %struct.tokenInfoClass*, %struct.tokenInfoClass** %klass154, align 8
  %typeForEOF = getelementptr inbounds %struct.tokenInfoClass, %struct.tokenInfoClass* %98, i32 0, i32 4
  %99 = load i16, i16* %typeForEOF, align 2
  %conv155 = sext i16 %99 to i32
  %cmp156 = icmp eq i32 %conv153, %conv155
  br i1 %cmp156, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %do.cond
  %100 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type158 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %100, i32 0, i32 0
  %101 = load i16, i16* %type158, align 8
  %conv159 = sext i16 %101 to i32
  %102 = load i32, i32* %terminator.addr, align 4
  %cmp160 = icmp eq i32 %conv159, %102
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %do.cond
  %103 = phi i1 [ true, %do.cond ], [ %cmp160, %lor.rhs ]
  %lnot = xor i1 %103, true
  br i1 %lnot, label %do.body, label %do.end

do.end:                                           ; preds = %lor.end
  %104 = load %struct.sTokenInfo*, %struct.sTokenInfo** %tmp, align 8
  call void @tokenDestroy(%struct.sTokenInfo* %104)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseInputSections(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %e = alloca %struct.sTagEntryInfo, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @tokenRead(%struct.sTokenInfo* %0)
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %1, i32 0, i32 0
  %2 = load i16, i16* %type, align 8
  %conv = sext i16 %2 to i32
  %cmp = icmp eq i32 %conv, 41
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %do.end

if.else:                                          ; preds = %do.body
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type2 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %3, i32 0, i32 0
  %4 = load i16, i16* %type2, align 8
  %conv3 = sext i16 %4 to i32
  %cmp4 = icmp eq i32 %conv3, 259
  br i1 %cmp4, label %if.then6, label %if.else9

if.then6:                                         ; preds = %if.else
  %5 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %6 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %7 = bitcast %struct.sTokenInfo* %6 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 48
  %8 = bitcast i8* %add.ptr to %struct.tokenExtra*
  %scopeIndex = getelementptr inbounds %struct.tokenExtra, %struct.tokenExtra* %8, i32 0, i32 0
  %9 = load i32, i32* %scopeIndex, align 4
  %cmp7 = icmp eq i32 %9, 0
  %10 = zext i1 %cmp7 to i64
  %cond = select i1 %cmp7, i32 1, i32 0
  %call = call i32 @makeLdScriptTagMaybe(%struct.sTagEntryInfo* %e, %struct.sTokenInfo* %5, i32 3, i32 %cond)
  br label %if.end20

if.else9:                                         ; preds = %if.else
  %11 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type10 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %11, i32 0, i32 0
  %12 = load i16, i16* %type10, align 8
  %conv11 = sext i16 %12 to i32
  %13 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %klass = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %13, i32 0, i32 3
  %14 = load %struct.tokenInfoClass*, %struct.tokenInfoClass** %klass, align 8
  %typeForKeyword = getelementptr inbounds %struct.tokenInfoClass, %struct.tokenInfoClass* %14, i32 0, i32 3
  %15 = load i16, i16* %typeForKeyword, align 8
  %conv12 = sext i16 %15 to i32
  %cmp13 = icmp eq i32 %conv11, %conv12
  br i1 %cmp13, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.else9
  %16 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %16, i32 0, i32 1
  %17 = load i16, i16* %keyword, align 2
  %conv15 = sext i16 %17 to i32
  %cmp16 = icmp eq i32 %conv15, 8
  br i1 %cmp16, label %if.then18, label %if.end

if.then18:                                        ; preds = %land.lhs.true
  %18 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call19 = call zeroext i1 @tokenSkipToType(%struct.sTokenInfo* %18, i16 signext 41)
  br label %if.end

if.end:                                           ; preds = %if.then18, %land.lhs.true, %if.else9
  br label %if.end20

if.end20:                                         ; preds = %if.end, %if.then6
  br label %if.end21

if.end21:                                         ; preds = %if.end20
  br label %do.cond

do.cond:                                          ; preds = %if.end21
  %19 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type22 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %19, i32 0, i32 0
  %20 = load i16, i16* %type22, align 8
  %conv23 = sext i16 %20 to i32
  %21 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %klass24 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %21, i32 0, i32 3
  %22 = load %struct.tokenInfoClass*, %struct.tokenInfoClass** %klass24, align 8
  %typeForEOF = getelementptr inbounds %struct.tokenInfoClass, %struct.tokenInfoClass* %22, i32 0, i32 4
  %23 = load i16, i16* %typeForEOF, align 2
  %conv25 = sext i16 %23 to i32
  %cmp26 = icmp eq i32 %conv23, %conv25
  %lnot = xor i1 %cmp26, true
  br i1 %lnot, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.then
  ret void
}

declare void @tokenUnread(%struct.sTokenInfo*) #1

declare zeroext i1 @isXtagEnabled(i32) #1

declare void @initRefTagEntry(%struct.sTagEntryInfo*, i8*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare void @attachParserField(%struct.sTagEntryInfo*, i32, i8*) #1

declare i32 @makeTagEntry(%struct.sTagEntryInfo*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseVersion(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %e = alloca %struct.sTagEntryInfo, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call = call i32 @makeLdScriptTagMaybe(%struct.sTagEntryInfo* %e, %struct.sTokenInfo* %0, i32 2, i32 -1)
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call1 = call zeroext i1 @tokenSkipToType(%struct.sTokenInfo* %1, i16 signext 123)
  br i1 %call1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call2 = call zeroext i1 @tokenSkipOverPair(%struct.sTokenInfo* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare zeroext i1 @tokenSkipOverPair(%struct.sTokenInfo*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @readToken(%struct.sTokenInfo* %token, i8* %data) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %data.addr = alloca i8*, align 8
  %c = alloca i32, align 4
  %c0 = alloca i32, align 4
  %c1 = alloca i32, align 4
  %vStringClear_s = alloca %struct.sVString*, align 8
  %tmp = alloca %struct._MIOPos, align 8
  %discard = alloca %struct.sTokenInfo*, align 8
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
  br label %do.body1

do.body1:                                         ; preds = %lor.end, %do.end
  %call = call i32 @cppGetc()
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
  br i1 %cmp4, label %lor.end, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false3
  %10 = load i32, i32* %c, align 4
  %cmp6 = icmp eq i32 %10, 13
  br i1 %cmp6, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false5
  %11 = load i32, i32* %c, align 4
  %cmp7 = icmp eq i32 %11, 10
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false5, %lor.lhs.false3, %lor.lhs.false, %do.cond
  %12 = phi i1 [ true, %lor.lhs.false5 ], [ true, %lor.lhs.false3 ], [ true, %lor.lhs.false ], [ true, %do.cond ], [ %cmp7, %lor.rhs ]
  br i1 %12, label %do.body1, label %do.end8

do.end8:                                          ; preds = %lor.end
  %call9 = call i64 @getInputLineNumber()
  %13 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %lineNumber = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %13, i32 0, i32 4
  store i64 %call9, i64* %lineNumber, align 8
  %14 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %filePosition = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %14, i32 0, i32 5
  %call10 = call [2 x i64] @getInputFilePosition()
  %15 = bitcast %struct._MIOPos* %tmp to [2 x i64]*
  store [2 x i64] %call10, [2 x i64]* %15, align 8
  %16 = bitcast %struct._MIOPos* %filePosition to i8*
  %17 = bitcast %struct._MIOPos* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 16, i1 false)
  %18 = load i32, i32* %c, align 4
  switch i32 %18, label %sw.default [
    i32 -1, label %sw.bb
    i32 59, label %sw.bb12
    i32 40, label %sw.bb12
    i32 41, label %sw.bb12
    i32 123, label %sw.bb12
    i32 125, label %sw.bb12
    i32 91, label %sw.bb12
    i32 93, label %sw.bb12
    i32 126, label %sw.bb14
    i32 37, label %sw.bb14
    i32 63, label %sw.bb14
    i32 45, label %sw.bb17
    i32 43, label %sw.bb17
    i32 42, label %sw.bb17
    i32 47, label %sw.bb17
    i32 33, label %sw.bb53
    i32 60, label %sw.bb63
    i32 124, label %sw.bb88
    i32 38, label %sw.bb88
    i32 61, label %sw.bb105
    i32 62, label %sw.bb119
    i32 58, label %sw.bb144
  ]

sw.bb:                                            ; preds = %do.end8
  %19 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type11 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %19, i32 0, i32 0
  store i16 256, i16* %type11, align 8
  br label %sw.epilog

sw.bb12:                                          ; preds = %do.end8, %do.end8, %do.end8, %do.end8, %do.end8, %do.end8, %do.end8
  %20 = load i32, i32* %c, align 4
  %conv = trunc i32 %20 to i16
  %21 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type13 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %21, i32 0, i32 0
  store i16 %conv, i16* %type13, align 8
  br label %sw.epilog

sw.bb14:                                          ; preds = %do.end8, %do.end8, %do.end8
  %22 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string15 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %22, i32 0, i32 2
  %23 = load %struct.sVString*, %struct.sVString** %string15, align 8
  %24 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %23, i32 %24)
  %25 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type16 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %25, i32 0, i32 0
  store i16 262, i16* %type16, align 8
  br label %sw.epilog

sw.bb17:                                          ; preds = %do.end8, %do.end8, %do.end8, %do.end8
  %26 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string18 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %26, i32 0, i32 2
  %27 = load %struct.sVString*, %struct.sVString** %string18, align 8
  %28 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %27, i32 %28)
  %call19 = call i32 @cppGetc()
  store i32 %call19, i32* %c0, align 4
  %29 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type20 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %29, i32 0, i32 0
  store i16 262, i16* %type20, align 8
  %30 = load i32, i32* %c0, align 4
  %cmp21 = icmp eq i32 %30, 61
  br i1 %cmp21, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb17
  %31 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string23 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %31, i32 0, i32 2
  %32 = load %struct.sVString*, %struct.sVString** %string23, align 8
  %33 = load i32, i32* %c0, align 4
  call void @vStringPut(%struct.sVString* %32, i32 %33)
  %34 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type24 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %34, i32 0, i32 0
  store i16 261, i16* %type24, align 8
  br label %if.end52

if.else:                                          ; preds = %sw.bb17
  %35 = load i32, i32* %c, align 4
  %cmp25 = icmp eq i32 %35, 47
  br i1 %cmp25, label %land.lhs.true, label %if.else50

land.lhs.true:                                    ; preds = %if.else
  %36 = load i32, i32* %c0, align 4
  %cmp27 = icmp eq i32 %36, 68
  br i1 %cmp27, label %if.then29, label %if.else50

if.then29:                                        ; preds = %land.lhs.true
  %call30 = call %struct.sTokenInfo* @newLdScriptToken()
  store %struct.sTokenInfo* %call30, %struct.sTokenInfo** %discard, align 8
  %37 = load i32, i32* %c0, align 4
  call void @cppUngetc(i32 %37)
  %38 = load %struct.sTokenInfo*, %struct.sTokenInfo** %discard, align 8
  call void @tokenRead(%struct.sTokenInfo* %38)
  %39 = load %struct.sTokenInfo*, %struct.sTokenInfo** %discard, align 8
  %type31 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %39, i32 0, i32 0
  %40 = load i16, i16* %type31, align 8
  %conv32 = sext i16 %40 to i32
  %cmp33 = icmp eq i32 %conv32, 259
  br i1 %cmp33, label %land.lhs.true35, label %if.else48

land.lhs.true35:                                  ; preds = %if.then29
  %41 = load %struct.sTokenInfo*, %struct.sTokenInfo** %discard, align 8
  %string36 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %41, i32 0, i32 2
  %42 = load %struct.sVString*, %struct.sVString** %string36, align 8
  %buffer37 = getelementptr inbounds %struct.sVString, %struct.sVString* %42, i32 0, i32 2
  %43 = load i8*, i8** %buffer37, align 8
  %call38 = call i32 @strcmp(i8* %43, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %cmp39 = icmp eq i32 %call38, 0
  br i1 %cmp39, label %if.then41, label %if.else48

if.then41:                                        ; preds = %land.lhs.true35
  %call42 = call i32 @cppGetc()
  store i32 %call42, i32* %c1, align 4
  %44 = load i32, i32* %c1, align 4
  %cmp43 = icmp eq i32 %44, 47
  br i1 %cmp43, label %if.then45, label %if.else47

if.then45:                                        ; preds = %if.then41
  %45 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type46 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %45, i32 0, i32 0
  store i16 266, i16* %type46, align 8
  br label %if.end

if.else47:                                        ; preds = %if.then41
  %46 = load i32, i32* %c1, align 4
  call void @cppUngetc(i32 %46)
  %47 = load %struct.sTokenInfo*, %struct.sTokenInfo** %discard, align 8
  call void @tokenUnread(%struct.sTokenInfo* %47)
  br label %if.end

if.end:                                           ; preds = %if.else47, %if.then45
  br label %if.end49

if.else48:                                        ; preds = %land.lhs.true35, %if.then29
  %48 = load %struct.sTokenInfo*, %struct.sTokenInfo** %discard, align 8
  call void @tokenUnread(%struct.sTokenInfo* %48)
  br label %if.end49

if.end49:                                         ; preds = %if.else48, %if.end
  %49 = load %struct.sTokenInfo*, %struct.sTokenInfo** %discard, align 8
  call void @tokenDestroy(%struct.sTokenInfo* %49)
  br label %if.end51

if.else50:                                        ; preds = %land.lhs.true, %if.else
  %50 = load i32, i32* %c0, align 4
  call void @cppUngetc(i32 %50)
  br label %if.end51

if.end51:                                         ; preds = %if.else50, %if.end49
  br label %if.end52

if.end52:                                         ; preds = %if.end51, %if.then
  br label %sw.epilog

sw.bb53:                                          ; preds = %do.end8
  %51 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string54 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %51, i32 0, i32 2
  %52 = load %struct.sVString*, %struct.sVString** %string54, align 8
  %53 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %52, i32 %53)
  %54 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type55 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %54, i32 0, i32 0
  store i16 262, i16* %type55, align 8
  %call56 = call i32 @cppGetc()
  store i32 %call56, i32* %c0, align 4
  %55 = load i32, i32* %c0, align 4
  %cmp57 = icmp eq i32 %55, 61
  br i1 %cmp57, label %if.then59, label %if.else61

if.then59:                                        ; preds = %sw.bb53
  %56 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string60 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %56, i32 0, i32 2
  %57 = load %struct.sVString*, %struct.sVString** %string60, align 8
  %58 = load i32, i32* %c0, align 4
  call void @vStringPut(%struct.sVString* %57, i32 %58)
  br label %if.end62

if.else61:                                        ; preds = %sw.bb53
  %59 = load i32, i32* %c0, align 4
  call void @cppUngetc(i32 %59)
  br label %if.end62

if.end62:                                         ; preds = %if.else61, %if.then59
  br label %sw.bb63

sw.bb63:                                          ; preds = %do.end8, %if.end62
  %60 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string64 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %60, i32 0, i32 2
  %61 = load %struct.sVString*, %struct.sVString** %string64, align 8
  %62 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %61, i32 %62)
  %63 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type65 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %63, i32 0, i32 0
  store i16 262, i16* %type65, align 8
  %call66 = call i32 @cppGetc()
  store i32 %call66, i32* %c0, align 4
  %64 = load i32, i32* %c0, align 4
  %65 = load i32, i32* %c, align 4
  %cmp67 = icmp eq i32 %64, %65
  br i1 %cmp67, label %if.then72, label %lor.lhs.false69

lor.lhs.false69:                                  ; preds = %sw.bb63
  %66 = load i32, i32* %c0, align 4
  %cmp70 = icmp eq i32 %66, 61
  br i1 %cmp70, label %if.then72, label %if.else86

if.then72:                                        ; preds = %lor.lhs.false69, %sw.bb63
  %67 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string73 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %67, i32 0, i32 2
  %68 = load %struct.sVString*, %struct.sVString** %string73, align 8
  %69 = load i32, i32* %c0, align 4
  call void @vStringPut(%struct.sVString* %68, i32 %69)
  %70 = load i32, i32* %c0, align 4
  %71 = load i32, i32* %c, align 4
  %cmp74 = icmp eq i32 %70, %71
  br i1 %cmp74, label %if.then76, label %if.end85

if.then76:                                        ; preds = %if.then72
  %call77 = call i32 @cppGetc()
  store i32 %call77, i32* %c1, align 4
  %72 = load i32, i32* %c1, align 4
  %cmp78 = icmp eq i32 %72, 61
  br i1 %cmp78, label %if.then80, label %if.else83

if.then80:                                        ; preds = %if.then76
  %73 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string81 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %73, i32 0, i32 2
  %74 = load %struct.sVString*, %struct.sVString** %string81, align 8
  %75 = load i32, i32* %c1, align 4
  call void @vStringPut(%struct.sVString* %74, i32 %75)
  %76 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type82 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %76, i32 0, i32 0
  store i16 261, i16* %type82, align 8
  br label %if.end84

if.else83:                                        ; preds = %if.then76
  %77 = load i32, i32* %c1, align 4
  call void @cppUngetc(i32 %77)
  br label %if.end84

if.end84:                                         ; preds = %if.else83, %if.then80
  br label %if.end85

if.end85:                                         ; preds = %if.end84, %if.then72
  br label %if.end87

if.else86:                                        ; preds = %lor.lhs.false69
  %78 = load i32, i32* %c0, align 4
  call void @cppUngetc(i32 %78)
  br label %if.end87

if.end87:                                         ; preds = %if.else86, %if.end85
  br label %sw.bb88

sw.bb88:                                          ; preds = %do.end8, %do.end8, %if.end87
  %79 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string89 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %79, i32 0, i32 2
  %80 = load %struct.sVString*, %struct.sVString** %string89, align 8
  %81 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %80, i32 %81)
  %82 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type90 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %82, i32 0, i32 0
  store i16 262, i16* %type90, align 8
  %call91 = call i32 @cppGetc()
  store i32 %call91, i32* %c0, align 4
  %83 = load i32, i32* %c0, align 4
  %84 = load i32, i32* %c, align 4
  %cmp92 = icmp eq i32 %83, %84
  br i1 %cmp92, label %if.then94, label %if.else96

if.then94:                                        ; preds = %sw.bb88
  %85 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string95 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %85, i32 0, i32 2
  %86 = load %struct.sVString*, %struct.sVString** %string95, align 8
  %87 = load i32, i32* %c0, align 4
  call void @vStringPut(%struct.sVString* %86, i32 %87)
  br label %if.end104

if.else96:                                        ; preds = %sw.bb88
  %88 = load i32, i32* %c0, align 4
  %cmp97 = icmp eq i32 %88, 61
  br i1 %cmp97, label %if.then99, label %if.else102

if.then99:                                        ; preds = %if.else96
  %89 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string100 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %89, i32 0, i32 2
  %90 = load %struct.sVString*, %struct.sVString** %string100, align 8
  %91 = load i32, i32* %c0, align 4
  call void @vStringPut(%struct.sVString* %90, i32 %91)
  %92 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type101 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %92, i32 0, i32 0
  store i16 261, i16* %type101, align 8
  br label %if.end103

if.else102:                                       ; preds = %if.else96
  %93 = load i32, i32* %c0, align 4
  call void @cppUngetc(i32 %93)
  br label %if.end103

if.end103:                                        ; preds = %if.else102, %if.then99
  br label %if.end104

if.end104:                                        ; preds = %if.end103, %if.then94
  br label %sw.epilog

sw.bb105:                                         ; preds = %do.end8
  %94 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string106 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %94, i32 0, i32 2
  %95 = load %struct.sVString*, %struct.sVString** %string106, align 8
  %96 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %95, i32 %96)
  %97 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call107 = call i32 @readPrefixedToken(%struct.sTokenInfo* %97, i32 265)
  %tobool = icmp ne i32 %call107, 0
  br i1 %tobool, label %if.end118, label %if.then108

if.then108:                                       ; preds = %sw.bb105
  %call109 = call i32 @cppGetc()
  store i32 %call109, i32* %c0, align 4
  %98 = load i32, i32* %c0, align 4
  %cmp110 = icmp eq i32 %98, 61
  br i1 %cmp110, label %if.then112, label %if.else115

if.then112:                                       ; preds = %if.then108
  %99 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string113 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %99, i32 0, i32 2
  %100 = load %struct.sVString*, %struct.sVString** %string113, align 8
  %101 = load i32, i32* %c0, align 4
  call void @vStringPut(%struct.sVString* %100, i32 %101)
  %102 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type114 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %102, i32 0, i32 0
  store i16 262, i16* %type114, align 8
  br label %if.end117

if.else115:                                       ; preds = %if.then108
  %103 = load i32, i32* %c0, align 4
  call void @cppUngetc(i32 %103)
  %104 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type116 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %104, i32 0, i32 0
  store i16 261, i16* %type116, align 8
  br label %if.end117

if.end117:                                        ; preds = %if.else115, %if.then112
  br label %if.end118

if.end118:                                        ; preds = %if.end117, %sw.bb105
  br label %sw.epilog

sw.bb119:                                         ; preds = %do.end8
  %105 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string120 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %105, i32 0, i32 2
  %106 = load %struct.sVString*, %struct.sVString** %string120, align 8
  %107 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %106, i32 %107)
  %108 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call121 = call i32 @readPrefixedToken(%struct.sTokenInfo* %108, i32 264)
  %tobool122 = icmp ne i32 %call121, 0
  br i1 %tobool122, label %if.end143, label %if.then123

if.then123:                                       ; preds = %sw.bb119
  %109 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type124 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %109, i32 0, i32 0
  store i16 262, i16* %type124, align 8
  %call125 = call i32 @cppGetc()
  store i32 %call125, i32* %c0, align 4
  %110 = load i32, i32* %c0, align 4
  %111 = load i32, i32* %c, align 4
  %cmp126 = icmp eq i32 %110, %111
  br i1 %cmp126, label %if.then131, label %lor.lhs.false128

lor.lhs.false128:                                 ; preds = %if.then123
  %112 = load i32, i32* %c0, align 4
  %cmp129 = icmp eq i32 %112, 61
  br i1 %cmp129, label %if.then131, label %if.else141

if.then131:                                       ; preds = %lor.lhs.false128, %if.then123
  %113 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string132 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %113, i32 0, i32 2
  %114 = load %struct.sVString*, %struct.sVString** %string132, align 8
  %115 = load i32, i32* %c0, align 4
  call void @vStringPut(%struct.sVString* %114, i32 %115)
  %call133 = call i32 @cppGetc()
  store i32 %call133, i32* %c1, align 4
  %116 = load i32, i32* %c1, align 4
  %cmp134 = icmp eq i32 %116, 61
  br i1 %cmp134, label %if.then136, label %if.else139

if.then136:                                       ; preds = %if.then131
  %117 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string137 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %117, i32 0, i32 2
  %118 = load %struct.sVString*, %struct.sVString** %string137, align 8
  %119 = load i32, i32* %c1, align 4
  call void @vStringPut(%struct.sVString* %118, i32 %119)
  %120 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type138 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %120, i32 0, i32 0
  store i16 261, i16* %type138, align 8
  br label %if.end140

if.else139:                                       ; preds = %if.then131
  %121 = load i32, i32* %c1, align 4
  call void @cppUngetc(i32 %121)
  br label %if.end140

if.end140:                                        ; preds = %if.else139, %if.then136
  br label %if.end142

if.else141:                                       ; preds = %lor.lhs.false128
  %122 = load i32, i32* %c0, align 4
  call void @cppUngetc(i32 %122)
  br label %if.end142

if.end142:                                        ; preds = %if.else141, %if.end140
  br label %if.end143

if.end143:                                        ; preds = %if.end142, %sw.bb119
  br label %sw.epilog

sw.bb144:                                         ; preds = %do.end8
  %123 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string145 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %123, i32 0, i32 2
  %124 = load %struct.sVString*, %struct.sVString** %string145, align 8
  %125 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %124, i32 %125)
  %126 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call146 = call i32 @readPrefixedToken(%struct.sTokenInfo* %126, i32 263)
  %tobool147 = icmp ne i32 %call146, 0
  br i1 %tobool147, label %if.end151, label %if.then148

if.then148:                                       ; preds = %sw.bb144
  %127 = load i32, i32* %c, align 4
  %conv149 = trunc i32 %127 to i16
  %128 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type150 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %128, i32 0, i32 0
  store i16 %conv149, i16* %type150, align 8
  br label %if.end151

if.end151:                                        ; preds = %if.then148, %sw.bb144
  br label %sw.epilog

sw.default:                                       ; preds = %do.end8
  %129 = load i32, i32* %c, align 4
  %call152 = call i32 @isdigit(i32 %129) #4
  %tobool153 = icmp ne i32 %call152, 0
  br i1 %tobool153, label %if.then154, label %if.else177

if.then154:                                       ; preds = %sw.default
  %130 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type155 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %130, i32 0, i32 0
  store i16 260, i16* %type155, align 8
  %131 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string156 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %131, i32 0, i32 2
  %132 = load %struct.sVString*, %struct.sVString** %string156, align 8
  %133 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %132, i32 %133)
  br label %while.cond

while.cond:                                       ; preds = %if.end176, %if.then154
  %call157 = call i32 @cppGetc()
  store i32 %call157, i32* %c, align 4
  %tobool158 = icmp ne i32 %call157, 0
  br i1 %tobool158, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %134 = load i32, i32* %c, align 4
  %call159 = call i32 @isalnum(i32 %134) #4
  %tobool160 = icmp ne i32 %call159, 0
  br i1 %tobool160, label %if.then173, label %lor.lhs.false161

lor.lhs.false161:                                 ; preds = %while.body
  %135 = load i32, i32* %c, align 4
  %cmp162 = icmp eq i32 %135, 95
  br i1 %cmp162, label %if.then173, label %lor.lhs.false164

lor.lhs.false164:                                 ; preds = %lor.lhs.false161
  %136 = load i32, i32* %c, align 4
  %cmp165 = icmp eq i32 %136, 46
  br i1 %cmp165, label %if.then173, label %lor.lhs.false167

lor.lhs.false167:                                 ; preds = %lor.lhs.false164
  %137 = load i32, i32* %c, align 4
  %cmp168 = icmp eq i32 %137, 45
  br i1 %cmp168, label %if.then173, label %lor.lhs.false170

lor.lhs.false170:                                 ; preds = %lor.lhs.false167
  %138 = load i32, i32* %c, align 4
  %cmp171 = icmp sge i32 %138, 128
  br i1 %cmp171, label %if.then173, label %if.else175

if.then173:                                       ; preds = %lor.lhs.false170, %lor.lhs.false167, %lor.lhs.false164, %lor.lhs.false161, %while.body
  %139 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string174 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %139, i32 0, i32 2
  %140 = load %struct.sVString*, %struct.sVString** %string174, align 8
  %141 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %140, i32 %141)
  br label %if.end176

if.else175:                                       ; preds = %lor.lhs.false170
  %142 = load i32, i32* %c, align 4
  call void @cppUngetc(i32 %142)
  br label %while.end

if.end176:                                        ; preds = %if.then173
  br label %while.cond

while.end:                                        ; preds = %if.else175, %while.cond
  br label %if.end235

if.else177:                                       ; preds = %sw.default
  %143 = load i32, i32* %c, align 4
  %call178 = call i32 @isalnum(i32 %143) #4
  %tobool179 = icmp ne i32 %call178, 0
  br i1 %tobool179, label %if.then192, label %lor.lhs.false180

lor.lhs.false180:                                 ; preds = %if.else177
  %144 = load i32, i32* %c, align 4
  %cmp181 = icmp eq i32 %144, 95
  br i1 %cmp181, label %if.then192, label %lor.lhs.false183

lor.lhs.false183:                                 ; preds = %lor.lhs.false180
  %145 = load i32, i32* %c, align 4
  %cmp184 = icmp eq i32 %145, 46
  br i1 %cmp184, label %if.then192, label %lor.lhs.false186

lor.lhs.false186:                                 ; preds = %lor.lhs.false183
  %146 = load i32, i32* %c, align 4
  %cmp187 = icmp eq i32 %146, 45
  br i1 %cmp187, label %if.then192, label %lor.lhs.false189

lor.lhs.false189:                                 ; preds = %lor.lhs.false186
  %147 = load i32, i32* %c, align 4
  %cmp190 = icmp sge i32 %147, 128
  br i1 %cmp190, label %if.then192, label %if.else231

if.then192:                                       ; preds = %lor.lhs.false189, %lor.lhs.false186, %lor.lhs.false183, %lor.lhs.false180, %if.else177
  %148 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string193 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %148, i32 0, i32 2
  %149 = load %struct.sVString*, %struct.sVString** %string193, align 8
  %150 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %149, i32 %150)
  br label %while.cond194

while.cond194:                                    ; preds = %if.end215, %if.then192
  %call195 = call i32 @cppGetc()
  store i32 %call195, i32* %c, align 4
  %tobool196 = icmp ne i32 %call195, 0
  br i1 %tobool196, label %while.body197, label %while.end216

while.body197:                                    ; preds = %while.cond194
  %151 = load i32, i32* %c, align 4
  %call198 = call i32 @isalnum(i32 %151) #4
  %tobool199 = icmp ne i32 %call198, 0
  br i1 %tobool199, label %if.then212, label %lor.lhs.false200

lor.lhs.false200:                                 ; preds = %while.body197
  %152 = load i32, i32* %c, align 4
  %cmp201 = icmp eq i32 %152, 95
  br i1 %cmp201, label %if.then212, label %lor.lhs.false203

lor.lhs.false203:                                 ; preds = %lor.lhs.false200
  %153 = load i32, i32* %c, align 4
  %cmp204 = icmp eq i32 %153, 46
  br i1 %cmp204, label %if.then212, label %lor.lhs.false206

lor.lhs.false206:                                 ; preds = %lor.lhs.false203
  %154 = load i32, i32* %c, align 4
  %cmp207 = icmp eq i32 %154, 45
  br i1 %cmp207, label %if.then212, label %lor.lhs.false209

lor.lhs.false209:                                 ; preds = %lor.lhs.false206
  %155 = load i32, i32* %c, align 4
  %cmp210 = icmp sge i32 %155, 128
  br i1 %cmp210, label %if.then212, label %if.else214

if.then212:                                       ; preds = %lor.lhs.false209, %lor.lhs.false206, %lor.lhs.false203, %lor.lhs.false200, %while.body197
  %156 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string213 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %156, i32 0, i32 2
  %157 = load %struct.sVString*, %struct.sVString** %string213, align 8
  %158 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %157, i32 %158)
  br label %if.end215

if.else214:                                       ; preds = %lor.lhs.false209
  %159 = load i32, i32* %c, align 4
  call void @cppUngetc(i32 %159)
  br label %while.end216

if.end215:                                        ; preds = %if.then212
  br label %while.cond194

while.end216:                                     ; preds = %if.else214, %while.cond194
  %160 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string217 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %160, i32 0, i32 2
  %161 = load %struct.sVString*, %struct.sVString** %string217, align 8
  %buffer218 = getelementptr inbounds %struct.sVString, %struct.sVString* %161, i32 0, i32 2
  %162 = load i8*, i8** %buffer218, align 8
  %163 = load i32, i32* @Lang_ldscript, align 4
  %call219 = call i32 @lookupKeyword(i8* %162, i32 %163)
  %conv220 = trunc i32 %call219 to i16
  %164 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword221 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %164, i32 0, i32 1
  store i16 %conv220, i16* %keyword221, align 2
  %165 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword222 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %165, i32 0, i32 1
  %166 = load i16, i16* %keyword222, align 2
  %conv223 = sext i16 %166 to i32
  %cmp224 = icmp eq i32 %conv223, -1
  br i1 %cmp224, label %if.then226, label %if.else228

if.then226:                                       ; preds = %while.end216
  %167 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type227 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %167, i32 0, i32 0
  store i16 259, i16* %type227, align 8
  br label %if.end230

if.else228:                                       ; preds = %while.end216
  %168 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type229 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %168, i32 0, i32 0
  store i16 258, i16* %type229, align 8
  br label %if.end230

if.end230:                                        ; preds = %if.else228, %if.then226
  br label %if.end234

if.else231:                                       ; preds = %lor.lhs.false189
  %169 = load i32, i32* %c, align 4
  %conv232 = trunc i32 %169 to i16
  %170 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type233 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %170, i32 0, i32 0
  store i16 %conv232, i16* %type233, align 8
  br label %if.end234

if.end234:                                        ; preds = %if.else231, %if.end230
  br label %if.end235

if.end235:                                        ; preds = %if.end234, %while.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end235, %if.end151, %if.end143, %if.end118, %if.end104, %if.end52, %sw.bb14, %sw.bb12, %sw.bb
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
  store i32 0, i32* %scopeIndex, align 4
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %4 = bitcast %struct.sTokenInfo* %3 to i8*
  %add.ptr1 = getelementptr inbounds i8, i8* %4, i64 48
  %5 = bitcast i8* %add.ptr1 to %struct.tokenExtra*
  %assignment = getelementptr inbounds %struct.tokenExtra, %struct.tokenExtra* %5, i32 0, i32 1
  store i16 -1, i16* %assignment, align 4
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
  %3 = load i32, i32* %scopeIndex, align 4
  %4 = load %struct.sTokenInfo*, %struct.sTokenInfo** %dest.addr, align 8
  %5 = bitcast %struct.sTokenInfo* %4 to i8*
  %add.ptr1 = getelementptr inbounds i8, i8* %5, i64 48
  %6 = bitcast i8* %add.ptr1 to %struct.tokenExtra*
  %scopeIndex2 = getelementptr inbounds %struct.tokenExtra, %struct.tokenExtra* %6, i32 0, i32 0
  store i32 %3, i32* %scopeIndex2, align 4
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %src.addr, align 8
  %8 = bitcast %struct.sTokenInfo* %7 to i8*
  %add.ptr3 = getelementptr inbounds i8, i8* %8, i64 48
  %9 = bitcast i8* %add.ptr3 to %struct.tokenExtra*
  %assignment = getelementptr inbounds %struct.tokenExtra, %struct.tokenExtra* %9, i32 0, i32 1
  %10 = load i16, i16* %assignment, align 4
  %11 = load %struct.sTokenInfo*, %struct.sTokenInfo** %dest.addr, align 8
  %12 = bitcast %struct.sTokenInfo* %11 to i8*
  %add.ptr4 = getelementptr inbounds i8, i8* %12, i64 48
  %13 = bitcast i8* %add.ptr4 to %struct.tokenExtra*
  %assignment5 = getelementptr inbounds %struct.tokenExtra, %struct.tokenExtra* %13, i32 0, i32 1
  store i16 %10, i16* %assignment5, align 4
  ret void
}

declare i32 @cppGetc() #1

declare i64 @getInputLineNumber() #1

declare [2 x i64] @getInputFilePosition() #1

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

declare void @cppUngetc(i32) #1

declare i32 @strcmp(i8*, i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @readPrefixedToken(%struct.sTokenInfo* %token, i32 %type) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %type.addr = alloca i32, align 4
  %n = alloca i32, align 4
  %c = alloca i32, align 4
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  store i32 0, i32* %n, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %call = call i32 @cppGetc()
  store i32 %call, i32* %c, align 4
  %cmp = icmp ne i32 %call, -1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %0 = load i32, i32* %c, align 4
  %call1 = call i32 @isalnum(i32 %0) #4
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %1 = load i32, i32* %c, align 4
  %cmp2 = icmp eq i32 %1, 95
  br i1 %cmp2, label %if.then, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %2 = load i32, i32* %c, align 4
  %cmp4 = icmp eq i32 %2, 46
  br i1 %cmp4, label %if.then, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false3
  %3 = load i32, i32* %c, align 4
  %cmp6 = icmp eq i32 %3, 45
  br i1 %cmp6, label %if.then, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false5
  %4 = load i32, i32* %c, align 4
  %cmp8 = icmp sge i32 %4, 128
  br i1 %cmp8, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false7, %lor.lhs.false5, %lor.lhs.false3, %lor.lhs.false, %while.body
  %5 = load i32, i32* %n, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %n, align 4
  %6 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %6, i32 0, i32 2
  %7 = load %struct.sVString*, %struct.sVString** %string, align 8
  %8 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %7, i32 %8)
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false7
  %9 = load i32, i32* %c, align 4
  call void @cppUngetc(i32 %9)
  br label %while.end

if.end:                                           ; preds = %if.then
  br label %while.cond

while.end:                                        ; preds = %if.else, %while.cond
  %10 = load i32, i32* %n, align 4
  %tobool9 = icmp ne i32 %10, 0
  br i1 %tobool9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %while.end
  %11 = load i32, i32* %type.addr, align 4
  %conv = trunc i32 %11 to i16
  %12 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type11 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %12, i32 0, i32 0
  store i16 %conv, i16* %type11, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %while.end
  %13 = load i32, i32* %n, align 4
  ret i32 %13
}

; Function Attrs: nounwind readonly
declare i32 @isdigit(i32) #3

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
