; ModuleID = 'beta.c'
source_filename = "beta.c"
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

@.str = private unnamed_addr constant [5 x i8] c"BETA\00", align 1
@BetaKinds = internal global [4 x %struct.sKindDefinition] [%struct.sKindDefinition { i8 1, i8 102, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 0, i8 112, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 115, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 118, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }], align 8
@extensions = internal constant [2 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i8* null], align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"fragment\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"fragment definitions\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"pattern\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"all patterns\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"slot\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"slots (fragment uses)\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"virtual\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"patterns (virtual or rebound)\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"bet\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"LIB\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"PROGRAM\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c">>\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"SLOT\00", align 1
@identarray = internal constant <{ [123 x i8], [133 x i8] }> <{ [123 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\01\01\01\01\01\01\00\00\00\00\00\00\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\00\00\00\01\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", [133 x i8] zeroinitializer }>, align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sParserDefinition* @BetaParser() #0 {
entry:
  %def = alloca %struct.sParserDefinition*, align 8
  %call = call %struct.sParserDefinition* @parserNew(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.sParserDefinition* %call, %struct.sParserDefinition** %def, align 8
  %0 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %0, i32 0, i32 1
  store %struct.sKindDefinition* getelementptr inbounds ([4 x %struct.sKindDefinition], [4 x %struct.sKindDefinition]* @BetaKinds, i64 0, i64 0), %struct.sKindDefinition** %kindTable, align 8
  %1 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %1, i32 0, i32 2
  store i32 4, i32* %kindCount, align 8
  %2 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %extensions = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %2, i32 0, i32 3
  store i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @extensions, i64 0, i64 0), i8*** %extensions, align 8
  %3 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %parser = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %3, i32 0, i32 8
  store void ()* @findBetaTags, void ()** %parser, align 8
  %4 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  ret %struct.sParserDefinition* %4
}

declare %struct.sParserDefinition* @parserNew(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @findBetaTags() #0 {
entry:
  %line = alloca %struct.sVString*, align 8
  %incomment = alloca i8, align 1
  %inquote = alloca i8, align 1
  %dovirtuals = alloca i8, align 1
  %dopatterns = alloca i8, align 1
  %c = alloca i32, align 4
  %foundfragmenthere = alloca i8, align 1
  %last = alloca i32, align 4
  %first = alloca i32, align 4
  %vStringClear_s = alloca %struct.sVString*, align 8
  %pos = alloca i32, align 4
  %len = alloca i32, align 4
  %eoname = alloca i32, align 4
  %c2 = alloca i8, align 1
  %eoname346 = alloca i32, align 4
  %soname = alloca i32, align 4
  %call = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call, %struct.sVString** %line, align 8
  store i8 0, i8* %incomment, align 1
  store i8 0, i8* %inquote, align 1
  %0 = load i8, i8* getelementptr inbounds ([4 x %struct.sKindDefinition], [4 x %struct.sKindDefinition]* @BetaKinds, i64 0, i64 3, i32 0), align 8
  %tobool = trunc i8 %0 to i1
  %frombool = zext i1 %tobool to i8
  store i8 %frombool, i8* %dovirtuals, align 1
  %1 = load i8, i8* getelementptr inbounds ([4 x %struct.sKindDefinition], [4 x %struct.sKindDefinition]* @BetaKinds, i64 0, i64 1, i32 0), align 8
  %tobool1 = trunc i8 %1 to i1
  %frombool2 = zext i1 %tobool1 to i8
  store i8 %frombool2, i8* %dopatterns, align 1
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  store i8 0, i8* %foundfragmenthere, align 1
  br label %do.body3

do.body3:                                         ; preds = %do.body
  %2 = load %struct.sVString*, %struct.sVString** %line, align 8
  store %struct.sVString* %2, %struct.sVString** %vStringClear_s, align 8
  %3 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %3, i32 0, i32 0
  store i64 0, i64* %length, align 8
  %4 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %4, i32 0, i32 2
  %5 = load i8*, i8** %buffer, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 0
  store i8 0, i8* %arrayidx, align 1
  br label %do.end

do.end:                                           ; preds = %do.body3
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.end
  %call4 = call i32 @getcFromInputFile()
  store i32 %call4, i32* %c, align 4
  %cmp = icmp ne i32 %call4, -1
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %6 = load i32, i32* %c, align 4
  %cmp5 = icmp ne i32 %6, 10
  br i1 %cmp5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %7 = load i32, i32* %c, align 4
  %cmp6 = icmp ne i32 %7, 13
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp6, %land.rhs ]
  br i1 %8, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %9 = load %struct.sVString*, %struct.sVString** %line, align 8
  %10 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %9, i32 %10)
  br label %while.cond

while.end:                                        ; preds = %land.end
  %11 = load %struct.sVString*, %struct.sVString** %line, align 8
  %length7 = getelementptr inbounds %struct.sVString, %struct.sVString* %11, i32 0, i32 0
  %12 = load i64, i64* %length7, align 8
  %sub = sub i64 %12, 1
  %conv = trunc i64 %sub to i32
  store i32 %conv, i32* %last, align 4
  store i32 0, i32* %first, align 4
  br label %while.cond8

while.cond8:                                      ; preds = %while.body18, %while.end
  %13 = load i32, i32* %last, align 4
  %cmp9 = icmp sgt i32 %13, 0
  br i1 %cmp9, label %land.rhs11, label %land.end17

land.rhs11:                                       ; preds = %while.cond8
  %14 = load %struct.sVString*, %struct.sVString** %line, align 8
  %buffer12 = getelementptr inbounds %struct.sVString, %struct.sVString* %14, i32 0, i32 2
  %15 = load i8*, i8** %buffer12, align 8
  %16 = load i32, i32* %last, align 4
  %idxprom = sext i32 %16 to i64
  %arrayidx13 = getelementptr inbounds i8, i8* %15, i64 %idxprom
  %17 = load i8, i8* %arrayidx13, align 1
  %conv14 = sext i8 %17 to i32
  %call15 = call i32 @isspace(i32 %conv14) #3
  %tobool16 = icmp ne i32 %call15, 0
  br label %land.end17

land.end17:                                       ; preds = %land.rhs11, %while.cond8
  %18 = phi i1 [ false, %while.cond8 ], [ %tobool16, %land.rhs11 ]
  br i1 %18, label %while.body18, label %while.end19

while.body18:                                     ; preds = %land.end17
  %19 = load i32, i32* %last, align 4
  %dec = add nsw i32 %19, -1
  store i32 %dec, i32* %last, align 4
  br label %while.cond8

while.end19:                                      ; preds = %land.end17
  br label %while.cond20

while.cond20:                                     ; preds = %while.body31, %while.end19
  %20 = load i32, i32* %first, align 4
  %21 = load i32, i32* %last, align 4
  %cmp21 = icmp slt i32 %20, %21
  br i1 %cmp21, label %land.rhs23, label %land.end30

land.rhs23:                                       ; preds = %while.cond20
  %22 = load %struct.sVString*, %struct.sVString** %line, align 8
  %buffer24 = getelementptr inbounds %struct.sVString, %struct.sVString* %22, i32 0, i32 2
  %23 = load i8*, i8** %buffer24, align 8
  %24 = load i32, i32* %first, align 4
  %idxprom25 = sext i32 %24 to i64
  %arrayidx26 = getelementptr inbounds i8, i8* %23, i64 %idxprom25
  %25 = load i8, i8* %arrayidx26, align 1
  %conv27 = sext i8 %25 to i32
  %call28 = call i32 @isspace(i32 %conv27) #3
  %tobool29 = icmp ne i32 %call28, 0
  br label %land.end30

land.end30:                                       ; preds = %land.rhs23, %while.cond20
  %26 = phi i1 [ false, %while.cond20 ], [ %tobool29, %land.rhs23 ]
  br i1 %26, label %while.body31, label %while.end32

while.body31:                                     ; preds = %land.end30
  %27 = load i32, i32* %first, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %first, align 4
  br label %while.cond20

while.end32:                                      ; preds = %land.end30
  %28 = load i32, i32* %last, align 4
  %29 = load i32, i32* %first, align 4
  %sub33 = sub nsw i32 %28, %29
  %cmp34 = icmp sgt i32 %sub33, 4
  br i1 %cmp34, label %land.lhs.true36, label %if.else

land.lhs.true36:                                  ; preds = %while.end32
  %30 = load %struct.sVString*, %struct.sVString** %line, align 8
  %buffer37 = getelementptr inbounds %struct.sVString, %struct.sVString* %30, i32 0, i32 2
  %31 = load i8*, i8** %buffer37, align 8
  %32 = load i32, i32* %first, align 4
  %idxprom38 = sext i32 %32 to i64
  %arrayidx39 = getelementptr inbounds i8, i8* %31, i64 %idxprom38
  %33 = load i8, i8* %arrayidx39, align 1
  %conv40 = sext i8 %33 to i32
  %cmp41 = icmp eq i32 %conv40, 45
  br i1 %cmp41, label %land.lhs.true43, label %if.else

land.lhs.true43:                                  ; preds = %land.lhs.true36
  %34 = load %struct.sVString*, %struct.sVString** %line, align 8
  %buffer44 = getelementptr inbounds %struct.sVString, %struct.sVString* %34, i32 0, i32 2
  %35 = load i8*, i8** %buffer44, align 8
  %36 = load i32, i32* %first, align 4
  %add = add nsw i32 %36, 1
  %idxprom45 = sext i32 %add to i64
  %arrayidx46 = getelementptr inbounds i8, i8* %35, i64 %idxprom45
  %37 = load i8, i8* %arrayidx46, align 1
  %conv47 = sext i8 %37 to i32
  %cmp48 = icmp eq i32 %conv47, 45
  br i1 %cmp48, label %land.lhs.true50, label %if.else

land.lhs.true50:                                  ; preds = %land.lhs.true43
  %38 = load %struct.sVString*, %struct.sVString** %line, align 8
  %buffer51 = getelementptr inbounds %struct.sVString, %struct.sVString* %38, i32 0, i32 2
  %39 = load i8*, i8** %buffer51, align 8
  %40 = load i32, i32* %last, align 4
  %idxprom52 = sext i32 %40 to i64
  %arrayidx53 = getelementptr inbounds i8, i8* %39, i64 %idxprom52
  %41 = load i8, i8* %arrayidx53, align 1
  %conv54 = sext i8 %41 to i32
  %cmp55 = icmp eq i32 %conv54, 45
  br i1 %cmp55, label %land.lhs.true57, label %if.else

land.lhs.true57:                                  ; preds = %land.lhs.true50
  %42 = load %struct.sVString*, %struct.sVString** %line, align 8
  %buffer58 = getelementptr inbounds %struct.sVString, %struct.sVString* %42, i32 0, i32 2
  %43 = load i8*, i8** %buffer58, align 8
  %44 = load i32, i32* %last, align 4
  %sub59 = sub nsw i32 %44, 1
  %idxprom60 = sext i32 %sub59 to i64
  %arrayidx61 = getelementptr inbounds i8, i8* %43, i64 %idxprom60
  %45 = load i8, i8* %arrayidx61, align 1
  %conv62 = sext i8 %45 to i32
  %cmp63 = icmp eq i32 %conv62, 45
  br i1 %cmp63, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true57
  %46 = load i8, i8* %incomment, align 1
  %tobool65 = trunc i8 %46 to i1
  br i1 %tobool65, label %if.end139, label %land.lhs.true66

land.lhs.true66:                                  ; preds = %if.then
  %47 = load i8, i8* %inquote, align 1
  %tobool67 = trunc i8 %47 to i1
  br i1 %tobool67, label %if.end139, label %if.then68

if.then68:                                        ; preds = %land.lhs.true66
  store i8 1, i8* %foundfragmenthere, align 1
  %48 = load i32, i32* %last, align 4
  %sub69 = sub nsw i32 %48, 2
  store i32 %sub69, i32* %last, align 4
  %49 = load i32, i32* %first, align 4
  %add70 = add nsw i32 %49, 2
  store i32 %add70, i32* %first, align 4
  br label %while.cond71

while.cond71:                                     ; preds = %while.body81, %if.then68
  %50 = load i32, i32* %last, align 4
  %tobool72 = icmp ne i32 %50, 0
  br i1 %tobool72, label %land.rhs73, label %land.end80

land.rhs73:                                       ; preds = %while.cond71
  %51 = load %struct.sVString*, %struct.sVString** %line, align 8
  %buffer74 = getelementptr inbounds %struct.sVString, %struct.sVString* %51, i32 0, i32 2
  %52 = load i8*, i8** %buffer74, align 8
  %53 = load i32, i32* %last, align 4
  %idxprom75 = sext i32 %53 to i64
  %arrayidx76 = getelementptr inbounds i8, i8* %52, i64 %idxprom75
  %54 = load i8, i8* %arrayidx76, align 1
  %conv77 = sext i8 %54 to i32
  %cmp78 = icmp ne i32 %conv77, 58
  br label %land.end80

land.end80:                                       ; preds = %land.rhs73, %while.cond71
  %55 = phi i1 [ false, %while.cond71 ], [ %cmp78, %land.rhs73 ]
  br i1 %55, label %while.body81, label %while.end83

while.body81:                                     ; preds = %land.end80
  %56 = load i32, i32* %last, align 4
  %dec82 = add nsw i32 %56, -1
  store i32 %dec82, i32* %last, align 4
  br label %while.cond71

while.end83:                                      ; preds = %land.end80
  br label %while.cond84

while.cond84:                                     ; preds = %while.body95, %while.end83
  %57 = load i32, i32* %last, align 4
  %tobool85 = icmp ne i32 %57, 0
  br i1 %tobool85, label %land.rhs86, label %land.end94

land.rhs86:                                       ; preds = %while.cond84
  %58 = load %struct.sVString*, %struct.sVString** %line, align 8
  %buffer87 = getelementptr inbounds %struct.sVString, %struct.sVString* %58, i32 0, i32 2
  %59 = load i8*, i8** %buffer87, align 8
  %60 = load i32, i32* %last, align 4
  %sub88 = sub nsw i32 %60, 1
  %idxprom89 = sext i32 %sub88 to i64
  %arrayidx90 = getelementptr inbounds i8, i8* %59, i64 %idxprom89
  %61 = load i8, i8* %arrayidx90, align 1
  %conv91 = sext i8 %61 to i32
  %call92 = call i32 @isspace(i32 %conv91) #3
  %tobool93 = icmp ne i32 %call92, 0
  br label %land.end94

land.end94:                                       ; preds = %land.rhs86, %while.cond84
  %62 = phi i1 [ false, %while.cond84 ], [ %tobool93, %land.rhs86 ]
  br i1 %62, label %while.body95, label %while.end97

while.body95:                                     ; preds = %land.end94
  %63 = load i32, i32* %last, align 4
  %dec96 = add nsw i32 %63, -1
  store i32 %dec96, i32* %last, align 4
  br label %while.cond84

while.end97:                                      ; preds = %land.end94
  br label %while.cond98

while.cond98:                                     ; preds = %while.body115, %while.end97
  %64 = load i32, i32* %first, align 4
  %65 = load i32, i32* %last, align 4
  %cmp99 = icmp slt i32 %64, %65
  br i1 %cmp99, label %land.rhs101, label %land.end114

land.rhs101:                                      ; preds = %while.cond98
  %66 = load %struct.sVString*, %struct.sVString** %line, align 8
  %buffer102 = getelementptr inbounds %struct.sVString, %struct.sVString* %66, i32 0, i32 2
  %67 = load i8*, i8** %buffer102, align 8
  %68 = load i32, i32* %first, align 4
  %idxprom103 = sext i32 %68 to i64
  %arrayidx104 = getelementptr inbounds i8, i8* %67, i64 %idxprom103
  %69 = load i8, i8* %arrayidx104, align 1
  %conv105 = sext i8 %69 to i32
  %call106 = call i32 @isspace(i32 %conv105) #3
  %tobool107 = icmp ne i32 %call106, 0
  br i1 %tobool107, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs101
  %70 = load %struct.sVString*, %struct.sVString** %line, align 8
  %buffer108 = getelementptr inbounds %struct.sVString, %struct.sVString* %70, i32 0, i32 2
  %71 = load i8*, i8** %buffer108, align 8
  %72 = load i32, i32* %first, align 4
  %idxprom109 = sext i32 %72 to i64
  %arrayidx110 = getelementptr inbounds i8, i8* %71, i64 %idxprom109
  %73 = load i8, i8* %arrayidx110, align 1
  %conv111 = sext i8 %73 to i32
  %cmp112 = icmp eq i32 %conv111, 45
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs101
  %74 = phi i1 [ true, %land.rhs101 ], [ %cmp112, %lor.rhs ]
  br label %land.end114

land.end114:                                      ; preds = %lor.end, %while.cond98
  %75 = phi i1 [ false, %while.cond98 ], [ %74, %lor.end ]
  br i1 %75, label %while.body115, label %while.end117

while.body115:                                    ; preds = %land.end114
  %76 = load i32, i32* %first, align 4
  %inc116 = add nsw i32 %76, 1
  store i32 %inc116, i32* %first, align 4
  br label %while.cond98

while.end117:                                     ; preds = %land.end114
  %77 = load i32, i32* %first, align 4
  %78 = load i32, i32* %last, align 4
  %sub118 = sub nsw i32 %78, 1
  %cmp119 = icmp slt i32 %77, %sub118
  br i1 %cmp119, label %if.then121, label %if.end138

if.then121:                                       ; preds = %while.end117
  %79 = load %struct.sVString*, %struct.sVString** %line, align 8
  %buffer122 = getelementptr inbounds %struct.sVString, %struct.sVString* %79, i32 0, i32 2
  %80 = load i8*, i8** %buffer122, align 8
  %81 = load i32, i32* %last, align 4
  %idxprom123 = sext i32 %81 to i64
  %arrayidx124 = getelementptr inbounds i8, i8* %80, i64 %idxprom123
  store i8 0, i8* %arrayidx124, align 1
  %82 = load %struct.sVString*, %struct.sVString** %line, align 8
  %buffer125 = getelementptr inbounds %struct.sVString, %struct.sVString* %82, i32 0, i32 2
  %83 = load i8*, i8** %buffer125, align 8
  %84 = load i32, i32* %first, align 4
  %idx.ext = sext i32 %84 to i64
  %add.ptr = getelementptr inbounds i8, i8* %83, i64 %idx.ext
  %call126 = call i32 @strcasecmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* %add.ptr)
  %tobool127 = icmp ne i32 %call126, 0
  br i1 %tobool127, label %land.lhs.true128, label %if.end

land.lhs.true128:                                 ; preds = %if.then121
  %85 = load %struct.sVString*, %struct.sVString** %line, align 8
  %buffer129 = getelementptr inbounds %struct.sVString, %struct.sVString* %85, i32 0, i32 2
  %86 = load i8*, i8** %buffer129, align 8
  %87 = load i32, i32* %first, align 4
  %idx.ext130 = sext i32 %87 to i64
  %add.ptr131 = getelementptr inbounds i8, i8* %86, i64 %idx.ext130
  %call132 = call i32 @strcasecmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i8* %add.ptr131)
  %tobool133 = icmp ne i32 %call132, 0
  br i1 %tobool133, label %if.then134, label %if.end

if.then134:                                       ; preds = %land.lhs.true128
  %88 = load %struct.sVString*, %struct.sVString** %line, align 8
  %buffer135 = getelementptr inbounds %struct.sVString, %struct.sVString* %88, i32 0, i32 2
  %89 = load i8*, i8** %buffer135, align 8
  %90 = load i32, i32* %first, align 4
  %idx.ext136 = sext i32 %90 to i64
  %add.ptr137 = getelementptr inbounds i8, i8* %89, i64 %idx.ext136
  call void @makeBetaTag(i8* %add.ptr137, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then134, %land.lhs.true128, %if.then121
  br label %if.end138

if.end138:                                        ; preds = %if.end, %while.end117
  br label %if.end139

if.end139:                                        ; preds = %if.end138, %land.lhs.true66, %if.then
  br label %if.end492

if.else:                                          ; preds = %land.lhs.true57, %land.lhs.true50, %land.lhs.true43, %land.lhs.true36, %while.end32
  store i32 0, i32* %pos, align 4
  %91 = load %struct.sVString*, %struct.sVString** %line, align 8
  %length140 = getelementptr inbounds %struct.sVString, %struct.sVString* %91, i32 0, i32 0
  %92 = load i64, i64* %length140, align 8
  %conv141 = trunc i64 %92 to i32
  store i32 %conv141, i32* %len, align 4
  %93 = load i8, i8* %inquote, align 1
  %tobool142 = trunc i8 %93 to i1
  br i1 %tobool142, label %if.then143, label %if.end144

if.then143:                                       ; preds = %if.else
  br label %stringtext

if.end144:                                        ; preds = %if.else
  %94 = load i8, i8* %incomment, align 1
  %tobool145 = trunc i8 %94 to i1
  br i1 %tobool145, label %if.then146, label %if.end147

if.then146:                                       ; preds = %if.end144
  br label %commenttext

if.end147:                                        ; preds = %if.end144
  br label %programtext

programtext:                                      ; preds = %if.end486, %if.then444, %if.then435, %if.end147
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %programtext
  %95 = load i32, i32* %pos, align 4
  %96 = load i32, i32* %len, align 4
  %cmp148 = icmp slt i32 %95, %96
  br i1 %cmp148, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %97 = load %struct.sVString*, %struct.sVString** %line, align 8
  %buffer150 = getelementptr inbounds %struct.sVString, %struct.sVString* %97, i32 0, i32 2
  %98 = load i8*, i8** %buffer150, align 8
  %99 = load i32, i32* %pos, align 4
  %idxprom151 = sext i32 %99 to i64
  %arrayidx152 = getelementptr inbounds i8, i8* %98, i64 %idxprom151
  %100 = load i8, i8* %arrayidx152, align 1
  %conv153 = sext i8 %100 to i32
  %cmp154 = icmp eq i32 %conv153, 39
  br i1 %cmp154, label %if.then156, label %if.end158

if.then156:                                       ; preds = %for.body
  %101 = load i32, i32* %pos, align 4
  %inc157 = add nsw i32 %101, 1
  store i32 %inc157, i32* %pos, align 4
  store i8 1, i8* %inquote, align 1
  br label %stringtext

if.end158:                                        ; preds = %for.body
  %102 = load %struct.sVString*, %struct.sVString** %line, align 8
  %buffer159 = getelementptr inbounds %struct.sVString, %struct.sVString* %102, i32 0, i32 2
  %103 = load i8*, i8** %buffer159, align 8
  %104 = load i32, i32* %pos, align 4
  %idxprom160 = sext i32 %104 to i64
  %arrayidx161 = getelementptr inbounds i8, i8* %103, i64 %idxprom160
  %105 = load i8, i8* %arrayidx161, align 1
  %conv162 = sext i8 %105 to i32
  %cmp163 = icmp eq i32 %conv162, 123
  br i1 %cmp163, label %if.then165, label %if.end167

if.then165:                                       ; preds = %if.end158
  %106 = load i32, i32* %pos, align 4
  %inc166 = add nsw i32 %106, 1
  store i32 %inc166, i32* %pos, align 4
  store i8 1, i8* %incomment, align 1
  br label %commenttext

if.end167:                                        ; preds = %if.end158
  %107 = load %struct.sVString*, %struct.sVString** %line, align 8
  %buffer168 = getelementptr inbounds %struct.sVString, %struct.sVString* %107, i32 0, i32 2
  %108 = load i8*, i8** %buffer168, align 8
  %109 = load i32, i32* %pos, align 4
  %idxprom169 = sext i32 %109 to i64
  %arrayidx170 = getelementptr inbounds i8, i8* %108, i64 %idxprom169
  %110 = load i8, i8* %arrayidx170, align 1
  %conv171 = sext i8 %110 to i32
  %cmp172 = icmp eq i32 %conv171, 40
  br i1 %cmp172, label %land.lhs.true174, label %if.end188

land.lhs.true174:                                 ; preds = %if.end167
  %111 = load i32, i32* %pos, align 4
  %112 = load i32, i32* %len, align 4
  %sub175 = sub nsw i32 %112, 1
  %cmp176 = icmp slt i32 %111, %sub175
  br i1 %cmp176, label %land.lhs.true178, label %if.end188

land.lhs.true178:                                 ; preds = %land.lhs.true174
  %113 = load %struct.sVString*, %struct.sVString** %line, align 8
  %buffer179 = getelementptr inbounds %struct.sVString, %struct.sVString* %113, i32 0, i32 2
  %114 = load i8*, i8** %buffer179, align 8
  %115 = load i32, i32* %pos, align 4
  %add180 = add nsw i32 %115, 1
  %idxprom181 = sext i32 %add180 to i64
  %arrayidx182 = getelementptr inbounds i8, i8* %114, i64 %idxprom181
  %116 = load i8, i8* %arrayidx182, align 1
  %conv183 = sext i8 %116 to i32
  %cmp184 = icmp eq i32 %conv183, 42
  br i1 %cmp184, label %if.then186, label %if.end188

if.then186:                                       ; preds = %land.lhs.true178
  %117 = load i32, i32* %pos, align 4
  %add187 = add nsw i32 %117, 2
  store i32 %add187, i32* %pos, align 4
  store i8 1, i8* %incomment, align 1
  br label %commenttext

if.end188:                                        ; preds = %land.lhs.true178, %land.lhs.true174, %if.end167
  %118 = load i8, i8* %foundfragmenthere, align 1
  %tobool189 = trunc i8 %118 to i1
  br i1 %tobool189, label %if.end315, label %land.lhs.true190

land.lhs.true190:                                 ; preds = %if.end188
  %119 = load %struct.sVString*, %struct.sVString** %line, align 8
  %buffer191 = getelementptr inbounds %struct.sVString, %struct.sVString* %119, i32 0, i32 2
  %120 = load i8*, i8** %buffer191, align 8
  %121 = load i32, i32* %pos, align 4
  %idxprom192 = sext i32 %121 to i64
  %arrayidx193 = getelementptr inbounds i8, i8* %120, i64 %idxprom192
  %122 = load i8, i8* %arrayidx193, align 1
  %conv194 = sext i8 %122 to i32
  %cmp195 = icmp eq i32 %conv194, 60
  br i1 %cmp195, label %land.lhs.true197, label %if.end315

land.lhs.true197:                                 ; preds = %land.lhs.true190
  %123 = load i32, i32* %pos, align 4
  %add198 = add nsw i32 %123, 1
  %124 = load i32, i32* %len, align 4
  %cmp199 = icmp slt i32 %add198, %124
  br i1 %cmp199, label %land.lhs.true201, label %if.end315

land.lhs.true201:                                 ; preds = %land.lhs.true197
  %125 = load %struct.sVString*, %struct.sVString** %line, align 8
  %buffer202 = getelementptr inbounds %struct.sVString, %struct.sVString* %125, i32 0, i32 2
  %126 = load i8*, i8** %buffer202, align 8
  %127 = load i32, i32* %pos, align 4
  %add203 = add nsw i32 %127, 1
  %idxprom204 = sext i32 %add203 to i64
  %arrayidx205 = getelementptr inbounds i8, i8* %126, i64 %idxprom204
  %128 = load i8, i8* %arrayidx205, align 1
  %conv206 = sext i8 %128 to i32
  %cmp207 = icmp eq i32 %conv206, 60
  br i1 %cmp207, label %land.lhs.true209, label %if.end315

land.lhs.true209:                                 ; preds = %land.lhs.true201
  %129 = load %struct.sVString*, %struct.sVString** %line, align 8
  %buffer210 = getelementptr inbounds %struct.sVString, %struct.sVString* %129, i32 0, i32 2
  %130 = load i8*, i8** %buffer210, align 8
  %131 = load i32, i32* %pos, align 4
  %idx.ext211 = sext i32 %131 to i64
  %add.ptr212 = getelementptr inbounds i8, i8* %130, i64 %idx.ext211
  %call213 = call i8* @strstr(i8* %add.ptr212, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0))
  %tobool214 = icmp ne i8* %call213, null
  br i1 %tobool214, label %if.then215, label %if.end315

if.then215:                                       ; preds = %land.lhs.true209
  %132 = load i32, i32* %pos, align 4
  %add216 = add nsw i32 %132, 2
  store i32 %add216, i32* %pos, align 4
  br label %while.cond217

while.cond217:                                    ; preds = %while.body228, %if.then215
  %133 = load i32, i32* %pos, align 4
  %134 = load i32, i32* %len, align 4
  %cmp218 = icmp slt i32 %133, %134
  br i1 %cmp218, label %land.rhs220, label %land.end227

land.rhs220:                                      ; preds = %while.cond217
  %135 = load %struct.sVString*, %struct.sVString** %line, align 8
  %buffer221 = getelementptr inbounds %struct.sVString, %struct.sVString* %135, i32 0, i32 2
  %136 = load i8*, i8** %buffer221, align 8
  %137 = load i32, i32* %pos, align 4
  %idxprom222 = sext i32 %137 to i64
  %arrayidx223 = getelementptr inbounds i8, i8* %136, i64 %idxprom222
  %138 = load i8, i8* %arrayidx223, align 1
  %conv224 = sext i8 %138 to i32
  %call225 = call i32 @isspace(i32 %conv224) #3
  %tobool226 = icmp ne i32 %call225, 0
  br label %land.end227

land.end227:                                      ; preds = %land.rhs220, %while.cond217
  %139 = phi i1 [ false, %while.cond217 ], [ %tobool226, %land.rhs220 ]
  br i1 %139, label %while.body228, label %while.end230

while.body228:                                    ; preds = %land.end227
  %140 = load i32, i32* %pos, align 4
  %inc229 = add nsw i32 %140, 1
  store i32 %inc229, i32* %pos, align 4
  br label %while.cond217

while.end230:                                     ; preds = %land.end227
  %141 = load i32, i32* %pos, align 4
  %add231 = add nsw i32 %141, 4
  %142 = load i32, i32* %len, align 4
  %cmp232 = icmp sle i32 %add231, %142
  br i1 %cmp232, label %land.lhs.true234, label %if.end242

land.lhs.true234:                                 ; preds = %while.end230
  %143 = load %struct.sVString*, %struct.sVString** %line, align 8
  %buffer235 = getelementptr inbounds %struct.sVString, %struct.sVString* %143, i32 0, i32 2
  %144 = load i8*, i8** %buffer235, align 8
  %145 = load i32, i32* %pos, align 4
  %idx.ext236 = sext i32 %145 to i64
  %add.ptr237 = getelementptr inbounds i8, i8* %144, i64 %idx.ext236
  %call238 = call i32 @strncasecmp(i8* %add.ptr237, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i64 4)
  %tobool239 = icmp ne i32 %call238, 0
  br i1 %tobool239, label %if.end242, label %if.then240

if.then240:                                       ; preds = %land.lhs.true234
  %146 = load i32, i32* %pos, align 4
  %add241 = add nsw i32 %146, 4
  store i32 %add241, i32* %pos, align 4
  br label %if.end242

if.end242:                                        ; preds = %if.then240, %land.lhs.true234, %while.end230
  br label %while.cond243

while.cond243:                                    ; preds = %while.body254, %if.end242
  %147 = load i32, i32* %pos, align 4
  %148 = load i32, i32* %len, align 4
  %cmp244 = icmp slt i32 %147, %148
  br i1 %cmp244, label %land.rhs246, label %land.end253

land.rhs246:                                      ; preds = %while.cond243
  %149 = load %struct.sVString*, %struct.sVString** %line, align 8
  %buffer247 = getelementptr inbounds %struct.sVString, %struct.sVString* %149, i32 0, i32 2
  %150 = load i8*, i8** %buffer247, align 8
  %151 = load i32, i32* %pos, align 4
  %idxprom248 = sext i32 %151 to i64
  %arrayidx249 = getelementptr inbounds i8, i8* %150, i64 %idxprom248
  %152 = load i8, i8* %arrayidx249, align 1
  %conv250 = sext i8 %152 to i32
  %call251 = call i32 @isspace(i32 %conv250) #3
  %tobool252 = icmp ne i32 %call251, 0
  br label %land.end253

land.end253:                                      ; preds = %land.rhs246, %while.cond243
  %153 = phi i1 [ false, %while.cond243 ], [ %tobool252, %land.rhs246 ]
  br i1 %153, label %while.body254, label %while.end256

while.body254:                                    ; preds = %land.end253
  %154 = load i32, i32* %pos, align 4
  %inc255 = add nsw i32 %154, 1
  store i32 %inc255, i32* %pos, align 4
  br label %while.cond243

while.end256:                                     ; preds = %land.end253
  %155 = load i32, i32* %pos, align 4
  store i32 %155, i32* %eoname, align 4
  br label %while.cond257

while.cond257:                                    ; preds = %while.body276, %while.end256
  %156 = load i32, i32* %eoname, align 4
  %157 = load i32, i32* %len, align 4
  %cmp258 = icmp slt i32 %156, %157
  br i1 %cmp258, label %land.lhs.true260, label %land.end275

land.lhs.true260:                                 ; preds = %while.cond257
  %158 = load %struct.sVString*, %struct.sVString** %line, align 8
  %buffer261 = getelementptr inbounds %struct.sVString, %struct.sVString* %158, i32 0, i32 2
  %159 = load i8*, i8** %buffer261, align 8
  %160 = load i32, i32* %eoname, align 4
  %idxprom262 = sext i32 %160 to i64
  %arrayidx263 = getelementptr inbounds i8, i8* %159, i64 %idxprom262
  %161 = load i8, i8* %arrayidx263, align 1
  store i8 %161, i8* %c2, align 1
  %conv264 = sext i8 %161 to i32
  %cmp265 = icmp ne i32 %conv264, 62
  br i1 %cmp265, label %land.lhs.true267, label %land.end275

land.lhs.true267:                                 ; preds = %land.lhs.true260
  %162 = load i8, i8* %c2, align 1
  %conv268 = sext i8 %162 to i32
  %cmp269 = icmp ne i32 %conv268, 58
  br i1 %cmp269, label %land.rhs271, label %land.end275

land.rhs271:                                      ; preds = %land.lhs.true267
  %163 = load i8, i8* %c2, align 1
  %conv272 = sext i8 %163 to i32
  %call273 = call i32 @isspace(i32 %conv272) #3
  %tobool274 = icmp ne i32 %call273, 0
  %lnot = xor i1 %tobool274, true
  br label %land.end275

land.end275:                                      ; preds = %land.rhs271, %land.lhs.true267, %land.lhs.true260, %while.cond257
  %164 = phi i1 [ false, %land.lhs.true267 ], [ false, %land.lhs.true260 ], [ false, %while.cond257 ], [ %lnot, %land.rhs271 ]
  br i1 %164, label %while.body276, label %while.end278

while.body276:                                    ; preds = %land.end275
  %165 = load i32, i32* %eoname, align 4
  %inc277 = add nsw i32 %165, 1
  store i32 %inc277, i32* %eoname, align 4
  br label %while.cond257

while.end278:                                     ; preds = %land.end275
  %166 = load i32, i32* %eoname, align 4
  %167 = load i32, i32* %len, align 4
  %cmp279 = icmp slt i32 %166, %167
  br i1 %cmp279, label %if.then281, label %if.end307

if.then281:                                       ; preds = %while.end278
  %168 = load %struct.sVString*, %struct.sVString** %line, align 8
  %buffer282 = getelementptr inbounds %struct.sVString, %struct.sVString* %168, i32 0, i32 2
  %169 = load i8*, i8** %buffer282, align 8
  %170 = load i32, i32* %eoname, align 4
  %idxprom283 = sext i32 %170 to i64
  %arrayidx284 = getelementptr inbounds i8, i8* %169, i64 %idxprom283
  store i8 0, i8* %arrayidx284, align 1
  %171 = load %struct.sVString*, %struct.sVString** %line, align 8
  %buffer285 = getelementptr inbounds %struct.sVString, %struct.sVString* %171, i32 0, i32 2
  %172 = load i8*, i8** %buffer285, align 8
  %173 = load i32, i32* %pos, align 4
  %idx.ext286 = sext i32 %173 to i64
  %add.ptr287 = getelementptr inbounds i8, i8* %172, i64 %idx.ext286
  %call288 = call i32 @strcasecmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* %add.ptr287)
  %tobool289 = icmp ne i32 %call288, 0
  br i1 %tobool289, label %land.lhs.true290, label %if.end306

land.lhs.true290:                                 ; preds = %if.then281
  %174 = load %struct.sVString*, %struct.sVString** %line, align 8
  %buffer291 = getelementptr inbounds %struct.sVString, %struct.sVString* %174, i32 0, i32 2
  %175 = load i8*, i8** %buffer291, align 8
  %176 = load i32, i32* %pos, align 4
  %idx.ext292 = sext i32 %176 to i64
  %add.ptr293 = getelementptr inbounds i8, i8* %175, i64 %idx.ext292
  %call294 = call i32 @strcasecmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i8* %add.ptr293)
  %tobool295 = icmp ne i32 %call294, 0
  br i1 %tobool295, label %land.lhs.true296, label %if.end306

land.lhs.true296:                                 ; preds = %land.lhs.true290
  %177 = load %struct.sVString*, %struct.sVString** %line, align 8
  %buffer297 = getelementptr inbounds %struct.sVString, %struct.sVString* %177, i32 0, i32 2
  %178 = load i8*, i8** %buffer297, align 8
  %179 = load i32, i32* %pos, align 4
  %idx.ext298 = sext i32 %179 to i64
  %add.ptr299 = getelementptr inbounds i8, i8* %178, i64 %idx.ext298
  %call300 = call i32 @strcasecmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8* %add.ptr299)
  %tobool301 = icmp ne i32 %call300, 0
  br i1 %tobool301, label %if.then302, label %if.end306

if.then302:                                       ; preds = %land.lhs.true296
  %180 = load %struct.sVString*, %struct.sVString** %line, align 8
  %buffer303 = getelementptr inbounds %struct.sVString, %struct.sVString* %180, i32 0, i32 2
  %181 = load i8*, i8** %buffer303, align 8
  %182 = load i32, i32* %pos, align 4
  %idx.ext304 = sext i32 %182 to i64
  %add.ptr305 = getelementptr inbounds i8, i8* %181, i64 %idx.ext304
  call void @makeBetaTag(i8* %add.ptr305, i32 2)
  br label %if.end306

if.end306:                                        ; preds = %if.then302, %land.lhs.true296, %land.lhs.true290, %if.then281
  br label %if.end307

if.end307:                                        ; preds = %if.end306, %while.end278
  %183 = load i32, i32* %eoname, align 4
  %add308 = add nsw i32 %183, 1
  %184 = load i32, i32* %len, align 4
  %cmp309 = icmp slt i32 %add308, %184
  br i1 %cmp309, label %if.then311, label %if.else313

if.then311:                                       ; preds = %if.end307
  %185 = load i32, i32* %eoname, align 4
  %add312 = add nsw i32 %185, 1
  store i32 %add312, i32* %pos, align 4
  br label %if.end314

if.else313:                                       ; preds = %if.end307
  %186 = load i32, i32* %len, align 4
  store i32 %186, i32* %pos, align 4
  br label %for.inc

if.end314:                                        ; preds = %if.then311
  br label %if.end315

if.end315:                                        ; preds = %if.end314, %land.lhs.true209, %land.lhs.true201, %land.lhs.true197, %land.lhs.true190, %if.end188
  %187 = load i8, i8* %foundfragmenthere, align 1
  %tobool316 = trunc i8 %187 to i1
  br i1 %tobool316, label %if.end411, label %land.lhs.true317

land.lhs.true317:                                 ; preds = %if.end315
  %188 = load %struct.sVString*, %struct.sVString** %line, align 8
  %buffer318 = getelementptr inbounds %struct.sVString, %struct.sVString* %188, i32 0, i32 2
  %189 = load i8*, i8** %buffer318, align 8
  %190 = load i32, i32* %pos, align 4
  %idxprom319 = sext i32 %190 to i64
  %arrayidx320 = getelementptr inbounds i8, i8* %189, i64 %idxprom319
  %191 = load i8, i8* %arrayidx320, align 1
  %conv321 = sext i8 %191 to i32
  %cmp322 = icmp eq i32 %conv321, 58
  br i1 %cmp322, label %land.lhs.true324, label %if.end411

land.lhs.true324:                                 ; preds = %land.lhs.true317
  %192 = load i8, i8* %dopatterns, align 1
  %tobool325 = trunc i8 %192 to i1
  br i1 %tobool325, label %if.then345, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true324
  %193 = load i8, i8* %dovirtuals, align 1
  %tobool327 = trunc i8 %193 to i1
  br i1 %tobool327, label %land.lhs.true329, label %if.end411

land.lhs.true329:                                 ; preds = %lor.lhs.false
  %194 = load %struct.sVString*, %struct.sVString** %line, align 8
  %buffer330 = getelementptr inbounds %struct.sVString, %struct.sVString* %194, i32 0, i32 2
  %195 = load i8*, i8** %buffer330, align 8
  %196 = load i32, i32* %pos, align 4
  %add331 = add nsw i32 %196, 1
  %idxprom332 = sext i32 %add331 to i64
  %arrayidx333 = getelementptr inbounds i8, i8* %195, i64 %idxprom332
  %197 = load i8, i8* %arrayidx333, align 1
  %conv334 = sext i8 %197 to i32
  %cmp335 = icmp eq i32 %conv334, 58
  br i1 %cmp335, label %if.then345, label %lor.lhs.false337

lor.lhs.false337:                                 ; preds = %land.lhs.true329
  %198 = load %struct.sVString*, %struct.sVString** %line, align 8
  %buffer338 = getelementptr inbounds %struct.sVString, %struct.sVString* %198, i32 0, i32 2
  %199 = load i8*, i8** %buffer338, align 8
  %200 = load i32, i32* %pos, align 4
  %add339 = add nsw i32 %200, 1
  %idxprom340 = sext i32 %add339 to i64
  %arrayidx341 = getelementptr inbounds i8, i8* %199, i64 %idxprom340
  %201 = load i8, i8* %arrayidx341, align 1
  %conv342 = sext i8 %201 to i32
  %cmp343 = icmp eq i32 %conv342, 60
  br i1 %cmp343, label %if.then345, label %if.end411

if.then345:                                       ; preds = %lor.lhs.false337, %land.lhs.true329, %land.lhs.true324
  %202 = load i32, i32* %pos, align 4
  store i32 %202, i32* %eoname346, align 4
  br label %while.cond347

while.cond347:                                    ; preds = %while.body358, %if.then345
  %203 = load i32, i32* %eoname346, align 4
  %tobool348 = icmp ne i32 %203, 0
  br i1 %tobool348, label %land.rhs349, label %land.end357

land.rhs349:                                      ; preds = %while.cond347
  %204 = load %struct.sVString*, %struct.sVString** %line, align 8
  %buffer350 = getelementptr inbounds %struct.sVString, %struct.sVString* %204, i32 0, i32 2
  %205 = load i8*, i8** %buffer350, align 8
  %206 = load i32, i32* %eoname346, align 4
  %sub351 = sub nsw i32 %206, 1
  %idxprom352 = sext i32 %sub351 to i64
  %arrayidx353 = getelementptr inbounds i8, i8* %205, i64 %idxprom352
  %207 = load i8, i8* %arrayidx353, align 1
  %conv354 = sext i8 %207 to i32
  %call355 = call i32 @isspace(i32 %conv354) #3
  %tobool356 = icmp ne i32 %call355, 0
  br label %land.end357

land.end357:                                      ; preds = %land.rhs349, %while.cond347
  %208 = phi i1 [ false, %while.cond347 ], [ %tobool356, %land.rhs349 ]
  br i1 %208, label %while.body358, label %while.end360

while.body358:                                    ; preds = %land.end357
  %209 = load i32, i32* %eoname346, align 4
  %dec359 = add nsw i32 %209, -1
  store i32 %dec359, i32* %eoname346, align 4
  br label %while.cond347

while.end360:                                     ; preds = %land.end357
  br label %foundanothername

foundanothername:                                 ; preds = %if.then408, %while.end360
  %210 = load %struct.sVString*, %struct.sVString** %line, align 8
  %buffer361 = getelementptr inbounds %struct.sVString, %struct.sVString* %210, i32 0, i32 2
  %211 = load i8*, i8** %buffer361, align 8
  %212 = load i32, i32* %eoname346, align 4
  %idxprom362 = sext i32 %212 to i64
  %arrayidx363 = getelementptr inbounds i8, i8* %211, i64 %idxprom362
  store i8 0, i8* %arrayidx363, align 1
  %213 = load i32, i32* %eoname346, align 4
  store i32 %213, i32* %soname, align 4
  br label %while.cond364

while.cond364:                                    ; preds = %while.body376, %foundanothername
  %214 = load i32, i32* %soname, align 4
  %tobool365 = icmp ne i32 %214, 0
  br i1 %tobool365, label %land.rhs366, label %land.end375

land.rhs366:                                      ; preds = %while.cond364
  %215 = load %struct.sVString*, %struct.sVString** %line, align 8
  %buffer367 = getelementptr inbounds %struct.sVString, %struct.sVString* %215, i32 0, i32 2
  %216 = load i8*, i8** %buffer367, align 8
  %217 = load i32, i32* %soname, align 4
  %sub368 = sub nsw i32 %217, 1
  %idxprom369 = sext i32 %sub368 to i64
  %arrayidx370 = getelementptr inbounds i8, i8* %216, i64 %idxprom369
  %218 = load i8, i8* %arrayidx370, align 1
  %idxprom371 = zext i8 %218 to i64
  %arrayidx372 = getelementptr inbounds [256 x i8], [256 x i8]* bitcast (<{ [123 x i8], [133 x i8] }>* @identarray to [256 x i8]*), i64 0, i64 %idxprom371
  %219 = load i8, i8* %arrayidx372, align 1
  %conv373 = sext i8 %219 to i32
  %tobool374 = icmp ne i32 %conv373, 0
  br label %land.end375

land.end375:                                      ; preds = %land.rhs366, %while.cond364
  %220 = phi i1 [ false, %while.cond364 ], [ %tobool374, %land.rhs366 ]
  br i1 %220, label %while.body376, label %while.end378

while.body376:                                    ; preds = %land.end375
  %221 = load i32, i32* %soname, align 4
  %dec377 = add nsw i32 %221, -1
  store i32 %dec377, i32* %soname, align 4
  br label %while.cond364

while.end378:                                     ; preds = %land.end375
  %222 = load i32, i32* %soname, align 4
  %223 = load i32, i32* %eoname346, align 4
  %cmp379 = icmp ne i32 %222, %223
  br i1 %cmp379, label %if.then381, label %if.end410

if.then381:                                       ; preds = %while.end378
  %224 = load %struct.sVString*, %struct.sVString** %line, align 8
  %buffer382 = getelementptr inbounds %struct.sVString, %struct.sVString* %224, i32 0, i32 2
  %225 = load i8*, i8** %buffer382, align 8
  %226 = load i32, i32* %soname, align 4
  %idx.ext383 = sext i32 %226 to i64
  %add.ptr384 = getelementptr inbounds i8, i8* %225, i64 %idx.ext383
  call void @makeBetaTag(i8* %add.ptr384, i32 1)
  br label %while.cond385

while.cond385:                                    ; preds = %while.body396, %if.then381
  %227 = load i32, i32* %soname, align 4
  %tobool386 = icmp ne i32 %227, 0
  br i1 %tobool386, label %land.rhs387, label %land.end395

land.rhs387:                                      ; preds = %while.cond385
  %228 = load %struct.sVString*, %struct.sVString** %line, align 8
  %buffer388 = getelementptr inbounds %struct.sVString, %struct.sVString* %228, i32 0, i32 2
  %229 = load i8*, i8** %buffer388, align 8
  %230 = load i32, i32* %soname, align 4
  %sub389 = sub nsw i32 %230, 1
  %idxprom390 = sext i32 %sub389 to i64
  %arrayidx391 = getelementptr inbounds i8, i8* %229, i64 %idxprom390
  %231 = load i8, i8* %arrayidx391, align 1
  %conv392 = sext i8 %231 to i32
  %call393 = call i32 @isspace(i32 %conv392) #3
  %tobool394 = icmp ne i32 %call393, 0
  br label %land.end395

land.end395:                                      ; preds = %land.rhs387, %while.cond385
  %232 = phi i1 [ false, %while.cond385 ], [ %tobool394, %land.rhs387 ]
  br i1 %232, label %while.body396, label %while.end398

while.body396:                                    ; preds = %land.end395
  %233 = load i32, i32* %soname, align 4
  %dec397 = add nsw i32 %233, -1
  store i32 %dec397, i32* %soname, align 4
  br label %while.cond385

while.end398:                                     ; preds = %land.end395
  %234 = load i32, i32* %soname, align 4
  %tobool399 = icmp ne i32 %234, 0
  br i1 %tobool399, label %land.lhs.true400, label %if.end409

land.lhs.true400:                                 ; preds = %while.end398
  %235 = load %struct.sVString*, %struct.sVString** %line, align 8
  %buffer401 = getelementptr inbounds %struct.sVString, %struct.sVString* %235, i32 0, i32 2
  %236 = load i8*, i8** %buffer401, align 8
  %237 = load i32, i32* %soname, align 4
  %sub402 = sub nsw i32 %237, 1
  %idxprom403 = sext i32 %sub402 to i64
  %arrayidx404 = getelementptr inbounds i8, i8* %236, i64 %idxprom403
  %238 = load i8, i8* %arrayidx404, align 1
  %conv405 = sext i8 %238 to i32
  %cmp406 = icmp eq i32 %conv405, 44
  br i1 %cmp406, label %if.then408, label %if.end409

if.then408:                                       ; preds = %land.lhs.true400
  %239 = load i32, i32* %soname, align 4
  store i32 %239, i32* %eoname346, align 4
  br label %foundanothername

if.end409:                                        ; preds = %land.lhs.true400, %while.end398
  br label %if.end410

if.end410:                                        ; preds = %if.end409, %while.end378
  br label %if.end411

if.end411:                                        ; preds = %if.end410, %lor.lhs.false337, %lor.lhs.false, %land.lhs.true317, %if.end315
  br label %for.inc

for.inc:                                          ; preds = %if.end411, %if.else313
  %240 = load i32, i32* %pos, align 4
  %inc412 = add nsw i32 %240, 1
  store i32 %inc412, i32* %pos, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %endofline

commenttext:                                      ; preds = %if.then186, %if.then165, %if.then146
  br label %for.cond413

for.cond413:                                      ; preds = %for.inc447, %commenttext
  %241 = load i32, i32* %pos, align 4
  %242 = load i32, i32* %len, align 4
  %cmp414 = icmp slt i32 %241, %242
  br i1 %cmp414, label %for.body416, label %for.end449

for.body416:                                      ; preds = %for.cond413
  %243 = load %struct.sVString*, %struct.sVString** %line, align 8
  %buffer417 = getelementptr inbounds %struct.sVString, %struct.sVString* %243, i32 0, i32 2
  %244 = load i8*, i8** %buffer417, align 8
  %245 = load i32, i32* %pos, align 4
  %idxprom418 = sext i32 %245 to i64
  %arrayidx419 = getelementptr inbounds i8, i8* %244, i64 %idxprom418
  %246 = load i8, i8* %arrayidx419, align 1
  %conv420 = sext i8 %246 to i32
  %cmp421 = icmp eq i32 %conv420, 42
  br i1 %cmp421, label %land.lhs.true423, label %if.end437

land.lhs.true423:                                 ; preds = %for.body416
  %247 = load i32, i32* %pos, align 4
  %248 = load i32, i32* %len, align 4
  %sub424 = sub nsw i32 %248, 1
  %cmp425 = icmp slt i32 %247, %sub424
  br i1 %cmp425, label %land.lhs.true427, label %if.end437

land.lhs.true427:                                 ; preds = %land.lhs.true423
  %249 = load %struct.sVString*, %struct.sVString** %line, align 8
  %buffer428 = getelementptr inbounds %struct.sVString, %struct.sVString* %249, i32 0, i32 2
  %250 = load i8*, i8** %buffer428, align 8
  %251 = load i32, i32* %pos, align 4
  %add429 = add nsw i32 %251, 1
  %idxprom430 = sext i32 %add429 to i64
  %arrayidx431 = getelementptr inbounds i8, i8* %250, i64 %idxprom430
  %252 = load i8, i8* %arrayidx431, align 1
  %conv432 = sext i8 %252 to i32
  %cmp433 = icmp eq i32 %conv432, 41
  br i1 %cmp433, label %if.then435, label %if.end437

if.then435:                                       ; preds = %land.lhs.true427
  %253 = load i32, i32* %pos, align 4
  %add436 = add nsw i32 %253, 2
  store i32 %add436, i32* %pos, align 4
  store i8 0, i8* %incomment, align 1
  br label %programtext

if.end437:                                        ; preds = %land.lhs.true427, %land.lhs.true423, %for.body416
  %254 = load %struct.sVString*, %struct.sVString** %line, align 8
  %buffer438 = getelementptr inbounds %struct.sVString, %struct.sVString* %254, i32 0, i32 2
  %255 = load i8*, i8** %buffer438, align 8
  %256 = load i32, i32* %pos, align 4
  %idxprom439 = sext i32 %256 to i64
  %arrayidx440 = getelementptr inbounds i8, i8* %255, i64 %idxprom439
  %257 = load i8, i8* %arrayidx440, align 1
  %conv441 = sext i8 %257 to i32
  %cmp442 = icmp eq i32 %conv441, 125
  br i1 %cmp442, label %if.then444, label %if.end446

if.then444:                                       ; preds = %if.end437
  %258 = load i32, i32* %pos, align 4
  %inc445 = add nsw i32 %258, 1
  store i32 %inc445, i32* %pos, align 4
  store i8 0, i8* %incomment, align 1
  br label %programtext

if.end446:                                        ; preds = %if.end437
  br label %for.inc447

for.inc447:                                       ; preds = %if.end446
  %259 = load i32, i32* %pos, align 4
  %inc448 = add nsw i32 %259, 1
  store i32 %inc448, i32* %pos, align 4
  br label %for.cond413

for.end449:                                       ; preds = %for.cond413
  br label %endofline

stringtext:                                       ; preds = %if.then156, %if.then143
  br label %for.cond450

for.cond450:                                      ; preds = %for.inc489, %stringtext
  %260 = load i32, i32* %pos, align 4
  %261 = load i32, i32* %len, align 4
  %cmp451 = icmp slt i32 %260, %261
  br i1 %cmp451, label %for.body453, label %for.end491

for.body453:                                      ; preds = %for.cond450
  %262 = load %struct.sVString*, %struct.sVString** %line, align 8
  %buffer454 = getelementptr inbounds %struct.sVString, %struct.sVString* %262, i32 0, i32 2
  %263 = load i8*, i8** %buffer454, align 8
  %264 = load i32, i32* %pos, align 4
  %idxprom455 = sext i32 %264 to i64
  %arrayidx456 = getelementptr inbounds i8, i8* %263, i64 %idxprom455
  %265 = load i8, i8* %arrayidx456, align 1
  %conv457 = sext i8 %265 to i32
  %cmp458 = icmp eq i32 %conv457, 92
  br i1 %cmp458, label %if.then460, label %if.else467

if.then460:                                       ; preds = %for.body453
  %266 = load i32, i32* %pos, align 4
  %267 = load i32, i32* %len, align 4
  %sub461 = sub nsw i32 %267, 1
  %cmp462 = icmp slt i32 %266, %sub461
  br i1 %cmp462, label %if.then464, label %if.end466

if.then464:                                       ; preds = %if.then460
  %268 = load i32, i32* %pos, align 4
  %inc465 = add nsw i32 %268, 1
  store i32 %inc465, i32* %pos, align 4
  br label %if.end466

if.end466:                                        ; preds = %if.then464, %if.then460
  br label %if.end488

if.else467:                                       ; preds = %for.body453
  %269 = load %struct.sVString*, %struct.sVString** %line, align 8
  %buffer468 = getelementptr inbounds %struct.sVString, %struct.sVString* %269, i32 0, i32 2
  %270 = load i8*, i8** %buffer468, align 8
  %271 = load i32, i32* %pos, align 4
  %idxprom469 = sext i32 %271 to i64
  %arrayidx470 = getelementptr inbounds i8, i8* %270, i64 %idxprom469
  %272 = load i8, i8* %arrayidx470, align 1
  %conv471 = sext i8 %272 to i32
  %cmp472 = icmp eq i32 %conv471, 39
  br i1 %cmp472, label %if.then474, label %if.end487

if.then474:                                       ; preds = %if.else467
  %273 = load i32, i32* %pos, align 4
  %inc475 = add nsw i32 %273, 1
  store i32 %inc475, i32* %pos, align 4
  %274 = load i32, i32* %pos, align 4
  %275 = load i32, i32* %len, align 4
  %cmp476 = icmp slt i32 %274, %275
  br i1 %cmp476, label %land.lhs.true478, label %if.end486

land.lhs.true478:                                 ; preds = %if.then474
  %276 = load %struct.sVString*, %struct.sVString** %line, align 8
  %buffer479 = getelementptr inbounds %struct.sVString, %struct.sVString* %276, i32 0, i32 2
  %277 = load i8*, i8** %buffer479, align 8
  %278 = load i32, i32* %pos, align 4
  %idxprom480 = sext i32 %278 to i64
  %arrayidx481 = getelementptr inbounds i8, i8* %277, i64 %idxprom480
  %279 = load i8, i8* %arrayidx481, align 1
  %conv482 = sext i8 %279 to i32
  %cmp483 = icmp eq i32 %conv482, 39
  br i1 %cmp483, label %if.then485, label %if.end486

if.then485:                                       ; preds = %land.lhs.true478
  br label %for.inc489

if.end486:                                        ; preds = %land.lhs.true478, %if.then474
  store i8 0, i8* %inquote, align 1
  br label %programtext

if.end487:                                        ; preds = %if.else467
  br label %if.end488

if.end488:                                        ; preds = %if.end487, %if.end466
  br label %for.inc489

for.inc489:                                       ; preds = %if.end488, %if.then485
  %280 = load i32, i32* %pos, align 4
  %inc490 = add nsw i32 %280, 1
  store i32 %inc490, i32* %pos, align 4
  br label %for.cond450

for.end491:                                       ; preds = %for.cond450
  br label %if.end492

if.end492:                                        ; preds = %for.end491, %if.end139
  br label %endofline

endofline:                                        ; preds = %if.end492, %for.end449, %for.end
  store i8 0, i8* %inquote, align 1
  br label %do.cond

do.cond:                                          ; preds = %endofline
  %281 = load i32, i32* %c, align 4
  %cmp493 = icmp ne i32 %281, -1
  br i1 %cmp493, label %do.body, label %do.end495

do.end495:                                        ; preds = %do.cond
  %282 = load %struct.sVString*, %struct.sVString** %line, align 8
  call void @vStringDelete(%struct.sVString* %282)
  ret void
}

declare %struct.sVString* @vStringNew() #1

declare i32 @getcFromInputFile() #1

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

; Function Attrs: nounwind readonly
declare i32 @isspace(i32) #2

declare i32 @strcasecmp(i8*, i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @makeBetaTag(i8* %name, i32 %kind) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %kind.addr = alloca i32, align 4
  %e = alloca %struct.sTagEntryInfo, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 %kind, i32* %kind.addr, align 4
  %0 = load i32, i32* %kind.addr, align 4
  %idxprom = zext i32 %0 to i64
  %arrayidx = getelementptr inbounds [4 x %struct.sKindDefinition], [4 x %struct.sKindDefinition]* @BetaKinds, i64 0, i64 %idxprom
  %enabled = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %arrayidx, i32 0, i32 0
  %1 = load i8, i8* %enabled, align 8
  %tobool = trunc i8 %1 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %name.addr, align 8
  %3 = load i32, i32* %kind.addr, align 4
  call void @initTagEntry(%struct.sTagEntryInfo* %e, i8* %2, i32 %3)
  %call = call i32 @makeTagEntry(%struct.sTagEntryInfo* %e)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i8* @strstr(i8*, i8*) #1

declare i32 @strncasecmp(i8*, i8*, i64) #1

declare void @vStringDelete(%struct.sVString*) #1

declare void @vStringResize(%struct.sVString*, i64) #1

declare void @initTagEntry(%struct.sTagEntryInfo*, i8*, i32) #1

declare i32 @makeTagEntry(%struct.sTagEntryInfo*) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 10.0.0 (https://github.com/holzschu/clang.git 0cfc630fbdb62e96720b611a57123ef3eb13e297) (https://github.com/holzschu/llvm.git 0d8a71e39b28502c24718f7e74b5acbcfe36dfe0)"}
