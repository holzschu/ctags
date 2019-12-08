; ModuleID = 'awk.c'
source_filename = "awk.c"
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
%struct.sTagEntryInfo = type opaque
%struct.sFieldDefinition = type { i8, i8*, i8*, i8, [5 x i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)*], i1 (%struct.sTagEntryInfo*)*, i32, i32 }
%struct.sVString = type { i64, i64, i8* }
%struct.sXtagDefinition = type { i8, i8, i8*, i8*, i1 (%struct.sXtagDefinition*)*, i1 (%struct.sXtagDefinition*)*, i32 }
%struct.sParserDependency = type { i32, i8*, i8* }
%struct.sParameterHandlerTable = type { i8*, i8*, void (i32, i8*, i8*)* }
%struct.sXpathFileSpec = type { i8*, i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [4 x i8] c"Awk\00", align 1
@AwkKinds = internal global [1 x %struct.sKindDefinition] [%struct.sKindDefinition { i8 1, i8 102, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }], align 8
@extensions = internal constant [4 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null], align 8
@aliases = internal constant [3 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null], align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"function\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"functions\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"awk\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"gawk\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"mawk\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sParserDefinition* @AwkParser() #0 {
entry:
  %def = alloca %struct.sParserDefinition*, align 8
  %call = call %struct.sParserDefinition* @parserNew(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store %struct.sParserDefinition* %call, %struct.sParserDefinition** %def, align 8
  %0 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %0, i32 0, i32 1
  store %struct.sKindDefinition* getelementptr inbounds ([1 x %struct.sKindDefinition], [1 x %struct.sKindDefinition]* @AwkKinds, i64 0, i64 0), %struct.sKindDefinition** %kindTable, align 8
  %1 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %1, i32 0, i32 2
  store i32 1, i32* %kindCount, align 8
  %2 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %extensions = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %2, i32 0, i32 3
  store i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @extensions, i64 0, i64 0), i8*** %extensions, align 8
  %3 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %aliases = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %3, i32 0, i32 5
  store i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @aliases, i64 0, i64 0), i8*** %aliases, align 8
  %4 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %parser = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %4, i32 0, i32 8
  store void ()* @findAwkTags, void ()** %parser, align 8
  %5 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  ret %struct.sParserDefinition* %5
}

declare %struct.sParserDefinition* @parserNew(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @findAwkTags() #0 {
entry:
  %name = alloca %struct.sVString*, align 8
  %line = alloca i8*, align 8
  %cp = alloca i8*, align 8
  %vStringClear_s = alloca %struct.sVString*, align 8
  %call = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call, %struct.sVString** %name, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end40, %entry
  %call1 = call i8* @readLineFromInputFile()
  store i8* %call1, i8** %line, align 8
  %cmp = icmp ne i8* %call1, null
  br i1 %cmp, label %while.body, label %while.end41

while.body:                                       ; preds = %while.cond
  %0 = load i8*, i8** %line, align 8
  %call2 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i64 8)
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %land.lhs.true, label %if.end40

land.lhs.true:                                    ; preds = %while.body
  %1 = load i8*, i8** %line, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 8
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %call4 = call i32 @isspace(i32 %conv) #3
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.then, label %if.end40

if.then:                                          ; preds = %land.lhs.true
  %3 = load i8*, i8** %line, align 8
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 8
  store i8* %add.ptr, i8** %cp, align 8
  br label %while.cond5

while.cond5:                                      ; preds = %while.body9, %if.then
  %4 = load i8*, i8** %cp, align 8
  %5 = load i8, i8* %4, align 1
  %conv6 = zext i8 %5 to i32
  %call7 = call i32 @isspace(i32 %conv6) #3
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %while.body9, label %while.end

while.body9:                                      ; preds = %while.cond5
  %6 = load i8*, i8** %cp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %cp, align 8
  br label %while.cond5

while.end:                                        ; preds = %while.cond5
  br label %while.cond10

while.cond10:                                     ; preds = %while.body17, %while.end
  %7 = load i8*, i8** %cp, align 8
  %8 = load i8, i8* %7, align 1
  %conv11 = zext i8 %8 to i32
  %call12 = call i32 @isalnum(i32 %conv11) #3
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond10
  %9 = load i8*, i8** %cp, align 8
  %10 = load i8, i8* %9, align 1
  %conv14 = zext i8 %10 to i32
  %cmp15 = icmp eq i32 %conv14, 95
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond10
  %11 = phi i1 [ true, %while.cond10 ], [ %cmp15, %lor.rhs ]
  br i1 %11, label %while.body17, label %while.end20

while.body17:                                     ; preds = %lor.end
  %12 = load %struct.sVString*, %struct.sVString** %name, align 8
  %13 = load i8*, i8** %cp, align 8
  %14 = load i8, i8* %13, align 1
  %conv18 = zext i8 %14 to i32
  call void @vStringPut(%struct.sVString* %12, i32 %conv18)
  %15 = load i8*, i8** %cp, align 8
  %incdec.ptr19 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr19, i8** %cp, align 8
  br label %while.cond10

while.end20:                                      ; preds = %lor.end
  br label %while.cond21

while.cond21:                                     ; preds = %while.body25, %while.end20
  %16 = load i8*, i8** %cp, align 8
  %17 = load i8, i8* %16, align 1
  %conv22 = zext i8 %17 to i32
  %call23 = call i32 @isspace(i32 %conv22) #3
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %while.body25, label %while.end27

while.body25:                                     ; preds = %while.cond21
  %18 = load i8*, i8** %cp, align 8
  %incdec.ptr26 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr26, i8** %cp, align 8
  br label %while.cond21

while.end27:                                      ; preds = %while.cond21
  %19 = load i8*, i8** %cp, align 8
  %20 = load i8, i8* %19, align 1
  %conv28 = zext i8 %20 to i32
  %cmp29 = icmp eq i32 %conv28, 40
  br i1 %cmp29, label %if.then31, label %if.end

if.then31:                                        ; preds = %while.end27
  %21 = load %struct.sVString*, %struct.sVString** %name, align 8
  %call32 = call i32 @makeSimpleTag(%struct.sVString* %21, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then31, %while.end27
  br label %do.body

do.body:                                          ; preds = %if.end
  %22 = load %struct.sVString*, %struct.sVString** %name, align 8
  store %struct.sVString* %22, %struct.sVString** %vStringClear_s, align 8
  %23 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %23, i32 0, i32 0
  store i64 0, i64* %length, align 8
  %24 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %24, i32 0, i32 2
  %25 = load i8*, i8** %buffer, align 8
  %arrayidx33 = getelementptr inbounds i8, i8* %25, i64 0
  store i8 0, i8* %arrayidx33, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  %26 = load i8*, i8** %cp, align 8
  %27 = load i8, i8* %26, align 1
  %conv34 = zext i8 %27 to i32
  %cmp35 = icmp ne i32 %conv34, 0
  br i1 %cmp35, label %if.then37, label %if.end39

if.then37:                                        ; preds = %do.end
  %28 = load i8*, i8** %cp, align 8
  %incdec.ptr38 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr38, i8** %cp, align 8
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %do.end
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %land.lhs.true, %while.body
  br label %while.cond

while.end41:                                      ; preds = %while.cond
  %29 = load %struct.sVString*, %struct.sVString** %name, align 8
  call void @vStringDelete(%struct.sVString* %29)
  ret void
}

declare %struct.sVString* @vStringNew() #1

declare i8* @readLineFromInputFile() #1

declare i32 @strncmp(i8*, i8*, i64) #1

; Function Attrs: nounwind readonly
declare i32 @isspace(i32) #2

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

declare i32 @makeSimpleTag(%struct.sVString*, i32) #1

declare void @vStringDelete(%struct.sVString*) #1

declare void @vStringResize(%struct.sVString*, i64) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 10.0.0 (https://github.com/holzschu/clang.git 0cfc630fbdb62e96720b611a57123ef3eb13e297) (https://github.com/holzschu/llvm.git 0d8a71e39b28502c24718f7e74b5acbcfe36dfe0)"}
