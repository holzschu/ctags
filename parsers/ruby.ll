; ModuleID = 'ruby.c'
source_filename = "ruby.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-ios11.0.0"

%struct.sKindDefinition = type { i8, i8, i8*, i8*, i8, i32, %struct.sRoleDesc*, %struct.sScopeSeparator*, i32, i32, i32, %struct.sKindDefinition*, %struct.sKindDefinition* }
%struct.sRoleDesc = type { i8, i8*, i8* }
%struct.sScopeSeparator = type { i32, i8* }
%struct.NestingLevels = type { i8*, i32, i32, i64 }
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
%struct.NestingLevel = type { i32, [0 x i8] }

@.str = private unnamed_addr constant [5 x i8] c"Ruby\00", align 1
@RubyKinds = internal global [4 x %struct.sKindDefinition] [%struct.sKindDefinition { i8 1, i8 99, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 102, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 109, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 83, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }], align 8
@extensions = internal constant [3 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i8* null], align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"class\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"classes\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"method\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"methods\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"module\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"modules\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"singletonMethod\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"singleton methods\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"ruby\00", align 1
@nesting = internal global %struct.NestingLevels* null, align 8
@.str.11 = private unnamed_addr constant [7 x i8] c"=begin\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"=end\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"for\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"until\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"while\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"case\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"if\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"unless\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"def\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"begin\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"do\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"end\00", align 1
@.str.23 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.24 = private unnamed_addr constant [5 x i8] c".?!=\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"?!=\00", align 1
@parseRubyOperator.RUBY_OPERATORS = internal global [29 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.53, i32 0, i32 0), i8* null], align 8
@.str.26 = private unnamed_addr constant [3 x i8] c"[]\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"[]=\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"**\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.30 = private unnamed_addr constant [2 x i8] c"~\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"+@\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"-@\00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.34 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.35 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@.str.36 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.37 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c">>\00", align 1
@.str.39 = private unnamed_addr constant [3 x i8] c"<<\00", align 1
@.str.40 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str.41 = private unnamed_addr constant [2 x i8] c"^\00", align 1
@.str.42 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.43 = private unnamed_addr constant [3 x i8] c"<=\00", align 1
@.str.44 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.45 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.46 = private unnamed_addr constant [3 x i8] c">=\00", align 1
@.str.47 = private unnamed_addr constant [4 x i8] c"<=>\00", align 1
@.str.48 = private unnamed_addr constant [3 x i8] c"==\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c"===\00", align 1
@.str.50 = private unnamed_addr constant [3 x i8] c"!=\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c"=~\00", align 1
@.str.52 = private unnamed_addr constant [3 x i8] c"!~\00", align 1
@.str.53 = private unnamed_addr constant [2 x i8] c"`\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sParserDefinition* @RubyParser() #0 {
entry:
  %def = alloca %struct.sParserDefinition*, align 8
  %call = call %struct.sParserDefinition* @parserNew(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.sParserDefinition* %call, %struct.sParserDefinition** %def, align 8
  %0 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %0, i32 0, i32 1
  store %struct.sKindDefinition* getelementptr inbounds ([4 x %struct.sKindDefinition], [4 x %struct.sKindDefinition]* @RubyKinds, i64 0, i64 0), %struct.sKindDefinition** %kindTable, align 8
  %1 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %1, i32 0, i32 2
  store i32 4, i32* %kindCount, align 8
  %2 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %extensions = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %2, i32 0, i32 3
  store i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @extensions, i64 0, i64 0), i8*** %extensions, align 8
  %3 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %parser = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %3, i32 0, i32 8
  store void ()* @findRubyTags, void ()** %parser, align 8
  %4 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %useCork = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %4, i32 0, i32 12
  store i8 1, i8* %useCork, align 4
  %5 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  ret %struct.sParserDefinition* %5
}

declare %struct.sParserDefinition* @parserNew(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @findRubyTags() #0 {
entry:
  %line = alloca i8*, align 8
  %inMultiLineComment = alloca i8, align 1
  %cp = alloca i8*, align 8
  %expect_separator = alloca i8, align 1
  %kind = alloca i32, align 4
  %nl = alloca %struct.NestingLevel*, align 8
  %e = alloca %struct.sTagEntryInfo*, align 8
  store i8 0, i8* %inMultiLineComment, align 1
  %call = call %struct.NestingLevels* @nestingLevelsNew(i64 0)
  store %struct.NestingLevels* %call, %struct.NestingLevels** @nesting, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.end, %if.then6, %if.then4, %if.then, %entry
  %call1 = call i8* @readLineFromInputFile()
  store i8* %call1, i8** %line, align 8
  %cmp = icmp ne i8* %call1, null
  br i1 %cmp, label %while.body, label %while.end121

while.body:                                       ; preds = %while.cond
  %0 = load i8*, i8** %line, align 8
  store i8* %0, i8** %cp, align 8
  store i8 0, i8* %expect_separator, align 1
  %call2 = call zeroext i1 @canMatch(i8** %cp, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i1 (i32)* @isWhitespace)
  br i1 %call2, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i8 1, i8* %inMultiLineComment, align 1
  br label %while.cond

if.end:                                           ; preds = %while.body
  %call3 = call zeroext i1 @canMatch(i8** %cp, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i1 (i32)* @isWhitespace)
  br i1 %call3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store i8 0, i8* %inMultiLineComment, align 1
  br label %while.cond

if.end5:                                          ; preds = %if.end
  %1 = load i8, i8* %inMultiLineComment, align 1
  %tobool = trunc i8 %1 to i1
  br i1 %tobool, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end5
  br label %while.cond

if.end7:                                          ; preds = %if.end5
  call void @skipWhitespace(i8** %cp)
  %call8 = call zeroext i1 @canMatchKeyword(i8** %cp, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0))
  br i1 %call8, label %if.then12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end7
  %call9 = call zeroext i1 @canMatchKeyword(i8** %cp, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0))
  br i1 %call9, label %if.then12, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false
  %call11 = call zeroext i1 @canMatchKeyword(i8** %cp, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0))
  br i1 %call11, label %if.then12, label %if.else

if.then12:                                        ; preds = %lor.lhs.false10, %lor.lhs.false, %if.end7
  store i8 1, i8* %expect_separator, align 1
  call void @enterUnnamedScope()
  br label %if.end20

if.else:                                          ; preds = %lor.lhs.false10
  %call13 = call zeroext i1 @canMatchKeyword(i8** %cp, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0))
  br i1 %call13, label %if.then18, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %if.else
  %call15 = call zeroext i1 @canMatchKeyword(i8** %cp, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0))
  br i1 %call15, label %if.then18, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %lor.lhs.false14
  %call17 = call zeroext i1 @canMatchKeyword(i8** %cp, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0))
  br i1 %call17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %lor.lhs.false16, %lor.lhs.false14, %if.else
  call void @enterUnnamedScope()
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %lor.lhs.false16
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.then12
  %call21 = call zeroext i1 @canMatchKeyword(i8** %cp, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  br i1 %call21, label %if.then22, label %if.else23

if.then22:                                        ; preds = %if.end20
  call void @readAndEmitTag(i8** %cp, i32 2)
  br label %if.end40

if.else23:                                        ; preds = %if.end20
  %call24 = call zeroext i1 @canMatchKeyword(i8** %cp, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br i1 %call24, label %if.then25, label %if.else26

if.then25:                                        ; preds = %if.else23
  call void @readAndEmitTag(i8** %cp, i32 0)
  br label %if.end39

if.else26:                                        ; preds = %if.else23
  %call27 = call zeroext i1 @canMatchKeyword(i8** %cp, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0))
  br i1 %call27, label %if.then28, label %if.end38

if.then28:                                        ; preds = %if.else26
  store i32 1, i32* %kind, align 4
  %2 = load %struct.NestingLevels*, %struct.NestingLevels** @nesting, align 8
  %call29 = call %struct.NestingLevel* @nestingLevelsGetCurrent(%struct.NestingLevels* %2)
  store %struct.NestingLevel* %call29, %struct.NestingLevel** %nl, align 8
  %3 = load %struct.NestingLevel*, %struct.NestingLevel** %nl, align 8
  %call30 = call %struct.sTagEntryInfo* @getEntryOfNestingLevel(%struct.NestingLevel* %3)
  store %struct.sTagEntryInfo* %call30, %struct.sTagEntryInfo** %e, align 8
  %4 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %e, align 8
  %tobool31 = icmp ne %struct.sTagEntryInfo* %4, null
  br i1 %tobool31, label %land.lhs.true, label %if.end37

land.lhs.true:                                    ; preds = %if.then28
  %5 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %e, align 8
  %kindIndex = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %5, i32 0, i32 8
  %6 = load i32, i32* %kindIndex, align 8
  %cmp32 = icmp eq i32 %6, 0
  br i1 %cmp32, label %land.lhs.true33, label %if.end37

land.lhs.true33:                                  ; preds = %land.lhs.true
  %7 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %e, align 8
  %name = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %7, i32 0, i32 7
  %8 = load i8*, i8** %name, align 8
  %call34 = call i64 @strlen(i8* %8)
  %cmp35 = icmp eq i64 %call34, 0
  br i1 %cmp35, label %if.then36, label %if.end37

if.then36:                                        ; preds = %land.lhs.true33
  store i32 3, i32* %kind, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %land.lhs.true33, %land.lhs.true, %if.then28
  %9 = load i32, i32* %kind, align 4
  call void @readAndEmitTag(i8** %cp, i32 %9)
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %if.else26
  br label %if.end39

if.end39:                                         ; preds = %if.end38, %if.then25
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.then22
  br label %while.cond41

while.cond41:                                     ; preds = %if.end120, %if.end40
  %10 = load i8*, i8** %cp, align 8
  %11 = load i8, i8* %10, align 1
  %conv = zext i8 %11 to i32
  %cmp42 = icmp ne i32 %conv, 0
  br i1 %cmp42, label %while.body44, label %while.end

while.body44:                                     ; preds = %while.cond41
  %12 = load i8, i8* %inMultiLineComment, align 1
  %tobool45 = trunc i8 %12 to i1
  br i1 %tobool45, label %if.then51, label %lor.lhs.false47

lor.lhs.false47:                                  ; preds = %while.body44
  %13 = load i8*, i8** %cp, align 8
  %14 = load i8, i8* %13, align 1
  %conv48 = zext i8 %14 to i32
  %call49 = call i32 @isspace(i32 %conv48) #3
  %tobool50 = icmp ne i32 %call49, 0
  br i1 %tobool50, label %if.then51, label %if.else52

if.then51:                                        ; preds = %lor.lhs.false47, %while.body44
  %15 = load i8*, i8** %cp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr, i8** %cp, align 8
  br label %if.end120

if.else52:                                        ; preds = %lor.lhs.false47
  %16 = load i8*, i8** %cp, align 8
  %17 = load i8, i8* %16, align 1
  %conv53 = zext i8 %17 to i32
  %cmp54 = icmp eq i32 %conv53, 35
  br i1 %cmp54, label %if.then56, label %if.else57

if.then56:                                        ; preds = %if.else52
  br label %while.end

if.else57:                                        ; preds = %if.else52
  %call58 = call zeroext i1 @canMatchKeyword(i8** %cp, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0))
  br i1 %call58, label %if.then59, label %if.else60

if.then59:                                        ; preds = %if.else57
  call void @enterUnnamedScope()
  br label %if.end118

if.else60:                                        ; preds = %if.else57
  %call61 = call zeroext i1 @canMatchKeyword(i8** %cp, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0))
  br i1 %call61, label %if.then62, label %if.else67

if.then62:                                        ; preds = %if.else60
  %18 = load i8, i8* %expect_separator, align 1
  %tobool63 = trunc i8 %18 to i1
  br i1 %tobool63, label %if.else65, label %if.then64

if.then64:                                        ; preds = %if.then62
  call void @enterUnnamedScope()
  br label %if.end66

if.else65:                                        ; preds = %if.then62
  store i8 0, i8* %expect_separator, align 1
  br label %if.end66

if.end66:                                         ; preds = %if.else65, %if.then64
  br label %if.end117

if.else67:                                        ; preds = %if.else60
  %call68 = call zeroext i1 @canMatchKeyword(i8** %cp, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0))
  br i1 %call68, label %land.lhs.true70, label %if.else74

land.lhs.true70:                                  ; preds = %if.else67
  %19 = load %struct.NestingLevels*, %struct.NestingLevels** @nesting, align 8
  %n = getelementptr inbounds %struct.NestingLevels, %struct.NestingLevels* %19, i32 0, i32 1
  %20 = load i32, i32* %n, align 8
  %cmp71 = icmp sgt i32 %20, 0
  br i1 %cmp71, label %if.then73, label %if.else74

if.then73:                                        ; preds = %land.lhs.true70
  %21 = load %struct.NestingLevels*, %struct.NestingLevels** @nesting, align 8
  call void @nestingLevelsPop(%struct.NestingLevels* %21)
  br label %if.end116

if.else74:                                        ; preds = %land.lhs.true70, %if.else67
  %22 = load i8*, i8** %cp, align 8
  %23 = load i8, i8* %22, align 1
  %conv75 = zext i8 %23 to i32
  %cmp76 = icmp eq i32 %conv75, 34
  br i1 %cmp76, label %if.then78, label %if.else92

if.then78:                                        ; preds = %if.else74
  br label %do.body

do.body:                                          ; preds = %land.end, %if.then78
  %24 = load i8*, i8** %cp, align 8
  %incdec.ptr79 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr79, i8** %cp, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %25 = load i8*, i8** %cp, align 8
  %26 = load i8, i8* %25, align 1
  %conv80 = zext i8 %26 to i32
  %cmp81 = icmp ne i32 %conv80, 0
  br i1 %cmp81, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %27 = load i8*, i8** %cp, align 8
  %28 = load i8, i8* %27, align 1
  %conv83 = zext i8 %28 to i32
  %cmp84 = icmp ne i32 %conv83, 34
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %29 = phi i1 [ false, %do.cond ], [ %cmp84, %land.rhs ]
  br i1 %29, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  %30 = load i8*, i8** %cp, align 8
  %31 = load i8, i8* %30, align 1
  %conv86 = zext i8 %31 to i32
  %cmp87 = icmp eq i32 %conv86, 34
  br i1 %cmp87, label %if.then89, label %if.end91

if.then89:                                        ; preds = %do.end
  %32 = load i8*, i8** %cp, align 8
  %incdec.ptr90 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr90, i8** %cp, align 8
  br label %if.end91

if.end91:                                         ; preds = %if.then89, %do.end
  br label %if.end115

if.else92:                                        ; preds = %if.else74
  %33 = load i8*, i8** %cp, align 8
  %34 = load i8, i8* %33, align 1
  %conv93 = zext i8 %34 to i32
  %cmp94 = icmp eq i32 %conv93, 59
  br i1 %cmp94, label %if.then96, label %if.else98

if.then96:                                        ; preds = %if.else92
  %35 = load i8*, i8** %cp, align 8
  %incdec.ptr97 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %incdec.ptr97, i8** %cp, align 8
  store i8 0, i8* %expect_separator, align 1
  br label %if.end114

if.else98:                                        ; preds = %if.else92
  %36 = load i8*, i8** %cp, align 8
  %37 = load i8, i8* %36, align 1
  %conv99 = zext i8 %37 to i32
  %cmp100 = icmp ne i32 %conv99, 0
  br i1 %cmp100, label %if.then102, label %if.end113

if.then102:                                       ; preds = %if.else98
  br label %do.body103

do.body103:                                       ; preds = %lor.end, %if.then102
  %38 = load i8*, i8** %cp, align 8
  %incdec.ptr104 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %incdec.ptr104, i8** %cp, align 8
  br label %do.cond105

do.cond105:                                       ; preds = %do.body103
  %39 = load i8*, i8** %cp, align 8
  %40 = load i8, i8* %39, align 1
  %conv106 = zext i8 %40 to i32
  %call107 = call i32 @isalnum(i32 %conv106) #3
  %tobool108 = icmp ne i32 %call107, 0
  br i1 %tobool108, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %do.cond105
  %41 = load i8*, i8** %cp, align 8
  %42 = load i8, i8* %41, align 1
  %conv109 = zext i8 %42 to i32
  %cmp110 = icmp eq i32 %conv109, 95
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %do.cond105
  %43 = phi i1 [ true, %do.cond105 ], [ %cmp110, %lor.rhs ]
  br i1 %43, label %do.body103, label %do.end112

do.end112:                                        ; preds = %lor.end
  br label %if.end113

if.end113:                                        ; preds = %do.end112, %if.else98
  br label %if.end114

if.end114:                                        ; preds = %if.end113, %if.then96
  br label %if.end115

if.end115:                                        ; preds = %if.end114, %if.end91
  br label %if.end116

if.end116:                                        ; preds = %if.end115, %if.then73
  br label %if.end117

if.end117:                                        ; preds = %if.end116, %if.end66
  br label %if.end118

if.end118:                                        ; preds = %if.end117, %if.then59
  br label %if.end119

if.end119:                                        ; preds = %if.end118
  br label %if.end120

if.end120:                                        ; preds = %if.end119, %if.then51
  br label %while.cond41

while.end:                                        ; preds = %if.then56, %while.cond41
  br label %while.cond

while.end121:                                     ; preds = %while.cond
  %44 = load %struct.NestingLevels*, %struct.NestingLevels** @nesting, align 8
  call void @nestingLevelsFree(%struct.NestingLevels* %44)
  ret void
}

declare %struct.NestingLevels* @nestingLevelsNew(i64) #1

declare i8* @readLineFromInputFile() #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @canMatch(i8** %s, i8* %literal, i1 (i32)* %end_check) #0 {
entry:
  %retval = alloca i1, align 1
  %s.addr = alloca i8**, align 8
  %literal.addr = alloca i8*, align 8
  %end_check.addr = alloca i1 (i32)*, align 8
  %literal_length = alloca i32, align 4
  %s_length = alloca i32, align 4
  %next_char = alloca i8, align 1
  store i8** %s, i8*** %s.addr, align 8
  store i8* %literal, i8** %literal.addr, align 8
  store i1 (i32)* %end_check, i1 (i32)** %end_check.addr, align 8
  %0 = load i8*, i8** %literal.addr, align 8
  %call = call i64 @strlen(i8* %0)
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %literal_length, align 4
  %1 = load i8**, i8*** %s.addr, align 8
  %2 = load i8*, i8** %1, align 8
  %call1 = call i64 @strlen(i8* %2)
  %conv2 = trunc i64 %call1 to i32
  store i32 %conv2, i32* %s_length, align 4
  %3 = load i32, i32* %s_length, align 4
  %4 = load i32, i32* %literal_length, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i8**, i8*** %s.addr, align 8
  %6 = load i8*, i8** %5, align 8
  %7 = load i32, i32* %literal_length, align 4
  %idx.ext = sext i32 %7 to i64
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %idx.ext
  %8 = load i8, i8* %add.ptr, align 1
  store i8 %8, i8* %next_char, align 1
  %9 = load i8**, i8*** %s.addr, align 8
  %10 = load i8*, i8** %9, align 8
  %11 = load i8*, i8** %literal.addr, align 8
  %12 = load i32, i32* %literal_length, align 4
  %conv4 = sext i32 %12 to i64
  %call5 = call i32 @strncmp(i8* %10, i8* %11, i64 %conv4)
  %cmp6 = icmp ne i32 %call5, 0
  br i1 %cmp6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  store i1 false, i1* %retval, align 1
  br label %return

if.end9:                                          ; preds = %if.end
  %13 = load i1 (i32)*, i1 (i32)** %end_check.addr, align 8
  %14 = load i8, i8* %next_char, align 1
  %conv10 = zext i8 %14 to i32
  %call11 = call zeroext i1 %13(i32 %conv10)
  br i1 %call11, label %if.end13, label %if.then12

if.then12:                                        ; preds = %if.end9
  store i1 false, i1* %retval, align 1
  br label %return

if.end13:                                         ; preds = %if.end9
  %15 = load i32, i32* %literal_length, align 4
  %16 = load i8**, i8*** %s.addr, align 8
  %17 = load i8*, i8** %16, align 8
  %idx.ext14 = sext i32 %15 to i64
  %add.ptr15 = getelementptr inbounds i8, i8* %17, i64 %idx.ext14
  store i8* %add.ptr15, i8** %16, align 8
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end13, %if.then12, %if.then8, %if.then
  %18 = load i1, i1* %retval, align 1
  ret i1 %18
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @isWhitespace(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %1 = load i32, i32* %c.addr, align 4
  %call = call i32 @isspace(i32 %1) #3
  %tobool = icmp ne i32 %call, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %tobool, %lor.rhs ]
  ret i1 %2
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @skipWhitespace(i8** %cp) #0 {
entry:
  %cp.addr = alloca i8**, align 8
  store i8** %cp, i8*** %cp.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i8**, i8*** %cp.addr, align 8
  %1 = load i8*, i8** %0, align 8
  %2 = load i8, i8* %1, align 1
  %conv = zext i8 %2 to i32
  %call = call i32 @isspace(i32 %conv) #3
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i8**, i8*** %cp.addr, align 8
  %4 = load i8*, i8** %3, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %3, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @canMatchKeyword(i8** %s, i8* %literal) #0 {
entry:
  %s.addr = alloca i8**, align 8
  %literal.addr = alloca i8*, align 8
  store i8** %s, i8*** %s.addr, align 8
  store i8* %literal, i8** %literal.addr, align 8
  %0 = load i8**, i8*** %s.addr, align 8
  %1 = load i8*, i8** %literal.addr, align 8
  %call = call zeroext i1 @canMatch(i8** %0, i8* %1, i1 (i32)* @notIdentChar)
  ret i1 %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @enterUnnamedScope() #0 {
entry:
  %r = alloca i32, align 4
  %parent = alloca %struct.NestingLevel*, align 8
  %e_parent = alloca %struct.sTagEntryInfo*, align 8
  %e = alloca %struct.sTagEntryInfo, align 8
  store i32 0, i32* %r, align 4
  %0 = load %struct.NestingLevels*, %struct.NestingLevels** @nesting, align 8
  %call = call %struct.NestingLevel* @nestingLevelsGetCurrent(%struct.NestingLevels* %0)
  store %struct.NestingLevel* %call, %struct.NestingLevel** %parent, align 8
  %1 = load %struct.NestingLevel*, %struct.NestingLevel** %parent, align 8
  %call1 = call %struct.sTagEntryInfo* @getEntryOfNestingLevel(%struct.NestingLevel* %1)
  store %struct.sTagEntryInfo* %call1, %struct.sTagEntryInfo** %e_parent, align 8
  %2 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %e_parent, align 8
  %tobool = icmp ne %struct.sTagEntryInfo* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %e_parent, align 8
  %kindIndex = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %3, i32 0, i32 8
  %4 = load i32, i32* %kindIndex, align 8
  call void @initTagEntry(%struct.sTagEntryInfo* %e, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.23, i64 0, i64 0), i32 %4)
  %5 = bitcast %struct.sTagEntryInfo* %e to i8*
  %bf.load = load i8, i8* %5, align 8
  %bf.clear = and i8 %bf.load, -17
  %bf.set = or i8 %bf.clear, 16
  store i8 %bf.set, i8* %5, align 8
  %call2 = call i32 @makeTagEntry(%struct.sTagEntryInfo* %e)
  store i32 %call2, i32* %r, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.NestingLevels*, %struct.NestingLevels** @nesting, align 8
  %7 = load i32, i32* %r, align 4
  %call3 = call %struct.NestingLevel* @nestingLevelsPush(%struct.NestingLevels* %6, i32 %7)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @readAndEmitTag(i8** %cp, i32 %expected_kind) #0 {
entry:
  %cp.addr = alloca i8**, align 8
  %expected_kind.addr = alloca i32, align 4
  %name = alloca %struct.sVString*, align 8
  %actual_kind = alloca i32, align 4
  store i8** %cp, i8*** %cp.addr, align 8
  store i32 %expected_kind, i32* %expected_kind.addr, align 4
  %0 = load i8**, i8*** %cp.addr, align 8
  %1 = load i8*, i8** %0, align 8
  %2 = load i8, i8* %1, align 1
  %conv = zext i8 %2 to i32
  %call = call i32 @isspace(i32 %conv) #3
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  %call1 = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call1, %struct.sVString** %name, align 8
  %3 = load i8**, i8*** %cp.addr, align 8
  %4 = load %struct.sVString*, %struct.sVString** %name, align 8
  %5 = load i32, i32* %expected_kind.addr, align 4
  %call2 = call i32 @parseIdentifier(i8** %3, %struct.sVString* %4, i32 %5)
  store i32 %call2, i32* %actual_kind, align 4
  %6 = load i32, i32* %actual_kind, align 4
  %cmp = icmp eq i32 %6, -1
  br i1 %cmp, label %if.then6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %7 = load %struct.sVString*, %struct.sVString** %name, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %7, i32 0, i32 0
  %8 = load i64, i64* %length, align 8
  %cmp4 = icmp eq i64 %8, 0
  br i1 %cmp4, label %if.then6, label %if.else

if.then6:                                         ; preds = %lor.lhs.false, %if.then
  call void @enterUnnamedScope()
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %9 = load %struct.sVString*, %struct.sVString** %name, align 8
  %10 = load i32, i32* %actual_kind, align 4
  call void @emitRubyTag(%struct.sVString* %9, i32 %10)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then6
  %11 = load %struct.sVString*, %struct.sVString** %name, align 8
  call void @vStringDelete(%struct.sVString* %11)
  br label %if.end7

if.end7:                                          ; preds = %if.end, %entry
  ret void
}

declare %struct.NestingLevel* @nestingLevelsGetCurrent(%struct.NestingLevels*) #1

declare %struct.sTagEntryInfo* @getEntryOfNestingLevel(%struct.NestingLevel*) #1

declare i64 @strlen(i8*) #1

; Function Attrs: nounwind readonly
declare i32 @isspace(i32) #2

declare void @nestingLevelsPop(%struct.NestingLevels*) #1

; Function Attrs: nounwind readonly
declare i32 @isalnum(i32) #2

declare void @nestingLevelsFree(%struct.NestingLevels*) #1

declare i32 @strncmp(i8*, i8*, i64) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @notIdentChar(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %call = call i32 @isalnum(i32 %0) #3
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %1 = load i32, i32* %c.addr, align 4
  %cmp = icmp eq i32 %1, 95
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %cmp, %lor.rhs ]
  %lnot = xor i1 %2, true
  ret i1 %lnot
}

declare void @initTagEntry(%struct.sTagEntryInfo*, i8*, i32) #1

declare i32 @makeTagEntry(%struct.sTagEntryInfo*) #1

declare %struct.NestingLevel* @nestingLevelsPush(%struct.NestingLevels*, i32) #1

declare %struct.sVString* @vStringNew() #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @parseIdentifier(i8** %cp, %struct.sVString* %name, i32 %kind) #0 {
entry:
  %retval = alloca i32, align 4
  %cp.addr = alloca i8**, align 8
  %name.addr = alloca %struct.sVString*, align 8
  %kind.addr = alloca i32, align 4
  %had_sep = alloca i8, align 1
  %also_ok = alloca i8*, align 8
  %last_char = alloca i8, align 1
  %vStringClear_s = alloca %struct.sVString*, align 8
  store i8** %cp, i8*** %cp.addr, align 8
  store %struct.sVString* %name, %struct.sVString** %name.addr, align 8
  store i32 %kind, i32* %kind.addr, align 4
  store i8 0, i8* %had_sep, align 1
  %0 = load i32, i32* %kind.addr, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i8** %also_ok, align 8
  br label %if.end4

if.else:                                          ; preds = %entry
  %1 = load i32, i32* %kind.addr, align 4
  %cmp1 = icmp eq i32 %1, 3
  br i1 %cmp1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.else
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0), i8** %also_ok, align 8
  br label %if.end

if.else3:                                         ; preds = %if.else
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.23, i64 0, i64 0), i8** %also_ok, align 8
  br label %if.end

if.end:                                           ; preds = %if.else3, %if.then2
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then
  %2 = load i8**, i8*** %cp.addr, align 8
  call void @skipWhitespace(i8** %2)
  %3 = load i32, i32* %kind.addr, align 4
  %cmp5 = icmp eq i32 %3, 0
  br i1 %cmp5, label %land.lhs.true, label %if.end13

land.lhs.true:                                    ; preds = %if.end4
  %4 = load i8**, i8*** %cp.addr, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = load i8, i8* %5, align 1
  %conv = zext i8 %6 to i32
  %cmp6 = icmp eq i32 %conv, 60
  br i1 %cmp6, label %land.lhs.true8, label %if.end13

land.lhs.true8:                                   ; preds = %land.lhs.true
  %7 = load i8**, i8*** %cp.addr, align 8
  %8 = load i8*, i8** %7, align 8
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 1
  %9 = load i8, i8* %add.ptr, align 1
  %conv9 = zext i8 %9 to i32
  %cmp10 = icmp eq i32 %conv9, 60
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %land.lhs.true8
  store i32 -1, i32* %retval, align 4
  br label %return

if.end13:                                         ; preds = %land.lhs.true8, %land.lhs.true, %if.end4
  %10 = load i32, i32* %kind.addr, align 4
  %cmp14 = icmp eq i32 %10, 1
  br i1 %cmp14, label %if.then18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end13
  %11 = load i32, i32* %kind.addr, align 4
  %cmp16 = icmp eq i32 %11, 3
  br i1 %cmp16, label %if.then18, label %if.end21

if.then18:                                        ; preds = %lor.lhs.false, %if.end13
  %12 = load %struct.sVString*, %struct.sVString** %name.addr, align 8
  %13 = load i8**, i8*** %cp.addr, align 8
  %call = call zeroext i1 @parseRubyOperator(%struct.sVString* %12, i8** %13)
  br i1 %call, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.then18
  %14 = load i32, i32* %kind.addr, align 4
  store i32 %14, i32* %retval, align 4
  br label %return

if.end20:                                         ; preds = %if.then18
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %lor.lhs.false
  br label %while.cond

while.cond:                                       ; preds = %if.end66, %if.end21
  %15 = load i8**, i8*** %cp.addr, align 8
  %16 = load i8*, i8** %15, align 8
  %17 = load i8, i8* %16, align 1
  %conv22 = zext i8 %17 to i32
  %cmp23 = icmp ne i32 %conv22, 0
  br i1 %cmp23, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %18 = load i8**, i8*** %cp.addr, align 8
  %19 = load i8*, i8** %18, align 8
  %20 = load i8, i8* %19, align 1
  %conv25 = zext i8 %20 to i32
  %cmp26 = icmp eq i32 %conv25, 58
  br i1 %cmp26, label %lor.end, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %land.rhs
  %21 = load i8**, i8*** %cp.addr, align 8
  %22 = load i8*, i8** %21, align 8
  %23 = load i8, i8* %22, align 1
  %conv29 = zext i8 %23 to i32
  %call30 = call i32 @isalnum(i32 %conv29) #3
  %tobool = icmp ne i32 %call30, 0
  br i1 %tobool, label %lor.end, label %lor.lhs.false31

lor.lhs.false31:                                  ; preds = %lor.lhs.false28
  %24 = load i8**, i8*** %cp.addr, align 8
  %25 = load i8*, i8** %24, align 8
  %26 = load i8, i8* %25, align 1
  %conv32 = zext i8 %26 to i32
  %cmp33 = icmp eq i32 %conv32, 95
  br i1 %cmp33, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false31
  %27 = load i8**, i8*** %cp.addr, align 8
  %28 = load i8*, i8** %27, align 8
  %29 = load i8, i8* %28, align 1
  %30 = load i8*, i8** %also_ok, align 8
  %call35 = call zeroext i1 @charIsIn(i8 signext %29, i8* %30)
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false31, %lor.lhs.false28, %land.rhs
  %31 = phi i1 [ true, %lor.lhs.false31 ], [ true, %lor.lhs.false28 ], [ true, %land.rhs ], [ %call35, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %while.cond
  %32 = phi i1 [ false, %while.cond ], [ %31, %lor.end ]
  br i1 %32, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %33 = load i8**, i8*** %cp.addr, align 8
  %34 = load i8*, i8** %33, align 8
  %35 = load i8, i8* %34, align 1
  store i8 %35, i8* %last_char, align 1
  %36 = load i8, i8* %last_char, align 1
  %conv37 = sext i8 %36 to i32
  %cmp38 = icmp eq i32 %conv37, 58
  br i1 %cmp38, label %if.then40, label %if.else41

if.then40:                                        ; preds = %while.body
  store i8 1, i8* %had_sep, align 1
  br label %if.end46

if.else41:                                        ; preds = %while.body
  %37 = load i8, i8* %had_sep, align 1
  %tobool42 = trunc i8 %37 to i1
  br i1 %tobool42, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.else41
  %38 = load %struct.sVString*, %struct.sVString** %name.addr, align 8
  call void @vStringPut(%struct.sVString* %38, i32 46)
  store i8 0, i8* %had_sep, align 1
  br label %if.end44

if.end44:                                         ; preds = %if.then43, %if.else41
  %39 = load %struct.sVString*, %struct.sVString** %name.addr, align 8
  %40 = load i8, i8* %last_char, align 1
  %conv45 = sext i8 %40 to i32
  call void @vStringPut(%struct.sVString* %39, i32 %conv45)
  br label %if.end46

if.end46:                                         ; preds = %if.end44, %if.then40
  %41 = load i8**, i8*** %cp.addr, align 8
  %42 = load i8*, i8** %41, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %incdec.ptr, i8** %41, align 8
  %43 = load i32, i32* %kind.addr, align 4
  %cmp47 = icmp eq i32 %43, 1
  br i1 %cmp47, label %if.then49, label %if.end56

if.then49:                                        ; preds = %if.end46
  %44 = load i8, i8* %last_char, align 1
  %conv50 = sext i8 %44 to i32
  %cmp51 = icmp eq i32 %conv50, 46
  br i1 %cmp51, label %if.then53, label %if.end55

if.then53:                                        ; preds = %if.then49
  br label %do.body

do.body:                                          ; preds = %if.then53
  %45 = load %struct.sVString*, %struct.sVString** %name.addr, align 8
  store %struct.sVString* %45, %struct.sVString** %vStringClear_s, align 8
  %46 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %46, i32 0, i32 0
  store i64 0, i64* %length, align 8
  %47 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %47, i32 0, i32 2
  %48 = load i8*, i8** %buffer, align 8
  %arrayidx = getelementptr inbounds i8, i8* %48, i64 0
  store i8 0, i8* %arrayidx, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  %49 = load i8**, i8*** %cp.addr, align 8
  %50 = load %struct.sVString*, %struct.sVString** %name.addr, align 8
  %call54 = call i32 @parseIdentifier(i8** %49, %struct.sVString* %50, i32 3)
  store i32 %call54, i32* %retval, align 4
  br label %return

if.end55:                                         ; preds = %if.then49
  br label %if.end56

if.end56:                                         ; preds = %if.end55, %if.end46
  %51 = load i32, i32* %kind.addr, align 4
  %cmp57 = icmp eq i32 %51, 1
  br i1 %cmp57, label %if.then62, label %lor.lhs.false59

lor.lhs.false59:                                  ; preds = %if.end56
  %52 = load i32, i32* %kind.addr, align 4
  %cmp60 = icmp eq i32 %52, 3
  br i1 %cmp60, label %if.then62, label %if.end66

if.then62:                                        ; preds = %lor.lhs.false59, %if.end56
  %53 = load i8, i8* %last_char, align 1
  %call63 = call zeroext i1 @charIsIn(i8 signext %53, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0))
  br i1 %call63, label %if.then64, label %if.end65

if.then64:                                        ; preds = %if.then62
  br label %while.end

if.end65:                                         ; preds = %if.then62
  br label %if.end66

if.end66:                                         ; preds = %if.end65, %lor.lhs.false59
  br label %while.cond

while.end:                                        ; preds = %if.then64, %land.end
  %54 = load i32, i32* %kind.addr, align 4
  store i32 %54, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %do.end, %if.then19, %if.then12
  %55 = load i32, i32* %retval, align 4
  ret i32 %55
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @emitRubyTag(%struct.sVString* %name, i32 %kind) #0 {
entry:
  %name.addr = alloca %struct.sVString*, align 8
  %kind.addr = alloca i32, align 4
  %tag = alloca %struct.sTagEntryInfo, align 8
  %scope = alloca %struct.sVString*, align 8
  %parent = alloca %struct.sTagEntryInfo*, align 8
  %parent_kind = alloca i32, align 4
  %lvl = alloca %struct.NestingLevel*, align 8
  %unqualified_name = alloca i8*, align 8
  %qualified_name = alloca i8*, align 8
  %r = alloca i32, align 4
  %vStringClear_s = alloca %struct.sVString*, align 8
  store %struct.sVString* %name, %struct.sVString** %name.addr, align 8
  store i32 %kind, i32* %kind.addr, align 4
  store i32 -1, i32* %parent_kind, align 4
  %0 = load i32, i32* %kind.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [4 x %struct.sKindDefinition], [4 x %struct.sKindDefinition]* @RubyKinds, i64 0, i64 %idxprom
  %enabled = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %arrayidx, i32 0, i32 0
  %1 = load i8, i8* %enabled, align 8
  %tobool = trunc i8 %1 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.NestingLevels*, %struct.NestingLevels** @nesting, align 8
  %call = call %struct.sVString* @nestingLevelsToScope(%struct.NestingLevels* %2)
  store %struct.sVString* %call, %struct.sVString** %scope, align 8
  %3 = load %struct.NestingLevels*, %struct.NestingLevels** @nesting, align 8
  %call1 = call %struct.NestingLevel* @nestingLevelsGetCurrent(%struct.NestingLevels* %3)
  store %struct.NestingLevel* %call1, %struct.NestingLevel** %lvl, align 8
  %4 = load %struct.NestingLevel*, %struct.NestingLevel** %lvl, align 8
  %call2 = call %struct.sTagEntryInfo* @getEntryOfNestingLevel(%struct.NestingLevel* %4)
  store %struct.sTagEntryInfo* %call2, %struct.sTagEntryInfo** %parent, align 8
  %5 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %parent, align 8
  %tobool3 = icmp ne %struct.sTagEntryInfo* %5, null
  br i1 %tobool3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  %6 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %parent, align 8
  %kindIndex = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %6, i32 0, i32 8
  %7 = load i32, i32* %kindIndex, align 8
  store i32 %7, i32* %parent_kind, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end
  %8 = load %struct.sVString*, %struct.sVString** %name.addr, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %8, i32 0, i32 2
  %9 = load i8*, i8** %buffer, align 8
  store i8* %9, i8** %qualified_name, align 8
  %10 = load i8*, i8** %qualified_name, align 8
  %call6 = call i8* @strrchr(i8* %10, i32 46)
  store i8* %call6, i8** %unqualified_name, align 8
  %11 = load i8*, i8** %unqualified_name, align 8
  %tobool7 = icmp ne i8* %11, null
  br i1 %tobool7, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end5
  %12 = load i8*, i8** %unqualified_name, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 1
  %13 = load i8, i8* %arrayidx8, align 1
  %conv = sext i8 %13 to i32
  %tobool9 = icmp ne i32 %conv, 0
  br i1 %tobool9, label %if.then10, label %if.else

if.then10:                                        ; preds = %land.lhs.true
  %14 = load i8*, i8** %unqualified_name, align 8
  %15 = load i8*, i8** %qualified_name, align 8
  %cmp = icmp ugt i8* %14, %15
  br i1 %cmp, label %if.then12, label %if.end17

if.then12:                                        ; preds = %if.then10
  %16 = load %struct.sVString*, %struct.sVString** %scope, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %16, i32 0, i32 0
  %17 = load i64, i64* %length, align 8
  %cmp13 = icmp ugt i64 %17, 0
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.then12
  %18 = load %struct.sVString*, %struct.sVString** %scope, align 8
  call void @vStringPut(%struct.sVString* %18, i32 46)
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.then12
  %19 = load %struct.sVString*, %struct.sVString** %scope, align 8
  %20 = load i8*, i8** %qualified_name, align 8
  %21 = load i8*, i8** %unqualified_name, align 8
  %22 = load i8*, i8** %qualified_name, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %21 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %22 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @vStringNCatS(%struct.sVString* %19, i8* %20, i64 %sub.ptr.sub)
  store i32 2, i32* %parent_kind, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then10
  %23 = load i8*, i8** %unqualified_name, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr, i8** %unqualified_name, align 8
  br label %if.end18

if.else:                                          ; preds = %land.lhs.true, %if.end5
  %24 = load i8*, i8** %qualified_name, align 8
  store i8* %24, i8** %unqualified_name, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.end17
  %25 = load i8*, i8** %unqualified_name, align 8
  %26 = load i32, i32* %kind.addr, align 4
  call void @initTagEntry(%struct.sTagEntryInfo* %tag, i8* %25, i32 %26)
  %27 = load %struct.sVString*, %struct.sVString** %scope, align 8
  %length19 = getelementptr inbounds %struct.sVString, %struct.sVString* %27, i32 0, i32 0
  %28 = load i64, i64* %length19, align 8
  %cmp20 = icmp ugt i64 %28, 0
  br i1 %cmp20, label %if.then22, label %if.end25

if.then22:                                        ; preds = %if.end18
  br label %do.body

do.body:                                          ; preds = %if.then22
  br label %do.end

do.end:                                           ; preds = %do.body
  %29 = load i32, i32* %parent_kind, align 4
  %extensionFields = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %tag, i32 0, i32 11
  %scopeKindIndex = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields, i32 0, i32 5
  store i32 %29, i32* %scopeKindIndex, align 4
  %30 = load %struct.sVString*, %struct.sVString** %scope, align 8
  %buffer23 = getelementptr inbounds %struct.sVString, %struct.sVString* %30, i32 0, i32 2
  %31 = load i8*, i8** %buffer23, align 8
  %extensionFields24 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %tag, i32 0, i32 11
  %scopeName = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields24, i32 0, i32 6
  store i8* %31, i8** %scopeName, align 8
  br label %if.end25

if.end25:                                         ; preds = %do.end, %if.end18
  %call26 = call i32 @makeTagEntry(%struct.sTagEntryInfo* %tag)
  store i32 %call26, i32* %r, align 4
  %32 = load %struct.NestingLevels*, %struct.NestingLevels** @nesting, align 8
  %33 = load i32, i32* %r, align 4
  %call27 = call %struct.NestingLevel* @nestingLevelsPush(%struct.NestingLevels* %32, i32 %33)
  br label %do.body28

do.body28:                                        ; preds = %if.end25
  %34 = load %struct.sVString*, %struct.sVString** %name.addr, align 8
  store %struct.sVString* %34, %struct.sVString** %vStringClear_s, align 8
  %35 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %length29 = getelementptr inbounds %struct.sVString, %struct.sVString* %35, i32 0, i32 0
  store i64 0, i64* %length29, align 8
  %36 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %buffer30 = getelementptr inbounds %struct.sVString, %struct.sVString* %36, i32 0, i32 2
  %37 = load i8*, i8** %buffer30, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %37, i64 0
  store i8 0, i8* %arrayidx31, align 1
  br label %do.end32

do.end32:                                         ; preds = %do.body28
  %38 = load %struct.sVString*, %struct.sVString** %scope, align 8
  call void @vStringDelete(%struct.sVString* %38)
  br label %return

return:                                           ; preds = %do.end32, %if.then
  ret void
}

declare void @vStringDelete(%struct.sVString*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @parseRubyOperator(%struct.sVString* %name, i8** %cp) #0 {
entry:
  %retval = alloca i1, align 1
  %name.addr = alloca %struct.sVString*, align 8
  %cp.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  store %struct.sVString* %name, %struct.sVString** %name.addr, align 8
  store i8** %cp, i8*** %cp.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [29 x i8*], [29 x i8*]* @parseRubyOperator.RUBY_OPERATORS, i64 0, i64 %idxprom
  %1 = load i8*, i8** %arrayidx, align 8
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8**, i8*** %cp.addr, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [29 x i8*], [29 x i8*]* @parseRubyOperator.RUBY_OPERATORS, i64 0, i64 %idxprom1
  %4 = load i8*, i8** %arrayidx2, align 8
  %call = call zeroext i1 @canMatch(i8** %2, i8* %4, i1 (i32)* @notOperatorChar)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load %struct.sVString*, %struct.sVString** %name.addr, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %6 to i64
  %arrayidx4 = getelementptr inbounds [29 x i8*], [29 x i8*]* @parseRubyOperator.RUBY_OPERATORS, i64 0, i64 %idxprom3
  %7 = load i8*, i8** %arrayidx4, align 8
  call void @vStringCatS(%struct.sVString* %5, i8* %7)
  store i1 true, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i1 false, i1* %retval, align 1
  br label %return

return:                                           ; preds = %for.end, %if.then
  %9 = load i1, i1* %retval, align 1
  ret i1 %9
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @charIsIn(i8 signext %ch, i8* %list) #0 {
entry:
  %ch.addr = alloca i8, align 1
  %list.addr = alloca i8*, align 8
  store i8 %ch, i8* %ch.addr, align 1
  store i8* %list, i8** %list.addr, align 8
  %0 = load i8*, i8** %list.addr, align 8
  %1 = load i8, i8* %ch.addr, align 1
  %conv = sext i8 %1 to i32
  %call = call i8* @strchr(i8* %0, i32 %conv)
  %cmp = icmp ne i8* %call, null
  ret i1 %cmp
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

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @notOperatorChar(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %cmp = icmp eq i32 %0, 91
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %c.addr, align 4
  %cmp1 = icmp eq i32 %1, 93
  br i1 %cmp1, label %lor.end, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load i32, i32* %c.addr, align 4
  %cmp3 = icmp eq i32 %2, 61
  br i1 %cmp3, label %lor.end, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %3 = load i32, i32* %c.addr, align 4
  %cmp5 = icmp eq i32 %3, 33
  br i1 %cmp5, label %lor.end, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false4
  %4 = load i32, i32* %c.addr, align 4
  %cmp7 = icmp eq i32 %4, 126
  br i1 %cmp7, label %lor.end, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %lor.lhs.false6
  %5 = load i32, i32* %c.addr, align 4
  %cmp9 = icmp eq i32 %5, 43
  br i1 %cmp9, label %lor.end, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false8
  %6 = load i32, i32* %c.addr, align 4
  %cmp11 = icmp eq i32 %6, 45
  br i1 %cmp11, label %lor.end, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false10
  %7 = load i32, i32* %c.addr, align 4
  %cmp13 = icmp eq i32 %7, 64
  br i1 %cmp13, label %lor.end, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false12
  %8 = load i32, i32* %c.addr, align 4
  %cmp15 = icmp eq i32 %8, 42
  br i1 %cmp15, label %lor.end, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %lor.lhs.false14
  %9 = load i32, i32* %c.addr, align 4
  %cmp17 = icmp eq i32 %9, 47
  br i1 %cmp17, label %lor.end, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false16
  %10 = load i32, i32* %c.addr, align 4
  %cmp19 = icmp eq i32 %10, 37
  br i1 %cmp19, label %lor.end, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %lor.lhs.false18
  %11 = load i32, i32* %c.addr, align 4
  %cmp21 = icmp eq i32 %11, 60
  br i1 %cmp21, label %lor.end, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %lor.lhs.false20
  %12 = load i32, i32* %c.addr, align 4
  %cmp23 = icmp eq i32 %12, 62
  br i1 %cmp23, label %lor.end, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %lor.lhs.false22
  %13 = load i32, i32* %c.addr, align 4
  %cmp25 = icmp eq i32 %13, 38
  br i1 %cmp25, label %lor.end, label %lor.lhs.false26

lor.lhs.false26:                                  ; preds = %lor.lhs.false24
  %14 = load i32, i32* %c.addr, align 4
  %cmp27 = icmp eq i32 %14, 94
  br i1 %cmp27, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false26
  %15 = load i32, i32* %c.addr, align 4
  %cmp28 = icmp eq i32 %15, 124
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false26, %lor.lhs.false24, %lor.lhs.false22, %lor.lhs.false20, %lor.lhs.false18, %lor.lhs.false16, %lor.lhs.false14, %lor.lhs.false12, %lor.lhs.false10, %lor.lhs.false8, %lor.lhs.false6, %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %entry
  %16 = phi i1 [ true, %lor.lhs.false26 ], [ true, %lor.lhs.false24 ], [ true, %lor.lhs.false22 ], [ true, %lor.lhs.false20 ], [ true, %lor.lhs.false18 ], [ true, %lor.lhs.false16 ], [ true, %lor.lhs.false14 ], [ true, %lor.lhs.false12 ], [ true, %lor.lhs.false10 ], [ true, %lor.lhs.false8 ], [ true, %lor.lhs.false6 ], [ true, %lor.lhs.false4 ], [ true, %lor.lhs.false2 ], [ true, %lor.lhs.false ], [ true, %entry ], [ %cmp28, %lor.rhs ]
  %lnot = xor i1 %16, true
  ret i1 %lnot
}

declare void @vStringCatS(%struct.sVString*, i8*) #1

declare i8* @strchr(i8*, i32) #1

declare void @vStringResize(%struct.sVString*, i64) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct.sVString* @nestingLevelsToScope(%struct.NestingLevels* %nls) #0 {
entry:
  %nls.addr = alloca %struct.NestingLevels*, align 8
  %i = alloca i32, align 4
  %chunks_output = alloca i32, align 4
  %result = alloca %struct.sVString*, align 8
  %nl = alloca %struct.NestingLevel*, align 8
  %e = alloca %struct.sTagEntryInfo*, align 8
  store %struct.NestingLevels* %nls, %struct.NestingLevels** %nls.addr, align 8
  store i32 0, i32* %chunks_output, align 4
  %call = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call, %struct.sVString** %result, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.NestingLevels*, %struct.NestingLevels** %nls.addr, align 8
  %n = getelementptr inbounds %struct.NestingLevels, %struct.NestingLevels* %1, i32 0, i32 1
  %2 = load i32, i32* %n, align 8
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.NestingLevels*, %struct.NestingLevels** %nls.addr, align 8
  %4 = load i32, i32* %i, align 4
  %call1 = call %struct.NestingLevel* @nestingLevelsGetNth(%struct.NestingLevels* %3, i32 %4)
  store %struct.NestingLevel* %call1, %struct.NestingLevel** %nl, align 8
  %5 = load %struct.NestingLevel*, %struct.NestingLevel** %nl, align 8
  %call2 = call %struct.sTagEntryInfo* @getEntryOfNestingLevel(%struct.NestingLevel* %5)
  store %struct.sTagEntryInfo* %call2, %struct.sTagEntryInfo** %e, align 8
  %6 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %e, align 8
  %tobool = icmp ne %struct.sTagEntryInfo* %6, null
  br i1 %tobool, label %land.lhs.true, label %if.end10

land.lhs.true:                                    ; preds = %for.body
  %7 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %e, align 8
  %name = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %7, i32 0, i32 7
  %8 = load i8*, i8** %name, align 8
  %call3 = call i64 @strlen(i8* %8)
  %cmp4 = icmp ugt i64 %call3, 0
  br i1 %cmp4, label %land.lhs.true5, label %if.end10

land.lhs.true5:                                   ; preds = %land.lhs.true
  %9 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %e, align 8
  %10 = bitcast %struct.sTagEntryInfo* %9 to i8*
  %bf.load = load i8, i8* %10, align 8
  %bf.lshr = lshr i8 %bf.load, 4
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool6 = icmp ne i32 %bf.cast, 0
  br i1 %tobool6, label %if.end10, label %if.then

if.then:                                          ; preds = %land.lhs.true5
  %11 = load i32, i32* %chunks_output, align 4
  %inc = add i32 %11, 1
  store i32 %inc, i32* %chunks_output, align 4
  %cmp7 = icmp ugt i32 %11, 0
  br i1 %cmp7, label %if.then8, label %if.end

if.then8:                                         ; preds = %if.then
  %12 = load %struct.sVString*, %struct.sVString** %result, align 8
  call void @vStringPut(%struct.sVString* %12, i32 46)
  br label %if.end

if.end:                                           ; preds = %if.then8, %if.then
  %13 = load %struct.sVString*, %struct.sVString** %result, align 8
  %14 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %e, align 8
  %name9 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %14, i32 0, i32 7
  %15 = load i8*, i8** %name9, align 8
  call void @vStringCatS(%struct.sVString* %13, i8* %15)
  br label %if.end10

if.end10:                                         ; preds = %if.end, %land.lhs.true5, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end10
  %16 = load i32, i32* %i, align 4
  %inc11 = add nsw i32 %16, 1
  store i32 %inc11, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load %struct.sVString*, %struct.sVString** %result, align 8
  ret %struct.sVString* %17
}

declare i8* @strrchr(i8*, i32) #1

declare void @vStringNCatS(%struct.sVString*, i8*, i64) #1

declare %struct.NestingLevel* @nestingLevelsGetNth(%struct.NestingLevels*, i32) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 10.0.0 (https://github.com/holzschu/clang.git 0cfc630fbdb62e96720b611a57123ef3eb13e297) (https://github.com/holzschu/llvm.git 0d8a71e39b28502c24718f7e74b5acbcfe36dfe0)"}
