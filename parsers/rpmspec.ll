; ModuleID = 'rpmspec.c'
source_filename = "rpmspec.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-ios11.0.0"

%struct.sKindDefinition = type { i8, i8, i8*, i8*, i8, i32, %struct.sRoleDesc*, %struct.sScopeSeparator*, i32, i32, i32, %struct.sKindDefinition*, %struct.sKindDefinition* }
%struct.sRoleDesc = type { i8, i8*, i8* }
%struct.sScopeSeparator = type { i32, i8* }
%struct.macro_cb_data = type { i32, i32 }
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
%struct.regexMatch = type { i64, i64 }

@.str = private unnamed_addr constant [8 x i8] c"RpmSpec\00", align 1
@RpmSpecKinds = internal global [4 x %struct.sKindDefinition] [%struct.sKindDefinition { i8 1, i8 116, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 109, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8 0, i32 1, %struct.sRoleDesc* getelementptr inbounds ([1 x %struct.sRoleDesc], [1 x %struct.sRoleDesc]* @RpmSpecMacroRoles, i32 0, i32 0), %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 112, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* getelementptr inbounds ([1 x %struct.sScopeSeparator], [1 x %struct.sScopeSeparator]* @RpmSpecPackageSeparators, i32 0, i32 0), i32 1, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 103, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }], align 8
@extensions = internal constant [2 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i8* null], align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"tag\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"tags\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"macro\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"macros\00", align 1
@RpmSpecMacroRoles = internal global [1 x %struct.sRoleDesc] [%struct.sRoleDesc { i8 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0) }], align 8
@.str.5 = private unnamed_addr constant [8 x i8] c"package\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"packages\00", align 1
@RpmSpecPackageSeparators = internal global [1 x %struct.sScopeSeparator] [%struct.sScopeSeparator { i32 2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0) }], align 8
@.str.7 = private unnamed_addr constant [7 x i8] c"global\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"global macros\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"undef\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"undefined\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"spec\00", align 1
@initializeRpmSpecParser.package_index = internal global i32 0, align 4
@rejecting = internal global i8 0, align 1
@initializeRpmSpecParser.macro = internal global %struct.macro_cb_data { i32 1, i32 -1 }, align 4
@initializeRpmSpecParser.global = internal global %struct.macro_cb_data { i32 3, i32 -1 }, align 4
@initializeRpmSpecParser.undef = internal global %struct.macro_cb_data { i32 1, i32 0 }, align 4
@.str.13 = private unnamed_addr constant [47 x i8] c"^([A-Za-z_][A-Za-z_0-9()]+)[ \09]*:[ \09]*([^ \09]*)\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"{exclusive}\00", align 1
@.str.15 = private unnamed_addr constant [50 x i8] c"^%define[ \09]+([A-Za-z_][A-Za-z_0-9]+)(\\([^)]+\\))?\00", align 1
@.str.16 = private unnamed_addr constant [37 x i8] c"^%undef[ \09]+([A-Za-z_][A-Za-z_0-9]+)\00", align 1
@.str.17 = private unnamed_addr constant [50 x i8] c"^%global[ \09]+([A-Za-z_][A-Za-z_0-9]+)(\\([^)]+\\))?\00", align 1
@.str.18 = private unnamed_addr constant [50 x i8] c"^%package[ \09]+(-n[ \09]+)?([A-Za-z_][A-Za-z_0-9-]+)\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"name\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sParserDefinition* @RpmSpecParser() #0 {
entry:
  %def = alloca %struct.sParserDefinition*, align 8
  %call = call %struct.sParserDefinition* @parserNew(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store %struct.sParserDefinition* %call, %struct.sParserDefinition** %def, align 8
  %0 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %0, i32 0, i32 1
  store %struct.sKindDefinition* getelementptr inbounds ([4 x %struct.sKindDefinition], [4 x %struct.sKindDefinition]* @RpmSpecKinds, i64 0, i64 0), %struct.sKindDefinition** %kindTable, align 8
  %1 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %1, i32 0, i32 2
  store i32 4, i32* %kindCount, align 8
  %2 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %extensions = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %2, i32 0, i32 3
  store i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @extensions, i64 0, i64 0), i8*** %extensions, align 8
  %3 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %initialize = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %3, i32 0, i32 6
  store void (i32)* @initializeRpmSpecParser, void (i32)** %initialize, align 8
  %4 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %method = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %4, i32 0, i32 11
  store i32 3, i32* %method, align 8
  %5 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %useCork = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %5, i32 0, i32 12
  store i8 1, i8* %useCork, align 4
  %6 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %requestAutomaticFQTag = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %6, i32 0, i32 15
  store i8 1, i8* %requestAutomaticFQTag, align 1
  %7 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  ret %struct.sParserDefinition* %7
}

declare %struct.sParserDefinition* @parserNew(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @initializeRpmSpecParser(i32 %language) #0 {
entry:
  %language.addr = alloca i32, align 4
  store i32 %language, i32* %language.addr, align 4
  store i8 0, i8* @rejecting, align 1
  %0 = load i32, i32* %language.addr, align 4
  call void @addLanguageCallbackRegex(i32 %0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i1 (i8*, %struct.regexMatch*, i32, i8*)* @found_tag_cb, i8* @rejecting, i8* bitcast (i32* @initializeRpmSpecParser.package_index to i8*))
  %1 = load i32, i32* %language.addr, align 4
  call void @addLanguageCallbackRegex(i32 %1, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i1 (i8*, %struct.regexMatch*, i32, i8*)* @found_macro_cb, i8* @rejecting, i8* bitcast (%struct.macro_cb_data* @initializeRpmSpecParser.macro to i8*))
  %2 = load i32, i32* %language.addr, align 4
  call void @addLanguageCallbackRegex(i32 %2, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i1 (i8*, %struct.regexMatch*, i32, i8*)* @found_macro_cb, i8* @rejecting, i8* bitcast (%struct.macro_cb_data* @initializeRpmSpecParser.undef to i8*))
  %3 = load i32, i32* %language.addr, align 4
  call void @addLanguageCallbackRegex(i32 %3, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i1 (i8*, %struct.regexMatch*, i32, i8*)* @found_macro_cb, i8* @rejecting, i8* bitcast (%struct.macro_cb_data* @initializeRpmSpecParser.global to i8*))
  %4 = load i32, i32* %language.addr, align 4
  call void @addLanguageCallbackRegex(i32 %4, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i1 (i8*, %struct.regexMatch*, i32, i8*)* @found_package_cb, i8* @rejecting, i8* bitcast (i32* @initializeRpmSpecParser.package_index to i8*))
  ret void
}

declare void @addLanguageCallbackRegex(i32, i8*, i8*, i1 (i8*, %struct.regexMatch*, i32, i8*)*, i8*, i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @found_tag_cb(i8* %line, %struct.regexMatch* %matches, i32 %count, i8* %userData) #0 {
entry:
  %line.addr = alloca i8*, align 8
  %matches.addr = alloca %struct.regexMatch*, align 8
  %count.addr = alloca i32, align 4
  %userData.addr = alloca i8*, align 8
  %name = alloca %struct.sVString*, align 8
  %package = alloca %struct.sVString*, align 8
  store i8* %line, i8** %line.addr, align 8
  store %struct.regexMatch* %matches, %struct.regexMatch** %matches.addr, align 8
  store i32 %count, i32* %count.addr, align 4
  store i8* %userData, i8** %userData.addr, align 8
  %0 = load i32, i32* %count.addr, align 4
  %cmp = icmp ugt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end16

if.then:                                          ; preds = %entry
  %call = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call, %struct.sVString** %name, align 8
  %1 = load %struct.sVString*, %struct.sVString** %name, align 8
  %2 = load i8*, i8** %line.addr, align 8
  %3 = load %struct.regexMatch*, %struct.regexMatch** %matches.addr, align 8
  %arrayidx = getelementptr inbounds %struct.regexMatch, %struct.regexMatch* %3, i64 1
  %start = getelementptr inbounds %struct.regexMatch, %struct.regexMatch* %arrayidx, i32 0, i32 0
  %4 = load i64, i64* %start, align 8
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %4
  %5 = load %struct.regexMatch*, %struct.regexMatch** %matches.addr, align 8
  %arrayidx1 = getelementptr inbounds %struct.regexMatch, %struct.regexMatch* %5, i64 1
  %length = getelementptr inbounds %struct.regexMatch, %struct.regexMatch* %arrayidx1, i32 0, i32 1
  %6 = load i64, i64* %length, align 8
  call void @vStringNCopyS(%struct.sVString* %1, i8* %add.ptr, i64 %6)
  %7 = load %struct.sVString*, %struct.sVString** %name, align 8
  %call2 = call i32 @makeSimpleTag(%struct.sVString* %7, i32 0)
  %8 = load i32, i32* %count.addr, align 4
  %cmp3 = icmp ugt i32 %8, 1
  br i1 %cmp3, label %if.then4, label %if.end15

if.then4:                                         ; preds = %if.then
  %9 = load %struct.sVString*, %struct.sVString** %name, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %9, i32 0, i32 2
  %10 = load i8*, i8** %buffer, align 8
  %call5 = call i32 @strcasecmp(i8* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0))
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.then4
  %call8 = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call8, %struct.sVString** %package, align 8
  %11 = load %struct.sVString*, %struct.sVString** %package, align 8
  %12 = load i8*, i8** %line.addr, align 8
  %13 = load %struct.regexMatch*, %struct.regexMatch** %matches.addr, align 8
  %arrayidx9 = getelementptr inbounds %struct.regexMatch, %struct.regexMatch* %13, i64 2
  %start10 = getelementptr inbounds %struct.regexMatch, %struct.regexMatch* %arrayidx9, i32 0, i32 0
  %14 = load i64, i64* %start10, align 8
  %add.ptr11 = getelementptr inbounds i8, i8* %12, i64 %14
  %15 = load %struct.regexMatch*, %struct.regexMatch** %matches.addr, align 8
  %arrayidx12 = getelementptr inbounds %struct.regexMatch, %struct.regexMatch* %15, i64 2
  %length13 = getelementptr inbounds %struct.regexMatch, %struct.regexMatch* %arrayidx12, i32 0, i32 1
  %16 = load i64, i64* %length13, align 8
  call void @vStringNCopyS(%struct.sVString* %11, i8* %add.ptr11, i64 %16)
  %17 = load %struct.sVString*, %struct.sVString** %package, align 8
  %call14 = call i32 @makeSimpleTag(%struct.sVString* %17, i32 2)
  %18 = load i8*, i8** %userData.addr, align 8
  %19 = bitcast i8* %18 to i32*
  store i32 %call14, i32* %19, align 4
  %20 = load %struct.sVString*, %struct.sVString** %package, align 8
  call void @vStringDelete(%struct.sVString* %20)
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then4
  br label %if.end15

if.end15:                                         ; preds = %if.end, %if.then
  %21 = load %struct.sVString*, %struct.sVString** %name, align 8
  call void @vStringDelete(%struct.sVString* %21)
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %entry
  ret i1 true
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @found_macro_cb(i8* %line, %struct.regexMatch* %matches, i32 %count, i8* %uesrData) #0 {
entry:
  %line.addr = alloca i8*, align 8
  %matches.addr = alloca %struct.regexMatch*, align 8
  %count.addr = alloca i32, align 4
  %uesrData.addr = alloca i8*, align 8
  %data = alloca %struct.macro_cb_data*, align 8
  %signature = alloca %struct.sVString*, align 8
  %name = alloca %struct.sVString*, align 8
  %tag = alloca %struct.sTagEntryInfo, align 8
  store i8* %line, i8** %line.addr, align 8
  store %struct.regexMatch* %matches, %struct.regexMatch** %matches.addr, align 8
  store i32 %count, i32* %count.addr, align 4
  store i8* %uesrData, i8** %uesrData.addr, align 8
  %0 = load i8*, i8** %uesrData.addr, align 8
  %1 = bitcast i8* %0 to %struct.macro_cb_data*
  store %struct.macro_cb_data* %1, %struct.macro_cb_data** %data, align 8
  %2 = load i32, i32* %count.addr, align 4
  %cmp = icmp ugt i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end33

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %count.addr, align 4
  %cmp1 = icmp ugt i32 %3, 1
  br i1 %cmp1, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %if.then
  %4 = load %struct.regexMatch*, %struct.regexMatch** %matches.addr, align 8
  %arrayidx = getelementptr inbounds %struct.regexMatch, %struct.regexMatch* %4, i64 2
  %length = getelementptr inbounds %struct.regexMatch, %struct.regexMatch* %arrayidx, i32 0, i32 1
  %5 = load i64, i64* %length, align 8
  %cmp2 = icmp ugt i64 %5, 0
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %call = call %struct.sVString* @vStringNew()
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.sVString* [ %call, %cond.true ], [ null, %cond.false ]
  store %struct.sVString* %cond, %struct.sVString** %signature, align 8
  %call3 = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call3, %struct.sVString** %name, align 8
  %6 = load %struct.sVString*, %struct.sVString** %signature, align 8
  %tobool = icmp ne %struct.sVString* %6, null
  br i1 %tobool, label %if.then4, label %if.end

if.then4:                                         ; preds = %cond.end
  %7 = load %struct.sVString*, %struct.sVString** %signature, align 8
  %8 = load i8*, i8** %line.addr, align 8
  %9 = load %struct.regexMatch*, %struct.regexMatch** %matches.addr, align 8
  %arrayidx5 = getelementptr inbounds %struct.regexMatch, %struct.regexMatch* %9, i64 2
  %start = getelementptr inbounds %struct.regexMatch, %struct.regexMatch* %arrayidx5, i32 0, i32 0
  %10 = load i64, i64* %start, align 8
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 %10
  %11 = load %struct.regexMatch*, %struct.regexMatch** %matches.addr, align 8
  %arrayidx6 = getelementptr inbounds %struct.regexMatch, %struct.regexMatch* %11, i64 2
  %length7 = getelementptr inbounds %struct.regexMatch, %struct.regexMatch* %arrayidx6, i32 0, i32 1
  %12 = load i64, i64* %length7, align 8
  call void @vStringNCopyS(%struct.sVString* %7, i8* %add.ptr, i64 %12)
  br label %if.end

if.end:                                           ; preds = %if.then4, %cond.end
  %13 = load %struct.sVString*, %struct.sVString** %name, align 8
  %14 = load i8*, i8** %line.addr, align 8
  %15 = load %struct.regexMatch*, %struct.regexMatch** %matches.addr, align 8
  %arrayidx8 = getelementptr inbounds %struct.regexMatch, %struct.regexMatch* %15, i64 1
  %start9 = getelementptr inbounds %struct.regexMatch, %struct.regexMatch* %arrayidx8, i32 0, i32 0
  %16 = load i64, i64* %start9, align 8
  %add.ptr10 = getelementptr inbounds i8, i8* %14, i64 %16
  %17 = load %struct.regexMatch*, %struct.regexMatch** %matches.addr, align 8
  %arrayidx11 = getelementptr inbounds %struct.regexMatch, %struct.regexMatch* %17, i64 1
  %length12 = getelementptr inbounds %struct.regexMatch, %struct.regexMatch* %arrayidx11, i32 0, i32 1
  %18 = load i64, i64* %length12, align 8
  call void @vStringNCopyS(%struct.sVString* %13, i8* %add.ptr10, i64 %18)
  %19 = load %struct.macro_cb_data*, %struct.macro_cb_data** %data, align 8
  %rindex = getelementptr inbounds %struct.macro_cb_data, %struct.macro_cb_data* %19, i32 0, i32 1
  %20 = load i32, i32* %rindex, align 4
  %cmp13 = icmp eq i32 %20, -1
  br i1 %cmp13, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end
  %21 = load %struct.sVString*, %struct.sVString** %name, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %21, i32 0, i32 2
  %22 = load i8*, i8** %buffer, align 8
  %23 = load %struct.macro_cb_data*, %struct.macro_cb_data** %data, align 8
  %kindex = getelementptr inbounds %struct.macro_cb_data, %struct.macro_cb_data* %23, i32 0, i32 0
  %24 = load i32, i32* %kindex, align 4
  call void @initTagEntry(%struct.sTagEntryInfo* %tag, i8* %22, i32 %24)
  br label %if.end18

if.else:                                          ; preds = %if.end
  %25 = load %struct.sVString*, %struct.sVString** %name, align 8
  %buffer15 = getelementptr inbounds %struct.sVString, %struct.sVString* %25, i32 0, i32 2
  %26 = load i8*, i8** %buffer15, align 8
  %27 = load %struct.macro_cb_data*, %struct.macro_cb_data** %data, align 8
  %kindex16 = getelementptr inbounds %struct.macro_cb_data, %struct.macro_cb_data* %27, i32 0, i32 0
  %28 = load i32, i32* %kindex16, align 4
  %29 = load %struct.macro_cb_data*, %struct.macro_cb_data** %data, align 8
  %rindex17 = getelementptr inbounds %struct.macro_cb_data, %struct.macro_cb_data* %29, i32 0, i32 1
  %30 = load i32, i32* %rindex17, align 4
  call void @initRefTagEntry(%struct.sTagEntryInfo* %tag, i8* %26, i32 %28, i32 %30)
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then14
  %31 = load %struct.sVString*, %struct.sVString** %signature, align 8
  %tobool19 = icmp ne %struct.sVString* %31, null
  br i1 %tobool19, label %if.then20, label %if.end23

if.then20:                                        ; preds = %if.end18
  %32 = load %struct.sVString*, %struct.sVString** %signature, align 8
  %buffer21 = getelementptr inbounds %struct.sVString, %struct.sVString* %32, i32 0, i32 2
  %33 = load i8*, i8** %buffer21, align 8
  %extensionFields = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %tag, i32 0, i32 11
  %signature22 = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields, i32 0, i32 8
  store i8* %33, i8** %signature22, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %if.end18
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end23
  %34 = load i8*, i8** %line.addr, align 8
  %tobool24 = icmp ne i8* %34, null
  br i1 %tobool24, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %35 = load i8*, i8** %line.addr, align 8
  %call25 = call zeroext i1 @is_line_continued(i8* %35)
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %36 = phi i1 [ false, %while.cond ], [ %call25, %land.rhs ]
  br i1 %36, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  store i8 1, i8* @rejecting, align 1
  %call26 = call i8* @readLineFromInputFile()
  store i8* %call26, i8** %line.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  store i8 0, i8* @rejecting, align 1
  %call27 = call i64 @getInputLineNumber()
  %extensionFields28 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %tag, i32 0, i32 11
  %endLine = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields28, i32 0, i32 11
  store i64 %call27, i64* %endLine, align 8
  %call29 = call i32 @makeTagEntry(%struct.sTagEntryInfo* %tag)
  %37 = load %struct.sVString*, %struct.sVString** %name, align 8
  call void @vStringDelete(%struct.sVString* %37)
  %38 = load %struct.sVString*, %struct.sVString** %signature, align 8
  %tobool30 = icmp ne %struct.sVString* %38, null
  br i1 %tobool30, label %if.then31, label %if.end32

if.then31:                                        ; preds = %while.end
  %39 = load %struct.sVString*, %struct.sVString** %signature, align 8
  call void @vStringDelete(%struct.sVString* %39)
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %while.end
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %entry
  ret i1 true
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @found_package_cb(i8* %line, %struct.regexMatch* %matches, i32 %count, i8* %userData) #0 {
entry:
  %line.addr = alloca i8*, align 8
  %matches.addr = alloca %struct.regexMatch*, align 8
  %count.addr = alloca i32, align 4
  %userData.addr = alloca i8*, align 8
  %name = alloca %struct.sVString*, align 8
  %tag = alloca %struct.sTagEntryInfo, align 8
  store i8* %line, i8** %line.addr, align 8
  store %struct.regexMatch* %matches, %struct.regexMatch** %matches.addr, align 8
  store i32 %count, i32* %count.addr, align 4
  store i8* %userData, i8** %userData.addr, align 8
  %0 = load i32, i32* %count.addr, align 4
  %cmp = icmp ugt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call, %struct.sVString** %name, align 8
  %1 = load %struct.sVString*, %struct.sVString** %name, align 8
  %2 = load i8*, i8** %line.addr, align 8
  %3 = load %struct.regexMatch*, %struct.regexMatch** %matches.addr, align 8
  %arrayidx = getelementptr inbounds %struct.regexMatch, %struct.regexMatch* %3, i64 2
  %start = getelementptr inbounds %struct.regexMatch, %struct.regexMatch* %arrayidx, i32 0, i32 0
  %4 = load i64, i64* %start, align 8
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %4
  %5 = load %struct.regexMatch*, %struct.regexMatch** %matches.addr, align 8
  %arrayidx1 = getelementptr inbounds %struct.regexMatch, %struct.regexMatch* %5, i64 2
  %length = getelementptr inbounds %struct.regexMatch, %struct.regexMatch* %arrayidx1, i32 0, i32 1
  %6 = load i64, i64* %length, align 8
  call void @vStringNCopyS(%struct.sVString* %1, i8* %add.ptr, i64 %6)
  %7 = load %struct.sVString*, %struct.sVString** %name, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %7, i32 0, i32 2
  %8 = load i8*, i8** %buffer, align 8
  call void @initTagEntry(%struct.sTagEntryInfo* %tag, i8* %8, i32 2)
  %9 = load i8*, i8** %userData.addr, align 8
  %10 = bitcast i8* %9 to i32*
  %11 = load i32, i32* %10, align 4
  %extensionFields = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %tag, i32 0, i32 11
  %scopeIndex = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields, i32 0, i32 7
  store i32 %11, i32* %scopeIndex, align 8
  %call2 = call i32 @makeTagEntry(%struct.sTagEntryInfo* %tag)
  %12 = load %struct.sVString*, %struct.sVString** %name, align 8
  call void @vStringDelete(%struct.sVString* %12)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i1 true
}

declare %struct.sVString* @vStringNew() #1

declare void @vStringNCopyS(%struct.sVString*, i8*, i64) #1

declare i32 @makeSimpleTag(%struct.sVString*, i32) #1

declare i32 @strcasecmp(i8*, i8*) #1

declare void @vStringDelete(%struct.sVString*) #1

declare void @initTagEntry(%struct.sTagEntryInfo*, i8*, i32) #1

declare void @initRefTagEntry(%struct.sTagEntryInfo*, i8*, i32, i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @is_line_continued(i8* %line) #0 {
entry:
  %line.addr = alloca i8*, align 8
  %len = alloca i64, align 8
  store i8* %line, i8** %line.addr, align 8
  %0 = load i8*, i8** %line.addr, align 8
  %call = call i64 @strlen(i8* %0)
  store i64 %call, i64* %len, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %1 = load i8*, i8** %line.addr, align 8
  %2 = load i64, i64* %len, align 8
  %sub = sub i64 %2, 1
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %sub
  %3 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 92
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %do.end
  %4 = load i64, i64* %len, align 8
  %cmp2 = icmp uge i64 %4, 2
  br i1 %cmp2, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %lor.rhs
  %5 = load i8*, i8** %line.addr, align 8
  %6 = load i64, i64* %len, align 8
  %sub4 = sub i64 %6, 1
  %arrayidx5 = getelementptr inbounds i8, i8* %5, i64 %sub4
  %7 = load i8, i8* %arrayidx5, align 1
  %conv6 = sext i8 %7 to i32
  %cmp7 = icmp eq i32 %conv6, 10
  br i1 %cmp7, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %8 = load i8*, i8** %line.addr, align 8
  %9 = load i64, i64* %len, align 8
  %sub9 = sub i64 %9, 2
  %arrayidx10 = getelementptr inbounds i8, i8* %8, i64 %sub9
  %10 = load i8, i8* %arrayidx10, align 1
  %conv11 = sext i8 %10 to i32
  %cmp12 = icmp eq i32 %conv11, 92
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %lor.rhs
  %11 = phi i1 [ false, %land.lhs.true ], [ false, %lor.rhs ], [ %cmp12, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %do.end
  %12 = phi i1 [ true, %do.end ], [ %11, %land.end ]
  %13 = zext i1 %12 to i64
  %cond = select i1 %12, i32 1, i32 0
  %tobool = icmp ne i32 %cond, 0
  ret i1 %tobool
}

declare i8* @readLineFromInputFile() #1

declare i64 @getInputLineNumber() #1

declare i32 @makeTagEntry(%struct.sTagEntryInfo*) #1

declare i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 10.0.0 (https://github.com/holzschu/clang.git 0cfc630fbdb62e96720b611a57123ef3eb13e297) (https://github.com/holzschu/llvm.git 0d8a71e39b28502c24718f7e74b5acbcfe36dfe0)"}
