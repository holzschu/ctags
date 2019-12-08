; ModuleID = 'tex.c'
source_filename = "tex.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-ios11.0.0"

%struct.sKindDefinition = type { i8, i8, i8*, i8*, i8, i32, %struct.sRoleDesc*, %struct.sScopeSeparator*, i32, i32, i32, %struct.sKindDefinition*, %struct.sKindDefinition* }
%struct.sRoleDesc = type { i8, i8*, i8* }
%struct.sScopeSeparator = type { i32, i8* }
%struct.keywordTable = type { i8*, i32 }
%struct.sVString = type { i64, i64, i8* }
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
%struct.sXtagDefinition = type { i8, i8, i8*, i8*, i1 (%struct.sXtagDefinition*)*, i1 (%struct.sXtagDefinition*)*, i32 }
%struct.sParserDependency = type { i32, i8*, i8* }
%struct.sParameterHandlerTable = type { i8*, i8*, void (i32, i8*, i8*)* }
%struct.sXpathFileSpec = type { i8*, i8*, i8*, i8*, i8*, i8* }
%struct.sTokenInfo = type { i32, i32, %struct.sVString*, %struct.sVString*, i64, %struct._MIOPos }

@.str = private unnamed_addr constant [4 x i8] c"Tex\00", align 1
@extensions = internal constant [2 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* null], align 8
@TexKinds = internal global [9 x %struct.sKindDefinition] [%struct.sKindDefinition { i8 1, i8 112, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 99, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 115, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 117, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 98, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 80, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 71, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 108, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 105, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }], align 8
@TexKeywordTable = internal constant [9 x %struct.keywordTable] [%struct.keywordTable { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 0 }, %struct.keywordTable { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i32 1 }, %struct.keywordTable { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i32 2 }, %struct.keywordTable { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i32 3 }, %struct.keywordTable { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i32 4 }, %struct.keywordTable { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i32 5 }, %struct.keywordTable { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0), i32 6 }, %struct.keywordTable { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i32 7 }, %struct.keywordTable { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), i32 8 }], align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"tex\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"part\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"parts\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"chapter\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"chapters\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"section\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"sections\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"subsection\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"subsections\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"subsubsection\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"subsubsections\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"paragraph\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"paragraphs\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"subparagraph\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"subparagraphs\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"labels\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"include\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"includes\00", align 1
@Lang_tex = internal global i32 0, align 4
@lastPart = internal global %struct.sVString* null, align 8
@lastChapter = internal global %struct.sVString* null, align 8
@lastSection = internal global %struct.sVString* null, align 8
@lastSubS = internal global %struct.sVString* null, align 8
@lastSubSubS = internal global %struct.sVString* null, align 8
@.str.20 = private unnamed_addr constant [3 x i8] c"\22\22\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sParserDefinition* @TexParser() #0 {
entry:
  %def = alloca %struct.sParserDefinition*, align 8
  %call = call %struct.sParserDefinition* @parserNew(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store %struct.sParserDefinition* %call, %struct.sParserDefinition** %def, align 8
  %0 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %extensions = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %0, i32 0, i32 3
  store i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @extensions, i64 0, i64 0), i8*** %extensions, align 8
  %1 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %1, i32 0, i32 1
  store %struct.sKindDefinition* getelementptr inbounds ([9 x %struct.sKindDefinition], [9 x %struct.sKindDefinition]* @TexKinds, i64 0, i64 0), %struct.sKindDefinition** %kindTable, align 8
  %2 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %2, i32 0, i32 2
  store i32 9, i32* %kindCount, align 8
  %3 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %parser = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %3, i32 0, i32 8
  store void ()* @findTexTags, void ()** %parser, align 8
  %4 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %initialize = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %4, i32 0, i32 6
  store void (i32)* @initialize, void (i32)** %initialize, align 8
  %5 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %finalize = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %5, i32 0, i32 7
  store void (i32, i1)* @finalize, void (i32, i1)** %finalize, align 8
  %6 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %keywordTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %6, i32 0, i32 18
  store %struct.keywordTable* getelementptr inbounds ([9 x %struct.keywordTable], [9 x %struct.keywordTable]* @TexKeywordTable, i64 0, i64 0), %struct.keywordTable** %keywordTable, align 8
  %7 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %keywordCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %7, i32 0, i32 19
  store i32 9, i32* %keywordCount, align 8
  %8 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  ret %struct.sParserDefinition* %8
}

declare %struct.sParserDefinition* @parserNew(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @findTexTags() #0 {
entry:
  %token = alloca %struct.sTokenInfo*, align 8
  %call = call %struct.sTokenInfo* @newToken()
  store %struct.sTokenInfo* %call, %struct.sTokenInfo** %token, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  call void @parseTexFile(%struct.sTokenInfo* %0)
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  call void @deleteToken(%struct.sTokenInfo* %1)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @initialize(i32 %language) #0 {
entry:
  %language.addr = alloca i32, align 4
  store i32 %language, i32* %language.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load i32, i32* %language.addr, align 4
  store i32 %0, i32* @Lang_tex, align 4
  %call = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call, %struct.sVString** @lastPart, align 8
  %call1 = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call1, %struct.sVString** @lastChapter, align 8
  %call2 = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call2, %struct.sVString** @lastSection, align 8
  %call3 = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call3, %struct.sVString** @lastSubS, align 8
  %call4 = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call4, %struct.sVString** @lastSubSubS, align 8
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
  %1 = load %struct.sVString*, %struct.sVString** @lastPart, align 8
  call void @vStringDelete(%struct.sVString* %1)
  store %struct.sVString* null, %struct.sVString** @lastPart, align 8
  %2 = load %struct.sVString*, %struct.sVString** @lastChapter, align 8
  call void @vStringDelete(%struct.sVString* %2)
  store %struct.sVString* null, %struct.sVString** @lastChapter, align 8
  %3 = load %struct.sVString*, %struct.sVString** @lastSection, align 8
  call void @vStringDelete(%struct.sVString* %3)
  store %struct.sVString* null, %struct.sVString** @lastSection, align 8
  %4 = load %struct.sVString*, %struct.sVString** @lastSubS, align 8
  call void @vStringDelete(%struct.sVString* %4)
  store %struct.sVString* null, %struct.sVString** @lastSubS, align 8
  %5 = load %struct.sVString*, %struct.sVString** @lastSubSubS, align 8
  call void @vStringDelete(%struct.sVString* %5)
  store %struct.sVString* null, %struct.sVString** @lastSubSubS, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct.sTokenInfo* @newToken() #0 {
entry:
  %token = alloca %struct.sTokenInfo*, align 8
  %tmp = alloca %struct._MIOPos, align 8
  %call = call i8* @eMalloc(i64 48)
  %0 = bitcast i8* %call to %struct.sTokenInfo*
  store %struct.sTokenInfo* %0, %struct.sTokenInfo** %token, align 8
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %1, i32 0, i32 0
  store i32 0, i32* %type, align 8
  %2 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %2, i32 0, i32 1
  store i32 -1, i32* %keyword, align 4
  %call1 = call %struct.sVString* @vStringNew()
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %string = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %3, i32 0, i32 2
  store %struct.sVString* %call1, %struct.sVString** %string, align 8
  %call2 = call %struct.sVString* @vStringNew()
  %4 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %scope = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %4, i32 0, i32 3
  store %struct.sVString* %call2, %struct.sVString** %scope, align 8
  %call3 = call i64 @getInputLineNumber()
  %5 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %lineNumber = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %5, i32 0, i32 4
  store i64 %call3, i64* %lineNumber, align 8
  %6 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %filePosition = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %6, i32 0, i32 5
  %call4 = call [2 x i64] @getInputFilePosition()
  %7 = bitcast %struct._MIOPos* %tmp to [2 x i64]*
  store [2 x i64] %call4, [2 x i64]* %7, align 8
  %8 = bitcast %struct._MIOPos* %filePosition to i8*
  %9 = bitcast %struct._MIOPos* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 %9, i64 16, i1 false)
  %10 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  ret %struct.sTokenInfo* %10
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseTexFile(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %eof = alloca i8, align 1
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  store i8 0, i8* %eof, align 1
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call = call zeroext i1 @readToken(%struct.sTokenInfo* %0)
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  br label %do.end

if.end:                                           ; preds = %do.body
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %1, i32 0, i32 0
  %2 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %2, 4
  br i1 %cmp, label %if.then1, label %if.end27

if.then1:                                         ; preds = %if.end
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %3, i32 0, i32 1
  %4 = load i32, i32* %keyword, align 4
  switch i32 %4, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 2, label %sw.bb6
    i32 3, label %sw.bb9
    i32 4, label %sw.bb12
    i32 5, label %sw.bb15
    i32 6, label %sw.bb18
    i32 7, label %sw.bb21
    i32 8, label %sw.bb24
  ]

sw.bb:                                            ; preds = %if.then1
  %5 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call2 = call zeroext i1 @parseTag(%struct.sTokenInfo* %5, i32 0)
  %frombool = zext i1 %call2 to i8
  store i8 %frombool, i8* %eof, align 1
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.then1
  %6 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call4 = call zeroext i1 @parseTag(%struct.sTokenInfo* %6, i32 1)
  %frombool5 = zext i1 %call4 to i8
  store i8 %frombool5, i8* %eof, align 1
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.then1
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call7 = call zeroext i1 @parseTag(%struct.sTokenInfo* %7, i32 2)
  %frombool8 = zext i1 %call7 to i8
  store i8 %frombool8, i8* %eof, align 1
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.then1
  %8 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call10 = call zeroext i1 @parseTag(%struct.sTokenInfo* %8, i32 3)
  %frombool11 = zext i1 %call10 to i8
  store i8 %frombool11, i8* %eof, align 1
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.then1
  %9 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call13 = call zeroext i1 @parseTag(%struct.sTokenInfo* %9, i32 4)
  %frombool14 = zext i1 %call13 to i8
  store i8 %frombool14, i8* %eof, align 1
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.then1
  %10 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call16 = call zeroext i1 @parseTag(%struct.sTokenInfo* %10, i32 5)
  %frombool17 = zext i1 %call16 to i8
  store i8 %frombool17, i8* %eof, align 1
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.then1
  %11 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call19 = call zeroext i1 @parseTag(%struct.sTokenInfo* %11, i32 6)
  %frombool20 = zext i1 %call19 to i8
  store i8 %frombool20, i8* %eof, align 1
  br label %sw.epilog

sw.bb21:                                          ; preds = %if.then1
  %12 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call22 = call zeroext i1 @parseTag(%struct.sTokenInfo* %12, i32 7)
  %frombool23 = zext i1 %call22 to i8
  store i8 %frombool23, i8* %eof, align 1
  br label %sw.epilog

sw.bb24:                                          ; preds = %if.then1
  %13 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call25 = call zeroext i1 @parseTag(%struct.sTokenInfo* %13, i32 8)
  %frombool26 = zext i1 %call25 to i8
  store i8 %frombool26, i8* %eof, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %if.then1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb24, %sw.bb21, %sw.bb18, %sw.bb15, %sw.bb12, %sw.bb9, %sw.bb6, %sw.bb3, %sw.bb
  br label %if.end27

if.end27:                                         ; preds = %sw.epilog, %if.end
  %14 = load i8, i8* %eof, align 1
  %tobool = trunc i8 %14 to i1
  br i1 %tobool, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end27
  br label %do.end

if.end29:                                         ; preds = %if.end27
  br label %do.cond

do.cond:                                          ; preds = %if.end29
  br i1 true, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.then28, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @deleteToken(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 2
  %1 = load %struct.sVString*, %struct.sVString** %string, align 8
  call void @vStringDelete(%struct.sVString* %1)
  %2 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %scope = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %2, i32 0, i32 3
  %3 = load %struct.sVString*, %struct.sVString** %scope, align 8
  call void @vStringDelete(%struct.sVString* %3)
  %4 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %5 = bitcast %struct.sTokenInfo* %4 to i8*
  call void @eFree(i8* %5)
  ret void
}

declare i8* @eMalloc(i64) #1

declare %struct.sVString* @vStringNew() #1

declare i64 @getInputLineNumber() #1

declare [2 x i64] @getInputFilePosition() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @readToken(%struct.sTokenInfo* %token) #0 {
entry:
  %retval = alloca i1, align 1
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %c = alloca i32, align 4
  %vStringClear_s = alloca %struct.sVString*, align 8
  %tmp = alloca %struct._MIOPos, align 8
  %tmp30 = alloca %struct._MIOPos, align 8
  %tmp69 = alloca %struct._MIOPos, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 0
  store i32 0, i32* %type, align 8
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %1, i32 0, i32 1
  store i32 -1, i32* %keyword, align 4
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
  br label %getNextChar

getNextChar:                                      ; preds = %sw.bb43, %do.end
  br label %do.body1

do.body1:                                         ; preds = %lor.end, %getNextChar
  %call = call i32 @getcFromInputFile()
  store i32 %call, i32* %c, align 4
  %call2 = call i64 @getInputLineNumber()
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %lineNumber = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %7, i32 0, i32 4
  store i64 %call2, i64* %lineNumber, align 8
  %8 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %filePosition = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %8, i32 0, i32 5
  %call3 = call [2 x i64] @getInputFilePosition()
  %9 = bitcast %struct._MIOPos* %tmp to [2 x i64]*
  store [2 x i64] %call3, [2 x i64]* %9, align 8
  %10 = bitcast %struct._MIOPos* %filePosition to i8*
  %11 = bitcast %struct._MIOPos* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 16, i1 false)
  br label %do.cond

do.cond:                                          ; preds = %do.body1
  %12 = load i32, i32* %c, align 4
  %cmp = icmp eq i32 %12, 9
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.cond
  %13 = load i32, i32* %c, align 4
  %cmp4 = icmp eq i32 %13, 32
  br i1 %cmp4, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %14 = load i32, i32* %c, align 4
  %cmp5 = icmp eq i32 %14, 10
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %do.cond
  %15 = phi i1 [ true, %lor.lhs.false ], [ true, %do.cond ], [ %cmp5, %lor.rhs ]
  br i1 %15, label %do.body1, label %do.end6

do.end6:                                          ; preds = %lor.end
  %16 = load i32, i32* %c, align 4
  switch i32 %16, label %sw.default [
    i32 -1, label %sw.bb
    i32 40, label %sw.bb7
    i32 41, label %sw.bb9
    i32 44, label %sw.bb11
    i32 123, label %sw.bb13
    i32 125, label %sw.bb15
    i32 91, label %sw.bb17
    i32 93, label %sw.bb19
    i32 42, label %sw.bb21
    i32 92, label %sw.bb23
    i32 37, label %sw.bb43
  ]

sw.bb:                                            ; preds = %do.end6
  store i1 false, i1* %retval, align 1
  br label %return

sw.bb7:                                           ; preds = %do.end6
  %17 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type8 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %17, i32 0, i32 0
  store i32 5, i32* %type8, align 8
  br label %sw.epilog

sw.bb9:                                           ; preds = %do.end6
  %18 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type10 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %18, i32 0, i32 0
  store i32 2, i32* %type10, align 8
  br label %sw.epilog

sw.bb11:                                          ; preds = %do.end6
  %19 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type12 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %19, i32 0, i32 0
  store i32 3, i32* %type12, align 8
  br label %sw.epilog

sw.bb13:                                          ; preds = %do.end6
  %20 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type14 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %20, i32 0, i32 0
  store i32 8, i32* %type14, align 8
  br label %sw.epilog

sw.bb15:                                          ; preds = %do.end6
  %21 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type16 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %21, i32 0, i32 0
  store i32 9, i32* %type16, align 8
  br label %sw.epilog

sw.bb17:                                          ; preds = %do.end6
  %22 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type18 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %22, i32 0, i32 0
  store i32 10, i32* %type18, align 8
  br label %sw.epilog

sw.bb19:                                          ; preds = %do.end6
  %23 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type20 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %23, i32 0, i32 0
  store i32 11, i32* %type20, align 8
  br label %sw.epilog

sw.bb21:                                          ; preds = %do.end6
  %24 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type22 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %24, i32 0, i32 0
  store i32 13, i32* %type22, align 8
  br label %sw.epilog

sw.bb23:                                          ; preds = %do.end6
  %call24 = call i32 @getcFromInputFile()
  store i32 %call24, i32* %c, align 4
  %25 = load i32, i32* %c, align 4
  %call25 = call i32 @isalpha(i32 %25) #4
  %tobool = icmp ne i32 %call25, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %sw.bb23
  %26 = load i32, i32* %c, align 4
  call void @ungetcToInputFile(i32 %26)
  br label %if.end42

if.else:                                          ; preds = %sw.bb23
  %27 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string26 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %27, i32 0, i32 2
  %28 = load %struct.sVString*, %struct.sVString** %string26, align 8
  %29 = load i32, i32* %c, align 4
  call void @parseIdentifier(%struct.sVString* %28, i32 %29)
  %call27 = call i64 @getInputLineNumber()
  %30 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %lineNumber28 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %30, i32 0, i32 4
  store i64 %call27, i64* %lineNumber28, align 8
  %31 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %filePosition29 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %31, i32 0, i32 5
  %call31 = call [2 x i64] @getInputFilePosition()
  %32 = bitcast %struct._MIOPos* %tmp30 to [2 x i64]*
  store [2 x i64] %call31, [2 x i64]* %32, align 8
  %33 = bitcast %struct._MIOPos* %filePosition29 to i8*
  %34 = bitcast %struct._MIOPos* %tmp30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %33, i8* align 8 %34, i64 16, i1 false)
  %35 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string32 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %35, i32 0, i32 2
  %36 = load %struct.sVString*, %struct.sVString** %string32, align 8
  %buffer33 = getelementptr inbounds %struct.sVString, %struct.sVString* %36, i32 0, i32 2
  %37 = load i8*, i8** %buffer33, align 8
  %38 = load i32, i32* @Lang_tex, align 4
  %call34 = call i32 @lookupKeyword(i8* %37, i32 %38)
  %39 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword35 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %39, i32 0, i32 1
  store i32 %call34, i32* %keyword35, align 4
  %40 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword36 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %40, i32 0, i32 1
  %41 = load i32, i32* %keyword36, align 4
  %cmp37 = icmp eq i32 %41, -1
  br i1 %cmp37, label %if.then38, label %if.else40

if.then38:                                        ; preds = %if.else
  %42 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type39 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %42, i32 0, i32 0
  store i32 6, i32* %type39, align 8
  br label %if.end

if.else40:                                        ; preds = %if.else
  %43 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type41 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %43, i32 0, i32 0
  store i32 4, i32* %type41, align 8
  br label %if.end

if.end:                                           ; preds = %if.else40, %if.then38
  br label %if.end42

if.end42:                                         ; preds = %if.end, %if.then
  br label %sw.epilog

sw.bb43:                                          ; preds = %do.end6
  %call44 = call i32 @skipToCharacterInInputFile(i32 10)
  br label %getNextChar

sw.default:                                       ; preds = %do.end6
  %44 = load i32, i32* %c, align 4
  %call45 = call i32 @isalpha(i32 %44) #4
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %if.else64, label %lor.lhs.false47

lor.lhs.false47:                                  ; preds = %sw.default
  %45 = load i32, i32* %c, align 4
  %call48 = call i32 @isdigit(i32 %45) #4
  %tobool49 = icmp ne i32 %call48, 0
  br i1 %tobool49, label %if.else64, label %lor.lhs.false50

lor.lhs.false50:                                  ; preds = %lor.lhs.false47
  %46 = load i32, i32* %c, align 4
  %cmp51 = icmp eq i32 %46, 36
  br i1 %cmp51, label %if.else64, label %lor.lhs.false52

lor.lhs.false52:                                  ; preds = %lor.lhs.false50
  %47 = load i32, i32* %c, align 4
  %cmp53 = icmp eq i32 %47, 95
  br i1 %cmp53, label %if.else64, label %lor.lhs.false54

lor.lhs.false54:                                  ; preds = %lor.lhs.false52
  %48 = load i32, i32* %c, align 4
  %cmp55 = icmp eq i32 %48, 35
  br i1 %cmp55, label %if.else64, label %lor.lhs.false56

lor.lhs.false56:                                  ; preds = %lor.lhs.false54
  %49 = load i32, i32* %c, align 4
  %cmp57 = icmp eq i32 %49, 45
  br i1 %cmp57, label %if.else64, label %lor.lhs.false58

lor.lhs.false58:                                  ; preds = %lor.lhs.false56
  %50 = load i32, i32* %c, align 4
  %cmp59 = icmp eq i32 %50, 46
  br i1 %cmp59, label %if.else64, label %lor.lhs.false60

lor.lhs.false60:                                  ; preds = %lor.lhs.false58
  %51 = load i32, i32* %c, align 4
  %cmp61 = icmp eq i32 %51, 58
  br i1 %cmp61, label %if.else64, label %if.then62

if.then62:                                        ; preds = %lor.lhs.false60
  %52 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type63 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %52, i32 0, i32 0
  store i32 0, i32* %type63, align 8
  br label %if.end72

if.else64:                                        ; preds = %lor.lhs.false60, %lor.lhs.false58, %lor.lhs.false56, %lor.lhs.false54, %lor.lhs.false52, %lor.lhs.false50, %lor.lhs.false47, %sw.default
  %53 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string65 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %53, i32 0, i32 2
  %54 = load %struct.sVString*, %struct.sVString** %string65, align 8
  %55 = load i32, i32* %c, align 4
  call void @parseIdentifier(%struct.sVString* %54, i32 %55)
  %call66 = call i64 @getInputLineNumber()
  %56 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %lineNumber67 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %56, i32 0, i32 4
  store i64 %call66, i64* %lineNumber67, align 8
  %57 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %filePosition68 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %57, i32 0, i32 5
  %call70 = call [2 x i64] @getInputFilePosition()
  %58 = bitcast %struct._MIOPos* %tmp69 to [2 x i64]*
  store [2 x i64] %call70, [2 x i64]* %58, align 8
  %59 = bitcast %struct._MIOPos* %filePosition68 to i8*
  %60 = bitcast %struct._MIOPos* %tmp69 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 %60, i64 16, i1 false)
  %61 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type71 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %61, i32 0, i32 0
  store i32 6, i32* %type71, align 8
  br label %if.end72

if.end72:                                         ; preds = %if.else64, %if.then62
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end72, %if.end42, %sw.bb21, %sw.bb19, %sw.bb17, %sw.bb15, %sw.bb13, %sw.bb11, %sw.bb9, %sw.bb7
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb
  %62 = load i1, i1* %retval, align 1
  ret i1 %62
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @parseTag(%struct.sTokenInfo* %token, i32 %kind) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %kind.addr = alloca i32, align 4
  %name = alloca %struct.sTokenInfo*, align 8
  %fullname = alloca %struct.sVString*, align 8
  %useLongName = alloca i8, align 1
  %eof = alloca i8, align 1
  %enterSquare = alloca i8, align 1
  %vStringClear_s = alloca %struct.sVString*, align 8
  %vStringClear_s79 = alloca %struct.sVString*, align 8
  %vStringClear_s85 = alloca %struct.sVString*, align 8
  %vStringClear_s91 = alloca %struct.sVString*, align 8
  %vStringClear_s98 = alloca %struct.sVString*, align 8
  %vStringClear_s104 = alloca %struct.sVString*, align 8
  %vStringClear_s110 = alloca %struct.sVString*, align 8
  %vStringClear_s117 = alloca %struct.sVString*, align 8
  %vStringClear_s123 = alloca %struct.sVString*, align 8
  %vStringClear_s130 = alloca %struct.sVString*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  store i32 %kind, i32* %kind.addr, align 4
  %call = call %struct.sTokenInfo* @newToken()
  store %struct.sTokenInfo* %call, %struct.sTokenInfo** %name, align 8
  store i8 1, i8* %useLongName, align 1
  store i8 0, i8* %eof, align 1
  %call1 = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call1, %struct.sVString** %fullname, align 8
  %0 = load i32, i32* %kind.addr, align 4
  %cmp = icmp eq i32 %0, 7
  %1 = zext i1 %cmp to i64
  %cond = select i1 %cmp, i32 0, i32 1
  %tobool = icmp ne i32 %cond, 0
  %frombool = zext i1 %tobool to i8
  store i8 %frombool, i8* %enterSquare, align 1
  %2 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %2, i32 0, i32 0
  %3 = load i32, i32* %type, align 8
  %cmp2 = icmp eq i32 %3, 4
  br i1 %cmp2, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %4 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  %5 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @copyToken(%struct.sTokenInfo* %4, %struct.sTokenInfo* %5)
  %6 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call3 = call zeroext i1 @readToken(%struct.sTokenInfo* %6)
  br i1 %call3, label %if.end, label %if.then4

if.then4:                                         ; preds = %if.then
  store i8 1, i8* %eof, align 1
  br label %out

if.end:                                           ; preds = %if.then
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type6 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %7, i32 0, i32 0
  %8 = load i32, i32* %type6, align 8
  %cmp7 = icmp eq i32 %8, 10
  br i1 %cmp7, label %if.then8, label %if.end35

if.then8:                                         ; preds = %if.end5
  %9 = load i8, i8* %enterSquare, align 1
  %tobool9 = trunc i8 %9 to i1
  br i1 %tobool9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.then8
  store i8 0, i8* %useLongName, align 1
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.then8
  %10 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call12 = call zeroext i1 @readToken(%struct.sTokenInfo* %10)
  br i1 %call12, label %if.end14, label %if.then13

if.then13:                                        ; preds = %if.end11
  store i8 1, i8* %eof, align 1
  br label %out

if.end14:                                         ; preds = %if.end11
  br label %while.cond

while.cond:                                       ; preds = %if.end27, %if.end14
  %11 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type15 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %11, i32 0, i32 0
  %12 = load i32, i32* %type15, align 8
  %cmp16 = icmp eq i32 %12, 11
  %lnot = xor i1 %cmp16, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %13 = load i8, i8* %enterSquare, align 1
  %tobool17 = trunc i8 %13 to i1
  br i1 %tobool17, label %land.lhs.true, label %if.end24

land.lhs.true:                                    ; preds = %while.body
  %14 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type18 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %14, i32 0, i32 0
  %15 = load i32, i32* %type18, align 8
  %cmp19 = icmp eq i32 %15, 6
  br i1 %cmp19, label %if.then20, label %if.end24

if.then20:                                        ; preds = %land.lhs.true
  %16 = load %struct.sVString*, %struct.sVString** %fullname, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %16, i32 0, i32 0
  %17 = load i64, i64* %length, align 8
  %cmp21 = icmp ugt i64 %17, 0
  br i1 %cmp21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.then20
  %18 = load %struct.sVString*, %struct.sVString** %fullname, align 8
  call void @vStringPut(%struct.sVString* %18, i32 32)
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.then20
  %19 = load %struct.sVString*, %struct.sVString** %fullname, align 8
  %20 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %20, i32 0, i32 2
  %21 = load %struct.sVString*, %struct.sVString** %string, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %21, i32 0, i32 2
  %22 = load i8*, i8** %buffer, align 8
  call void @vStringCatS(%struct.sVString* %19, i8* %22)
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %land.lhs.true, %while.body
  %23 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call25 = call zeroext i1 @readToken(%struct.sTokenInfo* %23)
  br i1 %call25, label %if.end27, label %if.then26

if.then26:                                        ; preds = %if.end24
  store i8 1, i8* %eof, align 1
  br label %out

if.end27:                                         ; preds = %if.end24
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %24 = load i8, i8* %enterSquare, align 1
  %tobool28 = trunc i8 %24 to i1
  br i1 %tobool28, label %if.then29, label %if.else

if.then29:                                        ; preds = %while.end
  %25 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  %string30 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %25, i32 0, i32 2
  %26 = load %struct.sVString*, %struct.sVString** %string30, align 8
  %27 = load %struct.sVString*, %struct.sVString** %fullname, align 8
  call void @vStringCopy(%struct.sVString* %26, %struct.sVString* %27)
  %28 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  %29 = load i32, i32* %kind.addr, align 4
  call void @makeTexTag(%struct.sTokenInfo* %28, i32 %29)
  br label %if.end34

if.else:                                          ; preds = %while.end
  %30 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call31 = call zeroext i1 @readToken(%struct.sTokenInfo* %30)
  br i1 %call31, label %if.end33, label %if.then32

if.then32:                                        ; preds = %if.else
  store i8 1, i8* %eof, align 1
  br label %out

if.end33:                                         ; preds = %if.else
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.then29
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.end5
  %31 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type36 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %31, i32 0, i32 0
  %32 = load i32, i32* %type36, align 8
  %cmp37 = icmp eq i32 %32, 13
  br i1 %cmp37, label %if.then38, label %if.end42

if.then38:                                        ; preds = %if.end35
  %33 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call39 = call zeroext i1 @readToken(%struct.sTokenInfo* %33)
  br i1 %call39, label %if.end41, label %if.then40

if.then40:                                        ; preds = %if.then38
  store i8 1, i8* %eof, align 1
  br label %out

if.end41:                                         ; preds = %if.then38
  br label %if.end42

if.end42:                                         ; preds = %if.end41, %if.end35
  %34 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type43 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %34, i32 0, i32 0
  %35 = load i32, i32* %type43, align 8
  %cmp44 = icmp eq i32 %35, 8
  br i1 %cmp44, label %if.then45, label %if.end75

if.then45:                                        ; preds = %if.end42
  %36 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call46 = call zeroext i1 @readToken(%struct.sTokenInfo* %36)
  br i1 %call46, label %if.end48, label %if.then47

if.then47:                                        ; preds = %if.then45
  store i8 1, i8* %eof, align 1
  br label %out

if.end48:                                         ; preds = %if.then45
  br label %while.cond49

while.cond49:                                     ; preds = %if.end65, %if.end48
  %37 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type50 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %37, i32 0, i32 0
  %38 = load i32, i32* %type50, align 8
  %cmp51 = icmp eq i32 %38, 9
  %lnot52 = xor i1 %cmp51, true
  br i1 %lnot52, label %while.body53, label %while.end66

while.body53:                                     ; preds = %while.cond49
  %39 = load i8, i8* %useLongName, align 1
  %tobool54 = trunc i8 %39 to i1
  br i1 %tobool54, label %if.then55, label %if.end62

if.then55:                                        ; preds = %while.body53
  %40 = load %struct.sVString*, %struct.sVString** %fullname, align 8
  %length56 = getelementptr inbounds %struct.sVString, %struct.sVString* %40, i32 0, i32 0
  %41 = load i64, i64* %length56, align 8
  %cmp57 = icmp ugt i64 %41, 0
  br i1 %cmp57, label %if.then58, label %if.end59

if.then58:                                        ; preds = %if.then55
  %42 = load %struct.sVString*, %struct.sVString** %fullname, align 8
  call void @vStringPut(%struct.sVString* %42, i32 32)
  br label %if.end59

if.end59:                                         ; preds = %if.then58, %if.then55
  %43 = load %struct.sVString*, %struct.sVString** %fullname, align 8
  %44 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string60 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %44, i32 0, i32 2
  %45 = load %struct.sVString*, %struct.sVString** %string60, align 8
  %buffer61 = getelementptr inbounds %struct.sVString, %struct.sVString* %45, i32 0, i32 2
  %46 = load i8*, i8** %buffer61, align 8
  call void @vStringCatS(%struct.sVString* %43, i8* %46)
  br label %if.end62

if.end62:                                         ; preds = %if.end59, %while.body53
  %47 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call63 = call zeroext i1 @readToken(%struct.sTokenInfo* %47)
  br i1 %call63, label %if.end65, label %if.then64

if.then64:                                        ; preds = %if.end62
  store i8 1, i8* %eof, align 1
  br label %out

if.end65:                                         ; preds = %if.end62
  br label %while.cond49

while.end66:                                      ; preds = %while.cond49
  %48 = load i8, i8* %useLongName, align 1
  %tobool67 = trunc i8 %48 to i1
  br i1 %tobool67, label %if.then68, label %if.end74

if.then68:                                        ; preds = %while.end66
  %49 = load %struct.sVString*, %struct.sVString** %fullname, align 8
  %length69 = getelementptr inbounds %struct.sVString, %struct.sVString* %49, i32 0, i32 0
  %50 = load i64, i64* %length69, align 8
  %cmp70 = icmp ugt i64 %50, 0
  br i1 %cmp70, label %if.then71, label %if.end73

if.then71:                                        ; preds = %if.then68
  %51 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  %string72 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %51, i32 0, i32 2
  %52 = load %struct.sVString*, %struct.sVString** %string72, align 8
  %53 = load %struct.sVString*, %struct.sVString** %fullname, align 8
  call void @vStringCopy(%struct.sVString* %52, %struct.sVString* %53)
  %54 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  %55 = load i32, i32* %kind.addr, align 4
  call void @makeTexTag(%struct.sTokenInfo* %54, i32 %55)
  br label %if.end73

if.end73:                                         ; preds = %if.then71, %if.then68
  br label %if.end74

if.end74:                                         ; preds = %if.end73, %while.end66
  br label %if.end75

if.end75:                                         ; preds = %if.end74, %if.end42
  %56 = load i32, i32* %kind.addr, align 4
  switch i32 %56, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb96
    i32 2, label %sw.bb115
    i32 3, label %sw.bb128
    i32 4, label %sw.bb135
  ]

sw.bb:                                            ; preds = %if.end75
  %57 = load %struct.sVString*, %struct.sVString** @lastPart, align 8
  %58 = load %struct.sVString*, %struct.sVString** %fullname, align 8
  call void @vStringCopy(%struct.sVString* %57, %struct.sVString* %58)
  br label %do.body

do.body:                                          ; preds = %sw.bb
  %59 = load %struct.sVString*, %struct.sVString** @lastChapter, align 8
  store %struct.sVString* %59, %struct.sVString** %vStringClear_s, align 8
  %60 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %length76 = getelementptr inbounds %struct.sVString, %struct.sVString* %60, i32 0, i32 0
  store i64 0, i64* %length76, align 8
  %61 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %buffer77 = getelementptr inbounds %struct.sVString, %struct.sVString* %61, i32 0, i32 2
  %62 = load i8*, i8** %buffer77, align 8
  %arrayidx = getelementptr inbounds i8, i8* %62, i64 0
  store i8 0, i8* %arrayidx, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body78

do.body78:                                        ; preds = %do.end
  %63 = load %struct.sVString*, %struct.sVString** @lastSection, align 8
  store %struct.sVString* %63, %struct.sVString** %vStringClear_s79, align 8
  %64 = load %struct.sVString*, %struct.sVString** %vStringClear_s79, align 8
  %length80 = getelementptr inbounds %struct.sVString, %struct.sVString* %64, i32 0, i32 0
  store i64 0, i64* %length80, align 8
  %65 = load %struct.sVString*, %struct.sVString** %vStringClear_s79, align 8
  %buffer81 = getelementptr inbounds %struct.sVString, %struct.sVString* %65, i32 0, i32 2
  %66 = load i8*, i8** %buffer81, align 8
  %arrayidx82 = getelementptr inbounds i8, i8* %66, i64 0
  store i8 0, i8* %arrayidx82, align 1
  br label %do.end83

do.end83:                                         ; preds = %do.body78
  br label %do.body84

do.body84:                                        ; preds = %do.end83
  %67 = load %struct.sVString*, %struct.sVString** @lastSubS, align 8
  store %struct.sVString* %67, %struct.sVString** %vStringClear_s85, align 8
  %68 = load %struct.sVString*, %struct.sVString** %vStringClear_s85, align 8
  %length86 = getelementptr inbounds %struct.sVString, %struct.sVString* %68, i32 0, i32 0
  store i64 0, i64* %length86, align 8
  %69 = load %struct.sVString*, %struct.sVString** %vStringClear_s85, align 8
  %buffer87 = getelementptr inbounds %struct.sVString, %struct.sVString* %69, i32 0, i32 2
  %70 = load i8*, i8** %buffer87, align 8
  %arrayidx88 = getelementptr inbounds i8, i8* %70, i64 0
  store i8 0, i8* %arrayidx88, align 1
  br label %do.end89

do.end89:                                         ; preds = %do.body84
  br label %do.body90

do.body90:                                        ; preds = %do.end89
  %71 = load %struct.sVString*, %struct.sVString** @lastSubSubS, align 8
  store %struct.sVString* %71, %struct.sVString** %vStringClear_s91, align 8
  %72 = load %struct.sVString*, %struct.sVString** %vStringClear_s91, align 8
  %length92 = getelementptr inbounds %struct.sVString, %struct.sVString* %72, i32 0, i32 0
  store i64 0, i64* %length92, align 8
  %73 = load %struct.sVString*, %struct.sVString** %vStringClear_s91, align 8
  %buffer93 = getelementptr inbounds %struct.sVString, %struct.sVString* %73, i32 0, i32 2
  %74 = load i8*, i8** %buffer93, align 8
  %arrayidx94 = getelementptr inbounds i8, i8* %74, i64 0
  store i8 0, i8* %arrayidx94, align 1
  br label %do.end95

do.end95:                                         ; preds = %do.body90
  br label %sw.epilog

sw.bb96:                                          ; preds = %if.end75
  %75 = load %struct.sVString*, %struct.sVString** @lastChapter, align 8
  %76 = load %struct.sVString*, %struct.sVString** %fullname, align 8
  call void @vStringCopy(%struct.sVString* %75, %struct.sVString* %76)
  br label %do.body97

do.body97:                                        ; preds = %sw.bb96
  %77 = load %struct.sVString*, %struct.sVString** @lastSection, align 8
  store %struct.sVString* %77, %struct.sVString** %vStringClear_s98, align 8
  %78 = load %struct.sVString*, %struct.sVString** %vStringClear_s98, align 8
  %length99 = getelementptr inbounds %struct.sVString, %struct.sVString* %78, i32 0, i32 0
  store i64 0, i64* %length99, align 8
  %79 = load %struct.sVString*, %struct.sVString** %vStringClear_s98, align 8
  %buffer100 = getelementptr inbounds %struct.sVString, %struct.sVString* %79, i32 0, i32 2
  %80 = load i8*, i8** %buffer100, align 8
  %arrayidx101 = getelementptr inbounds i8, i8* %80, i64 0
  store i8 0, i8* %arrayidx101, align 1
  br label %do.end102

do.end102:                                        ; preds = %do.body97
  br label %do.body103

do.body103:                                       ; preds = %do.end102
  %81 = load %struct.sVString*, %struct.sVString** @lastSubS, align 8
  store %struct.sVString* %81, %struct.sVString** %vStringClear_s104, align 8
  %82 = load %struct.sVString*, %struct.sVString** %vStringClear_s104, align 8
  %length105 = getelementptr inbounds %struct.sVString, %struct.sVString* %82, i32 0, i32 0
  store i64 0, i64* %length105, align 8
  %83 = load %struct.sVString*, %struct.sVString** %vStringClear_s104, align 8
  %buffer106 = getelementptr inbounds %struct.sVString, %struct.sVString* %83, i32 0, i32 2
  %84 = load i8*, i8** %buffer106, align 8
  %arrayidx107 = getelementptr inbounds i8, i8* %84, i64 0
  store i8 0, i8* %arrayidx107, align 1
  br label %do.end108

do.end108:                                        ; preds = %do.body103
  br label %do.body109

do.body109:                                       ; preds = %do.end108
  %85 = load %struct.sVString*, %struct.sVString** @lastSubSubS, align 8
  store %struct.sVString* %85, %struct.sVString** %vStringClear_s110, align 8
  %86 = load %struct.sVString*, %struct.sVString** %vStringClear_s110, align 8
  %length111 = getelementptr inbounds %struct.sVString, %struct.sVString* %86, i32 0, i32 0
  store i64 0, i64* %length111, align 8
  %87 = load %struct.sVString*, %struct.sVString** %vStringClear_s110, align 8
  %buffer112 = getelementptr inbounds %struct.sVString, %struct.sVString* %87, i32 0, i32 2
  %88 = load i8*, i8** %buffer112, align 8
  %arrayidx113 = getelementptr inbounds i8, i8* %88, i64 0
  store i8 0, i8* %arrayidx113, align 1
  br label %do.end114

do.end114:                                        ; preds = %do.body109
  br label %sw.epilog

sw.bb115:                                         ; preds = %if.end75
  %89 = load %struct.sVString*, %struct.sVString** @lastSection, align 8
  %90 = load %struct.sVString*, %struct.sVString** %fullname, align 8
  call void @vStringCopy(%struct.sVString* %89, %struct.sVString* %90)
  br label %do.body116

do.body116:                                       ; preds = %sw.bb115
  %91 = load %struct.sVString*, %struct.sVString** @lastSubS, align 8
  store %struct.sVString* %91, %struct.sVString** %vStringClear_s117, align 8
  %92 = load %struct.sVString*, %struct.sVString** %vStringClear_s117, align 8
  %length118 = getelementptr inbounds %struct.sVString, %struct.sVString* %92, i32 0, i32 0
  store i64 0, i64* %length118, align 8
  %93 = load %struct.sVString*, %struct.sVString** %vStringClear_s117, align 8
  %buffer119 = getelementptr inbounds %struct.sVString, %struct.sVString* %93, i32 0, i32 2
  %94 = load i8*, i8** %buffer119, align 8
  %arrayidx120 = getelementptr inbounds i8, i8* %94, i64 0
  store i8 0, i8* %arrayidx120, align 1
  br label %do.end121

do.end121:                                        ; preds = %do.body116
  br label %do.body122

do.body122:                                       ; preds = %do.end121
  %95 = load %struct.sVString*, %struct.sVString** @lastSubSubS, align 8
  store %struct.sVString* %95, %struct.sVString** %vStringClear_s123, align 8
  %96 = load %struct.sVString*, %struct.sVString** %vStringClear_s123, align 8
  %length124 = getelementptr inbounds %struct.sVString, %struct.sVString* %96, i32 0, i32 0
  store i64 0, i64* %length124, align 8
  %97 = load %struct.sVString*, %struct.sVString** %vStringClear_s123, align 8
  %buffer125 = getelementptr inbounds %struct.sVString, %struct.sVString* %97, i32 0, i32 2
  %98 = load i8*, i8** %buffer125, align 8
  %arrayidx126 = getelementptr inbounds i8, i8* %98, i64 0
  store i8 0, i8* %arrayidx126, align 1
  br label %do.end127

do.end127:                                        ; preds = %do.body122
  br label %sw.epilog

sw.bb128:                                         ; preds = %if.end75
  %99 = load %struct.sVString*, %struct.sVString** @lastSubS, align 8
  %100 = load %struct.sVString*, %struct.sVString** %fullname, align 8
  call void @vStringCopy(%struct.sVString* %99, %struct.sVString* %100)
  br label %do.body129

do.body129:                                       ; preds = %sw.bb128
  %101 = load %struct.sVString*, %struct.sVString** @lastSubSubS, align 8
  store %struct.sVString* %101, %struct.sVString** %vStringClear_s130, align 8
  %102 = load %struct.sVString*, %struct.sVString** %vStringClear_s130, align 8
  %length131 = getelementptr inbounds %struct.sVString, %struct.sVString* %102, i32 0, i32 0
  store i64 0, i64* %length131, align 8
  %103 = load %struct.sVString*, %struct.sVString** %vStringClear_s130, align 8
  %buffer132 = getelementptr inbounds %struct.sVString, %struct.sVString* %103, i32 0, i32 2
  %104 = load i8*, i8** %buffer132, align 8
  %arrayidx133 = getelementptr inbounds i8, i8* %104, i64 0
  store i8 0, i8* %arrayidx133, align 1
  br label %do.end134

do.end134:                                        ; preds = %do.body129
  br label %sw.epilog

sw.bb135:                                         ; preds = %if.end75
  %105 = load %struct.sVString*, %struct.sVString** @lastSubSubS, align 8
  %106 = load %struct.sVString*, %struct.sVString** %fullname, align 8
  call void @vStringCopy(%struct.sVString* %105, %struct.sVString* %106)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end75
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb135, %do.end134, %do.end127, %do.end114, %do.end95
  br label %out

out:                                              ; preds = %sw.epilog, %if.then64, %if.then47, %if.then40, %if.then32, %if.then26, %if.then13, %if.then4
  %107 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name, align 8
  call void @deleteToken(%struct.sTokenInfo* %107)
  %108 = load %struct.sVString*, %struct.sVString** %fullname, align 8
  call void @vStringDelete(%struct.sVString* %108)
  %109 = load i8, i8* %eof, align 1
  %tobool136 = trunc i8 %109 to i1
  ret i1 %tobool136
}

declare i32 @getcFromInputFile() #1

; Function Attrs: nounwind readonly
declare i32 @isalpha(i32) #3

declare void @ungetcToInputFile(i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseIdentifier(%struct.sVString* %string, i32 %firstChar) #0 {
entry:
  %string.addr = alloca %struct.sVString*, align 8
  %firstChar.addr = alloca i32, align 4
  %c = alloca i32, align 4
  store %struct.sVString* %string, %struct.sVString** %string.addr, align 8
  store i32 %firstChar, i32* %firstChar.addr, align 4
  %0 = load i32, i32* %firstChar.addr, align 4
  store i32 %0, i32* %c, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %lor.end, %do.end
  %1 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %2 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %1, i32 %2)
  %call = call i32 @getcFromInputFile()
  store i32 %call, i32* %c, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body1
  %3 = load i32, i32* %c, align 4
  %call2 = call i32 @isalpha(i32 %3) #4
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.cond
  %4 = load i32, i32* %c, align 4
  %call3 = call i32 @isdigit(i32 %4) #4
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %lor.end, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %5 = load i32, i32* %c, align 4
  %cmp = icmp eq i32 %5, 36
  br i1 %cmp, label %lor.end, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false5
  %6 = load i32, i32* %c, align 4
  %cmp7 = icmp eq i32 %6, 95
  br i1 %cmp7, label %lor.end, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %lor.lhs.false6
  %7 = load i32, i32* %c, align 4
  %cmp9 = icmp eq i32 %7, 35
  br i1 %cmp9, label %lor.end, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false8
  %8 = load i32, i32* %c, align 4
  %cmp11 = icmp eq i32 %8, 45
  br i1 %cmp11, label %lor.end, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false10
  %9 = load i32, i32* %c, align 4
  %cmp13 = icmp eq i32 %9, 46
  br i1 %cmp13, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false12
  %10 = load i32, i32* %c, align 4
  %cmp14 = icmp eq i32 %10, 58
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false12, %lor.lhs.false10, %lor.lhs.false8, %lor.lhs.false6, %lor.lhs.false5, %lor.lhs.false, %do.cond
  %11 = phi i1 [ true, %lor.lhs.false12 ], [ true, %lor.lhs.false10 ], [ true, %lor.lhs.false8 ], [ true, %lor.lhs.false6 ], [ true, %lor.lhs.false5 ], [ true, %lor.lhs.false ], [ true, %do.cond ], [ %cmp14, %lor.rhs ]
  br i1 %11, label %do.body1, label %do.end15

do.end15:                                         ; preds = %lor.end
  %12 = load i32, i32* %c, align 4
  %call16 = call i32 @isspace(i32 %12) #4
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.end, label %if.then

if.then:                                          ; preds = %do.end15
  %13 = load i32, i32* %c, align 4
  call void @ungetcToInputFile(i32 %13)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end15
  ret void
}

declare i32 @lookupKeyword(i8*, i32) #1

declare i32 @skipToCharacterInInputFile(i32) #1

; Function Attrs: nounwind readonly
declare i32 @isdigit(i32) #3

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
declare i32 @isspace(i32) #3

declare void @vStringResize(%struct.sVString*, i64) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @copyToken(%struct.sTokenInfo* %dest, %struct.sTokenInfo* %src) #0 {
entry:
  %dest.addr = alloca %struct.sTokenInfo*, align 8
  %src.addr = alloca %struct.sTokenInfo*, align 8
  store %struct.sTokenInfo* %dest, %struct.sTokenInfo** %dest.addr, align 8
  store %struct.sTokenInfo* %src, %struct.sTokenInfo** %src.addr, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %src.addr, align 8
  %lineNumber = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 4
  %1 = load i64, i64* %lineNumber, align 8
  %2 = load %struct.sTokenInfo*, %struct.sTokenInfo** %dest.addr, align 8
  %lineNumber1 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %2, i32 0, i32 4
  store i64 %1, i64* %lineNumber1, align 8
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %dest.addr, align 8
  %filePosition = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %3, i32 0, i32 5
  %4 = load %struct.sTokenInfo*, %struct.sTokenInfo** %src.addr, align 8
  %filePosition2 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %4, i32 0, i32 5
  %5 = bitcast %struct._MIOPos* %filePosition to i8*
  %6 = bitcast %struct._MIOPos* %filePosition2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 8 %6, i64 16, i1 false)
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %src.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %7, i32 0, i32 0
  %8 = load i32, i32* %type, align 8
  %9 = load %struct.sTokenInfo*, %struct.sTokenInfo** %dest.addr, align 8
  %type3 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %9, i32 0, i32 0
  store i32 %8, i32* %type3, align 8
  %10 = load %struct.sTokenInfo*, %struct.sTokenInfo** %src.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %10, i32 0, i32 1
  %11 = load i32, i32* %keyword, align 4
  %12 = load %struct.sTokenInfo*, %struct.sTokenInfo** %dest.addr, align 8
  %keyword4 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %12, i32 0, i32 1
  store i32 %11, i32* %keyword4, align 4
  %13 = load %struct.sTokenInfo*, %struct.sTokenInfo** %dest.addr, align 8
  %string = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %13, i32 0, i32 2
  %14 = load %struct.sVString*, %struct.sVString** %string, align 8
  %15 = load %struct.sTokenInfo*, %struct.sTokenInfo** %src.addr, align 8
  %string5 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %15, i32 0, i32 2
  %16 = load %struct.sVString*, %struct.sVString** %string5, align 8
  call void @vStringCopy(%struct.sVString* %14, %struct.sVString* %16)
  %17 = load %struct.sTokenInfo*, %struct.sTokenInfo** %dest.addr, align 8
  %scope = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %17, i32 0, i32 3
  %18 = load %struct.sVString*, %struct.sVString** %scope, align 8
  %19 = load %struct.sTokenInfo*, %struct.sTokenInfo** %src.addr, align 8
  %scope6 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %19, i32 0, i32 3
  %20 = load %struct.sVString*, %struct.sVString** %scope6, align 8
  call void @vStringCopy(%struct.sVString* %18, %struct.sVString* %20)
  ret void
}

declare void @vStringCatS(%struct.sVString*, i8*) #1

declare void @vStringCopy(%struct.sVString*, %struct.sVString*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @makeTexTag(%struct.sTokenInfo* %token, i32 %kind) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %kind.addr = alloca i32, align 4
  %name = alloca i8*, align 8
  %parentKind = alloca i32, align 4
  %parentName = alloca %struct.sVString*, align 8
  %e = alloca %struct.sTagEntryInfo, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  store i32 %kind, i32* %kind.addr, align 4
  %0 = load i32, i32* %kind.addr, align 4
  %idxprom = zext i32 %0 to i64
  %arrayidx = getelementptr inbounds [9 x %struct.sKindDefinition], [9 x %struct.sKindDefinition]* @TexKinds, i64 0, i64 %idxprom
  %enabled = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %arrayidx, i32 0, i32 0
  %1 = load i8, i8* %enabled, align 8
  %tobool = trunc i8 %1 to i1
  br i1 %tobool, label %if.then, label %if.end8

if.then:                                          ; preds = %entry
  %2 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %string = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %2, i32 0, i32 2
  %3 = load %struct.sVString*, %struct.sVString** %string, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %3, i32 0, i32 2
  %4 = load i8*, i8** %buffer, align 8
  store i8* %4, i8** %name, align 8
  store i32 -1, i32* %parentKind, align 4
  %call = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call, %struct.sVString** %parentName, align 8
  %5 = load i8*, i8** %name, align 8
  %6 = load i32, i32* %kind.addr, align 4
  call void @initTagEntry(%struct.sTagEntryInfo* %e, i8* %5, i32 %6)
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %lineNumber = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %7, i32 0, i32 4
  %8 = load i64, i64* %lineNumber, align 8
  %lineNumber1 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %e, i32 0, i32 1
  store i64 %8, i64* %lineNumber1, align 8
  %filePosition = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %e, i32 0, i32 4
  %9 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %filePosition2 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %9, i32 0, i32 5
  %10 = bitcast %struct._MIOPos* %filePosition to i8*
  %11 = bitcast %struct._MIOPos* %filePosition2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 16, i1 false)
  %12 = load i32, i32* %kind.addr, align 4
  %13 = load %struct.sVString*, %struct.sVString** %parentName, align 8
  %call3 = call i32 @getScopeInfo(i32 %12, %struct.sVString* %13)
  store i32 %call3, i32* %parentKind, align 4
  %14 = load i32, i32* %parentKind, align 4
  %cmp = icmp ne i32 %14, -1
  br i1 %cmp, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  %15 = load i32, i32* %parentKind, align 4
  %extensionFields = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %e, i32 0, i32 11
  %scopeKindIndex = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields, i32 0, i32 5
  store i32 %15, i32* %scopeKindIndex, align 4
  %16 = load %struct.sVString*, %struct.sVString** %parentName, align 8
  %buffer5 = getelementptr inbounds %struct.sVString, %struct.sVString* %16, i32 0, i32 2
  %17 = load i8*, i8** %buffer5, align 8
  %extensionFields6 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %e, i32 0, i32 11
  %scopeName = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields6, i32 0, i32 6
  store i8* %17, i8** %scopeName, align 8
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then
  %call7 = call i32 @makeTagEntry(%struct.sTagEntryInfo* %e)
  %18 = load %struct.sVString*, %struct.sVString** %parentName, align 8
  call void @vStringDelete(%struct.sVString* %18)
  br label %if.end8

if.end8:                                          ; preds = %if.end, %entry
  ret void
}

declare void @vStringDelete(%struct.sVString*) #1

declare void @initTagEntry(%struct.sTagEntryInfo*, i8*, i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @getScopeInfo(i32 %kind, %struct.sVString* %parentName) #0 {
entry:
  %kind.addr = alloca i32, align 4
  %parentName.addr = alloca %struct.sVString*, align 8
  %parentKind = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %kind, i32* %kind.addr, align 4
  store %struct.sVString* %parentName, %struct.sVString** %parentName.addr, align 8
  store i32 -1, i32* %parentKind, align 4
  %0 = load i32, i32* %kind.addr, align 4
  %cmp = icmp uge i32 %0, 7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %out

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %kind.addr, align 4
  %sub = sub i32 %1, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %i, align 4
  %cmp1 = icmp sge i32 %2, 0
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %cmp2 = icmp eq i32 %3, 3
  br i1 %cmp2, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body
  %4 = load %struct.sVString*, %struct.sVString** @lastSubS, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %4, i32 0, i32 0
  %5 = load i64, i64* %length, align 8
  %cmp3 = icmp ugt i64 %5, 0
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %land.lhs.true
  %6 = load i32, i32* %i, align 4
  store i32 %6, i32* %parentKind, align 4
  br label %for.end

if.else:                                          ; preds = %land.lhs.true, %for.body
  %7 = load i32, i32* %i, align 4
  %cmp5 = icmp eq i32 %7, 2
  br i1 %cmp5, label %land.lhs.true6, label %if.else10

land.lhs.true6:                                   ; preds = %if.else
  %8 = load %struct.sVString*, %struct.sVString** @lastSection, align 8
  %length7 = getelementptr inbounds %struct.sVString, %struct.sVString* %8, i32 0, i32 0
  %9 = load i64, i64* %length7, align 8
  %cmp8 = icmp ugt i64 %9, 0
  br i1 %cmp8, label %if.then9, label %if.else10

if.then9:                                         ; preds = %land.lhs.true6
  %10 = load i32, i32* %i, align 4
  store i32 %10, i32* %parentKind, align 4
  br label %for.end

if.else10:                                        ; preds = %land.lhs.true6, %if.else
  %11 = load i32, i32* %i, align 4
  %cmp11 = icmp eq i32 %11, 1
  br i1 %cmp11, label %land.lhs.true12, label %if.else16

land.lhs.true12:                                  ; preds = %if.else10
  %12 = load %struct.sVString*, %struct.sVString** @lastChapter, align 8
  %length13 = getelementptr inbounds %struct.sVString, %struct.sVString* %12, i32 0, i32 0
  %13 = load i64, i64* %length13, align 8
  %cmp14 = icmp ugt i64 %13, 0
  br i1 %cmp14, label %if.then15, label %if.else16

if.then15:                                        ; preds = %land.lhs.true12
  %14 = load i32, i32* %i, align 4
  store i32 %14, i32* %parentKind, align 4
  br label %for.end

if.else16:                                        ; preds = %land.lhs.true12, %if.else10
  %15 = load i32, i32* %i, align 4
  %cmp17 = icmp eq i32 %15, 0
  br i1 %cmp17, label %land.lhs.true18, label %if.end22

land.lhs.true18:                                  ; preds = %if.else16
  %16 = load %struct.sVString*, %struct.sVString** @lastPart, align 8
  %length19 = getelementptr inbounds %struct.sVString, %struct.sVString* %16, i32 0, i32 0
  %17 = load i64, i64* %length19, align 8
  %cmp20 = icmp ugt i64 %17, 0
  br i1 %cmp20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %land.lhs.true18
  %18 = load i32, i32* %i, align 4
  store i32 %18, i32* %parentKind, align 4
  br label %for.end

if.end22:                                         ; preds = %land.lhs.true18, %if.else16
  br label %if.end23

if.end23:                                         ; preds = %if.end22
  br label %if.end24

if.end24:                                         ; preds = %if.end23
  br label %if.end25

if.end25:                                         ; preds = %if.end24
  br label %for.inc

for.inc:                                          ; preds = %if.end25
  %19 = load i32, i32* %i, align 4
  %dec = add nsw i32 %19, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then21, %if.then15, %if.then9, %if.then4, %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc68, %for.end
  %20 = load i32, i32* %i, align 4
  %21 = load i32, i32* %kind.addr, align 4
  %cmp27 = icmp slt i32 %20, %21
  br i1 %cmp27, label %for.body28, label %for.end69

for.body28:                                       ; preds = %for.cond26
  %22 = load i32, i32* %i, align 4
  %cmp29 = icmp eq i32 %22, 0
  br i1 %cmp29, label %land.lhs.true30, label %if.else34

land.lhs.true30:                                  ; preds = %for.body28
  %23 = load %struct.sVString*, %struct.sVString** @lastPart, align 8
  %length31 = getelementptr inbounds %struct.sVString, %struct.sVString* %23, i32 0, i32 0
  %24 = load i64, i64* %length31, align 8
  %cmp32 = icmp ugt i64 %24, 0
  br i1 %cmp32, label %if.then33, label %if.else34

if.then33:                                        ; preds = %land.lhs.true30
  %25 = load %struct.sVString*, %struct.sVString** %parentName.addr, align 8
  %26 = load %struct.sVString*, %struct.sVString** @lastPart, align 8
  call void @vStringCat(%struct.sVString* %25, %struct.sVString* %26)
  br label %if.end67

if.else34:                                        ; preds = %land.lhs.true30, %for.body28
  %27 = load i32, i32* %i, align 4
  %cmp35 = icmp eq i32 %27, 1
  br i1 %cmp35, label %land.lhs.true36, label %if.else44

land.lhs.true36:                                  ; preds = %if.else34
  %28 = load %struct.sVString*, %struct.sVString** @lastChapter, align 8
  %length37 = getelementptr inbounds %struct.sVString, %struct.sVString* %28, i32 0, i32 0
  %29 = load i64, i64* %length37, align 8
  %cmp38 = icmp ugt i64 %29, 0
  br i1 %cmp38, label %if.then39, label %if.else44

if.then39:                                        ; preds = %land.lhs.true36
  %30 = load %struct.sVString*, %struct.sVString** %parentName.addr, align 8
  %length40 = getelementptr inbounds %struct.sVString, %struct.sVString* %30, i32 0, i32 0
  %31 = load i64, i64* %length40, align 8
  %cmp41 = icmp ugt i64 %31, 0
  br i1 %cmp41, label %if.then42, label %if.end43

if.then42:                                        ; preds = %if.then39
  %32 = load %struct.sVString*, %struct.sVString** %parentName.addr, align 8
  call void @vStringCatS(%struct.sVString* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0))
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %if.then39
  %33 = load %struct.sVString*, %struct.sVString** %parentName.addr, align 8
  %34 = load %struct.sVString*, %struct.sVString** @lastChapter, align 8
  call void @vStringCat(%struct.sVString* %33, %struct.sVString* %34)
  br label %if.end66

if.else44:                                        ; preds = %land.lhs.true36, %if.else34
  %35 = load i32, i32* %i, align 4
  %cmp45 = icmp eq i32 %35, 2
  br i1 %cmp45, label %land.lhs.true46, label %if.else54

land.lhs.true46:                                  ; preds = %if.else44
  %36 = load %struct.sVString*, %struct.sVString** @lastSection, align 8
  %length47 = getelementptr inbounds %struct.sVString, %struct.sVString* %36, i32 0, i32 0
  %37 = load i64, i64* %length47, align 8
  %cmp48 = icmp ugt i64 %37, 0
  br i1 %cmp48, label %if.then49, label %if.else54

if.then49:                                        ; preds = %land.lhs.true46
  %38 = load %struct.sVString*, %struct.sVString** %parentName.addr, align 8
  %length50 = getelementptr inbounds %struct.sVString, %struct.sVString* %38, i32 0, i32 0
  %39 = load i64, i64* %length50, align 8
  %cmp51 = icmp ugt i64 %39, 0
  br i1 %cmp51, label %if.then52, label %if.end53

if.then52:                                        ; preds = %if.then49
  %40 = load %struct.sVString*, %struct.sVString** %parentName.addr, align 8
  call void @vStringCatS(%struct.sVString* %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0))
  br label %if.end53

if.end53:                                         ; preds = %if.then52, %if.then49
  %41 = load %struct.sVString*, %struct.sVString** %parentName.addr, align 8
  %42 = load %struct.sVString*, %struct.sVString** @lastSection, align 8
  call void @vStringCat(%struct.sVString* %41, %struct.sVString* %42)
  br label %if.end65

if.else54:                                        ; preds = %land.lhs.true46, %if.else44
  %43 = load i32, i32* %i, align 4
  %cmp55 = icmp eq i32 %43, 3
  br i1 %cmp55, label %land.lhs.true56, label %if.end64

land.lhs.true56:                                  ; preds = %if.else54
  %44 = load %struct.sVString*, %struct.sVString** @lastSubS, align 8
  %length57 = getelementptr inbounds %struct.sVString, %struct.sVString* %44, i32 0, i32 0
  %45 = load i64, i64* %length57, align 8
  %cmp58 = icmp ugt i64 %45, 0
  br i1 %cmp58, label %if.then59, label %if.end64

if.then59:                                        ; preds = %land.lhs.true56
  %46 = load %struct.sVString*, %struct.sVString** %parentName.addr, align 8
  %length60 = getelementptr inbounds %struct.sVString, %struct.sVString* %46, i32 0, i32 0
  %47 = load i64, i64* %length60, align 8
  %cmp61 = icmp ugt i64 %47, 0
  br i1 %cmp61, label %if.then62, label %if.end63

if.then62:                                        ; preds = %if.then59
  %48 = load %struct.sVString*, %struct.sVString** %parentName.addr, align 8
  call void @vStringCatS(%struct.sVString* %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0))
  br label %if.end63

if.end63:                                         ; preds = %if.then62, %if.then59
  %49 = load %struct.sVString*, %struct.sVString** %parentName.addr, align 8
  %50 = load %struct.sVString*, %struct.sVString** @lastSubS, align 8
  call void @vStringCat(%struct.sVString* %49, %struct.sVString* %50)
  br label %if.end64

if.end64:                                         ; preds = %if.end63, %land.lhs.true56, %if.else54
  br label %if.end65

if.end65:                                         ; preds = %if.end64, %if.end53
  br label %if.end66

if.end66:                                         ; preds = %if.end65, %if.end43
  br label %if.end67

if.end67:                                         ; preds = %if.end66, %if.then33
  br label %for.inc68

for.inc68:                                        ; preds = %if.end67
  %51 = load i32, i32* %i, align 4
  %inc = add nsw i32 %51, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond26

for.end69:                                        ; preds = %for.cond26
  br label %out

out:                                              ; preds = %for.end69, %if.then
  %52 = load i32, i32* %parentKind, align 4
  ret i32 %52
}

declare i32 @makeTagEntry(%struct.sTagEntryInfo*) #1

declare void @vStringCat(%struct.sVString*, %struct.sVString*) #1

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
