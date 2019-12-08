; ModuleID = 'cxx/cxx_parser_lambda.c'
source_filename = "cxx/cxx_parser_lambda.c"
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

@g_cxx = external global %struct._CXXParserState, align 8

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct._CXXToken* @cxxParserOpeningBracketIsLambda() #0 {
entry:
  %retval = alloca %struct._CXXToken*, align 8
  %t = alloca %struct._CXXToken*, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %pPrev = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %0, i32 0, i32 8
  %1 = load %struct._CXXToken*, %struct._CXXToken** %pPrev, align 8
  store %struct._CXXToken* %1, %struct._CXXToken** %t, align 8
  %2 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %tobool = icmp ne %struct._CXXToken* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %do.end
  store %struct._CXXToken* null, %struct._CXXToken** %retval, align 8
  br label %return

if.end:                                           ; preds = %do.end
  %3 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %eType = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %3, i32 0, i32 0
  %4 = load i32, i32* %eType, align 8
  %cmp = icmp eq i32 %4, 536870912
  br i1 %cmp, label %if.then1, label %if.end9

if.then1:                                         ; preds = %if.end
  %5 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pPrev2 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %5, i32 0, i32 8
  %6 = load %struct._CXXToken*, %struct._CXXToken** %pPrev2, align 8
  %tobool3 = icmp ne %struct._CXXToken* %6, null
  br i1 %tobool3, label %land.lhs.true, label %if.end8

land.lhs.true:                                    ; preds = %if.then1
  %7 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pPrev4 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %7, i32 0, i32 8
  %8 = load %struct._CXXToken*, %struct._CXXToken** %pPrev4, align 8
  %eType5 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %8, i32 0, i32 0
  %9 = load i32, i32* %eType5, align 8
  %cmp6 = icmp eq i32 %9, 2
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %land.lhs.true
  store %struct._CXXToken* null, %struct._CXXToken** %retval, align 8
  br label %return

if.end8:                                          ; preds = %land.lhs.true, %if.then1
  %10 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  store %struct._CXXToken* %10, %struct._CXXToken** %retval, align 8
  br label %return

if.end9:                                          ; preds = %if.end
  %11 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %eType10 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %11, i32 0, i32 0
  %12 = load i32, i32* %eType10, align 8
  %cmp11 = icmp eq i32 %12, 268435456
  br i1 %cmp11, label %if.then12, label %if.end21

if.then12:                                        ; preds = %if.end9
  %13 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pPrev13 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %13, i32 0, i32 8
  %14 = load %struct._CXXToken*, %struct._CXXToken** %pPrev13, align 8
  store %struct._CXXToken* %14, %struct._CXXToken** %t, align 8
  %15 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %tobool14 = icmp ne %struct._CXXToken* %15, null
  br i1 %tobool14, label %if.end16, label %if.then15

if.then15:                                        ; preds = %if.then12
  store %struct._CXXToken* null, %struct._CXXToken** %retval, align 8
  br label %return

if.end16:                                         ; preds = %if.then12
  %16 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %eType17 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %16, i32 0, i32 0
  %17 = load i32, i32* %eType17, align 8
  %cmp18 = icmp eq i32 %17, 536870912
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end16
  %18 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pNext = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %18, i32 0, i32 7
  %19 = load %struct._CXXToken*, %struct._CXXToken** %pNext, align 8
  store %struct._CXXToken* %19, %struct._CXXToken** %retval, align 8
  br label %return

if.end20:                                         ; preds = %if.end16
  store %struct._CXXToken* null, %struct._CXXToken** %retval, align 8
  br label %return

if.end21:                                         ; preds = %if.end9
  %20 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %call = call %struct._CXXToken* @cxxTokenChainPreviousTokenOfType(%struct._CXXToken* %20, i32 536871040)
  store %struct._CXXToken* %call, %struct._CXXToken** %t, align 8
  %21 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %tobool22 = icmp ne %struct._CXXToken* %21, null
  br i1 %tobool22, label %if.end24, label %if.then23

if.then23:                                        ; preds = %if.end21
  store %struct._CXXToken* null, %struct._CXXToken** %retval, align 8
  br label %return

if.end24:                                         ; preds = %if.end21
  %22 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %eType25 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %22, i32 0, i32 0
  %23 = load i32, i32* %eType25, align 8
  %cmp26 = icmp eq i32 %23, 536870912
  br i1 %cmp26, label %if.end28, label %if.then27

if.then27:                                        ; preds = %if.end24
  store %struct._CXXToken* null, %struct._CXXToken** %retval, align 8
  br label %return

if.end28:                                         ; preds = %if.end24
  %24 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pNext29 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %24, i32 0, i32 7
  %25 = load %struct._CXXToken*, %struct._CXXToken** %pNext29, align 8
  store %struct._CXXToken* %25, %struct._CXXToken** %t, align 8
  %26 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %eType30 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %26, i32 0, i32 0
  %27 = load i32, i32* %eType30, align 8
  %cmp31 = icmp eq i32 %27, 268435456
  br i1 %cmp31, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end28
  %28 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  store %struct._CXXToken* %28, %struct._CXXToken** %retval, align 8
  br label %return

if.end33:                                         ; preds = %if.end28
  store %struct._CXXToken* null, %struct._CXXToken** %retval, align 8
  br label %return

return:                                           ; preds = %if.end33, %if.then32, %if.then27, %if.then23, %if.end20, %if.then19, %if.then15, %if.end8, %if.then7, %if.then
  %29 = load %struct._CXXToken*, %struct._CXXToken** %retval, align 8
  ret %struct._CXXToken* %29
}

declare %struct._CXXToken* @cxxTokenChainPreviousTokenOfType(%struct._CXXToken*, i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @cxxParserHandleLambda(%struct._CXXToken* %pParenthesis) #0 {
entry:
  %pParenthesis.addr = alloca %struct._CXXToken*, align 8
  %pIdentifier = alloca %struct._CXXToken*, align 8
  %pSave = alloca %struct._CXXTokenChain*, align 8
  %pNew = alloca %struct._CXXTokenChain*, align 8
  %tag = alloca %struct.sTagEntryInfo*, align 8
  %pAfterParenthesis = alloca %struct._CXXToken*, align 8
  %pCaptureList = alloca %struct._CXXToken*, align 8
  %pTypeStart = alloca %struct._CXXToken*, align 8
  %pTypeEnd = alloca %struct._CXXToken*, align 8
  %iCorkQueueIndex = alloca i32, align 4
  %pTypeName = alloca %struct._CXXToken*, align 8
  %pszSignature = alloca %struct.sVString*, align 8
  %oParamInfo = alloca %struct._CXXFunctionParameterInfo, align 8
  %bRet = alloca i8, align 1
  %t = alloca %struct._CXXToken*, align 8
  store %struct._CXXToken* %pParenthesis, %struct._CXXToken** %pParenthesis.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  %call = call %struct._CXXToken* @cxxTokenCreateAnonymousIdentifier(i32 2)
  store %struct._CXXToken* %call, %struct._CXXToken** %pIdentifier, align 8
  %0 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  store %struct._CXXTokenChain* %0, %struct._CXXTokenChain** %pSave, align 8
  %call3 = call %struct._CXXTokenChain* @cxxTokenChainCreate()
  store %struct._CXXTokenChain* %call3, %struct._CXXTokenChain** %pNew, align 8
  %1 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pNew, align 8
  store %struct._CXXTokenChain* %1, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %2 = load %struct._CXXToken*, %struct._CXXToken** %pIdentifier, align 8
  %call4 = call %struct.sTagEntryInfo* @cxxTagBegin(i32 2, %struct._CXXToken* %2)
  store %struct.sTagEntryInfo* %call4, %struct.sTagEntryInfo** %tag, align 8
  %3 = load %struct._CXXToken*, %struct._CXXToken** %pParenthesis.addr, align 8
  %tobool = icmp ne %struct._CXXToken* %3, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end2
  %4 = load %struct._CXXToken*, %struct._CXXToken** %pParenthesis.addr, align 8
  %pNext = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %4, i32 0, i32 7
  %5 = load %struct._CXXToken*, %struct._CXXToken** %pNext, align 8
  br label %cond.end

cond.false:                                       ; preds = %do.end2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._CXXToken* [ %5, %cond.true ], [ null, %cond.false ]
  store %struct._CXXToken* %cond, %struct._CXXToken** %pAfterParenthesis, align 8
  store %struct._CXXToken* null, %struct._CXXToken** %pCaptureList, align 8
  %6 = load %struct._CXXToken*, %struct._CXXToken** %pParenthesis.addr, align 8
  %tobool5 = icmp ne %struct._CXXToken* %6, null
  br i1 %tobool5, label %if.then, label %if.end14

if.then:                                          ; preds = %cond.end
  %7 = load %struct._CXXToken*, %struct._CXXToken** %pParenthesis.addr, align 8
  %eType = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %7, i32 0, i32 0
  %8 = load i32, i32* %eType, align 8
  %cmp = icmp eq i32 %8, 536870912
  br i1 %cmp, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then
  %9 = load %struct._CXXToken*, %struct._CXXToken** %pParenthesis.addr, align 8
  store %struct._CXXToken* %9, %struct._CXXToken** %pCaptureList, align 8
  br label %if.end13

if.else:                                          ; preds = %if.then
  %10 = load %struct._CXXToken*, %struct._CXXToken** %pParenthesis.addr, align 8
  %pPrev = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %10, i32 0, i32 8
  %11 = load %struct._CXXToken*, %struct._CXXToken** %pPrev, align 8
  %tobool7 = icmp ne %struct._CXXToken* %11, null
  br i1 %tobool7, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.else
  %12 = load %struct._CXXToken*, %struct._CXXToken** %pParenthesis.addr, align 8
  %pPrev8 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %12, i32 0, i32 8
  %13 = load %struct._CXXToken*, %struct._CXXToken** %pPrev8, align 8
  %eType9 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %13, i32 0, i32 0
  %14 = load i32, i32* %eType9, align 8
  %cmp10 = icmp eq i32 %14, 536870912
  br i1 %cmp10, label %if.then11, label %if.end

if.then11:                                        ; preds = %land.lhs.true
  %15 = load %struct._CXXToken*, %struct._CXXToken** %pParenthesis.addr, align 8
  %pPrev12 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %15, i32 0, i32 8
  %16 = load %struct._CXXToken*, %struct._CXXToken** %pPrev12, align 8
  store %struct._CXXToken* %16, %struct._CXXToken** %pCaptureList, align 8
  br label %if.end

if.end:                                           ; preds = %if.then11, %land.lhs.true, %if.else
  br label %if.end13

if.end13:                                         ; preds = %if.end, %if.then6
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %cond.end
  %17 = load %struct._CXXToken*, %struct._CXXToken** %pAfterParenthesis, align 8
  %tobool15 = icmp ne %struct._CXXToken* %17, null
  br i1 %tobool15, label %land.lhs.true16, label %if.end23

land.lhs.true16:                                  ; preds = %if.end14
  %18 = load %struct._CXXToken*, %struct._CXXToken** %pAfterParenthesis, align 8
  %eType17 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %18, i32 0, i32 0
  %19 = load i32, i32* %eType17, align 8
  %cmp18 = icmp eq i32 %19, 4
  br i1 %cmp18, label %land.lhs.true19, label %if.end23

land.lhs.true19:                                  ; preds = %land.lhs.true16
  %20 = load %struct._CXXToken*, %struct._CXXToken** %pAfterParenthesis, align 8
  %eKeyword = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %20, i32 0, i32 2
  %21 = load i32, i32* %eKeyword, align 8
  %cmp20 = icmp eq i32 %21, 31
  br i1 %cmp20, label %if.then21, label %if.end23

if.then21:                                        ; preds = %land.lhs.true19
  %22 = load %struct._CXXToken*, %struct._CXXToken** %pAfterParenthesis, align 8
  %pNext22 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %22, i32 0, i32 7
  %23 = load %struct._CXXToken*, %struct._CXXToken** %pNext22, align 8
  store %struct._CXXToken* %23, %struct._CXXToken** %pAfterParenthesis, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %land.lhs.true19, %land.lhs.true16, %if.end14
  store %struct._CXXToken* null, %struct._CXXToken** %pTypeStart, align 8
  %24 = load %struct._CXXToken*, %struct._CXXToken** %pAfterParenthesis, align 8
  %tobool24 = icmp ne %struct._CXXToken* %24, null
  br i1 %tobool24, label %land.lhs.true25, label %if.end43

land.lhs.true25:                                  ; preds = %if.end23
  %25 = load %struct._CXXToken*, %struct._CXXToken** %pAfterParenthesis, align 8
  %eType26 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %25, i32 0, i32 0
  %26 = load i32, i32* %eType26, align 8
  %cmp27 = icmp eq i32 %26, 4096
  br i1 %cmp27, label %land.lhs.true28, label %if.end43

land.lhs.true28:                                  ; preds = %land.lhs.true25
  %27 = load %struct._CXXToken*, %struct._CXXToken** %pAfterParenthesis, align 8
  %pNext29 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %27, i32 0, i32 7
  %28 = load %struct._CXXToken*, %struct._CXXToken** %pNext29, align 8
  %tobool30 = icmp ne %struct._CXXToken* %28, null
  br i1 %tobool30, label %land.lhs.true31, label %if.end43

land.lhs.true31:                                  ; preds = %land.lhs.true28
  %29 = load %struct._CXXToken*, %struct._CXXToken** %pAfterParenthesis, align 8
  %pNext32 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %29, i32 0, i32 7
  %30 = load %struct._CXXToken*, %struct._CXXToken** %pNext32, align 8
  %eType33 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %30, i32 0, i32 0
  %31 = load i32, i32* %eType33, align 8
  %cmp34 = icmp eq i32 %31, 524288
  br i1 %cmp34, label %if.end43, label %if.then35

if.then35:                                        ; preds = %land.lhs.true31
  %32 = load %struct._CXXToken*, %struct._CXXToken** %pAfterParenthesis, align 8
  %pNext36 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %32, i32 0, i32 7
  %33 = load %struct._CXXToken*, %struct._CXXToken** %pNext36, align 8
  store %struct._CXXToken* %33, %struct._CXXToken** %pTypeStart, align 8
  %34 = load %struct._CXXToken*, %struct._CXXToken** %pTypeStart, align 8
  store %struct._CXXToken* %34, %struct._CXXToken** %pTypeEnd, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then35
  %35 = load %struct._CXXToken*, %struct._CXXToken** %pTypeEnd, align 8
  %pNext37 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %35, i32 0, i32 7
  %36 = load %struct._CXXToken*, %struct._CXXToken** %pNext37, align 8
  %tobool38 = icmp ne %struct._CXXToken* %36, null
  br i1 %tobool38, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %37 = load %struct._CXXToken*, %struct._CXXToken** %pTypeEnd, align 8
  %pNext39 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %37, i32 0, i32 7
  %38 = load %struct._CXXToken*, %struct._CXXToken** %pNext39, align 8
  %eType40 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %38, i32 0, i32 0
  %39 = load i32, i32* %eType40, align 8
  %cmp41 = icmp eq i32 %39, 524288
  %lnot = xor i1 %cmp41, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %40 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %40, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %41 = load %struct._CXXToken*, %struct._CXXToken** %pTypeEnd, align 8
  %pNext42 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %41, i32 0, i32 7
  %42 = load %struct._CXXToken*, %struct._CXXToken** %pNext42, align 8
  store %struct._CXXToken* %42, %struct._CXXToken** %pTypeEnd, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %if.end43

if.end43:                                         ; preds = %while.end, %land.lhs.true31, %land.lhs.true28, %land.lhs.true25, %if.end23
  store i32 0, i32* %iCorkQueueIndex, align 4
  %43 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag, align 8
  %tobool44 = icmp ne %struct.sTagEntryInfo* %43, null
  br i1 %tobool44, label %if.then45, label %if.end84

if.then45:                                        ; preds = %if.end43
  %44 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag, align 8
  %45 = bitcast %struct.sTagEntryInfo* %44 to i8*
  %bf.load = load i8, i8* %45, align 8
  %bf.clear = and i8 %bf.load, -3
  %bf.set = or i8 %bf.clear, 2
  store i8 %bf.set, i8* %45, align 8
  %46 = load %struct._CXXToken*, %struct._CXXToken** %pTypeStart, align 8
  %tobool46 = icmp ne %struct._CXXToken* %46, null
  br i1 %tobool46, label %if.then47, label %if.else49

if.then47:                                        ; preds = %if.then45
  %47 = load %struct._CXXToken*, %struct._CXXToken** %pTypeStart, align 8
  %48 = load %struct._CXXToken*, %struct._CXXToken** %pTypeEnd, align 8
  %call48 = call %struct._CXXToken* @cxxTagCheckAndSetTypeField(%struct._CXXToken* %47, %struct._CXXToken* %48)
  store %struct._CXXToken* %call48, %struct._CXXToken** %pTypeName, align 8
  br label %if.end50

if.else49:                                        ; preds = %if.then45
  store %struct._CXXToken* null, %struct._CXXToken** %pTypeName, align 8
  br label %if.end50

if.end50:                                         ; preds = %if.else49, %if.then47
  %49 = load %struct._CXXToken*, %struct._CXXToken** %pCaptureList, align 8
  %tobool51 = icmp ne %struct._CXXToken* %49, null
  br i1 %tobool51, label %land.lhs.true52, label %if.end66

land.lhs.true52:                                  ; preds = %if.end50
  %call53 = call zeroext i1 @cxxTagFieldEnabled(i32 2)
  br i1 %call53, label %if.then54, label %if.end66

if.then54:                                        ; preds = %land.lhs.true52
  br label %do.body55

do.body55:                                        ; preds = %if.then54
  br label %do.end56

do.end56:                                         ; preds = %do.body55
  %50 = load %struct._CXXToken*, %struct._CXXToken** %pCaptureList, align 8
  %pChain = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %50, i32 0, i32 3
  %51 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain, align 8
  call void @cxxTokenChainCondense(%struct._CXXTokenChain* %51, i32 0)
  br label %do.body57

do.body57:                                        ; preds = %do.end56
  br label %do.end58

do.end58:                                         ; preds = %do.body57
  %52 = load %struct._CXXToken*, %struct._CXXToken** %pCaptureList, align 8
  %pChain59 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %52, i32 0, i32 3
  %53 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain59, align 8
  %tobool60 = icmp ne %struct._CXXTokenChain* %53, null
  br i1 %tobool60, label %cond.true61, label %cond.false63

cond.true61:                                      ; preds = %do.end58
  %54 = load %struct._CXXToken*, %struct._CXXToken** %pCaptureList, align 8
  %pChain62 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %54, i32 0, i32 3
  %55 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain62, align 8
  %pHead = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %55, i32 0, i32 0
  %56 = load %struct._CXXToken*, %struct._CXXToken** %pHead, align 8
  br label %cond.end64

cond.false63:                                     ; preds = %do.end58
  br label %cond.end64

cond.end64:                                       ; preds = %cond.false63, %cond.true61
  %cond65 = phi %struct._CXXToken* [ %56, %cond.true61 ], [ null, %cond.false63 ]
  %pszWord = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %cond65, i32 0, i32 1
  %57 = load %struct.sVString*, %struct.sVString** %pszWord, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %57, i32 0, i32 2
  %58 = load i8*, i8** %buffer, align 8
  call void @cxxTagSetField(i32 2, i8* %58)
  br label %if.end66

if.end66:                                         ; preds = %cond.end64, %land.lhs.true52, %if.end50
  store %struct.sVString* null, %struct.sVString** %pszSignature, align 8
  %59 = load %struct._CXXToken*, %struct._CXXToken** %pParenthesis.addr, align 8
  %eType67 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %59, i32 0, i32 0
  %60 = load i32, i32* %eType67, align 8
  %cmp68 = icmp eq i32 %60, 268435456
  br i1 %cmp68, label %if.then69, label %if.end72

if.then69:                                        ; preds = %if.end66
  %61 = load %struct._CXXToken*, %struct._CXXToken** %pParenthesis.addr, align 8
  %pChain70 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %61, i32 0, i32 3
  %62 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain70, align 8
  %call71 = call %struct.sVString* @cxxTokenChainJoin(%struct._CXXTokenChain* %62, i8* null, i32 0)
  store %struct.sVString* %call71, %struct.sVString** %pszSignature, align 8
  br label %if.end72

if.end72:                                         ; preds = %if.then69, %if.end66
  %63 = load %struct.sVString*, %struct.sVString** %pszSignature, align 8
  %tobool73 = icmp ne %struct.sVString* %63, null
  br i1 %tobool73, label %if.then74, label %if.end76

if.then74:                                        ; preds = %if.end72
  %64 = load %struct.sVString*, %struct.sVString** %pszSignature, align 8
  %buffer75 = getelementptr inbounds %struct.sVString, %struct.sVString* %64, i32 0, i32 2
  %65 = load i8*, i8** %buffer75, align 8
  %66 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag, align 8
  %extensionFields = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %66, i32 0, i32 11
  %signature = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields, i32 0, i32 8
  store i8* %65, i8** %signature, align 8
  br label %if.end76

if.end76:                                         ; preds = %if.then74, %if.end72
  %call77 = call i32 @cxxTagCommit()
  store i32 %call77, i32* %iCorkQueueIndex, align 4
  %67 = load %struct._CXXToken*, %struct._CXXToken** %pTypeName, align 8
  %tobool78 = icmp ne %struct._CXXToken* %67, null
  br i1 %tobool78, label %if.then79, label %if.end80

if.then79:                                        ; preds = %if.end76
  %68 = load %struct._CXXToken*, %struct._CXXToken** %pTypeName, align 8
  call void @cxxTokenDestroy(%struct._CXXToken* %68)
  br label %if.end80

if.end80:                                         ; preds = %if.then79, %if.end76
  %69 = load %struct.sVString*, %struct.sVString** %pszSignature, align 8
  %tobool81 = icmp ne %struct.sVString* %69, null
  br i1 %tobool81, label %if.then82, label %if.end83

if.then82:                                        ; preds = %if.end80
  %70 = load %struct.sVString*, %struct.sVString** %pszSignature, align 8
  call void @vStringDelete(%struct.sVString* %70)
  br label %if.end83

if.end83:                                         ; preds = %if.then82, %if.end80
  br label %if.end84

if.end84:                                         ; preds = %if.end83, %if.end43
  %71 = load %struct._CXXToken*, %struct._CXXToken** %pIdentifier, align 8
  call void @cxxScopePush(%struct._CXXToken* %71, i32 0, i32 0)
  %72 = load %struct._CXXToken*, %struct._CXXToken** %pParenthesis.addr, align 8
  %tobool85 = icmp ne %struct._CXXToken* %72, null
  br i1 %tobool85, label %land.lhs.true86, label %if.end96

land.lhs.true86:                                  ; preds = %if.end84
  %73 = load %struct._CXXToken*, %struct._CXXToken** %pParenthesis.addr, align 8
  %eType87 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %73, i32 0, i32 0
  %74 = load i32, i32* %eType87, align 8
  %cmp88 = icmp eq i32 %74, 268435456
  br i1 %cmp88, label %land.lhs.true89, label %if.end96

land.lhs.true89:                                  ; preds = %land.lhs.true86
  %call90 = call zeroext i1 @cxxTagKindEnabled(i32 13)
  br i1 %call90, label %if.then91, label %if.end96

if.then91:                                        ; preds = %land.lhs.true89
  %75 = load %struct._CXXToken*, %struct._CXXToken** %pParenthesis.addr, align 8
  %pChain92 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %75, i32 0, i32 3
  %76 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain92, align 8
  %call93 = call zeroext i1 @cxxParserTokenChainLooksLikeFunctionParameterList(%struct._CXXTokenChain* %76, %struct._CXXFunctionParameterInfo* %oParamInfo)
  br i1 %call93, label %if.then94, label %if.end95

if.then94:                                        ; preds = %if.then91
  call void @cxxParserEmitFunctionParameterTags(%struct._CXXFunctionParameterInfo* %oParamInfo)
  br label %if.end95

if.end95:                                         ; preds = %if.then94, %if.then91
  br label %if.end96

if.end96:                                         ; preds = %if.end95, %land.lhs.true89, %land.lhs.true86, %if.end84
  %call97 = call zeroext i1 @cxxParserParseBlock(i1 zeroext true)
  %frombool = zext i1 %call97 to i8
  store i8 %frombool, i8* %bRet, align 1
  %77 = load i32, i32* %iCorkQueueIndex, align 4
  %cmp98 = icmp sgt i32 %77, 0
  br i1 %cmp98, label %if.then99, label %if.end100

if.then99:                                        ; preds = %if.end96
  %78 = load i32, i32* %iCorkQueueIndex, align 4
  call void @cxxParserMarkEndLineForTagInCorkQueue(i32 %78)
  br label %if.end100

if.end100:                                        ; preds = %if.then99, %if.end96
  call void @cxxScopePop()
  %79 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  store %struct._CXXTokenChain* %79, %struct._CXXTokenChain** %pNew, align 8
  %80 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pSave, align 8
  store %struct._CXXTokenChain* %80, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %81 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pSave, align 8
  %pTail = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %81, i32 0, i32 1
  %82 = load %struct._CXXToken*, %struct._CXXToken** %pTail, align 8
  store %struct._CXXToken* %82, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %83 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %eType101 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %83, i32 0, i32 0
  store i32 1073741824, i32* %eType101, align 8
  %84 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pNew, align 8
  %85 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %pChain102 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %85, i32 0, i32 3
  store %struct._CXXTokenChain* %84, %struct._CXXTokenChain** %pChain102, align 8
  %86 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pNew, align 8
  call void @cxxTokenChainClear(%struct._CXXTokenChain* %86)
  %call103 = call %struct._CXXToken* @cxxTokenCreate()
  store %struct._CXXToken* %call103, %struct._CXXToken** %t, align 8
  %87 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %eType104 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %87, i32 0, i32 0
  store i32 524288, i32* %eType104, align 8
  %88 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pszWord105 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %88, i32 0, i32 1
  %89 = load %struct.sVString*, %struct.sVString** %pszWord105, align 8
  call void @vStringPut(%struct.sVString* %89, i32 123)
  %90 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pNew, align 8
  %91 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  call void @cxxTokenChainAppend(%struct._CXXTokenChain* %90, %struct._CXXToken* %91)
  %call106 = call %struct._CXXToken* @cxxTokenCreate()
  store %struct._CXXToken* %call106, %struct._CXXToken** %t, align 8
  %92 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %eType107 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %92, i32 0, i32 0
  store i32 8388608, i32* %eType107, align 8
  %93 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pszWord108 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %93, i32 0, i32 1
  %94 = load %struct.sVString*, %struct.sVString** %pszWord108, align 8
  call void @vStringPut(%struct.sVString* %94, i32 125)
  %95 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pNew, align 8
  %96 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  call void @cxxTokenChainAppend(%struct._CXXTokenChain* %95, %struct._CXXToken* %96)
  br label %do.body109

do.body109:                                       ; preds = %if.end100
  br label %do.end110

do.end110:                                        ; preds = %do.body109
  %97 = load i8, i8* %bRet, align 1
  %tobool111 = trunc i8 %97 to i1
  ret i1 %tobool111
}

declare %struct._CXXToken* @cxxTokenCreateAnonymousIdentifier(i32) #1

declare %struct._CXXTokenChain* @cxxTokenChainCreate() #1

declare %struct.sTagEntryInfo* @cxxTagBegin(i32, %struct._CXXToken*) #1

declare %struct._CXXToken* @cxxTagCheckAndSetTypeField(%struct._CXXToken*, %struct._CXXToken*) #1

declare zeroext i1 @cxxTagFieldEnabled(i32) #1

declare void @cxxTokenChainCondense(%struct._CXXTokenChain*, i32) #1

declare void @cxxTagSetField(i32, i8*) #1

declare %struct.sVString* @cxxTokenChainJoin(%struct._CXXTokenChain*, i8*, i32) #1

declare i32 @cxxTagCommit() #1

declare void @cxxTokenDestroy(%struct._CXXToken*) #1

declare void @vStringDelete(%struct.sVString*) #1

declare void @cxxScopePush(%struct._CXXToken*, i32, i32) #1

declare zeroext i1 @cxxTagKindEnabled(i32) #1

declare zeroext i1 @cxxParserTokenChainLooksLikeFunctionParameterList(%struct._CXXTokenChain*, %struct._CXXFunctionParameterInfo*) #1

declare void @cxxParserEmitFunctionParameterTags(%struct._CXXFunctionParameterInfo*) #1

declare zeroext i1 @cxxParserParseBlock(i1 zeroext) #1

declare void @cxxParserMarkEndLineForTagInCorkQueue(i32) #1

declare void @cxxScopePop() #1

declare void @cxxTokenChainClear(%struct._CXXTokenChain*) #1

declare %struct._CXXToken* @cxxTokenCreate() #1

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

declare void @cxxTokenChainAppend(%struct._CXXTokenChain*, %struct._CXXToken*) #1

declare void @vStringResize(%struct.sVString*, i64) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 10.0.0 (https://github.com/holzschu/clang.git 0cfc630fbdb62e96720b611a57123ef3eb13e297) (https://github.com/holzschu/llvm.git 0d8a71e39b28502c24718f7e74b5acbcfe36dfe0)"}
