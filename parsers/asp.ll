; ModuleID = 'asp.c'
source_filename = "asp.c"
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

@.str = private unnamed_addr constant [4 x i8] c"Asp\00", align 1
@AspKinds = internal global [5 x %struct.sKindDefinition] [%struct.sKindDefinition { i8 1, i8 100, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 99, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 102, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 115, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 118, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }], align 8
@extensions = internal constant [3 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* null], align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"constant\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"constants\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"class\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"classes\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"function\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"functions\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"subroutine\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"subroutines\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"variable\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"variables\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"asp\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"asa\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"end\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"sub\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"exit\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"public\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"private\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"dim\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"const\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sParserDefinition* @AspParser() #0 {
entry:
  %def = alloca %struct.sParserDefinition*, align 8
  %call = call %struct.sParserDefinition* @parserNew(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store %struct.sParserDefinition* %call, %struct.sParserDefinition** %def, align 8
  %0 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %0, i32 0, i32 1
  store %struct.sKindDefinition* getelementptr inbounds ([5 x %struct.sKindDefinition], [5 x %struct.sKindDefinition]* @AspKinds, i64 0, i64 0), %struct.sKindDefinition** %kindTable, align 8
  %1 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %1, i32 0, i32 2
  store i32 5, i32* %kindCount, align 8
  %2 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %extensions = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %2, i32 0, i32 3
  store i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @extensions, i64 0, i64 0), i8*** %extensions, align 8
  %3 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %parser = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %3, i32 0, i32 8
  store void ()* @findAspTags, void ()** %parser, align 8
  %4 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  ret %struct.sParserDefinition* %4
}

declare %struct.sParserDefinition* @parserNew(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @findAspTags() #0 {
entry:
  %name = alloca %struct.sVString*, align 8
  %line = alloca i8*, align 8
  %cp = alloca i8*, align 8
  %vStringClear_s = alloca %struct.sVString*, align 8
  %vStringClear_s157 = alloca %struct.sVString*, align 8
  %vStringClear_s178 = alloca %struct.sVString*, align 8
  %vStringClear_s230 = alloca %struct.sVString*, align 8
  %vStringClear_s263 = alloca %struct.sVString*, align 8
  %vStringClear_s284 = alloca %struct.sVString*, align 8
  %vStringClear_s324 = alloca %struct.sVString*, align 8
  %vStringClear_s362 = alloca %struct.sVString*, align 8
  %vStringClear_s400 = alloca %struct.sVString*, align 8
  %vStringClear_s438 = alloca %struct.sVString*, align 8
  %vStringClear_s476 = alloca %struct.sVString*, align 8
  %call = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call, %struct.sVString** %name, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.end500, %entry
  %call1 = call i8* @readLineFromInputFile()
  store i8* %call1, i8** %line, align 8
  %cmp = icmp ne i8* %call1, null
  br i1 %cmp, label %while.body, label %while.end501

while.body:                                       ; preds = %while.cond
  %0 = load i8*, i8** %line, align 8
  store i8* %0, i8** %cp, align 8
  br label %while.cond2

while.cond2:                                      ; preds = %if.end499, %while.body
  %1 = load i8*, i8** %cp, align 8
  %2 = load i8, i8* %1, align 1
  %conv = zext i8 %2 to i32
  %cmp3 = icmp ne i32 %conv, 0
  br i1 %cmp3, label %while.body5, label %while.end500

while.body5:                                      ; preds = %while.cond2
  br label %while.cond6

while.cond6:                                      ; preds = %while.body9, %while.body5
  %3 = load i8*, i8** %cp, align 8
  %4 = load i8, i8* %3, align 1
  %conv7 = zext i8 %4 to i32
  %call8 = call i32 @isspace(i32 %conv7) #3
  %tobool = icmp ne i32 %call8, 0
  br i1 %tobool, label %while.body9, label %while.end

while.body9:                                      ; preds = %while.cond6
  %5 = load i8*, i8** %cp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %cp, align 8
  br label %while.cond6

while.end:                                        ; preds = %while.cond6
  %6 = load i8*, i8** %cp, align 8
  %7 = load i8, i8* %6, align 1
  %conv10 = zext i8 %7 to i32
  %cmp11 = icmp eq i32 %conv10, 34
  br i1 %cmp11, label %if.then, label %if.else

if.then:                                          ; preds = %while.end
  %8 = load i8*, i8** %cp, align 8
  %incdec.ptr13 = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr13, i8** %cp, align 8
  br label %while.cond14

while.cond14:                                     ; preds = %while.body21, %if.then
  %9 = load i8*, i8** %cp, align 8
  %10 = load i8, i8* %9, align 1
  %conv15 = zext i8 %10 to i32
  %cmp16 = icmp ne i32 %conv15, 34
  br i1 %cmp16, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond14
  %11 = load i8*, i8** %cp, align 8
  %12 = load i8, i8* %11, align 1
  %conv18 = zext i8 %12 to i32
  %cmp19 = icmp ne i32 %conv18, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond14
  %13 = phi i1 [ false, %while.cond14 ], [ %cmp19, %land.rhs ]
  br i1 %13, label %while.body21, label %while.end23

while.body21:                                     ; preds = %land.end
  %14 = load i8*, i8** %cp, align 8
  %incdec.ptr22 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr22, i8** %cp, align 8
  br label %while.cond14

while.end23:                                      ; preds = %land.end
  br label %if.end499

if.else:                                          ; preds = %while.end
  %15 = load i8*, i8** %cp, align 8
  %16 = load i8, i8* %15, align 1
  %conv24 = zext i8 %16 to i32
  %cmp25 = icmp eq i32 %conv24, 39
  br i1 %cmp25, label %if.then27, label %if.else28

if.then27:                                        ; preds = %if.else
  br label %while.end500

if.else28:                                        ; preds = %if.else
  %17 = load i8*, i8** %cp, align 8
  %call29 = call i32 @strncasecmp(i8* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i64 3)
  %cmp30 = icmp eq i32 %call29, 0
  br i1 %cmp30, label %if.then32, label %if.else57

if.then32:                                        ; preds = %if.else28
  %18 = load i8*, i8** %cp, align 8
  %add.ptr = getelementptr inbounds i8, i8* %18, i64 3
  store i8* %add.ptr, i8** %cp, align 8
  %19 = load i8*, i8** %cp, align 8
  %20 = load i8, i8* %19, align 1
  %conv33 = zext i8 %20 to i32
  %call34 = call i32 @isspace(i32 %conv33) #3
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.then36, label %if.end56

if.then36:                                        ; preds = %if.then32
  br label %while.cond37

while.cond37:                                     ; preds = %while.body41, %if.then36
  %21 = load i8*, i8** %cp, align 8
  %22 = load i8, i8* %21, align 1
  %conv38 = zext i8 %22 to i32
  %call39 = call i32 @isspace(i32 %conv38) #3
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %while.body41, label %while.end43

while.body41:                                     ; preds = %while.cond37
  %23 = load i8*, i8** %cp, align 8
  %incdec.ptr42 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr42, i8** %cp, align 8
  br label %while.cond37

while.end43:                                      ; preds = %while.cond37
  %24 = load i8*, i8** %cp, align 8
  %call44 = call i32 @strncasecmp(i8* %24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i64 8)
  %cmp45 = icmp eq i32 %call44, 0
  br i1 %cmp45, label %if.then47, label %if.else49

if.then47:                                        ; preds = %while.end43
  %25 = load i8*, i8** %cp, align 8
  %add.ptr48 = getelementptr inbounds i8, i8* %25, i64 8
  store i8* %add.ptr48, i8** %cp, align 8
  br label %while.end500

if.else49:                                        ; preds = %while.end43
  %26 = load i8*, i8** %cp, align 8
  %call50 = call i32 @strncasecmp(i8* %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i64 3)
  %cmp51 = icmp eq i32 %call50, 0
  br i1 %cmp51, label %if.then53, label %if.end

if.then53:                                        ; preds = %if.else49
  %27 = load i8*, i8** %cp, align 8
  %add.ptr54 = getelementptr inbounds i8, i8* %27, i64 3
  store i8* %add.ptr54, i8** %cp, align 8
  br label %while.end500

if.end:                                           ; preds = %if.else49
  br label %if.end55

if.end55:                                         ; preds = %if.end
  br label %if.end56

if.end56:                                         ; preds = %if.end55, %if.then32
  br label %if.end497

if.else57:                                        ; preds = %if.else28
  %28 = load i8*, i8** %cp, align 8
  %call58 = call i32 @strncasecmp(i8* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i64 4)
  %cmp59 = icmp eq i32 %call58, 0
  br i1 %cmp59, label %if.then61, label %if.else88

if.then61:                                        ; preds = %if.else57
  %29 = load i8*, i8** %cp, align 8
  %add.ptr62 = getelementptr inbounds i8, i8* %29, i64 4
  store i8* %add.ptr62, i8** %cp, align 8
  %30 = load i8*, i8** %cp, align 8
  %31 = load i8, i8* %30, align 1
  %conv63 = zext i8 %31 to i32
  %call64 = call i32 @isspace(i32 %conv63) #3
  %tobool65 = icmp ne i32 %call64, 0
  br i1 %tobool65, label %if.then66, label %if.end87

if.then66:                                        ; preds = %if.then61
  br label %while.cond67

while.cond67:                                     ; preds = %while.body71, %if.then66
  %32 = load i8*, i8** %cp, align 8
  %33 = load i8, i8* %32, align 1
  %conv68 = zext i8 %33 to i32
  %call69 = call i32 @isspace(i32 %conv68) #3
  %tobool70 = icmp ne i32 %call69, 0
  br i1 %tobool70, label %while.body71, label %while.end73

while.body71:                                     ; preds = %while.cond67
  %34 = load i8*, i8** %cp, align 8
  %incdec.ptr72 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %incdec.ptr72, i8** %cp, align 8
  br label %while.cond67

while.end73:                                      ; preds = %while.cond67
  %35 = load i8*, i8** %cp, align 8
  %call74 = call i32 @strncasecmp(i8* %35, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i64 8)
  %cmp75 = icmp eq i32 %call74, 0
  br i1 %cmp75, label %if.then77, label %if.else79

if.then77:                                        ; preds = %while.end73
  %36 = load i8*, i8** %cp, align 8
  %add.ptr78 = getelementptr inbounds i8, i8* %36, i64 8
  store i8* %add.ptr78, i8** %cp, align 8
  br label %while.end500

if.else79:                                        ; preds = %while.end73
  %37 = load i8*, i8** %cp, align 8
  %call80 = call i32 @strncasecmp(i8* %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i64 3)
  %cmp81 = icmp eq i32 %call80, 0
  br i1 %cmp81, label %if.then83, label %if.end85

if.then83:                                        ; preds = %if.else79
  %38 = load i8*, i8** %cp, align 8
  %add.ptr84 = getelementptr inbounds i8, i8* %38, i64 3
  store i8* %add.ptr84, i8** %cp, align 8
  br label %while.end500

if.end85:                                         ; preds = %if.else79
  br label %if.end86

if.end86:                                         ; preds = %if.end85
  br label %if.end87

if.end87:                                         ; preds = %if.end86, %if.then61
  br label %if.end496

if.else88:                                        ; preds = %if.else57
  %39 = load i8*, i8** %cp, align 8
  %call89 = call i32 @strncasecmp(i8* %39, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), i64 6)
  %cmp90 = icmp eq i32 %call89, 0
  br i1 %cmp90, label %if.then92, label %if.else186

if.then92:                                        ; preds = %if.else88
  %40 = load i8*, i8** %cp, align 8
  %add.ptr93 = getelementptr inbounds i8, i8* %40, i64 6
  store i8* %add.ptr93, i8** %cp, align 8
  %41 = load i8*, i8** %cp, align 8
  %42 = load i8, i8* %41, align 1
  %conv94 = zext i8 %42 to i32
  %call95 = call i32 @isspace(i32 %conv94) #3
  %tobool96 = icmp ne i32 %call95, 0
  br i1 %tobool96, label %if.then97, label %if.end185

if.then97:                                        ; preds = %if.then92
  br label %while.cond98

while.cond98:                                     ; preds = %while.body102, %if.then97
  %43 = load i8*, i8** %cp, align 8
  %44 = load i8, i8* %43, align 1
  %conv99 = zext i8 %44 to i32
  %call100 = call i32 @isspace(i32 %conv99) #3
  %tobool101 = icmp ne i32 %call100, 0
  br i1 %tobool101, label %while.body102, label %while.end104

while.body102:                                    ; preds = %while.cond98
  %45 = load i8*, i8** %cp, align 8
  %incdec.ptr103 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %incdec.ptr103, i8** %cp, align 8
  br label %while.cond98

while.end104:                                     ; preds = %while.cond98
  %46 = load i8*, i8** %cp, align 8
  %call105 = call i32 @strncasecmp(i8* %46, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i64 8)
  %cmp106 = icmp eq i32 %call105, 0
  br i1 %cmp106, label %if.then108, label %if.else129

if.then108:                                       ; preds = %while.end104
  %47 = load i8*, i8** %cp, align 8
  %add.ptr109 = getelementptr inbounds i8, i8* %47, i64 8
  store i8* %add.ptr109, i8** %cp, align 8
  br label %while.cond110

while.cond110:                                    ; preds = %while.body114, %if.then108
  %48 = load i8*, i8** %cp, align 8
  %49 = load i8, i8* %48, align 1
  %conv111 = zext i8 %49 to i32
  %call112 = call i32 @isspace(i32 %conv111) #3
  %tobool113 = icmp ne i32 %call112, 0
  br i1 %tobool113, label %while.body114, label %while.end116

while.body114:                                    ; preds = %while.cond110
  %50 = load i8*, i8** %cp, align 8
  %incdec.ptr115 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %incdec.ptr115, i8** %cp, align 8
  br label %while.cond110

while.end116:                                     ; preds = %while.cond110
  br label %while.cond117

while.cond117:                                    ; preds = %while.body124, %while.end116
  %51 = load i8*, i8** %cp, align 8
  %52 = load i8, i8* %51, align 1
  %conv118 = zext i8 %52 to i32
  %call119 = call i32 @isalnum(i32 %conv118) #3
  %tobool120 = icmp ne i32 %call119, 0
  br i1 %tobool120, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond117
  %53 = load i8*, i8** %cp, align 8
  %54 = load i8, i8* %53, align 1
  %conv121 = zext i8 %54 to i32
  %cmp122 = icmp eq i32 %conv121, 95
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond117
  %55 = phi i1 [ true, %while.cond117 ], [ %cmp122, %lor.rhs ]
  br i1 %55, label %while.body124, label %while.end127

while.body124:                                    ; preds = %lor.end
  %56 = load %struct.sVString*, %struct.sVString** %name, align 8
  %57 = load i8*, i8** %cp, align 8
  %58 = load i8, i8* %57, align 1
  %conv125 = zext i8 %58 to i32
  call void @vStringPut(%struct.sVString* %56, i32 %conv125)
  %59 = load i8*, i8** %cp, align 8
  %incdec.ptr126 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %incdec.ptr126, i8** %cp, align 8
  br label %while.cond117

while.end127:                                     ; preds = %lor.end
  %60 = load %struct.sVString*, %struct.sVString** %name, align 8
  %call128 = call i32 @makeSimpleTag(%struct.sVString* %60, i32 2)
  br label %do.body

do.body:                                          ; preds = %while.end127
  %61 = load %struct.sVString*, %struct.sVString** %name, align 8
  store %struct.sVString* %61, %struct.sVString** %vStringClear_s, align 8
  %62 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %62, i32 0, i32 0
  store i64 0, i64* %length, align 8
  %63 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %63, i32 0, i32 2
  %64 = load i8*, i8** %buffer, align 8
  %arrayidx = getelementptr inbounds i8, i8* %64, i64 0
  store i8 0, i8* %arrayidx, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %if.end184

if.else129:                                       ; preds = %while.end104
  %65 = load i8*, i8** %cp, align 8
  %call130 = call i32 @strncasecmp(i8* %65, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i64 3)
  %cmp131 = icmp eq i32 %call130, 0
  br i1 %cmp131, label %if.then133, label %if.else162

if.then133:                                       ; preds = %if.else129
  %66 = load i8*, i8** %cp, align 8
  %add.ptr134 = getelementptr inbounds i8, i8* %66, i64 3
  store i8* %add.ptr134, i8** %cp, align 8
  br label %while.cond135

while.cond135:                                    ; preds = %while.body139, %if.then133
  %67 = load i8*, i8** %cp, align 8
  %68 = load i8, i8* %67, align 1
  %conv136 = zext i8 %68 to i32
  %call137 = call i32 @isspace(i32 %conv136) #3
  %tobool138 = icmp ne i32 %call137, 0
  br i1 %tobool138, label %while.body139, label %while.end141

while.body139:                                    ; preds = %while.cond135
  %69 = load i8*, i8** %cp, align 8
  %incdec.ptr140 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %incdec.ptr140, i8** %cp, align 8
  br label %while.cond135

while.end141:                                     ; preds = %while.cond135
  br label %while.cond142

while.cond142:                                    ; preds = %while.body151, %while.end141
  %70 = load i8*, i8** %cp, align 8
  %71 = load i8, i8* %70, align 1
  %conv143 = zext i8 %71 to i32
  %call144 = call i32 @isalnum(i32 %conv143) #3
  %tobool145 = icmp ne i32 %call144, 0
  br i1 %tobool145, label %lor.end150, label %lor.rhs146

lor.rhs146:                                       ; preds = %while.cond142
  %72 = load i8*, i8** %cp, align 8
  %73 = load i8, i8* %72, align 1
  %conv147 = zext i8 %73 to i32
  %cmp148 = icmp eq i32 %conv147, 95
  br label %lor.end150

lor.end150:                                       ; preds = %lor.rhs146, %while.cond142
  %74 = phi i1 [ true, %while.cond142 ], [ %cmp148, %lor.rhs146 ]
  br i1 %74, label %while.body151, label %while.end154

while.body151:                                    ; preds = %lor.end150
  %75 = load %struct.sVString*, %struct.sVString** %name, align 8
  %76 = load i8*, i8** %cp, align 8
  %77 = load i8, i8* %76, align 1
  %conv152 = zext i8 %77 to i32
  call void @vStringPut(%struct.sVString* %75, i32 %conv152)
  %78 = load i8*, i8** %cp, align 8
  %incdec.ptr153 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %incdec.ptr153, i8** %cp, align 8
  br label %while.cond142

while.end154:                                     ; preds = %lor.end150
  %79 = load %struct.sVString*, %struct.sVString** %name, align 8
  %call155 = call i32 @makeSimpleTag(%struct.sVString* %79, i32 3)
  br label %do.body156

do.body156:                                       ; preds = %while.end154
  %80 = load %struct.sVString*, %struct.sVString** %name, align 8
  store %struct.sVString* %80, %struct.sVString** %vStringClear_s157, align 8
  %81 = load %struct.sVString*, %struct.sVString** %vStringClear_s157, align 8
  %length158 = getelementptr inbounds %struct.sVString, %struct.sVString* %81, i32 0, i32 0
  store i64 0, i64* %length158, align 8
  %82 = load %struct.sVString*, %struct.sVString** %vStringClear_s157, align 8
  %buffer159 = getelementptr inbounds %struct.sVString, %struct.sVString* %82, i32 0, i32 2
  %83 = load i8*, i8** %buffer159, align 8
  %arrayidx160 = getelementptr inbounds i8, i8* %83, i64 0
  store i8 0, i8* %arrayidx160, align 1
  br label %do.end161

do.end161:                                        ; preds = %do.body156
  br label %if.end183

if.else162:                                       ; preds = %if.else129
  br label %while.cond163

while.cond163:                                    ; preds = %while.body172, %if.else162
  %84 = load i8*, i8** %cp, align 8
  %85 = load i8, i8* %84, align 1
  %conv164 = zext i8 %85 to i32
  %call165 = call i32 @isalnum(i32 %conv164) #3
  %tobool166 = icmp ne i32 %call165, 0
  br i1 %tobool166, label %lor.end171, label %lor.rhs167

lor.rhs167:                                       ; preds = %while.cond163
  %86 = load i8*, i8** %cp, align 8
  %87 = load i8, i8* %86, align 1
  %conv168 = zext i8 %87 to i32
  %cmp169 = icmp eq i32 %conv168, 95
  br label %lor.end171

lor.end171:                                       ; preds = %lor.rhs167, %while.cond163
  %88 = phi i1 [ true, %while.cond163 ], [ %cmp169, %lor.rhs167 ]
  br i1 %88, label %while.body172, label %while.end175

while.body172:                                    ; preds = %lor.end171
  %89 = load %struct.sVString*, %struct.sVString** %name, align 8
  %90 = load i8*, i8** %cp, align 8
  %91 = load i8, i8* %90, align 1
  %conv173 = zext i8 %91 to i32
  call void @vStringPut(%struct.sVString* %89, i32 %conv173)
  %92 = load i8*, i8** %cp, align 8
  %incdec.ptr174 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %incdec.ptr174, i8** %cp, align 8
  br label %while.cond163

while.end175:                                     ; preds = %lor.end171
  %93 = load %struct.sVString*, %struct.sVString** %name, align 8
  %call176 = call i32 @makeSimpleTag(%struct.sVString* %93, i32 4)
  br label %do.body177

do.body177:                                       ; preds = %while.end175
  %94 = load %struct.sVString*, %struct.sVString** %name, align 8
  store %struct.sVString* %94, %struct.sVString** %vStringClear_s178, align 8
  %95 = load %struct.sVString*, %struct.sVString** %vStringClear_s178, align 8
  %length179 = getelementptr inbounds %struct.sVString, %struct.sVString* %95, i32 0, i32 0
  store i64 0, i64* %length179, align 8
  %96 = load %struct.sVString*, %struct.sVString** %vStringClear_s178, align 8
  %buffer180 = getelementptr inbounds %struct.sVString, %struct.sVString* %96, i32 0, i32 2
  %97 = load i8*, i8** %buffer180, align 8
  %arrayidx181 = getelementptr inbounds i8, i8* %97, i64 0
  store i8 0, i8* %arrayidx181, align 1
  br label %do.end182

do.end182:                                        ; preds = %do.body177
  br label %if.end183

if.end183:                                        ; preds = %do.end182, %do.end161
  br label %if.end184

if.end184:                                        ; preds = %if.end183, %do.end
  br label %if.end185

if.end185:                                        ; preds = %if.end184, %if.then92
  br label %if.end495

if.else186:                                       ; preds = %if.else88
  %98 = load i8*, i8** %cp, align 8
  %call187 = call i32 @strncasecmp(i8* %98, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0), i64 7)
  %cmp188 = icmp eq i32 %call187, 0
  br i1 %cmp188, label %if.then190, label %if.else292

if.then190:                                       ; preds = %if.else186
  %99 = load i8*, i8** %cp, align 8
  %add.ptr191 = getelementptr inbounds i8, i8* %99, i64 7
  store i8* %add.ptr191, i8** %cp, align 8
  %100 = load i8*, i8** %cp, align 8
  %101 = load i8, i8* %100, align 1
  %conv192 = zext i8 %101 to i32
  %call193 = call i32 @isspace(i32 %conv192) #3
  %tobool194 = icmp ne i32 %call193, 0
  br i1 %tobool194, label %if.then195, label %if.end291

if.then195:                                       ; preds = %if.then190
  br label %while.cond196

while.cond196:                                    ; preds = %while.body200, %if.then195
  %102 = load i8*, i8** %cp, align 8
  %103 = load i8, i8* %102, align 1
  %conv197 = zext i8 %103 to i32
  %call198 = call i32 @isspace(i32 %conv197) #3
  %tobool199 = icmp ne i32 %call198, 0
  br i1 %tobool199, label %while.body200, label %while.end202

while.body200:                                    ; preds = %while.cond196
  %104 = load i8*, i8** %cp, align 8
  %incdec.ptr201 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %incdec.ptr201, i8** %cp, align 8
  br label %while.cond196

while.end202:                                     ; preds = %while.cond196
  %105 = load i8*, i8** %cp, align 8
  %call203 = call i32 @strncasecmp(i8* %105, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i64 8)
  %cmp204 = icmp eq i32 %call203, 0
  br i1 %cmp204, label %if.then206, label %if.else235

if.then206:                                       ; preds = %while.end202
  %106 = load i8*, i8** %cp, align 8
  %add.ptr207 = getelementptr inbounds i8, i8* %106, i64 8
  store i8* %add.ptr207, i8** %cp, align 8
  br label %while.cond208

while.cond208:                                    ; preds = %while.body212, %if.then206
  %107 = load i8*, i8** %cp, align 8
  %108 = load i8, i8* %107, align 1
  %conv209 = zext i8 %108 to i32
  %call210 = call i32 @isspace(i32 %conv209) #3
  %tobool211 = icmp ne i32 %call210, 0
  br i1 %tobool211, label %while.body212, label %while.end214

while.body212:                                    ; preds = %while.cond208
  %109 = load i8*, i8** %cp, align 8
  %incdec.ptr213 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %incdec.ptr213, i8** %cp, align 8
  br label %while.cond208

while.end214:                                     ; preds = %while.cond208
  br label %while.cond215

while.cond215:                                    ; preds = %while.body224, %while.end214
  %110 = load i8*, i8** %cp, align 8
  %111 = load i8, i8* %110, align 1
  %conv216 = zext i8 %111 to i32
  %call217 = call i32 @isalnum(i32 %conv216) #3
  %tobool218 = icmp ne i32 %call217, 0
  br i1 %tobool218, label %lor.end223, label %lor.rhs219

lor.rhs219:                                       ; preds = %while.cond215
  %112 = load i8*, i8** %cp, align 8
  %113 = load i8, i8* %112, align 1
  %conv220 = zext i8 %113 to i32
  %cmp221 = icmp eq i32 %conv220, 95
  br label %lor.end223

lor.end223:                                       ; preds = %lor.rhs219, %while.cond215
  %114 = phi i1 [ true, %while.cond215 ], [ %cmp221, %lor.rhs219 ]
  br i1 %114, label %while.body224, label %while.end227

while.body224:                                    ; preds = %lor.end223
  %115 = load %struct.sVString*, %struct.sVString** %name, align 8
  %116 = load i8*, i8** %cp, align 8
  %117 = load i8, i8* %116, align 1
  %conv225 = zext i8 %117 to i32
  call void @vStringPut(%struct.sVString* %115, i32 %conv225)
  %118 = load i8*, i8** %cp, align 8
  %incdec.ptr226 = getelementptr inbounds i8, i8* %118, i32 1
  store i8* %incdec.ptr226, i8** %cp, align 8
  br label %while.cond215

while.end227:                                     ; preds = %lor.end223
  %119 = load %struct.sVString*, %struct.sVString** %name, align 8
  %call228 = call i32 @makeSimpleTag(%struct.sVString* %119, i32 2)
  br label %do.body229

do.body229:                                       ; preds = %while.end227
  %120 = load %struct.sVString*, %struct.sVString** %name, align 8
  store %struct.sVString* %120, %struct.sVString** %vStringClear_s230, align 8
  %121 = load %struct.sVString*, %struct.sVString** %vStringClear_s230, align 8
  %length231 = getelementptr inbounds %struct.sVString, %struct.sVString* %121, i32 0, i32 0
  store i64 0, i64* %length231, align 8
  %122 = load %struct.sVString*, %struct.sVString** %vStringClear_s230, align 8
  %buffer232 = getelementptr inbounds %struct.sVString, %struct.sVString* %122, i32 0, i32 2
  %123 = load i8*, i8** %buffer232, align 8
  %arrayidx233 = getelementptr inbounds i8, i8* %123, i64 0
  store i8 0, i8* %arrayidx233, align 1
  br label %do.end234

do.end234:                                        ; preds = %do.body229
  br label %if.end290

if.else235:                                       ; preds = %while.end202
  %124 = load i8*, i8** %cp, align 8
  %call236 = call i32 @strncasecmp(i8* %124, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i64 3)
  %cmp237 = icmp eq i32 %call236, 0
  br i1 %cmp237, label %if.then239, label %if.else268

if.then239:                                       ; preds = %if.else235
  %125 = load i8*, i8** %cp, align 8
  %add.ptr240 = getelementptr inbounds i8, i8* %125, i64 3
  store i8* %add.ptr240, i8** %cp, align 8
  br label %while.cond241

while.cond241:                                    ; preds = %while.body245, %if.then239
  %126 = load i8*, i8** %cp, align 8
  %127 = load i8, i8* %126, align 1
  %conv242 = zext i8 %127 to i32
  %call243 = call i32 @isspace(i32 %conv242) #3
  %tobool244 = icmp ne i32 %call243, 0
  br i1 %tobool244, label %while.body245, label %while.end247

while.body245:                                    ; preds = %while.cond241
  %128 = load i8*, i8** %cp, align 8
  %incdec.ptr246 = getelementptr inbounds i8, i8* %128, i32 1
  store i8* %incdec.ptr246, i8** %cp, align 8
  br label %while.cond241

while.end247:                                     ; preds = %while.cond241
  br label %while.cond248

while.cond248:                                    ; preds = %while.body257, %while.end247
  %129 = load i8*, i8** %cp, align 8
  %130 = load i8, i8* %129, align 1
  %conv249 = zext i8 %130 to i32
  %call250 = call i32 @isalnum(i32 %conv249) #3
  %tobool251 = icmp ne i32 %call250, 0
  br i1 %tobool251, label %lor.end256, label %lor.rhs252

lor.rhs252:                                       ; preds = %while.cond248
  %131 = load i8*, i8** %cp, align 8
  %132 = load i8, i8* %131, align 1
  %conv253 = zext i8 %132 to i32
  %cmp254 = icmp eq i32 %conv253, 95
  br label %lor.end256

lor.end256:                                       ; preds = %lor.rhs252, %while.cond248
  %133 = phi i1 [ true, %while.cond248 ], [ %cmp254, %lor.rhs252 ]
  br i1 %133, label %while.body257, label %while.end260

while.body257:                                    ; preds = %lor.end256
  %134 = load %struct.sVString*, %struct.sVString** %name, align 8
  %135 = load i8*, i8** %cp, align 8
  %136 = load i8, i8* %135, align 1
  %conv258 = zext i8 %136 to i32
  call void @vStringPut(%struct.sVString* %134, i32 %conv258)
  %137 = load i8*, i8** %cp, align 8
  %incdec.ptr259 = getelementptr inbounds i8, i8* %137, i32 1
  store i8* %incdec.ptr259, i8** %cp, align 8
  br label %while.cond248

while.end260:                                     ; preds = %lor.end256
  %138 = load %struct.sVString*, %struct.sVString** %name, align 8
  %call261 = call i32 @makeSimpleTag(%struct.sVString* %138, i32 3)
  br label %do.body262

do.body262:                                       ; preds = %while.end260
  %139 = load %struct.sVString*, %struct.sVString** %name, align 8
  store %struct.sVString* %139, %struct.sVString** %vStringClear_s263, align 8
  %140 = load %struct.sVString*, %struct.sVString** %vStringClear_s263, align 8
  %length264 = getelementptr inbounds %struct.sVString, %struct.sVString* %140, i32 0, i32 0
  store i64 0, i64* %length264, align 8
  %141 = load %struct.sVString*, %struct.sVString** %vStringClear_s263, align 8
  %buffer265 = getelementptr inbounds %struct.sVString, %struct.sVString* %141, i32 0, i32 2
  %142 = load i8*, i8** %buffer265, align 8
  %arrayidx266 = getelementptr inbounds i8, i8* %142, i64 0
  store i8 0, i8* %arrayidx266, align 1
  br label %do.end267

do.end267:                                        ; preds = %do.body262
  br label %if.end289

if.else268:                                       ; preds = %if.else235
  br label %while.cond269

while.cond269:                                    ; preds = %while.body278, %if.else268
  %143 = load i8*, i8** %cp, align 8
  %144 = load i8, i8* %143, align 1
  %conv270 = zext i8 %144 to i32
  %call271 = call i32 @isalnum(i32 %conv270) #3
  %tobool272 = icmp ne i32 %call271, 0
  br i1 %tobool272, label %lor.end277, label %lor.rhs273

lor.rhs273:                                       ; preds = %while.cond269
  %145 = load i8*, i8** %cp, align 8
  %146 = load i8, i8* %145, align 1
  %conv274 = zext i8 %146 to i32
  %cmp275 = icmp eq i32 %conv274, 95
  br label %lor.end277

lor.end277:                                       ; preds = %lor.rhs273, %while.cond269
  %147 = phi i1 [ true, %while.cond269 ], [ %cmp275, %lor.rhs273 ]
  br i1 %147, label %while.body278, label %while.end281

while.body278:                                    ; preds = %lor.end277
  %148 = load %struct.sVString*, %struct.sVString** %name, align 8
  %149 = load i8*, i8** %cp, align 8
  %150 = load i8, i8* %149, align 1
  %conv279 = zext i8 %150 to i32
  call void @vStringPut(%struct.sVString* %148, i32 %conv279)
  %151 = load i8*, i8** %cp, align 8
  %incdec.ptr280 = getelementptr inbounds i8, i8* %151, i32 1
  store i8* %incdec.ptr280, i8** %cp, align 8
  br label %while.cond269

while.end281:                                     ; preds = %lor.end277
  %152 = load %struct.sVString*, %struct.sVString** %name, align 8
  %call282 = call i32 @makeSimpleTag(%struct.sVString* %152, i32 4)
  br label %do.body283

do.body283:                                       ; preds = %while.end281
  %153 = load %struct.sVString*, %struct.sVString** %name, align 8
  store %struct.sVString* %153, %struct.sVString** %vStringClear_s284, align 8
  %154 = load %struct.sVString*, %struct.sVString** %vStringClear_s284, align 8
  %length285 = getelementptr inbounds %struct.sVString, %struct.sVString* %154, i32 0, i32 0
  store i64 0, i64* %length285, align 8
  %155 = load %struct.sVString*, %struct.sVString** %vStringClear_s284, align 8
  %buffer286 = getelementptr inbounds %struct.sVString, %struct.sVString* %155, i32 0, i32 2
  %156 = load i8*, i8** %buffer286, align 8
  %arrayidx287 = getelementptr inbounds i8, i8* %156, i64 0
  store i8 0, i8* %arrayidx287, align 1
  br label %do.end288

do.end288:                                        ; preds = %do.body283
  br label %if.end289

if.end289:                                        ; preds = %do.end288, %do.end267
  br label %if.end290

if.end290:                                        ; preds = %if.end289, %do.end234
  br label %if.end291

if.end291:                                        ; preds = %if.end290, %if.then190
  br label %if.end494

if.else292:                                       ; preds = %if.else186
  %157 = load i8*, i8** %cp, align 8
  %call293 = call i32 @strncasecmp(i8* %157, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i64 8)
  %cmp294 = icmp eq i32 %call293, 0
  br i1 %cmp294, label %if.then296, label %if.else330

if.then296:                                       ; preds = %if.else292
  %158 = load i8*, i8** %cp, align 8
  %add.ptr297 = getelementptr inbounds i8, i8* %158, i64 8
  store i8* %add.ptr297, i8** %cp, align 8
  %159 = load i8*, i8** %cp, align 8
  %160 = load i8, i8* %159, align 1
  %conv298 = zext i8 %160 to i32
  %call299 = call i32 @isspace(i32 %conv298) #3
  %tobool300 = icmp ne i32 %call299, 0
  br i1 %tobool300, label %if.then301, label %if.end329

if.then301:                                       ; preds = %if.then296
  br label %while.cond302

while.cond302:                                    ; preds = %while.body306, %if.then301
  %161 = load i8*, i8** %cp, align 8
  %162 = load i8, i8* %161, align 1
  %conv303 = zext i8 %162 to i32
  %call304 = call i32 @isspace(i32 %conv303) #3
  %tobool305 = icmp ne i32 %call304, 0
  br i1 %tobool305, label %while.body306, label %while.end308

while.body306:                                    ; preds = %while.cond302
  %163 = load i8*, i8** %cp, align 8
  %incdec.ptr307 = getelementptr inbounds i8, i8* %163, i32 1
  store i8* %incdec.ptr307, i8** %cp, align 8
  br label %while.cond302

while.end308:                                     ; preds = %while.cond302
  br label %while.cond309

while.cond309:                                    ; preds = %while.body318, %while.end308
  %164 = load i8*, i8** %cp, align 8
  %165 = load i8, i8* %164, align 1
  %conv310 = zext i8 %165 to i32
  %call311 = call i32 @isalnum(i32 %conv310) #3
  %tobool312 = icmp ne i32 %call311, 0
  br i1 %tobool312, label %lor.end317, label %lor.rhs313

lor.rhs313:                                       ; preds = %while.cond309
  %166 = load i8*, i8** %cp, align 8
  %167 = load i8, i8* %166, align 1
  %conv314 = zext i8 %167 to i32
  %cmp315 = icmp eq i32 %conv314, 95
  br label %lor.end317

lor.end317:                                       ; preds = %lor.rhs313, %while.cond309
  %168 = phi i1 [ true, %while.cond309 ], [ %cmp315, %lor.rhs313 ]
  br i1 %168, label %while.body318, label %while.end321

while.body318:                                    ; preds = %lor.end317
  %169 = load %struct.sVString*, %struct.sVString** %name, align 8
  %170 = load i8*, i8** %cp, align 8
  %171 = load i8, i8* %170, align 1
  %conv319 = zext i8 %171 to i32
  call void @vStringPut(%struct.sVString* %169, i32 %conv319)
  %172 = load i8*, i8** %cp, align 8
  %incdec.ptr320 = getelementptr inbounds i8, i8* %172, i32 1
  store i8* %incdec.ptr320, i8** %cp, align 8
  br label %while.cond309

while.end321:                                     ; preds = %lor.end317
  %173 = load %struct.sVString*, %struct.sVString** %name, align 8
  %call322 = call i32 @makeSimpleTag(%struct.sVString* %173, i32 2)
  br label %do.body323

do.body323:                                       ; preds = %while.end321
  %174 = load %struct.sVString*, %struct.sVString** %name, align 8
  store %struct.sVString* %174, %struct.sVString** %vStringClear_s324, align 8
  %175 = load %struct.sVString*, %struct.sVString** %vStringClear_s324, align 8
  %length325 = getelementptr inbounds %struct.sVString, %struct.sVString* %175, i32 0, i32 0
  store i64 0, i64* %length325, align 8
  %176 = load %struct.sVString*, %struct.sVString** %vStringClear_s324, align 8
  %buffer326 = getelementptr inbounds %struct.sVString, %struct.sVString* %176, i32 0, i32 2
  %177 = load i8*, i8** %buffer326, align 8
  %arrayidx327 = getelementptr inbounds i8, i8* %177, i64 0
  store i8 0, i8* %arrayidx327, align 1
  br label %do.end328

do.end328:                                        ; preds = %do.body323
  br label %if.end329

if.end329:                                        ; preds = %do.end328, %if.then296
  br label %if.end493

if.else330:                                       ; preds = %if.else292
  %178 = load i8*, i8** %cp, align 8
  %call331 = call i32 @strncasecmp(i8* %178, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i64 3)
  %cmp332 = icmp eq i32 %call331, 0
  br i1 %cmp332, label %if.then334, label %if.else368

if.then334:                                       ; preds = %if.else330
  %179 = load i8*, i8** %cp, align 8
  %add.ptr335 = getelementptr inbounds i8, i8* %179, i64 3
  store i8* %add.ptr335, i8** %cp, align 8
  %180 = load i8*, i8** %cp, align 8
  %181 = load i8, i8* %180, align 1
  %conv336 = zext i8 %181 to i32
  %call337 = call i32 @isspace(i32 %conv336) #3
  %tobool338 = icmp ne i32 %call337, 0
  br i1 %tobool338, label %if.then339, label %if.end367

if.then339:                                       ; preds = %if.then334
  br label %while.cond340

while.cond340:                                    ; preds = %while.body344, %if.then339
  %182 = load i8*, i8** %cp, align 8
  %183 = load i8, i8* %182, align 1
  %conv341 = zext i8 %183 to i32
  %call342 = call i32 @isspace(i32 %conv341) #3
  %tobool343 = icmp ne i32 %call342, 0
  br i1 %tobool343, label %while.body344, label %while.end346

while.body344:                                    ; preds = %while.cond340
  %184 = load i8*, i8** %cp, align 8
  %incdec.ptr345 = getelementptr inbounds i8, i8* %184, i32 1
  store i8* %incdec.ptr345, i8** %cp, align 8
  br label %while.cond340

while.end346:                                     ; preds = %while.cond340
  br label %while.cond347

while.cond347:                                    ; preds = %while.body356, %while.end346
  %185 = load i8*, i8** %cp, align 8
  %186 = load i8, i8* %185, align 1
  %conv348 = zext i8 %186 to i32
  %call349 = call i32 @isalnum(i32 %conv348) #3
  %tobool350 = icmp ne i32 %call349, 0
  br i1 %tobool350, label %lor.end355, label %lor.rhs351

lor.rhs351:                                       ; preds = %while.cond347
  %187 = load i8*, i8** %cp, align 8
  %188 = load i8, i8* %187, align 1
  %conv352 = zext i8 %188 to i32
  %cmp353 = icmp eq i32 %conv352, 95
  br label %lor.end355

lor.end355:                                       ; preds = %lor.rhs351, %while.cond347
  %189 = phi i1 [ true, %while.cond347 ], [ %cmp353, %lor.rhs351 ]
  br i1 %189, label %while.body356, label %while.end359

while.body356:                                    ; preds = %lor.end355
  %190 = load %struct.sVString*, %struct.sVString** %name, align 8
  %191 = load i8*, i8** %cp, align 8
  %192 = load i8, i8* %191, align 1
  %conv357 = zext i8 %192 to i32
  call void @vStringPut(%struct.sVString* %190, i32 %conv357)
  %193 = load i8*, i8** %cp, align 8
  %incdec.ptr358 = getelementptr inbounds i8, i8* %193, i32 1
  store i8* %incdec.ptr358, i8** %cp, align 8
  br label %while.cond347

while.end359:                                     ; preds = %lor.end355
  %194 = load %struct.sVString*, %struct.sVString** %name, align 8
  %call360 = call i32 @makeSimpleTag(%struct.sVString* %194, i32 3)
  br label %do.body361

do.body361:                                       ; preds = %while.end359
  %195 = load %struct.sVString*, %struct.sVString** %name, align 8
  store %struct.sVString* %195, %struct.sVString** %vStringClear_s362, align 8
  %196 = load %struct.sVString*, %struct.sVString** %vStringClear_s362, align 8
  %length363 = getelementptr inbounds %struct.sVString, %struct.sVString* %196, i32 0, i32 0
  store i64 0, i64* %length363, align 8
  %197 = load %struct.sVString*, %struct.sVString** %vStringClear_s362, align 8
  %buffer364 = getelementptr inbounds %struct.sVString, %struct.sVString* %197, i32 0, i32 2
  %198 = load i8*, i8** %buffer364, align 8
  %arrayidx365 = getelementptr inbounds i8, i8* %198, i64 0
  store i8 0, i8* %arrayidx365, align 1
  br label %do.end366

do.end366:                                        ; preds = %do.body361
  br label %if.end367

if.end367:                                        ; preds = %do.end366, %if.then334
  br label %if.end492

if.else368:                                       ; preds = %if.else330
  %199 = load i8*, i8** %cp, align 8
  %call369 = call i32 @strncasecmp(i8* %199, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i64 3)
  %cmp370 = icmp eq i32 %call369, 0
  br i1 %cmp370, label %if.then372, label %if.else406

if.then372:                                       ; preds = %if.else368
  %200 = load i8*, i8** %cp, align 8
  %add.ptr373 = getelementptr inbounds i8, i8* %200, i64 3
  store i8* %add.ptr373, i8** %cp, align 8
  %201 = load i8*, i8** %cp, align 8
  %202 = load i8, i8* %201, align 1
  %conv374 = zext i8 %202 to i32
  %call375 = call i32 @isspace(i32 %conv374) #3
  %tobool376 = icmp ne i32 %call375, 0
  br i1 %tobool376, label %if.then377, label %if.end405

if.then377:                                       ; preds = %if.then372
  br label %while.cond378

while.cond378:                                    ; preds = %while.body382, %if.then377
  %203 = load i8*, i8** %cp, align 8
  %204 = load i8, i8* %203, align 1
  %conv379 = zext i8 %204 to i32
  %call380 = call i32 @isspace(i32 %conv379) #3
  %tobool381 = icmp ne i32 %call380, 0
  br i1 %tobool381, label %while.body382, label %while.end384

while.body382:                                    ; preds = %while.cond378
  %205 = load i8*, i8** %cp, align 8
  %incdec.ptr383 = getelementptr inbounds i8, i8* %205, i32 1
  store i8* %incdec.ptr383, i8** %cp, align 8
  br label %while.cond378

while.end384:                                     ; preds = %while.cond378
  br label %while.cond385

while.cond385:                                    ; preds = %while.body394, %while.end384
  %206 = load i8*, i8** %cp, align 8
  %207 = load i8, i8* %206, align 1
  %conv386 = zext i8 %207 to i32
  %call387 = call i32 @isalnum(i32 %conv386) #3
  %tobool388 = icmp ne i32 %call387, 0
  br i1 %tobool388, label %lor.end393, label %lor.rhs389

lor.rhs389:                                       ; preds = %while.cond385
  %208 = load i8*, i8** %cp, align 8
  %209 = load i8, i8* %208, align 1
  %conv390 = zext i8 %209 to i32
  %cmp391 = icmp eq i32 %conv390, 95
  br label %lor.end393

lor.end393:                                       ; preds = %lor.rhs389, %while.cond385
  %210 = phi i1 [ true, %while.cond385 ], [ %cmp391, %lor.rhs389 ]
  br i1 %210, label %while.body394, label %while.end397

while.body394:                                    ; preds = %lor.end393
  %211 = load %struct.sVString*, %struct.sVString** %name, align 8
  %212 = load i8*, i8** %cp, align 8
  %213 = load i8, i8* %212, align 1
  %conv395 = zext i8 %213 to i32
  call void @vStringPut(%struct.sVString* %211, i32 %conv395)
  %214 = load i8*, i8** %cp, align 8
  %incdec.ptr396 = getelementptr inbounds i8, i8* %214, i32 1
  store i8* %incdec.ptr396, i8** %cp, align 8
  br label %while.cond385

while.end397:                                     ; preds = %lor.end393
  %215 = load %struct.sVString*, %struct.sVString** %name, align 8
  %call398 = call i32 @makeSimpleTag(%struct.sVString* %215, i32 4)
  br label %do.body399

do.body399:                                       ; preds = %while.end397
  %216 = load %struct.sVString*, %struct.sVString** %name, align 8
  store %struct.sVString* %216, %struct.sVString** %vStringClear_s400, align 8
  %217 = load %struct.sVString*, %struct.sVString** %vStringClear_s400, align 8
  %length401 = getelementptr inbounds %struct.sVString, %struct.sVString* %217, i32 0, i32 0
  store i64 0, i64* %length401, align 8
  %218 = load %struct.sVString*, %struct.sVString** %vStringClear_s400, align 8
  %buffer402 = getelementptr inbounds %struct.sVString, %struct.sVString* %218, i32 0, i32 2
  %219 = load i8*, i8** %buffer402, align 8
  %arrayidx403 = getelementptr inbounds i8, i8* %219, i64 0
  store i8 0, i8* %arrayidx403, align 1
  br label %do.end404

do.end404:                                        ; preds = %do.body399
  br label %if.end405

if.end405:                                        ; preds = %do.end404, %if.then372
  br label %if.end491

if.else406:                                       ; preds = %if.else368
  %220 = load i8*, i8** %cp, align 8
  %call407 = call i32 @strncasecmp(i8* %220, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i64 5)
  %cmp408 = icmp eq i32 %call407, 0
  br i1 %cmp408, label %if.then410, label %if.else444

if.then410:                                       ; preds = %if.else406
  %221 = load i8*, i8** %cp, align 8
  %add.ptr411 = getelementptr inbounds i8, i8* %221, i64 5
  store i8* %add.ptr411, i8** %cp, align 8
  %222 = load i8*, i8** %cp, align 8
  %223 = load i8, i8* %222, align 1
  %conv412 = zext i8 %223 to i32
  %call413 = call i32 @isspace(i32 %conv412) #3
  %tobool414 = icmp ne i32 %call413, 0
  br i1 %tobool414, label %if.then415, label %if.end443

if.then415:                                       ; preds = %if.then410
  br label %while.cond416

while.cond416:                                    ; preds = %while.body420, %if.then415
  %224 = load i8*, i8** %cp, align 8
  %225 = load i8, i8* %224, align 1
  %conv417 = zext i8 %225 to i32
  %call418 = call i32 @isspace(i32 %conv417) #3
  %tobool419 = icmp ne i32 %call418, 0
  br i1 %tobool419, label %while.body420, label %while.end422

while.body420:                                    ; preds = %while.cond416
  %226 = load i8*, i8** %cp, align 8
  %incdec.ptr421 = getelementptr inbounds i8, i8* %226, i32 1
  store i8* %incdec.ptr421, i8** %cp, align 8
  br label %while.cond416

while.end422:                                     ; preds = %while.cond416
  br label %while.cond423

while.cond423:                                    ; preds = %while.body432, %while.end422
  %227 = load i8*, i8** %cp, align 8
  %228 = load i8, i8* %227, align 1
  %conv424 = zext i8 %228 to i32
  %call425 = call i32 @isalnum(i32 %conv424) #3
  %tobool426 = icmp ne i32 %call425, 0
  br i1 %tobool426, label %lor.end431, label %lor.rhs427

lor.rhs427:                                       ; preds = %while.cond423
  %229 = load i8*, i8** %cp, align 8
  %230 = load i8, i8* %229, align 1
  %conv428 = zext i8 %230 to i32
  %cmp429 = icmp eq i32 %conv428, 95
  br label %lor.end431

lor.end431:                                       ; preds = %lor.rhs427, %while.cond423
  %231 = phi i1 [ true, %while.cond423 ], [ %cmp429, %lor.rhs427 ]
  br i1 %231, label %while.body432, label %while.end435

while.body432:                                    ; preds = %lor.end431
  %232 = load %struct.sVString*, %struct.sVString** %name, align 8
  %233 = load i8*, i8** %cp, align 8
  %234 = load i8, i8* %233, align 1
  %conv433 = zext i8 %234 to i32
  call void @vStringPut(%struct.sVString* %232, i32 %conv433)
  %235 = load i8*, i8** %cp, align 8
  %incdec.ptr434 = getelementptr inbounds i8, i8* %235, i32 1
  store i8* %incdec.ptr434, i8** %cp, align 8
  br label %while.cond423

while.end435:                                     ; preds = %lor.end431
  %236 = load %struct.sVString*, %struct.sVString** %name, align 8
  %call436 = call i32 @makeSimpleTag(%struct.sVString* %236, i32 1)
  br label %do.body437

do.body437:                                       ; preds = %while.end435
  %237 = load %struct.sVString*, %struct.sVString** %name, align 8
  store %struct.sVString* %237, %struct.sVString** %vStringClear_s438, align 8
  %238 = load %struct.sVString*, %struct.sVString** %vStringClear_s438, align 8
  %length439 = getelementptr inbounds %struct.sVString, %struct.sVString* %238, i32 0, i32 0
  store i64 0, i64* %length439, align 8
  %239 = load %struct.sVString*, %struct.sVString** %vStringClear_s438, align 8
  %buffer440 = getelementptr inbounds %struct.sVString, %struct.sVString* %239, i32 0, i32 2
  %240 = load i8*, i8** %buffer440, align 8
  %arrayidx441 = getelementptr inbounds i8, i8* %240, i64 0
  store i8 0, i8* %arrayidx441, align 1
  br label %do.end442

do.end442:                                        ; preds = %do.body437
  br label %if.end443

if.end443:                                        ; preds = %do.end442, %if.then410
  br label %if.end490

if.else444:                                       ; preds = %if.else406
  %241 = load i8*, i8** %cp, align 8
  %call445 = call i32 @strncasecmp(i8* %241, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), i64 5)
  %cmp446 = icmp eq i32 %call445, 0
  br i1 %cmp446, label %if.then448, label %if.else482

if.then448:                                       ; preds = %if.else444
  %242 = load i8*, i8** %cp, align 8
  %add.ptr449 = getelementptr inbounds i8, i8* %242, i64 5
  store i8* %add.ptr449, i8** %cp, align 8
  %243 = load i8*, i8** %cp, align 8
  %244 = load i8, i8* %243, align 1
  %conv450 = zext i8 %244 to i32
  %call451 = call i32 @isspace(i32 %conv450) #3
  %tobool452 = icmp ne i32 %call451, 0
  br i1 %tobool452, label %if.then453, label %if.end481

if.then453:                                       ; preds = %if.then448
  br label %while.cond454

while.cond454:                                    ; preds = %while.body458, %if.then453
  %245 = load i8*, i8** %cp, align 8
  %246 = load i8, i8* %245, align 1
  %conv455 = zext i8 %246 to i32
  %call456 = call i32 @isspace(i32 %conv455) #3
  %tobool457 = icmp ne i32 %call456, 0
  br i1 %tobool457, label %while.body458, label %while.end460

while.body458:                                    ; preds = %while.cond454
  %247 = load i8*, i8** %cp, align 8
  %incdec.ptr459 = getelementptr inbounds i8, i8* %247, i32 1
  store i8* %incdec.ptr459, i8** %cp, align 8
  br label %while.cond454

while.end460:                                     ; preds = %while.cond454
  br label %while.cond461

while.cond461:                                    ; preds = %while.body470, %while.end460
  %248 = load i8*, i8** %cp, align 8
  %249 = load i8, i8* %248, align 1
  %conv462 = zext i8 %249 to i32
  %call463 = call i32 @isalnum(i32 %conv462) #3
  %tobool464 = icmp ne i32 %call463, 0
  br i1 %tobool464, label %lor.end469, label %lor.rhs465

lor.rhs465:                                       ; preds = %while.cond461
  %250 = load i8*, i8** %cp, align 8
  %251 = load i8, i8* %250, align 1
  %conv466 = zext i8 %251 to i32
  %cmp467 = icmp eq i32 %conv466, 95
  br label %lor.end469

lor.end469:                                       ; preds = %lor.rhs465, %while.cond461
  %252 = phi i1 [ true, %while.cond461 ], [ %cmp467, %lor.rhs465 ]
  br i1 %252, label %while.body470, label %while.end473

while.body470:                                    ; preds = %lor.end469
  %253 = load %struct.sVString*, %struct.sVString** %name, align 8
  %254 = load i8*, i8** %cp, align 8
  %255 = load i8, i8* %254, align 1
  %conv471 = zext i8 %255 to i32
  call void @vStringPut(%struct.sVString* %253, i32 %conv471)
  %256 = load i8*, i8** %cp, align 8
  %incdec.ptr472 = getelementptr inbounds i8, i8* %256, i32 1
  store i8* %incdec.ptr472, i8** %cp, align 8
  br label %while.cond461

while.end473:                                     ; preds = %lor.end469
  %257 = load %struct.sVString*, %struct.sVString** %name, align 8
  %call474 = call i32 @makeSimpleTag(%struct.sVString* %257, i32 0)
  br label %do.body475

do.body475:                                       ; preds = %while.end473
  %258 = load %struct.sVString*, %struct.sVString** %name, align 8
  store %struct.sVString* %258, %struct.sVString** %vStringClear_s476, align 8
  %259 = load %struct.sVString*, %struct.sVString** %vStringClear_s476, align 8
  %length477 = getelementptr inbounds %struct.sVString, %struct.sVString* %259, i32 0, i32 0
  store i64 0, i64* %length477, align 8
  %260 = load %struct.sVString*, %struct.sVString** %vStringClear_s476, align 8
  %buffer478 = getelementptr inbounds %struct.sVString, %struct.sVString* %260, i32 0, i32 2
  %261 = load i8*, i8** %buffer478, align 8
  %arrayidx479 = getelementptr inbounds i8, i8* %261, i64 0
  store i8 0, i8* %arrayidx479, align 1
  br label %do.end480

do.end480:                                        ; preds = %do.body475
  br label %if.end481

if.end481:                                        ; preds = %do.end480, %if.then448
  br label %if.end489

if.else482:                                       ; preds = %if.else444
  %262 = load i8*, i8** %cp, align 8
  %263 = load i8, i8* %262, align 1
  %conv483 = zext i8 %263 to i32
  %cmp484 = icmp ne i32 %conv483, 0
  br i1 %cmp484, label %if.then486, label %if.end488

if.then486:                                       ; preds = %if.else482
  %264 = load i8*, i8** %cp, align 8
  %incdec.ptr487 = getelementptr inbounds i8, i8* %264, i32 1
  store i8* %incdec.ptr487, i8** %cp, align 8
  br label %if.end488

if.end488:                                        ; preds = %if.then486, %if.else482
  br label %if.end489

if.end489:                                        ; preds = %if.end488, %if.end481
  br label %if.end490

if.end490:                                        ; preds = %if.end489, %if.end443
  br label %if.end491

if.end491:                                        ; preds = %if.end490, %if.end405
  br label %if.end492

if.end492:                                        ; preds = %if.end491, %if.end367
  br label %if.end493

if.end493:                                        ; preds = %if.end492, %if.end329
  br label %if.end494

if.end494:                                        ; preds = %if.end493, %if.end291
  br label %if.end495

if.end495:                                        ; preds = %if.end494, %if.end185
  br label %if.end496

if.end496:                                        ; preds = %if.end495, %if.end87
  br label %if.end497

if.end497:                                        ; preds = %if.end496, %if.end56
  br label %if.end498

if.end498:                                        ; preds = %if.end497
  br label %if.end499

if.end499:                                        ; preds = %if.end498, %while.end23
  br label %while.cond2

while.end500:                                     ; preds = %if.then83, %if.then77, %if.then53, %if.then47, %if.then27, %while.cond2
  br label %while.cond

while.end501:                                     ; preds = %while.cond
  %265 = load %struct.sVString*, %struct.sVString** %name, align 8
  call void @vStringDelete(%struct.sVString* %265)
  ret void
}

declare %struct.sVString* @vStringNew() #1

declare i8* @readLineFromInputFile() #1

; Function Attrs: nounwind readonly
declare i32 @isspace(i32) #2

declare i32 @strncasecmp(i8*, i8*, i64) #1

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
