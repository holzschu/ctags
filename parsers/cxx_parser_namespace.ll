; ModuleID = 'cxx/cxx_parser_namespace.c'
source_filename = "cxx/cxx_parser_namespace.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-ios11.0.0"

%struct._CXXParserState = type { i32, i32, i32, i32, i32, %struct.sKindDefinition*, i32, %struct.sFieldDefinition*, i32, %struct._CXXTokenChain*, %struct._CXXTokenChain*, %struct._CXXToken*, i32, i32, i8 }
%struct.sKindDefinition = type { i8, i8, i8*, i8*, i8, i32, %struct.sRoleDesc*, %struct.sScopeSeparator*, i32, i32, i32, %struct.sKindDefinition*, %struct.sKindDefinition* }
%struct.sRoleDesc = type { i8, i8*, i8* }
%struct.sScopeSeparator = type { i32, i8* }
%struct.sFieldDefinition = type { i8, i8*, i8*, i8, [5 x i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)*], i1 (%struct.sTagEntryInfo*)*, i32, i32 }
%struct.sTagEntryInfo = type { i8, i64, i8*, i32, %struct._MIOPos, i32, i8*, i8*, i32, [2 x i8], i8*, %struct.anon, i32, [5 x %struct.sTagField], %struct.sPtrArray*, i32, i8*, i64 }
%struct._MIOPos = type { i32, %union.anon }
%union.anon = type { i64 }
%struct.anon = type { i8*, i8*, i8*, i8*, i32, i32, i8*, i32, i8*, [2 x i8*], i32, i64 }
%struct.sTagField = type { i32, i8*, i8 }
%struct.sPtrArray = type opaque
%struct.sVString = type { i64, i64, i8* }
%struct._CXXTokenChain = type { %struct._CXXToken*, %struct._CXXToken*, i32 }
%struct._CXXToken = type { i32, %struct.sVString*, i32, %struct._CXXTokenChain*, i8, i32, %struct._MIOPos, %struct._CXXToken*, %struct._CXXToken*, i8, i8 }

@g_cxx = external global %struct._CXXParserState, align 8

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @cxxParserParseNamespace() #0 {
entry:
  %retval = alloca i1, align 1
  %uProperties = alloca i32, align 4
  %iScopeCount = alloca i32, align 4
  %i = alloca i32, align 4
  %aCorkQueueIndices = alloca [8 x i32], align 4
  %pFirstIdentifier = alloca %struct._CXXToken*, align 8
  %pLastIdentifier = alloca %struct._CXXToken*, align 8
  %pAlias = alloca %struct._CXXToken*, align 8
  %tag = alloca %struct.sTagEntryInfo*, align 8
  %pAliasedName = alloca %struct._CXXToken*, align 8
  %t = alloca %struct._CXXToken*, align 8
  %tag104 = alloca %struct.sTagEntryInfo*, align 8
  %pszProperties = alloca %struct.sVString*, align 8
  %iCorkQueueIndex = alloca i32, align 4
  %pNext = alloca %struct._CXXToken*, align 8
  %t142 = alloca %struct._CXXToken*, align 8
  %tag144 = alloca %struct.sTagEntryInfo*, align 8
  %pszProperties157 = alloca %struct.sVString*, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  store i32 0, i32* %uProperties, align 4
  %call = call zeroext i1 @cxxTagFieldEnabled(i32 0)
  br i1 %call, label %if.then, label %if.end4

if.then:                                          ; preds = %do.end2
  %0 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 13), align 4
  %and = and i32 %0, 2
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  %1 = load i32, i32* %uProperties, align 4
  %or = or i32 %1, 4
  store i32 %or, i32* %uProperties, align 4
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end4

if.end4:                                          ; preds = %if.end, %do.end2
  call void @cxxParserNewStatement()
  store i32 0, i32* %iScopeCount, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end4
  %2 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %2, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %aCorkQueueIndices, i64 0, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call5 = call zeroext i1 @cxxParserParseNextToken()
  br i1 %call5, label %if.end9, label %if.then6

if.then6:                                         ; preds = %for.end
  br label %do.body7

do.body7:                                         ; preds = %if.then6
  br label %do.end8

do.end8:                                          ; preds = %do.body7
  store i1 true, i1* %retval, align 1
  br label %return

if.end9:                                          ; preds = %for.end
  %5 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %eType = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %5, i32 0, i32 0
  %6 = load i32, i32* %eType, align 8
  %cmp10 = icmp eq i32 %6, 2
  br i1 %cmp10, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end9
  br label %do.body12

do.body12:                                        ; preds = %if.then11
  br label %do.end13

do.end13:                                         ; preds = %do.body12
  %7 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  store %struct._CXXToken* %7, %struct._CXXToken** %pFirstIdentifier, align 8
  %8 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  store %struct._CXXToken* %8, %struct._CXXToken** %pLastIdentifier, align 8
  %call14 = call zeroext i1 @cxxParserParseNextToken()
  br i1 %call14, label %if.end18, label %if.then15

if.then15:                                        ; preds = %do.end13
  br label %do.body16

do.body16:                                        ; preds = %if.then15
  br label %do.end17

do.end17:                                         ; preds = %do.body16
  store i1 true, i1* %retval, align 1
  br label %return

if.end18:                                         ; preds = %do.end13
  %9 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %eType19 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %9, i32 0, i32 0
  %10 = load i32, i32* %eType19, align 8
  switch i32 %10, label %sw.default [
    i32 256, label %sw.bb
    i32 32, label %sw.bb51
    i32 524288, label %sw.bb78
    i32 64, label %sw.bb81
    i32 2, label %sw.bb84
  ]

sw.bb:                                            ; preds = %if.end18
  br label %do.body20

do.body20:                                        ; preds = %sw.bb
  br label %do.end21

do.end21:                                         ; preds = %do.body20
  %call22 = call zeroext i1 @cxxParserParseNextToken()
  br i1 %call22, label %if.end26, label %if.then23

if.then23:                                        ; preds = %do.end21
  br label %do.body24

do.body24:                                        ; preds = %if.then23
  br label %do.end25

do.end25:                                         ; preds = %do.body24
  store i1 true, i1* %retval, align 1
  br label %return

if.end26:                                         ; preds = %do.end21
  %11 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %eType27 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %11, i32 0, i32 0
  %12 = load i32, i32* %eType27, align 8
  %and28 = and i32 %12, 34
  %tobool29 = icmp ne i32 %and28, 0
  br i1 %tobool29, label %if.end34, label %if.then30

if.then30:                                        ; preds = %if.end26
  br label %do.body31

do.body31:                                        ; preds = %if.then30
  br label %do.end32

do.end32:                                         ; preds = %do.body31
  %call33 = call zeroext i1 @cxxParserSkipToSemicolonOrEOF()
  store i1 %call33, i1* %retval, align 1
  br label %return

if.end34:                                         ; preds = %if.end26
  %13 = load %struct._CXXToken*, %struct._CXXToken** %pFirstIdentifier, align 8
  store %struct._CXXToken* %13, %struct._CXXToken** %pAlias, align 8
  %14 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  store %struct._CXXToken* %14, %struct._CXXToken** %pFirstIdentifier, align 8
  %call35 = call zeroext i1 @cxxParserParseToEndOfQualifedName()
  br i1 %call35, label %if.end40, label %if.then36

if.then36:                                        ; preds = %if.end34
  br label %do.body37

do.body37:                                        ; preds = %if.then36
  br label %do.end38

do.end38:                                         ; preds = %do.body37
  %call39 = call zeroext i1 @cxxParserSkipToSemicolonOrEOF()
  store i1 %call39, i1* %retval, align 1
  br label %return

if.end40:                                         ; preds = %if.end34
  %15 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %pPrev = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %15, i32 0, i32 8
  %16 = load %struct._CXXToken*, %struct._CXXToken** %pPrev, align 8
  store %struct._CXXToken* %16, %struct._CXXToken** %pLastIdentifier, align 8
  %17 = load %struct._CXXToken*, %struct._CXXToken** %pAlias, align 8
  %call41 = call %struct.sTagEntryInfo* @cxxTagBegin(i32 17, %struct._CXXToken* %17)
  store %struct.sTagEntryInfo* %call41, %struct.sTagEntryInfo** %tag, align 8
  %18 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag, align 8
  %tobool42 = icmp ne %struct.sTagEntryInfo* %18, null
  br i1 %tobool42, label %if.then43, label %if.end47

if.then43:                                        ; preds = %if.end40
  %call44 = call zeroext i1 @isInputHeaderFile()
  %lnot = xor i1 %call44, true
  %lnot.ext = zext i1 %lnot to i32
  %19 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag, align 8
  %20 = bitcast %struct.sTagEntryInfo* %19 to i8*
  %21 = trunc i32 %lnot.ext to i8
  %bf.load = load i8, i8* %20, align 8
  %bf.value = and i8 %21, 1
  %bf.shl = shl i8 %bf.value, 1
  %bf.clear = and i8 %bf.load, -3
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, i8* %20, align 8
  %bf.result.cast = zext i8 %bf.value to i32
  %22 = load %struct._CXXToken*, %struct._CXXToken** %pFirstIdentifier, align 8
  %23 = load %struct._CXXToken*, %struct._CXXToken** %pLastIdentifier, align 8
  %call45 = call %struct._CXXToken* @cxxTokenChainExtractRange(%struct._CXXToken* %22, %struct._CXXToken* %23, i32 1)
  store %struct._CXXToken* %call45, %struct._CXXToken** %pAliasedName, align 8
  %24 = load %struct._CXXToken*, %struct._CXXToken** %pAliasedName, align 8
  %pszWord = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %24, i32 0, i32 1
  %25 = load %struct.sVString*, %struct.sVString** %pszWord, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %25, i32 0, i32 2
  %26 = load i8*, i8** %buffer, align 8
  call void @cxxTagSetField(i32 3, i8* %26)
  %call46 = call i32 @cxxTagCommit()
  %27 = load %struct._CXXToken*, %struct._CXXToken** %pAliasedName, align 8
  call void @cxxTokenDestroy(%struct._CXXToken* %27)
  br label %if.end47

if.end47:                                         ; preds = %if.then43, %if.end40
  br label %do.body48

do.body48:                                        ; preds = %if.end47
  br label %do.end49

do.end49:                                         ; preds = %do.body48
  %call50 = call zeroext i1 @cxxParserSkipToSemicolonOrEOF()
  store i1 %call50, i1* %retval, align 1
  br label %return

sw.bb51:                                          ; preds = %if.end18
  br label %do.body52

do.body52:                                        ; preds = %sw.bb51
  br label %do.end53

do.end53:                                         ; preds = %do.body52
  %call54 = call zeroext i1 @cxxParserParseToEndOfQualifedName()
  br i1 %call54, label %if.end59, label %if.then55

if.then55:                                        ; preds = %do.end53
  br label %do.body56

do.body56:                                        ; preds = %if.then55
  br label %do.end57

do.end57:                                         ; preds = %do.body56
  %call58 = call zeroext i1 @cxxParserSkipToSemicolonOrEOF()
  store i1 %call58, i1* %retval, align 1
  br label %return

if.end59:                                         ; preds = %do.end53
  %28 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %pPrev60 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %28, i32 0, i32 8
  %29 = load %struct._CXXToken*, %struct._CXXToken** %pPrev60, align 8
  store %struct._CXXToken* %29, %struct._CXXToken** %pLastIdentifier, align 8
  br label %do.body61

do.body61:                                        ; preds = %if.end59
  br label %do.end62

do.end62:                                         ; preds = %do.body61
  %30 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %eType63 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %30, i32 0, i32 0
  %31 = load i32, i32* %eType63, align 8
  %cmp64 = icmp eq i32 %31, 524288
  br i1 %cmp64, label %if.end77, label %if.then65

if.then65:                                        ; preds = %do.end62
  %call66 = call zeroext i1 @cxxParserParseUpToOneOf(i32 524353, i1 zeroext false)
  br i1 %call66, label %if.end70, label %if.then67

if.then67:                                        ; preds = %if.then65
  br label %do.body68

do.body68:                                        ; preds = %if.then67
  br label %do.end69

do.end69:                                         ; preds = %do.body68
  store i1 false, i1* %retval, align 1
  br label %return

if.end70:                                         ; preds = %if.then65
  %32 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %eType71 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %32, i32 0, i32 0
  %33 = load i32, i32* %eType71, align 8
  %cmp72 = icmp eq i32 %33, 524288
  br i1 %cmp72, label %if.end76, label %if.then73

if.then73:                                        ; preds = %if.end70
  br label %do.body74

do.body74:                                        ; preds = %if.then73
  br label %do.end75

do.end75:                                         ; preds = %do.body74
  store i1 true, i1* %retval, align 1
  br label %return

if.end76:                                         ; preds = %if.end70
  br label %if.end77

if.end77:                                         ; preds = %if.end76, %do.end62
  br label %sw.epilog

sw.bb78:                                          ; preds = %if.end18
  br label %do.body79

do.body79:                                        ; preds = %sw.bb78
  br label %do.end80

do.end80:                                         ; preds = %do.body79
  br label %sw.epilog

sw.bb81:                                          ; preds = %if.end18
  br label %do.body82

do.body82:                                        ; preds = %sw.bb81
  br label %do.end83

do.end83:                                         ; preds = %do.body82
  store i1 true, i1* %retval, align 1
  br label %return

sw.bb84:                                          ; preds = %if.end18
  %call85 = call zeroext i1 @cxxParserParseUpToOneOf(i32 524353, i1 zeroext false)
  br i1 %call85, label %if.end89, label %if.then86

if.then86:                                        ; preds = %sw.bb84
  br label %do.body87

do.body87:                                        ; preds = %if.then86
  br label %do.end88

do.end88:                                         ; preds = %do.body87
  store i1 false, i1* %retval, align 1
  br label %return

if.end89:                                         ; preds = %sw.bb84
  %34 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %eType90 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %34, i32 0, i32 0
  %35 = load i32, i32* %eType90, align 8
  %cmp91 = icmp eq i32 %35, 524288
  br i1 %cmp91, label %if.end95, label %if.then92

if.then92:                                        ; preds = %if.end89
  br label %do.body93

do.body93:                                        ; preds = %if.then92
  br label %do.end94

do.end94:                                         ; preds = %do.body93
  store i1 true, i1* %retval, align 1
  br label %return

if.end95:                                         ; preds = %if.end89
  br label %sw.epilog

sw.default:                                       ; preds = %if.end18
  br label %do.body96

do.body96:                                        ; preds = %sw.default
  br label %do.end97

do.end97:                                         ; preds = %do.body96
  %call98 = call zeroext i1 @cxxParserSkipToSemicolonOrEOF()
  store i1 %call98, i1* %retval, align 1
  br label %return

sw.epilog:                                        ; preds = %if.end95, %do.end80, %if.end77
  br label %do.body99

do.body99:                                        ; preds = %sw.epilog
  br label %do.end100

do.end100:                                        ; preds = %do.body99
  br label %do.body101

do.body101:                                       ; preds = %do.end100
  br label %do.end102

do.end102:                                        ; preds = %do.body101
  %36 = load %struct._CXXToken*, %struct._CXXToken** %pFirstIdentifier, align 8
  store %struct._CXXToken* %36, %struct._CXXToken** %t, align 8
  br label %while.cond

while.cond:                                       ; preds = %cond.end134, %do.end102
  %37 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %tobool103 = icmp ne %struct._CXXToken* %37, null
  br i1 %tobool103, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %38 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %call105 = call %struct.sTagEntryInfo* @cxxTagBegin(i32 16, %struct._CXXToken* %38)
  store %struct.sTagEntryInfo* %call105, %struct.sTagEntryInfo** %tag104, align 8
  %39 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag104, align 8
  %tobool106 = icmp ne %struct.sTagEntryInfo* %39, null
  br i1 %tobool106, label %if.then107, label %if.end128

if.then107:                                       ; preds = %while.body
  %call108 = call zeroext i1 @isInputHeaderFile()
  %lnot109 = xor i1 %call108, true
  %lnot.ext110 = zext i1 %lnot109 to i32
  %40 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag104, align 8
  %41 = bitcast %struct.sTagEntryInfo* %40 to i8*
  %42 = trunc i32 %lnot.ext110 to i8
  %bf.load111 = load i8, i8* %41, align 8
  %bf.value112 = and i8 %42, 1
  %bf.shl113 = shl i8 %bf.value112, 1
  %bf.clear114 = and i8 %bf.load111, -3
  %bf.set115 = or i8 %bf.clear114, %bf.shl113
  store i8 %bf.set115, i8* %41, align 8
  %bf.result.cast116 = zext i8 %bf.value112 to i32
  %43 = load i32, i32* %uProperties, align 4
  %tobool117 = icmp ne i32 %43, 0
  br i1 %tobool117, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then107
  %44 = load i32, i32* %uProperties, align 4
  %call118 = call %struct.sVString* @cxxTagSetProperties(i32 %44)
  br label %cond.end

cond.false:                                       ; preds = %if.then107
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.sVString* [ %call118, %cond.true ], [ null, %cond.false ]
  store %struct.sVString* %cond, %struct.sVString** %pszProperties, align 8
  %call119 = call i32 @cxxTagCommit()
  store i32 %call119, i32* %iCorkQueueIndex, align 4
  %45 = load i32, i32* %iScopeCount, align 4
  %cmp120 = icmp slt i32 %45, 8
  br i1 %cmp120, label %if.then121, label %if.end124

if.then121:                                       ; preds = %cond.end
  %46 = load i32, i32* %iCorkQueueIndex, align 4
  %47 = load i32, i32* %iScopeCount, align 4
  %idxprom122 = sext i32 %47 to i64
  %arrayidx123 = getelementptr inbounds [8 x i32], [8 x i32]* %aCorkQueueIndices, i64 0, i64 %idxprom122
  store i32 %46, i32* %arrayidx123, align 4
  br label %if.end124

if.end124:                                        ; preds = %if.then121, %cond.end
  %48 = load %struct.sVString*, %struct.sVString** %pszProperties, align 8
  %tobool125 = icmp ne %struct.sVString* %48, null
  br i1 %tobool125, label %if.then126, label %if.end127

if.then126:                                       ; preds = %if.end124
  %49 = load %struct.sVString*, %struct.sVString** %pszProperties, align 8
  call void @vStringDelete(%struct.sVString* %49)
  br label %if.end127

if.end127:                                        ; preds = %if.then126, %if.end124
  br label %if.end128

if.end128:                                        ; preds = %if.end127, %while.body
  %50 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %51 = load %struct._CXXToken*, %struct._CXXToken** %pLastIdentifier, align 8
  %cmp129 = icmp eq %struct._CXXToken* %50, %51
  br i1 %cmp129, label %cond.true130, label %cond.false131

cond.true130:                                     ; preds = %if.end128
  br label %cond.end134

cond.false131:                                    ; preds = %if.end128
  %52 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pNext132 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %52, i32 0, i32 7
  %53 = load %struct._CXXToken*, %struct._CXXToken** %pNext132, align 8
  %pNext133 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %53, i32 0, i32 7
  %54 = load %struct._CXXToken*, %struct._CXXToken** %pNext133, align 8
  br label %cond.end134

cond.end134:                                      ; preds = %cond.false131, %cond.true130
  %cond135 = phi %struct._CXXToken* [ null, %cond.true130 ], [ %54, %cond.false131 ]
  store %struct._CXXToken* %cond135, %struct._CXXToken** %pNext, align 8
  %55 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %56 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  call void @cxxTokenChainTake(%struct._CXXTokenChain* %55, %struct._CXXToken* %56)
  %57 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  call void @cxxScopePush(%struct._CXXToken* %57, i32 1, i32 0)
  %58 = load i32, i32* %iScopeCount, align 4
  %inc136 = add nsw i32 %58, 1
  store i32 %inc136, i32* %iScopeCount, align 4
  %59 = load %struct._CXXToken*, %struct._CXXToken** %pNext, align 8
  store %struct._CXXToken* %59, %struct._CXXToken** %t, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end176

if.else:                                          ; preds = %if.end9
  %60 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %eType137 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %60, i32 0, i32 0
  %61 = load i32, i32* %eType137, align 8
  %cmp138 = icmp eq i32 %61, 524288
  br i1 %cmp138, label %if.then139, label %if.else171

if.then139:                                       ; preds = %if.else
  br label %do.body140

do.body140:                                       ; preds = %if.then139
  br label %do.end141

do.end141:                                        ; preds = %do.body140
  %call143 = call %struct._CXXToken* @cxxTokenCreateAnonymousIdentifier(i32 16)
  store %struct._CXXToken* %call143, %struct._CXXToken** %t142, align 8
  %62 = load %struct._CXXToken*, %struct._CXXToken** %t142, align 8
  %call145 = call %struct.sTagEntryInfo* @cxxTagBegin(i32 16, %struct._CXXToken* %62)
  store %struct.sTagEntryInfo* %call145, %struct.sTagEntryInfo** %tag144, align 8
  %63 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag144, align 8
  %tobool146 = icmp ne %struct.sTagEntryInfo* %63, null
  br i1 %tobool146, label %if.then147, label %if.end169

if.then147:                                       ; preds = %do.end141
  %call148 = call zeroext i1 @isInputHeaderFile()
  %lnot149 = xor i1 %call148, true
  %lnot.ext150 = zext i1 %lnot149 to i32
  %64 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag144, align 8
  %65 = bitcast %struct.sTagEntryInfo* %64 to i8*
  %66 = trunc i32 %lnot.ext150 to i8
  %bf.load151 = load i8, i8* %65, align 8
  %bf.value152 = and i8 %66, 1
  %bf.shl153 = shl i8 %bf.value152, 1
  %bf.clear154 = and i8 %bf.load151, -3
  %bf.set155 = or i8 %bf.clear154, %bf.shl153
  store i8 %bf.set155, i8* %65, align 8
  %bf.result.cast156 = zext i8 %bf.value152 to i32
  %67 = load i32, i32* %uProperties, align 4
  %tobool158 = icmp ne i32 %67, 0
  br i1 %tobool158, label %cond.true159, label %cond.false161

cond.true159:                                     ; preds = %if.then147
  %68 = load i32, i32* %uProperties, align 4
  %call160 = call %struct.sVString* @cxxTagSetProperties(i32 %68)
  br label %cond.end162

cond.false161:                                    ; preds = %if.then147
  br label %cond.end162

cond.end162:                                      ; preds = %cond.false161, %cond.true159
  %cond163 = phi %struct.sVString* [ %call160, %cond.true159 ], [ null, %cond.false161 ]
  store %struct.sVString* %cond163, %struct.sVString** %pszProperties157, align 8
  %call164 = call i32 @cxxTagCommit()
  %arrayidx165 = getelementptr inbounds [8 x i32], [8 x i32]* %aCorkQueueIndices, i64 0, i64 0
  store i32 %call164, i32* %arrayidx165, align 4
  %69 = load %struct.sVString*, %struct.sVString** %pszProperties157, align 8
  %tobool166 = icmp ne %struct.sVString* %69, null
  br i1 %tobool166, label %if.then167, label %if.end168

if.then167:                                       ; preds = %cond.end162
  %70 = load %struct.sVString*, %struct.sVString** %pszProperties157, align 8
  call void @vStringDelete(%struct.sVString* %70)
  br label %if.end168

if.end168:                                        ; preds = %if.then167, %cond.end162
  br label %if.end169

if.end169:                                        ; preds = %if.end168, %do.end141
  %71 = load %struct._CXXToken*, %struct._CXXToken** %t142, align 8
  call void @cxxScopePush(%struct._CXXToken* %71, i32 1, i32 0)
  %72 = load i32, i32* %iScopeCount, align 4
  %inc170 = add nsw i32 %72, 1
  store i32 %inc170, i32* %iScopeCount, align 4
  br label %if.end175

if.else171:                                       ; preds = %if.else
  br label %do.body172

do.body172:                                       ; preds = %if.else171
  br label %do.end173

do.end173:                                        ; preds = %do.body172
  %call174 = call zeroext i1 @cxxParserSkipToSemicolonOrEOF()
  store i1 %call174, i1* %retval, align 1
  br label %return

if.end175:                                        ; preds = %if.end169
  br label %if.end176

if.end176:                                        ; preds = %if.end175, %while.end
  br label %do.body177

do.body177:                                       ; preds = %if.end176
  br label %do.end178

do.end178:                                        ; preds = %do.body177
  %73 = load i8, i8* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 14), align 8
  %tobool179 = trunc i8 %73 to i1
  br i1 %tobool179, label %if.end183, label %if.then180

if.then180:                                       ; preds = %do.end178
  br label %do.body181

do.body181:                                       ; preds = %if.then180
  br label %do.end182

do.end182:                                        ; preds = %do.body181
  store i8 1, i8* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 14), align 8
  br label %if.end183

if.end183:                                        ; preds = %do.end182, %do.end178
  %call184 = call zeroext i1 @cxxParserParseBlock(i1 zeroext true)
  br i1 %call184, label %if.end188, label %if.then185

if.then185:                                       ; preds = %if.end183
  br label %do.body186

do.body186:                                       ; preds = %if.then185
  br label %do.end187

do.end187:                                        ; preds = %do.body186
  store i1 false, i1* %retval, align 1
  br label %return

if.end188:                                        ; preds = %if.end183
  br label %while.cond189

while.cond189:                                    ; preds = %if.end198, %if.end188
  %74 = load i32, i32* %iScopeCount, align 4
  %cmp190 = icmp sgt i32 %74, 0
  br i1 %cmp190, label %while.body191, label %while.end199

while.body191:                                    ; preds = %while.cond189
  call void @cxxScopePop()
  %75 = load i32, i32* %iScopeCount, align 4
  %dec = add nsw i32 %75, -1
  store i32 %dec, i32* %iScopeCount, align 4
  %76 = load i32, i32* %iScopeCount, align 4
  %idxprom192 = sext i32 %76 to i64
  %arrayidx193 = getelementptr inbounds [8 x i32], [8 x i32]* %aCorkQueueIndices, i64 0, i64 %idxprom192
  %77 = load i32, i32* %arrayidx193, align 4
  %cmp194 = icmp sgt i32 %77, 0
  br i1 %cmp194, label %if.then195, label %if.end198

if.then195:                                       ; preds = %while.body191
  %78 = load i32, i32* %iScopeCount, align 4
  %idxprom196 = sext i32 %78 to i64
  %arrayidx197 = getelementptr inbounds [8 x i32], [8 x i32]* %aCorkQueueIndices, i64 0, i64 %idxprom196
  %79 = load i32, i32* %arrayidx197, align 4
  call void @cxxParserMarkEndLineForTagInCorkQueue(i32 %79)
  br label %if.end198

if.end198:                                        ; preds = %if.then195, %while.body191
  br label %while.cond189

while.end199:                                     ; preds = %while.cond189
  br label %do.body200

do.body200:                                       ; preds = %while.end199
  br label %do.end201

do.end201:                                        ; preds = %do.body200
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %do.end201, %do.end187, %do.end173, %do.end97, %do.end94, %do.end88, %do.end83, %do.end75, %do.end69, %do.end57, %do.end49, %do.end38, %do.end32, %do.end25, %do.end17, %do.end8
  %80 = load i1, i1* %retval, align 1
  ret i1 %80
}

declare zeroext i1 @cxxTagFieldEnabled(i32) #1

declare void @cxxParserNewStatement() #1

declare zeroext i1 @cxxParserParseNextToken() #1

declare zeroext i1 @cxxParserSkipToSemicolonOrEOF() #1

declare zeroext i1 @cxxParserParseToEndOfQualifedName() #1

declare %struct.sTagEntryInfo* @cxxTagBegin(i32, %struct._CXXToken*) #1

declare zeroext i1 @isInputHeaderFile() #1

declare %struct._CXXToken* @cxxTokenChainExtractRange(%struct._CXXToken*, %struct._CXXToken*, i32) #1

declare void @cxxTagSetField(i32, i8*) #1

declare i32 @cxxTagCommit() #1

declare void @cxxTokenDestroy(%struct._CXXToken*) #1

declare zeroext i1 @cxxParserParseUpToOneOf(i32, i1 zeroext) #1

declare %struct.sVString* @cxxTagSetProperties(i32) #1

declare void @vStringDelete(%struct.sVString*) #1

declare void @cxxTokenChainTake(%struct._CXXTokenChain*, %struct._CXXToken*) #1

declare void @cxxScopePush(%struct._CXXToken*, i32, i32) #1

declare %struct._CXXToken* @cxxTokenCreateAnonymousIdentifier(i32) #1

declare zeroext i1 @cxxParserParseBlock(i1 zeroext) #1

declare void @cxxScopePop() #1

declare void @cxxParserMarkEndLineForTagInCorkQueue(i32) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 10.0.0 (https://github.com/holzschu/clang.git 0cfc630fbdb62e96720b611a57123ef3eb13e297) (https://github.com/holzschu/llvm.git 0d8a71e39b28502c24718f7e74b5acbcfe36dfe0)"}
