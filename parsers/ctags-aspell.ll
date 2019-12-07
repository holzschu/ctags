; ModuleID = 'ctags-aspell.c'
source_filename = "ctags-aspell.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-ios11.0.0"

%struct.sKindDefinition = type { i8, i8, i8*, i8*, i8, i32, %struct.sRoleDesc*, %struct.sScopeSeparator*, i32, i32, i32, %struct.sKindDefinition*, %struct.sKindDefinition* }
%struct.sRoleDesc = type { i8, i8*, i8* }
%struct.sScopeSeparator = type { i32, i8* }
%struct.sParameterHandlerTable = type { i8*, i8*, void (i32, i8*, i8*)* }
%struct.sOptionValues = type { i8, i8, i8, i32, i8, i32, i8, i8, %struct.sFmtElement*, i8*, i8*, %struct.sPtrArray*, %struct.sPtrArray*, i32, i8*, i8*, i32, i8, i8, i8*, i32, i8, i8, i8, i8, i8, i8, i32, i8, i32, i32 }
%struct.sFmtElement = type opaque
%struct.sPtrArray = type opaque
%struct.sHashTable = type opaque
%struct.tokenInfoClass = type { i32, i16, i16, i16, i16, i64, %struct.tokenTypePair*, i32, void (%struct.sTokenInfo*, i8*)*, void (%struct.sTokenInfo*, i8*)*, void (%struct.sTokenInfo*)*, void (%struct.sTokenInfo*)*, void (%struct.sTokenInfo*, %struct.sTokenInfo*, i8*)*, %struct.sObjPool*, %struct.sPtrArray* }
%struct.tokenTypePair = type { i16, i16 }
%struct.sTokenInfo = type { i16, i16, %struct.sVString*, %struct.tokenInfoClass*, i64, %struct._MIOPos }
%struct.sVString = type { i64, i64, i8* }
%struct._MIOPos = type { i32, %union.anon.0 }
%union.anon.0 = type { i64 }
%struct.sObjPool = type opaque
%struct.sParserDefinition = type { i8*, %struct.sKindDefinition*, i32, i8**, i8**, i8**, void (i32)*, void (i32, i1)*, void ()*, i32 (i32)*, i8* (%struct._MIO*, i32*, i32)**, i32, i8, i8, i8, i8, %struct.tagRegexTable*, i32, %struct.keywordTable*, i32, %struct.sTagXpathTableTable*, i32, i8, %struct.sFieldDefinition*, i32, %struct.sXtagDefinition*, i32, %struct.sParserDependency*, i32, %struct.sParameterHandlerTable*, i32, %struct.sXpathFileSpec*, i32, i32, i8 }
%struct._MIO = type opaque
%struct.tagRegexTable = type { i8*, i8*, i8*, i8*, i8*, i8 }
%struct.keywordTable = type { i8*, i32 }
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
%struct.sXpathFileSpec = type { i8*, i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [13 x i8] c"UCtagsAspell\00", align 1
@AspellParserKinds = internal global [1 x %struct.sKindDefinition] [%struct.sKindDefinition { i8 1, i8 119, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8 0, i32 2, %struct.sRoleDesc* getelementptr inbounds ([2 x %struct.sRoleDesc], [2 x %struct.sRoleDesc]* @AspellWordRoles, i32 0, i32 0), %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }], align 8
@AspellParameterHandlerTable = internal global [3 x %struct.sParameterHandlerTable] [%struct.sParameterHandlerTable { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.8, i32 0, i32 0), void (i32, i8*, i8*)* @aspell_subwords_handler }, %struct.sParameterHandlerTable { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.10, i32 0, i32 0), void (i32, i8*, i8*)* @aspell_dictfile_handler }, %struct.sParameterHandlerTable { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i32 0, i32 0), void (i32, i8*, i8*)* @aspell_dictword_handler }], align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"word\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"words\00", align 1
@AspellWordRoles = internal global [2 x %struct.sRoleDesc] [%struct.sRoleDesc { i8 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0) }, %struct.sRoleDesc { i8 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i32 0, i32 0) }], align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"misspelled\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"traced\00", align 1
@.str.5 = private unnamed_addr constant [57 x i8] c"traced by this parser (enabling/disabling in build-time)\00", align 1
@Option = external constant %struct.sOptionValues, align 8
@.str.6 = private unnamed_addr constant [60 x i8] c"UCtagsAspell: initializing aspell is disallowed in sandbox\0A\00", align 1
@userDict = internal global %struct.sHashTable* null, align 8
@splittingIntoSubwords = internal global i8 0, align 1
@aspellTokenInfoClass = internal global %struct.tokenInfoClass { i32 2, i16 257, i16 -1, i16 259, i16 256, i64 0, %struct.tokenTypePair* null, i32 0, void (%struct.sTokenInfo*, i8*)* null, void (%struct.sTokenInfo*, i8*)* @readAspellToken, void (%struct.sTokenInfo*)* null, void (%struct.sTokenInfo*)* null, void (%struct.sTokenInfo*, %struct.sTokenInfo*, i8*)* null, %struct.sObjPool* null, %struct.sPtrArray* null }, align 8
@.str.7 = private unnamed_addr constant [9 x i8] c"subwords\00", align 1
@.str.8 = private unnamed_addr constant [64 x i8] c"split a word into subwords before spell checking: true or false\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"dictfile\00", align 1
@.str.10 = private unnamed_addr constant [61 x i8] c"line oriented words list; FILENAME is expected, accumulative\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"dictword\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"known correctly spelled word\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"parameter\00", align 1
@.str.14 = private unnamed_addr constant [70 x i8] c"UCtagsAspell: loading a user dictionary is disallowed in sandbox: %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.16 = private unnamed_addr constant [41 x i8] c"Failed to open file \22%s\22 as a dictionary\00", align 1
@.str.17 = private unnamed_addr constant [45 x i8] c"UCtagsAspell: loading a user dictionary: %s\0A\00", align 1
@.str.18 = private unnamed_addr constant [31 x i8] c"UCtagsAspell: load %d word(s)\0A\00", align 1
@.str.19 = private unnamed_addr constant [30 x i8] c"UCtagsAspell: add %d word(s)\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sParserDefinition* @UCtagsAspellParser() #0 {
entry:
  %def = alloca %struct.sParserDefinition*, align 8
  %call = call %struct.sParserDefinition* @parserNew(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store %struct.sParserDefinition* %call, %struct.sParserDefinition** %def, align 8
  %0 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %invisible = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %0, i32 0, i32 22
  store i8 1, i8* %invisible, align 4
  %1 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %enabled = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %1, i32 0, i32 34
  %bf.load = load i8, i8* %enabled, align 8
  %bf.clear = and i8 %bf.load, -2
  store i8 %bf.clear, i8* %enabled, align 8
  %2 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %2, i32 0, i32 1
  store %struct.sKindDefinition* getelementptr inbounds ([1 x %struct.sKindDefinition], [1 x %struct.sKindDefinition]* @AspellParserKinds, i64 0, i64 0), %struct.sKindDefinition** %kindTable, align 8
  %3 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %3, i32 0, i32 2
  store i32 1, i32* %kindCount, align 8
  %4 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %initialize = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %4, i32 0, i32 6
  store void (i32)* @initialize, void (i32)** %initialize, align 8
  %5 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %finalize = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %5, i32 0, i32 7
  store void (i32, i1)* @finalize, void (i32, i1)** %finalize, align 8
  %6 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %parser = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %6, i32 0, i32 8
  store void ()* @findMisspelling, void ()** %parser, align 8
  %7 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %parameterHandlerTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %7, i32 0, i32 29
  store %struct.sParameterHandlerTable* getelementptr inbounds ([3 x %struct.sParameterHandlerTable], [3 x %struct.sParameterHandlerTable]* @AspellParameterHandlerTable, i64 0, i64 0), %struct.sParameterHandlerTable** %parameterHandlerTable, align 8
  %8 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %parameterHandlerCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %8, i32 0, i32 30
  store i32 3, i32* %parameterHandlerCount, align 8
  %9 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  ret %struct.sParserDefinition* %9
}

declare %struct.sParserDefinition* @parserNew(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @initialize(i32 %language) #0 {
entry:
  %language.addr = alloca i32, align 4
  store i32 %language, i32* %language.addr, align 4
  %0 = load i32, i32* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 30), align 8
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.6, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
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
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.sHashTable*, %struct.sHashTable** @userDict, align 8
  call void @hashTableDelete(%struct.sHashTable* %1)
  store %struct.sHashTable* null, %struct.sHashTable** @userDict, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @findMisspelling() #0 {
entry:
  %spell_checker = alloca i8*, align 8
  %token = alloca %struct.sTokenInfo*, align 8
  %words = alloca %struct.sPtrArray*, align 8
  %i = alloca i32, align 4
  %item = alloca %struct.sVString*, align 8
  %word = alloca i8*, align 8
  store i8* null, i8** %spell_checker, align 8
  %call = call %struct.sTokenInfo* @newAspellToken()
  store %struct.sTokenInfo* %call, %struct.sTokenInfo** %token, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  call void @tokenRead(%struct.sTokenInfo* %0)
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %2 = load i8, i8* @splittingIntoSubwords, align 1
  %tobool = trunc i8 %2 to i1
  %call1 = call %struct.sPtrArray* @token2words(%struct.sTokenInfo* %1, i1 zeroext %tobool)
  store %struct.sPtrArray* %call1, %struct.sPtrArray** %words, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.body
  %3 = load i32, i32* %i, align 4
  %4 = load %struct.sPtrArray*, %struct.sPtrArray** %words, align 8
  %call2 = call i32 @stringListCount(%struct.sPtrArray* %4)
  %cmp = icmp ult i32 %3, %call2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.sPtrArray*, %struct.sPtrArray** %words, align 8
  %6 = load i32, i32* %i, align 4
  %call3 = call %struct.sVString* @stringListItem(%struct.sPtrArray* %5, i32 %6)
  store %struct.sVString* %call3, %struct.sVString** %item, align 8
  %7 = load %struct.sVString*, %struct.sVString** %item, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %7, i32 0, i32 2
  %8 = load i8*, i8** %buffer, align 8
  store i8* %8, i8** %word, align 8
  %9 = load %struct.sVString*, %struct.sVString** %item, align 8
  %call4 = call i32 @makeSimpleRefTag(%struct.sVString* %9, i32 0, i32 1)
  %10 = load i8*, i8** %word, align 8
  call void @downcase_word(i8* %10)
  %11 = load i8*, i8** %spell_checker, align 8
  %12 = load %struct.sHashTable*, %struct.sHashTable** @userDict, align 8
  %13 = load i8*, i8** %word, align 8
  %call5 = call zeroext i1 @check_spell(i8* %11, %struct.sHashTable* %12, i8* %13)
  br i1 %call5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %14 = load %struct.sVString*, %struct.sVString** %item, align 8
  %call6 = call i32 @makeSimpleRefTag(%struct.sVString* %14, i32 0, i32 0)
  br label %for.inc

for.inc:                                          ; preds = %if.end, %if.then
  %15 = load i32, i32* %i, align 4
  %inc = add i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load %struct.sPtrArray*, %struct.sPtrArray** %words, align 8
  call void @stringListDelete(%struct.sPtrArray* %16)
  br label %do.cond

do.cond:                                          ; preds = %for.end
  %17 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %17, i32 0, i32 0
  %18 = load i16, i16* %type, align 8
  %conv = sext i16 %18 to i32
  %19 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %klass = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %19, i32 0, i32 3
  %20 = load %struct.tokenInfoClass*, %struct.tokenInfoClass** %klass, align 8
  %typeForEOF = getelementptr inbounds %struct.tokenInfoClass, %struct.tokenInfoClass* %20, i32 0, i32 4
  %21 = load i16, i16* %typeForEOF, align 2
  %conv7 = sext i16 %21 to i32
  %cmp8 = icmp eq i32 %conv, %conv7
  %lnot = xor i1 %cmp8, true
  br i1 %lnot, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %22 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  call void @tokenDestroy(%struct.sTokenInfo* %22)
  call void @flashTokenBacklog(%struct.tokenInfoClass* @aspellTokenInfoClass)
  ret void
}

declare void @verbose(i8*, ...) #1

declare void @hashTableDelete(%struct.sHashTable*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct.sTokenInfo* @newAspellToken() #0 {
entry:
  %call = call i8* @newToken(%struct.tokenInfoClass* @aspellTokenInfoClass)
  %0 = bitcast i8* %call to %struct.sTokenInfo*
  ret %struct.sTokenInfo* %0
}

declare void @tokenRead(%struct.sTokenInfo*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct.sPtrArray* @token2words(%struct.sTokenInfo* %token, i1 zeroext %split) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %split.addr = alloca i8, align 1
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  %frombool = zext i1 %split to i8
  store i8 %frombool, i8* %split.addr, align 1
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 2
  %1 = load %struct.sVString*, %struct.sVString** %string, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %1, i32 0, i32 2
  %2 = load i8*, i8** %buffer, align 8
  %3 = load i8, i8* %split.addr, align 1
  %tobool = trunc i8 %3 to i1
  %call = call %struct.sPtrArray* @word2subwords(i8* %2, i1 zeroext %tobool)
  ret %struct.sPtrArray* %call
}

declare i32 @stringListCount(%struct.sPtrArray*) #1

declare %struct.sVString* @stringListItem(%struct.sPtrArray*, i32) #1

declare i32 @makeSimpleRefTag(%struct.sVString*, i32, i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @downcase_word(i8* %word) #0 {
entry:
  %word.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %word, i8** %word.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8*, i8** %word.addr, align 8
  %1 = load i32, i32* %i, align 4
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8*, i8** %word.addr, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom2 = zext i32 %4 to i64
  %arrayidx3 = getelementptr inbounds i8, i8* %3, i64 %idxprom2
  %5 = load i8, i8* %arrayidx3, align 1
  %conv4 = sext i8 %5 to i32
  %call = call i32 @isupper(i32 %conv4) #4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load i8*, i8** %word.addr, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom5 = zext i32 %7 to i64
  %arrayidx6 = getelementptr inbounds i8, i8* %6, i64 %idxprom5
  %8 = load i8, i8* %arrayidx6, align 1
  %conv7 = sext i8 %8 to i32
  %sub = sub nsw i32 %conv7, -32
  %conv8 = trunc i32 %sub to i8
  %9 = load i8*, i8** %word.addr, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom9 = zext i32 %10 to i64
  %arrayidx10 = getelementptr inbounds i8, i8* %9, i64 %idxprom9
  store i8 %conv8, i8* %arrayidx10, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, i32* %i, align 4
  %inc = add i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @check_spell(i8* %spell_checker, %struct.sHashTable* %htable, i8* %word) #0 {
entry:
  %retval = alloca i1, align 1
  %spell_checker.addr = alloca i8*, align 8
  %htable.addr = alloca %struct.sHashTable*, align 8
  %word.addr = alloca i8*, align 8
  store i8* %spell_checker, i8** %spell_checker.addr, align 8
  store %struct.sHashTable* %htable, %struct.sHashTable** %htable.addr, align 8
  store i8* %word, i8** %word.addr, align 8
  %0 = load i8*, i8** %word.addr, align 8
  %call = call zeroext i1 @isPartOfUUID(i8* %0)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 true, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.sHashTable*, %struct.sHashTable** %htable.addr, align 8
  %tobool = icmp ne %struct.sHashTable* %1, null
  br i1 %tobool, label %land.lhs.true, label %if.end4

land.lhs.true:                                    ; preds = %if.end
  %2 = load %struct.sHashTable*, %struct.sHashTable** %htable.addr, align 8
  %3 = load i8*, i8** %word.addr, align 8
  %call1 = call i8* @hashTableGetItem(%struct.sHashTable* %2, i8* %3)
  %tobool2 = icmp ne i8* %call1, null
  br i1 %tobool2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %land.lhs.true
  store i1 true, i1* %retval, align 1
  br label %return

if.end4:                                          ; preds = %land.lhs.true, %if.end
  store i1 false, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %4 = load i1, i1* %retval, align 1
  ret i1 %4
}

declare void @stringListDelete(%struct.sPtrArray*) #1

declare void @tokenDestroy(%struct.sTokenInfo*) #1

declare void @flashTokenBacklog(%struct.tokenInfoClass*) #1

declare i8* @newToken(%struct.tokenInfoClass*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct.sPtrArray* @word2subwords(i8* %word, i1 zeroext %split) #0 {
entry:
  %retval = alloca %struct.sPtrArray*, align 8
  %word.addr = alloca i8*, align 8
  %split.addr = alloca i8, align 1
  %list = alloca %struct.sPtrArray*, align 8
  store i8* %word, i8** %word.addr, align 8
  %frombool = zext i1 %split to i8
  store i8 %frombool, i8* %split.addr, align 1
  %0 = load i8, i8* %split.addr, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %word.addr, align 8
  %call = call %struct.sPtrArray* @stringListNewBySplittingWordIntoSubwords(i8* %1)
  store %struct.sPtrArray* %call, %struct.sPtrArray** %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %call1 = call %struct.sPtrArray* @stringListNew()
  store %struct.sPtrArray* %call1, %struct.sPtrArray** %list, align 8
  %2 = load %struct.sPtrArray*, %struct.sPtrArray** %list, align 8
  %3 = load i8*, i8** %word.addr, align 8
  %call2 = call %struct.sVString* @vStringNewInit(i8* %3)
  call void @stringListAdd(%struct.sPtrArray* %2, %struct.sVString* %call2)
  %4 = load %struct.sPtrArray*, %struct.sPtrArray** %list, align 8
  store %struct.sPtrArray* %4, %struct.sPtrArray** %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then
  %5 = load %struct.sPtrArray*, %struct.sPtrArray** %retval, align 8
  ret %struct.sPtrArray* %5
}

declare %struct.sPtrArray* @stringListNewBySplittingWordIntoSubwords(i8*) #1

declare %struct.sPtrArray* @stringListNew() #1

declare void @stringListAdd(%struct.sPtrArray*, %struct.sVString*) #1

declare %struct.sVString* @vStringNewInit(i8*) #1

; Function Attrs: nounwind readonly
declare i32 @isupper(i32) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @isPartOfUUID(i8* %word) #0 {
entry:
  %retval = alloca i1, align 1
  %word.addr = alloca i8*, align 8
  %cursor = alloca i8*, align 8
  store i8* %word, i8** %word.addr, align 8
  %0 = load i8*, i8** %word.addr, align 8
  store i8* %0, i8** %cursor, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i8*, i8** %cursor, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8*, i8** %cursor, align 8
  %4 = load i8, i8* %3, align 1
  %conv2 = sext i8 %4 to i32
  %call = call i32 @isxdigit(i32 %conv2) #4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  store i1 false, i1* %retval, align 1
  br label %return

for.inc:                                          ; preds = %if.then
  %5 = load i8*, i8** %cursor, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %cursor, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %for.end, %if.end
  %6 = load i1, i1* %retval, align 1
  ret i1 %6
}

declare i8* @hashTableGetItem(%struct.sHashTable*, i8*) #1

; Function Attrs: nounwind readonly
declare i32 @isxdigit(i32) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @readAspellToken(%struct.sTokenInfo* %token, i8* %data) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %data.addr = alloca i8*, align 8
  %c = alloca i32, align 4
  %vStringClear_s = alloca %struct.sVString*, align 8
  %tmp = alloca %struct._MIOPos, align 8
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
  br label %while.body

while.body:                                       ; preds = %do.end, %if.end4
  %call = call i32 @getcFromInputFile()
  store i32 %call, i32* %c, align 4
  %7 = load i32, i32* %c, align 4
  %cmp = icmp eq i32 %7, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %8 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type1 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %8, i32 0, i32 0
  store i16 256, i16* %type1, align 8
  br label %while.end18

if.else:                                          ; preds = %while.body
  %9 = load i32, i32* %c, align 4
  %call2 = call i32 @isalpha(i32 %9) #4
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.else
  br label %while.end

if.end:                                           ; preds = %if.else
  br label %if.end4

if.end4:                                          ; preds = %if.end
  br label %while.body

while.end:                                        ; preds = %if.then3
  %call5 = call i64 @getInputLineNumber()
  %10 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %lineNumber = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %10, i32 0, i32 4
  store i64 %call5, i64* %lineNumber, align 8
  %11 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %filePosition = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %11, i32 0, i32 5
  %call6 = call [2 x i64] @getInputFilePosition()
  %12 = bitcast %struct._MIOPos* %tmp to [2 x i64]*
  store [2 x i64] %call6, [2 x i64]* %12, align 8
  %13 = bitcast %struct._MIOPos* %filePosition to i8*
  %14 = bitcast %struct._MIOPos* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 16, i1 false)
  %15 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type7 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %15, i32 0, i32 0
  store i16 258, i16* %type7, align 8
  %16 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string8 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %16, i32 0, i32 2
  %17 = load %struct.sVString*, %struct.sVString** %string8, align 8
  %18 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %17, i32 %18)
  br label %while.cond

while.cond:                                       ; preds = %if.end17, %while.end
  %call9 = call i32 @getcFromInputFile()
  store i32 %call9, i32* %c, align 4
  %cmp10 = icmp ne i32 %call9, -1
  br i1 %cmp10, label %while.body11, label %while.end18

while.body11:                                     ; preds = %while.cond
  %19 = load i32, i32* %c, align 4
  %call12 = call i32 @isalnum(i32 %19) #4
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then14, label %if.else16

if.then14:                                        ; preds = %while.body11
  %20 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string15 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %20, i32 0, i32 2
  %21 = load %struct.sVString*, %struct.sVString** %string15, align 8
  %22 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %21, i32 %22)
  br label %if.end17

if.else16:                                        ; preds = %while.body11
  br label %while.end18

if.end17:                                         ; preds = %if.then14
  br label %while.cond

while.end18:                                      ; preds = %if.then, %if.else16, %while.cond
  ret void
}

declare i32 @getcFromInputFile() #1

; Function Attrs: nounwind readonly
declare i32 @isalpha(i32) #2

declare i64 @getInputLineNumber() #1

declare [2 x i64] @getInputFilePosition() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

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
declare i32 @isalnum(i32) #2

declare void @vStringResize(%struct.sVString*, i64) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @aspell_subwords_handler(i32 %language, i8* %name, i8* %arg) #0 {
entry:
  %language.addr = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %arg.addr = alloca i8*, align 8
  store i32 %language, i32* %language.addr, align 4
  store i8* %name, i8** %name.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  %0 = load i8*, i8** %arg.addr, align 8
  %1 = load i8, i8* @splittingIntoSubwords, align 1
  %tobool = trunc i8 %1 to i1
  %2 = load i8*, i8** %name.addr, align 8
  %call = call zeroext i1 @paramParserBool(i8* %0, i1 zeroext %tobool, i8* %2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0))
  %frombool = zext i1 %call to i8
  store i8 %frombool, i8* @splittingIntoSubwords, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @aspell_dictfile_handler(i32 %language, i8* %optname, i8* %arg) #0 {
entry:
  %language.addr = alloca i32, align 4
  %optname.addr = alloca i8*, align 8
  %arg.addr = alloca i8*, align 8
  %count = alloca i32, align 4
  %mio = alloca %struct._MIO*, align 8
  %line = alloca %struct.sVString*, align 8
  %word = alloca i8*, align 8
  %i = alloca i32, align 4
  store i32 %language, i32* %language.addr, align 4
  store i8* %optname, i8** %optname.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  store i32 0, i32* %count, align 4
  %0 = load i32, i32* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 30), align 8
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %arg.addr, align 8
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.14, i64 0, i64 0), i8* %1)
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %arg.addr, align 8
  %call = call %struct._MIO* @mio_new_file(i8* %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  store %struct._MIO* %call, %struct._MIO** %mio, align 8
  %3 = load %struct._MIO*, %struct._MIO** %mio, align 8
  %tobool = icmp ne %struct._MIO* %3, null
  br i1 %tobool, label %if.end2, label %if.then1

if.then1:                                         ; preds = %if.end
  %4 = load i8*, i8** %arg.addr, align 8
  call void (i32, i8*, ...) @error(i32 2, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.16, i64 0, i64 0), i8* %4)
  br label %return

if.end2:                                          ; preds = %if.end
  %5 = load i8*, i8** %arg.addr, align 8
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.17, i64 0, i64 0), i8* %5)
  %6 = load %struct.sHashTable*, %struct.sHashTable** @userDict, align 8
  %tobool3 = icmp ne %struct.sHashTable* %6, null
  br i1 %tobool3, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end2
  %call5 = call %struct.sHashTable* @makeDict()
  store %struct.sHashTable* %call5, %struct.sHashTable** @userDict, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end2
  %call7 = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call7, %struct.sVString** %line, align 8
  br label %while.cond

while.cond:                                       ; preds = %for.end, %if.then21, %if.end6
  %7 = load %struct.sVString*, %struct.sVString** %line, align 8
  %8 = load %struct._MIO*, %struct._MIO** %mio, align 8
  %call8 = call i8* @readLineRaw(%struct.sVString* %7, %struct._MIO* %8)
  %tobool9 = icmp ne i8* %call8, null
  br i1 %tobool9, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load %struct.sVString*, %struct.sVString** %line, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %9, i32 0, i32 2
  %10 = load i8*, i8** %buffer, align 8
  store i8* %10, i8** %word, align 8
  %11 = load i8*, i8** %word, align 8
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 0
  %12 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %12 to i32
  %cmp10 = icmp eq i32 %conv, 0
  br i1 %cmp10, label %if.then21, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %13 = load i8*, i8** %word, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %13, i64 0
  %14 = load i8, i8* %arrayidx12, align 1
  %conv13 = sext i8 %14 to i32
  %cmp14 = icmp eq i32 %conv13, 10
  br i1 %cmp14, label %if.then21, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %lor.lhs.false
  %15 = load i8*, i8** %word, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %15, i64 0
  %16 = load i8, i8* %arrayidx17, align 1
  %conv18 = sext i8 %16 to i32
  %cmp19 = icmp eq i32 %conv18, 35
  br i1 %cmp19, label %if.then21, label %if.end22

if.then21:                                        ; preds = %lor.lhs.false16, %lor.lhs.false, %while.body
  br label %while.cond

if.end22:                                         ; preds = %lor.lhs.false16
  %17 = load %struct.sVString*, %struct.sVString** %line, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %17, i32 0, i32 0
  %18 = load i64, i64* %length, align 8
  %conv23 = trunc i64 %18 to i32
  store i32 %conv23, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end22
  %19 = load i32, i32* %i, align 4
  %cmp24 = icmp ult i32 0, %19
  br i1 %cmp24, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load i8*, i8** %word, align 8
  %21 = load i32, i32* %i, align 4
  %sub = sub i32 %21, 1
  %idxprom = zext i32 %sub to i64
  %arrayidx26 = getelementptr inbounds i8, i8* %20, i64 %idxprom
  %22 = load i8, i8* %arrayidx26, align 1
  %conv27 = sext i8 %22 to i32
  %call28 = call i32 @isalnum(i32 %conv27) #4
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.then30, label %if.else

if.then30:                                        ; preds = %for.body
  br label %for.end

if.else:                                          ; preds = %for.body
  %23 = load i8*, i8** %word, align 8
  %24 = load i32, i32* %i, align 4
  %sub31 = sub i32 %24, 1
  %idxprom32 = zext i32 %sub31 to i64
  %arrayidx33 = getelementptr inbounds i8, i8* %23, i64 %idxprom32
  store i8 0, i8* %arrayidx33, align 1
  br label %if.end34

if.end34:                                         ; preds = %if.else
  br label %for.inc

for.inc:                                          ; preds = %if.end34
  %25 = load i32, i32* %i, align 4
  %dec = add i32 %25, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then30, %for.cond
  %26 = load i8*, i8** %word, align 8
  %27 = load %struct.sHashTable*, %struct.sHashTable** @userDict, align 8
  %28 = load i8, i8* @splittingIntoSubwords, align 1
  %tobool35 = trunc i8 %28 to i1
  %call36 = call i32 @add_word_to_dict(i8* %26, %struct.sHashTable* %27, i1 zeroext %tobool35)
  %29 = load i32, i32* %count, align 4
  %add = add nsw i32 %29, %call36
  store i32 %add, i32* %count, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %30 = load i32, i32* %count, align 4
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.18, i64 0, i64 0), i32 %30)
  %31 = load %struct.sVString*, %struct.sVString** %line, align 8
  call void @vStringDelete(%struct.sVString* %31)
  %32 = load %struct._MIO*, %struct._MIO** %mio, align 8
  %call37 = call i32 @mio_free(%struct._MIO* %32)
  br label %return

return:                                           ; preds = %while.end, %if.then1, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @aspell_dictword_handler(i32 %language, i8* %optname, i8* %arg) #0 {
entry:
  %language.addr = alloca i32, align 4
  %optname.addr = alloca i8*, align 8
  %arg.addr = alloca i8*, align 8
  %count = alloca i32, align 4
  store i32 %language, i32* %language.addr, align 4
  store i8* %optname, i8** %optname.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  store i32 0, i32* %count, align 4
  %0 = load %struct.sHashTable*, %struct.sHashTable** @userDict, align 8
  %tobool = icmp ne %struct.sHashTable* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call %struct.sHashTable* @makeDict()
  store %struct.sHashTable* %call, %struct.sHashTable** @userDict, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i8*, i8** %arg.addr, align 8
  %tobool1 = icmp ne i8* %1, null
  br i1 %tobool1, label %land.lhs.true, label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %2 = load i8*, i8** %arg.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 0
  %3 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %if.then3, label %if.end6

if.then3:                                         ; preds = %land.lhs.true
  %4 = load i8*, i8** %arg.addr, align 8
  %5 = load %struct.sHashTable*, %struct.sHashTable** @userDict, align 8
  %6 = load i8, i8* @splittingIntoSubwords, align 1
  %tobool4 = trunc i8 %6 to i1
  %call5 = call i32 @add_word_to_dict(i8* %4, %struct.sHashTable* %5, i1 zeroext %tobool4)
  %7 = load i32, i32* %count, align 4
  %add = add nsw i32 %7, %call5
  store i32 %add, i32* %count, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %land.lhs.true, %if.end
  %8 = load i32, i32* %count, align 4
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.19, i64 0, i64 0), i32 %8)
  ret void
}

declare zeroext i1 @paramParserBool(i8*, i1 zeroext, i8*, i8*) #1

declare %struct._MIO* @mio_new_file(i8*, i8*) #1

declare void @error(i32, i8*, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct.sHashTable* @makeDict() #0 {
entry:
  %call = call %struct.sHashTable* @hashTableNew(i32 257, i32 (i8*)* @hashCstrhash, i1 (i8*, i8*)* @hashCstreq, void (i8*)* @eFree, void (i8*)* null)
  ret %struct.sHashTable* %call
}

declare %struct.sVString* @vStringNew() #1

declare i8* @readLineRaw(%struct.sVString*, %struct._MIO*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @add_word_to_dict(i8* %word, %struct.sHashTable* %dict, i1 zeroext %split) #0 {
entry:
  %word.addr = alloca i8*, align 8
  %dict.addr = alloca %struct.sHashTable*, align 8
  %split.addr = alloca i8, align 1
  %count = alloca i32, align 4
  %list = alloca %struct.sPtrArray*, align 8
  %j = alloca i32, align 4
  %item = alloca %struct.sVString*, align 8
  %subword = alloca i8*, align 8
  store i8* %word, i8** %word.addr, align 8
  store %struct.sHashTable* %dict, %struct.sHashTable** %dict.addr, align 8
  %frombool = zext i1 %split to i8
  store i8 %frombool, i8* %split.addr, align 1
  store i32 0, i32* %count, align 4
  %0 = load i8*, i8** %word.addr, align 8
  %1 = load i8, i8* @splittingIntoSubwords, align 1
  %tobool = trunc i8 %1 to i1
  %call = call %struct.sPtrArray* @word2subwords(i8* %0, i1 zeroext %tobool)
  store %struct.sPtrArray* %call, %struct.sPtrArray** %list, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %j, align 4
  %3 = load %struct.sPtrArray*, %struct.sPtrArray** %list, align 8
  %call1 = call i32 @stringListCount(%struct.sPtrArray* %3)
  %cmp = icmp ult i32 %2, %call1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.sPtrArray*, %struct.sPtrArray** %list, align 8
  %5 = load i32, i32* %j, align 4
  %call2 = call %struct.sVString* @stringListItem(%struct.sPtrArray* %4, i32 %5)
  store %struct.sVString* %call2, %struct.sVString** %item, align 8
  %6 = load %struct.sHashTable*, %struct.sHashTable** %dict.addr, align 8
  %7 = load %struct.sVString*, %struct.sVString** %item, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %7, i32 0, i32 2
  %8 = load i8*, i8** %buffer, align 8
  %call3 = call zeroext i1 @hashTableHasItem(%struct.sHashTable* %6, i8* %8)
  br i1 %call3, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %9 = load %struct.sVString*, %struct.sVString** %item, align 8
  %buffer4 = getelementptr inbounds %struct.sVString, %struct.sVString* %9, i32 0, i32 2
  %10 = load i8*, i8** %buffer4, align 8
  %call5 = call i8* @eStrdup(i8* %10)
  store i8* %call5, i8** %subword, align 8
  %11 = load i8*, i8** %subword, align 8
  call void @downcase_word(i8* %11)
  %12 = load %struct.sHashTable*, %struct.sHashTable** %dict.addr, align 8
  %13 = load i8*, i8** %subword, align 8
  %14 = load i8*, i8** %subword, align 8
  call void @hashTablePutItem(%struct.sHashTable* %12, i8* %13, i8* %14)
  %15 = load i32, i32* %count, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %count, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load i32, i32* %j, align 4
  %inc6 = add i32 %16, 1
  store i32 %inc6, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load %struct.sPtrArray*, %struct.sPtrArray** %list, align 8
  call void @stringListDelete(%struct.sPtrArray* %17)
  %18 = load i32, i32* %count, align 4
  ret i32 %18
}

declare void @vStringDelete(%struct.sVString*) #1

declare i32 @mio_free(%struct._MIO*) #1

declare %struct.sHashTable* @hashTableNew(i32, i32 (i8*)*, i1 (i8*, i8*)*, void (i8*)*, void (i8*)*) #1

declare i32 @hashCstrhash(i8*) #1

declare zeroext i1 @hashCstreq(i8*, i8*) #1

declare void @eFree(i8*) #1

declare zeroext i1 @hashTableHasItem(%struct.sHashTable*, i8*) #1

declare i8* @eStrdup(i8*) #1

declare void @hashTablePutItem(%struct.sHashTable*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { nounwind readonly }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 10.0.0 (https://github.com/holzschu/clang.git 0cfc630fbdb62e96720b611a57123ef3eb13e297) (https://github.com/holzschu/llvm.git 0d8a71e39b28502c24718f7e74b5acbcfe36dfe0)"}
