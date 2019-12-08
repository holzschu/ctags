; ModuleID = 'erlang.c'
source_filename = "erlang.c"
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

@.str = private unnamed_addr constant [7 x i8] c"Erlang\00", align 1
@ErlangKinds = internal global [5 x %struct.sKindDefinition] [%struct.sKindDefinition { i8 1, i8 100, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 102, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 109, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 114, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 116, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }], align 8
@extensions = internal constant [5 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i8* null], align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"macro\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"macro definitions\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"function\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"functions\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"module\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"modules\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"record\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"record definitions\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"type definitions\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"erl\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"ERL\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"hrl\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"HRL\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"define\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"opaque\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sParserDefinition* @ErlangParser() #0 {
entry:
  %def = alloca %struct.sParserDefinition*, align 8
  %call = call %struct.sParserDefinition* @parserNew(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store %struct.sParserDefinition* %call, %struct.sParserDefinition** %def, align 8
  %0 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %0, i32 0, i32 1
  store %struct.sKindDefinition* getelementptr inbounds ([5 x %struct.sKindDefinition], [5 x %struct.sKindDefinition]* @ErlangKinds, i64 0, i64 0), %struct.sKindDefinition** %kindTable, align 8
  %1 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %1, i32 0, i32 2
  store i32 5, i32* %kindCount, align 8
  %2 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %extensions = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %2, i32 0, i32 3
  store i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @extensions, i64 0, i64 0), i8*** %extensions, align 8
  %3 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %parser = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %3, i32 0, i32 8
  store void ()* @findErlangTags, void ()** %parser, align 8
  %4 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  ret %struct.sParserDefinition* %4
}

declare %struct.sParserDefinition* @parserNew(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @findErlangTags() #0 {
entry:
  %module = alloca %struct.sVString*, align 8
  %line = alloca i8*, align 8
  %cp = alloca i8*, align 8
  %call = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call, %struct.sVString** %module, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end17, %if.then7, %if.then, %entry
  %call1 = call i8* @readLineFromInputFile()
  store i8* %call1, i8** %line, align 8
  %cmp = icmp ne i8* %call1, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %0 = load i8*, i8** %line, align 8
  store i8* %0, i8** %cp, align 8
  %1 = load i8*, i8** %cp, align 8
  %2 = load i8, i8* %1, align 1
  %conv = zext i8 %2 to i32
  %cmp2 = icmp eq i32 %conv, 37
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %while.cond

if.end:                                           ; preds = %while.body
  %3 = load i8*, i8** %cp, align 8
  %4 = load i8, i8* %3, align 1
  %conv4 = zext i8 %4 to i32
  %cmp5 = icmp eq i32 %conv4, 34
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  br label %while.cond

if.end8:                                          ; preds = %if.end
  %5 = load i8*, i8** %cp, align 8
  %6 = load i8, i8* %5, align 1
  %conv9 = zext i8 %6 to i32
  %cmp10 = icmp eq i32 %conv9, 45
  br i1 %cmp10, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end8
  %7 = load i8*, i8** %cp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %cp, align 8
  %8 = load i8*, i8** %cp, align 8
  %9 = load %struct.sVString*, %struct.sVString** %module, align 8
  call void @parseDirective(i8* %8, %struct.sVString* %9)
  br label %if.end17

if.else:                                          ; preds = %if.end8
  %10 = load i8*, i8** %cp, align 8
  %11 = load i8, i8* %10, align 1
  %conv13 = zext i8 %11 to i32
  %call14 = call zeroext i1 @isIdentifierFirstCharacter(i32 %conv13)
  br i1 %call14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.else
  %12 = load i8*, i8** %cp, align 8
  %13 = load %struct.sVString*, %struct.sVString** %module, align 8
  call void @parseFunctionTag(i8* %12, %struct.sVString* %13)
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.else
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then12
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %14 = load %struct.sVString*, %struct.sVString** %module, align 8
  call void @vStringDelete(%struct.sVString* %14)
  ret void
}

declare %struct.sVString* @vStringNew() #1

declare i8* @readLineFromInputFile() #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseDirective(i8* %cp, %struct.sVString* %module) #0 {
entry:
  %cp.addr = alloca i8*, align 8
  %module.addr = alloca %struct.sVString*, align 8
  %directive = alloca %struct.sVString*, align 8
  %drtv = alloca i8*, align 8
  store i8* %cp, i8** %cp.addr, align 8
  store %struct.sVString* %module, %struct.sVString** %module.addr, align 8
  %call = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call, %struct.sVString** %directive, align 8
  %0 = load %struct.sVString*, %struct.sVString** %directive, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %0, i32 0, i32 2
  %1 = load i8*, i8** %buffer, align 8
  store i8* %1, i8** %drtv, align 8
  %2 = load i8*, i8** %cp.addr, align 8
  %3 = load %struct.sVString*, %struct.sVString** %directive, align 8
  %call1 = call i8* @parseIdentifier(i8* %2, %struct.sVString* %3)
  store i8* %call1, i8** %cp.addr, align 8
  %4 = load i8*, i8** %cp.addr, align 8
  %call2 = call i8* @skipSpace(i8* %4)
  store i8* %call2, i8** %cp.addr, align 8
  %5 = load i8*, i8** %cp.addr, align 8
  %6 = load i8, i8* %5, align 1
  %conv = zext i8 %6 to i32
  %cmp = icmp eq i32 %conv, 40
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i8*, i8** %cp.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %cp.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i8*, i8** %drtv, align 8
  %call4 = call i32 @strcmp(i8* %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end
  %9 = load i8*, i8** %cp.addr, align 8
  call void @parseSimpleTag(i8* %9, i32 3)
  br label %if.end31

if.else:                                          ; preds = %if.end
  %10 = load i8*, i8** %drtv, align 8
  %call8 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0))
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %if.then11, label %if.else12

if.then11:                                        ; preds = %if.else
  %11 = load i8*, i8** %cp.addr, align 8
  call void @parseSimpleTag(i8* %11, i32 0)
  br label %if.end30

if.else12:                                        ; preds = %if.else
  %12 = load i8*, i8** %drtv, align 8
  %call13 = call i32 @strcmp(i8* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %cmp14 = icmp eq i32 %call13, 0
  br i1 %cmp14, label %if.then16, label %if.else17

if.then16:                                        ; preds = %if.else12
  %13 = load i8*, i8** %cp.addr, align 8
  call void @parseSimpleTag(i8* %13, i32 4)
  br label %if.end29

if.else17:                                        ; preds = %if.else12
  %14 = load i8*, i8** %drtv, align 8
  %call18 = call i32 @strcmp(i8* %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0))
  %cmp19 = icmp eq i32 %call18, 0
  br i1 %cmp19, label %if.then21, label %if.else22

if.then21:                                        ; preds = %if.else17
  %15 = load i8*, i8** %cp.addr, align 8
  call void @parseSimpleTag(i8* %15, i32 4)
  br label %if.end28

if.else22:                                        ; preds = %if.else17
  %16 = load i8*, i8** %drtv, align 8
  %call23 = call i32 @strcmp(i8* %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %cmp24 = icmp eq i32 %call23, 0
  br i1 %cmp24, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.else22
  %17 = load i8*, i8** %cp.addr, align 8
  %18 = load %struct.sVString*, %struct.sVString** %module.addr, align 8
  call void @parseModuleTag(i8* %17, %struct.sVString* %18)
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.else22
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.then21
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.then16
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.then11
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %if.then7
  %19 = load %struct.sVString*, %struct.sVString** %directive, align 8
  call void @vStringDelete(%struct.sVString* %19)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @isIdentifierFirstCharacter(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %call = call i32 @isalpha(i32 %0) #3
  %tobool = icmp ne i32 %call, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseFunctionTag(i8* %cp, %struct.sVString* %module) #0 {
entry:
  %cp.addr = alloca i8*, align 8
  %module.addr = alloca %struct.sVString*, align 8
  %identifier = alloca %struct.sVString*, align 8
  store i8* %cp, i8** %cp.addr, align 8
  store %struct.sVString* %module, %struct.sVString** %module.addr, align 8
  %call = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call, %struct.sVString** %identifier, align 8
  %0 = load i8*, i8** %cp.addr, align 8
  %1 = load %struct.sVString*, %struct.sVString** %identifier, align 8
  %call1 = call i8* @parseIdentifier(i8* %0, %struct.sVString* %1)
  %2 = load %struct.sVString*, %struct.sVString** %identifier, align 8
  %3 = load %struct.sVString*, %struct.sVString** %module.addr, align 8
  call void @makeMemberTag(%struct.sVString* %2, i32 1, %struct.sVString* %3)
  %4 = load %struct.sVString*, %struct.sVString** %identifier, align 8
  call void @vStringDelete(%struct.sVString* %4)
  ret void
}

declare void @vStringDelete(%struct.sVString*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @parseIdentifier(i8* %cp, %struct.sVString* %identifier) #0 {
entry:
  %cp.addr = alloca i8*, align 8
  %identifier.addr = alloca %struct.sVString*, align 8
  %vStringClear_s = alloca %struct.sVString*, align 8
  store i8* %cp, i8** %cp.addr, align 8
  store %struct.sVString* %identifier, %struct.sVString** %identifier.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.sVString*, %struct.sVString** %identifier.addr, align 8
  store %struct.sVString* %0, %struct.sVString** %vStringClear_s, align 8
  %1 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %1, i32 0, i32 0
  store i64 0, i64* %length, align 8
  %2 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %2, i32 0, i32 2
  %3 = load i8*, i8** %buffer, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 0
  store i8 0, i8* %arrayidx, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.end
  %4 = load i8*, i8** %cp.addr, align 8
  %5 = load i8, i8* %4, align 1
  %conv = zext i8 %5 to i32
  %call = call zeroext i1 @isIdentifierCharacter(i32 %conv)
  br i1 %call, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load %struct.sVString*, %struct.sVString** %identifier.addr, align 8
  %7 = load i8*, i8** %cp.addr, align 8
  %8 = load i8, i8* %7, align 1
  %conv1 = zext i8 %8 to i32
  call void @vStringPut(%struct.sVString* %6, i32 %conv1)
  %9 = load i8*, i8** %cp.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr, i8** %cp.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %10 = load i8*, i8** %cp.addr, align 8
  ret i8* %10
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @skipSpace(i8* %cp) #0 {
entry:
  %cp.addr = alloca i8*, align 8
  store i8* %cp, i8** %cp.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i8*, i8** %cp.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = zext i8 %1 to i32
  %call = call i32 @isspace(i32 %conv) #3
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i8*, i8** %cp.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %cp.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %3 = load i8*, i8** %cp.addr, align 8
  ret i8* %3
}

declare i32 @strcmp(i8*, i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseSimpleTag(i8* %cp, i32 %kind) #0 {
entry:
  %cp.addr = alloca i8*, align 8
  %kind.addr = alloca i32, align 4
  %identifier = alloca %struct.sVString*, align 8
  store i8* %cp, i8** %cp.addr, align 8
  store i32 %kind, i32* %kind.addr, align 4
  %call = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call, %struct.sVString** %identifier, align 8
  %0 = load i8*, i8** %cp.addr, align 8
  %1 = load %struct.sVString*, %struct.sVString** %identifier, align 8
  %call1 = call i8* @parseIdentifier(i8* %0, %struct.sVString* %1)
  %2 = load %struct.sVString*, %struct.sVString** %identifier, align 8
  %3 = load i32, i32* %kind.addr, align 4
  %call2 = call i32 @makeSimpleTag(%struct.sVString* %2, i32 %3)
  %4 = load %struct.sVString*, %struct.sVString** %identifier, align 8
  call void @vStringDelete(%struct.sVString* %4)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseModuleTag(i8* %cp, %struct.sVString* %module) #0 {
entry:
  %cp.addr = alloca i8*, align 8
  %module.addr = alloca %struct.sVString*, align 8
  %identifier = alloca %struct.sVString*, align 8
  store i8* %cp, i8** %cp.addr, align 8
  store %struct.sVString* %module, %struct.sVString** %module.addr, align 8
  %call = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call, %struct.sVString** %identifier, align 8
  %0 = load i8*, i8** %cp.addr, align 8
  %1 = load %struct.sVString*, %struct.sVString** %identifier, align 8
  %call1 = call i8* @parseIdentifier(i8* %0, %struct.sVString* %1)
  %2 = load %struct.sVString*, %struct.sVString** %identifier, align 8
  %call2 = call i32 @makeSimpleTag(%struct.sVString* %2, i32 2)
  %3 = load %struct.sVString*, %struct.sVString** %module.addr, align 8
  %4 = load %struct.sVString*, %struct.sVString** %identifier, align 8
  call void @vStringCopy(%struct.sVString* %3, %struct.sVString* %4)
  %5 = load %struct.sVString*, %struct.sVString** %identifier, align 8
  call void @vStringDelete(%struct.sVString* %5)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @isIdentifierCharacter(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %call = call i32 @isalnum(i32 %0) #3
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %c.addr, align 4
  %cmp = icmp eq i32 %1, 95
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %2 = load i32, i32* %c.addr, align 4
  %cmp1 = icmp eq i32 %2, 58
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %entry
  %3 = phi i1 [ true, %lor.lhs.false ], [ true, %entry ], [ %cmp1, %lor.rhs ]
  ret i1 %3
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

; Function Attrs: nounwind readonly
declare i32 @isalnum(i32) #2

declare void @vStringResize(%struct.sVString*, i64) #1

; Function Attrs: nounwind readonly
declare i32 @isspace(i32) #2

declare i32 @makeSimpleTag(%struct.sVString*, i32) #1

declare void @vStringCopy(%struct.sVString*, %struct.sVString*) #1

; Function Attrs: nounwind readonly
declare i32 @isalpha(i32) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @makeMemberTag(%struct.sVString* %identifier, i32 %kind, %struct.sVString* %module) #0 {
entry:
  %identifier.addr = alloca %struct.sVString*, align 8
  %kind.addr = alloca i32, align 4
  %module.addr = alloca %struct.sVString*, align 8
  %tag = alloca %struct.sTagEntryInfo, align 8
  store %struct.sVString* %identifier, %struct.sVString** %identifier.addr, align 8
  store i32 %kind, i32* %kind.addr, align 4
  store %struct.sVString* %module, %struct.sVString** %module.addr, align 8
  %0 = load i32, i32* %kind.addr, align 4
  %idxprom = zext i32 %0 to i64
  %arrayidx = getelementptr inbounds [5 x %struct.sKindDefinition], [5 x %struct.sKindDefinition]* @ErlangKinds, i64 0, i64 %idxprom
  %enabled = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %arrayidx, i32 0, i32 0
  %1 = load i8, i8* %enabled, align 8
  %tobool = trunc i8 %1 to i1
  br i1 %tobool, label %land.lhs.true, label %if.end8

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.sVString*, %struct.sVString** %identifier.addr, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %2, i32 0, i32 0
  %3 = load i64, i64* %length, align 8
  %cmp = icmp ugt i64 %3, 0
  br i1 %cmp, label %if.then, label %if.end8

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct.sVString*, %struct.sVString** %identifier.addr, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %4, i32 0, i32 2
  %5 = load i8*, i8** %buffer, align 8
  %6 = load i32, i32* %kind.addr, align 4
  call void @initTagEntry(%struct.sTagEntryInfo* %tag, i8* %5, i32 %6)
  %7 = load %struct.sVString*, %struct.sVString** %module.addr, align 8
  %cmp1 = icmp ne %struct.sVString* %7, null
  br i1 %cmp1, label %land.lhs.true2, label %if.end

land.lhs.true2:                                   ; preds = %if.then
  %8 = load %struct.sVString*, %struct.sVString** %module.addr, align 8
  %length3 = getelementptr inbounds %struct.sVString, %struct.sVString* %8, i32 0, i32 0
  %9 = load i64, i64* %length3, align 8
  %cmp4 = icmp ugt i64 %9, 0
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %land.lhs.true2
  %extensionFields = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %tag, i32 0, i32 11
  %scopeKindIndex = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields, i32 0, i32 5
  store i32 2, i32* %scopeKindIndex, align 4
  %10 = load %struct.sVString*, %struct.sVString** %module.addr, align 8
  %buffer6 = getelementptr inbounds %struct.sVString, %struct.sVString* %10, i32 0, i32 2
  %11 = load i8*, i8** %buffer6, align 8
  %extensionFields7 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %tag, i32 0, i32 11
  %scopeName = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields7, i32 0, i32 6
  store i8* %11, i8** %scopeName, align 8
  br label %if.end

if.end:                                           ; preds = %if.then5, %land.lhs.true2, %if.then
  %call = call i32 @makeTagEntry(%struct.sTagEntryInfo* %tag)
  br label %if.end8

if.end8:                                          ; preds = %if.end, %land.lhs.true, %entry
  ret void
}

declare void @initTagEntry(%struct.sTagEntryInfo*, i8*, i32) #1

declare i32 @makeTagEntry(%struct.sTagEntryInfo*) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 10.0.0 (https://github.com/holzschu/clang.git 0cfc630fbdb62e96720b611a57123ef3eb13e297) (https://github.com/holzschu/llvm.git 0d8a71e39b28502c24718f7e74b5acbcfe36dfe0)"}
