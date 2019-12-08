; ModuleID = 'html.c'
source_filename = "html.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-ios11.0.0"

%struct.sKindDefinition = type { i8, i8, i8*, i8*, i8, i32, %struct.sRoleDesc*, %struct.sScopeSeparator*, i32, i32, i32, %struct.sKindDefinition*, %struct.sKindDefinition* }
%struct.sRoleDesc = type { i8, i8*, i8* }
%struct.sScopeSeparator = type { i32, i8* }
%struct.keywordTable = type { i8*, i32 }
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
%struct.sVString = type { i64, i64, i8* }
%struct.sXtagDefinition = type { i8, i8, i8*, i8*, i1 (%struct.sXtagDefinition*)*, i1 (%struct.sXtagDefinition*)*, i32 }
%struct.sParserDependency = type { i32, i8*, i8* }
%struct.sParameterHandlerTable = type { i8*, i8*, void (i32, i8*, i8*)* }
%struct.sXpathFileSpec = type { i8*, i8*, i8*, i8*, i8*, i8* }
%struct.tokenInfo = type { i32, %struct.sVString* }

@.str = private unnamed_addr constant [5 x i8] c"HTML\00", align 1
@HtmlKinds = internal global [4 x %struct.sKindDefinition] [%struct.sKindDefinition { i8 1, i8 97, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 104, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 105, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 106, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }], align 8
@extensions = internal constant [3 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i8* null], align 8
@HtmlKeywordTable = internal constant [23 x %struct.keywordTable] [%struct.keywordTable { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i32 0, i32 0), i32 0 }, %struct.keywordTable { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0), i32 1 }, %struct.keywordTable { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0), i32 2 }, %struct.keywordTable { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0), i32 3 }, %struct.keywordTable { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0), i32 4 }, %struct.keywordTable { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i32 5 }, %struct.keywordTable { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i32 6 }, %struct.keywordTable { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i32 7 }, %struct.keywordTable { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), i32 8 }, %struct.keywordTable { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i32 0, i32 0), i32 9 }, %struct.keywordTable { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i32 0, i32 0), i32 10 }, %struct.keywordTable { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0), i32 11 }, %struct.keywordTable { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i32 12 }, %struct.keywordTable { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i32 0, i32 0), i32 13 }, %struct.keywordTable { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i32 0, i32 0), i32 14 }, %struct.keywordTable { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), i32 15 }, %struct.keywordTable { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i32 0, i32 0), i32 16 }, %struct.keywordTable { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0), i32 17 }, %struct.keywordTable { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0), i32 18 }, %struct.keywordTable { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0), i32 19 }, %struct.keywordTable { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0), i32 20 }, %struct.keywordTable { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0), i32 21 }, %struct.keywordTable { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i32 0, i32 0), i32 22 }], align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"anchor\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"named anchors\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"heading1\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"H1 headings\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"heading2\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"H2 headings\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"heading3\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"H3 headings\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"htm\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"html\00", align 1
@Lang_html = internal global i32 0, align 4
@.str.11 = private unnamed_addr constant [11 x i8] c"JavaScript\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"CSS\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"h1\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"h2\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"h3\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"script\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"style\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"area\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"base\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"br\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"col\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"command\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"embed\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"hr\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"img\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"keygen\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"link\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"meta\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"param\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"source\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"track\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"wbr\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sParserDefinition* @HtmlParser() #0 {
entry:
  %def = alloca %struct.sParserDefinition*, align 8
  %call = call %struct.sParserDefinition* @parserNew(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.sParserDefinition* %call, %struct.sParserDefinition** %def, align 8
  %0 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %0, i32 0, i32 1
  store %struct.sKindDefinition* getelementptr inbounds ([4 x %struct.sKindDefinition], [4 x %struct.sKindDefinition]* @HtmlKinds, i64 0, i64 0), %struct.sKindDefinition** %kindTable, align 8
  %1 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %1, i32 0, i32 2
  store i32 4, i32* %kindCount, align 8
  %2 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %extensions = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %2, i32 0, i32 3
  store i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @extensions, i64 0, i64 0), i8*** %extensions, align 8
  %3 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %parser = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %3, i32 0, i32 8
  store void ()* @findHtmlTags, void ()** %parser, align 8
  %4 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %initialize = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %4, i32 0, i32 6
  store void (i32)* @initialize, void (i32)** %initialize, align 8
  %5 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %keywordTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %5, i32 0, i32 18
  store %struct.keywordTable* getelementptr inbounds ([23 x %struct.keywordTable], [23 x %struct.keywordTable]* @HtmlKeywordTable, i64 0, i64 0), %struct.keywordTable** %keywordTable, align 8
  %6 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %keywordCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %6, i32 0, i32 19
  store i32 23, i32* %keywordCount, align 8
  %7 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  ret %struct.sParserDefinition* %7
}

declare %struct.sParserDefinition* @parserNew(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @findHtmlTags() #0 {
entry:
  %token = alloca %struct.tokenInfo, align 8
  %call = call %struct.sVString* @vStringNew()
  %string = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %token, i32 0, i32 1
  store %struct.sVString* %call, %struct.sVString** %string, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  call void @readToken(%struct.tokenInfo* %token, i1 zeroext true)
  %type = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %token, i32 0, i32 0
  %0 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %0, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  call void @readTag(%struct.tokenInfo* %token, %struct.sVString* null, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %type1 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %token, i32 0, i32 0
  %1 = load i32, i32* %type1, align 8
  %cmp2 = icmp ne i32 %1, 0
  br i1 %cmp2, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %string3 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %token, i32 0, i32 1
  %2 = load %struct.sVString*, %struct.sVString** %string3, align 8
  call void @vStringDelete(%struct.sVString* %2)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @initialize(i32 %language) #0 {
entry:
  %language.addr = alloca i32, align 4
  store i32 %language, i32* %language.addr, align 4
  %0 = load i32, i32* %language.addr, align 4
  store i32 %0, i32* @Lang_html, align 4
  ret void
}

declare %struct.sVString* @vStringNew() #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @readToken(%struct.tokenInfo* %token, i1 zeroext %skipComments) #0 {
entry:
  %token.addr = alloca %struct.tokenInfo*, align 8
  %skipComments.addr = alloca i8, align 1
  %c = alloca i32, align 4
  %vStringClear_s = alloca %struct.sVString*, align 8
  %d = alloca i32, align 4
  %e = alloca i32, align 4
  %f = alloca i32, align 4
  %d39 = alloca i32, align 4
  %delimiter = alloca i32, align 4
  store %struct.tokenInfo* %token, %struct.tokenInfo** %token.addr, align 8
  %frombool = zext i1 %skipComments to i8
  store i8 %frombool, i8* %skipComments.addr, align 1
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %string = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %0, i32 0, i32 1
  %1 = load %struct.sVString*, %struct.sVString** %string, align 8
  store %struct.sVString* %1, %struct.sVString** %vStringClear_s, align 8
  %2 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %2, i32 0, i32 0
  store i64 0, i64* %length, align 8
  %3 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %3, i32 0, i32 2
  %4 = load i8*, i8** %buffer, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 0
  store i8 0, i8* %arrayidx, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %getNextChar

getNextChar:                                      ; preds = %if.then21, %do.end
  %call = call i32 @getcFromInputFile()
  store i32 %call, i32* %c, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %getNextChar
  %5 = load i32, i32* %c, align 4
  %call1 = call i32 @isspace(i32 %5) #3
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call2 = call i32 @getcFromInputFile()
  store i32 %call2, i32* %c, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %6 = load i32, i32* %c, align 4
  switch i32 %6, label %sw.default [
    i32 -1, label %sw.bb
    i32 60, label %sw.bb3
    i32 47, label %sw.bb38
    i32 62, label %sw.bb47
    i32 61, label %sw.bb49
    i32 34, label %sw.bb51
    i32 39, label %sw.bb51
  ]

sw.bb:                                            ; preds = %while.end
  %7 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %7, i32 0, i32 0
  store i32 0, i32* %type, align 8
  br label %sw.epilog

sw.bb3:                                           ; preds = %while.end
  %call4 = call i32 @getcFromInputFile()
  store i32 %call4, i32* %d, align 4
  %8 = load i32, i32* %d, align 4
  %cmp = icmp eq i32 %8, 33
  br i1 %cmp, label %if.then, label %if.else25

if.then:                                          ; preds = %sw.bb3
  %call5 = call i32 @getcFromInputFile()
  store i32 %call5, i32* %d, align 4
  %9 = load i32, i32* %d, align 4
  %cmp6 = icmp eq i32 %9, 45
  br i1 %cmp6, label %if.then7, label %if.end23

if.then7:                                         ; preds = %if.then
  %call8 = call i32 @getcFromInputFile()
  store i32 %call8, i32* %d, align 4
  %10 = load i32, i32* %d, align 4
  %cmp9 = icmp eq i32 %10, 45
  br i1 %cmp9, label %if.then10, label %if.end

if.then10:                                        ; preds = %if.then7
  store i32 32, i32* %e, align 4
  store i32 32, i32* %f, align 4
  br label %do.body11

do.body11:                                        ; preds = %land.end18, %if.then10
  %11 = load i32, i32* %e, align 4
  store i32 %11, i32* %d, align 4
  %12 = load i32, i32* %f, align 4
  store i32 %12, i32* %e, align 4
  %call12 = call i32 @getcFromInputFile()
  store i32 %call12, i32* %f, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body11
  %13 = load i32, i32* %f, align 4
  %cmp13 = icmp ne i32 %13, -1
  br i1 %cmp13, label %land.rhs, label %land.end18

land.rhs:                                         ; preds = %do.cond
  %14 = load i32, i32* %d, align 4
  %cmp14 = icmp eq i32 %14, 45
  br i1 %cmp14, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %land.rhs
  %15 = load i32, i32* %e, align 4
  %cmp15 = icmp eq i32 %15, 45
  br i1 %cmp15, label %land.rhs16, label %land.end

land.rhs16:                                       ; preds = %land.lhs.true
  %16 = load i32, i32* %f, align 4
  %cmp17 = icmp eq i32 %16, 62
  br label %land.end

land.end:                                         ; preds = %land.rhs16, %land.lhs.true, %land.rhs
  %17 = phi i1 [ false, %land.lhs.true ], [ false, %land.rhs ], [ %cmp17, %land.rhs16 ]
  %lnot = xor i1 %17, true
  br label %land.end18

land.end18:                                       ; preds = %land.end, %do.cond
  %18 = phi i1 [ false, %do.cond ], [ %lnot, %land.end ]
  br i1 %18, label %do.body11, label %do.end19

do.end19:                                         ; preds = %land.end18
  %19 = load i8, i8* %skipComments.addr, align 1
  %tobool20 = trunc i8 %19 to i1
  br i1 %tobool20, label %if.then21, label %if.else

if.then21:                                        ; preds = %do.end19
  br label %getNextChar

if.else:                                          ; preds = %do.end19
  %20 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type22 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %20, i32 0, i32 0
  store i32 9, i32* %type22, align 8
  br label %sw.epilog

if.end:                                           ; preds = %if.then7
  br label %if.end23

if.end23:                                         ; preds = %if.end, %if.then
  %21 = load i32, i32* %d, align 4
  call void @ungetcToInputFile(i32 %21)
  %22 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type24 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %22, i32 0, i32 0
  store i32 10, i32* %type24, align 8
  br label %if.end37

if.else25:                                        ; preds = %sw.bb3
  %23 = load i32, i32* %d, align 4
  %cmp26 = icmp eq i32 %23, 63
  br i1 %cmp26, label %if.then27, label %if.else29

if.then27:                                        ; preds = %if.else25
  %24 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type28 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %24, i32 0, i32 0
  store i32 10, i32* %type28, align 8
  br label %if.end36

if.else29:                                        ; preds = %if.else25
  %25 = load i32, i32* %d, align 4
  %cmp30 = icmp eq i32 %25, 47
  br i1 %cmp30, label %if.then31, label %if.else33

if.then31:                                        ; preds = %if.else29
  %26 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type32 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %26, i32 0, i32 0
  store i32 5, i32* %type32, align 8
  br label %if.end35

if.else33:                                        ; preds = %if.else29
  %27 = load i32, i32* %d, align 4
  call void @ungetcToInputFile(i32 %27)
  %28 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type34 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %28, i32 0, i32 0
  store i32 4, i32* %type34, align 8
  br label %if.end35

if.end35:                                         ; preds = %if.else33, %if.then31
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.then27
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.end23
  br label %sw.epilog

sw.bb38:                                          ; preds = %while.end
  %call40 = call i32 @getcFromInputFile()
  store i32 %call40, i32* %d39, align 4
  %29 = load i32, i32* %d39, align 4
  %cmp41 = icmp eq i32 %29, 62
  br i1 %cmp41, label %if.then42, label %if.else44

if.then42:                                        ; preds = %sw.bb38
  %30 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type43 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %30, i32 0, i32 0
  store i32 7, i32* %type43, align 8
  br label %if.end46

if.else44:                                        ; preds = %sw.bb38
  %31 = load i32, i32* %d39, align 4
  call void @ungetcToInputFile(i32 %31)
  %32 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type45 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %32, i32 0, i32 0
  store i32 10, i32* %type45, align 8
  br label %if.end46

if.end46:                                         ; preds = %if.else44, %if.then42
  br label %sw.epilog

sw.bb47:                                          ; preds = %while.end
  %33 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type48 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %33, i32 0, i32 0
  store i32 6, i32* %type48, align 8
  br label %sw.epilog

sw.bb49:                                          ; preds = %while.end
  %34 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type50 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %34, i32 0, i32 0
  store i32 8, i32* %type50, align 8
  br label %sw.epilog

sw.bb51:                                          ; preds = %while.end, %while.end
  %35 = load i32, i32* %c, align 4
  store i32 %35, i32* %delimiter, align 4
  %call52 = call i32 @getcFromInputFile()
  store i32 %call52, i32* %c, align 4
  br label %while.cond53

while.cond53:                                     ; preds = %while.body58, %sw.bb51
  %36 = load i32, i32* %c, align 4
  %cmp54 = icmp ne i32 %36, -1
  br i1 %cmp54, label %land.rhs55, label %land.end57

land.rhs55:                                       ; preds = %while.cond53
  %37 = load i32, i32* %c, align 4
  %38 = load i32, i32* %delimiter, align 4
  %cmp56 = icmp ne i32 %37, %38
  br label %land.end57

land.end57:                                       ; preds = %land.rhs55, %while.cond53
  %39 = phi i1 [ false, %while.cond53 ], [ %cmp56, %land.rhs55 ]
  br i1 %39, label %while.body58, label %while.end61

while.body58:                                     ; preds = %land.end57
  %40 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %string59 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %40, i32 0, i32 1
  %41 = load %struct.sVString*, %struct.sVString** %string59, align 8
  %42 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %41, i32 %42)
  %call60 = call i32 @getcFromInputFile()
  store i32 %call60, i32* %c, align 4
  br label %while.cond53

while.end61:                                      ; preds = %land.end57
  %43 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type62 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %43, i32 0, i32 0
  store i32 2, i32* %type62, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %while.end
  br label %do.body63

do.body63:                                        ; preds = %land.end84, %sw.default
  %44 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %string64 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %44, i32 0, i32 1
  %45 = load %struct.sVString*, %struct.sVString** %string64, align 8
  %46 = load i32, i32* %c, align 4
  %call65 = call i32 @tolower(i32 %46) #3
  call void @vStringPut(%struct.sVString* %45, i32 %call65)
  %call66 = call i32 @getcFromInputFile()
  store i32 %call66, i32* %c, align 4
  br label %do.cond67

do.cond67:                                        ; preds = %do.body63
  %47 = load i32, i32* %c, align 4
  %call68 = call i32 @isspace(i32 %47) #3
  %tobool69 = icmp ne i32 %call68, 0
  br i1 %tobool69, label %land.end84, label %land.lhs.true70

land.lhs.true70:                                  ; preds = %do.cond67
  %48 = load i32, i32* %c, align 4
  %cmp71 = icmp ne i32 %48, 60
  br i1 %cmp71, label %land.lhs.true72, label %land.end84

land.lhs.true72:                                  ; preds = %land.lhs.true70
  %49 = load i32, i32* %c, align 4
  %cmp73 = icmp ne i32 %49, 62
  br i1 %cmp73, label %land.lhs.true74, label %land.end84

land.lhs.true74:                                  ; preds = %land.lhs.true72
  %50 = load i32, i32* %c, align 4
  %cmp75 = icmp ne i32 %50, 47
  br i1 %cmp75, label %land.lhs.true76, label %land.end84

land.lhs.true76:                                  ; preds = %land.lhs.true74
  %51 = load i32, i32* %c, align 4
  %cmp77 = icmp ne i32 %51, 61
  br i1 %cmp77, label %land.lhs.true78, label %land.end84

land.lhs.true78:                                  ; preds = %land.lhs.true76
  %52 = load i32, i32* %c, align 4
  %cmp79 = icmp ne i32 %52, 39
  br i1 %cmp79, label %land.lhs.true80, label %land.end84

land.lhs.true80:                                  ; preds = %land.lhs.true78
  %53 = load i32, i32* %c, align 4
  %cmp81 = icmp ne i32 %53, 34
  br i1 %cmp81, label %land.rhs82, label %land.end84

land.rhs82:                                       ; preds = %land.lhs.true80
  %54 = load i32, i32* %c, align 4
  %cmp83 = icmp ne i32 %54, -1
  br label %land.end84

land.end84:                                       ; preds = %land.rhs82, %land.lhs.true80, %land.lhs.true78, %land.lhs.true76, %land.lhs.true74, %land.lhs.true72, %land.lhs.true70, %do.cond67
  %55 = phi i1 [ false, %land.lhs.true80 ], [ false, %land.lhs.true78 ], [ false, %land.lhs.true76 ], [ false, %land.lhs.true74 ], [ false, %land.lhs.true72 ], [ false, %land.lhs.true70 ], [ false, %do.cond67 ], [ %cmp83, %land.rhs82 ]
  br i1 %55, label %do.body63, label %do.end85

do.end85:                                         ; preds = %land.end84
  %56 = load i32, i32* %c, align 4
  %cmp86 = icmp ne i32 %56, -1
  br i1 %cmp86, label %if.then87, label %if.end88

if.then87:                                        ; preds = %do.end85
  %57 = load i32, i32* %c, align 4
  call void @ungetcToInputFile(i32 %57)
  br label %if.end88

if.end88:                                         ; preds = %if.then87, %do.end85
  %58 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type89 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %58, i32 0, i32 0
  store i32 1, i32* %type89, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end88, %while.end61, %sw.bb49, %sw.bb47, %if.end46, %if.end37, %if.else, %sw.bb
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @readTag(%struct.tokenInfo* %token, %struct.sVString* %text, i32 %depth) #0 {
entry:
  %token.addr = alloca %struct.tokenInfo*, align 8
  %text.addr = alloca %struct.sVString*, align 8
  %depth.addr = alloca i32, align 4
  %textCreated = alloca i8, align 1
  %startTag = alloca i32, align 4
  %isHeading = alloca i8, align 1
  %isVoid = alloca i8, align 1
  %attribute = alloca i32, align 4
  %startSourceLineNumber = alloca i64, align 8
  %startLineNumber = alloca i64, align 8
  %startLineOffset = alloca i64, align 8
  %endLineNumber = alloca i64, align 8
  %endLineOffset = alloca i64, align 8
  %tag_start2 = alloca i8, align 1
  %script = alloca i8, align 1
  %endTag = alloca i32, align 4
  %headingKind = alloca i32, align 4
  %endTag98 = alloca i32, align 4
  store %struct.tokenInfo* %token, %struct.tokenInfo** %token.addr, align 8
  store %struct.sVString* %text, %struct.sVString** %text.addr, align 8
  store i32 %depth, i32* %depth.addr, align 4
  store i8 0, i8* %textCreated, align 1
  %0 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @readToken(%struct.tokenInfo* %0, i1 zeroext true)
  %1 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %1, i32 0, i32 0
  %2 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %2, 1
  br i1 %cmp, label %if.then, label %if.end111

if.then:                                          ; preds = %entry
  %3 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %string = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %3, i32 0, i32 1
  %4 = load %struct.sVString*, %struct.sVString** %string, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %4, i32 0, i32 2
  %5 = load i8*, i8** %buffer, align 8
  %6 = load i32, i32* @Lang_html, align 4
  %call = call i32 @lookupKeyword(i8* %5, i32 %6)
  store i32 %call, i32* %startTag, align 4
  %7 = load i32, i32* %startTag, align 4
  %cmp1 = icmp eq i32 %7, 0
  br i1 %cmp1, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %8 = load i32, i32* %startTag, align 4
  %cmp2 = icmp eq i32 %8, 1
  br i1 %cmp2, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %9 = load i32, i32* %startTag, align 4
  %cmp3 = icmp eq i32 %9, 2
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %if.then
  %10 = phi i1 [ true, %lor.lhs.false ], [ true, %if.then ], [ %cmp3, %lor.rhs ]
  %frombool = zext i1 %10 to i8
  store i8 %frombool, i8* %isHeading, align 1
  %11 = load i32, i32* %startTag, align 4
  %cmp4 = icmp uge i32 %11, 7
  br i1 %cmp4, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.end
  %12 = load i32, i32* %startTag, align 4
  %cmp5 = icmp ule i32 %12, 22
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.end
  %13 = phi i1 [ false, %lor.end ], [ %cmp5, %land.rhs ]
  %frombool6 = zext i1 %13 to i8
  store i8 %frombool6, i8* %isVoid, align 1
  %14 = load %struct.sVString*, %struct.sVString** %text.addr, align 8
  %cmp7 = icmp eq %struct.sVString* %14, null
  br i1 %cmp7, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %land.end
  %15 = load i8, i8* %isHeading, align 1
  %tobool = trunc i8 %15 to i1
  br i1 %tobool, label %if.then8, label %if.end

if.then8:                                         ; preds = %land.lhs.true
  %call9 = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call9, %struct.sVString** %text.addr, align 8
  store i8 1, i8* %textCreated, align 1
  br label %if.end

if.end:                                           ; preds = %if.then8, %land.lhs.true, %land.end
  br label %do.body

do.body:                                          ; preds = %land.end43, %if.end
  %16 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @readToken(%struct.tokenInfo* %16, i1 zeroext true)
  %17 = load i32, i32* %startTag, align 4
  %cmp10 = icmp eq i32 %17, 3
  br i1 %cmp10, label %land.lhs.true11, label %if.end34

land.lhs.true11:                                  ; preds = %do.body
  %18 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type12 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %18, i32 0, i32 0
  %19 = load i32, i32* %type12, align 8
  %cmp13 = icmp eq i32 %19, 1
  br i1 %cmp13, label %if.then14, label %if.end34

if.then14:                                        ; preds = %land.lhs.true11
  %20 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %string15 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %20, i32 0, i32 1
  %21 = load %struct.sVString*, %struct.sVString** %string15, align 8
  %buffer16 = getelementptr inbounds %struct.sVString, %struct.sVString* %21, i32 0, i32 2
  %22 = load i8*, i8** %buffer16, align 8
  %23 = load i32, i32* @Lang_html, align 4
  %call17 = call i32 @lookupKeyword(i8* %22, i32 %23)
  store i32 %call17, i32* %attribute, align 4
  %24 = load i32, i32* %attribute, align 4
  %cmp18 = icmp eq i32 %24, 6
  br i1 %cmp18, label %if.then19, label %if.end33

if.then19:                                        ; preds = %if.then14
  %25 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @readToken(%struct.tokenInfo* %25, i1 zeroext true)
  %26 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type20 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %26, i32 0, i32 0
  %27 = load i32, i32* %type20, align 8
  %cmp21 = icmp eq i32 %27, 8
  br i1 %cmp21, label %if.then22, label %if.end32

if.then22:                                        ; preds = %if.then19
  %28 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @readToken(%struct.tokenInfo* %28, i1 zeroext true)
  %29 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type23 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %29, i32 0, i32 0
  %30 = load i32, i32* %type23, align 8
  %cmp24 = icmp eq i32 %30, 2
  br i1 %cmp24, label %if.then28, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %if.then22
  %31 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type26 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %31, i32 0, i32 0
  %32 = load i32, i32* %type26, align 8
  %cmp27 = icmp eq i32 %32, 1
  br i1 %cmp27, label %if.then28, label %if.end31

if.then28:                                        ; preds = %lor.lhs.false25, %if.then22
  %33 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %string29 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %33, i32 0, i32 1
  %34 = load %struct.sVString*, %struct.sVString** %string29, align 8
  %call30 = call i32 @makeSimpleTag(%struct.sVString* %34, i32 0)
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %lor.lhs.false25
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %if.then19
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.then14
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %land.lhs.true11, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end34
  %35 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type35 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %35, i32 0, i32 0
  %36 = load i32, i32* %type35, align 8
  %cmp36 = icmp ne i32 %36, 6
  br i1 %cmp36, label %land.lhs.true37, label %land.end43

land.lhs.true37:                                  ; preds = %do.cond
  %37 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type38 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %37, i32 0, i32 0
  %38 = load i32, i32* %type38, align 8
  %cmp39 = icmp ne i32 %38, 7
  br i1 %cmp39, label %land.rhs40, label %land.end43

land.rhs40:                                       ; preds = %land.lhs.true37
  %39 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type41 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %39, i32 0, i32 0
  %40 = load i32, i32* %type41, align 8
  %cmp42 = icmp ne i32 %40, 0
  br label %land.end43

land.end43:                                       ; preds = %land.rhs40, %land.lhs.true37, %do.cond
  %41 = phi i1 [ false, %land.lhs.true37 ], [ false, %do.cond ], [ %cmp42, %land.rhs40 ]
  br i1 %41, label %do.body, label %do.end

do.end:                                           ; preds = %land.end43
  %42 = load i8, i8* %isVoid, align 1
  %tobool44 = trunc i8 %42 to i1
  br i1 %tobool44, label %if.end110, label %land.lhs.true45

land.lhs.true45:                                  ; preds = %do.end
  %43 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type46 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %43, i32 0, i32 0
  %44 = load i32, i32* %type46, align 8
  %cmp47 = icmp eq i32 %44, 6
  br i1 %cmp47, label %land.lhs.true48, label %if.end110

land.lhs.true48:                                  ; preds = %land.lhs.true45
  %45 = load i32, i32* %depth.addr, align 4
  %cmp49 = icmp slt i32 %45, 1000
  br i1 %cmp49, label %if.then50, label %if.end110

if.then50:                                        ; preds = %land.lhs.true48
  %call51 = call i64 @getSourceLineNumber()
  store i64 %call51, i64* %startSourceLineNumber, align 8
  %call52 = call i64 @getInputLineNumber()
  store i64 %call52, i64* %startLineNumber, align 8
  %call53 = call i32 @getInputLineOffset()
  %conv = sext i32 %call53 to i64
  store i64 %conv, i64* %startLineOffset, align 8
  %46 = load i32, i32* %startTag, align 4
  %cmp54 = icmp eq i32 %46, 4
  br i1 %cmp54, label %if.then56, label %if.end63

if.then56:                                        ; preds = %if.then50
  %47 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %call57 = call zeroext i1 @skipScriptContent(%struct.tokenInfo* %47, i64* %endLineNumber, i64* %endLineOffset)
  %frombool58 = zext i1 %call57 to i8
  store i8 %frombool58, i8* %script, align 1
  %48 = load i8, i8* %script, align 1
  %tobool59 = trunc i8 %48 to i1
  br i1 %tobool59, label %if.then60, label %if.end62

if.then60:                                        ; preds = %if.then56
  %49 = load i64, i64* %startLineNumber, align 8
  %50 = load i64, i64* %startLineOffset, align 8
  %51 = load i64, i64* %endLineNumber, align 8
  %52 = load i64, i64* %endLineOffset, align 8
  %53 = load i64, i64* %startSourceLineNumber, align 8
  %call61 = call i32 @makePromise(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i64 %49, i64 %50, i64 %51, i64 %52, i64 %53)
  br label %if.end62

if.end62:                                         ; preds = %if.then60, %if.then56
  %54 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @readToken(%struct.tokenInfo* %54, i1 zeroext true)
  br label %out

if.end63:                                         ; preds = %if.then50
  %55 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %56 = load %struct.sVString*, %struct.sVString** %text.addr, align 8
  %57 = load i32, i32* %depth.addr, align 4
  %call64 = call zeroext i1 @readTagContent(%struct.tokenInfo* %55, %struct.sVString* %56, i64* %endLineNumber, i64* %endLineOffset, i32 %57)
  %frombool65 = zext i1 %call64 to i8
  store i8 %frombool65, i8* %tag_start2, align 1
  %58 = load i8, i8* %tag_start2, align 1
  %tobool66 = trunc i8 %58 to i1
  br i1 %tobool66, label %if.then67, label %if.end109

if.then67:                                        ; preds = %if.end63
  %59 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @readToken(%struct.tokenInfo* %59, i1 zeroext true)
  %60 = load i8, i8* %isHeading, align 1
  %tobool68 = trunc i8 %60 to i1
  br i1 %tobool68, label %land.lhs.true70, label %if.else94

land.lhs.true70:                                  ; preds = %if.then67
  %61 = load i8, i8* %textCreated, align 1
  %tobool71 = trunc i8 %61 to i1
  br i1 %tobool71, label %land.lhs.true73, label %if.else94

land.lhs.true73:                                  ; preds = %land.lhs.true70
  %62 = load %struct.sVString*, %struct.sVString** %text.addr, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %62, i32 0, i32 0
  %63 = load i64, i64* %length, align 8
  %cmp74 = icmp ugt i64 %63, 0
  br i1 %cmp74, label %if.then76, label %if.else94

if.then76:                                        ; preds = %land.lhs.true73
  %64 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %string77 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %64, i32 0, i32 1
  %65 = load %struct.sVString*, %struct.sVString** %string77, align 8
  %buffer78 = getelementptr inbounds %struct.sVString, %struct.sVString* %65, i32 0, i32 2
  %66 = load i8*, i8** %buffer78, align 8
  %67 = load i32, i32* @Lang_html, align 4
  %call79 = call i32 @lookupKeyword(i8* %66, i32 %67)
  store i32 %call79, i32* %endTag, align 4
  %68 = load i32, i32* %startTag, align 4
  %69 = load i32, i32* %endTag, align 4
  %cmp80 = icmp eq i32 %68, %69
  br i1 %cmp80, label %if.then82, label %if.end93

if.then82:                                        ; preds = %if.then76
  %70 = load i32, i32* %startTag, align 4
  %cmp83 = icmp eq i32 %70, 0
  br i1 %cmp83, label %if.then85, label %if.else

if.then85:                                        ; preds = %if.then82
  store i32 1, i32* %headingKind, align 4
  br label %if.end91

if.else:                                          ; preds = %if.then82
  %71 = load i32, i32* %startTag, align 4
  %cmp86 = icmp eq i32 %71, 1
  br i1 %cmp86, label %if.then88, label %if.else89

if.then88:                                        ; preds = %if.else
  store i32 2, i32* %headingKind, align 4
  br label %if.end90

if.else89:                                        ; preds = %if.else
  store i32 3, i32* %headingKind, align 4
  br label %if.end90

if.end90:                                         ; preds = %if.else89, %if.then88
  br label %if.end91

if.end91:                                         ; preds = %if.end90, %if.then85
  %72 = load %struct.sVString*, %struct.sVString** %text.addr, align 8
  call void @vStringStripLeading(%struct.sVString* %72)
  %73 = load %struct.sVString*, %struct.sVString** %text.addr, align 8
  call void @vStringStripTrailing(%struct.sVString* %73)
  %74 = load %struct.sVString*, %struct.sVString** %text.addr, align 8
  %75 = load i32, i32* %headingKind, align 4
  %call92 = call i32 @makeSimpleTag(%struct.sVString* %74, i32 %75)
  br label %if.end93

if.end93:                                         ; preds = %if.end91, %if.then76
  br label %if.end108

if.else94:                                        ; preds = %land.lhs.true73, %land.lhs.true70, %if.then67
  %76 = load i32, i32* %startTag, align 4
  %cmp95 = icmp eq i32 %76, 5
  br i1 %cmp95, label %if.then97, label %if.end107

if.then97:                                        ; preds = %if.else94
  %77 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %string99 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %77, i32 0, i32 1
  %78 = load %struct.sVString*, %struct.sVString** %string99, align 8
  %buffer100 = getelementptr inbounds %struct.sVString, %struct.sVString* %78, i32 0, i32 2
  %79 = load i8*, i8** %buffer100, align 8
  %80 = load i32, i32* @Lang_html, align 4
  %call101 = call i32 @lookupKeyword(i8* %79, i32 %80)
  store i32 %call101, i32* %endTag98, align 4
  %81 = load i32, i32* %startTag, align 4
  %82 = load i32, i32* %endTag98, align 4
  %cmp102 = icmp eq i32 %81, %82
  br i1 %cmp102, label %if.then104, label %if.end106

if.then104:                                       ; preds = %if.then97
  %83 = load i64, i64* %startLineNumber, align 8
  %84 = load i64, i64* %startLineOffset, align 8
  %85 = load i64, i64* %endLineNumber, align 8
  %86 = load i64, i64* %endLineOffset, align 8
  %87 = load i64, i64* %startSourceLineNumber, align 8
  %call105 = call i32 @makePromise(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 %83, i64 %84, i64 %85, i64 %86, i64 %87)
  br label %if.end106

if.end106:                                        ; preds = %if.then104, %if.then97
  br label %if.end107

if.end107:                                        ; preds = %if.end106, %if.else94
  br label %if.end108

if.end108:                                        ; preds = %if.end107, %if.end93
  %88 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @readToken(%struct.tokenInfo* %88, i1 zeroext true)
  br label %if.end109

if.end109:                                        ; preds = %if.end108, %if.end63
  br label %if.end110

if.end110:                                        ; preds = %if.end109, %land.lhs.true48, %land.lhs.true45, %do.end
  br label %if.end111

if.end111:                                        ; preds = %if.end110, %entry
  br label %out

out:                                              ; preds = %if.end111, %if.end62
  %89 = load i8, i8* %textCreated, align 1
  %tobool112 = trunc i8 %89 to i1
  br i1 %tobool112, label %if.then113, label %if.end114

if.then113:                                       ; preds = %out
  %90 = load %struct.sVString*, %struct.sVString** %text.addr, align 8
  call void @vStringDelete(%struct.sVString* %90)
  br label %if.end114

if.end114:                                        ; preds = %if.then113, %out
  ret void
}

declare void @vStringDelete(%struct.sVString*) #1

declare i32 @getcFromInputFile() #1

; Function Attrs: nounwind readonly
declare i32 @isspace(i32) #2

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
declare i32 @tolower(i32) #2

declare void @vStringResize(%struct.sVString*, i64) #1

declare i32 @lookupKeyword(i8*, i32) #1

declare i32 @makeSimpleTag(%struct.sVString*, i32) #1

declare i64 @getSourceLineNumber() #1

declare i64 @getInputLineNumber() #1

declare i32 @getInputLineOffset() #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @skipScriptContent(%struct.tokenInfo* %token, i64* %line, i64* %lineOffset) #0 {
entry:
  %token.addr = alloca %struct.tokenInfo*, align 8
  %line.addr = alloca i64*, align 8
  %lineOffset.addr = alloca i64*, align 8
  %found_start = alloca i8, align 1
  %found_script = alloca i8, align 1
  %line_tmp = alloca [2 x i64], align 8
  %lineOffset_tmp = alloca [2 x i64], align 8
  %type = alloca i32, align 4
  store %struct.tokenInfo* %token, %struct.tokenInfo** %token.addr, align 8
  store i64* %line, i64** %line.addr, align 8
  store i64* %lineOffset, i64** %lineOffset.addr, align 8
  store i8 0, i8* %found_start, align 1
  store i8 0, i8* %found_script, align 1
  br label %do.body

do.body:                                          ; preds = %land.end, %entry
  %call = call i64 @getInputLineNumber()
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %line_tmp, i64 0, i64 0
  store i64 %call, i64* %arrayidx, align 8
  %call1 = call i32 @getInputLineOffset()
  %conv = sext i32 %call1 to i64
  %arrayidx2 = getelementptr inbounds [2 x i64], [2 x i64]* %lineOffset_tmp, i64 0, i64 0
  store i64 %conv, i64* %arrayidx2, align 8
  %0 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @readToken(%struct.tokenInfo* %0, i1 zeroext false)
  %1 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type3 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %1, i32 0, i32 0
  %2 = load i32, i32* %type3, align 8
  store i32 %2, i32* %type, align 4
  %3 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %3, 5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  store i8 1, i8* %found_start, align 1
  %arrayidx5 = getelementptr inbounds [2 x i64], [2 x i64]* %line_tmp, i64 0, i64 0
  %4 = load i64, i64* %arrayidx5, align 8
  %arrayidx6 = getelementptr inbounds [2 x i64], [2 x i64]* %line_tmp, i64 0, i64 1
  store i64 %4, i64* %arrayidx6, align 8
  %arrayidx7 = getelementptr inbounds [2 x i64], [2 x i64]* %lineOffset_tmp, i64 0, i64 0
  %5 = load i64, i64* %arrayidx7, align 8
  %arrayidx8 = getelementptr inbounds [2 x i64], [2 x i64]* %lineOffset_tmp, i64 0, i64 1
  store i64 %5, i64* %arrayidx8, align 8
  br label %if.end20

if.else:                                          ; preds = %do.body
  %6 = load i8, i8* %found_start, align 1
  %tobool = trunc i8 %6 to i1
  br i1 %tobool, label %land.lhs.true, label %if.else19

land.lhs.true:                                    ; preds = %if.else
  %7 = load i32, i32* %type, align 4
  %cmp10 = icmp eq i32 %7, 1
  br i1 %cmp10, label %land.lhs.true12, label %if.else19

land.lhs.true12:                                  ; preds = %land.lhs.true
  %8 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %string = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %8, i32 0, i32 1
  %9 = load %struct.sVString*, %struct.sVString** %string, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %9, i32 0, i32 2
  %10 = load i8*, i8** %buffer, align 8
  %11 = load i32, i32* @Lang_html, align 4
  %call13 = call i32 @lookupKeyword(i8* %10, i32 %11)
  %cmp14 = icmp eq i32 %call13, 4
  br i1 %cmp14, label %if.then16, label %if.else19

if.then16:                                        ; preds = %land.lhs.true12
  store i8 1, i8* %found_script, align 1
  %arrayidx17 = getelementptr inbounds [2 x i64], [2 x i64]* %line_tmp, i64 0, i64 1
  %12 = load i64, i64* %arrayidx17, align 8
  %13 = load i64*, i64** %line.addr, align 8
  store i64 %12, i64* %13, align 8
  %arrayidx18 = getelementptr inbounds [2 x i64], [2 x i64]* %lineOffset_tmp, i64 0, i64 1
  %14 = load i64, i64* %arrayidx18, align 8
  %15 = load i64*, i64** %lineOffset.addr, align 8
  store i64 %14, i64* %15, align 8
  br label %if.end

if.else19:                                        ; preds = %land.lhs.true12, %land.lhs.true, %if.else
  store i8 0, i8* %found_start, align 1
  br label %if.end

if.end:                                           ; preds = %if.else19, %if.then16
  br label %if.end20

if.end20:                                         ; preds = %if.end, %if.then
  br label %do.cond

do.cond:                                          ; preds = %if.end20
  %16 = load i32, i32* %type, align 4
  %cmp21 = icmp ne i32 %16, 0
  br i1 %cmp21, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %17 = load i8, i8* %found_script, align 1
  %tobool23 = trunc i8 %17 to i1
  %lnot = xor i1 %tobool23, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %18 = phi i1 [ false, %do.cond ], [ %lnot, %land.rhs ]
  br i1 %18, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  %19 = load i8, i8* %found_script, align 1
  %tobool24 = trunc i8 %19 to i1
  ret i1 %tobool24
}

declare i32 @makePromise(i8*, i64, i64, i64, i64, i64) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @readTagContent(%struct.tokenInfo* %token, %struct.sVString* %text, i64* %line, i64* %lineOffset, i32 %depth) #0 {
entry:
  %token.addr = alloca %struct.tokenInfo*, align 8
  %text.addr = alloca %struct.sVString*, align 8
  %line.addr = alloca i64*, align 8
  %lineOffset.addr = alloca i64*, align 8
  %depth.addr = alloca i32, align 4
  %type = alloca i32, align 4
  store %struct.tokenInfo* %token, %struct.tokenInfo** %token.addr, align 8
  store %struct.sVString* %text, %struct.sVString** %text.addr, align 8
  store i64* %line, i64** %line.addr, align 8
  store i64* %lineOffset, i64** %lineOffset.addr, align 8
  store i32 %depth, i32* %depth.addr, align 4
  %0 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %1 = load %struct.sVString*, %struct.sVString** %text.addr, align 8
  %cmp = icmp ne %struct.sVString* %1, null
  call void @readTokenText(%struct.tokenInfo* %0, i1 zeroext %cmp)
  %2 = load %struct.sVString*, %struct.sVString** %text.addr, align 8
  %3 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %string = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %3, i32 0, i32 1
  %4 = load %struct.sVString*, %struct.sVString** %string, align 8
  call void @appendText(%struct.sVString* %2, %struct.sVString* %4)
  br label %do.body

do.body:                                          ; preds = %lor.end, %entry
  %call = call i64 @getInputLineNumber()
  %5 = load i64*, i64** %line.addr, align 8
  store i64 %call, i64* %5, align 8
  %call1 = call i32 @getInputLineOffset()
  %conv = sext i32 %call1 to i64
  %6 = load i64*, i64** %lineOffset.addr, align 8
  store i64 %conv, i64* %6, align 8
  %7 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @readToken(%struct.tokenInfo* %7, i1 zeroext false)
  %8 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type2 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %8, i32 0, i32 0
  %9 = load i32, i32* %type2, align 8
  store i32 %9, i32* %type, align 4
  %10 = load i32, i32* %type, align 4
  %cmp3 = icmp eq i32 %10, 4
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %11 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %12 = load %struct.sVString*, %struct.sVString** %text.addr, align 8
  %13 = load i32, i32* %depth.addr, align 4
  %add = add nsw i32 %13, 1
  call void @readTag(%struct.tokenInfo* %11, %struct.sVString* %12, i32 %add)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  %14 = load i32, i32* %type, align 4
  %cmp5 = icmp eq i32 %14, 9
  br i1 %cmp5, label %if.then9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %15 = load i32, i32* %type, align 4
  %cmp7 = icmp eq i32 %15, 4
  br i1 %cmp7, label %if.then9, label %if.end13

if.then9:                                         ; preds = %lor.lhs.false, %if.end
  %16 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %17 = load %struct.sVString*, %struct.sVString** %text.addr, align 8
  %cmp10 = icmp ne %struct.sVString* %17, null
  call void @readTokenText(%struct.tokenInfo* %16, i1 zeroext %cmp10)
  %18 = load %struct.sVString*, %struct.sVString** %text.addr, align 8
  %19 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %string12 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %19, i32 0, i32 1
  %20 = load %struct.sVString*, %struct.sVString** %string12, align 8
  call void @appendText(%struct.sVString* %18, %struct.sVString* %20)
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %lor.lhs.false
  br label %do.cond

do.cond:                                          ; preds = %if.end13
  %21 = load i32, i32* %type, align 4
  %cmp14 = icmp eq i32 %21, 9
  br i1 %cmp14, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %do.cond
  %22 = load i32, i32* %type, align 4
  %cmp16 = icmp eq i32 %22, 4
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %do.cond
  %23 = phi i1 [ true, %do.cond ], [ %cmp16, %lor.rhs ]
  br i1 %23, label %do.body, label %do.end

do.end:                                           ; preds = %lor.end
  %24 = load i32, i32* %type, align 4
  %cmp18 = icmp eq i32 %24, 5
  ret i1 %cmp18
}

declare void @vStringStripLeading(%struct.sVString*) #1

declare void @vStringStripTrailing(%struct.sVString*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @readTokenText(%struct.tokenInfo* %token, i1 zeroext %collectText) #0 {
entry:
  %token.addr = alloca %struct.tokenInfo*, align 8
  %collectText.addr = alloca i8, align 1
  %c = alloca i32, align 4
  %lastC = alloca i32, align 4
  %vStringClear_s = alloca %struct.sVString*, align 8
  store %struct.tokenInfo* %token, %struct.tokenInfo** %token.addr, align 8
  %frombool = zext i1 %collectText to i8
  store i8 %frombool, i8* %collectText.addr, align 1
  store i32 88, i32* %lastC, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %string = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %0, i32 0, i32 1
  %1 = load %struct.sVString*, %struct.sVString** %string, align 8
  store %struct.sVString* %1, %struct.sVString** %vStringClear_s, align 8
  %2 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %2, i32 0, i32 0
  store i64 0, i64* %length, align 8
  %3 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %3, i32 0, i32 2
  %4 = load i8*, i8** %buffer, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 0
  store i8 0, i8* %arrayidx, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %getNextChar

getNextChar:                                      ; preds = %if.end10, %do.end
  %call = call i32 @getcFromInputFile()
  store i32 %call, i32* %c, align 4
  %5 = load i32, i32* %c, align 4
  switch i32 %5, label %sw.default [
    i32 -1, label %sw.bb
    i32 60, label %sw.bb1
  ]

sw.bb:                                            ; preds = %getNextChar
  %6 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %6, i32 0, i32 0
  store i32 0, i32* %type, align 8
  br label %sw.epilog

sw.bb1:                                           ; preds = %getNextChar
  %7 = load i32, i32* %c, align 4
  call void @ungetcToInputFile(i32 %7)
  %8 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type2 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %8, i32 0, i32 0
  store i32 3, i32* %type2, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %getNextChar
  %9 = load i8, i8* %collectText.addr, align 1
  %tobool = trunc i8 %9 to i1
  br i1 %tobool, label %if.then, label %if.end10

if.then:                                          ; preds = %sw.default
  %10 = load i32, i32* %c, align 4
  %call3 = call i32 @isspace(i32 %10) #3
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  store i32 32, i32* %c, align 4
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then
  %11 = load i32, i32* %c, align 4
  %cmp = icmp ne i32 %11, 32
  br i1 %cmp, label %if.then7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %12 = load i32, i32* %lastC, align 4
  %cmp6 = icmp ne i32 %12, 32
  br i1 %cmp6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %lor.lhs.false, %if.end
  %13 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %string8 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %13, i32 0, i32 1
  %14 = load %struct.sVString*, %struct.sVString** %string8, align 8
  %15 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %14, i32 %15)
  %16 = load i32, i32* %c, align 4
  store i32 %16, i32* %lastC, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %lor.lhs.false
  br label %if.end10

if.end10:                                         ; preds = %if.end9, %sw.default
  br label %getNextChar

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @appendText(%struct.sVString* %text, %struct.sVString* %appendedText) #0 {
entry:
  %text.addr = alloca %struct.sVString*, align 8
  %appendedText.addr = alloca %struct.sVString*, align 8
  store %struct.sVString* %text, %struct.sVString** %text.addr, align 8
  store %struct.sVString* %appendedText, %struct.sVString** %appendedText.addr, align 8
  %0 = load %struct.sVString*, %struct.sVString** %text.addr, align 8
  %cmp = icmp ne %struct.sVString* %0, null
  br i1 %cmp, label %land.lhs.true, label %if.end19

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.sVString*, %struct.sVString** %appendedText.addr, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %1, i32 0, i32 0
  %2 = load i64, i64* %length, align 8
  %cmp1 = icmp ugt i64 %2, 0
  br i1 %cmp1, label %if.then, label %if.end19

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct.sVString*, %struct.sVString** %text.addr, align 8
  %length2 = getelementptr inbounds %struct.sVString, %struct.sVString* %3, i32 0, i32 0
  %4 = load i64, i64* %length2, align 8
  %cmp3 = icmp ugt i64 %4, 0
  br i1 %cmp3, label %land.lhs.true4, label %if.end

land.lhs.true4:                                   ; preds = %if.then
  %5 = load %struct.sVString*, %struct.sVString** %text.addr, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %5, i32 0, i32 2
  %6 = load i8*, i8** %buffer, align 8
  %7 = load %struct.sVString*, %struct.sVString** %text.addr, align 8
  %length5 = getelementptr inbounds %struct.sVString, %struct.sVString* %7, i32 0, i32 0
  %8 = load i64, i64* %length5, align 8
  %sub = sub i64 %8, 1
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 %sub
  %9 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %9 to i32
  %cmp6 = icmp eq i32 %conv, 32
  br i1 %cmp6, label %land.lhs.true8, label %if.end

land.lhs.true8:                                   ; preds = %land.lhs.true4
  %10 = load %struct.sVString*, %struct.sVString** %appendedText.addr, align 8
  %length9 = getelementptr inbounds %struct.sVString, %struct.sVString* %10, i32 0, i32 0
  %11 = load i64, i64* %length9, align 8
  %cmp10 = icmp ugt i64 %11, 0
  br i1 %cmp10, label %land.lhs.true12, label %if.end

land.lhs.true12:                                  ; preds = %land.lhs.true8
  %12 = load %struct.sVString*, %struct.sVString** %appendedText.addr, align 8
  %buffer13 = getelementptr inbounds %struct.sVString, %struct.sVString* %12, i32 0, i32 2
  %13 = load i8*, i8** %buffer13, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %13, i64 0
  %14 = load i8, i8* %arrayidx14, align 1
  %conv15 = sext i8 %14 to i32
  %cmp16 = icmp eq i32 %conv15, 32
  br i1 %cmp16, label %if.then18, label %if.end

if.then18:                                        ; preds = %land.lhs.true12
  %15 = load %struct.sVString*, %struct.sVString** %text.addr, align 8
  call void @vStringStripTrailing(%struct.sVString* %15)
  br label %if.end

if.end:                                           ; preds = %if.then18, %land.lhs.true12, %land.lhs.true8, %land.lhs.true4, %if.then
  %16 = load %struct.sVString*, %struct.sVString** %text.addr, align 8
  %17 = load %struct.sVString*, %struct.sVString** %appendedText.addr, align 8
  call void @vStringCat(%struct.sVString* %16, %struct.sVString* %17)
  br label %if.end19

if.end19:                                         ; preds = %if.end, %land.lhs.true, %entry
  ret void
}

declare void @vStringCat(%struct.sVString*, %struct.sVString*) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 10.0.0 (https://github.com/holzschu/clang.git 0cfc630fbdb62e96720b611a57123ef3eb13e297) (https://github.com/holzschu/llvm.git 0d8a71e39b28502c24718f7e74b5acbcfe36dfe0)"}
