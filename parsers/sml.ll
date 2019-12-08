; ModuleID = 'sml.c'
source_filename = "sml.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-ios11.0.0"

%struct.sKindDefinition = type { i8, i8, i8*, i8*, i8, i32, %struct.sRoleDesc*, %struct.sScopeSeparator*, i32, i32, i32, %struct.sKindDefinition*, %struct.sKindDefinition* }
%struct.sRoleDesc = type { i8, i8*, i8* }
%struct.sScopeSeparator = type { i32, i8* }
%struct.anon.1 = type { i8*, i32 }
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

@.str = private unnamed_addr constant [4 x i8] c"SML\00", align 1
@SmlKinds = internal global [7 x %struct.sKindDefinition] [%struct.sKindDefinition { i8 1, i8 101, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 102, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 99, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 115, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 114, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 116, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 118, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }], align 8
@extensions = internal constant [3 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0), i8* null], align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"exception\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"exception declarations\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"function\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"function definitions\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"functor\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"functor definitions\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"signature\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"signature declarations\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"structure\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"structure declarations\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"type definitions\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"value bindings\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"sml\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"sig\00", align 1
@CommentLevel = internal global i32 0, align 4
@.str.17 = private unnamed_addr constant [3 x i8] c"*)\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"(*\00", align 1
@.str.19 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SmlKeywordTypes = internal global [10 x %struct.anon.1] [%struct.anon.1 { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i32 5 }, %struct.anon.1 { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0), i32 -2 }, %struct.anon.1 { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), i32 5 }, %struct.anon.1 { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 0 }, %struct.anon.1 { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i32 2 }, %struct.anon.1 { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i32 0, i32 0), i32 1 }, %struct.anon.1 { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i32 3 }, %struct.anon.1 { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i32 4 }, %struct.anon.1 { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i32 5 }, %struct.anon.1 { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0), i32 6 }], align 8
@.str.20 = private unnamed_addr constant [8 x i8] c"abstype\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"and\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"datatype\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"fun\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"val\00", align 1
@.str.25 = private unnamed_addr constant [21 x i8] c"!%&$#+-<>=/?@\\~'^|*_\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sParserDefinition* @SmlParser() #0 {
entry:
  %def = alloca %struct.sParserDefinition*, align 8
  %call = call %struct.sParserDefinition* @parserNew(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store %struct.sParserDefinition* %call, %struct.sParserDefinition** %def, align 8
  %0 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %0, i32 0, i32 1
  store %struct.sKindDefinition* getelementptr inbounds ([7 x %struct.sKindDefinition], [7 x %struct.sKindDefinition]* @SmlKinds, i64 0, i64 0), %struct.sKindDefinition** %kindTable, align 8
  %1 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %1, i32 0, i32 2
  store i32 7, i32* %kindCount, align 8
  %2 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %extensions = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %2, i32 0, i32 3
  store i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @extensions, i64 0, i64 0), i8*** %extensions, align 8
  %3 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %parser = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %3, i32 0, i32 8
  store void ()* @findSmlTags, void ()** %parser, align 8
  %4 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  ret %struct.sParserDefinition* %4
}

declare %struct.sParserDefinition* @parserNew(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @findSmlTags() #0 {
entry:
  %identifier = alloca %struct.sVString*, align 8
  %line = alloca i8*, align 8
  %lastTag = alloca i32, align 4
  %cp = alloca i8*, align 8
  %foundTag = alloca i32, align 4
  %call = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call, %struct.sVString** %identifier, align 8
  store i32 -1, i32* %lastTag, align 4
  br label %while.cond

while.cond:                                       ; preds = %do.end, %entry
  %call1 = call i8* @readLineFromInputFile()
  store i8* %call1, i8** %line, align 8
  %cmp = icmp ne i8* %call1, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %0 = load i8*, i8** %line, align 8
  %call2 = call i8* @skipSpace(i8* %0)
  store i8* %call2, i8** %cp, align 8
  br label %do.body

do.body:                                          ; preds = %land.end, %while.body
  %1 = load i32, i32* @CommentLevel, align 4
  %cmp3 = icmp ne i32 %1, 0
  br i1 %cmp3, label %if.then, label %if.end7

if.then:                                          ; preds = %do.body
  %2 = load i8*, i8** %cp, align 8
  %call4 = call i8* @strstr(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0))
  store i8* %call4, i8** %cp, align 8
  %3 = load i8*, i8** %cp, align 8
  %cmp5 = icmp eq i8* %3, null
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then
  br label %do.cond

if.else:                                          ; preds = %if.then
  %4 = load i32, i32* @CommentLevel, align 4
  %dec = add i32 %4, -1
  store i32 %dec, i32* @CommentLevel, align 4
  %5 = load i8*, i8** %cp, align 8
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 2
  store i8* %add.ptr, i8** %cp, align 8
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %if.end7

if.end7:                                          ; preds = %if.end, %do.body
  %call8 = call i32 @findNextIdentifier(i8** %cp)
  store i32 %call8, i32* %foundTag, align 4
  %6 = load i32, i32* %foundTag, align 4
  %cmp9 = icmp ne i32 %6, -1
  br i1 %cmp9, label %if.then10, label %if.end20

if.then10:                                        ; preds = %if.end7
  %7 = load i8*, i8** %cp, align 8
  %call11 = call i8* @skipSpace(i8* %7)
  store i8* %call11, i8** %cp, align 8
  %8 = load i8*, i8** %cp, align 8
  %9 = load %struct.sVString*, %struct.sVString** %identifier, align 8
  %call12 = call i8* @parseIdentifier(i8* %8, %struct.sVString* %9)
  store i8* %call12, i8** %cp, align 8
  %10 = load i32, i32* %foundTag, align 4
  %cmp13 = icmp eq i32 %10, -2
  br i1 %cmp13, label %if.then14, label %if.else18

if.then14:                                        ; preds = %if.then10
  %11 = load i32, i32* %lastTag, align 4
  %cmp15 = icmp ne i32 %11, -1
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.then14
  %12 = load i32, i32* %lastTag, align 4
  %13 = load %struct.sVString*, %struct.sVString** %identifier, align 8
  call void @makeSmlTag(i32 %12, %struct.sVString* %13)
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.then14
  br label %if.end19

if.else18:                                        ; preds = %if.then10
  %14 = load i32, i32* %foundTag, align 4
  %15 = load %struct.sVString*, %struct.sVString** %identifier, align 8
  call void @makeSmlTag(i32 %14, %struct.sVString* %15)
  %16 = load i32, i32* %foundTag, align 4
  store i32 %16, i32* %lastTag, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.else18, %if.end17
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.end7
  %17 = load i8*, i8** %cp, align 8
  %call21 = call i8* @strstr(i8* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0))
  %cmp22 = icmp ne i8* %call21, null
  br i1 %cmp22, label %if.then23, label %if.end29

if.then23:                                        ; preds = %if.end20
  %18 = load i8*, i8** %cp, align 8
  %add.ptr24 = getelementptr inbounds i8, i8* %18, i64 2
  store i8* %add.ptr24, i8** %cp, align 8
  %19 = load i8*, i8** %cp, align 8
  %call25 = call i8* @strstr(i8* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0))
  store i8* %call25, i8** %cp, align 8
  %20 = load i8*, i8** %cp, align 8
  %cmp26 = icmp eq i8* %20, null
  br i1 %cmp26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.then23
  %21 = load i32, i32* @CommentLevel, align 4
  %inc = add i32 %21, 1
  store i32 %inc, i32* @CommentLevel, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.then23
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.end20
  br label %do.cond

do.cond:                                          ; preds = %if.end29, %if.then6
  %22 = load i8*, i8** %cp, align 8
  %cmp30 = icmp ne i8* %22, null
  br i1 %cmp30, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %23 = load i8*, i8** %cp, align 8
  %call31 = call i32 @strcmp(i8* %23, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i64 0, i64 0))
  %cmp32 = icmp ne i32 %call31, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %24 = phi i1 [ false, %do.cond ], [ %cmp32, %land.rhs ]
  br i1 %24, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %25 = load %struct.sVString*, %struct.sVString** %identifier, align 8
  call void @vStringDelete(%struct.sVString* %25)
  ret void
}

declare %struct.sVString* @vStringNew() #1

declare i8* @readLineFromInputFile() #1

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

declare i8* @strstr(i8*, i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @findNextIdentifier(i8** %cp) #0 {
entry:
  %cp.addr = alloca i8**, align 8
  %result = alloca i32, align 4
  %identifier = alloca %struct.sVString*, align 8
  %count = alloca i32, align 4
  %i = alloca i32, align 4
  %id = alloca i8*, align 8
  store i8** %cp, i8*** %cp.addr, align 8
  store i32 -1, i32* %result, align 4
  %call = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call, %struct.sVString** %identifier, align 8
  store i32 10, i32* %count, align 4
  %0 = load i8**, i8*** %cp.addr, align 8
  %1 = load i8*, i8** %0, align 8
  %2 = load %struct.sVString*, %struct.sVString** %identifier, align 8
  %call1 = call i8* @parseIdentifier(i8* %1, %struct.sVString* %2)
  %3 = load i8**, i8*** %cp.addr, align 8
  store i8* %call1, i8** %3, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %count, align 4
  %cmp = icmp ult i32 %4, %5
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %6 = load i32, i32* %result, align 4
  %cmp2 = icmp eq i32 %6, -1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %7 = phi i1 [ false, %for.cond ], [ %cmp2, %land.rhs ]
  br i1 %7, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %8 = load %struct.sVString*, %struct.sVString** %identifier, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %8, i32 0, i32 2
  %9 = load i8*, i8** %buffer, align 8
  store i8* %9, i8** %id, align 8
  %10 = load i8*, i8** %id, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom = zext i32 %11 to i64
  %arrayidx = getelementptr inbounds [10 x %struct.anon.1], [10 x %struct.anon.1]* @SmlKeywordTypes, i64 0, i64 %idxprom
  %keyword = getelementptr inbounds %struct.anon.1, %struct.anon.1* %arrayidx, i32 0, i32 0
  %12 = load i8*, i8** %keyword, align 8
  %call3 = call i32 @strcmp(i8* %10, i8* %12)
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4
  %idxprom5 = zext i32 %13 to i64
  %arrayidx6 = getelementptr inbounds [10 x %struct.anon.1], [10 x %struct.anon.1]* @SmlKeywordTypes, i64 0, i64 %idxprom5
  %kind = getelementptr inbounds %struct.anon.1, %struct.anon.1* %arrayidx6, i32 0, i32 1
  %14 = load i32, i32* %kind, align 8
  store i32 %14, i32* %result, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load i32, i32* %i, align 4
  %inc = add i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %16 = load %struct.sVString*, %struct.sVString** %identifier, align 8
  call void @vStringDelete(%struct.sVString* %16)
  %17 = load i32, i32* %result, align 4
  ret i32 %17
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @parseIdentifier(i8* %cp, %struct.sVString* %identifier) #0 {
entry:
  %retval = alloca i8*, align 8
  %cp.addr = alloca i8*, align 8
  %identifier.addr = alloca %struct.sVString*, align 8
  %stringLit = alloca i8, align 1
  %vStringClear_s = alloca %struct.sVString*, align 8
  %oneback = alloca i32, align 4
  store i8* %cp, i8** %cp.addr, align 8
  store %struct.sVString* %identifier, %struct.sVString** %identifier.addr, align 8
  store i8 0, i8* %stringLit, align 1
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

while.cond:                                       ; preds = %if.end34, %if.then22, %do.end
  %4 = load i8*, i8** %cp.addr, align 8
  %5 = load i8, i8* %4, align 1
  %conv = zext i8 %5 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %6 = load i8*, i8** %cp.addr, align 8
  %7 = load i8, i8* %6, align 1
  %conv2 = zext i8 %7 to i32
  %call = call zeroext i1 @isIdentifier(i32 %conv2)
  br i1 %call, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %land.rhs
  %8 = load i8, i8* %stringLit, align 1
  %tobool = trunc i8 %8 to i1
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %9 = phi i1 [ true, %land.rhs ], [ %tobool, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %while.cond
  %10 = phi i1 [ false, %while.cond ], [ %9, %lor.end ]
  br i1 %10, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %11 = load i8*, i8** %cp.addr, align 8
  %12 = load i8, i8* %11, align 1
  %conv4 = zext i8 %12 to i32
  store i32 %conv4, i32* %oneback, align 4
  %13 = load i8*, i8** %cp.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr, i8** %cp.addr, align 8
  %14 = load i32, i32* %oneback, align 4
  %cmp5 = icmp eq i32 %14, 40
  br i1 %cmp5, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.body
  %15 = load i8*, i8** %cp.addr, align 8
  %16 = load i8, i8* %15, align 1
  %conv7 = zext i8 %16 to i32
  %cmp8 = icmp eq i32 %conv7, 42
  br i1 %cmp8, label %land.lhs.true10, label %if.end

land.lhs.true10:                                  ; preds = %land.lhs.true
  %17 = load i8, i8* %stringLit, align 1
  %tobool11 = trunc i8 %17 to i1
  %conv12 = zext i1 %tobool11 to i32
  %cmp13 = icmp eq i32 %conv12, 0
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true10
  %18 = load i32, i32* @CommentLevel, align 4
  %inc = add i32 %18, 1
  store i32 %inc, i32* @CommentLevel, align 4
  %19 = load i8*, i8** %cp.addr, align 8
  %incdec.ptr15 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr15, i8** %cp.addr, align 8
  store i8* %incdec.ptr15, i8** %retval, align 8
  br label %return

if.end:                                           ; preds = %land.lhs.true10, %land.lhs.true, %while.body
  %20 = load i8*, i8** %cp.addr, align 8
  %21 = load i8, i8* %20, align 1
  %conv16 = zext i8 %21 to i32
  %cmp17 = icmp eq i32 %conv16, 34
  br i1 %cmp17, label %land.lhs.true19, label %if.end23

land.lhs.true19:                                  ; preds = %if.end
  %22 = load i32, i32* %oneback, align 4
  %cmp20 = icmp ne i32 %22, 92
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %land.lhs.true19
  store i8 1, i8* %stringLit, align 1
  br label %while.cond

if.end23:                                         ; preds = %land.lhs.true19, %if.end
  %23 = load i8, i8* %stringLit, align 1
  %tobool24 = trunc i8 %23 to i1
  br i1 %tobool24, label %land.lhs.true26, label %if.end34

land.lhs.true26:                                  ; preds = %if.end23
  %24 = load i8*, i8** %cp.addr, align 8
  %25 = load i8, i8* %24, align 1
  %conv27 = zext i8 %25 to i32
  %cmp28 = icmp eq i32 %conv27, 34
  br i1 %cmp28, label %land.lhs.true30, label %if.end34

land.lhs.true30:                                  ; preds = %land.lhs.true26
  %26 = load i32, i32* %oneback, align 4
  %cmp31 = icmp ne i32 %26, 92
  br i1 %cmp31, label %if.then33, label %if.end34

if.then33:                                        ; preds = %land.lhs.true30
  store i8 0, i8* %stringLit, align 1
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %land.lhs.true30, %land.lhs.true26, %if.end23
  br label %while.cond

while.end:                                        ; preds = %land.end
  %27 = load i8*, i8** %cp.addr, align 8
  %call35 = call i32 @strcmp(i8* %27, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i64 0, i64 0))
  %cmp36 = icmp eq i32 %call35, 0
  br i1 %cmp36, label %if.then40, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end
  %28 = load i8*, i8** %cp.addr, align 8
  %cmp38 = icmp eq i8* %28, null
  br i1 %cmp38, label %if.then40, label %if.end41

if.then40:                                        ; preds = %lor.lhs.false, %while.end
  %29 = load i8*, i8** %cp.addr, align 8
  store i8* %29, i8** %retval, align 8
  br label %return

if.end41:                                         ; preds = %lor.lhs.false
  br label %while.cond42

while.cond42:                                     ; preds = %while.body45, %if.end41
  %30 = load i8*, i8** %cp.addr, align 8
  %31 = load i8, i8* %30, align 1
  %conv43 = zext i8 %31 to i32
  %call44 = call zeroext i1 @isIdentifier(i32 %conv43)
  br i1 %call44, label %while.body45, label %while.end48

while.body45:                                     ; preds = %while.cond42
  %32 = load %struct.sVString*, %struct.sVString** %identifier.addr, align 8
  %33 = load i8*, i8** %cp.addr, align 8
  %34 = load i8, i8* %33, align 1
  %conv46 = zext i8 %34 to i32
  call void @vStringPut(%struct.sVString* %32, i32 %conv46)
  %35 = load i8*, i8** %cp.addr, align 8
  %incdec.ptr47 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %incdec.ptr47, i8** %cp.addr, align 8
  br label %while.cond42

while.end48:                                      ; preds = %while.cond42
  %36 = load i8*, i8** %cp.addr, align 8
  store i8* %36, i8** %retval, align 8
  br label %return

return:                                           ; preds = %while.end48, %if.then40, %if.then
  %37 = load i8*, i8** %retval, align 8
  ret i8* %37
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @makeSmlTag(i32 %type, %struct.sVString* %name) #0 {
entry:
  %type.addr = alloca i32, align 4
  %name.addr = alloca %struct.sVString*, align 8
  %tag = alloca %struct.sTagEntryInfo, align 8
  store i32 %type, i32* %type.addr, align 4
  store %struct.sVString* %name, %struct.sVString** %name.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load i32, i32* %type.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [7 x %struct.sKindDefinition], [7 x %struct.sKindDefinition]* @SmlKinds, i64 0, i64 %idxprom
  %enabled = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %arrayidx, i32 0, i32 0
  %1 = load i8, i8* %enabled, align 8
  %tobool = trunc i8 %1 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %do.end
  br label %return

if.end:                                           ; preds = %do.end
  %2 = load %struct.sVString*, %struct.sVString** %name.addr, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %2, i32 0, i32 2
  %3 = load i8*, i8** %buffer, align 8
  %4 = load i32, i32* %type.addr, align 4
  call void @initTagEntry(%struct.sTagEntryInfo* %tag, i8* %3, i32 %4)
  %call = call i32 @makeTagEntry(%struct.sTagEntryInfo* %tag)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare i32 @strcmp(i8*, i8*) #1

declare void @vStringDelete(%struct.sVString*) #1

; Function Attrs: nounwind readonly
declare i32 @isspace(i32) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @isIdentifier(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  %result = alloca i8, align 1
  %alternateIdentifiers = alloca i8*, align 8
  store i32 %c, i32* %c.addr, align 4
  store i8 0, i8* %result, align 1
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.25, i64 0, i64 0), i8** %alternateIdentifiers, align 8
  %0 = load i32, i32* %c.addr, align 4
  %call = call i32 @isalnum(i32 %0) #3
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i8 1, i8* %result, align 1
  br label %if.end4

if.else:                                          ; preds = %entry
  %1 = load i32, i32* %c.addr, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.else
  %2 = load i32, i32* %c.addr, align 4
  %call1 = call i8* @strchr(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.25, i32 0, i32 0), i32 %2)
  %cmp2 = icmp ne i8* %call1, null
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %land.lhs.true
  store i8 1, i8* %result, align 1
  br label %if.end

if.end:                                           ; preds = %if.then3, %land.lhs.true, %if.else
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then
  %3 = load i8, i8* %result, align 1
  %tobool5 = trunc i8 %3 to i1
  ret i1 %tobool5
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

declare i8* @strchr(i8*, i32) #1

declare void @vStringResize(%struct.sVString*, i64) #1

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
