; ModuleID = 'm4.c'
source_filename = "m4.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-ios11.0.0"

%struct.sKindDefinition = type { i8, i8, i8*, i8*, i8, i32, %struct.sRoleDesc*, %struct.sScopeSeparator*, i32, i32, i32, %struct.sKindDefinition*, %struct.sKindDefinition* }
%struct.sRoleDesc = type { i8, i8*, i8* }
%struct.sScopeSeparator = type { i32, i8* }
%struct.keywordTable = type { i8*, i32 }
%struct.sVString = type { i64, i64, i8* }
%struct.sParserDefinition = type { i8*, %struct.sKindDefinition*, i32, i8**, i8**, i8**, void (i32)*, void (i32, i1)*, void ()*, i32 (i32)*, i8* (%struct._MIO*, i32*, i32)**, i32, i8, i8, i8, i8, %struct.tagRegexTable*, i32, %struct.keywordTable*, i32, %struct.sTagXpathTableTable*, i32, i8, %struct.sFieldDefinition*, i32, %struct.sXtagDefinition*, i32, %struct.sParserDependency*, i32, %struct.sParameterHandlerTable*, i32, %struct.sXpathFileSpec*, i32, i32, i8 }
%struct._MIO = type opaque
%struct.tagRegexTable = type { i8*, i8*, i8*, i8*, i8*, i8 }
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
%struct.sXtagDefinition = type { i8, i8, i8*, i8*, i1 (%struct.sXtagDefinition*)*, i1 (%struct.sXtagDefinition*)*, i32 }
%struct.sParserDependency = type { i32, i8*, i8* }
%struct.sParameterHandlerTable = type { i8*, i8*, void (i32, i8*, i8*)* }
%struct.sXpathFileSpec = type { i8*, i8*, i8*, i8*, i8*, i8* }
%struct.sM4Subparser = type { %struct.sSubparser, i1 (%struct.sM4Subparser*, i8*)*, i32 (%struct.sM4Subparser*, i8*)*, i1 (%struct.sM4Subparser*, i32, i8*)*, i1 (%struct.sM4Subparser*, i32)* }
%struct.sSubparser = type { %struct.sSlaveParser*, %struct.sSubparser*, i8, i8, i32, void (%struct.sSubparser*)*, void (%struct.sSubparser*)*, void (%struct.sSubparser*, i8*)*, void (%struct.sSubparser*, %struct.sTagEntryInfo*, i32)* }
%struct.sSlaveParser = type { i32, i32, i8*, %struct.sSlaveParser* }
%struct.newMacroResult = type { i32, i8 }

@m4QuoteOpen = internal global i8 0, align 1
@m4QuoteClose = internal global i8 0, align 1
@.str = private unnamed_addr constant [3 x i8] c"M4\00", align 1
@M4Kinds = internal global [2 x %struct.sKindDefinition] [%struct.sKindDefinition { i8 1, i8 100, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8 0, i32 1, %struct.sRoleDesc* getelementptr inbounds ([1 x %struct.sRoleDesc], [1 x %struct.sRoleDesc]* @M4MacroRoles, i32 0, i32 0), %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 73, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i8 1, i32 2, %struct.sRoleDesc* getelementptr inbounds ([2 x %struct.sRoleDesc], [2 x %struct.sRoleDesc]* @M4MacrofileRoles, i32 0, i32 0), %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }], align 8
@extensions = internal constant [3 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* null], align 8
@m4KeywordTable = internal constant [10 x %struct.keywordTable] [%struct.keywordTable { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i32 0 }, %struct.keywordTable { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0), i32 0 }, %struct.keywordTable { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i32 1 }, %struct.keywordTable { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i32 0, i32 0), i32 1 }, %struct.keywordTable { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), i32 2 }, %struct.keywordTable { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i32 2 }, %struct.keywordTable { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), i32 3 }, %struct.keywordTable { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i32 0, i32 0), i32 3 }, %struct.keywordTable { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i32 0, i32 0), i32 4 }, %struct.keywordTable { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i32 0, i32 0), i32 4 }], align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"macro\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"macros\00", align 1
@M4MacroRoles = internal global [1 x %struct.sRoleDesc] [%struct.sRoleDesc { i8 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0) }], align 8
@.str.3 = private unnamed_addr constant [10 x i8] c"macrofile\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"macro files\00", align 1
@M4MacrofileRoles = internal global [2 x %struct.sRoleDesc] [%struct.sRoleDesc { i8 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0) }, %struct.sRoleDesc { i8 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i32 0, i32 0) }], align 8
@.str.5 = private unnamed_addr constant [6 x i8] c"undef\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"undefined\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"included\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"included macro\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"sincluded\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"silently included macro\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"m4\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"spt\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"dnl\00", align 1
@newMacroM4.lang = internal global i32 -2, align 4
@.str.14 = private unnamed_addr constant [7 x i8] c"define\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"m4_define\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"undefine\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"m4_undefine\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"include\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"m4_include\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"sinclude\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"m4_sinclude\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"changequote\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"m4_changequote\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @setM4Quotes(i8 signext %openQuote, i8 signext %closeQuote) #0 {
entry:
  %openQuote.addr = alloca i8, align 1
  %closeQuote.addr = alloca i8, align 1
  store i8 %openQuote, i8* %openQuote.addr, align 1
  store i8 %closeQuote, i8* %closeQuote.addr, align 1
  %0 = load i8, i8* %openQuote.addr, align 1
  store i8 %0, i8* @m4QuoteOpen, align 1
  %1 = load i8, i8* %closeQuote.addr, align 1
  store i8 %1, i8* @m4QuoteClose, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @readM4MacroArgument(%struct.sVString* %arg) #0 {
entry:
  %retval = alloca i1, align 1
  %arg.addr = alloca %struct.sVString*, align 8
  %c = alloca i32, align 4
  store %struct.sVString* %arg, %struct.sVString** %arg.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %call = call i32 @getcFromInputFile()
  store i32 %call, i32* %c, align 4
  %cmp = icmp ne i32 %call, -1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %0 = load i32, i32* %c, align 4
  %call1 = call i32 @isspace(i32 %0) #4
  %tobool = icmp ne i32 %call1, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %1 = phi i1 [ false, %while.cond ], [ %tobool, %land.rhs ]
  br i1 %1, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %2 = load i32, i32* %c, align 4
  %cmp2 = icmp ne i32 %2, -1
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %c, align 4
  %cmp3 = icmp eq i32 %3, 44
  br i1 %cmp3, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %4 = load i32, i32* %c, align 4
  %cmp4 = icmp eq i32 %4, 41
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %for.body
  %5 = load i32, i32* %c, align 4
  call void @ungetcToInputFile(i32 %5)
  %6 = load i32, i32* %c, align 4
  %cmp5 = icmp eq i32 %6, 44
  store i1 %cmp5, i1* %retval, align 1
  br label %return

if.else:                                          ; preds = %lor.lhs.false
  %7 = load i32, i32* %c, align 4
  %call6 = call i32 @getCloseQuote(i32 %7)
  %cmp7 = icmp ne i32 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.else9

if.then8:                                         ; preds = %if.else
  %8 = load i32, i32* %c, align 4
  call void @ungetcToInputFile(i32 %8)
  %9 = load %struct.sVString*, %struct.sVString** %arg.addr, align 8
  call void @readQuotedWord(%struct.sVString* %9)
  br label %if.end

if.else9:                                         ; preds = %if.else
  %10 = load %struct.sVString*, %struct.sVString** %arg.addr, align 8
  %11 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %10, i32 %11)
  br label %if.end

if.end:                                           ; preds = %if.else9, %if.then8
  br label %if.end10

if.end10:                                         ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end10
  %call11 = call i32 @getcFromInputFile()
  store i32 %call11, i32* %c, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i1 false, i1* %retval, align 1
  br label %return

return:                                           ; preds = %for.end, %if.then
  %12 = load i1, i1* %retval, align 1
  ret i1 %12
}

declare i32 @getcFromInputFile() #1

; Function Attrs: nounwind readonly
declare i32 @isspace(i32) #2

declare void @ungetcToInputFile(i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @getCloseQuote(i32 %openQuote) #0 {
entry:
  %retval = alloca i32, align 4
  %openQuote.addr = alloca i32, align 4
  store i32 %openQuote, i32* %openQuote.addr, align 4
  %0 = load i32, i32* %openQuote.addr, align 4
  %1 = load i8, i8* @m4QuoteOpen, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %0, %conv
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8, i8* @m4QuoteClose, align 1
  %conv2 = sext i8 %2 to i32
  store i32 %conv2, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval, align 4
  ret i32 %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @readQuotedWord(%struct.sVString* %name) #0 {
entry:
  %name.addr = alloca %struct.sVString*, align 8
  %depth = alloca i32, align 4
  %openQuote = alloca i32, align 4
  %closeQuote = alloca i32, align 4
  %c = alloca i32, align 4
  store %struct.sVString* %name, %struct.sVString** %name.addr, align 8
  store i32 0, i32* %depth, align 4
  store i32 0, i32* %openQuote, align 4
  store i32 0, i32* %closeQuote, align 4
  %call = call i32 @getcFromInputFile()
  store i32 %call, i32* %c, align 4
  %0 = load i32, i32* %c, align 4
  %call1 = call i32 @getCloseQuote(i32 %0)
  store i32 %call1, i32* %closeQuote, align 4
  %1 = load i32, i32* %closeQuote, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %c, align 4
  store i32 %2, i32* %openQuote, align 4
  %3 = load i32, i32* %depth, align 4
  %inc = add i32 %3, 1
  store i32 %inc, i32* %depth, align 4
  %call2 = call i32 @getcFromInputFile()
  store i32 %call2, i32* %c, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, i32* %c, align 4
  %cmp3 = icmp ne i32 %4, -1
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %c, align 4
  %cmp4 = icmp eq i32 %5, 0
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %for.body
  br label %for.end

if.else:                                          ; preds = %for.body
  %6 = load i32, i32* %c, align 4
  %7 = load i32, i32* %closeQuote, align 4
  %cmp6 = icmp eq i32 %6, %7
  br i1 %cmp6, label %if.then7, label %if.else8

if.then7:                                         ; preds = %if.else
  %8 = load i32, i32* %depth, align 4
  %dec = add i32 %8, -1
  store i32 %dec, i32* %depth, align 4
  br label %if.end21

if.else8:                                         ; preds = %if.else
  %9 = load i32, i32* %c, align 4
  %10 = load i32, i32* %openQuote, align 4
  %cmp9 = icmp eq i32 %9, %10
  br i1 %cmp9, label %if.then10, label %if.else12

if.then10:                                        ; preds = %if.else8
  %11 = load i32, i32* %depth, align 4
  %inc11 = add i32 %11, 1
  store i32 %inc11, i32* %depth, align 4
  br label %if.end20

if.else12:                                        ; preds = %if.else8
  %12 = load i32, i32* %c, align 4
  %call13 = call i32 @isalnum(i32 %12) #4
  %tobool = icmp ne i32 %call13, 0
  br i1 %tobool, label %if.then17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else12
  %13 = load i32, i32* %c, align 4
  %cmp14 = icmp eq i32 %13, 95
  br i1 %cmp14, label %if.then17, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %lor.lhs.false
  %14 = load i32, i32* %depth, align 4
  %cmp16 = icmp ugt i32 %14, 0
  br i1 %cmp16, label %if.then17, label %if.else18

if.then17:                                        ; preds = %lor.lhs.false15, %lor.lhs.false, %if.else12
  %15 = load %struct.sVString*, %struct.sVString** %name.addr, align 8
  %16 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %15, i32 %16)
  br label %if.end19

if.else18:                                        ; preds = %lor.lhs.false15
  %17 = load i32, i32* %c, align 4
  call void @ungetcToInputFile(i32 %17)
  br label %for.end

if.end19:                                         ; preds = %if.then17
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.then10
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %if.then7
  br label %if.end22

if.end22:                                         ; preds = %if.end21
  br label %for.inc

for.inc:                                          ; preds = %if.end22
  %call23 = call i32 @getcFromInputFile()
  store i32 %call23, i32* %c, align 4
  br label %for.cond

for.end:                                          ; preds = %if.else18, %if.then5, %for.cond
  ret void
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

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sParserDefinition* @M4Parser() #0 {
entry:
  %def = alloca %struct.sParserDefinition*, align 8
  %call = call %struct.sParserDefinition* @parserNew(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store %struct.sParserDefinition* %call, %struct.sParserDefinition** %def, align 8
  %0 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %0, i32 0, i32 1
  store %struct.sKindDefinition* getelementptr inbounds ([2 x %struct.sKindDefinition], [2 x %struct.sKindDefinition]* @M4Kinds, i64 0, i64 0), %struct.sKindDefinition** %kindTable, align 8
  %1 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %1, i32 0, i32 2
  store i32 2, i32* %kindCount, align 8
  %2 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %extensions = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %2, i32 0, i32 3
  store i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @extensions, i64 0, i64 0), i8*** %extensions, align 8
  %3 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %parser = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %3, i32 0, i32 8
  store void ()* @findM4Tags, void ()** %parser, align 8
  %4 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %useCork = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %4, i32 0, i32 12
  store i8 1, i8* %useCork, align 4
  %5 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %keywordTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %5, i32 0, i32 18
  store %struct.keywordTable* getelementptr inbounds ([10 x %struct.keywordTable], [10 x %struct.keywordTable]* @m4KeywordTable, i64 0, i64 0), %struct.keywordTable** %keywordTable, align 8
  %6 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %keywordCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %6, i32 0, i32 19
  store i32 10, i32* %keywordCount, align 8
  %7 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  ret %struct.sParserDefinition* %7
}

declare %struct.sParserDefinition* @parserNew(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @findM4Tags() #0 {
entry:
  %sub = alloca %struct.sM4Subparser*, align 8
  %token = alloca %struct.sVString*, align 8
  %c = alloca i32, align 4
  %index = alloca i32, align 4
  %r = alloca %struct.newMacroResult, align 4
  %tmp = alloca %struct.newMacroResult, align 4
  %vStringClear_s = alloca %struct.sVString*, align 8
  %e = alloca %struct.sTagEntryInfo*, align 8
  %call = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call, %struct.sVString** %token, align 8
  store i32 0, i32* %index, align 4
  call void @setM4Quotes(i8 signext 96, i8 signext 39)
  %call1 = call %struct.sSubparser* @getSubparserRunningBaseparser()
  %0 = bitcast %struct.sSubparser* %call1 to %struct.sM4Subparser*
  store %struct.sM4Subparser* %0, %struct.sM4Subparser** %sub, align 8
  %1 = load %struct.sM4Subparser*, %struct.sM4Subparser** %sub, align 8
  %tobool = icmp ne %struct.sM4Subparser* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.sM4Subparser*, %struct.sM4Subparser** %sub, align 8
  %3 = bitcast %struct.sM4Subparser* %2 to %struct.sSubparser*
  call void @chooseExclusiveSubparser(%struct.sSubparser* %3, i8* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end49, %if.end
  %call2 = call i32 @getcFromInputFile()
  store i32 %call2, i32* %c, align 4
  %cmp = icmp ne i32 %call2, -1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct.sM4Subparser*, %struct.sM4Subparser** %sub, align 8
  %5 = load i32, i32* %c, align 4
  %6 = load %struct.sVString*, %struct.sVString** %token, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %6, i32 0, i32 2
  %7 = load i8*, i8** %buffer, align 8
  %call3 = call zeroext i1 @doesLineCommentStart(%struct.sM4Subparser* %4, i32 %5, i8* %7)
  br i1 %call3, label %if.then4, label %if.else

if.then4:                                         ; preds = %while.body
  %8 = load i32, i32* %c, align 4
  call void @skipLine(i32 %8)
  br label %if.end34

if.else:                                          ; preds = %while.body
  %9 = load i32, i32* %c, align 4
  %call5 = call zeroext i1 @doesQuoteStart(i32 %9)
  br i1 %call5, label %if.then6, label %if.else7

if.then6:                                         ; preds = %if.else
  %10 = load i32, i32* %c, align 4
  call void @skipQuotes(i32 %10)
  br label %if.end33

if.else7:                                         ; preds = %if.else
  %11 = load %struct.sM4Subparser*, %struct.sM4Subparser** %sub, align 8
  %12 = load i32, i32* %c, align 4
  %call8 = call zeroext i1 @doesStringLiteralStart(%struct.sM4Subparser* %11, i32 %12)
  br i1 %call8, label %if.then9, label %if.else10

if.then9:                                         ; preds = %if.else7
  %13 = load i32, i32* %c, align 4
  call void @skipToCharacter(i32 %13, i1 zeroext false)
  br label %if.end32

if.else10:                                        ; preds = %if.else7
  %14 = load i32, i32* %c, align 4
  %cmp11 = icmp eq i32 %14, 40
  br i1 %cmp11, label %land.lhs.true, label %if.end31

land.lhs.true:                                    ; preds = %if.else10
  %15 = load %struct.sVString*, %struct.sVString** %token, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %15, i32 0, i32 0
  %16 = load i64, i64* %length, align 8
  %cmp12 = icmp ugt i64 %16, 0
  br i1 %cmp12, label %if.then13, label %if.end31

if.then13:                                        ; preds = %land.lhs.true
  %17 = load %struct.sM4Subparser*, %struct.sM4Subparser** %sub, align 8
  %tobool14 = icmp ne %struct.sM4Subparser* %17, null
  br i1 %tobool14, label %if.end18, label %if.then15

if.then15:                                        ; preds = %if.then13
  %18 = load %struct.sVString*, %struct.sVString** %token, align 8
  %buffer16 = getelementptr inbounds %struct.sVString, %struct.sVString* %18, i32 0, i32 2
  %19 = load i8*, i8** %buffer16, align 8
  %call17 = call %struct.sM4Subparser* @maySwitchLanguage(i8* %19)
  store %struct.sM4Subparser* %call17, %struct.sM4Subparser** %sub, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.then13
  %20 = load %struct.sVString*, %struct.sVString** %token, align 8
  %buffer19 = getelementptr inbounds %struct.sVString, %struct.sVString* %20, i32 0, i32 2
  %21 = load i8*, i8** %buffer19, align 8
  %call20 = call i64 @newMacroM4(i8* %21)
  %22 = bitcast %struct.newMacroResult* %tmp to i64*
  store i64 %call20, i64* %22, align 4
  %23 = bitcast %struct.newMacroResult* %r to i8*
  %24 = bitcast %struct.newMacroResult* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %23, i8* align 4 %24, i64 8, i1 false)
  %consumed = getelementptr inbounds %struct.newMacroResult, %struct.newMacroResult* %r, i32 0, i32 1
  %25 = load i8, i8* %consumed, align 4
  %tobool21 = trunc i8 %25 to i1
  br i1 %tobool21, label %if.then22, label %if.else24

if.then22:                                        ; preds = %if.end18
  %index23 = getelementptr inbounds %struct.newMacroResult, %struct.newMacroResult* %r, i32 0, i32 0
  %26 = load i32, i32* %index23, align 4
  store i32 %26, i32* %index, align 4
  br label %if.end30

if.else24:                                        ; preds = %if.end18
  %27 = load %struct.sM4Subparser*, %struct.sM4Subparser** %sub, align 8
  %tobool25 = icmp ne %struct.sM4Subparser* %27, null
  br i1 %tobool25, label %if.then26, label %if.end29

if.then26:                                        ; preds = %if.else24
  %28 = load %struct.sM4Subparser*, %struct.sM4Subparser** %sub, align 8
  %29 = load %struct.sVString*, %struct.sVString** %token, align 8
  %buffer27 = getelementptr inbounds %struct.sVString, %struct.sVString* %29, i32 0, i32 2
  %30 = load i8*, i8** %buffer27, align 8
  %call28 = call i32 @notifyNewMacro(%struct.sM4Subparser* %28, i8* %30)
  store i32 %call28, i32* %index, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %if.else24
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.then22
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %land.lhs.true, %if.else10
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %if.then9
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.then6
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.then4
  br label %do.body

do.body:                                          ; preds = %if.end34
  %31 = load %struct.sVString*, %struct.sVString** %token, align 8
  store %struct.sVString* %31, %struct.sVString** %vStringClear_s, align 8
  %32 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %length35 = getelementptr inbounds %struct.sVString, %struct.sVString* %32, i32 0, i32 0
  store i64 0, i64* %length35, align 8
  %33 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %buffer36 = getelementptr inbounds %struct.sVString, %struct.sVString* %33, i32 0, i32 2
  %34 = load i8*, i8** %buffer36, align 8
  %arrayidx = getelementptr inbounds i8, i8* %34, i64 0
  store i8 0, i8* %arrayidx, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  %35 = load i32, i32* %c, align 4
  %call37 = call i32 @isalnum(i32 %35) #4
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.then40, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %36 = load i32, i32* %c, align 4
  %cmp39 = icmp eq i32 %36, 95
  br i1 %cmp39, label %if.then40, label %if.else41

if.then40:                                        ; preds = %lor.lhs.false, %do.end
  %37 = load i32, i32* %c, align 4
  call void @ungetcToInputFile(i32 %37)
  %38 = load %struct.sVString*, %struct.sVString** %token, align 8
  call void @readQuotedWord(%struct.sVString* %38)
  br label %if.end49

if.else41:                                        ; preds = %lor.lhs.false
  %39 = load i32, i32* %c, align 4
  %cmp42 = icmp eq i32 %39, 41
  br i1 %cmp42, label %land.lhs.true43, label %if.end48

land.lhs.true43:                                  ; preds = %if.else41
  %40 = load i32, i32* %index, align 4
  %cmp44 = icmp ne i32 %40, 0
  br i1 %cmp44, label %if.then45, label %if.end48

if.then45:                                        ; preds = %land.lhs.true43
  %41 = load i32, i32* %index, align 4
  %call46 = call %struct.sTagEntryInfo* @getEntryInCorkQueue(i32 %41)
  store %struct.sTagEntryInfo* %call46, %struct.sTagEntryInfo** %e, align 8
  %call47 = call i64 @getInputLineNumber()
  %42 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %e, align 8
  %extensionFields = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %42, i32 0, i32 11
  %endLine = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields, i32 0, i32 11
  store i64 %call47, i64* %endLine, align 8
  store i32 0, i32* %index, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then45, %land.lhs.true43, %if.else41
  br label %if.end49

if.end49:                                         ; preds = %if.end48, %if.then40
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %43 = load %struct.sVString*, %struct.sVString** %token, align 8
  call void @vStringDelete(%struct.sVString* %43)
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @isalnum(i32) #2

declare void @vStringResize(%struct.sVString*, i64) #1

declare %struct.sVString* @vStringNew() #1

declare %struct.sSubparser* @getSubparserRunningBaseparser() #1

declare void @chooseExclusiveSubparser(%struct.sSubparser*, i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @doesLineCommentStart(%struct.sM4Subparser* %m4, i32 %c, i8* %token) #0 {
entry:
  %retval = alloca i1, align 1
  %m4.addr = alloca %struct.sM4Subparser*, align 8
  %c.addr = alloca i32, align 4
  %token.addr = alloca i8*, align 8
  %r = alloca i8, align 1
  store %struct.sM4Subparser* %m4, %struct.sM4Subparser** %m4.addr, align 8
  store i32 %c, i32* %c.addr, align 4
  store i8* %token, i8** %token.addr, align 8
  %0 = load %struct.sM4Subparser*, %struct.sM4Subparser** %m4.addr, align 8
  %tobool = icmp ne %struct.sM4Subparser* %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end5

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.sM4Subparser*, %struct.sM4Subparser** %m4.addr, align 8
  %doesLineCommentStart = getelementptr inbounds %struct.sM4Subparser, %struct.sM4Subparser* %1, i32 0, i32 3
  %2 = load i1 (%struct.sM4Subparser*, i32, i8*)*, i1 (%struct.sM4Subparser*, i32, i8*)** %doesLineCommentStart, align 8
  %tobool1 = icmp ne i1 (%struct.sM4Subparser*, i32, i8*)* %2, null
  br i1 %tobool1, label %if.then, label %if.end5

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct.sM4Subparser*, %struct.sM4Subparser** %m4.addr, align 8
  %4 = bitcast %struct.sM4Subparser* %3 to %struct.sSubparser*
  call void @enterSubparser(%struct.sSubparser* %4)
  %5 = load %struct.sM4Subparser*, %struct.sM4Subparser** %m4.addr, align 8
  %doesLineCommentStart2 = getelementptr inbounds %struct.sM4Subparser, %struct.sM4Subparser* %5, i32 0, i32 3
  %6 = load i1 (%struct.sM4Subparser*, i32, i8*)*, i1 (%struct.sM4Subparser*, i32, i8*)** %doesLineCommentStart2, align 8
  %7 = load %struct.sM4Subparser*, %struct.sM4Subparser** %m4.addr, align 8
  %8 = load i32, i32* %c.addr, align 4
  %9 = load i8*, i8** %token.addr, align 8
  %call = call zeroext i1 %6(%struct.sM4Subparser* %7, i32 %8, i8* %9)
  %frombool = zext i1 %call to i8
  store i8 %frombool, i8* %r, align 1
  call void @leaveSubparser()
  %10 = load i8, i8* %r, align 1
  %tobool3 = trunc i8 %10 to i1
  br i1 %tobool3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  store i1 true, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end5

if.end5:                                          ; preds = %if.end, %land.lhs.true, %entry
  %11 = load i8*, i8** %token.addr, align 8
  %call6 = call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0))
  %cmp = icmp eq i32 %call6, 0
  store i1 %cmp, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end5, %if.then4
  %12 = load i1, i1* %retval, align 1
  ret i1 %12
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @skipLine(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %c.addr, align 4
  %cmp = icmp ne i32 %0, -1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %c.addr, align 4
  %call = call zeroext i1 @skipLineEnding(i32 %1)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %call1 = call i32 @getcFromInputFile()
  store i32 %call1, i32* %c.addr, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @doesQuoteStart(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %1 = load i8, i8* @m4QuoteOpen, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %0, %conv
  ret i1 %cmp
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @skipQuotes(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  %depth = alloca i32, align 4
  %openQuote = alloca i32, align 4
  %closeQuote = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  store i32 0, i32* %depth, align 4
  store i32 0, i32* %openQuote, align 4
  store i32 0, i32* %closeQuote, align 4
  %0 = load i32, i32* %c.addr, align 4
  %call = call i32 @getCloseQuote(i32 %0)
  store i32 %call, i32* %closeQuote, align 4
  %1 = load i32, i32* %closeQuote, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br label %for.end

if.else:                                          ; preds = %entry
  %2 = load i32, i32* %c.addr, align 4
  store i32 %2, i32* %openQuote, align 4
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %c.addr, align 4
  %cmp = icmp ne i32 %3, -1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %c.addr, align 4
  %5 = load i32, i32* %closeQuote, align 4
  %cmp1 = icmp eq i32 %4, %5
  br i1 %cmp1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %for.body
  %6 = load i32, i32* %depth, align 4
  %dec = add i32 %6, -1
  store i32 %dec, i32* %depth, align 4
  br label %if.end7

if.else3:                                         ; preds = %for.body
  %7 = load i32, i32* %c.addr, align 4
  %8 = load i32, i32* %openQuote, align 4
  %cmp4 = icmp eq i32 %7, %8
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.else3
  %9 = load i32, i32* %depth, align 4
  %inc = add i32 %9, 1
  store i32 %inc, i32* %depth, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.else3
  br label %if.end7

if.end7:                                          ; preds = %if.end6, %if.then2
  %10 = load i32, i32* %depth, align 4
  %cmp8 = icmp eq i32 %10, 0
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end7
  br label %for.end

if.end10:                                         ; preds = %if.end7
  br label %for.inc

for.inc:                                          ; preds = %if.end10
  %call11 = call i32 @getcFromInputFile()
  store i32 %call11, i32* %c.addr, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %if.then9, %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @doesStringLiteralStart(%struct.sM4Subparser* %m4, i32 %c) #0 {
entry:
  %retval = alloca i1, align 1
  %m4.addr = alloca %struct.sM4Subparser*, align 8
  %c.addr = alloca i32, align 4
  %r = alloca i8, align 1
  store %struct.sM4Subparser* %m4, %struct.sM4Subparser** %m4.addr, align 8
  store i32 %c, i32* %c.addr, align 4
  %0 = load %struct.sM4Subparser*, %struct.sM4Subparser** %m4.addr, align 8
  %tobool = icmp ne %struct.sM4Subparser* %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.sM4Subparser*, %struct.sM4Subparser** %m4.addr, align 8
  %doesStringLiteralStart = getelementptr inbounds %struct.sM4Subparser, %struct.sM4Subparser* %1, i32 0, i32 4
  %2 = load i1 (%struct.sM4Subparser*, i32)*, i1 (%struct.sM4Subparser*, i32)** %doesStringLiteralStart, align 8
  %tobool1 = icmp ne i1 (%struct.sM4Subparser*, i32)* %2, null
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct.sM4Subparser*, %struct.sM4Subparser** %m4.addr, align 8
  %4 = bitcast %struct.sM4Subparser* %3 to %struct.sSubparser*
  call void @enterSubparser(%struct.sSubparser* %4)
  %5 = load %struct.sM4Subparser*, %struct.sM4Subparser** %m4.addr, align 8
  %doesStringLiteralStart2 = getelementptr inbounds %struct.sM4Subparser, %struct.sM4Subparser* %5, i32 0, i32 4
  %6 = load i1 (%struct.sM4Subparser*, i32)*, i1 (%struct.sM4Subparser*, i32)** %doesStringLiteralStart2, align 8
  %7 = load %struct.sM4Subparser*, %struct.sM4Subparser** %m4.addr, align 8
  %8 = load i32, i32* %c.addr, align 4
  %call = call zeroext i1 %6(%struct.sM4Subparser* %7, i32 %8)
  %frombool = zext i1 %call to i8
  store i8 %frombool, i8* %r, align 1
  call void @leaveSubparser()
  %9 = load i8, i8* %r, align 1
  %tobool3 = trunc i8 %9 to i1
  store i1 %tobool3, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  store i1 false, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end, %if.then
  %10 = load i1, i1* %retval, align 1
  ret i1 %10
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @skipToCharacter(i32 %ch, i1 zeroext %oneLine) #0 {
entry:
  %ch.addr = alloca i32, align 4
  %oneLine.addr = alloca i8, align 1
  %c = alloca i32, align 4
  store i32 %ch, i32* %ch.addr, align 4
  %frombool = zext i1 %oneLine to i8
  store i8 %frombool, i8* %oneLine.addr, align 1
  br label %while.cond

while.cond:                                       ; preds = %if.end4, %entry
  %call = call i32 @getcFromInputFile()
  store i32 %call, i32* %c, align 4
  %cmp = icmp ne i32 %call, -1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %0 = load i32, i32* %c, align 4
  %1 = load i32, i32* %ch.addr, align 4
  %cmp1 = icmp eq i32 %0, %1
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  br label %while.end

if.else:                                          ; preds = %while.body
  %2 = load i8, i8* %oneLine.addr, align 1
  %tobool = trunc i8 %2 to i1
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.else
  %3 = load i32, i32* %c, align 4
  %call2 = call zeroext i1 @skipLineEnding(i32 %3)
  br i1 %call2, label %if.then3, label %if.end

if.then3:                                         ; preds = %land.lhs.true
  br label %while.end

if.end:                                           ; preds = %land.lhs.true, %if.else
  br label %if.end4

if.end4:                                          ; preds = %if.end
  br label %while.cond

while.end:                                        ; preds = %if.then3, %if.then, %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct.sM4Subparser* @maySwitchLanguage(i8* %token) #0 {
entry:
  %token.addr = alloca i8*, align 8
  %tmp = alloca %struct.sSubparser*, align 8
  %m4found = alloca %struct.sM4Subparser*, align 8
  %m4tmp = alloca %struct.sM4Subparser*, align 8
  store i8* %token, i8** %token.addr, align 8
  store %struct.sM4Subparser* null, %struct.sM4Subparser** %m4found, align 8
  store %struct.sSubparser* null, %struct.sSubparser** %tmp, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end5, %entry
  %0 = load %struct.sSubparser*, %struct.sSubparser** %tmp, align 8
  %call = call %struct.sSubparser* @getNextSubparser(%struct.sSubparser* %0, i1 zeroext false)
  store %struct.sSubparser* %call, %struct.sSubparser** %tmp, align 8
  %cmp = icmp ne %struct.sSubparser* %call, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.sSubparser*, %struct.sSubparser** %tmp, align 8
  %2 = bitcast %struct.sSubparser* %1 to %struct.sM4Subparser*
  store %struct.sM4Subparser* %2, %struct.sM4Subparser** %m4tmp, align 8
  %3 = load %struct.sSubparser*, %struct.sSubparser** %tmp, align 8
  call void @enterSubparser(%struct.sSubparser* %3)
  %4 = load %struct.sM4Subparser*, %struct.sM4Subparser** %m4tmp, align 8
  %probeLanguage = getelementptr inbounds %struct.sM4Subparser, %struct.sM4Subparser* %4, i32 0, i32 1
  %5 = load i1 (%struct.sM4Subparser*, i8*)*, i1 (%struct.sM4Subparser*, i8*)** %probeLanguage, align 8
  %tobool = icmp ne i1 (%struct.sM4Subparser*, i8*)* %5, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.body
  %6 = load %struct.sM4Subparser*, %struct.sM4Subparser** %m4tmp, align 8
  %probeLanguage1 = getelementptr inbounds %struct.sM4Subparser, %struct.sM4Subparser* %6, i32 0, i32 1
  %7 = load i1 (%struct.sM4Subparser*, i8*)*, i1 (%struct.sM4Subparser*, i8*)** %probeLanguage1, align 8
  %8 = load %struct.sM4Subparser*, %struct.sM4Subparser** %m4tmp, align 8
  %9 = load i8*, i8** %token.addr, align 8
  %call2 = call zeroext i1 %7(%struct.sM4Subparser* %8, i8* %9)
  br i1 %call2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %10 = load %struct.sSubparser*, %struct.sSubparser** %tmp, align 8
  call void @chooseExclusiveSubparser(%struct.sSubparser* %10, i8* null)
  %11 = load %struct.sM4Subparser*, %struct.sM4Subparser** %m4tmp, align 8
  store %struct.sM4Subparser* %11, %struct.sM4Subparser** %m4found, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %while.body
  call void @leaveSubparser()
  %12 = load %struct.sM4Subparser*, %struct.sM4Subparser** %m4found, align 8
  %tobool3 = icmp ne %struct.sM4Subparser* %12, null
  br i1 %tobool3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  br label %while.end

if.end5:                                          ; preds = %if.end
  br label %while.cond

while.end:                                        ; preds = %if.then4, %while.cond
  %13 = load %struct.sM4Subparser*, %struct.sM4Subparser** %m4found, align 8
  ret %struct.sM4Subparser* %13
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i64 @newMacroM4(i8* %token) #0 {
entry:
  %retval = alloca %struct.newMacroResult, align 4
  %token.addr = alloca i8*, align 8
  %keyword = alloca i32, align 4
  %role = alloca i32, align 4
  %kind = alloca i32, align 4
  store i8* %token, i8** %token.addr, align 8
  %0 = bitcast %struct.newMacroResult* %retval to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %0, i8 0, i64 8, i1 false)
  store i32 -1, i32* %role, align 4
  store i32 -1, i32* %kind, align 4
  %1 = load i32, i32* @newMacroM4.lang, align 4
  %cmp = icmp eq i32 %1, -2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 @getNamedLanguage(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 0)
  store i32 %call, i32* @newMacroM4.lang, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i8*, i8** %token.addr, align 8
  %3 = load i32, i32* @newMacroM4.lang, align 4
  %call1 = call i32 @lookupKeyword(i8* %2, i32 %3)
  store i32 %call1, i32* %keyword, align 4
  %4 = load i32, i32* %keyword, align 4
  switch i32 %4, label %sw.epilog [
    i32 -1, label %sw.bb
    i32 0, label %sw.bb2
    i32 1, label %sw.bb3
    i32 2, label %sw.bb5
    i32 3, label %sw.bb7
    i32 4, label %sw.bb9
  ]

sw.bb:                                            ; preds = %if.end
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end
  store i32 0, i32* %kind, align 4
  store i32 -1, i32* %role, align 4
  %consumed = getelementptr inbounds %struct.newMacroResult, %struct.newMacroResult* %retval, i32 0, i32 1
  store i8 1, i8* %consumed, align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end
  store i32 0, i32* %kind, align 4
  store i32 0, i32* %role, align 4
  %consumed4 = getelementptr inbounds %struct.newMacroResult, %struct.newMacroResult* %retval, i32 0, i32 1
  store i8 1, i8* %consumed4, align 4
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end
  store i32 1, i32* %kind, align 4
  store i32 0, i32* %role, align 4
  %consumed6 = getelementptr inbounds %struct.newMacroResult, %struct.newMacroResult* %retval, i32 0, i32 1
  store i8 1, i8* %consumed6, align 4
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end
  store i32 1, i32* %kind, align 4
  store i32 1, i32* %role, align 4
  %consumed8 = getelementptr inbounds %struct.newMacroResult, %struct.newMacroResult* %retval, i32 0, i32 1
  store i8 1, i8* %consumed8, align 4
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end
  call void @handleM4Changequote()
  %consumed10 = getelementptr inbounds %struct.newMacroResult, %struct.newMacroResult* %retval, i32 0, i32 1
  store i8 1, i8* %consumed10, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb9, %sw.bb7, %sw.bb5, %sw.bb3, %sw.bb2, %sw.bb
  %5 = load i32, i32* %kind, align 4
  %cmp11 = icmp eq i32 %5, -1
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %sw.epilog
  br label %return

if.end13:                                         ; preds = %sw.epilog
  %call14 = call zeroext i1 @isXtagEnabled(i32 4)
  br i1 %call14, label %if.end17, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end13
  %6 = load i32, i32* %role, align 4
  %cmp15 = icmp ne i32 %6, -1
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %land.lhs.true
  br label %return

if.end17:                                         ; preds = %land.lhs.true, %if.end13
  %7 = load i32, i32* %kind, align 4
  %8 = load i32, i32* %role, align 4
  %call18 = call i32 @makeM4Tag(i32 %7, i32 %8)
  %index = getelementptr inbounds %struct.newMacroResult, %struct.newMacroResult* %retval, i32 0, i32 0
  store i32 %call18, i32* %index, align 4
  br label %return

return:                                           ; preds = %if.end17, %if.then16, %if.then12
  %9 = bitcast %struct.newMacroResult* %retval to i64*
  %10 = load i64, i64* %9, align 4
  ret i64 %10
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @notifyNewMacro(%struct.sM4Subparser* %m4, i8* %token) #0 {
entry:
  %m4.addr = alloca %struct.sM4Subparser*, align 8
  %token.addr = alloca i8*, align 8
  %index = alloca i32, align 4
  store %struct.sM4Subparser* %m4, %struct.sM4Subparser** %m4.addr, align 8
  store i8* %token, i8** %token.addr, align 8
  %0 = load %struct.sM4Subparser*, %struct.sM4Subparser** %m4.addr, align 8
  %1 = bitcast %struct.sM4Subparser* %0 to %struct.sSubparser*
  call void @enterSubparser(%struct.sSubparser* %1)
  %2 = load %struct.sM4Subparser*, %struct.sM4Subparser** %m4.addr, align 8
  %newMacroNotify = getelementptr inbounds %struct.sM4Subparser, %struct.sM4Subparser* %2, i32 0, i32 2
  %3 = load i32 (%struct.sM4Subparser*, i8*)*, i32 (%struct.sM4Subparser*, i8*)** %newMacroNotify, align 8
  %4 = load %struct.sM4Subparser*, %struct.sM4Subparser** %m4.addr, align 8
  %5 = load i8*, i8** %token.addr, align 8
  %call = call i32 %3(%struct.sM4Subparser* %4, i8* %5)
  store i32 %call, i32* %index, align 4
  call void @leaveSubparser()
  %6 = load i32, i32* %index, align 4
  ret i32 %6
}

declare %struct.sTagEntryInfo* @getEntryInCorkQueue(i32) #1

declare i64 @getInputLineNumber() #1

declare void @vStringDelete(%struct.sVString*) #1

declare void @enterSubparser(%struct.sSubparser*) #1

declare void @leaveSubparser() #1

declare i32 @strcmp(i8*, i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @skipLineEnding(i32 %c) #0 {
entry:
  %retval = alloca i1, align 1
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %cmp = icmp eq i32 %0, 10
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i1 true, i1* %retval, align 1
  br label %return

if.else:                                          ; preds = %entry
  %1 = load i32, i32* %c.addr, align 4
  %cmp1 = icmp eq i32 %1, 13
  br i1 %cmp1, label %if.then2, label %if.end5

if.then2:                                         ; preds = %if.else
  %call = call i32 @getcFromInputFile()
  store i32 %call, i32* %c.addr, align 4
  %2 = load i32, i32* %c.addr, align 4
  %cmp3 = icmp ne i32 %2, 10
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then2
  %3 = load i32, i32* %c.addr, align 4
  call void @ungetcToInputFile(i32 %3)
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then2
  store i1 true, i1* %retval, align 1
  br label %return

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5
  store i1 false, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end6, %if.end, %if.then
  %4 = load i1, i1* %retval, align 1
  ret i1 %4
}

declare %struct.sSubparser* @getNextSubparser(%struct.sSubparser*, i1 zeroext) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare i32 @getNamedLanguage(i8*, i64) #1

declare i32 @lookupKeyword(i8*, i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @handleM4Changequote() #0 {
entry:
  %arg = alloca %struct.sVString*, align 8
  %args = alloca [2 x i8], align 1
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %more = alloca i8, align 1
  %v = alloca i8*, align 8
  %vStringClear_s = alloca %struct.sVString*, align 8
  %call = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call, %struct.sVString** %arg, align 8
  %0 = bitcast [2 x i8]* %args to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 2, i1 false)
  store i32 2, i32* %n, align 4
  store i8 1, i8* %more, align 1
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i8, i8* %more, align 1
  %tobool = trunc i8 %1 to i1
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %n, align 4
  %cmp = icmp slt i32 %2, %3
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %4 = phi i1 [ false, %for.cond ], [ %cmp, %land.rhs ]
  br i1 %4, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %do.body

do.body:                                          ; preds = %for.body
  %5 = load %struct.sVString*, %struct.sVString** %arg, align 8
  store %struct.sVString* %5, %struct.sVString** %vStringClear_s, align 8
  %6 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %6, i32 0, i32 0
  store i64 0, i64* %length, align 8
  %7 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %7, i32 0, i32 2
  %8 = load i8*, i8** %buffer, align 8
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 0
  store i8 0, i8* %arrayidx, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  %9 = load %struct.sVString*, %struct.sVString** %arg, align 8
  %call1 = call zeroext i1 @readM4MacroArgument(%struct.sVString* %9)
  %frombool = zext i1 %call1 to i8
  store i8 %frombool, i8* %more, align 1
  %10 = load i8, i8* %more, align 1
  %tobool2 = trunc i8 %10 to i1
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  %call3 = call i32 @getcFromInputFile()
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end
  %11 = load %struct.sVString*, %struct.sVString** %arg, align 8
  %buffer4 = getelementptr inbounds %struct.sVString, %struct.sVString* %11, i32 0, i32 2
  %12 = load i8*, i8** %buffer4, align 8
  store i8* %12, i8** %v, align 8
  %13 = load i8*, i8** %v, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %13, i64 0
  %14 = load i8, i8* %arrayidx5, align 1
  %tobool6 = icmp ne i8 %14, 0
  br i1 %tobool6, label %lor.lhs.false, label %if.then9

lor.lhs.false:                                    ; preds = %if.end
  %15 = load i8*, i8** %v, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %15, i64 1
  %16 = load i8, i8* %arrayidx7, align 1
  %conv = sext i8 %16 to i32
  %tobool8 = icmp ne i32 %conv, 0
  br i1 %tobool8, label %if.then9, label %if.else

if.then9:                                         ; preds = %lor.lhs.false, %if.end
  br label %for.end

if.else:                                          ; preds = %lor.lhs.false
  %17 = load i8*, i8** %v, align 8
  %18 = load i8, i8* %17, align 1
  %19 = load i32, i32* %i, align 4
  %idxprom = sext i32 %19 to i64
  %arrayidx10 = getelementptr inbounds [2 x i8], [2 x i8]* %args, i64 0, i64 %idxprom
  store i8 %18, i8* %arrayidx10, align 1
  br label %if.end11

if.end11:                                         ; preds = %if.else
  br label %for.inc

for.inc:                                          ; preds = %if.end11
  %20 = load i32, i32* %i, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then9, %land.end
  %21 = load i8, i8* %more, align 1
  %tobool12 = trunc i8 %21 to i1
  br i1 %tobool12, label %if.end36, label %if.then13

if.then13:                                        ; preds = %for.end
  %arrayidx14 = getelementptr inbounds [2 x i8], [2 x i8]* %args, i64 0, i64 0
  %22 = load i8, i8* %arrayidx14, align 1
  %conv15 = sext i8 %22 to i32
  %tobool16 = icmp ne i32 %conv15, 0
  br i1 %tobool16, label %land.lhs.true, label %if.else23

land.lhs.true:                                    ; preds = %if.then13
  %arrayidx17 = getelementptr inbounds [2 x i8], [2 x i8]* %args, i64 0, i64 1
  %23 = load i8, i8* %arrayidx17, align 1
  %conv18 = sext i8 %23 to i32
  %tobool19 = icmp ne i32 %conv18, 0
  br i1 %tobool19, label %if.then20, label %if.else23

if.then20:                                        ; preds = %land.lhs.true
  %arrayidx21 = getelementptr inbounds [2 x i8], [2 x i8]* %args, i64 0, i64 0
  %24 = load i8, i8* %arrayidx21, align 1
  %arrayidx22 = getelementptr inbounds [2 x i8], [2 x i8]* %args, i64 0, i64 1
  %25 = load i8, i8* %arrayidx22, align 1
  call void @setM4Quotes(i8 signext %24, i8 signext %25)
  br label %if.end35

if.else23:                                        ; preds = %land.lhs.true, %if.then13
  %arrayidx24 = getelementptr inbounds [2 x i8], [2 x i8]* %args, i64 0, i64 1
  %26 = load i8, i8* %arrayidx24, align 1
  %tobool25 = icmp ne i8 %26, 0
  br i1 %tobool25, label %if.then26, label %if.else28

if.then26:                                        ; preds = %if.else23
  %arrayidx27 = getelementptr inbounds [2 x i8], [2 x i8]* %args, i64 0, i64 0
  %27 = load i8, i8* %arrayidx27, align 1
  call void @setM4Quotes(i8 signext %27, i8 signext 39)
  br label %if.end34

if.else28:                                        ; preds = %if.else23
  %arrayidx29 = getelementptr inbounds [2 x i8], [2 x i8]* %args, i64 0, i64 0
  %28 = load i8, i8* %arrayidx29, align 1
  %tobool30 = icmp ne i8 %28, 0
  br i1 %tobool30, label %if.then31, label %if.else32

if.then31:                                        ; preds = %if.else28
  call void @setM4Quotes(i8 signext 0, i8 signext 0)
  br label %if.end33

if.else32:                                        ; preds = %if.else28
  call void @setM4Quotes(i8 signext 96, i8 signext 39)
  br label %if.end33

if.end33:                                         ; preds = %if.else32, %if.then31
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.then26
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.then20
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %for.end
  %29 = load %struct.sVString*, %struct.sVString** %arg, align 8
  call void @vStringDelete(%struct.sVString* %29)
  ret void
}

declare zeroext i1 @isXtagEnabled(i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @makeM4Tag(i32 %kind, i32 %role) #0 {
entry:
  %kind.addr = alloca i32, align 4
  %role.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %name = alloca %struct.sVString*, align 8
  %more = alloca i8, align 1
  %vStringClear_s = alloca %struct.sVString*, align 8
  store i32 %kind, i32* %kind.addr, align 4
  store i32 %role, i32* %role.addr, align 4
  store i32 0, i32* %index, align 4
  store %struct.sVString* null, %struct.sVString** %name, align 8
  %0 = load i32, i32* %kind.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else15

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %role.addr, align 4
  %cmp1 = icmp eq i32 %1, -1
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %call = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call, %struct.sVString** %name, align 8
  %2 = load %struct.sVString*, %struct.sVString** %name, align 8
  %call3 = call zeroext i1 @readM4MacroArgument(%struct.sVString* %2)
  %3 = load i32, i32* %kind.addr, align 4
  %4 = load %struct.sVString*, %struct.sVString** %name, align 8
  %5 = load i32, i32* %role.addr, align 4
  %call4 = call i32 @makeM4RefTag(i32 %3, %struct.sVString* %4, i32 %5)
  store i32 %call4, i32* %index, align 4
  br label %if.end14

if.else:                                          ; preds = %if.then
  %6 = load i32, i32* %role.addr, align 4
  %cmp5 = icmp eq i32 %6, 0
  br i1 %cmp5, label %if.then6, label %if.end13

if.then6:                                         ; preds = %if.else
  %call7 = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call7, %struct.sVString** %name, align 8
  br label %while.body

while.body:                                       ; preds = %if.then6, %if.end
  %7 = load %struct.sVString*, %struct.sVString** %name, align 8
  %call8 = call zeroext i1 @readM4MacroArgument(%struct.sVString* %7)
  %frombool = zext i1 %call8 to i8
  store i8 %frombool, i8* %more, align 1
  %8 = load i32, i32* %kind.addr, align 4
  %9 = load %struct.sVString*, %struct.sVString** %name, align 8
  %10 = load i32, i32* %role.addr, align 4
  %call9 = call i32 @makeM4RefTag(i32 %8, %struct.sVString* %9, i32 %10)
  br label %do.body

do.body:                                          ; preds = %while.body
  %11 = load %struct.sVString*, %struct.sVString** %name, align 8
  store %struct.sVString* %11, %struct.sVString** %vStringClear_s, align 8
  %12 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %12, i32 0, i32 0
  store i64 0, i64* %length, align 8
  %13 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %13, i32 0, i32 2
  %14 = load i8*, i8** %buffer, align 8
  %arrayidx = getelementptr inbounds i8, i8* %14, i64 0
  store i8 0, i8* %arrayidx, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  %15 = load i8, i8* %more, align 1
  %tobool = trunc i8 %15 to i1
  br i1 %tobool, label %if.then10, label %if.else12

if.then10:                                        ; preds = %do.end
  %call11 = call i32 @getcFromInputFile()
  br label %if.end

if.else12:                                        ; preds = %do.end
  br label %while.end

if.end:                                           ; preds = %if.then10
  br label %while.body

while.end:                                        ; preds = %if.else12
  br label %if.end13

if.end13:                                         ; preds = %while.end, %if.else
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.then2
  br label %if.end22

if.else15:                                        ; preds = %entry
  %16 = load i32, i32* %kind.addr, align 4
  %cmp16 = icmp eq i32 %16, 1
  br i1 %cmp16, label %if.then17, label %if.end21

if.then17:                                        ; preds = %if.else15
  %call18 = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call18, %struct.sVString** %name, align 8
  %17 = load %struct.sVString*, %struct.sVString** %name, align 8
  %call19 = call zeroext i1 @readM4MacroArgument(%struct.sVString* %17)
  %18 = load i32, i32* %kind.addr, align 4
  %19 = load %struct.sVString*, %struct.sVString** %name, align 8
  %20 = load i32, i32* %role.addr, align 4
  %call20 = call i32 @makeM4RefTag(i32 %18, %struct.sVString* %19, i32 %20)
  store i32 %call20, i32* %index, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %if.else15
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.end14
  %21 = load %struct.sVString*, %struct.sVString** %name, align 8
  %tobool23 = icmp ne %struct.sVString* %21, null
  br i1 %tobool23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end22
  %22 = load %struct.sVString*, %struct.sVString** %name, align 8
  call void @vStringDelete(%struct.sVString* %22)
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end22
  %23 = load i32, i32* %index, align 4
  ret i32 %23
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @makeM4RefTag(i32 %kind, %struct.sVString* %name, i32 %role) #0 {
entry:
  %retval = alloca i32, align 4
  %kind.addr = alloca i32, align 4
  %name.addr = alloca %struct.sVString*, align 8
  %role.addr = alloca i32, align 4
  %e = alloca %struct.sTagEntryInfo, align 8
  store i32 %kind, i32* %kind.addr, align 4
  store %struct.sVString* %name, %struct.sVString** %name.addr, align 8
  store i32 %role, i32* %role.addr, align 4
  %0 = load %struct.sVString*, %struct.sVString** %name.addr, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %0, i32 0, i32 0
  %1 = load i64, i64* %length, align 8
  %cmp = icmp ule i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.sVString*, %struct.sVString** %name.addr, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %2, i32 0, i32 2
  %3 = load i8*, i8** %buffer, align 8
  %4 = load i32, i32* %kind.addr, align 4
  %5 = load i32, i32* %role.addr, align 4
  call void @initRefTagEntry(%struct.sTagEntryInfo* %e, i8* %3, i32 %4, i32 %5)
  %call = call i32 @makeTagEntry(%struct.sTagEntryInfo* %e)
  store i32 %call, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval, align 4
  ret i32 %6
}

declare void @initRefTagEntry(%struct.sTagEntryInfo*, i8*, i32, i32) #1

declare i32 @makeTagEntry(%struct.sTagEntryInfo*) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { nounwind readonly }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 10.0.0 (https://github.com/holzschu/clang.git 0cfc630fbdb62e96720b611a57123ef3eb13e297) (https://github.com/holzschu/llvm.git 0d8a71e39b28502c24718f7e74b5acbcfe36dfe0)"}
