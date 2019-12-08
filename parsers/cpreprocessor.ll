; ModuleID = 'cpreprocessor.c'
source_filename = "cpreprocessor.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-ios11.0.0"

%struct.sCppState = type { i32, i32, i32*, i32, i32*, i32, i8, i8, i8, i8, i8, i32, i32, i8, i32, i32, i32, %struct.sDirective }
%struct.sDirective = type { i32, i8, %struct.sVString*, i32, [20 x %struct.sConditionalInfo] }
%struct.sVString = type { i64, i64, i8* }
%struct.sConditionalInfo = type { i8, i8, i8, i8, i32 }
%struct.sHashTable = type opaque
%struct.sKindDefinition = type { i8, i8, i8*, i8*, i8, i32, %struct.sRoleDesc*, %struct.sScopeSeparator*, i32, i32, i32, %struct.sKindDefinition*, %struct.sKindDefinition* }
%struct.sRoleDesc = type { i8, i8*, i8* }
%struct.sScopeSeparator = type { i32, i8* }
%struct.sParameterHandlerTable = type { i8*, i8*, void (i32, i8*, i8*)* }
%struct.sTagEntryInfo = type { i8, i64, i8*, i32, %struct._MIOPos, i32, i8*, i8*, i32, [2 x i8], i8*, %struct.anon, i32, [5 x %struct.sTagField], %struct.sPtrArray*, i32, i8*, i64 }
%struct._MIOPos = type { i32, %union.anon.0 }
%union.anon.0 = type { i64 }
%struct.anon = type { i8*, i8*, i8*, i8*, i32, i32, i8*, i32, i8*, [2 x i8*], i32, i64 }
%struct.sTagField = type { i32, i8*, i8 }
%struct.sPtrArray = type opaque
%struct.sCppMacroInfo = type { i8, %struct.sCppMacroReplacementPartInfo* }
%struct.sCppMacroReplacementPartInfo = type { i32, i32, %struct.sVString*, %struct.sCppMacroReplacementPartInfo* }
%struct.sParserDefinition = type { i8*, %struct.sKindDefinition*, i32, i8**, i8**, i8**, void (i32)*, void (i32, i1)*, void ()*, i32 (i32)*, i8* (%struct._MIO*, i32*, i32)**, i32, i8, i8, i8, i8, %struct.tagRegexTable*, i32, %struct.keywordTable*, i32, %struct.sTagXpathTableTable*, i32, i8, %struct.sFieldDefinition*, i32, %struct.sXtagDefinition*, i32, %struct.sParserDependency*, i32, %struct.sParameterHandlerTable*, i32, %struct.sXpathFileSpec*, i32, i32, i8 }
%struct._MIO = type opaque
%struct.tagRegexTable = type { i8*, i8*, i8*, i8*, i8*, i8 }
%struct.keywordTable = type { i8*, i32 }
%struct.sTagXpathTableTable = type { %struct.sTagXpathTable*, i32 }
%struct.sTagXpathTable = type { i8*, i32, %union.anon, i8* }
%union.anon = type { %struct.sTagXpathMakeTagSpec }
%struct.sTagXpathMakeTagSpec = type { i32, i32, void (i8*, %struct.sTagXpathMakeTagSpec*, %struct.sTagEntryInfo*, i8*)* }
%struct.sFieldDefinition = type { i8, i8*, i8*, i8, [5 x i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)*], i1 (%struct.sTagEntryInfo*)*, i32, i32 }
%struct.sXtagDefinition = type { i8, i8, i8*, i8*, i1 (%struct.sXtagDefinition*)*, i1 (%struct.sXtagDefinition*)*, i32 }
%struct.sParserDependency = type { i32, i8*, i8* }
%struct.sXpathFileSpec = type { i8*, i8*, i8*, i8*, i8*, i8* }
%struct.sTrashBox = type opaque

@externalParserBlockNestLevel = internal global i32 0, align 4
@BraceFormat = internal global i8 0, align 1
@Cpp = internal global %struct.sCppState { i32 -2, i32 -2, i32* null, i32 0, i32* null, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, i8 0, i32 1, i32 0, i32 1, %struct.sDirective zeroinitializer }, align 8
@defineMacroTable = internal global %struct.sHashTable* null, align 8
@.str = private unnamed_addr constant [14 x i8] c"CPreProcessor\00", align 1
@CPreProKinds = internal global [2 x %struct.sKindDefinition] [%struct.sKindDefinition { i8 1, i8 100, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i32 0, i32 0), i8 0, i32 1, %struct.sRoleDesc* getelementptr inbounds ([1 x %struct.sRoleDesc], [1 x %struct.sRoleDesc]* @CPREPROMacroRoles, i32 0, i32 0), %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 104, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i32 0, i32 0), i8 1, i32 2, %struct.sRoleDesc* getelementptr inbounds ([2 x %struct.sRoleDesc], [2 x %struct.sRoleDesc]* @CPREPROHeaderRoles, i32 0, i32 0), %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }], align 8
@CpreProParameterHandlerTable = internal global [3 x %struct.sParameterHandlerTable] [%struct.sParameterHandlerTable { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.21, i32 0, i32 0), void (i32, i8*, i8*)* @CpreProSetIf0 }, %struct.sParameterHandlerTable { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.23, i32 0, i32 0), void (i32, i8*, i8*)* @CpreProInstallIgnoreToken }, %struct.sParameterHandlerTable { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.24, i32 0, i32 0), void (i32, i8*, i8*)* @CpreProInstallMacroToken }], align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"DHOB\00", align 1
@signature = internal global %struct.sVString* null, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"define\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"include\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"undef\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"if\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"elif\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"else\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"endif\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"pragma\00", align 1
@doesExaminCodeWithInIf0Branch = internal global i8 0, align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"weak\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"macro\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"macro definitions\00", align 1
@CPREPROMacroRoles = internal global [1 x %struct.sRoleDesc] [%struct.sRoleDesc { i8 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0) }], align 8
@.str.13 = private unnamed_addr constant [7 x i8] c"header\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"included header files\00", align 1
@CPREPROHeaderRoles = internal global [2 x %struct.sRoleDesc] [%struct.sRoleDesc { i8 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0) }, %struct.sRoleDesc { i8 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0) }], align 8
@.str.15 = private unnamed_addr constant [10 x i8] c"undefined\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"system\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"system header\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"local\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"local header\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"if0\00", align 1
@.str.21 = private unnamed_addr constant [53 x i8] c"examine code within \22#if 0\22 branch (true or [false])\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"ignore\00", align 1
@.str.23 = private unnamed_addr constant [32 x i8] c"a token to be specially handled\00", align 1
@.str.24 = private unnamed_addr constant [37 x i8] c"define replacement for an identifier\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"parameter\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"    clearing list\0A\00", align 1
@.str.27 = private unnamed_addr constant [22 x i8] c"    ignore token: %s\0A\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"__VA_ARGS__\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"...\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @cppPushExternalParserBlock() #0 {
entry:
  %0 = load i32, i32* @externalParserBlockNestLevel, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @externalParserBlockNestLevel, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @cppPopExternalParserBlock() #0 {
entry:
  %0 = load i32, i32* @externalParserBlockNestLevel, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* @externalParserBlockNestLevel, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @cppIsBraceFormat() #0 {
entry:
  %0 = load i8, i8* @BraceFormat, align 1
  %tobool = trunc i8 %0 to i1
  ret i1 %tobool
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @cppGetDirectiveNestLevel() #0 {
entry:
  %0 = load i32, i32* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 17, i32 3), align 8
  ret i32 %0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @cppInit(i1 zeroext %state, i1 zeroext %hasAtLiteralStrings, i1 zeroext %hasCxxRawLiteralStrings, i1 zeroext %hasSingleQuoteLiteralNumbers, i32 %defineMacroKindIndex, i32 %macroUndefRoleIndex, i32 %headerKindIndex, i32 %headerSystemRoleIndex, i32 %headerLocalRoleIndex) #0 {
entry:
  %state.addr = alloca i8, align 1
  %hasAtLiteralStrings.addr = alloca i8, align 1
  %hasCxxRawLiteralStrings.addr = alloca i8, align 1
  %hasSingleQuoteLiteralNumbers.addr = alloca i8, align 1
  %defineMacroKindIndex.addr = alloca i32, align 4
  %macroUndefRoleIndex.addr = alloca i32, align 4
  %headerKindIndex.addr = alloca i32, align 4
  %headerSystemRoleIndex.addr = alloca i32, align 4
  %headerLocalRoleIndex.addr = alloca i32, align 4
  %client = alloca i32, align 4
  %frombool = zext i1 %state to i8
  store i8 %frombool, i8* %state.addr, align 1
  %frombool1 = zext i1 %hasAtLiteralStrings to i8
  store i8 %frombool1, i8* %hasAtLiteralStrings.addr, align 1
  %frombool2 = zext i1 %hasCxxRawLiteralStrings to i8
  store i8 %frombool2, i8* %hasCxxRawLiteralStrings.addr, align 1
  %frombool3 = zext i1 %hasSingleQuoteLiteralNumbers to i8
  store i8 %frombool3, i8* %hasSingleQuoteLiteralNumbers.addr, align 1
  store i32 %defineMacroKindIndex, i32* %defineMacroKindIndex.addr, align 4
  store i32 %macroUndefRoleIndex, i32* %macroUndefRoleIndex.addr, align 4
  store i32 %headerKindIndex, i32* %headerKindIndex.addr, align 4
  store i32 %headerSystemRoleIndex, i32* %headerSystemRoleIndex.addr, align 4
  store i32 %headerLocalRoleIndex, i32* %headerLocalRoleIndex.addr, align 4
  %call = call i32 @getInputLanguage()
  store i32 %call, i32* %client, align 4
  %0 = load i32, i32* %client, align 4
  %1 = load i8, i8* %state.addr, align 1
  %tobool = trunc i8 %1 to i1
  %2 = load i8, i8* %hasAtLiteralStrings.addr, align 1
  %tobool4 = trunc i8 %2 to i1
  %3 = load i8, i8* %hasCxxRawLiteralStrings.addr, align 1
  %tobool5 = trunc i8 %3 to i1
  %4 = load i8, i8* %hasSingleQuoteLiteralNumbers.addr, align 1
  %tobool6 = trunc i8 %4 to i1
  %5 = load i32, i32* %defineMacroKindIndex.addr, align 4
  %6 = load i32, i32* %macroUndefRoleIndex.addr, align 4
  %7 = load i32, i32* %headerKindIndex.addr, align 4
  %8 = load i32, i32* %headerSystemRoleIndex.addr, align 4
  %9 = load i32, i32* %headerLocalRoleIndex.addr, align 4
  call void @cppInitCommon(i32 %0, i1 zeroext %tobool, i1 zeroext %tobool4, i1 zeroext %tobool5, i1 zeroext %tobool6, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9)
  ret void
}

declare i32 @getInputLanguage() #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @cppInitCommon(i32 %clientLang, i1 zeroext %state, i1 zeroext %hasAtLiteralStrings, i1 zeroext %hasCxxRawLiteralStrings, i1 zeroext %hasSingleQuoteLiteralNumbers, i32 %defineMacroKindIndex, i32 %macroUndefRoleIndex, i32 %headerKindIndex, i32 %headerSystemRoleIndex, i32 %headerLocalRoleIndex) #0 {
entry:
  %clientLang.addr = alloca i32, align 4
  %state.addr = alloca i8, align 1
  %hasAtLiteralStrings.addr = alloca i8, align 1
  %hasCxxRawLiteralStrings.addr = alloca i8, align 1
  %hasSingleQuoteLiteralNumbers.addr = alloca i8, align 1
  %defineMacroKindIndex.addr = alloca i32, align 4
  %macroUndefRoleIndex.addr = alloca i32, align 4
  %headerKindIndex.addr = alloca i32, align 4
  %headerSystemRoleIndex.addr = alloca i32, align 4
  %headerLocalRoleIndex.addr = alloca i32, align 4
  %t = alloca i32, align 4
  store i32 %clientLang, i32* %clientLang.addr, align 4
  %frombool = zext i1 %state to i8
  store i8 %frombool, i8* %state.addr, align 1
  %frombool1 = zext i1 %hasAtLiteralStrings to i8
  store i8 %frombool1, i8* %hasAtLiteralStrings.addr, align 1
  %frombool2 = zext i1 %hasCxxRawLiteralStrings to i8
  store i8 %frombool2, i8* %hasCxxRawLiteralStrings.addr, align 1
  %frombool3 = zext i1 %hasSingleQuoteLiteralNumbers to i8
  store i8 %frombool3, i8* %hasSingleQuoteLiteralNumbers.addr, align 1
  store i32 %defineMacroKindIndex, i32* %defineMacroKindIndex.addr, align 4
  store i32 %macroUndefRoleIndex, i32* %macroUndefRoleIndex.addr, align 4
  store i32 %headerKindIndex, i32* %headerKindIndex.addr, align 4
  store i32 %headerSystemRoleIndex, i32* %headerSystemRoleIndex.addr, align 4
  store i32 %headerLocalRoleIndex, i32* %headerLocalRoleIndex.addr, align 4
  %0 = load i8, i8* %state.addr, align 1
  %tobool = trunc i8 %0 to i1
  %frombool4 = zext i1 %tobool to i8
  store i8 %frombool4, i8* @BraceFormat, align 1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  store i32 0, i32* @externalParserBlockNestLevel, align 4
  %1 = load i32, i32* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 0), align 8
  %cmp = icmp eq i32 %1, -2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  %call = call i32 @getNamedLanguage(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i64 0)
  store i32 %call, i32* %t, align 4
  %2 = load i32, i32* %t, align 4
  call void @initializeParser(i32 %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end
  %3 = load i32, i32* %clientLang.addr, align 4
  store i32 %3, i32* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 1), align 4
  store i32* null, i32** getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 2), align 8
  store i32* null, i32** getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 4), align 8
  store i8 0, i8* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 6), align 4
  %4 = load i8, i8* %hasAtLiteralStrings.addr, align 1
  %tobool5 = trunc i8 %4 to i1
  %frombool6 = zext i1 %tobool5 to i8
  store i8 %frombool6, i8* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 7), align 1
  %5 = load i8, i8* %hasCxxRawLiteralStrings.addr, align 1
  %tobool7 = trunc i8 %5 to i1
  %frombool8 = zext i1 %tobool7 to i8
  store i8 %frombool8, i8* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 8), align 2
  %6 = load i8, i8* %hasSingleQuoteLiteralNumbers.addr, align 1
  %tobool9 = trunc i8 %6 to i1
  %frombool10 = zext i1 %tobool9 to i8
  store i8 %frombool10, i8* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 9), align 1
  %7 = load i32, i32* %defineMacroKindIndex.addr, align 4
  %cmp11 = icmp ne i32 %7, -1
  br i1 %cmp11, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end
  %8 = load i32, i32* %defineMacroKindIndex.addr, align 4
  store i32 %8, i32* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 11), align 4
  store i8 1, i8* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 10), align 8
  %9 = load i32, i32* %macroUndefRoleIndex.addr, align 4
  store i32 %9, i32* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 12), align 8
  br label %if.end13

if.else:                                          ; preds = %if.end
  store i32 0, i32* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 11), align 4
  store i8 0, i8* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 10), align 8
  store i32 0, i32* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 12), align 8
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then12
  %10 = load i32, i32* %headerKindIndex.addr, align 4
  %cmp14 = icmp ne i32 %10, -1
  br i1 %cmp14, label %if.then15, label %if.else16

if.then15:                                        ; preds = %if.end13
  %11 = load i32, i32* %headerKindIndex.addr, align 4
  store i32 %11, i32* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 14), align 8
  store i8 1, i8* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 13), align 4
  %12 = load i32, i32* %headerSystemRoleIndex.addr, align 4
  store i32 %12, i32* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 15), align 4
  %13 = load i32, i32* %headerLocalRoleIndex.addr, align 4
  store i32 %13, i32* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 16), align 8
  br label %if.end17

if.else16:                                        ; preds = %if.end13
  store i32 1, i32* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 14), align 8
  store i8 0, i8* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 13), align 4
  store i32 0, i32* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 15), align 4
  store i32 1, i32* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 16), align 8
  br label %if.end17

if.end17:                                         ; preds = %if.else16, %if.then15
  store i32 0, i32* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 17, i32 0), align 8
  store i8 1, i8* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 17, i32 1), align 4
  store i32 0, i32* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 17, i32 3), align 8
  store i8 0, i8* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 17, i32 4, i64 0, i32 0), align 4
  store i8 0, i8* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 17, i32 4, i64 0, i32 1), align 1
  store i8 0, i8* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 17, i32 4, i64 0, i32 2), align 2
  store i8 0, i8* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 17, i32 4, i64 0, i32 3), align 1
  %14 = load %struct.sVString*, %struct.sVString** getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 17, i32 2), align 8
  %call18 = call %struct.sVString* @vStringNewOrClear(%struct.sVString* %14)
  store %struct.sVString* %call18, %struct.sVString** getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 17, i32 2), align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @cppTerminate() #0 {
entry:
  %0 = load %struct.sVString*, %struct.sVString** getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 17, i32 2), align 8
  %cmp = icmp ne %struct.sVString* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.sVString*, %struct.sVString** getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 17, i32 2), align 8
  call void @vStringDelete(%struct.sVString* %1)
  store %struct.sVString* null, %struct.sVString** getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 17, i32 2), align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32*, i32** getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 2), align 8
  %tobool = icmp ne i32* %2, null
  br i1 %tobool, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  %3 = load i32*, i32** getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 2), align 8
  %4 = bitcast i32* %3 to i8*
  call void @eFree(i8* %4)
  store i32* null, i32** getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 2), align 8
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.end
  store i32 -2, i32* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 1), align 4
  store %struct.sHashTable* null, %struct.sHashTable** @defineMacroTable, align 8
  ret void
}

declare void @vStringDelete(%struct.sVString*) #1

declare void @eFree(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @cppBeginStatement() #0 {
entry:
  store i8 1, i8* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 6), align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @cppEndStatement() #0 {
entry:
  store i8 0, i8* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 6), align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @cppUngetc(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  %tmp = alloca i32*, align 8
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32*, i32** getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 4), align 8
  %tobool = icmp ne i32* %0, null
  br i1 %tobool, label %if.end4, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 2), align 8
  %tobool1 = icmp ne i32* %1, null
  br i1 %tobool1, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  %call = call i8* @eMalloc(i64 32)
  %2 = bitcast i8* %call to i32*
  store i32* %2, i32** getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 2), align 8
  store i32 8, i32* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 3), align 8
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  br label %do.body

do.body:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.body
  %3 = load i32*, i32** getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 2), align 8
  %4 = load i32, i32* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 3), align 8
  %idx.ext = sext i32 %4 to i64
  %add.ptr = getelementptr inbounds i32, i32* %3, i64 %idx.ext
  %add.ptr3 = getelementptr inbounds i32, i32* %add.ptr, i64 -1
  store i32* %add.ptr3, i32** getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 4), align 8
  %5 = load i32, i32* %c.addr, align 4
  %6 = load i32*, i32** getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 4), align 8
  store i32 %5, i32* %6, align 4
  store i32 1, i32* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 5), align 8
  br label %return

if.end4:                                          ; preds = %entry
  br label %do.body5

do.body5:                                         ; preds = %if.end4
  br label %do.end6

do.end6:                                          ; preds = %do.body5
  br label %do.body7

do.body7:                                         ; preds = %do.end6
  br label %do.end8

do.end8:                                          ; preds = %do.body7
  br label %do.body9

do.body9:                                         ; preds = %do.end8
  br label %do.end10

do.end10:                                         ; preds = %do.body9
  br label %do.body11

do.body11:                                        ; preds = %do.end10
  br label %do.end12

do.end12:                                         ; preds = %do.body11
  %7 = load i32*, i32** getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 4), align 8
  %8 = load i32*, i32** getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 2), align 8
  %cmp = icmp eq i32* %7, %8
  br i1 %cmp, label %if.then13, label %if.else

if.then13:                                        ; preds = %do.end12
  %9 = load i32, i32* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 3), align 8
  %add = add nsw i32 %9, 8
  store i32 %add, i32* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 3), align 8
  %10 = load i32, i32* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 3), align 8
  %conv = sext i32 %10 to i64
  %mul = mul i64 %conv, 4
  %call14 = call i8* @eMalloc(i64 %mul)
  %11 = bitcast i8* %call14 to i32*
  store i32* %11, i32** %tmp, align 8
  %12 = load i32*, i32** %tmp, align 8
  %add.ptr15 = getelementptr inbounds i32, i32* %12, i64 8
  %13 = bitcast i32* %add.ptr15 to i8*
  %14 = load i32*, i32** getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 4), align 8
  %15 = bitcast i32* %14 to i8*
  %16 = load i32, i32* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 5), align 8
  %conv16 = sext i32 %16 to i64
  %mul17 = mul i64 %conv16, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 %15, i64 %mul17, i1 false)
  %17 = load i32*, i32** getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 2), align 8
  %18 = bitcast i32* %17 to i8*
  call void @eFree(i8* %18)
  %19 = load i32*, i32** %tmp, align 8
  store i32* %19, i32** getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 2), align 8
  %20 = load i32*, i32** %tmp, align 8
  %add.ptr18 = getelementptr inbounds i32, i32* %20, i64 7
  store i32* %add.ptr18, i32** getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 4), align 8
  br label %if.end19

if.else:                                          ; preds = %do.end12
  %21 = load i32*, i32** getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 4), align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %21, i32 -1
  store i32* %incdec.ptr, i32** getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 4), align 8
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then13
  %22 = load i32, i32* %c.addr, align 4
  %23 = load i32*, i32** getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 4), align 8
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 5), align 8
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 5), align 8
  br label %return

return:                                           ; preds = %if.end19, %do.end
  ret void
}

declare i8* @eMalloc(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @cppUngetString(i8* %string, i32 %len) #0 {
entry:
  %string.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %tmp = alloca i32*, align 8
  %p = alloca i32*, align 8
  %s = alloca i8*, align 8
  %e = alloca i8*, align 8
  store i8* %string, i8** %string.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  %0 = load i8*, i8** %string.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %len.addr, align 4
  %cmp = icmp slt i32 %1, 1
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  br label %return

if.end2:                                          ; preds = %if.end
  %2 = load i32*, i32** getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 4), align 8
  %tobool3 = icmp ne i32* %2, null
  br i1 %tobool3, label %if.else18, label %if.then4

if.then4:                                         ; preds = %if.end2
  %3 = load i32*, i32** getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 2), align 8
  %tobool5 = icmp ne i32* %3, null
  br i1 %tobool5, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.then4
  %4 = load i32, i32* %len.addr, align 4
  %add = add nsw i32 8, %4
  store i32 %add, i32* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 3), align 8
  %5 = load i32, i32* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 3), align 8
  %conv = sext i32 %5 to i64
  %mul = mul i64 %conv, 4
  %call = call i8* @eMalloc(i64 %mul)
  %6 = bitcast i8* %call to i32*
  store i32* %6, i32** getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 2), align 8
  br label %if.end15

if.else:                                          ; preds = %if.then4
  %7 = load i32, i32* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 3), align 8
  %8 = load i32, i32* %len.addr, align 4
  %cmp7 = icmp slt i32 %7, %8
  br i1 %cmp7, label %if.then9, label %if.end14

if.then9:                                         ; preds = %if.else
  %9 = load i32, i32* %len.addr, align 4
  %add10 = add nsw i32 8, %9
  store i32 %add10, i32* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 3), align 8
  %10 = load i32*, i32** getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 2), align 8
  %11 = bitcast i32* %10 to i8*
  %12 = load i32, i32* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 3), align 8
  %conv11 = sext i32 %12 to i64
  %mul12 = mul i64 %conv11, 4
  %call13 = call i8* @eRealloc(i8* %11, i64 %mul12)
  %13 = bitcast i8* %call13 to i32*
  store i32* %13, i32** getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 2), align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then9, %if.else
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.then6
  %14 = load i32*, i32** getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 2), align 8
  %15 = load i32, i32* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 3), align 8
  %idx.ext = sext i32 %15 to i64
  %add.ptr = getelementptr inbounds i32, i32* %14, i64 %idx.ext
  %16 = load i32, i32* %len.addr, align 4
  %idx.ext16 = sext i32 %16 to i64
  %idx.neg = sub i64 0, %idx.ext16
  %add.ptr17 = getelementptr inbounds i32, i32* %add.ptr, i64 %idx.neg
  store i32* %add.ptr17, i32** getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 4), align 8
  br label %if.end47

if.else18:                                        ; preds = %if.end2
  br label %do.body

do.body:                                          ; preds = %if.else18
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body19

do.body19:                                        ; preds = %do.end
  br label %do.end20

do.end20:                                         ; preds = %do.body19
  br label %do.body21

do.body21:                                        ; preds = %do.end20
  br label %do.end22

do.end22:                                         ; preds = %do.body21
  br label %do.body23

do.body23:                                        ; preds = %do.end22
  br label %do.end24

do.end24:                                         ; preds = %do.body23
  %17 = load i32, i32* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 3), align 8
  %18 = load i32, i32* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 5), align 8
  %19 = load i32, i32* %len.addr, align 4
  %add25 = add nsw i32 %18, %19
  %cmp26 = icmp slt i32 %17, %add25
  br i1 %cmp26, label %if.then28, label %if.else40

if.then28:                                        ; preds = %do.end24
  %20 = load i32, i32* %len.addr, align 4
  %add29 = add nsw i32 8, %20
  %21 = load i32, i32* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 5), align 8
  %add30 = add nsw i32 %add29, %21
  store i32 %add30, i32* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 3), align 8
  %22 = load i32, i32* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 3), align 8
  %conv31 = sext i32 %22 to i64
  %mul32 = mul i64 %conv31, 4
  %call33 = call i8* @eMalloc(i64 %mul32)
  %23 = bitcast i8* %call33 to i32*
  store i32* %23, i32** %tmp, align 8
  %24 = load i32*, i32** %tmp, align 8
  %add.ptr34 = getelementptr inbounds i32, i32* %24, i64 8
  %25 = load i32, i32* %len.addr, align 4
  %idx.ext35 = sext i32 %25 to i64
  %add.ptr36 = getelementptr inbounds i32, i32* %add.ptr34, i64 %idx.ext35
  %26 = bitcast i32* %add.ptr36 to i8*
  %27 = load i32*, i32** getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 4), align 8
  %28 = bitcast i32* %27 to i8*
  %29 = load i32, i32* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 5), align 8
  %conv37 = sext i32 %29 to i64
  %mul38 = mul i64 %conv37, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %26, i8* align 4 %28, i64 %mul38, i1 false)
  %30 = load i32*, i32** getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 2), align 8
  %31 = bitcast i32* %30 to i8*
  call void @eFree(i8* %31)
  %32 = load i32*, i32** %tmp, align 8
  store i32* %32, i32** getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 2), align 8
  %33 = load i32*, i32** %tmp, align 8
  %add.ptr39 = getelementptr inbounds i32, i32* %33, i64 8
  store i32* %add.ptr39, i32** getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 4), align 8
  br label %if.end46

if.else40:                                        ; preds = %do.end24
  %34 = load i32, i32* %len.addr, align 4
  %35 = load i32*, i32** getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 4), align 8
  %idx.ext41 = sext i32 %34 to i64
  %idx.neg42 = sub i64 0, %idx.ext41
  %add.ptr43 = getelementptr inbounds i32, i32* %35, i64 %idx.neg42
  store i32* %add.ptr43, i32** getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 4), align 8
  br label %do.body44

do.body44:                                        ; preds = %if.else40
  br label %do.end45

do.end45:                                         ; preds = %do.body44
  br label %if.end46

if.end46:                                         ; preds = %do.end45, %if.then28
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %if.end15
  %36 = load i32*, i32** getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 4), align 8
  store i32* %36, i32** %p, align 8
  %37 = load i8*, i8** %string.addr, align 8
  store i8* %37, i8** %s, align 8
  %38 = load i8*, i8** %string.addr, align 8
  %39 = load i32, i32* %len.addr, align 4
  %idx.ext48 = sext i32 %39 to i64
  %add.ptr49 = getelementptr inbounds i8, i8* %38, i64 %idx.ext48
  store i8* %add.ptr49, i8** %e, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end47
  %40 = load i8*, i8** %s, align 8
  %41 = load i8*, i8** %e, align 8
  %cmp50 = icmp ult i8* %40, %41
  br i1 %cmp50, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %42 = load i8*, i8** %s, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %incdec.ptr, i8** %s, align 8
  %43 = load i8, i8* %42, align 1
  %conv52 = sext i8 %43 to i32
  %44 = load i32*, i32** %p, align 8
  %incdec.ptr53 = getelementptr inbounds i32, i32* %44, i32 1
  store i32* %incdec.ptr53, i32** %p, align 8
  store i32 %conv52, i32* %44, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %45 = load i32, i32* %len.addr, align 4
  %46 = load i32, i32* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 5), align 8
  %add54 = add nsw i32 %46, %45
  store i32 %add54, i32* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 5), align 8
  br label %return

return:                                           ; preds = %while.end, %if.then1, %if.then
  ret void
}

declare i8* @eRealloc(i8*, i64) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @cppSkipOverCComment() #0 {
entry:
  %c = alloca i32, align 4
  %next = alloca i32, align 4
  %call = call i32 @cppGetcFromUngetBufferOrFile()
  store i32 %call, i32* %c, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end7, %entry
  %0 = load i32, i32* %c, align 4
  %cmp = icmp ne i32 %0, -1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, i32* %c, align 4
  %cmp1 = icmp ne i32 %1, 42
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %call2 = call i32 @cppGetcFromUngetBufferOrFile()
  store i32 %call2, i32* %c, align 4
  br label %if.end7

if.else:                                          ; preds = %while.body
  %call3 = call i32 @cppGetcFromUngetBufferOrFile()
  store i32 %call3, i32* %next, align 4
  %2 = load i32, i32* %next, align 4
  %cmp4 = icmp ne i32 %2, 47
  br i1 %cmp4, label %if.then5, label %if.else6

if.then5:                                         ; preds = %if.else
  %3 = load i32, i32* %next, align 4
  store i32 %3, i32* %c, align 4
  br label %if.end

if.else6:                                         ; preds = %if.else
  store i32 32, i32* %c, align 4
  br label %while.end

if.end:                                           ; preds = %if.then5
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then
  br label %while.cond

while.end:                                        ; preds = %if.else6, %while.cond
  %4 = load i32, i32* %c, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @cppGetcFromUngetBufferOrFile() #0 {
entry:
  %retval = alloca i32, align 4
  %c = alloca i32, align 4
  %0 = load i32*, i32** getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 4), align 8
  %tobool = icmp ne i32* %0, null
  br i1 %tobool, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  br label %do.body3

do.body3:                                         ; preds = %do.end2
  br label %do.end4

do.end4:                                          ; preds = %do.body3
  %1 = load i32*, i32** getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 4), align 8
  %2 = load i32, i32* %1, align 4
  store i32 %2, i32* %c, align 4
  %3 = load i32, i32* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 5), align 8
  %dec = add nsw i32 %3, -1
  store i32 %dec, i32* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 5), align 8
  %4 = load i32, i32* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 5), align 8
  %cmp = icmp sgt i32 %4, 0
  br i1 %cmp, label %if.then5, label %if.else

if.then5:                                         ; preds = %do.end4
  %5 = load i32*, i32** getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 4), align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %5, i32 1
  store i32* %incdec.ptr, i32** getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 4), align 8
  br label %if.end

if.else:                                          ; preds = %do.end4
  store i32* null, i32** getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 4), align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then5
  %6 = load i32, i32* %c, align 4
  store i32 %6, i32* %retval, align 4
  br label %return

if.end6:                                          ; preds = %entry
  %call = call i32 @getcFromInputFile()
  store i32 %call, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end6, %if.end
  %7 = load i32, i32* %retval, align 4
  ret i32 %7
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @cppGetc() #0 {
entry:
  %directive = alloca i8, align 1
  %ignore = alloca i8, align 1
  %c = alloca i32, align 4
  %macroCorkIndex = alloca i32, align 4
  %comment = alloca i32, align 4
  %next = alloca i32, align 4
  %next41 = alloca i32, align 4
  %next58 = alloca [3 x i32], align 4
  %next89 = alloca i32, align 4
  %next96 = alloca i32, align 4
  %next107 = alloca i32, align 4
  %prev = alloca i32, align 4
  %prev2 = alloca i32, align 4
  %prev3 = alloca i32, align 4
  %next153 = alloca i32, align 4
  %next165 = alloca i32, align 4
  store i8 0, i8* %directive, align 1
  store i8 0, i8* %ignore, align 1
  store i32 0, i32* %macroCorkIndex, align 4
  br label %do.body

do.body:                                          ; preds = %lor.end, %entry
  br label %start_loop

start_loop:                                       ; preds = %if.then37, %do.body
  %call = call i32 @cppGetcFromUngetBufferOrFile()
  store i32 %call, i32* %c, align 4
  br label %process

process:                                          ; preds = %sw.bb99, %sw.bb55, %sw.bb51, %start_loop
  %0 = load i32, i32* %c, align 4
  switch i32 %0, label %sw.default102 [
    i32 -1, label %sw.bb
    i32 9, label %sw.bb1
    i32 32, label %sw.bb1
    i32 10, label %sw.bb2
    i32 34, label %sw.bb4
    i32 35, label %sw.bb8
    i32 39, label %sw.bb12
    i32 47, label %sw.bb14
    i32 92, label %sw.bb34
    i32 63, label %sw.bb40
    i32 60, label %sw.bb57
    i32 58, label %sw.bb88
    i32 37, label %sw.bb95
  ]

sw.bb:                                            ; preds = %process
  store i8 0, i8* %ignore, align 1
  store i8 0, i8* %directive, align 1
  %1 = load i32, i32* %macroCorkIndex, align 4
  call void @attachEndFieldMaybe(i32 %1)
  store i32 0, i32* %macroCorkIndex, align 4
  br label %sw.epilog177

sw.bb1:                                           ; preds = %process, %process
  br label %sw.epilog177

sw.bb2:                                           ; preds = %process
  %2 = load i8, i8* %directive, align 1
  %tobool = trunc i8 %2 to i1
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %sw.bb2
  %3 = load i8, i8* %ignore, align 1
  %tobool3 = trunc i8 %3 to i1
  br i1 %tobool3, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %4 = load i32, i32* %macroCorkIndex, align 4
  call void @attachEndFieldMaybe(i32 %4)
  store i32 0, i32* %macroCorkIndex, align 4
  store i8 0, i8* %directive, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %sw.bb2
  store i8 1, i8* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 17, i32 1), align 4
  br label %sw.epilog177

sw.bb4:                                           ; preds = %process
  %5 = load i32, i32* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 17, i32 0), align 8
  %cmp = icmp eq i32 %5, 6
  br i1 %cmp, label %if.then5, label %if.else

if.then5:                                         ; preds = %sw.bb4
  br label %enter

if.else:                                          ; preds = %sw.bb4
  store i8 0, i8* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 17, i32 1), align 4
  %call6 = call i32 @skipToEndOfString(i1 zeroext false)
  store i32 %call6, i32* %c, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.else
  br label %sw.epilog177

sw.bb8:                                           ; preds = %process
  %6 = load i8, i8* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 17, i32 1), align 4
  %tobool9 = trunc i8 %6 to i1
  br i1 %tobool9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %sw.bb8
  store i8 1, i8* %directive, align 1
  store i32 2, i32* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 17, i32 0), align 8
  store i8 0, i8* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 17, i32 1), align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %sw.bb8
  br label %sw.epilog177

sw.bb12:                                          ; preds = %process
  store i8 0, i8* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 17, i32 1), align 4
  %call13 = call i32 @skipToEndOfChar()
  store i32 %call13, i32* %c, align 4
  br label %sw.epilog177

sw.bb14:                                          ; preds = %process
  %call15 = call i32 @isComment()
  store i32 %call15, i32* %comment, align 4
  %7 = load i32, i32* %comment, align 4
  %cmp16 = icmp eq i32 %7, 1
  br i1 %cmp16, label %if.then17, label %if.else19

if.then17:                                        ; preds = %sw.bb14
  %call18 = call i32 @cppSkipOverCComment()
  store i32 %call18, i32* %c, align 4
  br label %if.end33

if.else19:                                        ; preds = %sw.bb14
  %8 = load i32, i32* %comment, align 4
  %cmp20 = icmp eq i32 %8, 2
  br i1 %cmp20, label %if.then21, label %if.else26

if.then21:                                        ; preds = %if.else19
  %call22 = call i32 @skipOverCplusComment()
  store i32 %call22, i32* %c, align 4
  %9 = load i32, i32* %c, align 4
  %cmp23 = icmp eq i32 %9, 10
  br i1 %cmp23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.then21
  %10 = load i32, i32* %c, align 4
  call void @cppUngetc(i32 %10)
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.then21
  br label %if.end32

if.else26:                                        ; preds = %if.else19
  %11 = load i32, i32* %comment, align 4
  %cmp27 = icmp eq i32 %11, 3
  br i1 %cmp27, label %if.then28, label %if.else30

if.then28:                                        ; preds = %if.else26
  %call29 = call i32 @skipOverDComment()
  store i32 %call29, i32* %c, align 4
  br label %if.end31

if.else30:                                        ; preds = %if.else26
  store i8 0, i8* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 17, i32 1), align 4
  br label %if.end31

if.end31:                                         ; preds = %if.else30, %if.then28
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %if.end25
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.then17
  br label %sw.epilog177

sw.bb34:                                          ; preds = %process
  %call35 = call i32 @cppGetcFromUngetBufferOrFile()
  store i32 %call35, i32* %next, align 4
  %12 = load i32, i32* %next, align 4
  %cmp36 = icmp eq i32 %12, 10
  br i1 %cmp36, label %if.then37, label %if.else38

if.then37:                                        ; preds = %sw.bb34
  br label %start_loop

if.else38:                                        ; preds = %sw.bb34
  %13 = load i32, i32* %next, align 4
  call void @cppUngetc(i32 %13)
  br label %if.end39

if.end39:                                         ; preds = %if.else38
  br label %sw.epilog177

sw.bb40:                                          ; preds = %process
  %call42 = call i32 @cppGetcFromUngetBufferOrFile()
  store i32 %call42, i32* %next41, align 4
  %14 = load i32, i32* %next41, align 4
  %cmp43 = icmp ne i32 %14, 63
  br i1 %cmp43, label %if.then44, label %if.else45

if.then44:                                        ; preds = %sw.bb40
  %15 = load i32, i32* %next41, align 4
  call void @cppUngetc(i32 %15)
  br label %if.end56

if.else45:                                        ; preds = %sw.bb40
  %call46 = call i32 @cppGetcFromUngetBufferOrFile()
  store i32 %call46, i32* %next41, align 4
  %16 = load i32, i32* %next41, align 4
  switch i32 %16, label %sw.default [
    i32 40, label %sw.bb47
    i32 41, label %sw.bb48
    i32 60, label %sw.bb49
    i32 62, label %sw.bb50
    i32 47, label %sw.bb51
    i32 33, label %sw.bb52
    i32 39, label %sw.bb53
    i32 45, label %sw.bb54
    i32 61, label %sw.bb55
  ]

sw.bb47:                                          ; preds = %if.else45
  store i32 91, i32* %c, align 4
  br label %sw.epilog

sw.bb48:                                          ; preds = %if.else45
  store i32 93, i32* %c, align 4
  br label %sw.epilog

sw.bb49:                                          ; preds = %if.else45
  store i32 123, i32* %c, align 4
  br label %sw.epilog

sw.bb50:                                          ; preds = %if.else45
  store i32 125, i32* %c, align 4
  br label %sw.epilog

sw.bb51:                                          ; preds = %if.else45
  store i32 92, i32* %c, align 4
  br label %process

sw.bb52:                                          ; preds = %if.else45
  store i32 124, i32* %c, align 4
  br label %sw.epilog

sw.bb53:                                          ; preds = %if.else45
  store i32 94, i32* %c, align 4
  br label %sw.epilog

sw.bb54:                                          ; preds = %if.else45
  store i32 126, i32* %c, align 4
  br label %sw.epilog

sw.bb55:                                          ; preds = %if.else45
  store i32 35, i32* %c, align 4
  br label %process

sw.default:                                       ; preds = %if.else45
  call void @cppUngetc(i32 63)
  %17 = load i32, i32* %next41, align 4
  call void @cppUngetc(i32 %17)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb54, %sw.bb53, %sw.bb52, %sw.bb50, %sw.bb49, %sw.bb48, %sw.bb47
  br label %if.end56

if.end56:                                         ; preds = %sw.epilog, %if.then44
  br label %sw.epilog177

sw.bb57:                                          ; preds = %process
  %call59 = call i32 @cppGetcFromUngetBufferOrFile()
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* %next58, i64 0, i64 0
  store i32 %call59, i32* %arrayidx, align 4
  %arrayidx60 = getelementptr inbounds [3 x i32], [3 x i32]* %next58, i64 0, i64 0
  %18 = load i32, i32* %arrayidx60, align 4
  switch i32 %18, label %sw.default85 [
    i32 58, label %sw.bb61
    i32 37, label %sw.bb84
  ]

sw.bb61:                                          ; preds = %sw.bb57
  %call62 = call i32 @cppGetcFromUngetBufferOrFile()
  %arrayidx63 = getelementptr inbounds [3 x i32], [3 x i32]* %next58, i64 0, i64 1
  store i32 %call62, i32* %arrayidx63, align 4
  %arrayidx64 = getelementptr inbounds [3 x i32], [3 x i32]* %next58, i64 0, i64 1
  %19 = load i32, i32* %arrayidx64, align 4
  %cmp65 = icmp eq i32 %19, 58
  br i1 %cmp65, label %if.then66, label %if.else81

if.then66:                                        ; preds = %sw.bb61
  %call67 = call i32 @cppGetcFromUngetBufferOrFile()
  %arrayidx68 = getelementptr inbounds [3 x i32], [3 x i32]* %next58, i64 0, i64 2
  store i32 %call67, i32* %arrayidx68, align 4
  %arrayidx69 = getelementptr inbounds [3 x i32], [3 x i32]* %next58, i64 0, i64 2
  %20 = load i32, i32* %arrayidx69, align 4
  %cmp70 = icmp eq i32 %20, 58
  br i1 %cmp70, label %if.else77, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then66
  %arrayidx71 = getelementptr inbounds [3 x i32], [3 x i32]* %next58, i64 0, i64 2
  %21 = load i32, i32* %arrayidx71, align 4
  %cmp72 = icmp eq i32 %21, 62
  br i1 %cmp72, label %if.else77, label %if.then73

if.then73:                                        ; preds = %lor.lhs.false
  %arrayidx74 = getelementptr inbounds [3 x i32], [3 x i32]* %next58, i64 0, i64 2
  %22 = load i32, i32* %arrayidx74, align 4
  call void @cppUngetc(i32 %22)
  %arrayidx75 = getelementptr inbounds [3 x i32], [3 x i32]* %next58, i64 0, i64 1
  %23 = load i32, i32* %arrayidx75, align 4
  call void @cppUngetc(i32 %23)
  %arrayidx76 = getelementptr inbounds [3 x i32], [3 x i32]* %next58, i64 0, i64 0
  %24 = load i32, i32* %arrayidx76, align 4
  call void @cppUngetc(i32 %24)
  store i32 60, i32* %c, align 4
  br label %if.end80

if.else77:                                        ; preds = %lor.lhs.false, %if.then66
  %arrayidx78 = getelementptr inbounds [3 x i32], [3 x i32]* %next58, i64 0, i64 2
  %25 = load i32, i32* %arrayidx78, align 4
  call void @cppUngetc(i32 %25)
  %arrayidx79 = getelementptr inbounds [3 x i32], [3 x i32]* %next58, i64 0, i64 1
  %26 = load i32, i32* %arrayidx79, align 4
  call void @cppUngetc(i32 %26)
  store i32 91, i32* %c, align 4
  br label %if.end80

if.end80:                                         ; preds = %if.else77, %if.then73
  br label %if.end83

if.else81:                                        ; preds = %sw.bb61
  %arrayidx82 = getelementptr inbounds [3 x i32], [3 x i32]* %next58, i64 0, i64 1
  %27 = load i32, i32* %arrayidx82, align 4
  call void @cppUngetc(i32 %27)
  store i32 91, i32* %c, align 4
  br label %if.end83

if.end83:                                         ; preds = %if.else81, %if.end80
  br label %sw.epilog87

sw.bb84:                                          ; preds = %sw.bb57
  store i32 123, i32* %c, align 4
  br label %sw.epilog87

sw.default85:                                     ; preds = %sw.bb57
  %arrayidx86 = getelementptr inbounds [3 x i32], [3 x i32]* %next58, i64 0, i64 0
  %28 = load i32, i32* %arrayidx86, align 4
  call void @cppUngetc(i32 %28)
  br label %sw.epilog87

sw.epilog87:                                      ; preds = %sw.default85, %sw.bb84, %if.end83
  br label %enter

sw.bb88:                                          ; preds = %process
  %call90 = call i32 @cppGetcFromUngetBufferOrFile()
  store i32 %call90, i32* %next89, align 4
  %29 = load i32, i32* %next89, align 4
  %cmp91 = icmp eq i32 %29, 62
  br i1 %cmp91, label %if.then92, label %if.else93

if.then92:                                        ; preds = %sw.bb88
  store i32 93, i32* %c, align 4
  br label %if.end94

if.else93:                                        ; preds = %sw.bb88
  %30 = load i32, i32* %next89, align 4
  call void @cppUngetc(i32 %30)
  br label %if.end94

if.end94:                                         ; preds = %if.else93, %if.then92
  br label %enter

sw.bb95:                                          ; preds = %process
  %call97 = call i32 @cppGetcFromUngetBufferOrFile()
  store i32 %call97, i32* %next96, align 4
  %31 = load i32, i32* %next96, align 4
  switch i32 %31, label %sw.default100 [
    i32 62, label %sw.bb98
    i32 58, label %sw.bb99
  ]

sw.bb98:                                          ; preds = %sw.bb95
  store i32 125, i32* %c, align 4
  br label %sw.epilog101

sw.bb99:                                          ; preds = %sw.bb95
  store i32 35, i32* %c, align 4
  br label %process

sw.default100:                                    ; preds = %sw.bb95
  %32 = load i32, i32* %next96, align 4
  call void @cppUngetc(i32 %32)
  br label %sw.epilog101

sw.epilog101:                                     ; preds = %sw.default100, %sw.bb98
  br label %enter

sw.default102:                                    ; preds = %process
  %33 = load i32, i32* %c, align 4
  %cmp103 = icmp eq i32 %33, 64
  br i1 %cmp103, label %land.lhs.true104, label %if.else114

land.lhs.true104:                                 ; preds = %sw.default102
  %34 = load i8, i8* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 7), align 1
  %tobool105 = trunc i8 %34 to i1
  br i1 %tobool105, label %if.then106, label %if.else114

if.then106:                                       ; preds = %land.lhs.true104
  %call108 = call i32 @cppGetcFromUngetBufferOrFile()
  store i32 %call108, i32* %next107, align 4
  %35 = load i32, i32* %next107, align 4
  %cmp109 = icmp eq i32 %35, 34
  br i1 %cmp109, label %if.then110, label %if.else112

if.then110:                                       ; preds = %if.then106
  store i8 0, i8* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 17, i32 1), align 4
  %call111 = call i32 @skipToEndOfString(i1 zeroext true)
  store i32 %call111, i32* %c, align 4
  br label %sw.epilog177

if.else112:                                       ; preds = %if.then106
  %36 = load i32, i32* %next107, align 4
  call void @cppUngetc(i32 %36)
  br label %if.end113

if.end113:                                        ; preds = %if.else112
  br label %if.end172

if.else114:                                       ; preds = %land.lhs.true104, %sw.default102
  %37 = load i32, i32* %c, align 4
  %cmp115 = icmp eq i32 %37, 82
  br i1 %cmp115, label %land.lhs.true116, label %if.else161

land.lhs.true116:                                 ; preds = %if.else114
  %38 = load i8, i8* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 8), align 2
  %tobool117 = trunc i8 %38 to i1
  br i1 %tobool117, label %if.then118, label %if.else161

if.then118:                                       ; preds = %land.lhs.true116
  %call119 = call i32 @getNthPrevCFromInputFile(i32 1, i32 0)
  store i32 %call119, i32* %prev, align 4
  %call120 = call i32 @getNthPrevCFromInputFile(i32 2, i32 0)
  store i32 %call120, i32* %prev2, align 4
  %call121 = call i32 @getNthPrevCFromInputFile(i32 3, i32 0)
  store i32 %call121, i32* %prev3, align 4
  %39 = load i32, i32* %prev, align 4
  %call122 = call i32 @isalnum(i32 %39) #4
  %tobool123 = icmp ne i32 %call122, 0
  br i1 %tobool123, label %lor.lhs.false128, label %lor.lhs.false124

lor.lhs.false124:                                 ; preds = %if.then118
  %40 = load i32, i32* %prev, align 4
  %cmp125 = icmp eq i32 %40, 95
  br i1 %cmp125, label %lor.lhs.false128, label %lor.lhs.false126

lor.lhs.false126:                                 ; preds = %lor.lhs.false124
  %41 = load i32, i32* %prev, align 4
  %cmp127 = icmp eq i32 %41, 36
  br i1 %cmp127, label %lor.lhs.false128, label %if.then152

lor.lhs.false128:                                 ; preds = %lor.lhs.false126, %lor.lhs.false124, %if.then118
  %42 = load i32, i32* %prev2, align 4
  %call129 = call i32 @isalnum(i32 %42) #4
  %tobool130 = icmp ne i32 %call129, 0
  br i1 %tobool130, label %lor.lhs.false141, label %lor.lhs.false131

lor.lhs.false131:                                 ; preds = %lor.lhs.false128
  %43 = load i32, i32* %prev2, align 4
  %cmp132 = icmp eq i32 %43, 95
  br i1 %cmp132, label %lor.lhs.false141, label %lor.lhs.false133

lor.lhs.false133:                                 ; preds = %lor.lhs.false131
  %44 = load i32, i32* %prev2, align 4
  %cmp134 = icmp eq i32 %44, 36
  br i1 %cmp134, label %lor.lhs.false141, label %land.lhs.true135

land.lhs.true135:                                 ; preds = %lor.lhs.false133
  %45 = load i32, i32* %prev, align 4
  %cmp136 = icmp eq i32 %45, 76
  br i1 %cmp136, label %if.then152, label %lor.lhs.false137

lor.lhs.false137:                                 ; preds = %land.lhs.true135
  %46 = load i32, i32* %prev, align 4
  %cmp138 = icmp eq i32 %46, 117
  br i1 %cmp138, label %if.then152, label %lor.lhs.false139

lor.lhs.false139:                                 ; preds = %lor.lhs.false137
  %47 = load i32, i32* %prev, align 4
  %cmp140 = icmp eq i32 %47, 85
  br i1 %cmp140, label %if.then152, label %lor.lhs.false141

lor.lhs.false141:                                 ; preds = %lor.lhs.false139, %lor.lhs.false133, %lor.lhs.false131, %lor.lhs.false128
  %48 = load i32, i32* %prev3, align 4
  %call142 = call i32 @isalnum(i32 %48) #4
  %tobool143 = icmp ne i32 %call142, 0
  br i1 %tobool143, label %if.end160, label %lor.lhs.false144

lor.lhs.false144:                                 ; preds = %lor.lhs.false141
  %49 = load i32, i32* %prev3, align 4
  %cmp145 = icmp eq i32 %49, 95
  br i1 %cmp145, label %if.end160, label %lor.lhs.false146

lor.lhs.false146:                                 ; preds = %lor.lhs.false144
  %50 = load i32, i32* %prev3, align 4
  %cmp147 = icmp eq i32 %50, 36
  br i1 %cmp147, label %if.end160, label %land.lhs.true148

land.lhs.true148:                                 ; preds = %lor.lhs.false146
  %51 = load i32, i32* %prev2, align 4
  %cmp149 = icmp eq i32 %51, 117
  br i1 %cmp149, label %land.lhs.true150, label %if.end160

land.lhs.true150:                                 ; preds = %land.lhs.true148
  %52 = load i32, i32* %prev, align 4
  %cmp151 = icmp eq i32 %52, 56
  br i1 %cmp151, label %if.then152, label %if.end160

if.then152:                                       ; preds = %land.lhs.true150, %lor.lhs.false139, %lor.lhs.false137, %land.lhs.true135, %lor.lhs.false126
  %call154 = call i32 @cppGetcFromUngetBufferOrFile()
  store i32 %call154, i32* %next153, align 4
  %53 = load i32, i32* %next153, align 4
  %cmp155 = icmp ne i32 %53, 34
  br i1 %cmp155, label %if.then156, label %if.else157

if.then156:                                       ; preds = %if.then152
  %54 = load i32, i32* %next153, align 4
  call void @cppUngetc(i32 %54)
  br label %if.end159

if.else157:                                       ; preds = %if.then152
  store i8 0, i8* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 17, i32 1), align 4
  %call158 = call i32 @skipToEndOfCxxRawLiteralString()
  store i32 %call158, i32* %c, align 4
  br label %sw.epilog177

if.end159:                                        ; preds = %if.then156
  br label %if.end160

if.end160:                                        ; preds = %if.end159, %land.lhs.true150, %land.lhs.true148, %lor.lhs.false146, %lor.lhs.false144, %lor.lhs.false141
  br label %if.end171

if.else161:                                       ; preds = %land.lhs.true116, %if.else114
  %55 = load i32, i32* %c, align 4
  %call162 = call i32 @isxdigit(i32 %55) #4
  %tobool163 = icmp ne i32 %call162, 0
  br i1 %tobool163, label %if.then164, label %if.end170

if.then164:                                       ; preds = %if.else161
  %call166 = call i32 @cppGetcFromUngetBufferOrFile()
  store i32 %call166, i32* %next165, align 4
  %56 = load i32, i32* %next165, align 4
  %cmp167 = icmp ne i32 %56, 39
  br i1 %cmp167, label %if.then168, label %if.end169

if.then168:                                       ; preds = %if.then164
  %57 = load i32, i32* %next165, align 4
  call void @cppUngetc(i32 %57)
  br label %if.end169

if.end169:                                        ; preds = %if.then168, %if.then164
  br label %if.end170

if.end170:                                        ; preds = %if.end169, %if.else161
  br label %if.end171

if.end171:                                        ; preds = %if.end170, %if.end160
  br label %if.end172

if.end172:                                        ; preds = %if.end171, %if.end113
  br label %enter

enter:                                            ; preds = %if.end172, %sw.epilog101, %if.end94, %sw.epilog87, %if.then5
  store i8 0, i8* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 17, i32 1), align 4
  %58 = load i8, i8* %directive, align 1
  %tobool173 = trunc i8 %58 to i1
  br i1 %tobool173, label %if.then174, label %if.end176

if.then174:                                       ; preds = %enter
  %59 = load i32, i32* %c, align 4
  %call175 = call zeroext i1 @handleDirective(i32 %59, i32* %macroCorkIndex)
  %frombool = zext i1 %call175 to i8
  store i8 %frombool, i8* %ignore, align 1
  br label %if.end176

if.end176:                                        ; preds = %if.then174, %enter
  br label %sw.epilog177

sw.epilog177:                                     ; preds = %if.end176, %if.else157, %if.then110, %if.end56, %if.end39, %if.end33, %sw.bb12, %if.end11, %if.end7, %if.end, %sw.bb1, %sw.bb
  br label %do.cond

do.cond:                                          ; preds = %sw.epilog177
  %60 = load i8, i8* %directive, align 1
  %tobool178 = trunc i8 %60 to i1
  br i1 %tobool178, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %do.cond
  %61 = load i8, i8* %ignore, align 1
  %tobool179 = trunc i8 %61 to i1
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %do.cond
  %62 = phi i1 [ true, %do.cond ], [ %tobool179, %lor.rhs ]
  br i1 %62, label %do.body, label %do.end

do.end:                                           ; preds = %lor.end
  %63 = load i32, i32* %c, align 4
  ret i32 %63
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @attachEndFieldMaybe(i32 %macroCorkIndex) #0 {
entry:
  %macroCorkIndex.addr = alloca i32, align 4
  %tag = alloca %struct.sTagEntryInfo*, align 8
  store i32 %macroCorkIndex, i32* %macroCorkIndex.addr, align 4
  %0 = load i32, i32* %macroCorkIndex.addr, align 4
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %macroCorkIndex.addr, align 4
  %call = call %struct.sTagEntryInfo* @getEntryInCorkQueue(i32 %1)
  store %struct.sTagEntryInfo* %call, %struct.sTagEntryInfo** %tag, align 8
  %call1 = call i64 @getInputLineNumber()
  %2 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag, align 8
  %extensionFields = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %2, i32 0, i32 11
  %endLine = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields, i32 0, i32 11
  store i64 %call1, i64* %endLine, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @skipToEndOfString(i1 zeroext %ignoreBackslash) #0 {
entry:
  %ignoreBackslash.addr = alloca i8, align 1
  %c = alloca i32, align 4
  %frombool = zext i1 %ignoreBackslash to i8
  store i8 %frombool, i8* %ignoreBackslash.addr, align 1
  br label %while.cond

while.cond:                                       ; preds = %if.end5, %entry
  %call = call i32 @cppGetcFromUngetBufferOrFile()
  store i32 %call, i32* %c, align 4
  %cmp = icmp ne i32 %call, -1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %0 = load i32, i32* %c, align 4
  %cmp1 = icmp eq i32 %0, 92
  br i1 %cmp1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %while.body
  %1 = load i8, i8* %ignoreBackslash.addr, align 1
  %tobool = trunc i8 %1 to i1
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call2 = call i32 @cppGetcFromUngetBufferOrFile()
  br label %if.end5

if.else:                                          ; preds = %land.lhs.true, %while.body
  %2 = load i32, i32* %c, align 4
  %cmp3 = icmp eq i32 %2, 34
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.else
  br label %while.end

if.end:                                           ; preds = %if.else
  br label %if.end5

if.end5:                                          ; preds = %if.end, %if.then
  br label %while.cond

while.end:                                        ; preds = %if.then4, %while.cond
  ret i32 338
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @skipToEndOfChar() #0 {
entry:
  %c = alloca i32, align 4
  %count = alloca i32, align 4
  %veraBase = alloca i32, align 4
  store i32 0, i32* %count, align 4
  store i32 0, i32* %veraBase, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end25, %entry
  %call = call i32 @cppGetcFromUngetBufferOrFile()
  store i32 %call, i32* %c, align 4
  %cmp = icmp ne i32 %call, -1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %0 = load i32, i32* %count, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* %count, align 4
  %1 = load i32, i32* %c, align 4
  %cmp1 = icmp eq i32 %1, 92
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %call2 = call i32 @cppGetcFromUngetBufferOrFile()
  br label %if.end25

if.else:                                          ; preds = %while.body
  %2 = load i32, i32* %c, align 4
  %cmp3 = icmp eq i32 %2, 39
  br i1 %cmp3, label %if.then4, label %if.else5

if.then4:                                         ; preds = %if.else
  br label %while.end

if.else5:                                         ; preds = %if.else
  %3 = load i32, i32* %c, align 4
  %cmp6 = icmp eq i32 %3, 10
  br i1 %cmp6, label %if.then7, label %if.else8

if.then7:                                         ; preds = %if.else5
  %4 = load i32, i32* %c, align 4
  call void @cppUngetc(i32 %4)
  br label %while.end

if.else8:                                         ; preds = %if.else5
  %5 = load i8, i8* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 9), align 1
  %tobool = trunc i8 %5 to i1
  br i1 %tobool, label %if.then9, label %if.end22

if.then9:                                         ; preds = %if.else8
  %6 = load i32, i32* %count, align 4
  %cmp10 = icmp eq i32 %6, 1
  br i1 %cmp10, label %land.lhs.true, label %if.else15

land.lhs.true:                                    ; preds = %if.then9
  %7 = load i32, i32* %c, align 4
  %call11 = call i32 @toupper(i32 %7) #4
  %call12 = call i8* @strchr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %call11)
  %cmp13 = icmp ne i8* %call12, null
  br i1 %cmp13, label %if.then14, label %if.else15

if.then14:                                        ; preds = %land.lhs.true
  %8 = load i32, i32* %c, align 4
  store i32 %8, i32* %veraBase, align 4
  br label %if.end21

if.else15:                                        ; preds = %land.lhs.true, %if.then9
  %9 = load i32, i32* %veraBase, align 4
  %cmp16 = icmp ne i32 %9, 0
  br i1 %cmp16, label %land.lhs.true17, label %if.end

land.lhs.true17:                                  ; preds = %if.else15
  %10 = load i32, i32* %c, align 4
  %call18 = call i32 @isalnum(i32 %10) #4
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.end, label %if.then20

if.then20:                                        ; preds = %land.lhs.true17
  %11 = load i32, i32* %c, align 4
  call void @cppUngetc(i32 %11)
  br label %while.end

if.end:                                           ; preds = %land.lhs.true17, %if.else15
  br label %if.end21

if.end21:                                         ; preds = %if.end, %if.then14
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.else8
  br label %if.end23

if.end23:                                         ; preds = %if.end22
  br label %if.end24

if.end24:                                         ; preds = %if.end23
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.then
  br label %while.cond

while.end:                                        ; preds = %if.then20, %if.then7, %if.then4, %while.cond
  ret i32 322
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @isComment() #0 {
entry:
  %comment = alloca i32, align 4
  %next = alloca i32, align 4
  %call = call i32 @cppGetcFromUngetBufferOrFile()
  store i32 %call, i32* %next, align 4
  %0 = load i32, i32* %next, align 4
  %cmp = icmp eq i32 %0, 42
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* %comment, align 4
  br label %if.end8

if.else:                                          ; preds = %entry
  %1 = load i32, i32* %next, align 4
  %cmp1 = icmp eq i32 %1, 47
  br i1 %cmp1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.else
  store i32 2, i32* %comment, align 4
  br label %if.end7

if.else3:                                         ; preds = %if.else
  %2 = load i32, i32* %next, align 4
  %cmp4 = icmp eq i32 %2, 43
  br i1 %cmp4, label %if.then5, label %if.else6

if.then5:                                         ; preds = %if.else3
  store i32 3, i32* %comment, align 4
  br label %if.end

if.else6:                                         ; preds = %if.else3
  %3 = load i32, i32* %next, align 4
  call void @cppUngetc(i32 %3)
  store i32 0, i32* %comment, align 4
  br label %if.end

if.end:                                           ; preds = %if.else6, %if.then5
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then2
  br label %if.end8

if.end8:                                          ; preds = %if.end7, %if.then
  %4 = load i32, i32* %comment, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @skipOverCplusComment() #0 {
entry:
  %c = alloca i32, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end5, %entry
  %call = call i32 @cppGetcFromUngetBufferOrFile()
  store i32 %call, i32* %c, align 4
  %cmp = icmp ne i32 %call, -1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %0 = load i32, i32* %c, align 4
  %cmp1 = icmp eq i32 %0, 92
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %call2 = call i32 @cppGetcFromUngetBufferOrFile()
  br label %if.end5

if.else:                                          ; preds = %while.body
  %1 = load i32, i32* %c, align 4
  %cmp3 = icmp eq i32 %1, 10
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.else
  br label %while.end

if.end:                                           ; preds = %if.else
  br label %if.end5

if.end5:                                          ; preds = %if.end, %if.then
  br label %while.cond

while.end:                                        ; preds = %if.then4, %while.cond
  %2 = load i32, i32* %c, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @skipOverDComment() #0 {
entry:
  %c = alloca i32, align 4
  %next = alloca i32, align 4
  %call = call i32 @cppGetcFromUngetBufferOrFile()
  store i32 %call, i32* %c, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end7, %entry
  %0 = load i32, i32* %c, align 4
  %cmp = icmp ne i32 %0, -1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, i32* %c, align 4
  %cmp1 = icmp ne i32 %1, 43
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %call2 = call i32 @cppGetcFromUngetBufferOrFile()
  store i32 %call2, i32* %c, align 4
  br label %if.end7

if.else:                                          ; preds = %while.body
  %call3 = call i32 @cppGetcFromUngetBufferOrFile()
  store i32 %call3, i32* %next, align 4
  %2 = load i32, i32* %next, align 4
  %cmp4 = icmp ne i32 %2, 47
  br i1 %cmp4, label %if.then5, label %if.else6

if.then5:                                         ; preds = %if.else
  %3 = load i32, i32* %next, align 4
  store i32 %3, i32* %c, align 4
  br label %if.end

if.else6:                                         ; preds = %if.else
  store i32 32, i32* %c, align 4
  br label %while.end

if.end:                                           ; preds = %if.then5
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then
  br label %while.cond

while.end:                                        ; preds = %if.else6, %while.cond
  %4 = load i32, i32* %c, align 4
  ret i32 %4
}

declare i32 @getNthPrevCFromInputFile(i32, i32) #1

; Function Attrs: nounwind readonly
declare i32 @isalnum(i32) #3

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @skipToEndOfCxxRawLiteralString() #0 {
entry:
  %c = alloca i32, align 4
  %delim = alloca [16 x i8], align 1
  %delimLen = alloca i32, align 4
  %collectDelim = alloca i8, align 1
  %i = alloca i32, align 4
  %call = call i32 @cppGetcFromUngetBufferOrFile()
  store i32 %call, i32* %c, align 4
  %0 = load i32, i32* %c, align 4
  %cmp = icmp ne i32 %0, 40
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %c, align 4
  %call1 = call i32 @isCxxRawLiteralDelimiterChar(i32 %1)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %2 = load i32, i32* %c, align 4
  call void @cppUngetc(i32 %2)
  %call2 = call i32 @skipToEndOfString(i1 zeroext false)
  store i32 %call2, i32* %c, align 4
  br label %if.end42

if.else:                                          ; preds = %land.lhs.true, %entry
  store i32 0, i32* %delimLen, align 4
  store i8 1, i8* %collectDelim, align 1
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.else
  %3 = load i8, i8* %collectDelim, align 1
  %tobool3 = trunc i8 %3 to i1
  br i1 %tobool3, label %if.then4, label %if.else13

if.then4:                                         ; preds = %do.body
  %4 = load i32, i32* %c, align 4
  %call5 = call i32 @isCxxRawLiteralDelimiterChar(i32 %4)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %land.lhs.true7, label %if.else12

land.lhs.true7:                                   ; preds = %if.then4
  %5 = load i32, i32* %delimLen, align 4
  %conv = zext i32 %5 to i64
  %cmp8 = icmp ult i64 %conv, 16
  br i1 %cmp8, label %if.then10, label %if.else12

if.then10:                                        ; preds = %land.lhs.true7
  %6 = load i32, i32* %c, align 4
  %conv11 = trunc i32 %6 to i8
  %7 = load i32, i32* %delimLen, align 4
  %inc = add i32 %7, 1
  store i32 %inc, i32* %delimLen, align 4
  %idxprom = zext i32 %7 to i64
  %arrayidx = getelementptr inbounds [16 x i8], [16 x i8]* %delim, i64 0, i64 %idxprom
  store i8 %conv11, i8* %arrayidx, align 1
  br label %if.end

if.else12:                                        ; preds = %land.lhs.true7, %if.then4
  store i8 0, i8* %collectDelim, align 1
  br label %if.end

if.end:                                           ; preds = %if.else12, %if.then10
  br label %if.end38

if.else13:                                        ; preds = %do.body
  %8 = load i32, i32* %c, align 4
  %cmp14 = icmp eq i32 %8, 41
  br i1 %cmp14, label %if.then16, label %if.end37

if.then16:                                        ; preds = %if.else13
  store i32 0, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then16
  %call17 = call i32 @cppGetcFromUngetBufferOrFile()
  store i32 %call17, i32* %c, align 4
  %cmp18 = icmp ne i32 %call17, -1
  br i1 %cmp18, label %land.lhs.true20, label %land.end

land.lhs.true20:                                  ; preds = %while.cond
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %delimLen, align 4
  %cmp21 = icmp ult i32 %9, %10
  br i1 %cmp21, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true20
  %11 = load i32, i32* %i, align 4
  %idxprom23 = zext i32 %11 to i64
  %arrayidx24 = getelementptr inbounds [16 x i8], [16 x i8]* %delim, i64 0, i64 %idxprom23
  %12 = load i8, i8* %arrayidx24, align 1
  %conv25 = sext i8 %12 to i32
  %13 = load i32, i32* %c, align 4
  %cmp26 = icmp eq i32 %conv25, %13
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true20, %while.cond
  %14 = phi i1 [ false, %land.lhs.true20 ], [ false, %while.cond ], [ %cmp26, %land.rhs ]
  br i1 %14, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %15 = load i32, i32* %i, align 4
  %inc28 = add i32 %15, 1
  store i32 %inc28, i32* %i, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %16 = load i32, i32* %i, align 4
  %17 = load i32, i32* %delimLen, align 4
  %cmp29 = icmp eq i32 %16, %17
  br i1 %cmp29, label %land.lhs.true31, label %if.else35

land.lhs.true31:                                  ; preds = %while.end
  %18 = load i32, i32* %c, align 4
  %cmp32 = icmp eq i32 %18, 34
  br i1 %cmp32, label %if.then34, label %if.else35

if.then34:                                        ; preds = %land.lhs.true31
  br label %do.end

if.else35:                                        ; preds = %land.lhs.true31, %while.end
  %19 = load i32, i32* %c, align 4
  call void @cppUngetc(i32 %19)
  br label %if.end36

if.end36:                                         ; preds = %if.else35
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.else13
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %if.end
  br label %do.cond

do.cond:                                          ; preds = %if.end38
  %call39 = call i32 @cppGetcFromUngetBufferOrFile()
  store i32 %call39, i32* %c, align 4
  %cmp40 = icmp ne i32 %call39, -1
  br i1 %cmp40, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.then34
  store i32 338, i32* %c, align 4
  br label %if.end42

if.end42:                                         ; preds = %do.end, %if.then
  %20 = load i32, i32* %c, align 4
  ret i32 %20
}

; Function Attrs: nounwind readonly
declare i32 @isxdigit(i32) #3

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @handleDirective(i32 %c, i32* %macroCorkIndex) #0 {
entry:
  %c.addr = alloca i32, align 4
  %macroCorkIndex.addr = alloca i32*, align 8
  %ignore = alloca i8, align 1
  store i32 %c, i32* %c.addr, align 4
  store i32* %macroCorkIndex, i32** %macroCorkIndex.addr, align 8
  %call = call zeroext i1 @isIgnore()
  %frombool = zext i1 %call to i8
  store i8 %frombool, i8* %ignore, align 1
  %0 = load i32, i32* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 17, i32 0), align 8
  switch i32 %0, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 2, label %sw.bb5
    i32 3, label %sw.bb8
    i32 4, label %sw.bb11
    i32 5, label %sw.bb12
    i32 6, label %sw.bb13
  ]

sw.bb:                                            ; preds = %entry
  %call1 = call zeroext i1 @isIgnore()
  %frombool2 = zext i1 %call1 to i8
  store i8 %frombool2, i8* %ignore, align 1
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %1 = load i32, i32* %c.addr, align 4
  %call4 = call i32 @directiveDefine(i32 %1, i1 zeroext false)
  %2 = load i32*, i32** %macroCorkIndex.addr, align 8
  store i32 %call4, i32* %2, align 4
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %3 = load i32, i32* %c.addr, align 4
  %call6 = call zeroext i1 @directiveHash(i32 %3)
  %frombool7 = zext i1 %call6 to i8
  store i8 %frombool7, i8* %ignore, align 1
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  %4 = load i32, i32* %c.addr, align 4
  %call9 = call zeroext i1 @directiveIf(i32 %4)
  %frombool10 = zext i1 %call9 to i8
  store i8 %frombool10, i8* %ignore, align 1
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  %5 = load i32, i32* %c.addr, align 4
  call void @directivePragma(i32 %5)
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  %6 = load i32, i32* %c.addr, align 4
  call void @directiveUndef(i32 %6)
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  %7 = load i32, i32* %c.addr, align 4
  call void @directiveInclude(i32 %7)
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb8, %sw.bb5, %sw.bb3, %sw.bb
  %8 = load i8, i8* %ignore, align 1
  %tobool = trunc i8 %8 to i1
  ret i1 %tobool
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sCppMacroInfo* @cppFindMacro(i8* %name) #0 {
entry:
  %retval = alloca %struct.sCppMacroInfo*, align 8
  %name.addr = alloca i8*, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load %struct.sHashTable*, %struct.sHashTable** @defineMacroTable, align 8
  %tobool = icmp ne %struct.sHashTable* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.sCppMacroInfo* null, %struct.sCppMacroInfo** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.sHashTable*, %struct.sHashTable** @defineMacroTable, align 8
  %2 = load i8*, i8** %name.addr, align 8
  %call = call i8* @hashTableGetItem(%struct.sHashTable* %1, i8* %2)
  %3 = bitcast i8* %call to %struct.sCppMacroInfo*
  store %struct.sCppMacroInfo* %3, %struct.sCppMacroInfo** %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load %struct.sCppMacroInfo*, %struct.sCppMacroInfo** %retval, align 8
  ret %struct.sCppMacroInfo* %4
}

declare i8* @hashTableGetItem(%struct.sHashTable*, i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sVString* @cppBuildMacroReplacement(%struct.sCppMacroInfo* %macro, i8** %parameters, i32 %parameterCount) #0 {
entry:
  %retval = alloca %struct.sVString*, align 8
  %macro.addr = alloca %struct.sCppMacroInfo*, align 8
  %parameters.addr = alloca i8**, align 8
  %parameterCount.addr = alloca i32, align 4
  %ret = alloca %struct.sVString*, align 8
  %r = alloca %struct.sCppMacroReplacementPartInfo*, align 8
  %idx = alloca i32, align 4
  store %struct.sCppMacroInfo* %macro, %struct.sCppMacroInfo** %macro.addr, align 8
  store i8** %parameters, i8*** %parameters.addr, align 8
  store i32 %parameterCount, i32* %parameterCount.addr, align 4
  %0 = load %struct.sCppMacroInfo*, %struct.sCppMacroInfo** %macro.addr, align 8
  %tobool = icmp ne %struct.sCppMacroInfo* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.sVString* null, %struct.sVString** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.sCppMacroInfo*, %struct.sCppMacroInfo** %macro.addr, align 8
  %replacements = getelementptr inbounds %struct.sCppMacroInfo, %struct.sCppMacroInfo* %1, i32 0, i32 1
  %2 = load %struct.sCppMacroReplacementPartInfo*, %struct.sCppMacroReplacementPartInfo** %replacements, align 8
  %tobool1 = icmp ne %struct.sCppMacroReplacementPartInfo* %2, null
  br i1 %tobool1, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  store %struct.sVString* null, %struct.sVString** %retval, align 8
  br label %return

if.end3:                                          ; preds = %if.end
  %call = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call, %struct.sVString** %ret, align 8
  %3 = load %struct.sCppMacroInfo*, %struct.sCppMacroInfo** %macro.addr, align 8
  %replacements4 = getelementptr inbounds %struct.sCppMacroInfo, %struct.sCppMacroInfo* %3, i32 0, i32 1
  %4 = load %struct.sCppMacroReplacementPartInfo*, %struct.sCppMacroReplacementPartInfo** %replacements4, align 8
  store %struct.sCppMacroReplacementPartInfo* %4, %struct.sCppMacroReplacementPartInfo** %r, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end36, %if.end3
  %5 = load %struct.sCppMacroReplacementPartInfo*, %struct.sCppMacroReplacementPartInfo** %r, align 8
  %tobool5 = icmp ne %struct.sCppMacroReplacementPartInfo* %5, null
  br i1 %tobool5, label %while.body, label %while.end37

while.body:                                       ; preds = %while.cond
  %6 = load %struct.sCppMacroReplacementPartInfo*, %struct.sCppMacroReplacementPartInfo** %r, align 8
  %parameterIndex = getelementptr inbounds %struct.sCppMacroReplacementPartInfo, %struct.sCppMacroReplacementPartInfo* %6, i32 0, i32 0
  %7 = load i32, i32* %parameterIndex, align 8
  %cmp = icmp slt i32 %7, 0
  br i1 %cmp, label %if.then6, label %if.else

if.then6:                                         ; preds = %while.body
  %8 = load %struct.sCppMacroReplacementPartInfo*, %struct.sCppMacroReplacementPartInfo** %r, align 8
  %constant = getelementptr inbounds %struct.sCppMacroReplacementPartInfo, %struct.sCppMacroReplacementPartInfo* %8, i32 0, i32 2
  %9 = load %struct.sVString*, %struct.sVString** %constant, align 8
  %tobool7 = icmp ne %struct.sVString* %9, null
  br i1 %tobool7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.then6
  %10 = load %struct.sVString*, %struct.sVString** %ret, align 8
  %11 = load %struct.sCppMacroReplacementPartInfo*, %struct.sCppMacroReplacementPartInfo** %r, align 8
  %constant9 = getelementptr inbounds %struct.sCppMacroReplacementPartInfo, %struct.sCppMacroReplacementPartInfo* %11, i32 0, i32 2
  %12 = load %struct.sVString*, %struct.sVString** %constant9, align 8
  call void @vStringCat(%struct.sVString* %10, %struct.sVString* %12)
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.then6
  br label %if.end36

if.else:                                          ; preds = %while.body
  %13 = load i8**, i8*** %parameters.addr, align 8
  %tobool11 = icmp ne i8** %13, null
  br i1 %tobool11, label %land.lhs.true, label %if.end35

land.lhs.true:                                    ; preds = %if.else
  %14 = load %struct.sCppMacroReplacementPartInfo*, %struct.sCppMacroReplacementPartInfo** %r, align 8
  %parameterIndex12 = getelementptr inbounds %struct.sCppMacroReplacementPartInfo, %struct.sCppMacroReplacementPartInfo* %14, i32 0, i32 0
  %15 = load i32, i32* %parameterIndex12, align 8
  %16 = load i32, i32* %parameterCount.addr, align 4
  %cmp13 = icmp slt i32 %15, %16
  br i1 %cmp13, label %if.then14, label %if.end35

if.then14:                                        ; preds = %land.lhs.true
  %17 = load %struct.sCppMacroReplacementPartInfo*, %struct.sCppMacroReplacementPartInfo** %r, align 8
  %flags = getelementptr inbounds %struct.sCppMacroReplacementPartInfo, %struct.sCppMacroReplacementPartInfo* %17, i32 0, i32 1
  %18 = load i32, i32* %flags, align 4
  %and = and i32 %18, 2
  %tobool15 = icmp ne i32 %and, 0
  br i1 %tobool15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.then14
  %19 = load %struct.sVString*, %struct.sVString** %ret, align 8
  call void @vStringPut(%struct.sVString* %19, i32 34)
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.then14
  %20 = load %struct.sVString*, %struct.sVString** %ret, align 8
  %21 = load i8**, i8*** %parameters.addr, align 8
  %22 = load %struct.sCppMacroReplacementPartInfo*, %struct.sCppMacroReplacementPartInfo** %r, align 8
  %parameterIndex18 = getelementptr inbounds %struct.sCppMacroReplacementPartInfo, %struct.sCppMacroReplacementPartInfo* %22, i32 0, i32 0
  %23 = load i32, i32* %parameterIndex18, align 8
  %idxprom = sext i32 %23 to i64
  %arrayidx = getelementptr inbounds i8*, i8** %21, i64 %idxprom
  %24 = load i8*, i8** %arrayidx, align 8
  call void @vStringCatS(%struct.sVString* %20, i8* %24)
  %25 = load %struct.sCppMacroReplacementPartInfo*, %struct.sCppMacroReplacementPartInfo** %r, align 8
  %flags19 = getelementptr inbounds %struct.sCppMacroReplacementPartInfo, %struct.sCppMacroReplacementPartInfo* %25, i32 0, i32 1
  %26 = load i32, i32* %flags19, align 4
  %and20 = and i32 %26, 1
  %tobool21 = icmp ne i32 %and20, 0
  br i1 %tobool21, label %if.then22, label %if.end29

if.then22:                                        ; preds = %if.end17
  %27 = load %struct.sCppMacroReplacementPartInfo*, %struct.sCppMacroReplacementPartInfo** %r, align 8
  %parameterIndex23 = getelementptr inbounds %struct.sCppMacroReplacementPartInfo, %struct.sCppMacroReplacementPartInfo* %27, i32 0, i32 0
  %28 = load i32, i32* %parameterIndex23, align 8
  %add = add nsw i32 %28, 1
  store i32 %add, i32* %idx, align 4
  br label %while.cond24

while.cond24:                                     ; preds = %while.body26, %if.then22
  %29 = load i32, i32* %idx, align 4
  %30 = load i32, i32* %parameterCount.addr, align 4
  %cmp25 = icmp slt i32 %29, %30
  br i1 %cmp25, label %while.body26, label %while.end

while.body26:                                     ; preds = %while.cond24
  %31 = load %struct.sVString*, %struct.sVString** %ret, align 8
  call void @vStringPut(%struct.sVString* %31, i32 44)
  %32 = load %struct.sVString*, %struct.sVString** %ret, align 8
  %33 = load i8**, i8*** %parameters.addr, align 8
  %34 = load i32, i32* %idx, align 4
  %idxprom27 = sext i32 %34 to i64
  %arrayidx28 = getelementptr inbounds i8*, i8** %33, i64 %idxprom27
  %35 = load i8*, i8** %arrayidx28, align 8
  call void @vStringCatS(%struct.sVString* %32, i8* %35)
  %36 = load i32, i32* %idx, align 4
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %idx, align 4
  br label %while.cond24

while.end:                                        ; preds = %while.cond24
  br label %if.end29

if.end29:                                         ; preds = %while.end, %if.end17
  %37 = load %struct.sCppMacroReplacementPartInfo*, %struct.sCppMacroReplacementPartInfo** %r, align 8
  %flags30 = getelementptr inbounds %struct.sCppMacroReplacementPartInfo, %struct.sCppMacroReplacementPartInfo* %37, i32 0, i32 1
  %38 = load i32, i32* %flags30, align 4
  %and31 = and i32 %38, 2
  %tobool32 = icmp ne i32 %and31, 0
  br i1 %tobool32, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.end29
  %39 = load %struct.sVString*, %struct.sVString** %ret, align 8
  call void @vStringPut(%struct.sVString* %39, i32 34)
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %if.end29
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %land.lhs.true, %if.else
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.end10
  %40 = load %struct.sCppMacroReplacementPartInfo*, %struct.sCppMacroReplacementPartInfo** %r, align 8
  %next = getelementptr inbounds %struct.sCppMacroReplacementPartInfo, %struct.sCppMacroReplacementPartInfo* %40, i32 0, i32 3
  %41 = load %struct.sCppMacroReplacementPartInfo*, %struct.sCppMacroReplacementPartInfo** %next, align 8
  store %struct.sCppMacroReplacementPartInfo* %41, %struct.sCppMacroReplacementPartInfo** %r, align 8
  br label %while.cond

while.end37:                                      ; preds = %while.cond
  %42 = load %struct.sVString*, %struct.sVString** %ret, align 8
  store %struct.sVString* %42, %struct.sVString** %retval, align 8
  br label %return

return:                                           ; preds = %while.end37, %if.then2, %if.then
  %43 = load %struct.sVString*, %struct.sVString** %retval, align 8
  ret %struct.sVString* %43
}

declare %struct.sVString* @vStringNew() #1

declare void @vStringCat(%struct.sVString*, %struct.sVString*) #1

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

declare void @vStringCatS(%struct.sVString*, i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sParserDefinition* @CPreProParser() #0 {
entry:
  %def = alloca %struct.sParserDefinition*, align 8
  %call = call %struct.sParserDefinition* @parserNew(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store %struct.sParserDefinition* %call, %struct.sParserDefinition** %def, align 8
  %0 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %0, i32 0, i32 1
  store %struct.sKindDefinition* getelementptr inbounds ([2 x %struct.sKindDefinition], [2 x %struct.sKindDefinition]* @CPreProKinds, i64 0, i64 0), %struct.sKindDefinition** %kindTable, align 8
  %1 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %1, i32 0, i32 2
  store i32 2, i32* %kindCount, align 8
  %2 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %initialize = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %2, i32 0, i32 6
  store void (i32)* @initializeCpp, void (i32)** %initialize, align 8
  %3 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %parser = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %3, i32 0, i32 8
  store void ()* @findCppTags, void ()** %parser, align 8
  %4 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %parameterHandlerTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %4, i32 0, i32 29
  store %struct.sParameterHandlerTable* getelementptr inbounds ([3 x %struct.sParameterHandlerTable], [3 x %struct.sParameterHandlerTable]* @CpreProParameterHandlerTable, i64 0, i64 0), %struct.sParameterHandlerTable** %parameterHandlerTable, align 8
  %5 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %parameterHandlerCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %5, i32 0, i32 30
  store i32 3, i32* %parameterHandlerCount, align 8
  %6 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  ret %struct.sParserDefinition* %6
}

declare %struct.sParserDefinition* @parserNew(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @initializeCpp(i32 %language) #0 {
entry:
  %language.addr = alloca i32, align 4
  store i32 %language, i32* %language.addr, align 4
  %0 = load i32, i32* %language.addr, align 4
  store i32 %0, i32* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 0), align 8
  %call = call %struct.sHashTable* @makeMacroTable()
  store %struct.sHashTable* %call, %struct.sHashTable** @defineMacroTable, align 8
  %1 = load %struct.sHashTable*, %struct.sHashTable** @defineMacroTable, align 8
  %2 = bitcast %struct.sHashTable* %1 to i8*
  %call1 = call i8* @trashBoxPut(%struct.sTrashBox* null, i8* %2, void (i8*)* bitcast (void (%struct.sHashTable*)* @hashTableDelete to void (i8*)*))
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @findCppTags() #0 {
entry:
  %0 = load i32, i32* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 0), align 8
  call void @cppInitCommon(i32 %0, i1 zeroext false, i1 zeroext false, i1 zeroext false, i1 zeroext false, i32 -1, i32 0, i32 -1, i32 0, i32 0)
  call void @findRegexTagsMainloop(i32 ()* @cppGetc)
  call void @cppTerminate()
  ret void
}

declare i32 @getNamedLanguage(i8*, i64) #1

declare void @initializeParser(i32) #1

declare %struct.sVString* @vStringNewOrClear(%struct.sVString*) #1

declare i32 @getcFromInputFile() #1

declare %struct.sTagEntryInfo* @getEntryInCorkQueue(i32) #1

declare i64 @getInputLineNumber() #1

declare i8* @strchr(i8*, i32) #1

; Function Attrs: nounwind readonly
declare i32 @toupper(i32) #3

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @isCxxRawLiteralDelimiterChar(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %cmp = icmp ne i32 %0, 32
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %c.addr, align 4
  %cmp1 = icmp ne i32 %1, 12
  br i1 %cmp1, label %land.lhs.true2, label %land.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %2 = load i32, i32* %c.addr, align 4
  %cmp3 = icmp ne i32 %2, 10
  br i1 %cmp3, label %land.lhs.true4, label %land.end

land.lhs.true4:                                   ; preds = %land.lhs.true2
  %3 = load i32, i32* %c.addr, align 4
  %cmp5 = icmp ne i32 %3, 13
  br i1 %cmp5, label %land.lhs.true6, label %land.end

land.lhs.true6:                                   ; preds = %land.lhs.true4
  %4 = load i32, i32* %c.addr, align 4
  %cmp7 = icmp ne i32 %4, 9
  br i1 %cmp7, label %land.lhs.true8, label %land.end

land.lhs.true8:                                   ; preds = %land.lhs.true6
  %5 = load i32, i32* %c.addr, align 4
  %cmp9 = icmp ne i32 %5, 11
  br i1 %cmp9, label %land.lhs.true10, label %land.end

land.lhs.true10:                                  ; preds = %land.lhs.true8
  %6 = load i32, i32* %c.addr, align 4
  %cmp11 = icmp ne i32 %6, 40
  br i1 %cmp11, label %land.lhs.true12, label %land.end

land.lhs.true12:                                  ; preds = %land.lhs.true10
  %7 = load i32, i32* %c.addr, align 4
  %cmp13 = icmp ne i32 %7, 41
  br i1 %cmp13, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true12
  %8 = load i32, i32* %c.addr, align 4
  %cmp14 = icmp ne i32 %8, 92
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true12, %land.lhs.true10, %land.lhs.true8, %land.lhs.true6, %land.lhs.true4, %land.lhs.true2, %land.lhs.true, %entry
  %9 = phi i1 [ false, %land.lhs.true12 ], [ false, %land.lhs.true10 ], [ false, %land.lhs.true8 ], [ false, %land.lhs.true6 ], [ false, %land.lhs.true4 ], [ false, %land.lhs.true2 ], [ false, %land.lhs.true ], [ false, %entry ], [ %cmp14, %land.rhs ]
  %land.ext = zext i1 %9 to i32
  ret i32 %land.ext
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @isIgnore() #0 {
entry:
  %0 = load i32, i32* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 17, i32 3), align 8
  %idxprom = zext i32 %0 to i64
  %arrayidx = getelementptr inbounds [20 x %struct.sConditionalInfo], [20 x %struct.sConditionalInfo]* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 17, i32 4), i64 0, i64 %idxprom
  %ignoring = getelementptr inbounds %struct.sConditionalInfo, %struct.sConditionalInfo* %arrayidx, i32 0, i32 3
  %1 = load i8, i8* %ignoring, align 1
  %tobool = trunc i8 %1 to i1
  ret i1 %tobool
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @directiveDefine(i32 %c, i1 zeroext %undef) #0 {
entry:
  %c.addr = alloca i32, align 4
  %undef.addr = alloca i8, align 1
  %r = alloca i32, align 4
  %p = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  %frombool = zext i1 %undef to i8
  store i8 %frombool, i8* %undef.addr, align 1
  store i32 0, i32* %r, align 4
  %0 = load i32, i32* %c.addr, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %c.addr, align 4
  %cmp1 = icmp slt i32 %1, 128
  br i1 %cmp1, label %land.lhs.true2, label %lor.lhs.false

land.lhs.true2:                                   ; preds = %land.lhs.true
  %2 = load i32, i32* %c.addr, align 4
  %call = call i32 @isalpha(i32 %2) #4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true2, %land.lhs.true, %entry
  %3 = load i32, i32* %c.addr, align 4
  %cmp3 = icmp eq i32 %3, 95
  br i1 %cmp3, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %4 = load i32, i32* %c.addr, align 4
  %cmp5 = icmp eq i32 %4, 126
  br i1 %cmp5, label %if.then, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false4
  %5 = load i32, i32* %c.addr, align 4
  %cmp7 = icmp eq i32 %5, 36
  br i1 %cmp7, label %if.then, label %if.end36

if.then:                                          ; preds = %lor.lhs.false6, %lor.lhs.false4, %lor.lhs.false, %land.lhs.true2
  %6 = load i32, i32* %c.addr, align 4
  %7 = load %struct.sVString*, %struct.sVString** getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 17, i32 2), align 8
  call void @readIdentifier(i32 %6, %struct.sVString* %7)
  %call8 = call zeroext i1 @isIgnore()
  br i1 %call8, label %if.end35, label %if.then9

if.then9:                                         ; preds = %if.then
  %call10 = call i32 @cppGetcFromUngetBufferOrFile()
  store i32 %call10, i32* %p, align 4
  %8 = load i32, i32* %p, align 4
  %cmp11 = icmp eq i32 %8, 40
  br i1 %cmp11, label %if.then12, label %if.else30

if.then12:                                        ; preds = %if.then9
  %9 = load %struct.sVString*, %struct.sVString** @signature, align 8
  %call13 = call %struct.sVString* @vStringNewOrClearWithAutoRelease(%struct.sVString* %9)
  store %struct.sVString* %call13, %struct.sVString** @signature, align 8
  br label %do.body

do.body:                                          ; preds = %land.end, %if.then12
  %10 = load i32, i32* %p, align 4
  %cmp14 = icmp eq i32 %10, 32
  br i1 %cmp14, label %if.end, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %do.body
  %11 = load i32, i32* %p, align 4
  %cmp16 = icmp eq i32 %11, 9
  br i1 %cmp16, label %if.end, label %if.then17

if.then17:                                        ; preds = %lor.lhs.false15
  %12 = load %struct.sVString*, %struct.sVString** @signature, align 8
  %13 = load i32, i32* %p, align 4
  call void @vStringPut(%struct.sVString* %12, i32 %13)
  br label %if.end

if.end:                                           ; preds = %if.then17, %lor.lhs.false15, %do.body
  %call18 = call i32 @cppGetcFromUngetBufferOrFile()
  store i32 %call18, i32* %p, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %14 = load i32, i32* %p, align 4
  %cmp19 = icmp ne i32 %14, 41
  br i1 %cmp19, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %15 = load i32, i32* %p, align 4
  %cmp20 = icmp ne i32 %15, -1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %16 = phi i1 [ false, %do.cond ], [ %cmp20, %land.rhs ]
  br i1 %16, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  %17 = load i32, i32* %p, align 4
  %cmp21 = icmp eq i32 %17, 41
  br i1 %cmp21, label %if.then22, label %if.else

if.then22:                                        ; preds = %do.end
  %18 = load %struct.sVString*, %struct.sVString** @signature, align 8
  %19 = load i32, i32* %p, align 4
  call void @vStringPut(%struct.sVString* %18, i32 %19)
  %20 = load %struct.sVString*, %struct.sVString** getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 17, i32 2), align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %20, i32 0, i32 2
  %21 = load i8*, i8** %buffer, align 8
  %22 = load %struct.sVString*, %struct.sVString** @signature, align 8
  %buffer23 = getelementptr inbounds %struct.sVString, %struct.sVString* %22, i32 0, i32 2
  %23 = load i8*, i8** %buffer23, align 8
  %24 = load i8, i8* %undef.addr, align 1
  %tobool24 = trunc i8 %24 to i1
  %call25 = call i32 @makeDefineTag(i8* %21, i8* %23, i1 zeroext %tobool24)
  store i32 %call25, i32* %r, align 4
  br label %if.end29

if.else:                                          ; preds = %do.end
  %25 = load %struct.sVString*, %struct.sVString** getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 17, i32 2), align 8
  %buffer26 = getelementptr inbounds %struct.sVString, %struct.sVString* %25, i32 0, i32 2
  %26 = load i8*, i8** %buffer26, align 8
  %27 = load i8, i8* %undef.addr, align 1
  %tobool27 = trunc i8 %27 to i1
  %call28 = call i32 @makeDefineTag(i8* %26, i8* null, i1 zeroext %tobool27)
  store i32 %call28, i32* %r, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.then22
  br label %if.end34

if.else30:                                        ; preds = %if.then9
  %28 = load i32, i32* %p, align 4
  call void @cppUngetc(i32 %28)
  %29 = load %struct.sVString*, %struct.sVString** getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 17, i32 2), align 8
  %buffer31 = getelementptr inbounds %struct.sVString, %struct.sVString* %29, i32 0, i32 2
  %30 = load i8*, i8** %buffer31, align 8
  %31 = load i8, i8* %undef.addr, align 1
  %tobool32 = trunc i8 %31 to i1
  %call33 = call i32 @makeDefineTag(i8* %30, i8* null, i1 zeroext %tobool32)
  store i32 %call33, i32* %r, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.else30, %if.end29
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.then
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %lor.lhs.false6
  store i32 0, i32* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 17, i32 0), align 8
  %32 = load i32, i32* %r, align 4
  ret i32 %32
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @directiveHash(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  %ignore = alloca i8, align 1
  %directive = alloca [10 x i8], align 1
  store i32 %c, i32* %c.addr, align 4
  store i8 0, i8* %ignore, align 1
  %0 = load i32, i32* %c.addr, align 4
  %arraydecay = getelementptr inbounds [10 x i8], [10 x i8]* %directive, i64 0, i64 0
  %call = call zeroext i1 @readDirective(i32 %0, i8* %arraydecay, i32 10)
  %arraydecay1 = getelementptr inbounds [10 x i8], [10 x i8]* %directive, i64 0, i64 0
  %call2 = call i32 @strcmp(i8* %arraydecay1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %cmp = icmp eq i32 %call2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 17, i32 0), align 8
  br label %if.end50

if.else:                                          ; preds = %entry
  %arraydecay3 = getelementptr inbounds [10 x i8], [10 x i8]* %directive, i64 0, i64 0
  %call4 = call i32 @strcmp(i8* %arraydecay3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %if.then6, label %if.else7

if.then6:                                         ; preds = %if.else
  store i32 6, i32* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 17, i32 0), align 8
  br label %if.end49

if.else7:                                         ; preds = %if.else
  %arraydecay8 = getelementptr inbounds [10 x i8], [10 x i8]* %directive, i64 0, i64 0
  %call9 = call i32 @strcmp(i8* %arraydecay8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.else12

if.then11:                                        ; preds = %if.else7
  store i32 5, i32* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 17, i32 0), align 8
  br label %if.end48

if.else12:                                        ; preds = %if.else7
  %arraydecay13 = getelementptr inbounds [10 x i8], [10 x i8]* %directive, i64 0, i64 0
  %call14 = call i32 @strncmp(i8* %arraydecay13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i64 2)
  %cmp15 = icmp eq i32 %call14, 0
  br i1 %cmp15, label %if.then16, label %if.else17

if.then16:                                        ; preds = %if.else12
  store i32 3, i32* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 17, i32 0), align 8
  br label %if.end47

if.else17:                                        ; preds = %if.else12
  %arraydecay18 = getelementptr inbounds [10 x i8], [10 x i8]* %directive, i64 0, i64 0
  %call19 = call i32 @strcmp(i8* %arraydecay18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %cmp20 = icmp eq i32 %call19, 0
  br i1 %cmp20, label %if.then24, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else17
  %arraydecay21 = getelementptr inbounds [10 x i8], [10 x i8]* %directive, i64 0, i64 0
  %call22 = call i32 @strcmp(i8* %arraydecay21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %cmp23 = icmp eq i32 %call22, 0
  br i1 %cmp23, label %if.then24, label %if.else31

if.then24:                                        ; preds = %lor.lhs.false, %if.else17
  %call25 = call zeroext i1 @isIgnoreBranch()
  %call26 = call zeroext i1 @setIgnore(i1 zeroext %call25)
  %frombool = zext i1 %call26 to i8
  store i8 %frombool, i8* %ignore, align 1
  br label %do.body

do.body:                                          ; preds = %if.then24
  br label %do.end

do.end:                                           ; preds = %do.body
  %1 = load i8, i8* %ignore, align 1
  %tobool = trunc i8 %1 to i1
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %do.end
  %arraydecay27 = getelementptr inbounds [10 x i8], [10 x i8]* %directive, i64 0, i64 0
  %call28 = call i32 @strcmp(i8* %arraydecay27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %cmp29 = icmp eq i32 %call28, 0
  br i1 %cmp29, label %if.then30, label %if.end

if.then30:                                        ; preds = %land.lhs.true
  call void @chooseBranch()
  br label %if.end

if.end:                                           ; preds = %if.then30, %land.lhs.true, %do.end
  store i32 0, i32* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 17, i32 0), align 8
  br label %if.end46

if.else31:                                        ; preds = %lor.lhs.false
  %arraydecay32 = getelementptr inbounds [10 x i8], [10 x i8]* %directive, i64 0, i64 0
  %call33 = call i32 @strcmp(i8* %arraydecay32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %cmp34 = icmp eq i32 %call33, 0
  br i1 %cmp34, label %if.then35, label %if.else38

if.then35:                                        ; preds = %if.else31
  %call36 = call zeroext i1 @popConditional()
  %frombool37 = zext i1 %call36 to i8
  store i8 %frombool37, i8* %ignore, align 1
  store i32 0, i32* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 17, i32 0), align 8
  br label %if.end45

if.else38:                                        ; preds = %if.else31
  %arraydecay39 = getelementptr inbounds [10 x i8], [10 x i8]* %directive, i64 0, i64 0
  %call40 = call i32 @strcmp(i8* %arraydecay39, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %cmp41 = icmp eq i32 %call40, 0
  br i1 %cmp41, label %if.then42, label %if.else43

if.then42:                                        ; preds = %if.else38
  store i32 4, i32* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 17, i32 0), align 8
  br label %if.end44

if.else43:                                        ; preds = %if.else38
  store i32 0, i32* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 17, i32 0), align 8
  br label %if.end44

if.end44:                                         ; preds = %if.else43, %if.then42
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %if.then35
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %if.end
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %if.then16
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %if.then11
  br label %if.end49

if.end49:                                         ; preds = %if.end48, %if.then6
  br label %if.end50

if.end50:                                         ; preds = %if.end49, %if.then
  %2 = load i8, i8* %ignore, align 1
  %tobool51 = trunc i8 %2 to i1
  ret i1 %tobool51
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @directiveIf(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  %ignore = alloca i8, align 1
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %cmp = icmp ne i32 %0, 48
  %call = call zeroext i1 @pushConditional(i1 zeroext %cmp)
  %frombool = zext i1 %call to i8
  store i8 %frombool, i8* %ignore, align 1
  store i32 0, i32* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 17, i32 0), align 8
  %1 = load i8, i8* %ignore, align 1
  %tobool = trunc i8 %1 to i1
  ret i1 %tobool
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @directivePragma(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %c.addr, align 4
  %cmp1 = icmp slt i32 %1, 128
  br i1 %cmp1, label %land.lhs.true2, label %lor.lhs.false

land.lhs.true2:                                   ; preds = %land.lhs.true
  %2 = load i32, i32* %c.addr, align 4
  %call = call i32 @isalpha(i32 %2) #4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true2, %land.lhs.true, %entry
  %3 = load i32, i32* %c.addr, align 4
  %cmp3 = icmp eq i32 %3, 95
  br i1 %cmp3, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %4 = load i32, i32* %c.addr, align 4
  %cmp5 = icmp eq i32 %4, 126
  br i1 %cmp5, label %if.then, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false4
  %5 = load i32, i32* %c.addr, align 4
  %cmp7 = icmp eq i32 %5, 36
  br i1 %cmp7, label %if.then, label %if.end29

if.then:                                          ; preds = %lor.lhs.false6, %lor.lhs.false4, %lor.lhs.false, %land.lhs.true2
  %6 = load i32, i32* %c.addr, align 4
  %7 = load %struct.sVString*, %struct.sVString** getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 17, i32 2), align 8
  call void @readIdentifier(i32 %6, %struct.sVString* %7)
  %8 = load %struct.sVString*, %struct.sVString** getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 17, i32 2), align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %8, i32 0, i32 2
  %9 = load i8*, i8** %buffer, align 8
  %call8 = call i32 @strcmp(i8* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %if.then10, label %if.end28

if.then10:                                        ; preds = %if.then
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then10
  %call11 = call i32 @cppGetcFromUngetBufferOrFile()
  store i32 %call11, i32* %c.addr, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %10 = load i32, i32* %c.addr, align 4
  %cmp12 = icmp eq i32 %10, 32
  br i1 %cmp12, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %11 = load i32, i32* %c.addr, align 4
  %cmp13 = icmp sge i32 %11, 0
  br i1 %cmp13, label %land.lhs.true14, label %lor.lhs.false19

land.lhs.true14:                                  ; preds = %do.end
  %12 = load i32, i32* %c.addr, align 4
  %cmp15 = icmp slt i32 %12, 128
  br i1 %cmp15, label %land.lhs.true16, label %lor.lhs.false19

land.lhs.true16:                                  ; preds = %land.lhs.true14
  %13 = load i32, i32* %c.addr, align 4
  %call17 = call i32 @isalpha(i32 %13) #4
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.then25, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %land.lhs.true16, %land.lhs.true14, %do.end
  %14 = load i32, i32* %c.addr, align 4
  %cmp20 = icmp eq i32 %14, 95
  br i1 %cmp20, label %if.then25, label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %lor.lhs.false19
  %15 = load i32, i32* %c.addr, align 4
  %cmp22 = icmp eq i32 %15, 126
  br i1 %cmp22, label %if.then25, label %lor.lhs.false23

lor.lhs.false23:                                  ; preds = %lor.lhs.false21
  %16 = load i32, i32* %c.addr, align 4
  %cmp24 = icmp eq i32 %16, 36
  br i1 %cmp24, label %if.then25, label %if.end

if.then25:                                        ; preds = %lor.lhs.false23, %lor.lhs.false21, %lor.lhs.false19, %land.lhs.true16
  %17 = load i32, i32* %c.addr, align 4
  %18 = load %struct.sVString*, %struct.sVString** getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 17, i32 2), align 8
  call void @readIdentifier(i32 %17, %struct.sVString* %18)
  %19 = load %struct.sVString*, %struct.sVString** getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 17, i32 2), align 8
  %buffer26 = getelementptr inbounds %struct.sVString, %struct.sVString* %19, i32 0, i32 2
  %20 = load i8*, i8** %buffer26, align 8
  %call27 = call i32 @makeDefineTag(i8* %20, i8* null, i1 zeroext false)
  br label %if.end

if.end:                                           ; preds = %if.then25, %lor.lhs.false23
  br label %if.end28

if.end28:                                         ; preds = %if.end, %if.then
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %lor.lhs.false6
  store i32 0, i32* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 17, i32 0), align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @directiveUndef(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  %call = call zeroext i1 @isXtagEnabled(i32 4)
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %0 = load i32, i32* %c.addr, align 4
  %call1 = call i32 @directiveDefine(i32 %0, i1 zeroext true)
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, i32* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 17, i32 0), align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @directiveInclude(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %cmp = icmp eq i32 %0, 60
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %c.addr, align 4
  %cmp1 = icmp eq i32 %1, 34
  br i1 %cmp1, label %if.then, label %if.end4

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load i32, i32* %c.addr, align 4
  %3 = load %struct.sVString*, %struct.sVString** getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 17, i32 2), align 8
  call void @readFilename(i32 %2, %struct.sVString* %3)
  %call = call zeroext i1 @isIgnore()
  br i1 %call, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then
  %4 = load %struct.sVString*, %struct.sVString** getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 17, i32 2), align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %4, i32 0, i32 0
  %5 = load i64, i64* %length, align 8
  %tobool = icmp ne i64 %5, 0
  br i1 %tobool, label %if.then2, label %if.end

if.then2:                                         ; preds = %land.lhs.true
  %6 = load %struct.sVString*, %struct.sVString** getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 17, i32 2), align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %6, i32 0, i32 2
  %7 = load i8*, i8** %buffer, align 8
  %8 = load i32, i32* %c.addr, align 4
  %cmp3 = icmp eq i32 %8, 60
  call void @makeIncludeTag(i8* %7, i1 zeroext %cmp3)
  br label %if.end

if.end:                                           ; preds = %if.then2, %land.lhs.true, %if.then
  br label %if.end4

if.end4:                                          ; preds = %if.end, %lor.lhs.false
  store i32 0, i32* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 17, i32 0), align 8
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @isalpha(i32) #3

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @readIdentifier(i32 %c, %struct.sVString* %name) #0 {
entry:
  %c.addr = alloca i32, align 4
  %name.addr = alloca %struct.sVString*, align 8
  %vStringClear_s = alloca %struct.sVString*, align 8
  store i32 %c, i32* %c.addr, align 4
  store %struct.sVString* %name, %struct.sVString** %name.addr, align 8
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
  br label %do.body1

do.body1:                                         ; preds = %land.end, %do.end
  %4 = load %struct.sVString*, %struct.sVString** %name.addr, align 8
  %5 = load i32, i32* %c.addr, align 4
  call void @vStringPut(%struct.sVString* %4, i32 %5)
  %call = call i32 @cppGetcFromUngetBufferOrFile()
  store i32 %call, i32* %c.addr, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body1
  %6 = load i32, i32* %c.addr, align 4
  %cmp = icmp ne i32 %6, -1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %7 = load i32, i32* %c.addr, align 4
  %call2 = call i32 @isalnum(i32 %7) #4
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.rhs
  %8 = load i32, i32* %c.addr, align 4
  %cmp3 = icmp eq i32 %8, 95
  br i1 %cmp3, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %9 = load i32, i32* %c.addr, align 4
  %cmp4 = icmp eq i32 %9, 36
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %land.rhs
  %10 = phi i1 [ true, %lor.lhs.false ], [ true, %land.rhs ], [ %cmp4, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %do.cond
  %11 = phi i1 [ false, %do.cond ], [ %10, %lor.end ]
  br i1 %11, label %do.body1, label %do.end5

do.end5:                                          ; preds = %land.end
  %12 = load i32, i32* %c.addr, align 4
  call void @cppUngetc(i32 %12)
  ret void
}

declare %struct.sVString* @vStringNewOrClearWithAutoRelease(%struct.sVString*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @makeDefineTag(i8* %name, i8* %signature, i1 zeroext %undef) #0 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %signature.addr = alloca i8*, align 8
  %undef.addr = alloca i8, align 1
  %standing_alone = alloca i8, align 1
  %lang = alloca i32, align 4
  %isFileScope = alloca i8, align 1
  %e = alloca %struct.sTagEntryInfo, align 8
  %r = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i8* %signature, i8** %signature.addr, align 8
  %frombool = zext i1 %undef to i8
  store i8 %frombool, i8* %undef.addr, align 1
  %call = call zeroext i1 @doesCPreProRunAsStandaloneParser(i32 0)
  %frombool1 = zext i1 %call to i8
  store i8 %frombool1, i8* %standing_alone, align 1
  %0 = load i8, i8* %standing_alone, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i32, i32* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 0), align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load i32, i32* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 1), align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %1, %cond.true ], [ %2, %cond.false ]
  store i32 %cond, i32* %lang, align 4
  %call2 = call zeroext i1 @isInputHeaderFile()
  %lnot = xor i1 %call2, true
  %frombool3 = zext i1 %lnot to i8
  store i8 %frombool3, i8* %isFileScope, align 1
  %3 = load i32, i32* %lang, align 4
  %call4 = call zeroext i1 @isLanguageEnabled(i32 %3)
  br i1 %call4, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %cond.end
  br label %do.body

do.body:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.body
  %4 = load i8, i8* %isFileScope, align 1
  %tobool5 = trunc i8 %4 to i1
  br i1 %tobool5, label %land.lhs.true, label %if.end8

land.lhs.true:                                    ; preds = %do.end
  %call6 = call zeroext i1 @isXtagEnabled(i32 0)
  br i1 %call6, label %if.end8, label %if.then7

if.then7:                                         ; preds = %land.lhs.true
  store i32 0, i32* %retval, align 4
  br label %return

if.end8:                                          ; preds = %land.lhs.true, %do.end
  %5 = load i8, i8* %undef.addr, align 1
  %tobool9 = trunc i8 %5 to i1
  br i1 %tobool9, label %land.lhs.true10, label %if.end12

land.lhs.true10:                                  ; preds = %if.end8
  %6 = load i32, i32* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 12), align 8
  %cmp = icmp eq i32 %6, -1
  br i1 %cmp, label %if.then11, label %if.end12

if.then11:                                        ; preds = %land.lhs.true10
  store i32 0, i32* %retval, align 4
  br label %return

if.end12:                                         ; preds = %land.lhs.true10, %if.end8
  %7 = load i32, i32* %lang, align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 11), align 4
  %call13 = call zeroext i1 @isLanguageKindEnabled(i32 %7, i32 %8)
  br i1 %call13, label %if.end15, label %if.then14

if.then14:                                        ; preds = %if.end12
  store i32 0, i32* %retval, align 4
  br label %return

if.end15:                                         ; preds = %if.end12
  %9 = load i8, i8* %undef.addr, align 1
  %tobool16 = trunc i8 %9 to i1
  br i1 %tobool16, label %lor.lhs.false, label %if.then22

lor.lhs.false:                                    ; preds = %if.end15
  %10 = load i8, i8* %undef.addr, align 1
  %tobool17 = trunc i8 %10 to i1
  br i1 %tobool17, label %land.lhs.true18, label %if.end42

land.lhs.true18:                                  ; preds = %lor.lhs.false
  %call19 = call zeroext i1 @isXtagEnabled(i32 4)
  br i1 %call19, label %land.lhs.true20, label %if.end42

land.lhs.true20:                                  ; preds = %land.lhs.true18
  %11 = load i32, i32* %lang, align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 11), align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 12), align 8
  %call21 = call zeroext i1 @isLanguageRoleEnabled(i32 %11, i32 %12, i32 %13)
  br i1 %call21, label %if.then22, label %if.end42

if.then22:                                        ; preds = %land.lhs.true20, %if.end15
  %14 = load i8, i8* %standing_alone, align 1
  %tobool23 = trunc i8 %14 to i1
  br i1 %tobool23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.then22
  %15 = load i32, i32* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 0), align 8
  call void @pushLanguage(i32 %15)
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.then22
  %16 = load i8, i8* %undef.addr, align 1
  %tobool26 = trunc i8 %16 to i1
  br i1 %tobool26, label %if.then27, label %if.else

if.then27:                                        ; preds = %if.end25
  %17 = load i8*, i8** %name.addr, align 8
  %18 = load i32, i32* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 11), align 4
  %19 = load i32, i32* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 12), align 8
  call void @initRefTagEntry(%struct.sTagEntryInfo* %e, i8* %17, i32 %18, i32 %19)
  br label %if.end28

if.else:                                          ; preds = %if.end25
  %20 = load i8*, i8** %name.addr, align 8
  %21 = load i32, i32* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 11), align 4
  call void @initTagEntry(%struct.sTagEntryInfo* %e, i8* %20, i32 %21)
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.then27
  %22 = load i8, i8* %isFileScope, align 1
  %tobool29 = trunc i8 %22 to i1
  %conv = zext i1 %tobool29 to i32
  %23 = bitcast %struct.sTagEntryInfo* %e to i8*
  %24 = trunc i32 %conv to i8
  %bf.load = load i8, i8* %23, align 8
  %bf.value = and i8 %24, 1
  %bf.shl = shl i8 %bf.value, 1
  %bf.clear = and i8 %bf.load, -3
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, i8* %23, align 8
  %bf.result.cast = zext i8 %bf.value to i32
  %25 = load i8, i8* %isFileScope, align 1
  %tobool30 = trunc i8 %25 to i1
  br i1 %tobool30, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.end28
  call void @markTagExtraBit(%struct.sTagEntryInfo* %e, i32 0)
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.end28
  %26 = bitcast %struct.sTagEntryInfo* %e to i8*
  %bf.load33 = load i8, i8* %26, align 8
  %bf.clear34 = and i8 %bf.load33, -9
  %bf.set35 = or i8 %bf.clear34, 8
  store i8 %bf.set35, i8* %26, align 8
  %27 = load i8*, i8** %signature.addr, align 8
  %extensionFields = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %e, i32 0, i32 11
  %signature36 = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields, i32 0, i32 8
  store i8* %27, i8** %signature36, align 8
  %call37 = call i32 @makeTagEntry(%struct.sTagEntryInfo* %e)
  store i32 %call37, i32* %r, align 4
  %28 = load i8, i8* %standing_alone, align 1
  %tobool38 = trunc i8 %28 to i1
  br i1 %tobool38, label %if.then39, label %if.end41

if.then39:                                        ; preds = %if.end32
  %call40 = call i32 @popLanguage()
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %if.end32
  %29 = load i32, i32* %r, align 4
  store i32 %29, i32* %retval, align 4
  br label %return

if.end42:                                         ; preds = %land.lhs.true20, %land.lhs.true18, %lor.lhs.false
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end42, %if.end41, %if.then14, %if.then11, %if.then7, %if.then
  %30 = load i32, i32* %retval, align 4
  ret i32 %30
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @doesCPreProRunAsStandaloneParser(i32 %kind) #0 {
entry:
  %retval = alloca i1, align 1
  %kind.addr = alloca i32, align 4
  store i32 %kind, i32* %kind.addr, align 4
  %0 = load i32, i32* %kind.addr, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i8, i8* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 10), align 8
  %tobool = trunc i8 %1 to i1
  %lnot = xor i1 %tobool, true
  store i1 %lnot, i1* %retval, align 1
  br label %return

if.else:                                          ; preds = %entry
  %2 = load i32, i32* %kind.addr, align 4
  %cmp1 = icmp eq i32 %2, 0
  br i1 %cmp1, label %if.then2, label %if.else5

if.then2:                                         ; preds = %if.else
  %3 = load i8, i8* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 13), align 4
  %tobool3 = trunc i8 %3 to i1
  %lnot4 = xor i1 %tobool3, true
  store i1 %lnot4, i1* %retval, align 1
  br label %return

if.else5:                                         ; preds = %if.else
  br label %do.body

do.body:                                          ; preds = %if.else5
  br label %do.end

do.end:                                           ; preds = %do.body
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %do.end, %if.then2, %if.then
  %4 = load i1, i1* %retval, align 1
  ret i1 %4
}

declare zeroext i1 @isInputHeaderFile() #1

declare zeroext i1 @isLanguageEnabled(i32) #1

declare zeroext i1 @isXtagEnabled(i32) #1

declare zeroext i1 @isLanguageKindEnabled(i32, i32) #1

declare zeroext i1 @isLanguageRoleEnabled(i32, i32, i32) #1

declare void @pushLanguage(i32) #1

declare void @initRefTagEntry(%struct.sTagEntryInfo*, i8*, i32, i32) #1

declare void @initTagEntry(%struct.sTagEntryInfo*, i8*, i32) #1

declare void @markTagExtraBit(%struct.sTagEntryInfo*, i32) #1

declare i32 @makeTagEntry(%struct.sTagEntryInfo*) #1

declare i32 @popLanguage() #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @readDirective(i32 %c, i8* %name, i32 %maxLength) #0 {
entry:
  %c.addr = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %maxLength.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 %maxLength, i32* %maxLength.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %maxLength.addr, align 4
  %sub = sub i32 %1, 1
  %cmp = icmp ult i32 %0, %sub
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %cmp1 = icmp ugt i32 %2, 0
  br i1 %cmp1, label %if.then, label %if.end5

if.then:                                          ; preds = %for.body
  %call = call i32 @cppGetcFromUngetBufferOrFile()
  store i32 %call, i32* %c.addr, align 4
  %3 = load i32, i32* %c.addr, align 4
  %cmp2 = icmp eq i32 %3, -1
  br i1 %cmp2, label %if.then4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %4 = load i32, i32* %c.addr, align 4
  %call3 = call i32 @isalpha(i32 %4) #4
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.end, label %if.then4

if.then4:                                         ; preds = %lor.lhs.false, %if.then
  %5 = load i32, i32* %c.addr, align 4
  call void @cppUngetc(i32 %5)
  br label %for.end

if.end:                                           ; preds = %lor.lhs.false
  br label %if.end5

if.end5:                                          ; preds = %if.end, %for.body
  %6 = load i32, i32* %c.addr, align 4
  %conv = trunc i32 %6 to i8
  %7 = load i8*, i8** %name.addr, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom = zext i32 %8 to i64
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %idxprom
  store i8 %conv, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end5
  %9 = load i32, i32* %i, align 4
  %inc = add i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then4, %for.cond
  %10 = load i8*, i8** %name.addr, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom6 = zext i32 %11 to i64
  %arrayidx7 = getelementptr inbounds i8, i8* %10, i64 %idxprom6
  store i8 0, i8* %arrayidx7, align 1
  %12 = load i32, i32* %c.addr, align 4
  %cmp8 = icmp eq i32 %12, 32
  br i1 %cmp8, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %for.end
  %13 = load i32, i32* %c.addr, align 4
  %cmp10 = icmp eq i32 %13, 9
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.end
  %14 = phi i1 [ true, %for.end ], [ %cmp10, %lor.rhs ]
  ret i1 %14
}

declare i32 @strcmp(i8*, i8*) #1

declare i32 @strncmp(i8*, i8*, i64) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @setIgnore(i1 zeroext %ignore) #0 {
entry:
  %ignore.addr = alloca i8, align 1
  %frombool = zext i1 %ignore to i8
  store i8 %frombool, i8* %ignore.addr, align 1
  %0 = load i8, i8* %ignore.addr, align 1
  %tobool = trunc i8 %0 to i1
  %1 = load i32, i32* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 17, i32 3), align 8
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr inbounds [20 x %struct.sConditionalInfo], [20 x %struct.sConditionalInfo]* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 17, i32 4), i64 0, i64 %idxprom
  %ignoring = getelementptr inbounds %struct.sConditionalInfo, %struct.sConditionalInfo* %arrayidx, i32 0, i32 3
  %frombool1 = zext i1 %tobool to i8
  store i8 %frombool1, i8* %ignoring, align 1
  ret i1 %tobool
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @isIgnoreBranch() #0 {
entry:
  %ifdef = alloca %struct.sConditionalInfo*, align 8
  %call = call %struct.sConditionalInfo* @currentConditional()
  store %struct.sConditionalInfo* %call, %struct.sConditionalInfo** %ifdef, align 8
  %0 = load i8, i8* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 6), align 4
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.sConditionalInfo*, %struct.sConditionalInfo** %ifdef, align 8
  %enterExternalParserBlockNestLevel = getelementptr inbounds %struct.sConditionalInfo, %struct.sConditionalInfo* %1, i32 0, i32 4
  %2 = load i32, i32* %enterExternalParserBlockNestLevel, align 4
  %3 = load i32, i32* @externalParserBlockNestLevel, align 4
  %cmp = icmp ne i32 %2, %3
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false, %entry
  %4 = load i8, i8* @BraceFormat, align 1
  %tobool1 = trunc i8 %4 to i1
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  br label %do.body

do.body:                                          ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %do.body
  %5 = load %struct.sConditionalInfo*, %struct.sConditionalInfo** %ifdef, align 8
  %singleBranch = getelementptr inbounds %struct.sConditionalInfo, %struct.sConditionalInfo* %5, i32 0, i32 1
  store i8 1, i8* %singleBranch, align 1
  br label %if.end

if.end:                                           ; preds = %do.end, %land.lhs.true, %lor.lhs.false
  %6 = load %struct.sConditionalInfo*, %struct.sConditionalInfo** %ifdef, align 8
  %ignoreAllBranches = getelementptr inbounds %struct.sConditionalInfo, %struct.sConditionalInfo* %6, i32 0, i32 0
  %7 = load i8, i8* %ignoreAllBranches, align 4
  %tobool2 = trunc i8 %7 to i1
  br i1 %tobool2, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end
  %8 = load %struct.sConditionalInfo*, %struct.sConditionalInfo** %ifdef, align 8
  %branchChosen = getelementptr inbounds %struct.sConditionalInfo, %struct.sConditionalInfo* %8, i32 0, i32 2
  %9 = load i8, i8* %branchChosen, align 2
  %tobool3 = trunc i8 %9 to i1
  br i1 %tobool3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %10 = load %struct.sConditionalInfo*, %struct.sConditionalInfo** %ifdef, align 8
  %singleBranch4 = getelementptr inbounds %struct.sConditionalInfo, %struct.sConditionalInfo* %10, i32 0, i32 1
  %11 = load i8, i8* %singleBranch4, align 1
  %tobool5 = trunc i8 %11 to i1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %12 = phi i1 [ false, %lor.rhs ], [ %tobool5, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %if.end
  %13 = phi i1 [ true, %if.end ], [ %12, %land.end ]
  ret i1 %13
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @chooseBranch() #0 {
entry:
  %ifdef = alloca %struct.sConditionalInfo*, align 8
  %0 = load i8, i8* @BraceFormat, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call %struct.sConditionalInfo* @currentConditional()
  store %struct.sConditionalInfo* %call, %struct.sConditionalInfo** %ifdef, align 8
  %1 = load %struct.sConditionalInfo*, %struct.sConditionalInfo** %ifdef, align 8
  %singleBranch = getelementptr inbounds %struct.sConditionalInfo, %struct.sConditionalInfo* %1, i32 0, i32 1
  %2 = load i8, i8* %singleBranch, align 1
  %tobool1 = trunc i8 %2 to i1
  br i1 %tobool1, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.then
  %3 = load i8, i8* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 6), align 4
  %tobool2 = trunc i8 %3 to i1
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then
  %4 = phi i1 [ true, %if.then ], [ %tobool2, %lor.rhs ]
  %5 = load %struct.sConditionalInfo*, %struct.sConditionalInfo** %ifdef, align 8
  %branchChosen = getelementptr inbounds %struct.sConditionalInfo, %struct.sConditionalInfo* %5, i32 0, i32 2
  %frombool = zext i1 %4 to i8
  store i8 %frombool, i8* %branchChosen, align 2
  br label %if.end

if.end:                                           ; preds = %lor.end, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @popConditional() #0 {
entry:
  %0 = load i32, i32* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 17, i32 3), align 8
  %cmp = icmp ugt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 17, i32 3), align 8
  %dec = add i32 %1, -1
  store i32 %dec, i32* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 17, i32 3), align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call = call zeroext i1 @isIgnore()
  ret i1 %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct.sConditionalInfo* @currentConditional() #0 {
entry:
  %0 = load i32, i32* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 17, i32 3), align 8
  %idxprom = zext i32 %0 to i64
  %arrayidx = getelementptr inbounds [20 x %struct.sConditionalInfo], [20 x %struct.sConditionalInfo]* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 17, i32 4), i64 0, i64 %idxprom
  ret %struct.sConditionalInfo* %arrayidx
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @pushConditional(i1 zeroext %firstBranchChosen) #0 {
entry:
  %firstBranchChosen.addr = alloca i8, align 1
  %ignoreAllBranches = alloca i8, align 1
  %ignoreBranch = alloca i8, align 1
  %ifdef = alloca %struct.sConditionalInfo*, align 8
  %frombool = zext i1 %firstBranchChosen to i8
  store i8 %frombool, i8* %firstBranchChosen.addr, align 1
  %call = call zeroext i1 @isIgnore()
  %frombool1 = zext i1 %call to i8
  store i8 %frombool1, i8* %ignoreAllBranches, align 1
  store i8 0, i8* %ignoreBranch, align 1
  %0 = load i32, i32* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 17, i32 3), align 8
  %cmp = icmp ult i32 %0, 19
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 17, i32 3), align 8
  %inc = add i32 %1, 1
  store i32 %inc, i32* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 17, i32 3), align 8
  %call2 = call %struct.sConditionalInfo* @currentConditional()
  store %struct.sConditionalInfo* %call2, %struct.sConditionalInfo** %ifdef, align 8
  %2 = load i8, i8* %ignoreAllBranches, align 1
  %tobool = trunc i8 %2 to i1
  %3 = load %struct.sConditionalInfo*, %struct.sConditionalInfo** %ifdef, align 8
  %ignoreAllBranches3 = getelementptr inbounds %struct.sConditionalInfo, %struct.sConditionalInfo* %3, i32 0, i32 0
  %frombool4 = zext i1 %tobool to i8
  store i8 %frombool4, i8* %ignoreAllBranches3, align 4
  %4 = load i8, i8* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 6), align 4
  %tobool5 = trunc i8 %4 to i1
  %5 = load %struct.sConditionalInfo*, %struct.sConditionalInfo** %ifdef, align 8
  %singleBranch = getelementptr inbounds %struct.sConditionalInfo, %struct.sConditionalInfo* %5, i32 0, i32 1
  %frombool6 = zext i1 %tobool5 to i8
  store i8 %frombool6, i8* %singleBranch, align 1
  %6 = load i8, i8* %firstBranchChosen.addr, align 1
  %tobool7 = trunc i8 %6 to i1
  %7 = load %struct.sConditionalInfo*, %struct.sConditionalInfo** %ifdef, align 8
  %branchChosen = getelementptr inbounds %struct.sConditionalInfo, %struct.sConditionalInfo* %7, i32 0, i32 2
  %frombool8 = zext i1 %tobool7 to i8
  store i8 %frombool8, i8* %branchChosen, align 2
  %8 = load i8, i8* %ignoreAllBranches, align 1
  %tobool9 = trunc i8 %8 to i1
  br i1 %tobool9, label %lor.end16, label %lor.rhs

lor.rhs:                                          ; preds = %if.then
  %9 = load i8, i8* %firstBranchChosen.addr, align 1
  %tobool10 = trunc i8 %9 to i1
  br i1 %tobool10, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.rhs
  %10 = load i8, i8* @BraceFormat, align 1
  %tobool11 = trunc i8 %10 to i1
  br i1 %tobool11, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true
  %11 = load %struct.sConditionalInfo*, %struct.sConditionalInfo** %ifdef, align 8
  %singleBranch12 = getelementptr inbounds %struct.sConditionalInfo, %struct.sConditionalInfo* %11, i32 0, i32 1
  %12 = load i8, i8* %singleBranch12, align 1
  %tobool13 = trunc i8 %12 to i1
  br i1 %tobool13, label %lor.end, label %lor.rhs14

lor.rhs14:                                        ; preds = %land.rhs
  %13 = load i8, i8* @doesExaminCodeWithInIf0Branch, align 1
  %tobool15 = trunc i8 %13 to i1
  %lnot = xor i1 %tobool15, true
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs14, %land.rhs
  %14 = phi i1 [ true, %land.rhs ], [ %lnot, %lor.rhs14 ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %land.lhs.true, %lor.rhs
  %15 = phi i1 [ false, %land.lhs.true ], [ false, %lor.rhs ], [ %14, %lor.end ]
  br label %lor.end16

lor.end16:                                        ; preds = %land.end, %if.then
  %16 = phi i1 [ true, %if.then ], [ %15, %land.end ]
  %17 = load %struct.sConditionalInfo*, %struct.sConditionalInfo** %ifdef, align 8
  %ignoring = getelementptr inbounds %struct.sConditionalInfo, %struct.sConditionalInfo* %17, i32 0, i32 3
  %frombool17 = zext i1 %16 to i8
  store i8 %frombool17, i8* %ignoring, align 1
  %18 = load i32, i32* @externalParserBlockNestLevel, align 4
  %19 = load %struct.sConditionalInfo*, %struct.sConditionalInfo** %ifdef, align 8
  %enterExternalParserBlockNestLevel = getelementptr inbounds %struct.sConditionalInfo, %struct.sConditionalInfo* %19, i32 0, i32 4
  store i32 %18, i32* %enterExternalParserBlockNestLevel, align 4
  %20 = load %struct.sConditionalInfo*, %struct.sConditionalInfo** %ifdef, align 8
  %ignoring18 = getelementptr inbounds %struct.sConditionalInfo, %struct.sConditionalInfo* %20, i32 0, i32 3
  %21 = load i8, i8* %ignoring18, align 1
  %tobool19 = trunc i8 %21 to i1
  %frombool20 = zext i1 %tobool19 to i8
  store i8 %frombool20, i8* %ignoreBranch, align 1
  br label %if.end

if.end:                                           ; preds = %lor.end16, %entry
  %22 = load i8, i8* %ignoreBranch, align 1
  %tobool21 = trunc i8 %22 to i1
  ret i1 %tobool21
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @readFilename(i32 %c, %struct.sVString* %name) #0 {
entry:
  %c.addr = alloca i32, align 4
  %name.addr = alloca %struct.sVString*, align 8
  %c_end = alloca i32, align 4
  %vStringClear_s = alloca %struct.sVString*, align 8
  store i32 %c, i32* %c.addr, align 4
  store %struct.sVString* %name, %struct.sVString** %name.addr, align 8
  %0 = load i32, i32* %c.addr, align 4
  %cmp = icmp eq i32 %0, 60
  %1 = zext i1 %cmp to i64
  %cond = select i1 %cmp, i32 62, i32 34
  store i32 %cond, i32* %c_end, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load %struct.sVString*, %struct.sVString** %name.addr, align 8
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

do.end:                                           ; preds = %do.body
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.end
  %call = call i32 @cppGetcFromUngetBufferOrFile()
  store i32 %call, i32* %c.addr, align 4
  %6 = load i32, i32* %c.addr, align 4
  %cmp1 = icmp ne i32 %6, -1
  br i1 %cmp1, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %7 = load i32, i32* %c.addr, align 4
  %8 = load i32, i32* %c_end, align 4
  %cmp2 = icmp ne i32 %7, %8
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %9 = load i32, i32* %c.addr, align 4
  %cmp3 = icmp ne i32 %9, 10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %10 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp3, %land.rhs ]
  br i1 %10, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %11 = load %struct.sVString*, %struct.sVString** %name.addr, align 8
  %12 = load i32, i32* %c.addr, align 4
  call void @vStringPut(%struct.sVString* %11, i32 %12)
  br label %while.cond

while.end:                                        ; preds = %land.end
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @makeIncludeTag(i8* %name, i1 zeroext %systemHeader) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %systemHeader.addr = alloca i8, align 1
  %standing_alone = alloca i8, align 1
  %lang = alloca i32, align 4
  %e = alloca %struct.sTagEntryInfo, align 8
  %role_index = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  %frombool = zext i1 %systemHeader to i8
  store i8 %frombool, i8* %systemHeader.addr, align 1
  %call = call zeroext i1 @doesCPreProRunAsStandaloneParser(i32 1)
  %frombool1 = zext i1 %call to i8
  store i8 %frombool1, i8* %standing_alone, align 1
  %0 = load i8, i8* %standing_alone, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i32, i32* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 0), align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load i32, i32* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 1), align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %1, %cond.true ], [ %2, %cond.false ]
  store i32 %cond, i32* %lang, align 4
  %3 = load i32, i32* %lang, align 4
  %call2 = call zeroext i1 @isLanguageEnabled(i32 %3)
  br i1 %call2, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end
  br label %if.end28

if.end:                                           ; preds = %cond.end
  br label %do.body

do.body:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.body
  %4 = load i8, i8* %systemHeader.addr, align 1
  %tobool3 = trunc i8 %4 to i1
  br i1 %tobool3, label %cond.true4, label %cond.false5

cond.true4:                                       ; preds = %do.end
  %5 = load i32, i32* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 15), align 4
  br label %cond.end6

cond.false5:                                      ; preds = %do.end
  %6 = load i32, i32* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 16), align 8
  br label %cond.end6

cond.end6:                                        ; preds = %cond.false5, %cond.true4
  %cond7 = phi i32 [ %5, %cond.true4 ], [ %6, %cond.false5 ]
  store i32 %cond7, i32* %role_index, align 4
  %7 = load i32, i32* %role_index, align 4
  %cmp = icmp eq i32 %7, -1
  br i1 %cmp, label %if.then8, label %if.end9

if.then8:                                         ; preds = %cond.end6
  br label %if.end28

if.end9:                                          ; preds = %cond.end6
  %call10 = call zeroext i1 @isXtagEnabled(i32 4)
  br i1 %call10, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.end9
  br label %if.end28

if.end12:                                         ; preds = %if.end9
  %8 = load i32, i32* %lang, align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 14), align 8
  %call13 = call zeroext i1 @isLanguageKindEnabled(i32 %8, i32 %9)
  br i1 %call13, label %if.end15, label %if.then14

if.then14:                                        ; preds = %if.end12
  br label %if.end28

if.end15:                                         ; preds = %if.end12
  %10 = load i32, i32* %lang, align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 14), align 8
  %12 = load i32, i32* %role_index, align 4
  %call16 = call zeroext i1 @isLanguageRoleEnabled(i32 %10, i32 %11, i32 %12)
  br i1 %call16, label %if.then17, label %if.end28

if.then17:                                        ; preds = %if.end15
  %call18 = call zeroext i1 @doesCPreProRunAsStandaloneParser(i32 1)
  br i1 %call18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.then17
  %13 = load i32, i32* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 0), align 8
  call void @pushLanguage(i32 %13)
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.then17
  %14 = load i8*, i8** %name.addr, align 8
  %15 = load i32, i32* getelementptr inbounds (%struct.sCppState, %struct.sCppState* @Cpp, i32 0, i32 14), align 8
  %16 = load i32, i32* %role_index, align 4
  call void @initRefTagEntry(%struct.sTagEntryInfo* %e, i8* %14, i32 %15, i32 %16)
  %17 = bitcast %struct.sTagEntryInfo* %e to i8*
  %bf.load = load i8, i8* %17, align 8
  %bf.clear = and i8 %bf.load, -3
  store i8 %bf.clear, i8* %17, align 8
  %18 = bitcast %struct.sTagEntryInfo* %e to i8*
  %bf.load21 = load i8, i8* %18, align 8
  %bf.clear22 = and i8 %bf.load21, -9
  %bf.set = or i8 %bf.clear22, 8
  store i8 %bf.set, i8* %18, align 8
  %call23 = call i32 @makeTagEntry(%struct.sTagEntryInfo* %e)
  %call24 = call zeroext i1 @doesCPreProRunAsStandaloneParser(i32 1)
  br i1 %call24, label %if.then25, label %if.end27

if.then25:                                        ; preds = %if.end20
  %call26 = call i32 @popLanguage()
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.end20
  br label %if.end28

if.end28:                                         ; preds = %if.then, %if.then8, %if.then11, %if.then14, %if.end27, %if.end15
  ret void
}

declare void @vStringResize(%struct.sVString*, i64) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct.sHashTable* @makeMacroTable() #0 {
entry:
  %call = call %struct.sHashTable* @hashTableNew(i32 1024, i32 (i8*)* @hashCstrhash, i1 (i8*, i8*)* @hashCstreq, void (i8*)* @free, void (i8*)* bitcast (void (%struct.sCppMacroInfo*)* @freeMacroInfo to void (i8*)*))
  ret %struct.sHashTable* %call
}

declare i8* @trashBoxPut(%struct.sTrashBox*, i8*, void (i8*)*) #1

declare void @hashTableDelete(%struct.sHashTable*) #1

declare %struct.sHashTable* @hashTableNew(i32, i32 (i8*)*, i1 (i8*, i8*)*, void (i8*)*, void (i8*)*) #1

declare i32 @hashCstrhash(i8*) #1

declare zeroext i1 @hashCstreq(i8*, i8*) #1

declare void @free(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @freeMacroInfo(%struct.sCppMacroInfo* %info) #0 {
entry:
  %info.addr = alloca %struct.sCppMacroInfo*, align 8
  %pPart = alloca %struct.sCppMacroReplacementPartInfo*, align 8
  %pPartToDelete = alloca %struct.sCppMacroReplacementPartInfo*, align 8
  store %struct.sCppMacroInfo* %info, %struct.sCppMacroInfo** %info.addr, align 8
  %0 = load %struct.sCppMacroInfo*, %struct.sCppMacroInfo** %info.addr, align 8
  %tobool = icmp ne %struct.sCppMacroInfo* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.sCppMacroInfo*, %struct.sCppMacroInfo** %info.addr, align 8
  %replacements = getelementptr inbounds %struct.sCppMacroInfo, %struct.sCppMacroInfo* %1, i32 0, i32 1
  %2 = load %struct.sCppMacroReplacementPartInfo*, %struct.sCppMacroReplacementPartInfo** %replacements, align 8
  store %struct.sCppMacroReplacementPartInfo* %2, %struct.sCppMacroReplacementPartInfo** %pPart, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end5, %if.end
  %3 = load %struct.sCppMacroReplacementPartInfo*, %struct.sCppMacroReplacementPartInfo** %pPart, align 8
  %tobool1 = icmp ne %struct.sCppMacroReplacementPartInfo* %3, null
  br i1 %tobool1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct.sCppMacroReplacementPartInfo*, %struct.sCppMacroReplacementPartInfo** %pPart, align 8
  %constant = getelementptr inbounds %struct.sCppMacroReplacementPartInfo, %struct.sCppMacroReplacementPartInfo* %4, i32 0, i32 2
  %5 = load %struct.sVString*, %struct.sVString** %constant, align 8
  %tobool2 = icmp ne %struct.sVString* %5, null
  br i1 %tobool2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %while.body
  %6 = load %struct.sCppMacroReplacementPartInfo*, %struct.sCppMacroReplacementPartInfo** %pPart, align 8
  %constant4 = getelementptr inbounds %struct.sCppMacroReplacementPartInfo, %struct.sCppMacroReplacementPartInfo* %6, i32 0, i32 2
  %7 = load %struct.sVString*, %struct.sVString** %constant4, align 8
  call void @vStringDelete(%struct.sVString* %7)
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %while.body
  %8 = load %struct.sCppMacroReplacementPartInfo*, %struct.sCppMacroReplacementPartInfo** %pPart, align 8
  store %struct.sCppMacroReplacementPartInfo* %8, %struct.sCppMacroReplacementPartInfo** %pPartToDelete, align 8
  %9 = load %struct.sCppMacroReplacementPartInfo*, %struct.sCppMacroReplacementPartInfo** %pPart, align 8
  %next = getelementptr inbounds %struct.sCppMacroReplacementPartInfo, %struct.sCppMacroReplacementPartInfo* %9, i32 0, i32 3
  %10 = load %struct.sCppMacroReplacementPartInfo*, %struct.sCppMacroReplacementPartInfo** %next, align 8
  store %struct.sCppMacroReplacementPartInfo* %10, %struct.sCppMacroReplacementPartInfo** %pPart, align 8
  %11 = load %struct.sCppMacroReplacementPartInfo*, %struct.sCppMacroReplacementPartInfo** %pPartToDelete, align 8
  %12 = bitcast %struct.sCppMacroReplacementPartInfo* %11 to i8*
  call void @eFree(i8* %12)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %13 = load %struct.sCppMacroInfo*, %struct.sCppMacroInfo** %info.addr, align 8
  %14 = bitcast %struct.sCppMacroInfo* %13 to i8*
  call void @eFree(i8* %14)
  br label %return

return:                                           ; preds = %while.end, %if.then
  ret void
}

declare void @findRegexTagsMainloop(i32 ()*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @CpreProSetIf0(i32 %language, i8* %name, i8* %arg) #0 {
entry:
  %language.addr = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %arg.addr = alloca i8*, align 8
  store i32 %language, i32* %language.addr, align 4
  store i8* %name, i8** %name.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  %0 = load i8*, i8** %arg.addr, align 8
  %1 = load i8, i8* @doesExaminCodeWithInIf0Branch, align 1
  %tobool = trunc i8 %1 to i1
  %2 = load i8*, i8** %name.addr, align 8
  %call = call zeroext i1 @paramParserBool(i8* %0, i1 zeroext %tobool, i8* %2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i64 0, i64 0))
  %frombool = zext i1 %call to i8
  store i8 %frombool, i8* @doesExaminCodeWithInIf0Branch, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @CpreProInstallIgnoreToken(i32 %language, i8* %optname, i8* %arg) #0 {
entry:
  %language.addr = alloca i32, align 4
  %optname.addr = alloca i8*, align 8
  %arg.addr = alloca i8*, align 8
  store i32 %language, i32* %language.addr, align 4
  store i8* %optname, i8** %optname.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  %0 = load i8*, i8** %arg.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8*, i8** %arg.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %cmp1 = icmp eq i32 %conv, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load %struct.sHashTable*, %struct.sHashTable** @defineMacroTable, align 8
  %4 = bitcast %struct.sHashTable* %3 to i8*
  %call = call void (i8*)* @trashBoxTakeBack(%struct.sTrashBox* null, i8* %4)
  %5 = load %struct.sHashTable*, %struct.sHashTable** @defineMacroTable, align 8
  call void @hashTableDelete(%struct.sHashTable* %5)
  %call3 = call %struct.sHashTable* @makeMacroTable()
  store %struct.sHashTable* %call3, %struct.sHashTable** @defineMacroTable, align 8
  %6 = load %struct.sHashTable*, %struct.sHashTable** @defineMacroTable, align 8
  %7 = bitcast %struct.sHashTable* %6 to i8*
  %call4 = call i8* @trashBoxPut(%struct.sTrashBox* null, i8* %7, void (i8*)* bitcast (void (%struct.sHashTable*)* @hashTableDelete to void (i8*)*))
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.26, i64 0, i64 0))
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %8 = load i8*, i8** %arg.addr, align 8
  call void @saveIgnoreToken(i8* %8)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @CpreProInstallMacroToken(i32 %language, i8* %optname, i8* %arg) #0 {
entry:
  %language.addr = alloca i32, align 4
  %optname.addr = alloca i8*, align 8
  %arg.addr = alloca i8*, align 8
  store i32 %language, i32* %language.addr, align 4
  store i8* %optname, i8** %optname.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  %0 = load i8*, i8** %arg.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8*, i8** %arg.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %cmp1 = icmp eq i32 %conv, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load %struct.sHashTable*, %struct.sHashTable** @defineMacroTable, align 8
  call void @hashTableDelete(%struct.sHashTable* %3)
  %call = call %struct.sHashTable* @makeMacroTable()
  store %struct.sHashTable* %call, %struct.sHashTable** @defineMacroTable, align 8
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.26, i64 0, i64 0))
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %4 = load i8*, i8** %arg.addr, align 8
  call void @saveMacro(i8* %4)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare zeroext i1 @paramParserBool(i8*, i1 zeroext, i8*, i8*) #1

declare void (i8*)* @trashBoxTakeBack(%struct.sTrashBox*, i8*) #1

declare void @verbose(i8*, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @saveIgnoreToken(i8* %ignoreToken) #0 {
entry:
  %ignoreToken.addr = alloca i8*, align 8
  %c = alloca i8*, align 8
  %cc = alloca i8, align 1
  %tokenBegin = alloca i8*, align 8
  %tokenEnd = alloca i8*, align 8
  %replacement = alloca i8*, align 8
  %ignoreFollowingParenthesis = alloca i8, align 1
  %info = alloca %struct.sCppMacroInfo*, align 8
  %rep = alloca %struct.sCppMacroReplacementPartInfo*, align 8
  store i8* %ignoreToken, i8** %ignoreToken.addr, align 8
  %0 = load i8*, i8** %ignoreToken.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.body
  %1 = load i8*, i8** %ignoreToken.addr, align 8
  store i8* %1, i8** %c, align 8
  %2 = load i8*, i8** %c, align 8
  %3 = load i8, i8* %2, align 1
  store i8 %3, i8* %cc, align 1
  %4 = load i8*, i8** %c, align 8
  store i8* %4, i8** %tokenBegin, align 8
  store i8* null, i8** %tokenEnd, align 8
  store i8* null, i8** %replacement, align 8
  store i8 0, i8* %ignoreFollowingParenthesis, align 1
  br label %while.cond

while.cond:                                       ; preds = %if.end18, %do.end
  %5 = load i8, i8* %cc, align 1
  %tobool1 = icmp ne i8 %5, 0
  br i1 %tobool1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i8, i8* %cc, align 1
  %conv = sext i8 %6 to i32
  %cmp = icmp eq i32 %conv, 61
  br i1 %cmp, label %if.then3, label %if.end10

if.then3:                                         ; preds = %while.body
  %7 = load i8*, i8** %tokenEnd, align 8
  %tobool4 = icmp ne i8* %7, null
  br i1 %tobool4, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.then3
  %8 = load i8*, i8** %c, align 8
  store i8* %8, i8** %tokenEnd, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.then3
  %9 = load i8*, i8** %c, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr, i8** %c, align 8
  %10 = load i8*, i8** %c, align 8
  %11 = load i8, i8* %10, align 1
  %tobool7 = icmp ne i8 %11, 0
  br i1 %tobool7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end6
  %12 = load i8*, i8** %c, align 8
  store i8* %12, i8** %replacement, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end6
  br label %while.end

if.end10:                                         ; preds = %while.body
  %13 = load i8, i8* %cc, align 1
  %conv11 = sext i8 %13 to i32
  %cmp12 = icmp eq i32 %conv11, 43
  br i1 %cmp12, label %if.then14, label %if.end18

if.then14:                                        ; preds = %if.end10
  %14 = load i8*, i8** %tokenEnd, align 8
  %tobool15 = icmp ne i8* %14, null
  br i1 %tobool15, label %if.end17, label %if.then16

if.then16:                                        ; preds = %if.then14
  %15 = load i8*, i8** %c, align 8
  store i8* %15, i8** %tokenEnd, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.then14
  store i8 1, i8* %ignoreFollowingParenthesis, align 1
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.end10
  %16 = load i8*, i8** %c, align 8
  %incdec.ptr19 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr19, i8** %c, align 8
  %17 = load i8*, i8** %c, align 8
  %18 = load i8, i8* %17, align 1
  store i8 %18, i8* %cc, align 1
  br label %while.cond

while.end:                                        ; preds = %if.end9, %while.cond
  %19 = load i8*, i8** %tokenEnd, align 8
  %tobool20 = icmp ne i8* %19, null
  br i1 %tobool20, label %if.end22, label %if.then21

if.then21:                                        ; preds = %while.end
  %20 = load i8*, i8** %c, align 8
  store i8* %20, i8** %tokenEnd, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %while.end
  %21 = load i8*, i8** %tokenEnd, align 8
  %22 = load i8*, i8** %tokenBegin, align 8
  %cmp23 = icmp ule i8* %21, %22
  br i1 %cmp23, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end22
  br label %return

if.end26:                                         ; preds = %if.end22
  %call = call i8* @eMalloc(i64 16)
  %23 = bitcast i8* %call to %struct.sCppMacroInfo*
  store %struct.sCppMacroInfo* %23, %struct.sCppMacroInfo** %info, align 8
  %24 = load i8, i8* %ignoreFollowingParenthesis, align 1
  %tobool27 = trunc i8 %24 to i1
  %25 = load %struct.sCppMacroInfo*, %struct.sCppMacroInfo** %info, align 8
  %hasParameterList = getelementptr inbounds %struct.sCppMacroInfo, %struct.sCppMacroInfo* %25, i32 0, i32 0
  %frombool = zext i1 %tobool27 to i8
  store i8 %frombool, i8* %hasParameterList, align 8
  %26 = load i8*, i8** %replacement, align 8
  %tobool28 = icmp ne i8* %26, null
  br i1 %tobool28, label %if.then29, label %if.else

if.then29:                                        ; preds = %if.end26
  %call30 = call i8* @eMalloc(i64 24)
  %27 = bitcast i8* %call30 to %struct.sCppMacroReplacementPartInfo*
  store %struct.sCppMacroReplacementPartInfo* %27, %struct.sCppMacroReplacementPartInfo** %rep, align 8
  %28 = load %struct.sCppMacroReplacementPartInfo*, %struct.sCppMacroReplacementPartInfo** %rep, align 8
  %parameterIndex = getelementptr inbounds %struct.sCppMacroReplacementPartInfo, %struct.sCppMacroReplacementPartInfo* %28, i32 0, i32 0
  store i32 -1, i32* %parameterIndex, align 8
  %29 = load %struct.sCppMacroReplacementPartInfo*, %struct.sCppMacroReplacementPartInfo** %rep, align 8
  %flags = getelementptr inbounds %struct.sCppMacroReplacementPartInfo, %struct.sCppMacroReplacementPartInfo* %29, i32 0, i32 1
  store i32 0, i32* %flags, align 4
  %30 = load i8*, i8** %replacement, align 8
  %call31 = call %struct.sVString* @vStringNewInit(i8* %30)
  %31 = load %struct.sCppMacroReplacementPartInfo*, %struct.sCppMacroReplacementPartInfo** %rep, align 8
  %constant = getelementptr inbounds %struct.sCppMacroReplacementPartInfo, %struct.sCppMacroReplacementPartInfo* %31, i32 0, i32 2
  store %struct.sVString* %call31, %struct.sVString** %constant, align 8
  %32 = load %struct.sCppMacroReplacementPartInfo*, %struct.sCppMacroReplacementPartInfo** %rep, align 8
  %next = getelementptr inbounds %struct.sCppMacroReplacementPartInfo, %struct.sCppMacroReplacementPartInfo* %32, i32 0, i32 3
  store %struct.sCppMacroReplacementPartInfo* null, %struct.sCppMacroReplacementPartInfo** %next, align 8
  %33 = load %struct.sCppMacroReplacementPartInfo*, %struct.sCppMacroReplacementPartInfo** %rep, align 8
  %34 = load %struct.sCppMacroInfo*, %struct.sCppMacroInfo** %info, align 8
  %replacements = getelementptr inbounds %struct.sCppMacroInfo, %struct.sCppMacroInfo* %34, i32 0, i32 1
  store %struct.sCppMacroReplacementPartInfo* %33, %struct.sCppMacroReplacementPartInfo** %replacements, align 8
  br label %if.end33

if.else:                                          ; preds = %if.end26
  %35 = load %struct.sCppMacroInfo*, %struct.sCppMacroInfo** %info, align 8
  %replacements32 = getelementptr inbounds %struct.sCppMacroInfo, %struct.sCppMacroInfo* %35, i32 0, i32 1
  store %struct.sCppMacroReplacementPartInfo* null, %struct.sCppMacroReplacementPartInfo** %replacements32, align 8
  br label %if.end33

if.end33:                                         ; preds = %if.else, %if.then29
  %36 = load %struct.sHashTable*, %struct.sHashTable** @defineMacroTable, align 8
  %37 = load i8*, i8** %tokenBegin, align 8
  %38 = load i8*, i8** %tokenEnd, align 8
  %39 = load i8*, i8** %tokenBegin, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %38 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %39 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call34 = call i8* @eStrndup(i8* %37, i64 %sub.ptr.sub)
  %40 = load %struct.sCppMacroInfo*, %struct.sCppMacroInfo** %info, align 8
  %41 = bitcast %struct.sCppMacroInfo* %40 to i8*
  call void @hashTablePutItem(%struct.sHashTable* %36, i8* %call34, i8* %41)
  %42 = load i8*, i8** %ignoreToken.addr, align 8
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.27, i64 0, i64 0), i8* %42)
  br label %return

return:                                           ; preds = %if.end33, %if.then25, %if.then
  ret void
}

declare %struct.sVString* @vStringNewInit(i8*) #1

declare void @hashTablePutItem(%struct.sHashTable*, i8*, i8*) #1

declare i8* @eStrndup(i8*, i64) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @saveMacro(i8* %macro) #0 {
entry:
  %macro.addr = alloca i8*, align 8
  %c = alloca i8*, align 8
  %identifierBegin = alloca i8*, align 8
  %identifierEnd = alloca i8*, align 8
  %paramBegin = alloca [16 x i8*], align 8
  %paramEnd = alloca [16 x i8*], align 8
  %iParamCount = alloca i32, align 4
  %info = alloca %struct.sCppMacroInfo*, align 8
  %lastReplacement = alloca %struct.sCppMacroReplacementPartInfo*, align 8
  %nextParameterReplacementFlags = alloca i32, align 4
  %begin = alloca i8*, align 8
  %rep = alloca %struct.sCppMacroReplacementPartInfo*, align 8
  %tokenBegin = alloca i8*, align 8
  %tokenLen = alloca i32, align 4
  %bIsVarArg = alloca i8, align 1
  %i = alloca i32, align 4
  %paramLen = alloca i32, align 4
  %rep309 = alloca %struct.sCppMacroReplacementPartInfo*, align 8
  %rep345 = alloca %struct.sCppMacroReplacementPartInfo*, align 8
  %term = alloca i8, align 1
  %rep424 = alloca %struct.sCppMacroReplacementPartInfo*, align 8
  %rep515 = alloca %struct.sCppMacroReplacementPartInfo*, align 8
  store i8* %macro, i8** %macro.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load i8*, i8** %macro.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %do.end
  br label %do.end546

if.end:                                           ; preds = %do.end
  br label %do.body1

do.body1:                                         ; preds = %if.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  %1 = load i8*, i8** %macro.addr, align 8
  store i8* %1, i8** %c, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.end2
  %2 = load i8*, i8** %c, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %tobool3 = icmp ne i32 %conv, 0
  br i1 %tobool3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %4 = load i8*, i8** %c, align 8
  %5 = load i8, i8* %4, align 1
  %conv4 = sext i8 %5 to i32
  %cmp = icmp eq i32 %conv4, 32
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %6 = load i8*, i8** %c, align 8
  %7 = load i8, i8* %6, align 1
  %conv6 = sext i8 %7 to i32
  %cmp7 = icmp eq i32 %conv6, 9
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %8 = phi i1 [ true, %land.rhs ], [ %cmp7, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %while.cond
  %9 = phi i1 [ false, %while.cond ], [ %8, %lor.end ]
  br i1 %9, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %10 = load i8*, i8** %c, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr, i8** %c, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %11 = load i8*, i8** %c, align 8
  %12 = load i8, i8* %11, align 1
  %tobool9 = icmp ne i8 %12, 0
  br i1 %tobool9, label %if.end13, label %if.then10

if.then10:                                        ; preds = %while.end
  br label %do.body11

do.body11:                                        ; preds = %if.then10
  br label %do.end12

do.end12:                                         ; preds = %do.body11
  br label %do.end546

if.end13:                                         ; preds = %while.end
  %13 = load i8*, i8** %c, align 8
  %14 = load i8, i8* %13, align 1
  %conv14 = sext i8 %14 to i32
  %call = call i32 @isalpha(i32 %conv14) #4
  %tobool15 = icmp ne i32 %call, 0
  br i1 %tobool15, label %if.end22, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end13
  %15 = load i8*, i8** %c, align 8
  %16 = load i8, i8* %15, align 1
  %conv16 = sext i8 %16 to i32
  %cmp17 = icmp eq i32 %conv16, 95
  br i1 %cmp17, label %if.end22, label %if.then19

if.then19:                                        ; preds = %lor.lhs.false
  br label %do.body20

do.body20:                                        ; preds = %if.then19
  br label %do.end21

do.end21:                                         ; preds = %do.body20
  br label %do.end546

if.end22:                                         ; preds = %lor.lhs.false, %if.end13
  %17 = load i8*, i8** %c, align 8
  store i8* %17, i8** %identifierBegin, align 8
  br label %while.cond23

while.cond23:                                     ; preds = %while.body36, %if.end22
  %18 = load i8*, i8** %c, align 8
  %19 = load i8, i8* %18, align 1
  %conv24 = sext i8 %19 to i32
  %tobool25 = icmp ne i32 %conv24, 0
  br i1 %tobool25, label %land.rhs26, label %land.end35

land.rhs26:                                       ; preds = %while.cond23
  %20 = load i8*, i8** %c, align 8
  %21 = load i8, i8* %20, align 1
  %conv27 = sext i8 %21 to i32
  %call28 = call i32 @isalnum(i32 %conv27) #4
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %lor.end34, label %lor.rhs30

lor.rhs30:                                        ; preds = %land.rhs26
  %22 = load i8*, i8** %c, align 8
  %23 = load i8, i8* %22, align 1
  %conv31 = sext i8 %23 to i32
  %cmp32 = icmp eq i32 %conv31, 95
  br label %lor.end34

lor.end34:                                        ; preds = %lor.rhs30, %land.rhs26
  %24 = phi i1 [ true, %land.rhs26 ], [ %cmp32, %lor.rhs30 ]
  br label %land.end35

land.end35:                                       ; preds = %lor.end34, %while.cond23
  %25 = phi i1 [ false, %while.cond23 ], [ %24, %lor.end34 ]
  br i1 %25, label %while.body36, label %while.end38

while.body36:                                     ; preds = %land.end35
  %26 = load i8*, i8** %c, align 8
  %incdec.ptr37 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr37, i8** %c, align 8
  br label %while.cond23

while.end38:                                      ; preds = %land.end35
  %27 = load i8*, i8** %c, align 8
  store i8* %27, i8** %identifierEnd, align 8
  br label %do.body39

do.body39:                                        ; preds = %while.end38
  br label %do.end40

do.end40:                                         ; preds = %do.body39
  store i32 0, i32* %iParamCount, align 4
  br label %while.cond41

while.cond41:                                     ; preds = %while.body54, %do.end40
  %28 = load i8*, i8** %c, align 8
  %29 = load i8, i8* %28, align 1
  %conv42 = sext i8 %29 to i32
  %tobool43 = icmp ne i32 %conv42, 0
  br i1 %tobool43, label %land.rhs44, label %land.end53

land.rhs44:                                       ; preds = %while.cond41
  %30 = load i8*, i8** %c, align 8
  %31 = load i8, i8* %30, align 1
  %conv45 = sext i8 %31 to i32
  %cmp46 = icmp eq i32 %conv45, 32
  br i1 %cmp46, label %lor.end52, label %lor.rhs48

lor.rhs48:                                        ; preds = %land.rhs44
  %32 = load i8*, i8** %c, align 8
  %33 = load i8, i8* %32, align 1
  %conv49 = sext i8 %33 to i32
  %cmp50 = icmp eq i32 %conv49, 9
  br label %lor.end52

lor.end52:                                        ; preds = %lor.rhs48, %land.rhs44
  %34 = phi i1 [ true, %land.rhs44 ], [ %cmp50, %lor.rhs48 ]
  br label %land.end53

land.end53:                                       ; preds = %lor.end52, %while.cond41
  %35 = phi i1 [ false, %while.cond41 ], [ %34, %lor.end52 ]
  br i1 %35, label %while.body54, label %while.end56

while.body54:                                     ; preds = %land.end53
  %36 = load i8*, i8** %c, align 8
  %incdec.ptr55 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %incdec.ptr55, i8** %c, align 8
  br label %while.cond41

while.end56:                                      ; preds = %land.end53
  %call57 = call i8* @eMalloc(i64 16)
  %37 = bitcast i8* %call57 to %struct.sCppMacroInfo*
  store %struct.sCppMacroInfo* %37, %struct.sCppMacroInfo** %info, align 8
  %38 = load i8*, i8** %c, align 8
  %39 = load i8, i8* %38, align 1
  %conv58 = sext i8 %39 to i32
  %cmp59 = icmp eq i32 %conv58, 40
  br i1 %cmp59, label %if.then61, label %if.else

if.then61:                                        ; preds = %while.end56
  br label %do.body62

do.body62:                                        ; preds = %if.then61
  br label %do.end63

do.end63:                                         ; preds = %do.body62
  %40 = load %struct.sCppMacroInfo*, %struct.sCppMacroInfo** %info, align 8
  %hasParameterList = getelementptr inbounds %struct.sCppMacroInfo, %struct.sCppMacroInfo* %40, i32 0, i32 0
  store i8 1, i8* %hasParameterList, align 8
  %41 = load i8*, i8** %c, align 8
  %incdec.ptr64 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %incdec.ptr64, i8** %c, align 8
  br label %while.cond65

while.cond65:                                     ; preds = %if.end154, %do.end63
  %42 = load i8*, i8** %c, align 8
  %43 = load i8, i8* %42, align 1
  %tobool66 = icmp ne i8 %43, 0
  br i1 %tobool66, label %while.body67, label %while.end155

while.body67:                                     ; preds = %while.cond65
  br label %while.cond68

while.cond68:                                     ; preds = %while.body81, %while.body67
  %44 = load i8*, i8** %c, align 8
  %45 = load i8, i8* %44, align 1
  %conv69 = sext i8 %45 to i32
  %tobool70 = icmp ne i32 %conv69, 0
  br i1 %tobool70, label %land.rhs71, label %land.end80

land.rhs71:                                       ; preds = %while.cond68
  %46 = load i8*, i8** %c, align 8
  %47 = load i8, i8* %46, align 1
  %conv72 = sext i8 %47 to i32
  %cmp73 = icmp eq i32 %conv72, 32
  br i1 %cmp73, label %lor.end79, label %lor.rhs75

lor.rhs75:                                        ; preds = %land.rhs71
  %48 = load i8*, i8** %c, align 8
  %49 = load i8, i8* %48, align 1
  %conv76 = sext i8 %49 to i32
  %cmp77 = icmp eq i32 %conv76, 9
  br label %lor.end79

lor.end79:                                        ; preds = %lor.rhs75, %land.rhs71
  %50 = phi i1 [ true, %land.rhs71 ], [ %cmp77, %lor.rhs75 ]
  br label %land.end80

land.end80:                                       ; preds = %lor.end79, %while.cond68
  %51 = phi i1 [ false, %while.cond68 ], [ %50, %lor.end79 ]
  br i1 %51, label %while.body81, label %while.end83

while.body81:                                     ; preds = %land.end80
  %52 = load i8*, i8** %c, align 8
  %incdec.ptr82 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %incdec.ptr82, i8** %c, align 8
  br label %while.cond68

while.end83:                                      ; preds = %land.end80
  %53 = load i8*, i8** %c, align 8
  %54 = load i8, i8* %53, align 1
  %conv84 = sext i8 %54 to i32
  %tobool85 = icmp ne i32 %conv84, 0
  br i1 %tobool85, label %land.lhs.true, label %if.end127

land.lhs.true:                                    ; preds = %while.end83
  %55 = load i8*, i8** %c, align 8
  %56 = load i8, i8* %55, align 1
  %conv86 = sext i8 %56 to i32
  %cmp87 = icmp ne i32 %conv86, 44
  br i1 %cmp87, label %land.lhs.true89, label %if.end127

land.lhs.true89:                                  ; preds = %land.lhs.true
  %57 = load i8*, i8** %c, align 8
  %58 = load i8, i8* %57, align 1
  %conv90 = sext i8 %58 to i32
  %cmp91 = icmp ne i32 %conv90, 41
  br i1 %cmp91, label %if.then93, label %if.end127

if.then93:                                        ; preds = %land.lhs.true89
  %59 = load i8*, i8** %c, align 8
  %60 = load i32, i32* %iParamCount, align 4
  %idxprom = sext i32 %60 to i64
  %arrayidx = getelementptr inbounds [16 x i8*], [16 x i8*]* %paramBegin, i64 0, i64 %idxprom
  store i8* %59, i8** %arrayidx, align 8
  %61 = load i8*, i8** %c, align 8
  %incdec.ptr94 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %incdec.ptr94, i8** %c, align 8
  br label %while.cond95

while.cond95:                                     ; preds = %while.body116, %if.then93
  %62 = load i8*, i8** %c, align 8
  %63 = load i8, i8* %62, align 1
  %conv96 = sext i8 %63 to i32
  %tobool97 = icmp ne i32 %conv96, 0
  br i1 %tobool97, label %land.lhs.true98, label %land.end115

land.lhs.true98:                                  ; preds = %while.cond95
  %64 = load i8*, i8** %c, align 8
  %65 = load i8, i8* %64, align 1
  %conv99 = sext i8 %65 to i32
  %cmp100 = icmp ne i32 %conv99, 44
  br i1 %cmp100, label %land.lhs.true102, label %land.end115

land.lhs.true102:                                 ; preds = %land.lhs.true98
  %66 = load i8*, i8** %c, align 8
  %67 = load i8, i8* %66, align 1
  %conv103 = sext i8 %67 to i32
  %cmp104 = icmp ne i32 %conv103, 41
  br i1 %cmp104, label %land.rhs106, label %land.end115

land.rhs106:                                      ; preds = %land.lhs.true102
  %68 = load i8*, i8** %c, align 8
  %69 = load i8, i8* %68, align 1
  %conv107 = sext i8 %69 to i32
  %cmp108 = icmp eq i32 %conv107, 32
  br i1 %cmp108, label %lor.end114, label %lor.rhs110

lor.rhs110:                                       ; preds = %land.rhs106
  %70 = load i8*, i8** %c, align 8
  %71 = load i8, i8* %70, align 1
  %conv111 = sext i8 %71 to i32
  %cmp112 = icmp eq i32 %conv111, 9
  br label %lor.end114

lor.end114:                                       ; preds = %lor.rhs110, %land.rhs106
  %72 = phi i1 [ true, %land.rhs106 ], [ %cmp112, %lor.rhs110 ]
  %lnot = xor i1 %72, true
  br label %land.end115

land.end115:                                      ; preds = %lor.end114, %land.lhs.true102, %land.lhs.true98, %while.cond95
  %73 = phi i1 [ false, %land.lhs.true102 ], [ false, %land.lhs.true98 ], [ false, %while.cond95 ], [ %lnot, %lor.end114 ]
  br i1 %73, label %while.body116, label %while.end118

while.body116:                                    ; preds = %land.end115
  %74 = load i8*, i8** %c, align 8
  %incdec.ptr117 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %incdec.ptr117, i8** %c, align 8
  br label %while.cond95

while.end118:                                     ; preds = %land.end115
  %75 = load i8*, i8** %c, align 8
  %76 = load i32, i32* %iParamCount, align 4
  %idxprom119 = sext i32 %76 to i64
  %arrayidx120 = getelementptr inbounds [16 x i8*], [16 x i8*]* %paramEnd, i64 0, i64 %idxprom119
  store i8* %75, i8** %arrayidx120, align 8
  br label %do.body121

do.body121:                                       ; preds = %while.end118
  br label %do.end122

do.end122:                                        ; preds = %do.body121
  %77 = load i32, i32* %iParamCount, align 4
  %inc = add nsw i32 %77, 1
  store i32 %inc, i32* %iParamCount, align 4
  %78 = load i32, i32* %iParamCount, align 4
  %cmp123 = icmp sge i32 %78, 16
  br i1 %cmp123, label %if.then125, label %if.end126

if.then125:                                       ; preds = %do.end122
  br label %while.end155

if.end126:                                        ; preds = %do.end122
  br label %if.end127

if.end127:                                        ; preds = %if.end126, %land.lhs.true89, %land.lhs.true, %while.end83
  br label %while.cond128

while.cond128:                                    ; preds = %while.body141, %if.end127
  %79 = load i8*, i8** %c, align 8
  %80 = load i8, i8* %79, align 1
  %conv129 = sext i8 %80 to i32
  %tobool130 = icmp ne i32 %conv129, 0
  br i1 %tobool130, label %land.rhs131, label %land.end140

land.rhs131:                                      ; preds = %while.cond128
  %81 = load i8*, i8** %c, align 8
  %82 = load i8, i8* %81, align 1
  %conv132 = sext i8 %82 to i32
  %cmp133 = icmp eq i32 %conv132, 32
  br i1 %cmp133, label %lor.end139, label %lor.rhs135

lor.rhs135:                                       ; preds = %land.rhs131
  %83 = load i8*, i8** %c, align 8
  %84 = load i8, i8* %83, align 1
  %conv136 = sext i8 %84 to i32
  %cmp137 = icmp eq i32 %conv136, 9
  br label %lor.end139

lor.end139:                                       ; preds = %lor.rhs135, %land.rhs131
  %85 = phi i1 [ true, %land.rhs131 ], [ %cmp137, %lor.rhs135 ]
  br label %land.end140

land.end140:                                      ; preds = %lor.end139, %while.cond128
  %86 = phi i1 [ false, %while.cond128 ], [ %85, %lor.end139 ]
  br i1 %86, label %while.body141, label %while.end143

while.body141:                                    ; preds = %land.end140
  %87 = load i8*, i8** %c, align 8
  %incdec.ptr142 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %incdec.ptr142, i8** %c, align 8
  br label %while.cond128

while.end143:                                     ; preds = %land.end140
  %88 = load i8*, i8** %c, align 8
  %89 = load i8, i8* %88, align 1
  %conv144 = sext i8 %89 to i32
  %cmp145 = icmp eq i32 %conv144, 41
  br i1 %cmp145, label %if.then147, label %if.end148

if.then147:                                       ; preds = %while.end143
  br label %while.end155

if.end148:                                        ; preds = %while.end143
  %90 = load i8*, i8** %c, align 8
  %91 = load i8, i8* %90, align 1
  %conv149 = sext i8 %91 to i32
  %cmp150 = icmp eq i32 %conv149, 44
  br i1 %cmp150, label %if.then152, label %if.end154

if.then152:                                       ; preds = %if.end148
  %92 = load i8*, i8** %c, align 8
  %incdec.ptr153 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %incdec.ptr153, i8** %c, align 8
  br label %if.end154

if.end154:                                        ; preds = %if.then152, %if.end148
  br label %while.cond65

while.end155:                                     ; preds = %if.then147, %if.then125, %while.cond65
  br label %while.cond156

while.cond156:                                    ; preds = %while.body164, %while.end155
  %93 = load i8*, i8** %c, align 8
  %94 = load i8, i8* %93, align 1
  %conv157 = sext i8 %94 to i32
  %tobool158 = icmp ne i32 %conv157, 0
  br i1 %tobool158, label %land.rhs159, label %land.end163

land.rhs159:                                      ; preds = %while.cond156
  %95 = load i8*, i8** %c, align 8
  %96 = load i8, i8* %95, align 1
  %conv160 = sext i8 %96 to i32
  %cmp161 = icmp ne i32 %conv160, 41
  br label %land.end163

land.end163:                                      ; preds = %land.rhs159, %while.cond156
  %97 = phi i1 [ false, %while.cond156 ], [ %cmp161, %land.rhs159 ]
  br i1 %97, label %while.body164, label %while.end166

while.body164:                                    ; preds = %land.end163
  %98 = load i8*, i8** %c, align 8
  %incdec.ptr165 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %incdec.ptr165, i8** %c, align 8
  br label %while.cond156

while.end166:                                     ; preds = %land.end163
  %99 = load i8*, i8** %c, align 8
  %100 = load i8, i8* %99, align 1
  %conv167 = sext i8 %100 to i32
  %cmp168 = icmp eq i32 %conv167, 41
  br i1 %cmp168, label %if.then170, label %if.end172

if.then170:                                       ; preds = %while.end166
  %101 = load i8*, i8** %c, align 8
  %incdec.ptr171 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %incdec.ptr171, i8** %c, align 8
  br label %if.end172

if.end172:                                        ; preds = %if.then170, %while.end166
  br label %do.body173

do.body173:                                       ; preds = %if.end172
  br label %do.end174

do.end174:                                        ; preds = %do.body173
  br label %if.end176

if.else:                                          ; preds = %while.end56
  %102 = load %struct.sCppMacroInfo*, %struct.sCppMacroInfo** %info, align 8
  %hasParameterList175 = getelementptr inbounds %struct.sCppMacroInfo, %struct.sCppMacroInfo* %102, i32 0, i32 0
  store i8 0, i8* %hasParameterList175, align 8
  br label %if.end176

if.end176:                                        ; preds = %if.else, %do.end174
  br label %while.cond177

while.cond177:                                    ; preds = %while.body190, %if.end176
  %103 = load i8*, i8** %c, align 8
  %104 = load i8, i8* %103, align 1
  %conv178 = sext i8 %104 to i32
  %tobool179 = icmp ne i32 %conv178, 0
  br i1 %tobool179, label %land.rhs180, label %land.end189

land.rhs180:                                      ; preds = %while.cond177
  %105 = load i8*, i8** %c, align 8
  %106 = load i8, i8* %105, align 1
  %conv181 = sext i8 %106 to i32
  %cmp182 = icmp eq i32 %conv181, 32
  br i1 %cmp182, label %lor.end188, label %lor.rhs184

lor.rhs184:                                       ; preds = %land.rhs180
  %107 = load i8*, i8** %c, align 8
  %108 = load i8, i8* %107, align 1
  %conv185 = sext i8 %108 to i32
  %cmp186 = icmp eq i32 %conv185, 9
  br label %lor.end188

lor.end188:                                       ; preds = %lor.rhs184, %land.rhs180
  %109 = phi i1 [ true, %land.rhs180 ], [ %cmp186, %lor.rhs184 ]
  br label %land.end189

land.end189:                                      ; preds = %lor.end188, %while.cond177
  %110 = phi i1 [ false, %while.cond177 ], [ %109, %lor.end188 ]
  br i1 %110, label %while.body190, label %while.end192

while.body190:                                    ; preds = %land.end189
  %111 = load i8*, i8** %c, align 8
  %incdec.ptr191 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %incdec.ptr191, i8** %c, align 8
  br label %while.cond177

while.end192:                                     ; preds = %land.end189
  %112 = load %struct.sCppMacroInfo*, %struct.sCppMacroInfo** %info, align 8
  %replacements = getelementptr inbounds %struct.sCppMacroInfo, %struct.sCppMacroInfo* %112, i32 0, i32 1
  store %struct.sCppMacroReplacementPartInfo* null, %struct.sCppMacroReplacementPartInfo** %replacements, align 8
  %113 = load i8*, i8** %c, align 8
  %114 = load i8, i8* %113, align 1
  %conv193 = sext i8 %114 to i32
  %cmp194 = icmp eq i32 %conv193, 61
  br i1 %cmp194, label %if.then196, label %if.end540

if.then196:                                       ; preds = %while.end192
  br label %do.body197

do.body197:                                       ; preds = %if.then196
  br label %do.end198

do.end198:                                        ; preds = %do.body197
  %115 = load i8*, i8** %c, align 8
  %incdec.ptr199 = getelementptr inbounds i8, i8* %115, i32 1
  store i8* %incdec.ptr199, i8** %c, align 8
  store %struct.sCppMacroReplacementPartInfo* null, %struct.sCppMacroReplacementPartInfo** %lastReplacement, align 8
  store i32 0, i32* %nextParameterReplacementFlags, align 4
  %116 = load i8*, i8** %c, align 8
  store i8* %116, i8** %begin, align 8
  br label %while.cond200

while.cond200:                                    ; preds = %if.end494, %if.end493, %while.end400, %if.end367, %do.end198
  %117 = load i8*, i8** %c, align 8
  %118 = load i8, i8* %117, align 1
  %tobool201 = icmp ne i8 %118, 0
  br i1 %tobool201, label %while.body202, label %while.end496

while.body202:                                    ; preds = %while.cond200
  %119 = load i8*, i8** %c, align 8
  %120 = load i8, i8* %119, align 1
  %conv203 = sext i8 %120 to i32
  %call204 = call i32 @isalpha(i32 %conv203) #4
  %tobool205 = icmp ne i32 %call204, 0
  br i1 %tobool205, label %if.then210, label %lor.lhs.false206

lor.lhs.false206:                                 ; preds = %while.body202
  %121 = load i8*, i8** %c, align 8
  %122 = load i8, i8* %121, align 1
  %conv207 = sext i8 %122 to i32
  %cmp208 = icmp eq i32 %conv207, 95
  br i1 %cmp208, label %if.then210, label %if.end368

if.then210:                                       ; preds = %lor.lhs.false206, %while.body202
  %123 = load i8*, i8** %c, align 8
  %124 = load i8*, i8** %begin, align 8
  %cmp211 = icmp ugt i8* %123, %124
  br i1 %cmp211, label %if.then213, label %if.end245

if.then213:                                       ; preds = %if.then210
  br label %do.body214

do.body214:                                       ; preds = %if.then213
  %125 = load %struct.sCppMacroReplacementPartInfo*, %struct.sCppMacroReplacementPartInfo** %lastReplacement, align 8
  %tobool215 = icmp ne %struct.sCppMacroReplacementPartInfo* %125, null
  br i1 %tobool215, label %land.lhs.true216, label %if.else222

land.lhs.true216:                                 ; preds = %do.body214
  %126 = load %struct.sCppMacroReplacementPartInfo*, %struct.sCppMacroReplacementPartInfo** %lastReplacement, align 8
  %parameterIndex = getelementptr inbounds %struct.sCppMacroReplacementPartInfo, %struct.sCppMacroReplacementPartInfo* %126, i32 0, i32 0
  %127 = load i32, i32* %parameterIndex, align 8
  %cmp217 = icmp eq i32 %127, -1
  br i1 %cmp217, label %if.then219, label %if.else222

if.then219:                                       ; preds = %land.lhs.true216
  %128 = load %struct.sCppMacroReplacementPartInfo*, %struct.sCppMacroReplacementPartInfo** %lastReplacement, align 8
  %constant = getelementptr inbounds %struct.sCppMacroReplacementPartInfo, %struct.sCppMacroReplacementPartInfo* %128, i32 0, i32 2
  %129 = load %struct.sVString*, %struct.sVString** %constant, align 8
  %130 = load i8*, i8** %begin, align 8
  %131 = load i8*, i8** %c, align 8
  %132 = load i8*, i8** %begin, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %131 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %132 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @vStringNCatS(%struct.sVString* %129, i8* %130, i64 %sub.ptr.sub)
  br label %do.body220

do.body220:                                       ; preds = %if.then219
  br label %do.end221

do.end221:                                        ; preds = %do.body220
  br label %if.end243

if.else222:                                       ; preds = %land.lhs.true216, %do.body214
  br label %do.body223

do.body223:                                       ; preds = %if.else222
  %call224 = call i8* @eMalloc(i64 24)
  %133 = bitcast i8* %call224 to %struct.sCppMacroReplacementPartInfo*
  store %struct.sCppMacroReplacementPartInfo* %133, %struct.sCppMacroReplacementPartInfo** %rep, align 8
  %134 = load %struct.sCppMacroReplacementPartInfo*, %struct.sCppMacroReplacementPartInfo** %rep, align 8
  %parameterIndex225 = getelementptr inbounds %struct.sCppMacroReplacementPartInfo, %struct.sCppMacroReplacementPartInfo* %134, i32 0, i32 0
  store i32 -1, i32* %parameterIndex225, align 8
  %135 = load %struct.sCppMacroReplacementPartInfo*, %struct.sCppMacroReplacementPartInfo** %rep, align 8
  %flags = getelementptr inbounds %struct.sCppMacroReplacementPartInfo, %struct.sCppMacroReplacementPartInfo* %135, i32 0, i32 1
  store i32 0, i32* %flags, align 4
  %call226 = call %struct.sVString* @vStringNew()
  %136 = load %struct.sCppMacroReplacementPartInfo*, %struct.sCppMacroReplacementPartInfo** %rep, align 8
  %constant227 = getelementptr inbounds %struct.sCppMacroReplacementPartInfo, %struct.sCppMacroReplacementPartInfo* %136, i32 0, i32 2
  store %struct.sVString* %call226, %struct.sVString** %constant227, align 8
  %137 = load %struct.sCppMacroReplacementPartInfo*, %struct.sCppMacroReplacementPartInfo** %rep, align 8
  %constant228 = getelementptr inbounds %struct.sCppMacroReplacementPartInfo, %struct.sCppMacroReplacementPartInfo* %137, i32 0, i32 2
  %138 = load %struct.sVString*, %struct.sVString** %constant228, align 8
  %139 = load i8*, i8** %begin, align 8
  %140 = load i8*, i8** %c, align 8
  %141 = load i8*, i8** %begin, align 8
  %sub.ptr.lhs.cast229 = ptrtoint i8* %140 to i64
  %sub.ptr.rhs.cast230 = ptrtoint i8* %141 to i64
  %sub.ptr.sub231 = sub i64 %sub.ptr.lhs.cast229, %sub.ptr.rhs.cast230
  call void @vStringNCatS(%struct.sVString* %138, i8* %139, i64 %sub.ptr.sub231)
  %142 = load %struct.sCppMacroReplacementPartInfo*, %struct.sCppMacroReplacementPartInfo** %rep, align 8
  %next = getelementptr inbounds %struct.sCppMacroReplacementPartInfo, %struct.sCppMacroReplacementPartInfo* %142, i32 0, i32 3
  store %struct.sCppMacroReplacementPartInfo* null, %struct.sCppMacroReplacementPartInfo** %next, align 8
  br label %do.body232

do.body232:                                       ; preds = %do.body223
  br label %do.end233

do.end233:                                        ; preds = %do.body232
  br label %do.body234

do.body234:                                       ; preds = %do.end233
  %143 = load %struct.sCppMacroReplacementPartInfo*, %struct.sCppMacroReplacementPartInfo** %lastReplacement, align 8
  %tobool235 = icmp ne %struct.sCppMacroReplacementPartInfo* %143, null
  br i1 %tobool235, label %if.then236, label %if.else238

if.then236:                                       ; preds = %do.body234
  %144 = load %struct.sCppMacroReplacementPartInfo*, %struct.sCppMacroReplacementPartInfo** %rep, align 8
  %145 = load %struct.sCppMacroReplacementPartInfo*, %struct.sCppMacroReplacementPartInfo** %lastReplacement, align 8
  %next237 = getelementptr inbounds %struct.sCppMacroReplacementPartInfo, %struct.sCppMacroReplacementPartInfo* %145, i32 0, i32 3
  store %struct.sCppMacroReplacementPartInfo* %144, %struct.sCppMacroReplacementPartInfo** %next237, align 8
  br label %if.end240

if.else238:                                       ; preds = %do.body234
  %146 = load %struct.sCppMacroReplacementPartInfo*, %struct.sCppMacroReplacementPartInfo** %rep, align 8
  %147 = load %struct.sCppMacroInfo*, %struct.sCppMacroInfo** %info, align 8
  %replacements239 = getelementptr inbounds %struct.sCppMacroInfo, %struct.sCppMacroInfo* %147, i32 0, i32 1
  store %struct.sCppMacroReplacementPartInfo* %146, %struct.sCppMacroReplacementPartInfo** %replacements239, align 8
  br label %if.end240

if.end240:                                        ; preds = %if.else238, %if.then236
  %148 = load %struct.sCppMacroReplacementPartInfo*, %struct.sCppMacroReplacementPartInfo** %rep, align 8
  store %struct.sCppMacroReplacementPartInfo* %148, %struct.sCppMacroReplacementPartInfo** %lastReplacement, align 8
  br label %do.end241

do.end241:                                        ; preds = %if.end240
  br label %do.end242

do.end242:                                        ; preds = %do.end241
  br label %if.end243

if.end243:                                        ; preds = %do.end242, %do.end221
  br label %do.end244

do.end244:                                        ; preds = %if.end243
  br label %if.end245

if.end245:                                        ; preds = %do.end244, %if.then210
  %149 = load i8*, i8** %c, align 8
  store i8* %149, i8** %tokenBegin, align 8
  br label %while.cond246

while.cond246:                                    ; preds = %while.body259, %if.end245
  %150 = load i8*, i8** %c, align 8
  %151 = load i8, i8* %150, align 1
  %conv247 = sext i8 %151 to i32
  %tobool248 = icmp ne i32 %conv247, 0
  br i1 %tobool248, label %land.rhs249, label %land.end258

land.rhs249:                                      ; preds = %while.cond246
  %152 = load i8*, i8** %c, align 8
  %153 = load i8, i8* %152, align 1
  %conv250 = sext i8 %153 to i32
  %call251 = call i32 @isalnum(i32 %conv250) #4
  %tobool252 = icmp ne i32 %call251, 0
  br i1 %tobool252, label %lor.end257, label %lor.rhs253

lor.rhs253:                                       ; preds = %land.rhs249
  %154 = load i8*, i8** %c, align 8
  %155 = load i8, i8* %154, align 1
  %conv254 = sext i8 %155 to i32
  %cmp255 = icmp eq i32 %conv254, 95
  br label %lor.end257

lor.end257:                                       ; preds = %lor.rhs253, %land.rhs249
  %156 = phi i1 [ true, %land.rhs249 ], [ %cmp255, %lor.rhs253 ]
  br label %land.end258

land.end258:                                      ; preds = %lor.end257, %while.cond246
  %157 = phi i1 [ false, %while.cond246 ], [ %156, %lor.end257 ]
  br i1 %157, label %while.body259, label %while.end261

while.body259:                                    ; preds = %land.end258
  %158 = load i8*, i8** %c, align 8
  %incdec.ptr260 = getelementptr inbounds i8, i8* %158, i32 1
  store i8* %incdec.ptr260, i8** %c, align 8
  br label %while.cond246

while.end261:                                     ; preds = %land.end258
  %159 = load i8*, i8** %c, align 8
  %160 = load i8*, i8** %tokenBegin, align 8
  %sub.ptr.lhs.cast262 = ptrtoint i8* %159 to i64
  %sub.ptr.rhs.cast263 = ptrtoint i8* %160 to i64
  %sub.ptr.sub264 = sub i64 %sub.ptr.lhs.cast262, %sub.ptr.rhs.cast263
  %conv265 = trunc i64 %sub.ptr.sub264 to i32
  store i32 %conv265, i32* %tokenLen, align 4
  br label %do.body266

do.body266:                                       ; preds = %while.end261
  br label %do.end267

do.end267:                                        ; preds = %do.body266
  %161 = load i32, i32* %tokenLen, align 4
  %cmp268 = icmp eq i32 %161, 11
  br i1 %cmp268, label %land.rhs270, label %land.end274

land.rhs270:                                      ; preds = %do.end267
  %162 = load i8*, i8** %tokenBegin, align 8
  %call271 = call i32 @strncmp(i8* %162, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0), i64 11)
  %cmp272 = icmp eq i32 %call271, 0
  br label %land.end274

land.end274:                                      ; preds = %land.rhs270, %do.end267
  %163 = phi i1 [ false, %do.end267 ], [ %cmp272, %land.rhs270 ]
  %frombool = zext i1 %163 to i8
  store i8 %frombool, i8* %bIsVarArg, align 1
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %land.end274
  %164 = load i32, i32* %i, align 4
  %165 = load i32, i32* %iParamCount, align 4
  %cmp275 = icmp slt i32 %164, %165
  br i1 %cmp275, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %166 = load i32, i32* %i, align 4
  %idxprom277 = sext i32 %166 to i64
  %arrayidx278 = getelementptr inbounds [16 x i8*], [16 x i8*]* %paramEnd, i64 0, i64 %idxprom277
  %167 = load i8*, i8** %arrayidx278, align 8
  %168 = load i32, i32* %i, align 4
  %idxprom279 = sext i32 %168 to i64
  %arrayidx280 = getelementptr inbounds [16 x i8*], [16 x i8*]* %paramBegin, i64 0, i64 %idxprom279
  %169 = load i8*, i8** %arrayidx280, align 8
  %sub.ptr.lhs.cast281 = ptrtoint i8* %167 to i64
  %sub.ptr.rhs.cast282 = ptrtoint i8* %169 to i64
  %sub.ptr.sub283 = sub i64 %sub.ptr.lhs.cast281, %sub.ptr.rhs.cast282
  %conv284 = trunc i64 %sub.ptr.sub283 to i32
  store i32 %conv284, i32* %paramLen, align 4
  %170 = load i8, i8* %bIsVarArg, align 1
  %tobool285 = trunc i8 %170 to i1
  br i1 %tobool285, label %land.lhs.true287, label %lor.lhs.false296

land.lhs.true287:                                 ; preds = %for.body
  %171 = load i32, i32* %paramLen, align 4
  %cmp288 = icmp eq i32 %171, 3
  br i1 %cmp288, label %land.lhs.true290, label %lor.lhs.false296

land.lhs.true290:                                 ; preds = %land.lhs.true287
  %172 = load i32, i32* %i, align 4
  %idxprom291 = sext i32 %172 to i64
  %arrayidx292 = getelementptr inbounds [16 x i8*], [16 x i8*]* %paramBegin, i64 0, i64 %idxprom291
  %173 = load i8*, i8** %arrayidx292, align 8
  %call293 = call i32 @strncmp(i8* %173, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i64 0, i64 0), i64 3)
  %cmp294 = icmp eq i32 %call293, 0
  br i1 %cmp294, label %if.then308, label %lor.lhs.false296

lor.lhs.false296:                                 ; preds = %land.lhs.true290, %land.lhs.true287, %for.body
  %174 = load i8, i8* %bIsVarArg, align 1
  %tobool297 = trunc i8 %174 to i1
  br i1 %tobool297, label %if.end327, label %land.lhs.true298

land.lhs.true298:                                 ; preds = %lor.lhs.false296
  %175 = load i32, i32* %paramLen, align 4
  %176 = load i32, i32* %tokenLen, align 4
  %cmp299 = icmp eq i32 %175, %176
  br i1 %cmp299, label %land.lhs.true301, label %if.end327

land.lhs.true301:                                 ; preds = %land.lhs.true298
  %177 = load i32, i32* %i, align 4
  %idxprom302 = sext i32 %177 to i64
  %arrayidx303 = getelementptr inbounds [16 x i8*], [16 x i8*]* %paramBegin, i64 0, i64 %idxprom302
  %178 = load i8*, i8** %arrayidx303, align 8
  %179 = load i8*, i8** %tokenBegin, align 8
  %180 = load i32, i32* %paramLen, align 4
  %conv304 = sext i32 %180 to i64
  %call305 = call i32 @strncmp(i8* %178, i8* %179, i64 %conv304)
  %cmp306 = icmp eq i32 %call305, 0
  br i1 %cmp306, label %if.then308, label %if.end327

if.then308:                                       ; preds = %land.lhs.true301, %land.lhs.true290
  %call310 = call i8* @eMalloc(i64 24)
  %181 = bitcast i8* %call310 to %struct.sCppMacroReplacementPartInfo*
  store %struct.sCppMacroReplacementPartInfo* %181, %struct.sCppMacroReplacementPartInfo** %rep309, align 8
  %182 = load i32, i32* %i, align 4
  %183 = load %struct.sCppMacroReplacementPartInfo*, %struct.sCppMacroReplacementPartInfo** %rep309, align 8
  %parameterIndex311 = getelementptr inbounds %struct.sCppMacroReplacementPartInfo, %struct.sCppMacroReplacementPartInfo* %183, i32 0, i32 0
  store i32 %182, i32* %parameterIndex311, align 8
  %184 = load i32, i32* %nextParameterReplacementFlags, align 4
  %185 = load i8, i8* %bIsVarArg, align 1
  %tobool312 = trunc i8 %185 to i1
  %186 = zext i1 %tobool312 to i64
  %cond = select i1 %tobool312, i32 1, i32 0
  %or = or i32 %184, %cond
  %187 = load %struct.sCppMacroReplacementPartInfo*, %struct.sCppMacroReplacementPartInfo** %rep309, align 8
  %flags314 = getelementptr inbounds %struct.sCppMacroReplacementPartInfo, %struct.sCppMacroReplacementPartInfo* %187, i32 0, i32 1
  store i32 %or, i32* %flags314, align 4
  %188 = load %struct.sCppMacroReplacementPartInfo*, %struct.sCppMacroReplacementPartInfo** %rep309, align 8
  %constant315 = getelementptr inbounds %struct.sCppMacroReplacementPartInfo, %struct.sCppMacroReplacementPartInfo* %188, i32 0, i32 2
  store %struct.sVString* null, %struct.sVString** %constant315, align 8
  %189 = load %struct.sCppMacroReplacementPartInfo*, %struct.sCppMacroReplacementPartInfo** %rep309, align 8
  %next316 = getelementptr inbounds %struct.sCppMacroReplacementPartInfo, %struct.sCppMacroReplacementPartInfo* %189, i32 0, i32 3
  store %struct.sCppMacroReplacementPartInfo* null, %struct.sCppMacroReplacementPartInfo** %next316, align 8
  store i32 0, i32* %nextParameterReplacementFlags, align 4
  br label %do.body317

do.body317:                                       ; preds = %if.then308
  br label %do.end318

do.end318:                                        ; preds = %do.body317
  br label %do.body319

do.body319:                                       ; preds = %do.end318
  %190 = load %struct.sCppMacroReplacementPartInfo*, %struct.sCppMacroReplacementPartInfo** %lastReplacement, align 8
  %tobool320 = icmp ne %struct.sCppMacroReplacementPartInfo* %190, null
  br i1 %tobool320, label %if.then321, label %if.else323

if.then321:                                       ; preds = %do.body319
  %191 = load %struct.sCppMacroReplacementPartInfo*, %struct.sCppMacroReplacementPartInfo** %rep309, align 8
  %192 = load %struct.sCppMacroReplacementPartInfo*, %struct.sCppMacroReplacementPartInfo** %lastReplacement, align 8
  %next322 = getelementptr inbounds %struct.sCppMacroReplacementPartInfo, %struct.sCppMacroReplacementPartInfo* %192, i32 0, i32 3
  store %struct.sCppMacroReplacementPartInfo* %191, %struct.sCppMacroReplacementPartInfo** %next322, align 8
  br label %if.end325

if.else323:                                       ; preds = %do.body319
  %193 = load %struct.sCppMacroReplacementPartInfo*, %struct.sCppMacroReplacementPartInfo** %rep309, align 8
  %194 = load %struct.sCppMacroInfo*, %struct.sCppMacroInfo** %info, align 8
  %replacements324 = getelementptr inbounds %struct.sCppMacroInfo, %struct.sCppMacroInfo* %194, i32 0, i32 1
  store %struct.sCppMacroReplacementPartInfo* %193, %struct.sCppMacroReplacementPartInfo** %replacements324, align 8
  br label %if.end325

if.end325:                                        ; preds = %if.else323, %if.then321
  %195 = load %struct.sCppMacroReplacementPartInfo*, %struct.sCppMacroReplacementPartInfo** %rep309, align 8
  store %struct.sCppMacroReplacementPartInfo* %195, %struct.sCppMacroReplacementPartInfo** %lastReplacement, align 8
  br label %do.end326

do.end326:                                        ; preds = %if.end325
  br label %for.end

if.end327:                                        ; preds = %land.lhs.true301, %land.lhs.true298, %lor.lhs.false296
  br label %for.inc

for.inc:                                          ; preds = %if.end327
  %196 = load i32, i32* %i, align 4
  %inc328 = add nsw i32 %196, 1
  store i32 %inc328, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %do.end326, %for.cond
  %197 = load i32, i32* %i, align 4
  %198 = load i32, i32* %iParamCount, align 4
  %cmp329 = icmp sge i32 %197, %198
  br i1 %cmp329, label %if.then331, label %if.end367

if.then331:                                       ; preds = %for.end
  br label %do.body332

do.body332:                                       ; preds = %if.then331
  %199 = load %struct.sCppMacroReplacementPartInfo*, %struct.sCppMacroReplacementPartInfo** %lastReplacement, align 8
  %tobool333 = icmp ne %struct.sCppMacroReplacementPartInfo* %199, null
  br i1 %tobool333, label %land.lhs.true334, label %if.else343

land.lhs.true334:                                 ; preds = %do.body332
  %200 = load %struct.sCppMacroReplacementPartInfo*, %struct.sCppMacroReplacementPartInfo** %lastReplacement, align 8
  %parameterIndex335 = getelementptr inbounds %struct.sCppMacroReplacementPartInfo, %struct.sCppMacroReplacementPartInfo* %200, i32 0, i32 0
  %201 = load i32, i32* %parameterIndex335, align 8
  %cmp336 = icmp eq i32 %201, -1
  br i1 %cmp336, label %if.then338, label %if.else343

if.then338:                                       ; preds = %land.lhs.true334
  %202 = load %struct.sCppMacroReplacementPartInfo*, %struct.sCppMacroReplacementPartInfo** %lastReplacement, align 8
  %constant339 = getelementptr inbounds %struct.sCppMacroReplacementPartInfo, %struct.sCppMacroReplacementPartInfo* %202, i32 0, i32 2
  %203 = load %struct.sVString*, %struct.sVString** %constant339, align 8
  %204 = load i8*, i8** %tokenBegin, align 8
  %205 = load i32, i32* %tokenLen, align 4
  %conv340 = sext i32 %205 to i64
  call void @vStringNCatS(%struct.sVString* %203, i8* %204, i64 %conv340)
  br label %do.body341

do.body341:                                       ; preds = %if.then338
  br label %do.end342

do.end342:                                        ; preds = %do.body341
  br label %if.end365

if.else343:                                       ; preds = %land.lhs.true334, %do.body332
  br label %do.body344

do.body344:                                       ; preds = %if.else343
  %call346 = call i8* @eMalloc(i64 24)
  %206 = bitcast i8* %call346 to %struct.sCppMacroReplacementPartInfo*
  store %struct.sCppMacroReplacementPartInfo* %206, %struct.sCppMacroReplacementPartInfo** %rep345, align 8
  %207 = load %struct.sCppMacroReplacementPartInfo*, %struct.sCppMacroReplacementPartInfo** %rep345, align 8
  %parameterIndex347 = getelementptr inbounds %struct.sCppMacroReplacementPartInfo, %struct.sCppMacroReplacementPartInfo* %207, i32 0, i32 0
  store i32 -1, i32* %parameterIndex347, align 8
  %208 = load %struct.sCppMacroReplacementPartInfo*, %struct.sCppMacroReplacementPartInfo** %rep345, align 8
  %flags348 = getelementptr inbounds %struct.sCppMacroReplacementPartInfo, %struct.sCppMacroReplacementPartInfo* %208, i32 0, i32 1
  store i32 0, i32* %flags348, align 4
  %call349 = call %struct.sVString* @vStringNew()
  %209 = load %struct.sCppMacroReplacementPartInfo*, %struct.sCppMacroReplacementPartInfo** %rep345, align 8
  %constant350 = getelementptr inbounds %struct.sCppMacroReplacementPartInfo, %struct.sCppMacroReplacementPartInfo* %209, i32 0, i32 2
  store %struct.sVString* %call349, %struct.sVString** %constant350, align 8
  %210 = load %struct.sCppMacroReplacementPartInfo*, %struct.sCppMacroReplacementPartInfo** %rep345, align 8
  %constant351 = getelementptr inbounds %struct.sCppMacroReplacementPartInfo, %struct.sCppMacroReplacementPartInfo* %210, i32 0, i32 2
  %211 = load %struct.sVString*, %struct.sVString** %constant351, align 8
  %212 = load i8*, i8** %tokenBegin, align 8
  %213 = load i32, i32* %tokenLen, align 4
  %conv352 = sext i32 %213 to i64
  call void @vStringNCatS(%struct.sVString* %211, i8* %212, i64 %conv352)
  %214 = load %struct.sCppMacroReplacementPartInfo*, %struct.sCppMacroReplacementPartInfo** %rep345, align 8
  %next353 = getelementptr inbounds %struct.sCppMacroReplacementPartInfo, %struct.sCppMacroReplacementPartInfo* %214, i32 0, i32 3
  store %struct.sCppMacroReplacementPartInfo* null, %struct.sCppMacroReplacementPartInfo** %next353, align 8
  br label %do.body354

do.body354:                                       ; preds = %do.body344
  br label %do.end355

do.end355:                                        ; preds = %do.body354
  br label %do.body356

do.body356:                                       ; preds = %do.end355
  %215 = load %struct.sCppMacroReplacementPartInfo*, %struct.sCppMacroReplacementPartInfo** %lastReplacement, align 8
  %tobool357 = icmp ne %struct.sCppMacroReplacementPartInfo* %215, null
  br i1 %tobool357, label %if.then358, label %if.else360

if.then358:                                       ; preds = %do.body356
  %216 = load %struct.sCppMacroReplacementPartInfo*, %struct.sCppMacroReplacementPartInfo** %rep345, align 8
  %217 = load %struct.sCppMacroReplacementPartInfo*, %struct.sCppMacroReplacementPartInfo** %lastReplacement, align 8
  %next359 = getelementptr inbounds %struct.sCppMacroReplacementPartInfo, %struct.sCppMacroReplacementPartInfo* %217, i32 0, i32 3
  store %struct.sCppMacroReplacementPartInfo* %216, %struct.sCppMacroReplacementPartInfo** %next359, align 8
  br label %if.end362

if.else360:                                       ; preds = %do.body356
  %218 = load %struct.sCppMacroReplacementPartInfo*, %struct.sCppMacroReplacementPartInfo** %rep345, align 8
  %219 = load %struct.sCppMacroInfo*, %struct.sCppMacroInfo** %info, align 8
  %replacements361 = getelementptr inbounds %struct.sCppMacroInfo, %struct.sCppMacroInfo* %219, i32 0, i32 1
  store %struct.sCppMacroReplacementPartInfo* %218, %struct.sCppMacroReplacementPartInfo** %replacements361, align 8
  br label %if.end362

if.end362:                                        ; preds = %if.else360, %if.then358
  %220 = load %struct.sCppMacroReplacementPartInfo*, %struct.sCppMacroReplacementPartInfo** %rep345, align 8
  store %struct.sCppMacroReplacementPartInfo* %220, %struct.sCppMacroReplacementPartInfo** %lastReplacement, align 8
  br label %do.end363

do.end363:                                        ; preds = %if.end362
  br label %do.end364

do.end364:                                        ; preds = %do.end363
  br label %if.end365

if.end365:                                        ; preds = %do.end364, %do.end342
  br label %do.end366

do.end366:                                        ; preds = %if.end365
  br label %if.end367

if.end367:                                        ; preds = %do.end366, %for.end
  %221 = load i8*, i8** %c, align 8
  store i8* %221, i8** %begin, align 8
  br label %while.cond200

if.end368:                                        ; preds = %lor.lhs.false206
  %222 = load i8*, i8** %c, align 8
  %223 = load i8, i8* %222, align 1
  %conv369 = sext i8 %223 to i32
  %cmp370 = icmp eq i32 %conv369, 34
  br i1 %cmp370, label %if.then376, label %lor.lhs.false372

lor.lhs.false372:                                 ; preds = %if.end368
  %224 = load i8*, i8** %c, align 8
  %225 = load i8, i8* %224, align 1
  %conv373 = sext i8 %225 to i32
  %cmp374 = icmp eq i32 %conv373, 39
  br i1 %cmp374, label %if.then376, label %if.end401

if.then376:                                       ; preds = %lor.lhs.false372, %if.end368
  %226 = load i8*, i8** %c, align 8
  %227 = load i8, i8* %226, align 1
  store i8 %227, i8* %term, align 1
  %228 = load i8*, i8** %c, align 8
  %incdec.ptr377 = getelementptr inbounds i8, i8* %228, i32 1
  store i8* %incdec.ptr377, i8** %c, align 8
  br label %while.cond378

while.cond378:                                    ; preds = %if.end398, %if.then376
  %229 = load i8*, i8** %c, align 8
  %230 = load i8, i8* %229, align 1
  %tobool379 = icmp ne i8 %230, 0
  br i1 %tobool379, label %while.body380, label %while.end400

while.body380:                                    ; preds = %while.cond378
  %231 = load i8*, i8** %c, align 8
  %232 = load i8, i8* %231, align 1
  %conv381 = sext i8 %232 to i32
  %cmp382 = icmp eq i32 %conv381, 92
  br i1 %cmp382, label %if.then384, label %if.else390

if.then384:                                       ; preds = %while.body380
  %233 = load i8*, i8** %c, align 8
  %incdec.ptr385 = getelementptr inbounds i8, i8* %233, i32 1
  store i8* %incdec.ptr385, i8** %c, align 8
  %234 = load i8*, i8** %c, align 8
  %235 = load i8, i8* %234, align 1
  %tobool386 = icmp ne i8 %235, 0
  br i1 %tobool386, label %if.then387, label %if.end389

if.then387:                                       ; preds = %if.then384
  %236 = load i8*, i8** %c, align 8
  %incdec.ptr388 = getelementptr inbounds i8, i8* %236, i32 1
  store i8* %incdec.ptr388, i8** %c, align 8
  br label %if.end389

if.end389:                                        ; preds = %if.then387, %if.then384
  br label %if.end398

if.else390:                                       ; preds = %while.body380
  %237 = load i8*, i8** %c, align 8
  %238 = load i8, i8* %237, align 1
  %conv391 = sext i8 %238 to i32
  %239 = load i8, i8* %term, align 1
  %conv392 = sext i8 %239 to i32
  %cmp393 = icmp eq i32 %conv391, %conv392
  br i1 %cmp393, label %if.then395, label %if.end397

if.then395:                                       ; preds = %if.else390
  %240 = load i8*, i8** %c, align 8
  %incdec.ptr396 = getelementptr inbounds i8, i8* %240, i32 1
  store i8* %incdec.ptr396, i8** %c, align 8
  br label %while.end400

if.end397:                                        ; preds = %if.else390
  br label %if.end398

if.end398:                                        ; preds = %if.end397, %if.end389
  %241 = load i8*, i8** %c, align 8
  %incdec.ptr399 = getelementptr inbounds i8, i8* %241, i32 1
  store i8* %incdec.ptr399, i8** %c, align 8
  br label %while.cond378

while.end400:                                     ; preds = %if.then395, %while.cond378
  br label %while.cond200

if.end401:                                        ; preds = %lor.lhs.false372
  %242 = load i8*, i8** %c, align 8
  %243 = load i8, i8* %242, align 1
  %conv402 = sext i8 %243 to i32
  %cmp403 = icmp eq i32 %conv402, 35
  br i1 %cmp403, label %if.then405, label %if.end494

if.then405:                                       ; preds = %if.end401
  %244 = load i8*, i8** %c, align 8
  %245 = load i8*, i8** %begin, align 8
  %cmp406 = icmp ugt i8* %244, %245
  br i1 %cmp406, label %if.then408, label %if.end448

if.then408:                                       ; preds = %if.then405
  br label %do.body409

do.body409:                                       ; preds = %if.then408
  %246 = load %struct.sCppMacroReplacementPartInfo*, %struct.sCppMacroReplacementPartInfo** %lastReplacement, align 8
  %tobool410 = icmp ne %struct.sCppMacroReplacementPartInfo* %246, null
  br i1 %tobool410, label %land.lhs.true411, label %if.else422

land.lhs.true411:                                 ; preds = %do.body409
  %247 = load %struct.sCppMacroReplacementPartInfo*, %struct.sCppMacroReplacementPartInfo** %lastReplacement, align 8
  %parameterIndex412 = getelementptr inbounds %struct.sCppMacroReplacementPartInfo, %struct.sCppMacroReplacementPartInfo* %247, i32 0, i32 0
  %248 = load i32, i32* %parameterIndex412, align 8
  %cmp413 = icmp eq i32 %248, -1
  br i1 %cmp413, label %if.then415, label %if.else422

if.then415:                                       ; preds = %land.lhs.true411
  %249 = load %struct.sCppMacroReplacementPartInfo*, %struct.sCppMacroReplacementPartInfo** %lastReplacement, align 8
  %constant416 = getelementptr inbounds %struct.sCppMacroReplacementPartInfo, %struct.sCppMacroReplacementPartInfo* %249, i32 0, i32 2
  %250 = load %struct.sVString*, %struct.sVString** %constant416, align 8
  %251 = load i8*, i8** %begin, align 8
  %252 = load i8*, i8** %c, align 8
  %253 = load i8*, i8** %begin, align 8
  %sub.ptr.lhs.cast417 = ptrtoint i8* %252 to i64
  %sub.ptr.rhs.cast418 = ptrtoint i8* %253 to i64
  %sub.ptr.sub419 = sub i64 %sub.ptr.lhs.cast417, %sub.ptr.rhs.cast418
  call void @vStringNCatS(%struct.sVString* %250, i8* %251, i64 %sub.ptr.sub419)
  br label %do.body420

do.body420:                                       ; preds = %if.then415
  br label %do.end421

do.end421:                                        ; preds = %do.body420
  br label %if.end446

if.else422:                                       ; preds = %land.lhs.true411, %do.body409
  br label %do.body423

do.body423:                                       ; preds = %if.else422
  %call425 = call i8* @eMalloc(i64 24)
  %254 = bitcast i8* %call425 to %struct.sCppMacroReplacementPartInfo*
  store %struct.sCppMacroReplacementPartInfo* %254, %struct.sCppMacroReplacementPartInfo** %rep424, align 8
  %255 = load %struct.sCppMacroReplacementPartInfo*, %struct.sCppMacroReplacementPartInfo** %rep424, align 8
  %parameterIndex426 = getelementptr inbounds %struct.sCppMacroReplacementPartInfo, %struct.sCppMacroReplacementPartInfo* %255, i32 0, i32 0
  store i32 -1, i32* %parameterIndex426, align 8
  %256 = load %struct.sCppMacroReplacementPartInfo*, %struct.sCppMacroReplacementPartInfo** %rep424, align 8
  %flags427 = getelementptr inbounds %struct.sCppMacroReplacementPartInfo, %struct.sCppMacroReplacementPartInfo* %256, i32 0, i32 1
  store i32 0, i32* %flags427, align 4
  %call428 = call %struct.sVString* @vStringNew()
  %257 = load %struct.sCppMacroReplacementPartInfo*, %struct.sCppMacroReplacementPartInfo** %rep424, align 8
  %constant429 = getelementptr inbounds %struct.sCppMacroReplacementPartInfo, %struct.sCppMacroReplacementPartInfo* %257, i32 0, i32 2
  store %struct.sVString* %call428, %struct.sVString** %constant429, align 8
  %258 = load %struct.sCppMacroReplacementPartInfo*, %struct.sCppMacroReplacementPartInfo** %rep424, align 8
  %constant430 = getelementptr inbounds %struct.sCppMacroReplacementPartInfo, %struct.sCppMacroReplacementPartInfo* %258, i32 0, i32 2
  %259 = load %struct.sVString*, %struct.sVString** %constant430, align 8
  %260 = load i8*, i8** %begin, align 8
  %261 = load i8*, i8** %c, align 8
  %262 = load i8*, i8** %begin, align 8
  %sub.ptr.lhs.cast431 = ptrtoint i8* %261 to i64
  %sub.ptr.rhs.cast432 = ptrtoint i8* %262 to i64
  %sub.ptr.sub433 = sub i64 %sub.ptr.lhs.cast431, %sub.ptr.rhs.cast432
  call void @vStringNCatS(%struct.sVString* %259, i8* %260, i64 %sub.ptr.sub433)
  %263 = load %struct.sCppMacroReplacementPartInfo*, %struct.sCppMacroReplacementPartInfo** %rep424, align 8
  %next434 = getelementptr inbounds %struct.sCppMacroReplacementPartInfo, %struct.sCppMacroReplacementPartInfo* %263, i32 0, i32 3
  store %struct.sCppMacroReplacementPartInfo* null, %struct.sCppMacroReplacementPartInfo** %next434, align 8
  br label %do.body435

do.body435:                                       ; preds = %do.body423
  br label %do.end436

do.end436:                                        ; preds = %do.body435
  br label %do.body437

do.body437:                                       ; preds = %do.end436
  %264 = load %struct.sCppMacroReplacementPartInfo*, %struct.sCppMacroReplacementPartInfo** %lastReplacement, align 8
  %tobool438 = icmp ne %struct.sCppMacroReplacementPartInfo* %264, null
  br i1 %tobool438, label %if.then439, label %if.else441

if.then439:                                       ; preds = %do.body437
  %265 = load %struct.sCppMacroReplacementPartInfo*, %struct.sCppMacroReplacementPartInfo** %rep424, align 8
  %266 = load %struct.sCppMacroReplacementPartInfo*, %struct.sCppMacroReplacementPartInfo** %lastReplacement, align 8
  %next440 = getelementptr inbounds %struct.sCppMacroReplacementPartInfo, %struct.sCppMacroReplacementPartInfo* %266, i32 0, i32 3
  store %struct.sCppMacroReplacementPartInfo* %265, %struct.sCppMacroReplacementPartInfo** %next440, align 8
  br label %if.end443

if.else441:                                       ; preds = %do.body437
  %267 = load %struct.sCppMacroReplacementPartInfo*, %struct.sCppMacroReplacementPartInfo** %rep424, align 8
  %268 = load %struct.sCppMacroInfo*, %struct.sCppMacroInfo** %info, align 8
  %replacements442 = getelementptr inbounds %struct.sCppMacroInfo, %struct.sCppMacroInfo* %268, i32 0, i32 1
  store %struct.sCppMacroReplacementPartInfo* %267, %struct.sCppMacroReplacementPartInfo** %replacements442, align 8
  br label %if.end443

if.end443:                                        ; preds = %if.else441, %if.then439
  %269 = load %struct.sCppMacroReplacementPartInfo*, %struct.sCppMacroReplacementPartInfo** %rep424, align 8
  store %struct.sCppMacroReplacementPartInfo* %269, %struct.sCppMacroReplacementPartInfo** %lastReplacement, align 8
  br label %do.end444

do.end444:                                        ; preds = %if.end443
  br label %do.end445

do.end445:                                        ; preds = %do.end444
  br label %if.end446

if.end446:                                        ; preds = %do.end445, %do.end421
  br label %do.end447

do.end447:                                        ; preds = %if.end446
  br label %if.end448

if.end448:                                        ; preds = %do.end447, %if.then405
  %270 = load i8*, i8** %c, align 8
  %incdec.ptr449 = getelementptr inbounds i8, i8* %270, i32 1
  store i8* %incdec.ptr449, i8** %c, align 8
  %271 = load i8*, i8** %c, align 8
  %272 = load i8, i8* %271, align 1
  %conv450 = sext i8 %272 to i32
  %cmp451 = icmp eq i32 %conv450, 35
  br i1 %cmp451, label %if.then453, label %if.else489

if.then453:                                       ; preds = %if.end448
  br label %do.body454

do.body454:                                       ; preds = %if.then453
  br label %do.end455

do.end455:                                        ; preds = %do.body454
  br label %while.cond456

while.cond456:                                    ; preds = %while.body460, %do.end455
  %273 = load i8*, i8** %c, align 8
  %274 = load i8, i8* %273, align 1
  %conv457 = sext i8 %274 to i32
  %cmp458 = icmp eq i32 %conv457, 35
  br i1 %cmp458, label %while.body460, label %while.end462

while.body460:                                    ; preds = %while.cond456
  %275 = load i8*, i8** %c, align 8
  %incdec.ptr461 = getelementptr inbounds i8, i8* %275, i32 1
  store i8* %incdec.ptr461, i8** %c, align 8
  br label %while.cond456

while.end462:                                     ; preds = %while.cond456
  br label %while.cond463

while.cond463:                                    ; preds = %while.body476, %while.end462
  %276 = load i8*, i8** %c, align 8
  %277 = load i8, i8* %276, align 1
  %conv464 = sext i8 %277 to i32
  %tobool465 = icmp ne i32 %conv464, 0
  br i1 %tobool465, label %land.rhs466, label %land.end475

land.rhs466:                                      ; preds = %while.cond463
  %278 = load i8*, i8** %c, align 8
  %279 = load i8, i8* %278, align 1
  %conv467 = sext i8 %279 to i32
  %cmp468 = icmp eq i32 %conv467, 32
  br i1 %cmp468, label %lor.end474, label %lor.rhs470

lor.rhs470:                                       ; preds = %land.rhs466
  %280 = load i8*, i8** %c, align 8
  %281 = load i8, i8* %280, align 1
  %conv471 = sext i8 %281 to i32
  %cmp472 = icmp eq i32 %conv471, 9
  br label %lor.end474

lor.end474:                                       ; preds = %lor.rhs470, %land.rhs466
  %282 = phi i1 [ true, %land.rhs466 ], [ %cmp472, %lor.rhs470 ]
  br label %land.end475

land.end475:                                      ; preds = %lor.end474, %while.cond463
  %283 = phi i1 [ false, %while.cond463 ], [ %282, %lor.end474 ]
  br i1 %283, label %while.body476, label %while.end478

while.body476:                                    ; preds = %land.end475
  %284 = load i8*, i8** %c, align 8
  %incdec.ptr477 = getelementptr inbounds i8, i8* %284, i32 1
  store i8* %incdec.ptr477, i8** %c, align 8
  br label %while.cond463

while.end478:                                     ; preds = %land.end475
  %285 = load %struct.sCppMacroReplacementPartInfo*, %struct.sCppMacroReplacementPartInfo** %lastReplacement, align 8
  %tobool479 = icmp ne %struct.sCppMacroReplacementPartInfo* %285, null
  br i1 %tobool479, label %land.lhs.true480, label %if.end488

land.lhs.true480:                                 ; preds = %while.end478
  %286 = load %struct.sCppMacroReplacementPartInfo*, %struct.sCppMacroReplacementPartInfo** %lastReplacement, align 8
  %parameterIndex481 = getelementptr inbounds %struct.sCppMacroReplacementPartInfo, %struct.sCppMacroReplacementPartInfo* %286, i32 0, i32 0
  %287 = load i32, i32* %parameterIndex481, align 8
  %cmp482 = icmp eq i32 %287, -1
  br i1 %cmp482, label %if.then484, label %if.end488

if.then484:                                       ; preds = %land.lhs.true480
  %288 = load %struct.sCppMacroReplacementPartInfo*, %struct.sCppMacroReplacementPartInfo** %lastReplacement, align 8
  %constant485 = getelementptr inbounds %struct.sCppMacroReplacementPartInfo, %struct.sCppMacroReplacementPartInfo* %288, i32 0, i32 2
  %289 = load %struct.sVString*, %struct.sVString** %constant485, align 8
  call void @vStringStripTrailing(%struct.sVString* %289)
  br label %do.body486

do.body486:                                       ; preds = %if.then484
  br label %do.end487

do.end487:                                        ; preds = %do.body486
  br label %if.end488

if.end488:                                        ; preds = %do.end487, %land.lhs.true480, %while.end478
  br label %if.end493

if.else489:                                       ; preds = %if.end448
  br label %do.body490

do.body490:                                       ; preds = %if.else489
  br label %do.end491

do.end491:                                        ; preds = %do.body490
  %290 = load i32, i32* %nextParameterReplacementFlags, align 4
  %or492 = or i32 %290, 2
  store i32 %or492, i32* %nextParameterReplacementFlags, align 4
  br label %if.end493

if.end493:                                        ; preds = %do.end491, %if.end488
  %291 = load i8*, i8** %c, align 8
  store i8* %291, i8** %begin, align 8
  br label %while.cond200

if.end494:                                        ; preds = %if.end401
  %292 = load i8*, i8** %c, align 8
  %incdec.ptr495 = getelementptr inbounds i8, i8* %292, i32 1
  store i8* %incdec.ptr495, i8** %c, align 8
  br label %while.cond200

while.end496:                                     ; preds = %while.cond200
  %293 = load i8*, i8** %c, align 8
  %294 = load i8*, i8** %begin, align 8
  %cmp497 = icmp ugt i8* %293, %294
  br i1 %cmp497, label %if.then499, label %if.end539

if.then499:                                       ; preds = %while.end496
  br label %do.body500

do.body500:                                       ; preds = %if.then499
  %295 = load %struct.sCppMacroReplacementPartInfo*, %struct.sCppMacroReplacementPartInfo** %lastReplacement, align 8
  %tobool501 = icmp ne %struct.sCppMacroReplacementPartInfo* %295, null
  br i1 %tobool501, label %land.lhs.true502, label %if.else513

land.lhs.true502:                                 ; preds = %do.body500
  %296 = load %struct.sCppMacroReplacementPartInfo*, %struct.sCppMacroReplacementPartInfo** %lastReplacement, align 8
  %parameterIndex503 = getelementptr inbounds %struct.sCppMacroReplacementPartInfo, %struct.sCppMacroReplacementPartInfo* %296, i32 0, i32 0
  %297 = load i32, i32* %parameterIndex503, align 8
  %cmp504 = icmp eq i32 %297, -1
  br i1 %cmp504, label %if.then506, label %if.else513

if.then506:                                       ; preds = %land.lhs.true502
  %298 = load %struct.sCppMacroReplacementPartInfo*, %struct.sCppMacroReplacementPartInfo** %lastReplacement, align 8
  %constant507 = getelementptr inbounds %struct.sCppMacroReplacementPartInfo, %struct.sCppMacroReplacementPartInfo* %298, i32 0, i32 2
  %299 = load %struct.sVString*, %struct.sVString** %constant507, align 8
  %300 = load i8*, i8** %begin, align 8
  %301 = load i8*, i8** %c, align 8
  %302 = load i8*, i8** %begin, align 8
  %sub.ptr.lhs.cast508 = ptrtoint i8* %301 to i64
  %sub.ptr.rhs.cast509 = ptrtoint i8* %302 to i64
  %sub.ptr.sub510 = sub i64 %sub.ptr.lhs.cast508, %sub.ptr.rhs.cast509
  call void @vStringNCatS(%struct.sVString* %299, i8* %300, i64 %sub.ptr.sub510)
  br label %do.body511

do.body511:                                       ; preds = %if.then506
  br label %do.end512

do.end512:                                        ; preds = %do.body511
  br label %if.end537

if.else513:                                       ; preds = %land.lhs.true502, %do.body500
  br label %do.body514

do.body514:                                       ; preds = %if.else513
  %call516 = call i8* @eMalloc(i64 24)
  %303 = bitcast i8* %call516 to %struct.sCppMacroReplacementPartInfo*
  store %struct.sCppMacroReplacementPartInfo* %303, %struct.sCppMacroReplacementPartInfo** %rep515, align 8
  %304 = load %struct.sCppMacroReplacementPartInfo*, %struct.sCppMacroReplacementPartInfo** %rep515, align 8
  %parameterIndex517 = getelementptr inbounds %struct.sCppMacroReplacementPartInfo, %struct.sCppMacroReplacementPartInfo* %304, i32 0, i32 0
  store i32 -1, i32* %parameterIndex517, align 8
  %305 = load %struct.sCppMacroReplacementPartInfo*, %struct.sCppMacroReplacementPartInfo** %rep515, align 8
  %flags518 = getelementptr inbounds %struct.sCppMacroReplacementPartInfo, %struct.sCppMacroReplacementPartInfo* %305, i32 0, i32 1
  store i32 0, i32* %flags518, align 4
  %call519 = call %struct.sVString* @vStringNew()
  %306 = load %struct.sCppMacroReplacementPartInfo*, %struct.sCppMacroReplacementPartInfo** %rep515, align 8
  %constant520 = getelementptr inbounds %struct.sCppMacroReplacementPartInfo, %struct.sCppMacroReplacementPartInfo* %306, i32 0, i32 2
  store %struct.sVString* %call519, %struct.sVString** %constant520, align 8
  %307 = load %struct.sCppMacroReplacementPartInfo*, %struct.sCppMacroReplacementPartInfo** %rep515, align 8
  %constant521 = getelementptr inbounds %struct.sCppMacroReplacementPartInfo, %struct.sCppMacroReplacementPartInfo* %307, i32 0, i32 2
  %308 = load %struct.sVString*, %struct.sVString** %constant521, align 8
  %309 = load i8*, i8** %begin, align 8
  %310 = load i8*, i8** %c, align 8
  %311 = load i8*, i8** %begin, align 8
  %sub.ptr.lhs.cast522 = ptrtoint i8* %310 to i64
  %sub.ptr.rhs.cast523 = ptrtoint i8* %311 to i64
  %sub.ptr.sub524 = sub i64 %sub.ptr.lhs.cast522, %sub.ptr.rhs.cast523
  call void @vStringNCatS(%struct.sVString* %308, i8* %309, i64 %sub.ptr.sub524)
  %312 = load %struct.sCppMacroReplacementPartInfo*, %struct.sCppMacroReplacementPartInfo** %rep515, align 8
  %next525 = getelementptr inbounds %struct.sCppMacroReplacementPartInfo, %struct.sCppMacroReplacementPartInfo* %312, i32 0, i32 3
  store %struct.sCppMacroReplacementPartInfo* null, %struct.sCppMacroReplacementPartInfo** %next525, align 8
  br label %do.body526

do.body526:                                       ; preds = %do.body514
  br label %do.end527

do.end527:                                        ; preds = %do.body526
  br label %do.body528

do.body528:                                       ; preds = %do.end527
  %313 = load %struct.sCppMacroReplacementPartInfo*, %struct.sCppMacroReplacementPartInfo** %lastReplacement, align 8
  %tobool529 = icmp ne %struct.sCppMacroReplacementPartInfo* %313, null
  br i1 %tobool529, label %if.then530, label %if.else532

if.then530:                                       ; preds = %do.body528
  %314 = load %struct.sCppMacroReplacementPartInfo*, %struct.sCppMacroReplacementPartInfo** %rep515, align 8
  %315 = load %struct.sCppMacroReplacementPartInfo*, %struct.sCppMacroReplacementPartInfo** %lastReplacement, align 8
  %next531 = getelementptr inbounds %struct.sCppMacroReplacementPartInfo, %struct.sCppMacroReplacementPartInfo* %315, i32 0, i32 3
  store %struct.sCppMacroReplacementPartInfo* %314, %struct.sCppMacroReplacementPartInfo** %next531, align 8
  br label %if.end534

if.else532:                                       ; preds = %do.body528
  %316 = load %struct.sCppMacroReplacementPartInfo*, %struct.sCppMacroReplacementPartInfo** %rep515, align 8
  %317 = load %struct.sCppMacroInfo*, %struct.sCppMacroInfo** %info, align 8
  %replacements533 = getelementptr inbounds %struct.sCppMacroInfo, %struct.sCppMacroInfo* %317, i32 0, i32 1
  store %struct.sCppMacroReplacementPartInfo* %316, %struct.sCppMacroReplacementPartInfo** %replacements533, align 8
  br label %if.end534

if.end534:                                        ; preds = %if.else532, %if.then530
  %318 = load %struct.sCppMacroReplacementPartInfo*, %struct.sCppMacroReplacementPartInfo** %rep515, align 8
  store %struct.sCppMacroReplacementPartInfo* %318, %struct.sCppMacroReplacementPartInfo** %lastReplacement, align 8
  br label %do.end535

do.end535:                                        ; preds = %if.end534
  br label %do.end536

do.end536:                                        ; preds = %do.end535
  br label %if.end537

if.end537:                                        ; preds = %do.end536, %do.end512
  br label %do.end538

do.end538:                                        ; preds = %if.end537
  br label %if.end539

if.end539:                                        ; preds = %do.end538, %while.end496
  br label %if.end540

if.end540:                                        ; preds = %if.end539, %while.end192
  %319 = load %struct.sHashTable*, %struct.sHashTable** @defineMacroTable, align 8
  %320 = load i8*, i8** %identifierBegin, align 8
  %321 = load i8*, i8** %identifierEnd, align 8
  %322 = load i8*, i8** %identifierBegin, align 8
  %sub.ptr.lhs.cast541 = ptrtoint i8* %321 to i64
  %sub.ptr.rhs.cast542 = ptrtoint i8* %322 to i64
  %sub.ptr.sub543 = sub i64 %sub.ptr.lhs.cast541, %sub.ptr.rhs.cast542
  %call544 = call i8* @eStrndup(i8* %320, i64 %sub.ptr.sub543)
  %323 = load %struct.sCppMacroInfo*, %struct.sCppMacroInfo** %info, align 8
  %324 = bitcast %struct.sCppMacroInfo* %323 to i8*
  call void @hashTablePutItem(%struct.sHashTable* %319, i8* %call544, i8* %324)
  br label %do.body545

do.body545:                                       ; preds = %if.end540
  br label %do.end546

do.end546:                                        ; preds = %if.then, %do.end12, %do.end21, %do.body545
  ret void
}

declare void @vStringNCatS(%struct.sVString*, i8*, i64) #1

declare void @vStringStripTrailing(%struct.sVString*) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 10.0.0 (https://github.com/holzschu/clang.git 0cfc630fbdb62e96720b611a57123ef3eb13e297) (https://github.com/holzschu/llvm.git 0d8a71e39b28502c24718f7e74b5acbcfe36dfe0)"}
