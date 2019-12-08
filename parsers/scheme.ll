; ModuleID = 'scheme.c'
source_filename = "scheme.c"
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

@.str = private unnamed_addr constant [7 x i8] c"Scheme\00", align 1
@SchemeKinds = internal global [2 x %struct.sKindDefinition] [%struct.sKindDefinition { i8 1, i8 102, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 115, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }], align 8
@extensions = internal constant [7 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i8* null], align 8
@aliases = internal constant [3 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i8* null], align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"function\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"functions\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"sets\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"SCM\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"SM\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"sch\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"scheme\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"scm\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"sm\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"gosh\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"guile\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sParserDefinition* @SchemeParser() #0 {
entry:
  %def = alloca %struct.sParserDefinition*, align 8
  %call = call %struct.sParserDefinition* @parserNew(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store %struct.sParserDefinition* %call, %struct.sParserDefinition** %def, align 8
  %0 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %0, i32 0, i32 1
  store %struct.sKindDefinition* getelementptr inbounds ([2 x %struct.sKindDefinition], [2 x %struct.sKindDefinition]* @SchemeKinds, i64 0, i64 0), %struct.sKindDefinition** %kindTable, align 8
  %1 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %1, i32 0, i32 2
  store i32 2, i32* %kindCount, align 8
  %2 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %extensions = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %2, i32 0, i32 3
  store i8** getelementptr inbounds ([7 x i8*], [7 x i8*]* @extensions, i64 0, i64 0), i8*** %extensions, align 8
  %3 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %aliases = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %3, i32 0, i32 5
  store i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @aliases, i64 0, i64 0), i8*** %aliases, align 8
  %4 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %parser = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %4, i32 0, i32 8
  store void ()* @findSchemeTags, void ()** %parser, align 8
  %5 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  ret %struct.sParserDefinition* %5
}

declare %struct.sParserDefinition* @parserNew(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @findSchemeTags() #0 {
entry:
  %name = alloca %struct.sVString*, align 8
  %line = alloca i8*, align 8
  %cp = alloca i8*, align 8
  %call = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call, %struct.sVString** %name, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end144, %entry
  %call1 = call i8* @readLineFromInputFile()
  store i8* %call1, i8** %line, align 8
  %cmp = icmp ne i8* %call1, null
  br i1 %cmp, label %while.body, label %while.end145

while.body:                                       ; preds = %while.cond
  %0 = load i8*, i8** %line, align 8
  store i8* %0, i8** %cp, align 8
  %1 = load i8*, i8** %cp, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %cmp2 = icmp eq i32 %conv, 40
  br i1 %cmp2, label %land.lhs.true, label %if.end65

land.lhs.true:                                    ; preds = %while.body
  %3 = load i8*, i8** %cp, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %3, i64 1
  %4 = load i8, i8* %arrayidx4, align 1
  %conv5 = zext i8 %4 to i32
  %cmp6 = icmp eq i32 %conv5, 68
  br i1 %cmp6, label %land.lhs.true12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %5 = load i8*, i8** %cp, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %5, i64 1
  %6 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %6 to i32
  %cmp10 = icmp eq i32 %conv9, 100
  br i1 %cmp10, label %land.lhs.true12, label %if.end65

land.lhs.true12:                                  ; preds = %lor.lhs.false, %land.lhs.true
  %7 = load i8*, i8** %cp, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %7, i64 2
  %8 = load i8, i8* %arrayidx13, align 1
  %conv14 = zext i8 %8 to i32
  %cmp15 = icmp eq i32 %conv14, 69
  br i1 %cmp15, label %land.lhs.true22, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %land.lhs.true12
  %9 = load i8*, i8** %cp, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %9, i64 2
  %10 = load i8, i8* %arrayidx18, align 1
  %conv19 = zext i8 %10 to i32
  %cmp20 = icmp eq i32 %conv19, 101
  br i1 %cmp20, label %land.lhs.true22, label %if.end65

land.lhs.true22:                                  ; preds = %lor.lhs.false17, %land.lhs.true12
  %11 = load i8*, i8** %cp, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %11, i64 3
  %12 = load i8, i8* %arrayidx23, align 1
  %conv24 = zext i8 %12 to i32
  %cmp25 = icmp eq i32 %conv24, 70
  br i1 %cmp25, label %if.then, label %lor.lhs.false27

lor.lhs.false27:                                  ; preds = %land.lhs.true22
  %13 = load i8*, i8** %cp, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %13, i64 3
  %14 = load i8, i8* %arrayidx28, align 1
  %conv29 = zext i8 %14 to i32
  %cmp30 = icmp eq i32 %conv29, 102
  br i1 %cmp30, label %if.then, label %if.end65

if.then:                                          ; preds = %lor.lhs.false27, %land.lhs.true22
  br label %while.cond32

while.cond32:                                     ; preds = %while.body38, %if.then
  %15 = load i8*, i8** %cp, align 8
  %16 = load i8, i8* %15, align 1
  %conv33 = zext i8 %16 to i32
  %cmp34 = icmp ne i32 %conv33, 0
  br i1 %cmp34, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond32
  %17 = load i8*, i8** %cp, align 8
  %18 = load i8, i8* %17, align 1
  %conv36 = zext i8 %18 to i32
  %call37 = call i32 @isspace(i32 %conv36) #3
  %tobool = icmp ne i32 %call37, 0
  %lnot = xor i1 %tobool, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond32
  %19 = phi i1 [ false, %while.cond32 ], [ %lnot, %land.rhs ]
  br i1 %19, label %while.body38, label %while.end

while.body38:                                     ; preds = %land.end
  %20 = load i8*, i8** %cp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr, i8** %cp, align 8
  br label %while.cond32

while.end:                                        ; preds = %land.end
  br label %do.body

do.body:                                          ; preds = %do.cond, %while.end
  br label %while.cond39

while.cond39:                                     ; preds = %while.body51, %do.body
  %21 = load i8*, i8** %cp, align 8
  %22 = load i8, i8* %21, align 1
  %conv40 = zext i8 %22 to i32
  %cmp41 = icmp ne i32 %conv40, 0
  br i1 %cmp41, label %land.rhs43, label %land.end50

land.rhs43:                                       ; preds = %while.cond39
  %23 = load i8*, i8** %cp, align 8
  %24 = load i8, i8* %23, align 1
  %conv44 = zext i8 %24 to i32
  %call45 = call i32 @isspace(i32 %conv44) #3
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs43
  %25 = load i8*, i8** %cp, align 8
  %26 = load i8, i8* %25, align 1
  %conv47 = zext i8 %26 to i32
  %cmp48 = icmp eq i32 %conv47, 40
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs43
  %27 = phi i1 [ true, %land.rhs43 ], [ %cmp48, %lor.rhs ]
  br label %land.end50

land.end50:                                       ; preds = %lor.end, %while.cond39
  %28 = phi i1 [ false, %while.cond39 ], [ %27, %lor.end ]
  br i1 %28, label %while.body51, label %while.end53

while.body51:                                     ; preds = %land.end50
  %29 = load i8*, i8** %cp, align 8
  %incdec.ptr52 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr52, i8** %cp, align 8
  br label %while.cond39

while.end53:                                      ; preds = %land.end50
  %30 = load i8*, i8** %cp, align 8
  %31 = load i8, i8* %30, align 1
  %conv54 = zext i8 %31 to i32
  %cmp55 = icmp eq i32 %conv54, 0
  br i1 %cmp55, label %if.then57, label %if.else

if.then57:                                        ; preds = %while.end53
  %call58 = call i8* @readLineFromInputFile()
  store i8* %call58, i8** %line, align 8
  store i8* %call58, i8** %cp, align 8
  br label %if.end

if.else:                                          ; preds = %while.end53
  br label %do.end

if.end:                                           ; preds = %if.then57
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %32 = load i8*, i8** %line, align 8
  %tobool59 = icmp ne i8* %32, null
  br i1 %tobool59, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.else
  %33 = load i8*, i8** %line, align 8
  %cmp60 = icmp eq i8* %33, null
  br i1 %cmp60, label %if.then62, label %if.end63

if.then62:                                        ; preds = %do.end
  br label %while.end145

if.end63:                                         ; preds = %do.end
  %34 = load %struct.sVString*, %struct.sVString** %name, align 8
  %35 = load i8*, i8** %cp, align 8
  call void @readIdentifier(%struct.sVString* %34, i8* %35)
  %36 = load %struct.sVString*, %struct.sVString** %name, align 8
  %call64 = call i32 @makeSimpleTag(%struct.sVString* %36, i32 0)
  br label %if.end65

if.end65:                                         ; preds = %if.end63, %lor.lhs.false27, %lor.lhs.false17, %lor.lhs.false, %while.body
  %37 = load i8*, i8** %cp, align 8
  %arrayidx66 = getelementptr inbounds i8, i8* %37, i64 0
  %38 = load i8, i8* %arrayidx66, align 1
  %conv67 = zext i8 %38 to i32
  %cmp68 = icmp eq i32 %conv67, 40
  br i1 %cmp68, label %land.lhs.true70, label %if.end144

land.lhs.true70:                                  ; preds = %if.end65
  %39 = load i8*, i8** %cp, align 8
  %arrayidx71 = getelementptr inbounds i8, i8* %39, i64 1
  %40 = load i8, i8* %arrayidx71, align 1
  %conv72 = zext i8 %40 to i32
  %cmp73 = icmp eq i32 %conv72, 83
  br i1 %cmp73, label %land.lhs.true80, label %lor.lhs.false75

lor.lhs.false75:                                  ; preds = %land.lhs.true70
  %41 = load i8*, i8** %cp, align 8
  %arrayidx76 = getelementptr inbounds i8, i8* %41, i64 1
  %42 = load i8, i8* %arrayidx76, align 1
  %conv77 = zext i8 %42 to i32
  %cmp78 = icmp eq i32 %conv77, 115
  br i1 %cmp78, label %land.lhs.true80, label %if.end144

land.lhs.true80:                                  ; preds = %lor.lhs.false75, %land.lhs.true70
  %43 = load i8*, i8** %cp, align 8
  %arrayidx81 = getelementptr inbounds i8, i8* %43, i64 2
  %44 = load i8, i8* %arrayidx81, align 1
  %conv82 = zext i8 %44 to i32
  %cmp83 = icmp eq i32 %conv82, 69
  br i1 %cmp83, label %land.lhs.true90, label %lor.lhs.false85

lor.lhs.false85:                                  ; preds = %land.lhs.true80
  %45 = load i8*, i8** %cp, align 8
  %arrayidx86 = getelementptr inbounds i8, i8* %45, i64 2
  %46 = load i8, i8* %arrayidx86, align 1
  %conv87 = zext i8 %46 to i32
  %cmp88 = icmp eq i32 %conv87, 101
  br i1 %cmp88, label %land.lhs.true90, label %if.end144

land.lhs.true90:                                  ; preds = %lor.lhs.false85, %land.lhs.true80
  %47 = load i8*, i8** %cp, align 8
  %arrayidx91 = getelementptr inbounds i8, i8* %47, i64 3
  %48 = load i8, i8* %arrayidx91, align 1
  %conv92 = zext i8 %48 to i32
  %cmp93 = icmp eq i32 %conv92, 84
  br i1 %cmp93, label %land.lhs.true100, label %lor.lhs.false95

lor.lhs.false95:                                  ; preds = %land.lhs.true90
  %49 = load i8*, i8** %cp, align 8
  %arrayidx96 = getelementptr inbounds i8, i8* %49, i64 3
  %50 = load i8, i8* %arrayidx96, align 1
  %conv97 = zext i8 %50 to i32
  %cmp98 = icmp eq i32 %conv97, 116
  br i1 %cmp98, label %land.lhs.true100, label %if.end144

land.lhs.true100:                                 ; preds = %lor.lhs.false95, %land.lhs.true90
  %51 = load i8*, i8** %cp, align 8
  %arrayidx101 = getelementptr inbounds i8, i8* %51, i64 4
  %52 = load i8, i8* %arrayidx101, align 1
  %conv102 = zext i8 %52 to i32
  %cmp103 = icmp eq i32 %conv102, 33
  br i1 %cmp103, label %land.lhs.true105, label %if.end144

land.lhs.true105:                                 ; preds = %land.lhs.true100
  %53 = load i8*, i8** %cp, align 8
  %arrayidx106 = getelementptr inbounds i8, i8* %53, i64 5
  %54 = load i8, i8* %arrayidx106, align 1
  %conv107 = zext i8 %54 to i32
  %call108 = call i32 @isspace(i32 %conv107) #3
  %tobool109 = icmp ne i32 %call108, 0
  br i1 %tobool109, label %if.then115, label %lor.lhs.false110

lor.lhs.false110:                                 ; preds = %land.lhs.true105
  %55 = load i8*, i8** %cp, align 8
  %arrayidx111 = getelementptr inbounds i8, i8* %55, i64 5
  %56 = load i8, i8* %arrayidx111, align 1
  %conv112 = zext i8 %56 to i32
  %cmp113 = icmp eq i32 %conv112, 0
  br i1 %cmp113, label %if.then115, label %if.end144

if.then115:                                       ; preds = %lor.lhs.false110, %land.lhs.true105
  %57 = load i8*, i8** %cp, align 8
  %add.ptr = getelementptr inbounds i8, i8* %57, i64 5
  store i8* %add.ptr, i8** %cp, align 8
  br label %do.body116

do.body116:                                       ; preds = %do.cond136, %if.then115
  br label %while.cond117

while.cond117:                                    ; preds = %while.body126, %do.body116
  %58 = load i8*, i8** %cp, align 8
  %59 = load i8, i8* %58, align 1
  %conv118 = zext i8 %59 to i32
  %cmp119 = icmp ne i32 %conv118, 0
  br i1 %cmp119, label %land.rhs121, label %land.end125

land.rhs121:                                      ; preds = %while.cond117
  %60 = load i8*, i8** %cp, align 8
  %61 = load i8, i8* %60, align 1
  %conv122 = zext i8 %61 to i32
  %call123 = call i32 @isspace(i32 %conv122) #3
  %tobool124 = icmp ne i32 %call123, 0
  br label %land.end125

land.end125:                                      ; preds = %land.rhs121, %while.cond117
  %62 = phi i1 [ false, %while.cond117 ], [ %tobool124, %land.rhs121 ]
  br i1 %62, label %while.body126, label %while.end128

while.body126:                                    ; preds = %land.end125
  %63 = load i8*, i8** %cp, align 8
  %incdec.ptr127 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %incdec.ptr127, i8** %cp, align 8
  br label %while.cond117

while.end128:                                     ; preds = %land.end125
  %64 = load i8*, i8** %cp, align 8
  %65 = load i8, i8* %64, align 1
  %conv129 = zext i8 %65 to i32
  %cmp130 = icmp eq i32 %conv129, 0
  br i1 %cmp130, label %if.then132, label %if.else134

if.then132:                                       ; preds = %while.end128
  %call133 = call i8* @readLineFromInputFile()
  store i8* %call133, i8** %line, align 8
  store i8* %call133, i8** %cp, align 8
  br label %if.end135

if.else134:                                       ; preds = %while.end128
  br label %do.end138

if.end135:                                        ; preds = %if.then132
  br label %do.cond136

do.cond136:                                       ; preds = %if.end135
  %66 = load i8*, i8** %line, align 8
  %tobool137 = icmp ne i8* %66, null
  br i1 %tobool137, label %do.body116, label %do.end138

do.end138:                                        ; preds = %do.cond136, %if.else134
  %67 = load i8*, i8** %line, align 8
  %cmp139 = icmp eq i8* %67, null
  br i1 %cmp139, label %if.then141, label %if.end142

if.then141:                                       ; preds = %do.end138
  br label %while.end145

if.end142:                                        ; preds = %do.end138
  %68 = load %struct.sVString*, %struct.sVString** %name, align 8
  %69 = load i8*, i8** %cp, align 8
  call void @readIdentifier(%struct.sVString* %68, i8* %69)
  %70 = load %struct.sVString*, %struct.sVString** %name, align 8
  %call143 = call i32 @makeSimpleTag(%struct.sVString* %70, i32 1)
  br label %if.end144

if.end144:                                        ; preds = %if.end142, %lor.lhs.false110, %land.lhs.true100, %lor.lhs.false95, %lor.lhs.false85, %lor.lhs.false75, %if.end65
  br label %while.cond

while.end145:                                     ; preds = %if.then141, %if.then62, %while.cond
  %71 = load %struct.sVString*, %struct.sVString** %name, align 8
  call void @vStringDelete(%struct.sVString* %71)
  ret void
}

declare %struct.sVString* @vStringNew() #1

declare i8* @readLineFromInputFile() #1

; Function Attrs: nounwind readonly
declare i32 @isspace(i32) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @readIdentifier(%struct.sVString* %name, i8* %cp) #0 {
entry:
  %name.addr = alloca %struct.sVString*, align 8
  %cp.addr = alloca i8*, align 8
  %p = alloca i8*, align 8
  %vStringClear_s = alloca %struct.sVString*, align 8
  store %struct.sVString* %name, %struct.sVString** %name.addr, align 8
  store i8* %cp, i8** %cp.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.sVString*, %struct.sVString** %name.addr, align 8
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
  %4 = load i8*, i8** %cp.addr, align 8
  store i8* %4, i8** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %5 = load i8*, i8** %p, align 8
  %6 = load i8, i8* %5, align 1
  %conv = zext i8 %6 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %for.cond
  %7 = load i8*, i8** %p, align 8
  %8 = load i8, i8* %7, align 1
  %conv2 = zext i8 %8 to i32
  %cmp3 = icmp ne i32 %conv2, 40
  br i1 %cmp3, label %land.lhs.true5, label %land.end

land.lhs.true5:                                   ; preds = %land.lhs.true
  %9 = load i8*, i8** %p, align 8
  %10 = load i8, i8* %9, align 1
  %conv6 = zext i8 %10 to i32
  %cmp7 = icmp ne i32 %conv6, 41
  br i1 %cmp7, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true5
  %11 = load i8*, i8** %p, align 8
  %12 = load i8, i8* %11, align 1
  %conv9 = zext i8 %12 to i32
  %call = call i32 @isspace(i32 %conv9) #3
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true5, %land.lhs.true, %for.cond
  %13 = phi i1 [ false, %land.lhs.true5 ], [ false, %land.lhs.true ], [ false, %for.cond ], [ %lnot, %land.rhs ]
  br i1 %13, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %14 = load %struct.sVString*, %struct.sVString** %name.addr, align 8
  %15 = load i8*, i8** %p, align 8
  %16 = load i8, i8* %15, align 1
  %conv10 = zext i8 %16 to i32
  call void @vStringPut(%struct.sVString* %14, i32 %conv10)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  ret void
}

declare i32 @makeSimpleTag(%struct.sVString*, i32) #1

declare void @vStringDelete(%struct.sVString*) #1

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
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 10.0.0 (https://github.com/holzschu/clang.git 0cfc630fbdb62e96720b611a57123ef3eb13e297) (https://github.com/holzschu/llvm.git 0d8a71e39b28502c24718f7e74b5acbcfe36dfe0)"}
