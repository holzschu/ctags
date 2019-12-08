; ModuleID = 'falcon.c'
source_filename = "falcon.c"
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

@.str = private unnamed_addr constant [7 x i8] c"Falcon\00", align 1
@FalconKinds = internal global [5 x %struct.sKindDefinition] [%struct.sKindDefinition { i8 1, i8 99, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 102, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 109, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 118, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 105, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }], align 8
@extensions = internal constant [3 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* null], align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"class\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"classes\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"function\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"functions\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"member\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"class members\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"variable\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"variables\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"namespace\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"imports\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"fal\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"ftd\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"load\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"import from\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sParserDefinition* @FalconParser() #0 {
entry:
  %def = alloca %struct.sParserDefinition*, align 8
  %call = call %struct.sParserDefinition* @parserNew(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store %struct.sParserDefinition* %call, %struct.sParserDefinition** %def, align 8
  %0 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %0, i32 0, i32 1
  store %struct.sKindDefinition* getelementptr inbounds ([5 x %struct.sKindDefinition], [5 x %struct.sKindDefinition]* @FalconKinds, i64 0, i64 0), %struct.sKindDefinition** %kindTable, align 8
  %1 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %1, i32 0, i32 2
  store i32 5, i32* %kindCount, align 8
  %2 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %extensions = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %2, i32 0, i32 3
  store i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @extensions, i64 0, i64 0), i8*** %extensions, align 8
  %3 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %parser = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %3, i32 0, i32 8
  store void ()* @findFalconTags, void ()** %parser, align 8
  %4 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  ret %struct.sParserDefinition* %4
}

declare %struct.sParserDefinition* @parserNew(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @findFalconTags() #0 {
entry:
  %name = alloca %struct.sVString*, align 8
  %line = alloca i8*, align 8
  %cp = alloca i8*, align 8
  %vStringClear_s = alloca %struct.sVString*, align 8
  %vStringClear_s30 = alloca %struct.sVString*, align 8
  %vStringClear_s51 = alloca %struct.sVString*, align 8
  %vStringClear_s72 = alloca %struct.sVString*, align 8
  %call = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call, %struct.sVString** %name, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end80, %if.then, %entry
  %call1 = call i8* @readLineFromInputFile()
  store i8* %call1, i8** %line, align 8
  %cmp = icmp ne i8* %call1, null
  br i1 %cmp, label %while.body, label %while.end81

while.body:                                       ; preds = %while.cond
  %0 = load i8*, i8** %line, align 8
  store i8* %0, i8** %cp, align 8
  %1 = load i8*, i8** %cp, align 8
  %2 = load i8, i8* %1, align 1
  %conv = zext i8 %2 to i32
  %cmp2 = icmp eq i32 %conv, 35
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %while.cond

if.end:                                           ; preds = %while.body
  %3 = load i8*, i8** %cp, align 8
  %call4 = call i32 @strncmp(i8* %3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i64 8)
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end
  %4 = load i8*, i8** %cp, align 8
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 8
  store i8* %add.ptr, i8** %cp, align 8
  %5 = load i8*, i8** %cp, align 8
  %call8 = call i8* @skipSpace(i8* %5)
  store i8* %call8, i8** %cp, align 8
  br label %while.cond9

while.cond9:                                      ; preds = %while.body12, %if.then7
  %6 = load i8*, i8** %cp, align 8
  %7 = load i8, i8* %6, align 1
  %conv10 = zext i8 %7 to i32
  %call11 = call zeroext i1 @isIdentifierChar(i32 %conv10)
  br i1 %call11, label %while.body12, label %while.end

while.body12:                                     ; preds = %while.cond9
  %8 = load %struct.sVString*, %struct.sVString** %name, align 8
  %9 = load i8*, i8** %cp, align 8
  %10 = load i8, i8* %9, align 1
  %conv13 = zext i8 %10 to i32
  call void @vStringPut(%struct.sVString* %8, i32 %conv13)
  %11 = load i8*, i8** %cp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr, i8** %cp, align 8
  br label %while.cond9

while.end:                                        ; preds = %while.cond9
  %12 = load %struct.sVString*, %struct.sVString** %name, align 8
  %call14 = call i32 @makeSimpleTag(%struct.sVString* %12, i32 1)
  br label %do.body

do.body:                                          ; preds = %while.end
  %13 = load %struct.sVString*, %struct.sVString** %name, align 8
  store %struct.sVString* %13, %struct.sVString** %vStringClear_s, align 8
  %14 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %14, i32 0, i32 0
  store i64 0, i64* %length, align 8
  %15 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %15, i32 0, i32 2
  %16 = load i8*, i8** %buffer, align 8
  %arrayidx = getelementptr inbounds i8, i8* %16, i64 0
  store i8 0, i8* %arrayidx, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %if.end80

if.else:                                          ; preds = %if.end
  %17 = load i8*, i8** %cp, align 8
  %call15 = call i32 @strncmp(i8* %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 5)
  %cmp16 = icmp eq i32 %call15, 0
  br i1 %cmp16, label %if.then18, label %if.else35

if.then18:                                        ; preds = %if.else
  %18 = load i8*, i8** %cp, align 8
  %add.ptr19 = getelementptr inbounds i8, i8* %18, i64 5
  store i8* %add.ptr19, i8** %cp, align 8
  %19 = load i8*, i8** %cp, align 8
  %call20 = call i8* @skipSpace(i8* %19)
  store i8* %call20, i8** %cp, align 8
  br label %while.cond21

while.cond21:                                     ; preds = %while.body24, %if.then18
  %20 = load i8*, i8** %cp, align 8
  %21 = load i8, i8* %20, align 1
  %conv22 = zext i8 %21 to i32
  %call23 = call zeroext i1 @isIdentifierChar(i32 %conv22)
  br i1 %call23, label %while.body24, label %while.end27

while.body24:                                     ; preds = %while.cond21
  %22 = load %struct.sVString*, %struct.sVString** %name, align 8
  %23 = load i8*, i8** %cp, align 8
  %24 = load i8, i8* %23, align 1
  %conv25 = zext i8 %24 to i32
  call void @vStringPut(%struct.sVString* %22, i32 %conv25)
  %25 = load i8*, i8** %cp, align 8
  %incdec.ptr26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %incdec.ptr26, i8** %cp, align 8
  br label %while.cond21

while.end27:                                      ; preds = %while.cond21
  %26 = load %struct.sVString*, %struct.sVString** %name, align 8
  %call28 = call i32 @makeSimpleTag(%struct.sVString* %26, i32 0)
  br label %do.body29

do.body29:                                        ; preds = %while.end27
  %27 = load %struct.sVString*, %struct.sVString** %name, align 8
  store %struct.sVString* %27, %struct.sVString** %vStringClear_s30, align 8
  %28 = load %struct.sVString*, %struct.sVString** %vStringClear_s30, align 8
  %length31 = getelementptr inbounds %struct.sVString, %struct.sVString* %28, i32 0, i32 0
  store i64 0, i64* %length31, align 8
  %29 = load %struct.sVString*, %struct.sVString** %vStringClear_s30, align 8
  %buffer32 = getelementptr inbounds %struct.sVString, %struct.sVString* %29, i32 0, i32 2
  %30 = load i8*, i8** %buffer32, align 8
  %arrayidx33 = getelementptr inbounds i8, i8* %30, i64 0
  store i8 0, i8* %arrayidx33, align 1
  br label %do.end34

do.end34:                                         ; preds = %do.body29
  br label %if.end79

if.else35:                                        ; preds = %if.else
  %31 = load i8*, i8** %cp, align 8
  %call36 = call i32 @strncmp(i8* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i64 4)
  %cmp37 = icmp eq i32 %call36, 0
  br i1 %cmp37, label %if.then39, label %if.else56

if.then39:                                        ; preds = %if.else35
  %32 = load i8*, i8** %cp, align 8
  %add.ptr40 = getelementptr inbounds i8, i8* %32, i64 4
  store i8* %add.ptr40, i8** %cp, align 8
  %33 = load i8*, i8** %cp, align 8
  %call41 = call i8* @skipSpace(i8* %33)
  store i8* %call41, i8** %cp, align 8
  br label %while.cond42

while.cond42:                                     ; preds = %while.body45, %if.then39
  %34 = load i8*, i8** %cp, align 8
  %35 = load i8, i8* %34, align 1
  %conv43 = zext i8 %35 to i32
  %call44 = call zeroext i1 @isIdentifierChar(i32 %conv43)
  br i1 %call44, label %while.body45, label %while.end48

while.body45:                                     ; preds = %while.cond42
  %36 = load %struct.sVString*, %struct.sVString** %name, align 8
  %37 = load i8*, i8** %cp, align 8
  %38 = load i8, i8* %37, align 1
  %conv46 = zext i8 %38 to i32
  call void @vStringPut(%struct.sVString* %36, i32 %conv46)
  %39 = load i8*, i8** %cp, align 8
  %incdec.ptr47 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %incdec.ptr47, i8** %cp, align 8
  br label %while.cond42

while.end48:                                      ; preds = %while.cond42
  %40 = load %struct.sVString*, %struct.sVString** %name, align 8
  %call49 = call i32 @makeSimpleTag(%struct.sVString* %40, i32 4)
  br label %do.body50

do.body50:                                        ; preds = %while.end48
  %41 = load %struct.sVString*, %struct.sVString** %name, align 8
  store %struct.sVString* %41, %struct.sVString** %vStringClear_s51, align 8
  %42 = load %struct.sVString*, %struct.sVString** %vStringClear_s51, align 8
  %length52 = getelementptr inbounds %struct.sVString, %struct.sVString* %42, i32 0, i32 0
  store i64 0, i64* %length52, align 8
  %43 = load %struct.sVString*, %struct.sVString** %vStringClear_s51, align 8
  %buffer53 = getelementptr inbounds %struct.sVString, %struct.sVString* %43, i32 0, i32 2
  %44 = load i8*, i8** %buffer53, align 8
  %arrayidx54 = getelementptr inbounds i8, i8* %44, i64 0
  store i8 0, i8* %arrayidx54, align 1
  br label %do.end55

do.end55:                                         ; preds = %do.body50
  br label %if.end78

if.else56:                                        ; preds = %if.else35
  %45 = load i8*, i8** %cp, align 8
  %call57 = call i32 @strncmp(i8* %45, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i64 11)
  %cmp58 = icmp eq i32 %call57, 0
  br i1 %cmp58, label %if.then60, label %if.end77

if.then60:                                        ; preds = %if.else56
  %46 = load i8*, i8** %cp, align 8
  %add.ptr61 = getelementptr inbounds i8, i8* %46, i64 12
  store i8* %add.ptr61, i8** %cp, align 8
  %47 = load i8*, i8** %cp, align 8
  %call62 = call i8* @skipSpace(i8* %47)
  store i8* %call62, i8** %cp, align 8
  br label %while.cond63

while.cond63:                                     ; preds = %while.body66, %if.then60
  %48 = load i8*, i8** %cp, align 8
  %49 = load i8, i8* %48, align 1
  %conv64 = zext i8 %49 to i32
  %call65 = call zeroext i1 @isIdentifierChar(i32 %conv64)
  br i1 %call65, label %while.body66, label %while.end69

while.body66:                                     ; preds = %while.cond63
  %50 = load %struct.sVString*, %struct.sVString** %name, align 8
  %51 = load i8*, i8** %cp, align 8
  %52 = load i8, i8* %51, align 1
  %conv67 = zext i8 %52 to i32
  call void @vStringPut(%struct.sVString* %50, i32 %conv67)
  %53 = load i8*, i8** %cp, align 8
  %incdec.ptr68 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %incdec.ptr68, i8** %cp, align 8
  br label %while.cond63

while.end69:                                      ; preds = %while.cond63
  %54 = load %struct.sVString*, %struct.sVString** %name, align 8
  %call70 = call i32 @makeSimpleTag(%struct.sVString* %54, i32 4)
  br label %do.body71

do.body71:                                        ; preds = %while.end69
  %55 = load %struct.sVString*, %struct.sVString** %name, align 8
  store %struct.sVString* %55, %struct.sVString** %vStringClear_s72, align 8
  %56 = load %struct.sVString*, %struct.sVString** %vStringClear_s72, align 8
  %length73 = getelementptr inbounds %struct.sVString, %struct.sVString* %56, i32 0, i32 0
  store i64 0, i64* %length73, align 8
  %57 = load %struct.sVString*, %struct.sVString** %vStringClear_s72, align 8
  %buffer74 = getelementptr inbounds %struct.sVString, %struct.sVString* %57, i32 0, i32 2
  %58 = load i8*, i8** %buffer74, align 8
  %arrayidx75 = getelementptr inbounds i8, i8* %58, i64 0
  store i8 0, i8* %arrayidx75, align 1
  br label %do.end76

do.end76:                                         ; preds = %do.body71
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %if.else56
  br label %if.end78

if.end78:                                         ; preds = %if.end77, %do.end55
  br label %if.end79

if.end79:                                         ; preds = %if.end78, %do.end34
  br label %if.end80

if.end80:                                         ; preds = %if.end79, %do.end
  br label %while.cond

while.end81:                                      ; preds = %while.cond
  %59 = load %struct.sVString*, %struct.sVString** %name, align 8
  call void @vStringDelete(%struct.sVString* %59)
  ret void
}

declare %struct.sVString* @vStringNew() #1

declare i8* @readLineFromInputFile() #1

declare i32 @strncmp(i8*, i8*, i64) #1

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

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @isIdentifierChar(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %call = call i32 @isalnum(i32 %0) #3
  %tobool = icmp ne i32 %call, 0
  ret i1 %tobool
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

declare void @vStringDelete(%struct.sVString*) #1

; Function Attrs: nounwind readonly
declare i32 @isspace(i32) #2

; Function Attrs: nounwind readonly
declare i32 @isalnum(i32) #2

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
