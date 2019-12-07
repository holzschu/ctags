; ModuleID = 'sh.c'
source_filename = "sh.c"
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
%struct.hereDocParsingState = type { [2 x %struct.sVString*], %struct.sVString*, i32, i64, i32 }

@.str = private unnamed_addr constant [3 x i8] c"Sh\00", align 1
@ShKinds = internal global [4 x %struct.sKindDefinition] [%struct.sKindDefinition { i8 1, i8 97, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 102, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 115, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), i8 1, i32 1, %struct.sRoleDesc* getelementptr inbounds ([1 x %struct.sRoleDesc], [1 x %struct.sRoleDesc]* @ShScriptRoles, i32 0, i32 0), %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 104, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i32 0, i32 0), i8 0, i32 1, %struct.sRoleDesc* getelementptr inbounds ([1 x %struct.sRoleDesc], [1 x %struct.sRoleDesc]* @ShHeredocRoles, i32 0, i32 0), %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }], align 8
@extensions = internal constant [8 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), i8* null], align 8
@aliases = internal constant [7 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0), i8* null], align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"alias\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"aliases\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"function\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"functions\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"script\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"script files\00", align 1
@ShScriptRoles = internal global [1 x %struct.sRoleDesc] [%struct.sRoleDesc { i8 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0) }], align 8
@.str.7 = private unnamed_addr constant [8 x i8] c"heredoc\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"label for here document\00", align 1
@ShHeredocRoles = internal global [1 x %struct.sRoleDesc] [%struct.sRoleDesc { i8 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0) }], align 8
@.str.9 = private unnamed_addr constant [7 x i8] c"loaded\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"endmarker\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"end marker\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"sh\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"SH\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"bsh\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"bash\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"ksh\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"zsh\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"ash\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"shell-script\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"source\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"env\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sParserDefinition* @ShParser() #0 {
entry:
  %def = alloca %struct.sParserDefinition*, align 8
  %call = call %struct.sParserDefinition* @parserNew(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store %struct.sParserDefinition* %call, %struct.sParserDefinition** %def, align 8
  %0 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %0, i32 0, i32 1
  store %struct.sKindDefinition* getelementptr inbounds ([4 x %struct.sKindDefinition], [4 x %struct.sKindDefinition]* @ShKinds, i64 0, i64 0), %struct.sKindDefinition** %kindTable, align 8
  %1 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %1, i32 0, i32 2
  store i32 4, i32* %kindCount, align 8
  %2 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %extensions = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %2, i32 0, i32 3
  store i8** getelementptr inbounds ([8 x i8*], [8 x i8*]* @extensions, i64 0, i64 0), i8*** %extensions, align 8
  %3 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %aliases = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %3, i32 0, i32 5
  store i8** getelementptr inbounds ([7 x i8*], [7 x i8*]* @aliases, i64 0, i64 0), i8*** %aliases, align 8
  %4 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %parser = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %4, i32 0, i32 8
  store void ()* @findShTags, void ()** %parser, align 8
  %5 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %useCork = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %5, i32 0, i32 12
  store i8 1, i8* %useCork, align 4
  %6 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  ret %struct.sParserDefinition* %6
}

declare %struct.sParserDefinition* @parserNew(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @findShTags() #0 {
entry:
  %name = alloca %struct.sVString*, align 8
  %line = alloca i8*, align 8
  %hereDocDelimiter = alloca %struct.sVString*, align 8
  %hereDocIndented = alloca i8, align 1
  %check_char = alloca i1 (i32)*, align 8
  %hstate = alloca %struct.hereDocParsingState, align 8
  %cp = alloca i8*, align 8
  %found_kind = alloca i32, align 4
  %start = alloca i8*, align 8
  %end = alloca i8*, align 8
  %trimEscapeSequences = alloca i8, align 1
  %quoted = alloca i8, align 1
  %vStringClear_s = alloca %struct.sVString*, align 8
  %d = alloca i32, align 4
  %vStringClear_s257 = alloca %struct.sVString*, align 8
  %call = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call, %struct.sVString** %name, align 8
  store %struct.sVString* null, %struct.sVString** %hereDocDelimiter, align 8
  store i8 0, i8* %hereDocIndented, align 1
  call void @hdocStateInit(%struct.hereDocParsingState* %hstate)
  br label %while.cond

while.cond:                                       ; preds = %while.end262, %if.end18, %entry
  %call1 = call i8* @readLineFromInputFile()
  store i8* %call1, i8** %line, align 8
  %cmp = icmp ne i8* %call1, null
  br i1 %cmp, label %while.body, label %while.end263

while.body:                                       ; preds = %while.cond
  %0 = load i8*, i8** %line, align 8
  store i8* %0, i8** %cp, align 8
  store i32 -1, i32* %found_kind, align 4
  %1 = load %struct.sVString*, %struct.sVString** %hereDocDelimiter, align 8
  %tobool = icmp ne %struct.sVString* %1, null
  br i1 %tobool, label %if.then, label %if.end19

if.then:                                          ; preds = %while.body
  %2 = load i8, i8* %hereDocIndented, align 1
  %tobool2 = trunc i8 %2 to i1
  br i1 %tobool2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  br label %while.cond4

while.cond4:                                      ; preds = %while.body7, %if.then3
  %3 = load i8*, i8** %cp, align 8
  %4 = load i8, i8* %3, align 1
  %conv = zext i8 %4 to i32
  %cmp5 = icmp eq i32 %conv, 9
  br i1 %cmp5, label %while.body7, label %while.end

while.body7:                                      ; preds = %while.cond4
  %5 = load i8*, i8** %cp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %cp, align 8
  br label %while.cond4

while.end:                                        ; preds = %while.cond4
  br label %if.end

if.end:                                           ; preds = %while.end, %if.then
  %6 = load i8*, i8** %cp, align 8
  %7 = load %struct.sVString*, %struct.sVString** %hereDocDelimiter, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %7, i32 0, i32 2
  %8 = load i8*, i8** %buffer, align 8
  %call8 = call i32 @strcmp(i8* %6, i8* %8)
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %if.then11, label %if.end18

if.then11:                                        ; preds = %if.end
  %call12 = call i64 @getInputLineNumber()
  call void @hdocStateUpdateTag(%struct.hereDocParsingState* %hstate, i64 %call12)
  call void @hdocStateMakePromiseMaybe(%struct.hereDocParsingState* %hstate)
  %9 = load %struct.sVString*, %struct.sVString** %hereDocDelimiter, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %9, i32 0, i32 0
  %10 = load i64, i64* %length, align 8
  %cmp13 = icmp eq i64 %10, 0
  br i1 %cmp13, label %if.end17, label %if.then15

if.then15:                                        ; preds = %if.then11
  %11 = load %struct.sVString*, %struct.sVString** %hereDocDelimiter, align 8
  %call16 = call i32 @makeSimpleRefTag(%struct.sVString* %11, i32 3, i32 0)
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.then11
  %12 = load %struct.sVString*, %struct.sVString** %hereDocDelimiter, align 8
  call void @vStringDelete(%struct.sVString* %12)
  store %struct.sVString* null, %struct.sVString** %hereDocDelimiter, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.end
  br label %while.cond

if.end19:                                         ; preds = %while.body
  call void @hdocStateClear(%struct.hereDocParsingState* %hstate)
  br label %while.cond20

while.cond20:                                     ; preds = %do.end261, %if.end203, %if.end19
  %13 = load i8*, i8** %cp, align 8
  %14 = load i8, i8* %13, align 1
  %conv21 = zext i8 %14 to i32
  %cmp22 = icmp ne i32 %conv21, 0
  br i1 %cmp22, label %while.body24, label %while.end262

while.body24:                                     ; preds = %while.cond20
  br label %while.cond25

while.cond25:                                     ; preds = %while.body29, %while.body24
  %15 = load i8*, i8** %cp, align 8
  %16 = load i8, i8* %15, align 1
  %conv26 = zext i8 %16 to i32
  %call27 = call i32 @isspace(i32 %conv26) #3
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %while.body29, label %while.end31

while.body29:                                     ; preds = %while.cond25
  %17 = load i8*, i8** %cp, align 8
  %incdec.ptr30 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr30, i8** %cp, align 8
  br label %while.cond25

while.end31:                                      ; preds = %while.cond25
  %18 = load i8*, i8** %cp, align 8
  %19 = load i8, i8* %18, align 1
  %conv32 = zext i8 %19 to i32
  %cmp33 = icmp eq i32 %conv32, 34
  br i1 %cmp33, label %if.then35, label %if.else

if.then35:                                        ; preds = %while.end31
  %20 = load i8*, i8** %cp, align 8
  %call36 = call i8* @skipDoubleString(i8* %20)
  store i8* %call36, i8** %cp, align 8
  br label %if.end128

if.else:                                          ; preds = %while.end31
  %21 = load i8*, i8** %cp, align 8
  %22 = load i8, i8* %21, align 1
  %conv37 = zext i8 %22 to i32
  %cmp38 = icmp eq i32 %conv37, 39
  br i1 %cmp38, label %if.then40, label %if.else42

if.then40:                                        ; preds = %if.else
  %23 = load i8*, i8** %cp, align 8
  %call41 = call i8* @skipSingleString(i8* %23)
  store i8* %call41, i8** %cp, align 8
  br label %if.end127

if.else42:                                        ; preds = %if.else
  %24 = load i8*, i8** %cp, align 8
  %25 = load i8, i8* %24, align 1
  %conv43 = zext i8 %25 to i32
  %cmp44 = icmp eq i32 %conv43, 35
  br i1 %cmp44, label %if.then46, label %if.else47

if.then46:                                        ; preds = %if.else42
  br label %while.end262

if.else47:                                        ; preds = %if.else42
  %26 = load i8*, i8** %cp, align 8
  %arrayidx = getelementptr inbounds i8, i8* %26, i64 0
  %27 = load i8, i8* %arrayidx, align 1
  %conv48 = zext i8 %27 to i32
  %cmp49 = icmp eq i32 %conv48, 60
  br i1 %cmp49, label %land.lhs.true, label %if.end125

land.lhs.true:                                    ; preds = %if.else47
  %28 = load i8*, i8** %cp, align 8
  %arrayidx51 = getelementptr inbounds i8, i8* %28, i64 1
  %29 = load i8, i8* %arrayidx51, align 1
  %conv52 = zext i8 %29 to i32
  %cmp53 = icmp eq i32 %conv52, 60
  br i1 %cmp53, label %if.then55, label %if.end125

if.then55:                                        ; preds = %land.lhs.true
  store i8 0, i8* %trimEscapeSequences, align 1
  store i8 0, i8* %quoted, align 1
  %30 = load i8*, i8** %cp, align 8
  %add.ptr = getelementptr inbounds i8, i8* %30, i64 2
  store i8* %add.ptr, i8** %cp, align 8
  %31 = load i8*, i8** %cp, align 8
  %32 = load i8, i8* %31, align 1
  %conv56 = zext i8 %32 to i32
  %cmp57 = icmp ne i32 %conv56, 45
  br i1 %cmp57, label %if.then59, label %if.else60

if.then59:                                        ; preds = %if.then55
  store i8 0, i8* %hereDocIndented, align 1
  br label %if.end62

if.else60:                                        ; preds = %if.then55
  store i8 1, i8* %hereDocIndented, align 1
  %33 = load i8*, i8** %cp, align 8
  %incdec.ptr61 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr61, i8** %cp, align 8
  br label %if.end62

if.end62:                                         ; preds = %if.else60, %if.then59
  br label %while.cond63

while.cond63:                                     ; preds = %while.body67, %if.end62
  %34 = load i8*, i8** %cp, align 8
  %35 = load i8, i8* %34, align 1
  %conv64 = zext i8 %35 to i32
  %call65 = call i32 @isspace(i32 %conv64) #3
  %tobool66 = icmp ne i32 %call65, 0
  br i1 %tobool66, label %while.body67, label %while.end69

while.body67:                                     ; preds = %while.cond63
  %36 = load i8*, i8** %cp, align 8
  %incdec.ptr68 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %incdec.ptr68, i8** %cp, align 8
  br label %while.cond63

while.end69:                                      ; preds = %while.cond63
  %37 = load i8*, i8** %cp, align 8
  store i8* %37, i8** %end, align 8
  store i8* %37, i8** %start, align 8
  %38 = load i8*, i8** %cp, align 8
  %39 = load i8, i8* %38, align 1
  %conv70 = zext i8 %39 to i32
  %cmp71 = icmp eq i32 %conv70, 34
  br i1 %cmp71, label %if.then73, label %if.else76

if.then73:                                        ; preds = %while.end69
  %40 = load i8*, i8** %start, align 8
  %incdec.ptr74 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %incdec.ptr74, i8** %start, align 8
  %41 = load i8*, i8** %cp, align 8
  %call75 = call i8* @skipDoubleString(i8* %41)
  store i8* %call75, i8** %cp, align 8
  store i8* %call75, i8** %end, align 8
  store i8 1, i8* %trimEscapeSequences, align 1
  store i8 1, i8* %quoted, align 1
  br label %if.end91

if.else76:                                        ; preds = %while.end69
  %42 = load i8*, i8** %cp, align 8
  %43 = load i8, i8* %42, align 1
  %conv77 = zext i8 %43 to i32
  %cmp78 = icmp eq i32 %conv77, 39
  br i1 %cmp78, label %if.then80, label %if.else83

if.then80:                                        ; preds = %if.else76
  %44 = load i8*, i8** %start, align 8
  %incdec.ptr81 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %incdec.ptr81, i8** %start, align 8
  %45 = load i8*, i8** %cp, align 8
  %call82 = call i8* @skipSingleString(i8* %45)
  store i8* %call82, i8** %cp, align 8
  store i8* %call82, i8** %end, align 8
  store i8 1, i8* %quoted, align 1
  br label %if.end90

if.else83:                                        ; preds = %if.else76
  br label %while.cond84

while.cond84:                                     ; preds = %while.body87, %if.else83
  %46 = load i8*, i8** %cp, align 8
  %47 = load i8, i8* %46, align 1
  %conv85 = zext i8 %47 to i32
  %call86 = call zeroext i1 @isIdentChar(i32 %conv85)
  br i1 %call86, label %while.body87, label %while.end89

while.body87:                                     ; preds = %while.cond84
  %48 = load i8*, i8** %cp, align 8
  %incdec.ptr88 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %incdec.ptr88, i8** %cp, align 8
  br label %while.cond84

while.end89:                                      ; preds = %while.cond84
  %49 = load i8*, i8** %cp, align 8
  store i8* %49, i8** %end, align 8
  br label %if.end90

if.end90:                                         ; preds = %while.end89, %if.then80
  br label %if.end91

if.end91:                                         ; preds = %if.end90, %if.then73
  %50 = load i8*, i8** %end, align 8
  %51 = load i8*, i8** %start, align 8
  %cmp92 = icmp ugt i8* %50, %51
  br i1 %cmp92, label %if.then96, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end91
  %52 = load i8, i8* %quoted, align 1
  %tobool94 = trunc i8 %52 to i1
  br i1 %tobool94, label %if.then96, label %if.end124

if.then96:                                        ; preds = %lor.lhs.false, %if.end91
  %53 = load %struct.sVString*, %struct.sVString** %hereDocDelimiter, align 8
  %tobool97 = icmp ne %struct.sVString* %53, null
  br i1 %tobool97, label %if.then98, label %if.else102

if.then98:                                        ; preds = %if.then96
  br label %do.body

do.body:                                          ; preds = %if.then98
  %54 = load %struct.sVString*, %struct.sVString** %hereDocDelimiter, align 8
  store %struct.sVString* %54, %struct.sVString** %vStringClear_s, align 8
  %55 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %length99 = getelementptr inbounds %struct.sVString, %struct.sVString* %55, i32 0, i32 0
  store i64 0, i64* %length99, align 8
  %56 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %buffer100 = getelementptr inbounds %struct.sVString, %struct.sVString* %56, i32 0, i32 2
  %57 = load i8*, i8** %buffer100, align 8
  %arrayidx101 = getelementptr inbounds i8, i8* %57, i64 0
  store i8 0, i8* %arrayidx101, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %if.end104

if.else102:                                       ; preds = %if.then96
  %call103 = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call103, %struct.sVString** %hereDocDelimiter, align 8
  br label %if.end104

if.end104:                                        ; preds = %if.else102, %do.end
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end104
  %58 = load i8*, i8** %end, align 8
  %59 = load i8*, i8** %start, align 8
  %cmp105 = icmp ugt i8* %58, %59
  br i1 %cmp105, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %60 = load i8, i8* %trimEscapeSequences, align 1
  %tobool107 = trunc i8 %60 to i1
  br i1 %tobool107, label %land.lhs.true109, label %if.end115

land.lhs.true109:                                 ; preds = %for.body
  %61 = load i8*, i8** %start, align 8
  %62 = load i8, i8* %61, align 1
  %conv110 = zext i8 %62 to i32
  %cmp111 = icmp eq i32 %conv110, 92
  br i1 %cmp111, label %if.then113, label %if.end115

if.then113:                                       ; preds = %land.lhs.true109
  %63 = load i8*, i8** %start, align 8
  %incdec.ptr114 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %incdec.ptr114, i8** %start, align 8
  br label %if.end115

if.end115:                                        ; preds = %if.then113, %land.lhs.true109, %for.body
  %64 = load %struct.sVString*, %struct.sVString** %hereDocDelimiter, align 8
  %65 = load i8*, i8** %start, align 8
  %66 = load i8, i8* %65, align 1
  %conv116 = zext i8 %66 to i32
  call void @vStringPut(%struct.sVString* %64, i32 %conv116)
  br label %for.inc

for.inc:                                          ; preds = %if.end115
  %67 = load i8*, i8** %start, align 8
  %incdec.ptr117 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %incdec.ptr117, i8** %start, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %68 = load %struct.sVString*, %struct.sVString** %hereDocDelimiter, align 8
  %length118 = getelementptr inbounds %struct.sVString, %struct.sVString* %68, i32 0, i32 0
  %69 = load i64, i64* %length118, align 8
  %cmp119 = icmp ugt i64 %69, 0
  br i1 %cmp119, label %if.then121, label %if.end123

if.then121:                                       ; preds = %for.end
  %70 = load %struct.sVString*, %struct.sVString** %hereDocDelimiter, align 8
  %call122 = call i32 @makeSimpleTag(%struct.sVString* %70, i32 3)
  %corkIndex = getelementptr inbounds %struct.hereDocParsingState, %struct.hereDocParsingState* %hstate, i32 0, i32 4
  store i32 %call122, i32* %corkIndex, align 8
  br label %if.end123

if.end123:                                        ; preds = %if.then121, %for.end
  call void @hdocStateRecordStatelineMaybe(%struct.hereDocParsingState* %hstate)
  br label %if.end124

if.end124:                                        ; preds = %if.end123, %lor.lhs.false
  br label %if.end125

if.end125:                                        ; preds = %if.end124, %land.lhs.true, %if.else47
  br label %if.end126

if.end126:                                        ; preds = %if.end125
  br label %if.end127

if.end127:                                        ; preds = %if.end126, %if.then40
  br label %if.end128

if.end128:                                        ; preds = %if.end127, %if.then35
  store i1 (i32)* @isBashFunctionChar, i1 (i32)** %check_char, align 8
  %71 = load i8*, i8** %cp, align 8
  %call129 = call i32 @strncmp(i8* %71, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i64 8)
  %cmp130 = icmp eq i32 %call129, 0
  br i1 %cmp130, label %land.lhs.true132, label %if.else139

land.lhs.true132:                                 ; preds = %if.end128
  %72 = load i8*, i8** %cp, align 8
  %arrayidx133 = getelementptr inbounds i8, i8* %72, i64 8
  %73 = load i8, i8* %arrayidx133, align 1
  %conv134 = zext i8 %73 to i32
  %call135 = call i32 @isspace(i32 %conv134) #3
  %tobool136 = icmp ne i32 %call135, 0
  br i1 %tobool136, label %if.then137, label %if.else139

if.then137:                                       ; preds = %land.lhs.true132
  store i32 1, i32* %found_kind, align 4
  %74 = load i8*, i8** %cp, align 8
  %add.ptr138 = getelementptr inbounds i8, i8* %74, i64 8
  store i8* %add.ptr138, i8** %cp, align 8
  br label %if.end176

if.else139:                                       ; preds = %land.lhs.true132, %if.end128
  %75 = load i8*, i8** %cp, align 8
  %call140 = call i32 @strncmp(i8* %75, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 5)
  %cmp141 = icmp eq i32 %call140, 0
  br i1 %cmp141, label %land.lhs.true143, label %if.else150

land.lhs.true143:                                 ; preds = %if.else139
  %76 = load i8*, i8** %cp, align 8
  %arrayidx144 = getelementptr inbounds i8, i8* %76, i64 5
  %77 = load i8, i8* %arrayidx144, align 1
  %conv145 = zext i8 %77 to i32
  %call146 = call i32 @isspace(i32 %conv145) #3
  %tobool147 = icmp ne i32 %call146, 0
  br i1 %tobool147, label %if.then148, label %if.else150

if.then148:                                       ; preds = %land.lhs.true143
  store i1 (i32)* @isIdentChar, i1 (i32)** %check_char, align 8
  store i32 0, i32* %found_kind, align 4
  %78 = load i8*, i8** %cp, align 8
  %add.ptr149 = getelementptr inbounds i8, i8* %78, i64 5
  store i8* %add.ptr149, i8** %cp, align 8
  br label %if.end175

if.else150:                                       ; preds = %land.lhs.true143, %if.else139
  %79 = load i8*, i8** %cp, align 8
  %arrayidx151 = getelementptr inbounds i8, i8* %79, i64 0
  %80 = load i8, i8* %arrayidx151, align 1
  %conv152 = zext i8 %80 to i32
  %cmp153 = icmp eq i32 %conv152, 46
  br i1 %cmp153, label %land.lhs.true155, label %if.else162

land.lhs.true155:                                 ; preds = %if.else150
  %81 = load i8*, i8** %cp, align 8
  %arrayidx156 = getelementptr inbounds i8, i8* %81, i64 1
  %82 = load i8, i8* %arrayidx156, align 1
  %conv157 = zext i8 %82 to i32
  %call158 = call i32 @isspace(i32 %conv157) #3
  %tobool159 = icmp ne i32 %call158, 0
  br i1 %tobool159, label %if.then160, label %if.else162

if.then160:                                       ; preds = %land.lhs.true155
  store i32 2, i32* %found_kind, align 4
  %83 = load i8*, i8** %cp, align 8
  %incdec.ptr161 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %incdec.ptr161, i8** %cp, align 8
  store i1 (i32)* @isFileChar, i1 (i32)** %check_char, align 8
  br label %if.end174

if.else162:                                       ; preds = %land.lhs.true155, %if.else150
  %84 = load i8*, i8** %cp, align 8
  %call163 = call i32 @strncmp(i8* %84, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0), i64 6)
  %cmp164 = icmp eq i32 %call163, 0
  br i1 %cmp164, label %land.lhs.true166, label %if.end173

land.lhs.true166:                                 ; preds = %if.else162
  %85 = load i8*, i8** %cp, align 8
  %arrayidx167 = getelementptr inbounds i8, i8* %85, i64 6
  %86 = load i8, i8* %arrayidx167, align 1
  %conv168 = zext i8 %86 to i32
  %call169 = call i32 @isspace(i32 %conv168) #3
  %tobool170 = icmp ne i32 %call169, 0
  br i1 %tobool170, label %if.then171, label %if.end173

if.then171:                                       ; preds = %land.lhs.true166
  store i32 2, i32* %found_kind, align 4
  %87 = load i8*, i8** %cp, align 8
  %add.ptr172 = getelementptr inbounds i8, i8* %87, i64 6
  store i8* %add.ptr172, i8** %cp, align 8
  store i1 (i32)* @isFileChar, i1 (i32)** %check_char, align 8
  br label %if.end173

if.end173:                                        ; preds = %if.then171, %land.lhs.true166, %if.else162
  br label %if.end174

if.end174:                                        ; preds = %if.end173, %if.then160
  br label %if.end175

if.end175:                                        ; preds = %if.end174, %if.then148
  br label %if.end176

if.end176:                                        ; preds = %if.end175, %if.then137
  %88 = load i32, i32* %found_kind, align 4
  %cmp177 = icmp ne i32 %88, -1
  br i1 %cmp177, label %if.then179, label %if.end187

if.then179:                                       ; preds = %if.end176
  br label %while.cond180

while.cond180:                                    ; preds = %while.body184, %if.then179
  %89 = load i8*, i8** %cp, align 8
  %90 = load i8, i8* %89, align 1
  %conv181 = zext i8 %90 to i32
  %call182 = call i32 @isspace(i32 %conv181) #3
  %tobool183 = icmp ne i32 %call182, 0
  br i1 %tobool183, label %while.body184, label %while.end186

while.body184:                                    ; preds = %while.cond180
  %91 = load i8*, i8** %cp, align 8
  %incdec.ptr185 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %incdec.ptr185, i8** %cp, align 8
  br label %while.cond180

while.end186:                                     ; preds = %while.cond180
  br label %if.end187

if.end187:                                        ; preds = %while.end186, %if.end176
  %92 = load i1 (i32)*, i1 (i32)** %check_char, align 8
  %93 = load i8*, i8** %cp, align 8
  %94 = load i8, i8* %93, align 1
  %conv188 = zext i8 %94 to i32
  %call189 = call zeroext i1 %92(i32 %conv188)
  br i1 %call189, label %if.end204, label %if.then190

if.then190:                                       ; preds = %if.end187
  store i32 -1, i32* %found_kind, align 4
  %95 = load i8*, i8** %cp, align 8
  %96 = load %struct.sVString*, %struct.sVString** %hereDocDelimiter, align 8
  %call191 = call i32 @hdocStateReadDestfileName(%struct.hereDocParsingState* %hstate, i8* %95, %struct.sVString* %96)
  store i32 %call191, i32* %d, align 4
  %97 = load i32, i32* %d, align 4
  %cmp192 = icmp sgt i32 %97, 0
  br i1 %cmp192, label %if.then194, label %if.else196

if.then194:                                       ; preds = %if.then190
  %98 = load i32, i32* %d, align 4
  %99 = load i8*, i8** %cp, align 8
  %idx.ext = sext i32 %98 to i64
  %add.ptr195 = getelementptr inbounds i8, i8* %99, i64 %idx.ext
  store i8* %add.ptr195, i8** %cp, align 8
  br label %if.end203

if.else196:                                       ; preds = %if.then190
  %100 = load i8*, i8** %cp, align 8
  %101 = load i8, i8* %100, align 1
  %conv197 = zext i8 %101 to i32
  %cmp198 = icmp ne i32 %conv197, 0
  br i1 %cmp198, label %if.then200, label %if.end202

if.then200:                                       ; preds = %if.else196
  %102 = load i8*, i8** %cp, align 8
  %incdec.ptr201 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %incdec.ptr201, i8** %cp, align 8
  br label %if.end202

if.end202:                                        ; preds = %if.then200, %if.else196
  br label %if.end203

if.end203:                                        ; preds = %if.end202, %if.then194
  br label %while.cond20

if.end204:                                        ; preds = %if.end187
  br label %while.cond205

while.cond205:                                    ; preds = %while.body208, %if.end204
  %103 = load i1 (i32)*, i1 (i32)** %check_char, align 8
  %104 = load i8*, i8** %cp, align 8
  %105 = load i8, i8* %104, align 1
  %conv206 = zext i8 %105 to i32
  %call207 = call zeroext i1 %103(i32 %conv206)
  br i1 %call207, label %while.body208, label %while.end211

while.body208:                                    ; preds = %while.cond205
  %106 = load %struct.sVString*, %struct.sVString** %name, align 8
  %107 = load i8*, i8** %cp, align 8
  %108 = load i8, i8* %107, align 1
  %conv209 = zext i8 %108 to i32
  call void @vStringPut(%struct.sVString* %106, i32 %conv209)
  %109 = load i8*, i8** %cp, align 8
  %incdec.ptr210 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %incdec.ptr210, i8** %cp, align 8
  br label %while.cond205

while.end211:                                     ; preds = %while.cond205
  br label %while.cond212

while.cond212:                                    ; preds = %while.body216, %while.end211
  %110 = load i8*, i8** %cp, align 8
  %111 = load i8, i8* %110, align 1
  %conv213 = zext i8 %111 to i32
  %call214 = call i32 @isspace(i32 %conv213) #3
  %tobool215 = icmp ne i32 %call214, 0
  br i1 %tobool215, label %while.body216, label %while.end218

while.body216:                                    ; preds = %while.cond212
  %112 = load i8*, i8** %cp, align 8
  %incdec.ptr217 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %incdec.ptr217, i8** %cp, align 8
  br label %while.cond212

while.end218:                                     ; preds = %while.cond212
  %113 = load i32, i32* %found_kind, align 4
  %cmp219 = icmp ne i32 %113, 2
  br i1 %cmp219, label %land.lhs.true221, label %if.end240

land.lhs.true221:                                 ; preds = %while.end218
  %114 = load i8*, i8** %cp, align 8
  %115 = load i8, i8* %114, align 1
  %conv222 = zext i8 %115 to i32
  %cmp223 = icmp eq i32 %conv222, 40
  br i1 %cmp223, label %if.then225, label %if.end240

if.then225:                                       ; preds = %land.lhs.true221
  %116 = load i8*, i8** %cp, align 8
  %incdec.ptr226 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %incdec.ptr226, i8** %cp, align 8
  br label %while.cond227

while.cond227:                                    ; preds = %while.body231, %if.then225
  %117 = load i8*, i8** %cp, align 8
  %118 = load i8, i8* %117, align 1
  %conv228 = zext i8 %118 to i32
  %call229 = call i32 @isspace(i32 %conv228) #3
  %tobool230 = icmp ne i32 %call229, 0
  br i1 %tobool230, label %while.body231, label %while.end233

while.body231:                                    ; preds = %while.cond227
  %119 = load i8*, i8** %cp, align 8
  %incdec.ptr232 = getelementptr inbounds i8, i8* %119, i32 1
  store i8* %incdec.ptr232, i8** %cp, align 8
  br label %while.cond227

while.end233:                                     ; preds = %while.cond227
  %120 = load i8*, i8** %cp, align 8
  %121 = load i8, i8* %120, align 1
  %conv234 = zext i8 %121 to i32
  %cmp235 = icmp eq i32 %conv234, 41
  br i1 %cmp235, label %if.then237, label %if.end239

if.then237:                                       ; preds = %while.end233
  store i32 1, i32* %found_kind, align 4
  %122 = load i8*, i8** %cp, align 8
  %incdec.ptr238 = getelementptr inbounds i8, i8* %122, i32 1
  store i8* %incdec.ptr238, i8** %cp, align 8
  br label %if.end239

if.end239:                                        ; preds = %if.then237, %while.end233
  br label %if.end240

if.end240:                                        ; preds = %if.end239, %land.lhs.true221, %while.end218
  %123 = load i32, i32* %found_kind, align 4
  %cmp241 = icmp ne i32 %123, -1
  br i1 %cmp241, label %if.then243, label %if.else251

if.then243:                                       ; preds = %if.end240
  %124 = load i32, i32* %found_kind, align 4
  %cmp244 = icmp eq i32 %124, 2
  br i1 %cmp244, label %if.then246, label %if.else248

if.then246:                                       ; preds = %if.then243
  %125 = load %struct.sVString*, %struct.sVString** %name, align 8
  %call247 = call i32 @makeSimpleRefTag(%struct.sVString* %125, i32 2, i32 0)
  br label %if.end250

if.else248:                                       ; preds = %if.then243
  %126 = load %struct.sVString*, %struct.sVString** %name, align 8
  %127 = load i32, i32* %found_kind, align 4
  %call249 = call i32 @makeSimpleTag(%struct.sVString* %126, i32 %127)
  br label %if.end250

if.end250:                                        ; preds = %if.else248, %if.then246
  store i32 -1, i32* %found_kind, align 4
  br label %if.end255

if.else251:                                       ; preds = %if.end240
  %128 = load %struct.sVString*, %struct.sVString** %hereDocDelimiter, align 8
  %tobool252 = icmp ne %struct.sVString* %128, null
  br i1 %tobool252, label %if.end254, label %if.then253

if.then253:                                       ; preds = %if.else251
  %129 = load %struct.sVString*, %struct.sVString** %name, align 8
  call void @hdocStateUpdateArgs(%struct.hereDocParsingState* %hstate, %struct.sVString* %129)
  br label %if.end254

if.end254:                                        ; preds = %if.then253, %if.else251
  br label %if.end255

if.end255:                                        ; preds = %if.end254, %if.end250
  br label %do.body256

do.body256:                                       ; preds = %if.end255
  %130 = load %struct.sVString*, %struct.sVString** %name, align 8
  store %struct.sVString* %130, %struct.sVString** %vStringClear_s257, align 8
  %131 = load %struct.sVString*, %struct.sVString** %vStringClear_s257, align 8
  %length258 = getelementptr inbounds %struct.sVString, %struct.sVString* %131, i32 0, i32 0
  store i64 0, i64* %length258, align 8
  %132 = load %struct.sVString*, %struct.sVString** %vStringClear_s257, align 8
  %buffer259 = getelementptr inbounds %struct.sVString, %struct.sVString* %132, i32 0, i32 2
  %133 = load i8*, i8** %buffer259, align 8
  %arrayidx260 = getelementptr inbounds i8, i8* %133, i64 0
  store i8 0, i8* %arrayidx260, align 1
  br label %do.end261

do.end261:                                        ; preds = %do.body256
  br label %while.cond20

while.end262:                                     ; preds = %if.then46, %while.cond20
  br label %while.cond

while.end263:                                     ; preds = %while.cond
  call void @hdocStateFini(%struct.hereDocParsingState* %hstate)
  %134 = load %struct.sVString*, %struct.sVString** %name, align 8
  call void @vStringDelete(%struct.sVString* %134)
  %135 = load %struct.sVString*, %struct.sVString** %hereDocDelimiter, align 8
  %tobool264 = icmp ne %struct.sVString* %135, null
  br i1 %tobool264, label %if.then265, label %if.end266

if.then265:                                       ; preds = %while.end263
  %136 = load %struct.sVString*, %struct.sVString** %hereDocDelimiter, align 8
  call void @vStringDelete(%struct.sVString* %136)
  br label %if.end266

if.end266:                                        ; preds = %if.then265, %while.end263
  ret void
}

declare %struct.sVString* @vStringNew() #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @hdocStateInit(%struct.hereDocParsingState* %hstate) #0 {
entry:
  %hstate.addr = alloca %struct.hereDocParsingState*, align 8
  store %struct.hereDocParsingState* %hstate, %struct.hereDocParsingState** %hstate.addr, align 8
  %call = call %struct.sVString* @vStringNew()
  %0 = load %struct.hereDocParsingState*, %struct.hereDocParsingState** %hstate.addr, align 8
  %args = getelementptr inbounds %struct.hereDocParsingState, %struct.hereDocParsingState* %0, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x %struct.sVString*], [2 x %struct.sVString*]* %args, i64 0, i64 0
  store %struct.sVString* %call, %struct.sVString** %arrayidx, align 8
  %call1 = call %struct.sVString* @vStringNew()
  %1 = load %struct.hereDocParsingState*, %struct.hereDocParsingState** %hstate.addr, align 8
  %args2 = getelementptr inbounds %struct.hereDocParsingState, %struct.hereDocParsingState* %1, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [2 x %struct.sVString*], [2 x %struct.sVString*]* %args2, i64 0, i64 1
  store %struct.sVString* %call1, %struct.sVString** %arrayidx3, align 8
  %call4 = call %struct.sVString* @vStringNew()
  %2 = load %struct.hereDocParsingState*, %struct.hereDocParsingState** %hstate.addr, align 8
  %destfile = getelementptr inbounds %struct.hereDocParsingState, %struct.hereDocParsingState* %2, i32 0, i32 1
  store %struct.sVString* %call4, %struct.sVString** %destfile, align 8
  %3 = load %struct.hereDocParsingState*, %struct.hereDocParsingState** %hstate.addr, align 8
  %corkIndex = getelementptr inbounds %struct.hereDocParsingState, %struct.hereDocParsingState* %3, i32 0, i32 4
  store i32 0, i32* %corkIndex, align 8
  %4 = load %struct.hereDocParsingState*, %struct.hereDocParsingState** %hstate.addr, align 8
  %sublang = getelementptr inbounds %struct.hereDocParsingState, %struct.hereDocParsingState* %4, i32 0, i32 2
  store i32 -2, i32* %sublang, align 8
  ret void
}

declare i8* @readLineFromInputFile() #1

declare i32 @strcmp(i8*, i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @hdocStateUpdateTag(%struct.hereDocParsingState* %hstate, i64 %endLine) #0 {
entry:
  %hstate.addr = alloca %struct.hereDocParsingState*, align 8
  %endLine.addr = alloca i64, align 8
  %tag = alloca %struct.sTagEntryInfo*, align 8
  store %struct.hereDocParsingState* %hstate, %struct.hereDocParsingState** %hstate.addr, align 8
  store i64 %endLine, i64* %endLine.addr, align 8
  %0 = load %struct.hereDocParsingState*, %struct.hereDocParsingState** %hstate.addr, align 8
  %corkIndex = getelementptr inbounds %struct.hereDocParsingState, %struct.hereDocParsingState* %0, i32 0, i32 4
  %1 = load i32, i32* %corkIndex, align 8
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.hereDocParsingState*, %struct.hereDocParsingState** %hstate.addr, align 8
  %corkIndex1 = getelementptr inbounds %struct.hereDocParsingState, %struct.hereDocParsingState* %2, i32 0, i32 4
  %3 = load i32, i32* %corkIndex1, align 8
  %call = call %struct.sTagEntryInfo* @getEntryInCorkQueue(i32 %3)
  store %struct.sTagEntryInfo* %call, %struct.sTagEntryInfo** %tag, align 8
  %4 = load i64, i64* %endLine.addr, align 8
  %5 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag, align 8
  %extensionFields = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %5, i32 0, i32 11
  %endLine2 = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields, i32 0, i32 11
  store i64 %4, i64* %endLine2, align 8
  %6 = load %struct.hereDocParsingState*, %struct.hereDocParsingState** %hstate.addr, align 8
  %corkIndex3 = getelementptr inbounds %struct.hereDocParsingState, %struct.hereDocParsingState* %6, i32 0, i32 4
  store i32 0, i32* %corkIndex3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i64 @getInputLineNumber() #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @hdocStateMakePromiseMaybe(%struct.hereDocParsingState* %hstate) #0 {
entry:
  %hstate.addr = alloca %struct.hereDocParsingState*, align 8
  store %struct.hereDocParsingState* %hstate, %struct.hereDocParsingState** %hstate.addr, align 8
  %0 = load %struct.hereDocParsingState*, %struct.hereDocParsingState** %hstate.addr, align 8
  %sublang = getelementptr inbounds %struct.hereDocParsingState, %struct.hereDocParsingState* %0, i32 0, i32 2
  %1 = load i32, i32* %sublang, align 8
  %cmp = icmp ne i32 %1, -2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.hereDocParsingState*, %struct.hereDocParsingState** %hstate.addr, align 8
  %sublang1 = getelementptr inbounds %struct.hereDocParsingState, %struct.hereDocParsingState* %2, i32 0, i32 2
  %3 = load i32, i32* %sublang1, align 8
  %call = call i8* @getLanguageName(i32 %3)
  %4 = load %struct.hereDocParsingState*, %struct.hereDocParsingState** %hstate.addr, align 8
  %startLine = getelementptr inbounds %struct.hereDocParsingState, %struct.hereDocParsingState* %4, i32 0, i32 3
  %5 = load i64, i64* %startLine, align 8
  %call2 = call i64 @getInputLineNumber()
  %call3 = call i32 @makePromise(i8* %call, i64 %5, i64 0, i64 %call2, i64 0, i64 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.hereDocParsingState*, %struct.hereDocParsingState** %hstate.addr, align 8
  %sublang4 = getelementptr inbounds %struct.hereDocParsingState, %struct.hereDocParsingState* %6, i32 0, i32 2
  store i32 -2, i32* %sublang4, align 8
  ret void
}

declare i32 @makeSimpleRefTag(%struct.sVString*, i32, i32) #1

declare void @vStringDelete(%struct.sVString*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @hdocStateClear(%struct.hereDocParsingState* %hstate) #0 {
entry:
  %hstate.addr = alloca %struct.hereDocParsingState*, align 8
  %vStringClear_s = alloca %struct.sVString*, align 8
  %vStringClear_s3 = alloca %struct.sVString*, align 8
  %vStringClear_s11 = alloca %struct.sVString*, align 8
  store %struct.hereDocParsingState* %hstate, %struct.hereDocParsingState** %hstate.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.hereDocParsingState*, %struct.hereDocParsingState** %hstate.addr, align 8
  %args = getelementptr inbounds %struct.hereDocParsingState, %struct.hereDocParsingState* %0, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x %struct.sVString*], [2 x %struct.sVString*]* %args, i64 0, i64 0
  %1 = load %struct.sVString*, %struct.sVString** %arrayidx, align 8
  store %struct.sVString* %1, %struct.sVString** %vStringClear_s, align 8
  %2 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %2, i32 0, i32 0
  store i64 0, i64* %length, align 8
  %3 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %3, i32 0, i32 2
  %4 = load i8*, i8** %buffer, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %4, i64 0
  store i8 0, i8* %arrayidx1, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body2

do.body2:                                         ; preds = %do.end
  %5 = load %struct.hereDocParsingState*, %struct.hereDocParsingState** %hstate.addr, align 8
  %args4 = getelementptr inbounds %struct.hereDocParsingState, %struct.hereDocParsingState* %5, i32 0, i32 0
  %arrayidx5 = getelementptr inbounds [2 x %struct.sVString*], [2 x %struct.sVString*]* %args4, i64 0, i64 1
  %6 = load %struct.sVString*, %struct.sVString** %arrayidx5, align 8
  store %struct.sVString* %6, %struct.sVString** %vStringClear_s3, align 8
  %7 = load %struct.sVString*, %struct.sVString** %vStringClear_s3, align 8
  %length6 = getelementptr inbounds %struct.sVString, %struct.sVString* %7, i32 0, i32 0
  store i64 0, i64* %length6, align 8
  %8 = load %struct.sVString*, %struct.sVString** %vStringClear_s3, align 8
  %buffer7 = getelementptr inbounds %struct.sVString, %struct.sVString* %8, i32 0, i32 2
  %9 = load i8*, i8** %buffer7, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %9, i64 0
  store i8 0, i8* %arrayidx8, align 1
  br label %do.end9

do.end9:                                          ; preds = %do.body2
  br label %do.body10

do.body10:                                        ; preds = %do.end9
  %10 = load %struct.hereDocParsingState*, %struct.hereDocParsingState** %hstate.addr, align 8
  %destfile = getelementptr inbounds %struct.hereDocParsingState, %struct.hereDocParsingState* %10, i32 0, i32 1
  %11 = load %struct.sVString*, %struct.sVString** %destfile, align 8
  store %struct.sVString* %11, %struct.sVString** %vStringClear_s11, align 8
  %12 = load %struct.sVString*, %struct.sVString** %vStringClear_s11, align 8
  %length12 = getelementptr inbounds %struct.sVString, %struct.sVString* %12, i32 0, i32 0
  store i64 0, i64* %length12, align 8
  %13 = load %struct.sVString*, %struct.sVString** %vStringClear_s11, align 8
  %buffer13 = getelementptr inbounds %struct.sVString, %struct.sVString* %13, i32 0, i32 2
  %14 = load i8*, i8** %buffer13, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %14, i64 0
  store i8 0, i8* %arrayidx14, align 1
  br label %do.end15

do.end15:                                         ; preds = %do.body10
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @isspace(i32) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @skipDoubleString(i8* %cp) #0 {
entry:
  %cp.addr = alloca i8*, align 8
  %prev = alloca i8*, align 8
  store i8* %cp, i8** %cp.addr, align 8
  %0 = load i8*, i8** %cp.addr, align 8
  store i8* %0, i8** %prev, align 8
  %1 = load i8*, i8** %cp.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i32 1
  store i8* %incdec.ptr, i8** %cp.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i8*, i8** %cp.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv = zext i8 %3 to i32
  %cmp = icmp ne i32 %conv, 34
  br i1 %cmp, label %land.rhs, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.cond
  %4 = load i8*, i8** %prev, align 8
  %5 = load i8, i8* %4, align 1
  %conv2 = zext i8 %5 to i32
  %cmp3 = icmp eq i32 %conv2, 92
  br i1 %cmp3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.lhs.false, %while.cond
  %6 = load i8*, i8** %cp.addr, align 8
  %7 = load i8, i8* %6, align 1
  %conv5 = zext i8 %7 to i32
  %cmp6 = icmp ne i32 %conv5, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.lhs.false
  %8 = phi i1 [ false, %lor.lhs.false ], [ %cmp6, %land.rhs ]
  br i1 %8, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %9 = load i8*, i8** %cp.addr, align 8
  store i8* %9, i8** %prev, align 8
  %10 = load i8*, i8** %cp.addr, align 8
  %incdec.ptr8 = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr8, i8** %cp.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %11 = load i8*, i8** %cp.addr, align 8
  ret i8* %11
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @skipSingleString(i8* %cp) #0 {
entry:
  %cp.addr = alloca i8*, align 8
  store i8* %cp, i8** %cp.addr, align 8
  %0 = load i8*, i8** %cp.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i32 1
  store i8* %incdec.ptr, i8** %cp.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i8*, i8** %cp.addr, align 8
  %2 = load i8, i8* %1, align 1
  %conv = zext i8 %2 to i32
  %cmp = icmp ne i32 %conv, 39
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %3 = load i8*, i8** %cp.addr, align 8
  %4 = load i8, i8* %3, align 1
  %conv2 = zext i8 %4 to i32
  %cmp3 = icmp ne i32 %conv2, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %5 = phi i1 [ false, %while.cond ], [ %cmp3, %land.rhs ]
  br i1 %5, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %6 = load i8*, i8** %cp.addr, align 8
  %incdec.ptr5 = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr5, i8** %cp.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %7 = load i8*, i8** %cp.addr, align 8
  ret i8* %7
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @isIdentChar(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %call = call i32 @isalnum(i32 %0) #3
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %c.addr, align 4
  %cmp = icmp eq i32 %1, 95
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %2 = load i32, i32* %c.addr, align 4
  %cmp1 = icmp eq i32 %2, 45
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %entry
  %3 = phi i1 [ true, %lor.lhs.false ], [ true, %entry ], [ %cmp1, %lor.rhs ]
  ret i1 %3
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

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @hdocStateRecordStatelineMaybe(%struct.hereDocParsingState* %hstate) #0 {
entry:
  %hstate.addr = alloca %struct.hereDocParsingState*, align 8
  %cmd = alloca i8*, align 8
  store %struct.hereDocParsingState* %hstate, %struct.hereDocParsingState** %hstate.addr, align 8
  %0 = load %struct.hereDocParsingState*, %struct.hereDocParsingState** %hstate.addr, align 8
  %args = getelementptr inbounds %struct.hereDocParsingState, %struct.hereDocParsingState* %0, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x %struct.sVString*], [2 x %struct.sVString*]* %args, i64 0, i64 0
  %1 = load %struct.sVString*, %struct.sVString** %arrayidx, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %1, i32 0, i32 0
  %2 = load i64, i64* %length, align 8
  %cmp = icmp eq i64 %2, 0
  br i1 %cmp, label %if.end23, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %struct.hereDocParsingState*, %struct.hereDocParsingState** %hstate.addr, align 8
  %args1 = getelementptr inbounds %struct.hereDocParsingState, %struct.hereDocParsingState* %3, i32 0, i32 0
  %arrayidx2 = getelementptr inbounds [2 x %struct.sVString*], [2 x %struct.sVString*]* %args1, i64 0, i64 0
  %4 = load %struct.sVString*, %struct.sVString** %arrayidx2, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %4, i32 0, i32 2
  %5 = load i8*, i8** %buffer, align 8
  store i8* %5, i8** %cmd, align 8
  %6 = load %struct.hereDocParsingState*, %struct.hereDocParsingState** %hstate.addr, align 8
  %args3 = getelementptr inbounds %struct.hereDocParsingState, %struct.hereDocParsingState* %6, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [2 x %struct.sVString*], [2 x %struct.sVString*]* %args3, i64 0, i64 0
  %7 = load %struct.sVString*, %struct.sVString** %arrayidx4, align 8
  %call = call zeroext i1 @isEnvCommand(%struct.sVString* %7)
  br i1 %call, label %if.then5, label %if.end14

if.then5:                                         ; preds = %if.then
  store i8* null, i8** %cmd, align 8
  %8 = load %struct.hereDocParsingState*, %struct.hereDocParsingState** %hstate.addr, align 8
  %args6 = getelementptr inbounds %struct.hereDocParsingState, %struct.hereDocParsingState* %8, i32 0, i32 0
  %arrayidx7 = getelementptr inbounds [2 x %struct.sVString*], [2 x %struct.sVString*]* %args6, i64 0, i64 1
  %9 = load %struct.sVString*, %struct.sVString** %arrayidx7, align 8
  %length8 = getelementptr inbounds %struct.sVString, %struct.sVString* %9, i32 0, i32 0
  %10 = load i64, i64* %length8, align 8
  %cmp9 = icmp eq i64 %10, 0
  br i1 %cmp9, label %if.end, label %if.then10

if.then10:                                        ; preds = %if.then5
  %11 = load %struct.hereDocParsingState*, %struct.hereDocParsingState** %hstate.addr, align 8
  %args11 = getelementptr inbounds %struct.hereDocParsingState, %struct.hereDocParsingState* %11, i32 0, i32 0
  %arrayidx12 = getelementptr inbounds [2 x %struct.sVString*], [2 x %struct.sVString*]* %args11, i64 0, i64 1
  %12 = load %struct.sVString*, %struct.sVString** %arrayidx12, align 8
  %buffer13 = getelementptr inbounds %struct.sVString, %struct.sVString* %12, i32 0, i32 2
  %13 = load i8*, i8** %buffer13, align 8
  store i8* %13, i8** %cmd, align 8
  br label %if.end

if.end:                                           ; preds = %if.then10, %if.then5
  br label %if.end14

if.end14:                                         ; preds = %if.end, %if.then
  %14 = load i8*, i8** %cmd, align 8
  %tobool = icmp ne i8* %14, null
  br i1 %tobool, label %if.then15, label %if.end22

if.then15:                                        ; preds = %if.end14
  %15 = load i8*, i8** %cmd, align 8
  %call16 = call i32 @getLanguageForCommand(i8* %15, i32 0)
  %16 = load %struct.hereDocParsingState*, %struct.hereDocParsingState** %hstate.addr, align 8
  %sublang = getelementptr inbounds %struct.hereDocParsingState, %struct.hereDocParsingState* %16, i32 0, i32 2
  store i32 %call16, i32* %sublang, align 8
  %17 = load %struct.hereDocParsingState*, %struct.hereDocParsingState** %hstate.addr, align 8
  %sublang17 = getelementptr inbounds %struct.hereDocParsingState, %struct.hereDocParsingState* %17, i32 0, i32 2
  %18 = load i32, i32* %sublang17, align 8
  %cmp18 = icmp ne i32 %18, -2
  br i1 %cmp18, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.then15
  %call20 = call i64 @getInputLineNumber()
  %add = add i64 %call20, 1
  %19 = load %struct.hereDocParsingState*, %struct.hereDocParsingState** %hstate.addr, align 8
  %startLine = getelementptr inbounds %struct.hereDocParsingState, %struct.hereDocParsingState* %19, i32 0, i32 3
  store i64 %add, i64* %startLine, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.then15
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.end14
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %entry
  %20 = load %struct.hereDocParsingState*, %struct.hereDocParsingState** %hstate.addr, align 8
  %destfile = getelementptr inbounds %struct.hereDocParsingState, %struct.hereDocParsingState* %20, i32 0, i32 1
  %21 = load %struct.sVString*, %struct.sVString** %destfile, align 8
  %length24 = getelementptr inbounds %struct.sVString, %struct.sVString* %21, i32 0, i32 0
  %22 = load i64, i64* %length24, align 8
  %cmp25 = icmp ugt i64 %22, 0
  br i1 %cmp25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end23
  %23 = load %struct.hereDocParsingState*, %struct.hereDocParsingState** %hstate.addr, align 8
  call void @hdocStateRecordStartlineFromDestfileMaybe(%struct.hereDocParsingState* %23)
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.end23
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @isBashFunctionChar(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %c.addr, align 4
  %cmp1 = icmp ne i32 %1, 127
  br i1 %cmp1, label %land.lhs.true2, label %land.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %2 = load i32, i32* %c.addr, align 4
  %cmp3 = icmp ne i32 %2, 32
  br i1 %cmp3, label %land.lhs.true4, label %land.end

land.lhs.true4:                                   ; preds = %land.lhs.true2
  %3 = load i32, i32* %c.addr, align 4
  %cmp5 = icmp ne i32 %3, 9
  br i1 %cmp5, label %land.lhs.true6, label %land.end

land.lhs.true6:                                   ; preds = %land.lhs.true4
  %4 = load i32, i32* %c.addr, align 4
  %cmp7 = icmp ne i32 %4, 10
  br i1 %cmp7, label %land.lhs.true8, label %land.end

land.lhs.true8:                                   ; preds = %land.lhs.true6
  %5 = load i32, i32* %c.addr, align 4
  %cmp9 = icmp ne i32 %5, 13
  br i1 %cmp9, label %land.lhs.true10, label %land.end

land.lhs.true10:                                  ; preds = %land.lhs.true8
  %6 = load i32, i32* %c.addr, align 4
  %cmp11 = icmp ne i32 %6, 34
  br i1 %cmp11, label %land.lhs.true12, label %land.end

land.lhs.true12:                                  ; preds = %land.lhs.true10
  %7 = load i32, i32* %c.addr, align 4
  %cmp13 = icmp ne i32 %7, 39
  br i1 %cmp13, label %land.lhs.true14, label %land.end

land.lhs.true14:                                  ; preds = %land.lhs.true12
  %8 = load i32, i32* %c.addr, align 4
  %cmp15 = icmp ne i32 %8, 36
  br i1 %cmp15, label %land.lhs.true16, label %land.end

land.lhs.true16:                                  ; preds = %land.lhs.true14
  %9 = load i32, i32* %c.addr, align 4
  %cmp17 = icmp ne i32 %9, 96
  br i1 %cmp17, label %land.lhs.true18, label %land.end

land.lhs.true18:                                  ; preds = %land.lhs.true16
  %10 = load i32, i32* %c.addr, align 4
  %cmp19 = icmp ne i32 %10, 92
  br i1 %cmp19, label %land.lhs.true20, label %land.end

land.lhs.true20:                                  ; preds = %land.lhs.true18
  %11 = load i32, i32* %c.addr, align 4
  %cmp21 = icmp ne i32 %11, 38
  br i1 %cmp21, label %land.lhs.true22, label %land.end

land.lhs.true22:                                  ; preds = %land.lhs.true20
  %12 = load i32, i32* %c.addr, align 4
  %cmp23 = icmp ne i32 %12, 59
  br i1 %cmp23, label %land.lhs.true24, label %land.end

land.lhs.true24:                                  ; preds = %land.lhs.true22
  %13 = load i32, i32* %c.addr, align 4
  %cmp25 = icmp ne i32 %13, 40
  br i1 %cmp25, label %land.lhs.true26, label %land.end

land.lhs.true26:                                  ; preds = %land.lhs.true24
  %14 = load i32, i32* %c.addr, align 4
  %cmp27 = icmp ne i32 %14, 41
  br i1 %cmp27, label %land.lhs.true28, label %land.end

land.lhs.true28:                                  ; preds = %land.lhs.true26
  %15 = load i32, i32* %c.addr, align 4
  %cmp29 = icmp ne i32 %15, 60
  br i1 %cmp29, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true28
  %16 = load i32, i32* %c.addr, align 4
  %cmp30 = icmp ne i32 %16, 62
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true28, %land.lhs.true26, %land.lhs.true24, %land.lhs.true22, %land.lhs.true20, %land.lhs.true18, %land.lhs.true16, %land.lhs.true14, %land.lhs.true12, %land.lhs.true10, %land.lhs.true8, %land.lhs.true6, %land.lhs.true4, %land.lhs.true2, %land.lhs.true, %entry
  %17 = phi i1 [ false, %land.lhs.true28 ], [ false, %land.lhs.true26 ], [ false, %land.lhs.true24 ], [ false, %land.lhs.true22 ], [ false, %land.lhs.true20 ], [ false, %land.lhs.true18 ], [ false, %land.lhs.true16 ], [ false, %land.lhs.true14 ], [ false, %land.lhs.true12 ], [ false, %land.lhs.true10 ], [ false, %land.lhs.true8 ], [ false, %land.lhs.true6 ], [ false, %land.lhs.true4 ], [ false, %land.lhs.true2 ], [ false, %land.lhs.true ], [ false, %entry ], [ %cmp30, %land.rhs ]
  ret i1 %17
}

declare i32 @strncmp(i8*, i8*, i64) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @isFileChar(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %call = call i32 @isalnum(i32 %0) #3
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %c.addr, align 4
  %cmp = icmp eq i32 %1, 95
  br i1 %cmp, label %lor.end, label %lor.lhs.false1

lor.lhs.false1:                                   ; preds = %lor.lhs.false
  %2 = load i32, i32* %c.addr, align 4
  %cmp2 = icmp eq i32 %2, 45
  br i1 %cmp2, label %lor.end, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false1
  %3 = load i32, i32* %c.addr, align 4
  %cmp4 = icmp eq i32 %3, 47
  br i1 %cmp4, label %lor.end, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false3
  %4 = load i32, i32* %c.addr, align 4
  %cmp6 = icmp eq i32 %4, 46
  br i1 %cmp6, label %lor.end, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false5
  %5 = load i32, i32* %c.addr, align 4
  %cmp8 = icmp eq i32 %5, 43
  br i1 %cmp8, label %lor.end, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false7
  %6 = load i32, i32* %c.addr, align 4
  %cmp10 = icmp eq i32 %6, 94
  br i1 %cmp10, label %lor.end, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %lor.lhs.false9
  %7 = load i32, i32* %c.addr, align 4
  %cmp12 = icmp eq i32 %7, 37
  br i1 %cmp12, label %lor.end, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false11
  %8 = load i32, i32* %c.addr, align 4
  %cmp14 = icmp eq i32 %8, 64
  br i1 %cmp14, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false13
  %9 = load i32, i32* %c.addr, align 4
  %cmp15 = icmp eq i32 %9, 126
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false13, %lor.lhs.false11, %lor.lhs.false9, %lor.lhs.false7, %lor.lhs.false5, %lor.lhs.false3, %lor.lhs.false1, %lor.lhs.false, %entry
  %10 = phi i1 [ true, %lor.lhs.false13 ], [ true, %lor.lhs.false11 ], [ true, %lor.lhs.false9 ], [ true, %lor.lhs.false7 ], [ true, %lor.lhs.false5 ], [ true, %lor.lhs.false3 ], [ true, %lor.lhs.false1 ], [ true, %lor.lhs.false ], [ true, %entry ], [ %cmp15, %lor.rhs ]
  ret i1 %10
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @hdocStateReadDestfileName(%struct.hereDocParsingState* %hstate, i8* %cp, %struct.sVString* %hereDocDelimiter) #0 {
entry:
  %hstate.addr = alloca %struct.hereDocParsingState*, align 8
  %cp.addr = alloca i8*, align 8
  %hereDocDelimiter.addr = alloca %struct.sVString*, align 8
  %d = alloca i32, align 4
  store %struct.hereDocParsingState* %hstate, %struct.hereDocParsingState** %hstate.addr, align 8
  store i8* %cp, i8** %cp.addr, align 8
  store %struct.sVString* %hereDocDelimiter, %struct.sVString** %hereDocDelimiter.addr, align 8
  %0 = load i8*, i8** %cp.addr, align 8
  %1 = load %struct.hereDocParsingState*, %struct.hereDocParsingState** %hstate.addr, align 8
  %destfile = getelementptr inbounds %struct.hereDocParsingState, %struct.hereDocParsingState* %1, i32 0, i32 1
  %2 = load %struct.sVString*, %struct.sVString** %destfile, align 8
  %call = call i32 @readDestfileName(i8* %0, %struct.sVString* %2)
  store i32 %call, i32* %d, align 4
  %3 = load i32, i32* %d, align 4
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct.sVString*, %struct.sVString** %hereDocDelimiter.addr, align 8
  %tobool = icmp ne %struct.sVString* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct.hereDocParsingState*, %struct.hereDocParsingState** %hstate.addr, align 8
  call void @hdocStateRecordStartlineFromDestfileMaybe(%struct.hereDocParsingState* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %6 = load i32, i32* %d, align 4
  ret i32 %6
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @hdocStateUpdateArgs(%struct.hereDocParsingState* %hstate, %struct.sVString* %name) #0 {
entry:
  %hstate.addr = alloca %struct.hereDocParsingState*, align 8
  %name.addr = alloca %struct.sVString*, align 8
  store %struct.hereDocParsingState* %hstate, %struct.hereDocParsingState** %hstate.addr, align 8
  store %struct.sVString* %name, %struct.sVString** %name.addr, align 8
  %0 = load %struct.hereDocParsingState*, %struct.hereDocParsingState** %hstate.addr, align 8
  %args = getelementptr inbounds %struct.hereDocParsingState, %struct.hereDocParsingState* %0, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x %struct.sVString*], [2 x %struct.sVString*]* %args, i64 0, i64 0
  %1 = load %struct.sVString*, %struct.sVString** %arrayidx, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %1, i32 0, i32 0
  %2 = load i64, i64* %length, align 8
  %cmp = icmp eq i64 %2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.hereDocParsingState*, %struct.hereDocParsingState** %hstate.addr, align 8
  %args1 = getelementptr inbounds %struct.hereDocParsingState, %struct.hereDocParsingState* %3, i32 0, i32 0
  %arrayidx2 = getelementptr inbounds [2 x %struct.sVString*], [2 x %struct.sVString*]* %args1, i64 0, i64 0
  %4 = load %struct.sVString*, %struct.sVString** %arrayidx2, align 8
  %5 = load %struct.sVString*, %struct.sVString** %name.addr, align 8
  call void @vStringCopy(%struct.sVString* %4, %struct.sVString* %5)
  br label %if.end10

if.else:                                          ; preds = %entry
  %6 = load %struct.hereDocParsingState*, %struct.hereDocParsingState** %hstate.addr, align 8
  %args3 = getelementptr inbounds %struct.hereDocParsingState, %struct.hereDocParsingState* %6, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [2 x %struct.sVString*], [2 x %struct.sVString*]* %args3, i64 0, i64 1
  %7 = load %struct.sVString*, %struct.sVString** %arrayidx4, align 8
  %length5 = getelementptr inbounds %struct.sVString, %struct.sVString* %7, i32 0, i32 0
  %8 = load i64, i64* %length5, align 8
  %cmp6 = icmp eq i64 %8, 0
  br i1 %cmp6, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.else
  %9 = load %struct.hereDocParsingState*, %struct.hereDocParsingState** %hstate.addr, align 8
  %args8 = getelementptr inbounds %struct.hereDocParsingState, %struct.hereDocParsingState* %9, i32 0, i32 0
  %arrayidx9 = getelementptr inbounds [2 x %struct.sVString*], [2 x %struct.sVString*]* %args8, i64 0, i64 1
  %10 = load %struct.sVString*, %struct.sVString** %arrayidx9, align 8
  %11 = load %struct.sVString*, %struct.sVString** %name.addr, align 8
  call void @vStringCopy(%struct.sVString* %10, %struct.sVString* %11)
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.else
  br label %if.end10

if.end10:                                         ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @hdocStateFini(%struct.hereDocParsingState* %hstate) #0 {
entry:
  %hstate.addr = alloca %struct.hereDocParsingState*, align 8
  store %struct.hereDocParsingState* %hstate, %struct.hereDocParsingState** %hstate.addr, align 8
  %0 = load %struct.hereDocParsingState*, %struct.hereDocParsingState** %hstate.addr, align 8
  %args = getelementptr inbounds %struct.hereDocParsingState, %struct.hereDocParsingState* %0, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x %struct.sVString*], [2 x %struct.sVString*]* %args, i64 0, i64 0
  %1 = load %struct.sVString*, %struct.sVString** %arrayidx, align 8
  call void @vStringDelete(%struct.sVString* %1)
  %2 = load %struct.hereDocParsingState*, %struct.hereDocParsingState** %hstate.addr, align 8
  %args1 = getelementptr inbounds %struct.hereDocParsingState, %struct.hereDocParsingState* %2, i32 0, i32 0
  %arrayidx2 = getelementptr inbounds [2 x %struct.sVString*], [2 x %struct.sVString*]* %args1, i64 0, i64 1
  %3 = load %struct.sVString*, %struct.sVString** %arrayidx2, align 8
  call void @vStringDelete(%struct.sVString* %3)
  %4 = load %struct.hereDocParsingState*, %struct.hereDocParsingState** %hstate.addr, align 8
  %destfile = getelementptr inbounds %struct.hereDocParsingState, %struct.hereDocParsingState* %4, i32 0, i32 1
  %5 = load %struct.sVString*, %struct.sVString** %destfile, align 8
  call void @vStringDelete(%struct.sVString* %5)
  ret void
}

declare %struct.sTagEntryInfo* @getEntryInCorkQueue(i32) #1

declare i32 @makePromise(i8*, i64, i64, i64, i64, i64) #1

declare i8* @getLanguageName(i32) #1

; Function Attrs: nounwind readonly
declare i32 @isalnum(i32) #2

declare void @vStringResize(%struct.sVString*, i64) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @isEnvCommand(%struct.sVString* %cmd) #0 {
entry:
  %cmd.addr = alloca %struct.sVString*, align 8
  %lc = alloca i8*, align 8
  %tmp = alloca i8*, align 8
  store %struct.sVString* %cmd, %struct.sVString** %cmd.addr, align 8
  %0 = load %struct.sVString*, %struct.sVString** %cmd.addr, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %0, i32 0, i32 2
  %1 = load i8*, i8** %buffer, align 8
  store i8* %1, i8** %lc, align 8
  %2 = load i8*, i8** %lc, align 8
  %call = call i8* @baseFilename(i8* %2)
  store i8* %call, i8** %tmp, align 8
  %3 = load i8*, i8** %tmp, align 8
  %call1 = call i32 @strcmp(i8* %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0))
  %cmp = icmp eq i32 %call1, 0
  ret i1 %cmp
}

declare i32 @getLanguageForCommand(i8*, i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @hdocStateRecordStartlineFromDestfileMaybe(%struct.hereDocParsingState* %hstate) #0 {
entry:
  %hstate.addr = alloca %struct.hereDocParsingState*, align 8
  %f = alloca i8*, align 8
  %vStringClear_s = alloca %struct.sVString*, align 8
  store %struct.hereDocParsingState* %hstate, %struct.hereDocParsingState** %hstate.addr, align 8
  %0 = load %struct.hereDocParsingState*, %struct.hereDocParsingState** %hstate.addr, align 8
  %destfile = getelementptr inbounds %struct.hereDocParsingState, %struct.hereDocParsingState* %0, i32 0, i32 1
  %1 = load %struct.sVString*, %struct.sVString** %destfile, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %1, i32 0, i32 2
  %2 = load i8*, i8** %buffer, align 8
  store i8* %2, i8** %f, align 8
  %3 = load %struct.hereDocParsingState*, %struct.hereDocParsingState** %hstate.addr, align 8
  %sublang = getelementptr inbounds %struct.hereDocParsingState, %struct.hereDocParsingState* %3, i32 0, i32 2
  %4 = load i32, i32* %sublang, align 8
  %cmp = icmp ne i32 %4, -2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %do.end

if.end:                                           ; preds = %entry
  %5 = load i8*, i8** %f, align 8
  %call = call i32 @getLanguageForFilename(i8* %5, i32 0)
  %6 = load %struct.hereDocParsingState*, %struct.hereDocParsingState** %hstate.addr, align 8
  %sublang1 = getelementptr inbounds %struct.hereDocParsingState, %struct.hereDocParsingState* %6, i32 0, i32 2
  store i32 %call, i32* %sublang1, align 8
  %7 = load %struct.hereDocParsingState*, %struct.hereDocParsingState** %hstate.addr, align 8
  %sublang2 = getelementptr inbounds %struct.hereDocParsingState, %struct.hereDocParsingState* %7, i32 0, i32 2
  %8 = load i32, i32* %sublang2, align 8
  %cmp3 = icmp ne i32 %8, -2
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %call5 = call i64 @getInputLineNumber()
  %add = add i64 %call5, 1
  %9 = load %struct.hereDocParsingState*, %struct.hereDocParsingState** %hstate.addr, align 8
  %startLine = getelementptr inbounds %struct.hereDocParsingState, %struct.hereDocParsingState* %9, i32 0, i32 3
  store i64 %add, i64* %startLine, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end
  br label %do.body

do.body:                                          ; preds = %if.end6
  %10 = load %struct.hereDocParsingState*, %struct.hereDocParsingState** %hstate.addr, align 8
  %destfile7 = getelementptr inbounds %struct.hereDocParsingState, %struct.hereDocParsingState* %10, i32 0, i32 1
  %11 = load %struct.sVString*, %struct.sVString** %destfile7, align 8
  store %struct.sVString* %11, %struct.sVString** %vStringClear_s, align 8
  %12 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %12, i32 0, i32 0
  store i64 0, i64* %length, align 8
  %13 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %buffer8 = getelementptr inbounds %struct.sVString, %struct.sVString* %13, i32 0, i32 2
  %14 = load i8*, i8** %buffer8, align 8
  %arrayidx = getelementptr inbounds i8, i8* %14, i64 0
  store i8 0, i8* %arrayidx, align 1
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  ret void
}

declare i8* @baseFilename(i8*) #1

declare i32 @getLanguageForFilename(i8*, i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @readDestfileName(i8* %cp, %struct.sVString* %destfile) #0 {
entry:
  %retval = alloca i32, align 4
  %cp.addr = alloca i8*, align 8
  %destfile.addr = alloca %struct.sVString*, align 8
  %origin = alloca i8*, align 8
  %vStringClear_s = alloca %struct.sVString*, align 8
  store i8* %cp, i8** %cp.addr, align 8
  store %struct.sVString* %destfile, %struct.sVString** %destfile.addr, align 8
  %0 = load i8*, i8** %cp.addr, align 8
  store i8* %0, i8** %origin, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i8*, i8** %cp.addr, align 8
  %2 = load i8, i8* %1, align 1
  %conv = zext i8 %2 to i32
  %call = call i32 @isspace(i32 %conv) #3
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i8*, i8** %cp.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr, i8** %cp.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %4 = load i8*, i8** %cp.addr, align 8
  %5 = load i8, i8* %4, align 1
  %conv1 = zext i8 %5 to i32
  %cmp = icmp ne i32 %conv1, 62
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %while.end
  %6 = load i8*, i8** %cp.addr, align 8
  %7 = load i8, i8* %6, align 1
  %conv3 = zext i8 %7 to i32
  %cmp4 = icmp eq i32 %conv3, 62
  br i1 %cmp4, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  %8 = load i8*, i8** %cp.addr, align 8
  %incdec.ptr7 = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr7, i8** %cp.addr, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end
  br label %while.cond9

while.cond9:                                      ; preds = %while.body13, %if.end8
  %9 = load i8*, i8** %cp.addr, align 8
  %10 = load i8, i8* %9, align 1
  %conv10 = zext i8 %10 to i32
  %call11 = call i32 @isspace(i32 %conv10) #3
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %while.body13, label %while.end15

while.body13:                                     ; preds = %while.cond9
  %11 = load i8*, i8** %cp.addr, align 8
  %incdec.ptr14 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr14, i8** %cp.addr, align 8
  br label %while.cond9

while.end15:                                      ; preds = %while.cond9
  %12 = load i8*, i8** %cp.addr, align 8
  %13 = load i8, i8* %12, align 1
  %conv16 = zext i8 %13 to i32
  %call17 = call zeroext i1 @isFileChar(i32 %conv16)
  br i1 %call17, label %if.end19, label %if.then18

if.then18:                                        ; preds = %while.end15
  store i32 0, i32* %retval, align 4
  br label %return

if.end19:                                         ; preds = %while.end15
  br label %do.body

do.body:                                          ; preds = %if.end19
  %14 = load %struct.sVString*, %struct.sVString** %destfile.addr, align 8
  store %struct.sVString* %14, %struct.sVString** %vStringClear_s, align 8
  %15 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %15, i32 0, i32 0
  store i64 0, i64* %length, align 8
  %16 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %16, i32 0, i32 2
  %17 = load i8*, i8** %buffer, align 8
  %arrayidx = getelementptr inbounds i8, i8* %17, i64 0
  store i8 0, i8* %arrayidx, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body20

do.body20:                                        ; preds = %do.cond, %do.end
  %18 = load %struct.sVString*, %struct.sVString** %destfile.addr, align 8
  %19 = load i8*, i8** %cp.addr, align 8
  %20 = load i8, i8* %19, align 1
  %conv21 = zext i8 %20 to i32
  call void @vStringPut(%struct.sVString* %18, i32 %conv21)
  %21 = load i8*, i8** %cp.addr, align 8
  %incdec.ptr22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr22, i8** %cp.addr, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body20
  %22 = load i8*, i8** %cp.addr, align 8
  %23 = load i8, i8* %22, align 1
  %conv23 = zext i8 %23 to i32
  %call24 = call zeroext i1 @isFileChar(i32 %conv23)
  br i1 %call24, label %do.body20, label %do.end25

do.end25:                                         ; preds = %do.cond
  %24 = load %struct.sVString*, %struct.sVString** %destfile.addr, align 8
  %length26 = getelementptr inbounds %struct.sVString, %struct.sVString* %24, i32 0, i32 0
  %25 = load i64, i64* %length26, align 8
  %cmp27 = icmp ugt i64 %25, 0
  br i1 %cmp27, label %if.then29, label %if.end31

if.then29:                                        ; preds = %do.end25
  %26 = load i8*, i8** %cp.addr, align 8
  %27 = load i8*, i8** %origin, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %26 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %27 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv30 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv30, i32* %retval, align 4
  br label %return

if.end31:                                         ; preds = %do.end25
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end31, %if.then29, %if.then18, %if.then
  %28 = load i32, i32* %retval, align 4
  ret i32 %28
}

declare void @vStringCopy(%struct.sVString*, %struct.sVString*) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 10.0.0 (https://github.com/holzschu/clang.git 0cfc630fbdb62e96720b611a57123ef3eb13e297) (https://github.com/holzschu/llvm.git 0d8a71e39b28502c24718f7e74b5acbcfe36dfe0)"}
