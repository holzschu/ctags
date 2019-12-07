; ModuleID = 'cxx/cxx_parser.c'
source_filename = "cxx/cxx_parser.c"
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
%struct._CXXFunctionParameterInfo = type { i32, %struct._CXXTokenChain*, [24 x %struct._CXXToken*], [24 x %struct._CXXToken*], [24 x %struct._CXXToken*] }
%struct._CXXFunctionSignatureInfo = type { %struct._CXXToken*, %struct._CXXTokenChain*, %struct._CXXToken*, %struct._CXXToken*, %struct._CXXTokenChain*, %struct._CXXToken*, %struct._CXXToken*, %struct._CXXToken*, %struct._CXXToken*, i8, %struct._CXXToken*, i32 }
%struct.sTrashBox = type opaque

@g_bFirstRun = global i8 1, align 1
@g_cxx = common global %struct._CXXParserState zeroinitializer, align 8
@pSubparsers = internal global %struct.sPtrArray* null, align 8

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @cxxParserNewStatement() #0 {
entry:
  %0 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  call void @cxxTokenChainClear(%struct._CXXTokenChain* %0)
  %1 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 10), align 8
  %tobool = icmp ne %struct._CXXTokenChain* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 10), align 8
  call void @cxxTokenChainDestroy(%struct._CXXTokenChain* %2)
  store %struct._CXXTokenChain* null, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 10), align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 13), align 4
  call void @cppEndStatement()
  ret void
}

declare void @cxxTokenChainClear(%struct._CXXTokenChain*) #1

declare void @cxxTokenChainDestroy(%struct._CXXTokenChain*) #1

declare void @cppEndStatement() #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @cxxParserParseAndCondenseCurrentSubchain(i32 %uInitialSubchainMarkerTypes, i1 zeroext %bAcceptEOF, i1 zeroext %bCanReduceInnerElements) #0 {
entry:
  %uInitialSubchainMarkerTypes.addr = alloca i32, align 4
  %bAcceptEOF.addr = alloca i8, align 1
  %bCanReduceInnerElements.addr = alloca i8, align 1
  %pCurrentChain = alloca %struct._CXXTokenChain*, align 8
  %pInitial = alloca %struct._CXXToken*, align 8
  %pChainToken = alloca %struct._CXXToken*, align 8
  %eTermType = alloca i32, align 4
  %uTokenTypes = alloca i32, align 4
  %bRet = alloca i8, align 1
  %pFakeLast = alloca %struct._CXXToken*, align 8
  store i32 %uInitialSubchainMarkerTypes, i32* %uInitialSubchainMarkerTypes.addr, align 4
  %frombool = zext i1 %bAcceptEOF to i8
  store i8 %frombool, i8* %bAcceptEOF.addr, align 1
  %frombool1 = zext i1 %bCanReduceInnerElements to i8
  store i8 %frombool1, i8* %bCanReduceInnerElements.addr, align 1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  store %struct._CXXTokenChain* %0, %struct._CXXTokenChain** %pCurrentChain, align 8
  %call = call %struct._CXXTokenChain* @cxxTokenChainCreate()
  store %struct._CXXTokenChain* %call, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %1 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pCurrentChain, align 8
  %call2 = call %struct._CXXToken* @cxxTokenChainTakeLast(%struct._CXXTokenChain* %1)
  store %struct._CXXToken* %call2, %struct._CXXToken** %pInitial, align 8
  %2 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %3 = load %struct._CXXToken*, %struct._CXXToken** %pInitial, align 8
  call void @cxxTokenChainAppend(%struct._CXXTokenChain* %2, %struct._CXXToken* %3)
  %call3 = call %struct._CXXToken* @cxxTokenCreate()
  store %struct._CXXToken* %call3, %struct._CXXToken** %pChainToken, align 8
  %4 = load %struct._CXXToken*, %struct._CXXToken** %pInitial, align 8
  %iLineNumber = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %4, i32 0, i32 5
  %5 = load i32, i32* %iLineNumber, align 4
  %6 = load %struct._CXXToken*, %struct._CXXToken** %pChainToken, align 8
  %iLineNumber4 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %6, i32 0, i32 5
  store i32 %5, i32* %iLineNumber4, align 4
  %7 = load %struct._CXXToken*, %struct._CXXToken** %pChainToken, align 8
  %oFilePosition = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %7, i32 0, i32 6
  %8 = load %struct._CXXToken*, %struct._CXXToken** %pInitial, align 8
  %oFilePosition5 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %8, i32 0, i32 6
  %9 = bitcast %struct._MIOPos* %oFilePosition to i8*
  %10 = bitcast %struct._MIOPos* %oFilePosition5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 %10, i64 16, i1 false)
  %11 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %eType = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %11, i32 0, i32 0
  %12 = load i32, i32* %eType, align 8
  %shl = shl i32 %12, 8
  %13 = load %struct._CXXToken*, %struct._CXXToken** %pChainToken, align 8
  %eType6 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %13, i32 0, i32 0
  store i32 %shl, i32* %eType6, align 8
  %14 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %15 = load %struct._CXXToken*, %struct._CXXToken** %pChainToken, align 8
  %pChain = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %15, i32 0, i32 3
  store %struct._CXXTokenChain* %14, %struct._CXXTokenChain** %pChain, align 8
  %16 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pCurrentChain, align 8
  %17 = load %struct._CXXToken*, %struct._CXXToken** %pChainToken, align 8
  call void @cxxTokenChainAppend(%struct._CXXTokenChain* %16, %struct._CXXToken* %17)
  %18 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %eType7 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %18, i32 0, i32 0
  %19 = load i32, i32* %eType7, align 8
  %shl8 = shl i32 %19, 4
  store i32 %shl8, i32* %eTermType, align 4
  %20 = load i32, i32* %eTermType, align 4
  store i32 %20, i32* %uTokenTypes, align 4
  %21 = load i8, i8* %bAcceptEOF.addr, align 1
  %tobool = trunc i8 %21 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  %22 = load i32, i32* %uTokenTypes, align 4
  %or = or i32 %22, 1
  store i32 %or, i32* %uTokenTypes, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end
  %23 = load i32, i32* %uTokenTypes, align 4
  %24 = load i32, i32* %uInitialSubchainMarkerTypes.addr, align 4
  %25 = load i8, i8* %bCanReduceInnerElements.addr, align 1
  %tobool9 = trunc i8 %25 to i1
  %call10 = call zeroext i1 @cxxParserParseAndCondenseSubchainsUpToOneOf(i32 %23, i32 %24, i1 zeroext %tobool9)
  %frombool11 = zext i1 %call10 to i8
  store i8 %frombool11, i8* %bRet, align 1
  %26 = load i8, i8* %bRet, align 1
  %tobool12 = trunc i8 %26 to i1
  br i1 %tobool12, label %lor.lhs.false, label %if.then15

lor.lhs.false:                                    ; preds = %if.end
  %27 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %tobool13 = icmp ne %struct._CXXTokenChain* %27, null
  br i1 %tobool13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false
  %28 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %pTail = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %28, i32 0, i32 1
  %29 = load %struct._CXXToken*, %struct._CXXToken** %pTail, align 8
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._CXXToken* [ %29, %cond.true ], [ null, %cond.false ]
  %eType14 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %cond, i32 0, i32 0
  %30 = load i32, i32* %eType14, align 8
  %31 = load i32, i32* %eTermType, align 4
  %cmp = icmp eq i32 %30, %31
  br i1 %cmp, label %if.end35, label %if.then15

if.then15:                                        ; preds = %cond.end, %if.end
  br label %do.body16

do.body16:                                        ; preds = %if.then15
  br label %do.end17

do.end17:                                         ; preds = %do.body16
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.end17
  %32 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %iCount = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %32, i32 0, i32 2
  %33 = load i32, i32* %iCount, align 8
  %cmp18 = icmp sgt i32 %33, 1
  br i1 %cmp18, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %34 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %call19 = call %struct._CXXToken* @cxxTokenChainTakeLast(%struct._CXXTokenChain* %34)
  call void @cxxTokenDestroy(%struct._CXXToken* %call19)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %call20 = call %struct._CXXToken* @cxxTokenCreate()
  store %struct._CXXToken* %call20, %struct._CXXToken** %pFakeLast, align 8
  %35 = load %struct._CXXToken*, %struct._CXXToken** %pChainToken, align 8
  %iLineNumber21 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %35, i32 0, i32 5
  %36 = load i32, i32* %iLineNumber21, align 4
  %37 = load %struct._CXXToken*, %struct._CXXToken** %pFakeLast, align 8
  %iLineNumber22 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %37, i32 0, i32 5
  store i32 %36, i32* %iLineNumber22, align 4
  %38 = load %struct._CXXToken*, %struct._CXXToken** %pFakeLast, align 8
  %oFilePosition23 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %38, i32 0, i32 6
  %39 = load %struct._CXXToken*, %struct._CXXToken** %pChainToken, align 8
  %oFilePosition24 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %39, i32 0, i32 6
  %40 = bitcast %struct._MIOPos* %oFilePosition23 to i8*
  %41 = bitcast %struct._MIOPos* %oFilePosition24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %40, i8* align 8 %41, i64 16, i1 false)
  %42 = load i32, i32* %eTermType, align 4
  switch i32 %42, label %sw.default [
    i32 8388608, label %sw.bb
    i32 16777216, label %sw.bb25
    i32 33554432, label %sw.bb27
    i32 67108864, label %sw.bb29
  ]

sw.bb:                                            ; preds = %while.end
  %43 = load %struct._CXXToken*, %struct._CXXToken** %pFakeLast, align 8
  %pszWord = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %43, i32 0, i32 1
  %44 = load %struct.sVString*, %struct.sVString** %pszWord, align 8
  call void @vStringPut(%struct.sVString* %44, i32 125)
  br label %sw.epilog

sw.bb25:                                          ; preds = %while.end
  %45 = load %struct._CXXToken*, %struct._CXXToken** %pFakeLast, align 8
  %pszWord26 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %45, i32 0, i32 1
  %46 = load %struct.sVString*, %struct.sVString** %pszWord26, align 8
  call void @vStringPut(%struct.sVString* %46, i32 41)
  br label %sw.epilog

sw.bb27:                                          ; preds = %while.end
  %47 = load %struct._CXXToken*, %struct._CXXToken** %pFakeLast, align 8
  %pszWord28 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %47, i32 0, i32 1
  %48 = load %struct.sVString*, %struct.sVString** %pszWord28, align 8
  call void @vStringPut(%struct.sVString* %48, i32 93)
  br label %sw.epilog

sw.bb29:                                          ; preds = %while.end
  %49 = load %struct._CXXToken*, %struct._CXXToken** %pFakeLast, align 8
  %pszWord30 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %49, i32 0, i32 1
  %50 = load %struct.sVString*, %struct.sVString** %pszWord30, align 8
  call void @vStringPut(%struct.sVString* %50, i32 62)
  br label %sw.epilog

sw.default:                                       ; preds = %while.end
  br label %do.body31

do.body31:                                        ; preds = %sw.default
  br label %do.end32

do.end32:                                         ; preds = %do.body31
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end32, %sw.bb29, %sw.bb27, %sw.bb25, %sw.bb
  %51 = load i32, i32* %eTermType, align 4
  %52 = load %struct._CXXToken*, %struct._CXXToken** %pFakeLast, align 8
  %eType33 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %52, i32 0, i32 0
  store i32 %51, i32* %eType33, align 8
  %53 = load %struct._CXXToken*, %struct._CXXToken** %pFakeLast, align 8
  %pChain34 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %53, i32 0, i32 3
  store %struct._CXXTokenChain* null, %struct._CXXTokenChain** %pChain34, align 8
  %54 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %55 = load %struct._CXXToken*, %struct._CXXToken** %pFakeLast, align 8
  call void @cxxTokenChainAppend(%struct._CXXTokenChain* %54, %struct._CXXToken* %55)
  br label %if.end35

if.end35:                                         ; preds = %sw.epilog, %cond.end
  %56 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pCurrentChain, align 8
  store %struct._CXXTokenChain* %56, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %57 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pCurrentChain, align 8
  %pTail36 = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %57, i32 0, i32 1
  %58 = load %struct._CXXToken*, %struct._CXXToken** %pTail36, align 8
  store %struct._CXXToken* %58, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  br label %do.body37

do.body37:                                        ; preds = %if.end35
  br label %do.end38

do.end38:                                         ; preds = %do.body37
  %59 = load i8, i8* %bRet, align 1
  %tobool39 = trunc i8 %59 to i1
  ret i1 %tobool39
}

declare %struct._CXXTokenChain* @cxxTokenChainCreate() #1

declare %struct._CXXToken* @cxxTokenChainTakeLast(%struct._CXXTokenChain*) #1

declare void @cxxTokenChainAppend(%struct._CXXTokenChain*, %struct._CXXToken*) #1

declare %struct._CXXToken* @cxxTokenCreate() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @cxxParserParseAndCondenseSubchainsUpToOneOf(i32 %uTokenTypes, i32 %uInitialSubchainMarkerTypes, i1 zeroext %bCanReduceInnerElements) #0 {
entry:
  %retval = alloca i1, align 1
  %uTokenTypes.addr = alloca i32, align 4
  %uInitialSubchainMarkerTypes.addr = alloca i32, align 4
  %bCanReduceInnerElements.addr = alloca i8, align 1
  %uFinalSubchainMarkerTypes = alloca i32, align 4
  %pParenthesis = alloca %struct._CXXToken*, align 8
  store i32 %uTokenTypes, i32* %uTokenTypes.addr, align 4
  store i32 %uInitialSubchainMarkerTypes, i32* %uInitialSubchainMarkerTypes.addr, align 4
  %frombool = zext i1 %bCanReduceInnerElements to i8
  store i8 %frombool, i8* %bCanReduceInnerElements.addr, align 1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %call = call zeroext i1 @cxxParserParseNextToken()
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %do.end
  br label %do.body1

do.body1:                                         ; preds = %if.then
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  %0 = load i32, i32* %uTokenTypes.addr, align 4
  %and = and i32 %0, 1
  %tobool = icmp ne i32 %and, 0
  store i1 %tobool, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %do.end
  %1 = load i32, i32* %uInitialSubchainMarkerTypes.addr, align 4
  %shl = shl i32 %1, 4
  store i32 %shl, i32* %uFinalSubchainMarkerTypes, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end66, %if.end51, %if.end
  %2 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %eType = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %2, i32 0, i32 0
  %3 = load i32, i32* %eType, align 8
  %4 = load i32, i32* %uTokenTypes.addr, align 4
  %and3 = and i32 %3, %4
  %tobool4 = icmp ne i32 %and3, 0
  br i1 %tobool4, label %if.then5, label %if.end11

if.then5:                                         ; preds = %for.cond
  %5 = load i8, i8* %bCanReduceInnerElements.addr, align 1
  %tobool6 = trunc i8 %5 to i1
  br i1 %tobool6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.then5
  %6 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  call void @cxxTokenReduceBackward(%struct._CXXToken* %6)
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.then5
  br label %do.body9

do.body9:                                         ; preds = %if.end8
  br label %do.end10

do.end10:                                         ; preds = %do.body9
  store i1 true, i1* %retval, align 1
  br label %return

if.end11:                                         ; preds = %for.cond
  %7 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %eType12 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %7, i32 0, i32 0
  %8 = load i32, i32* %eType12, align 8
  %9 = load i32, i32* %uInitialSubchainMarkerTypes.addr, align 4
  %and13 = and i32 %8, %9
  %tobool14 = icmp ne i32 %and13, 0
  br i1 %tobool14, label %if.then15, label %if.end52

if.then15:                                        ; preds = %if.end11
  br label %do.body16

do.body16:                                        ; preds = %if.then15
  br label %do.end17

do.end17:                                         ; preds = %do.body16
  %10 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %eType18 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %10, i32 0, i32 0
  %11 = load i32, i32* %eType18, align 8
  %cmp = icmp eq i32 %11, 524288
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %do.end17
  %12 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 0), align 8
  %cmp19 = icmp eq i32 %12, 2
  br i1 %cmp19, label %land.lhs.true20, label %if.else

land.lhs.true20:                                  ; preds = %land.lhs.true
  %call21 = call %struct._CXXToken* @cxxParserOpeningBracketIsLambda()
  store %struct._CXXToken* %call21, %struct._CXXToken** %pParenthesis, align 8
  %tobool22 = icmp ne %struct._CXXToken* %call21, null
  br i1 %tobool22, label %if.then23, label %if.else

if.then23:                                        ; preds = %land.lhs.true20
  %13 = load %struct._CXXToken*, %struct._CXXToken** %pParenthesis, align 8
  %call24 = call zeroext i1 @cxxParserHandleLambda(%struct._CXXToken* %13)
  br i1 %call24, label %if.end28, label %if.then25

if.then25:                                        ; preds = %if.then23
  br label %do.body26

do.body26:                                        ; preds = %if.then25
  br label %do.end27

do.end27:                                         ; preds = %do.body26
  store i1 false, i1* %retval, align 1
  br label %return

if.end28:                                         ; preds = %if.then23
  br label %if.end37

if.else:                                          ; preds = %land.lhs.true20, %land.lhs.true, %do.end17
  %14 = load i32, i32* %uInitialSubchainMarkerTypes.addr, align 4
  %15 = load i32, i32* %uTokenTypes.addr, align 4
  %and29 = and i32 %15, 1
  %tobool30 = icmp ne i32 %and29, 0
  %16 = load i8, i8* %bCanReduceInnerElements.addr, align 1
  %tobool31 = trunc i8 %16 to i1
  %call32 = call zeroext i1 @cxxParserParseAndCondenseCurrentSubchain(i32 %14, i1 zeroext %tobool30, i1 zeroext %tobool31)
  br i1 %call32, label %if.end36, label %if.then33

if.then33:                                        ; preds = %if.else
  br label %do.body34

do.body34:                                        ; preds = %if.then33
  br label %do.end35

do.end35:                                         ; preds = %do.body34
  store i1 false, i1* %retval, align 1
  br label %return

if.end36:                                         ; preds = %if.else
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.end28
  %17 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %eType38 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %17, i32 0, i32 0
  %18 = load i32, i32* %eType38, align 8
  %19 = load i32, i32* %uTokenTypes.addr, align 4
  %and39 = and i32 %18, %19
  %tobool40 = icmp ne i32 %and39, 0
  br i1 %tobool40, label %if.then41, label %if.end44

if.then41:                                        ; preds = %if.end37
  br label %do.body42

do.body42:                                        ; preds = %if.then41
  br label %do.end43

do.end43:                                         ; preds = %do.body42
  store i1 true, i1* %retval, align 1
  br label %return

if.end44:                                         ; preds = %if.end37
  %call45 = call zeroext i1 @cxxParserParseNextToken()
  br i1 %call45, label %if.end51, label %if.then46

if.then46:                                        ; preds = %if.end44
  br label %do.body47

do.body47:                                        ; preds = %if.then46
  br label %do.end48

do.end48:                                         ; preds = %do.body47
  %20 = load i32, i32* %uTokenTypes.addr, align 4
  %and49 = and i32 %20, 1
  %tobool50 = icmp ne i32 %and49, 0
  store i1 %tobool50, i1* %retval, align 1
  br label %return

if.end51:                                         ; preds = %if.end44
  br label %for.cond

if.end52:                                         ; preds = %if.end11
  %21 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %eType53 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %21, i32 0, i32 0
  %22 = load i32, i32* %eType53, align 8
  %23 = load i32, i32* %uFinalSubchainMarkerTypes, align 4
  %and54 = and i32 %22, %23
  %tobool55 = icmp ne i32 %and54, 0
  br i1 %tobool55, label %if.then56, label %if.end59

if.then56:                                        ; preds = %if.end52
  br label %do.body57

do.body57:                                        ; preds = %if.then56
  br label %do.end58

do.end58:                                         ; preds = %do.body57
  store i1 false, i1* %retval, align 1
  br label %return

if.end59:                                         ; preds = %if.end52
  %call60 = call zeroext i1 @cxxParserParseNextToken()
  br i1 %call60, label %if.end66, label %if.then61

if.then61:                                        ; preds = %if.end59
  br label %do.body62

do.body62:                                        ; preds = %if.then61
  br label %do.end63

do.end63:                                         ; preds = %do.body62
  %24 = load i32, i32* %uTokenTypes.addr, align 4
  %and64 = and i32 %24, 1
  %tobool65 = icmp ne i32 %and64, 0
  store i1 %tobool65, i1* %retval, align 1
  br label %return

if.end66:                                         ; preds = %if.end59
  br label %for.cond

return:                                           ; preds = %do.end63, %do.end58, %do.end48, %do.end43, %do.end35, %do.end27, %do.end10, %do.end2
  %25 = load i1, i1* %retval, align 1
  ret i1 %25
}

declare void @cxxTokenDestroy(%struct._CXXToken*) #1

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

declare zeroext i1 @cxxParserParseNextToken() #1

declare void @cxxTokenReduceBackward(%struct._CXXToken*) #1

declare %struct._CXXToken* @cxxParserOpeningBracketIsLambda() #1

declare zeroext i1 @cxxParserHandleLambda(%struct._CXXToken*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @cxxParserParseUpToOneOf(i32 %uTokenTypes, i1 zeroext %bCanReduceInnerElements) #0 {
entry:
  %uTokenTypes.addr = alloca i32, align 4
  %bCanReduceInnerElements.addr = alloca i8, align 1
  store i32 %uTokenTypes, i32* %uTokenTypes.addr, align 4
  %frombool = zext i1 %bCanReduceInnerElements to i8
  store i8 %frombool, i8* %bCanReduceInnerElements.addr, align 1
  %0 = load i32, i32* %uTokenTypes.addr, align 4
  %1 = load i8, i8* %bCanReduceInnerElements.addr, align 1
  %tobool = trunc i8 %1 to i1
  %call = call zeroext i1 @cxxParserParseAndCondenseSubchainsUpToOneOf(i32 %0, i32 3670016, i1 zeroext %tobool)
  ret i1 %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @cxxParserSkipToSemicolonOrEOF() #0 {
entry:
  %retval = alloca i1, align 1
  %0 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %eType = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %0, i32 0, i32 0
  %1 = load i32, i32* %eType, align 8
  %and = and i32 %1, 65
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 true, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %call = call zeroext i1 @cxxParserParseUpToOneOf(i32 65, i1 zeroext false)
  store i1 %call, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load i1, i1* %retval, align 1
  ret i1 %2
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @cxxParserParseToEndOfQualifedName() #0 {
entry:
  %retval = alloca i1, align 1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  %0 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %eType = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %0, i32 0, i32 0
  %1 = load i32, i32* %eType, align 8
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.then, label %if.end6

if.then:                                          ; preds = %do.end2
  %call = call zeroext i1 @cxxParserParseNextToken()
  br i1 %call, label %if.end, label %if.then3

if.then3:                                         ; preds = %if.then
  br label %do.body4

do.body4:                                         ; preds = %if.then3
  br label %do.end5

do.end5:                                          ; preds = %do.body4
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end6

if.end6:                                          ; preds = %if.end, %do.end2
  br label %while.cond

while.cond:                                       ; preds = %if.end24, %if.end6
  %2 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %eType7 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %2, i32 0, i32 0
  %3 = load i32, i32* %eType7, align 8
  %cmp8 = icmp eq i32 %3, 32
  br i1 %cmp8, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call9 = call zeroext i1 @cxxParserParseNextToken()
  br i1 %call9, label %if.end13, label %if.then10

if.then10:                                        ; preds = %while.body
  br label %do.body11

do.body11:                                        ; preds = %if.then10
  br label %do.end12

do.end12:                                         ; preds = %do.body11
  store i1 false, i1* %retval, align 1
  br label %return

if.end13:                                         ; preds = %while.body
  %4 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %eType14 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %4, i32 0, i32 0
  %5 = load i32, i32* %eType14, align 8
  %cmp15 = icmp eq i32 %5, 2
  br i1 %cmp15, label %if.end19, label %if.then16

if.then16:                                        ; preds = %if.end13
  br label %do.body17

do.body17:                                        ; preds = %if.then16
  br label %do.end18

do.end18:                                         ; preds = %do.body17
  store i1 false, i1* %retval, align 1
  br label %return

if.end19:                                         ; preds = %if.end13
  %call20 = call zeroext i1 @cxxParserParseNextToken()
  br i1 %call20, label %if.end24, label %if.then21

if.then21:                                        ; preds = %if.end19
  br label %do.body22

do.body22:                                        ; preds = %if.then21
  br label %do.end23

do.end23:                                         ; preds = %do.body22
  store i1 false, i1* %retval, align 1
  br label %return

if.end24:                                         ; preds = %if.end19
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.body25

do.body25:                                        ; preds = %while.end
  br label %do.end26

do.end26:                                         ; preds = %do.body25
  br label %do.body27

do.body27:                                        ; preds = %do.end26
  br label %do.end28

do.end28:                                         ; preds = %do.body27
  br label %do.body29

do.body29:                                        ; preds = %do.end28
  br label %do.end30

do.end30:                                         ; preds = %do.body29
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %do.end30, %do.end23, %do.end18, %do.end12, %do.end5
  %6 = load i1, i1* %retval, align 1
  ret i1 %6
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @cxxParserMarkEndLineForTagInCorkQueue(i32 %iCorkQueueIndex) #0 {
entry:
  %iCorkQueueIndex.addr = alloca i32, align 4
  %tag = alloca %struct.sTagEntryInfo*, align 8
  store i32 %iCorkQueueIndex, i32* %iCorkQueueIndex.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load i32, i32* %iCorkQueueIndex.addr, align 4
  %call = call %struct.sTagEntryInfo* @getEntryInCorkQueue(i32 %0)
  store %struct.sTagEntryInfo* %call, %struct.sTagEntryInfo** %tag, align 8
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  %call3 = call i64 @getInputLineNumber()
  %1 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag, align 8
  %extensionFields = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %1, i32 0, i32 11
  %endLine = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields, i32 0, i32 11
  store i64 %call3, i64* %endLine, align 8
  ret void
}

declare %struct.sTagEntryInfo* @getEntryInCorkQueue(i32) #1

declare i64 @getInputLineNumber() #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @cxxParserParseEnum() #0 {
entry:
  %retval = alloca i1, align 1
  %uInitialKeywordState = alloca i32, align 4
  %iInitialTokenCount = alloca i32, align 4
  %pLastToken = alloca %struct._CXXToken*, align 8
  %bIsScopedEnum = alloca i8, align 1
  %pEnumName = alloca %struct._CXXToken*, align 8
  %pTypeBegin = alloca %struct._CXXToken*, align 8
  %pTypeEnd = alloca %struct._CXXToken*, align 8
  %iPushedScopes = alloca i32, align 4
  %pNamespaceBegin = alloca %struct._CXXToken*, align 8
  %pPrev104 = alloca %struct._CXXToken*, align 8
  %pNext123 = alloca %struct._CXXToken*, align 8
  %tag = alloca %struct.sTagEntryInfo*, align 8
  %iCorkQueueIndex = alloca i32, align 4
  %pTypeName = alloca %struct._CXXToken*, align 8
  %pszProperties = alloca %struct.sVString*, align 8
  %pScopeName = alloca %struct.sVString*, align 8
  %pFirst = alloca %struct._CXXToken*, align 8
  %bRet = alloca i8, align 1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 13), align 4
  store i32 %0, i32* %uInitialKeywordState, align 4
  %1 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %iCount = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %1, i32 0, i32 2
  %2 = load i32, i32* %iCount, align 8
  store i32 %2, i32* %iInitialTokenCount, align 4
  %3 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %tobool = icmp ne %struct._CXXTokenChain* %3, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end
  %4 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %pTail = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %4, i32 0, i32 1
  %5 = load %struct._CXXToken*, %struct._CXXToken** %pTail, align 8
  br label %cond.end

cond.false:                                       ; preds = %do.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._CXXToken* [ %5, %cond.true ], [ null, %cond.false ]
  store %struct._CXXToken* %cond, %struct._CXXToken** %pLastToken, align 8
  %call = call zeroext i1 @cxxParserParseUpToOneOf(i32 268959829, i1 zeroext false)
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end
  br label %do.body1

do.body1:                                         ; preds = %if.then
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %cond.end
  store i8 0, i8* %bIsScopedEnum, align 1
  %6 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %eType = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %6, i32 0, i32 0
  %7 = load i32, i32* %eType, align 8
  %cmp = icmp eq i32 %7, 4
  br i1 %cmp, label %if.then3, label %if.end14

if.then3:                                         ; preds = %if.end
  %8 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %eKeyword = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %8, i32 0, i32 2
  %9 = load i32, i32* %eKeyword, align 8
  %cmp4 = icmp eq i32 %9, 76
  br i1 %cmp4, label %if.then7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then3
  %10 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %eKeyword5 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %10, i32 0, i32 2
  %11 = load i32, i32* %eKeyword5, align 8
  %cmp6 = icmp eq i32 %11, 29
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %lor.lhs.false, %if.then3
  store i8 1, i8* %bIsScopedEnum, align 1
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %lor.lhs.false
  %call9 = call zeroext i1 @cxxParserParseUpToOneOf(i32 268959825, i1 zeroext false)
  br i1 %call9, label %if.end13, label %if.then10

if.then10:                                        ; preds = %if.end8
  br label %do.body11

do.body11:                                        ; preds = %if.then10
  br label %do.end12

do.end12:                                         ; preds = %do.body11
  store i1 false, i1* %retval, align 1
  br label %return

if.end13:                                         ; preds = %if.end8
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.end
  %12 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %eType15 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %12, i32 0, i32 0
  %13 = load i32, i32* %eType15, align 8
  %cmp16 = icmp eq i32 %13, 1
  br i1 %cmp16, label %if.then17, label %if.end20

if.then17:                                        ; preds = %if.end14
  call void @cxxParserNewStatement()
  br label %do.body18

do.body18:                                        ; preds = %if.then17
  br label %do.end19

do.end19:                                         ; preds = %do.body18
  store i1 true, i1* %retval, align 1
  br label %return

if.end20:                                         ; preds = %if.end14
  %14 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %eType21 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %14, i32 0, i32 0
  %15 = load i32, i32* %eType21, align 8
  %cmp22 = icmp eq i32 %15, 268435456
  br i1 %cmp22, label %if.then23, label %if.end32

if.then23:                                        ; preds = %if.end20
  %16 = load i32, i32* %uInitialKeywordState, align 4
  %and = and i32 %16, 1
  %tobool24 = icmp ne i32 %and, 0
  br i1 %tobool24, label %if.then25, label %if.end29

if.then25:                                        ; preds = %if.then23
  br label %do.body26

do.body26:                                        ; preds = %if.then25
  br label %do.end27

do.end27:                                         ; preds = %do.body26
  %call28 = call zeroext i1 @cxxParserParseGenericTypedef()
  store i1 %call28, i1* %retval, align 1
  br label %return

if.end29:                                         ; preds = %if.then23
  br label %do.body30

do.body30:                                        ; preds = %if.end29
  br label %do.end31

do.end31:                                         ; preds = %do.body30
  store i1 true, i1* %retval, align 1
  br label %return

if.end32:                                         ; preds = %if.end20
  %17 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %eType33 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %17, i32 0, i32 0
  %18 = load i32, i32* %eType33, align 8
  %cmp34 = icmp eq i32 %18, 64
  br i1 %cmp34, label %land.lhs.true, label %if.end52

land.lhs.true:                                    ; preds = %if.end32
  %19 = load i32, i32* %iInitialTokenCount, align 4
  %cmp35 = icmp sgt i32 %19, 3
  br i1 %cmp35, label %land.lhs.true36, label %if.end52

land.lhs.true36:                                  ; preds = %land.lhs.true
  %20 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 0), align 8
  %cmp37 = icmp eq i32 %20, 1
  br i1 %cmp37, label %land.lhs.true38, label %if.end52

land.lhs.true38:                                  ; preds = %land.lhs.true36
  %call39 = call zeroext i1 @cxxScopeIsGlobal()
  br i1 %call39, label %land.lhs.true40, label %if.end52

land.lhs.true40:                                  ; preds = %land.lhs.true38
  %21 = load i32, i32* %uInitialKeywordState, align 4
  %and41 = and i32 %21, 1
  %tobool42 = icmp ne i32 %and41, 0
  br i1 %tobool42, label %if.end52, label %if.then43

if.then43:                                        ; preds = %land.lhs.true40
  br label %do.body44

do.body44:                                        ; preds = %if.then43
  br label %do.end45

do.end45:                                         ; preds = %do.body44
  %call46 = call i32 @cxxParserMaybeParseKnRStyleFunctionDefinition()
  switch i32 %call46, label %sw.default [
    i32 1, label %sw.bb
    i32 0, label %sw.bb49
  ]

sw.bb:                                            ; preds = %do.end45
  br label %do.body47

do.body47:                                        ; preds = %sw.bb
  br label %do.end48

do.end48:                                         ; preds = %do.body47
  store i1 true, i1* %retval, align 1
  br label %return

sw.bb49:                                          ; preds = %do.end45
  br label %sw.epilog

sw.default:                                       ; preds = %do.end45
  br label %do.body50

do.body50:                                        ; preds = %sw.default
  br label %do.end51

do.end51:                                         ; preds = %do.body50
  store i1 false, i1* %retval, align 1
  br label %return

sw.epilog:                                        ; preds = %sw.bb49
  br label %if.end52

if.end52:                                         ; preds = %sw.epilog, %land.lhs.true40, %land.lhs.true38, %land.lhs.true36, %land.lhs.true, %if.end32
  %22 = load i32, i32* %iInitialTokenCount, align 4
  %cmp53 = icmp sgt i32 %22, 1
  br i1 %cmp53, label %if.then54, label %if.end55

if.then54:                                        ; preds = %if.end52
  %23 = load %struct._CXXToken*, %struct._CXXToken** %pLastToken, align 8
  call void @cxxParserCleanupEnumStructClassOrUnionPrefixChain(i32 42, %struct._CXXToken* %23)
  br label %if.end55

if.end55:                                         ; preds = %if.then54, %if.end52
  %24 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %eType56 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %24, i32 0, i32 0
  %25 = load i32, i32* %eType56, align 8
  %cmp57 = icmp eq i32 %25, 64
  br i1 %cmp57, label %if.then58, label %if.end74

if.then58:                                        ; preds = %if.end55
  br label %do.body59

do.body59:                                        ; preds = %if.then58
  br label %do.end60

do.end60:                                         ; preds = %do.body59
  %26 = load i8, i8* %bIsScopedEnum, align 1
  %tobool61 = trunc i8 %26 to i1
  br i1 %tobool61, label %if.end71, label %land.lhs.true62

land.lhs.true62:                                  ; preds = %do.end60
  %27 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %iCount63 = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %27, i32 0, i32 2
  %28 = load i32, i32* %iCount63, align 8
  %cmp64 = icmp sgt i32 %28, 3
  br i1 %cmp64, label %if.then65, label %if.end71

if.then65:                                        ; preds = %land.lhs.true62
  %29 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 13), align 4
  %and66 = and i32 %29, 1
  %tobool67 = icmp ne i32 %and66, 0
  br i1 %tobool67, label %if.then68, label %if.else

if.then68:                                        ; preds = %if.then65
  %30 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  call void @cxxParserExtractTypedef(%struct._CXXTokenChain* %30, i1 zeroext true)
  br label %if.end70

if.else:                                          ; preds = %if.then65
  %31 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %call69 = call zeroext i1 @cxxParserExtractVariableDeclarations(%struct._CXXTokenChain* %31, i32 0)
  br label %if.end70

if.end70:                                         ; preds = %if.else, %if.then68
  br label %if.end71

if.end71:                                         ; preds = %if.end70, %land.lhs.true62, %do.end60
  call void @cxxParserNewStatement()
  br label %do.body72

do.body72:                                        ; preds = %if.end71
  br label %do.end73

do.end73:                                         ; preds = %do.body72
  store i1 true, i1* %retval, align 1
  br label %return

if.end74:                                         ; preds = %if.end55
  br label %do.body75

do.body75:                                        ; preds = %if.end74
  br label %do.end76

do.end76:                                         ; preds = %do.body75
  %32 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %call77 = call %struct._CXXToken* @cxxTokenChainLastTokenOfType(%struct._CXXTokenChain* %32, i32 2)
  store %struct._CXXToken* %call77, %struct._CXXToken** %pEnumName, align 8
  store %struct._CXXToken* null, %struct._CXXToken** %pTypeEnd, align 8
  %33 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %eType78 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %33, i32 0, i32 0
  %34 = load i32, i32* %eType78, align 8
  %cmp79 = icmp eq i32 %34, 16
  br i1 %cmp79, label %if.then80, label %if.end99

if.then80:                                        ; preds = %do.end76
  br label %do.body81

do.body81:                                        ; preds = %if.then80
  br label %do.end82

do.end82:                                         ; preds = %do.body81
  %35 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  store %struct._CXXToken* %35, %struct._CXXToken** %pTypeBegin, align 8
  %call83 = call zeroext i1 @cxxParserParseUpToOneOf(i32 524353, i1 zeroext false)
  br i1 %call83, label %if.end87, label %if.then84

if.then84:                                        ; preds = %do.end82
  br label %do.body85

do.body85:                                        ; preds = %if.then84
  br label %do.end86

do.end86:                                         ; preds = %do.body85
  store i1 false, i1* %retval, align 1
  br label %return

if.end87:                                         ; preds = %do.end82
  %36 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %eType88 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %36, i32 0, i32 0
  %37 = load i32, i32* %eType88, align 8
  %and89 = and i32 %37, 65
  %tobool90 = icmp ne i32 %and89, 0
  br i1 %tobool90, label %if.then91, label %if.end94

if.then91:                                        ; preds = %if.end87
  call void @cxxParserNewStatement()
  br label %do.body92

do.body92:                                        ; preds = %if.then91
  br label %do.end93

do.end93:                                         ; preds = %do.body92
  store i1 true, i1* %retval, align 1
  br label %return

if.end94:                                         ; preds = %if.end87
  %38 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %pPrev = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %38, i32 0, i32 8
  %39 = load %struct._CXXToken*, %struct._CXXToken** %pPrev, align 8
  %40 = load %struct._CXXToken*, %struct._CXXToken** %pTypeBegin, align 8
  %cmp95 = icmp ne %struct._CXXToken* %39, %40
  br i1 %cmp95, label %if.then96, label %if.end98

if.then96:                                        ; preds = %if.end94
  %41 = load %struct._CXXToken*, %struct._CXXToken** %pTypeBegin, align 8
  %pNext = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %41, i32 0, i32 7
  %42 = load %struct._CXXToken*, %struct._CXXToken** %pNext, align 8
  store %struct._CXXToken* %42, %struct._CXXToken** %pTypeBegin, align 8
  %43 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %pPrev97 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %43, i32 0, i32 8
  %44 = load %struct._CXXToken*, %struct._CXXToken** %pPrev97, align 8
  store %struct._CXXToken* %44, %struct._CXXToken** %pTypeEnd, align 8
  br label %if.end98

if.end98:                                         ; preds = %if.then96, %if.end94
  br label %if.end99

if.end99:                                         ; preds = %if.end98, %do.end76
  store i32 0, i32* %iPushedScopes, align 4
  %45 = load %struct._CXXToken*, %struct._CXXToken** %pEnumName, align 8
  %tobool100 = icmp ne %struct._CXXToken* %45, null
  br i1 %tobool100, label %if.then101, label %if.else134

if.then101:                                       ; preds = %if.end99
  %46 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 0), align 8
  %cmp102 = icmp eq i32 %46, 2
  br i1 %cmp102, label %if.then103, label %if.end131

if.then103:                                       ; preds = %if.then101
  %47 = load %struct._CXXToken*, %struct._CXXToken** %pEnumName, align 8
  store %struct._CXXToken* %47, %struct._CXXToken** %pNamespaceBegin, align 8
  %48 = load %struct._CXXToken*, %struct._CXXToken** %pEnumName, align 8
  %pPrev105 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %48, i32 0, i32 8
  %49 = load %struct._CXXToken*, %struct._CXXToken** %pPrev105, align 8
  store %struct._CXXToken* %49, %struct._CXXToken** %pPrev104, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end118, %if.then103
  %50 = load %struct._CXXToken*, %struct._CXXToken** %pPrev104, align 8
  %tobool106 = icmp ne %struct._CXXToken* %50, null
  br i1 %tobool106, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %51 = load %struct._CXXToken*, %struct._CXXToken** %pPrev104, align 8
  %eType107 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %51, i32 0, i32 0
  %52 = load i32, i32* %eType107, align 8
  %cmp108 = icmp eq i32 %52, 32
  br i1 %cmp108, label %if.end110, label %if.then109

if.then109:                                       ; preds = %while.body
  br label %while.end

if.end110:                                        ; preds = %while.body
  %53 = load %struct._CXXToken*, %struct._CXXToken** %pPrev104, align 8
  %pPrev111 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %53, i32 0, i32 8
  %54 = load %struct._CXXToken*, %struct._CXXToken** %pPrev111, align 8
  store %struct._CXXToken* %54, %struct._CXXToken** %pPrev104, align 8
  %55 = load %struct._CXXToken*, %struct._CXXToken** %pPrev104, align 8
  %tobool112 = icmp ne %struct._CXXToken* %55, null
  br i1 %tobool112, label %if.end114, label %if.then113

if.then113:                                       ; preds = %if.end110
  br label %while.end

if.end114:                                        ; preds = %if.end110
  %56 = load %struct._CXXToken*, %struct._CXXToken** %pPrev104, align 8
  %eType115 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %56, i32 0, i32 0
  %57 = load i32, i32* %eType115, align 8
  %cmp116 = icmp eq i32 %57, 2
  br i1 %cmp116, label %if.end118, label %if.then117

if.then117:                                       ; preds = %if.end114
  br label %while.end

if.end118:                                        ; preds = %if.end114
  %58 = load %struct._CXXToken*, %struct._CXXToken** %pPrev104, align 8
  store %struct._CXXToken* %58, %struct._CXXToken** %pNamespaceBegin, align 8
  %59 = load %struct._CXXToken*, %struct._CXXToken** %pPrev104, align 8
  %pPrev119 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %59, i32 0, i32 8
  %60 = load %struct._CXXToken*, %struct._CXXToken** %pPrev119, align 8
  store %struct._CXXToken* %60, %struct._CXXToken** %pPrev104, align 8
  br label %while.cond

while.end:                                        ; preds = %if.then117, %if.then113, %if.then109, %while.cond
  br label %while.cond120

while.cond120:                                    ; preds = %if.end128, %while.end
  %61 = load %struct._CXXToken*, %struct._CXXToken** %pNamespaceBegin, align 8
  %62 = load %struct._CXXToken*, %struct._CXXToken** %pEnumName, align 8
  %cmp121 = icmp ne %struct._CXXToken* %61, %62
  br i1 %cmp121, label %while.body122, label %while.end130

while.body122:                                    ; preds = %while.cond120
  %63 = load %struct._CXXToken*, %struct._CXXToken** %pNamespaceBegin, align 8
  %pNext124 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %63, i32 0, i32 7
  %64 = load %struct._CXXToken*, %struct._CXXToken** %pNext124, align 8
  store %struct._CXXToken* %64, %struct._CXXToken** %pNext123, align 8
  %65 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %66 = load %struct._CXXToken*, %struct._CXXToken** %pNamespaceBegin, align 8
  call void @cxxTokenChainTake(%struct._CXXTokenChain* %65, %struct._CXXToken* %66)
  %67 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 0), align 8
  %cmp125 = icmp eq i32 %67, 2
  br i1 %cmp125, label %if.then126, label %if.else127

if.then126:                                       ; preds = %while.body122
  %68 = load %struct._CXXToken*, %struct._CXXToken** %pNamespaceBegin, align 8
  call void @cxxScopePush(%struct._CXXToken* %68, i32 2, i32 0)
  br label %if.end128

if.else127:                                       ; preds = %while.body122
  br label %if.end128

if.end128:                                        ; preds = %if.else127, %if.then126
  %69 = load i32, i32* %iPushedScopes, align 4
  %inc = add nsw i32 %69, 1
  store i32 %inc, i32* %iPushedScopes, align 4
  %70 = load %struct._CXXToken*, %struct._CXXToken** %pNext123, align 8
  %pNext129 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %70, i32 0, i32 7
  %71 = load %struct._CXXToken*, %struct._CXXToken** %pNext129, align 8
  store %struct._CXXToken* %71, %struct._CXXToken** %pNamespaceBegin, align 8
  br label %while.cond120

while.end130:                                     ; preds = %while.cond120
  br label %if.end131

if.end131:                                        ; preds = %while.end130, %if.then101
  br label %do.body132

do.body132:                                       ; preds = %if.end131
  br label %do.end133

do.end133:                                        ; preds = %do.body132
  %72 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %73 = load %struct._CXXToken*, %struct._CXXToken** %pEnumName, align 8
  call void @cxxTokenChainTake(%struct._CXXTokenChain* %72, %struct._CXXToken* %73)
  br label %if.end138

if.else134:                                       ; preds = %if.end99
  %call135 = call %struct._CXXToken* @cxxTokenCreateAnonymousIdentifier(i32 3)
  store %struct._CXXToken* %call135, %struct._CXXToken** %pEnumName, align 8
  br label %do.body136

do.body136:                                       ; preds = %if.else134
  br label %do.end137

do.end137:                                        ; preds = %do.body136
  br label %if.end138

if.end138:                                        ; preds = %do.end137, %do.end133
  %74 = load %struct._CXXToken*, %struct._CXXToken** %pEnumName, align 8
  %call139 = call %struct.sTagEntryInfo* @cxxTagBegin(i32 3, %struct._CXXToken* %74)
  store %struct.sTagEntryInfo* %call139, %struct.sTagEntryInfo** %tag, align 8
  store i32 0, i32* %iCorkQueueIndex, align 4
  %75 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag, align 8
  %tobool140 = icmp ne %struct.sTagEntryInfo* %75, null
  br i1 %tobool140, label %if.then141, label %if.end160

if.then141:                                       ; preds = %if.end138
  %call142 = call zeroext i1 @isInputHeaderFile()
  %lnot = xor i1 %call142, true
  %lnot.ext = zext i1 %lnot to i32
  %76 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag, align 8
  %77 = bitcast %struct.sTagEntryInfo* %76 to i8*
  %78 = trunc i32 %lnot.ext to i8
  %bf.load = load i8, i8* %77, align 8
  %bf.value = and i8 %78, 1
  %bf.shl = shl i8 %bf.value, 1
  %bf.clear = and i8 %bf.load, -3
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, i8* %77, align 8
  %bf.result.cast = zext i8 %bf.value to i32
  store %struct._CXXToken* null, %struct._CXXToken** %pTypeName, align 8
  store %struct.sVString* null, %struct.sVString** %pszProperties, align 8
  %79 = load %struct._CXXToken*, %struct._CXXToken** %pTypeEnd, align 8
  %tobool143 = icmp ne %struct._CXXToken* %79, null
  br i1 %tobool143, label %if.then144, label %if.end148

if.then144:                                       ; preds = %if.then141
  br label %do.body145

do.body145:                                       ; preds = %if.then144
  br label %do.end146

do.end146:                                        ; preds = %do.body145
  %80 = load %struct._CXXToken*, %struct._CXXToken** %pTypeBegin, align 8
  %81 = load %struct._CXXToken*, %struct._CXXToken** %pTypeEnd, align 8
  %call147 = call %struct._CXXToken* @cxxTagCheckAndSetTypeField(%struct._CXXToken* %80, %struct._CXXToken* %81)
  store %struct._CXXToken* %call147, %struct._CXXToken** %pTypeName, align 8
  br label %if.end148

if.end148:                                        ; preds = %do.end146, %if.then141
  %82 = load i8, i8* %bIsScopedEnum, align 1
  %tobool149 = trunc i8 %82 to i1
  br i1 %tobool149, label %if.then150, label %if.end152

if.then150:                                       ; preds = %if.end148
  %call151 = call %struct.sVString* @cxxTagSetProperties(i32 65536)
  store %struct.sVString* %call151, %struct.sVString** %pszProperties, align 8
  br label %if.end152

if.end152:                                        ; preds = %if.then150, %if.end148
  %call153 = call i32 @cxxTagCommit()
  store i32 %call153, i32* %iCorkQueueIndex, align 4
  %83 = load %struct.sVString*, %struct.sVString** %pszProperties, align 8
  %tobool154 = icmp ne %struct.sVString* %83, null
  br i1 %tobool154, label %if.then155, label %if.end156

if.then155:                                       ; preds = %if.end152
  %84 = load %struct.sVString*, %struct.sVString** %pszProperties, align 8
  call void @vStringDelete(%struct.sVString* %84)
  br label %if.end156

if.end156:                                        ; preds = %if.then155, %if.end152
  %85 = load %struct._CXXToken*, %struct._CXXToken** %pTypeName, align 8
  %tobool157 = icmp ne %struct._CXXToken* %85, null
  br i1 %tobool157, label %if.then158, label %if.end159

if.then158:                                       ; preds = %if.end156
  %86 = load %struct._CXXToken*, %struct._CXXToken** %pTypeName, align 8
  call void @cxxTokenDestroy(%struct._CXXToken* %86)
  br label %if.end159

if.end159:                                        ; preds = %if.then158, %if.end156
  br label %if.end160

if.end160:                                        ; preds = %if.end159, %if.end138
  %87 = load %struct._CXXToken*, %struct._CXXToken** %pEnumName, align 8
  call void @cxxScopePush(%struct._CXXToken* %87, i32 3, i32 1)
  %88 = load i32, i32* %iPushedScopes, align 4
  %inc161 = add nsw i32 %88, 1
  store i32 %inc161, i32* %iPushedScopes, align 4
  %call162 = call %struct.sVString* @cxxScopeGetFullNameAsString()
  store %struct.sVString* %call162, %struct.sVString** %pScopeName, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end201, %if.end160
  %89 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  call void @cxxTokenChainClear(%struct._CXXTokenChain* %89)
  %call163 = call zeroext i1 @cxxParserParseUpToOneOf(i32 8388737, i1 zeroext false)
  br i1 %call163, label %if.end170, label %if.then164

if.then164:                                       ; preds = %for.cond
  br label %do.body165

do.body165:                                       ; preds = %if.then164
  br label %do.end166

do.end166:                                        ; preds = %do.body165
  %90 = load %struct.sVString*, %struct.sVString** %pScopeName, align 8
  %tobool167 = icmp ne %struct.sVString* %90, null
  br i1 %tobool167, label %if.then168, label %if.end169

if.then168:                                       ; preds = %do.end166
  %91 = load %struct.sVString*, %struct.sVString** %pScopeName, align 8
  call void @vStringDelete(%struct.sVString* %91)
  br label %if.end169

if.end169:                                        ; preds = %if.then168, %do.end166
  store i1 false, i1* %retval, align 1
  br label %return

if.end170:                                        ; preds = %for.cond
  %92 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %tobool171 = icmp ne %struct._CXXTokenChain* %92, null
  br i1 %tobool171, label %cond.true172, label %cond.false173

cond.true172:                                     ; preds = %if.end170
  %93 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %pHead = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %93, i32 0, i32 0
  %94 = load %struct._CXXToken*, %struct._CXXToken** %pHead, align 8
  br label %cond.end174

cond.false173:                                    ; preds = %if.end170
  br label %cond.end174

cond.end174:                                      ; preds = %cond.false173, %cond.true172
  %cond175 = phi %struct._CXXToken* [ %94, %cond.true172 ], [ null, %cond.false173 ]
  store %struct._CXXToken* %cond175, %struct._CXXToken** %pFirst, align 8
  %95 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %iCount176 = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %95, i32 0, i32 2
  %96 = load i32, i32* %iCount176, align 8
  %cmp177 = icmp sgt i32 %96, 1
  br i1 %cmp177, label %land.lhs.true178, label %if.end196

land.lhs.true178:                                 ; preds = %cond.end174
  %97 = load %struct._CXXToken*, %struct._CXXToken** %pFirst, align 8
  %eType179 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %97, i32 0, i32 0
  %98 = load i32, i32* %eType179, align 8
  %cmp180 = icmp eq i32 %98, 2
  br i1 %cmp180, label %if.then181, label %if.end196

if.then181:                                       ; preds = %land.lhs.true178
  %99 = load %struct._CXXToken*, %struct._CXXToken** %pFirst, align 8
  %call182 = call %struct.sTagEntryInfo* @cxxTagBegin(i32 1, %struct._CXXToken* %99)
  store %struct.sTagEntryInfo* %call182, %struct.sTagEntryInfo** %tag, align 8
  %100 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag, align 8
  %tobool183 = icmp ne %struct.sTagEntryInfo* %100, null
  br i1 %tobool183, label %if.then184, label %if.end195

if.then184:                                       ; preds = %if.then181
  %call185 = call zeroext i1 @isInputHeaderFile()
  %lnot186 = xor i1 %call185, true
  %lnot.ext187 = zext i1 %lnot186 to i32
  %101 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag, align 8
  %102 = bitcast %struct.sTagEntryInfo* %101 to i8*
  %103 = trunc i32 %lnot.ext187 to i8
  %bf.load188 = load i8, i8* %102, align 8
  %bf.value189 = and i8 %103, 1
  %bf.shl190 = shl i8 %bf.value189, 1
  %bf.clear191 = and i8 %bf.load188, -3
  %bf.set192 = or i8 %bf.clear191, %bf.shl190
  store i8 %bf.set192, i8* %102, align 8
  %bf.result.cast193 = zext i8 %bf.value189 to i32
  %call194 = call i32 @cxxTagCommit()
  br label %if.end195

if.end195:                                        ; preds = %if.then184, %if.then181
  br label %if.end196

if.end196:                                        ; preds = %if.end195, %land.lhs.true178, %cond.end174
  %104 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %eType197 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %104, i32 0, i32 0
  %105 = load i32, i32* %eType197, align 8
  %and198 = and i32 %105, 8388609
  %tobool199 = icmp ne i32 %and198, 0
  br i1 %tobool199, label %if.then200, label %if.end201

if.then200:                                       ; preds = %if.end196
  br label %for.end

if.end201:                                        ; preds = %if.end196
  br label %for.cond

for.end:                                          ; preds = %if.then200
  %106 = load i32, i32* %iCorkQueueIndex, align 4
  %cmp202 = icmp sgt i32 %106, 0
  br i1 %cmp202, label %if.then203, label %if.end204

if.then203:                                       ; preds = %for.end
  %107 = load i32, i32* %iCorkQueueIndex, align 4
  call void @cxxParserMarkEndLineForTagInCorkQueue(i32 %107)
  br label %if.end204

if.end204:                                        ; preds = %if.then203, %for.end
  br label %while.cond205

while.cond205:                                    ; preds = %while.body207, %if.end204
  %108 = load i32, i32* %iPushedScopes, align 4
  %cmp206 = icmp sgt i32 %108, 0
  br i1 %cmp206, label %while.body207, label %while.end208

while.body207:                                    ; preds = %while.cond205
  call void @cxxScopePop()
  %109 = load i32, i32* %iPushedScopes, align 4
  %dec = add nsw i32 %109, -1
  store i32 %dec, i32* %iPushedScopes, align 4
  br label %while.cond205

while.end208:                                     ; preds = %while.cond205
  %110 = load i32, i32* %uInitialKeywordState, align 4
  %111 = load %struct.sVString*, %struct.sVString** %pScopeName, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %111, i32 0, i32 2
  %112 = load i8*, i8** %buffer, align 8
  %call209 = call zeroext i1 @cxxParserParseEnumStructClassOrUnionFullDeclarationTrailer(i32 %110, i32 42, i8* %112)
  %frombool = zext i1 %call209 to i8
  store i8 %frombool, i8* %bRet, align 1
  %113 = load %struct.sVString*, %struct.sVString** %pScopeName, align 8
  %tobool210 = icmp ne %struct.sVString* %113, null
  br i1 %tobool210, label %if.then211, label %if.end212

if.then211:                                       ; preds = %while.end208
  %114 = load %struct.sVString*, %struct.sVString** %pScopeName, align 8
  call void @vStringDelete(%struct.sVString* %114)
  br label %if.end212

if.end212:                                        ; preds = %if.then211, %while.end208
  call void @cxxParserNewStatement()
  br label %do.body213

do.body213:                                       ; preds = %if.end212
  br label %do.end214

do.end214:                                        ; preds = %do.body213
  %115 = load i8, i8* %bRet, align 1
  %tobool215 = trunc i8 %115 to i1
  store i1 %tobool215, i1* %retval, align 1
  br label %return

return:                                           ; preds = %do.end214, %if.end169, %do.end93, %do.end86, %do.end73, %do.end51, %do.end48, %do.end31, %do.end27, %do.end19, %do.end12, %do.end2
  %116 = load i1, i1* %retval, align 1
  ret i1 %116
}

declare zeroext i1 @cxxParserParseGenericTypedef() #1

declare zeroext i1 @cxxScopeIsGlobal() #1

declare i32 @cxxParserMaybeParseKnRStyleFunctionDefinition() #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @cxxParserCleanupEnumStructClassOrUnionPrefixChain(i32 %eKeyword, %struct._CXXToken* %pLastToken) #0 {
entry:
  %eKeyword.addr = alloca i32, align 4
  %pLastToken.addr = alloca %struct._CXXToken*, align 8
  %pToken = alloca %struct._CXXToken*, align 8
  %pPrev = alloca %struct._CXXToken*, align 8
  store i32 %eKeyword, i32* %eKeyword.addr, align 4
  store %struct._CXXToken* %pLastToken, %struct._CXXToken** %pLastToken.addr, align 8
  %0 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %tobool = icmp ne %struct._CXXTokenChain* %0, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %pHead = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %1, i32 0, i32 0
  %2 = load %struct._CXXToken*, %struct._CXXToken** %pHead, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._CXXToken* [ %2, %cond.true ], [ null, %cond.false ]
  store %struct._CXXToken* %cond, %struct._CXXToken** %pToken, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end21, %cond.end
  %3 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %tobool1 = icmp ne %struct._CXXToken* %3, null
  br i1 %tobool1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %4 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %5 = load %struct._CXXToken*, %struct._CXXToken** %pLastToken.addr, align 8
  %cmp = icmp ne %struct._CXXToken* %4, %5
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %7 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %eType = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %7, i32 0, i32 0
  %8 = load i32, i32* %eType, align 8
  %cmp2 = icmp eq i32 %8, 4
  br i1 %cmp2, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %while.body
  %9 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %eKeyword3 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %9, i32 0, i32 2
  %10 = load i32, i32* %eKeyword3, align 8
  %11 = load i32, i32* %eKeyword.addr, align 4
  %cmp4 = icmp eq i32 %10, %11
  br i1 %cmp4, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %12 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %eKeyword5 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %12, i32 0, i32 2
  %13 = load i32, i32* %eKeyword5, align 8
  %cmp6 = icmp eq i32 %13, 31
  br i1 %cmp6, label %if.then, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %14 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %eKeyword8 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %14, i32 0, i32 2
  %15 = load i32, i32* %eKeyword8, align 8
  %cmp9 = icmp eq i32 %15, 92
  br i1 %cmp9, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false7, %lor.lhs.false, %land.lhs.true
  %16 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %pNext = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %16, i32 0, i32 7
  %17 = load %struct._CXXToken*, %struct._CXXToken** %pNext, align 8
  store %struct._CXXToken* %17, %struct._CXXToken** %pToken, align 8
  br label %if.end21

if.else:                                          ; preds = %lor.lhs.false7, %while.body
  %18 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %pPrev10 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %18, i32 0, i32 8
  %19 = load %struct._CXXToken*, %struct._CXXToken** %pPrev10, align 8
  store %struct._CXXToken* %19, %struct._CXXToken** %pPrev, align 8
  %20 = load %struct._CXXToken*, %struct._CXXToken** %pPrev, align 8
  %tobool11 = icmp ne %struct._CXXToken* %20, null
  br i1 %tobool11, label %if.then12, label %if.else14

if.then12:                                        ; preds = %if.else
  %21 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %22 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  call void @cxxTokenChainTake(%struct._CXXTokenChain* %21, %struct._CXXToken* %22)
  %23 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  call void @cxxTokenDestroy(%struct._CXXToken* %23)
  %24 = load %struct._CXXToken*, %struct._CXXToken** %pPrev, align 8
  %pNext13 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %24, i32 0, i32 7
  %25 = load %struct._CXXToken*, %struct._CXXToken** %pNext13, align 8
  store %struct._CXXToken* %25, %struct._CXXToken** %pToken, align 8
  br label %if.end

if.else14:                                        ; preds = %if.else
  %26 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %call = call %struct._CXXToken* @cxxTokenChainTakeFirst(%struct._CXXTokenChain* %26)
  call void @cxxTokenDestroy(%struct._CXXToken* %call)
  %27 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %tobool15 = icmp ne %struct._CXXTokenChain* %27, null
  br i1 %tobool15, label %cond.true16, label %cond.false18

cond.true16:                                      ; preds = %if.else14
  %28 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %pHead17 = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %28, i32 0, i32 0
  %29 = load %struct._CXXToken*, %struct._CXXToken** %pHead17, align 8
  br label %cond.end19

cond.false18:                                     ; preds = %if.else14
  br label %cond.end19

cond.end19:                                       ; preds = %cond.false18, %cond.true16
  %cond20 = phi %struct._CXXToken* [ %29, %cond.true16 ], [ null, %cond.false18 ]
  store %struct._CXXToken* %cond20, %struct._CXXToken** %pToken, align 8
  br label %if.end

if.end:                                           ; preds = %cond.end19, %if.then12
  br label %if.end21

if.end21:                                         ; preds = %if.end, %if.then
  br label %while.cond

while.end:                                        ; preds = %land.end
  ret void
}

declare void @cxxParserExtractTypedef(%struct._CXXTokenChain*, i1 zeroext) #1

declare zeroext i1 @cxxParserExtractVariableDeclarations(%struct._CXXTokenChain*, i32) #1

declare %struct._CXXToken* @cxxTokenChainLastTokenOfType(%struct._CXXTokenChain*, i32) #1

declare void @cxxTokenChainTake(%struct._CXXTokenChain*, %struct._CXXToken*) #1

declare void @cxxScopePush(%struct._CXXToken*, i32, i32) #1

declare %struct._CXXToken* @cxxTokenCreateAnonymousIdentifier(i32) #1

declare %struct.sTagEntryInfo* @cxxTagBegin(i32, %struct._CXXToken*) #1

declare zeroext i1 @isInputHeaderFile() #1

declare %struct._CXXToken* @cxxTagCheckAndSetTypeField(%struct._CXXToken*, %struct._CXXToken*) #1

declare %struct.sVString* @cxxTagSetProperties(i32) #1

declare i32 @cxxTagCommit() #1

declare void @vStringDelete(%struct.sVString*) #1

declare %struct.sVString* @cxxScopeGetFullNameAsString() #1

declare void @cxxScopePop() #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @cxxParserParseEnumStructClassOrUnionFullDeclarationTrailer(i32 %uKeywordState, i32 %eTagKeyword, i8* %szTypeName) #0 {
entry:
  %retval = alloca i1, align 1
  %uKeywordState.addr = alloca i32, align 4
  %eTagKeyword.addr = alloca i32, align 4
  %szTypeName.addr = alloca i8*, align 8
  %oFilePosition = alloca %struct._MIOPos, align 8
  %iFileLine = alloca i32, align 4
  %pIdentifier = alloca %struct._CXXToken*, align 8
  store i32 %uKeywordState, i32* %uKeywordState.addr, align 4
  store i32 %eTagKeyword, i32* %eTagKeyword.addr, align 4
  store i8* %szTypeName, i8** %szTypeName.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  call void @cxxTokenChainClear(%struct._CXXTokenChain* %0)
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  %call = call [2 x i64] @getInputFilePosition()
  %1 = bitcast %struct._MIOPos* %oFilePosition to [2 x i64]*
  store [2 x i64] %call, [2 x i64]* %1, align 8
  %call3 = call i64 @getInputLineNumber()
  %conv = trunc i64 %call3 to i32
  store i32 %conv, i32* %iFileLine, align 4
  %call4 = call zeroext i1 @cxxParserParseUpToOneOf(i32 524609, i1 zeroext false)
  br i1 %call4, label %if.end, label %if.then

if.then:                                          ; preds = %do.end2
  br label %do.body5

do.body5:                                         ; preds = %if.then
  br label %do.end6

do.end6:                                          ; preds = %do.body5
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %do.end2
  %2 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %eType = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %2, i32 0, i32 0
  %3 = load i32, i32* %eType, align 8
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.end
  br label %do.body9

do.body9:                                         ; preds = %if.then8
  br label %do.end10

do.end10:                                         ; preds = %do.body9
  store i1 true, i1* %retval, align 1
  br label %return

if.end11:                                         ; preds = %if.end
  %4 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %iCount = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %4, i32 0, i32 2
  %5 = load i32, i32* %iCount, align 8
  %cmp12 = icmp slt i32 %5, 2
  br i1 %cmp12, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.end11
  br label %do.body15

do.body15:                                        ; preds = %if.then14
  br label %do.end16

do.end16:                                         ; preds = %do.body15
  store i1 true, i1* %retval, align 1
  br label %return

if.end17:                                         ; preds = %if.end11
  %call18 = call %struct._CXXToken* @cxxTokenCreate()
  store %struct._CXXToken* %call18, %struct._CXXToken** %pIdentifier, align 8
  %6 = load %struct._CXXToken*, %struct._CXXToken** %pIdentifier, align 8
  %oFilePosition19 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %6, i32 0, i32 6
  %7 = bitcast %struct._MIOPos* %oFilePosition19 to i8*
  %8 = bitcast %struct._MIOPos* %oFilePosition to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 %8, i64 16, i1 false)
  %9 = load i32, i32* %iFileLine, align 4
  %10 = load %struct._CXXToken*, %struct._CXXToken** %pIdentifier, align 8
  %iLineNumber = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %10, i32 0, i32 5
  store i32 %9, i32* %iLineNumber, align 4
  %11 = load %struct._CXXToken*, %struct._CXXToken** %pIdentifier, align 8
  %eType20 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %11, i32 0, i32 0
  store i32 2, i32* %eType20, align 8
  %12 = load %struct._CXXToken*, %struct._CXXToken** %pIdentifier, align 8
  %bFollowedBySpace = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %12, i32 0, i32 4
  store i8 1, i8* %bFollowedBySpace, align 8
  %13 = load %struct._CXXToken*, %struct._CXXToken** %pIdentifier, align 8
  %pszWord = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %13, i32 0, i32 1
  %14 = load %struct.sVString*, %struct.sVString** %pszWord, align 8
  %15 = load i8*, i8** %szTypeName.addr, align 8
  call void @vStringCatS(%struct.sVString* %14, i8* %15)
  %16 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %17 = load %struct._CXXToken*, %struct._CXXToken** %pIdentifier, align 8
  call void @cxxTokenChainPrepend(%struct._CXXTokenChain* %16, %struct._CXXToken* %17)
  %18 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %19 = load i32, i32* %iFileLine, align 4
  %20 = load i32, i32* %eTagKeyword.addr, align 4
  %21 = bitcast %struct._MIOPos* %oFilePosition to [2 x i64]*
  %22 = load [2 x i64], [2 x i64]* %21, align 8
  %call21 = call %struct._CXXToken* @cxxTokenCreateKeyword(i32 %19, [2 x i64] %22, i32 %20)
  call void @cxxTokenChainPrepend(%struct._CXXTokenChain* %18, %struct._CXXToken* %call21)
  %23 = load i32, i32* %uKeywordState.addr, align 4
  %and = and i32 %23, 512
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.end17
  %24 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %25 = load i32, i32* %iFileLine, align 4
  %26 = bitcast %struct._MIOPos* %oFilePosition to [2 x i64]*
  %27 = load [2 x i64], [2 x i64]* %26, align 8
  %call23 = call %struct._CXXToken* @cxxTokenCreateKeyword(i32 %25, [2 x i64] %27, i32 31)
  call void @cxxTokenChainPrepend(%struct._CXXTokenChain* %24, %struct._CXXToken* %call23)
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end17
  %28 = load i32, i32* %uKeywordState.addr, align 4
  %and25 = and i32 %28, 1024
  %tobool26 = icmp ne i32 %and25, 0
  br i1 %tobool26, label %if.then27, label %if.end29

if.then27:                                        ; preds = %if.end24
  %29 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %30 = load i32, i32* %iFileLine, align 4
  %31 = bitcast %struct._MIOPos* %oFilePosition to [2 x i64]*
  %32 = load [2 x i64], [2 x i64]* %31, align 8
  %call28 = call %struct._CXXToken* @cxxTokenCreateKeyword(i32 %30, [2 x i64] %32, i32 92)
  call void @cxxTokenChainPrepend(%struct._CXXTokenChain* %29, %struct._CXXToken* %call28)
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.end24
  %33 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %eType30 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %33, i32 0, i32 0
  %34 = load i32, i32* %eType30, align 8
  %cmp31 = icmp eq i32 %34, 524288
  br i1 %cmp31, label %if.then33, label %if.end43

if.then33:                                        ; preds = %if.end29
  br label %do.body34

do.body34:                                        ; preds = %if.then33
  br label %do.end35

do.end35:                                         ; preds = %do.body34
  %call36 = call zeroext i1 @cxxParserParseBlockHandleOpeningBracket()
  br i1 %call36, label %if.end40, label %if.then37

if.then37:                                        ; preds = %do.end35
  br label %do.body38

do.body38:                                        ; preds = %if.then37
  br label %do.end39

do.end39:                                         ; preds = %do.body38
  store i1 false, i1* %retval, align 1
  br label %return

if.end40:                                         ; preds = %do.end35
  br label %do.body41

do.body41:                                        ; preds = %if.end40
  br label %do.end42

do.end42:                                         ; preds = %do.body41
  store i1 true, i1* %retval, align 1
  br label %return

if.end43:                                         ; preds = %if.end29
  %35 = load i32, i32* %uKeywordState.addr, align 4
  %and44 = and i32 %35, 1
  %tobool45 = icmp ne i32 %and44, 0
  br i1 %tobool45, label %if.then46, label %if.else

if.then46:                                        ; preds = %if.end43
  %36 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  call void @cxxParserExtractTypedef(%struct._CXXTokenChain* %36, i1 zeroext true)
  br label %if.end48

if.else:                                          ; preds = %if.end43
  %37 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %call47 = call zeroext i1 @cxxParserExtractVariableDeclarations(%struct._CXXTokenChain* %37, i32 0)
  br label %if.end48

if.end48:                                         ; preds = %if.else, %if.then46
  %38 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %eType49 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %38, i32 0, i32 0
  %39 = load i32, i32* %eType49, align 8
  %cmp50 = icmp eq i32 %39, 256
  br i1 %cmp50, label %land.lhs.true, label %if.end56

land.lhs.true:                                    ; preds = %if.end48
  %call52 = call zeroext i1 @cxxParserParseUpToOneOf(i32 65, i1 zeroext true)
  br i1 %call52, label %if.end56, label %if.then53

if.then53:                                        ; preds = %land.lhs.true
  br label %do.body54

do.body54:                                        ; preds = %if.then53
  br label %do.end55

do.end55:                                         ; preds = %do.body54
  store i1 false, i1* %retval, align 1
  br label %return

if.end56:                                         ; preds = %land.lhs.true, %if.end48
  br label %do.body57

do.body57:                                        ; preds = %if.end56
  br label %do.end58

do.end58:                                         ; preds = %do.body57
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %do.end58, %do.end55, %do.end42, %do.end39, %do.end16, %do.end10, %do.end6
  %40 = load i1, i1* %retval, align 1
  ret i1 %40
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @cxxParserParseClassStructOrUnion(i32 %eKeyword, i32 %uTagKind, i32 %uScopeType) #0 {
entry:
  %eKeyword.addr = alloca i32, align 4
  %uTagKind.addr = alloca i32, align 4
  %uScopeType.addr = alloca i32, align 4
  %bEnablePublicProtectedPrivateKeywords = alloca i8, align 1
  %bRet = alloca i8, align 1
  store i32 %eKeyword, i32* %eKeyword.addr, align 4
  store i32 %uTagKind, i32* %uTagKind.addr, align 4
  store i32 %uScopeType, i32* %uScopeType.addr, align 4
  %call = call zeroext i1 @cxxKeywordEnablePublicProtectedPrivate(i1 zeroext true)
  %frombool = zext i1 %call to i8
  store i8 %frombool, i8* %bEnablePublicProtectedPrivateKeywords, align 1
  %0 = load i32, i32* %eKeyword.addr, align 4
  %1 = load i32, i32* %uTagKind.addr, align 4
  %2 = load i32, i32* %uScopeType.addr, align 4
  %call1 = call zeroext i1 @cxxParserParseClassStructOrUnionInternal(i32 %0, i32 %1, i32 %2)
  %frombool2 = zext i1 %call1 to i8
  store i8 %frombool2, i8* %bRet, align 1
  %3 = load i8, i8* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 14), align 8
  %tobool = trunc i8 %3 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8 1, i8* %bEnablePublicProtectedPrivateKeywords, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i8, i8* %bEnablePublicProtectedPrivateKeywords, align 1
  %tobool3 = trunc i8 %4 to i1
  %call4 = call zeroext i1 @cxxKeywordEnablePublicProtectedPrivate(i1 zeroext %tobool3)
  %5 = load i8, i8* %bRet, align 1
  %tobool5 = trunc i8 %5 to i1
  ret i1 %tobool5
}

declare zeroext i1 @cxxKeywordEnablePublicProtectedPrivate(i1 zeroext) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @cxxParserParseClassStructOrUnionInternal(i32 %eKeyword, i32 %uTagKind, i32 %uScopeType) #0 {
entry:
  %retval = alloca i1, align 1
  %eKeyword.addr = alloca i32, align 4
  %uTagKind.addr = alloca i32, align 4
  %uScopeType.addr = alloca i32, align 4
  %uInitialKeywordState = alloca i32, align 4
  %iInitialTokenCount = alloca i32, align 4
  %pLastToken = alloca %struct._CXXToken*, align 8
  %uTerminatorTypes = alloca i32, align 4
  %bRet = alloca i8, align 1
  %pClassName = alloca %struct._CXXToken*, align 8
  %iPushedScopes = alloca i32, align 4
  %pNamespaceBegin = alloca %struct._CXXToken*, align 8
  %pPrev137 = alloca %struct._CXXToken*, align 8
  %pNext = alloca %struct._CXXToken*, align 8
  %tag = alloca %struct.sTagEntryInfo*, align 8
  %iCorkQueueIndex = alloca i32, align 4
  %t = alloca %struct._CXXToken*, align 8
  %pNext224 = alloca %struct._CXXToken*, align 8
  %pScopeName = alloca %struct.sVString*, align 8
  store i32 %eKeyword, i32* %eKeyword.addr, align 4
  store i32 %uTagKind, i32* %uTagKind.addr, align 4
  store i32 %uScopeType, i32* %uScopeType.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 13), align 4
  store i32 %0, i32* %uInitialKeywordState, align 4
  %1 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %iCount = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %1, i32 0, i32 2
  %2 = load i32, i32* %iCount, align 8
  store i32 %2, i32* %iInitialTokenCount, align 4
  %3 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %tobool = icmp ne %struct._CXXTokenChain* %3, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end
  %4 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %pTail = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %4, i32 0, i32 1
  %5 = load %struct._CXXToken*, %struct._CXXToken** %pTail, align 8
  br label %cond.end

cond.false:                                       ; preds = %do.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._CXXToken* [ %5, %cond.true ], [ null, %cond.false ]
  store %struct._CXXToken* %cond, %struct._CXXToken** %pLastToken, align 8
  call void @cxxKeywordEnableFinal(i1 zeroext true)
  store i32 4718673, i32* %uTerminatorTypes, align 4
  %6 = load i32, i32* %uTagKind.addr, align 4
  %cmp = icmp ne i32 %6, 15
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %7 = load i32, i32* %uTerminatorTypes, align 4
  %or = or i32 %7, 268435712
  store i32 %or, i32* %uTerminatorTypes, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  br label %for.cond

for.cond:                                         ; preds = %if.end31, %if.then14, %if.end
  %8 = load i32, i32* %uTerminatorTypes, align 4
  %call = call zeroext i1 @cxxParserParseUpToOneOf(i32 %8, i1 zeroext false)
  %frombool = zext i1 %call to i8
  store i8 %frombool, i8* %bRet, align 1
  %9 = load i8, i8* %bRet, align 1
  %tobool1 = trunc i8 %9 to i1
  br i1 %tobool1, label %if.end5, label %if.then2

if.then2:                                         ; preds = %for.cond
  call void @cxxKeywordEnableFinal(i1 zeroext false)
  br label %do.body3

do.body3:                                         ; preds = %if.then2
  br label %do.end4

do.end4:                                          ; preds = %do.body3
  store i1 false, i1* %retval, align 1
  br label %return

if.end5:                                          ; preds = %for.cond
  %10 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %eType = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %10, i32 0, i32 0
  %11 = load i32, i32* %eType, align 8
  %cmp6 = icmp eq i32 %11, 268435456
  br i1 %cmp6, label %land.lhs.true, label %if.end15

land.lhs.true:                                    ; preds = %if.end5
  %12 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %pPrev = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %12, i32 0, i32 8
  %13 = load %struct._CXXToken*, %struct._CXXToken** %pPrev, align 8
  %eType7 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %13, i32 0, i32 0
  %14 = load i32, i32* %eType7, align 8
  %cmp8 = icmp eq i32 %14, 4
  br i1 %cmp8, label %land.lhs.true9, label %lor.lhs.false

land.lhs.true9:                                   ; preds = %land.lhs.true
  %15 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %pPrev10 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %15, i32 0, i32 8
  %16 = load %struct._CXXToken*, %struct._CXXToken** %pPrev10, align 8
  %eKeyword11 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %16, i32 0, i32 2
  %17 = load i32, i32* %eKeyword11, align 8
  %cmp12 = icmp eq i32 %17, 18
  br i1 %cmp12, label %if.then14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true9, %land.lhs.true
  %18 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %pChain = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %18, i32 0, i32 3
  %19 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain, align 8
  %call13 = call zeroext i1 @cxxParserTokenChainLooksLikeFunctionParameterList(%struct._CXXTokenChain* %19, %struct._CXXFunctionParameterInfo* null)
  br i1 %call13, label %if.end15, label %if.then14

if.then14:                                        ; preds = %lor.lhs.false, %land.lhs.true9
  br label %for.cond

if.end15:                                         ; preds = %lor.lhs.false, %if.end5
  %20 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %eType16 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %20, i32 0, i32 0
  %21 = load i32, i32* %eType16, align 8
  %cmp17 = icmp eq i32 %21, 4194304
  br i1 %cmp17, label %if.end19, label %if.then18

if.then18:                                        ; preds = %if.end15
  br label %for.end

if.end19:                                         ; preds = %if.end15
  %22 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 0), align 8
  %cmp20 = icmp eq i32 %22, 2
  br i1 %cmp20, label %if.end24, label %if.then21

if.then21:                                        ; preds = %if.end19
  call void @cxxKeywordEnableFinal(i1 zeroext false)
  br label %do.body22

do.body22:                                        ; preds = %if.then21
  br label %do.end23

do.end23:                                         ; preds = %do.body22
  store i1 false, i1* %retval, align 1
  br label %return

if.end24:                                         ; preds = %if.end19
  %call25 = call zeroext i1 @cxxParserParseTemplateAngleBracketsToSeparateChain()
  %frombool26 = zext i1 %call25 to i8
  store i8 %frombool26, i8* %bRet, align 1
  %23 = load i8, i8* %bRet, align 1
  %tobool27 = trunc i8 %23 to i1
  br i1 %tobool27, label %if.end31, label %if.then28

if.then28:                                        ; preds = %if.end24
  call void @cxxKeywordEnableFinal(i1 zeroext false)
  br label %do.body29

do.body29:                                        ; preds = %if.then28
  br label %do.end30

do.end30:                                         ; preds = %do.body29
  store i1 false, i1* %retval, align 1
  br label %return

if.end31:                                         ; preds = %if.end24
  br label %for.cond

for.end:                                          ; preds = %if.then18
  call void @cxxKeywordEnableFinal(i1 zeroext false)
  %24 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %eType32 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %24, i32 0, i32 0
  %25 = load i32, i32* %eType32, align 8
  %cmp33 = icmp eq i32 %25, 268435456
  br i1 %cmp33, label %if.then34, label %if.end43

if.then34:                                        ; preds = %for.end
  %26 = load i32, i32* %uInitialKeywordState, align 4
  %and = and i32 %26, 1
  %tobool35 = icmp ne i32 %and, 0
  br i1 %tobool35, label %if.then36, label %if.end40

if.then36:                                        ; preds = %if.then34
  br label %do.body37

do.body37:                                        ; preds = %if.then36
  br label %do.end38

do.end38:                                         ; preds = %do.body37
  %call39 = call zeroext i1 @cxxParserParseGenericTypedef()
  store i1 %call39, i1* %retval, align 1
  br label %return

if.end40:                                         ; preds = %if.then34
  br label %do.body41

do.body41:                                        ; preds = %if.end40
  br label %do.end42

do.end42:                                         ; preds = %do.body41
  store i1 true, i1* %retval, align 1
  br label %return

if.end43:                                         ; preds = %for.end
  %27 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %eType44 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %27, i32 0, i32 0
  %28 = load i32, i32* %eType44, align 8
  %cmp45 = icmp eq i32 %28, 64
  br i1 %cmp45, label %land.lhs.true46, label %if.end64

land.lhs.true46:                                  ; preds = %if.end43
  %29 = load i32, i32* %iInitialTokenCount, align 4
  %cmp47 = icmp sgt i32 %29, 3
  br i1 %cmp47, label %land.lhs.true48, label %if.end64

land.lhs.true48:                                  ; preds = %land.lhs.true46
  %30 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 0), align 8
  %cmp49 = icmp eq i32 %30, 1
  br i1 %cmp49, label %land.lhs.true50, label %if.end64

land.lhs.true50:                                  ; preds = %land.lhs.true48
  %call51 = call zeroext i1 @cxxScopeIsGlobal()
  br i1 %call51, label %land.lhs.true52, label %if.end64

land.lhs.true52:                                  ; preds = %land.lhs.true50
  %31 = load i32, i32* %uInitialKeywordState, align 4
  %and53 = and i32 %31, 1
  %tobool54 = icmp ne i32 %and53, 0
  br i1 %tobool54, label %if.end64, label %if.then55

if.then55:                                        ; preds = %land.lhs.true52
  br label %do.body56

do.body56:                                        ; preds = %if.then55
  br label %do.end57

do.end57:                                         ; preds = %do.body56
  %call58 = call i32 @cxxParserMaybeParseKnRStyleFunctionDefinition()
  switch i32 %call58, label %sw.default [
    i32 1, label %sw.bb
    i32 0, label %sw.bb61
  ]

sw.bb:                                            ; preds = %do.end57
  br label %do.body59

do.body59:                                        ; preds = %sw.bb
  br label %do.end60

do.end60:                                         ; preds = %do.body59
  store i1 true, i1* %retval, align 1
  br label %return

sw.bb61:                                          ; preds = %do.end57
  br label %sw.epilog

sw.default:                                       ; preds = %do.end57
  br label %do.body62

do.body62:                                        ; preds = %sw.default
  br label %do.end63

do.end63:                                         ; preds = %do.body62
  store i1 false, i1* %retval, align 1
  br label %return

sw.epilog:                                        ; preds = %sw.bb61
  br label %if.end64

if.end64:                                         ; preds = %sw.epilog, %land.lhs.true52, %land.lhs.true50, %land.lhs.true48, %land.lhs.true46, %if.end43
  %32 = load i32, i32* %iInitialTokenCount, align 4
  %cmp65 = icmp sgt i32 %32, 1
  br i1 %cmp65, label %if.then66, label %if.end67

if.then66:                                        ; preds = %if.end64
  %33 = load i32, i32* %eKeyword.addr, align 4
  %34 = load %struct._CXXToken*, %struct._CXXToken** %pLastToken, align 8
  call void @cxxParserCleanupEnumStructClassOrUnionPrefixChain(i32 %33, %struct._CXXToken* %34)
  br label %if.end67

if.end67:                                         ; preds = %if.then66, %if.end64
  %35 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %eType68 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %35, i32 0, i32 0
  %36 = load i32, i32* %eType68, align 8
  %cmp69 = icmp eq i32 %36, 64
  br i1 %cmp69, label %if.then70, label %if.end86

if.then70:                                        ; preds = %if.end67
  %37 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %iCount71 = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %37, i32 0, i32 2
  %38 = load i32, i32* %iCount71, align 8
  %cmp72 = icmp sgt i32 %38, 3
  br i1 %cmp72, label %if.then73, label %if.end83

if.then73:                                        ; preds = %if.then70
  %39 = load i32, i32* %uInitialKeywordState, align 4
  %and74 = and i32 %39, 1
  %tobool75 = icmp ne i32 %and74, 0
  br i1 %tobool75, label %if.then76, label %if.else

if.then76:                                        ; preds = %if.then73
  %40 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  call void @cxxParserExtractTypedef(%struct._CXXTokenChain* %40, i1 zeroext true)
  br label %if.end82

if.else:                                          ; preds = %if.then73
  %41 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 13), align 4
  %and77 = and i32 %41, 4096
  %tobool78 = icmp ne i32 %and77, 0
  br i1 %tobool78, label %if.end81, label %if.then79

if.then79:                                        ; preds = %if.else
  %42 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %call80 = call zeroext i1 @cxxParserExtractVariableDeclarations(%struct._CXXTokenChain* %42, i32 0)
  br label %if.end81

if.end81:                                         ; preds = %if.then79, %if.else
  br label %if.end82

if.end82:                                         ; preds = %if.end81, %if.then76
  br label %if.end83

if.end83:                                         ; preds = %if.end82, %if.then70
  call void @cxxParserNewStatement()
  br label %do.body84

do.body84:                                        ; preds = %if.end83
  br label %do.end85

do.end85:                                         ; preds = %do.body84
  store i1 true, i1* %retval, align 1
  br label %return

if.end86:                                         ; preds = %if.end67
  %43 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %eType87 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %43, i32 0, i32 0
  %44 = load i32, i32* %eType87, align 8
  %cmp88 = icmp eq i32 %44, 256
  br i1 %cmp88, label %if.then89, label %if.end102

if.then89:                                        ; preds = %if.end86
  %45 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %iCount90 = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %45, i32 0, i32 2
  %46 = load i32, i32* %iCount90, align 8
  %cmp91 = icmp sgt i32 %46, 3
  br i1 %cmp91, label %if.then92, label %if.end94

if.then92:                                        ; preds = %if.then89
  %47 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %call93 = call zeroext i1 @cxxParserExtractVariableDeclarations(%struct._CXXTokenChain* %47, i32 0)
  br label %if.end94

if.end94:                                         ; preds = %if.then92, %if.then89
  %call95 = call zeroext i1 @cxxParserParseUpToOneOf(i32 65, i1 zeroext true)
  br i1 %call95, label %if.end99, label %if.then96

if.then96:                                        ; preds = %if.end94
  br label %do.body97

do.body97:                                        ; preds = %if.then96
  br label %do.end98

do.end98:                                         ; preds = %do.body97
  store i1 false, i1* %retval, align 1
  br label %return

if.end99:                                         ; preds = %if.end94
  call void @cxxParserNewStatement()
  br label %do.body100

do.body100:                                       ; preds = %if.end99
  br label %do.end101

do.end101:                                        ; preds = %do.body100
  store i1 true, i1* %retval, align 1
  br label %return

if.end102:                                        ; preds = %if.end86
  %48 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %eType103 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %48, i32 0, i32 0
  %49 = load i32, i32* %eType103, align 8
  %cmp104 = icmp eq i32 %49, 1
  br i1 %cmp104, label %if.then105, label %if.end108

if.then105:                                       ; preds = %if.end102
  call void @cxxParserNewStatement()
  br label %do.body106

do.body106:                                       ; preds = %if.then105
  br label %do.end107

do.end107:                                        ; preds = %do.body106
  store i1 true, i1* %retval, align 1
  br label %return

if.end108:                                        ; preds = %if.end102
  %50 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %call109 = call %struct._CXXToken* @cxxTokenChainLastTokenOfType(%struct._CXXTokenChain* %50, i32 2)
  store %struct._CXXToken* %call109, %struct._CXXToken** %pClassName, align 8
  %51 = load %struct._CXXToken*, %struct._CXXToken** %pClassName, align 8
  %tobool110 = icmp ne %struct._CXXToken* %51, null
  br i1 %tobool110, label %if.end134, label %if.then111

if.then111:                                       ; preds = %if.end108
  %52 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 0), align 8
  %cmp112 = icmp eq i32 %52, 2
  br i1 %cmp112, label %land.lhs.true113, label %if.end133

land.lhs.true113:                                 ; preds = %if.then111
  %53 = load i8, i8* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 14), align 8
  %tobool114 = trunc i8 %53 to i1
  br i1 %tobool114, label %if.end133, label %land.lhs.true115

land.lhs.true115:                                 ; preds = %land.lhs.true113
  %54 = load i32, i32* %eKeyword.addr, align 4
  %cmp116 = icmp ne i32 %54, 29
  br i1 %cmp116, label %land.lhs.true117, label %if.end133

land.lhs.true117:                                 ; preds = %land.lhs.true115
  %55 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %iCount118 = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %55, i32 0, i32 2
  %56 = load i32, i32* %iCount118, align 8
  %cmp119 = icmp sge i32 %56, 3
  br i1 %cmp119, label %land.lhs.true120, label %if.end133

land.lhs.true120:                                 ; preds = %land.lhs.true117
  %57 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %pPrev121 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %57, i32 0, i32 8
  %58 = load %struct._CXXToken*, %struct._CXXToken** %pPrev121, align 8
  %eType122 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %58, i32 0, i32 0
  %59 = load i32, i32* %eType122, align 8
  %cmp123 = icmp eq i32 %59, 4
  br i1 %cmp123, label %land.lhs.true124, label %if.end133

land.lhs.true124:                                 ; preds = %land.lhs.true120
  %60 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %pPrev125 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %60, i32 0, i32 8
  %61 = load %struct._CXXToken*, %struct._CXXToken** %pPrev125, align 8
  %eKeyword126 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %61, i32 0, i32 2
  %62 = load i32, i32* %eKeyword126, align 8
  %call127 = call zeroext i1 @cxxKeywordIsCPPSpecific(i32 %62)
  br i1 %call127, label %if.then128, label %if.end133

if.then128:                                       ; preds = %land.lhs.true124
  %63 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %pPrev129 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %63, i32 0, i32 8
  %64 = load %struct._CXXToken*, %struct._CXXToken** %pPrev129, align 8
  store %struct._CXXToken* %64, %struct._CXXToken** %pClassName, align 8
  %65 = load %struct._CXXToken*, %struct._CXXToken** %pClassName, align 8
  %eType130 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %65, i32 0, i32 0
  store i32 2, i32* %eType130, align 8
  br label %do.body131

do.body131:                                       ; preds = %if.then128
  br label %do.end132

do.end132:                                        ; preds = %do.body131
  br label %if.end133

if.end133:                                        ; preds = %do.end132, %land.lhs.true124, %land.lhs.true120, %land.lhs.true117, %land.lhs.true115, %land.lhs.true113, %if.then111
  br label %if.end134

if.end134:                                        ; preds = %if.end133, %if.end108
  store i32 0, i32* %iPushedScopes, align 4
  %66 = load %struct._CXXToken*, %struct._CXXToken** %pClassName, align 8
  %tobool135 = icmp ne %struct._CXXToken* %66, null
  br i1 %tobool135, label %if.then136, label %if.else165

if.then136:                                       ; preds = %if.end134
  %67 = load %struct._CXXToken*, %struct._CXXToken** %pClassName, align 8
  store %struct._CXXToken* %67, %struct._CXXToken** %pNamespaceBegin, align 8
  %68 = load %struct._CXXToken*, %struct._CXXToken** %pClassName, align 8
  %pPrev138 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %68, i32 0, i32 8
  %69 = load %struct._CXXToken*, %struct._CXXToken** %pPrev138, align 8
  store %struct._CXXToken* %69, %struct._CXXToken** %pPrev137, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end151, %if.then136
  %70 = load %struct._CXXToken*, %struct._CXXToken** %pPrev137, align 8
  %tobool139 = icmp ne %struct._CXXToken* %70, null
  br i1 %tobool139, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %71 = load %struct._CXXToken*, %struct._CXXToken** %pPrev137, align 8
  %eType140 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %71, i32 0, i32 0
  %72 = load i32, i32* %eType140, align 8
  %cmp141 = icmp eq i32 %72, 32
  br i1 %cmp141, label %if.end143, label %if.then142

if.then142:                                       ; preds = %while.body
  br label %while.end

if.end143:                                        ; preds = %while.body
  %73 = load %struct._CXXToken*, %struct._CXXToken** %pPrev137, align 8
  %pPrev144 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %73, i32 0, i32 8
  %74 = load %struct._CXXToken*, %struct._CXXToken** %pPrev144, align 8
  store %struct._CXXToken* %74, %struct._CXXToken** %pPrev137, align 8
  %75 = load %struct._CXXToken*, %struct._CXXToken** %pPrev137, align 8
  %tobool145 = icmp ne %struct._CXXToken* %75, null
  br i1 %tobool145, label %if.end147, label %if.then146

if.then146:                                       ; preds = %if.end143
  br label %while.end

if.end147:                                        ; preds = %if.end143
  %76 = load %struct._CXXToken*, %struct._CXXToken** %pPrev137, align 8
  %eType148 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %76, i32 0, i32 0
  %77 = load i32, i32* %eType148, align 8
  %cmp149 = icmp eq i32 %77, 2
  br i1 %cmp149, label %if.end151, label %if.then150

if.then150:                                       ; preds = %if.end147
  br label %while.end

if.end151:                                        ; preds = %if.end147
  %78 = load %struct._CXXToken*, %struct._CXXToken** %pPrev137, align 8
  store %struct._CXXToken* %78, %struct._CXXToken** %pNamespaceBegin, align 8
  %79 = load %struct._CXXToken*, %struct._CXXToken** %pPrev137, align 8
  %pPrev152 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %79, i32 0, i32 8
  %80 = load %struct._CXXToken*, %struct._CXXToken** %pPrev152, align 8
  store %struct._CXXToken* %80, %struct._CXXToken** %pPrev137, align 8
  br label %while.cond

while.end:                                        ; preds = %if.then150, %if.then146, %if.then142, %while.cond
  br label %while.cond153

while.cond153:                                    ; preds = %if.end160, %while.end
  %81 = load %struct._CXXToken*, %struct._CXXToken** %pNamespaceBegin, align 8
  %82 = load %struct._CXXToken*, %struct._CXXToken** %pClassName, align 8
  %cmp154 = icmp ne %struct._CXXToken* %81, %82
  br i1 %cmp154, label %while.body155, label %while.end162

while.body155:                                    ; preds = %while.cond153
  %83 = load %struct._CXXToken*, %struct._CXXToken** %pNamespaceBegin, align 8
  %pNext156 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %83, i32 0, i32 7
  %84 = load %struct._CXXToken*, %struct._CXXToken** %pNext156, align 8
  store %struct._CXXToken* %84, %struct._CXXToken** %pNext, align 8
  %85 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %86 = load %struct._CXXToken*, %struct._CXXToken** %pNamespaceBegin, align 8
  call void @cxxTokenChainTake(%struct._CXXTokenChain* %85, %struct._CXXToken* %86)
  %87 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 0), align 8
  %cmp157 = icmp eq i32 %87, 2
  br i1 %cmp157, label %if.then158, label %if.else159

if.then158:                                       ; preds = %while.body155
  %88 = load %struct._CXXToken*, %struct._CXXToken** %pNamespaceBegin, align 8
  call void @cxxScopePush(%struct._CXXToken* %88, i32 2, i32 0)
  %89 = load i32, i32* %iPushedScopes, align 4
  %inc = add nsw i32 %89, 1
  store i32 %inc, i32* %iPushedScopes, align 4
  br label %if.end160

if.else159:                                       ; preds = %while.body155
  %90 = load %struct._CXXToken*, %struct._CXXToken** %pNamespaceBegin, align 8
  call void @cxxTokenDestroy(%struct._CXXToken* %90)
  br label %if.end160

if.end160:                                        ; preds = %if.else159, %if.then158
  %91 = load %struct._CXXToken*, %struct._CXXToken** %pNext, align 8
  %pNext161 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %91, i32 0, i32 7
  %92 = load %struct._CXXToken*, %struct._CXXToken** %pNext161, align 8
  store %struct._CXXToken* %92, %struct._CXXToken** %pNamespaceBegin, align 8
  br label %while.cond153

while.end162:                                     ; preds = %while.cond153
  br label %do.body163

do.body163:                                       ; preds = %while.end162
  br label %do.end164

do.end164:                                        ; preds = %do.body163
  %93 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %94 = load %struct._CXXToken*, %struct._CXXToken** %pClassName, align 8
  call void @cxxTokenChainTake(%struct._CXXTokenChain* %93, %struct._CXXToken* %94)
  br label %if.end169

if.else165:                                       ; preds = %if.end134
  %95 = load i32, i32* %uTagKind.addr, align 4
  %call166 = call %struct._CXXToken* @cxxTokenCreateAnonymousIdentifier(i32 %95)
  store %struct._CXXToken* %call166, %struct._CXXToken** %pClassName, align 8
  br label %do.body167

do.body167:                                       ; preds = %if.else165
  br label %do.end168

do.end168:                                        ; preds = %do.body167
  br label %if.end169

if.end169:                                        ; preds = %do.end168, %do.end164
  %96 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %eType170 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %96, i32 0, i32 0
  %97 = load i32, i32* %eType170, align 8
  %cmp171 = icmp eq i32 %97, 16
  br i1 %cmp171, label %if.then172, label %if.else186

if.then172:                                       ; preds = %if.end169
  %98 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  call void @cxxTokenChainClear(%struct._CXXTokenChain* %98)
  %call173 = call zeroext i1 @cxxParserParseUpToOneOf(i32 524353, i1 zeroext false)
  br i1 %call173, label %if.end177, label %if.then174

if.then174:                                       ; preds = %if.then172
  %99 = load %struct._CXXToken*, %struct._CXXToken** %pClassName, align 8
  call void @cxxTokenDestroy(%struct._CXXToken* %99)
  br label %do.body175

do.body175:                                       ; preds = %if.then174
  br label %do.end176

do.end176:                                        ; preds = %do.body175
  store i1 false, i1* %retval, align 1
  br label %return

if.end177:                                        ; preds = %if.then172
  %100 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %eType178 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %100, i32 0, i32 0
  %101 = load i32, i32* %eType178, align 8
  %and179 = and i32 %101, 65
  %tobool180 = icmp ne i32 %and179, 0
  br i1 %tobool180, label %if.then181, label %if.end184

if.then181:                                       ; preds = %if.end177
  %102 = load %struct._CXXToken*, %struct._CXXToken** %pClassName, align 8
  call void @cxxTokenDestroy(%struct._CXXToken* %102)
  call void @cxxParserNewStatement()
  br label %do.body182

do.body182:                                       ; preds = %if.then181
  br label %do.end183

do.end183:                                        ; preds = %do.body182
  store i1 true, i1* %retval, align 1
  br label %return

if.end184:                                        ; preds = %if.end177
  %103 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %call185 = call %struct._CXXToken* @cxxTokenChainTakeLast(%struct._CXXTokenChain* %103)
  call void @cxxTokenDestroy(%struct._CXXToken* %call185)
  br label %if.end187

if.else186:                                       ; preds = %if.end169
  %104 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  call void @cxxTokenChainClear(%struct._CXXTokenChain* %104)
  br label %if.end187

if.end187:                                        ; preds = %if.else186, %if.end184
  %105 = load i32, i32* %uTagKind.addr, align 4
  %cmp188 = icmp eq i32 %105, 15
  br i1 %cmp188, label %land.lhs.true189, label %if.end194

land.lhs.true189:                                 ; preds = %if.end187
  %106 = load i8, i8* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 14), align 8
  %tobool190 = trunc i8 %106 to i1
  br i1 %tobool190, label %if.end194, label %if.then191

if.then191:                                       ; preds = %land.lhs.true189
  br label %do.body192

do.body192:                                       ; preds = %if.then191
  br label %do.end193

do.end193:                                        ; preds = %do.body192
  store i8 1, i8* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 14), align 8
  br label %if.end194

if.end194:                                        ; preds = %do.end193, %land.lhs.true189, %if.end187
  %107 = load i32, i32* %uTagKind.addr, align 4
  %108 = load %struct._CXXToken*, %struct._CXXToken** %pClassName, align 8
  %call195 = call %struct.sTagEntryInfo* @cxxTagBegin(i32 %107, %struct._CXXToken* %108)
  store %struct.sTagEntryInfo* %call195, %struct.sTagEntryInfo** %tag, align 8
  store i32 0, i32* %iCorkQueueIndex, align 4
  %109 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag, align 8
  %tobool196 = icmp ne %struct.sTagEntryInfo* %109, null
  br i1 %tobool196, label %if.then197, label %if.end254

if.then197:                                       ; preds = %if.end194
  %110 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %iCount198 = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %110, i32 0, i32 2
  %111 = load i32, i32* %iCount198, align 8
  %cmp199 = icmp sgt i32 %111, 0
  br i1 %cmp199, label %if.then200, label %if.end235

if.then200:                                       ; preds = %if.then197
  %112 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %tobool201 = icmp ne %struct._CXXTokenChain* %112, null
  br i1 %tobool201, label %cond.true202, label %cond.false203

cond.true202:                                     ; preds = %if.then200
  %113 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %pHead = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %113, i32 0, i32 0
  %114 = load %struct._CXXToken*, %struct._CXXToken** %pHead, align 8
  br label %cond.end204

cond.false203:                                    ; preds = %if.then200
  br label %cond.end204

cond.end204:                                      ; preds = %cond.false203, %cond.true202
  %cond205 = phi %struct._CXXToken* [ %114, %cond.true202 ], [ null, %cond.false203 ]
  store %struct._CXXToken* %cond205, %struct._CXXToken** %t, align 8
  br label %while.cond206

while.cond206:                                    ; preds = %if.end228, %cond.end204
  %115 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %tobool207 = icmp ne %struct._CXXToken* %115, null
  br i1 %tobool207, label %while.body208, label %while.end229

while.body208:                                    ; preds = %while.cond206
  %116 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %eType209 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %116, i32 0, i32 0
  %117 = load i32, i32* %eType209, align 8
  %cmp210 = icmp eq i32 %117, 4
  br i1 %cmp210, label %land.lhs.true211, label %if.else226

land.lhs.true211:                                 ; preds = %while.body208
  %118 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %eKeyword212 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %118, i32 0, i32 2
  %119 = load i32, i32* %eKeyword212, align 8
  %cmp213 = icmp eq i32 %119, 64
  br i1 %cmp213, label %if.then223, label %lor.lhs.false214

lor.lhs.false214:                                 ; preds = %land.lhs.true211
  %120 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %eKeyword215 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %120, i32 0, i32 2
  %121 = load i32, i32* %eKeyword215, align 8
  %cmp216 = icmp eq i32 %121, 63
  br i1 %cmp216, label %if.then223, label %lor.lhs.false217

lor.lhs.false217:                                 ; preds = %lor.lhs.false214
  %122 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %eKeyword218 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %122, i32 0, i32 2
  %123 = load i32, i32* %eKeyword218, align 8
  %cmp219 = icmp eq i32 %123, 62
  br i1 %cmp219, label %if.then223, label %lor.lhs.false220

lor.lhs.false220:                                 ; preds = %lor.lhs.false217
  %124 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %eKeyword221 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %124, i32 0, i32 2
  %125 = load i32, i32* %eKeyword221, align 8
  %cmp222 = icmp eq i32 %125, 90
  br i1 %cmp222, label %if.then223, label %if.else226

if.then223:                                       ; preds = %lor.lhs.false220, %lor.lhs.false217, %lor.lhs.false214, %land.lhs.true211
  %126 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pNext225 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %126, i32 0, i32 7
  %127 = load %struct._CXXToken*, %struct._CXXToken** %pNext225, align 8
  store %struct._CXXToken* %127, %struct._CXXToken** %pNext224, align 8
  %128 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %129 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  call void @cxxTokenChainTake(%struct._CXXTokenChain* %128, %struct._CXXToken* %129)
  %130 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  call void @cxxTokenDestroy(%struct._CXXToken* %130)
  %131 = load %struct._CXXToken*, %struct._CXXToken** %pNext224, align 8
  store %struct._CXXToken* %131, %struct._CXXToken** %t, align 8
  br label %if.end228

if.else226:                                       ; preds = %lor.lhs.false220, %while.body208
  %132 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pNext227 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %132, i32 0, i32 7
  %133 = load %struct._CXXToken*, %struct._CXXToken** %pNext227, align 8
  store %struct._CXXToken* %133, %struct._CXXToken** %t, align 8
  br label %if.end228

if.end228:                                        ; preds = %if.else226, %if.then223
  br label %while.cond206

while.end229:                                     ; preds = %while.cond206
  %134 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %iCount230 = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %134, i32 0, i32 2
  %135 = load i32, i32* %iCount230, align 8
  %cmp231 = icmp sgt i32 %135, 0
  br i1 %cmp231, label %if.then232, label %if.end234

if.then232:                                       ; preds = %while.end229
  %136 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  call void @cxxTokenChainCondense(%struct._CXXTokenChain* %136, i32 1)
  %137 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %pHead233 = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %137, i32 0, i32 0
  %138 = load %struct._CXXToken*, %struct._CXXToken** %pHead233, align 8
  %pszWord = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %138, i32 0, i32 1
  %139 = load %struct.sVString*, %struct.sVString** %pszWord, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %139, i32 0, i32 2
  %140 = load i8*, i8** %buffer, align 8
  %141 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag, align 8
  %extensionFields = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %141, i32 0, i32 11
  %inheritance = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields, i32 0, i32 3
  store i8* %140, i8** %inheritance, align 8
  br label %if.end234

if.end234:                                        ; preds = %if.then232, %while.end229
  br label %if.end235

if.end235:                                        ; preds = %if.end234, %if.then197
  %142 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 10), align 8
  %tobool236 = icmp ne %struct._CXXTokenChain* %142, null
  br i1 %tobool236, label %land.lhs.true237, label %if.end251

land.lhs.true237:                                 ; preds = %if.end235
  %143 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 10), align 8
  %iCount238 = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %143, i32 0, i32 2
  %144 = load i32, i32* %iCount238, align 8
  %cmp239 = icmp sgt i32 %144, 0
  br i1 %cmp239, label %land.lhs.true240, label %if.end251

land.lhs.true240:                                 ; preds = %land.lhs.true237
  %call241 = call zeroext i1 @cxxTagFieldEnabled(i32 1)
  br i1 %call241, label %if.then242, label %if.end251

if.then242:                                       ; preds = %land.lhs.true240
  %145 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 10), align 8
  call void @cxxTokenChainNormalizeTypeNameSpacing(%struct._CXXTokenChain* %145)
  %146 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 10), align 8
  call void @cxxTokenChainCondense(%struct._CXXTokenChain* %146, i32 0)
  %147 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 10), align 8
  %tobool243 = icmp ne %struct._CXXTokenChain* %147, null
  br i1 %tobool243, label %cond.true244, label %cond.false246

cond.true244:                                     ; preds = %if.then242
  %148 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 10), align 8
  %pHead245 = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %148, i32 0, i32 0
  %149 = load %struct._CXXToken*, %struct._CXXToken** %pHead245, align 8
  br label %cond.end247

cond.false246:                                    ; preds = %if.then242
  br label %cond.end247

cond.end247:                                      ; preds = %cond.false246, %cond.true244
  %cond248 = phi %struct._CXXToken* [ %149, %cond.true244 ], [ null, %cond.false246 ]
  %pszWord249 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %cond248, i32 0, i32 1
  %150 = load %struct.sVString*, %struct.sVString** %pszWord249, align 8
  %buffer250 = getelementptr inbounds %struct.sVString, %struct.sVString* %150, i32 0, i32 2
  %151 = load i8*, i8** %buffer250, align 8
  call void @cxxTagSetField(i32 1, i8* %151)
  br label %if.end251

if.end251:                                        ; preds = %cond.end247, %land.lhs.true240, %land.lhs.true237, %if.end235
  %call252 = call zeroext i1 @isInputHeaderFile()
  %lnot = xor i1 %call252, true
  %lnot.ext = zext i1 %lnot to i32
  %152 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag, align 8
  %153 = bitcast %struct.sTagEntryInfo* %152 to i8*
  %154 = trunc i32 %lnot.ext to i8
  %bf.load = load i8, i8* %153, align 8
  %bf.value = and i8 %154, 1
  %bf.shl = shl i8 %bf.value, 1
  %bf.clear = and i8 %bf.load, -3
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, i8* %153, align 8
  %bf.result.cast = zext i8 %bf.value to i32
  %call253 = call i32 @cxxTagCommit()
  store i32 %call253, i32* %iCorkQueueIndex, align 4
  br label %if.end254

if.end254:                                        ; preds = %if.end251, %if.end194
  %155 = load %struct._CXXToken*, %struct._CXXToken** %pClassName, align 8
  %156 = load i32, i32* %uScopeType.addr, align 4
  %157 = load i32, i32* %uTagKind.addr, align 4
  %cmp255 = icmp eq i32 %157, 15
  %158 = zext i1 %cmp255 to i64
  %cond256 = select i1 %cmp255, i32 2, i32 1
  call void @cxxScopePush(%struct._CXXToken* %155, i32 %156, i32 %cond256)
  %call257 = call %struct.sVString* @cxxScopeGetFullNameAsString()
  store %struct.sVString* %call257, %struct.sVString** %pScopeName, align 8
  %call258 = call zeroext i1 @cxxParserParseBlock(i1 zeroext true)
  br i1 %call258, label %if.end265, label %if.then259

if.then259:                                       ; preds = %if.end254
  br label %do.body260

do.body260:                                       ; preds = %if.then259
  br label %do.end261

do.end261:                                        ; preds = %do.body260
  %159 = load %struct.sVString*, %struct.sVString** %pScopeName, align 8
  %tobool262 = icmp ne %struct.sVString* %159, null
  br i1 %tobool262, label %if.then263, label %if.end264

if.then263:                                       ; preds = %do.end261
  %160 = load %struct.sVString*, %struct.sVString** %pScopeName, align 8
  call void @vStringDelete(%struct.sVString* %160)
  br label %if.end264

if.end264:                                        ; preds = %if.then263, %do.end261
  store i1 false, i1* %retval, align 1
  br label %return

if.end265:                                        ; preds = %if.end254
  %161 = load i32, i32* %iCorkQueueIndex, align 4
  %cmp266 = icmp sgt i32 %161, 0
  br i1 %cmp266, label %if.then267, label %if.end268

if.then267:                                       ; preds = %if.end265
  %162 = load i32, i32* %iCorkQueueIndex, align 4
  call void @cxxParserMarkEndLineForTagInCorkQueue(i32 %162)
  br label %if.end268

if.end268:                                        ; preds = %if.then267, %if.end265
  %163 = load i32, i32* %iPushedScopes, align 4
  %inc269 = add nsw i32 %163, 1
  store i32 %inc269, i32* %iPushedScopes, align 4
  br label %while.cond270

while.cond270:                                    ; preds = %while.body272, %if.end268
  %164 = load i32, i32* %iPushedScopes, align 4
  %cmp271 = icmp sgt i32 %164, 0
  br i1 %cmp271, label %while.body272, label %while.end273

while.body272:                                    ; preds = %while.cond270
  call void @cxxScopePop()
  %165 = load i32, i32* %iPushedScopes, align 4
  %dec = add nsw i32 %165, -1
  store i32 %dec, i32* %iPushedScopes, align 4
  br label %while.cond270

while.end273:                                     ; preds = %while.cond270
  %166 = load i32, i32* %uInitialKeywordState, align 4
  %167 = load i32, i32* %eKeyword.addr, align 4
  %168 = load %struct.sVString*, %struct.sVString** %pScopeName, align 8
  %buffer274 = getelementptr inbounds %struct.sVString, %struct.sVString* %168, i32 0, i32 2
  %169 = load i8*, i8** %buffer274, align 8
  %call275 = call zeroext i1 @cxxParserParseEnumStructClassOrUnionFullDeclarationTrailer(i32 %166, i32 %167, i8* %169)
  %frombool276 = zext i1 %call275 to i8
  store i8 %frombool276, i8* %bRet, align 1
  %170 = load %struct.sVString*, %struct.sVString** %pScopeName, align 8
  %tobool277 = icmp ne %struct.sVString* %170, null
  br i1 %tobool277, label %if.then278, label %if.end279

if.then278:                                       ; preds = %while.end273
  %171 = load %struct.sVString*, %struct.sVString** %pScopeName, align 8
  call void @vStringDelete(%struct.sVString* %171)
  br label %if.end279

if.end279:                                        ; preds = %if.then278, %while.end273
  call void @cxxParserNewStatement()
  br label %do.body280

do.body280:                                       ; preds = %if.end279
  br label %do.end281

do.end281:                                        ; preds = %do.body280
  %172 = load i8, i8* %bRet, align 1
  %tobool282 = trunc i8 %172 to i1
  store i1 %tobool282, i1* %retval, align 1
  br label %return

return:                                           ; preds = %do.end281, %if.end264, %do.end183, %do.end176, %do.end107, %do.end101, %do.end98, %do.end85, %do.end63, %do.end60, %do.end42, %do.end38, %do.end30, %do.end23, %do.end4
  %173 = load i1, i1* %retval, align 1
  ret i1 %173
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @cxxParserAnalyzeOtherStatement() #0 {
entry:
  %t = alloca %struct._CXXToken*, align 8
  %eScopeType = alloca i32, align 4
  %oInfo = alloca %struct._CXXFunctionSignatureInfo, align 8
  %iScopesPushed = alloca i32, align 4
  %pBegin = alloca %struct._CXXToken*, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  %0 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %iCount = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %0, i32 0, i32 2
  %1 = load i32, i32* %iCount, align 8
  %cmp = icmp slt i32 %1, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end2
  br label %do.body3

do.body3:                                         ; preds = %if.then
  br label %do.end4

do.end4:                                          ; preds = %do.body3
  br label %do.end56

if.end:                                           ; preds = %do.end2
  %2 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 13), align 4
  %and = and i32 %2, 128
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  br label %do.body6

do.body6:                                         ; preds = %if.then5
  br label %do.end7

do.end7:                                          ; preds = %do.body6
  br label %do.end56

if.end8:                                          ; preds = %if.end
  %3 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %tobool9 = icmp ne %struct._CXXTokenChain* %3, null
  br i1 %tobool9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end8
  %4 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %pHead = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %4, i32 0, i32 0
  %5 = load %struct._CXXToken*, %struct._CXXToken** %pHead, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._CXXToken* [ %5, %cond.true ], [ null, %cond.false ]
  store %struct._CXXToken* %cond, %struct._CXXToken** %t, align 8
  %6 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %eType = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %6, i32 0, i32 0
  %7 = load i32, i32* %eType, align 8
  %and10 = and i32 %7, 6
  %tobool11 = icmp ne i32 %and10, 0
  br i1 %tobool11, label %if.end15, label %if.then12

if.then12:                                        ; preds = %cond.end
  br label %do.body13

do.body13:                                        ; preds = %if.then12
  br label %do.end14

do.end14:                                         ; preds = %do.body13
  br label %do.end56

if.end15:                                         ; preds = %cond.end
  %call = call i32 @cxxScopeGetType()
  store i32 %call, i32* %eScopeType, align 4
  %8 = load i32, i32* %eScopeType, align 4
  %cmp16 = icmp eq i32 %8, 0
  br i1 %cmp16, label %if.then17, label %if.end25

if.then17:                                        ; preds = %if.end15
  %9 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %call18 = call zeroext i1 @cxxParserExtractVariableDeclarations(%struct._CXXTokenChain* %9, i32 0)
  br i1 %call18, label %if.then19, label %if.end22

if.then19:                                        ; preds = %if.then17
  br label %do.body20

do.body20:                                        ; preds = %if.then19
  br label %do.end21

do.end21:                                         ; preds = %do.body20
  br label %do.end56

if.end22:                                         ; preds = %if.then17
  br label %do.body23

do.body23:                                        ; preds = %if.end22
  br label %do.end24

do.end24:                                         ; preds = %do.body23
  br label %do.end56

if.end25:                                         ; preds = %if.end15
  br label %check_function_signature

check_function_signature:                         ; preds = %do.end42, %if.end25
  %10 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %call26 = call zeroext i1 @cxxParserLookForFunctionSignature(%struct._CXXTokenChain* %10, %struct._CXXFunctionSignatureInfo* %oInfo, %struct._CXXFunctionParameterInfo* null)
  br i1 %call26, label %if.then27, label %if.end47

if.then27:                                        ; preds = %check_function_signature
  br label %do.body28

do.body28:                                        ; preds = %if.then27
  br label %do.end29

do.end29:                                         ; preds = %do.body28
  %11 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 13), align 4
  %and30 = and i32 %11, 4096
  %tobool31 = icmp ne i32 %and30, 0
  br i1 %tobool31, label %if.then32, label %if.else

if.then32:                                        ; preds = %do.end29
  br label %do.body33

do.body33:                                        ; preds = %if.then32
  br label %do.end34

do.end34:                                         ; preds = %do.body33
  br label %if.end37

if.else:                                          ; preds = %do.end29
  %call35 = call i32 @cxxParserEmitFunctionTags(%struct._CXXFunctionSignatureInfo* %oInfo, i32 7, i32 1, i32* null)
  store i32 %call35, i32* %iScopesPushed, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else
  %12 = load i32, i32* %iScopesPushed, align 4
  %cmp36 = icmp sgt i32 %12, 0
  br i1 %cmp36, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @cxxScopePop()
  %13 = load i32, i32* %iScopesPushed, align 4
  %dec = add nsw i32 %13, -1
  store i32 %dec, i32* %iScopesPushed, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end37

if.end37:                                         ; preds = %while.end, %do.end34
  %pTrailingComma = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %oInfo, i32 0, i32 10
  %14 = load %struct._CXXToken*, %struct._CXXToken** %pTrailingComma, align 8
  %tobool38 = icmp ne %struct._CXXToken* %14, null
  br i1 %tobool38, label %if.then39, label %if.end44

if.then39:                                        ; preds = %if.end37
  %15 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %call40 = call %struct._CXXToken* @cxxTokenChainFirstTokenNotOfType(%struct._CXXTokenChain* %15, i32 6)
  store %struct._CXXToken* %call40, %struct._CXXToken** %pBegin, align 8
  br label %do.body41

do.body41:                                        ; preds = %if.then39
  br label %do.end42

do.end42:                                         ; preds = %do.body41
  %16 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %17 = load %struct._CXXToken*, %struct._CXXToken** %pBegin, align 8
  %pTrailingComma43 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %oInfo, i32 0, i32 10
  %18 = load %struct._CXXToken*, %struct._CXXToken** %pTrailingComma43, align 8
  call void @cxxTokenChainDestroyRange(%struct._CXXTokenChain* %16, %struct._CXXToken* %17, %struct._CXXToken* %18)
  br label %check_function_signature

if.end44:                                         ; preds = %if.end37
  br label %do.body45

do.body45:                                        ; preds = %if.end44
  br label %do.end46

do.end46:                                         ; preds = %do.body45
  br label %do.end56

if.end47:                                         ; preds = %check_function_signature
  %19 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 13), align 4
  %and48 = and i32 %19, 114
  %tobool49 = icmp ne i32 %and48, 0
  br i1 %tobool49, label %if.then50, label %if.end53

if.then50:                                        ; preds = %if.end47
  br label %do.body51

do.body51:                                        ; preds = %if.then50
  br label %do.end52

do.end52:                                         ; preds = %do.body51
  br label %do.end56

if.end53:                                         ; preds = %if.end47
  %20 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %call54 = call zeroext i1 @cxxParserExtractVariableDeclarations(%struct._CXXTokenChain* %20, i32 0)
  br label %do.body55

do.body55:                                        ; preds = %if.end53
  br label %do.end56

do.end56:                                         ; preds = %do.end4, %do.end7, %do.end14, %do.end21, %do.end24, %do.end46, %do.end52, %do.body55
  ret void
}

declare i32 @cxxScopeGetType() #1

declare zeroext i1 @cxxParserLookForFunctionSignature(%struct._CXXTokenChain*, %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionParameterInfo*) #1

declare i32 @cxxParserEmitFunctionTags(%struct._CXXFunctionSignatureInfo*, i32, i32, i32*) #1

declare %struct._CXXToken* @cxxTokenChainFirstTokenNotOfType(%struct._CXXTokenChain*, i32) #1

declare void @cxxTokenChainDestroyRange(%struct._CXXTokenChain*, %struct._CXXToken*, %struct._CXXToken*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @cxxParserParseAccessSpecifier() #0 {
entry:
  %retval = alloca i1, align 1
  %uExtraType = alloca i32, align 4
  %eScopeType = alloca i32, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  store i32 0, i32* %uExtraType, align 4
  %call = call i32 @cxxScopeGetType()
  store i32 %call, i32* %eScopeType, align 4
  %0 = load %struct.sPtrArray*, %struct.sPtrArray** @pSubparsers, align 8
  %tobool = icmp ne %struct.sPtrArray* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %do.end
  %call1 = call %struct.sPtrArray* @ptrArrayNew(void (i8*)* null)
  store %struct.sPtrArray* %call1, %struct.sPtrArray** @pSubparsers, align 8
  %1 = load %struct.sPtrArray*, %struct.sPtrArray** @pSubparsers, align 8
  %2 = bitcast %struct.sPtrArray* %1 to i8*
  %call2 = call i8* @trashBoxPut(%struct.sTrashBox* null, i8* %2, void (i8*)* bitcast (void (%struct.sPtrArray*)* @ptrArrayDelete to void (i8*)*))
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end
  %3 = load i32, i32* %eScopeType, align 4
  %cmp = icmp ne i32 %3, 2
  br i1 %cmp, label %land.lhs.true, label %if.end16

land.lhs.true:                                    ; preds = %if.end
  %4 = load i32, i32* %eScopeType, align 4
  %cmp3 = icmp ne i32 %4, 4
  br i1 %cmp3, label %land.lhs.true4, label %if.end16

land.lhs.true4:                                   ; preds = %land.lhs.true
  %5 = load i32, i32* %eScopeType, align 4
  %cmp5 = icmp ne i32 %5, 5
  br i1 %cmp5, label %if.then6, label %if.end16

if.then6:                                         ; preds = %land.lhs.true4
  br label %do.body7

do.body7:                                         ; preds = %if.then6
  br label %do.end8

do.end8:                                          ; preds = %do.body7
  %6 = load i8, i8* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 14), align 8
  %tobool9 = trunc i8 %6 to i1
  br i1 %tobool9, label %if.end13, label %if.then10

if.then10:                                        ; preds = %do.end8
  br label %do.body11

do.body11:                                        ; preds = %if.then10
  br label %do.end12

do.end12:                                         ; preds = %do.body11
  store i1 true, i1* %retval, align 1
  br label %return

if.end13:                                         ; preds = %do.end8
  br label %do.body14

do.body14:                                        ; preds = %if.end13
  br label %do.end15

do.end15:                                         ; preds = %do.body14
  store i1 false, i1* %retval, align 1
  br label %return

if.end16:                                         ; preds = %land.lhs.true4, %land.lhs.true, %if.end
  %7 = load %struct.sPtrArray*, %struct.sPtrArray** @pSubparsers, align 8
  %call17 = call zeroext i1 @cxxSubparserNotifyParseAccessSpecifier(%struct.sPtrArray* %7)
  br i1 %call17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end16
  store i32 2, i32* %uExtraType, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end16
  %8 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %eKeyword = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %8, i32 0, i32 2
  %9 = load i32, i32* %eKeyword, align 8
  switch i32 %9, label %sw.default [
    i32 64, label %sw.bb
    i32 62, label %sw.bb20
    i32 63, label %sw.bb21
  ]

sw.bb:                                            ; preds = %if.end19
  call void @cxxScopeSetAccess(i32 1)
  br label %sw.epilog

sw.bb20:                                          ; preds = %if.end19
  call void @cxxScopeSetAccess(i32 2)
  br label %sw.epilog

sw.bb21:                                          ; preds = %if.end19
  call void @cxxScopeSetAccess(i32 3)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end19
  br label %do.body22

do.body22:                                        ; preds = %sw.default
  br label %do.end23

do.end23:                                         ; preds = %do.body22
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end23, %sw.bb21, %sw.bb20, %sw.bb
  br label %findColon

findColon:                                        ; preds = %if.then35, %sw.epilog
  %10 = load i32, i32* %uExtraType, align 4
  %or = or i32 %10, 16
  %or24 = or i32 %or, 64
  %or25 = or i32 %or24, 8388608
  %or26 = or i32 %or25, 1
  %call27 = call zeroext i1 @cxxParserParseUpToOneOf(i32 %or26, i1 zeroext false)
  br i1 %call27, label %if.end31, label %if.then28

if.then28:                                        ; preds = %findColon
  br label %do.body29

do.body29:                                        ; preds = %if.then28
  br label %do.end30

do.end30:                                         ; preds = %do.body29
  %11 = load %struct.sPtrArray*, %struct.sPtrArray** @pSubparsers, align 8
  call void @ptrArrayClear(%struct.sPtrArray* %11)
  store i1 false, i1* %retval, align 1
  br label %return

if.end31:                                         ; preds = %findColon
  %12 = load i32, i32* %uExtraType, align 4
  %tobool32 = icmp ne i32 %12, 0
  br i1 %tobool32, label %land.lhs.true33, label %if.end36

land.lhs.true33:                                  ; preds = %if.end31
  %13 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %eType = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %13, i32 0, i32 0
  %14 = load i32, i32* %eType, align 8
  %cmp34 = icmp eq i32 %14, 2
  br i1 %cmp34, label %if.then35, label %if.end36

if.then35:                                        ; preds = %land.lhs.true33
  %15 = load %struct.sPtrArray*, %struct.sPtrArray** @pSubparsers, align 8
  %16 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  call void @cxxSubparserNotifyfoundExtraIdentifierAsAccessSpecifier(%struct.sPtrArray* %15, %struct._CXXToken* %16)
  br label %findColon

if.end36:                                         ; preds = %land.lhs.true33, %if.end31
  %17 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  call void @cxxTokenChainClear(%struct._CXXTokenChain* %17)
  %18 = load %struct.sPtrArray*, %struct.sPtrArray** @pSubparsers, align 8
  call void @ptrArrayClear(%struct.sPtrArray* %18)
  br label %do.body37

do.body37:                                        ; preds = %if.end36
  br label %do.end38

do.end38:                                         ; preds = %do.body37
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %do.end38, %do.end30, %do.end15, %do.end12
  %19 = load i1, i1* %retval, align 1
  ret i1 %19
}

declare %struct.sPtrArray* @ptrArrayNew(void (i8*)*) #1

declare i8* @trashBoxPut(%struct.sTrashBox*, i8*, void (i8*)*) #1

declare void @ptrArrayDelete(%struct.sPtrArray*) #1

declare zeroext i1 @cxxSubparserNotifyParseAccessSpecifier(%struct.sPtrArray*) #1

declare void @cxxScopeSetAccess(i32) #1

declare void @ptrArrayClear(%struct.sPtrArray*) #1

declare void @cxxSubparserNotifyfoundExtraIdentifierAsAccessSpecifier(%struct.sPtrArray*, %struct._CXXToken*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @cxxParserParseIfForWhileSwitch() #0 {
entry:
  %retval = alloca i1, align 1
  %pChain = alloca %struct._CXXTokenChain*, align 8
  %t = alloca %struct._CXXToken*, align 8
  %vStringClear_s = alloca %struct.sVString*, align 8
  %bRet = alloca i8, align 1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %call = call zeroext i1 @cxxParserParseUpToOneOf(i32 268959809, i1 zeroext false)
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %do.end
  br label %do.body1

do.body1:                                         ; preds = %if.then
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %do.end
  %0 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %eType = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %0, i32 0, i32 0
  %1 = load i32, i32* %eType, align 8
  %and = and i32 %1, 65
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then3, label %if.end6

if.then3:                                         ; preds = %if.end
  br label %do.body4

do.body4:                                         ; preds = %if.then3
  br label %do.end5

do.end5:                                          ; preds = %do.body4
  store i1 true, i1* %retval, align 1
  br label %return

if.end6:                                          ; preds = %if.end
  %2 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %eType7 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %2, i32 0, i32 0
  %3 = load i32, i32* %eType7, align 8
  %cmp = icmp eq i32 %3, 268435456
  br i1 %cmp, label %if.then8, label %if.end27

if.then8:                                         ; preds = %if.end6
  %4 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %pChain9 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %4, i32 0, i32 3
  %5 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain9, align 8
  store %struct._CXXTokenChain* %5, %struct._CXXTokenChain** %pChain, align 8
  br label %do.body10

do.body10:                                        ; preds = %if.then8
  br label %do.end11

do.end11:                                         ; preds = %do.body10
  %6 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain, align 8
  %call12 = call %struct._CXXToken* @cxxTokenChainFirstTokenOfType(%struct._CXXTokenChain* %6, i32 114688)
  %tobool13 = icmp ne %struct._CXXToken* %call12, null
  br i1 %tobool13, label %lor.lhs.false, label %if.then16

lor.lhs.false:                                    ; preds = %do.end11
  %7 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain, align 8
  %call14 = call %struct._CXXToken* @cxxTokenChainFirstTokenOfType(%struct._CXXTokenChain* %7, i32 320)
  %tobool15 = icmp ne %struct._CXXToken* %call14, null
  br i1 %tobool15, label %if.then16, label %if.end24

if.then16:                                        ; preds = %lor.lhs.false, %do.end11
  %8 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain, align 8
  %call17 = call %struct._CXXToken* @cxxTokenChainTakeFirst(%struct._CXXTokenChain* %8)
  call void @cxxTokenDestroy(%struct._CXXToken* %call17)
  %9 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain, align 8
  %tobool18 = icmp ne %struct._CXXTokenChain* %9, null
  br i1 %tobool18, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then16
  %10 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain, align 8
  %pTail = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %10, i32 0, i32 1
  %11 = load %struct._CXXToken*, %struct._CXXToken** %pTail, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then16
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._CXXToken* [ %11, %cond.true ], [ null, %cond.false ]
  store %struct._CXXToken* %cond, %struct._CXXToken** %t, align 8
  %12 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %eType19 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %12, i32 0, i32 0
  store i32 64, i32* %eType19, align 8
  br label %do.body20

do.body20:                                        ; preds = %cond.end
  %13 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pszWord = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %13, i32 0, i32 1
  %14 = load %struct.sVString*, %struct.sVString** %pszWord, align 8
  store %struct.sVString* %14, %struct.sVString** %vStringClear_s, align 8
  %15 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %15, i32 0, i32 0
  store i64 0, i64* %length, align 8
  %16 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %16, i32 0, i32 2
  %17 = load i8*, i8** %buffer, align 8
  %arrayidx = getelementptr inbounds i8, i8* %17, i64 0
  store i8 0, i8* %arrayidx, align 1
  br label %do.end21

do.end21:                                         ; preds = %do.body20
  %18 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pszWord22 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %18, i32 0, i32 1
  %19 = load %struct.sVString*, %struct.sVString** %pszWord22, align 8
  call void @vStringPut(%struct.sVString* %19, i32 59)
  %20 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain, align 8
  %call23 = call zeroext i1 @cxxParserExtractVariableDeclarations(%struct._CXXTokenChain* %20, i32 0)
  br label %if.end24

if.end24:                                         ; preds = %do.end21, %lor.lhs.false
  br label %do.body25

do.body25:                                        ; preds = %if.end24
  br label %do.end26

do.end26:                                         ; preds = %do.body25
  store i1 true, i1* %retval, align 1
  br label %return

if.end27:                                         ; preds = %if.end6
  %call28 = call zeroext i1 @cxxParserParseBlock(i1 zeroext true)
  %frombool = zext i1 %call28 to i8
  store i8 %frombool, i8* %bRet, align 1
  br label %do.body29

do.body29:                                        ; preds = %if.end27
  br label %do.end30

do.end30:                                         ; preds = %do.body29
  %21 = load i8, i8* %bRet, align 1
  %tobool31 = trunc i8 %21 to i1
  store i1 %tobool31, i1* %retval, align 1
  br label %return

return:                                           ; preds = %do.end30, %do.end26, %do.end5, %do.end2
  %22 = load i1, i1* %retval, align 1
  ret i1 %22
}

declare %struct._CXXToken* @cxxTokenChainFirstTokenOfType(%struct._CXXTokenChain*, i32) #1

declare %struct._CXXToken* @cxxTokenChainTakeFirst(%struct._CXXTokenChain*) #1

declare zeroext i1 @cxxParserParseBlock(i1 zeroext) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @cxxCParserMain(i32 %passCount) #0 {
entry:
  %passCount.addr = alloca i32, align 4
  %r = alloca i32, align 4
  store i32 %passCount, i32* %passCount.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 3), align 4
  call void @cxxTagInitForLanguage(i32 %0)
  store i8 0, i8* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 14), align 8
  %call = call zeroext i1 @cxxKeywordEnablePublicProtectedPrivate(i1 zeroext false)
  %1 = load i32, i32* %passCount.addr, align 4
  %call1 = call i32 @cxxParserMain(i32 %1)
  store i32 %call1, i32* %r, align 4
  br label %do.body2

do.body2:                                         ; preds = %do.end
  br label %do.end3

do.end3:                                          ; preds = %do.body2
  %2 = load i32, i32* %r, align 4
  ret i32 %2
}

declare void @cxxTagInitForLanguage(i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @cxxParserMain(i32 %passCount) #0 {
entry:
  %retval = alloca i32, align 4
  %passCount.addr = alloca i32, align 4
  %kind_for_define = alloca i32, align 4
  %kind_for_header = alloca i32, align 4
  %role_for_macro_undef = alloca i32, align 4
  %role_for_header_system = alloca i32, align 4
  %role_for_header_local = alloca i32, align 4
  %bRet = alloca i8, align 1
  store i32 %passCount, i32* %passCount.addr, align 4
  call void @cxxScopeClear()
  call void @cxxTokenAPINewFile()
  call void @cxxParserNewStatement()
  store i32 0, i32* %kind_for_define, align 4
  store i32 4, i32* %kind_for_header, align 4
  store i32 0, i32* %role_for_macro_undef, align 4
  store i32 0, i32* %role_for_header_system, align 4
  store i32 1, i32* %role_for_header_local, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load i32, i32* %passCount.addr, align 4
  %cmp = icmp ugt i32 %0, 1
  %1 = load i32, i32* %kind_for_define, align 4
  %2 = load i32, i32* %role_for_macro_undef, align 4
  %3 = load i32, i32* %kind_for_header, align 4
  %4 = load i32, i32* %role_for_header_system, align 4
  %5 = load i32, i32* %role_for_header_local, align 4
  call void @cppInit(i1 zeroext %cmp, i1 zeroext false, i1 zeroext true, i1 zeroext false, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5)
  store i32 32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 12), align 8
  %call = call zeroext i1 @cxxParserParseBlock(i1 zeroext false)
  %frombool = zext i1 %call to i8
  store i8 %frombool, i8* %bRet, align 1
  call void @cppTerminate()
  %6 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  call void @cxxTokenChainClear(%struct._CXXTokenChain* %6)
  %7 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 10), align 8
  %tobool = icmp ne %struct._CXXTokenChain* %7, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  %8 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 10), align 8
  call void @cxxTokenChainClear(%struct._CXXTokenChain* %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end
  %9 = load i8, i8* %bRet, align 1
  %tobool1 = trunc i8 %9 to i1
  br i1 %tobool1, label %if.end6, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %10 = load i32, i32* %passCount.addr, align 4
  %cmp2 = icmp eq i32 %10, 1
  br i1 %cmp2, label %if.then3, label %if.end6

if.then3:                                         ; preds = %land.lhs.true
  br label %do.body4

do.body4:                                         ; preds = %if.then3
  br label %do.end5

do.end5:                                          ; preds = %do.body4
  store i32 1, i32* %retval, align 4
  br label %return

if.end6:                                          ; preds = %land.lhs.true, %if.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end6, %do.end5
  %11 = load i32, i32* %retval, align 4
  ret i32 %11
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @cxxCUDAParserMain(i32 %passCount) #0 {
entry:
  %passCount.addr = alloca i32, align 4
  %r = alloca i32, align 4
  store i32 %passCount, i32* %passCount.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 4), align 8
  call void @cxxTagInitForLanguage(i32 %0)
  store i8 0, i8* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 14), align 8
  %call = call zeroext i1 @cxxKeywordEnablePublicProtectedPrivate(i1 zeroext false)
  %1 = load i32, i32* %passCount.addr, align 4
  %call1 = call i32 @cxxParserMain(i32 %1)
  store i32 %call1, i32* %r, align 4
  br label %do.body2

do.body2:                                         ; preds = %do.end
  br label %do.end3

do.end3:                                          ; preds = %do.body2
  %2 = load i32, i32* %r, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @cxxCppParserMain(i32 %passCount) #0 {
entry:
  %passCount.addr = alloca i32, align 4
  %r = alloca i32, align 4
  store i32 %passCount, i32* %passCount.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 2), align 8
  call void @cxxTagInitForLanguage(i32 %0)
  %call = call zeroext i1 @isInputHeaderFile()
  %lnot = xor i1 %call, true
  %frombool = zext i1 %lnot to i8
  store i8 %frombool, i8* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 14), align 8
  %1 = load i8, i8* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 14), align 8
  %tobool = trunc i8 %1 to i1
  %call1 = call zeroext i1 @cxxKeywordEnablePublicProtectedPrivate(i1 zeroext %tobool)
  %2 = load i32, i32* %passCount.addr, align 4
  %call2 = call i32 @cxxParserMain(i32 %2)
  store i32 %call2, i32* %r, align 4
  br label %do.body3

do.body3:                                         ; preds = %do.end
  br label %do.end4

do.end4:                                          ; preds = %do.body3
  %3 = load i32, i32* %r, align 4
  ret i32 %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @cxxCUDAParserInitialize(i32 %language) #0 {
entry:
  %language.addr = alloca i32, align 4
  store i32 %language, i32* %language.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load i8, i8* @g_bFirstRun, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  call void @cxxParserFirstInit()
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end
  %1 = load i32, i32* %language.addr, align 4
  store i32 %1, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 4), align 8
  %2 = load i32, i32* %language.addr, align 4
  call void @cxxBuildKeywordHash(i32 %2, i32 4)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @cxxParserFirstInit() #0 {
entry:
  call void @llvm.memset.p0i8.i64(i8* align 8 bitcast (%struct._CXXParserState* @g_cxx to i8*), i8 0, i64 96, i1 false)
  store i32 -1, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 3), align 4
  store i32 -1, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 2), align 8
  store i32 -1, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 4), align 8
  call void @cxxTokenAPIInit()
  %call = call %struct._CXXTokenChain* @cxxTokenChainCreate()
  store %struct._CXXTokenChain* %call, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  call void @cxxScopeInit()
  store i8 0, i8* @g_bFirstRun, align 1
  ret void
}

declare void @cxxBuildKeywordHash(i32, i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @cxxCppParserInitialize(i32 %language) #0 {
entry:
  %language.addr = alloca i32, align 4
  store i32 %language, i32* %language.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load i8, i8* @g_bFirstRun, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  call void @cxxParserFirstInit()
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end
  %1 = load i32, i32* %language.addr, align 4
  store i32 %1, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 2), align 8
  %2 = load i32, i32* %language.addr, align 4
  call void @cxxBuildKeywordHash(i32 %2, i32 2)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @cxxCParserInitialize(i32 %language) #0 {
entry:
  %language.addr = alloca i32, align 4
  store i32 %language, i32* %language.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load i8, i8* @g_bFirstRun, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  call void @cxxParserFirstInit()
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end
  %1 = load i32, i32* %language.addr, align 4
  store i32 %1, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 3), align 4
  %2 = load i32, i32* %language.addr, align 4
  call void @cxxBuildKeywordHash(i32 %2, i32 1)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @cxxParserCleanup(i32 %language, i1 zeroext %initialized) #0 {
entry:
  %language.addr = alloca i32, align 4
  %initialized.addr = alloca i8, align 1
  store i32 %language, i32* %language.addr, align 4
  %frombool = zext i1 %initialized to i8
  store i8 %frombool, i8* %initialized.addr, align 1
  %0 = load i8, i8* @g_bFirstRun, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  store i8 1, i8* @g_bFirstRun, align 1
  %1 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %tobool1 = icmp ne %struct._CXXTokenChain* %1, null
  br i1 %tobool1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %2 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  call void @cxxTokenChainDestroy(%struct._CXXTokenChain* %2)
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %3 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 10), align 8
  %tobool4 = icmp ne %struct._CXXTokenChain* %3, null
  br i1 %tobool4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  %4 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 10), align 8
  call void @cxxTokenChainDestroy(%struct._CXXTokenChain* %4)
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end3
  call void @cxxScopeDone()
  call void @cxxTokenAPIDone()
  store %struct.sPtrArray* null, %struct.sPtrArray** @pSubparsers, align 8
  br label %return

return:                                           ; preds = %if.end6, %if.then
  ret void
}

declare void @cxxScopeDone() #1

declare void @cxxTokenAPIDone() #1

declare void @vStringResize(%struct.sVString*, i64) #1

declare [2 x i64] @getInputFilePosition() #1

declare void @vStringCatS(%struct.sVString*, i8*) #1

declare void @cxxTokenChainPrepend(%struct._CXXTokenChain*, %struct._CXXToken*) #1

declare %struct._CXXToken* @cxxTokenCreateKeyword(i32, [2 x i64], i32) #1

declare zeroext i1 @cxxParserParseBlockHandleOpeningBracket() #1

declare void @cxxKeywordEnableFinal(i1 zeroext) #1

declare zeroext i1 @cxxParserTokenChainLooksLikeFunctionParameterList(%struct._CXXTokenChain*, %struct._CXXFunctionParameterInfo*) #1

declare zeroext i1 @cxxParserParseTemplateAngleBracketsToSeparateChain() #1

declare zeroext i1 @cxxKeywordIsCPPSpecific(i32) #1

declare void @cxxTokenChainCondense(%struct._CXXTokenChain*, i32) #1

declare zeroext i1 @cxxTagFieldEnabled(i32) #1

declare void @cxxTokenChainNormalizeTypeNameSpacing(%struct._CXXTokenChain*) #1

declare void @cxxTagSetField(i32, i8*) #1

declare void @cxxScopeClear() #1

declare void @cxxTokenAPINewFile() #1

declare void @cppInit(i1 zeroext, i1 zeroext, i1 zeroext, i1 zeroext, i32, i32, i32, i32, i32) #1

declare void @cppTerminate() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare void @cxxTokenAPIInit() #1

declare void @cxxScopeInit() #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 10.0.0 (https://github.com/holzschu/clang.git 0cfc630fbdb62e96720b611a57123ef3eb13e297) (https://github.com/holzschu/llvm.git 0d8a71e39b28502c24718f7e74b5acbcfe36dfe0)"}
