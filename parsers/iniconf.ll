; ModuleID = 'iniconf.c'
source_filename = "iniconf.c"
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
%struct.sIniconfSubparser = type { %struct.sSubparser, i1 (i8*, i8*, i8*)*, void (%struct.sIniconfSubparser*, i8*, i8*, i8*)* }
%struct.sSubparser = type { %struct.sSlaveParser*, %struct.sSubparser*, i8, i8, i32, void (%struct.sSubparser*)*, void (%struct.sSubparser*)*, void (%struct.sSubparser*, i8*)*, void (%struct.sSubparser*, %struct.sTagEntryInfo*, i32)* }
%struct.sSlaveParser = type { i32, i32, i8*, %struct.sSlaveParser* }

@.str = private unnamed_addr constant [8 x i8] c"Iniconf\00", align 1
@IniconfKinds = internal global [2 x %struct.sKindDefinition] [%struct.sKindDefinition { i8 1, i8 115, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 107, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }], align 8
@extensions = internal constant [3 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* null], align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"section\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"sections\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"keys\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"ini\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"conf\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sParserDefinition* @IniconfParser() #0 {
entry:
  %def = alloca %struct.sParserDefinition*, align 8
  %call = call %struct.sParserDefinition* @parserNew(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store %struct.sParserDefinition* %call, %struct.sParserDefinition** %def, align 8
  %0 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %0, i32 0, i32 1
  store %struct.sKindDefinition* getelementptr inbounds ([2 x %struct.sKindDefinition], [2 x %struct.sKindDefinition]* @IniconfKinds, i64 0, i64 0), %struct.sKindDefinition** %kindTable, align 8
  %1 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %1, i32 0, i32 2
  store i32 2, i32* %kindCount, align 8
  %2 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %extensions = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %2, i32 0, i32 3
  store i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @extensions, i64 0, i64 0), i8*** %extensions, align 8
  %3 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %parser = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %3, i32 0, i32 8
  store void ()* @findIniconfTags, void ()** %parser, align 8
  %4 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %useCork = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %4, i32 0, i32 12
  store i8 1, i8* %useCork, align 4
  %5 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  ret %struct.sParserDefinition* %5
}

declare %struct.sParserDefinition* @parserNew(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @findIniconfTags() #0 {
entry:
  %line = alloca i8*, align 8
  %val = alloca %struct.sVString*, align 8
  %name = alloca %struct.sVString*, align 8
  %scope = alloca %struct.sVString*, align 8
  %sub = alloca %struct.sIniconfSubparser*, align 8
  %sectionCorkIndex = alloca i32, align 4
  %cp = alloca i8*, align 8
  %possible = alloca i8, align 1
  %vStringClear_s = alloca %struct.sVString*, align 8
  %vStringClear_s136 = alloca %struct.sVString*, align 8
  %vStringClear_s143 = alloca %struct.sVString*, align 8
  %call = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call, %struct.sVString** %val, align 8
  %call1 = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call1, %struct.sVString** %name, align 8
  %call2 = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call2, %struct.sVString** %scope, align 8
  store i32 0, i32* %sectionCorkIndex, align 4
  %call3 = call %struct.sSubparser* @getSubparserRunningBaseparser()
  %0 = bitcast %struct.sSubparser* %call3 to %struct.sIniconfSubparser*
  store %struct.sIniconfSubparser* %0, %struct.sIniconfSubparser** %sub, align 8
  %1 = load %struct.sIniconfSubparser*, %struct.sIniconfSubparser** %sub, align 8
  %tobool = icmp ne %struct.sIniconfSubparser* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.sIniconfSubparser*, %struct.sIniconfSubparser** %sub, align 8
  %3 = bitcast %struct.sIniconfSubparser* %2 to %struct.sSubparser*
  call void @chooseExclusiveSubparser(%struct.sSubparser* %3, i8* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %while.cond

while.cond:                                       ; preds = %while.end159, %do.end, %if.then25, %if.end
  %call4 = call i8* @readLineFromInputFile()
  store i8* %call4, i8** %line, align 8
  %cmp = icmp ne i8* %call4, null
  br i1 %cmp, label %while.body, label %while.end160

while.body:                                       ; preds = %while.cond
  %4 = load i8*, i8** %line, align 8
  store i8* %4, i8** %cp, align 8
  store i8 1, i8* %possible, align 1
  %5 = load i8*, i8** %cp, align 8
  %6 = load i8, i8* %5, align 1
  %conv = zext i8 %6 to i32
  %call5 = call i32 @isspace(i32 %conv) #3
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then25, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %7 = load i8*, i8** %cp, align 8
  %8 = load i8, i8* %7, align 1
  %conv7 = zext i8 %8 to i32
  %cmp8 = icmp eq i32 %conv7, 35
  br i1 %cmp8, label %if.then25, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false
  %9 = load i8*, i8** %cp, align 8
  %10 = load i8, i8* %9, align 1
  %conv11 = zext i8 %10 to i32
  %cmp12 = icmp eq i32 %conv11, 59
  br i1 %cmp12, label %if.then25, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false10
  %11 = load i8*, i8** %cp, align 8
  %12 = load i8, i8* %11, align 1
  %conv15 = zext i8 %12 to i32
  %cmp16 = icmp eq i32 %conv15, 0
  br i1 %cmp16, label %if.then25, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false14
  %13 = load i8*, i8** %cp, align 8
  %14 = load i8, i8* %13, align 1
  %conv19 = zext i8 %14 to i32
  %cmp20 = icmp eq i32 %conv19, 47
  br i1 %cmp20, label %land.lhs.true, label %if.end26

land.lhs.true:                                    ; preds = %lor.lhs.false18
  %15 = load i8*, i8** %cp, align 8
  %add.ptr = getelementptr inbounds i8, i8* %15, i64 1
  %16 = load i8, i8* %add.ptr, align 1
  %conv22 = zext i8 %16 to i32
  %cmp23 = icmp eq i32 %conv22, 47
  br i1 %cmp23, label %if.then25, label %if.end26

if.then25:                                        ; preds = %land.lhs.true, %lor.lhs.false14, %lor.lhs.false10, %lor.lhs.false, %while.body
  br label %while.cond

if.end26:                                         ; preds = %land.lhs.true, %lor.lhs.false18
  %17 = load i8*, i8** %cp, align 8
  %18 = load i8, i8* %17, align 1
  %conv27 = zext i8 %18 to i32
  %cmp28 = icmp eq i32 %conv27, 91
  br i1 %cmp28, label %if.then30, label %if.end51

if.then30:                                        ; preds = %if.end26
  %19 = load i8*, i8** %cp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr, i8** %cp, align 8
  br label %while.cond31

while.cond31:                                     ; preds = %while.body38, %if.then30
  %20 = load i8*, i8** %cp, align 8
  %21 = load i8, i8* %20, align 1
  %conv32 = zext i8 %21 to i32
  %cmp33 = icmp ne i32 %conv32, 0
  br i1 %cmp33, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond31
  %22 = load i8*, i8** %cp, align 8
  %23 = load i8, i8* %22, align 1
  %conv35 = zext i8 %23 to i32
  %cmp36 = icmp ne i32 %conv35, 93
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond31
  %24 = phi i1 [ false, %while.cond31 ], [ %cmp36, %land.rhs ]
  br i1 %24, label %while.body38, label %while.end

while.body38:                                     ; preds = %land.end
  %25 = load %struct.sVString*, %struct.sVString** %name, align 8
  %26 = load i8*, i8** %cp, align 8
  %27 = load i8, i8* %26, align 1
  %conv39 = zext i8 %27 to i32
  call void @vStringPut(%struct.sVString* %25, i32 %conv39)
  %28 = load i8*, i8** %cp, align 8
  %incdec.ptr40 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr40, i8** %cp, align 8
  br label %while.cond31

while.end:                                        ; preds = %land.end
  %29 = load %struct.sVString*, %struct.sVString** %name, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %29, i32 0, i32 2
  %30 = load i8*, i8** %buffer, align 8
  call void @makeIniconfTagMaybe(i8* %30, i8* null, i8* null, i32* %sectionCorkIndex)
  %31 = load %struct.sIniconfSubparser*, %struct.sIniconfSubparser** %sub, align 8
  %tobool41 = icmp ne %struct.sIniconfSubparser* %31, null
  br i1 %tobool41, label %if.end45, label %if.then42

if.then42:                                        ; preds = %while.end
  %32 = load %struct.sVString*, %struct.sVString** %name, align 8
  %buffer43 = getelementptr inbounds %struct.sVString, %struct.sVString* %32, i32 0, i32 2
  %33 = load i8*, i8** %buffer43, align 8
  %call44 = call %struct.sIniconfSubparser* @maySwitchLanguage(i8* %33, i8* null, i8* null)
  store %struct.sIniconfSubparser* %call44, %struct.sIniconfSubparser** %sub, align 8
  br label %if.end45

if.end45:                                         ; preds = %if.then42, %while.end
  %34 = load %struct.sIniconfSubparser*, %struct.sIniconfSubparser** %sub, align 8
  %tobool46 = icmp ne %struct.sIniconfSubparser* %34, null
  br i1 %tobool46, label %if.then47, label %if.end49

if.then47:                                        ; preds = %if.end45
  %35 = load %struct.sIniconfSubparser*, %struct.sIniconfSubparser** %sub, align 8
  %36 = bitcast %struct.sIniconfSubparser* %35 to %struct.sSubparser*
  call void @enterSubparser(%struct.sSubparser* %36)
  %37 = load %struct.sIniconfSubparser*, %struct.sIniconfSubparser** %sub, align 8
  %newDataNotify = getelementptr inbounds %struct.sIniconfSubparser, %struct.sIniconfSubparser* %37, i32 0, i32 2
  %38 = load void (%struct.sIniconfSubparser*, i8*, i8*, i8*)*, void (%struct.sIniconfSubparser*, i8*, i8*, i8*)** %newDataNotify, align 8
  %39 = load %struct.sIniconfSubparser*, %struct.sIniconfSubparser** %sub, align 8
  %40 = load %struct.sVString*, %struct.sVString** %name, align 8
  %buffer48 = getelementptr inbounds %struct.sVString, %struct.sVString* %40, i32 0, i32 2
  %41 = load i8*, i8** %buffer48, align 8
  call void %38(%struct.sIniconfSubparser* %39, i8* %41, i8* null, i8* null)
  call void @leaveSubparser()
  br label %if.end49

if.end49:                                         ; preds = %if.then47, %if.end45
  %42 = load %struct.sVString*, %struct.sVString** %scope, align 8
  %43 = load %struct.sVString*, %struct.sVString** %name, align 8
  call void @vStringCopy(%struct.sVString* %42, %struct.sVString* %43)
  br label %do.body

do.body:                                          ; preds = %if.end49
  %44 = load %struct.sVString*, %struct.sVString** %name, align 8
  store %struct.sVString* %44, %struct.sVString** %vStringClear_s, align 8
  %45 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %45, i32 0, i32 0
  store i64 0, i64* %length, align 8
  %46 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %buffer50 = getelementptr inbounds %struct.sVString, %struct.sVString* %46, i32 0, i32 2
  %47 = load i8*, i8** %buffer50, align 8
  %arrayidx = getelementptr inbounds i8, i8* %47, i64 0
  store i8 0, i8* %arrayidx, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %while.cond

if.end51:                                         ; preds = %if.end26
  br label %while.cond52

while.cond52:                                     ; preds = %if.end158, %if.end51
  %48 = load i8*, i8** %cp, align 8
  %49 = load i8, i8* %48, align 1
  %conv53 = zext i8 %49 to i32
  %cmp54 = icmp ne i32 %conv53, 0
  br i1 %cmp54, label %while.body56, label %while.end159

while.body56:                                     ; preds = %while.cond52
  %50 = load i8, i8* %possible, align 1
  %tobool57 = trunc i8 %50 to i1
  br i1 %tobool57, label %land.lhs.true59, label %if.else

land.lhs.true59:                                  ; preds = %while.body56
  %51 = load i8*, i8** %cp, align 8
  %52 = load i8, i8* %51, align 1
  %conv60 = zext i8 %52 to i32
  %call61 = call zeroext i1 @isIdentifier(i32 %conv60)
  br i1 %call61, label %if.then63, label %if.else

if.then63:                                        ; preds = %land.lhs.true59
  br label %while.cond64

while.cond64:                                     ; preds = %while.body67, %if.then63
  %53 = load i8*, i8** %cp, align 8
  %54 = load i8, i8* %53, align 1
  %conv65 = zext i8 %54 to i32
  %call66 = call zeroext i1 @isIdentifier(i32 %conv65)
  br i1 %call66, label %while.body67, label %while.end70

while.body67:                                     ; preds = %while.cond64
  %55 = load %struct.sVString*, %struct.sVString** %name, align 8
  %56 = load i8*, i8** %cp, align 8
  %57 = load i8, i8* %56, align 1
  %conv68 = zext i8 %57 to i32
  call void @vStringPut(%struct.sVString* %55, i32 %conv68)
  %58 = load i8*, i8** %cp, align 8
  %incdec.ptr69 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %incdec.ptr69, i8** %cp, align 8
  br label %while.cond64

while.end70:                                      ; preds = %while.cond64
  %59 = load %struct.sVString*, %struct.sVString** %name, align 8
  call void @vStringStripTrailing(%struct.sVString* %59)
  br label %while.cond71

while.cond71:                                     ; preds = %while.body75, %while.end70
  %60 = load i8*, i8** %cp, align 8
  %61 = load i8, i8* %60, align 1
  %conv72 = zext i8 %61 to i32
  %call73 = call i32 @isspace(i32 %conv72) #3
  %tobool74 = icmp ne i32 %call73, 0
  br i1 %tobool74, label %while.body75, label %while.end77

while.body75:                                     ; preds = %while.cond71
  %62 = load i8*, i8** %cp, align 8
  %incdec.ptr76 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %incdec.ptr76, i8** %cp, align 8
  br label %while.cond71

while.end77:                                      ; preds = %while.cond71
  %63 = load i8*, i8** %cp, align 8
  %64 = load i8, i8* %63, align 1
  %conv78 = zext i8 %64 to i32
  %cmp79 = icmp eq i32 %conv78, 61
  br i1 %cmp79, label %if.then85, label %lor.lhs.false81

lor.lhs.false81:                                  ; preds = %while.end77
  %65 = load i8*, i8** %cp, align 8
  %66 = load i8, i8* %65, align 1
  %conv82 = zext i8 %66 to i32
  %cmp83 = icmp eq i32 %conv82, 58
  br i1 %cmp83, label %if.then85, label %if.end141

if.then85:                                        ; preds = %lor.lhs.false81, %while.end77
  %67 = load i8*, i8** %cp, align 8
  %incdec.ptr86 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %incdec.ptr86, i8** %cp, align 8
  br label %while.cond87

while.cond87:                                     ; preds = %while.body91, %if.then85
  %68 = load i8*, i8** %cp, align 8
  %69 = load i8, i8* %68, align 1
  %conv88 = zext i8 %69 to i32
  %call89 = call i32 @isspace(i32 %conv88) #3
  %tobool90 = icmp ne i32 %call89, 0
  br i1 %tobool90, label %while.body91, label %while.end93

while.body91:                                     ; preds = %while.cond87
  %70 = load i8*, i8** %cp, align 8
  %incdec.ptr92 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %incdec.ptr92, i8** %cp, align 8
  br label %while.cond87

while.end93:                                      ; preds = %while.cond87
  br label %while.cond94

while.cond94:                                     ; preds = %while.body97, %while.end93
  %71 = load i8*, i8** %cp, align 8
  %72 = load i8, i8* %71, align 1
  %conv95 = zext i8 %72 to i32
  %call96 = call zeroext i1 @isValue(i32 %conv95)
  br i1 %call96, label %while.body97, label %while.end100

while.body97:                                     ; preds = %while.cond94
  %73 = load %struct.sVString*, %struct.sVString** %val, align 8
  %74 = load i8*, i8** %cp, align 8
  %75 = load i8, i8* %74, align 1
  %conv98 = zext i8 %75 to i32
  call void @vStringPut(%struct.sVString* %73, i32 %conv98)
  %76 = load i8*, i8** %cp, align 8
  %incdec.ptr99 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %incdec.ptr99, i8** %cp, align 8
  br label %while.cond94

while.end100:                                     ; preds = %while.cond94
  %77 = load %struct.sVString*, %struct.sVString** %val, align 8
  call void @vStringStripTrailing(%struct.sVString* %77)
  %78 = load %struct.sVString*, %struct.sVString** %scope, align 8
  %length101 = getelementptr inbounds %struct.sVString, %struct.sVString* %78, i32 0, i32 0
  %79 = load i64, i64* %length101, align 8
  %cmp102 = icmp ugt i64 %79, 0
  br i1 %cmp102, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.end100
  %80 = load %struct.sVString*, %struct.sVString** %scope, align 8
  %buffer104 = getelementptr inbounds %struct.sVString, %struct.sVString* %80, i32 0, i32 2
  %81 = load i8*, i8** %buffer104, align 8
  br label %cond.end

cond.false:                                       ; preds = %while.end100
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %81, %cond.true ], [ null, %cond.false ]
  %82 = load %struct.sVString*, %struct.sVString** %name, align 8
  %buffer105 = getelementptr inbounds %struct.sVString, %struct.sVString* %82, i32 0, i32 2
  %83 = load i8*, i8** %buffer105, align 8
  %84 = load %struct.sVString*, %struct.sVString** %val, align 8
  %buffer106 = getelementptr inbounds %struct.sVString, %struct.sVString* %84, i32 0, i32 2
  %85 = load i8*, i8** %buffer106, align 8
  call void @makeIniconfTagMaybe(i8* %cond, i8* %83, i8* %85, i32* %sectionCorkIndex)
  %86 = load %struct.sIniconfSubparser*, %struct.sIniconfSubparser** %sub, align 8
  %tobool107 = icmp ne %struct.sIniconfSubparser* %86, null
  br i1 %tobool107, label %if.end120, label %if.then108

if.then108:                                       ; preds = %cond.end
  %87 = load %struct.sVString*, %struct.sVString** %scope, align 8
  %length109 = getelementptr inbounds %struct.sVString, %struct.sVString* %87, i32 0, i32 0
  %88 = load i64, i64* %length109, align 8
  %cmp110 = icmp ugt i64 %88, 0
  br i1 %cmp110, label %cond.true112, label %cond.false114

cond.true112:                                     ; preds = %if.then108
  %89 = load %struct.sVString*, %struct.sVString** %scope, align 8
  %buffer113 = getelementptr inbounds %struct.sVString, %struct.sVString* %89, i32 0, i32 2
  %90 = load i8*, i8** %buffer113, align 8
  br label %cond.end115

cond.false114:                                    ; preds = %if.then108
  br label %cond.end115

cond.end115:                                      ; preds = %cond.false114, %cond.true112
  %cond116 = phi i8* [ %90, %cond.true112 ], [ null, %cond.false114 ]
  %91 = load %struct.sVString*, %struct.sVString** %name, align 8
  %buffer117 = getelementptr inbounds %struct.sVString, %struct.sVString* %91, i32 0, i32 2
  %92 = load i8*, i8** %buffer117, align 8
  %93 = load %struct.sVString*, %struct.sVString** %val, align 8
  %buffer118 = getelementptr inbounds %struct.sVString, %struct.sVString* %93, i32 0, i32 2
  %94 = load i8*, i8** %buffer118, align 8
  %call119 = call %struct.sIniconfSubparser* @maySwitchLanguage(i8* %cond116, i8* %92, i8* %94)
  store %struct.sIniconfSubparser* %call119, %struct.sIniconfSubparser** %sub, align 8
  br label %if.end120

if.end120:                                        ; preds = %cond.end115, %cond.end
  %95 = load %struct.sIniconfSubparser*, %struct.sIniconfSubparser** %sub, align 8
  %tobool121 = icmp ne %struct.sIniconfSubparser* %95, null
  br i1 %tobool121, label %if.then122, label %if.end134

if.then122:                                       ; preds = %if.end120
  %96 = load %struct.sIniconfSubparser*, %struct.sIniconfSubparser** %sub, align 8
  %97 = bitcast %struct.sIniconfSubparser* %96 to %struct.sSubparser*
  call void @enterSubparser(%struct.sSubparser* %97)
  %98 = load %struct.sIniconfSubparser*, %struct.sIniconfSubparser** %sub, align 8
  %newDataNotify123 = getelementptr inbounds %struct.sIniconfSubparser, %struct.sIniconfSubparser* %98, i32 0, i32 2
  %99 = load void (%struct.sIniconfSubparser*, i8*, i8*, i8*)*, void (%struct.sIniconfSubparser*, i8*, i8*, i8*)** %newDataNotify123, align 8
  %100 = load %struct.sIniconfSubparser*, %struct.sIniconfSubparser** %sub, align 8
  %101 = load %struct.sVString*, %struct.sVString** %scope, align 8
  %length124 = getelementptr inbounds %struct.sVString, %struct.sVString* %101, i32 0, i32 0
  %102 = load i64, i64* %length124, align 8
  %cmp125 = icmp ugt i64 %102, 0
  br i1 %cmp125, label %cond.true127, label %cond.false129

cond.true127:                                     ; preds = %if.then122
  %103 = load %struct.sVString*, %struct.sVString** %scope, align 8
  %buffer128 = getelementptr inbounds %struct.sVString, %struct.sVString* %103, i32 0, i32 2
  %104 = load i8*, i8** %buffer128, align 8
  br label %cond.end130

cond.false129:                                    ; preds = %if.then122
  br label %cond.end130

cond.end130:                                      ; preds = %cond.false129, %cond.true127
  %cond131 = phi i8* [ %104, %cond.true127 ], [ null, %cond.false129 ]
  %105 = load %struct.sVString*, %struct.sVString** %name, align 8
  %buffer132 = getelementptr inbounds %struct.sVString, %struct.sVString* %105, i32 0, i32 2
  %106 = load i8*, i8** %buffer132, align 8
  %107 = load %struct.sVString*, %struct.sVString** %val, align 8
  %buffer133 = getelementptr inbounds %struct.sVString, %struct.sVString* %107, i32 0, i32 2
  %108 = load i8*, i8** %buffer133, align 8
  call void %99(%struct.sIniconfSubparser* %100, i8* %cond131, i8* %106, i8* %108)
  call void @leaveSubparser()
  br label %if.end134

if.end134:                                        ; preds = %cond.end130, %if.end120
  br label %do.body135

do.body135:                                       ; preds = %if.end134
  %109 = load %struct.sVString*, %struct.sVString** %val, align 8
  store %struct.sVString* %109, %struct.sVString** %vStringClear_s136, align 8
  %110 = load %struct.sVString*, %struct.sVString** %vStringClear_s136, align 8
  %length137 = getelementptr inbounds %struct.sVString, %struct.sVString* %110, i32 0, i32 0
  store i64 0, i64* %length137, align 8
  %111 = load %struct.sVString*, %struct.sVString** %vStringClear_s136, align 8
  %buffer138 = getelementptr inbounds %struct.sVString, %struct.sVString* %111, i32 0, i32 2
  %112 = load i8*, i8** %buffer138, align 8
  %arrayidx139 = getelementptr inbounds i8, i8* %112, i64 0
  store i8 0, i8* %arrayidx139, align 1
  br label %do.end140

do.end140:                                        ; preds = %do.body135
  br label %if.end141

if.end141:                                        ; preds = %do.end140, %lor.lhs.false81
  br label %do.body142

do.body142:                                       ; preds = %if.end141
  %113 = load %struct.sVString*, %struct.sVString** %name, align 8
  store %struct.sVString* %113, %struct.sVString** %vStringClear_s143, align 8
  %114 = load %struct.sVString*, %struct.sVString** %vStringClear_s143, align 8
  %length144 = getelementptr inbounds %struct.sVString, %struct.sVString* %114, i32 0, i32 0
  store i64 0, i64* %length144, align 8
  %115 = load %struct.sVString*, %struct.sVString** %vStringClear_s143, align 8
  %buffer145 = getelementptr inbounds %struct.sVString, %struct.sVString* %115, i32 0, i32 2
  %116 = load i8*, i8** %buffer145, align 8
  %arrayidx146 = getelementptr inbounds i8, i8* %116, i64 0
  store i8 0, i8* %arrayidx146, align 1
  br label %do.end147

do.end147:                                        ; preds = %do.body142
  br label %if.end152

if.else:                                          ; preds = %land.lhs.true59, %while.body56
  %117 = load i8*, i8** %cp, align 8
  %118 = load i8, i8* %117, align 1
  %conv148 = zext i8 %118 to i32
  %call149 = call i32 @isspace(i32 %conv148) #3
  %tobool150 = icmp ne i32 %call149, 0
  %lnot = xor i1 %tobool150, true
  %lnot151 = xor i1 %lnot, true
  %frombool = zext i1 %lnot151 to i8
  store i8 %frombool, i8* %possible, align 1
  br label %if.end152

if.end152:                                        ; preds = %if.else, %do.end147
  %119 = load i8*, i8** %cp, align 8
  %120 = load i8, i8* %119, align 1
  %conv153 = zext i8 %120 to i32
  %cmp154 = icmp ne i32 %conv153, 0
  br i1 %cmp154, label %if.then156, label %if.end158

if.then156:                                       ; preds = %if.end152
  %121 = load i8*, i8** %cp, align 8
  %incdec.ptr157 = getelementptr inbounds i8, i8* %121, i32 1
  store i8* %incdec.ptr157, i8** %cp, align 8
  br label %if.end158

if.end158:                                        ; preds = %if.then156, %if.end152
  br label %while.cond52

while.end159:                                     ; preds = %while.cond52
  br label %while.cond

while.end160:                                     ; preds = %while.cond
  %122 = load %struct.sVString*, %struct.sVString** %name, align 8
  call void @vStringDelete(%struct.sVString* %122)
  %123 = load %struct.sVString*, %struct.sVString** %scope, align 8
  call void @vStringDelete(%struct.sVString* %123)
  %124 = load %struct.sVString*, %struct.sVString** %val, align 8
  call void @vStringDelete(%struct.sVString* %124)
  ret void
}

declare %struct.sVString* @vStringNew() #1

declare %struct.sSubparser* @getSubparserRunningBaseparser() #1

declare void @chooseExclusiveSubparser(%struct.sSubparser*, i8*) #1

declare i8* @readLineFromInputFile() #1

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

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @makeIniconfTagMaybe(i8* %section, i8* %key, i8* %value, i32* %index) #0 {
entry:
  %section.addr = alloca i8*, align 8
  %key.addr = alloca i8*, align 8
  %value.addr = alloca i8*, align 8
  %index.addr = alloca i32*, align 8
  %e = alloca %struct.sTagEntryInfo, align 8
  %last = alloca %struct.sTagEntryInfo*, align 8
  store i8* %section, i8** %section.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  store i32* %index, i32** %index.addr, align 8
  %call = call i32 @getInputLanguage()
  %call1 = call zeroext i1 @isLanguageEnabled(i32 %call)
  br i1 %call1, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end13

if.end:                                           ; preds = %entry
  %0 = load i8*, i8** %key.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %1 = load i8*, i8** %key.addr, align 8
  call void @initTagEntry(%struct.sTagEntryInfo* %e, i8* %1, i32 1)
  %2 = load i32*, i32** %index.addr, align 8
  %3 = load i32, i32* %2, align 4
  %extensionFields = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %e, i32 0, i32 11
  %scopeIndex = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields, i32 0, i32 7
  store i32 %3, i32* %scopeIndex, align 8
  %call3 = call i32 @makeTagEntry(%struct.sTagEntryInfo* %e)
  br label %if.end13

if.else:                                          ; preds = %if.end
  %4 = load i32*, i32** %index.addr, align 8
  %5 = load i32, i32* %4, align 4
  %cmp = icmp ne i32 %5, 0
  br i1 %cmp, label %if.then4, label %if.end11

if.then4:                                         ; preds = %if.else
  %6 = load i32*, i32** %index.addr, align 8
  %7 = load i32, i32* %6, align 4
  %call5 = call %struct.sTagEntryInfo* @getEntryInCorkQueue(i32 %7)
  store %struct.sTagEntryInfo* %call5, %struct.sTagEntryInfo** %last, align 8
  %8 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %last, align 8
  %tobool6 = icmp ne %struct.sTagEntryInfo* %8, null
  br i1 %tobool6, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.then4
  %call8 = call i64 @getInputLineNumber()
  %9 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %last, align 8
  %extensionFields9 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %9, i32 0, i32 11
  %endLine = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields9, i32 0, i32 11
  store i64 %call8, i64* %endLine, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.then4
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %if.else
  %10 = load i8*, i8** %section.addr, align 8
  call void @initTagEntry(%struct.sTagEntryInfo* %e, i8* %10, i32 0)
  %call12 = call i32 @makeTagEntry(%struct.sTagEntryInfo* %e)
  %11 = load i32*, i32** %index.addr, align 8
  store i32 %call12, i32* %11, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then, %if.end11, %if.then2
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct.sIniconfSubparser* @maySwitchLanguage(i8* %section, i8* %key, i8* %value) #0 {
entry:
  %section.addr = alloca i8*, align 8
  %key.addr = alloca i8*, align 8
  %value.addr = alloca i8*, align 8
  %iniconf_subparser = alloca %struct.sIniconfSubparser*, align 8
  %sub = alloca %struct.sSubparser*, align 8
  %s = alloca %struct.sIniconfSubparser*, align 8
  %r = alloca i8, align 1
  store i8* %section, i8** %section.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  store %struct.sIniconfSubparser* null, %struct.sIniconfSubparser** %iniconf_subparser, align 8
  store %struct.sSubparser* null, %struct.sSubparser** %sub, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end6, %entry
  %0 = load %struct.sSubparser*, %struct.sSubparser** %sub, align 8
  %call = call %struct.sSubparser* @getNextSubparser(%struct.sSubparser* %0, i1 zeroext false)
  store %struct.sSubparser* %call, %struct.sSubparser** %sub, align 8
  %cmp = icmp ne %struct.sSubparser* %call, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.sSubparser*, %struct.sSubparser** %sub, align 8
  %2 = bitcast %struct.sSubparser* %1 to %struct.sIniconfSubparser*
  store %struct.sIniconfSubparser* %2, %struct.sIniconfSubparser** %s, align 8
  %3 = load %struct.sSubparser*, %struct.sSubparser** %sub, align 8
  %direction = getelementptr inbounds %struct.sSubparser, %struct.sSubparser* %3, i32 0, i32 4
  %4 = load i32, i32* %direction, align 4
  %and = and i32 %4, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.lhs.true, label %if.end6

land.lhs.true:                                    ; preds = %while.body
  %5 = load %struct.sIniconfSubparser*, %struct.sIniconfSubparser** %s, align 8
  %probeLanguage = getelementptr inbounds %struct.sIniconfSubparser, %struct.sIniconfSubparser* %5, i32 0, i32 1
  %6 = load i1 (i8*, i8*, i8*)*, i1 (i8*, i8*, i8*)** %probeLanguage, align 8
  %tobool1 = icmp ne i1 (i8*, i8*, i8*)* %6, null
  br i1 %tobool1, label %if.then, label %if.end6

if.then:                                          ; preds = %land.lhs.true
  %7 = load %struct.sIniconfSubparser*, %struct.sIniconfSubparser** %s, align 8
  %8 = bitcast %struct.sIniconfSubparser* %7 to %struct.sSubparser*
  call void @enterSubparser(%struct.sSubparser* %8)
  %9 = load %struct.sIniconfSubparser*, %struct.sIniconfSubparser** %s, align 8
  %probeLanguage2 = getelementptr inbounds %struct.sIniconfSubparser, %struct.sIniconfSubparser* %9, i32 0, i32 1
  %10 = load i1 (i8*, i8*, i8*)*, i1 (i8*, i8*, i8*)** %probeLanguage2, align 8
  %11 = load i8*, i8** %section.addr, align 8
  %12 = load i8*, i8** %key.addr, align 8
  %13 = load i8*, i8** %value.addr, align 8
  %call3 = call zeroext i1 %10(i8* %11, i8* %12, i8* %13)
  %frombool = zext i1 %call3 to i8
  store i8 %frombool, i8* %r, align 1
  call void @leaveSubparser()
  %14 = load i8, i8* %r, align 1
  %tobool4 = trunc i8 %14 to i1
  br i1 %tobool4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  %15 = load %struct.sIniconfSubparser*, %struct.sIniconfSubparser** %s, align 8
  store %struct.sIniconfSubparser* %15, %struct.sIniconfSubparser** %iniconf_subparser, align 8
  %16 = load %struct.sSubparser*, %struct.sSubparser** %sub, align 8
  call void @chooseExclusiveSubparser(%struct.sSubparser* %16, i8* null)
  br label %while.end

if.end:                                           ; preds = %if.then
  br label %if.end6

if.end6:                                          ; preds = %if.end, %land.lhs.true, %while.body
  br label %while.cond

while.end:                                        ; preds = %if.then5, %while.cond
  %17 = load %struct.sIniconfSubparser*, %struct.sIniconfSubparser** %iniconf_subparser, align 8
  ret %struct.sIniconfSubparser* %17
}

declare void @enterSubparser(%struct.sSubparser*) #1

declare void @leaveSubparser() #1

declare void @vStringCopy(%struct.sVString*, %struct.sVString*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @isIdentifier(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %call = call i32 @isalnum(i32 %0) #3
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %c.addr, align 4
  %call1 = call i32 @isspace(i32 %1) #3
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %2 = load i32, i32* %c.addr, align 4
  %cmp = icmp eq i32 %2, 95
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %entry
  %3 = phi i1 [ true, %lor.lhs.false ], [ true, %entry ], [ %cmp, %lor.rhs ]
  ret i1 %3
}

declare void @vStringStripTrailing(%struct.sVString*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @isValue(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %cmp = icmp ne i32 %0, 0
  ret i1 %cmp
}

declare void @vStringDelete(%struct.sVString*) #1

declare void @vStringResize(%struct.sVString*, i64) #1

declare zeroext i1 @isLanguageEnabled(i32) #1

declare i32 @getInputLanguage() #1

declare void @initTagEntry(%struct.sTagEntryInfo*, i8*, i32) #1

declare i32 @makeTagEntry(%struct.sTagEntryInfo*) #1

declare %struct.sTagEntryInfo* @getEntryInCorkQueue(i32) #1

declare i64 @getInputLineNumber() #1

declare %struct.sSubparser* @getNextSubparser(%struct.sSubparser*, i1 zeroext) #1

; Function Attrs: nounwind readonly
declare i32 @isalnum(i32) #2

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 10.0.0 (https://github.com/holzschu/clang.git 0cfc630fbdb62e96720b611a57123ef3eb13e297) (https://github.com/holzschu/llvm.git 0d8a71e39b28502c24718f7e74b5acbcfe36dfe0)"}
