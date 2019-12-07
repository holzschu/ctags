; ModuleID = 'rust.c'
source_filename = "rust.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-ios11.0.0"

%struct.sKindDefinition = type { i8, i8, i8*, i8*, i8, i32, %struct.sRoleDesc*, %struct.sScopeSeparator*, i32, i32, i32, %struct.sKindDefinition*, %struct.sKindDefinition* }
%struct.sRoleDesc = type { i8, i8*, i8* }
%struct.sScopeSeparator = type { i32, i8* }
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
%struct.lexerState = type { i32, i32, i32, %struct.sVString*, i64, %struct._MIOPos }

@.str = private unnamed_addr constant [5 x i8] c"Rust\00", align 1
@rustKinds = internal global [12 x %struct.sKindDefinition] [%struct.sKindDefinition { i8 1, i8 110, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 115, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 105, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 99, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 102, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 103, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 116, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 118, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 77, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 109, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 101, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 80, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }], align 8
@extensions = internal constant [2 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i32 0, i32 0), i8* null], align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"module\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"struct\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"structural type\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"interface\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"trait interface\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"implementation\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"function\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"Function\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"enum\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"Enum\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"typedef\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"Type Alias\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"variable\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"Global variable\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"macro\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"Macro Definition\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"field\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"A struct field\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"enumerator\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"An enum variant\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"method\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"A method\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"rs\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"fn\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"mod\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"static\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"trait\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"impl\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"macro_rules\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"<<\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c">>\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"->\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"::\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"mut\00", align 1
@__const.parseTrait.goal_tokens = private unnamed_addr constant [1 x i32] [i32 123], align 4
@.str.36 = private unnamed_addr constant [4 x i8] c"for\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"where\00", align 1
@__const.parseStructOrEnum.goal_tokens1 = private unnamed_addr constant [2 x i32] [i32 59, i32 123], align 4
@__const.parseStructOrEnum.goal_tokens2 = private unnamed_addr constant [2 x i32] [i32 125, i32 44], align 4
@.str.38 = private unnamed_addr constant [5 x i8] c"priv\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"pub\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sParserDefinition* @RustParser() #0 {
entry:
  %def = alloca %struct.sParserDefinition*, align 8
  %call = call %struct.sParserDefinition* @parserNew(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.sParserDefinition* %call, %struct.sParserDefinition** %def, align 8
  %0 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %0, i32 0, i32 1
  store %struct.sKindDefinition* getelementptr inbounds ([12 x %struct.sKindDefinition], [12 x %struct.sKindDefinition]* @rustKinds, i64 0, i64 0), %struct.sKindDefinition** %kindTable, align 8
  %1 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %1, i32 0, i32 2
  store i32 12, i32* %kindCount, align 8
  %2 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %extensions = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %2, i32 0, i32 3
  store i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @extensions, i64 0, i64 0), i8*** %extensions, align 8
  %3 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %parser = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %3, i32 0, i32 8
  store void ()* @findRustTags, void ()** %parser, align 8
  %4 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  ret %struct.sParserDefinition* %4
}

declare %struct.sParserDefinition* @parserNew(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @findRustTags() #0 {
entry:
  %lexer = alloca %struct.lexerState, align 8
  %scope = alloca %struct.sVString*, align 8
  %call = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call, %struct.sVString** %scope, align 8
  call void @initLexer(%struct.lexerState* %lexer)
  %0 = load %struct.sVString*, %struct.sVString** %scope, align 8
  call void @parseBlock(%struct.lexerState* %lexer, i1 zeroext false, i32 12, %struct.sVString* %0)
  %1 = load %struct.sVString*, %struct.sVString** %scope, align 8
  call void @vStringDelete(%struct.sVString* %1)
  call void @deInitLexer(%struct.lexerState* %lexer)
  ret void
}

declare %struct.sVString* @vStringNew() #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @initLexer(%struct.lexerState* %lexer) #0 {
entry:
  %lexer.addr = alloca %struct.lexerState*, align 8
  store %struct.lexerState* %lexer, %struct.lexerState** %lexer.addr, align 8
  %0 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  call void @advanceNChar(%struct.lexerState* %0, i32 2)
  %call = call %struct.sVString* @vStringNew()
  %1 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %token_str = getelementptr inbounds %struct.lexerState, %struct.lexerState* %1, i32 0, i32 3
  store %struct.sVString* %call, %struct.sVString** %token_str, align 8
  %2 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %cur_c = getelementptr inbounds %struct.lexerState, %struct.lexerState* %2, i32 0, i32 0
  %3 = load i32, i32* %cur_c, align 8
  %cmp = icmp eq i32 %3, 35
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %next_c = getelementptr inbounds %struct.lexerState, %struct.lexerState* %4, i32 0, i32 1
  %5 = load i32, i32* %next_c, align 4
  %cmp1 = icmp eq i32 %5, 33
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  call void @scanComments(%struct.lexerState* %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %7 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %call2 = call i32 @advanceToken(%struct.lexerState* %7, i1 zeroext true)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseBlock(%struct.lexerState* %lexer, i1 zeroext %delim, i32 %kind, %struct.sVString* %scope) #0 {
entry:
  %lexer.addr = alloca %struct.lexerState*, align 8
  %delim.addr = alloca i8, align 1
  %kind.addr = alloca i32, align 4
  %scope.addr = alloca %struct.sVString*, align 8
  %level = alloca i32, align 4
  %old_scope_len = alloca i64, align 8
  store %struct.lexerState* %lexer, %struct.lexerState** %lexer.addr, align 8
  %frombool = zext i1 %delim to i8
  store i8 %frombool, i8* %delim.addr, align 1
  store i32 %kind, i32* %kind.addr, align 4
  store %struct.sVString* %scope, %struct.sVString** %scope.addr, align 8
  store i32 1, i32* %level, align 4
  %0 = load i8, i8* %delim.addr, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.then, label %if.end2

if.then:                                          ; preds = %entry
  %1 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %cur_token = getelementptr inbounds %struct.lexerState, %struct.lexerState* %1, i32 0, i32 2
  %2 = load i32, i32* %cur_token, align 8
  %cmp = icmp ne i32 %2, 123
  br i1 %cmp, label %if.then1, label %if.end

if.then1:                                         ; preds = %if.then
  br label %while.end

if.end:                                           ; preds = %if.then
  %3 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %call = call i32 @advanceToken(%struct.lexerState* %3, i1 zeroext true)
  br label %if.end2

if.end2:                                          ; preds = %if.end, %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end107, %if.end2
  %4 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %cur_token3 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %4, i32 0, i32 2
  %5 = load i32, i32* %cur_token3, align 8
  %cmp4 = icmp ne i32 %5, 6
  br i1 %cmp4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %cur_token5 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %6, i32 0, i32 2
  %7 = load i32, i32* %cur_token5, align 8
  %cmp6 = icmp eq i32 %7, 2
  br i1 %cmp6, label %if.then7, label %if.else73

if.then7:                                         ; preds = %while.body
  %8 = load %struct.sVString*, %struct.sVString** %scope.addr, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %8, i32 0, i32 0
  %9 = load i64, i64* %length, align 8
  store i64 %9, i64* %old_scope_len, align 8
  %10 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %token_str = getelementptr inbounds %struct.lexerState, %struct.lexerState* %10, i32 0, i32 3
  %11 = load %struct.sVString*, %struct.sVString** %token_str, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %11, i32 0, i32 2
  %12 = load i8*, i8** %buffer, align 8
  %call8 = call i32 @strcmp(i8* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0))
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.then7
  %13 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %14 = load %struct.sVString*, %struct.sVString** %scope.addr, align 8
  %15 = load i32, i32* %kind.addr, align 4
  call void @parseFn(%struct.lexerState* %13, %struct.sVString* %14, i32 %15)
  br label %if.end72

if.else:                                          ; preds = %if.then7
  %16 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %token_str11 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %16, i32 0, i32 3
  %17 = load %struct.sVString*, %struct.sVString** %token_str11, align 8
  %buffer12 = getelementptr inbounds %struct.sVString, %struct.sVString* %17, i32 0, i32 2
  %18 = load i8*, i8** %buffer12, align 8
  %call13 = call i32 @strcmp(i8* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0))
  %cmp14 = icmp eq i32 %call13, 0
  br i1 %cmp14, label %if.then15, label %if.else16

if.then15:                                        ; preds = %if.else
  %19 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %20 = load %struct.sVString*, %struct.sVString** %scope.addr, align 8
  %21 = load i32, i32* %kind.addr, align 4
  call void @parseMod(%struct.lexerState* %19, %struct.sVString* %20, i32 %21)
  br label %if.end71

if.else16:                                        ; preds = %if.else
  %22 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %token_str17 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %22, i32 0, i32 3
  %23 = load %struct.sVString*, %struct.sVString** %token_str17, align 8
  %buffer18 = getelementptr inbounds %struct.sVString, %struct.sVString* %23, i32 0, i32 2
  %24 = load i8*, i8** %buffer18, align 8
  %call19 = call i32 @strcmp(i8* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i64 0, i64 0))
  %cmp20 = icmp eq i32 %call19, 0
  br i1 %cmp20, label %if.then21, label %if.else22

if.then21:                                        ; preds = %if.else16
  %25 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %26 = load %struct.sVString*, %struct.sVString** %scope.addr, align 8
  %27 = load i32, i32* %kind.addr, align 4
  call void @parseStatic(%struct.lexerState* %25, %struct.sVString* %26, i32 %27)
  br label %if.end70

if.else22:                                        ; preds = %if.else16
  %28 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %token_str23 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %28, i32 0, i32 3
  %29 = load %struct.sVString*, %struct.sVString** %token_str23, align 8
  %buffer24 = getelementptr inbounds %struct.sVString, %struct.sVString* %29, i32 0, i32 2
  %30 = load i8*, i8** %buffer24, align 8
  %call25 = call i32 @strcmp(i8* %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i64 0, i64 0))
  %cmp26 = icmp eq i32 %call25, 0
  br i1 %cmp26, label %if.then27, label %if.else28

if.then27:                                        ; preds = %if.else22
  %31 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %32 = load %struct.sVString*, %struct.sVString** %scope.addr, align 8
  %33 = load i32, i32* %kind.addr, align 4
  call void @parseTrait(%struct.lexerState* %31, %struct.sVString* %32, i32 %33)
  br label %if.end69

if.else28:                                        ; preds = %if.else22
  %34 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %token_str29 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %34, i32 0, i32 3
  %35 = load %struct.sVString*, %struct.sVString** %token_str29, align 8
  %buffer30 = getelementptr inbounds %struct.sVString, %struct.sVString* %35, i32 0, i32 2
  %36 = load i8*, i8** %buffer30, align 8
  %call31 = call i32 @strcmp(i8* %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0))
  %cmp32 = icmp eq i32 %call31, 0
  br i1 %cmp32, label %if.then33, label %if.else34

if.then33:                                        ; preds = %if.else28
  %37 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %38 = load %struct.sVString*, %struct.sVString** %scope.addr, align 8
  %39 = load i32, i32* %kind.addr, align 4
  call void @parseType(%struct.lexerState* %37, %struct.sVString* %38, i32 %39)
  br label %if.end68

if.else34:                                        ; preds = %if.else28
  %40 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %token_str35 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %40, i32 0, i32 3
  %41 = load %struct.sVString*, %struct.sVString** %token_str35, align 8
  %buffer36 = getelementptr inbounds %struct.sVString, %struct.sVString* %41, i32 0, i32 2
  %42 = load i8*, i8** %buffer36, align 8
  %call37 = call i32 @strcmp(i8* %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0))
  %cmp38 = icmp eq i32 %call37, 0
  br i1 %cmp38, label %if.then39, label %if.else40

if.then39:                                        ; preds = %if.else34
  %43 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %44 = load %struct.sVString*, %struct.sVString** %scope.addr, align 8
  %45 = load i32, i32* %kind.addr, align 4
  call void @parseImpl(%struct.lexerState* %43, %struct.sVString* %44, i32 %45)
  br label %if.end67

if.else40:                                        ; preds = %if.else34
  %46 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %token_str41 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %46, i32 0, i32 3
  %47 = load %struct.sVString*, %struct.sVString** %token_str41, align 8
  %buffer42 = getelementptr inbounds %struct.sVString, %struct.sVString* %47, i32 0, i32 2
  %48 = load i8*, i8** %buffer42, align 8
  %call43 = call i32 @strcmp(i8* %48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %cmp44 = icmp eq i32 %call43, 0
  br i1 %cmp44, label %if.then45, label %if.else46

if.then45:                                        ; preds = %if.else40
  %49 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %50 = load %struct.sVString*, %struct.sVString** %scope.addr, align 8
  %51 = load i32, i32* %kind.addr, align 4
  call void @parseStructOrEnum(%struct.lexerState* %49, %struct.sVString* %50, i32 %51, i1 zeroext true)
  br label %if.end66

if.else46:                                        ; preds = %if.else40
  %52 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %token_str47 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %52, i32 0, i32 3
  %53 = load %struct.sVString*, %struct.sVString** %token_str47, align 8
  %buffer48 = getelementptr inbounds %struct.sVString, %struct.sVString* %53, i32 0, i32 2
  %54 = load i8*, i8** %buffer48, align 8
  %call49 = call i32 @strcmp(i8* %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %cmp50 = icmp eq i32 %call49, 0
  br i1 %cmp50, label %if.then51, label %if.else52

if.then51:                                        ; preds = %if.else46
  %55 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %56 = load %struct.sVString*, %struct.sVString** %scope.addr, align 8
  %57 = load i32, i32* %kind.addr, align 4
  call void @parseStructOrEnum(%struct.lexerState* %55, %struct.sVString* %56, i32 %57, i1 zeroext false)
  br label %if.end65

if.else52:                                        ; preds = %if.else46
  %58 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %token_str53 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %58, i32 0, i32 3
  %59 = load %struct.sVString*, %struct.sVString** %token_str53, align 8
  %buffer54 = getelementptr inbounds %struct.sVString, %struct.sVString* %59, i32 0, i32 2
  %60 = load i8*, i8** %buffer54, align 8
  %call55 = call i32 @strcmp(i8* %60, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i64 0, i64 0))
  %cmp56 = icmp eq i32 %call55, 0
  br i1 %cmp56, label %if.then57, label %if.else58

if.then57:                                        ; preds = %if.else52
  %61 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %62 = load %struct.sVString*, %struct.sVString** %scope.addr, align 8
  %63 = load i32, i32* %kind.addr, align 4
  call void @parseMacroRules(%struct.lexerState* %61, %struct.sVString* %62, i32 %63)
  br label %if.end64

if.else58:                                        ; preds = %if.else52
  %64 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %call59 = call i32 @advanceToken(%struct.lexerState* %64, i1 zeroext true)
  %65 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %cur_token60 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %65, i32 0, i32 2
  %66 = load i32, i32* %cur_token60, align 8
  %cmp61 = icmp eq i32 %66, 33
  br i1 %cmp61, label %if.then62, label %if.end63

if.then62:                                        ; preds = %if.else58
  %67 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  call void @skipMacro(%struct.lexerState* %67)
  br label %if.end63

if.end63:                                         ; preds = %if.then62, %if.else58
  br label %if.end64

if.end64:                                         ; preds = %if.end63, %if.then57
  br label %if.end65

if.end65:                                         ; preds = %if.end64, %if.then51
  br label %if.end66

if.end66:                                         ; preds = %if.end65, %if.then45
  br label %if.end67

if.end67:                                         ; preds = %if.end66, %if.then39
  br label %if.end68

if.end68:                                         ; preds = %if.end67, %if.then33
  br label %if.end69

if.end69:                                         ; preds = %if.end68, %if.then27
  br label %if.end70

if.end70:                                         ; preds = %if.end69, %if.then21
  br label %if.end71

if.end71:                                         ; preds = %if.end70, %if.then15
  br label %if.end72

if.end72:                                         ; preds = %if.end71, %if.then10
  %68 = load %struct.sVString*, %struct.sVString** %scope.addr, align 8
  %69 = load i64, i64* %old_scope_len, align 8
  call void @resetScope(%struct.sVString* %68, i64 %69)
  br label %if.end102

if.else73:                                        ; preds = %while.body
  %70 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %cur_token74 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %70, i32 0, i32 2
  %71 = load i32, i32* %cur_token74, align 8
  %cmp75 = icmp eq i32 %71, 123
  br i1 %cmp75, label %if.then76, label %if.else78

if.then76:                                        ; preds = %if.else73
  %72 = load i32, i32* %level, align 4
  %inc = add nsw i32 %72, 1
  store i32 %inc, i32* %level, align 4
  %73 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %call77 = call i32 @advanceToken(%struct.lexerState* %73, i1 zeroext true)
  br label %if.end101

if.else78:                                        ; preds = %if.else73
  %74 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %cur_token79 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %74, i32 0, i32 2
  %75 = load i32, i32* %cur_token79, align 8
  %cmp80 = icmp eq i32 %75, 125
  br i1 %cmp80, label %if.then81, label %if.else83

if.then81:                                        ; preds = %if.else78
  %76 = load i32, i32* %level, align 4
  %dec = add nsw i32 %76, -1
  store i32 %dec, i32* %level, align 4
  %77 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %call82 = call i32 @advanceToken(%struct.lexerState* %77, i1 zeroext true)
  br label %if.end100

if.else83:                                        ; preds = %if.else78
  %78 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %cur_token84 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %78, i32 0, i32 2
  %79 = load i32, i32* %cur_token84, align 8
  %cmp85 = icmp eq i32 %79, 39
  br i1 %cmp85, label %if.then86, label %if.else97

if.then86:                                        ; preds = %if.else83
  %80 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %call87 = call i32 @advanceToken(%struct.lexerState* %80, i1 zeroext true)
  %81 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %cur_token88 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %81, i32 0, i32 2
  %82 = load i32, i32* %cur_token88, align 8
  %cmp89 = icmp eq i32 %82, 2
  br i1 %cmp89, label %land.lhs.true, label %if.end96

land.lhs.true:                                    ; preds = %if.then86
  %83 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %token_str90 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %83, i32 0, i32 3
  %84 = load %struct.sVString*, %struct.sVString** %token_str90, align 8
  %buffer91 = getelementptr inbounds %struct.sVString, %struct.sVString* %84, i32 0, i32 2
  %85 = load i8*, i8** %buffer91, align 8
  %call92 = call i32 @strcmp(i8* %85, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i64 0, i64 0))
  %cmp93 = icmp eq i32 %call92, 0
  br i1 %cmp93, label %if.then94, label %if.end96

if.then94:                                        ; preds = %land.lhs.true
  %86 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %call95 = call i32 @advanceToken(%struct.lexerState* %86, i1 zeroext true)
  br label %if.end96

if.end96:                                         ; preds = %if.then94, %land.lhs.true, %if.then86
  br label %if.end99

if.else97:                                        ; preds = %if.else83
  %87 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %call98 = call i32 @advanceToken(%struct.lexerState* %87, i1 zeroext true)
  br label %if.end99

if.end99:                                         ; preds = %if.else97, %if.end96
  br label %if.end100

if.end100:                                        ; preds = %if.end99, %if.then81
  br label %if.end101

if.end101:                                        ; preds = %if.end100, %if.then76
  br label %if.end102

if.end102:                                        ; preds = %if.end101, %if.end72
  %88 = load i8, i8* %delim.addr, align 1
  %tobool103 = trunc i8 %88 to i1
  br i1 %tobool103, label %land.lhs.true104, label %if.end107

land.lhs.true104:                                 ; preds = %if.end102
  %89 = load i32, i32* %level, align 4
  %cmp105 = icmp sle i32 %89, 0
  br i1 %cmp105, label %if.then106, label %if.end107

if.then106:                                       ; preds = %land.lhs.true104
  br label %while.end

if.end107:                                        ; preds = %land.lhs.true104, %if.end102
  br label %while.cond

while.end:                                        ; preds = %if.then1, %if.then106, %while.cond
  ret void
}

declare void @vStringDelete(%struct.sVString*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @deInitLexer(%struct.lexerState* %lexer) #0 {
entry:
  %lexer.addr = alloca %struct.lexerState*, align 8
  store %struct.lexerState* %lexer, %struct.lexerState** %lexer.addr, align 8
  %0 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %token_str = getelementptr inbounds %struct.lexerState, %struct.lexerState* %0, i32 0, i32 3
  %1 = load %struct.sVString*, %struct.sVString** %token_str, align 8
  call void @vStringDelete(%struct.sVString* %1)
  %2 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %token_str1 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %2, i32 0, i32 3
  store %struct.sVString* null, %struct.sVString** %token_str1, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @advanceNChar(%struct.lexerState* %lexer, i32 %n) #0 {
entry:
  %lexer.addr = alloca %struct.lexerState*, align 8
  %n.addr = alloca i32, align 4
  store %struct.lexerState* %lexer, %struct.lexerState** %lexer.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* %n.addr, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* %n.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  call void @advanceChar(%struct.lexerState* %1)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @scanComments(%struct.lexerState* %lexer) #0 {
entry:
  %lexer.addr = alloca %struct.lexerState*, align 8
  %level = alloca i32, align 4
  store %struct.lexerState* %lexer, %struct.lexerState** %lexer.addr, align 8
  %0 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %next_c = getelementptr inbounds %struct.lexerState, %struct.lexerState* %0, i32 0, i32 1
  %1 = load i32, i32* %next_c, align 4
  %cmp = icmp eq i32 %1, 47
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  call void @advanceNChar(%struct.lexerState* %2, i32 2)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %3 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %cur_c = getelementptr inbounds %struct.lexerState, %struct.lexerState* %3, i32 0, i32 0
  %4 = load i32, i32* %cur_c, align 8
  %cmp1 = icmp ne i32 %4, -1
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %5 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %cur_c2 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %5, i32 0, i32 0
  %6 = load i32, i32* %cur_c2, align 8
  %cmp3 = icmp ne i32 %6, 10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %7 = phi i1 [ false, %while.cond ], [ %cmp3, %land.rhs ]
  br i1 %7, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %8 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  call void @advanceChar(%struct.lexerState* %8)
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %if.end48

if.else:                                          ; preds = %entry
  %9 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %next_c4 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %9, i32 0, i32 1
  %10 = load i32, i32* %next_c4, align 4
  %cmp5 = icmp eq i32 %10, 33
  br i1 %cmp5, label %if.then6, label %if.else19

if.then6:                                         ; preds = %if.else
  %11 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  call void @advanceNChar(%struct.lexerState* %11, i32 2)
  %12 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %cur_c7 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %12, i32 0, i32 0
  %13 = load i32, i32* %cur_c7, align 8
  %cmp8 = icmp eq i32 %13, 91
  br i1 %cmp8, label %if.then9, label %if.end

if.then9:                                         ; preds = %if.then6
  br label %if.end48

if.end:                                           ; preds = %if.then6
  br label %while.cond10

while.cond10:                                     ; preds = %while.body17, %if.end
  %14 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %cur_c11 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %14, i32 0, i32 0
  %15 = load i32, i32* %cur_c11, align 8
  %cmp12 = icmp ne i32 %15, -1
  br i1 %cmp12, label %land.rhs13, label %land.end16

land.rhs13:                                       ; preds = %while.cond10
  %16 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %cur_c14 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %16, i32 0, i32 0
  %17 = load i32, i32* %cur_c14, align 8
  %cmp15 = icmp ne i32 %17, 10
  br label %land.end16

land.end16:                                       ; preds = %land.rhs13, %while.cond10
  %18 = phi i1 [ false, %while.cond10 ], [ %cmp15, %land.rhs13 ]
  br i1 %18, label %while.body17, label %while.end18

while.body17:                                     ; preds = %land.end16
  %19 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  call void @advanceChar(%struct.lexerState* %19)
  br label %while.cond10

while.end18:                                      ; preds = %land.end16
  br label %if.end47

if.else19:                                        ; preds = %if.else
  %20 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %next_c20 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %20, i32 0, i32 1
  %21 = load i32, i32* %next_c20, align 4
  %cmp21 = icmp eq i32 %21, 42
  br i1 %cmp21, label %if.then22, label %if.end46

if.then22:                                        ; preds = %if.else19
  store i32 1, i32* %level, align 4
  %22 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  call void @advanceNChar(%struct.lexerState* %22, i32 2)
  br label %while.cond23

while.cond23:                                     ; preds = %if.end44, %if.then22
  %23 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %cur_c24 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %23, i32 0, i32 0
  %24 = load i32, i32* %cur_c24, align 8
  %cmp25 = icmp ne i32 %24, -1
  br i1 %cmp25, label %land.rhs26, label %land.end28

land.rhs26:                                       ; preds = %while.cond23
  %25 = load i32, i32* %level, align 4
  %cmp27 = icmp sgt i32 %25, 0
  br label %land.end28

land.end28:                                       ; preds = %land.rhs26, %while.cond23
  %26 = phi i1 [ false, %while.cond23 ], [ %cmp27, %land.rhs26 ]
  br i1 %26, label %while.body29, label %while.end45

while.body29:                                     ; preds = %land.end28
  %27 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %cur_c30 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %27, i32 0, i32 0
  %28 = load i32, i32* %cur_c30, align 8
  %cmp31 = icmp eq i32 %28, 42
  br i1 %cmp31, label %land.lhs.true, label %if.else35

land.lhs.true:                                    ; preds = %while.body29
  %29 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %next_c32 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %29, i32 0, i32 1
  %30 = load i32, i32* %next_c32, align 4
  %cmp33 = icmp eq i32 %30, 47
  br i1 %cmp33, label %if.then34, label %if.else35

if.then34:                                        ; preds = %land.lhs.true
  %31 = load i32, i32* %level, align 4
  %dec = add nsw i32 %31, -1
  store i32 %dec, i32* %level, align 4
  %32 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  call void @advanceNChar(%struct.lexerState* %32, i32 2)
  br label %if.end44

if.else35:                                        ; preds = %land.lhs.true, %while.body29
  %33 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %cur_c36 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %33, i32 0, i32 0
  %34 = load i32, i32* %cur_c36, align 8
  %cmp37 = icmp eq i32 %34, 47
  br i1 %cmp37, label %land.lhs.true38, label %if.else42

land.lhs.true38:                                  ; preds = %if.else35
  %35 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %next_c39 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %35, i32 0, i32 1
  %36 = load i32, i32* %next_c39, align 4
  %cmp40 = icmp eq i32 %36, 42
  br i1 %cmp40, label %if.then41, label %if.else42

if.then41:                                        ; preds = %land.lhs.true38
  %37 = load i32, i32* %level, align 4
  %inc = add nsw i32 %37, 1
  store i32 %inc, i32* %level, align 4
  %38 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  call void @advanceNChar(%struct.lexerState* %38, i32 2)
  br label %if.end43

if.else42:                                        ; preds = %land.lhs.true38, %if.else35
  %39 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  call void @advanceChar(%struct.lexerState* %39)
  br label %if.end43

if.end43:                                         ; preds = %if.else42, %if.then41
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %if.then34
  br label %while.cond23

while.end45:                                      ; preds = %land.end28
  br label %if.end46

if.end46:                                         ; preds = %while.end45, %if.else19
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %while.end18
  br label %if.end48

if.end48:                                         ; preds = %if.then9, %if.end47, %while.end
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @advanceToken(%struct.lexerState* %lexer, i1 zeroext %skip_whitspace) #0 {
entry:
  %retval = alloca i32, align 4
  %lexer.addr = alloca %struct.lexerState*, align 8
  %skip_whitspace.addr = alloca i8, align 1
  %have_whitespace = alloca i8, align 1
  %tmp = alloca %struct._MIOPos, align 8
  %tmp19 = alloca %struct._MIOPos, align 8
  %c = alloca i32, align 4
  store %struct.lexerState* %lexer, %struct.lexerState** %lexer.addr, align 8
  %frombool = zext i1 %skip_whitspace to i8
  store i8 %frombool, i8* %skip_whitspace.addr, align 1
  store i8 0, i8* %have_whitespace, align 1
  %call = call i64 @getInputLineNumber()
  %0 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %line = getelementptr inbounds %struct.lexerState, %struct.lexerState* %0, i32 0, i32 4
  store i64 %call, i64* %line, align 8
  %1 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %pos = getelementptr inbounds %struct.lexerState, %struct.lexerState* %1, i32 0, i32 5
  %call1 = call [2 x i64] @getInputFilePosition()
  %2 = bitcast %struct._MIOPos* %tmp to [2 x i64]*
  store [2 x i64] %call1, [2 x i64]* %2, align 8
  %3 = bitcast %struct._MIOPos* %pos to i8*
  %4 = bitcast %struct._MIOPos* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 %4, i64 16, i1 false)
  br label %while.cond

while.cond:                                       ; preds = %if.end15, %entry
  %5 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %cur_c = getelementptr inbounds %struct.lexerState, %struct.lexerState* %5, i32 0, i32 0
  %6 = load i32, i32* %cur_c, align 8
  %cmp = icmp ne i32 %6, -1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %cur_c2 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %7, i32 0, i32 0
  %8 = load i32, i32* %cur_c2, align 8
  %call3 = call zeroext i1 @isWhitespace(i32 %8)
  br i1 %call3, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %9 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  call void @scanWhitespace(%struct.lexerState* %9)
  store i8 1, i8* %have_whitespace, align 1
  br label %if.end15

if.else:                                          ; preds = %while.body
  %10 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %cur_c4 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %10, i32 0, i32 0
  %11 = load i32, i32* %cur_c4, align 8
  %cmp5 = icmp eq i32 %11, 47
  br i1 %cmp5, label %land.lhs.true, label %if.else10

land.lhs.true:                                    ; preds = %if.else
  %12 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %next_c = getelementptr inbounds %struct.lexerState, %struct.lexerState* %12, i32 0, i32 1
  %13 = load i32, i32* %next_c, align 4
  %cmp6 = icmp eq i32 %13, 47
  br i1 %cmp6, label %if.then9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %14 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %next_c7 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %14, i32 0, i32 1
  %15 = load i32, i32* %next_c7, align 4
  %cmp8 = icmp eq i32 %15, 42
  br i1 %cmp8, label %if.then9, label %if.else10

if.then9:                                         ; preds = %lor.lhs.false, %land.lhs.true
  %16 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  call void @scanComments(%struct.lexerState* %16)
  store i8 1, i8* %have_whitespace, align 1
  br label %if.end14

if.else10:                                        ; preds = %lor.lhs.false, %if.else
  %17 = load i8, i8* %have_whitespace, align 1
  %tobool = trunc i8 %17 to i1
  br i1 %tobool, label %land.lhs.true11, label %if.end

land.lhs.true11:                                  ; preds = %if.else10
  %18 = load i8, i8* %skip_whitspace.addr, align 1
  %tobool12 = trunc i8 %18 to i1
  br i1 %tobool12, label %if.end, label %if.then13

if.then13:                                        ; preds = %land.lhs.true11
  %19 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %cur_token = getelementptr inbounds %struct.lexerState, %struct.lexerState* %19, i32 0, i32 2
  store i32 0, i32* %cur_token, align 8
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true11, %if.else10
  br label %while.end

if.end14:                                         ; preds = %if.then9
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.then
  br label %while.cond

while.end:                                        ; preds = %if.end, %while.cond
  %call16 = call i64 @getInputLineNumber()
  %20 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %line17 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %20, i32 0, i32 4
  store i64 %call16, i64* %line17, align 8
  %21 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %pos18 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %21, i32 0, i32 5
  %call20 = call [2 x i64] @getInputFilePosition()
  %22 = bitcast %struct._MIOPos* %tmp19 to [2 x i64]*
  store [2 x i64] %call20, [2 x i64]* %22, align 8
  %23 = bitcast %struct._MIOPos* %pos18 to i8*
  %24 = bitcast %struct._MIOPos* %tmp19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 %24, i64 16, i1 false)
  br label %while.cond21

while.cond21:                                     ; preds = %while.end
  %25 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %cur_c22 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %25, i32 0, i32 0
  %26 = load i32, i32* %cur_c22, align 8
  %cmp23 = icmp ne i32 %26, -1
  br i1 %cmp23, label %while.body24, label %while.end77

while.body24:                                     ; preds = %while.cond21
  %27 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %cur_c25 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %27, i32 0, i32 0
  %28 = load i32, i32* %cur_c25, align 8
  %cmp26 = icmp eq i32 %28, 34
  br i1 %cmp26, label %if.then27, label %if.else29

if.then27:                                        ; preds = %while.body24
  %29 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  call void @scanString(%struct.lexerState* %29)
  %30 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %cur_token28 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %30, i32 0, i32 2
  store i32 1, i32* %cur_token28, align 8
  store i32 1, i32* %retval, align 4
  br label %return

if.else29:                                        ; preds = %while.body24
  %31 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %cur_c30 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %31, i32 0, i32 0
  %32 = load i32, i32* %cur_c30, align 8
  %cmp31 = icmp eq i32 %32, 114
  br i1 %cmp31, label %land.lhs.true32, label %if.else40

land.lhs.true32:                                  ; preds = %if.else29
  %33 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %next_c33 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %33, i32 0, i32 1
  %34 = load i32, i32* %next_c33, align 4
  %cmp34 = icmp eq i32 %34, 35
  br i1 %cmp34, label %if.then38, label %lor.lhs.false35

lor.lhs.false35:                                  ; preds = %land.lhs.true32
  %35 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %next_c36 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %35, i32 0, i32 1
  %36 = load i32, i32* %next_c36, align 4
  %cmp37 = icmp eq i32 %36, 34
  br i1 %cmp37, label %if.then38, label %if.else40

if.then38:                                        ; preds = %lor.lhs.false35, %land.lhs.true32
  %37 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  call void @scanRawString(%struct.lexerState* %37)
  %38 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %cur_token39 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %38, i32 0, i32 2
  store i32 1, i32* %cur_token39, align 8
  store i32 1, i32* %retval, align 4
  br label %return

if.else40:                                        ; preds = %lor.lhs.false35, %if.else29
  %39 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %cur_c41 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %39, i32 0, i32 0
  %40 = load i32, i32* %cur_c41, align 8
  %cmp42 = icmp eq i32 %40, 39
  br i1 %cmp42, label %if.then43, label %if.else45

if.then43:                                        ; preds = %if.else40
  %41 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  call void @scanCharacterOrLifetime(%struct.lexerState* %41)
  %42 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %cur_token44 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %42, i32 0, i32 2
  store i32 1, i32* %cur_token44, align 8
  store i32 1, i32* %retval, align 4
  br label %return

if.else45:                                        ; preds = %if.else40
  %43 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %cur_c46 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %43, i32 0, i32 0
  %44 = load i32, i32* %cur_c46, align 8
  %call47 = call zeroext i1 @isIdentifierStart(i32 %44)
  br i1 %call47, label %if.then48, label %if.else50

if.then48:                                        ; preds = %if.else45
  %45 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  call void @scanIdentifier(%struct.lexerState* %45)
  %46 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %cur_token49 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %46, i32 0, i32 2
  store i32 2, i32* %cur_token49, align 8
  store i32 2, i32* %retval, align 4
  br label %return

if.else50:                                        ; preds = %if.else45
  %47 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %cur_c51 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %47, i32 0, i32 0
  %48 = load i32, i32* %cur_c51, align 8
  %cmp52 = icmp eq i32 %48, 62
  br i1 %cmp52, label %land.lhs.true53, label %if.else58

land.lhs.true53:                                  ; preds = %if.else50
  %49 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %next_c54 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %49, i32 0, i32 1
  %50 = load i32, i32* %next_c54, align 4
  %cmp55 = icmp eq i32 %50, 62
  br i1 %cmp55, label %if.then56, label %if.else58

if.then56:                                        ; preds = %land.lhs.true53
  %51 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  call void @advanceNChar(%struct.lexerState* %51, i32 2)
  %52 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %cur_token57 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %52, i32 0, i32 2
  store i32 4, i32* %cur_token57, align 8
  store i32 4, i32* %retval, align 4
  br label %return

if.else58:                                        ; preds = %land.lhs.true53, %if.else50
  %53 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %cur_c59 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %53, i32 0, i32 0
  %54 = load i32, i32* %cur_c59, align 8
  %cmp60 = icmp eq i32 %54, 60
  br i1 %cmp60, label %land.lhs.true61, label %if.else66

land.lhs.true61:                                  ; preds = %if.else58
  %55 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %next_c62 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %55, i32 0, i32 1
  %56 = load i32, i32* %next_c62, align 4
  %cmp63 = icmp eq i32 %56, 60
  br i1 %cmp63, label %if.then64, label %if.else66

if.then64:                                        ; preds = %land.lhs.true61
  %57 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  call void @advanceNChar(%struct.lexerState* %57, i32 2)
  %58 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %cur_token65 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %58, i32 0, i32 2
  store i32 3, i32* %cur_token65, align 8
  store i32 3, i32* %retval, align 4
  br label %return

if.else66:                                        ; preds = %land.lhs.true61, %if.else58
  %59 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %cur_c67 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %59, i32 0, i32 0
  %60 = load i32, i32* %cur_c67, align 8
  %cmp68 = icmp eq i32 %60, 45
  br i1 %cmp68, label %land.lhs.true69, label %if.else74

land.lhs.true69:                                  ; preds = %if.else66
  %61 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %next_c70 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %61, i32 0, i32 1
  %62 = load i32, i32* %next_c70, align 4
  %cmp71 = icmp eq i32 %62, 62
  br i1 %cmp71, label %if.then72, label %if.else74

if.then72:                                        ; preds = %land.lhs.true69
  %63 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  call void @advanceNChar(%struct.lexerState* %63, i32 2)
  %64 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %cur_token73 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %64, i32 0, i32 2
  store i32 5, i32* %cur_token73, align 8
  store i32 5, i32* %retval, align 4
  br label %return

if.else74:                                        ; preds = %land.lhs.true69, %if.else66
  %65 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %cur_c75 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %65, i32 0, i32 0
  %66 = load i32, i32* %cur_c75, align 8
  store i32 %66, i32* %c, align 4
  %67 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  call void @advanceChar(%struct.lexerState* %67)
  %68 = load i32, i32* %c, align 4
  %69 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %cur_token76 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %69, i32 0, i32 2
  store i32 %68, i32* %cur_token76, align 8
  store i32 %68, i32* %retval, align 4
  br label %return

while.end77:                                      ; preds = %while.cond21
  %70 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %cur_token78 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %70, i32 0, i32 2
  store i32 6, i32* %cur_token78, align 8
  store i32 6, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end77, %if.else74, %if.then72, %if.then64, %if.then56, %if.then48, %if.then43, %if.then38, %if.then27, %if.then13
  %71 = load i32, i32* %retval, align 4
  ret i32 %71
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @advanceChar(%struct.lexerState* %lexer) #0 {
entry:
  %lexer.addr = alloca %struct.lexerState*, align 8
  store %struct.lexerState* %lexer, %struct.lexerState** %lexer.addr, align 8
  %0 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %next_c = getelementptr inbounds %struct.lexerState, %struct.lexerState* %0, i32 0, i32 1
  %1 = load i32, i32* %next_c, align 4
  %2 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %cur_c = getelementptr inbounds %struct.lexerState, %struct.lexerState* %2, i32 0, i32 0
  store i32 %1, i32* %cur_c, align 8
  %call = call i32 @getcFromInputFile()
  %3 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %next_c1 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %3, i32 0, i32 1
  store i32 %call, i32* %next_c1, align 4
  ret void
}

declare i32 @getcFromInputFile() #1

declare i64 @getInputLineNumber() #1

declare [2 x i64] @getInputFilePosition() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @isWhitespace(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %cmp = icmp eq i32 %0, 32
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %c.addr, align 4
  %cmp1 = icmp eq i32 %1, 9
  br i1 %cmp1, label %lor.end, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load i32, i32* %c.addr, align 4
  %cmp3 = icmp eq i32 %2, 13
  br i1 %cmp3, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false2
  %3 = load i32, i32* %c.addr, align 4
  %cmp4 = icmp eq i32 %3, 10
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false2, %lor.lhs.false, %entry
  %4 = phi i1 [ true, %lor.lhs.false2 ], [ true, %lor.lhs.false ], [ true, %entry ], [ %cmp4, %lor.rhs ]
  ret i1 %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @scanWhitespace(%struct.lexerState* %lexer) #0 {
entry:
  %lexer.addr = alloca %struct.lexerState*, align 8
  store %struct.lexerState* %lexer, %struct.lexerState** %lexer.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %cur_c = getelementptr inbounds %struct.lexerState, %struct.lexerState* %0, i32 0, i32 0
  %1 = load i32, i32* %cur_c, align 8
  %call = call zeroext i1 @isWhitespace(i32 %1)
  br i1 %call, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  call void @advanceChar(%struct.lexerState* %2)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @scanString(%struct.lexerState* %lexer) #0 {
entry:
  %lexer.addr = alloca %struct.lexerState*, align 8
  %vStringClear_s = alloca %struct.sVString*, align 8
  store %struct.lexerState* %lexer, %struct.lexerState** %lexer.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %token_str = getelementptr inbounds %struct.lexerState, %struct.lexerState* %0, i32 0, i32 3
  %1 = load %struct.sVString*, %struct.sVString** %token_str, align 8
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
  %5 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  call void @advanceAndStoreChar(%struct.lexerState* %5)
  br label %while.cond

while.cond:                                       ; preds = %if.end, %do.end
  %6 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %cur_c = getelementptr inbounds %struct.lexerState, %struct.lexerState* %6, i32 0, i32 0
  %7 = load i32, i32* %cur_c, align 8
  %cmp = icmp ne i32 %7, -1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %8 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %cur_c1 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %8, i32 0, i32 0
  %9 = load i32, i32* %cur_c1, align 8
  %cmp2 = icmp ne i32 %9, 34
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %10 = phi i1 [ false, %while.cond ], [ %cmp2, %land.rhs ]
  br i1 %10, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %11 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %cur_c3 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %11, i32 0, i32 0
  %12 = load i32, i32* %cur_c3, align 8
  %cmp4 = icmp eq i32 %12, 92
  br i1 %cmp4, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.body
  %13 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %next_c = getelementptr inbounds %struct.lexerState, %struct.lexerState* %13, i32 0, i32 1
  %14 = load i32, i32* %next_c, align 4
  %cmp5 = icmp eq i32 %14, 34
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %15 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  call void @advanceAndStoreChar(%struct.lexerState* %15)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %while.body
  %16 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  call void @advanceAndStoreChar(%struct.lexerState* %16)
  br label %while.cond

while.end:                                        ; preds = %land.end
  %17 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  call void @advanceAndStoreChar(%struct.lexerState* %17)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @scanRawString(%struct.lexerState* %lexer) #0 {
entry:
  %lexer.addr = alloca %struct.lexerState*, align 8
  %num_initial_hashes = alloca i64, align 8
  %vStringClear_s = alloca %struct.sVString*, align 8
  %num_trailing_hashes = alloca i64, align 8
  store %struct.lexerState* %lexer, %struct.lexerState** %lexer.addr, align 8
  store i64 0, i64* %num_initial_hashes, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %token_str = getelementptr inbounds %struct.lexerState, %struct.lexerState* %0, i32 0, i32 3
  %1 = load %struct.sVString*, %struct.sVString** %token_str, align 8
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
  %5 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  call void @advanceAndStoreChar(%struct.lexerState* %5)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.end
  %6 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %cur_c = getelementptr inbounds %struct.lexerState, %struct.lexerState* %6, i32 0, i32 0
  %7 = load i32, i32* %cur_c, align 8
  %cmp = icmp eq i32 %7, 35
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load i64, i64* %num_initial_hashes, align 8
  %inc = add i64 %8, 1
  store i64 %inc, i64* %num_initial_hashes, align 8
  %9 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  call void @advanceAndStoreChar(%struct.lexerState* %9)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %10 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %cur_c1 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %10, i32 0, i32 0
  %11 = load i32, i32* %cur_c1, align 8
  %cmp2 = icmp ne i32 %11, 34
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  br label %while.end21

if.end:                                           ; preds = %while.end
  %12 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  call void @advanceAndStoreChar(%struct.lexerState* %12)
  br label %while.cond3

while.cond3:                                      ; preds = %if.end20, %if.end
  %13 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %cur_c4 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %13, i32 0, i32 0
  %14 = load i32, i32* %cur_c4, align 8
  %cmp5 = icmp ne i32 %14, -1
  br i1 %cmp5, label %while.body6, label %while.end21

while.body6:                                      ; preds = %while.cond3
  %15 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %cur_c7 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %15, i32 0, i32 0
  %16 = load i32, i32* %cur_c7, align 8
  %cmp8 = icmp eq i32 %16, 34
  br i1 %cmp8, label %if.then9, label %if.else

if.then9:                                         ; preds = %while.body6
  store i64 0, i64* %num_trailing_hashes, align 8
  %17 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  call void @advanceAndStoreChar(%struct.lexerState* %17)
  br label %while.cond10

while.cond10:                                     ; preds = %while.body14, %if.then9
  %18 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %cur_c11 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %18, i32 0, i32 0
  %19 = load i32, i32* %cur_c11, align 8
  %cmp12 = icmp eq i32 %19, 35
  br i1 %cmp12, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond10
  %20 = load i64, i64* %num_trailing_hashes, align 8
  %21 = load i64, i64* %num_initial_hashes, align 8
  %cmp13 = icmp ult i64 %20, %21
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond10
  %22 = phi i1 [ false, %while.cond10 ], [ %cmp13, %land.rhs ]
  br i1 %22, label %while.body14, label %while.end16

while.body14:                                     ; preds = %land.end
  %23 = load i64, i64* %num_trailing_hashes, align 8
  %inc15 = add i64 %23, 1
  store i64 %inc15, i64* %num_trailing_hashes, align 8
  %24 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  call void @advanceAndStoreChar(%struct.lexerState* %24)
  br label %while.cond10

while.end16:                                      ; preds = %land.end
  %25 = load i64, i64* %num_trailing_hashes, align 8
  %26 = load i64, i64* %num_initial_hashes, align 8
  %cmp17 = icmp eq i64 %25, %26
  br i1 %cmp17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %while.end16
  br label %while.end21

if.end19:                                         ; preds = %while.end16
  br label %if.end20

if.else:                                          ; preds = %while.body6
  %27 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  call void @advanceAndStoreChar(%struct.lexerState* %27)
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.end19
  br label %while.cond3

while.end21:                                      ; preds = %if.then, %if.then18, %while.cond3
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @scanCharacterOrLifetime(%struct.lexerState* %lexer) #0 {
entry:
  %lexer.addr = alloca %struct.lexerState*, align 8
  %vStringClear_s = alloca %struct.sVString*, align 8
  store %struct.lexerState* %lexer, %struct.lexerState** %lexer.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %token_str = getelementptr inbounds %struct.lexerState, %struct.lexerState* %0, i32 0, i32 3
  %1 = load %struct.sVString*, %struct.sVString** %token_str, align 8
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
  %5 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  call void @advanceAndStoreChar(%struct.lexerState* %5)
  %6 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %cur_c = getelementptr inbounds %struct.lexerState, %struct.lexerState* %6, i32 0, i32 0
  %7 = load i32, i32* %cur_c, align 8
  %cmp = icmp eq i32 %7, 92
  br i1 %cmp, label %if.then, label %if.else9

if.then:                                          ; preds = %do.end
  %8 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  call void @advanceAndStoreChar(%struct.lexerState* %8)
  %9 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %cur_c1 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %9, i32 0, i32 0
  %10 = load i32, i32* %cur_c1, align 8
  %cmp2 = icmp eq i32 %10, 39
  br i1 %cmp2, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %11 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %next_c = getelementptr inbounds %struct.lexerState, %struct.lexerState* %11, i32 0, i32 1
  %12 = load i32, i32* %next_c, align 4
  %cmp3 = icmp eq i32 %12, 39
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %land.lhs.true
  %13 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  call void @advanceAndStoreChar(%struct.lexerState* %13)
  %14 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  call void @advanceAndStoreChar(%struct.lexerState* %14)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %if.then
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else
  %15 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %cur_c5 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %15, i32 0, i32 0
  %16 = load i32, i32* %cur_c5, align 8
  %cmp6 = icmp ne i32 %16, -1
  br i1 %cmp6, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %17 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %cur_c7 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %17, i32 0, i32 0
  %18 = load i32, i32* %cur_c7, align 8
  %cmp8 = icmp ne i32 %18, 39
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %19 = phi i1 [ false, %while.cond ], [ %cmp8, %land.rhs ]
  br i1 %19, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %20 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  call void @advanceAndStoreChar(%struct.lexerState* %20)
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %if.end

if.end:                                           ; preds = %while.end, %if.then4
  br label %if.end17

if.else9:                                         ; preds = %do.end
  %21 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %cur_c10 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %21, i32 0, i32 0
  %22 = load i32, i32* %cur_c10, align 8
  %cmp11 = icmp ne i32 %22, 39
  br i1 %cmp11, label %land.lhs.true12, label %if.end16

land.lhs.true12:                                  ; preds = %if.else9
  %23 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %next_c13 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %23, i32 0, i32 1
  %24 = load i32, i32* %next_c13, align 4
  %cmp14 = icmp eq i32 %24, 39
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %land.lhs.true12
  %25 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  call void @advanceAndStoreChar(%struct.lexerState* %25)
  %26 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  call void @advanceAndStoreChar(%struct.lexerState* %26)
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %land.lhs.true12, %if.else9
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.end
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @isIdentifierStart(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %call = call zeroext i1 @isAscii(i32 %0)
  br i1 %call, label %land.lhs.true, label %lor.rhs

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %c.addr, align 4
  %call1 = call i32 @isalpha(i32 %1) #4
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %2 = load i32, i32* %c.addr, align 4
  %cmp = icmp eq i32 %2, 95
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false, %entry
  %3 = load i32, i32* %c.addr, align 4
  %call2 = call zeroext i1 @isAscii(i32 %3)
  %lnot = xor i1 %call2, true
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %land.lhs.true
  %4 = phi i1 [ true, %lor.lhs.false ], [ true, %land.lhs.true ], [ %lnot, %lor.rhs ]
  ret i1 %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @scanIdentifier(%struct.lexerState* %lexer) #0 {
entry:
  %lexer.addr = alloca %struct.lexerState*, align 8
  %vStringClear_s = alloca %struct.sVString*, align 8
  store %struct.lexerState* %lexer, %struct.lexerState** %lexer.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %token_str = getelementptr inbounds %struct.lexerState, %struct.lexerState* %0, i32 0, i32 3
  %1 = load %struct.sVString*, %struct.sVString** %token_str, align 8
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
  br label %do.body1

do.body1:                                         ; preds = %land.end, %do.end
  %5 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  call void @advanceAndStoreChar(%struct.lexerState* %5)
  br label %do.cond

do.cond:                                          ; preds = %do.body1
  %6 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %cur_c = getelementptr inbounds %struct.lexerState, %struct.lexerState* %6, i32 0, i32 0
  %7 = load i32, i32* %cur_c, align 8
  %cmp = icmp ne i32 %7, -1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %8 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %cur_c2 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %8, i32 0, i32 0
  %9 = load i32, i32* %cur_c2, align 8
  %call = call zeroext i1 @isIdentifierContinue(i32 %9)
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %10 = phi i1 [ false, %do.cond ], [ %call, %land.rhs ]
  br i1 %10, label %do.body1, label %do.end3

do.end3:                                          ; preds = %land.end
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @advanceAndStoreChar(%struct.lexerState* %lexer) #0 {
entry:
  %lexer.addr = alloca %struct.lexerState*, align 8
  store %struct.lexerState* %lexer, %struct.lexerState** %lexer.addr, align 8
  %0 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %token_str = getelementptr inbounds %struct.lexerState, %struct.lexerState* %0, i32 0, i32 3
  %1 = load %struct.sVString*, %struct.sVString** %token_str, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %1, i32 0, i32 0
  %2 = load i64, i64* %length, align 8
  %cmp = icmp ult i64 %2, 256
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %token_str1 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %3, i32 0, i32 3
  %4 = load %struct.sVString*, %struct.sVString** %token_str1, align 8
  %5 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %cur_c = getelementptr inbounds %struct.lexerState, %struct.lexerState* %5, i32 0, i32 0
  %6 = load i32, i32* %cur_c, align 8
  %conv = trunc i32 %6 to i8
  %conv2 = sext i8 %conv to i32
  call void @vStringPut(%struct.sVString* %4, i32 %conv2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  call void @advanceChar(%struct.lexerState* %7)
  ret void
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

declare void @vStringResize(%struct.sVString*, i64) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @isAscii(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %1 = load i32, i32* %c.addr, align 4
  %cmp1 = icmp slt i32 %1, 128
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ]
  ret i1 %2
}

; Function Attrs: nounwind readonly
declare i32 @isalpha(i32) #3

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @isIdentifierContinue(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %call = call zeroext i1 @isAscii(i32 %0)
  br i1 %call, label %land.lhs.true, label %lor.rhs

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %c.addr, align 4
  %call1 = call i32 @isalnum(i32 %1) #4
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %2 = load i32, i32* %c.addr, align 4
  %cmp = icmp eq i32 %2, 95
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false, %entry
  %3 = load i32, i32* %c.addr, align 4
  %call2 = call zeroext i1 @isAscii(i32 %3)
  %lnot = xor i1 %call2, true
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %land.lhs.true
  %4 = phi i1 [ true, %lor.lhs.false ], [ true, %land.lhs.true ], [ %lnot, %lor.rhs ]
  ret i1 %4
}

; Function Attrs: nounwind readonly
declare i32 @isalnum(i32) #3

declare i32 @strcmp(i8*, i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseFn(%struct.lexerState* %lexer, %struct.sVString* %scope, i32 %parent_kind) #0 {
entry:
  %lexer.addr = alloca %struct.lexerState*, align 8
  %scope.addr = alloca %struct.sVString*, align 8
  %parent_kind.addr = alloca i32, align 4
  %kind = alloca i32, align 4
  %name = alloca %struct.sVString*, align 8
  %arg_list = alloca %struct.sVString*, align 8
  %line = alloca i64, align 8
  %pos = alloca %struct._MIOPos, align 8
  %paren_level = alloca i32, align 4
  %found_paren = alloca i8, align 1
  %valid_signature = alloca i8, align 1
  store %struct.lexerState* %lexer, %struct.lexerState** %lexer.addr, align 8
  store %struct.sVString* %scope, %struct.sVString** %scope.addr, align 8
  store i32 %parent_kind, i32* %parent_kind.addr, align 4
  %0 = load i32, i32* %parent_kind.addr, align 4
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %1 = load i32, i32* %parent_kind.addr, align 4
  %cmp1 = icmp eq i32 %1, 3
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %cmp1, %lor.rhs ]
  %3 = zext i1 %2 to i64
  %cond = select i1 %2, i32 11, i32 4
  store i32 %cond, i32* %kind, align 4
  store i32 0, i32* %paren_level, align 4
  store i8 0, i8* %found_paren, align 1
  store i8 1, i8* %valid_signature, align 1
  %4 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %call = call i32 @advanceToken(%struct.lexerState* %4, i1 zeroext true)
  %5 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %cur_token = getelementptr inbounds %struct.lexerState, %struct.lexerState* %5, i32 0, i32 2
  %6 = load i32, i32* %cur_token, align 8
  %cmp2 = icmp ne i32 %6, 2
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.end
  br label %return

if.end:                                           ; preds = %lor.end
  %7 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %token_str = getelementptr inbounds %struct.lexerState, %struct.lexerState* %7, i32 0, i32 3
  %8 = load %struct.sVString*, %struct.sVString** %token_str, align 8
  %call3 = call %struct.sVString* @vStringNewCopy(%struct.sVString* %8)
  store %struct.sVString* %call3, %struct.sVString** %name, align 8
  %call4 = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call4, %struct.sVString** %arg_list, align 8
  %9 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %line5 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %9, i32 0, i32 4
  %10 = load i64, i64* %line5, align 8
  store i64 %10, i64* %line, align 8
  %11 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %pos6 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %11, i32 0, i32 5
  %12 = bitcast %struct._MIOPos* %pos to i8*
  %13 = bitcast %struct._MIOPos* %pos6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 %13, i64 16, i1 false)
  %14 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %call7 = call i32 @advanceToken(%struct.lexerState* %14, i1 zeroext true)
  br label %while.cond

while.cond:                                       ; preds = %if.end32, %if.end
  %15 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %cur_token8 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %15, i32 0, i32 2
  %16 = load i32, i32* %cur_token8, align 8
  %cmp9 = icmp ne i32 %16, 123
  br i1 %cmp9, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %17 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %cur_token10 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %17, i32 0, i32 2
  %18 = load i32, i32* %cur_token10, align 8
  %cmp11 = icmp ne i32 %18, 59
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %19 = phi i1 [ false, %while.cond ], [ %cmp11, %land.rhs ]
  br i1 %19, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %20 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %cur_token12 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %20, i32 0, i32 2
  %21 = load i32, i32* %cur_token12, align 8
  %cmp13 = icmp eq i32 %21, 125
  br i1 %cmp13, label %if.then14, label %if.else

if.then14:                                        ; preds = %while.body
  store i8 0, i8* %valid_signature, align 1
  br label %while.end

if.else:                                          ; preds = %while.body
  %22 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %cur_token15 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %22, i32 0, i32 2
  %23 = load i32, i32* %cur_token15, align 8
  %cmp16 = icmp eq i32 %23, 40
  br i1 %cmp16, label %if.then17, label %if.else18

if.then17:                                        ; preds = %if.else
  store i8 1, i8* %found_paren, align 1
  %24 = load i32, i32* %paren_level, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %paren_level, align 4
  br label %if.end31

if.else18:                                        ; preds = %if.else
  %25 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %cur_token19 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %25, i32 0, i32 2
  %26 = load i32, i32* %cur_token19, align 8
  %cmp20 = icmp eq i32 %26, 41
  br i1 %cmp20, label %if.then21, label %if.else25

if.then21:                                        ; preds = %if.else18
  %27 = load i32, i32* %paren_level, align 4
  %dec = add nsw i32 %27, -1
  store i32 %dec, i32* %paren_level, align 4
  %28 = load i32, i32* %paren_level, align 4
  %cmp22 = icmp slt i32 %28, 0
  br i1 %cmp22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.then21
  store i8 0, i8* %valid_signature, align 1
  br label %while.end

if.end24:                                         ; preds = %if.then21
  br label %if.end30

if.else25:                                        ; preds = %if.else18
  %29 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %cur_token26 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %29, i32 0, i32 2
  %30 = load i32, i32* %cur_token26, align 8
  %cmp27 = icmp eq i32 %30, 6
  br i1 %cmp27, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.else25
  store i8 0, i8* %valid_signature, align 1
  br label %while.end

if.end29:                                         ; preds = %if.else25
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.end24
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %if.then17
  br label %if.end32

if.end32:                                         ; preds = %if.end31
  %31 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %32 = load %struct.sVString*, %struct.sVString** %arg_list, align 8
  call void @writeCurTokenToStr(%struct.lexerState* %31, %struct.sVString* %32)
  %33 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %call33 = call i32 @advanceToken(%struct.lexerState* %33, i1 zeroext false)
  br label %while.cond

while.end:                                        ; preds = %if.then28, %if.then23, %if.then14, %land.end
  %34 = load i8, i8* %found_paren, align 1
  %tobool = trunc i8 %34 to i1
  br i1 %tobool, label %lor.lhs.false, label %if.then35

lor.lhs.false:                                    ; preds = %while.end
  %35 = load i32, i32* %paren_level, align 4
  %cmp34 = icmp ne i32 %35, 0
  br i1 %cmp34, label %if.then35, label %if.end36

if.then35:                                        ; preds = %lor.lhs.false, %while.end
  store i8 0, i8* %valid_signature, align 1
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %lor.lhs.false
  %36 = load i8, i8* %valid_signature, align 1
  %tobool37 = trunc i8 %36 to i1
  br i1 %tobool37, label %if.then38, label %if.end39

if.then38:                                        ; preds = %if.end36
  %37 = load %struct.sVString*, %struct.sVString** %arg_list, align 8
  call void @vStringStripTrailing(%struct.sVString* %37)
  %38 = load %struct.sVString*, %struct.sVString** %name, align 8
  %39 = load %struct.sVString*, %struct.sVString** %arg_list, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %39, i32 0, i32 2
  %40 = load i8*, i8** %buffer, align 8
  %41 = load i32, i32* %kind, align 4
  %42 = load i64, i64* %line, align 8
  %43 = load %struct.sVString*, %struct.sVString** %scope.addr, align 8
  %44 = load i32, i32* %parent_kind.addr, align 4
  %45 = bitcast %struct._MIOPos* %pos to [2 x i64]*
  %46 = load [2 x i64], [2 x i64]* %45, align 8
  call void @addTag(%struct.sVString* %38, i8* %40, i32 %41, i64 %42, [2 x i64] %46, %struct.sVString* %43, i32 %44)
  %47 = load %struct.sVString*, %struct.sVString** %scope.addr, align 8
  %48 = load %struct.sVString*, %struct.sVString** %name, align 8
  call void @addToScope(%struct.sVString* %47, %struct.sVString* %48)
  %49 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %50 = load i32, i32* %kind, align 4
  %51 = load %struct.sVString*, %struct.sVString** %scope.addr, align 8
  call void @parseBlock(%struct.lexerState* %49, i1 zeroext true, i32 %50, %struct.sVString* %51)
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %if.end36
  %52 = load %struct.sVString*, %struct.sVString** %name, align 8
  call void @vStringDelete(%struct.sVString* %52)
  %53 = load %struct.sVString*, %struct.sVString** %arg_list, align 8
  call void @vStringDelete(%struct.sVString* %53)
  br label %return

return:                                           ; preds = %if.end39, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseMod(%struct.lexerState* %lexer, %struct.sVString* %scope, i32 %parent_kind) #0 {
entry:
  %lexer.addr = alloca %struct.lexerState*, align 8
  %scope.addr = alloca %struct.sVString*, align 8
  %parent_kind.addr = alloca i32, align 4
  store %struct.lexerState* %lexer, %struct.lexerState** %lexer.addr, align 8
  store %struct.sVString* %scope, %struct.sVString** %scope.addr, align 8
  store i32 %parent_kind, i32* %parent_kind.addr, align 4
  %0 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %call = call i32 @advanceToken(%struct.lexerState* %0, i1 zeroext true)
  %1 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %cur_token = getelementptr inbounds %struct.lexerState, %struct.lexerState* %1, i32 0, i32 2
  %2 = load i32, i32* %cur_token, align 8
  %cmp = icmp ne i32 %2, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %token_str = getelementptr inbounds %struct.lexerState, %struct.lexerState* %3, i32 0, i32 3
  %4 = load %struct.sVString*, %struct.sVString** %token_str, align 8
  %5 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %line = getelementptr inbounds %struct.lexerState, %struct.lexerState* %5, i32 0, i32 4
  %6 = load i64, i64* %line, align 8
  %7 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %pos = getelementptr inbounds %struct.lexerState, %struct.lexerState* %7, i32 0, i32 5
  %8 = load %struct.sVString*, %struct.sVString** %scope.addr, align 8
  %9 = load i32, i32* %parent_kind.addr, align 4
  %10 = bitcast %struct._MIOPos* %pos to [2 x i64]*
  %11 = load [2 x i64], [2 x i64]* %10, align 8
  call void @addTag(%struct.sVString* %4, i8* null, i32 0, i64 %6, [2 x i64] %11, %struct.sVString* %8, i32 %9)
  %12 = load %struct.sVString*, %struct.sVString** %scope.addr, align 8
  %13 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %token_str1 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %13, i32 0, i32 3
  %14 = load %struct.sVString*, %struct.sVString** %token_str1, align 8
  call void @addToScope(%struct.sVString* %12, %struct.sVString* %14)
  %15 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %call2 = call i32 @advanceToken(%struct.lexerState* %15, i1 zeroext true)
  %16 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %17 = load %struct.sVString*, %struct.sVString** %scope.addr, align 8
  call void @parseBlock(%struct.lexerState* %16, i1 zeroext true, i32 0, %struct.sVString* %17)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseStatic(%struct.lexerState* %lexer, %struct.sVString* %scope, i32 %parent_kind) #0 {
entry:
  %lexer.addr = alloca %struct.lexerState*, align 8
  %scope.addr = alloca %struct.sVString*, align 8
  %parent_kind.addr = alloca i32, align 4
  store %struct.lexerState* %lexer, %struct.lexerState** %lexer.addr, align 8
  store %struct.sVString* %scope, %struct.sVString** %scope.addr, align 8
  store i32 %parent_kind, i32* %parent_kind.addr, align 4
  %0 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %call = call i32 @advanceToken(%struct.lexerState* %0, i1 zeroext true)
  %1 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %cur_token = getelementptr inbounds %struct.lexerState, %struct.lexerState* %1, i32 0, i32 2
  %2 = load i32, i32* %cur_token, align 8
  %cmp = icmp ne i32 %2, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %token_str = getelementptr inbounds %struct.lexerState, %struct.lexerState* %3, i32 0, i32 3
  %4 = load %struct.sVString*, %struct.sVString** %token_str, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %4, i32 0, i32 2
  %5 = load i8*, i8** %buffer, align 8
  %call1 = call i32 @strcmp(i8* %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i64 0, i64 0))
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %6 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %call4 = call i32 @advanceToken(%struct.lexerState* %6, i1 zeroext true)
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end
  %7 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %cur_token6 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %7, i32 0, i32 2
  %8 = load i32, i32* %cur_token6, align 8
  %cmp7 = icmp ne i32 %8, 2
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end5
  br label %return

if.end9:                                          ; preds = %if.end5
  %9 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %token_str10 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %9, i32 0, i32 3
  %10 = load %struct.sVString*, %struct.sVString** %token_str10, align 8
  %11 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %line = getelementptr inbounds %struct.lexerState, %struct.lexerState* %11, i32 0, i32 4
  %12 = load i64, i64* %line, align 8
  %13 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %pos = getelementptr inbounds %struct.lexerState, %struct.lexerState* %13, i32 0, i32 5
  %14 = load %struct.sVString*, %struct.sVString** %scope.addr, align 8
  %15 = load i32, i32* %parent_kind.addr, align 4
  %16 = bitcast %struct._MIOPos* %pos to [2 x i64]*
  %17 = load [2 x i64], [2 x i64]* %16, align 8
  call void @addTag(%struct.sVString* %10, i8* null, i32 7, i64 %12, [2 x i64] %17, %struct.sVString* %14, i32 %15)
  br label %return

return:                                           ; preds = %if.end9, %if.then8, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseTrait(%struct.lexerState* %lexer, %struct.sVString* %scope, i32 %parent_kind) #0 {
entry:
  %lexer.addr = alloca %struct.lexerState*, align 8
  %scope.addr = alloca %struct.sVString*, align 8
  %parent_kind.addr = alloca i32, align 4
  %goal_tokens = alloca [1 x i32], align 4
  store %struct.lexerState* %lexer, %struct.lexerState** %lexer.addr, align 8
  store %struct.sVString* %scope, %struct.sVString** %scope.addr, align 8
  store i32 %parent_kind, i32* %parent_kind.addr, align 4
  %0 = bitcast [1 x i32]* %goal_tokens to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %0, i8* align 4 bitcast ([1 x i32]* @__const.parseTrait.goal_tokens to i8*), i64 4, i1 false)
  %1 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %call = call i32 @advanceToken(%struct.lexerState* %1, i1 zeroext true)
  %2 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %cur_token = getelementptr inbounds %struct.lexerState, %struct.lexerState* %2, i32 0, i32 2
  %3 = load i32, i32* %cur_token, align 8
  %cmp = icmp ne i32 %3, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %token_str = getelementptr inbounds %struct.lexerState, %struct.lexerState* %4, i32 0, i32 3
  %5 = load %struct.sVString*, %struct.sVString** %token_str, align 8
  %6 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %line = getelementptr inbounds %struct.lexerState, %struct.lexerState* %6, i32 0, i32 4
  %7 = load i64, i64* %line, align 8
  %8 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %pos = getelementptr inbounds %struct.lexerState, %struct.lexerState* %8, i32 0, i32 5
  %9 = load %struct.sVString*, %struct.sVString** %scope.addr, align 8
  %10 = load i32, i32* %parent_kind.addr, align 4
  %11 = bitcast %struct._MIOPos* %pos to [2 x i64]*
  %12 = load [2 x i64], [2 x i64]* %11, align 8
  call void @addTag(%struct.sVString* %5, i8* null, i32 2, i64 %7, [2 x i64] %12, %struct.sVString* %9, i32 %10)
  %13 = load %struct.sVString*, %struct.sVString** %scope.addr, align 8
  %14 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %token_str1 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %14, i32 0, i32 3
  %15 = load %struct.sVString*, %struct.sVString** %token_str1, align 8
  call void @addToScope(%struct.sVString* %13, %struct.sVString* %15)
  %16 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %call2 = call i32 @advanceToken(%struct.lexerState* %16, i1 zeroext true)
  %17 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %arraydecay = getelementptr inbounds [1 x i32], [1 x i32]* %goal_tokens, i64 0, i64 0
  call void @skipUntil(%struct.lexerState* %17, i32* %arraydecay, i32 1)
  %18 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %19 = load %struct.sVString*, %struct.sVString** %scope.addr, align 8
  call void @parseBlock(%struct.lexerState* %18, i1 zeroext true, i32 2, %struct.sVString* %19)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseType(%struct.lexerState* %lexer, %struct.sVString* %scope, i32 %parent_kind) #0 {
entry:
  %lexer.addr = alloca %struct.lexerState*, align 8
  %scope.addr = alloca %struct.sVString*, align 8
  %parent_kind.addr = alloca i32, align 4
  store %struct.lexerState* %lexer, %struct.lexerState** %lexer.addr, align 8
  store %struct.sVString* %scope, %struct.sVString** %scope.addr, align 8
  store i32 %parent_kind, i32* %parent_kind.addr, align 4
  %0 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %call = call i32 @advanceToken(%struct.lexerState* %0, i1 zeroext true)
  %1 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %cur_token = getelementptr inbounds %struct.lexerState, %struct.lexerState* %1, i32 0, i32 2
  %2 = load i32, i32* %cur_token, align 8
  %cmp = icmp ne i32 %2, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %token_str = getelementptr inbounds %struct.lexerState, %struct.lexerState* %3, i32 0, i32 3
  %4 = load %struct.sVString*, %struct.sVString** %token_str, align 8
  %5 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %line = getelementptr inbounds %struct.lexerState, %struct.lexerState* %5, i32 0, i32 4
  %6 = load i64, i64* %line, align 8
  %7 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %pos = getelementptr inbounds %struct.lexerState, %struct.lexerState* %7, i32 0, i32 5
  %8 = load %struct.sVString*, %struct.sVString** %scope.addr, align 8
  %9 = load i32, i32* %parent_kind.addr, align 4
  %10 = bitcast %struct._MIOPos* %pos to [2 x i64]*
  %11 = load [2 x i64], [2 x i64]* %10, align 8
  call void @addTag(%struct.sVString* %4, i8* null, i32 6, i64 %6, [2 x i64] %11, %struct.sVString* %8, i32 %9)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseImpl(%struct.lexerState* %lexer, %struct.sVString* %scope, i32 %parent_kind) #0 {
entry:
  %lexer.addr = alloca %struct.lexerState*, align 8
  %scope.addr = alloca %struct.sVString*, align 8
  %parent_kind.addr = alloca i32, align 4
  %line = alloca i64, align 8
  %pos = alloca %struct._MIOPos, align 8
  %name = alloca %struct.sVString*, align 8
  store %struct.lexerState* %lexer, %struct.lexerState** %lexer.addr, align 8
  store %struct.sVString* %scope, %struct.sVString** %scope.addr, align 8
  store i32 %parent_kind, i32* %parent_kind.addr, align 4
  %0 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %call = call i32 @advanceToken(%struct.lexerState* %0, i1 zeroext true)
  %1 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %line1 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %1, i32 0, i32 4
  %2 = load i64, i64* %line1, align 8
  store i64 %2, i64* %line, align 8
  %3 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %pos2 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %3, i32 0, i32 5
  %4 = bitcast %struct._MIOPos* %pos to i8*
  %5 = bitcast %struct._MIOPos* %pos2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %4, i8* align 8 %5, i64 16, i1 false)
  %6 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  call void @skipTypeBlock(%struct.lexerState* %6)
  %call3 = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call3, %struct.sVString** %name, align 8
  %7 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %8 = load %struct.sVString*, %struct.sVString** %name, align 8
  call void @parseQualifiedType(%struct.lexerState* %7, %struct.sVString* %8)
  %9 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %cur_token = getelementptr inbounds %struct.lexerState, %struct.lexerState* %9, i32 0, i32 2
  %10 = load i32, i32* %cur_token, align 8
  %cmp = icmp eq i32 %10, 2
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %11 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %token_str = getelementptr inbounds %struct.lexerState, %struct.lexerState* %11, i32 0, i32 3
  %12 = load %struct.sVString*, %struct.sVString** %token_str, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %12, i32 0, i32 2
  %13 = load i8*, i8** %buffer, align 8
  %call4 = call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.36, i64 0, i64 0))
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %14 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %call6 = call i32 @advanceToken(%struct.lexerState* %14, i1 zeroext true)
  %15 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %16 = load %struct.sVString*, %struct.sVString** %name, align 8
  call void @parseQualifiedType(%struct.lexerState* %15, %struct.sVString* %16)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %17 = load %struct.sVString*, %struct.sVString** %name, align 8
  %18 = load i64, i64* %line, align 8
  %19 = load %struct.sVString*, %struct.sVString** %scope.addr, align 8
  %20 = load i32, i32* %parent_kind.addr, align 4
  %21 = bitcast %struct._MIOPos* %pos to [2 x i64]*
  %22 = load [2 x i64], [2 x i64]* %21, align 8
  call void @addTag(%struct.sVString* %17, i8* null, i32 3, i64 %18, [2 x i64] %22, %struct.sVString* %19, i32 %20)
  %23 = load %struct.sVString*, %struct.sVString** %scope.addr, align 8
  %24 = load %struct.sVString*, %struct.sVString** %name, align 8
  call void @addToScope(%struct.sVString* %23, %struct.sVString* %24)
  %25 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %26 = load %struct.sVString*, %struct.sVString** %scope.addr, align 8
  call void @parseBlock(%struct.lexerState* %25, i1 zeroext true, i32 3, %struct.sVString* %26)
  %27 = load %struct.sVString*, %struct.sVString** %name, align 8
  call void @vStringDelete(%struct.sVString* %27)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseStructOrEnum(%struct.lexerState* %lexer, %struct.sVString* %scope, i32 %parent_kind, i1 zeroext %is_struct) #0 {
entry:
  %lexer.addr = alloca %struct.lexerState*, align 8
  %scope.addr = alloca %struct.sVString*, align 8
  %parent_kind.addr = alloca i32, align 4
  %is_struct.addr = alloca i8, align 1
  %kind = alloca i32, align 4
  %field_kind = alloca i32, align 4
  %goal_tokens1 = alloca [2 x i32], align 4
  %field_name = alloca %struct.sVString*, align 8
  %goal_tokens2 = alloca [2 x i32], align 4
  %vStringClear_s = alloca %struct.sVString*, align 8
  store %struct.lexerState* %lexer, %struct.lexerState** %lexer.addr, align 8
  store %struct.sVString* %scope, %struct.sVString** %scope.addr, align 8
  store i32 %parent_kind, i32* %parent_kind.addr, align 4
  %frombool = zext i1 %is_struct to i8
  store i8 %frombool, i8* %is_struct.addr, align 1
  %0 = load i8, i8* %is_struct.addr, align 1
  %tobool = trunc i8 %0 to i1
  %1 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i32 1, i32 5
  store i32 %cond, i32* %kind, align 4
  %2 = load i8, i8* %is_struct.addr, align 1
  %tobool1 = trunc i8 %2 to i1
  %3 = zext i1 %tobool1 to i64
  %cond2 = select i1 %tobool1, i32 9, i32 10
  store i32 %cond2, i32* %field_kind, align 4
  %4 = bitcast [2 x i32]* %goal_tokens1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 bitcast ([2 x i32]* @__const.parseStructOrEnum.goal_tokens1 to i8*), i64 8, i1 false)
  %5 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %call = call i32 @advanceToken(%struct.lexerState* %5, i1 zeroext true)
  %6 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %cur_token = getelementptr inbounds %struct.lexerState, %struct.lexerState* %6, i32 0, i32 2
  %7 = load i32, i32* %cur_token, align 8
  %cmp = icmp ne i32 %7, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end55

if.end:                                           ; preds = %entry
  %8 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %token_str = getelementptr inbounds %struct.lexerState, %struct.lexerState* %8, i32 0, i32 3
  %9 = load %struct.sVString*, %struct.sVString** %token_str, align 8
  %10 = load i32, i32* %kind, align 4
  %11 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %line = getelementptr inbounds %struct.lexerState, %struct.lexerState* %11, i32 0, i32 4
  %12 = load i64, i64* %line, align 8
  %13 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %pos = getelementptr inbounds %struct.lexerState, %struct.lexerState* %13, i32 0, i32 5
  %14 = load %struct.sVString*, %struct.sVString** %scope.addr, align 8
  %15 = load i32, i32* %parent_kind.addr, align 4
  %16 = bitcast %struct._MIOPos* %pos to [2 x i64]*
  %17 = load [2 x i64], [2 x i64]* %16, align 8
  call void @addTag(%struct.sVString* %9, i8* null, i32 %10, i64 %12, [2 x i64] %17, %struct.sVString* %14, i32 %15)
  %18 = load %struct.sVString*, %struct.sVString** %scope.addr, align 8
  %19 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %token_str3 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %19, i32 0, i32 3
  %20 = load %struct.sVString*, %struct.sVString** %token_str3, align 8
  call void @addToScope(%struct.sVString* %18, %struct.sVString* %20)
  %21 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %goal_tokens1, i64 0, i64 0
  call void @skipUntil(%struct.lexerState* %21, i32* %arraydecay, i32 2)
  %22 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %cur_token4 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %22, i32 0, i32 2
  %23 = load i32, i32* %cur_token4, align 8
  %cmp5 = icmp eq i32 %23, 123
  br i1 %cmp5, label %if.then6, label %if.end55

if.then6:                                         ; preds = %if.end
  %call7 = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call7, %struct.sVString** %field_name, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end53, %if.then39, %if.else, %if.then6
  %24 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %cur_token8 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %24, i32 0, i32 2
  %25 = load i32, i32* %cur_token8, align 8
  %cmp9 = icmp ne i32 %25, 6
  br i1 %cmp9, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %26 = bitcast [2 x i32]* %goal_tokens2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %26, i8* align 4 bitcast ([2 x i32]* @__const.parseStructOrEnum.goal_tokens2 to i8*), i64 8, i1 false)
  %27 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %cur_token10 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %27, i32 0, i32 2
  %28 = load i32, i32* %cur_token10, align 8
  %cmp11 = icmp eq i32 %28, 35
  br i1 %cmp11, label %if.then12, label %if.end24

if.then12:                                        ; preds = %while.body
  %29 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %call13 = call i32 @advanceToken(%struct.lexerState* %29, i1 zeroext true)
  %30 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %cur_token14 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %30, i32 0, i32 2
  %31 = load i32, i32* %cur_token14, align 8
  %cmp15 = icmp eq i32 %31, 33
  br i1 %cmp15, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.then12
  %32 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %call17 = call i32 @advanceToken(%struct.lexerState* %32, i1 zeroext true)
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.then12
  %33 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %cur_token19 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %33, i32 0, i32 2
  %34 = load i32, i32* %cur_token19, align 8
  %cmp20 = icmp eq i32 %34, 91
  br i1 %cmp20, label %if.then21, label %if.else

if.then21:                                        ; preds = %if.end18
  %35 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  call void @skipUntil(%struct.lexerState* %35, i32* null, i32 0)
  br label %if.end23

if.else:                                          ; preds = %if.end18
  %36 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %arraydecay22 = getelementptr inbounds [2 x i32], [2 x i32]* %goal_tokens2, i64 0, i64 0
  call void @skipUntil(%struct.lexerState* %36, i32* %arraydecay22, i32 2)
  br label %while.cond

if.end23:                                         ; preds = %if.then21
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %while.body
  %37 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %cur_token25 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %37, i32 0, i32 2
  %38 = load i32, i32* %cur_token25, align 8
  %cmp26 = icmp eq i32 %38, 2
  br i1 %cmp26, label %if.then27, label %if.end48

if.then27:                                        ; preds = %if.end24
  %39 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %token_str28 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %39, i32 0, i32 3
  %40 = load %struct.sVString*, %struct.sVString** %token_str28, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %40, i32 0, i32 2
  %41 = load i8*, i8** %buffer, align 8
  %call29 = call i32 @strcmp(i8* %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i64 0, i64 0))
  %cmp30 = icmp eq i32 %call29, 0
  br i1 %cmp30, label %if.then35, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then27
  %42 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %token_str31 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %42, i32 0, i32 3
  %43 = load %struct.sVString*, %struct.sVString** %token_str31, align 8
  %buffer32 = getelementptr inbounds %struct.sVString, %struct.sVString* %43, i32 0, i32 2
  %44 = load i8*, i8** %buffer32, align 8
  %call33 = call i32 @strcmp(i8* %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i64 0, i64 0))
  %cmp34 = icmp eq i32 %call33, 0
  br i1 %cmp34, label %if.then35, label %if.end42

if.then35:                                        ; preds = %lor.lhs.false, %if.then27
  %45 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %call36 = call i32 @advanceToken(%struct.lexerState* %45, i1 zeroext true)
  %46 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %cur_token37 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %46, i32 0, i32 2
  %47 = load i32, i32* %cur_token37, align 8
  %cmp38 = icmp ne i32 %47, 2
  br i1 %cmp38, label %if.then39, label %if.end41

if.then39:                                        ; preds = %if.then35
  %48 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %arraydecay40 = getelementptr inbounds [2 x i32], [2 x i32]* %goal_tokens2, i64 0, i64 0
  call void @skipUntil(%struct.lexerState* %48, i32* %arraydecay40, i32 2)
  br label %while.cond

if.end41:                                         ; preds = %if.then35
  br label %if.end42

if.end42:                                         ; preds = %if.end41, %lor.lhs.false
  br label %do.body

do.body:                                          ; preds = %if.end42
  %49 = load %struct.sVString*, %struct.sVString** %field_name, align 8
  store %struct.sVString* %49, %struct.sVString** %vStringClear_s, align 8
  %50 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %50, i32 0, i32 0
  store i64 0, i64* %length, align 8
  %51 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %buffer43 = getelementptr inbounds %struct.sVString, %struct.sVString* %51, i32 0, i32 2
  %52 = load i8*, i8** %buffer43, align 8
  %arrayidx = getelementptr inbounds i8, i8* %52, i64 0
  store i8 0, i8* %arrayidx, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  %53 = load %struct.sVString*, %struct.sVString** %field_name, align 8
  %54 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %token_str44 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %54, i32 0, i32 3
  %55 = load %struct.sVString*, %struct.sVString** %token_str44, align 8
  call void @vStringCat(%struct.sVString* %53, %struct.sVString* %55)
  %56 = load %struct.sVString*, %struct.sVString** %field_name, align 8
  %57 = load i32, i32* %field_kind, align 4
  %58 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %line45 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %58, i32 0, i32 4
  %59 = load i64, i64* %line45, align 8
  %60 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %pos46 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %60, i32 0, i32 5
  %61 = load %struct.sVString*, %struct.sVString** %scope.addr, align 8
  %62 = load i32, i32* %kind, align 4
  %63 = bitcast %struct._MIOPos* %pos46 to [2 x i64]*
  %64 = load [2 x i64], [2 x i64]* %63, align 8
  call void @addTag(%struct.sVString* %56, i8* null, i32 %57, i64 %59, [2 x i64] %64, %struct.sVString* %61, i32 %62)
  %65 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %arraydecay47 = getelementptr inbounds [2 x i32], [2 x i32]* %goal_tokens2, i64 0, i64 0
  call void @skipUntil(%struct.lexerState* %65, i32* %arraydecay47, i32 2)
  br label %if.end48

if.end48:                                         ; preds = %do.end, %if.end24
  %66 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %cur_token49 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %66, i32 0, i32 2
  %67 = load i32, i32* %cur_token49, align 8
  %cmp50 = icmp eq i32 %67, 125
  br i1 %cmp50, label %if.then51, label %if.end53

if.then51:                                        ; preds = %if.end48
  %68 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %call52 = call i32 @advanceToken(%struct.lexerState* %68, i1 zeroext true)
  br label %while.end

if.end53:                                         ; preds = %if.end48
  %69 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %call54 = call i32 @advanceToken(%struct.lexerState* %69, i1 zeroext true)
  br label %while.cond

while.end:                                        ; preds = %if.then51, %while.cond
  %70 = load %struct.sVString*, %struct.sVString** %field_name, align 8
  call void @vStringDelete(%struct.sVString* %70)
  br label %if.end55

if.end55:                                         ; preds = %if.then, %while.end, %if.end
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseMacroRules(%struct.lexerState* %lexer, %struct.sVString* %scope, i32 %parent_kind) #0 {
entry:
  %lexer.addr = alloca %struct.lexerState*, align 8
  %scope.addr = alloca %struct.sVString*, align 8
  %parent_kind.addr = alloca i32, align 4
  store %struct.lexerState* %lexer, %struct.lexerState** %lexer.addr, align 8
  store %struct.sVString* %scope, %struct.sVString** %scope.addr, align 8
  store i32 %parent_kind, i32* %parent_kind.addr, align 4
  %0 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %call = call i32 @advanceToken(%struct.lexerState* %0, i1 zeroext true)
  %1 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %cur_token = getelementptr inbounds %struct.lexerState, %struct.lexerState* %1, i32 0, i32 2
  %2 = load i32, i32* %cur_token, align 8
  %cmp = icmp ne i32 %2, 33
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %call1 = call i32 @advanceToken(%struct.lexerState* %3, i1 zeroext true)
  %4 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %cur_token2 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %4, i32 0, i32 2
  %5 = load i32, i32* %cur_token2, align 8
  %cmp3 = icmp ne i32 %5, 2
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  br label %return

if.end5:                                          ; preds = %if.end
  %6 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %token_str = getelementptr inbounds %struct.lexerState, %struct.lexerState* %6, i32 0, i32 3
  %7 = load %struct.sVString*, %struct.sVString** %token_str, align 8
  %8 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %line = getelementptr inbounds %struct.lexerState, %struct.lexerState* %8, i32 0, i32 4
  %9 = load i64, i64* %line, align 8
  %10 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %pos = getelementptr inbounds %struct.lexerState, %struct.lexerState* %10, i32 0, i32 5
  %11 = load %struct.sVString*, %struct.sVString** %scope.addr, align 8
  %12 = load i32, i32* %parent_kind.addr, align 4
  %13 = bitcast %struct._MIOPos* %pos to [2 x i64]*
  %14 = load [2 x i64], [2 x i64]* %13, align 8
  call void @addTag(%struct.sVString* %7, i8* null, i32 8, i64 %9, [2 x i64] %14, %struct.sVString* %11, i32 %12)
  %15 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  call void @skipMacro(%struct.lexerState* %15)
  br label %return

return:                                           ; preds = %if.end5, %if.then4, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @skipMacro(%struct.lexerState* %lexer) #0 {
entry:
  %lexer.addr = alloca %struct.lexerState*, align 8
  %level = alloca i32, align 4
  %plus_token = alloca i32, align 4
  %minus_token = alloca i32, align 4
  store %struct.lexerState* %lexer, %struct.lexerState** %lexer.addr, align 8
  store i32 0, i32* %level, align 4
  store i32 0, i32* %plus_token, align 4
  store i32 0, i32* %minus_token, align 4
  %0 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %call = call i32 @advanceToken(%struct.lexerState* %0, i1 zeroext true)
  %1 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %cur_token = getelementptr inbounds %struct.lexerState, %struct.lexerState* %1, i32 0, i32 2
  %2 = load i32, i32* %cur_token, align 8
  switch i32 %2, label %sw.default [
    i32 40, label %sw.bb
    i32 123, label %sw.bb1
    i32 91, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  store i32 40, i32* %plus_token, align 4
  store i32 41, i32* %minus_token, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  store i32 123, i32* %plus_token, align 4
  store i32 125, i32* %minus_token, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  store i32 91, i32* %plus_token, align 4
  store i32 93, i32* %minus_token, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %return

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb1, %sw.bb
  br label %while.cond

while.cond:                                       ; preds = %if.end12, %sw.epilog
  %3 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %cur_token3 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %3, i32 0, i32 2
  %4 = load i32, i32* %cur_token3, align 8
  %cmp = icmp ne i32 %4, 6
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %cur_token4 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %5, i32 0, i32 2
  %6 = load i32, i32* %cur_token4, align 8
  %7 = load i32, i32* %plus_token, align 4
  %cmp5 = icmp eq i32 %6, %7
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %8 = load i32, i32* %level, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %level, align 4
  br label %if.end9

if.else:                                          ; preds = %while.body
  %9 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %cur_token6 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %9, i32 0, i32 2
  %10 = load i32, i32* %cur_token6, align 8
  %11 = load i32, i32* %minus_token, align 4
  %cmp7 = icmp eq i32 %10, %11
  br i1 %cmp7, label %if.then8, label %if.end

if.then8:                                         ; preds = %if.else
  %12 = load i32, i32* %level, align 4
  %dec = add nsw i32 %12, -1
  store i32 %dec, i32* %level, align 4
  br label %if.end

if.end:                                           ; preds = %if.then8, %if.else
  br label %if.end9

if.end9:                                          ; preds = %if.end, %if.then
  %13 = load i32, i32* %level, align 4
  %cmp10 = icmp eq i32 %13, 0
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end9
  br label %while.end

if.end12:                                         ; preds = %if.end9
  %14 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %call13 = call i32 @advanceToken(%struct.lexerState* %14, i1 zeroext true)
  br label %while.cond

while.end:                                        ; preds = %if.then11, %while.cond
  %15 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %call14 = call i32 @advanceToken(%struct.lexerState* %15, i1 zeroext true)
  br label %return

return:                                           ; preds = %while.end, %sw.default
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @resetScope(%struct.sVString* %scope, i64 %old_len) #0 {
entry:
  %scope.addr = alloca %struct.sVString*, align 8
  %old_len.addr = alloca i64, align 8
  store %struct.sVString* %scope, %struct.sVString** %scope.addr, align 8
  store i64 %old_len, i64* %old_len.addr, align 8
  %0 = load %struct.sVString*, %struct.sVString** %scope.addr, align 8
  %1 = load i64, i64* %old_len.addr, align 8
  call void @vStringTruncate(%struct.sVString* %0, i64 %1)
  ret void
}

declare %struct.sVString* @vStringNewCopy(%struct.sVString*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @writeCurTokenToStr(%struct.lexerState* %lexer, %struct.sVString* %out_str) #0 {
entry:
  %lexer.addr = alloca %struct.lexerState*, align 8
  %out_str.addr = alloca %struct.sVString*, align 8
  store %struct.lexerState* %lexer, %struct.lexerState** %lexer.addr, align 8
  store %struct.sVString* %out_str, %struct.sVString** %out_str.addr, align 8
  %0 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %cur_token = getelementptr inbounds %struct.lexerState, %struct.lexerState* %0, i32 0, i32 2
  %1 = load i32, i32* %cur_token, align 8
  switch i32 %1, label %sw.default [
    i32 2, label %sw.bb
    i32 1, label %sw.bb1
    i32 0, label %sw.bb3
    i32 3, label %sw.bb4
    i32 4, label %sw.bb5
    i32 5, label %sw.bb6
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct.sVString*, %struct.sVString** %out_str.addr, align 8
  %3 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %token_str = getelementptr inbounds %struct.lexerState, %struct.lexerState* %3, i32 0, i32 3
  %4 = load %struct.sVString*, %struct.sVString** %token_str, align 8
  call void @vStringCat(%struct.sVString* %2, %struct.sVString* %4)
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %5 = load %struct.sVString*, %struct.sVString** %out_str.addr, align 8
  %6 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %token_str2 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %6, i32 0, i32 3
  %7 = load %struct.sVString*, %struct.sVString** %token_str2, align 8
  call void @vStringCat(%struct.sVString* %5, %struct.sVString* %7)
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %8 = load %struct.sVString*, %struct.sVString** %out_str.addr, align 8
  call void @vStringPut(%struct.sVString* %8, i32 32)
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %9 = load %struct.sVString*, %struct.sVString** %out_str.addr, align 8
  call void @vStringCatS(%struct.sVString* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i64 0, i64 0))
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %10 = load %struct.sVString*, %struct.sVString** %out_str.addr, align 8
  call void @vStringCatS(%struct.sVString* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i64 0, i64 0))
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  %11 = load %struct.sVString*, %struct.sVString** %out_str.addr, align 8
  call void @vStringCatS(%struct.sVString* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i64 0, i64 0))
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %12 = load %struct.sVString*, %struct.sVString** %out_str.addr, align 8
  %13 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %cur_token7 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %13, i32 0, i32 2
  %14 = load i32, i32* %cur_token7, align 8
  %conv = trunc i32 %14 to i8
  %conv8 = sext i8 %conv to i32
  call void @vStringPut(%struct.sVString* %12, i32 %conv8)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb1, %sw.bb
  ret void
}

declare void @vStringStripTrailing(%struct.sVString*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @addTag(%struct.sVString* %ident, i8* %arg_list, i32 %kind, i64 %line, [2 x i64] %pos.coerce, %struct.sVString* %scope, i32 %parent_kind) #0 {
entry:
  %pos = alloca %struct._MIOPos, align 8
  %ident.addr = alloca %struct.sVString*, align 8
  %arg_list.addr = alloca i8*, align 8
  %kind.addr = alloca i32, align 4
  %line.addr = alloca i64, align 8
  %scope.addr = alloca %struct.sVString*, align 8
  %parent_kind.addr = alloca i32, align 4
  %tag = alloca %struct.sTagEntryInfo, align 8
  %0 = bitcast %struct._MIOPos* %pos to [2 x i64]*
  store [2 x i64] %pos.coerce, [2 x i64]* %0, align 8
  store %struct.sVString* %ident, %struct.sVString** %ident.addr, align 8
  store i8* %arg_list, i8** %arg_list.addr, align 8
  store i32 %kind, i32* %kind.addr, align 4
  store i64 %line, i64* %line.addr, align 8
  store %struct.sVString* %scope, %struct.sVString** %scope.addr, align 8
  store i32 %parent_kind, i32* %parent_kind.addr, align 4
  %1 = load i32, i32* %kind.addr, align 4
  %cmp = icmp eq i32 %1, 12
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* %kind.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [12 x %struct.sKindDefinition], [12 x %struct.sKindDefinition]* @rustKinds, i64 0, i64 %idxprom
  %enabled = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %arrayidx, i32 0, i32 0
  %3 = load i8, i8* %enabled, align 8
  %tobool = trunc i8 %3 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load %struct.sVString*, %struct.sVString** %ident.addr, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %4, i32 0, i32 2
  %5 = load i8*, i8** %buffer, align 8
  %6 = load i32, i32* %kind.addr, align 4
  call void @initTagEntry(%struct.sTagEntryInfo* %tag, i8* %5, i32 %6)
  %7 = load i64, i64* %line.addr, align 8
  %lineNumber = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %tag, i32 0, i32 1
  store i64 %7, i64* %lineNumber, align 8
  %filePosition = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %tag, i32 0, i32 4
  %8 = bitcast %struct._MIOPos* %filePosition to i8*
  %9 = bitcast %struct._MIOPos* %pos to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 %9, i64 16, i1 false)
  %10 = load i8*, i8** %arg_list.addr, align 8
  %extensionFields = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %tag, i32 0, i32 11
  %signature = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields, i32 0, i32 8
  store i8* %10, i8** %signature, align 8
  %11 = load i32, i32* %parent_kind.addr, align 4
  %cmp1 = icmp ne i32 %11, 12
  br i1 %cmp1, label %if.then2, label %if.end6

if.then2:                                         ; preds = %if.end
  %12 = load i32, i32* %parent_kind.addr, align 4
  %extensionFields3 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %tag, i32 0, i32 11
  %scopeKindIndex = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields3, i32 0, i32 5
  store i32 %12, i32* %scopeKindIndex, align 4
  %13 = load %struct.sVString*, %struct.sVString** %scope.addr, align 8
  %buffer4 = getelementptr inbounds %struct.sVString, %struct.sVString* %13, i32 0, i32 2
  %14 = load i8*, i8** %buffer4, align 8
  %extensionFields5 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %tag, i32 0, i32 11
  %scopeName = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields5, i32 0, i32 6
  store i8* %14, i8** %scopeName, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then2, %if.end
  %call = call i32 @makeTagEntry(%struct.sTagEntryInfo* %tag)
  br label %return

return:                                           ; preds = %if.end6, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @addToScope(%struct.sVString* %scope, %struct.sVString* %name) #0 {
entry:
  %scope.addr = alloca %struct.sVString*, align 8
  %name.addr = alloca %struct.sVString*, align 8
  store %struct.sVString* %scope, %struct.sVString** %scope.addr, align 8
  store %struct.sVString* %name, %struct.sVString** %name.addr, align 8
  %0 = load %struct.sVString*, %struct.sVString** %scope.addr, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %0, i32 0, i32 0
  %1 = load i64, i64* %length, align 8
  %cmp = icmp ugt i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.sVString*, %struct.sVString** %scope.addr, align 8
  call void @vStringCatS(%struct.sVString* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.sVString*, %struct.sVString** %scope.addr, align 8
  %4 = load %struct.sVString*, %struct.sVString** %name.addr, align 8
  call void @vStringCat(%struct.sVString* %3, %struct.sVString* %4)
  ret void
}

declare void @vStringCat(%struct.sVString*, %struct.sVString*) #1

declare void @vStringCatS(%struct.sVString*, i8*) #1

declare void @initTagEntry(%struct.sTagEntryInfo*, i8*, i32) #1

declare i32 @makeTagEntry(%struct.sTagEntryInfo*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @skipUntil(%struct.lexerState* %lexer, i32* %goal_tokens, i32 %num_goal_tokens) #0 {
entry:
  %lexer.addr = alloca %struct.lexerState*, align 8
  %goal_tokens.addr = alloca i32*, align 8
  %num_goal_tokens.addr = alloca i32, align 4
  %angle_level = alloca i32, align 4
  %paren_level = alloca i32, align 4
  %brace_level = alloca i32, align 4
  %bracket_level = alloca i32, align 4
  %ii = alloca i32, align 4
  store %struct.lexerState* %lexer, %struct.lexerState** %lexer.addr, align 8
  store i32* %goal_tokens, i32** %goal_tokens.addr, align 8
  store i32 %num_goal_tokens, i32* %num_goal_tokens.addr, align 4
  store i32 0, i32* %angle_level, align 4
  store i32 0, i32* %paren_level, align 4
  store i32 0, i32* %brace_level, align 4
  store i32 0, i32* %bracket_level, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end44, %entry
  %0 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %cur_token = getelementptr inbounds %struct.lexerState, %struct.lexerState* %0, i32 0, i32 2
  %1 = load i32, i32* %cur_token, align 8
  %cmp = icmp ne i32 %1, 6
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, i32* %angle_level, align 4
  %cmp1 = icmp eq i32 %2, 0
  br i1 %cmp1, label %land.lhs.true, label %if.end14

land.lhs.true:                                    ; preds = %while.body
  %3 = load i32, i32* %paren_level, align 4
  %cmp2 = icmp eq i32 %3, 0
  br i1 %cmp2, label %land.lhs.true3, label %if.end14

land.lhs.true3:                                   ; preds = %land.lhs.true
  %4 = load i32, i32* %brace_level, align 4
  %cmp4 = icmp eq i32 %4, 0
  br i1 %cmp4, label %land.lhs.true5, label %if.end14

land.lhs.true5:                                   ; preds = %land.lhs.true3
  %5 = load i32, i32* %bracket_level, align 4
  %cmp6 = icmp eq i32 %5, 0
  br i1 %cmp6, label %if.then, label %if.end14

if.then:                                          ; preds = %land.lhs.true5
  store i32 0, i32* %ii, align 4
  store i32 0, i32* %ii, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %6 = load i32, i32* %ii, align 4
  %7 = load i32, i32* %num_goal_tokens.addr, align 4
  %cmp7 = icmp slt i32 %6, %7
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %cur_token8 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %8, i32 0, i32 2
  %9 = load i32, i32* %cur_token8, align 8
  %10 = load i32*, i32** %goal_tokens.addr, align 8
  %11 = load i32, i32* %ii, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds i32, i32* %10, i64 %idxprom
  %12 = load i32, i32* %arrayidx, align 4
  %cmp9 = icmp eq i32 %9, %12
  br i1 %cmp9, label %if.then10, label %if.end

if.then10:                                        ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, i32* %ii, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %ii, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then10, %for.cond
  %14 = load i32, i32* %ii, align 4
  %15 = load i32, i32* %num_goal_tokens.addr, align 4
  %cmp11 = icmp slt i32 %14, %15
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %for.end
  br label %while.end

if.end13:                                         ; preds = %for.end
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %land.lhs.true5, %land.lhs.true3, %land.lhs.true, %while.body
  %16 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %cur_token15 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %16, i32 0, i32 2
  %17 = load i32, i32* %cur_token15, align 8
  switch i32 %17, label %sw.default [
    i32 60, label %sw.bb
    i32 40, label %sw.bb17
    i32 123, label %sw.bb19
    i32 91, label %sw.bb21
    i32 62, label %sw.bb23
    i32 41, label %sw.bb24
    i32 125, label %sw.bb26
    i32 93, label %sw.bb28
    i32 4, label %sw.bb30
  ]

sw.bb:                                            ; preds = %if.end14
  %18 = load i32, i32* %angle_level, align 4
  %inc16 = add nsw i32 %18, 1
  store i32 %inc16, i32* %angle_level, align 4
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.end14
  %19 = load i32, i32* %paren_level, align 4
  %inc18 = add nsw i32 %19, 1
  store i32 %inc18, i32* %paren_level, align 4
  br label %sw.epilog

sw.bb19:                                          ; preds = %if.end14
  %20 = load i32, i32* %brace_level, align 4
  %inc20 = add nsw i32 %20, 1
  store i32 %inc20, i32* %brace_level, align 4
  br label %sw.epilog

sw.bb21:                                          ; preds = %if.end14
  %21 = load i32, i32* %bracket_level, align 4
  %inc22 = add nsw i32 %21, 1
  store i32 %inc22, i32* %bracket_level, align 4
  br label %sw.epilog

sw.bb23:                                          ; preds = %if.end14
  %22 = load i32, i32* %angle_level, align 4
  %dec = add nsw i32 %22, -1
  store i32 %dec, i32* %angle_level, align 4
  br label %sw.epilog

sw.bb24:                                          ; preds = %if.end14
  %23 = load i32, i32* %paren_level, align 4
  %dec25 = add nsw i32 %23, -1
  store i32 %dec25, i32* %paren_level, align 4
  br label %sw.epilog

sw.bb26:                                          ; preds = %if.end14
  %24 = load i32, i32* %brace_level, align 4
  %dec27 = add nsw i32 %24, -1
  store i32 %dec27, i32* %brace_level, align 4
  br label %sw.epilog

sw.bb28:                                          ; preds = %if.end14
  %25 = load i32, i32* %bracket_level, align 4
  %dec29 = add nsw i32 %25, -1
  store i32 %dec29, i32* %bracket_level, align 4
  br label %sw.epilog

sw.bb30:                                          ; preds = %if.end14
  %26 = load i32, i32* %angle_level, align 4
  %cmp31 = icmp sge i32 %26, 2
  br i1 %cmp31, label %if.then32, label %if.end33

if.then32:                                        ; preds = %sw.bb30
  %27 = load i32, i32* %angle_level, align 4
  %sub = sub nsw i32 %27, 2
  store i32 %sub, i32* %angle_level, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %sw.bb30
  br label %sw.epilog

sw.default:                                       ; preds = %if.end14
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end33, %sw.bb28, %sw.bb26, %sw.bb24, %sw.bb23, %sw.bb21, %sw.bb19, %sw.bb17, %sw.bb
  %28 = load i32, i32* %num_goal_tokens.addr, align 4
  %cmp34 = icmp eq i32 %28, 0
  br i1 %cmp34, label %land.lhs.true35, label %if.end44

land.lhs.true35:                                  ; preds = %sw.epilog
  %29 = load i32, i32* %angle_level, align 4
  %cmp36 = icmp eq i32 %29, 0
  br i1 %cmp36, label %land.lhs.true37, label %if.end44

land.lhs.true37:                                  ; preds = %land.lhs.true35
  %30 = load i32, i32* %paren_level, align 4
  %cmp38 = icmp eq i32 %30, 0
  br i1 %cmp38, label %land.lhs.true39, label %if.end44

land.lhs.true39:                                  ; preds = %land.lhs.true37
  %31 = load i32, i32* %brace_level, align 4
  %cmp40 = icmp eq i32 %31, 0
  br i1 %cmp40, label %land.lhs.true41, label %if.end44

land.lhs.true41:                                  ; preds = %land.lhs.true39
  %32 = load i32, i32* %bracket_level, align 4
  %cmp42 = icmp eq i32 %32, 0
  br i1 %cmp42, label %if.then43, label %if.end44

if.then43:                                        ; preds = %land.lhs.true41
  br label %while.end

if.end44:                                         ; preds = %land.lhs.true41, %land.lhs.true39, %land.lhs.true37, %land.lhs.true35, %sw.epilog
  %33 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %call = call i32 @advanceToken(%struct.lexerState* %33, i1 zeroext true)
  br label %while.cond

while.end:                                        ; preds = %if.then43, %if.then12, %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @skipTypeBlock(%struct.lexerState* %lexer) #0 {
entry:
  %lexer.addr = alloca %struct.lexerState*, align 8
  store %struct.lexerState* %lexer, %struct.lexerState** %lexer.addr, align 8
  %0 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %cur_token = getelementptr inbounds %struct.lexerState, %struct.lexerState* %0, i32 0, i32 2
  %1 = load i32, i32* %cur_token, align 8
  %cmp = icmp eq i32 %1, 60
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  call void @skipUntil(%struct.lexerState* %2, i32* null, i32 0)
  %3 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %call = call i32 @advanceToken(%struct.lexerState* %3, i1 zeroext true)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseQualifiedType(%struct.lexerState* %lexer, %struct.sVString* %name) #0 {
entry:
  %lexer.addr = alloca %struct.lexerState*, align 8
  %name.addr = alloca %struct.sVString*, align 8
  %vStringClear_s = alloca %struct.sVString*, align 8
  store %struct.lexerState* %lexer, %struct.lexerState** %lexer.addr, align 8
  store %struct.sVString* %name, %struct.sVString** %name.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end18, %entry
  %0 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %cur_token = getelementptr inbounds %struct.lexerState, %struct.lexerState* %0, i32 0, i32 2
  %1 = load i32, i32* %cur_token, align 8
  %cmp = icmp ne i32 %1, 6
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %cur_token1 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %2, i32 0, i32 2
  %3 = load i32, i32* %cur_token1, align 8
  %cmp2 = icmp eq i32 %3, 2
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %4 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %token_str = getelementptr inbounds %struct.lexerState, %struct.lexerState* %4, i32 0, i32 3
  %5 = load %struct.sVString*, %struct.sVString** %token_str, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %5, i32 0, i32 2
  %6 = load i8*, i8** %buffer, align 8
  %call = call i32 @strcmp(i8* %6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.36, i64 0, i64 0))
  %cmp3 = icmp eq i32 %call, 0
  br i1 %cmp3, label %if.then8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %7 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %token_str4 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %7, i32 0, i32 3
  %8 = load %struct.sVString*, %struct.sVString** %token_str4, align 8
  %buffer5 = getelementptr inbounds %struct.sVString, %struct.sVString* %8, i32 0, i32 2
  %9 = load i8*, i8** %buffer5, align 8
  %call6 = call i32 @strcmp(i8* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i64 0, i64 0))
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.end

if.then8:                                         ; preds = %lor.lhs.false, %if.then
  br label %while.end

if.end:                                           ; preds = %lor.lhs.false
  br label %do.body

do.body:                                          ; preds = %if.end
  %10 = load %struct.sVString*, %struct.sVString** %name.addr, align 8
  store %struct.sVString* %10, %struct.sVString** %vStringClear_s, align 8
  %11 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %11, i32 0, i32 0
  store i64 0, i64* %length, align 8
  %12 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %buffer9 = getelementptr inbounds %struct.sVString, %struct.sVString* %12, i32 0, i32 2
  %13 = load i8*, i8** %buffer9, align 8
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 0
  store i8 0, i8* %arrayidx, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  %14 = load %struct.sVString*, %struct.sVString** %name.addr, align 8
  %15 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %token_str10 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %15, i32 0, i32 3
  %16 = load %struct.sVString*, %struct.sVString** %token_str10, align 8
  call void @vStringCat(%struct.sVString* %14, %struct.sVString* %16)
  br label %if.end18

if.else:                                          ; preds = %while.body
  %17 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %cur_token11 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %17, i32 0, i32 2
  %18 = load i32, i32* %cur_token11, align 8
  %cmp12 = icmp eq i32 %18, 60
  br i1 %cmp12, label %if.then16, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %if.else
  %19 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %cur_token14 = getelementptr inbounds %struct.lexerState, %struct.lexerState* %19, i32 0, i32 2
  %20 = load i32, i32* %cur_token14, align 8
  %cmp15 = icmp eq i32 %20, 123
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %lor.lhs.false13, %if.else
  br label %while.end

if.end17:                                         ; preds = %lor.lhs.false13
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %do.end
  %21 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  %call19 = call i32 @advanceToken(%struct.lexerState* %21, i1 zeroext true)
  br label %while.cond

while.end:                                        ; preds = %if.then16, %if.then8, %while.cond
  %22 = load %struct.lexerState*, %struct.lexerState** %lexer.addr, align 8
  call void @skipTypeBlock(%struct.lexerState* %22)
  ret void
}

declare void @vStringTruncate(%struct.sVString*, i64) #1

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
