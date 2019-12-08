; ModuleID = 'jprop.c'
source_filename = "jprop.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-ios11.0.0"

%struct.sKindDefinition = type { i8, i8, i8*, i8*, i8, i32, %struct.sRoleDesc*, %struct.sScopeSeparator*, i32, i32, i32, %struct.sKindDefinition*, %struct.sKindDefinition* }
%struct.sRoleDesc = type { i8, i8*, i8* }
%struct.sScopeSeparator = type { i32, i8* }
%struct.sVString = type { i64, i64, i8* }
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
%struct.sXtagDefinition = type { i8, i8, i8*, i8*, i1 (%struct.sXtagDefinition*)*, i1 (%struct.sXtagDefinition*)*, i32 }
%struct.sParserDependency = type { i32, i8*, i8* }
%struct.sParameterHandlerTable = type { i8*, i8*, void (i32, i8*, i8*)* }
%struct.sXpathFileSpec = type { i8*, i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [15 x i8] c"JavaProperties\00", align 1
@JavaPropertiesKinds = internal global [1 x %struct.sKindDefinition] [%struct.sKindDefinition { i8 1, i8 107, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }], align 8
@extensions = internal constant [2 x i8*] [i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i8* null], align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"keys\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"properties\00", align 1
@findJavaPropertiesTags.key = internal global %struct.sVString* null, align 8

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sParserDefinition* @JavaPropertiesParser() #0 {
entry:
  %def = alloca %struct.sParserDefinition*, align 8
  %call = call %struct.sParserDefinition* @parserNew(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store %struct.sParserDefinition* %call, %struct.sParserDefinition** %def, align 8
  %0 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %0, i32 0, i32 1
  store %struct.sKindDefinition* getelementptr inbounds ([1 x %struct.sKindDefinition], [1 x %struct.sKindDefinition]* @JavaPropertiesKinds, i64 0, i64 0), %struct.sKindDefinition** %kindTable, align 8
  %1 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %1, i32 0, i32 2
  store i32 1, i32* %kindCount, align 8
  %2 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %extensions = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %2, i32 0, i32 3
  store i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @extensions, i64 0, i64 0), i8*** %extensions, align 8
  %3 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %parser = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %3, i32 0, i32 8
  store void ()* @findJavaPropertiesTags, void ()** %parser, align 8
  %4 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  ret %struct.sParserDefinition* %4
}

declare %struct.sParserDefinition* @parserNew(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @findJavaPropertiesTags() #0 {
entry:
  %line = alloca i8*, align 8
  %in_value = alloca i8, align 1
  %value_continues = alloca i8, align 1
  %vStringClear_s = alloca %struct.sVString*, align 8
  %vStringClear_s24 = alloca %struct.sVString*, align 8
  store i8 0, i8* %in_value, align 1
  %0 = load %struct.sVString*, %struct.sVString** @findJavaPropertiesTags.key, align 8
  %cmp = icmp eq %struct.sVString* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call, %struct.sVString** @findJavaPropertiesTags.key, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.else
  %1 = load %struct.sVString*, %struct.sVString** @findJavaPropertiesTags.key, align 8
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
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then
  br label %while.cond

while.cond:                                       ; preds = %if.end33, %if.then19, %if.end7, %if.end
  %call1 = call i8* @readLineFromInputFile()
  store i8* %call1, i8** %line, align 8
  %cmp2 = icmp ne i8* %call1, null
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i8, i8* %in_value, align 1
  %tobool = trunc i8 %5 to i1
  br i1 %tobool, label %if.then3, label %if.end8

if.then3:                                         ; preds = %while.body
  %6 = load i8*, i8** %line, align 8
  %call4 = call zeroext i1 @doesValueContinue(i8* %6)
  %frombool = zext i1 %call4 to i8
  store i8 %frombool, i8* %value_continues, align 1
  %7 = load i8, i8* %value_continues, align 1
  %tobool5 = trunc i8 %7 to i1
  br i1 %tobool5, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.then3
  store i8 0, i8* %in_value, align 1
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.then3
  br label %while.cond

if.end8:                                          ; preds = %while.body
  %8 = load i8*, i8** %line, align 8
  %call9 = call i8* @skipWhiteSpace(i8* %8)
  store i8* %call9, i8** %line, align 8
  %9 = load i8*, i8** %line, align 8
  %10 = load i8, i8* %9, align 1
  %conv = zext i8 %10 to i32
  %cmp10 = icmp eq i32 %conv, 0
  br i1 %cmp10, label %if.then19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end8
  %11 = load i8*, i8** %line, align 8
  %12 = load i8, i8* %11, align 1
  %conv12 = zext i8 %12 to i32
  %cmp13 = icmp eq i32 %conv12, 33
  br i1 %cmp13, label %if.then19, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %lor.lhs.false
  %13 = load i8*, i8** %line, align 8
  %14 = load i8, i8* %13, align 1
  %conv16 = zext i8 %14 to i32
  %cmp17 = icmp eq i32 %conv16, 35
  br i1 %cmp17, label %if.then19, label %if.end20

if.then19:                                        ; preds = %lor.lhs.false15, %lor.lhs.false, %if.end8
  br label %while.cond

if.end20:                                         ; preds = %lor.lhs.false15
  %15 = load i8*, i8** %line, align 8
  %16 = load %struct.sVString*, %struct.sVString** @findJavaPropertiesTags.key, align 8
  %call21 = call i8* @extractKey(i8* %15, %struct.sVString* %16)
  store i8* %call21, i8** %line, align 8
  %17 = load %struct.sVString*, %struct.sVString** @findJavaPropertiesTags.key, align 8
  %call22 = call i32 @makeSimpleTag(%struct.sVString* %17, i32 0)
  br label %do.body23

do.body23:                                        ; preds = %if.end20
  %18 = load %struct.sVString*, %struct.sVString** @findJavaPropertiesTags.key, align 8
  store %struct.sVString* %18, %struct.sVString** %vStringClear_s24, align 8
  %19 = load %struct.sVString*, %struct.sVString** %vStringClear_s24, align 8
  %length25 = getelementptr inbounds %struct.sVString, %struct.sVString* %19, i32 0, i32 0
  store i64 0, i64* %length25, align 8
  %20 = load %struct.sVString*, %struct.sVString** %vStringClear_s24, align 8
  %buffer26 = getelementptr inbounds %struct.sVString, %struct.sVString* %20, i32 0, i32 2
  %21 = load i8*, i8** %buffer26, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %21, i64 0
  store i8 0, i8* %arrayidx27, align 1
  br label %do.end28

do.end28:                                         ; preds = %do.body23
  %22 = load i8*, i8** %line, align 8
  %call29 = call zeroext i1 @doesValueContinue(i8* %22)
  %frombool30 = zext i1 %call29 to i8
  store i8 %frombool30, i8* %value_continues, align 1
  %23 = load i8, i8* %value_continues, align 1
  %tobool31 = trunc i8 %23 to i1
  br i1 %tobool31, label %if.then32, label %if.end33

if.then32:                                        ; preds = %do.end28
  store i8 1, i8* %in_value, align 1
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %do.end28
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

declare %struct.sVString* @vStringNew() #1

declare i8* @readLineFromInputFile() #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @doesValueContinue(i8* %line) #0 {
entry:
  %line.addr = alloca i8*, align 8
  %in_escaping = alloca i8, align 1
  store i8* %line, i8** %line.addr, align 8
  store i8 0, i8* %in_escaping, align 1
  br label %while.cond

while.cond:                                       ; preds = %if.end6, %entry
  %0 = load i8*, i8** %line.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = zext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i8, i8* %in_escaping, align 1
  %tobool = trunc i8 %2 to i1
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  store i8 0, i8* %in_escaping, align 1
  br label %if.end6

if.else:                                          ; preds = %while.body
  %3 = load i8*, i8** %line.addr, align 8
  %4 = load i8, i8* %3, align 1
  %conv2 = zext i8 %4 to i32
  %cmp3 = icmp eq i32 %conv2, 92
  br i1 %cmp3, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.else
  store i8 1, i8* %in_escaping, align 1
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.then
  %5 = load i8*, i8** %line.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %line.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %6 = load i8, i8* %in_escaping, align 1
  %tobool7 = trunc i8 %6 to i1
  ret i1 %tobool7
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @skipWhiteSpace(i8* %line) #0 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i8*, i8** %line.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = zext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 32
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.cond
  %2 = load i8*, i8** %line.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv2 = zext i8 %3 to i32
  %cmp3 = icmp eq i32 %conv2, 9
  br i1 %cmp3, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %4 = load i8*, i8** %line.addr, align 8
  %5 = load i8, i8* %4, align 1
  %conv5 = zext i8 %5 to i32
  %cmp6 = icmp eq i32 %conv5, 12
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %while.cond
  %6 = phi i1 [ true, %lor.lhs.false ], [ true, %while.cond ], [ %cmp6, %lor.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %7 = load i8*, i8** %line.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %line.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %lor.end
  %8 = load i8*, i8** %line.addr, align 8
  ret i8* %8
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @extractKey(i8* %line, %struct.sVString* %key) #0 {
entry:
  %line.addr = alloca i8*, align 8
  %key.addr = alloca %struct.sVString*, align 8
  %in_escaping = alloca i8, align 1
  store i8* %line, i8** %line.addr, align 8
  store %struct.sVString* %key, %struct.sVString** %key.addr, align 8
  store i8 0, i8* %in_escaping, align 1
  br label %while.cond

while.cond:                                       ; preds = %if.end31, %entry
  %0 = load i8*, i8** %line.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = zext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i8, i8* %in_escaping, align 1
  %tobool = trunc i8 %2 to i1
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %3 = load %struct.sVString*, %struct.sVString** %key.addr, align 8
  %4 = load i8*, i8** %line.addr, align 8
  %5 = load i8, i8* %4, align 1
  %conv2 = zext i8 %5 to i32
  call void @vStringPut(%struct.sVString* %3, i32 %conv2)
  store i8 0, i8* %in_escaping, align 1
  br label %if.end31

if.else:                                          ; preds = %while.body
  %6 = load i8*, i8** %line.addr, align 8
  %7 = load i8, i8* %6, align 1
  %conv3 = zext i8 %7 to i32
  %cmp4 = icmp eq i32 %conv3, 58
  br i1 %cmp4, label %if.then21, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %8 = load i8*, i8** %line.addr, align 8
  %9 = load i8, i8* %8, align 1
  %conv6 = zext i8 %9 to i32
  %cmp7 = icmp eq i32 %conv6, 61
  br i1 %cmp7, label %if.then21, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %10 = load i8*, i8** %line.addr, align 8
  %11 = load i8, i8* %10, align 1
  %conv10 = zext i8 %11 to i32
  %cmp11 = icmp eq i32 %conv10, 32
  br i1 %cmp11, label %if.then21, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false9
  %12 = load i8*, i8** %line.addr, align 8
  %13 = load i8, i8* %12, align 1
  %conv14 = zext i8 %13 to i32
  %cmp15 = icmp eq i32 %conv14, 9
  br i1 %cmp15, label %if.then21, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %lor.lhs.false13
  %14 = load i8*, i8** %line.addr, align 8
  %15 = load i8, i8* %14, align 1
  %conv18 = zext i8 %15 to i32
  %cmp19 = icmp eq i32 %conv18, 12
  br i1 %cmp19, label %if.then21, label %if.else22

if.then21:                                        ; preds = %lor.lhs.false17, %lor.lhs.false13, %lor.lhs.false9, %lor.lhs.false, %if.else
  %16 = load i8*, i8** %line.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr, i8** %line.addr, align 8
  br label %while.end

if.else22:                                        ; preds = %lor.lhs.false17
  %17 = load i8*, i8** %line.addr, align 8
  %18 = load i8, i8* %17, align 1
  %conv23 = zext i8 %18 to i32
  %cmp24 = icmp eq i32 %conv23, 92
  br i1 %cmp24, label %if.then26, label %if.else28

if.then26:                                        ; preds = %if.else22
  %19 = load %struct.sVString*, %struct.sVString** %key.addr, align 8
  %20 = load i8*, i8** %line.addr, align 8
  %21 = load i8, i8* %20, align 1
  %conv27 = zext i8 %21 to i32
  call void @vStringPut(%struct.sVString* %19, i32 %conv27)
  store i8 1, i8* %in_escaping, align 1
  br label %if.end

if.else28:                                        ; preds = %if.else22
  %22 = load %struct.sVString*, %struct.sVString** %key.addr, align 8
  %23 = load i8*, i8** %line.addr, align 8
  %24 = load i8, i8* %23, align 1
  %conv29 = zext i8 %24 to i32
  call void @vStringPut(%struct.sVString* %22, i32 %conv29)
  br label %if.end

if.end:                                           ; preds = %if.else28, %if.then26
  br label %if.end30

if.end30:                                         ; preds = %if.end
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %if.then
  %25 = load i8*, i8** %line.addr, align 8
  %incdec.ptr32 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %incdec.ptr32, i8** %line.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %if.then21, %while.cond
  %26 = load i8*, i8** %line.addr, align 8
  ret i8* %26
}

declare i32 @makeSimpleTag(%struct.sVString*, i32) #1

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

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 10.0.0 (https://github.com/holzschu/clang.git 0cfc630fbdb62e96720b611a57123ef3eb13e297) (https://github.com/holzschu/llvm.git 0d8a71e39b28502c24718f7e74b5acbcfe36dfe0)"}
