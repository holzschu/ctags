; ModuleID = 'autoit.c'
source_filename = "autoit.c"
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

@.str = private unnamed_addr constant [7 x i8] c"AutoIt\00", align 1
@AutoItKinds = internal global [2 x %struct.sKindDefinition] [%struct.sKindDefinition { i8 1, i8 102, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 114, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }], align 8
@extensions = internal global [5 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i8* null], align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"func\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"functions\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"region\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"regions\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"au3\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"AU3\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"aU3\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"Au3\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sParserDefinition* @AutoItParser() #0 {
entry:
  %def = alloca %struct.sParserDefinition*, align 8
  %call = call %struct.sParserDefinition* @parserNew(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store %struct.sParserDefinition* %call, %struct.sParserDefinition** %def, align 8
  %0 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %0, i32 0, i32 1
  store %struct.sKindDefinition* getelementptr inbounds ([2 x %struct.sKindDefinition], [2 x %struct.sKindDefinition]* @AutoItKinds, i64 0, i64 0), %struct.sKindDefinition** %kindTable, align 8
  %1 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %1, i32 0, i32 2
  store i32 2, i32* %kindCount, align 8
  %2 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %extensions = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %2, i32 0, i32 3
  store i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @extensions, i64 0, i64 0), i8*** %extensions, align 8
  %3 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %parser = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %3, i32 0, i32 8
  store void ()* @findAutoItTags, void ()** %parser, align 8
  %4 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  ret %struct.sParserDefinition* %4
}

declare %struct.sParserDefinition* @parserNew(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @findAutoItTags() #0 {
entry:
  %name = alloca %struct.sVString*, align 8
  %line = alloca i8*, align 8
  %p = alloca i8*, align 8
  %vStringClear_s = alloca %struct.sVString*, align 8
  %vStringClear_s177 = alloca %struct.sVString*, align 8
  %call = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call, %struct.sVString** %name, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end184, %entry
  %call1 = call i8* @readLineFromInputFile()
  store i8* %call1, i8** %line, align 8
  %cmp = icmp ne i8* %call1, null
  br i1 %cmp, label %while.body, label %while.end185

while.body:                                       ; preds = %while.cond
  %0 = load i8*, i8** %line, align 8
  store i8* %0, i8** %p, align 8
  %1 = load i8*, i8** %p, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %cmp2 = icmp eq i32 %conv, 35
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %3 = load i8*, i8** %p, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %3, i64 1
  %4 = load i8, i8* %arrayidx4, align 1
  %conv5 = zext i8 %4 to i32
  %cmp6 = icmp eq i32 %conv5, 82
  br i1 %cmp6, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %5 = load i8*, i8** %p, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %5, i64 1
  %6 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %6 to i32
  %cmp10 = icmp eq i32 %conv9, 114
  br i1 %cmp10, label %land.lhs.true, label %if.end84

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.then
  %7 = load i8*, i8** %p, align 8
  %call12 = call i64 @strlen(i8* %7)
  %cmp13 = icmp ugt i64 %call12, 8
  br i1 %cmp13, label %land.lhs.true15, label %if.end84

land.lhs.true15:                                  ; preds = %land.lhs.true
  %8 = load i8*, i8** %p, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %8, i64 2
  %9 = load i8, i8* %arrayidx16, align 1
  %conv17 = zext i8 %9 to i32
  %cmp18 = icmp eq i32 %conv17, 69
  br i1 %cmp18, label %land.lhs.true25, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %land.lhs.true15
  %10 = load i8*, i8** %p, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %10, i64 2
  %11 = load i8, i8* %arrayidx21, align 1
  %conv22 = zext i8 %11 to i32
  %cmp23 = icmp eq i32 %conv22, 101
  br i1 %cmp23, label %land.lhs.true25, label %if.end84

land.lhs.true25:                                  ; preds = %lor.lhs.false20, %land.lhs.true15
  %12 = load i8*, i8** %p, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %12, i64 3
  %13 = load i8, i8* %arrayidx26, align 1
  %conv27 = zext i8 %13 to i32
  %cmp28 = icmp eq i32 %conv27, 71
  br i1 %cmp28, label %land.lhs.true35, label %lor.lhs.false30

lor.lhs.false30:                                  ; preds = %land.lhs.true25
  %14 = load i8*, i8** %p, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %14, i64 3
  %15 = load i8, i8* %arrayidx31, align 1
  %conv32 = zext i8 %15 to i32
  %cmp33 = icmp eq i32 %conv32, 103
  br i1 %cmp33, label %land.lhs.true35, label %if.end84

land.lhs.true35:                                  ; preds = %lor.lhs.false30, %land.lhs.true25
  %16 = load i8*, i8** %p, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %16, i64 4
  %17 = load i8, i8* %arrayidx36, align 1
  %conv37 = zext i8 %17 to i32
  %cmp38 = icmp eq i32 %conv37, 73
  br i1 %cmp38, label %land.lhs.true45, label %lor.lhs.false40

lor.lhs.false40:                                  ; preds = %land.lhs.true35
  %18 = load i8*, i8** %p, align 8
  %arrayidx41 = getelementptr inbounds i8, i8* %18, i64 4
  %19 = load i8, i8* %arrayidx41, align 1
  %conv42 = zext i8 %19 to i32
  %cmp43 = icmp eq i32 %conv42, 105
  br i1 %cmp43, label %land.lhs.true45, label %if.end84

land.lhs.true45:                                  ; preds = %lor.lhs.false40, %land.lhs.true35
  %20 = load i8*, i8** %p, align 8
  %arrayidx46 = getelementptr inbounds i8, i8* %20, i64 5
  %21 = load i8, i8* %arrayidx46, align 1
  %conv47 = zext i8 %21 to i32
  %cmp48 = icmp eq i32 %conv47, 79
  br i1 %cmp48, label %land.lhs.true55, label %lor.lhs.false50

lor.lhs.false50:                                  ; preds = %land.lhs.true45
  %22 = load i8*, i8** %p, align 8
  %arrayidx51 = getelementptr inbounds i8, i8* %22, i64 5
  %23 = load i8, i8* %arrayidx51, align 1
  %conv52 = zext i8 %23 to i32
  %cmp53 = icmp eq i32 %conv52, 111
  br i1 %cmp53, label %land.lhs.true55, label %if.end84

land.lhs.true55:                                  ; preds = %lor.lhs.false50, %land.lhs.true45
  %24 = load i8*, i8** %p, align 8
  %arrayidx56 = getelementptr inbounds i8, i8* %24, i64 6
  %25 = load i8, i8* %arrayidx56, align 1
  %conv57 = zext i8 %25 to i32
  %cmp58 = icmp eq i32 %conv57, 78
  br i1 %cmp58, label %if.then65, label %lor.lhs.false60

lor.lhs.false60:                                  ; preds = %land.lhs.true55
  %26 = load i8*, i8** %p, align 8
  %arrayidx61 = getelementptr inbounds i8, i8* %26, i64 6
  %27 = load i8, i8* %arrayidx61, align 1
  %conv62 = zext i8 %27 to i32
  %cmp63 = icmp eq i32 %conv62, 110
  br i1 %cmp63, label %if.then65, label %if.end84

if.then65:                                        ; preds = %lor.lhs.false60, %land.lhs.true55
  %28 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %28, i64 7
  store i8* %add.ptr, i8** %p, align 8
  br label %while.cond66

while.cond66:                                     ; preds = %while.body69, %if.then65
  %29 = load i8*, i8** %p, align 8
  %30 = load i8, i8* %29, align 1
  %conv67 = zext i8 %30 to i32
  %call68 = call i32 @isspace(i32 %conv67) #3
  %tobool = icmp ne i32 %call68, 0
  br i1 %tobool, label %while.body69, label %while.end

while.body69:                                     ; preds = %while.cond66
  %31 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %while.cond66

while.end:                                        ; preds = %while.cond66
  br label %while.cond70

while.cond70:                                     ; preds = %while.body74, %while.end
  %32 = load i8*, i8** %p, align 8
  %33 = load i8, i8* %32, align 1
  %conv71 = zext i8 %33 to i32
  %cmp72 = icmp ne i32 %conv71, 0
  br i1 %cmp72, label %while.body74, label %while.end77

while.body74:                                     ; preds = %while.cond70
  %34 = load %struct.sVString*, %struct.sVString** %name, align 8
  %35 = load i8*, i8** %p, align 8
  %36 = load i8, i8* %35, align 1
  %conv75 = zext i8 %36 to i32
  call void @vStringPut(%struct.sVString* %34, i32 %conv75)
  %37 = load i8*, i8** %p, align 8
  %incdec.ptr76 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %incdec.ptr76, i8** %p, align 8
  br label %while.cond70

while.end77:                                      ; preds = %while.cond70
  %38 = load %struct.sVString*, %struct.sVString** %name, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %38, i32 0, i32 0
  %39 = load i64, i64* %length, align 8
  %cmp78 = icmp ugt i64 %39, 0
  br i1 %cmp78, label %if.then80, label %if.end

if.then80:                                        ; preds = %while.end77
  %40 = load %struct.sVString*, %struct.sVString** %name, align 8
  %call81 = call i32 @makeSimpleTag(%struct.sVString* %40, i32 1)
  br label %do.body

do.body:                                          ; preds = %if.then80
  %41 = load %struct.sVString*, %struct.sVString** %name, align 8
  store %struct.sVString* %41, %struct.sVString** %vStringClear_s, align 8
  %42 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %length82 = getelementptr inbounds %struct.sVString, %struct.sVString* %42, i32 0, i32 0
  store i64 0, i64* %length82, align 8
  %43 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %43, i32 0, i32 2
  %44 = load i8*, i8** %buffer, align 8
  %arrayidx83 = getelementptr inbounds i8, i8* %44, i64 0
  store i8 0, i8* %arrayidx83, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %if.end

if.end:                                           ; preds = %do.end, %while.end77
  br label %if.end84

if.end84:                                         ; preds = %if.end, %lor.lhs.false60, %lor.lhs.false50, %lor.lhs.false40, %lor.lhs.false30, %lor.lhs.false20, %land.lhs.true, %lor.lhs.false
  br label %if.end184

if.else:                                          ; preds = %while.body
  br label %while.cond85

while.cond85:                                     ; preds = %while.body89, %if.else
  %45 = load i8*, i8** %p, align 8
  %46 = load i8, i8* %45, align 1
  %conv86 = zext i8 %46 to i32
  %call87 = call i32 @isspace(i32 %conv86) #3
  %tobool88 = icmp ne i32 %call87, 0
  br i1 %tobool88, label %while.body89, label %while.end91

while.body89:                                     ; preds = %while.cond85
  %47 = load i8*, i8** %p, align 8
  %incdec.ptr90 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %incdec.ptr90, i8** %p, align 8
  br label %while.cond85

while.end91:                                      ; preds = %while.cond85
  %48 = load i8*, i8** %p, align 8
  %arrayidx92 = getelementptr inbounds i8, i8* %48, i64 0
  %49 = load i8, i8* %arrayidx92, align 1
  %conv93 = zext i8 %49 to i32
  %cmp94 = icmp eq i32 %conv93, 70
  br i1 %cmp94, label %land.lhs.true101, label %lor.lhs.false96

lor.lhs.false96:                                  ; preds = %while.end91
  %50 = load i8*, i8** %p, align 8
  %arrayidx97 = getelementptr inbounds i8, i8* %50, i64 0
  %51 = load i8, i8* %arrayidx97, align 1
  %conv98 = zext i8 %51 to i32
  %cmp99 = icmp eq i32 %conv98, 102
  br i1 %cmp99, label %land.lhs.true101, label %if.end183

land.lhs.true101:                                 ; preds = %lor.lhs.false96, %while.end91
  %52 = load i8*, i8** %p, align 8
  %call102 = call i64 @strlen(i8* %52)
  %cmp103 = icmp uge i64 %call102, 8
  br i1 %cmp103, label %land.lhs.true105, label %if.end183

land.lhs.true105:                                 ; preds = %land.lhs.true101
  %53 = load i8*, i8** %p, align 8
  %arrayidx106 = getelementptr inbounds i8, i8* %53, i64 1
  %54 = load i8, i8* %arrayidx106, align 1
  %conv107 = zext i8 %54 to i32
  %cmp108 = icmp eq i32 %conv107, 85
  br i1 %cmp108, label %land.lhs.true115, label %lor.lhs.false110

lor.lhs.false110:                                 ; preds = %land.lhs.true105
  %55 = load i8*, i8** %p, align 8
  %arrayidx111 = getelementptr inbounds i8, i8* %55, i64 1
  %56 = load i8, i8* %arrayidx111, align 1
  %conv112 = zext i8 %56 to i32
  %cmp113 = icmp eq i32 %conv112, 117
  br i1 %cmp113, label %land.lhs.true115, label %if.end183

land.lhs.true115:                                 ; preds = %lor.lhs.false110, %land.lhs.true105
  %57 = load i8*, i8** %p, align 8
  %arrayidx116 = getelementptr inbounds i8, i8* %57, i64 2
  %58 = load i8, i8* %arrayidx116, align 1
  %conv117 = zext i8 %58 to i32
  %cmp118 = icmp eq i32 %conv117, 78
  br i1 %cmp118, label %land.lhs.true125, label %lor.lhs.false120

lor.lhs.false120:                                 ; preds = %land.lhs.true115
  %59 = load i8*, i8** %p, align 8
  %arrayidx121 = getelementptr inbounds i8, i8* %59, i64 2
  %60 = load i8, i8* %arrayidx121, align 1
  %conv122 = zext i8 %60 to i32
  %cmp123 = icmp eq i32 %conv122, 110
  br i1 %cmp123, label %land.lhs.true125, label %if.end183

land.lhs.true125:                                 ; preds = %lor.lhs.false120, %land.lhs.true115
  %61 = load i8*, i8** %p, align 8
  %arrayidx126 = getelementptr inbounds i8, i8* %61, i64 3
  %62 = load i8, i8* %arrayidx126, align 1
  %conv127 = zext i8 %62 to i32
  %cmp128 = icmp eq i32 %conv127, 67
  br i1 %cmp128, label %land.lhs.true135, label %lor.lhs.false130

lor.lhs.false130:                                 ; preds = %land.lhs.true125
  %63 = load i8*, i8** %p, align 8
  %arrayidx131 = getelementptr inbounds i8, i8* %63, i64 3
  %64 = load i8, i8* %arrayidx131, align 1
  %conv132 = zext i8 %64 to i32
  %cmp133 = icmp eq i32 %conv132, 99
  br i1 %cmp133, label %land.lhs.true135, label %if.end183

land.lhs.true135:                                 ; preds = %lor.lhs.false130, %land.lhs.true125
  %65 = load i8*, i8** %p, align 8
  %arrayidx136 = getelementptr inbounds i8, i8* %65, i64 4
  %66 = load i8, i8* %arrayidx136, align 1
  %conv137 = zext i8 %66 to i32
  %call138 = call i32 @isspace(i32 %conv137) #3
  %tobool139 = icmp ne i32 %call138, 0
  br i1 %tobool139, label %if.then140, label %if.end183

if.then140:                                       ; preds = %land.lhs.true135
  %67 = load i8*, i8** %p, align 8
  %add.ptr141 = getelementptr inbounds i8, i8* %67, i64 5
  store i8* %add.ptr141, i8** %p, align 8
  br label %while.cond142

while.cond142:                                    ; preds = %while.body146, %if.then140
  %68 = load i8*, i8** %p, align 8
  %69 = load i8, i8* %68, align 1
  %conv143 = zext i8 %69 to i32
  %call144 = call i32 @isspace(i32 %conv143) #3
  %tobool145 = icmp ne i32 %call144, 0
  br i1 %tobool145, label %while.body146, label %while.end148

while.body146:                                    ; preds = %while.cond142
  %70 = load i8*, i8** %p, align 8
  %incdec.ptr147 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %incdec.ptr147, i8** %p, align 8
  br label %while.cond142

while.end148:                                     ; preds = %while.cond142
  br label %while.cond149

while.cond149:                                    ; preds = %while.body156, %while.end148
  %71 = load i8*, i8** %p, align 8
  %72 = load i8, i8* %71, align 1
  %conv150 = zext i8 %72 to i32
  %call151 = call i32 @isalnum(i32 %conv150) #3
  %tobool152 = icmp ne i32 %call151, 0
  br i1 %tobool152, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond149
  %73 = load i8*, i8** %p, align 8
  %74 = load i8, i8* %73, align 1
  %conv153 = zext i8 %74 to i32
  %cmp154 = icmp eq i32 %conv153, 95
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond149
  %75 = phi i1 [ true, %while.cond149 ], [ %cmp154, %lor.rhs ]
  br i1 %75, label %while.body156, label %while.end159

while.body156:                                    ; preds = %lor.end
  %76 = load %struct.sVString*, %struct.sVString** %name, align 8
  %77 = load i8*, i8** %p, align 8
  %78 = load i8, i8* %77, align 1
  %conv157 = zext i8 %78 to i32
  call void @vStringPut(%struct.sVString* %76, i32 %conv157)
  %79 = load i8*, i8** %p, align 8
  %incdec.ptr158 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %incdec.ptr158, i8** %p, align 8
  br label %while.cond149

while.end159:                                     ; preds = %lor.end
  br label %while.cond160

while.cond160:                                    ; preds = %while.body164, %while.end159
  %80 = load i8*, i8** %p, align 8
  %81 = load i8, i8* %80, align 1
  %conv161 = zext i8 %81 to i32
  %call162 = call i32 @isspace(i32 %conv161) #3
  %tobool163 = icmp ne i32 %call162, 0
  br i1 %tobool163, label %while.body164, label %while.end166

while.body164:                                    ; preds = %while.cond160
  %82 = load i8*, i8** %p, align 8
  %incdec.ptr165 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %incdec.ptr165, i8** %p, align 8
  br label %while.cond160

while.end166:                                     ; preds = %while.cond160
  %83 = load i8*, i8** %p, align 8
  %84 = load i8, i8* %83, align 1
  %conv167 = zext i8 %84 to i32
  %cmp168 = icmp eq i32 %conv167, 40
  br i1 %cmp168, label %land.lhs.true170, label %if.end182

land.lhs.true170:                                 ; preds = %while.end166
  %85 = load %struct.sVString*, %struct.sVString** %name, align 8
  %length171 = getelementptr inbounds %struct.sVString, %struct.sVString* %85, i32 0, i32 0
  %86 = load i64, i64* %length171, align 8
  %cmp172 = icmp ugt i64 %86, 0
  br i1 %cmp172, label %if.then174, label %if.end182

if.then174:                                       ; preds = %land.lhs.true170
  %87 = load %struct.sVString*, %struct.sVString** %name, align 8
  %call175 = call i32 @makeSimpleTag(%struct.sVString* %87, i32 0)
  br label %do.body176

do.body176:                                       ; preds = %if.then174
  %88 = load %struct.sVString*, %struct.sVString** %name, align 8
  store %struct.sVString* %88, %struct.sVString** %vStringClear_s177, align 8
  %89 = load %struct.sVString*, %struct.sVString** %vStringClear_s177, align 8
  %length178 = getelementptr inbounds %struct.sVString, %struct.sVString* %89, i32 0, i32 0
  store i64 0, i64* %length178, align 8
  %90 = load %struct.sVString*, %struct.sVString** %vStringClear_s177, align 8
  %buffer179 = getelementptr inbounds %struct.sVString, %struct.sVString* %90, i32 0, i32 2
  %91 = load i8*, i8** %buffer179, align 8
  %arrayidx180 = getelementptr inbounds i8, i8* %91, i64 0
  store i8 0, i8* %arrayidx180, align 1
  br label %do.end181

do.end181:                                        ; preds = %do.body176
  br label %if.end182

if.end182:                                        ; preds = %do.end181, %land.lhs.true170, %while.end166
  br label %if.end183

if.end183:                                        ; preds = %if.end182, %land.lhs.true135, %lor.lhs.false130, %lor.lhs.false120, %lor.lhs.false110, %land.lhs.true101, %lor.lhs.false96
  br label %if.end184

if.end184:                                        ; preds = %if.end183, %if.end84
  br label %while.cond

while.end185:                                     ; preds = %while.cond
  %92 = load %struct.sVString*, %struct.sVString** %name, align 8
  call void @vStringDelete(%struct.sVString* %92)
  ret void
}

declare %struct.sVString* @vStringNew() #1

declare i8* @readLineFromInputFile() #1

declare i64 @strlen(i8*) #1

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

declare i32 @makeSimpleTag(%struct.sVString*, i32) #1

; Function Attrs: nounwind readonly
declare i32 @isalnum(i32) #2

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
