; ModuleID = 'cxx/cxx_token.c'
source_filename = "cxx/cxx_token.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-ios11.0.0"

%struct.sObjPool = type opaque
%struct._CXXToken = type { i32, %struct.sVString*, i32, %struct._CXXTokenChain*, i8, i32, %struct._MIOPos, %struct._CXXToken*, %struct._CXXToken*, i8, i8 }
%struct.sVString = type { i64, i64, i8* }
%struct._CXXTokenChain = type { %struct._CXXToken*, %struct._CXXToken*, i32 }
%struct._MIOPos = type { i32, %union.anon }
%union.anon = type { i64 }

@g_pTokenPool = internal global %struct.sObjPool* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"__anon\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @cxxTokenAPIInit() #0 {
entry:
  %call = call %struct.sObjPool* @objPoolNew(i32 8192, i8* (i8*)* bitcast (%struct._CXXToken* (i8*)* @createToken to i8* (i8*)*), void (i8*)* bitcast (void (%struct._CXXToken*)* @deleteToken to void (i8*)*), void (i8*)* bitcast (void (%struct._CXXToken*)* @clearToken to void (i8*)*), i8* null)
  store %struct.sObjPool* %call, %struct.sObjPool** @g_pTokenPool, align 8
  ret void
}

declare %struct.sObjPool* @objPoolNew(i32, i8* (i8*)*, void (i8*)*, void (i8*)*, i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct._CXXToken* @createToken(i8* %createArg) #0 {
entry:
  %createArg.addr = alloca i8*, align 8
  %t = alloca %struct._CXXToken*, align 8
  store i8* %createArg, i8** %createArg.addr, align 8
  %call = call i8* @eMalloc(i64 6400)
  %0 = bitcast i8* %call to %struct._CXXToken*
  store %struct._CXXToken* %0, %struct._CXXToken** %t, align 8
  %call1 = call %struct.sVString* @vStringNew()
  %1 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pszWord = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %1, i32 0, i32 1
  store %struct.sVString* %call1, %struct.sVString** %pszWord, align 8
  %2 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  ret %struct._CXXToken* %2
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @deleteToken(%struct._CXXToken* %token) #0 {
entry:
  %token.addr = alloca %struct._CXXToken*, align 8
  store %struct._CXXToken* %token, %struct._CXXToken** %token.addr, align 8
  %0 = load %struct._CXXToken*, %struct._CXXToken** %token.addr, align 8
  %pszWord = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %0, i32 0, i32 1
  %1 = load %struct.sVString*, %struct.sVString** %pszWord, align 8
  call void @vStringDelete(%struct.sVString* %1)
  %2 = load %struct._CXXToken*, %struct._CXXToken** %token.addr, align 8
  %3 = bitcast %struct._CXXToken* %2 to i8*
  call void @eFree(i8* %3)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @clearToken(%struct._CXXToken* %t) #0 {
entry:
  %t.addr = alloca %struct._CXXToken*, align 8
  %vStringClear_s = alloca %struct.sVString*, align 8
  store %struct._CXXToken* %t, %struct._CXXToken** %t.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  %0 = load %struct._CXXToken*, %struct._CXXToken** %t.addr, align 8
  %pszWord = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %0, i32 0, i32 1
  %1 = load %struct.sVString*, %struct.sVString** %pszWord, align 8
  store %struct.sVString* %1, %struct.sVString** %vStringClear_s, align 8
  %2 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %2, i32 0, i32 0
  store i64 0, i64* %length, align 8
  %3 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %3, i32 0, i32 2
  %4 = load i8*, i8** %buffer, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 0
  store i8 0, i8* %arrayidx, align 1
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  %5 = load %struct._CXXToken*, %struct._CXXToken** %t.addr, align 8
  %bFollowedBySpace = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %5, i32 0, i32 4
  store i8 0, i8* %bFollowedBySpace, align 8
  %6 = load %struct._CXXToken*, %struct._CXXToken** %t.addr, align 8
  %pChain = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %6, i32 0, i32 3
  store %struct._CXXTokenChain* null, %struct._CXXTokenChain** %pChain, align 8
  %7 = load %struct._CXXToken*, %struct._CXXToken** %t.addr, align 8
  %pNext = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %7, i32 0, i32 7
  store %struct._CXXToken* null, %struct._CXXToken** %pNext, align 8
  %8 = load %struct._CXXToken*, %struct._CXXToken** %t.addr, align 8
  %pPrev = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %8, i32 0, i32 8
  store %struct._CXXToken* null, %struct._CXXToken** %pPrev, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @cxxTokenAPINewFile() #0 {
entry:
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @cxxTokenAPIDone() #0 {
entry:
  %0 = load %struct.sObjPool*, %struct.sObjPool** @g_pTokenPool, align 8
  call void @objPoolDelete(%struct.sObjPool* %0)
  ret void
}

declare void @objPoolDelete(%struct.sObjPool*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct._CXXToken* @cxxTokenCreate() #0 {
entry:
  %0 = load %struct.sObjPool*, %struct.sObjPool** @g_pTokenPool, align 8
  %call = call i8* @objPoolGet(%struct.sObjPool* %0)
  %1 = bitcast i8* %call to %struct._CXXToken*
  ret %struct._CXXToken* %1
}

declare i8* @objPoolGet(%struct.sObjPool*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @cxxTokenDestroy(%struct._CXXToken* %t) #0 {
entry:
  %t.addr = alloca %struct._CXXToken*, align 8
  store %struct._CXXToken* %t, %struct._CXXToken** %t.addr, align 8
  %0 = load %struct._CXXToken*, %struct._CXXToken** %t.addr, align 8
  %tobool = icmp ne %struct._CXXToken* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._CXXToken*, %struct._CXXToken** %t.addr, align 8
  %pChain = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %1, i32 0, i32 3
  %2 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain, align 8
  %tobool1 = icmp ne %struct._CXXTokenChain* %2, null
  br i1 %tobool1, label %if.then2, label %if.end5

if.then2:                                         ; preds = %if.end
  %3 = load %struct._CXXToken*, %struct._CXXToken** %t.addr, align 8
  %pChain3 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %3, i32 0, i32 3
  %4 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain3, align 8
  call void @cxxTokenChainDestroy(%struct._CXXTokenChain* %4)
  %5 = load %struct._CXXToken*, %struct._CXXToken** %t.addr, align 8
  %pChain4 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %5, i32 0, i32 3
  store %struct._CXXTokenChain* null, %struct._CXXTokenChain** %pChain4, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end
  %6 = load %struct.sObjPool*, %struct.sObjPool** @g_pTokenPool, align 8
  %7 = load %struct._CXXToken*, %struct._CXXToken** %t.addr, align 8
  %8 = bitcast %struct._CXXToken* %7 to i8*
  call void @objPoolPut(%struct.sObjPool* %6, i8* %8)
  br label %return

return:                                           ; preds = %if.end5, %if.then
  ret void
}

declare void @cxxTokenChainDestroy(%struct._CXXTokenChain*) #1

declare void @objPoolPut(%struct.sObjPool*, i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @cxxTokenForceDestroy(%struct._CXXToken* %t) #0 {
entry:
  %t.addr = alloca %struct._CXXToken*, align 8
  store %struct._CXXToken* %t, %struct._CXXToken** %t.addr, align 8
  %0 = load %struct._CXXToken*, %struct._CXXToken** %t.addr, align 8
  %tobool = icmp ne %struct._CXXToken* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._CXXToken*, %struct._CXXToken** %t.addr, align 8
  %pChain = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %1, i32 0, i32 3
  %2 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain, align 8
  %tobool1 = icmp ne %struct._CXXTokenChain* %2, null
  br i1 %tobool1, label %if.then2, label %if.end5

if.then2:                                         ; preds = %if.end
  %3 = load %struct._CXXToken*, %struct._CXXToken** %t.addr, align 8
  %pChain3 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %3, i32 0, i32 3
  %4 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain3, align 8
  call void @cxxTokenChainDestroy(%struct._CXXTokenChain* %4)
  %5 = load %struct._CXXToken*, %struct._CXXToken** %t.addr, align 8
  %pChain4 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %5, i32 0, i32 3
  store %struct._CXXTokenChain* null, %struct._CXXTokenChain** %pChain4, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end
  br label %do.body

do.body:                                          ; preds = %if.end5
  br label %do.end

do.end:                                           ; preds = %do.body
  %6 = load %struct._CXXToken*, %struct._CXXToken** %t.addr, align 8
  %pszWord = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %6, i32 0, i32 1
  %7 = load %struct.sVString*, %struct.sVString** %pszWord, align 8
  call void @vStringDelete(%struct.sVString* %7)
  %8 = load %struct._CXXToken*, %struct._CXXToken** %t.addr, align 8
  %9 = bitcast %struct._CXXToken* %8 to i8*
  call void @eFree(i8* %9)
  br label %return

return:                                           ; preds = %do.end, %if.then
  ret void
}

declare void @vStringDelete(%struct.sVString*) #1

declare void @eFree(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct._CXXToken* @cxxTokenCreateKeyword(i32 %iLineNumber, [2 x i64] %oFilePosition.coerce, i32 %eKeyword) #0 {
entry:
  %oFilePosition = alloca %struct._MIOPos, align 8
  %iLineNumber.addr = alloca i32, align 4
  %eKeyword.addr = alloca i32, align 4
  %pToken = alloca %struct._CXXToken*, align 8
  %0 = bitcast %struct._MIOPos* %oFilePosition to [2 x i64]*
  store [2 x i64] %oFilePosition.coerce, [2 x i64]* %0, align 8
  store i32 %iLineNumber, i32* %iLineNumber.addr, align 4
  store i32 %eKeyword, i32* %eKeyword.addr, align 4
  %call = call %struct._CXXToken* @cxxTokenCreate()
  store %struct._CXXToken* %call, %struct._CXXToken** %pToken, align 8
  %1 = load i32, i32* %iLineNumber.addr, align 4
  %2 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %iLineNumber1 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %2, i32 0, i32 5
  store i32 %1, i32* %iLineNumber1, align 4
  %3 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %oFilePosition2 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %3, i32 0, i32 6
  %4 = bitcast %struct._MIOPos* %oFilePosition2 to i8*
  %5 = bitcast %struct._MIOPos* %oFilePosition to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %4, i8* align 8 %5, i64 16, i1 false)
  %6 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %eType = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %6, i32 0, i32 0
  store i32 4, i32* %eType, align 8
  %7 = load i32, i32* %eKeyword.addr, align 4
  %8 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %eKeyword3 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %8, i32 0, i32 2
  store i32 %7, i32* %eKeyword3, align 8
  %9 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %bFollowedBySpace = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %9, i32 0, i32 4
  store i8 1, i8* %bFollowedBySpace, align 8
  %10 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %pszWord = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %10, i32 0, i32 1
  %11 = load %struct.sVString*, %struct.sVString** %pszWord, align 8
  %12 = load i32, i32* %eKeyword.addr, align 4
  %call4 = call i8* @cxxKeywordName(i32 %12)
  call void @vStringCatS(%struct.sVString* %11, i8* %call4)
  %13 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  ret %struct._CXXToken* %13
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare void @vStringCatS(%struct.sVString*, i8*) #1

declare i8* @cxxKeywordName(i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct._CXXToken* @cxxTokenCreateAnonymousIdentifier(i32 %uTagKind) #0 {
entry:
  %uTagKind.addr = alloca i32, align 4
  %t = alloca %struct._CXXToken*, align 8
  %tmp = alloca %struct._MIOPos, align 8
  store i32 %uTagKind, i32* %uTagKind.addr, align 4
  %call = call %struct._CXXToken* @cxxTokenCreate()
  store %struct._CXXToken* %call, %struct._CXXToken** %t, align 8
  %0 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pszWord = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %0, i32 0, i32 1
  %1 = load %struct.sVString*, %struct.sVString** %pszWord, align 8
  %2 = load i32, i32* %uTagKind.addr, align 4
  call void @anonGenerate(%struct.sVString* %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %2)
  %3 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %eType = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %3, i32 0, i32 0
  store i32 2, i32* %eType, align 8
  %4 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %bFollowedBySpace = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %4, i32 0, i32 4
  store i8 1, i8* %bFollowedBySpace, align 8
  %call1 = call i64 @getInputLineNumber()
  %conv = trunc i64 %call1 to i32
  %5 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %iLineNumber = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %5, i32 0, i32 5
  store i32 %conv, i32* %iLineNumber, align 4
  %6 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %oFilePosition = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %6, i32 0, i32 6
  %call2 = call [2 x i64] @getInputFilePosition()
  %7 = bitcast %struct._MIOPos* %tmp to [2 x i64]*
  store [2 x i64] %call2, [2 x i64]* %7, align 8
  %8 = bitcast %struct._MIOPos* %oFilePosition to i8*
  %9 = bitcast %struct._MIOPos* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 %9, i64 16, i1 false)
  %10 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  ret %struct._CXXToken* %10
}

declare void @anonGenerate(%struct.sVString*, i8*, i32) #1

declare i64 @getInputLineNumber() #1

declare [2 x i64] @getInputFilePosition() #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @cxxTokenAppendToString(%struct.sVString* %s, %struct._CXXToken* %t) #0 {
entry:
  %s.addr = alloca %struct.sVString*, align 8
  %t.addr = alloca %struct._CXXToken*, align 8
  store %struct.sVString* %s, %struct.sVString** %s.addr, align 8
  store %struct._CXXToken* %t, %struct._CXXToken** %t.addr, align 8
  %0 = load %struct._CXXToken*, %struct._CXXToken** %t.addr, align 8
  %eType = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %0, i32 0, i32 0
  %1 = load i32, i32* %eType, align 8
  switch i32 %1, label %sw.default [
    i32 268435456, label %sw.bb
    i32 536870912, label %sw.bb
    i32 134217728, label %sw.bb
    i32 1073741824, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry
  br label %do.body

do.body:                                          ; preds = %sw.bb
  br label %do.end

do.end:                                           ; preds = %do.body
  %2 = load %struct._CXXToken*, %struct._CXXToken** %t.addr, align 8
  %pChain = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %2, i32 0, i32 3
  %3 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain, align 8
  %4 = load %struct.sVString*, %struct.sVString** %s.addr, align 8
  call void @cxxTokenChainJoinInString(%struct._CXXTokenChain* %3, %struct.sVString* %4, i8* null, i32 0)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %5 = load %struct.sVString*, %struct.sVString** %s.addr, align 8
  %6 = load %struct._CXXToken*, %struct._CXXToken** %t.addr, align 8
  %pszWord = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %6, i32 0, i32 1
  %7 = load %struct.sVString*, %struct.sVString** %pszWord, align 8
  call void @vStringCat(%struct.sVString* %5, %struct.sVString* %7)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %do.end
  ret void
}

declare void @cxxTokenChainJoinInString(%struct._CXXTokenChain*, %struct.sVString*, i8*, i32) #1

declare void @vStringCat(%struct.sVString*, %struct.sVString*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @cxxTokenReduceBackward(%struct._CXXToken* %pStart) #0 {
entry:
  %pStart.addr = alloca %struct._CXXToken*, align 8
  %eSentinelType = alloca i32, align 4
  %pTmp = alloca %struct._CXXToken*, align 8
  %pReducingCandidate = alloca %struct._CXXToken*, align 8
  store %struct._CXXToken* %pStart, %struct._CXXToken** %pStart.addr, align 8
  %0 = load %struct._CXXToken*, %struct._CXXToken** %pStart.addr, align 8
  %eType = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %0, i32 0, i32 0
  %1 = load i32, i32* %eType, align 8
  %shr = lshr i32 %1, 4
  store i32 %shr, i32* %eSentinelType, align 4
  %2 = load %struct._CXXToken*, %struct._CXXToken** %pStart.addr, align 8
  %pPrev = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %2, i32 0, i32 8
  %3 = load %struct._CXXToken*, %struct._CXXToken** %pPrev, align 8
  store %struct._CXXToken* %3, %struct._CXXToken** %pTmp, align 8
  br label %while.cond

while.cond:                                       ; preds = %do.end, %entry
  %4 = load %struct._CXXToken*, %struct._CXXToken** %pTmp, align 8
  %tobool = icmp ne %struct._CXXToken* %4, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %5 = load %struct._CXXToken*, %struct._CXXToken** %pTmp, align 8
  %eType1 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %5, i32 0, i32 0
  %6 = load i32, i32* %eType1, align 8
  %7 = load i32, i32* %eSentinelType, align 4
  %and = and i32 %6, %7
  %tobool2 = icmp ne i32 %and, 0
  %lnot = xor i1 %tobool2, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %8 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %8, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %9 = load %struct._CXXToken*, %struct._CXXToken** %pTmp, align 8
  store %struct._CXXToken* %9, %struct._CXXToken** %pReducingCandidate, align 8
  %10 = load %struct._CXXToken*, %struct._CXXToken** %pTmp, align 8
  %pPrev3 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %10, i32 0, i32 8
  %11 = load %struct._CXXToken*, %struct._CXXToken** %pPrev3, align 8
  store %struct._CXXToken* %11, %struct._CXXToken** %pTmp, align 8
  %12 = load %struct._CXXToken*, %struct._CXXToken** %pReducingCandidate, align 8
  %pNext = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %12, i32 0, i32 7
  %13 = load %struct._CXXToken*, %struct._CXXToken** %pNext, align 8
  %14 = load %struct._CXXToken*, %struct._CXXToken** %pTmp, align 8
  %pNext4 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %14, i32 0, i32 7
  store %struct._CXXToken* %13, %struct._CXXToken** %pNext4, align 8
  %15 = load %struct._CXXToken*, %struct._CXXToken** %pTmp, align 8
  %16 = load %struct._CXXToken*, %struct._CXXToken** %pReducingCandidate, align 8
  %pNext5 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %16, i32 0, i32 7
  %17 = load %struct._CXXToken*, %struct._CXXToken** %pNext5, align 8
  %pPrev6 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %17, i32 0, i32 8
  store %struct._CXXToken* %15, %struct._CXXToken** %pPrev6, align 8
  br label %do.body

do.body:                                          ; preds = %while.body
  br label %do.end

do.end:                                           ; preds = %do.body
  %18 = load %struct._CXXToken*, %struct._CXXToken** %pReducingCandidate, align 8
  call void @cxxTokenDestroy(%struct._CXXToken* %18)
  br label %while.cond

while.end:                                        ; preds = %land.end
  ret void
}

declare i8* @eMalloc(i64) #1

declare %struct.sVString* @vStringNew() #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 10.0.0 (https://github.com/holzschu/clang.git 0cfc630fbdb62e96720b611a57123ef3eb13e297) (https://github.com/holzschu/llvm.git 0d8a71e39b28502c24718f7e74b5acbcfe36dfe0)"}
