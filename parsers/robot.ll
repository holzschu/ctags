; ModuleID = 'robot.c'
source_filename = "robot.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-ios11.0.0"

%struct.sKindDefinition = type { i8, i8, i8*, i8*, i8, i32, %struct.sRoleDesc*, %struct.sScopeSeparator*, i32, i32, i32, %struct.sKindDefinition*, %struct.sKindDefinition* }
%struct.sRoleDesc = type { i8, i8*, i8* }
%struct.sScopeSeparator = type { i32, i8* }
%struct.sXtagDefinition = type { i8, i8, i8*, i8*, i1 (%struct.sXtagDefinition*)*, i1 (%struct.sXtagDefinition*)*, i32 }
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
%struct.sParserDependency = type { i32, i8*, i8* }
%struct.sParameterHandlerTable = type { i8*, i8*, void (i32, i8*, i8*)* }
%struct.sXpathFileSpec = type { i8*, i8*, i8*, i8*, i8*, i8* }
%struct.regexMatch = type { i64, i64 }

@.str = private unnamed_addr constant [6 x i8] c"Robot\00", align 1
@RobotKinds = internal global [3 x %struct.sKindDefinition] [%struct.sKindDefinition { i8 1, i8 116, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 107, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 118, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }], align 8
@extensions = internal constant [2 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i8* null], align 8
@RobotXtags = internal global [1 x %struct.sXtagDefinition] [%struct.sXtagDefinition { i8 1, i8 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.14, i32 0, i32 0), i1 (%struct.sXtagDefinition*)* null, i1 (%struct.sXtagDefinition*)* null, i32 0 }], align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"testcase\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"testcases\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"keyword\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"keywords\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"variable\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"variables\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"robot\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"^\\*+ *([^* ].+[^* ]) *\\*+$\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"{exclusive}\00", align 1
@.str.10 = private unnamed_addr constant [151 x i8] c"(^([A-Za-z0-9]+|\\$\\{[_A-Za-z0-9][' _A-Za-z0-9]*(:([^}]|\\\\|.{0})+)*\\})([${}' _]([-_$A-Za-z0-9]+|\\{[_A-Za-z0-9][' _A-Za-z0-9]*(:([^}]|\\\\|.{0})+)*\\})+)*)\00", align 1
@.str.11 = private unnamed_addr constant [47 x i8] c"^[$@]\\{([_A-Za-z0-9][' _A-Za-z0-9]+)\\}  [ ]*.+\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"test cases\00", align 1
@section = internal global i32 -1, align 4
@.str.13 = private unnamed_addr constant [18 x i8] c"whitespaceSwapped\00", align 1
@.str.14 = private unnamed_addr constant [54 x i8] c"Include tags swapping whitespace and underscore chars\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sParserDefinition* @RobotParser() #0 {
entry:
  %def = alloca %struct.sParserDefinition*, align 8
  %call = call %struct.sParserDefinition* @parserNew(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store %struct.sParserDefinition* %call, %struct.sParserDefinition** %def, align 8
  %0 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %0, i32 0, i32 1
  store %struct.sKindDefinition* getelementptr inbounds ([3 x %struct.sKindDefinition], [3 x %struct.sKindDefinition]* @RobotKinds, i64 0, i64 0), %struct.sKindDefinition** %kindTable, align 8
  %1 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %1, i32 0, i32 2
  store i32 3, i32* %kindCount, align 8
  %2 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %extensions = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %2, i32 0, i32 3
  store i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @extensions, i64 0, i64 0), i8*** %extensions, align 8
  %3 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %initialize = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %3, i32 0, i32 6
  store void (i32)* @initialize, void (i32)** %initialize, align 8
  %4 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %parser = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %4, i32 0, i32 8
  store void ()* @findRobotTags, void ()** %parser, align 8
  %5 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %xtagTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %5, i32 0, i32 25
  store %struct.sXtagDefinition* getelementptr inbounds ([1 x %struct.sXtagDefinition], [1 x %struct.sXtagDefinition]* @RobotXtags, i64 0, i64 0), %struct.sXtagDefinition** %xtagTable, align 8
  %6 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %xtagCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %6, i32 0, i32 26
  store i32 1, i32* %xtagCount, align 8
  %7 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  ret %struct.sParserDefinition* %7
}

declare %struct.sParserDefinition* @parserNew(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @initialize(i32 %language) #0 {
entry:
  %language.addr = alloca i32, align 4
  store i32 %language, i32* %language.addr, align 4
  %0 = load i32, i32* %language.addr, align 4
  call void @addLanguageCallbackRegex(i32 %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i1 (i8*, %struct.regexMatch*, i32, i8*)* @changeSection, i8* null, i8* null)
  %1 = load i32, i32* %language.addr, align 4
  call void @addLanguageCallbackRegex(i32 %1, i8* getelementptr inbounds ([151 x i8], [151 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i1 (i8*, %struct.regexMatch*, i32, i8*)* @tagKeywordsAndTestCases, i8* null, i8* null)
  %2 = load i32, i32* %language.addr, align 4
  call void @addLanguageCallbackRegex(i32 %2, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i1 (i8*, %struct.regexMatch*, i32, i8*)* @tagVariables, i8* null, i8* null)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @findRobotTags() #0 {
entry:
  call void @findRegexTags()
  ret void
}

declare void @addLanguageCallbackRegex(i32, i8*, i8*, i1 (i8*, %struct.regexMatch*, i32, i8*)*, i8*, i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @changeSection(i8* %line, %struct.regexMatch* %matches, i32 %count, i8* %data) #0 {
entry:
  %line.addr = alloca i8*, align 8
  %matches.addr = alloca %struct.regexMatch*, align 8
  %count.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %matchedSection = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  store %struct.regexMatch* %matches, %struct.regexMatch** %matches.addr, align 8
  store i32 %count, i32* %count.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %line.addr, align 8
  %1 = load %struct.regexMatch*, %struct.regexMatch** %matches.addr, align 8
  %arrayidx = getelementptr inbounds %struct.regexMatch, %struct.regexMatch* %1, i64 1
  %start = getelementptr inbounds %struct.regexMatch, %struct.regexMatch* %arrayidx, i32 0, i32 0
  %2 = load i64, i64* %start, align 8
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %2
  store i8* %add.ptr, i8** %matchedSection, align 8
  %3 = load i8*, i8** %matchedSection, align 8
  %4 = load %struct.regexMatch*, %struct.regexMatch** %matches.addr, align 8
  %arrayidx1 = getelementptr inbounds %struct.regexMatch, %struct.regexMatch* %4, i64 1
  %length = getelementptr inbounds %struct.regexMatch, %struct.regexMatch* %arrayidx1, i32 0, i32 1
  %5 = load i64, i64* %length, align 8
  %call = call i32 @strncasecmp(i8* %3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i64 %5)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* @section, align 4
  br label %if.end14

if.else:                                          ; preds = %entry
  %6 = load i8*, i8** %matchedSection, align 8
  %7 = load %struct.regexMatch*, %struct.regexMatch** %matches.addr, align 8
  %arrayidx2 = getelementptr inbounds %struct.regexMatch, %struct.regexMatch* %7, i64 1
  %length3 = getelementptr inbounds %struct.regexMatch, %struct.regexMatch* %arrayidx2, i32 0, i32 1
  %8 = load i64, i64* %length3, align 8
  %call4 = call i32 @strncasecmp(i8* %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i64 %8)
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %if.then6, label %if.else7

if.then6:                                         ; preds = %if.else
  store i32 1, i32* @section, align 4
  br label %if.end13

if.else7:                                         ; preds = %if.else
  %9 = load i8*, i8** %matchedSection, align 8
  %10 = load %struct.regexMatch*, %struct.regexMatch** %matches.addr, align 8
  %arrayidx8 = getelementptr inbounds %struct.regexMatch, %struct.regexMatch* %10, i64 1
  %length9 = getelementptr inbounds %struct.regexMatch, %struct.regexMatch* %arrayidx8, i32 0, i32 1
  %11 = load i64, i64* %length9, align 8
  %call10 = call i32 @strncasecmp(i8* %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i64 %11)
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %if.then12, label %if.end

if.then12:                                        ; preds = %if.else7
  store i32 2, i32* @section, align 4
  br label %if.end

if.end:                                           ; preds = %if.then12, %if.else7
  br label %if.end13

if.end13:                                         ; preds = %if.end, %if.then6
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.then
  ret i1 true
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @tagKeywordsAndTestCases(i8* %line, %struct.regexMatch* %matches, i32 %count, i8* %data) #0 {
entry:
  %retval = alloca i1, align 1
  %line.addr = alloca i8*, align 8
  %matches.addr = alloca %struct.regexMatch*, align 8
  %count.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %name = alloca %struct.sVString*, align 8
  store i8* %line, i8** %line.addr, align 8
  store %struct.regexMatch* %matches, %struct.regexMatch** %matches.addr, align 8
  store i32 %count, i32* %count.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i32, i32* %count.addr, align 4
  %cmp = icmp ugt i32 %0, 1
  br i1 %cmp, label %land.lhs.true, label %if.end9

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* @section, align 4
  %cmp1 = icmp eq i32 %1, 1
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %2 = load i32, i32* @section, align 4
  %cmp2 = icmp eq i32 %2, 0
  br i1 %cmp2, label %if.then, label %if.end9

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %call = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call, %struct.sVString** %name, align 8
  %3 = load %struct.sVString*, %struct.sVString** %name, align 8
  %4 = load i8*, i8** %line.addr, align 8
  %5 = load %struct.regexMatch*, %struct.regexMatch** %matches.addr, align 8
  %arrayidx = getelementptr inbounds %struct.regexMatch, %struct.regexMatch* %5, i64 1
  %start = getelementptr inbounds %struct.regexMatch, %struct.regexMatch* %arrayidx, i32 0, i32 0
  %6 = load i64, i64* %start, align 8
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %6
  %7 = load %struct.regexMatch*, %struct.regexMatch** %matches.addr, align 8
  %arrayidx3 = getelementptr inbounds %struct.regexMatch, %struct.regexMatch* %7, i64 1
  %length = getelementptr inbounds %struct.regexMatch, %struct.regexMatch* %arrayidx3, i32 0, i32 1
  %8 = load i64, i64* %length, align 8
  call void @vStringNCopyS(%struct.sVString* %3, i8* %add.ptr, i64 %8)
  %9 = load %struct.sVString*, %struct.sVString** %name, align 8
  %10 = load i32, i32* @section, align 4
  %call4 = call i32 @makeSimpleTag(%struct.sVString* %9, i32 %10)
  %11 = load i32, i32* getelementptr inbounds ([1 x %struct.sXtagDefinition], [1 x %struct.sXtagDefinition]* @RobotXtags, i64 0, i64 0, i32 6), align 8
  %call5 = call zeroext i1 @isXtagEnabled(i32 %11)
  br i1 %call5, label %land.lhs.true6, label %if.end

land.lhs.true6:                                   ; preds = %if.then
  %12 = load %struct.sVString*, %struct.sVString** %name, align 8
  %call7 = call zeroext i1 @whitespaceSwap(%struct.sVString* %12)
  br i1 %call7, label %if.then8, label %if.end

if.then8:                                         ; preds = %land.lhs.true6
  %13 = load %struct.sVString*, %struct.sVString** %name, align 8
  %14 = load i32, i32* @section, align 4
  %15 = load i32, i32* getelementptr inbounds ([1 x %struct.sXtagDefinition], [1 x %struct.sXtagDefinition]* @RobotXtags, i64 0, i64 0, i32 6), align 8
  call void @makeSimpleXTag(%struct.sVString* %13, i32 %14, i32 %15)
  br label %if.end

if.end:                                           ; preds = %if.then8, %land.lhs.true6, %if.then
  %16 = load %struct.sVString*, %struct.sVString** %name, align 8
  call void @vStringDelete(%struct.sVString* %16)
  store i1 true, i1* %retval, align 1
  br label %return

if.end9:                                          ; preds = %lor.lhs.false, %entry
  store i1 false, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end9, %if.end
  %17 = load i1, i1* %retval, align 1
  ret i1 %17
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @tagVariables(i8* %line, %struct.regexMatch* %matches, i32 %count, i8* %data) #0 {
entry:
  %retval = alloca i1, align 1
  %line.addr = alloca i8*, align 8
  %matches.addr = alloca %struct.regexMatch*, align 8
  %count.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %name = alloca %struct.sVString*, align 8
  store i8* %line, i8** %line.addr, align 8
  store %struct.regexMatch* %matches, %struct.regexMatch** %matches.addr, align 8
  store i32 %count, i32* %count.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i32, i32* %count.addr, align 4
  %cmp = icmp ugt i32 %0, 1
  br i1 %cmp, label %land.lhs.true, label %if.end8

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* @section, align 4
  %cmp1 = icmp eq i32 %1, 2
  br i1 %cmp1, label %if.then, label %if.end8

if.then:                                          ; preds = %land.lhs.true
  %call = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call, %struct.sVString** %name, align 8
  %2 = load %struct.sVString*, %struct.sVString** %name, align 8
  %3 = load i8*, i8** %line.addr, align 8
  %4 = load %struct.regexMatch*, %struct.regexMatch** %matches.addr, align 8
  %arrayidx = getelementptr inbounds %struct.regexMatch, %struct.regexMatch* %4, i64 1
  %start = getelementptr inbounds %struct.regexMatch, %struct.regexMatch* %arrayidx, i32 0, i32 0
  %5 = load i64, i64* %start, align 8
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %5
  %6 = load %struct.regexMatch*, %struct.regexMatch** %matches.addr, align 8
  %arrayidx2 = getelementptr inbounds %struct.regexMatch, %struct.regexMatch* %6, i64 1
  %length = getelementptr inbounds %struct.regexMatch, %struct.regexMatch* %arrayidx2, i32 0, i32 1
  %7 = load i64, i64* %length, align 8
  call void @vStringNCopyS(%struct.sVString* %2, i8* %add.ptr, i64 %7)
  %8 = load %struct.sVString*, %struct.sVString** %name, align 8
  %call3 = call i32 @makeSimpleTag(%struct.sVString* %8, i32 2)
  %9 = load i32, i32* getelementptr inbounds ([1 x %struct.sXtagDefinition], [1 x %struct.sXtagDefinition]* @RobotXtags, i64 0, i64 0, i32 6), align 8
  %call4 = call zeroext i1 @isXtagEnabled(i32 %9)
  br i1 %call4, label %land.lhs.true5, label %if.end

land.lhs.true5:                                   ; preds = %if.then
  %10 = load %struct.sVString*, %struct.sVString** %name, align 8
  %call6 = call zeroext i1 @whitespaceSwap(%struct.sVString* %10)
  br i1 %call6, label %if.then7, label %if.end

if.then7:                                         ; preds = %land.lhs.true5
  %11 = load %struct.sVString*, %struct.sVString** %name, align 8
  %12 = load i32, i32* getelementptr inbounds ([1 x %struct.sXtagDefinition], [1 x %struct.sXtagDefinition]* @RobotXtags, i64 0, i64 0, i32 6), align 8
  call void @makeSimpleXTag(%struct.sVString* %11, i32 2, i32 %12)
  br label %if.end

if.end:                                           ; preds = %if.then7, %land.lhs.true5, %if.then
  %13 = load %struct.sVString*, %struct.sVString** %name, align 8
  call void @vStringDelete(%struct.sVString* %13)
  store i1 true, i1* %retval, align 1
  br label %return

if.end8:                                          ; preds = %land.lhs.true, %entry
  store i1 false, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end8, %if.end
  %14 = load i1, i1* %retval, align 1
  ret i1 %14
}

declare i32 @strncasecmp(i8*, i8*, i64) #1

declare %struct.sVString* @vStringNew() #1

declare void @vStringNCopyS(%struct.sVString*, i8*, i64) #1

declare i32 @makeSimpleTag(%struct.sVString*, i32) #1

declare zeroext i1 @isXtagEnabled(i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @whitespaceSwap(%struct.sVString* %s) #0 {
entry:
  %s.addr = alloca %struct.sVString*, align 8
  %replaceWith = alloca i8, align 1
  %toReplace = alloca i8, align 1
  %changed = alloca i8, align 1
  %i = alloca i32, align 4
  store %struct.sVString* %s, %struct.sVString** %s.addr, align 8
  store i8 95, i8* %replaceWith, align 1
  store i8 32, i8* %toReplace, align 1
  store i8 0, i8* %changed, align 1
  %0 = load %struct.sVString*, %struct.sVString** %s.addr, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %0, i32 0, i32 2
  %1 = load i8*, i8** %buffer, align 8
  %call = call i8* @strchr(i8* %1, i32 95)
  %tobool = icmp ne i8* %call, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8 32, i8* %replaceWith, align 1
  store i8 95, i8* %toReplace, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %i, align 4
  %conv = zext i32 %2 to i64
  %3 = load %struct.sVString*, %struct.sVString** %s.addr, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %3, i32 0, i32 0
  %4 = load i64, i64* %length, align 8
  %cmp = icmp ult i64 %conv, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.sVString*, %struct.sVString** %s.addr, align 8
  %buffer2 = getelementptr inbounds %struct.sVString, %struct.sVString* %5, i32 0, i32 2
  %6 = load i8*, i8** %buffer2, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom = zext i32 %7 to i64
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 %idxprom
  %8 = load i8, i8* %arrayidx, align 1
  %conv3 = sext i8 %8 to i32
  %9 = load i8, i8* %toReplace, align 1
  %conv4 = sext i8 %9 to i32
  %cmp5 = icmp eq i32 %conv3, %conv4
  br i1 %cmp5, label %if.then7, label %if.end11

if.then7:                                         ; preds = %for.body
  %10 = load i8, i8* %replaceWith, align 1
  %11 = load %struct.sVString*, %struct.sVString** %s.addr, align 8
  %buffer8 = getelementptr inbounds %struct.sVString, %struct.sVString* %11, i32 0, i32 2
  %12 = load i8*, i8** %buffer8, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom9 = zext i32 %13 to i64
  %arrayidx10 = getelementptr inbounds i8, i8* %12, i64 %idxprom9
  store i8 %10, i8* %arrayidx10, align 1
  store i8 1, i8* %changed, align 1
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end11
  %14 = load i32, i32* %i, align 4
  %inc = add i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load i8, i8* %changed, align 1
  %tobool12 = icmp ne i8 %15, 0
  ret i1 %tobool12
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @makeSimpleXTag(%struct.sVString* %name, i32 %kind, i32 %xtagType) #0 {
entry:
  %name.addr = alloca %struct.sVString*, align 8
  %kind.addr = alloca i32, align 4
  %xtagType.addr = alloca i32, align 4
  %e = alloca %struct.sTagEntryInfo, align 8
  store %struct.sVString* %name, %struct.sVString** %name.addr, align 8
  store i32 %kind, i32* %kind.addr, align 4
  store i32 %xtagType, i32* %xtagType.addr, align 4
  %0 = load %struct.sVString*, %struct.sVString** %name.addr, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %0, i32 0, i32 2
  %1 = load i8*, i8** %buffer, align 8
  %2 = load i32, i32* %kind.addr, align 4
  call void @initTagEntry(%struct.sTagEntryInfo* %e, i8* %1, i32 %2)
  %3 = load i32, i32* %xtagType.addr, align 4
  call void @markTagExtraBit(%struct.sTagEntryInfo* %e, i32 %3)
  %call = call i32 @makeTagEntry(%struct.sTagEntryInfo* %e)
  ret void
}

declare void @vStringDelete(%struct.sVString*) #1

declare i8* @strchr(i8*, i32) #1

declare void @initTagEntry(%struct.sTagEntryInfo*, i8*, i32) #1

declare void @markTagExtraBit(%struct.sTagEntryInfo*, i32) #1

declare i32 @makeTagEntry(%struct.sTagEntryInfo*) #1

declare void @findRegexTags() #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 10.0.0 (https://github.com/holzschu/clang.git 0cfc630fbdb62e96720b611a57123ef3eb13e297) (https://github.com/holzschu/llvm.git 0d8a71e39b28502c24718f7e74b5acbcfe36dfe0)"}
