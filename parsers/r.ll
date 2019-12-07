; ModuleID = 'r.c'
source_filename = "r.c"
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

@.str = private unnamed_addr constant [2 x i8] c"R\00", align 1
@extensions = internal constant [5 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), i8* null], align 8
@RKinds = internal global [5 x %struct.sKindDefinition] [%struct.sKindDefinition { i8 1, i8 102, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 108, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 115, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 103, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 118, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }], align 8
@selectors = internal global [2 x i8* (%struct._MIO*, i32*, i32)*] [i8* (%struct._MIO*, i32*, i32)* @selectByArrowOfR, i8* (%struct._MIO*, i32*, i32)* null], align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"q\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"function\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"functions\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"library\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"libraries\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"source\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"sources\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"globalVar\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"global variables\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"functionVar\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"function variables\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sParserDefinition* @RParser() #0 {
entry:
  %def = alloca %struct.sParserDefinition*, align 8
  %call = call %struct.sParserDefinition* @parserNew(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store %struct.sParserDefinition* %call, %struct.sParserDefinition** %def, align 8
  %0 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %extensions = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %0, i32 0, i32 3
  store i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @extensions, i64 0, i64 0), i8*** %extensions, align 8
  %1 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %1, i32 0, i32 1
  store %struct.sKindDefinition* getelementptr inbounds ([5 x %struct.sKindDefinition], [5 x %struct.sKindDefinition]* @RKinds, i64 0, i64 0), %struct.sKindDefinition** %kindTable, align 8
  %2 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %2, i32 0, i32 2
  store i32 5, i32* %kindCount, align 8
  %3 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %parser = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %3, i32 0, i32 8
  store void ()* @createRTags, void ()** %parser, align 8
  %4 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %selectLanguage = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %4, i32 0, i32 10
  store i8* (%struct._MIO*, i32*, i32)** getelementptr inbounds ([2 x i8* (%struct._MIO*, i32*, i32)*], [2 x i8* (%struct._MIO*, i32*, i32)*]* @selectors, i64 0, i64 0), i8* (%struct._MIO*, i32*, i32)*** %selectLanguage, align 8
  %5 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  ret %struct.sParserDefinition* %5
}

declare %struct.sParserDefinition* @parserNew(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @createRTags() #0 {
entry:
  %vLine = alloca %struct.sVString*, align 8
  %name = alloca %struct.sVString*, align 8
  %ikind = alloca i32, align 4
  %line = alloca i8*, align 8
  %cp = alloca i8*, align 8
  %vStringClear_s = alloca %struct.sVString*, align 8
  %vStringClear_s50 = alloca %struct.sVString*, align 8
  %vStringClear_s77 = alloca %struct.sVString*, align 8
  %vStringClear_s129 = alloca %struct.sVString*, align 8
  %vStringClear_s152 = alloca %struct.sVString*, align 8
  %call = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call, %struct.sVString** %vLine, align 8
  %call1 = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call1, %struct.sVString** %name, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.end162, %entry
  %call2 = call i8* @readLineFromInputFile()
  store i8* %call2, i8** %line, align 8
  %cmp = icmp ne i8* %call2, null
  br i1 %cmp, label %while.body, label %while.end163

while.body:                                       ; preds = %while.cond
  %0 = load i8*, i8** %line, align 8
  store i8* %0, i8** %cp, align 8
  br label %do.body

do.body:                                          ; preds = %while.body
  %1 = load %struct.sVString*, %struct.sVString** %name, align 8
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
  br label %while.cond3

while.cond3:                                      ; preds = %sw.epilog, %do.end
  %5 = load i8*, i8** %cp, align 8
  %6 = load i8, i8* %5, align 1
  %conv = zext i8 %6 to i32
  %cmp4 = icmp ne i32 %conv, 0
  br i1 %cmp4, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond3
  %7 = load i8*, i8** %cp, align 8
  %8 = load i8, i8* %7, align 1
  %conv6 = zext i8 %8 to i32
  %cmp7 = icmp ne i32 %conv6, 35
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond3
  %9 = phi i1 [ false, %while.cond3 ], [ %cmp7, %land.rhs ]
  br i1 %9, label %while.body9, label %while.end162

while.body9:                                      ; preds = %land.end
  store i32 -1, i32* %ikind, align 4
  %10 = load i8*, i8** %cp, align 8
  %11 = load i8, i8* %10, align 1
  %conv10 = zext i8 %11 to i32
  switch i32 %conv10, label %sw.default [
    i32 108, label %sw.bb
    i32 115, label %sw.bb
    i32 60, label %sw.bb86
    i32 32, label %sw.bb158
    i32 9, label %sw.bb158
  ]

sw.bb:                                            ; preds = %while.body9, %while.body9
  %12 = load i8*, i8** %cp, align 8
  %call11 = call i32 @strncasecmp(i8* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i64 7)
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %if.then, label %if.else23

if.then:                                          ; preds = %sw.bb
  %13 = load i8*, i8** %cp, align 8
  %add.ptr = getelementptr inbounds i8, i8* %13, i64 7
  store i8* %add.ptr, i8** %cp, align 8
  br label %while.cond14

while.cond14:                                     ; preds = %while.body17, %if.then
  %14 = load i8*, i8** %cp, align 8
  %15 = load i8, i8* %14, align 1
  %conv15 = zext i8 %15 to i32
  %call16 = call i32 @isspace(i32 %conv15) #3
  %tobool = icmp ne i32 %call16, 0
  br i1 %tobool, label %while.body17, label %while.end

while.body17:                                     ; preds = %while.cond14
  %16 = load i8*, i8** %cp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr, i8** %cp, align 8
  br label %while.cond14

while.end:                                        ; preds = %while.cond14
  %17 = load i8*, i8** %cp, align 8
  %18 = load i8, i8* %17, align 1
  %conv18 = zext i8 %18 to i32
  %cmp19 = icmp eq i32 %conv18, 40
  br i1 %cmp19, label %if.then21, label %if.else

if.then21:                                        ; preds = %while.end
  store i32 1, i32* %ikind, align 4
  br label %if.end

if.else:                                          ; preds = %while.end
  %19 = load i8*, i8** %cp, align 8
  %add.ptr22 = getelementptr inbounds i8, i8* %19, i64 -7
  store i8* %add.ptr22, i8** %cp, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then21
  br label %if.end44

if.else23:                                        ; preds = %sw.bb
  %20 = load i8*, i8** %cp, align 8
  %call24 = call i32 @strncasecmp(i8* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i64 6)
  %cmp25 = icmp eq i32 %call24, 0
  br i1 %cmp25, label %if.then27, label %if.end43

if.then27:                                        ; preds = %if.else23
  %21 = load i8*, i8** %cp, align 8
  %add.ptr28 = getelementptr inbounds i8, i8* %21, i64 6
  store i8* %add.ptr28, i8** %cp, align 8
  br label %while.cond29

while.cond29:                                     ; preds = %while.body33, %if.then27
  %22 = load i8*, i8** %cp, align 8
  %23 = load i8, i8* %22, align 1
  %conv30 = zext i8 %23 to i32
  %call31 = call i32 @isspace(i32 %conv30) #3
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %while.body33, label %while.end35

while.body33:                                     ; preds = %while.cond29
  %24 = load i8*, i8** %cp, align 8
  %incdec.ptr34 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr34, i8** %cp, align 8
  br label %while.cond29

while.end35:                                      ; preds = %while.cond29
  %25 = load i8*, i8** %cp, align 8
  %26 = load i8, i8* %25, align 1
  %conv36 = zext i8 %26 to i32
  %cmp37 = icmp eq i32 %conv36, 40
  br i1 %cmp37, label %if.then39, label %if.else40

if.then39:                                        ; preds = %while.end35
  store i32 2, i32* %ikind, align 4
  br label %if.end42

if.else40:                                        ; preds = %while.end35
  %27 = load i8*, i8** %cp, align 8
  %add.ptr41 = getelementptr inbounds i8, i8* %27, i64 -6
  store i8* %add.ptr41, i8** %cp, align 8
  br label %if.end42

if.end42:                                         ; preds = %if.else40, %if.then39
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %if.else23
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %if.end
  %28 = load i32, i32* %ikind, align 4
  %cmp45 = icmp ne i32 %28, -1
  br i1 %cmp45, label %if.then47, label %if.else82

if.then47:                                        ; preds = %if.end44
  %29 = load i8*, i8** %cp, align 8
  %incdec.ptr48 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr48, i8** %cp, align 8
  br label %do.body49

do.body49:                                        ; preds = %if.then47
  %30 = load %struct.sVString*, %struct.sVString** %name, align 8
  store %struct.sVString* %30, %struct.sVString** %vStringClear_s50, align 8
  %31 = load %struct.sVString*, %struct.sVString** %vStringClear_s50, align 8
  %length51 = getelementptr inbounds %struct.sVString, %struct.sVString* %31, i32 0, i32 0
  store i64 0, i64* %length51, align 8
  %32 = load %struct.sVString*, %struct.sVString** %vStringClear_s50, align 8
  %buffer52 = getelementptr inbounds %struct.sVString, %struct.sVString* %32, i32 0, i32 2
  %33 = load i8*, i8** %buffer52, align 8
  %arrayidx53 = getelementptr inbounds i8, i8* %33, i64 0
  store i8 0, i8* %arrayidx53, align 1
  br label %do.end54

do.end54:                                         ; preds = %do.body49
  br label %while.cond55

while.cond55:                                     ; preds = %while.body67, %do.end54
  %34 = load i8*, i8** %cp, align 8
  %35 = load i8, i8* %34, align 1
  %conv56 = zext i8 %35 to i32
  %call57 = call i32 @isspace(i32 %conv56) #3
  %tobool58 = icmp ne i32 %call57, 0
  br i1 %tobool58, label %land.end66, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.cond55
  %36 = load i8*, i8** %cp, align 8
  %37 = load i8, i8* %36, align 1
  %conv59 = zext i8 %37 to i32
  %cmp60 = icmp ne i32 %conv59, 0
  br i1 %cmp60, label %land.rhs62, label %land.end66

land.rhs62:                                       ; preds = %land.lhs.true
  %38 = load i8*, i8** %cp, align 8
  %39 = load i8, i8* %38, align 1
  %conv63 = zext i8 %39 to i32
  %cmp64 = icmp ne i32 %conv63, 41
  br label %land.end66

land.end66:                                       ; preds = %land.rhs62, %land.lhs.true, %while.cond55
  %40 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond55 ], [ %cmp64, %land.rhs62 ]
  br i1 %40, label %while.body67, label %while.end70

while.body67:                                     ; preds = %land.end66
  %41 = load %struct.sVString*, %struct.sVString** %name, align 8
  %42 = load i8*, i8** %cp, align 8
  %43 = load i8, i8* %42, align 1
  %conv68 = zext i8 %43 to i32
  call void @vStringPut(%struct.sVString* %41, i32 %conv68)
  %44 = load i8*, i8** %cp, align 8
  %incdec.ptr69 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %incdec.ptr69, i8** %cp, align 8
  br label %while.cond55

while.end70:                                      ; preds = %land.end66
  %45 = load %struct.sVString*, %struct.sVString** %name, align 8
  %length71 = getelementptr inbounds %struct.sVString, %struct.sVString* %45, i32 0, i32 0
  %46 = load i64, i64* %length71, align 8
  %cmp72 = icmp ugt i64 %46, 0
  br i1 %cmp72, label %if.then74, label %if.end75

if.then74:                                        ; preds = %while.end70
  %47 = load %struct.sVString*, %struct.sVString** %name, align 8
  %48 = load i32, i32* %ikind, align 4
  call void @makeRTag(%struct.sVString* %47, i32 %48)
  br label %if.end75

if.end75:                                         ; preds = %if.then74, %while.end70
  br label %do.body76

do.body76:                                        ; preds = %if.end75
  %49 = load %struct.sVString*, %struct.sVString** %name, align 8
  store %struct.sVString* %49, %struct.sVString** %vStringClear_s77, align 8
  %50 = load %struct.sVString*, %struct.sVString** %vStringClear_s77, align 8
  %length78 = getelementptr inbounds %struct.sVString, %struct.sVString* %50, i32 0, i32 0
  store i64 0, i64* %length78, align 8
  %51 = load %struct.sVString*, %struct.sVString** %vStringClear_s77, align 8
  %buffer79 = getelementptr inbounds %struct.sVString, %struct.sVString* %51, i32 0, i32 2
  %52 = load i8*, i8** %buffer79, align 8
  %arrayidx80 = getelementptr inbounds i8, i8* %52, i64 0
  store i8 0, i8* %arrayidx80, align 1
  br label %do.end81

do.end81:                                         ; preds = %do.body76
  br label %if.end85

if.else82:                                        ; preds = %if.end44
  %53 = load %struct.sVString*, %struct.sVString** %name, align 8
  %54 = load i8*, i8** %cp, align 8
  %55 = load i8, i8* %54, align 1
  %conv83 = zext i8 %55 to i32
  call void @vStringPut(%struct.sVString* %53, i32 %conv83)
  %56 = load i8*, i8** %cp, align 8
  %incdec.ptr84 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %incdec.ptr84, i8** %cp, align 8
  br label %if.end85

if.end85:                                         ; preds = %if.else82, %do.end81
  br label %sw.epilog

sw.bb86:                                          ; preds = %while.body9
  %57 = load i8*, i8** %cp, align 8
  %incdec.ptr87 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %incdec.ptr87, i8** %cp, align 8
  %58 = load i8*, i8** %cp, align 8
  %59 = load i8, i8* %58, align 1
  %conv88 = zext i8 %59 to i32
  %cmp89 = icmp eq i32 %conv88, 45
  br i1 %cmp89, label %if.then91, label %if.end157

if.then91:                                        ; preds = %sw.bb86
  %60 = load i8*, i8** %cp, align 8
  %incdec.ptr92 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %incdec.ptr92, i8** %cp, align 8
  br label %while.cond93

while.cond93:                                     ; preds = %while.body97, %if.then91
  %61 = load i8*, i8** %cp, align 8
  %62 = load i8, i8* %61, align 1
  %conv94 = zext i8 %62 to i32
  %call95 = call i32 @isspace(i32 %conv94) #3
  %tobool96 = icmp ne i32 %call95, 0
  br i1 %tobool96, label %while.body97, label %while.end99

while.body97:                                     ; preds = %while.cond93
  %63 = load i8*, i8** %cp, align 8
  %incdec.ptr98 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %incdec.ptr98, i8** %cp, align 8
  br label %while.cond93

while.end99:                                      ; preds = %while.cond93
  %64 = load i8*, i8** %cp, align 8
  %65 = load i8, i8* %64, align 1
  %conv100 = zext i8 %65 to i32
  %cmp101 = icmp eq i32 %conv100, 0
  br i1 %cmp101, label %if.then103, label %if.end117

if.then103:                                       ; preds = %while.end99
  %call104 = call i8* @readLineFromInputFile()
  store i8* %call104, i8** %line, align 8
  %cmp105 = icmp ne i8* %call104, null
  br i1 %cmp105, label %if.then107, label %if.else115

if.then107:                                       ; preds = %if.then103
  %66 = load i8*, i8** %line, align 8
  store i8* %66, i8** %cp, align 8
  br label %while.cond108

while.cond108:                                    ; preds = %while.body112, %if.then107
  %67 = load i8*, i8** %cp, align 8
  %68 = load i8, i8* %67, align 1
  %conv109 = zext i8 %68 to i32
  %call110 = call i32 @isspace(i32 %conv109) #3
  %tobool111 = icmp ne i32 %call110, 0
  br i1 %tobool111, label %while.body112, label %while.end114

while.body112:                                    ; preds = %while.cond108
  %69 = load i8*, i8** %cp, align 8
  %incdec.ptr113 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %incdec.ptr113, i8** %cp, align 8
  br label %while.cond108

while.end114:                                     ; preds = %while.cond108
  br label %if.end116

if.else115:                                       ; preds = %if.then103
  br label %sw.epilog

if.end116:                                        ; preds = %while.end114
  br label %if.end117

if.end117:                                        ; preds = %if.end116, %while.end99
  %70 = load i8*, i8** %cp, align 8
  %call118 = call i32 @strncasecmp(i8* %70, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i64 8)
  %cmp119 = icmp eq i32 %call118, 0
  br i1 %cmp119, label %if.then121, label %if.else134

if.then121:                                       ; preds = %if.end117
  %71 = load i8*, i8** %cp, align 8
  %add.ptr122 = getelementptr inbounds i8, i8* %71, i64 8
  store i8* %add.ptr122, i8** %cp, align 8
  %72 = load %struct.sVString*, %struct.sVString** %name, align 8
  %length123 = getelementptr inbounds %struct.sVString, %struct.sVString* %72, i32 0, i32 0
  %73 = load i64, i64* %length123, align 8
  %cmp124 = icmp ugt i64 %73, 0
  br i1 %cmp124, label %if.then126, label %if.end127

if.then126:                                       ; preds = %if.then121
  %74 = load %struct.sVString*, %struct.sVString** %name, align 8
  call void @makeRTag(%struct.sVString* %74, i32 0)
  br label %if.end127

if.end127:                                        ; preds = %if.then126, %if.then121
  br label %do.body128

do.body128:                                       ; preds = %if.end127
  %75 = load %struct.sVString*, %struct.sVString** %name, align 8
  store %struct.sVString* %75, %struct.sVString** %vStringClear_s129, align 8
  %76 = load %struct.sVString*, %struct.sVString** %vStringClear_s129, align 8
  %length130 = getelementptr inbounds %struct.sVString, %struct.sVString* %76, i32 0, i32 0
  store i64 0, i64* %length130, align 8
  %77 = load %struct.sVString*, %struct.sVString** %vStringClear_s129, align 8
  %buffer131 = getelementptr inbounds %struct.sVString, %struct.sVString* %77, i32 0, i32 2
  %78 = load i8*, i8** %buffer131, align 8
  %arrayidx132 = getelementptr inbounds i8, i8* %78, i64 0
  store i8 0, i8* %arrayidx132, align 1
  br label %do.end133

do.end133:                                        ; preds = %do.body128
  br label %sw.epilog

if.else134:                                       ; preds = %if.end117
  %79 = load %struct.sVString*, %struct.sVString** %name, align 8
  %length135 = getelementptr inbounds %struct.sVString, %struct.sVString* %79, i32 0, i32 0
  %80 = load i64, i64* %length135, align 8
  %cmp136 = icmp ugt i64 %80, 0
  br i1 %cmp136, label %if.then138, label %if.end150

if.then138:                                       ; preds = %if.else134
  %81 = load i8*, i8** %line, align 8
  %arrayidx139 = getelementptr inbounds i8, i8* %81, i64 0
  %82 = load i8, i8* %arrayidx139, align 1
  %conv140 = zext i8 %82 to i32
  %cmp141 = icmp eq i32 %conv140, 32
  br i1 %cmp141, label %if.then147, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then138
  %83 = load i8*, i8** %line, align 8
  %arrayidx143 = getelementptr inbounds i8, i8* %83, i64 0
  %84 = load i8, i8* %arrayidx143, align 1
  %conv144 = zext i8 %84 to i32
  %cmp145 = icmp eq i32 %conv144, 9
  br i1 %cmp145, label %if.then147, label %if.else148

if.then147:                                       ; preds = %lor.lhs.false, %if.then138
  %85 = load %struct.sVString*, %struct.sVString** %name, align 8
  call void @makeRTag(%struct.sVString* %85, i32 4)
  br label %if.end149

if.else148:                                       ; preds = %lor.lhs.false
  %86 = load %struct.sVString*, %struct.sVString** %name, align 8
  call void @makeRTag(%struct.sVString* %86, i32 3)
  br label %if.end149

if.end149:                                        ; preds = %if.else148, %if.then147
  br label %if.end150

if.end150:                                        ; preds = %if.end149, %if.else134
  br label %do.body151

do.body151:                                       ; preds = %if.end150
  %87 = load %struct.sVString*, %struct.sVString** %name, align 8
  store %struct.sVString* %87, %struct.sVString** %vStringClear_s152, align 8
  %88 = load %struct.sVString*, %struct.sVString** %vStringClear_s152, align 8
  %length153 = getelementptr inbounds %struct.sVString, %struct.sVString* %88, i32 0, i32 0
  store i64 0, i64* %length153, align 8
  %89 = load %struct.sVString*, %struct.sVString** %vStringClear_s152, align 8
  %buffer154 = getelementptr inbounds %struct.sVString, %struct.sVString* %89, i32 0, i32 2
  %90 = load i8*, i8** %buffer154, align 8
  %arrayidx155 = getelementptr inbounds i8, i8* %90, i64 0
  store i8 0, i8* %arrayidx155, align 1
  br label %do.end156

do.end156:                                        ; preds = %do.body151
  br label %sw.epilog

if.end157:                                        ; preds = %sw.bb86
  br label %sw.bb158

sw.bb158:                                         ; preds = %while.body9, %while.body9, %if.end157
  %91 = load i8*, i8** %cp, align 8
  %incdec.ptr159 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %incdec.ptr159, i8** %cp, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %while.body9
  %92 = load %struct.sVString*, %struct.sVString** %name, align 8
  %93 = load i8*, i8** %cp, align 8
  %94 = load i8, i8* %93, align 1
  %conv160 = zext i8 %94 to i32
  call void @vStringPut(%struct.sVString* %92, i32 %conv160)
  %95 = load i8*, i8** %cp, align 8
  %incdec.ptr161 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %incdec.ptr161, i8** %cp, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb158, %do.end156, %do.end133, %if.else115, %if.end85
  br label %while.cond3

while.end162:                                     ; preds = %land.end
  br label %while.cond

while.end163:                                     ; preds = %while.cond
  %96 = load %struct.sVString*, %struct.sVString** %name, align 8
  call void @vStringDelete(%struct.sVString* %96)
  %97 = load %struct.sVString*, %struct.sVString** %vLine, align 8
  call void @vStringDelete(%struct.sVString* %97)
  ret void
}

declare %struct.sVString* @vStringNew() #1

declare i8* @readLineFromInputFile() #1

declare i32 @strncasecmp(i8*, i8*, i64) #1

; Function Attrs: nounwind readonly
declare i32 @isspace(i32) #2

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
define internal void @makeRTag(%struct.sVString* %name, i32 %kind) #0 {
entry:
  %name.addr = alloca %struct.sVString*, align 8
  %kind.addr = alloca i32, align 4
  %e = alloca %struct.sTagEntryInfo, align 8
  store %struct.sVString* %name, %struct.sVString** %name.addr, align 8
  store i32 %kind, i32* %kind.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.sVString*, %struct.sVString** %name.addr, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %0, i32 0, i32 2
  %1 = load i8*, i8** %buffer, align 8
  %2 = load i32, i32* %kind.addr, align 4
  call void @initTagEntry(%struct.sTagEntryInfo* %e, i8* %1, i32 %2)
  %call = call i32 @makeTagEntry(%struct.sTagEntryInfo* %e)
  ret void
}

declare void @vStringDelete(%struct.sVString*) #1

declare void @vStringResize(%struct.sVString*, i64) #1

declare void @initTagEntry(%struct.sTagEntryInfo*, i8*, i32) #1

declare i32 @makeTagEntry(%struct.sTagEntryInfo*) #1

declare i8* @selectByArrowOfR(%struct._MIO*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 10.0.0 (https://github.com/holzschu/clang.git 0cfc630fbdb62e96720b611a57123ef3eb13e297) (https://github.com/holzschu/llvm.git 0d8a71e39b28502c24718f7e74b5acbcfe36dfe0)"}
