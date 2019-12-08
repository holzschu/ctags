; ModuleID = 'make.c'
source_filename = "make.c"
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
%struct.sSubparser = type { %struct.sSlaveParser*, %struct.sSubparser*, i8, i8, i32, void (%struct.sSubparser*)*, void (%struct.sSubparser*)*, void (%struct.sSubparser*, i8*)*, void (%struct.sSubparser*, %struct.sTagEntryInfo*, i32)* }
%struct.sSlaveParser = type { i32, i32, i8*, %struct.sSlaveParser* }
%struct.sMakeSubparser = type { %struct.sSubparser, void (%struct.sMakeSubparser*, i8*)*, void (%struct.sMakeSubparser*, i8*)*, void (%struct.sMakeSubparser*, i8*, i1, i1)* }

@.str = private unnamed_addr constant [5 x i8] c"Make\00", align 1
@MakeKinds = internal global [3 x %struct.sKindDefinition] [%struct.sKindDefinition { i8 1, i8 109, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 116, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 73, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i8 1, i32 2, %struct.sRoleDesc* getelementptr inbounds ([2 x %struct.sRoleDesc], [2 x %struct.sRoleDesc]* @MakeMakefileRoles, i32 0, i32 0), %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }], align 8
@patterns = internal constant [3 x i8*] [i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0), i8* null], align 8
@extensions = internal constant [3 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i32 0, i32 0), i8* null], align 8
@aliases = internal constant [2 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* null], align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"macro\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"macros\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"target\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"targets\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"makefile\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"makefiles\00", align 1
@MakeMakefileRoles = internal global [2 x %struct.sRoleDesc] [%struct.sRoleDesc { i8 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0) }, %struct.sRoleDesc { i8 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i32 0, i32 0) }], align 8
@.str.7 = private unnamed_addr constant [9 x i8] c"included\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"optional\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"optionally included\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"[Mm]akefile\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"GNUmakefile\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"mak\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"mk\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"endef\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"define\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"export\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"include\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"sinclude\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"-include\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c".-_/$(){}%\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"$\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sParserDefinition* @MakefileParser() #0 {
entry:
  %def = alloca %struct.sParserDefinition*, align 8
  %call = call %struct.sParserDefinition* @parserNew(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.sParserDefinition* %call, %struct.sParserDefinition** %def, align 8
  %0 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %0, i32 0, i32 1
  store %struct.sKindDefinition* getelementptr inbounds ([3 x %struct.sKindDefinition], [3 x %struct.sKindDefinition]* @MakeKinds, i64 0, i64 0), %struct.sKindDefinition** %kindTable, align 8
  %1 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %1, i32 0, i32 2
  store i32 3, i32* %kindCount, align 8
  %2 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %patterns = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %2, i32 0, i32 4
  store i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @patterns, i64 0, i64 0), i8*** %patterns, align 8
  %3 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %extensions = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %3, i32 0, i32 3
  store i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @extensions, i64 0, i64 0), i8*** %extensions, align 8
  %4 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %aliases = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %4, i32 0, i32 5
  store i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @aliases, i64 0, i64 0), i8*** %aliases, align 8
  %5 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %parser = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %5, i32 0, i32 8
  store void ()* @findMakeTags, void ()** %parser, align 8
  %6 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  ret %struct.sParserDefinition* %6
}

declare %struct.sParserDefinition* @parserNew(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @findMakeTags() #0 {
entry:
  %identifiers = alloca %struct.sPtrArray*, align 8
  %newline = alloca i8, align 1
  %in_define = alloca i8, align 1
  %in_value = alloca i8, align 1
  %in_rule = alloca i8, align 1
  %variable_possible = alloca i8, align 1
  %appending = alloca i8, align 1
  %c = alloca i32, align 4
  %sub = alloca %struct.sSubparser*, align 8
  %i = alloca i32, align 4
  %name = alloca %struct.sVString*, align 8
  %vStringClear_s = alloca %struct.sVString*, align 8
  %optional = alloca i8, align 1
  %call = call %struct.sPtrArray* @stringListNew()
  store %struct.sPtrArray* %call, %struct.sPtrArray** %identifiers, align 8
  store i8 1, i8* %newline, align 1
  store i8 0, i8* %in_define, align 1
  store i8 0, i8* %in_value, align 1
  store i8 0, i8* %in_rule, align 1
  store i8 1, i8* %variable_possible, align 1
  store i8 0, i8* %appending, align 1
  %call1 = call %struct.sSubparser* @getSubparserRunningBaseparser()
  store %struct.sSubparser* %call1, %struct.sSubparser** %sub, align 8
  %0 = load %struct.sSubparser*, %struct.sSubparser** %sub, align 8
  %tobool = icmp ne %struct.sSubparser* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.sSubparser*, %struct.sSubparser** %sub, align 8
  call void @chooseExclusiveSubparser(%struct.sSubparser* %1, i8* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end182, %if.then28, %if.end
  %call2 = call i32 @nextChar()
  store i32 %call2, i32* %c, align 4
  %cmp = icmp ne i32 %call2, -1
  br i1 %cmp, label %while.body, label %while.end183

while.body:                                       ; preds = %while.cond
  %2 = load i8, i8* %newline, align 1
  %tobool3 = trunc i8 %2 to i1
  br i1 %tobool3, label %if.then4, label %if.end22

if.then4:                                         ; preds = %while.body
  %3 = load i8, i8* %in_rule, align 1
  %tobool5 = trunc i8 %3 to i1
  br i1 %tobool5, label %if.then6, label %if.else16

if.then6:                                         ; preds = %if.then4
  %4 = load i32, i32* %c, align 4
  %cmp7 = icmp eq i32 %4, 9
  br i1 %cmp7, label %if.then10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then6
  %5 = load i32, i32* %c, align 4
  %call8 = call i32 @skipToNonWhite(i32 %5)
  store i32 %call8, i32* %c, align 4
  %cmp9 = icmp eq i32 %call8, 35
  br i1 %cmp9, label %if.then10, label %if.else

if.then10:                                        ; preds = %lor.lhs.false, %if.then6
  call void @skipLine()
  %call11 = call i32 @nextChar()
  store i32 %call11, i32* %c, align 4
  br label %if.end15

if.else:                                          ; preds = %lor.lhs.false
  %6 = load i32, i32* %c, align 4
  %cmp12 = icmp ne i32 %6, 10
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.else
  store i8 0, i8* %in_rule, align 1
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.else
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.then10
  br label %if.end20

if.else16:                                        ; preds = %if.then4
  %7 = load i8, i8* %in_value, align 1
  %tobool17 = trunc i8 %7 to i1
  br i1 %tobool17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.else16
  store i8 0, i8* %in_value, align 1
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.else16
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.end15
  %8 = load %struct.sPtrArray*, %struct.sPtrArray** %identifiers, align 8
  call void @stringListClear(%struct.sPtrArray* %8)
  %9 = load i8, i8* %in_rule, align 1
  %tobool21 = trunc i8 %9 to i1
  %lnot = xor i1 %tobool21, true
  %frombool = zext i1 %lnot to i8
  store i8 %frombool, i8* %variable_possible, align 1
  store i8 0, i8* %newline, align 1
  br label %if.end22

if.end22:                                         ; preds = %if.end20, %while.body
  %10 = load i32, i32* %c, align 4
  %cmp23 = icmp eq i32 %10, 10
  br i1 %cmp23, label %if.then24, label %if.else25

if.then24:                                        ; preds = %if.end22
  store i8 1, i8* %newline, align 1
  br label %if.end182

if.else25:                                        ; preds = %if.end22
  %11 = load i32, i32* %c, align 4
  %call26 = call i32 @isspace(i32 %11) #3
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.then28, label %if.else29

if.then28:                                        ; preds = %if.else25
  br label %while.cond

if.else29:                                        ; preds = %if.else25
  %12 = load i32, i32* %c, align 4
  %cmp30 = icmp eq i32 %12, 35
  br i1 %cmp30, label %if.then31, label %if.else32

if.then31:                                        ; preds = %if.else29
  call void @skipLine()
  br label %if.end180

if.else32:                                        ; preds = %if.else29
  %13 = load i8, i8* %variable_possible, align 1
  %tobool33 = trunc i8 %13 to i1
  br i1 %tobool33, label %land.lhs.true, label %if.else39

land.lhs.true:                                    ; preds = %if.else32
  %14 = load i32, i32* %c, align 4
  %cmp34 = icmp eq i32 %14, 63
  br i1 %cmp34, label %if.then35, label %if.else39

if.then35:                                        ; preds = %land.lhs.true
  %call36 = call i32 @nextChar()
  store i32 %call36, i32* %c, align 4
  %15 = load i32, i32* %c, align 4
  call void @ungetcToInputFile(i32 %15)
  %16 = load i32, i32* %c, align 4
  %cmp37 = icmp eq i32 %16, 61
  %frombool38 = zext i1 %cmp37 to i8
  store i8 %frombool38, i8* %variable_possible, align 1
  br label %if.end179

if.else39:                                        ; preds = %land.lhs.true, %if.else32
  %17 = load i8, i8* %variable_possible, align 1
  %tobool40 = trunc i8 %17 to i1
  br i1 %tobool40, label %land.lhs.true41, label %if.else47

land.lhs.true41:                                  ; preds = %if.else39
  %18 = load i32, i32* %c, align 4
  %cmp42 = icmp eq i32 %18, 43
  br i1 %cmp42, label %if.then43, label %if.else47

if.then43:                                        ; preds = %land.lhs.true41
  %call44 = call i32 @nextChar()
  store i32 %call44, i32* %c, align 4
  %19 = load i32, i32* %c, align 4
  call void @ungetcToInputFile(i32 %19)
  %20 = load i32, i32* %c, align 4
  %cmp45 = icmp eq i32 %20, 61
  %frombool46 = zext i1 %cmp45 to i8
  store i8 %frombool46, i8* %variable_possible, align 1
  store i8 1, i8* %appending, align 1
  br label %if.end178

if.else47:                                        ; preds = %land.lhs.true41, %if.else39
  %21 = load i8, i8* %in_value, align 1
  %tobool48 = trunc i8 %21 to i1
  br i1 %tobool48, label %if.else64, label %land.lhs.true49

land.lhs.true49:                                  ; preds = %if.else47
  %22 = load i8, i8* %variable_possible, align 1
  %tobool50 = trunc i8 %22 to i1
  br i1 %tobool50, label %land.lhs.true51, label %if.else64

land.lhs.true51:                                  ; preds = %land.lhs.true49
  %23 = load i32, i32* %c, align 4
  %cmp52 = icmp eq i32 %23, 58
  br i1 %cmp52, label %land.lhs.true53, label %if.else64

land.lhs.true53:                                  ; preds = %land.lhs.true51
  %24 = load %struct.sPtrArray*, %struct.sPtrArray** %identifiers, align 8
  %call54 = call i32 @stringListCount(%struct.sPtrArray* %24)
  %cmp55 = icmp ugt i32 %call54, 0
  br i1 %cmp55, label %if.then56, label %if.else64

if.then56:                                        ; preds = %land.lhs.true53
  %call57 = call i32 @nextChar()
  store i32 %call57, i32* %c, align 4
  %25 = load i32, i32* %c, align 4
  call void @ungetcToInputFile(i32 %25)
  %26 = load i32, i32* %c, align 4
  %cmp58 = icmp ne i32 %26, 61
  br i1 %cmp58, label %if.then59, label %if.end63

if.then59:                                        ; preds = %if.then56
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then59
  %27 = load i32, i32* %i, align 4
  %28 = load %struct.sPtrArray*, %struct.sPtrArray** %identifiers, align 8
  %call60 = call i32 @stringListCount(%struct.sPtrArray* %28)
  %cmp61 = icmp ult i32 %27, %call60
  br i1 %cmp61, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %29 = load %struct.sPtrArray*, %struct.sPtrArray** %identifiers, align 8
  %30 = load i32, i32* %i, align 4
  %call62 = call %struct.sVString* @stringListItem(%struct.sPtrArray* %29, i32 %30)
  call void @newTarget(%struct.sVString* %call62)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %31 = load i32, i32* %i, align 4
  %inc = add i32 %31, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %32 = load %struct.sPtrArray*, %struct.sPtrArray** %identifiers, align 8
  call void @stringListClear(%struct.sPtrArray* %32)
  store i8 1, i8* %in_rule, align 1
  br label %if.end63

if.end63:                                         ; preds = %for.end, %if.then56
  br label %if.end177

if.else64:                                        ; preds = %land.lhs.true53, %land.lhs.true51, %land.lhs.true49, %if.else47
  %33 = load i8, i8* %variable_possible, align 1
  %tobool65 = trunc i8 %33 to i1
  br i1 %tobool65, label %land.lhs.true66, label %if.else74

land.lhs.true66:                                  ; preds = %if.else64
  %34 = load i32, i32* %c, align 4
  %cmp67 = icmp eq i32 %34, 61
  br i1 %cmp67, label %land.lhs.true68, label %if.else74

land.lhs.true68:                                  ; preds = %land.lhs.true66
  %35 = load %struct.sPtrArray*, %struct.sPtrArray** %identifiers, align 8
  %call69 = call i32 @stringListCount(%struct.sPtrArray* %35)
  %cmp70 = icmp eq i32 %call69, 1
  br i1 %cmp70, label %if.then71, label %if.else74

if.then71:                                        ; preds = %land.lhs.true68
  %36 = load %struct.sPtrArray*, %struct.sPtrArray** %identifiers, align 8
  %call72 = call %struct.sVString* @stringListItem(%struct.sPtrArray* %36, i32 0)
  %37 = load i8, i8* %appending, align 1
  %tobool73 = trunc i8 %37 to i1
  call void @newMacro(%struct.sVString* %call72, i1 zeroext false, i1 zeroext %tobool73)
  store i8 1, i8* %in_value, align 1
  store i8 0, i8* %in_rule, align 1
  store i8 0, i8* %appending, align 1
  br label %if.end176

if.else74:                                        ; preds = %land.lhs.true68, %land.lhs.true66, %if.else64
  %38 = load i8, i8* %variable_possible, align 1
  %tobool75 = trunc i8 %38 to i1
  br i1 %tobool75, label %land.lhs.true76, label %if.else174

land.lhs.true76:                                  ; preds = %if.else74
  %39 = load i32, i32* %c, align 4
  %call77 = call zeroext i1 @isIdentifier(i32 %39)
  br i1 %call77, label %if.then78, label %if.else174

if.then78:                                        ; preds = %land.lhs.true76
  %call79 = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call79, %struct.sVString** %name, align 8
  %40 = load i32, i32* %c, align 4
  %41 = load %struct.sVString*, %struct.sVString** %name, align 8
  call void @readIdentifier(i32 %40, %struct.sVString* %41)
  %42 = load %struct.sPtrArray*, %struct.sPtrArray** %identifiers, align 8
  %43 = load %struct.sVString*, %struct.sVString** %name, align 8
  call void @stringListAdd(%struct.sPtrArray* %42, %struct.sVString* %43)
  %44 = load i8, i8* %in_value, align 1
  %tobool80 = trunc i8 %44 to i1
  br i1 %tobool80, label %if.then81, label %if.end82

if.then81:                                        ; preds = %if.then78
  %45 = load %struct.sVString*, %struct.sVString** %name, align 8
  call void @valueFound(%struct.sVString* %45)
  br label %if.end82

if.end82:                                         ; preds = %if.then81, %if.then78
  %46 = load %struct.sPtrArray*, %struct.sPtrArray** %identifiers, align 8
  %call83 = call i32 @stringListCount(%struct.sPtrArray* %46)
  %cmp84 = icmp eq i32 %call83, 1
  br i1 %cmp84, label %if.then85, label %if.end173

if.then85:                                        ; preds = %if.end82
  %47 = load i8, i8* %in_define, align 1
  %tobool86 = trunc i8 %47 to i1
  br i1 %tobool86, label %land.lhs.true87, label %if.else91

land.lhs.true87:                                  ; preds = %if.then85
  %48 = load %struct.sVString*, %struct.sVString** %name, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %48, i32 0, i32 2
  %49 = load i8*, i8** %buffer, align 8
  %call88 = call i32 @strcmp(i8* %49, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0))
  %tobool89 = icmp ne i32 %call88, 0
  br i1 %tobool89, label %if.else91, label %if.then90

if.then90:                                        ; preds = %land.lhs.true87
  store i8 0, i8* %in_define, align 1
  br label %if.end172

if.else91:                                        ; preds = %land.lhs.true87, %if.then85
  %50 = load i8, i8* %in_define, align 1
  %tobool92 = trunc i8 %50 to i1
  br i1 %tobool92, label %if.then93, label %if.else94

if.then93:                                        ; preds = %if.else91
  call void @skipLine()
  br label %if.end171

if.else94:                                        ; preds = %if.else91
  %51 = load %struct.sVString*, %struct.sVString** %name, align 8
  %buffer95 = getelementptr inbounds %struct.sVString, %struct.sVString* %51, i32 0, i32 2
  %52 = load i8*, i8** %buffer95, align 8
  %call96 = call i32 @strcmp(i8* %52, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0))
  %tobool97 = icmp ne i32 %call96, 0
  br i1 %tobool97, label %if.else110, label %if.then98

if.then98:                                        ; preds = %if.else94
  store i8 1, i8* %in_define, align 1
  %call99 = call i32 @nextChar()
  %call100 = call i32 @skipToNonWhite(i32 %call99)
  store i32 %call100, i32* %c, align 4
  br label %do.body

do.body:                                          ; preds = %if.then98
  %53 = load %struct.sVString*, %struct.sVString** %name, align 8
  store %struct.sVString* %53, %struct.sVString** %vStringClear_s, align 8
  %54 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %54, i32 0, i32 0
  store i64 0, i64* %length, align 8
  %55 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %buffer101 = getelementptr inbounds %struct.sVString, %struct.sVString* %55, i32 0, i32 2
  %56 = load i8*, i8** %buffer101, align 8
  %arrayidx = getelementptr inbounds i8, i8* %56, i64 0
  store i8 0, i8* %arrayidx, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %while.cond102

while.cond102:                                    ; preds = %while.body105, %do.end
  %57 = load i32, i32* %c, align 4
  %cmp103 = icmp ne i32 %57, -1
  br i1 %cmp103, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond102
  %58 = load i32, i32* %c, align 4
  %cmp104 = icmp ne i32 %58, 10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond102
  %59 = phi i1 [ false, %while.cond102 ], [ %cmp104, %land.rhs ]
  br i1 %59, label %while.body105, label %while.end

while.body105:                                    ; preds = %land.end
  %60 = load %struct.sVString*, %struct.sVString** %name, align 8
  %61 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %60, i32 %61)
  %call106 = call i32 @nextChar()
  store i32 %call106, i32* %c, align 4
  br label %while.cond102

while.end:                                        ; preds = %land.end
  %62 = load i32, i32* %c, align 4
  %cmp107 = icmp eq i32 %62, 10
  br i1 %cmp107, label %if.then108, label %if.end109

if.then108:                                       ; preds = %while.end
  %63 = load i32, i32* %c, align 4
  call void @ungetcToInputFile(i32 %63)
  br label %if.end109

if.end109:                                        ; preds = %if.then108, %while.end
  %64 = load %struct.sVString*, %struct.sVString** %name, align 8
  call void @vStringStripTrailing(%struct.sVString* %64)
  %65 = load %struct.sVString*, %struct.sVString** %name, align 8
  call void @newMacro(%struct.sVString* %65, i1 zeroext true, i1 zeroext false)
  br label %if.end170

if.else110:                                       ; preds = %if.else94
  %66 = load %struct.sVString*, %struct.sVString** %name, align 8
  %buffer111 = getelementptr inbounds %struct.sVString, %struct.sVString* %66, i32 0, i32 2
  %67 = load i8*, i8** %buffer111, align 8
  %call112 = call i32 @strcmp(i8* %67, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0))
  %tobool113 = icmp ne i32 %call112, 0
  br i1 %tobool113, label %if.else115, label %if.then114

if.then114:                                       ; preds = %if.else110
  %68 = load %struct.sPtrArray*, %struct.sPtrArray** %identifiers, align 8
  call void @stringListClear(%struct.sPtrArray* %68)
  br label %if.end169

if.else115:                                       ; preds = %if.else110
  %69 = load %struct.sVString*, %struct.sVString** %name, align 8
  %buffer116 = getelementptr inbounds %struct.sVString, %struct.sVString* %69, i32 0, i32 2
  %70 = load i8*, i8** %buffer116, align 8
  %call117 = call i32 @strcmp(i8* %70, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0))
  %tobool118 = icmp ne i32 %call117, 0
  br i1 %tobool118, label %lor.lhs.false119, label %if.then127

lor.lhs.false119:                                 ; preds = %if.else115
  %71 = load %struct.sVString*, %struct.sVString** %name, align 8
  %buffer120 = getelementptr inbounds %struct.sVString, %struct.sVString* %71, i32 0, i32 2
  %72 = load i8*, i8** %buffer120, align 8
  %call121 = call i32 @strcmp(i8* %72, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0))
  %tobool122 = icmp ne i32 %call121, 0
  br i1 %tobool122, label %lor.lhs.false123, label %if.then127

lor.lhs.false123:                                 ; preds = %lor.lhs.false119
  %73 = load %struct.sVString*, %struct.sVString** %name, align 8
  %buffer124 = getelementptr inbounds %struct.sVString, %struct.sVString* %73, i32 0, i32 2
  %74 = load i8*, i8** %buffer124, align 8
  %call125 = call i32 @strcmp(i8* %74, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0))
  %tobool126 = icmp ne i32 %call125, 0
  br i1 %tobool126, label %if.else167, label %if.then127

if.then127:                                       ; preds = %lor.lhs.false123, %lor.lhs.false119, %if.else115
  %75 = load %struct.sVString*, %struct.sVString** %name, align 8
  %buffer128 = getelementptr inbounds %struct.sVString, %struct.sVString* %75, i32 0, i32 2
  %76 = load i8*, i8** %buffer128, align 8
  %arrayidx129 = getelementptr inbounds i8, i8* %76, i64 0
  %77 = load i8, i8* %arrayidx129, align 1
  %conv = sext i8 %77 to i32
  %cmp130 = icmp eq i32 %conv, 105
  %78 = zext i1 %cmp130 to i64
  %cond = select i1 %cmp130, i32 0, i32 1
  %tobool132 = icmp ne i32 %cond, 0
  %frombool133 = zext i1 %tobool132 to i8
  store i8 %frombool133, i8* %optional, align 1
  br label %while.body135

while.body135:                                    ; preds = %if.then127, %if.end165
  %call136 = call i32 @nextChar()
  %call137 = call i32 @skipToNonWhite(i32 %call136)
  store i32 %call137, i32* %c, align 4
  %79 = load i32, i32* %c, align 4
  %80 = load %struct.sVString*, %struct.sVString** %name, align 8
  call void @readIdentifier(i32 %79, %struct.sVString* %80)
  %81 = load %struct.sVString*, %struct.sVString** %name, align 8
  call void @vStringStripTrailing(%struct.sVString* %81)
  %82 = load %struct.sVString*, %struct.sVString** %name, align 8
  %call138 = call zeroext i1 @isAcceptableAsInclude(%struct.sVString* %82)
  br i1 %call138, label %if.then139, label %if.end141

if.then139:                                       ; preds = %while.body135
  %83 = load %struct.sVString*, %struct.sVString** %name, align 8
  %84 = load i8, i8* %optional, align 1
  %tobool140 = trunc i8 %84 to i1
  call void @newInclude(%struct.sVString* %83, i1 zeroext %tobool140)
  br label %if.end141

if.end141:                                        ; preds = %if.then139, %while.body135
  br label %do.body142

do.body142:                                       ; preds = %land.end153, %if.end141
  %call143 = call i32 @nextChar()
  store i32 %call143, i32* %c, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body142
  %85 = load i32, i32* %c, align 4
  %cmp144 = icmp ne i32 %85, -1
  br i1 %cmp144, label %land.lhs.true146, label %land.end153

land.lhs.true146:                                 ; preds = %do.cond
  %86 = load i32, i32* %c, align 4
  %cmp147 = icmp ne i32 %86, 10
  br i1 %cmp147, label %land.rhs149, label %land.end153

land.rhs149:                                      ; preds = %land.lhs.true146
  %87 = load i32, i32* %c, align 4
  %call150 = call i32 @isspace(i32 %87) #3
  %tobool151 = icmp ne i32 %call150, 0
  %lnot152 = xor i1 %tobool151, true
  br label %land.end153

land.end153:                                      ; preds = %land.rhs149, %land.lhs.true146, %do.cond
  %88 = phi i1 [ false, %land.lhs.true146 ], [ false, %do.cond ], [ %lnot152, %land.rhs149 ]
  br i1 %88, label %do.body142, label %do.end154

do.end154:                                        ; preds = %land.end153
  %89 = load i32, i32* %c, align 4
  %cmp155 = icmp eq i32 %89, 10
  br i1 %cmp155, label %if.then157, label %if.end158

if.then157:                                       ; preds = %do.end154
  %90 = load i32, i32* %c, align 4
  call void @ungetcToInputFile(i32 %90)
  br label %if.end158

if.end158:                                        ; preds = %if.then157, %do.end154
  %91 = load i32, i32* %c, align 4
  %cmp159 = icmp eq i32 %91, -1
  br i1 %cmp159, label %if.then164, label %lor.lhs.false161

lor.lhs.false161:                                 ; preds = %if.end158
  %92 = load i32, i32* %c, align 4
  %cmp162 = icmp eq i32 %92, 10
  br i1 %cmp162, label %if.then164, label %if.end165

if.then164:                                       ; preds = %lor.lhs.false161, %if.end158
  br label %while.end166

if.end165:                                        ; preds = %lor.lhs.false161
  br label %while.body135

while.end166:                                     ; preds = %if.then164
  br label %if.end168

if.else167:                                       ; preds = %lor.lhs.false123
  %93 = load %struct.sVString*, %struct.sVString** %name, align 8
  call void @directiveFound(%struct.sVString* %93)
  br label %if.end168

if.end168:                                        ; preds = %if.else167, %while.end166
  br label %if.end169

if.end169:                                        ; preds = %if.end168, %if.then114
  br label %if.end170

if.end170:                                        ; preds = %if.end169, %if.end109
  br label %if.end171

if.end171:                                        ; preds = %if.end170, %if.then93
  br label %if.end172

if.end172:                                        ; preds = %if.end171, %if.then90
  br label %if.end173

if.end173:                                        ; preds = %if.end172, %if.end82
  br label %if.end175

if.else174:                                       ; preds = %land.lhs.true76, %if.else74
  store i8 0, i8* %variable_possible, align 1
  br label %if.end175

if.end175:                                        ; preds = %if.else174, %if.end173
  br label %if.end176

if.end176:                                        ; preds = %if.end175, %if.then71
  br label %if.end177

if.end177:                                        ; preds = %if.end176, %if.end63
  br label %if.end178

if.end178:                                        ; preds = %if.end177, %if.then43
  br label %if.end179

if.end179:                                        ; preds = %if.end178, %if.then35
  br label %if.end180

if.end180:                                        ; preds = %if.end179, %if.then31
  br label %if.end181

if.end181:                                        ; preds = %if.end180
  br label %if.end182

if.end182:                                        ; preds = %if.end181, %if.then24
  br label %while.cond

while.end183:                                     ; preds = %while.cond
  %94 = load %struct.sPtrArray*, %struct.sPtrArray** %identifiers, align 8
  call void @stringListDelete(%struct.sPtrArray* %94)
  ret void
}

declare %struct.sPtrArray* @stringListNew() #1

declare %struct.sSubparser* @getSubparserRunningBaseparser() #1

declare void @chooseExclusiveSubparser(%struct.sSubparser*, i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @nextChar() #0 {
entry:
  %c = alloca i32, align 4
  %call = call i32 @getcFromInputFile()
  store i32 %call, i32* %c, align 4
  %0 = load i32, i32* %c, align 4
  %cmp = icmp eq i32 %0, 92
  br i1 %cmp, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %call1 = call i32 @getcFromInputFile()
  store i32 %call1, i32* %c, align 4
  %1 = load i32, i32* %c, align 4
  %cmp2 = icmp eq i32 %1, 10
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  %call4 = call i32 @nextChar()
  store i32 %call4, i32* %c, align 4
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry
  %2 = load i32, i32* %c, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @skipToNonWhite(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* %c.addr, align 4
  %cmp = icmp ne i32 %0, 10
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %1 = load i32, i32* %c.addr, align 4
  %call = call i32 @isspace(i32 %1) #3
  %tobool = icmp ne i32 %call, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %2 = phi i1 [ false, %while.cond ], [ %tobool, %land.rhs ]
  br i1 %2, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %call1 = call i32 @nextChar()
  store i32 %call1, i32* %c.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %3 = load i32, i32* %c.addr, align 4
  ret i32 %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @skipLine() #0 {
entry:
  %c = alloca i32, align 4
  br label %do.body

do.body:                                          ; preds = %land.end, %entry
  %call = call i32 @nextChar()
  store i32 %call, i32* %c, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %0 = load i32, i32* %c, align 4
  %cmp = icmp ne i32 %0, -1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %1 = load i32, i32* %c, align 4
  %cmp1 = icmp ne i32 %1, 10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %2 = phi i1 [ false, %do.cond ], [ %cmp1, %land.rhs ]
  br i1 %2, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  %3 = load i32, i32* %c, align 4
  %cmp2 = icmp eq i32 %3, 10
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  %4 = load i32, i32* %c, align 4
  call void @ungetcToInputFile(i32 %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end
  ret void
}

declare void @stringListClear(%struct.sPtrArray*) #1

; Function Attrs: nounwind readonly
declare i32 @isspace(i32) #2

declare void @ungetcToInputFile(i32) #1

declare i32 @stringListCount(%struct.sPtrArray*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @newTarget(%struct.sVString* %name) #0 {
entry:
  %name.addr = alloca %struct.sVString*, align 8
  store %struct.sVString* %name, %struct.sVString** %name.addr, align 8
  %0 = load %struct.sVString*, %struct.sVString** %name.addr, align 8
  %call = call zeroext i1 @isSpecialTarget(%struct.sVString* %0)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.sVString*, %struct.sVString** %name.addr, align 8
  call void @makeSimpleMakeTag(%struct.sVString* %1, i32 1)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare %struct.sVString* @stringListItem(%struct.sPtrArray*, i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @newMacro(%struct.sVString* %name, i1 zeroext %with_define_directive, i1 zeroext %appending) #0 {
entry:
  %name.addr = alloca %struct.sVString*, align 8
  %with_define_directive.addr = alloca i8, align 1
  %appending.addr = alloca i8, align 1
  %s = alloca %struct.sSubparser*, align 8
  %m = alloca %struct.sMakeSubparser*, align 8
  store %struct.sVString* %name, %struct.sVString** %name.addr, align 8
  %frombool = zext i1 %with_define_directive to i8
  store i8 %frombool, i8* %with_define_directive.addr, align 1
  %frombool1 = zext i1 %appending to i8
  store i8 %frombool1, i8* %appending.addr, align 1
  %0 = load i8, i8* %appending.addr, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct.sVString*, %struct.sVString** %name.addr, align 8
  call void @makeSimpleMakeTag(%struct.sVString* %1, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store %struct.sSubparser* null, %struct.sSubparser** %s, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end7, %if.end
  %2 = load %struct.sSubparser*, %struct.sSubparser** %s, align 8
  %call = call %struct.sSubparser* @getNextSubparser(%struct.sSubparser* %2, i1 zeroext false)
  store %struct.sSubparser* %call, %struct.sSubparser** %s, align 8
  %cmp = icmp ne %struct.sSubparser* %call, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct.sSubparser*, %struct.sSubparser** %s, align 8
  %4 = bitcast %struct.sSubparser* %3 to %struct.sMakeSubparser*
  store %struct.sMakeSubparser* %4, %struct.sMakeSubparser** %m, align 8
  %5 = load %struct.sSubparser*, %struct.sSubparser** %s, align 8
  call void @enterSubparser(%struct.sSubparser* %5)
  %6 = load %struct.sMakeSubparser*, %struct.sMakeSubparser** %m, align 8
  %newMacroNotify = getelementptr inbounds %struct.sMakeSubparser, %struct.sMakeSubparser* %6, i32 0, i32 3
  %7 = load void (%struct.sMakeSubparser*, i8*, i1, i1)*, void (%struct.sMakeSubparser*, i8*, i1, i1)** %newMacroNotify, align 8
  %tobool2 = icmp ne void (%struct.sMakeSubparser*, i8*, i1, i1)* %7, null
  br i1 %tobool2, label %if.then3, label %if.end7

if.then3:                                         ; preds = %while.body
  %8 = load %struct.sMakeSubparser*, %struct.sMakeSubparser** %m, align 8
  %newMacroNotify4 = getelementptr inbounds %struct.sMakeSubparser, %struct.sMakeSubparser* %8, i32 0, i32 3
  %9 = load void (%struct.sMakeSubparser*, i8*, i1, i1)*, void (%struct.sMakeSubparser*, i8*, i1, i1)** %newMacroNotify4, align 8
  %10 = load %struct.sMakeSubparser*, %struct.sMakeSubparser** %m, align 8
  %11 = load %struct.sVString*, %struct.sVString** %name.addr, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %11, i32 0, i32 2
  %12 = load i8*, i8** %buffer, align 8
  %13 = load i8, i8* %with_define_directive.addr, align 1
  %tobool5 = trunc i8 %13 to i1
  %14 = load i8, i8* %appending.addr, align 1
  %tobool6 = trunc i8 %14 to i1
  call void %9(%struct.sMakeSubparser* %10, i8* %12, i1 zeroext %tobool5, i1 zeroext %tobool6)
  br label %if.end7

if.end7:                                          ; preds = %if.then3, %while.body
  call void @leaveSubparser()
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @isIdentifier(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %1 = load i32, i32* %c.addr, align 4
  %call = call i32 @isalnum(i32 %1) #3
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %2 = load i32, i32* %c.addr, align 4
  %call1 = call i8* @strchr(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0), i32 %2)
  %cmp2 = icmp ne i8* %call1, null
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %3 = phi i1 [ true, %land.rhs ], [ %cmp2, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %entry
  %4 = phi i1 [ false, %entry ], [ %3, %lor.end ]
  ret i1 %4
}

declare %struct.sVString* @vStringNew() #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @readIdentifier(i32 %first, %struct.sVString* %id) #0 {
entry:
  %first.addr = alloca i32, align 4
  %id.addr = alloca %struct.sVString*, align 8
  %depth = alloca i32, align 4
  %c = alloca i32, align 4
  %vStringClear_s = alloca %struct.sVString*, align 8
  store i32 %first, i32* %first.addr, align 4
  store %struct.sVString* %id, %struct.sVString** %id.addr, align 8
  store i32 0, i32* %depth, align 4
  %0 = load i32, i32* %first.addr, align 4
  store i32 %0, i32* %c, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %1 = load %struct.sVString*, %struct.sVString** %id.addr, align 8
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
  br label %while.cond

while.cond:                                       ; preds = %if.end11, %do.end
  %5 = load i32, i32* %c, align 4
  %call = call zeroext i1 @isIdentifier(i32 %5)
  br i1 %call, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %6 = load i32, i32* %depth, align 4
  %cmp = icmp sgt i32 %6, 0
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %lor.rhs
  %7 = load i32, i32* %c, align 4
  %cmp1 = icmp ne i32 %7, -1
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %8 = load i32, i32* %c, align 4
  %cmp2 = icmp ne i32 %8, 10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %lor.rhs
  %9 = phi i1 [ false, %land.lhs.true ], [ false, %lor.rhs ], [ %cmp2, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %while.cond
  %10 = phi i1 [ true, %while.cond ], [ %9, %land.end ]
  br i1 %10, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %11 = load i32, i32* %c, align 4
  %cmp3 = icmp eq i32 %11, 40
  br i1 %cmp3, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %12 = load i32, i32* %c, align 4
  %cmp4 = icmp eq i32 %12, 123
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %while.body
  %13 = load i32, i32* %depth, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %depth, align 4
  br label %if.end11

if.else:                                          ; preds = %lor.lhs.false
  %14 = load i32, i32* %depth, align 4
  %cmp5 = icmp sgt i32 %14, 0
  br i1 %cmp5, label %land.lhs.true6, label %if.end

land.lhs.true6:                                   ; preds = %if.else
  %15 = load i32, i32* %c, align 4
  %cmp7 = icmp eq i32 %15, 41
  br i1 %cmp7, label %if.then10, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %land.lhs.true6
  %16 = load i32, i32* %c, align 4
  %cmp9 = icmp eq i32 %16, 125
  br i1 %cmp9, label %if.then10, label %if.end

if.then10:                                        ; preds = %lor.lhs.false8, %land.lhs.true6
  %17 = load i32, i32* %depth, align 4
  %dec = add nsw i32 %17, -1
  store i32 %dec, i32* %depth, align 4
  br label %if.end

if.end:                                           ; preds = %if.then10, %lor.lhs.false8, %if.else
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then
  %18 = load %struct.sVString*, %struct.sVString** %id.addr, align 8
  %19 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %18, i32 %19)
  %call12 = call i32 @nextChar()
  store i32 %call12, i32* %c, align 4
  br label %while.cond

while.end:                                        ; preds = %lor.end
  %20 = load i32, i32* %c, align 4
  call void @ungetcToInputFile(i32 %20)
  ret void
}

declare void @stringListAdd(%struct.sPtrArray*, %struct.sVString*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @valueFound(%struct.sVString* %name) #0 {
entry:
  %name.addr = alloca %struct.sVString*, align 8
  %s = alloca %struct.sSubparser*, align 8
  %m = alloca %struct.sMakeSubparser*, align 8
  store %struct.sVString* %name, %struct.sVString** %name.addr, align 8
  store %struct.sSubparser* null, %struct.sSubparser** %s, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %struct.sSubparser*, %struct.sSubparser** %s, align 8
  %call = call %struct.sSubparser* @getNextSubparser(%struct.sSubparser* %0, i1 zeroext false)
  store %struct.sSubparser* %call, %struct.sSubparser** %s, align 8
  %cmp = icmp ne %struct.sSubparser* %call, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.sSubparser*, %struct.sSubparser** %s, align 8
  %2 = bitcast %struct.sSubparser* %1 to %struct.sMakeSubparser*
  store %struct.sMakeSubparser* %2, %struct.sMakeSubparser** %m, align 8
  %3 = load %struct.sSubparser*, %struct.sSubparser** %s, align 8
  call void @enterSubparser(%struct.sSubparser* %3)
  %4 = load %struct.sMakeSubparser*, %struct.sMakeSubparser** %m, align 8
  %valueNotify = getelementptr inbounds %struct.sMakeSubparser, %struct.sMakeSubparser* %4, i32 0, i32 1
  %5 = load void (%struct.sMakeSubparser*, i8*)*, void (%struct.sMakeSubparser*, i8*)** %valueNotify, align 8
  %tobool = icmp ne void (%struct.sMakeSubparser*, i8*)* %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %6 = load %struct.sMakeSubparser*, %struct.sMakeSubparser** %m, align 8
  %valueNotify1 = getelementptr inbounds %struct.sMakeSubparser, %struct.sMakeSubparser* %6, i32 0, i32 1
  %7 = load void (%struct.sMakeSubparser*, i8*)*, void (%struct.sMakeSubparser*, i8*)** %valueNotify1, align 8
  %8 = load %struct.sMakeSubparser*, %struct.sMakeSubparser** %m, align 8
  %9 = load %struct.sVString*, %struct.sVString** %name.addr, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %9, i32 0, i32 2
  %10 = load i8*, i8** %buffer, align 8
  call void %7(%struct.sMakeSubparser* %8, i8* %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  call void @leaveSubparser()
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

declare i32 @strcmp(i8*, i8*) #1

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

declare void @vStringStripTrailing(%struct.sVString*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @isAcceptableAsInclude(%struct.sVString* %name) #0 {
entry:
  %retval = alloca i1, align 1
  %name.addr = alloca %struct.sVString*, align 8
  store %struct.sVString* %name, %struct.sVString** %name.addr, align 8
  %0 = load %struct.sVString*, %struct.sVString** %name.addr, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %0, i32 0, i32 2
  %1 = load i8*, i8** %buffer, align 8
  %call = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0))
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load i1, i1* %retval, align 1
  ret i1 %2
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @newInclude(%struct.sVString* %name, i1 zeroext %optional) #0 {
entry:
  %name.addr = alloca %struct.sVString*, align 8
  %optional.addr = alloca i8, align 1
  store %struct.sVString* %name, %struct.sVString** %name.addr, align 8
  %frombool = zext i1 %optional to i8
  store i8 %frombool, i8* %optional.addr, align 1
  %0 = load %struct.sVString*, %struct.sVString** %name.addr, align 8
  %1 = load i8, i8* %optional.addr, align 1
  %tobool = trunc i8 %1 to i1
  %2 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i32 1, i32 0
  call void @makeSimpleMakeRefTag(%struct.sVString* %0, i32 2, i32 %cond)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @directiveFound(%struct.sVString* %name) #0 {
entry:
  %name.addr = alloca %struct.sVString*, align 8
  %s = alloca %struct.sSubparser*, align 8
  %m = alloca %struct.sMakeSubparser*, align 8
  store %struct.sVString* %name, %struct.sVString** %name.addr, align 8
  store %struct.sSubparser* null, %struct.sSubparser** %s, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %struct.sSubparser*, %struct.sSubparser** %s, align 8
  %call = call %struct.sSubparser* @getNextSubparser(%struct.sSubparser* %0, i1 zeroext false)
  store %struct.sSubparser* %call, %struct.sSubparser** %s, align 8
  %cmp = icmp ne %struct.sSubparser* %call, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.sSubparser*, %struct.sSubparser** %s, align 8
  %2 = bitcast %struct.sSubparser* %1 to %struct.sMakeSubparser*
  store %struct.sMakeSubparser* %2, %struct.sMakeSubparser** %m, align 8
  %3 = load %struct.sSubparser*, %struct.sSubparser** %s, align 8
  call void @enterSubparser(%struct.sSubparser* %3)
  %4 = load %struct.sMakeSubparser*, %struct.sMakeSubparser** %m, align 8
  %directiveNotify = getelementptr inbounds %struct.sMakeSubparser, %struct.sMakeSubparser* %4, i32 0, i32 2
  %5 = load void (%struct.sMakeSubparser*, i8*)*, void (%struct.sMakeSubparser*, i8*)** %directiveNotify, align 8
  %tobool = icmp ne void (%struct.sMakeSubparser*, i8*)* %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %6 = load %struct.sMakeSubparser*, %struct.sMakeSubparser** %m, align 8
  %directiveNotify1 = getelementptr inbounds %struct.sMakeSubparser, %struct.sMakeSubparser* %6, i32 0, i32 2
  %7 = load void (%struct.sMakeSubparser*, i8*)*, void (%struct.sMakeSubparser*, i8*)** %directiveNotify1, align 8
  %8 = load %struct.sMakeSubparser*, %struct.sMakeSubparser** %m, align 8
  %9 = load %struct.sVString*, %struct.sVString** %name.addr, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %9, i32 0, i32 2
  %10 = load i8*, i8** %buffer, align 8
  call void %7(%struct.sMakeSubparser* %8, i8* %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  call void @leaveSubparser()
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

declare void @stringListDelete(%struct.sPtrArray*) #1

declare i32 @getcFromInputFile() #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @isSpecialTarget(%struct.sVString* %name) #0 {
entry:
  %retval = alloca i1, align 1
  %name.addr = alloca %struct.sVString*, align 8
  %i = alloca i64, align 8
  %ch = alloca i8, align 1
  store %struct.sVString* %name, %struct.sVString** %name.addr, align 8
  store i64 0, i64* %i, align 8
  %0 = load %struct.sVString*, %struct.sVString** %name.addr, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %0, i32 0, i32 0
  %1 = load i64, i64* %length, align 8
  %cmp = icmp ult i64 %1, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.sVString*, %struct.sVString** %name.addr, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %2, i32 0, i32 2
  %3 = load i8*, i8** %buffer, align 8
  %4 = load i64, i64* %i, align 8
  %inc = add i64 %4, 1
  store i64 %inc, i64* %i, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %4
  %5 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %5 to i32
  %cmp1 = icmp ne i32 %conv, 46
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  br label %while.cond

while.cond:                                       ; preds = %if.end14, %if.end
  %6 = load i64, i64* %i, align 8
  %7 = load %struct.sVString*, %struct.sVString** %name.addr, align 8
  %length3 = getelementptr inbounds %struct.sVString, %struct.sVString* %7, i32 0, i32 0
  %8 = load i64, i64* %length3, align 8
  %cmp4 = icmp ult i64 %6, %8
  br i1 %cmp4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load %struct.sVString*, %struct.sVString** %name.addr, align 8
  %buffer6 = getelementptr inbounds %struct.sVString, %struct.sVString* %9, i32 0, i32 2
  %10 = load i8*, i8** %buffer6, align 8
  %11 = load i64, i64* %i, align 8
  %inc7 = add i64 %11, 1
  store i64 %inc7, i64* %i, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %10, i64 %11
  %12 = load i8, i8* %arrayidx8, align 1
  store i8 %12, i8* %ch, align 1
  %13 = load i8, i8* %ch, align 1
  %conv9 = sext i8 %13 to i32
  %cmp10 = icmp ne i32 %conv9, 95
  br i1 %cmp10, label %land.lhs.true, label %if.end14

land.lhs.true:                                    ; preds = %while.body
  %14 = load i8, i8* %ch, align 1
  %conv12 = sext i8 %14 to i32
  %call = call i32 @isupper(i32 %conv12) #3
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end14, label %if.then13

if.then13:                                        ; preds = %land.lhs.true
  store i1 false, i1* %retval, align 1
  br label %return

if.end14:                                         ; preds = %land.lhs.true, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %while.end, %if.then13, %if.then
  %15 = load i1, i1* %retval, align 1
  ret i1 %15
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @makeSimpleMakeTag(%struct.sVString* %name, i32 %kind) #0 {
entry:
  %name.addr = alloca %struct.sVString*, align 8
  %kind.addr = alloca i32, align 4
  store %struct.sVString* %name, %struct.sVString** %name.addr, align 8
  store i32 %kind, i32* %kind.addr, align 4
  %call = call i32 @getInputLanguage()
  %call1 = call zeroext i1 @isLanguageEnabled(i32 %call)
  br i1 %call1, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %0 = load %struct.sVString*, %struct.sVString** %name.addr, align 8
  %1 = load i32, i32* %kind.addr, align 4
  %call2 = call i32 @makeSimpleTag(%struct.sVString* %0, i32 %1)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @isupper(i32) #2

declare zeroext i1 @isLanguageEnabled(i32) #1

declare i32 @getInputLanguage() #1

declare i32 @makeSimpleTag(%struct.sVString*, i32) #1

declare %struct.sSubparser* @getNextSubparser(%struct.sSubparser*, i1 zeroext) #1

declare void @enterSubparser(%struct.sSubparser*) #1

declare void @leaveSubparser() #1

; Function Attrs: nounwind readonly
declare i32 @isalnum(i32) #2

declare i8* @strchr(i8*, i32) #1

declare void @vStringResize(%struct.sVString*, i64) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @makeSimpleMakeRefTag(%struct.sVString* %name, i32 %kind, i32 %roleIndex) #0 {
entry:
  %name.addr = alloca %struct.sVString*, align 8
  %kind.addr = alloca i32, align 4
  %roleIndex.addr = alloca i32, align 4
  store %struct.sVString* %name, %struct.sVString** %name.addr, align 8
  store i32 %kind, i32* %kind.addr, align 4
  store i32 %roleIndex, i32* %roleIndex.addr, align 4
  %call = call i32 @getInputLanguage()
  %call1 = call zeroext i1 @isLanguageEnabled(i32 %call)
  br i1 %call1, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %0 = load %struct.sVString*, %struct.sVString** %name.addr, align 8
  %1 = load i32, i32* %kind.addr, align 4
  %2 = load i32, i32* %roleIndex.addr, align 4
  %call2 = call i32 @makeSimpleRefTag(%struct.sVString* %0, i32 %1, i32 %2)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare i32 @makeSimpleRefTag(%struct.sVString*, i32, i32) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 10.0.0 (https://github.com/holzschu/clang.git 0cfc630fbdb62e96720b611a57123ef3eb13e297) (https://github.com/holzschu/llvm.git 0d8a71e39b28502c24718f7e74b5acbcfe36dfe0)"}
