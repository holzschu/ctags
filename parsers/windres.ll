; ModuleID = 'windres.c'
source_filename = "windres.c"
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

@.str = private unnamed_addr constant [8 x i8] c"WindRes\00", align 1
@ResKinds = internal global [8 x %struct.sKindDefinition] [%struct.sKindDefinition { i8 1, i8 100, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 109, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 105, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 98, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 99, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 102, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 118, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 97, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }], align 8
@extensions = internal constant [2 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0), i8* null], align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"dialog\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"dialogs\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"menu\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"menus\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"icon\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"icons\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"bitmap\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"bitmaps\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"cursor\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"cursors\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"font\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"fonts\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"versions\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"accelerators\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"rc\00", align 1
@_blockDepth = internal global i32 0, align 4
@.str.17 = private unnamed_addr constant [6 x i8] c"BEGIN\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"END\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"DIALOG\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"DIALOGEX\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"MENU\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"MENUEX\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"VERSIONINFO\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"ACCELERATORS\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"ICON\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"CURSOR\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"BITMAP\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"FONT\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sParserDefinition* @WindResParser() #0 {
entry:
  %def = alloca %struct.sParserDefinition*, align 8
  %call = call %struct.sParserDefinition* @parserNew(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store %struct.sParserDefinition* %call, %struct.sParserDefinition** %def, align 8
  %0 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %0, i32 0, i32 1
  store %struct.sKindDefinition* getelementptr inbounds ([8 x %struct.sKindDefinition], [8 x %struct.sKindDefinition]* @ResKinds, i64 0, i64 0), %struct.sKindDefinition** %kindTable, align 8
  %1 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %1, i32 0, i32 2
  store i32 8, i32* %kindCount, align 8
  %2 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %extensions = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %2, i32 0, i32 3
  store i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @extensions, i64 0, i64 0), i8*** %extensions, align 8
  %3 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %parser = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %3, i32 0, i32 8
  store void ()* @findResTags, void ()** %parser, align 8
  %4 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  ret %struct.sParserDefinition* %4
}

declare %struct.sParserDefinition* @parserNew(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @findResTags() #0 {
entry:
  %line = alloca i8*, align 8
  %state = alloca i32, align 4
  store i32 0, i32* %state, align 4
  store i32 0, i32* @_blockDepth, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %call = call i8* @readLineFromInputFile()
  store i8* %call, i8** %line, align 8
  %cmp = icmp ne i8* %call, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %0 = load i8*, i8** %line, align 8
  %1 = load i32, i32* %state, align 4
  %call1 = call i32 @parseResLine(i8* %0, i32 %1)
  store i32 %call1, i32* %state, align 4
  %2 = load i32, i32* %state, align 4
  %cmp2 = icmp eq i32 %2, 4
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %if.then, %while.cond
  ret void
}

declare i8* @readLineFromInputFile() #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @parseResLine(i8* %line, i32 %state) #0 {
entry:
  %retval = alloca i32, align 4
  %line.addr = alloca i8*, align 8
  %state.addr = alloca i32, align 4
  store i8* %line, i8** %line.addr, align 8
  store i32 %state, i32* %state.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end83, %entry
  %0 = load i8*, i8** %line.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = zext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %while.body, label %while.end85

while.body:                                       ; preds = %while.cond
  br label %while.cond2

while.cond2:                                      ; preds = %while.body4, %while.body
  %2 = load i8*, i8** %line.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv3 = zext i8 %3 to i32
  %call = call i32 @isspace(i32 %conv3) #3
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %while.body4, label %while.end

while.body4:                                      ; preds = %while.cond2
  %4 = load i8*, i8** %line.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %line.addr, align 8
  br label %while.cond2

while.end:                                        ; preds = %while.cond2
  %5 = load i32, i32* %state.addr, align 4
  switch i32 %5, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb34
    i32 2, label %sw.bb45
    i32 3, label %sw.bb54
    i32 4, label %sw.bb79
  ]

sw.bb:                                            ; preds = %while.end
  %6 = load i8*, i8** %line.addr, align 8
  %7 = load i8, i8* %6, align 1
  %conv5 = zext i8 %7 to i32
  %cmp6 = icmp eq i32 %conv5, 35
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  store i32 0, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %sw.bb
  %8 = load i8*, i8** %line.addr, align 8
  %9 = load i8, i8* %8, align 1
  %conv8 = zext i8 %9 to i32
  %cmp9 = icmp eq i32 %conv8, 47
  br i1 %cmp9, label %land.lhs.true, label %if.else15

land.lhs.true:                                    ; preds = %if.else
  %10 = load i8*, i8** %line.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 1
  %11 = load i8, i8* %arrayidx, align 1
  %conv11 = zext i8 %11 to i32
  %cmp12 = icmp eq i32 %conv11, 47
  br i1 %cmp12, label %if.then14, label %if.else15

if.then14:                                        ; preds = %land.lhs.true
  store i32 0, i32* %retval, align 4
  br label %return

if.else15:                                        ; preds = %land.lhs.true, %if.else
  %12 = load i8*, i8** %line.addr, align 8
  %13 = load i8, i8* %12, align 1
  %conv16 = zext i8 %13 to i32
  %cmp17 = icmp eq i32 %conv16, 47
  br i1 %cmp17, label %land.lhs.true19, label %if.else25

land.lhs.true19:                                  ; preds = %if.else15
  %14 = load i8*, i8** %line.addr, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %14, i64 1
  %15 = load i8, i8* %arrayidx20, align 1
  %conv21 = zext i8 %15 to i32
  %cmp22 = icmp eq i32 %conv21, 42
  br i1 %cmp22, label %if.then24, label %if.else25

if.then24:                                        ; preds = %land.lhs.true19
  store i32 1, i32* %state.addr, align 4
  br label %if.end31

if.else25:                                        ; preds = %land.lhs.true19, %if.else15
  %16 = load i8*, i8** %line.addr, align 8
  %17 = load i8, i8* %16, align 1
  %conv26 = zext i8 %17 to i32
  %call27 = call i32 @isalnum(i32 %conv26) #3
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.then29, label %if.end

if.then29:                                        ; preds = %if.else25
  %18 = load i8*, i8** %line.addr, align 8
  %call30 = call i32 @parseResDefinition(i8* %18)
  store i32 %call30, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.else25
  br label %if.end31

if.end31:                                         ; preds = %if.end, %if.then24
  br label %if.end32

if.end32:                                         ; preds = %if.end31
  br label %if.end33

if.end33:                                         ; preds = %if.end32
  br label %sw.epilog

sw.bb34:                                          ; preds = %while.end
  %19 = load i8*, i8** %line.addr, align 8
  %20 = load i8, i8* %19, align 1
  %conv35 = zext i8 %20 to i32
  %cmp36 = icmp eq i32 %conv35, 42
  br i1 %cmp36, label %land.lhs.true38, label %if.end44

land.lhs.true38:                                  ; preds = %sw.bb34
  %21 = load i8*, i8** %line.addr, align 8
  %arrayidx39 = getelementptr inbounds i8, i8* %21, i64 1
  %22 = load i8, i8* %arrayidx39, align 1
  %conv40 = zext i8 %22 to i32
  %cmp41 = icmp eq i32 %conv40, 47
  br i1 %cmp41, label %if.then43, label %if.end44

if.then43:                                        ; preds = %land.lhs.true38
  store i32 0, i32* %state.addr, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then43, %land.lhs.true38, %sw.bb34
  br label %sw.epilog

sw.bb45:                                          ; preds = %while.end
  %23 = load i8*, i8** %line.addr, align 8
  %24 = load i8, i8* %23, align 1
  %conv46 = zext i8 %24 to i32
  %cmp47 = icmp eq i32 %conv46, 123
  br i1 %cmp47, label %if.then52, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb45
  %25 = load i8*, i8** %line.addr, align 8
  %call49 = call i32 @strcmp(i8* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0))
  %cmp50 = icmp eq i32 %call49, 0
  br i1 %cmp50, label %if.then52, label %if.end53

if.then52:                                        ; preds = %lor.lhs.false, %sw.bb45
  store i32 1, i32* @_blockDepth, align 4
  store i32 3, i32* %retval, align 4
  br label %return

if.end53:                                         ; preds = %lor.lhs.false
  br label %sw.epilog

sw.bb54:                                          ; preds = %while.end
  %26 = load i8*, i8** %line.addr, align 8
  %27 = load i8, i8* %26, align 1
  %conv55 = zext i8 %27 to i32
  %cmp56 = icmp eq i32 %conv55, 123
  br i1 %cmp56, label %if.then62, label %lor.lhs.false58

lor.lhs.false58:                                  ; preds = %sw.bb54
  %28 = load i8*, i8** %line.addr, align 8
  %call59 = call i32 @strcmp(i8* %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0))
  %cmp60 = icmp eq i32 %call59, 0
  br i1 %cmp60, label %if.then62, label %if.else63

if.then62:                                        ; preds = %lor.lhs.false58, %sw.bb54
  %29 = load i32, i32* @_blockDepth, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* @_blockDepth, align 4
  br label %if.end78

if.else63:                                        ; preds = %lor.lhs.false58
  %30 = load i8*, i8** %line.addr, align 8
  %31 = load i8, i8* %30, align 1
  %conv64 = zext i8 %31 to i32
  %cmp65 = icmp eq i32 %conv64, 125
  br i1 %cmp65, label %if.then71, label %lor.lhs.false67

lor.lhs.false67:                                  ; preds = %if.else63
  %32 = load i8*, i8** %line.addr, align 8
  %call68 = call i32 @strcmp(i8* %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0))
  %cmp69 = icmp eq i32 %call68, 0
  br i1 %cmp69, label %if.then71, label %if.end77

if.then71:                                        ; preds = %lor.lhs.false67, %if.else63
  %33 = load i32, i32* @_blockDepth, align 4
  %cmp72 = icmp eq i32 %33, 1
  br i1 %cmp72, label %if.then74, label %if.else75

if.then74:                                        ; preds = %if.then71
  store i32 0, i32* %retval, align 4
  br label %return

if.else75:                                        ; preds = %if.then71
  %34 = load i32, i32* @_blockDepth, align 4
  %dec = add nsw i32 %34, -1
  store i32 %dec, i32* @_blockDepth, align 4
  br label %if.end76

if.end76:                                         ; preds = %if.else75
  br label %if.end77

if.end77:                                         ; preds = %if.end76, %lor.lhs.false67
  br label %if.end78

if.end78:                                         ; preds = %if.end77, %if.then62
  br label %sw.epilog

sw.bb79:                                          ; preds = %while.end
  %35 = load i32, i32* %state.addr, align 4
  store i32 %35, i32* %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %while.end, %if.end78, %if.end53, %if.end44, %if.end33
  %36 = load i8*, i8** %line.addr, align 8
  %cmp80 = icmp eq i8* %36, null
  br i1 %cmp80, label %if.then82, label %if.end83

if.then82:                                        ; preds = %sw.epilog
  store i32 4, i32* %retval, align 4
  br label %return

if.end83:                                         ; preds = %sw.epilog
  %37 = load i8*, i8** %line.addr, align 8
  %incdec.ptr84 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %incdec.ptr84, i8** %line.addr, align 8
  br label %while.cond

while.end85:                                      ; preds = %while.cond
  %38 = load i32, i32* %state.addr, align 4
  store i32 %38, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end85, %if.then82, %sw.bb79, %if.then74, %if.then52, %if.then29, %if.then14, %if.then
  %39 = load i32, i32* %retval, align 4
  ret i32 %39
}

; Function Attrs: nounwind readonly
declare i32 @isspace(i32) #2

; Function Attrs: nounwind readonly
declare i32 @isalnum(i32) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @parseResDefinition(i8* %line) #0 {
entry:
  %line.addr = alloca i8*, align 8
  %state = alloca i32, align 4
  %name = alloca %struct.sVString*, align 8
  %type = alloca %struct.sVString*, align 8
  store i8* %line, i8** %line.addr, align 8
  store i32 0, i32* %state, align 4
  %call = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call, %struct.sVString** %name, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i8*, i8** %line.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = zext i8 %1 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %2 = load i8*, i8** %line.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv1 = zext i8 %3 to i32
  %call2 = call i32 @isspace(i32 %conv1) #3
  %tobool3 = icmp ne i32 %call2, 0
  %lnot = xor i1 %tobool3, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %4 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %4, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %5 = load %struct.sVString*, %struct.sVString** %name, align 8
  %6 = load i8*, i8** %line.addr, align 8
  %7 = load i8, i8* %6, align 1
  %conv4 = zext i8 %7 to i32
  call void @vStringPut(%struct.sVString* %5, i32 %conv4)
  %8 = load i8*, i8** %line.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr, i8** %line.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %while.cond5

while.cond5:                                      ; preds = %while.body13, %while.end
  %9 = load i8*, i8** %line.addr, align 8
  %10 = load i8, i8* %9, align 1
  %conv6 = zext i8 %10 to i32
  %tobool7 = icmp ne i32 %conv6, 0
  br i1 %tobool7, label %land.rhs8, label %land.end12

land.rhs8:                                        ; preds = %while.cond5
  %11 = load i8*, i8** %line.addr, align 8
  %12 = load i8, i8* %11, align 1
  %conv9 = zext i8 %12 to i32
  %call10 = call i32 @isspace(i32 %conv9) #3
  %tobool11 = icmp ne i32 %call10, 0
  br label %land.end12

land.end12:                                       ; preds = %land.rhs8, %while.cond5
  %13 = phi i1 [ false, %while.cond5 ], [ %tobool11, %land.rhs8 ]
  br i1 %13, label %while.body13, label %while.end15

while.body13:                                     ; preds = %land.end12
  %14 = load i8*, i8** %line.addr, align 8
  %incdec.ptr14 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr14, i8** %line.addr, align 8
  br label %while.cond5

while.end15:                                      ; preds = %land.end12
  %call16 = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call16, %struct.sVString** %type, align 8
  br label %while.cond17

while.cond17:                                     ; preds = %while.body26, %while.end15
  %15 = load i8*, i8** %line.addr, align 8
  %16 = load i8, i8* %15, align 1
  %conv18 = zext i8 %16 to i32
  %tobool19 = icmp ne i32 %conv18, 0
  br i1 %tobool19, label %land.rhs20, label %land.end25

land.rhs20:                                       ; preds = %while.cond17
  %17 = load i8*, i8** %line.addr, align 8
  %18 = load i8, i8* %17, align 1
  %conv21 = zext i8 %18 to i32
  %call22 = call i32 @isspace(i32 %conv21) #3
  %tobool23 = icmp ne i32 %call22, 0
  %lnot24 = xor i1 %tobool23, true
  br label %land.end25

land.end25:                                       ; preds = %land.rhs20, %while.cond17
  %19 = phi i1 [ false, %while.cond17 ], [ %lnot24, %land.rhs20 ]
  br i1 %19, label %while.body26, label %while.end29

while.body26:                                     ; preds = %land.end25
  %20 = load %struct.sVString*, %struct.sVString** %type, align 8
  %21 = load i8*, i8** %line.addr, align 8
  %22 = load i8, i8* %21, align 1
  %conv27 = zext i8 %22 to i32
  call void @vStringPut(%struct.sVString* %20, i32 %conv27)
  %23 = load i8*, i8** %line.addr, align 8
  %incdec.ptr28 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr28, i8** %line.addr, align 8
  br label %while.cond17

while.end29:                                      ; preds = %land.end25
  %24 = load %struct.sVString*, %struct.sVString** %type, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %24, i32 0, i32 2
  %25 = load i8*, i8** %buffer, align 8
  %call30 = call i32 @strcmp(i8* %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0))
  %cmp = icmp eq i32 %call30, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end29
  %26 = load %struct.sVString*, %struct.sVString** %type, align 8
  %buffer32 = getelementptr inbounds %struct.sVString, %struct.sVString* %26, i32 0, i32 2
  %27 = load i8*, i8** %buffer32, align 8
  %call33 = call i32 @strcmp(i8* %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0))
  %cmp34 = icmp eq i32 %call33, 0
  br i1 %cmp34, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %while.end29
  %28 = load %struct.sVString*, %struct.sVString** %name, align 8
  call void @makeResTag(%struct.sVString* %28, i32 0)
  store i32 2, i32* %state, align 4
  br label %if.end88

if.else:                                          ; preds = %lor.lhs.false
  %29 = load %struct.sVString*, %struct.sVString** %type, align 8
  %buffer36 = getelementptr inbounds %struct.sVString, %struct.sVString* %29, i32 0, i32 2
  %30 = load i8*, i8** %buffer36, align 8
  %call37 = call i32 @strcmp(i8* %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0))
  %cmp38 = icmp eq i32 %call37, 0
  br i1 %cmp38, label %if.then45, label %lor.lhs.false40

lor.lhs.false40:                                  ; preds = %if.else
  %31 = load %struct.sVString*, %struct.sVString** %type, align 8
  %buffer41 = getelementptr inbounds %struct.sVString, %struct.sVString* %31, i32 0, i32 2
  %32 = load i8*, i8** %buffer41, align 8
  %call42 = call i32 @strcmp(i8* %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i64 0, i64 0))
  %cmp43 = icmp eq i32 %call42, 0
  br i1 %cmp43, label %if.then45, label %if.else46

if.then45:                                        ; preds = %lor.lhs.false40, %if.else
  %33 = load %struct.sVString*, %struct.sVString** %name, align 8
  call void @makeResTag(%struct.sVString* %33, i32 1)
  store i32 2, i32* %state, align 4
  br label %if.end87

if.else46:                                        ; preds = %lor.lhs.false40
  %34 = load %struct.sVString*, %struct.sVString** %type, align 8
  %buffer47 = getelementptr inbounds %struct.sVString, %struct.sVString* %34, i32 0, i32 2
  %35 = load i8*, i8** %buffer47, align 8
  %call48 = call i32 @strcmp(i8* %35, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i64 0, i64 0))
  %cmp49 = icmp eq i32 %call48, 0
  br i1 %cmp49, label %if.then51, label %if.else52

if.then51:                                        ; preds = %if.else46
  %36 = load %struct.sVString*, %struct.sVString** %name, align 8
  call void @makeResTag(%struct.sVString* %36, i32 6)
  store i32 2, i32* %state, align 4
  br label %if.end86

if.else52:                                        ; preds = %if.else46
  %37 = load %struct.sVString*, %struct.sVString** %type, align 8
  %buffer53 = getelementptr inbounds %struct.sVString, %struct.sVString* %37, i32 0, i32 2
  %38 = load i8*, i8** %buffer53, align 8
  %call54 = call i32 @strcmp(i8* %38, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0))
  %cmp55 = icmp eq i32 %call54, 0
  br i1 %cmp55, label %if.then57, label %if.else58

if.then57:                                        ; preds = %if.else52
  %39 = load %struct.sVString*, %struct.sVString** %name, align 8
  call void @makeResTag(%struct.sVString* %39, i32 7)
  store i32 2, i32* %state, align 4
  br label %if.end85

if.else58:                                        ; preds = %if.else52
  %40 = load %struct.sVString*, %struct.sVString** %type, align 8
  %buffer59 = getelementptr inbounds %struct.sVString, %struct.sVString* %40, i32 0, i32 2
  %41 = load i8*, i8** %buffer59, align 8
  %call60 = call i32 @strcmp(i8* %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0))
  %cmp61 = icmp eq i32 %call60, 0
  br i1 %cmp61, label %if.then63, label %if.else64

if.then63:                                        ; preds = %if.else58
  %42 = load %struct.sVString*, %struct.sVString** %name, align 8
  call void @makeResTag(%struct.sVString* %42, i32 2)
  store i32 0, i32* %state, align 4
  br label %if.end84

if.else64:                                        ; preds = %if.else58
  %43 = load %struct.sVString*, %struct.sVString** %type, align 8
  %buffer65 = getelementptr inbounds %struct.sVString, %struct.sVString* %43, i32 0, i32 2
  %44 = load i8*, i8** %buffer65, align 8
  %call66 = call i32 @strcmp(i8* %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i64 0, i64 0))
  %cmp67 = icmp eq i32 %call66, 0
  br i1 %cmp67, label %if.then69, label %if.else70

if.then69:                                        ; preds = %if.else64
  %45 = load %struct.sVString*, %struct.sVString** %name, align 8
  call void @makeResTag(%struct.sVString* %45, i32 4)
  store i32 0, i32* %state, align 4
  br label %if.end83

if.else70:                                        ; preds = %if.else64
  %46 = load %struct.sVString*, %struct.sVString** %type, align 8
  %buffer71 = getelementptr inbounds %struct.sVString, %struct.sVString* %46, i32 0, i32 2
  %47 = load i8*, i8** %buffer71, align 8
  %call72 = call i32 @strcmp(i8* %47, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i64 0, i64 0))
  %cmp73 = icmp eq i32 %call72, 0
  br i1 %cmp73, label %if.then75, label %if.else76

if.then75:                                        ; preds = %if.else70
  %48 = load %struct.sVString*, %struct.sVString** %name, align 8
  call void @makeResTag(%struct.sVString* %48, i32 3)
  store i32 0, i32* %state, align 4
  br label %if.end82

if.else76:                                        ; preds = %if.else70
  %49 = load %struct.sVString*, %struct.sVString** %type, align 8
  %buffer77 = getelementptr inbounds %struct.sVString, %struct.sVString* %49, i32 0, i32 2
  %50 = load i8*, i8** %buffer77, align 8
  %call78 = call i32 @strcmp(i8* %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0))
  %cmp79 = icmp eq i32 %call78, 0
  br i1 %cmp79, label %if.then81, label %if.end

if.then81:                                        ; preds = %if.else76
  %51 = load %struct.sVString*, %struct.sVString** %name, align 8
  call void @makeResTag(%struct.sVString* %51, i32 5)
  store i32 0, i32* %state, align 4
  br label %if.end

if.end:                                           ; preds = %if.then81, %if.else76
  br label %if.end82

if.end82:                                         ; preds = %if.end, %if.then75
  br label %if.end83

if.end83:                                         ; preds = %if.end82, %if.then69
  br label %if.end84

if.end84:                                         ; preds = %if.end83, %if.then63
  br label %if.end85

if.end85:                                         ; preds = %if.end84, %if.then57
  br label %if.end86

if.end86:                                         ; preds = %if.end85, %if.then51
  br label %if.end87

if.end87:                                         ; preds = %if.end86, %if.then45
  br label %if.end88

if.end88:                                         ; preds = %if.end87, %if.then
  %52 = load %struct.sVString*, %struct.sVString** %name, align 8
  call void @vStringDelete(%struct.sVString* %52)
  %53 = load %struct.sVString*, %struct.sVString** %type, align 8
  call void @vStringDelete(%struct.sVString* %53)
  %54 = load i32, i32* %state, align 4
  ret i32 %54
}

declare i32 @strcmp(i8*, i8*) #1

declare %struct.sVString* @vStringNew() #1

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
define internal void @makeResTag(%struct.sVString* %name, i32 %kind) #0 {
entry:
  %name.addr = alloca %struct.sVString*, align 8
  %kind.addr = alloca i32, align 4
  %vStringClear_s = alloca %struct.sVString*, align 8
  store %struct.sVString* %name, %struct.sVString** %name.addr, align 8
  store i32 %kind, i32* %kind.addr, align 4
  %0 = load %struct.sVString*, %struct.sVString** %name.addr, align 8
  call void @vStringStripTrailing(%struct.sVString* %0)
  %1 = load %struct.sVString*, %struct.sVString** %name.addr, align 8
  %2 = load i32, i32* %kind.addr, align 4
  %call = call i32 @makeSimpleTag(%struct.sVString* %1, i32 %2)
  br label %do.body

do.body:                                          ; preds = %entry
  %3 = load %struct.sVString*, %struct.sVString** %name.addr, align 8
  store %struct.sVString* %3, %struct.sVString** %vStringClear_s, align 8
  %4 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %4, i32 0, i32 0
  store i64 0, i64* %length, align 8
  %5 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %5, i32 0, i32 2
  %6 = load i8*, i8** %buffer, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 0
  store i8 0, i8* %arrayidx, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  ret void
}

declare void @vStringDelete(%struct.sVString*) #1

declare void @vStringResize(%struct.sVString*, i64) #1

declare void @vStringStripTrailing(%struct.sVString*) #1

declare i32 @makeSimpleTag(%struct.sVString*, i32) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 10.0.0 (https://github.com/holzschu/clang.git 0cfc630fbdb62e96720b611a57123ef3eb13e297) (https://github.com/holzschu/llvm.git 0d8a71e39b28502c24718f7e74b5acbcfe36dfe0)"}
