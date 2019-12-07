; ModuleID = 'protobuf.c'
source_filename = "protobuf.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-ios11.0.0"

%struct.sKindDefinition = type { i8, i8, i8*, i8*, i8, i32, %struct.sRoleDesc*, %struct.sScopeSeparator*, i32, i32, i32, %struct.sKindDefinition*, %struct.sKindDefinition* }
%struct.sRoleDesc = type { i8, i8*, i8* }
%struct.sScopeSeparator = type { i32, i8* }
%struct.keywordTable = type { i8*, i32 }
%struct.sTokenInfo = type { i32, i32, %struct.sVString* }
%struct.sVString = type { i64, i64, i8* }
%struct.sTagEntryInfo = type { i8, i64, i8*, i32, %struct._MIOPos, i32, i8*, i8*, i32, [2 x i8], i8*, %struct.anon, i32, [5 x %struct.sTagField], %struct.sPtrArray*, i32, i8*, i64 }
%struct._MIOPos = type { i32, %union.anon.0 }
%union.anon.0 = type { i64 }
%struct.anon = type { i8*, i8*, i8*, i8*, i32, i32, i8*, i32, i8*, [2 x i8*], i32, i64 }
%struct.sTagField = type { i32, i8*, i8 }
%struct.sPtrArray = type opaque
%struct.sParserDefinition = type { i8*, %struct.sKindDefinition*, i32, i8**, i8**, i8**, void (i32)*, void (i32, i1)*, void ()*, i32 (i32)*, i8* (%struct._MIO*, i32*, i32)**, i32, i8, i8, i8, i8, %struct.tagRegexTable*, i32, %struct.keywordTable*, i32, %struct.sTagXpathTableTable*, i32, i8, %struct.sFieldDefinition*, i32, %struct.sXtagDefinition*, i32, %struct.sParserDependency*, i32, %struct.sParameterHandlerTable*, i32, %struct.sXpathFileSpec*, i32, i32, i8 }
%struct._MIO = type opaque
%struct.tagRegexTable = type { i8*, i8*, i8*, i8*, i8*, i8 }
%struct.sTagXpathTableTable = type { %struct.sTagXpathTable*, i32 }
%struct.sTagXpathTable = type { i8*, i32, %union.anon, i8* }
%union.anon = type { %struct.sTagXpathMakeTagSpec }
%struct.sTagXpathMakeTagSpec = type { i32, i32, void (i8*, %struct.sTagXpathMakeTagSpec*, %struct.sTagEntryInfo*, i8*)* }
%struct.sFieldDefinition = type { i8, i8*, i8*, i8, [5 x i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)*], i1 (%struct.sTagEntryInfo*)*, i32, i32 }
%struct.sXtagDefinition = type { i8, i8, i8*, i8*, i1 (%struct.sXtagDefinition*)*, i1 (%struct.sXtagDefinition*)*, i32 }
%struct.sParserDependency = type { i32, i8*, i8* }
%struct.sParameterHandlerTable = type { i8*, i8*, void (i32, i8*, i8*)* }
%struct.sXpathFileSpec = type { i8*, i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [9 x i8] c"Protobuf\00", align 1
@extensions = internal constant [2 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* null], align 8
@ProtobufKinds = internal global [7 x %struct.sKindDefinition] [%struct.sKindDefinition { i8 1, i8 112, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 109, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 102, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 101, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 103, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 115, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 0, i8 114, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }], align 8
@ProtobufKeywordTable = internal constant [9 x %struct.keywordTable] [%struct.keywordTable { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0), i32 0 }, %struct.keywordTable { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i32 1 }, %struct.keywordTable { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i32 2 }, %struct.keywordTable { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i32 3 }, %struct.keywordTable { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i32 4 }, %struct.keywordTable { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), i32 5 }, %struct.keywordTable { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0), i32 6 }, %struct.keywordTable { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i32 7 }, %struct.keywordTable { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i32 8 }], align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"proto\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"package\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"packages\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"message\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"messages\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"field\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"fields\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"enumerator\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"enum constants\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"enum\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"enum types\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"service\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"services\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"rpc\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"RPC methods\00", align 1
@Lang_protobuf = internal global i32 0, align 4
@token = internal global %struct.sTokenInfo zeroinitializer, align 8
@.str.16 = private unnamed_addr constant [4 x i8] c";{}\00", align 1
@createProtobufTag.tag = internal global %struct.sTagEntryInfo zeroinitializer, align 8
@.str.17 = private unnamed_addr constant [3 x i8] c";}\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"option\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"repeated\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"optional\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"required\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sParserDefinition* @ProtobufParser() #0 {
entry:
  %def = alloca %struct.sParserDefinition*, align 8
  %call = call %struct.sParserDefinition* @parserNew(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store %struct.sParserDefinition* %call, %struct.sParserDefinition** %def, align 8
  %0 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %extensions = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %0, i32 0, i32 3
  store i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @extensions, i64 0, i64 0), i8*** %extensions, align 8
  %1 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %1, i32 0, i32 1
  store %struct.sKindDefinition* getelementptr inbounds ([7 x %struct.sKindDefinition], [7 x %struct.sKindDefinition]* @ProtobufKinds, i64 0, i64 0), %struct.sKindDefinition** %kindTable, align 8
  %2 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %initialize = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %2, i32 0, i32 6
  store void (i32)* @initialize, void (i32)** %initialize, align 8
  %3 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %3, i32 0, i32 2
  store i32 7, i32* %kindCount, align 8
  %4 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %parser = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %4, i32 0, i32 8
  store void ()* @findProtobufTags, void ()** %parser, align 8
  %5 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %keywordTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %5, i32 0, i32 18
  store %struct.keywordTable* getelementptr inbounds ([9 x %struct.keywordTable], [9 x %struct.keywordTable]* @ProtobufKeywordTable, i64 0, i64 0), %struct.keywordTable** %keywordTable, align 8
  %6 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %keywordCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %6, i32 0, i32 19
  store i32 9, i32* %keywordCount, align 8
  %7 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  ret %struct.sParserDefinition* %7
}

declare %struct.sParserDefinition* @parserNew(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @initialize(i32 %language) #0 {
entry:
  %language.addr = alloca i32, align 4
  store i32 %language, i32* %language.addr, align 4
  %0 = load i32, i32* %language.addr, align 4
  store i32 %0, i32* @Lang_protobuf, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @findProtobufTags() #0 {
entry:
  call void @cppInit(i1 zeroext false, i1 zeroext false, i1 zeroext false, i1 zeroext false, i32 -1, i32 0, i32 -1, i32 0, i32 0)
  %call = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call, %struct.sVString** getelementptr inbounds (%struct.sTokenInfo, %struct.sTokenInfo* @token, i32 0, i32 2), align 8
  call void @nextToken()
  br label %while.cond

while.cond:                                       ; preds = %if.end30, %entry
  %0 = load i32, i32* getelementptr inbounds (%struct.sTokenInfo, %struct.sTokenInfo* @token, i32 0, i32 0), align 8
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call1 = call i32 @tokenIsKeyword(i32 1)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  call void @parseStatement(i32 0)
  br label %if.end30

if.else:                                          ; preds = %while.body
  %call2 = call i32 @tokenIsKeyword(i32 2)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then4, label %if.else5

if.then4:                                         ; preds = %if.else
  call void @parseStatement(i32 1)
  br label %if.end29

if.else5:                                         ; preds = %if.else
  %call6 = call i32 @tokenIsKeyword(i32 3)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then8, label %if.else9

if.then8:                                         ; preds = %if.else5
  call void @parseStatement(i32 4)
  br label %if.end28

if.else9:                                         ; preds = %if.else5
  %call10 = call i32 @tokenIsKeyword(i32 4)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else9
  %call12 = call i32 @tokenIsKeyword(i32 5)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then17, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false
  %call15 = call i32 @tokenIsKeyword(i32 6)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.then17, label %if.else18

if.then17:                                        ; preds = %lor.lhs.false14, %lor.lhs.false, %if.else9
  call void @parseStatement(i32 2)
  br label %if.end27

if.else18:                                        ; preds = %lor.lhs.false14
  %call19 = call i32 @tokenIsKeyword(i32 7)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.then21, label %if.else22

if.then21:                                        ; preds = %if.else18
  call void @parseStatement(i32 5)
  br label %if.end26

if.else22:                                        ; preds = %if.else18
  %call23 = call i32 @tokenIsKeyword(i32 8)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.then25, label %if.end

if.then25:                                        ; preds = %if.else22
  call void @parseStatement(i32 6)
  br label %if.end

if.end:                                           ; preds = %if.then25, %if.else22
  br label %if.end26

if.end26:                                         ; preds = %if.end, %if.then21
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %if.then17
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.then8
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.then4
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.then
  call void @skipUntil(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0))
  call void @nextToken()
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %1 = load %struct.sVString*, %struct.sVString** getelementptr inbounds (%struct.sTokenInfo, %struct.sTokenInfo* @token, i32 0, i32 2), align 8
  call void @vStringDelete(%struct.sVString* %1)
  call void @cppTerminate()
  ret void
}

declare void @cppInit(i1 zeroext, i1 zeroext, i1 zeroext, i1 zeroext, i32, i32, i32, i32, i32) #1

declare %struct.sVString* @vStringNew() #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @nextToken() #0 {
entry:
  %c = alloca i32, align 4
  %vStringClear_s = alloca %struct.sVString*, align 8
  br label %repeat

repeat:                                           ; preds = %if.else22, %entry
  %call = call i32 @cppGetc()
  store i32 %call, i32* %c, align 4
  store i32 -1, i32* getelementptr inbounds (%struct.sTokenInfo, %struct.sTokenInfo* @token, i32 0, i32 1), align 4
  %0 = load i32, i32* %c, align 4
  %cmp = icmp sle i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %repeat
  store i32 0, i32* getelementptr inbounds (%struct.sTokenInfo, %struct.sTokenInfo* @token, i32 0, i32 0), align 8
  br label %if.end24

if.else:                                          ; preds = %repeat
  %1 = load i32, i32* %c, align 4
  %cmp1 = icmp eq i32 %1, 123
  br i1 %cmp1, label %if.then9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %2 = load i32, i32* %c, align 4
  %cmp2 = icmp eq i32 %2, 125
  br i1 %cmp2, label %if.then9, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %3 = load i32, i32* %c, align 4
  %cmp4 = icmp eq i32 %3, 59
  br i1 %cmp4, label %if.then9, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false3
  %4 = load i32, i32* %c, align 4
  %cmp6 = icmp eq i32 %4, 46
  br i1 %cmp6, label %if.then9, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false5
  %5 = load i32, i32* %c, align 4
  %cmp8 = icmp eq i32 %5, 61
  br i1 %cmp8, label %if.then9, label %if.else10

if.then9:                                         ; preds = %lor.lhs.false7, %lor.lhs.false5, %lor.lhs.false3, %lor.lhs.false, %if.else
  %6 = load i32, i32* %c, align 4
  store i32 %6, i32* getelementptr inbounds (%struct.sTokenInfo, %struct.sTokenInfo* @token, i32 0, i32 0), align 8
  br label %if.end23

if.else10:                                        ; preds = %lor.lhs.false7
  %7 = load i32, i32* %c, align 4
  %call11 = call i32 @isalnum(i32 %7) #3
  %tobool = icmp ne i32 %call11, 0
  br i1 %tobool, label %if.then14, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %if.else10
  %8 = load i32, i32* %c, align 4
  %cmp13 = icmp eq i32 %8, 95
  br i1 %cmp13, label %if.then14, label %if.else22

if.then14:                                        ; preds = %lor.lhs.false12, %if.else10
  store i32 105, i32* getelementptr inbounds (%struct.sTokenInfo, %struct.sTokenInfo* @token, i32 0, i32 0), align 8
  br label %do.body

do.body:                                          ; preds = %if.then14
  %9 = load %struct.sVString*, %struct.sVString** getelementptr inbounds (%struct.sTokenInfo, %struct.sTokenInfo* @token, i32 0, i32 2), align 8
  store %struct.sVString* %9, %struct.sVString** %vStringClear_s, align 8
  %10 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %10, i32 0, i32 0
  store i64 0, i64* %length, align 8
  %11 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %11, i32 0, i32 2
  %12 = load i8*, i8** %buffer, align 8
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 0
  store i8 0, i8* %arrayidx, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.end
  %13 = load i32, i32* %c, align 4
  %cmp15 = icmp sgt i32 %13, 0
  br i1 %cmp15, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %14 = load i32, i32* %c, align 4
  %call16 = call i32 @isalnum(i32 %14) #3
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %15 = load i32, i32* %c, align 4
  %cmp18 = icmp eq i32 %15, 95
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %16 = phi i1 [ true, %land.rhs ], [ %cmp18, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %while.cond
  %17 = phi i1 [ false, %while.cond ], [ %16, %lor.end ]
  br i1 %17, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %18 = load %struct.sVString*, %struct.sVString** getelementptr inbounds (%struct.sTokenInfo, %struct.sTokenInfo* @token, i32 0, i32 2), align 8
  %19 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %18, i32 %19)
  %call19 = call i32 @cppGetc()
  store i32 %call19, i32* %c, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %20 = load %struct.sVString*, %struct.sVString** getelementptr inbounds (%struct.sTokenInfo, %struct.sTokenInfo* @token, i32 0, i32 2), align 8
  %buffer20 = getelementptr inbounds %struct.sVString, %struct.sVString* %20, i32 0, i32 2
  %21 = load i8*, i8** %buffer20, align 8
  %22 = load i32, i32* @Lang_protobuf, align 4
  %call21 = call i32 @lookupCaseKeyword(i8* %21, i32 %22)
  store i32 %call21, i32* getelementptr inbounds (%struct.sTokenInfo, %struct.sTokenInfo* @token, i32 0, i32 1), align 4
  %23 = load i32, i32* %c, align 4
  call void @cppUngetc(i32 %23)
  br label %if.end

if.else22:                                        ; preds = %lor.lhs.false12
  br label %repeat

if.end:                                           ; preds = %while.end
  br label %if.end23

if.end23:                                         ; preds = %if.end, %if.then9
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @tokenIsKeyword(i32 %keyword) #0 {
entry:
  %keyword.addr = alloca i32, align 4
  store i32 %keyword, i32* %keyword.addr, align 4
  %0 = load i32, i32* getelementptr inbounds (%struct.sTokenInfo, %struct.sTokenInfo* @token, i32 0, i32 0), align 8
  %cmp = icmp eq i32 %0, 105
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %1 = load i32, i32* getelementptr inbounds (%struct.sTokenInfo, %struct.sTokenInfo* @token, i32 0, i32 1), align 4
  %2 = load i32, i32* %keyword.addr, align 4
  %cmp1 = icmp eq i32 %1, %2
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ]
  %land.ext = zext i1 %3 to i32
  ret i32 %land.ext
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseStatement(i32 %kind) #0 {
entry:
  %kind.addr = alloca i32, align 4
  store i32 %kind, i32* %kind.addr, align 4
  call void @nextToken()
  %0 = load i32, i32* %kind.addr, align 4
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then
  %1 = load i32, i32* getelementptr inbounds (%struct.sTokenInfo, %struct.sTokenInfo* @token, i32 0, i32 0), align 8
  %cmp1 = icmp eq i32 %1, 46
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %do.body
  call void @nextToken()
  br label %if.end

if.end:                                           ; preds = %if.then2, %do.body
  %2 = load i32, i32* getelementptr inbounds (%struct.sTokenInfo, %struct.sTokenInfo* @token, i32 0, i32 0), align 8
  %cmp3 = icmp ne i32 %2, 105
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  br label %if.end13

if.end5:                                          ; preds = %if.end
  call void @nextToken()
  br label %do.cond

do.cond:                                          ; preds = %if.end5
  %3 = load i32, i32* getelementptr inbounds (%struct.sTokenInfo, %struct.sTokenInfo* @token, i32 0, i32 0), align 8
  %cmp6 = icmp eq i32 %3, 46
  br i1 %cmp6, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end7

if.end7:                                          ; preds = %do.end, %entry
  %4 = load i32, i32* getelementptr inbounds (%struct.sTokenInfo, %struct.sTokenInfo* @token, i32 0, i32 0), align 8
  %cmp8 = icmp ne i32 %4, 105
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end7
  br label %if.end13

if.end10:                                         ; preds = %if.end7
  %5 = load %struct.sVString*, %struct.sVString** getelementptr inbounds (%struct.sTokenInfo, %struct.sTokenInfo* @token, i32 0, i32 2), align 8
  %6 = load i32, i32* %kind.addr, align 4
  call void @createProtobufTag(%struct.sVString* %5, i32 %6)
  call void @nextToken()
  %7 = load i32, i32* %kind.addr, align 4
  %cmp11 = icmp eq i32 %7, 4
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end10
  call void @parseEnumConstants()
  br label %if.end13

if.end13:                                         ; preds = %if.then4, %if.then9, %if.then12, %if.end10
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @skipUntil(i8* %punctuation) #0 {
entry:
  %punctuation.addr = alloca i8*, align 8
  store i8* %punctuation, i8** %punctuation.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* getelementptr inbounds (%struct.sTokenInfo, %struct.sTokenInfo* @token, i32 0, i32 0), align 8
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %1 = load i8*, i8** %punctuation.addr, align 8
  %2 = load i32, i32* getelementptr inbounds (%struct.sTokenInfo, %struct.sTokenInfo* @token, i32 0, i32 0), align 8
  %call = call i8* @strchr(i8* %1, i32 %2)
  %cmp1 = icmp eq i8* %call, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %3 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %3, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  call void @nextToken()
  br label %while.cond

while.end:                                        ; preds = %land.end
  ret void
}

declare void @vStringDelete(%struct.sVString*) #1

declare void @cppTerminate() #1

declare i32 @cppGetc() #1

; Function Attrs: nounwind readonly
declare i32 @isalnum(i32) #2

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

declare i32 @lookupCaseKeyword(i8*, i32) #1

declare void @cppUngetc(i32) #1

declare void @vStringResize(%struct.sVString*, i64) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @createProtobufTag(%struct.sVString* %name, i32 %kind) #0 {
entry:
  %name.addr = alloca %struct.sVString*, align 8
  %kind.addr = alloca i32, align 4
  store %struct.sVString* %name, %struct.sVString** %name.addr, align 8
  store i32 %kind, i32* %kind.addr, align 4
  %0 = load i32, i32* %kind.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [7 x %struct.sKindDefinition], [7 x %struct.sKindDefinition]* @ProtobufKinds, i64 0, i64 %idxprom
  %enabled = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %arrayidx, i32 0, i32 0
  %1 = load i8, i8* %enabled, align 8
  %tobool = trunc i8 %1 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.sVString*, %struct.sVString** %name.addr, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %2, i32 0, i32 2
  %3 = load i8*, i8** %buffer, align 8
  %4 = load i32, i32* %kind.addr, align 4
  call void @initTagEntry(%struct.sTagEntryInfo* @createProtobufTag.tag, i8* %3, i32 %4)
  %call = call i32 @makeTagEntry(%struct.sTagEntryInfo* @createProtobufTag.tag)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseEnumConstants() #0 {
entry:
  %0 = load i32, i32* getelementptr inbounds (%struct.sTokenInfo, %struct.sTokenInfo* @token, i32 0, i32 0), align 8
  %cmp = icmp ne i32 %0, 123
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %while.end

if.end:                                           ; preds = %entry
  call void @nextToken()
  br label %while.cond

while.cond:                                       ; preds = %if.end11, %if.end
  %1 = load i32, i32* getelementptr inbounds (%struct.sTokenInfo, %struct.sTokenInfo* @token, i32 0, i32 0), align 8
  %cmp1 = icmp ne i32 %1, 0
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %2 = load i32, i32* getelementptr inbounds (%struct.sTokenInfo, %struct.sTokenInfo* @token, i32 0, i32 0), align 8
  %cmp2 = icmp ne i32 %2, 125
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %3 = phi i1 [ false, %while.cond ], [ %cmp2, %land.rhs ]
  br i1 %3, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %4 = load i32, i32* getelementptr inbounds (%struct.sTokenInfo, %struct.sTokenInfo* @token, i32 0, i32 0), align 8
  %cmp3 = icmp eq i32 %4, 105
  br i1 %cmp3, label %land.lhs.true, label %if.end8

land.lhs.true:                                    ; preds = %while.body
  %call = call i32 @tokenIsKeyword(i32 0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end8, label %if.then4

if.then4:                                         ; preds = %land.lhs.true
  call void @nextToken()
  %5 = load i32, i32* getelementptr inbounds (%struct.sTokenInfo, %struct.sTokenInfo* @token, i32 0, i32 0), align 8
  %cmp5 = icmp eq i32 %5, 61
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.then4
  %6 = load %struct.sVString*, %struct.sVString** getelementptr inbounds (%struct.sTokenInfo, %struct.sTokenInfo* @token, i32 0, i32 2), align 8
  call void @createProtobufTag(%struct.sVString* %6, i32 3)
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.then4
  br label %if.end8

if.end8:                                          ; preds = %if.end7, %land.lhs.true, %while.body
  call void @skipUntil(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0))
  %7 = load i32, i32* getelementptr inbounds (%struct.sTokenInfo, %struct.sTokenInfo* @token, i32 0, i32 0), align 8
  %cmp9 = icmp eq i32 %7, 59
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end8
  call void @nextToken()
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end8
  br label %while.cond

while.end:                                        ; preds = %if.then, %land.end
  ret void
}

declare void @initTagEntry(%struct.sTagEntryInfo*, i8*, i32) #1

declare i32 @makeTagEntry(%struct.sTagEntryInfo*) #1

declare i8* @strchr(i8*, i32) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 10.0.0 (https://github.com/holzschu/clang.git 0cfc630fbdb62e96720b611a57123ef3eb13e297) (https://github.com/holzschu/llvm.git 0d8a71e39b28502c24718f7e74b5acbcfe36dfe0)"}
