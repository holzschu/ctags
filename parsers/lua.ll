; ModuleID = 'lua.c'
source_filename = "lua.c"
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

@.str = private unnamed_addr constant [4 x i8] c"Lua\00", align 1
@LuaKinds = internal global [1 x %struct.sKindDefinition] [%struct.sKindDefinition { i8 1, i8 102, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }], align 8
@extensions = internal constant [2 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* null], align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"function\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"functions\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"lua\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sParserDefinition* @LuaParser() #0 {
entry:
  %def = alloca %struct.sParserDefinition*, align 8
  %call = call %struct.sParserDefinition* @parserNew(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store %struct.sParserDefinition* %call, %struct.sParserDefinition** %def, align 8
  %0 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %0, i32 0, i32 1
  store %struct.sKindDefinition* getelementptr inbounds ([1 x %struct.sKindDefinition], [1 x %struct.sKindDefinition]* @LuaKinds, i64 0, i64 0), %struct.sKindDefinition** %kindTable, align 8
  %1 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %1, i32 0, i32 2
  store i32 1, i32* %kindCount, align 8
  %2 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %extensions = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %2, i32 0, i32 3
  store i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @extensions, i64 0, i64 0), i8*** %extensions, align 8
  %3 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %parser = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %3, i32 0, i32 8
  store void ()* @findLuaTags, void ()** %parser, align 8
  %4 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  ret %struct.sParserDefinition* %4
}

declare %struct.sParserDefinition* @parserNew(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @findLuaTags() #0 {
entry:
  %name = alloca %struct.sVString*, align 8
  %line = alloca i8*, align 8
  %p = alloca i8*, align 8
  %q = alloca i8*, align 8
  %call = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call, %struct.sVString** %name, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end25, %if.then5, %if.then, %entry
  %call1 = call i8* @readLineFromInputFile()
  store i8* %call1, i8** %line, align 8
  %cmp = icmp ne i8* %call1, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %0 = load i8*, i8** %line, align 8
  %call2 = call zeroext i1 @is_a_code_line(i8* %0)
  br i1 %call2, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  br label %while.cond

if.end:                                           ; preds = %while.body
  %1 = load i8*, i8** %line, align 8
  %call3 = call i8* @strstr(i8* %1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i8* %call3, i8** %p, align 8
  %2 = load i8*, i8** %p, align 8
  %cmp4 = icmp eq i8* %2, null
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  br label %while.cond

if.end6:                                          ; preds = %if.end
  %3 = load i8*, i8** %line, align 8
  %call7 = call i8* @strchr(i8* %3, i32 61)
  store i8* %call7, i8** %q, align 8
  %4 = load i8*, i8** %q, align 8
  %cmp8 = icmp eq i8* %4, null
  br i1 %cmp8, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end6
  %5 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 9
  store i8* %add.ptr, i8** %p, align 8
  %6 = load i8*, i8** %p, align 8
  %call10 = call i8* @strchr(i8* %6, i32 40)
  store i8* %call10, i8** %q, align 8
  %7 = load i8*, i8** %q, align 8
  %tobool = icmp ne i8* %7, null
  br i1 %tobool, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.then9
  %8 = load i8*, i8** %p, align 8
  %9 = load i8*, i8** %q, align 8
  %10 = load %struct.sVString*, %struct.sVString** %name, align 8
  call void @extract_next_token(i8* %8, i8* %9, %struct.sVString* %10)
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.then9
  br label %if.end25

if.else:                                          ; preds = %if.end6
  %11 = load i8*, i8** %q, align 8
  %add.ptr13 = getelementptr inbounds i8, i8* %11, i64 1
  %12 = load i8, i8* %add.ptr13, align 1
  %conv = sext i8 %12 to i32
  %cmp14 = icmp ne i32 %conv, 61
  br i1 %cmp14, label %land.lhs.true, label %if.end24

land.lhs.true:                                    ; preds = %if.else
  %13 = load i8*, i8** %q, align 8
  %14 = load i8*, i8** %p, align 8
  %cmp16 = icmp ult i8* %13, %14
  br i1 %cmp16, label %if.then18, label %if.end24

if.then18:                                        ; preds = %land.lhs.true
  %15 = load i8*, i8** %line, align 8
  %arrayidx = getelementptr inbounds i8, i8* %15, i64 0
  store i8* %arrayidx, i8** %p, align 8
  %16 = load i8*, i8** %p, align 8
  %17 = load i8*, i8** %q, align 8
  %cmp19 = icmp ult i8* %16, %17
  br i1 %cmp19, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.then18
  %18 = load i8*, i8** %q, align 8
  %add.ptr22 = getelementptr inbounds i8, i8* %18, i64 -1
  %19 = load i8*, i8** %p, align 8
  %20 = load %struct.sVString*, %struct.sVString** %name, align 8
  call void @extract_prev_token(i8* %add.ptr22, i8* %19, %struct.sVString* %20)
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.then18
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %land.lhs.true, %if.else
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.end12
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %21 = load %struct.sVString*, %struct.sVString** %name, align 8
  call void @vStringDelete(%struct.sVString* %21)
  ret void
}

declare %struct.sVString* @vStringNew() #1

declare i8* @readLineFromInputFile() #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @is_a_code_line(i8* %line) #0 {
entry:
  %line.addr = alloca i8*, align 8
  %result = alloca i8, align 1
  %p = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  %0 = load i8*, i8** %line.addr, align 8
  store i8* %0, i8** %p, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i8*, i8** %p, align 8
  %2 = load i8, i8* %1, align 1
  %conv = zext i8 %2 to i32
  %call = call i32 @isspace(i32 %conv) #3
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %4 = load i8*, i8** %p, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 0
  %5 = load i8, i8* %arrayidx, align 1
  %conv1 = zext i8 %5 to i32
  %cmp = icmp eq i32 %conv1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.end
  store i8 0, i8* %result, align 1
  br label %if.end13

if.else:                                          ; preds = %while.end
  %6 = load i8*, i8** %p, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %6, i64 0
  %7 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %7 to i32
  %cmp5 = icmp eq i32 %conv4, 45
  br i1 %cmp5, label %land.lhs.true, label %if.else12

land.lhs.true:                                    ; preds = %if.else
  %8 = load i8*, i8** %p, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %8, i64 1
  %9 = load i8, i8* %arrayidx7, align 1
  %conv8 = zext i8 %9 to i32
  %cmp9 = icmp eq i32 %conv8, 45
  br i1 %cmp9, label %if.then11, label %if.else12

if.then11:                                        ; preds = %land.lhs.true
  store i8 0, i8* %result, align 1
  br label %if.end

if.else12:                                        ; preds = %land.lhs.true, %if.else
  store i8 1, i8* %result, align 1
  br label %if.end

if.end:                                           ; preds = %if.else12, %if.then11
  br label %if.end13

if.end13:                                         ; preds = %if.end, %if.then
  %10 = load i8, i8* %result, align 1
  %tobool14 = trunc i8 %10 to i1
  ret i1 %tobool14
}

declare i8* @strstr(i8*, i8*) #1

declare i8* @strchr(i8*, i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @extract_next_token(i8* %begin, i8* %end_sentinel, %struct.sVString* %name) #0 {
entry:
  %begin.addr = alloca i8*, align 8
  %end_sentinel.addr = alloca i8*, align 8
  %name.addr = alloca %struct.sVString*, align 8
  %found = alloca i8, align 1
  %vStringClear_s = alloca %struct.sVString*, align 8
  store i8* %begin, i8** %begin.addr, align 8
  store i8* %end_sentinel, i8** %end_sentinel.addr, align 8
  store %struct.sVString* %name, %struct.sVString** %name.addr, align 8
  %0 = load i8*, i8** %begin.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8*, i8** %end_sentinel.addr, align 8
  %cmp1 = icmp eq i8* %1, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %if.end21

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i8*, i8** %begin.addr, align 8
  %3 = load i8*, i8** %end_sentinel.addr, align 8
  %cmp2 = icmp ult i8* %2, %3
  br i1 %cmp2, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  br label %if.end21

if.end4:                                          ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %if.end8, %if.end4
  %4 = load i8*, i8** %begin.addr, align 8
  %5 = load i8, i8* %4, align 1
  %conv = sext i8 %5 to i32
  %call = call i32 @isspace(i32 %conv) #3
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i8*, i8** %begin.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %begin.addr, align 8
  %7 = load i8*, i8** %begin.addr, align 8
  %8 = load i8*, i8** %end_sentinel.addr, align 8
  %cmp5 = icmp ult i8* %7, %8
  br i1 %cmp5, label %if.end8, label %if.then7

if.then7:                                         ; preds = %while.body
  br label %if.end21

if.end8:                                          ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i8 0, i8* %found, align 1
  br label %while.cond9

while.cond9:                                      ; preds = %while.body14, %while.end
  %9 = load i8*, i8** %begin.addr, align 8
  %10 = load i8*, i8** %end_sentinel.addr, align 8
  %cmp10 = icmp ne i8* %9, %10
  br i1 %cmp10, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond9
  %11 = load i8*, i8** %begin.addr, align 8
  %12 = load i8, i8* %11, align 1
  %call12 = call zeroext i1 @isLuaIdentifier(i8 signext %12)
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond9
  %13 = phi i1 [ false, %while.cond9 ], [ %call12, %land.rhs ]
  br i1 %13, label %while.body14, label %while.end17

while.body14:                                     ; preds = %land.end
  %14 = load %struct.sVString*, %struct.sVString** %name.addr, align 8
  %15 = load i8*, i8** %begin.addr, align 8
  %16 = load i8, i8* %15, align 1
  %conv15 = sext i8 %16 to i32
  call void @vStringPut(%struct.sVString* %14, i32 %conv15)
  %17 = load i8*, i8** %begin.addr, align 8
  %incdec.ptr16 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr16, i8** %begin.addr, align 8
  store i8 1, i8* %found, align 1
  br label %while.cond9

while.end17:                                      ; preds = %land.end
  %18 = load i8, i8* %found, align 1
  %tobool18 = trunc i8 %18 to i1
  br i1 %tobool18, label %if.then19, label %if.end21

if.then19:                                        ; preds = %while.end17
  %19 = load %struct.sVString*, %struct.sVString** %name.addr, align 8
  %call20 = call i32 @makeSimpleTag(%struct.sVString* %19, i32 0)
  br label %do.body

do.body:                                          ; preds = %if.then19
  %20 = load %struct.sVString*, %struct.sVString** %name.addr, align 8
  store %struct.sVString* %20, %struct.sVString** %vStringClear_s, align 8
  %21 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %21, i32 0, i32 0
  store i64 0, i64* %length, align 8
  %22 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %22, i32 0, i32 2
  %23 = load i8*, i8** %buffer, align 8
  %arrayidx = getelementptr inbounds i8, i8* %23, i64 0
  store i8 0, i8* %arrayidx, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %if.end21

if.end21:                                         ; preds = %if.then, %if.then3, %if.then7, %do.end, %while.end17
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @extract_prev_token(i8* %end, i8* %begin_sentinel, %struct.sVString* %name) #0 {
entry:
  %end.addr = alloca i8*, align 8
  %begin_sentinel.addr = alloca i8*, align 8
  %name.addr = alloca %struct.sVString*, align 8
  %begin = alloca i8*, align 8
  %vStringClear_s = alloca %struct.sVString*, align 8
  store i8* %end, i8** %end.addr, align 8
  store i8* %begin_sentinel, i8** %begin_sentinel.addr, align 8
  store %struct.sVString* %name, %struct.sVString** %name.addr, align 8
  %0 = load i8*, i8** %end.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8*, i8** %begin_sentinel.addr, align 8
  %cmp1 = icmp eq i8* %1, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %if.end23

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i8*, i8** %begin_sentinel.addr, align 8
  %3 = load i8*, i8** %end.addr, align 8
  %cmp2 = icmp ule i8* %2, %3
  br i1 %cmp2, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  br label %if.end23

if.end4:                                          ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %if.end8, %if.end4
  %4 = load i8*, i8** %end.addr, align 8
  %5 = load i8, i8* %4, align 1
  %conv = sext i8 %5 to i32
  %call = call i32 @isspace(i32 %conv) #3
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i8*, i8** %end.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 -1
  store i8* %incdec.ptr, i8** %end.addr, align 8
  %7 = load i8*, i8** %begin_sentinel.addr, align 8
  %8 = load i8*, i8** %end.addr, align 8
  %cmp5 = icmp ule i8* %7, %8
  br i1 %cmp5, label %if.end8, label %if.then7

if.then7:                                         ; preds = %while.body
  br label %if.end23

if.end8:                                          ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %9 = load i8*, i8** %end.addr, align 8
  store i8* %9, i8** %begin, align 8
  br label %while.cond9

while.cond9:                                      ; preds = %while.body14, %while.end
  %10 = load i8*, i8** %begin_sentinel.addr, align 8
  %11 = load i8*, i8** %begin, align 8
  %cmp10 = icmp ule i8* %10, %11
  br i1 %cmp10, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond9
  %12 = load i8*, i8** %begin, align 8
  %13 = load i8, i8* %12, align 1
  %call12 = call zeroext i1 @isLuaIdentifier(i8 signext %13)
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond9
  %14 = phi i1 [ false, %while.cond9 ], [ %call12, %land.rhs ]
  br i1 %14, label %while.body14, label %while.end16

while.body14:                                     ; preds = %land.end
  %15 = load i8*, i8** %begin, align 8
  %incdec.ptr15 = getelementptr inbounds i8, i8* %15, i32 -1
  store i8* %incdec.ptr15, i8** %begin, align 8
  br label %while.cond9

while.end16:                                      ; preds = %land.end
  %16 = load i8*, i8** %end.addr, align 8
  %17 = load i8*, i8** %begin, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %16 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %17 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %tobool17 = icmp ne i64 %sub.ptr.sub, 0
  br i1 %tobool17, label %if.then18, label %if.end23

if.then18:                                        ; preds = %while.end16
  %18 = load %struct.sVString*, %struct.sVString** %name.addr, align 8
  %19 = load i8*, i8** %begin, align 8
  %add.ptr = getelementptr inbounds i8, i8* %19, i64 1
  %20 = load i8*, i8** %end.addr, align 8
  %21 = load i8*, i8** %begin, align 8
  %sub.ptr.lhs.cast19 = ptrtoint i8* %20 to i64
  %sub.ptr.rhs.cast20 = ptrtoint i8* %21 to i64
  %sub.ptr.sub21 = sub i64 %sub.ptr.lhs.cast19, %sub.ptr.rhs.cast20
  call void @vStringNCatS(%struct.sVString* %18, i8* %add.ptr, i64 %sub.ptr.sub21)
  %22 = load %struct.sVString*, %struct.sVString** %name.addr, align 8
  %call22 = call i32 @makeSimpleTag(%struct.sVString* %22, i32 0)
  br label %do.body

do.body:                                          ; preds = %if.then18
  %23 = load %struct.sVString*, %struct.sVString** %name.addr, align 8
  store %struct.sVString* %23, %struct.sVString** %vStringClear_s, align 8
  %24 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %24, i32 0, i32 0
  store i64 0, i64* %length, align 8
  %25 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %25, i32 0, i32 2
  %26 = load i8*, i8** %buffer, align 8
  %arrayidx = getelementptr inbounds i8, i8* %26, i64 0
  store i8 0, i8* %arrayidx, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %if.end23

if.end23:                                         ; preds = %if.then, %if.then3, %if.then7, %do.end, %while.end16
  ret void
}

declare void @vStringDelete(%struct.sVString*) #1

; Function Attrs: nounwind readonly
declare i32 @isspace(i32) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @isLuaIdentifier(i8 signext %c) #0 {
entry:
  %c.addr = alloca i8, align 1
  store i8 %c, i8* %c.addr, align 1
  %0 = load i8, i8* %c.addr, align 1
  %conv = sext i8 %0 to i32
  %call = call i32 @isspace(i32 %conv) #3
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8, i8* %c.addr, align 1
  %conv1 = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv1, 40
  br i1 %cmp, label %lor.end, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %2 = load i8, i8* %c.addr, align 1
  %conv4 = sext i8 %2 to i32
  %cmp5 = icmp eq i32 %conv4, 41
  br i1 %cmp5, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false3
  %3 = load i8, i8* %c.addr, align 1
  %conv7 = sext i8 %3 to i32
  %cmp8 = icmp eq i32 %conv7, 61
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false3, %lor.lhs.false, %entry
  %4 = phi i1 [ true, %lor.lhs.false3 ], [ true, %lor.lhs.false ], [ true, %entry ], [ %cmp8, %lor.rhs ]
  %lnot = xor i1 %4, true
  ret i1 %lnot
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

declare i32 @makeSimpleTag(%struct.sVString*, i32) #1

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
