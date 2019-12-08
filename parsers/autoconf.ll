; ModuleID = 'autoconf.c'
source_filename = "autoconf.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-ios11.0.0"

%struct.sParserDependency = type { i32, i8*, i8* }
%struct.sKindDefinition = type { i8, i8, i8*, i8*, i8, i32, %struct.sRoleDesc*, %struct.sScopeSeparator*, i32, i32, i32, %struct.sKindDefinition*, %struct.sKindDefinition* }
%struct.sRoleDesc = type { i8, i8*, i8* }
%struct.sScopeSeparator = type { i32, i8* }
%struct.keywordTable = type { i8*, i32 }
%struct.sM4Subparser = type { %struct.sSubparser, i1 (%struct.sM4Subparser*, i8*)*, i32 (%struct.sM4Subparser*, i8*)*, i1 (%struct.sM4Subparser*, i32, i8*)*, i1 (%struct.sM4Subparser*, i32)* }
%struct.sSubparser = type { %struct.sSlaveParser*, %struct.sSubparser*, i8, i8, i32, void (%struct.sSubparser*)*, void (%struct.sSubparser*)*, void (%struct.sSubparser*, i8*)*, void (%struct.sSubparser*, %struct.sTagEntryInfo*, i32)* }
%struct.sSlaveParser = type { i32, i32, i8*, %struct.sSlaveParser* }
%struct.sTagEntryInfo = type { i8, i64, i8*, i32, %struct._MIOPos, i32, i8*, i8*, i32, [2 x i8], i8*, %struct.anon, i32, [5 x %struct.sTagField], %struct.sPtrArray*, i32, i8*, i64 }
%struct._MIOPos = type { i32, %union.anon.0 }
%union.anon.0 = type { i64 }
%struct.anon = type { i8*, i8*, i8*, i8*, i32, i32, i8*, i32, i8*, [2 x i8*], i32, i64 }
%struct.sTagField = type { i32, i8*, i8 }
%struct.sPtrArray = type opaque
%struct.sParserDefinition = type { i8*, %struct.sKindDefinition*, i32, i8**, i8**, i8**, void (i32)*, void (i32, i1)*, void ()*, i32 (i32)*, i8* (%struct._MIO*, i32*, i32)**, i32, i8, i8, i8, i8, %struct.tagRegexTable*, i32, %struct.keywordTable*, i32, %struct.sTagXpathTableTable*, i32, i8, %struct.sFieldDefinition*, i32, %struct.sXtagDefinition*, i32, %struct.sParserDependency*, i32, %struct.sParameterHandlerTable*, i32, %struct.sXpathFileSpec*, i32, i32, i8 }
%struct._MIO = type opaque
%struct.tagRegexTable = type { i8*, i8*, i8*, i8*, i8*, i8 }
%struct.sTagXpathTableTable = type { %struct.sTagXpathTable*, i32 }
%struct.sTagXpathTable = type { i8*, i32, %union.anon, i8* }
%union.anon = type { %struct.sTagXpathMakeTagSpec }
%struct.sTagXpathMakeTagSpec = type { i32, i32, void (i8*, %struct.sTagXpathMakeTagSpec*, %struct.sTagEntryInfo*, i8*)* }
%struct.sFieldDefinition = type { i8, i8*, i8*, i8, [5 x i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)*], i1 (%struct.sTagEntryInfo*)*, i32, i32 }
%struct.sVString = type { i64, i64, i8* }
%struct.sXtagDefinition = type { i8, i8, i8*, i8*, i1 (%struct.sXtagDefinition*)*, i1 (%struct.sXtagDefinition*)*, i32 }
%struct.sParameterHandlerTable = type { i8*, i8*, void (i32, i8*, i8*)* }
%struct.sXpathFileSpec = type { i8*, i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [9 x i8] c"Autoconf\00", align 1
@dependencies = internal global [1 x %struct.sParserDependency] [%struct.sParserDependency { i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* bitcast (%struct.sM4Subparser* @autoconfSubparser to i8*) }], align 8
@AutoconfKinds = internal global [8 x %struct.sKindDefinition] [%struct.sKindDefinition { i8 1, i8 112, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 116, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 109, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 119, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 101, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.16, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 115, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 99, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 100, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }], align 8
@patterns = internal constant [2 x i8*] [i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i32 0, i32 0), i8* null], align 8
@extensions = internal constant [2 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i32 0, i32 0), i8* null], align 8
@autoconfKeywordTable = internal constant [10 x %struct.keywordTable] [%struct.keywordTable { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0), i32 0 }, %struct.keywordTable { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i32 0, i32 0), i32 1 }, %struct.keywordTable { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0), i32 2 }, %struct.keywordTable { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i32 0, i32 0), i32 2 }, %struct.keywordTable { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i32 0, i32 0), i32 3 }, %struct.keywordTable { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i32 0, i32 0), i32 4 }, %struct.keywordTable { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i32 0, i32 0), i32 5 }, %struct.keywordTable { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.32, i32 0, i32 0), i32 6 }, %struct.keywordTable { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i32 0, i32 0), i32 7 }, %struct.keywordTable { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.34, i32 0, i32 0), i32 7 }], align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"M4\00", align 1
@autoconfSubparser = internal global %struct.sM4Subparser { %struct.sSubparser { %struct.sSlaveParser* null, %struct.sSubparser* null, i8 0, i8 0, i32 3, void (%struct.sSubparser*)* null, void (%struct.sSubparser*)* null, void (%struct.sSubparser*, i8*)* @exclusiveSubparserChosenCallback, void (%struct.sSubparser*, %struct.sTagEntryInfo*, i32)* null }, i1 (%struct.sM4Subparser*, i8*)* @probeLanguage, i32 (%struct.sM4Subparser*, i8*)* @newMacroCallback, i1 (%struct.sM4Subparser*, i32, i8*)* @doesLineCommentStart, i1 (%struct.sM4Subparser*, i32)* @doesStringLiteralStart }, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"m4_\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"AC_\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"AM_\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"AS_\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"AH_\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"package\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"packages\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"template\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"templates\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"macro\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"autoconf macros\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"optwith\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"options specified with --with-...\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"optenable\00", align 1
@.str.16 = private unnamed_addr constant [36 x i8] c"options specified with --enable-...\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"subst\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"substitution keys\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"condition\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"automake conditions\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"definition\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"definitions\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"configure.in\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"ac\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"AC_INIT\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"AH_TEMPLATE\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"AC_DEFUN\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"AC_DEFUN_ONCE\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"AC_ARG_WITH\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"AC_ARG_ENABLE\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"AC_SUBST\00", align 1
@.str.32 = private unnamed_addr constant [15 x i8] c"AM_CONDITIONAL\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"AC_DEFINE\00", align 1
@.str.34 = private unnamed_addr constant [19 x i8] c"AC_DEFINE_UNQUOTED\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sParserDefinition* @AutoconfParser() #0 {
entry:
  %def = alloca %struct.sParserDefinition*, align 8
  %call = call %struct.sParserDefinition* @parserNew(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store %struct.sParserDefinition* %call, %struct.sParserDefinition** %def, align 8
  %0 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %dependencies = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %0, i32 0, i32 27
  store %struct.sParserDependency* getelementptr inbounds ([1 x %struct.sParserDependency], [1 x %struct.sParserDependency]* @dependencies, i64 0, i64 0), %struct.sParserDependency** %dependencies, align 8
  %1 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %dependencyCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %1, i32 0, i32 28
  store i32 1, i32* %dependencyCount, align 8
  %2 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %2, i32 0, i32 1
  store %struct.sKindDefinition* getelementptr inbounds ([8 x %struct.sKindDefinition], [8 x %struct.sKindDefinition]* @AutoconfKinds, i64 0, i64 0), %struct.sKindDefinition** %kindTable, align 8
  %3 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %3, i32 0, i32 2
  store i32 8, i32* %kindCount, align 8
  %4 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %patterns = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %4, i32 0, i32 4
  store i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @patterns, i64 0, i64 0), i8*** %patterns, align 8
  %5 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %extensions = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %5, i32 0, i32 3
  store i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @extensions, i64 0, i64 0), i8*** %extensions, align 8
  %6 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %parser = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %6, i32 0, i32 8
  store void ()* @findAutoconfTags, void ()** %parser, align 8
  %7 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %useCork = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %7, i32 0, i32 12
  store i8 1, i8* %useCork, align 4
  %8 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %keywordTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %8, i32 0, i32 18
  store %struct.keywordTable* getelementptr inbounds ([10 x %struct.keywordTable], [10 x %struct.keywordTable]* @autoconfKeywordTable, i64 0, i64 0), %struct.keywordTable** %keywordTable, align 8
  %9 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %keywordCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %9, i32 0, i32 19
  store i32 10, i32* %keywordCount, align 8
  %10 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  ret %struct.sParserDefinition* %10
}

declare %struct.sParserDefinition* @parserNew(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @findAutoconfTags() #0 {
entry:
  call void @scheduleRunningBaseparser(i32 0)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @exclusiveSubparserChosenCallback(%struct.sSubparser* %s, i8* %data) #0 {
entry:
  %s.addr = alloca %struct.sSubparser*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.sSubparser* %s, %struct.sSubparser** %s.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @setM4Quotes(i8 signext 91, i8 signext 93)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @probeLanguage(%struct.sM4Subparser* %m4, i8* %token) #0 {
entry:
  %m4.addr = alloca %struct.sM4Subparser*, align 8
  %token.addr = alloca i8*, align 8
  store %struct.sM4Subparser* %m4, %struct.sM4Subparser** %m4.addr, align 8
  store i8* %token, i8** %token.addr, align 8
  %0 = load i8*, i8** %token.addr, align 8
  %call = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i64 3)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8*, i8** %token.addr, align 8
  %call1 = call i32 @strncmp(i8* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i64 3)
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %lor.end, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %2 = load i8*, i8** %token.addr, align 8
  %call4 = call i32 @strncmp(i8* %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i64 3)
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %lor.end, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %3 = load i8*, i8** %token.addr, align 8
  %call7 = call i32 @strncmp(i8* %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i64 3)
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false6
  %4 = load i8*, i8** %token.addr, align 8
  %call9 = call i32 @strncmp(i8* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i64 3)
  %cmp10 = icmp eq i32 %call9, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false6, %lor.lhs.false3, %lor.lhs.false, %entry
  %5 = phi i1 [ true, %lor.lhs.false6 ], [ true, %lor.lhs.false3 ], [ true, %lor.lhs.false ], [ true, %entry ], [ %cmp10, %lor.rhs ]
  ret i1 %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @newMacroCallback(%struct.sM4Subparser* %m4, i8* %token) #0 {
entry:
  %m4.addr = alloca %struct.sM4Subparser*, align 8
  %token.addr = alloca i8*, align 8
  %keyword = alloca i32, align 4
  %index = alloca i32, align 4
  store %struct.sM4Subparser* %m4, %struct.sM4Subparser** %m4.addr, align 8
  store i8* %token, i8** %token.addr, align 8
  store i32 0, i32* %index, align 4
  %0 = load i8*, i8** %token.addr, align 8
  %call = call i32 @getInputLanguage()
  %call1 = call i32 @lookupKeyword(i8* %0, i32 %call)
  store i32 %call1, i32* %keyword, align 4
  %1 = load i32, i32* %keyword, align 4
  switch i32 %1, label %sw.default [
    i32 -1, label %sw.bb
    i32 0, label %sw.bb2
    i32 1, label %sw.bb4
    i32 2, label %sw.bb6
    i32 3, label %sw.bb8
    i32 4, label %sw.bb10
    i32 5, label %sw.bb12
    i32 6, label %sw.bb14
    i32 7, label %sw.bb16
  ]

sw.bb:                                            ; preds = %entry
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %call3 = call i32 @makeAutoconfTag(i32 0)
  store i32 %call3, i32* %index, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %call5 = call i32 @makeAutoconfTag(i32 1)
  store i32 %call5, i32* %index, align 4
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  %call7 = call i32 @makeAutoconfTag(i32 2)
  store i32 %call7, i32* %index, align 4
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  %call9 = call i32 @makeAutoconfTag(i32 3)
  store i32 %call9, i32* %index, align 4
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  %call11 = call i32 @makeAutoconfTag(i32 4)
  store i32 %call11, i32* %index, align 4
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  %call13 = call i32 @makeAutoconfTag(i32 5)
  store i32 %call13, i32* %index, align 4
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  %call15 = call i32 @makeAutoconfTag(i32 6)
  store i32 %call15, i32* %index, align 4
  br label %sw.epilog

sw.bb16:                                          ; preds = %entry
  %call17 = call i32 @makeAutoconfTag(i32 7)
  store i32 %call17, i32* %index, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb16, %sw.bb14, %sw.bb12, %sw.bb10, %sw.bb8, %sw.bb6, %sw.bb4, %sw.bb2, %sw.bb
  %2 = load i32, i32* %index, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @doesLineCommentStart(%struct.sM4Subparser* %m4, i32 %c, i8* %token) #0 {
entry:
  %m4.addr = alloca %struct.sM4Subparser*, align 8
  %c.addr = alloca i32, align 4
  %token.addr = alloca i8*, align 8
  store %struct.sM4Subparser* %m4, %struct.sM4Subparser** %m4.addr, align 8
  store i32 %c, i32* %c.addr, align 4
  store i8* %token, i8** %token.addr, align 8
  %0 = load i32, i32* %c.addr, align 4
  %cmp = icmp eq i32 %0, 35
  ret i1 %cmp
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @doesStringLiteralStart(%struct.sM4Subparser* %m4, i32 %c) #0 {
entry:
  %m4.addr = alloca %struct.sM4Subparser*, align 8
  %c.addr = alloca i32, align 4
  store %struct.sM4Subparser* %m4, %struct.sM4Subparser** %m4.addr, align 8
  store i32 %c, i32* %c.addr, align 4
  ret i1 false
}

declare void @setM4Quotes(i8 signext, i8 signext) #1

declare i32 @strncmp(i8*, i8*, i64) #1

declare i32 @lookupKeyword(i8*, i32) #1

declare i32 @getInputLanguage() #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @makeAutoconfTag(i32 %kind) #0 {
entry:
  %kind.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %name = alloca %struct.sVString*, align 8
  %e = alloca %struct.sTagEntryInfo, align 8
  store i32 %kind, i32* %kind.addr, align 4
  store i32 0, i32* %index, align 4
  %call = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call, %struct.sVString** %name, align 8
  %0 = load %struct.sVString*, %struct.sVString** %name, align 8
  %call1 = call zeroext i1 @readM4MacroArgument(%struct.sVString* %0)
  %1 = load %struct.sVString*, %struct.sVString** %name, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %1, i32 0, i32 0
  %2 = load i64, i64* %length, align 8
  %cmp = icmp ugt i64 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.sVString*, %struct.sVString** %name, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %3, i32 0, i32 2
  %4 = load i8*, i8** %buffer, align 8
  %5 = load i32, i32* %kind.addr, align 4
  call void @initTagEntry(%struct.sTagEntryInfo* %e, i8* %4, i32 %5)
  %call2 = call i32 @makeTagEntry(%struct.sTagEntryInfo* %e)
  store i32 %call2, i32* %index, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.sVString*, %struct.sVString** %name, align 8
  call void @vStringDelete(%struct.sVString* %6)
  %7 = load i32, i32* %index, align 4
  ret i32 %7
}

declare %struct.sVString* @vStringNew() #1

declare zeroext i1 @readM4MacroArgument(%struct.sVString*) #1

declare void @initTagEntry(%struct.sTagEntryInfo*, i8*, i32) #1

declare i32 @makeTagEntry(%struct.sTagEntryInfo*) #1

declare void @vStringDelete(%struct.sVString*) #1

declare void @scheduleRunningBaseparser(i32) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 10.0.0 (https://github.com/holzschu/clang.git 0cfc630fbdb62e96720b611a57123ef3eb13e297) (https://github.com/holzschu/llvm.git 0d8a71e39b28502c24718f7e74b5acbcfe36dfe0)"}
