; ModuleID = 'cxx/cxx_parser_block.c'
source_filename = "cxx/cxx_parser_block.c"
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
@.str = private unnamed_addr constant [9 x i8] c"override\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @cxxParserParseBlockHandleOpeningBracket() #0 {
entry:
  %retval = alloca i1, align 1
  %eScopeType = alloca i32, align 4
  %bIsCPP = alloca i8, align 1
  %pAux = alloca %struct._CXXToken*, align 8
  %bRet = alloca i8, align 1
  %iScopes = alloca i32, align 4
  %iCorkQueueIndex = alloca i32, align 4
  %pParenthesis = alloca %struct._CXXToken*, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  %call = call i32 @cxxScopeGetType()
  store i32 %call, i32* %eScopeType, align 4
  %0 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 0), align 8
  %cmp = icmp eq i32 %0, 2
  %frombool = zext i1 %cmp to i8
  store i8 %frombool, i8* %bIsCPP, align 1
  %1 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %pPrev = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %1, i32 0, i32 8
  %2 = load %struct._CXXToken*, %struct._CXXToken** %pPrev, align 8
  %tobool = icmp ne %struct._CXXToken* %2, null
  br i1 %tobool, label %land.lhs.true, label %lor.lhs.false8

land.lhs.true:                                    ; preds = %do.end2
  %3 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %pPrev3 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %3, i32 0, i32 8
  %4 = load %struct._CXXToken*, %struct._CXXToken** %pPrev3, align 8
  %eType = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %4, i32 0, i32 0
  %5 = load i32, i32* %eType, align 8
  %cmp4 = icmp eq i32 %5, 256
  br i1 %cmp4, label %land.lhs.true5, label %lor.lhs.false8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %6 = load i32, i32* %eScopeType, align 4
  %cmp6 = icmp eq i32 %6, 0
  br i1 %cmp6, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true5
  %7 = load i32, i32* %eScopeType, align 4
  %cmp7 = icmp eq i32 %7, 1
  br i1 %cmp7, label %if.then, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %lor.lhs.false, %land.lhs.true, %do.end2
  %8 = load i8, i8* %bIsCPP, align 1
  %tobool9 = trunc i8 %8 to i1
  br i1 %tobool9, label %land.lhs.true10, label %lor.lhs.false52

land.lhs.true10:                                  ; preds = %lor.lhs.false8
  %9 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %pPrev11 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %9, i32 0, i32 8
  %10 = load %struct._CXXToken*, %struct._CXXToken** %pPrev11, align 8
  %tobool12 = icmp ne %struct._CXXToken* %10, null
  br i1 %tobool12, label %land.lhs.true13, label %lor.lhs.false52

land.lhs.true13:                                  ; preds = %land.lhs.true10
  %11 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %pPrev14 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %11, i32 0, i32 8
  %12 = load %struct._CXXToken*, %struct._CXXToken** %pPrev14, align 8
  %eType15 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %12, i32 0, i32 0
  %13 = load i32, i32* %eType15, align 8
  %cmp16 = icmp eq i32 %13, 2
  br i1 %cmp16, label %land.lhs.true17, label %lor.lhs.false41

land.lhs.true17:                                  ; preds = %land.lhs.true13
  %14 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %pPrev18 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %14, i32 0, i32 8
  %15 = load %struct._CXXToken*, %struct._CXXToken** %pPrev18, align 8
  %pPrev19 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %15, i32 0, i32 8
  %16 = load %struct._CXXToken*, %struct._CXXToken** %pPrev19, align 8
  %tobool20 = icmp ne %struct._CXXToken* %16, null
  br i1 %tobool20, label %lor.lhs.false21, label %land.lhs.true37

lor.lhs.false21:                                  ; preds = %land.lhs.true17
  %17 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %pPrev22 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %17, i32 0, i32 8
  %18 = load %struct._CXXToken*, %struct._CXXToken** %pPrev22, align 8
  %pPrev23 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %18, i32 0, i32 8
  %19 = load %struct._CXXToken*, %struct._CXXToken** %pPrev23, align 8
  %eType24 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %19, i32 0, i32 0
  %20 = load i32, i32* %eType24, align 8
  %and = and i32 %20, 144
  %tobool25 = icmp ne i32 %and, 0
  br i1 %tobool25, label %land.lhs.true37, label %lor.lhs.false26

lor.lhs.false26:                                  ; preds = %lor.lhs.false21
  %21 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %pPrev27 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %21, i32 0, i32 8
  %22 = load %struct._CXXToken*, %struct._CXXToken** %pPrev27, align 8
  %pPrev28 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %22, i32 0, i32 8
  %23 = load %struct._CXXToken*, %struct._CXXToken** %pPrev28, align 8
  %eType29 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %23, i32 0, i32 0
  %24 = load i32, i32* %eType29, align 8
  %and30 = and i32 %24, 67158022
  %tobool31 = icmp ne i32 %and30, 0
  br i1 %tobool31, label %land.lhs.true32, label %lor.lhs.false41

land.lhs.true32:                                  ; preds = %lor.lhs.false26
  %25 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %pPrev33 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %25, i32 0, i32 8
  %26 = load %struct._CXXToken*, %struct._CXXToken** %pPrev33, align 8
  %pPrev34 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %26, i32 0, i32 8
  %27 = load %struct._CXXToken*, %struct._CXXToken** %pPrev34, align 8
  %call35 = call %struct._CXXToken* @cxxTokenChainPreviousTokenOfType(%struct._CXXToken* %27, i32 268435456)
  store %struct._CXXToken* %call35, %struct._CXXToken** %pAux, align 8
  %tobool36 = icmp ne %struct._CXXToken* %call35, null
  br i1 %tobool36, label %lor.lhs.false41, label %land.lhs.true37

land.lhs.true37:                                  ; preds = %land.lhs.true32, %lor.lhs.false21, %land.lhs.true17
  %28 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %pPrev38 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %28, i32 0, i32 8
  %29 = load %struct._CXXToken*, %struct._CXXToken** %pPrev38, align 8
  %pszWord = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %29, i32 0, i32 1
  %30 = load %struct.sVString*, %struct.sVString** %pszWord, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %30, i32 0, i32 2
  %31 = load i8*, i8** %buffer, align 8
  %call39 = call i32 @strcmp(i8* %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %cmp40 = icmp ne i32 %call39, 0
  br i1 %cmp40, label %if.then, label %lor.lhs.false41

lor.lhs.false41:                                  ; preds = %land.lhs.true37, %land.lhs.true32, %lor.lhs.false26, %land.lhs.true13
  %32 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %pPrev42 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %32, i32 0, i32 8
  %33 = load %struct._CXXToken*, %struct._CXXToken** %pPrev42, align 8
  %eType43 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %33, i32 0, i32 0
  %34 = load i32, i32* %eType43, align 8
  %cmp44 = icmp eq i32 %34, 536870912
  br i1 %cmp44, label %land.lhs.true45, label %lor.lhs.false52

land.lhs.true45:                                  ; preds = %lor.lhs.false41
  %35 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %pPrev46 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %35, i32 0, i32 8
  %36 = load %struct._CXXToken*, %struct._CXXToken** %pPrev46, align 8
  %call47 = call %struct._CXXToken* @cxxTokenChainPreviousTokenNotOfType(%struct._CXXToken* %36, i32 536870912)
  store %struct._CXXToken* %call47, %struct._CXXToken** %pAux, align 8
  %tobool48 = icmp ne %struct._CXXToken* %call47, null
  br i1 %tobool48, label %land.lhs.true49, label %lor.lhs.false52

land.lhs.true49:                                  ; preds = %land.lhs.true45
  %37 = load %struct._CXXToken*, %struct._CXXToken** %pAux, align 8
  %eType50 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %37, i32 0, i32 0
  %38 = load i32, i32* %eType50, align 8
  %cmp51 = icmp eq i32 %38, 2
  br i1 %cmp51, label %if.then, label %lor.lhs.false52

lor.lhs.false52:                                  ; preds = %land.lhs.true49, %land.lhs.true45, %lor.lhs.false41, %land.lhs.true10, %lor.lhs.false8
  %39 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %pPrev53 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %39, i32 0, i32 8
  %40 = load %struct._CXXToken*, %struct._CXXToken** %pPrev53, align 8
  %tobool54 = icmp ne %struct._CXXToken* %40, null
  br i1 %tobool54, label %if.end, label %land.lhs.true55

land.lhs.true55:                                  ; preds = %lor.lhs.false52
  %41 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 13), align 4
  %and56 = and i32 %41, 128
  %tobool57 = icmp ne i32 %and56, 0
  br i1 %tobool57, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true55, %land.lhs.true49, %land.lhs.true37, %lor.lhs.false, %land.lhs.true5
  %call58 = call zeroext i1 @cxxParserParseAndCondenseCurrentSubchain(i32 3670016, i1 zeroext false, i1 zeroext true)
  %frombool59 = zext i1 %call58 to i8
  store i8 %frombool59, i8* %bRet, align 1
  br label %do.body60

do.body60:                                        ; preds = %if.then
  br label %do.end61

do.end61:                                         ; preds = %do.body60
  %42 = load i8, i8* %bRet, align 1
  %tobool62 = trunc i8 %42 to i1
  store i1 %tobool62, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %land.lhs.true55, %lor.lhs.false52
  store i32 0, i32* %iCorkQueueIndex, align 4
  %43 = load i32, i32* %eScopeType, align 4
  %cmp63 = icmp ne i32 %43, 0
  br i1 %cmp63, label %if.then64, label %if.else

if.then64:                                        ; preds = %if.end
  %call65 = call i32 @cxxParserExtractFunctionSignatureBeforeOpeningBracket(i32* %iCorkQueueIndex)
  store i32 %call65, i32* %iScopes, align 4
  br label %if.end75

if.else:                                          ; preds = %if.end
  %44 = load i8, i8* %bIsCPP, align 1
  %tobool66 = trunc i8 %44 to i1
  br i1 %tobool66, label %land.lhs.true67, label %if.end74

land.lhs.true67:                                  ; preds = %if.else
  %call68 = call %struct._CXXToken* @cxxParserOpeningBracketIsLambda()
  store %struct._CXXToken* %call68, %struct._CXXToken** %pParenthesis, align 8
  %tobool69 = icmp ne %struct._CXXToken* %call68, null
  br i1 %tobool69, label %if.then70, label %if.end74

if.then70:                                        ; preds = %land.lhs.true67
  br label %do.body71

do.body71:                                        ; preds = %if.then70
  br label %do.end72

do.end72:                                         ; preds = %do.body71
  %45 = load %struct._CXXToken*, %struct._CXXToken** %pParenthesis, align 8
  %call73 = call zeroext i1 @cxxParserHandleLambda(%struct._CXXToken* %45)
  store i1 %call73, i1* %retval, align 1
  br label %return

if.end74:                                         ; preds = %land.lhs.true67, %if.else
  store i32 0, i32* %iScopes, align 4
  br label %if.end75

if.end75:                                         ; preds = %if.end74, %if.then64
  call void @cxxParserNewStatement()
  %call76 = call zeroext i1 @cxxParserParseBlock(i1 zeroext true)
  br i1 %call76, label %if.end80, label %if.then77

if.then77:                                        ; preds = %if.end75
  br label %do.body78

do.body78:                                        ; preds = %if.then77
  br label %do.end79

do.end79:                                         ; preds = %do.body78
  store i1 false, i1* %retval, align 1
  br label %return

if.end80:                                         ; preds = %if.end75
  %46 = load i32, i32* %iCorkQueueIndex, align 4
  %cmp81 = icmp sgt i32 %46, 0
  br i1 %cmp81, label %if.then82, label %if.end83

if.then82:                                        ; preds = %if.end80
  %47 = load i32, i32* %iCorkQueueIndex, align 4
  call void @cxxParserMarkEndLineForTagInCorkQueue(i32 %47)
  br label %if.end83

if.end83:                                         ; preds = %if.then82, %if.end80
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end83
  %48 = load i32, i32* %iScopes, align 4
  %cmp84 = icmp sgt i32 %48, 0
  br i1 %cmp84, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @cxxScopePop()
  %49 = load i32, i32* %iScopes, align 4
  %dec = add nsw i32 %49, -1
  store i32 %dec, i32* %iScopes, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.body85

do.body85:                                        ; preds = %while.end
  br label %do.end86

do.end86:                                         ; preds = %do.body85
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %do.end86, %do.end79, %do.end72, %do.end61
  %50 = load i1, i1* %retval, align 1
  ret i1 %50
}

declare i32 @cxxScopeGetType() #1

declare %struct._CXXToken* @cxxTokenChainPreviousTokenOfType(%struct._CXXToken*, i32) #1

declare i32 @strcmp(i8*, i8*) #1

declare %struct._CXXToken* @cxxTokenChainPreviousTokenNotOfType(%struct._CXXToken*, i32) #1

declare zeroext i1 @cxxParserParseAndCondenseCurrentSubchain(i32, i1 zeroext, i1 zeroext) #1

declare i32 @cxxParserExtractFunctionSignatureBeforeOpeningBracket(i32*) #1

declare %struct._CXXToken* @cxxParserOpeningBracketIsLambda() #1

declare zeroext i1 @cxxParserHandleLambda(%struct._CXXToken*) #1

declare void @cxxParserNewStatement() #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @cxxParserParseBlock(i1 zeroext %bExpectClosingBracket) #0 {
entry:
  %bExpectClosingBracket.addr = alloca i8, align 1
  %bRet = alloca i8, align 1
  %frombool = zext i1 %bExpectClosingBracket to i8
  store i8 %frombool, i8* %bExpectClosingBracket.addr, align 1
  call void @cxxSubparserNotifyEnterBlock()
  call void @cppPushExternalParserBlock()
  %0 = load i8, i8* %bExpectClosingBracket.addr, align 1
  %tobool = trunc i8 %0 to i1
  %call = call zeroext i1 @cxxParserParseBlockInternal(i1 zeroext %tobool)
  %frombool1 = zext i1 %call to i8
  store i8 %frombool1, i8* %bRet, align 1
  call void @cppPopExternalParserBlock()
  call void @cxxSubparserNotifyLeaveBlock()
  %1 = load i8, i8* %bRet, align 1
  %tobool2 = trunc i8 %1 to i1
  ret i1 %tobool2
}

declare void @cxxParserMarkEndLineForTagInCorkQueue(i32) #1

declare void @cxxScopePop() #1

declare void @cxxSubparserNotifyEnterBlock() #1

declare void @cppPushExternalParserBlock() #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @cxxParserParseBlockInternal(i1 zeroext %bExpectClosingBracket) #0 {
entry:
  %retval = alloca i1, align 1
  %bExpectClosingBracket.addr = alloca i8, align 1
  %eScopeType = alloca i32, align 4
  %pFirst = alloca %struct._CXXToken*, align 8
  %tag = alloca %struct.sTagEntryInfo*, align 8
  %frombool = zext i1 %bExpectClosingBracket to i8
  store i8 %frombool, i8* %bExpectClosingBracket.addr, align 1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  call void @cxxParserNewStatement()
  %0 = load i8, i8* %bExpectClosingBracket.addr, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  call void @cppBeginStatement()
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end
  br label %for.cond

for.cond:                                         ; preds = %sw.epilog257, %do.end38, %if.then16, %if.end
  %call = call zeroext i1 @cxxParserParseNextToken()
  br i1 %call, label %if.end9, label %if.then1

if.then1:                                         ; preds = %for.cond
  br label %found_eof

found_eof:                                        ; preds = %if.then131, %if.then1
  %1 = load i8, i8* %bExpectClosingBracket.addr, align 1
  %tobool2 = trunc i8 %1 to i1
  br i1 %tobool2, label %if.then3, label %if.end6

if.then3:                                         ; preds = %found_eof
  br label %do.body4

do.body4:                                         ; preds = %if.then3
  br label %do.end5

do.end5:                                          ; preds = %do.body4
  store i1 false, i1* %retval, align 1
  br label %return

if.end6:                                          ; preds = %found_eof
  br label %do.body7

do.body7:                                         ; preds = %if.end6
  br label %do.end8

do.end8:                                          ; preds = %do.body7
  store i1 true, i1* %retval, align 1
  br label %return

if.end9:                                          ; preds = %for.cond
  br label %process_token

process_token:                                    ; preds = %if.else137, %if.end9
  br label %do.body10

do.body10:                                        ; preds = %process_token
  br label %do.end11

do.end11:                                         ; preds = %do.body10
  %2 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %eType = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %2, i32 0, i32 0
  %3 = load i32, i32* %eType, align 8
  %cmp = icmp eq i32 %3, 2
  br i1 %cmp, label %land.lhs.true, label %if.end18

land.lhs.true:                                    ; preds = %do.end11
  %call12 = call i32 @cxxScopeGetType()
  %cmp13 = icmp eq i32 %call12, 2
  br i1 %cmp13, label %land.lhs.true14, label %if.end18

land.lhs.true14:                                  ; preds = %land.lhs.true
  %4 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %call15 = call zeroext i1 @cxxSubparserNewIdentifierAsHeadOfMemberNotify(%struct._CXXToken* %4)
  br i1 %call15, label %if.then16, label %if.end18

if.then16:                                        ; preds = %land.lhs.true14
  %5 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %call17 = call %struct._CXXToken* @cxxTokenChainTakeLast(%struct._CXXTokenChain* %5)
  call void @cxxTokenDestroy(%struct._CXXToken* %call17)
  br label %for.cond

if.end18:                                         ; preds = %land.lhs.true14, %land.lhs.true, %do.end11
  %6 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %eType19 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %6, i32 0, i32 0
  %7 = load i32, i32* %eType19, align 8
  switch i32 %7, label %sw.default256 [
    i32 4, label %sw.bb
    i32 64, label %sw.bb171
    i32 16, label %sw.bb191
    i32 524288, label %sw.bb211
    i32 8388608, label %sw.bb217
    i32 1048576, label %sw.bb225
    i32 2097152, label %sw.bb225
    i32 2, label %sw.bb240
  ]

sw.bb:                                            ; preds = %if.end18
  %8 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %eKeyword = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %8, i32 0, i32 2
  %9 = load i32, i32* %eKeyword, align 8
  switch i32 %9, label %sw.default [
    i32 57, label %sw.bb20
    i32 78, label %sw.bb44
    i32 84, label %sw.bb50
    i32 42, label %sw.bb51
    i32 29, label %sw.bb57
    i32 76, label %sw.bb63
    i32 87, label %sw.bb69
    i32 64, label %sw.bb75
    i32 63, label %sw.bb75
    i32 62, label %sw.bb75
    i32 89, label %sw.bb81
    i32 52, label %sw.bb87
    i32 49, label %sw.bb87
    i32 94, label %sw.bb87
    i32 77, label %sw.bb87
    i32 83, label %sw.bb93
    i32 41, label %sw.bb93
    i32 38, label %sw.bb93
    i32 69, label %sw.bb94
    i32 34, label %sw.bb105
    i32 23, label %sw.bb105
    i32 51, label %sw.bb105
    i32 81, label %sw.bb111
    i32 24, label %sw.bb121
    i32 45, label %sw.bb127
    i32 73, label %sw.bb139
    i32 53, label %sw.bb142
    i32 9, label %sw.bb142
    i32 10, label %sw.bb142
    i32 5, label %sw.bb142
    i32 6, label %sw.bb142
    i32 43, label %sw.bb145
    i32 61, label %sw.bb148
    i32 90, label %sw.bb150
    i32 56, label %sw.bb153
    i32 50, label %sw.bb156
    i32 92, label %sw.bb158
    i32 31, label %sw.bb160
  ]

sw.bb20:                                          ; preds = %sw.bb
  %call21 = call i32 @cxxScopeGetType()
  store i32 %call21, i32* %eScopeType, align 4
  %10 = load i32, i32* %eScopeType, align 4
  %cmp22 = icmp eq i32 %10, 1
  br i1 %cmp22, label %land.lhs.true24, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb20
  %11 = load i32, i32* %eScopeType, align 4
  %cmp23 = icmp eq i32 %11, 0
  br i1 %cmp23, label %land.lhs.true24, label %if.else

land.lhs.true24:                                  ; preds = %lor.lhs.false, %sw.bb20
  %12 = load i8, i8* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 14), align 8
  %tobool25 = trunc i8 %12 to i1
  br i1 %tobool25, label %if.then29, label %lor.lhs.false26

lor.lhs.false26:                                  ; preds = %land.lhs.true24
  %13 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %call27 = call %struct._CXXToken* @cxxTokenChainPreviousTokenOfType(%struct._CXXToken* %13, i32 49156)
  %tobool28 = icmp ne %struct._CXXToken* %call27, null
  br i1 %tobool28, label %if.else, label %if.then29

if.then29:                                        ; preds = %lor.lhs.false26, %land.lhs.true24
  %call30 = call zeroext i1 @cxxParserParseNamespace()
  br i1 %call30, label %if.end34, label %if.then31

if.then31:                                        ; preds = %if.then29
  br label %do.body32

do.body32:                                        ; preds = %if.then31
  br label %do.end33

do.end33:                                         ; preds = %do.body32
  store i1 false, i1* %retval, align 1
  br label %return

if.end34:                                         ; preds = %if.then29
  br label %if.end43

if.else:                                          ; preds = %lor.lhs.false26, %lor.lhs.false
  %14 = load i8, i8* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 14), align 8
  %tobool35 = trunc i8 %14 to i1
  br i1 %tobool35, label %if.end40, label %if.then36

if.then36:                                        ; preds = %if.else
  br label %do.body37

do.body37:                                        ; preds = %if.then36
  br label %do.end38

do.end38:                                         ; preds = %do.body37
  %15 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %eType39 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %15, i32 0, i32 0
  store i32 2, i32* %eType39, align 8
  br label %for.cond

if.end40:                                         ; preds = %if.else
  br label %do.body41

do.body41:                                        ; preds = %if.end40
  br label %do.end42

do.end42:                                         ; preds = %do.body41
  store i1 false, i1* %retval, align 1
  br label %return

if.end43:                                         ; preds = %if.end34
  call void @cxxParserNewStatement()
  br label %sw.epilog

sw.bb44:                                          ; preds = %sw.bb
  %call45 = call zeroext i1 @cxxParserParseTemplatePrefix()
  br i1 %call45, label %if.end49, label %if.then46

if.then46:                                        ; preds = %sw.bb44
  br label %do.body47

do.body47:                                        ; preds = %if.then46
  br label %do.end48

do.end48:                                         ; preds = %do.body47
  store i1 false, i1* %retval, align 1
  br label %return

if.end49:                                         ; preds = %sw.bb44
  br label %sw.epilog

sw.bb50:                                          ; preds = %sw.bb
  %16 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 13), align 4
  %or = or i32 %16, 1
  store i32 %or, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 13), align 4
  %17 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  call void @cxxTokenChainClear(%struct._CXXTokenChain* %17)
  br label %sw.epilog

sw.bb51:                                          ; preds = %sw.bb
  %call52 = call zeroext i1 @cxxParserParseEnum()
  br i1 %call52, label %if.end56, label %if.then53

if.then53:                                        ; preds = %sw.bb51
  br label %do.body54

do.body54:                                        ; preds = %if.then53
  br label %do.end55

do.end55:                                         ; preds = %do.body54
  store i1 false, i1* %retval, align 1
  br label %return

if.end56:                                         ; preds = %sw.bb51
  br label %sw.epilog

sw.bb57:                                          ; preds = %sw.bb
  %call58 = call zeroext i1 @cxxParserParseClassStructOrUnion(i32 29, i32 15, i32 2)
  br i1 %call58, label %if.end62, label %if.then59

if.then59:                                        ; preds = %sw.bb57
  br label %do.body60

do.body60:                                        ; preds = %if.then59
  br label %do.end61

do.end61:                                         ; preds = %do.body60
  store i1 false, i1* %retval, align 1
  br label %return

if.end62:                                         ; preds = %sw.bb57
  br label %sw.epilog

sw.bb63:                                          ; preds = %sw.bb
  %call64 = call zeroext i1 @cxxParserParseClassStructOrUnion(i32 76, i32 8, i32 5)
  br i1 %call64, label %if.end68, label %if.then65

if.then65:                                        ; preds = %sw.bb63
  br label %do.body66

do.body66:                                        ; preds = %if.then65
  br label %do.end67

do.end67:                                         ; preds = %do.body66
  store i1 false, i1* %retval, align 1
  br label %return

if.end68:                                         ; preds = %sw.bb63
  br label %sw.epilog

sw.bb69:                                          ; preds = %sw.bb
  %call70 = call zeroext i1 @cxxParserParseClassStructOrUnion(i32 87, i32 10, i32 4)
  br i1 %call70, label %if.end74, label %if.then71

if.then71:                                        ; preds = %sw.bb69
  br label %do.body72

do.body72:                                        ; preds = %if.then71
  br label %do.end73

do.end73:                                         ; preds = %do.body72
  store i1 false, i1* %retval, align 1
  br label %return

if.end74:                                         ; preds = %sw.bb69
  br label %sw.epilog

sw.bb75:                                          ; preds = %sw.bb, %sw.bb, %sw.bb
  %call76 = call zeroext i1 @cxxParserParseAccessSpecifier()
  br i1 %call76, label %if.end80, label %if.then77

if.then77:                                        ; preds = %sw.bb75
  br label %do.body78

do.body78:                                        ; preds = %if.then77
  br label %do.end79

do.end79:                                         ; preds = %do.body78
  store i1 false, i1* %retval, align 1
  br label %return

if.end80:                                         ; preds = %sw.bb75
  br label %sw.epilog

sw.bb81:                                          ; preds = %sw.bb
  %call82 = call zeroext i1 @cxxParserParseUsingClause()
  br i1 %call82, label %if.end86, label %if.then83

if.then83:                                        ; preds = %sw.bb81
  br label %do.body84

do.body84:                                        ; preds = %if.then83
  br label %do.end85

do.end85:                                         ; preds = %do.body84
  store i1 false, i1* %retval, align 1
  br label %return

if.end86:                                         ; preds = %sw.bb81
  call void @cxxParserNewStatement()
  br label %sw.epilog

sw.bb87:                                          ; preds = %sw.bb, %sw.bb, %sw.bb, %sw.bb
  %call88 = call zeroext i1 @cxxParserParseIfForWhileSwitch()
  br i1 %call88, label %if.end92, label %if.then89

if.then89:                                        ; preds = %sw.bb87
  br label %do.body90

do.body90:                                        ; preds = %if.then89
  br label %do.end91

do.end91:                                         ; preds = %do.body90
  store i1 false, i1* %retval, align 1
  br label %return

if.end92:                                         ; preds = %sw.bb87
  call void @cxxParserNewStatement()
  call void @cppBeginStatement()
  br label %sw.epilog

sw.bb93:                                          ; preds = %sw.bb, %sw.bb, %sw.bb
  call void @cxxParserNewStatement()
  call void @cppBeginStatement()
  br label %sw.epilog

sw.bb94:                                          ; preds = %sw.bb
  %18 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 0), align 8
  %cmp95 = icmp eq i32 %18, 2
  br i1 %cmp95, label %if.then96, label %if.else98

if.then96:                                        ; preds = %sw.bb94
  call void @cxxParserNewStatement()
  %19 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 13), align 4
  %or97 = or i32 %19, 128
  store i32 %or97, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 13), align 4
  br label %if.end104

if.else98:                                        ; preds = %sw.bb94
  %call99 = call zeroext i1 @cxxParserParseUpToOneOf(i32 65, i1 zeroext false)
  br i1 %call99, label %if.end103, label %if.then100

if.then100:                                       ; preds = %if.else98
  br label %do.body101

do.body101:                                       ; preds = %if.then100
  br label %do.end102

do.end102:                                        ; preds = %do.body101
  store i1 false, i1* %retval, align 1
  br label %return

if.end103:                                        ; preds = %if.else98
  call void @cxxParserNewStatement()
  br label %if.end104

if.end104:                                        ; preds = %if.end103, %if.then96
  br label %sw.epilog

sw.bb105:                                         ; preds = %sw.bb, %sw.bb, %sw.bb
  %call106 = call zeroext i1 @cxxParserParseUpToOneOf(i32 65, i1 zeroext false)
  br i1 %call106, label %if.end110, label %if.then107

if.then107:                                       ; preds = %sw.bb105
  br label %do.body108

do.body108:                                       ; preds = %if.then107
  br label %do.end109

do.end109:                                        ; preds = %do.body108
  store i1 false, i1* %retval, align 1
  br label %return

if.end110:                                        ; preds = %sw.bb105
  call void @cxxParserNewStatement()
  br label %sw.epilog

sw.bb111:                                         ; preds = %sw.bb
  %call112 = call i32 @cxxScopeGetType()
  %cmp113 = icmp eq i32 %call112, 0
  br i1 %cmp113, label %if.then114, label %if.end120

if.then114:                                       ; preds = %sw.bb111
  %call115 = call zeroext i1 @cxxParserParseUpToOneOf(i32 65, i1 zeroext false)
  br i1 %call115, label %if.end119, label %if.then116

if.then116:                                       ; preds = %if.then114
  br label %do.body117

do.body117:                                       ; preds = %if.then116
  br label %do.end118

do.end118:                                        ; preds = %do.body117
  store i1 false, i1* %retval, align 1
  br label %return

if.end119:                                        ; preds = %if.then114
  call void @cxxParserNewStatement()
  br label %if.end120

if.end120:                                        ; preds = %if.end119, %sw.bb111
  br label %sw.epilog

sw.bb121:                                         ; preds = %sw.bb
  %call122 = call zeroext i1 @cxxParserParseUpToOneOf(i32 81, i1 zeroext false)
  br i1 %call122, label %if.end126, label %if.then123

if.then123:                                       ; preds = %sw.bb121
  br label %do.body124

do.body124:                                       ; preds = %if.then123
  br label %do.end125

do.end125:                                        ; preds = %do.body124
  store i1 false, i1* %retval, align 1
  br label %return

if.end126:                                        ; preds = %sw.bb121
  call void @cxxParserNewStatement()
  br label %sw.epilog

sw.bb127:                                         ; preds = %sw.bb
  %20 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 13), align 4
  %or128 = or i32 %20, 4
  store i32 %or128, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 13), align 4
  %21 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %call129 = call %struct._CXXToken* @cxxTokenChainTakeLast(%struct._CXXTokenChain* %21)
  call void @cxxTokenDestroy(%struct._CXXToken* %call129)
  %call130 = call zeroext i1 @cxxParserParseNextToken()
  br i1 %call130, label %if.end132, label %if.then131

if.then131:                                       ; preds = %sw.bb127
  br label %found_eof

if.end132:                                        ; preds = %sw.bb127
  %22 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %eType133 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %22, i32 0, i32 0
  %23 = load i32, i32* %eType133, align 8
  %cmp134 = icmp eq i32 %23, 8192
  br i1 %cmp134, label %if.then135, label %if.else137

if.then135:                                       ; preds = %if.end132
  %24 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %call136 = call %struct._CXXToken* @cxxTokenChainTakeLast(%struct._CXXTokenChain* %24)
  call void @cxxTokenDestroy(%struct._CXXToken* %call136)
  br label %if.end138

if.else137:                                       ; preds = %if.end132
  br label %process_token

if.end138:                                        ; preds = %if.then135
  br label %sw.epilog

sw.bb139:                                         ; preds = %sw.bb
  %25 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 13), align 4
  %or140 = or i32 %25, 8
  store i32 %or140, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 13), align 4
  %26 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %call141 = call %struct._CXXToken* @cxxTokenChainTakeLast(%struct._CXXTokenChain* %26)
  call void @cxxTokenDestroy(%struct._CXXToken* %call141)
  br label %sw.epilog

sw.bb142:                                         ; preds = %sw.bb, %sw.bb, %sw.bb, %sw.bb, %sw.bb
  %27 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 13), align 4
  %or143 = or i32 %27, 2
  store i32 %or143, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 13), align 4
  %28 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %call144 = call %struct._CXXToken* @cxxTokenChainTakeLast(%struct._CXXTokenChain* %28)
  call void @cxxTokenDestroy(%struct._CXXToken* %call144)
  br label %sw.epilog

sw.bb145:                                         ; preds = %sw.bb
  %29 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 13), align 4
  %or146 = or i32 %29, 16
  store i32 %or146, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 13), align 4
  %30 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %call147 = call %struct._CXXToken* @cxxTokenChainTakeLast(%struct._CXXTokenChain* %30)
  call void @cxxTokenDestroy(%struct._CXXToken* %call147)
  br label %sw.epilog

sw.bb148:                                         ; preds = %sw.bb
  %31 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 13), align 4
  %or149 = or i32 %31, 32
  store i32 %or149, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 13), align 4
  br label %sw.epilog

sw.bb150:                                         ; preds = %sw.bb
  %32 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 13), align 4
  %or151 = or i32 %32, 64
  store i32 %or151, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 13), align 4
  %33 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %call152 = call %struct._CXXToken* @cxxTokenChainTakeLast(%struct._CXXTokenChain* %33)
  call void @cxxTokenDestroy(%struct._CXXToken* %call152)
  br label %sw.epilog

sw.bb153:                                         ; preds = %sw.bb
  %34 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 13), align 4
  %or154 = or i32 %34, 256
  store i32 %or154, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 13), align 4
  %35 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %call155 = call %struct._CXXToken* @cxxTokenChainTakeLast(%struct._CXXTokenChain* %35)
  call void @cxxTokenDestroy(%struct._CXXToken* %call155)
  br label %sw.epilog

sw.bb156:                                         ; preds = %sw.bb
  %36 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 13), align 4
  %or157 = or i32 %36, 4096
  store i32 %or157, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 13), align 4
  br label %sw.epilog

sw.bb158:                                         ; preds = %sw.bb
  %37 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 13), align 4
  %or159 = or i32 %37, 1024
  store i32 %or159, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 13), align 4
  br label %sw.epilog

sw.bb160:                                         ; preds = %sw.bb
  %38 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 13), align 4
  %or161 = or i32 %38, 512
  store i32 %or161, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 13), align 4
  br label %sw.epilog

sw.default:                                       ; preds = %sw.bb
  %39 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 13), align 4
  %and = and i32 %39, 1
  %tobool162 = icmp ne i32 %and, 0
  br i1 %tobool162, label %if.then163, label %if.end170

if.then163:                                       ; preds = %sw.default
  %40 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 13), align 4
  %and164 = and i32 %40, -2
  store i32 %and164, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 13), align 4
  %call165 = call zeroext i1 @cxxParserParseGenericTypedef()
  br i1 %call165, label %if.end169, label %if.then166

if.then166:                                       ; preds = %if.then163
  br label %do.body167

do.body167:                                       ; preds = %if.then166
  br label %do.end168

do.end168:                                        ; preds = %do.body167
  store i1 false, i1* %retval, align 1
  br label %return

if.end169:                                        ; preds = %if.then163
  call void @cxxParserNewStatement()
  br label %if.end170

if.end170:                                        ; preds = %if.end169, %sw.default
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end170, %sw.bb160, %sw.bb158, %sw.bb156, %sw.bb153, %sw.bb150, %sw.bb148, %sw.bb145, %sw.bb142, %sw.bb139, %if.end138, %if.end126, %if.end120, %if.end110, %if.end104, %sw.bb93, %if.end92, %if.end86, %if.end80, %if.end74, %if.end68, %if.end62, %if.end56, %sw.bb50, %if.end49, %if.end43
  br label %sw.epilog257

sw.bb171:                                         ; preds = %if.end18
  %41 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 0), align 8
  %cmp172 = icmp eq i32 %41, 1
  br i1 %cmp172, label %land.lhs.true173, label %if.else189

land.lhs.true173:                                 ; preds = %sw.bb171
  %call174 = call zeroext i1 @cxxScopeIsGlobal()
  br i1 %call174, label %land.lhs.true175, label %if.else189

land.lhs.true175:                                 ; preds = %land.lhs.true173
  %42 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 13), align 4
  %and176 = and i32 %42, 4
  %tobool177 = icmp ne i32 %and176, 0
  br i1 %tobool177, label %if.else189, label %land.lhs.true178

land.lhs.true178:                                 ; preds = %land.lhs.true175
  %43 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 13), align 4
  %and179 = and i32 %43, 1
  %tobool180 = icmp ne i32 %and179, 0
  br i1 %tobool180, label %if.else189, label %if.then181

if.then181:                                       ; preds = %land.lhs.true178
  %call182 = call i32 @cxxParserMaybeParseKnRStyleFunctionDefinition()
  switch i32 %call182, label %sw.default185 [
    i32 1, label %sw.bb183
    i32 0, label %sw.bb184
  ]

sw.bb183:                                         ; preds = %if.then181
  br label %sw.epilog188

sw.bb184:                                         ; preds = %if.then181
  call void @cxxParserAnalyzeOtherStatement()
  br label %sw.epilog188

sw.default185:                                    ; preds = %if.then181
  br label %do.body186

do.body186:                                       ; preds = %sw.default185
  br label %do.end187

do.end187:                                        ; preds = %do.body186
  store i1 false, i1* %retval, align 1
  br label %return

sw.epilog188:                                     ; preds = %sw.bb184, %sw.bb183
  br label %if.end190

if.else189:                                       ; preds = %land.lhs.true178, %land.lhs.true175, %land.lhs.true173, %sw.bb171
  call void @cxxParserAnalyzeOtherStatement()
  br label %if.end190

if.end190:                                        ; preds = %if.else189, %sw.epilog188
  call void @cxxParserNewStatement()
  br label %sw.epilog257

sw.bb191:                                         ; preds = %if.end18
  %44 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %iCount = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %44, i32 0, i32 2
  %45 = load i32, i32* %iCount, align 8
  %cmp192 = icmp eq i32 %45, 2
  br i1 %cmp192, label %land.lhs.true193, label %if.else209

land.lhs.true193:                                 ; preds = %sw.bb191
  %46 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %tobool194 = icmp ne %struct._CXXTokenChain* %46, null
  br i1 %tobool194, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true193
  %47 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %pHead = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %47, i32 0, i32 0
  %48 = load %struct._CXXToken*, %struct._CXXToken** %pHead, align 8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true193
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._CXXToken* [ %48, %cond.true ], [ null, %cond.false ]
  %eType195 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %cond, i32 0, i32 0
  %49 = load i32, i32* %eType195, align 8
  %cmp196 = icmp eq i32 %49, 2
  br i1 %cmp196, label %if.then197, label %if.else209

if.then197:                                       ; preds = %cond.end
  %50 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %tobool198 = icmp ne %struct._CXXTokenChain* %50, null
  br i1 %tobool198, label %cond.true199, label %cond.false201

cond.true199:                                     ; preds = %if.then197
  %51 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %pHead200 = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %51, i32 0, i32 0
  %52 = load %struct._CXXToken*, %struct._CXXToken** %pHead200, align 8
  br label %cond.end202

cond.false201:                                    ; preds = %if.then197
  br label %cond.end202

cond.end202:                                      ; preds = %cond.false201, %cond.true199
  %cond203 = phi %struct._CXXToken* [ %52, %cond.true199 ], [ null, %cond.false201 ]
  store %struct._CXXToken* %cond203, %struct._CXXToken** %pFirst, align 8
  %53 = load %struct._CXXToken*, %struct._CXXToken** %pFirst, align 8
  %call204 = call %struct.sTagEntryInfo* @cxxTagBegin(i32 14, %struct._CXXToken* %53)
  store %struct.sTagEntryInfo* %call204, %struct.sTagEntryInfo** %tag, align 8
  %54 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag, align 8
  %tobool205 = icmp ne %struct.sTagEntryInfo* %54, null
  br i1 %tobool205, label %if.then206, label %if.end208

if.then206:                                       ; preds = %cond.end202
  %55 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag, align 8
  %56 = bitcast %struct.sTagEntryInfo* %55 to i8*
  %bf.load = load i8, i8* %56, align 8
  %bf.clear = and i8 %bf.load, -3
  %bf.set = or i8 %bf.clear, 2
  store i8 %bf.set, i8* %56, align 8
  %call207 = call i32 @cxxTagCommit()
  br label %if.end208

if.end208:                                        ; preds = %if.then206, %cond.end202
  br label %if.end210

if.else209:                                       ; preds = %cond.end, %sw.bb191
  br label %if.end210

if.end210:                                        ; preds = %if.else209, %if.end208
  br label %sw.epilog257

sw.bb211:                                         ; preds = %if.end18
  %call212 = call zeroext i1 @cxxParserParseBlockHandleOpeningBracket()
  br i1 %call212, label %if.end216, label %if.then213

if.then213:                                       ; preds = %sw.bb211
  br label %do.body214

do.body214:                                       ; preds = %if.then213
  br label %do.end215

do.end215:                                        ; preds = %do.body214
  store i1 false, i1* %retval, align 1
  br label %return

if.end216:                                        ; preds = %sw.bb211
  br label %sw.epilog257

sw.bb217:                                         ; preds = %if.end18
  %57 = load i8, i8* %bExpectClosingBracket.addr, align 1
  %tobool218 = trunc i8 %57 to i1
  br i1 %tobool218, label %if.end222, label %if.then219

if.then219:                                       ; preds = %sw.bb217
  br label %do.body220

do.body220:                                       ; preds = %if.then219
  br label %do.end221

do.end221:                                        ; preds = %do.body220
  store i1 false, i1* %retval, align 1
  br label %return

if.end222:                                        ; preds = %sw.bb217
  br label %do.body223

do.body223:                                       ; preds = %if.end222
  br label %do.end224

do.end224:                                        ; preds = %do.body223
  call void @cxxParserNewStatement()
  store i1 true, i1* %retval, align 1
  br label %return

sw.bb225:                                         ; preds = %if.end18, %if.end18
  %call226 = call zeroext i1 @cxxParserParseAndCondenseCurrentSubchain(i32 3670016, i1 zeroext true, i1 zeroext false)
  br i1 %call226, label %if.end230, label %if.then227

if.then227:                                       ; preds = %sw.bb225
  br label %do.body228

do.body228:                                       ; preds = %if.then227
  br label %do.end229

do.end229:                                        ; preds = %do.body228
  store i1 false, i1* %retval, align 1
  br label %return

if.end230:                                        ; preds = %sw.bb225
  %58 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %eType231 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %58, i32 0, i32 0
  %59 = load i32, i32* %eType231, align 8
  %cmp232 = icmp eq i32 %59, 1
  br i1 %cmp232, label %if.then233, label %if.end239

if.then233:                                       ; preds = %if.end230
  %60 = load i8, i8* %bExpectClosingBracket.addr, align 1
  %tobool234 = trunc i8 %60 to i1
  br i1 %tobool234, label %if.then235, label %if.end238

if.then235:                                       ; preds = %if.then233
  br label %do.body236

do.body236:                                       ; preds = %if.then235
  br label %do.end237

do.end237:                                        ; preds = %do.body236
  store i1 false, i1* %retval, align 1
  br label %return

if.end238:                                        ; preds = %if.then233
  store i1 true, i1* %retval, align 1
  br label %return

if.end239:                                        ; preds = %if.end230
  br label %sw.epilog257

sw.bb240:                                         ; preds = %if.end18
  %61 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 13), align 4
  %and241 = and i32 %61, 1
  %tobool242 = icmp ne i32 %and241, 0
  br i1 %tobool242, label %if.then243, label %if.else250

if.then243:                                       ; preds = %sw.bb240
  %62 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 13), align 4
  %and244 = and i32 %62, -2
  store i32 %and244, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 13), align 4
  %call245 = call zeroext i1 @cxxParserParseGenericTypedef()
  br i1 %call245, label %if.end249, label %if.then246

if.then246:                                       ; preds = %if.then243
  br label %do.body247

do.body247:                                       ; preds = %if.then246
  br label %do.end248

do.end248:                                        ; preds = %do.body247
  store i1 false, i1* %retval, align 1
  br label %return

if.end249:                                        ; preds = %if.then243
  call void @cxxParserNewStatement()
  br label %if.end255

if.else250:                                       ; preds = %sw.bb240
  %call251 = call i32 @cxxScopeGetType()
  %cmp252 = icmp eq i32 %call251, 2
  br i1 %cmp252, label %if.then253, label %if.end254

if.then253:                                       ; preds = %if.else250
  %63 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  call void @cxxSubparserUnknownIdentifierInClassNotify(%struct._CXXToken* %63)
  br label %if.end254

if.end254:                                        ; preds = %if.then253, %if.else250
  br label %if.end255

if.end255:                                        ; preds = %if.end254, %if.end249
  br label %sw.epilog257

sw.default256:                                    ; preds = %if.end18
  br label %sw.epilog257

sw.epilog257:                                     ; preds = %sw.default256, %if.end255, %if.end239, %if.end216, %if.end210, %if.end190, %sw.epilog
  br label %for.cond

return:                                           ; preds = %do.end248, %if.end238, %do.end237, %do.end229, %do.end224, %do.end221, %do.end215, %do.end187, %do.end168, %do.end125, %do.end118, %do.end109, %do.end102, %do.end91, %do.end85, %do.end79, %do.end73, %do.end67, %do.end61, %do.end55, %do.end48, %do.end42, %do.end33, %do.end8, %do.end5
  %64 = load i1, i1* %retval, align 1
  ret i1 %64
}

declare void @cppPopExternalParserBlock() #1

declare void @cxxSubparserNotifyLeaveBlock() #1

declare void @cppBeginStatement() #1

declare zeroext i1 @cxxParserParseNextToken() #1

declare zeroext i1 @cxxSubparserNewIdentifierAsHeadOfMemberNotify(%struct._CXXToken*) #1

declare void @cxxTokenDestroy(%struct._CXXToken*) #1

declare %struct._CXXToken* @cxxTokenChainTakeLast(%struct._CXXTokenChain*) #1

declare zeroext i1 @cxxParserParseNamespace() #1

declare zeroext i1 @cxxParserParseTemplatePrefix() #1

declare void @cxxTokenChainClear(%struct._CXXTokenChain*) #1

declare zeroext i1 @cxxParserParseEnum() #1

declare zeroext i1 @cxxParserParseClassStructOrUnion(i32, i32, i32) #1

declare zeroext i1 @cxxParserParseAccessSpecifier() #1

declare zeroext i1 @cxxParserParseUsingClause() #1

declare zeroext i1 @cxxParserParseIfForWhileSwitch() #1

declare zeroext i1 @cxxParserParseUpToOneOf(i32, i1 zeroext) #1

declare zeroext i1 @cxxParserParseGenericTypedef() #1

declare zeroext i1 @cxxScopeIsGlobal() #1

declare i32 @cxxParserMaybeParseKnRStyleFunctionDefinition() #1

declare void @cxxParserAnalyzeOtherStatement() #1

declare %struct.sTagEntryInfo* @cxxTagBegin(i32, %struct._CXXToken*) #1

declare i32 @cxxTagCommit() #1

declare void @cxxSubparserUnknownIdentifierInClassNotify(%struct._CXXToken*) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 10.0.0 (https://github.com/holzschu/clang.git 0cfc630fbdb62e96720b611a57123ef3eb13e297) (https://github.com/holzschu/llvm.git 0d8a71e39b28502c24718f7e74b5acbcfe36dfe0)"}
