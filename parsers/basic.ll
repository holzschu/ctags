; ModuleID = 'basic.c'
source_filename = "basic.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-ios11.0.0"

%struct.sKindDefinition = type { i8, i8, i8*, i8*, i8, i32, %struct.sRoleDesc*, %struct.sScopeSeparator*, i32, i32, i32, %struct.sKindDefinition*, %struct.sKindDefinition* }
%struct.sRoleDesc = type { i8, i8*, i8* }
%struct.sScopeSeparator = type { i32, i8* }
%struct.KeyWord = type { i8*, i32, i32 }
%struct.sParserDefinition = type { i8*, %struct.sKindDefinition*, i32, i8**, i8**, i8**, void (i32)*, void (i32, i1)*, void ()*, i32 (i32)*, i8* (%struct._MIO*, i32*, i32)**, i32, i8, i8, i8, i8, %struct.tagRegexTable*, i32, %struct.keywordTable*, i32, %struct.sTagXpathTableTable*, i32, i8, %struct.sFieldDefinition*, i32, %struct.sXtagDefinition*, i32, %struct.sParserDependency*, i32, %struct.sParameterHandlerTable*, i32, %struct.sXpathFileSpec*, i32, i32, i8 }
%struct._MIO = type opaque
%struct.tagRegexTable = type { i8*, i8*, i8*, i8*, i8*, i8 }
%struct.keywordTable = type { i8*, i32 }
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

@BasicParser.extensions = internal global [5 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8* null], align 8
@.str = private unnamed_addr constant [4 x i8] c"bas\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"bi\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"bb\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"pb\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"Basic\00", align 1
@BasicKinds = internal global [6 x %struct.sKindDefinition] [%struct.sKindDefinition { i8 1, i8 99, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 102, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 108, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 116, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 118, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 103, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }], align 8
@.str.5 = private unnamed_addr constant [9 x i8] c"constant\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"constants\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"function\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"functions\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"labels\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"types\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"variable\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"variables\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"enum\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"enumerations\00", align 1
@blitzbasic_keywords = internal global [6 x %struct.KeyWord] [%struct.KeyWord { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i32 0, i32 0 }, %struct.KeyWord { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0), i32 4, i32 0 }, %struct.KeyWord { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i32 0, i32 0), i32 4, i32 0 }, %struct.KeyWord { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i32 1, i32 0 }, %struct.KeyWord { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i32 3, i32 0 }, %struct.KeyWord zeroinitializer], align 8
@purebasic_keywords = internal global [7 x %struct.KeyWord] [%struct.KeyWord { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i32 4, i32 0 }, %struct.KeyWord { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0), i32 4, i32 0 }, %struct.KeyWord { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i32 0, i32 0), i32 4, i32 0 }, %struct.KeyWord { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i32 1, i32 0 }, %struct.KeyWord { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i32 3, i32 0 }, %struct.KeyWord { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), i32 3, i32 0 }, %struct.KeyWord zeroinitializer], align 8
@freebasic_keywords = internal global [13 x %struct.KeyWord] [%struct.KeyWord { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i32 0, i32 0 }, %struct.KeyWord { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i32 0, i32 0), i32 4, i32 1 }, %struct.KeyWord { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i32 0, i32 0), i32 4, i32 0 }, %struct.KeyWord { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0), i32 4, i32 0 }, %struct.KeyWord { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i32 1, i32 0 }, %struct.KeyWord { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i32 1, i32 0 }, %struct.KeyWord { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i32 0, i32 0), i32 1, i32 0 }, %struct.KeyWord { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i32 0, i32 0), i32 1, i32 0 }, %struct.KeyWord { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.29, i32 0, i32 0), i32 1, i32 0 }, %struct.KeyWord { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.30, i32 0, i32 0), i32 1, i32 0 }, %struct.KeyWord { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i32 3, i32 0 }, %struct.KeyWord { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i32 5, i32 0 }, %struct.KeyWord zeroinitializer], align 8
@.str.17 = private unnamed_addr constant [6 x i8] c"const\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"global\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"dim\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"newlist\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"procedure\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"interface\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"structure\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"dim as\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"common\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"sub\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"private sub\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"public sub\00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c"private function\00", align 1
@.str.30 = private unnamed_addr constant [16 x i8] c"public function\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sParserDefinition* @BasicParser() #0 {
entry:
  %def = alloca %struct.sParserDefinition*, align 8
  %call = call %struct.sParserDefinition* @parserNew(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  store %struct.sParserDefinition* %call, %struct.sParserDefinition** %def, align 8
  %0 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %0, i32 0, i32 1
  store %struct.sKindDefinition* getelementptr inbounds ([6 x %struct.sKindDefinition], [6 x %struct.sKindDefinition]* @BasicKinds, i64 0, i64 0), %struct.sKindDefinition** %kindTable, align 8
  %1 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %1, i32 0, i32 2
  store i32 6, i32* %kindCount, align 8
  %2 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %extensions = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %2, i32 0, i32 3
  store i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @BasicParser.extensions, i64 0, i64 0), i8*** %extensions, align 8
  %3 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %parser = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %3, i32 0, i32 8
  store void ()* @findBasicTags, void ()** %parser, align 8
  %4 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  ret %struct.sParserDefinition* %4
}

declare %struct.sParserDefinition* @parserNew(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @findBasicTags() #0 {
entry:
  %line = alloca i8*, align 8
  %extension = alloca i8*, align 8
  %keywords = alloca %struct.KeyWord*, align 8
  %p = alloca i8*, align 8
  %kw = alloca %struct.KeyWord*, align 8
  %call = call i8* @getInputFileName()
  %call1 = call i8* @fileExtension(i8* %call)
  store i8* %call1, i8** %extension, align 8
  %0 = load i8*, i8** %extension, align 8
  %call2 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %cmp = icmp eq i32 %call2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store %struct.KeyWord* getelementptr inbounds ([6 x %struct.KeyWord], [6 x %struct.KeyWord]* @blitzbasic_keywords, i64 0, i64 0), %struct.KeyWord** %keywords, align 8
  br label %if.end7

if.else:                                          ; preds = %entry
  %1 = load i8*, i8** %extension, align 8
  %call3 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.then5, label %if.else6

if.then5:                                         ; preds = %if.else
  store %struct.KeyWord* getelementptr inbounds ([7 x %struct.KeyWord], [7 x %struct.KeyWord]* @purebasic_keywords, i64 0, i64 0), %struct.KeyWord** %keywords, align 8
  br label %if.end

if.else6:                                         ; preds = %if.else
  store %struct.KeyWord* getelementptr inbounds ([13 x %struct.KeyWord], [13 x %struct.KeyWord]* @freebasic_keywords, i64 0, i64 0), %struct.KeyWord** %keywords, align 8
  br label %if.end

if.end:                                           ; preds = %if.else6, %if.then5
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then
  br label %while.cond

while.cond:                                       ; preds = %if.end27, %if.then14, %if.end7
  %call8 = call i8* @readLineFromInputFile()
  store i8* %call8, i8** %line, align 8
  %cmp9 = icmp ne i8* %call8, null
  br i1 %cmp9, label %while.body, label %while.end28

while.body:                                       ; preds = %while.cond
  %2 = load i8*, i8** %line, align 8
  store i8* %2, i8** %p, align 8
  br label %while.cond10

while.cond10:                                     ; preds = %while.body12, %while.body
  %3 = load i8*, i8** %p, align 8
  %4 = load i8, i8* %3, align 1
  %conv = sext i8 %4 to i32
  %call11 = call i32 @isspace(i32 %conv) #3
  %tobool = icmp ne i32 %call11, 0
  br i1 %tobool, label %while.body12, label %while.end

while.body12:                                     ; preds = %while.cond10
  %5 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %while.cond10

while.end:                                        ; preds = %while.cond10
  %6 = load i8*, i8** %p, align 8
  %7 = load i8, i8* %6, align 1
  %tobool13 = icmp ne i8 %7, 0
  br i1 %tobool13, label %if.end15, label %if.then14

if.then14:                                        ; preds = %while.end
  br label %while.cond

if.end15:                                         ; preds = %while.end
  %8 = load %struct.KeyWord*, %struct.KeyWord** %keywords, align 8
  store %struct.KeyWord* %8, %struct.KeyWord** %kw, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end15
  %9 = load %struct.KeyWord*, %struct.KeyWord** %kw, align 8
  %token = getelementptr inbounds %struct.KeyWord, %struct.KeyWord* %9, i32 0, i32 0
  %10 = load i8*, i8** %token, align 8
  %tobool16 = icmp ne i8* %10, null
  br i1 %tobool16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i8*, i8** %p, align 8
  %12 = load %struct.KeyWord*, %struct.KeyWord** %kw, align 8
  %call17 = call i32 @match_keyword(i8* %11, %struct.KeyWord* %12)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %for.body
  br label %for.end

if.end20:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end20
  %13 = load %struct.KeyWord*, %struct.KeyWord** %kw, align 8
  %incdec.ptr21 = getelementptr inbounds %struct.KeyWord, %struct.KeyWord* %13, i32 1
  store %struct.KeyWord* %incdec.ptr21, %struct.KeyWord** %kw, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then19, %for.cond
  %14 = load i8*, i8** %extension, align 8
  %call22 = call i32 @strcmp(i8* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %cmp23 = icmp eq i32 %call22, 0
  br i1 %cmp23, label %if.then25, label %if.else26

if.then25:                                        ; preds = %for.end
  %15 = load i8*, i8** %p, align 8
  call void @match_dot_label(i8* %15)
  br label %if.end27

if.else26:                                        ; preds = %for.end
  %16 = load i8*, i8** %p, align 8
  call void @match_colon_label(i8* %16)
  br label %if.end27

if.end27:                                         ; preds = %if.else26, %if.then25
  br label %while.cond

while.end28:                                      ; preds = %while.cond
  ret void
}

declare i8* @fileExtension(i8*) #1

declare i8* @getInputFileName() #1

declare i32 @strcmp(i8*, i8*) #1

declare i8* @readLineFromInputFile() #1

; Function Attrs: nounwind readonly
declare i32 @isspace(i32) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @match_keyword(i8* %p, %struct.KeyWord* %kw) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8*, align 8
  %kw.addr = alloca %struct.KeyWord*, align 8
  %name = alloca %struct.sVString*, align 8
  %i = alloca i64, align 8
  %j = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  store %struct.KeyWord* %kw, %struct.KeyWord** %kw.addr, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %1 = load %struct.KeyWord*, %struct.KeyWord** %kw.addr, align 8
  %token = getelementptr inbounds %struct.KeyWord, %struct.KeyWord* %1, i32 0, i32 0
  %2 = load i8*, i8** %token, align 8
  %call = call i64 @strlen(i8* %2)
  %cmp = icmp ult i64 %0, %call
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8*, i8** %p.addr, align 8
  %4 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %4
  %5 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %5 to i32
  %call1 = call i32 @tolower(i32 %conv) #3
  %6 = load %struct.KeyWord*, %struct.KeyWord** %kw.addr, align 8
  %token2 = getelementptr inbounds %struct.KeyWord, %struct.KeyWord* %6, i32 0, i32 0
  %7 = load i8*, i8** %token2, align 8
  %8 = load i64, i64* %i, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %7, i64 %8
  %9 = load i8, i8* %arrayidx3, align 1
  %conv4 = sext i8 %9 to i32
  %cmp5 = icmp ne i32 %call1, %conv4
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i64, i64* %i, align 8
  %inc = add i64 %10, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call7 = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call7, %struct.sVString** %name, align 8
  %11 = load i64, i64* %i, align 8
  %12 = load i8*, i8** %p.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %12, i64 %11
  store i8* %add.ptr, i8** %p.addr, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc13, %for.end
  %13 = load i32, i32* %j, align 4
  %14 = load %struct.KeyWord*, %struct.KeyWord** %kw.addr, align 8
  %skip = getelementptr inbounds %struct.KeyWord, %struct.KeyWord* %14, i32 0, i32 2
  %15 = load i32, i32* %skip, align 4
  %add = add nsw i32 1, %15
  %cmp9 = icmp slt i32 %13, %add
  br i1 %cmp9, label %for.body11, label %for.end15

for.body11:                                       ; preds = %for.cond8
  %16 = load i8*, i8** %p.addr, align 8
  %17 = load %struct.sVString*, %struct.sVString** %name, align 8
  %call12 = call i8* @extract_name(i8* %16, %struct.sVString* %17)
  store i8* %call12, i8** %p.addr, align 8
  br label %for.inc13

for.inc13:                                        ; preds = %for.body11
  %18 = load i32, i32* %j, align 4
  %inc14 = add nsw i32 %18, 1
  store i32 %inc14, i32* %j, align 4
  br label %for.cond8

for.end15:                                        ; preds = %for.cond8
  %19 = load %struct.sVString*, %struct.sVString** %name, align 8
  %20 = load %struct.KeyWord*, %struct.KeyWord** %kw.addr, align 8
  %kind = getelementptr inbounds %struct.KeyWord, %struct.KeyWord* %20, i32 0, i32 1
  %21 = load i32, i32* %kind, align 8
  %call16 = call i32 @makeSimpleTag(%struct.sVString* %19, i32 %21)
  %22 = load %struct.sVString*, %struct.sVString** %name, align 8
  call void @vStringDelete(%struct.sVString* %22)
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end15, %if.then
  %23 = load i32, i32* %retval, align 4
  ret i32 %23
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @match_dot_label(i8* %p) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %name = alloca %struct.sVString*, align 8
  store i8* %p, i8** %p.addr, align 8
  %0 = load i8*, i8** %p.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 46
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call, %struct.sVString** %name, align 8
  %2 = load i8*, i8** %p.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 1
  %3 = load %struct.sVString*, %struct.sVString** %name, align 8
  %call2 = call i8* @extract_name(i8* %add.ptr, %struct.sVString* %3)
  %4 = load %struct.sVString*, %struct.sVString** %name, align 8
  %call3 = call i32 @makeSimpleTag(%struct.sVString* %4, i32 2)
  %5 = load %struct.sVString*, %struct.sVString** %name, align 8
  call void @vStringDelete(%struct.sVString* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @match_colon_label(i8* %p) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %end = alloca i8*, align 8
  %name = alloca %struct.sVString*, align 8
  store i8* %p, i8** %p.addr, align 8
  %0 = load i8*, i8** %p.addr, align 8
  %1 = load i8*, i8** %p.addr, align 8
  %call = call i64 @strlen(i8* %1)
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %call
  %add.ptr1 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  store i8* %add.ptr1, i8** %end, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i8*, i8** %end, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %call2 = call i32 @isspace(i32 %conv) #3
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i8*, i8** %end, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 -1
  store i8* %incdec.ptr, i8** %end, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %5 = load i8*, i8** %end, align 8
  %6 = load i8, i8* %5, align 1
  %conv3 = sext i8 %6 to i32
  %cmp = icmp eq i32 %conv3, 58
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %call5 = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call5, %struct.sVString** %name, align 8
  %7 = load %struct.sVString*, %struct.sVString** %name, align 8
  %8 = load i8*, i8** %p.addr, align 8
  %9 = load i8*, i8** %end, align 8
  %10 = load i8*, i8** %p.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %9 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %10 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @vStringNCatS(%struct.sVString* %7, i8* %8, i64 %sub.ptr.sub)
  %11 = load %struct.sVString*, %struct.sVString** %name, align 8
  %call6 = call i32 @makeSimpleTag(%struct.sVString* %11, i32 2)
  %12 = load %struct.sVString*, %struct.sVString** %name, align 8
  call void @vStringDelete(%struct.sVString* %12)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  ret void
}

declare i64 @strlen(i8*) #1

; Function Attrs: nounwind readonly
declare i32 @tolower(i32) #2

declare %struct.sVString* @vStringNew() #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @extract_name(i8* %pos, %struct.sVString* %name) #0 {
entry:
  %pos.addr = alloca i8*, align 8
  %name.addr = alloca %struct.sVString*, align 8
  %vStringClear_s = alloca %struct.sVString*, align 8
  store i8* %pos, i8** %pos.addr, align 8
  store %struct.sVString* %name, %struct.sVString** %name.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i8*, i8** %pos.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %call = call i32 @isspace(i32 %conv) #3
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i8*, i8** %pos.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %pos.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.body

do.body:                                          ; preds = %while.end
  %3 = load %struct.sVString*, %struct.sVString** %name.addr, align 8
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
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %7 = load i8*, i8** %pos.addr, align 8
  %8 = load i8, i8* %7, align 1
  %conv1 = sext i8 %8 to i32
  %tobool2 = icmp ne i32 %conv1, 0
  br i1 %tobool2, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %for.cond
  %9 = load i8*, i8** %pos.addr, align 8
  %10 = load i8, i8* %9, align 1
  %conv3 = sext i8 %10 to i32
  %call4 = call i32 @isspace(i32 %conv3) #3
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %land.end, label %land.lhs.true6

land.lhs.true6:                                   ; preds = %land.lhs.true
  %11 = load i8*, i8** %pos.addr, align 8
  %12 = load i8, i8* %11, align 1
  %conv7 = sext i8 %12 to i32
  %cmp = icmp ne i32 %conv7, 40
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true6
  %13 = load i8*, i8** %pos.addr, align 8
  %14 = load i8, i8* %13, align 1
  %conv9 = sext i8 %14 to i32
  %cmp10 = icmp ne i32 %conv9, 44
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true6, %land.lhs.true, %for.cond
  %15 = phi i1 [ false, %land.lhs.true6 ], [ false, %land.lhs.true ], [ false, %for.cond ], [ %cmp10, %land.rhs ]
  br i1 %15, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %16 = load %struct.sVString*, %struct.sVString** %name.addr, align 8
  %17 = load i8*, i8** %pos.addr, align 8
  %18 = load i8, i8* %17, align 1
  %conv12 = sext i8 %18 to i32
  call void @vStringPut(%struct.sVString* %16, i32 %conv12)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load i8*, i8** %pos.addr, align 8
  %incdec.ptr13 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr13, i8** %pos.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %20 = load i8*, i8** %pos.addr, align 8
  ret i8* %20
}

declare i32 @makeSimpleTag(%struct.sVString*, i32) #1

declare void @vStringDelete(%struct.sVString*) #1

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

declare void @vStringResize(%struct.sVString*, i64) #1

declare void @vStringNCatS(%struct.sVString*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 10.0.0 (https://github.com/holzschu/clang.git 0cfc630fbdb62e96720b611a57123ef3eb13e297) (https://github.com/holzschu/llvm.git 0d8a71e39b28502c24718f7e74b5acbcfe36dfe0)"}
