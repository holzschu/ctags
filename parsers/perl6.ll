; ModuleID = 'perl6.c'
source_filename = "perl6.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-ios11.0.0"

%struct.sKindDefinition = type { i8, i8, i8*, i8*, i8, i32, %struct.sRoleDesc*, %struct.sScopeSeparator*, i32, i32, i32, %struct.sKindDefinition*, %struct.sKindDefinition* }
%struct.sRoleDesc = type { i8, i8*, i8* }
%struct.sScopeSeparator = type { i32, i8* }
%struct._MIO = type opaque
%struct.sParserDefinition = type { i8*, %struct.sKindDefinition*, i32, i8**, i8**, i8**, void (i32)*, void (i32, i1)*, void ()*, i32 (i32)*, i8* (%struct._MIO*, i32*, i32)**, i32, i8, i8, i8, i8, %struct.tagRegexTable*, i32, %struct.keywordTable*, i32, %struct.sTagXpathTableTable*, i32, i8, %struct.sFieldDefinition*, i32, %struct.sXtagDefinition*, i32, %struct.sParserDependency*, i32, %struct.sParameterHandlerTable*, i32, %struct.sXpathFileSpec*, i32, i32, i8 }
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
%struct.p6Ctx = type { [128 x i32], i32, %struct.sVString*, i8* }

@.str = private unnamed_addr constant [6 x i8] c"Perl6\00", align 1
@perl6Kinds = internal global [10 x %struct.sKindDefinition] [%struct.sKindDefinition { i8 1, i8 99, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 103, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 109, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 111, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 112, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 114, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 117, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 98, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 115, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 116, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }], align 8
@extensions = internal constant [5 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0), i8* null], align 8
@selectors = internal global [2 x i8* (%struct._MIO*, i32*, i32)*] [i8* (%struct._MIO*, i32*, i32)* @selectByPickingPerlVersion, i8* (%struct._MIO*, i32*, i32)* null], align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"class\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"classes\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"grammar\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"grammars\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"method\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"methods\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"module\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"modules\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"package\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"packages\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"role\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"roles\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"rule\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"rules\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"submethod\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"submethods\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"subroutine\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"subroutines\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"token\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"tokens\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"p6\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"pm6\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"pm\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"pl6\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c",; \09\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"my\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"our\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"sub\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"unit\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"multi\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"proto\00", align 1
@token2kind = internal constant [15 x i32] [i32 0, i32 1, i32 2, i32 3, i32 8, i32 -1, i32 -1, i32 4, i32 -1, i32 5, i32 6, i32 8, i32 7, i32 -1, i32 9], align 4
@validMethodPrefix = internal constant <{ [95 x i32], [161 x i32] }> <{ [95 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1], [161 x i32] zeroinitializer }>, align 4
@validPerl6Identifier = internal constant <{ [123 x i32], [133 x i32] }> <{ [123 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1], [133 x i32] zeroinitializer }>, align 4

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sParserDefinition* @Perl6Parser() #0 {
entry:
  %def = alloca %struct.sParserDefinition*, align 8
  %call = call %struct.sParserDefinition* @parserNew(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store %struct.sParserDefinition* %call, %struct.sParserDefinition** %def, align 8
  %0 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %0, i32 0, i32 1
  store %struct.sKindDefinition* getelementptr inbounds ([10 x %struct.sKindDefinition], [10 x %struct.sKindDefinition]* @perl6Kinds, i64 0, i64 0), %struct.sKindDefinition** %kindTable, align 8
  %1 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %1, i32 0, i32 2
  store i32 10, i32* %kindCount, align 8
  %2 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %extensions = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %2, i32 0, i32 3
  store i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @extensions, i64 0, i64 0), i8*** %extensions, align 8
  %3 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %parser = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %3, i32 0, i32 8
  store void ()* @findPerl6Tags, void ()** %parser, align 8
  %4 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %selectLanguage = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %4, i32 0, i32 10
  store i8* (%struct._MIO*, i32*, i32)** getelementptr inbounds ([2 x i8* (%struct._MIO*, i32*, i32)*], [2 x i8* (%struct._MIO*, i32*, i32)*]* @selectors, i64 0, i64 0), i8* (%struct._MIO*, i32*, i32)*** %selectLanguage, align 8
  %5 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  ret %struct.sParserDefinition* %5
}

declare %struct.sParserDefinition* @parserNew(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @findPerl6Tags() #0 {
entry:
  %ctx = alloca %struct.p6Ctx, align 8
  %s = alloca i8*, align 8
  %len = alloca i32, align 4
  %token = alloca i32, align 4
  call void @initP6Ctx(%struct.p6Ctx* %ctx)
  br label %while.cond

while.cond:                                       ; preds = %if.end22, %entry
  %call = call i32 @getNonSpaceStr(%struct.p6Ctx* %ctx, i8** %s)
  store i32 %call, i32* %len, align 4
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %0 = load i8*, i8** %s, align 8
  %1 = load i32, i32* %len, align 4
  %call1 = call i32 @matchToken(i8* %0, i32 %1)
  store i32 %call1, i32* %token, align 4
  %2 = load i32, i32* %token, align 4
  %cmp2 = icmp sge i32 %2, 0
  br i1 %cmp2, label %if.then, label %if.else13

if.then:                                          ; preds = %while.body
  br label %do.body

do.body:                                          ; preds = %if.then
  %n_tokens = getelementptr inbounds %struct.p6Ctx, %struct.p6Ctx* %ctx, i32 0, i32 1
  %3 = load i32, i32* %n_tokens, align 8
  %conv = zext i32 %3 to i64
  %cmp3 = icmp ult i64 %conv, 128
  br i1 %cmp3, label %if.then5, label %if.else

if.then5:                                         ; preds = %do.body
  %4 = load i32, i32* %token, align 4
  %tokens = getelementptr inbounds %struct.p6Ctx, %struct.p6Ctx* %ctx, i32 0, i32 0
  %n_tokens6 = getelementptr inbounds %struct.p6Ctx, %struct.p6Ctx* %ctx, i32 0, i32 1
  %5 = load i32, i32* %n_tokens6, align 8
  %idxprom = zext i32 %5 to i64
  %arrayidx = getelementptr inbounds [128 x i32], [128 x i32]* %tokens, i64 0, i64 %idxprom
  store i32 %4, i32* %arrayidx, align 4
  %n_tokens7 = getelementptr inbounds %struct.p6Ctx, %struct.p6Ctx* %ctx, i32 0, i32 1
  %6 = load i32, i32* %n_tokens7, align 8
  %inc = add i32 %6, 1
  store i32 %inc, i32* %n_tokens7, align 8
  br label %if.end

if.else:                                          ; preds = %do.body
  br label %do.body8

do.body8:                                         ; preds = %if.else
  br label %do.end

do.end:                                           ; preds = %do.body8
  br label %do.body9

do.body9:                                         ; preds = %do.end
  %n_tokens10 = getelementptr inbounds %struct.p6Ctx, %struct.p6Ctx* %ctx, i32 0, i32 1
  store i32 0, i32* %n_tokens10, align 8
  br label %do.end11

do.end11:                                         ; preds = %do.body9
  br label %if.end

if.end:                                           ; preds = %do.end11, %if.then5
  br label %do.end12

do.end12:                                         ; preds = %if.end
  br label %if.end22

if.else13:                                        ; preds = %while.body
  %n_tokens14 = getelementptr inbounds %struct.p6Ctx, %struct.p6Ctx* %ctx, i32 0, i32 1
  %7 = load i32, i32* %n_tokens14, align 8
  %cmp15 = icmp ugt i32 %7, 0
  br i1 %cmp15, label %if.then17, label %if.end21

if.then17:                                        ; preds = %if.else13
  %8 = load i8*, i8** %s, align 8
  %9 = load i32, i32* %len, align 4
  call void @possiblyMakeTag(%struct.p6Ctx* %ctx, i8* %8, i32 %9)
  br label %do.body18

do.body18:                                        ; preds = %if.then17
  %n_tokens19 = getelementptr inbounds %struct.p6Ctx, %struct.p6Ctx* %ctx, i32 0, i32 1
  store i32 0, i32* %n_tokens19, align 8
  br label %do.end20

do.end20:                                         ; preds = %do.body18
  br label %if.end21

if.end21:                                         ; preds = %do.end20, %if.else13
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %do.end12
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @deinitP6Ctx(%struct.p6Ctx* %ctx)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @initP6Ctx(%struct.p6Ctx* %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.p6Ctx*, align 8
  store %struct.p6Ctx* %ctx, %struct.p6Ctx** %ctx.addr, align 8
  %0 = load %struct.p6Ctx*, %struct.p6Ctx** %ctx.addr, align 8
  %n_tokens = getelementptr inbounds %struct.p6Ctx, %struct.p6Ctx* %0, i32 0, i32 1
  store i32 0, i32* %n_tokens, align 8
  %call = call %struct.sVString* @vStringNew()
  %1 = load %struct.p6Ctx*, %struct.p6Ctx** %ctx.addr, align 8
  %name = getelementptr inbounds %struct.p6Ctx, %struct.p6Ctx* %1, i32 0, i32 2
  store %struct.sVString* %call, %struct.sVString** %name, align 8
  %2 = load %struct.p6Ctx*, %struct.p6Ctx** %ctx.addr, align 8
  %line = getelementptr inbounds %struct.p6Ctx, %struct.p6Ctx* %2, i32 0, i32 3
  store i8* null, i8** %line, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @getNonSpaceStr(%struct.p6Ctx* %ctx, i8** %ptok) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.p6Ctx*, align 8
  %ptok.addr = alloca i8**, align 8
  %s = alloca i8*, align 8
  %non_white_len = alloca i32, align 4
  store %struct.p6Ctx* %ctx, %struct.p6Ctx** %ctx.addr, align 8
  store i8** %ptok, i8*** %ptok.addr, align 8
  %0 = load %struct.p6Ctx*, %struct.p6Ctx** %ctx.addr, align 8
  %line = getelementptr inbounds %struct.p6Ctx, %struct.p6Ctx* %0, i32 0, i32 3
  %1 = load i8*, i8** %line, align 8
  store i8* %1, i8** %s, align 8
  %2 = load i8*, i8** %s, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.end3, label %if.then

if.then:                                          ; preds = %entry
  br label %next_line

next_line:                                        ; preds = %if.else, %if.then10, %if.then
  %call = call i8* @readLineFromInputFile()
  store i8* %call, i8** %s, align 8
  %3 = load i8*, i8** %s, align 8
  %tobool1 = icmp ne i8* %3, null
  br i1 %tobool1, label %if.end, label %if.then2

if.then2:                                         ; preds = %next_line
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %next_line
  br label %if.end3

if.end3:                                          ; preds = %if.end, %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end3
  %4 = load i8*, i8** %s, align 8
  %5 = load i8, i8* %4, align 1
  %conv = sext i8 %5 to i32
  %tobool4 = icmp ne i32 %conv, 0
  br i1 %tobool4, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %6 = load i8*, i8** %s, align 8
  %7 = load i8, i8* %6, align 1
  %conv5 = sext i8 %7 to i32
  %call6 = call i32 @isspace(i32 %conv5) #3
  %tobool7 = icmp ne i32 %call6, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %8 = phi i1 [ false, %while.cond ], [ %tobool7, %land.rhs ]
  br i1 %8, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %9 = load i8*, i8** %s, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr, i8** %s, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %10 = load i8*, i8** %s, align 8
  %11 = load i8, i8* %10, align 1
  %conv8 = sext i8 %11 to i32
  %cmp = icmp eq i32 35, %conv8
  br i1 %cmp, label %if.then10, label %if.end11

if.then10:                                        ; preds = %while.end
  br label %next_line

if.end11:                                         ; preds = %while.end
  %12 = load i8*, i8** %s, align 8
  %call12 = call i64 @strcspn(i8* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0))
  %conv13 = trunc i64 %call12 to i32
  store i32 %conv13, i32* %non_white_len, align 4
  %13 = load i32, i32* %non_white_len, align 4
  %tobool14 = icmp ne i32 %13, 0
  br i1 %tobool14, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.end11
  %14 = load i8*, i8** %s, align 8
  %15 = load i32, i32* %non_white_len, align 4
  %idx.ext = sext i32 %15 to i64
  %add.ptr = getelementptr inbounds i8, i8* %14, i64 %idx.ext
  %16 = load %struct.p6Ctx*, %struct.p6Ctx** %ctx.addr, align 8
  %line16 = getelementptr inbounds %struct.p6Ctx, %struct.p6Ctx* %16, i32 0, i32 3
  store i8* %add.ptr, i8** %line16, align 8
  %17 = load i8*, i8** %s, align 8
  %18 = load i8**, i8*** %ptok.addr, align 8
  store i8* %17, i8** %18, align 8
  %19 = load i32, i32* %non_white_len, align 4
  store i32 %19, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %if.end11
  br label %next_line

return:                                           ; preds = %if.then15, %if.then2
  %20 = load i32, i32* %retval, align 4
  ret i32 %20
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @matchToken(i8* %s, i32 %len) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  %0 = load i32, i32* %len.addr, align 4
  switch i32 %0, label %sw.epilog102 [
    i32 2, label %sw.bb
    i32 3, label %sw.bb1
    i32 4, label %sw.bb14
    i32 5, label %sw.bb36
    i32 6, label %sw.bb64
    i32 7, label %sw.bb80
    i32 9, label %sw.bb96
  ]

sw.bb:                                            ; preds = %entry
  %1 = load i8*, i8** %s.addr, align 8
  %call = call i32 @strncmp(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i64 0, i64 0), i64 2)
  %cmp = icmp eq i32 0, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  store i32 5, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %sw.bb
  br label %sw.epilog102

sw.bb1:                                           ; preds = %entry
  %2 = load i8*, i8** %s.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 0
  %3 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %3 to i32
  switch i32 %conv, label %sw.epilog [
    i32 111, label %sw.bb2
    i32 115, label %sw.bb8
  ]

sw.bb2:                                           ; preds = %sw.bb1
  %4 = load i8*, i8** %s.addr, align 8
  %call3 = call i32 @strncmp(i8* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0), i64 3)
  %cmp4 = icmp eq i32 0, %call3
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %sw.bb2
  store i32 6, i32* %retval, align 4
  br label %return

if.end7:                                          ; preds = %sw.bb2
  br label %sw.epilog

sw.bb8:                                           ; preds = %sw.bb1
  %5 = load i8*, i8** %s.addr, align 8
  %call9 = call i32 @strncmp(i8* %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i64 0, i64 0), i64 3)
  %cmp10 = icmp eq i32 0, %call9
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %sw.bb8
  store i32 11, i32* %retval, align 4
  br label %return

if.end13:                                         ; preds = %sw.bb8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %if.end13, %if.end7
  br label %sw.epilog102

sw.bb14:                                          ; preds = %entry
  %6 = load i8*, i8** %s.addr, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %6, i64 1
  %7 = load i8, i8* %arrayidx15, align 1
  %conv16 = sext i8 %7 to i32
  switch i32 %conv16, label %sw.epilog35 [
    i32 111, label %sw.bb17
    i32 117, label %sw.bb23
    i32 110, label %sw.bb29
  ]

sw.bb17:                                          ; preds = %sw.bb14
  %8 = load i8*, i8** %s.addr, align 8
  %call18 = call i32 @strncmp(i8* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i64 4)
  %cmp19 = icmp eq i32 0, %call18
  br i1 %cmp19, label %if.then21, label %if.end22

if.then21:                                        ; preds = %sw.bb17
  store i32 9, i32* %retval, align 4
  br label %return

if.end22:                                         ; preds = %sw.bb17
  br label %sw.epilog35

sw.bb23:                                          ; preds = %sw.bb14
  %9 = load i8*, i8** %s.addr, align 8
  %call24 = call i32 @strncmp(i8* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i64 4)
  %cmp25 = icmp eq i32 0, %call24
  br i1 %cmp25, label %if.then27, label %if.end28

if.then27:                                        ; preds = %sw.bb23
  store i32 10, i32* %retval, align 4
  br label %return

if.end28:                                         ; preds = %sw.bb23
  br label %sw.epilog35

sw.bb29:                                          ; preds = %sw.bb14
  %10 = load i8*, i8** %s.addr, align 8
  %call30 = call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0), i64 4)
  %cmp31 = icmp eq i32 0, %call30
  br i1 %cmp31, label %if.then33, label %if.end34

if.then33:                                        ; preds = %sw.bb29
  store i32 13, i32* %retval, align 4
  br label %return

if.end34:                                         ; preds = %sw.bb29
  br label %sw.epilog35

sw.epilog35:                                      ; preds = %sw.bb14, %if.end34, %if.end28, %if.end22
  br label %sw.epilog102

sw.bb36:                                          ; preds = %entry
  %11 = load i8*, i8** %s.addr, align 8
  %arrayidx37 = getelementptr inbounds i8, i8* %11, i64 0
  %12 = load i8, i8* %arrayidx37, align 1
  %conv38 = sext i8 %12 to i32
  switch i32 %conv38, label %sw.epilog63 [
    i32 99, label %sw.bb39
    i32 109, label %sw.bb45
    i32 112, label %sw.bb51
    i32 116, label %sw.bb57
  ]

sw.bb39:                                          ; preds = %sw.bb36
  %13 = load i8*, i8** %s.addr, align 8
  %call40 = call i32 @strncmp(i8* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 5)
  %cmp41 = icmp eq i32 0, %call40
  br i1 %cmp41, label %if.then43, label %if.end44

if.then43:                                        ; preds = %sw.bb39
  store i32 0, i32* %retval, align 4
  br label %return

if.end44:                                         ; preds = %sw.bb39
  br label %sw.epilog63

sw.bb45:                                          ; preds = %sw.bb36
  %14 = load i8*, i8** %s.addr, align 8
  %call46 = call i32 @strncmp(i8* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i64 0, i64 0), i64 5)
  %cmp47 = icmp eq i32 0, %call46
  br i1 %cmp47, label %if.then49, label %if.end50

if.then49:                                        ; preds = %sw.bb45
  store i32 4, i32* %retval, align 4
  br label %return

if.end50:                                         ; preds = %sw.bb45
  br label %sw.epilog63

sw.bb51:                                          ; preds = %sw.bb36
  %15 = load i8*, i8** %s.addr, align 8
  %call52 = call i32 @strncmp(i8* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i64 0, i64 0), i64 5)
  %cmp53 = icmp eq i32 0, %call52
  br i1 %cmp53, label %if.then55, label %if.end56

if.then55:                                        ; preds = %sw.bb51
  store i32 8, i32* %retval, align 4
  br label %return

if.end56:                                         ; preds = %sw.bb51
  br label %sw.epilog63

sw.bb57:                                          ; preds = %sw.bb36
  %16 = load i8*, i8** %s.addr, align 8
  %call58 = call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), i64 5)
  %cmp59 = icmp eq i32 0, %call58
  br i1 %cmp59, label %if.then61, label %if.end62

if.then61:                                        ; preds = %sw.bb57
  store i32 14, i32* %retval, align 4
  br label %return

if.end62:                                         ; preds = %sw.bb57
  br label %sw.epilog63

sw.epilog63:                                      ; preds = %sw.bb36, %if.end62, %if.end56, %if.end50, %if.end44
  br label %sw.epilog102

sw.bb64:                                          ; preds = %entry
  %17 = load i8*, i8** %s.addr, align 8
  %arrayidx65 = getelementptr inbounds i8, i8* %17, i64 1
  %18 = load i8, i8* %arrayidx65, align 1
  %conv66 = sext i8 %18 to i32
  switch i32 %conv66, label %sw.epilog79 [
    i32 101, label %sw.bb67
    i32 111, label %sw.bb73
  ]

sw.bb67:                                          ; preds = %sw.bb64
  %19 = load i8*, i8** %s.addr, align 8
  %call68 = call i32 @strncmp(i8* %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i64 6)
  %cmp69 = icmp eq i32 0, %call68
  br i1 %cmp69, label %if.then71, label %if.end72

if.then71:                                        ; preds = %sw.bb67
  store i32 2, i32* %retval, align 4
  br label %return

if.end72:                                         ; preds = %sw.bb67
  br label %sw.epilog79

sw.bb73:                                          ; preds = %sw.bb64
  %20 = load i8*, i8** %s.addr, align 8
  %call74 = call i32 @strncmp(i8* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i64 6)
  %cmp75 = icmp eq i32 0, %call74
  br i1 %cmp75, label %if.then77, label %if.end78

if.then77:                                        ; preds = %sw.bb73
  store i32 3, i32* %retval, align 4
  br label %return

if.end78:                                         ; preds = %sw.bb73
  br label %sw.epilog79

sw.epilog79:                                      ; preds = %sw.bb64, %if.end78, %if.end72
  br label %sw.epilog102

sw.bb80:                                          ; preds = %entry
  %21 = load i8*, i8** %s.addr, align 8
  %arrayidx81 = getelementptr inbounds i8, i8* %21, i64 0
  %22 = load i8, i8* %arrayidx81, align 1
  %conv82 = sext i8 %22 to i32
  switch i32 %conv82, label %sw.epilog95 [
    i32 103, label %sw.bb83
    i32 112, label %sw.bb89
  ]

sw.bb83:                                          ; preds = %sw.bb80
  %23 = load i8*, i8** %s.addr, align 8
  %call84 = call i32 @strncmp(i8* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i64 7)
  %cmp85 = icmp eq i32 0, %call84
  br i1 %cmp85, label %if.then87, label %if.end88

if.then87:                                        ; preds = %sw.bb83
  store i32 1, i32* %retval, align 4
  br label %return

if.end88:                                         ; preds = %sw.bb83
  br label %sw.epilog95

sw.bb89:                                          ; preds = %sw.bb80
  %24 = load i8*, i8** %s.addr, align 8
  %call90 = call i32 @strncmp(i8* %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i64 7)
  %cmp91 = icmp eq i32 0, %call90
  br i1 %cmp91, label %if.then93, label %if.end94

if.then93:                                        ; preds = %sw.bb89
  store i32 7, i32* %retval, align 4
  br label %return

if.end94:                                         ; preds = %sw.bb89
  br label %sw.epilog95

sw.epilog95:                                      ; preds = %sw.bb80, %if.end94, %if.end88
  br label %sw.epilog102

sw.bb96:                                          ; preds = %entry
  %25 = load i8*, i8** %s.addr, align 8
  %call97 = call i32 @strncmp(i8* %25, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i64 9)
  %cmp98 = icmp eq i32 0, %call97
  br i1 %cmp98, label %if.then100, label %if.end101

if.then100:                                       ; preds = %sw.bb96
  store i32 12, i32* %retval, align 4
  br label %return

if.end101:                                        ; preds = %sw.bb96
  br label %sw.epilog102

sw.epilog102:                                     ; preds = %entry, %if.end101, %sw.epilog95, %sw.epilog79, %sw.epilog63, %sw.epilog35, %sw.epilog, %if.end
  store i32 -1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog102, %if.then100, %if.then93, %if.then87, %if.then77, %if.then71, %if.then61, %if.then55, %if.then49, %if.then43, %if.then33, %if.then27, %if.then21, %if.then12, %if.then6, %if.then
  %26 = load i32, i32* %retval, align 4
  ret i32 %26
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @possiblyMakeTag(%struct.p6Ctx* %ctx, i8* %s, i32 %len) #0 {
entry:
  %ctx.addr = alloca %struct.p6Ctx*, align 8
  %s.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %kind = alloca i32, align 4
  store %struct.p6Ctx* %ctx, %struct.p6Ctx** %ctx.addr, align 8
  store i8* %s, i8** %s.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.p6Ctx*, %struct.p6Ctx** %ctx.addr, align 8
  %tokens = getelementptr inbounds %struct.p6Ctx, %struct.p6Ctx* %0, i32 0, i32 0
  %1 = load %struct.p6Ctx*, %struct.p6Ctx** %ctx.addr, align 8
  %n_tokens = getelementptr inbounds %struct.p6Ctx, %struct.p6Ctx* %1, i32 0, i32 1
  %2 = load i32, i32* %n_tokens, align 8
  %sub = sub i32 %2, 1
  %idxprom = zext i32 %sub to i64
  %arrayidx = getelementptr inbounds [128 x i32], [128 x i32]* %tokens, i64 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %idxprom1 = zext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [15 x i32], [15 x i32]* @token2kind, i64 0, i64 %idxprom1
  %4 = load i32, i32* %arrayidx2, align 4
  store i32 %4, i32* %kind, align 4
  %5 = load i32, i32* %kind, align 4
  %cmp = icmp ne i32 -1, %5
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.end
  %6 = load i32, i32* %kind, align 4
  %idxprom3 = sext i32 %6 to i64
  %arrayidx4 = getelementptr inbounds [10 x %struct.sKindDefinition], [10 x %struct.sKindDefinition]* @perl6Kinds, i64 0, i64 %idxprom3
  %enabled = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %arrayidx4, i32 0, i32 0
  %7 = load i8, i8* %enabled, align 8
  %tobool = trunc i8 %7 to i1
  br i1 %tobool, label %land.lhs.true5, label %if.end

land.lhs.true5:                                   ; preds = %land.lhs.true
  %8 = load i32, i32* %kind, align 4
  %9 = load i32, i32* %len.addr, align 4
  %call = call i32 @trimIdentifier(i32 %8, i8** %s.addr, i32 %9)
  store i32 %call, i32* %len.addr, align 4
  %cmp6 = icmp sgt i32 %call, 0
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true5
  %10 = load %struct.p6Ctx*, %struct.p6Ctx** %ctx.addr, align 8
  %11 = load i32, i32* %kind, align 4
  %12 = load i8*, i8** %s.addr, align 8
  %13 = load i32, i32* %len.addr, align 4
  call void @makeTag(%struct.p6Ctx* %10, i32 %11, i8* %12, i32 %13)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true5, %land.lhs.true, %do.end
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @deinitP6Ctx(%struct.p6Ctx* %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.p6Ctx*, align 8
  store %struct.p6Ctx* %ctx, %struct.p6Ctx** %ctx.addr, align 8
  %0 = load %struct.p6Ctx*, %struct.p6Ctx** %ctx.addr, align 8
  %name = getelementptr inbounds %struct.p6Ctx, %struct.p6Ctx* %0, i32 0, i32 2
  %1 = load %struct.sVString*, %struct.sVString** %name, align 8
  call void @vStringDelete(%struct.sVString* %1)
  ret void
}

declare %struct.sVString* @vStringNew() #1

declare i8* @readLineFromInputFile() #1

; Function Attrs: nounwind readonly
declare i32 @isspace(i32) #2

declare i64 @strcspn(i8*, i8*) #1

declare i32 @strncmp(i8*, i8*, i64) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @trimIdentifier(i32 %kind, i8** %ps, i32 %len) #0 {
entry:
  %kind.addr = alloca i32, align 4
  %ps.addr = alloca i8**, align 8
  %len.addr = alloca i32, align 4
  %end = alloca i8*, align 8
  %s = alloca i8*, align 8
  store i32 %kind, i32* %kind.addr, align 4
  store i8** %ps, i8*** %ps.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load i8**, i8*** %ps.addr, align 8
  %1 = load i8*, i8** %0, align 8
  %2 = load i32, i32* %len.addr, align 4
  %idx.ext = sext i32 %2 to i64
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %idx.ext
  store i8* %add.ptr, i8** %end, align 8
  %3 = load i8**, i8*** %ps.addr, align 8
  %4 = load i8*, i8** %3, align 8
  store i8* %4, i8** %s, align 8
  %5 = load i32, i32* %kind.addr, align 4
  %shl = shl i32 1, %5
  %and = and i32 132, %shl
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.end
  %6 = load i8*, i8** %s, align 8
  %7 = load i8, i8* %6, align 1
  %conv = sext i8 %7 to i32
  %idxprom = sext i32 %conv to i64
  %arrayidx = getelementptr inbounds [256 x i32], [256 x i32]* bitcast (<{ [95 x i32], [161 x i32] }>* @validMethodPrefix to [256 x i32]*), i64 0, i64 %idxprom
  %8 = load i32, i32* %arrayidx, align 4
  %tobool1 = icmp ne i32 %8, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.end
  %9 = phi i1 [ false, %do.end ], [ %tobool1, %land.rhs ]
  %land.ext = zext i1 %9 to i32
  %10 = load i8*, i8** %s, align 8
  %idx.ext2 = sext i32 %land.ext to i64
  %add.ptr3 = getelementptr inbounds i8, i8* %10, i64 %idx.ext2
  store i8* %add.ptr3, i8** %s, align 8
  %11 = load i8*, i8** %s, align 8
  %12 = load i8**, i8*** %ps.addr, align 8
  store i8* %11, i8** %12, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %land.end
  %13 = load i8*, i8** %s, align 8
  %14 = load i8*, i8** %end, align 8
  %cmp = icmp ult i8* %13, %14
  br i1 %cmp, label %land.rhs5, label %land.end10

land.rhs5:                                        ; preds = %while.cond
  %15 = load i8*, i8** %s, align 8
  %16 = load i8, i8* %15, align 1
  %conv6 = sext i8 %16 to i32
  %idxprom7 = sext i32 %conv6 to i64
  %arrayidx8 = getelementptr inbounds [256 x i32], [256 x i32]* bitcast (<{ [123 x i32], [133 x i32] }>* @validPerl6Identifier to [256 x i32]*), i64 0, i64 %idxprom7
  %17 = load i32, i32* %arrayidx8, align 4
  %tobool9 = icmp ne i32 %17, 0
  br label %land.end10

land.end10:                                       ; preds = %land.rhs5, %while.cond
  %18 = phi i1 [ false, %while.cond ], [ %tobool9, %land.rhs5 ]
  br i1 %18, label %while.body, label %while.end

while.body:                                       ; preds = %land.end10
  %19 = load i8*, i8** %s, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr, i8** %s, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end10
  br label %while.cond12

while.cond12:                                     ; preds = %while.body22, %while.end
  %20 = load i8*, i8** %s, align 8
  %21 = load i8**, i8*** %ps.addr, align 8
  %22 = load i8*, i8** %21, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %20 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %22 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp13 = icmp sgt i64 %sub.ptr.sub, 0
  br i1 %cmp13, label %land.rhs15, label %land.end20

land.rhs15:                                       ; preds = %while.cond12
  %23 = load i8*, i8** %s, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %23, i64 -1
  %24 = load i8, i8* %arrayidx16, align 1
  %conv17 = sext i8 %24 to i32
  %cmp18 = icmp eq i32 58, %conv17
  br label %land.end20

land.end20:                                       ; preds = %land.rhs15, %while.cond12
  %25 = phi i1 [ false, %while.cond12 ], [ %cmp18, %land.rhs15 ]
  br i1 %25, label %while.body22, label %while.end24

while.body22:                                     ; preds = %land.end20
  %26 = load i8*, i8** %s, align 8
  %incdec.ptr23 = getelementptr inbounds i8, i8* %26, i32 -1
  store i8* %incdec.ptr23, i8** %s, align 8
  br label %while.cond12

while.end24:                                      ; preds = %land.end20
  %27 = load i8*, i8** %s, align 8
  %28 = load i8**, i8*** %ps.addr, align 8
  %29 = load i8*, i8** %28, align 8
  %sub.ptr.lhs.cast25 = ptrtoint i8* %27 to i64
  %sub.ptr.rhs.cast26 = ptrtoint i8* %29 to i64
  %sub.ptr.sub27 = sub i64 %sub.ptr.lhs.cast25, %sub.ptr.rhs.cast26
  %conv28 = trunc i64 %sub.ptr.sub27 to i32
  ret i32 %conv28
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @makeTag(%struct.p6Ctx* %ctx, i32 %kind, i8* %name, i32 %len) #0 {
entry:
  %ctx.addr = alloca %struct.p6Ctx*, align 8
  %kind.addr = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %entry1 = alloca %struct.sTagEntryInfo, align 8
  store %struct.p6Ctx* %ctx, %struct.p6Ctx** %ctx.addr, align 8
  store i32 %kind, i32* %kind.addr, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  %0 = load %struct.p6Ctx*, %struct.p6Ctx** %ctx.addr, align 8
  %name2 = getelementptr inbounds %struct.p6Ctx, %struct.p6Ctx* %0, i32 0, i32 2
  %1 = load %struct.sVString*, %struct.sVString** %name2, align 8
  %2 = load i8*, i8** %name.addr, align 8
  %3 = load i32, i32* %len.addr, align 4
  %conv = sext i32 %3 to i64
  call void @vStringNCopyS(%struct.sVString* %1, i8* %2, i64 %conv)
  %4 = load %struct.p6Ctx*, %struct.p6Ctx** %ctx.addr, align 8
  %name3 = getelementptr inbounds %struct.p6Ctx, %struct.p6Ctx* %4, i32 0, i32 2
  %5 = load %struct.sVString*, %struct.sVString** %name3, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %5, i32 0, i32 2
  %6 = load i8*, i8** %buffer, align 8
  %7 = load i32, i32* %kind.addr, align 4
  call void @initTagEntry(%struct.sTagEntryInfo* %entry1, i8* %6, i32 %7)
  %call = call i32 @makeTagEntry(%struct.sTagEntryInfo* %entry1)
  ret void
}

declare void @vStringNCopyS(%struct.sVString*, i8*, i64) #1

declare void @initTagEntry(%struct.sTagEntryInfo*, i8*, i32) #1

declare i32 @makeTagEntry(%struct.sTagEntryInfo*) #1

declare void @vStringDelete(%struct.sVString*) #1

declare i8* @selectByPickingPerlVersion(%struct._MIO*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 10.0.0 (https://github.com/holzschu/clang.git 0cfc630fbdb62e96720b611a57123ef3eb13e297) (https://github.com/holzschu/llvm.git 0d8a71e39b28502c24718f7e74b5acbcfe36dfe0)"}
