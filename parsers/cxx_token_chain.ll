; ModuleID = 'cxx/cxx_token_chain.c'
source_filename = "cxx/cxx_token_chain.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-ios11.0.0"

%struct._CXXTokenChain = type { %struct._CXXToken*, %struct._CXXToken*, i32 }
%struct._CXXToken = type { i32, %struct.sVString*, i32, %struct._CXXTokenChain*, i8, i32, %struct._MIOPos, %struct._CXXToken*, %struct._CXXToken*, i8, i8 }
%struct.sVString = type { i64, i64, i8* }
%struct._MIOPos = type { i32, %union.anon }
%union.anon = type { i64 }

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @cxxTokenChainInit(%struct._CXXTokenChain* %tc) #0 {
entry:
  %tc.addr = alloca %struct._CXXTokenChain*, align 8
  store %struct._CXXTokenChain* %tc, %struct._CXXTokenChain** %tc.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %tc.addr, align 8
  %pHead = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %0, i32 0, i32 0
  store %struct._CXXToken* null, %struct._CXXToken** %pHead, align 8
  %1 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %tc.addr, align 8
  %pTail = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %1, i32 0, i32 1
  store %struct._CXXToken* null, %struct._CXXToken** %pTail, align 8
  %2 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %tc.addr, align 8
  %iCount = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %2, i32 0, i32 2
  store i32 0, i32* %iCount, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct._CXXTokenChain* @cxxTokenChainCreate() #0 {
entry:
  %tc = alloca %struct._CXXTokenChain*, align 8
  %call = call i8* @eMalloc(i64 576)
  %0 = bitcast i8* %call to %struct._CXXTokenChain*
  store %struct._CXXTokenChain* %0, %struct._CXXTokenChain** %tc, align 8
  %1 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %tc, align 8
  call void @cxxTokenChainInit(%struct._CXXTokenChain* %1)
  %2 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %tc, align 8
  ret %struct._CXXTokenChain* %2
}

declare i8* @eMalloc(i64) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @cxxTokenChainDestroy(%struct._CXXTokenChain* %tc) #0 {
entry:
  %tc.addr = alloca %struct._CXXTokenChain*, align 8
  %t = alloca %struct._CXXToken*, align 8
  %t2 = alloca %struct._CXXToken*, align 8
  store %struct._CXXTokenChain* %tc, %struct._CXXTokenChain** %tc.addr, align 8
  %0 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %tc.addr, align 8
  %tobool = icmp ne %struct._CXXTokenChain* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %tc.addr, align 8
  %pHead = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %1, i32 0, i32 0
  %2 = load %struct._CXXToken*, %struct._CXXToken** %pHead, align 8
  store %struct._CXXToken* %2, %struct._CXXToken** %t, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %3 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %tobool1 = icmp ne %struct._CXXToken* %3, null
  br i1 %tobool1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pNext = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %4, i32 0, i32 7
  %5 = load %struct._CXXToken*, %struct._CXXToken** %pNext, align 8
  store %struct._CXXToken* %5, %struct._CXXToken** %t2, align 8
  %6 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  call void @cxxTokenDestroy(%struct._CXXToken* %6)
  %7 = load %struct._CXXToken*, %struct._CXXToken** %t2, align 8
  store %struct._CXXToken* %7, %struct._CXXToken** %t, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %8 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %tc.addr, align 8
  %9 = bitcast %struct._CXXTokenChain* %8 to i8*
  call void @eFree(i8* %9)
  br label %return

return:                                           ; preds = %while.end, %if.then
  ret void
}

declare void @cxxTokenDestroy(%struct._CXXToken*) #1

declare void @eFree(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct._CXXToken* @cxxTokenChainTakeFirst(%struct._CXXTokenChain* %tc) #0 {
entry:
  %retval = alloca %struct._CXXToken*, align 8
  %tc.addr = alloca %struct._CXXTokenChain*, align 8
  %t = alloca %struct._CXXToken*, align 8
  store %struct._CXXTokenChain* %tc, %struct._CXXTokenChain** %tc.addr, align 8
  %0 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %tc.addr, align 8
  %tobool = icmp ne %struct._CXXTokenChain* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._CXXToken* null, %struct._CXXToken** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %tc.addr, align 8
  %pHead = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %1, i32 0, i32 0
  %2 = load %struct._CXXToken*, %struct._CXXToken** %pHead, align 8
  %tobool1 = icmp ne %struct._CXXToken* %2, null
  br i1 %tobool1, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  store %struct._CXXToken* null, %struct._CXXToken** %retval, align 8
  br label %return

if.end3:                                          ; preds = %if.end
  %3 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %tc.addr, align 8
  %pHead4 = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %3, i32 0, i32 0
  %4 = load %struct._CXXToken*, %struct._CXXToken** %pHead4, align 8
  store %struct._CXXToken* %4, %struct._CXXToken** %t, align 8
  %5 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %6 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %tc.addr, align 8
  %pTail = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %6, i32 0, i32 1
  %7 = load %struct._CXXToken*, %struct._CXXToken** %pTail, align 8
  %cmp = icmp eq %struct._CXXToken* %5, %7
  br i1 %cmp, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end3
  %8 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %tc.addr, align 8
  %pHead6 = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %8, i32 0, i32 0
  store %struct._CXXToken* null, %struct._CXXToken** %pHead6, align 8
  %9 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %tc.addr, align 8
  %pTail7 = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %9, i32 0, i32 1
  store %struct._CXXToken* null, %struct._CXXToken** %pTail7, align 8
  %10 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %tc.addr, align 8
  %iCount = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %10, i32 0, i32 2
  store i32 0, i32* %iCount, align 8
  %11 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  store %struct._CXXToken* %11, %struct._CXXToken** %retval, align 8
  br label %return

if.end8:                                          ; preds = %if.end3
  %12 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %tc.addr, align 8
  %iCount9 = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %12, i32 0, i32 2
  %13 = load i32, i32* %iCount9, align 8
  %dec = add nsw i32 %13, -1
  store i32 %dec, i32* %iCount9, align 8
  br label %do.body

do.body:                                          ; preds = %if.end8
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body10

do.body10:                                        ; preds = %do.end
  br label %do.end11

do.end11:                                         ; preds = %do.body10
  %14 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pNext = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %14, i32 0, i32 7
  %15 = load %struct._CXXToken*, %struct._CXXToken** %pNext, align 8
  %pPrev = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %15, i32 0, i32 8
  store %struct._CXXToken* null, %struct._CXXToken** %pPrev, align 8
  %16 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pNext12 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %16, i32 0, i32 7
  %17 = load %struct._CXXToken*, %struct._CXXToken** %pNext12, align 8
  %18 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %tc.addr, align 8
  %pHead13 = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %18, i32 0, i32 0
  store %struct._CXXToken* %17, %struct._CXXToken** %pHead13, align 8
  %19 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  store %struct._CXXToken* %19, %struct._CXXToken** %retval, align 8
  br label %return

return:                                           ; preds = %do.end11, %if.then5, %if.then2, %if.then
  %20 = load %struct._CXXToken*, %struct._CXXToken** %retval, align 8
  ret %struct._CXXToken* %20
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct._CXXToken* @cxxTokenChainTakeLast(%struct._CXXTokenChain* %tc) #0 {
entry:
  %retval = alloca %struct._CXXToken*, align 8
  %tc.addr = alloca %struct._CXXTokenChain*, align 8
  %t = alloca %struct._CXXToken*, align 8
  store %struct._CXXTokenChain* %tc, %struct._CXXTokenChain** %tc.addr, align 8
  %0 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %tc.addr, align 8
  %tobool = icmp ne %struct._CXXTokenChain* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._CXXToken* null, %struct._CXXToken** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %tc.addr, align 8
  %pTail = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %1, i32 0, i32 1
  %2 = load %struct._CXXToken*, %struct._CXXToken** %pTail, align 8
  %tobool1 = icmp ne %struct._CXXToken* %2, null
  br i1 %tobool1, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  store %struct._CXXToken* null, %struct._CXXToken** %retval, align 8
  br label %return

if.end3:                                          ; preds = %if.end
  %3 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %tc.addr, align 8
  %pTail4 = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %3, i32 0, i32 1
  %4 = load %struct._CXXToken*, %struct._CXXToken** %pTail4, align 8
  store %struct._CXXToken* %4, %struct._CXXToken** %t, align 8
  %5 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %6 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %tc.addr, align 8
  %pHead = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %6, i32 0, i32 0
  %7 = load %struct._CXXToken*, %struct._CXXToken** %pHead, align 8
  %cmp = icmp eq %struct._CXXToken* %5, %7
  br i1 %cmp, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end3
  %8 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %tc.addr, align 8
  %pHead6 = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %8, i32 0, i32 0
  store %struct._CXXToken* null, %struct._CXXToken** %pHead6, align 8
  %9 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %tc.addr, align 8
  %pTail7 = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %9, i32 0, i32 1
  store %struct._CXXToken* null, %struct._CXXToken** %pTail7, align 8
  %10 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %tc.addr, align 8
  %iCount = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %10, i32 0, i32 2
  store i32 0, i32* %iCount, align 8
  %11 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  store %struct._CXXToken* %11, %struct._CXXToken** %retval, align 8
  br label %return

if.end8:                                          ; preds = %if.end3
  %12 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %tc.addr, align 8
  %iCount9 = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %12, i32 0, i32 2
  %13 = load i32, i32* %iCount9, align 8
  %dec = add nsw i32 %13, -1
  store i32 %dec, i32* %iCount9, align 8
  br label %do.body

do.body:                                          ; preds = %if.end8
  br label %do.end

do.end:                                           ; preds = %do.body
  %14 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pPrev = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %14, i32 0, i32 8
  %15 = load %struct._CXXToken*, %struct._CXXToken** %pPrev, align 8
  %pNext = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %15, i32 0, i32 7
  store %struct._CXXToken* null, %struct._CXXToken** %pNext, align 8
  %16 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pPrev10 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %16, i32 0, i32 8
  %17 = load %struct._CXXToken*, %struct._CXXToken** %pPrev10, align 8
  %18 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %tc.addr, align 8
  %pTail11 = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %18, i32 0, i32 1
  store %struct._CXXToken* %17, %struct._CXXToken** %pTail11, align 8
  %19 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  store %struct._CXXToken* %19, %struct._CXXToken** %retval, align 8
  br label %return

return:                                           ; preds = %do.end, %if.then5, %if.then2, %if.then
  %20 = load %struct._CXXToken*, %struct._CXXToken** %retval, align 8
  ret %struct._CXXToken* %20
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @cxxTokenChainTake(%struct._CXXTokenChain* %tc, %struct._CXXToken* %t) #0 {
entry:
  %tc.addr = alloca %struct._CXXTokenChain*, align 8
  %t.addr = alloca %struct._CXXToken*, align 8
  %n = alloca %struct._CXXToken*, align 8
  %p = alloca %struct._CXXToken*, align 8
  store %struct._CXXTokenChain* %tc, %struct._CXXTokenChain** %tc.addr, align 8
  store %struct._CXXToken* %t, %struct._CXXToken** %t.addr, align 8
  %0 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %tc.addr, align 8
  %tobool = icmp ne %struct._CXXTokenChain* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %do.end

if.end:                                           ; preds = %entry
  %1 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %tc.addr, align 8
  %pHead = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %1, i32 0, i32 0
  %2 = load %struct._CXXToken*, %struct._CXXToken** %pHead, align 8
  %tobool1 = icmp ne %struct._CXXToken* %2, null
  br i1 %tobool1, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  br label %do.end

if.end3:                                          ; preds = %if.end
  %3 = load %struct._CXXToken*, %struct._CXXToken** %t.addr, align 8
  %4 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %tc.addr, align 8
  %pHead4 = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %4, i32 0, i32 0
  %5 = load %struct._CXXToken*, %struct._CXXToken** %pHead4, align 8
  %cmp = icmp eq %struct._CXXToken* %3, %5
  br i1 %cmp, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  %6 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %tc.addr, align 8
  %call = call %struct._CXXToken* @cxxTokenChainTakeFirst(%struct._CXXTokenChain* %6)
  br label %do.end

if.end6:                                          ; preds = %if.end3
  %7 = load %struct._CXXToken*, %struct._CXXToken** %t.addr, align 8
  %8 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %tc.addr, align 8
  %pTail = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %8, i32 0, i32 1
  %9 = load %struct._CXXToken*, %struct._CXXToken** %pTail, align 8
  %cmp7 = icmp eq %struct._CXXToken* %7, %9
  br i1 %cmp7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end6
  %10 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %tc.addr, align 8
  %call9 = call %struct._CXXToken* @cxxTokenChainTakeLast(%struct._CXXTokenChain* %10)
  br label %do.end

if.end10:                                         ; preds = %if.end6
  %11 = load %struct._CXXToken*, %struct._CXXToken** %t.addr, align 8
  %pNext = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %11, i32 0, i32 7
  %12 = load %struct._CXXToken*, %struct._CXXToken** %pNext, align 8
  store %struct._CXXToken* %12, %struct._CXXToken** %n, align 8
  %13 = load %struct._CXXToken*, %struct._CXXToken** %t.addr, align 8
  %pPrev = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %13, i32 0, i32 8
  %14 = load %struct._CXXToken*, %struct._CXXToken** %pPrev, align 8
  store %struct._CXXToken* %14, %struct._CXXToken** %p, align 8
  %15 = load %struct._CXXToken*, %struct._CXXToken** %p, align 8
  %16 = load %struct._CXXToken*, %struct._CXXToken** %n, align 8
  %pPrev11 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %16, i32 0, i32 8
  store %struct._CXXToken* %15, %struct._CXXToken** %pPrev11, align 8
  %17 = load %struct._CXXToken*, %struct._CXXToken** %n, align 8
  %18 = load %struct._CXXToken*, %struct._CXXToken** %p, align 8
  %pNext12 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %18, i32 0, i32 7
  store %struct._CXXToken* %17, %struct._CXXToken** %pNext12, align 8
  %19 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %tc.addr, align 8
  %iCount = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %19, i32 0, i32 2
  %20 = load i32, i32* %iCount, align 8
  %dec = add nsw i32 %20, -1
  store i32 %dec, i32* %iCount, align 8
  br label %do.body

do.body:                                          ; preds = %if.end10
  br label %do.end

do.end:                                           ; preds = %if.then, %if.then2, %if.then5, %if.then8, %do.body
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @cxxTokenChainTakeRecursive(%struct._CXXTokenChain* %tc, %struct._CXXToken* %t) #0 {
entry:
  %retval = alloca i1, align 1
  %tc.addr = alloca %struct._CXXTokenChain*, align 8
  %t.addr = alloca %struct._CXXToken*, align 8
  %aux = alloca %struct._CXXToken*, align 8
  store %struct._CXXTokenChain* %tc, %struct._CXXTokenChain** %tc.addr, align 8
  store %struct._CXXToken* %t, %struct._CXXToken** %t.addr, align 8
  %0 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %tc.addr, align 8
  %tobool = icmp ne %struct._CXXTokenChain* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %tc.addr, align 8
  %pHead = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %1, i32 0, i32 0
  %2 = load %struct._CXXToken*, %struct._CXXToken** %pHead, align 8
  store %struct._CXXToken* %2, %struct._CXXToken** %aux, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end8, %if.end
  %3 = load %struct._CXXToken*, %struct._CXXToken** %aux, align 8
  %tobool1 = icmp ne %struct._CXXToken* %3, null
  br i1 %tobool1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct._CXXToken*, %struct._CXXToken** %t.addr, align 8
  %5 = load %struct._CXXToken*, %struct._CXXToken** %aux, align 8
  %cmp = icmp eq %struct._CXXToken* %4, %5
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %while.body
  %6 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %tc.addr, align 8
  %7 = load %struct._CXXToken*, %struct._CXXToken** %aux, align 8
  call void @cxxTokenChainTake(%struct._CXXTokenChain* %6, %struct._CXXToken* %7)
  store i1 true, i1* %retval, align 1
  br label %return

if.end3:                                          ; preds = %while.body
  %8 = load %struct._CXXToken*, %struct._CXXToken** %aux, align 8
  %eType = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %8, i32 0, i32 0
  %9 = load i32, i32* %eType, align 8
  %and = and i32 %9, 2013265920
  %tobool4 = icmp ne i32 %and, 0
  br i1 %tobool4, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end3
  %10 = load %struct._CXXToken*, %struct._CXXToken** %aux, align 8
  %pChain = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %10, i32 0, i32 3
  %11 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain, align 8
  %12 = load %struct._CXXToken*, %struct._CXXToken** %t.addr, align 8
  %call = call zeroext i1 @cxxTokenChainTakeRecursive(%struct._CXXTokenChain* %11, %struct._CXXToken* %12)
  br i1 %call, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.then5
  store i1 true, i1* %retval, align 1
  br label %return

if.end7:                                          ; preds = %if.then5
  br label %if.end8

if.end8:                                          ; preds = %if.end7, %if.end3
  %13 = load %struct._CXXToken*, %struct._CXXToken** %aux, align 8
  %pNext = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %13, i32 0, i32 7
  %14 = load %struct._CXXToken*, %struct._CXXToken** %pNext, align 8
  store %struct._CXXToken* %14, %struct._CXXToken** %aux, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i1 false, i1* %retval, align 1
  br label %return

return:                                           ; preds = %while.end, %if.then6, %if.then2, %if.then
  %15 = load i1, i1* %retval, align 1
  ret i1 %15
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @cxxTokenChainClear(%struct._CXXTokenChain* %tc) #0 {
entry:
  %tc.addr = alloca %struct._CXXTokenChain*, align 8
  %t = alloca %struct._CXXToken*, align 8
  store %struct._CXXTokenChain* %tc, %struct._CXXTokenChain** %tc.addr, align 8
  %0 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %tc.addr, align 8
  %tobool = icmp ne %struct._CXXTokenChain* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %do.end7

if.end:                                           ; preds = %entry
  %1 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %tc.addr, align 8
  %iCount = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %1, i32 0, i32 2
  %2 = load i32, i32* %iCount, align 8
  %cmp = icmp slt i32 %2, 1
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  br label %do.end7

if.end2:                                          ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end2
  %3 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %tc.addr, align 8
  %call = call %struct._CXXToken* @cxxTokenChainTakeFirst(%struct._CXXTokenChain* %3)
  store %struct._CXXToken* %call, %struct._CXXToken** %t, align 8
  %tobool3 = icmp ne %struct._CXXToken* %call, null
  br i1 %tobool3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  call void @cxxTokenDestroy(%struct._CXXToken* %4)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.body

do.body:                                          ; preds = %while.end
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body4

do.body4:                                         ; preds = %do.end
  br label %do.end5

do.end5:                                          ; preds = %do.body4
  br label %do.body6

do.body6:                                         ; preds = %do.end5
  br label %do.end7

do.end7:                                          ; preds = %if.then, %if.then1, %do.body6
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @cxxTokenChainInsertAfter(%struct._CXXTokenChain* %tc, %struct._CXXToken* %before, %struct._CXXToken* %t) #0 {
entry:
  %tc.addr = alloca %struct._CXXTokenChain*, align 8
  %before.addr = alloca %struct._CXXToken*, align 8
  %t.addr = alloca %struct._CXXToken*, align 8
  store %struct._CXXTokenChain* %tc, %struct._CXXTokenChain** %tc.addr, align 8
  store %struct._CXXToken* %before, %struct._CXXToken** %before.addr, align 8
  store %struct._CXXToken* %t, %struct._CXXToken** %t.addr, align 8
  %0 = load %struct._CXXToken*, %struct._CXXToken** %before.addr, align 8
  %tobool = icmp ne %struct._CXXToken* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %tc.addr, align 8
  %2 = load %struct._CXXToken*, %struct._CXXToken** %t.addr, align 8
  call void @cxxTokenChainPrepend(%struct._CXXTokenChain* %1, %struct._CXXToken* %2)
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._CXXToken*, %struct._CXXToken** %before.addr, align 8
  %pNext = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %3, i32 0, i32 7
  %4 = load %struct._CXXToken*, %struct._CXXToken** %pNext, align 8
  %tobool1 = icmp ne %struct._CXXToken* %4, null
  br i1 %tobool1, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  %5 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %tc.addr, align 8
  %6 = load %struct._CXXToken*, %struct._CXXToken** %t.addr, align 8
  call void @cxxTokenChainAppend(%struct._CXXTokenChain* %5, %struct._CXXToken* %6)
  br label %return

if.end3:                                          ; preds = %if.end
  %7 = load %struct._CXXToken*, %struct._CXXToken** %before.addr, align 8
  %pNext4 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %7, i32 0, i32 7
  %8 = load %struct._CXXToken*, %struct._CXXToken** %pNext4, align 8
  %9 = load %struct._CXXToken*, %struct._CXXToken** %t.addr, align 8
  %pNext5 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %9, i32 0, i32 7
  store %struct._CXXToken* %8, %struct._CXXToken** %pNext5, align 8
  %10 = load %struct._CXXToken*, %struct._CXXToken** %before.addr, align 8
  %11 = load %struct._CXXToken*, %struct._CXXToken** %t.addr, align 8
  %pPrev = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %11, i32 0, i32 8
  store %struct._CXXToken* %10, %struct._CXXToken** %pPrev, align 8
  %12 = load %struct._CXXToken*, %struct._CXXToken** %t.addr, align 8
  %13 = load %struct._CXXToken*, %struct._CXXToken** %before.addr, align 8
  %pNext6 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %13, i32 0, i32 7
  store %struct._CXXToken* %12, %struct._CXXToken** %pNext6, align 8
  %14 = load %struct._CXXToken*, %struct._CXXToken** %t.addr, align 8
  %15 = load %struct._CXXToken*, %struct._CXXToken** %t.addr, align 8
  %pNext7 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %15, i32 0, i32 7
  %16 = load %struct._CXXToken*, %struct._CXXToken** %pNext7, align 8
  %pPrev8 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %16, i32 0, i32 8
  store %struct._CXXToken* %14, %struct._CXXToken** %pPrev8, align 8
  br label %return

return:                                           ; preds = %if.end3, %if.then2, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @cxxTokenChainPrepend(%struct._CXXTokenChain* %tc, %struct._CXXToken* %t) #0 {
entry:
  %tc.addr = alloca %struct._CXXTokenChain*, align 8
  %t.addr = alloca %struct._CXXToken*, align 8
  store %struct._CXXTokenChain* %tc, %struct._CXXTokenChain** %tc.addr, align 8
  store %struct._CXXToken* %t, %struct._CXXToken** %t.addr, align 8
  %0 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %tc.addr, align 8
  %iCount = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %0, i32 0, i32 2
  %1 = load i32, i32* %iCount, align 8
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* %iCount, align 8
  %2 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %tc.addr, align 8
  %pHead = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %2, i32 0, i32 0
  %3 = load %struct._CXXToken*, %struct._CXXToken** %pHead, align 8
  %tobool = icmp ne %struct._CXXToken* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %4 = load %struct._CXXToken*, %struct._CXXToken** %t.addr, align 8
  %5 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %tc.addr, align 8
  %pHead1 = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %5, i32 0, i32 0
  store %struct._CXXToken* %4, %struct._CXXToken** %pHead1, align 8
  %6 = load %struct._CXXToken*, %struct._CXXToken** %t.addr, align 8
  %7 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %tc.addr, align 8
  %pTail = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %7, i32 0, i32 1
  store %struct._CXXToken* %6, %struct._CXXToken** %pTail, align 8
  %8 = load %struct._CXXToken*, %struct._CXXToken** %t.addr, align 8
  %pPrev = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %8, i32 0, i32 8
  store %struct._CXXToken* null, %struct._CXXToken** %pPrev, align 8
  %9 = load %struct._CXXToken*, %struct._CXXToken** %t.addr, align 8
  %pNext = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %9, i32 0, i32 7
  store %struct._CXXToken* null, %struct._CXXToken** %pNext, align 8
  br label %return

if.end:                                           ; preds = %entry
  %10 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %tc.addr, align 8
  %pHead2 = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %10, i32 0, i32 0
  %11 = load %struct._CXXToken*, %struct._CXXToken** %pHead2, align 8
  %12 = load %struct._CXXToken*, %struct._CXXToken** %t.addr, align 8
  %pNext3 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %12, i32 0, i32 7
  store %struct._CXXToken* %11, %struct._CXXToken** %pNext3, align 8
  %13 = load %struct._CXXToken*, %struct._CXXToken** %t.addr, align 8
  %pPrev4 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %13, i32 0, i32 8
  store %struct._CXXToken* null, %struct._CXXToken** %pPrev4, align 8
  %14 = load %struct._CXXToken*, %struct._CXXToken** %t.addr, align 8
  %15 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %tc.addr, align 8
  %pHead5 = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %15, i32 0, i32 0
  %16 = load %struct._CXXToken*, %struct._CXXToken** %pHead5, align 8
  %pPrev6 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %16, i32 0, i32 8
  store %struct._CXXToken* %14, %struct._CXXToken** %pPrev6, align 8
  %17 = load %struct._CXXToken*, %struct._CXXToken** %t.addr, align 8
  %18 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %tc.addr, align 8
  %pHead7 = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %18, i32 0, i32 0
  store %struct._CXXToken* %17, %struct._CXXToken** %pHead7, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @cxxTokenChainAppend(%struct._CXXTokenChain* %tc, %struct._CXXToken* %t) #0 {
entry:
  %tc.addr = alloca %struct._CXXTokenChain*, align 8
  %t.addr = alloca %struct._CXXToken*, align 8
  store %struct._CXXTokenChain* %tc, %struct._CXXTokenChain** %tc.addr, align 8
  store %struct._CXXToken* %t, %struct._CXXToken** %t.addr, align 8
  %0 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %tc.addr, align 8
  %iCount = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %0, i32 0, i32 2
  %1 = load i32, i32* %iCount, align 8
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* %iCount, align 8
  %2 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %tc.addr, align 8
  %pTail = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %2, i32 0, i32 1
  %3 = load %struct._CXXToken*, %struct._CXXToken** %pTail, align 8
  %tobool = icmp ne %struct._CXXToken* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %4 = load %struct._CXXToken*, %struct._CXXToken** %t.addr, align 8
  %5 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %tc.addr, align 8
  %pHead = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %5, i32 0, i32 0
  store %struct._CXXToken* %4, %struct._CXXToken** %pHead, align 8
  %6 = load %struct._CXXToken*, %struct._CXXToken** %t.addr, align 8
  %7 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %tc.addr, align 8
  %pTail1 = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %7, i32 0, i32 1
  store %struct._CXXToken* %6, %struct._CXXToken** %pTail1, align 8
  %8 = load %struct._CXXToken*, %struct._CXXToken** %t.addr, align 8
  %pPrev = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %8, i32 0, i32 8
  store %struct._CXXToken* null, %struct._CXXToken** %pPrev, align 8
  %9 = load %struct._CXXToken*, %struct._CXXToken** %t.addr, align 8
  %pNext = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %9, i32 0, i32 7
  store %struct._CXXToken* null, %struct._CXXToken** %pNext, align 8
  br label %return

if.end:                                           ; preds = %entry
  %10 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %tc.addr, align 8
  %pTail2 = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %10, i32 0, i32 1
  %11 = load %struct._CXXToken*, %struct._CXXToken** %pTail2, align 8
  %12 = load %struct._CXXToken*, %struct._CXXToken** %t.addr, align 8
  %pPrev3 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %12, i32 0, i32 8
  store %struct._CXXToken* %11, %struct._CXXToken** %pPrev3, align 8
  %13 = load %struct._CXXToken*, %struct._CXXToken** %t.addr, align 8
  %pNext4 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %13, i32 0, i32 7
  store %struct._CXXToken* null, %struct._CXXToken** %pNext4, align 8
  %14 = load %struct._CXXToken*, %struct._CXXToken** %t.addr, align 8
  %15 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %tc.addr, align 8
  %pTail5 = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %15, i32 0, i32 1
  %16 = load %struct._CXXToken*, %struct._CXXToken** %pTail5, align 8
  %pNext6 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %16, i32 0, i32 7
  store %struct._CXXToken* %14, %struct._CXXToken** %pNext6, align 8
  %17 = load %struct._CXXToken*, %struct._CXXToken** %t.addr, align 8
  %18 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %tc.addr, align 8
  %pTail7 = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %18, i32 0, i32 1
  store %struct._CXXToken* %17, %struct._CXXToken** %pTail7, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @cxxTokenChainJoinRangeInString(%struct._CXXToken* %from, %struct._CXXToken* %to, %struct.sVString* %s, i8* %szSeparator, i32 %uFlags) #0 {
entry:
  %from.addr = alloca %struct._CXXToken*, align 8
  %to.addr = alloca %struct._CXXToken*, align 8
  %s.addr = alloca %struct.sVString*, align 8
  %szSeparator.addr = alloca i8*, align 8
  %uFlags.addr = alloca i32, align 4
  %t = alloca %struct._CXXToken*, align 8
  store %struct._CXXToken* %from, %struct._CXXToken** %from.addr, align 8
  store %struct._CXXToken* %to, %struct._CXXToken** %to.addr, align 8
  store %struct.sVString* %s, %struct.sVString** %s.addr, align 8
  store i8* %szSeparator, i8** %szSeparator.addr, align 8
  store i32 %uFlags, i32* %uFlags.addr, align 4
  %0 = load %struct._CXXToken*, %struct._CXXToken** %from.addr, align 8
  %tobool = icmp ne %struct._CXXToken* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %while.end

if.end:                                           ; preds = %entry
  %1 = load %struct._CXXToken*, %struct._CXXToken** %from.addr, align 8
  store %struct._CXXToken* %1, %struct._CXXToken** %t, align 8
  %2 = load %struct.sVString*, %struct.sVString** %s.addr, align 8
  %3 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  call void @cxxTokenAppendToString(%struct.sVString* %2, %struct._CXXToken* %3)
  %4 = load i32, i32* %uFlags.addr, align 4
  %and = and i32 %4, 1
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %if.end4, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %5 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %bFollowedBySpace = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %5, i32 0, i32 4
  %6 = load i8, i8* %bFollowedBySpace, align 8
  %tobool2 = trunc i8 %6 to i1
  br i1 %tobool2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %land.lhs.true
  %7 = load %struct.sVString*, %struct.sVString** %s.addr, align 8
  call void @vStringPut(%struct.sVString* %7, i32 32)
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %land.lhs.true, %if.end
  br label %while.cond

while.cond:                                       ; preds = %if.end18, %if.end4
  %8 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %tobool5 = icmp ne %struct._CXXToken* %8, null
  br i1 %tobool5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %9 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %10 = load %struct._CXXToken*, %struct._CXXToken** %to.addr, align 8
  %cmp = icmp ne %struct._CXXToken* %9, %10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %11 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ]
  br i1 %11, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %12 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pNext = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %12, i32 0, i32 7
  %13 = load %struct._CXXToken*, %struct._CXXToken** %pNext, align 8
  store %struct._CXXToken* %13, %struct._CXXToken** %t, align 8
  %14 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %tobool6 = icmp ne %struct._CXXToken* %14, null
  br i1 %tobool6, label %if.end8, label %if.then7

if.then7:                                         ; preds = %while.body
  br label %while.end

if.end8:                                          ; preds = %while.body
  %15 = load i8*, i8** %szSeparator.addr, align 8
  %tobool9 = icmp ne i8* %15, null
  br i1 %tobool9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end8
  %16 = load %struct.sVString*, %struct.sVString** %s.addr, align 8
  %17 = load i8*, i8** %szSeparator.addr, align 8
  call void @vStringCatS(%struct.sVString* %16, i8* %17)
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end8
  %18 = load %struct.sVString*, %struct.sVString** %s.addr, align 8
  %19 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  call void @cxxTokenAppendToString(%struct.sVString* %18, %struct._CXXToken* %19)
  %20 = load i32, i32* %uFlags.addr, align 4
  %and12 = and i32 %20, 1
  %tobool13 = icmp ne i32 %and12, 0
  br i1 %tobool13, label %if.end18, label %land.lhs.true14

land.lhs.true14:                                  ; preds = %if.end11
  %21 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %bFollowedBySpace15 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %21, i32 0, i32 4
  %22 = load i8, i8* %bFollowedBySpace15, align 8
  %tobool16 = trunc i8 %22 to i1
  br i1 %tobool16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %land.lhs.true14
  %23 = load %struct.sVString*, %struct.sVString** %s.addr, align 8
  call void @vStringPut(%struct.sVString* %23, i32 32)
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %land.lhs.true14, %if.end11
  br label %while.cond

while.end:                                        ; preds = %if.then, %if.then7, %land.end
  ret void
}

declare void @cxxTokenAppendToString(%struct.sVString*, %struct._CXXToken*) #1

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
define %struct.sVString* @cxxTokenChainJoinRange(%struct._CXXToken* %from, %struct._CXXToken* %to, i8* %szSeparator, i32 %uFlags) #0 {
entry:
  %retval = alloca %struct.sVString*, align 8
  %from.addr = alloca %struct._CXXToken*, align 8
  %to.addr = alloca %struct._CXXToken*, align 8
  %szSeparator.addr = alloca i8*, align 8
  %uFlags.addr = alloca i32, align 4
  %s = alloca %struct.sVString*, align 8
  store %struct._CXXToken* %from, %struct._CXXToken** %from.addr, align 8
  store %struct._CXXToken* %to, %struct._CXXToken** %to.addr, align 8
  store i8* %szSeparator, i8** %szSeparator.addr, align 8
  store i32 %uFlags, i32* %uFlags.addr, align 4
  %0 = load %struct._CXXToken*, %struct._CXXToken** %from.addr, align 8
  %tobool = icmp ne %struct._CXXToken* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.sVString* null, %struct.sVString** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %call = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call, %struct.sVString** %s, align 8
  %1 = load %struct._CXXToken*, %struct._CXXToken** %from.addr, align 8
  %2 = load %struct._CXXToken*, %struct._CXXToken** %to.addr, align 8
  %3 = load %struct.sVString*, %struct.sVString** %s, align 8
  %4 = load i8*, i8** %szSeparator.addr, align 8
  %5 = load i32, i32* %uFlags.addr, align 4
  call void @cxxTokenChainJoinRangeInString(%struct._CXXToken* %1, %struct._CXXToken* %2, %struct.sVString* %3, i8* %4, i32 %5)
  %6 = load %struct.sVString*, %struct.sVString** %s, align 8
  store %struct.sVString* %6, %struct.sVString** %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load %struct.sVString*, %struct.sVString** %retval, align 8
  ret %struct.sVString* %7
}

declare %struct.sVString* @vStringNew() #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @cxxTokenChainJoinInString(%struct._CXXTokenChain* %tc, %struct.sVString* %s, i8* %szSeparator, i32 %uFlags) #0 {
entry:
  %tc.addr = alloca %struct._CXXTokenChain*, align 8
  %s.addr = alloca %struct.sVString*, align 8
  %szSeparator.addr = alloca i8*, align 8
  %uFlags.addr = alloca i32, align 4
  %t = alloca %struct._CXXToken*, align 8
  store %struct._CXXTokenChain* %tc, %struct._CXXTokenChain** %tc.addr, align 8
  store %struct.sVString* %s, %struct.sVString** %s.addr, align 8
  store i8* %szSeparator, i8** %szSeparator.addr, align 8
  store i32 %uFlags, i32* %uFlags.addr, align 4
  %0 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %tc.addr, align 8
  %tobool = icmp ne %struct._CXXTokenChain* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %while.end

if.end:                                           ; preds = %entry
  %1 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %tc.addr, align 8
  %iCount = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %1, i32 0, i32 2
  %2 = load i32, i32* %iCount, align 8
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  br label %while.end

if.end2:                                          ; preds = %if.end
  %3 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %tc.addr, align 8
  %pHead = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %3, i32 0, i32 0
  %4 = load %struct._CXXToken*, %struct._CXXToken** %pHead, align 8
  store %struct._CXXToken* %4, %struct._CXXToken** %t, align 8
  %5 = load %struct.sVString*, %struct.sVString** %s.addr, align 8
  %6 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  call void @cxxTokenAppendToString(%struct.sVString* %5, %struct._CXXToken* %6)
  %7 = load i32, i32* %uFlags.addr, align 4
  %and = and i32 %7, 1
  %tobool3 = icmp ne i32 %and, 0
  br i1 %tobool3, label %if.end6, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end2
  %8 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %bFollowedBySpace = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %8, i32 0, i32 4
  %9 = load i8, i8* %bFollowedBySpace, align 8
  %tobool4 = trunc i8 %9 to i1
  br i1 %tobool4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %land.lhs.true
  %10 = load %struct.sVString*, %struct.sVString** %s.addr, align 8
  call void @vStringPut(%struct.sVString* %10, i32 32)
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %land.lhs.true, %if.end2
  %11 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pNext = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %11, i32 0, i32 7
  %12 = load %struct._CXXToken*, %struct._CXXToken** %pNext, align 8
  store %struct._CXXToken* %12, %struct._CXXToken** %t, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end17, %if.end6
  %13 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %tobool7 = icmp ne %struct._CXXToken* %13, null
  br i1 %tobool7, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %14 = load i8*, i8** %szSeparator.addr, align 8
  %tobool8 = icmp ne i8* %14, null
  br i1 %tobool8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %while.body
  %15 = load %struct.sVString*, %struct.sVString** %s.addr, align 8
  %16 = load i8*, i8** %szSeparator.addr, align 8
  call void @vStringCatS(%struct.sVString* %15, i8* %16)
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %while.body
  %17 = load %struct.sVString*, %struct.sVString** %s.addr, align 8
  %18 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  call void @cxxTokenAppendToString(%struct.sVString* %17, %struct._CXXToken* %18)
  %19 = load i32, i32* %uFlags.addr, align 4
  %and11 = and i32 %19, 1
  %tobool12 = icmp ne i32 %and11, 0
  br i1 %tobool12, label %if.end17, label %land.lhs.true13

land.lhs.true13:                                  ; preds = %if.end10
  %20 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %bFollowedBySpace14 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %20, i32 0, i32 4
  %21 = load i8, i8* %bFollowedBySpace14, align 8
  %tobool15 = trunc i8 %21 to i1
  br i1 %tobool15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %land.lhs.true13
  %22 = load %struct.sVString*, %struct.sVString** %s.addr, align 8
  call void @vStringPut(%struct.sVString* %22, i32 32)
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %land.lhs.true13, %if.end10
  %23 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pNext18 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %23, i32 0, i32 7
  %24 = load %struct._CXXToken*, %struct._CXXToken** %pNext18, align 8
  store %struct._CXXToken* %24, %struct._CXXToken** %t, align 8
  br label %while.cond

while.end:                                        ; preds = %if.then, %if.then1, %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sVString* @cxxTokenChainJoin(%struct._CXXTokenChain* %tc, i8* %szSeparator, i32 %uFlags) #0 {
entry:
  %retval = alloca %struct.sVString*, align 8
  %tc.addr = alloca %struct._CXXTokenChain*, align 8
  %szSeparator.addr = alloca i8*, align 8
  %uFlags.addr = alloca i32, align 4
  %s = alloca %struct.sVString*, align 8
  store %struct._CXXTokenChain* %tc, %struct._CXXTokenChain** %tc.addr, align 8
  store i8* %szSeparator, i8** %szSeparator.addr, align 8
  store i32 %uFlags, i32* %uFlags.addr, align 4
  %0 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %tc.addr, align 8
  %tobool = icmp ne %struct._CXXTokenChain* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.sVString* null, %struct.sVString** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %tc.addr, align 8
  %iCount = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %1, i32 0, i32 2
  %2 = load i32, i32* %iCount, align 8
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  store %struct.sVString* null, %struct.sVString** %retval, align 8
  br label %return

if.end2:                                          ; preds = %if.end
  %call = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call, %struct.sVString** %s, align 8
  %3 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %tc.addr, align 8
  %4 = load %struct.sVString*, %struct.sVString** %s, align 8
  %5 = load i8*, i8** %szSeparator.addr, align 8
  %6 = load i32, i32* %uFlags.addr, align 4
  call void @cxxTokenChainJoinInString(%struct._CXXTokenChain* %3, %struct.sVString* %4, i8* %5, i32 %6)
  %7 = load %struct.sVString*, %struct.sVString** %s, align 8
  store %struct.sVString* %7, %struct.sVString** %retval, align 8
  br label %return

return:                                           ; preds = %if.end2, %if.then1, %if.then
  %8 = load %struct.sVString*, %struct.sVString** %retval, align 8
  ret %struct.sVString* %8
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @cxxTokenChainMoveEntries(%struct._CXXTokenChain* %src, %struct._CXXTokenChain* %dest) #0 {
entry:
  %src.addr = alloca %struct._CXXTokenChain*, align 8
  %dest.addr = alloca %struct._CXXTokenChain*, align 8
  store %struct._CXXTokenChain* %src, %struct._CXXTokenChain** %src.addr, align 8
  store %struct._CXXTokenChain* %dest, %struct._CXXTokenChain** %dest.addr, align 8
  %0 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %dest.addr, align 8
  %iCount = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %0, i32 0, i32 2
  %1 = load i32, i32* %iCount, align 8
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %dest.addr, align 8
  call void @cxxTokenChainClear(%struct._CXXTokenChain* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %src.addr, align 8
  %iCount1 = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %3, i32 0, i32 2
  %4 = load i32, i32* %iCount1, align 8
  %5 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %dest.addr, align 8
  %iCount2 = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %5, i32 0, i32 2
  store i32 %4, i32* %iCount2, align 8
  %6 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %src.addr, align 8
  %pHead = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %6, i32 0, i32 0
  %7 = load %struct._CXXToken*, %struct._CXXToken** %pHead, align 8
  %8 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %dest.addr, align 8
  %pHead3 = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %8, i32 0, i32 0
  store %struct._CXXToken* %7, %struct._CXXToken** %pHead3, align 8
  %9 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %src.addr, align 8
  %pTail = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %9, i32 0, i32 1
  %10 = load %struct._CXXToken*, %struct._CXXToken** %pTail, align 8
  %11 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %dest.addr, align 8
  %pTail4 = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %11, i32 0, i32 1
  store %struct._CXXToken* %10, %struct._CXXToken** %pTail4, align 8
  %12 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %src.addr, align 8
  %iCount5 = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %12, i32 0, i32 2
  store i32 0, i32* %iCount5, align 8
  %13 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %src.addr, align 8
  %pHead6 = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %13, i32 0, i32 0
  store %struct._CXXToken* null, %struct._CXXToken** %pHead6, align 8
  %14 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %src.addr, align 8
  %pTail7 = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %14, i32 0, i32 1
  store %struct._CXXToken* null, %struct._CXXToken** %pTail7, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @cxxTokenChainMoveEntryRange(%struct._CXXTokenChain* %src, %struct._CXXToken* %start, %struct._CXXToken* %end, %struct._CXXTokenChain* %dest) #0 {
entry:
  %src.addr = alloca %struct._CXXTokenChain*, align 8
  %start.addr = alloca %struct._CXXToken*, align 8
  %end.addr = alloca %struct._CXXToken*, align 8
  %dest.addr = alloca %struct._CXXTokenChain*, align 8
  %t = alloca %struct._CXXToken*, align 8
  %next = alloca %struct._CXXToken*, align 8
  store %struct._CXXTokenChain* %src, %struct._CXXTokenChain** %src.addr, align 8
  store %struct._CXXToken* %start, %struct._CXXToken** %start.addr, align 8
  store %struct._CXXToken* %end, %struct._CXXToken** %end.addr, align 8
  store %struct._CXXTokenChain* %dest, %struct._CXXTokenChain** %dest.addr, align 8
  %0 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %src.addr, align 8
  %tobool = icmp ne %struct._CXXTokenChain* %0, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %dest.addr, align 8
  %tobool1 = icmp ne %struct._CXXTokenChain* %1, null
  br i1 %tobool1, label %lor.lhs.false2, label %if.then

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load %struct._CXXToken*, %struct._CXXToken** %start.addr, align 8
  %tobool3 = icmp ne %struct._CXXToken* %2, null
  br i1 %tobool3, label %lor.lhs.false4, label %if.then

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %3 = load %struct._CXXToken*, %struct._CXXToken** %end.addr, align 8
  %tobool5 = icmp ne %struct._CXXToken* %3, null
  br i1 %tobool5, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %entry
  br label %for.end

if.end:                                           ; preds = %lor.lhs.false4
  br label %do.body

do.body:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body6

do.body6:                                         ; preds = %do.end
  br label %do.end7

do.end7:                                          ; preds = %do.body6
  br label %do.body8

do.body8:                                         ; preds = %do.end7
  br label %do.end9

do.end9:                                          ; preds = %do.body8
  %4 = load %struct._CXXToken*, %struct._CXXToken** %start.addr, align 8
  store %struct._CXXToken* %4, %struct._CXXToken** %t, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end11, %do.end9
  %5 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pNext = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %5, i32 0, i32 7
  %6 = load %struct._CXXToken*, %struct._CXXToken** %pNext, align 8
  store %struct._CXXToken* %6, %struct._CXXToken** %next, align 8
  %7 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %src.addr, align 8
  %8 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  call void @cxxTokenChainTake(%struct._CXXTokenChain* %7, %struct._CXXToken* %8)
  %9 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %dest.addr, align 8
  %10 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  call void @cxxTokenChainAppend(%struct._CXXTokenChain* %9, %struct._CXXToken* %10)
  %11 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %12 = load %struct._CXXToken*, %struct._CXXToken** %end.addr, align 8
  %cmp = icmp eq %struct._CXXToken* %11, %12
  br i1 %cmp, label %if.then10, label %if.end11

if.then10:                                        ; preds = %for.cond
  br label %for.end

if.end11:                                         ; preds = %for.cond
  %13 = load %struct._CXXToken*, %struct._CXXToken** %next, align 8
  store %struct._CXXToken* %13, %struct._CXXToken** %t, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then, %if.then10
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct._CXXTokenChain* @cxxTokenChainSplitOnComma(%struct._CXXTokenChain* %tc) #0 {
entry:
  %retval = alloca %struct._CXXTokenChain*, align 8
  %tc.addr = alloca %struct._CXXTokenChain*, align 8
  %pRet = alloca %struct._CXXTokenChain*, align 8
  %pToken = alloca %struct._CXXToken*, align 8
  %pStart = alloca %struct._CXXToken*, align 8
  %pNew = alloca %struct._CXXToken*, align 8
  %pNew27 = alloca %struct._CXXToken*, align 8
  store %struct._CXXTokenChain* %tc, %struct._CXXTokenChain** %tc.addr, align 8
  %0 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %tc.addr, align 8
  %tobool = icmp ne %struct._CXXTokenChain* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._CXXTokenChain* null, %struct._CXXTokenChain** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %call = call %struct._CXXTokenChain* @cxxTokenChainCreate()
  store %struct._CXXTokenChain* %call, %struct._CXXTokenChain** %pRet, align 8
  %1 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %tc.addr, align 8
  %tobool1 = icmp ne %struct._CXXTokenChain* %1, null
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %2 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %tc.addr, align 8
  %pHead = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %2, i32 0, i32 0
  %3 = load %struct._CXXToken*, %struct._CXXToken** %pHead, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._CXXToken* [ %3, %cond.true ], [ null, %cond.false ]
  store %struct._CXXToken* %cond, %struct._CXXToken** %pToken, align 8
  %4 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %tobool2 = icmp ne %struct._CXXToken* %4, null
  br i1 %tobool2, label %if.end4, label %if.then3

if.then3:                                         ; preds = %cond.end
  %5 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pRet, align 8
  store %struct._CXXTokenChain* %5, %struct._CXXTokenChain** %retval, align 8
  br label %return

if.end4:                                          ; preds = %cond.end
  %6 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  store %struct._CXXToken* %6, %struct._CXXToken** %pStart, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end23, %if.end4
  %7 = load %struct._CXXToken*, %struct._CXXToken** %pStart, align 8
  %tobool5 = icmp ne %struct._CXXToken* %7, null
  br i1 %tobool5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %8 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %pNext = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %8, i32 0, i32 7
  %9 = load %struct._CXXToken*, %struct._CXXToken** %pNext, align 8
  %tobool6 = icmp ne %struct._CXXToken* %9, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %10 = phi i1 [ false, %while.cond ], [ %tobool6, %land.rhs ]
  br i1 %10, label %while.body, label %while.end24

while.body:                                       ; preds = %land.end
  br label %while.cond7

while.cond7:                                      ; preds = %while.body13, %while.body
  %11 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %pNext8 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %11, i32 0, i32 7
  %12 = load %struct._CXXToken*, %struct._CXXToken** %pNext8, align 8
  %tobool9 = icmp ne %struct._CXXToken* %12, null
  br i1 %tobool9, label %land.rhs10, label %land.end12

land.rhs10:                                       ; preds = %while.cond7
  %13 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %pNext11 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %13, i32 0, i32 7
  %14 = load %struct._CXXToken*, %struct._CXXToken** %pNext11, align 8
  %eType = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %14, i32 0, i32 0
  %15 = load i32, i32* %eType, align 8
  %cmp = icmp eq i32 %15, 128
  %lnot = xor i1 %cmp, true
  br label %land.end12

land.end12:                                       ; preds = %land.rhs10, %while.cond7
  %16 = phi i1 [ false, %while.cond7 ], [ %lnot, %land.rhs10 ]
  br i1 %16, label %while.body13, label %while.end

while.body13:                                     ; preds = %land.end12
  %17 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %pNext14 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %17, i32 0, i32 7
  %18 = load %struct._CXXToken*, %struct._CXXToken** %pNext14, align 8
  store %struct._CXXToken* %18, %struct._CXXToken** %pToken, align 8
  br label %while.cond7

while.end:                                        ; preds = %land.end12
  %19 = load %struct._CXXToken*, %struct._CXXToken** %pStart, align 8
  %20 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %call15 = call %struct._CXXToken* @cxxTokenChainExtractRange(%struct._CXXToken* %19, %struct._CXXToken* %20, i32 0)
  store %struct._CXXToken* %call15, %struct._CXXToken** %pNew, align 8
  %21 = load %struct._CXXToken*, %struct._CXXToken** %pNew, align 8
  %tobool16 = icmp ne %struct._CXXToken* %21, null
  br i1 %tobool16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %while.end
  %22 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pRet, align 8
  %23 = load %struct._CXXToken*, %struct._CXXToken** %pNew, align 8
  call void @cxxTokenChainAppend(%struct._CXXTokenChain* %22, %struct._CXXToken* %23)
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %while.end
  %24 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %pNext19 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %24, i32 0, i32 7
  %25 = load %struct._CXXToken*, %struct._CXXToken** %pNext19, align 8
  store %struct._CXXToken* %25, %struct._CXXToken** %pToken, align 8
  %26 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %tobool20 = icmp ne %struct._CXXToken* %26, null
  br i1 %tobool20, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.end18
  %27 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %pNext22 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %27, i32 0, i32 7
  %28 = load %struct._CXXToken*, %struct._CXXToken** %pNext22, align 8
  store %struct._CXXToken* %28, %struct._CXXToken** %pToken, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.end18
  %29 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  store %struct._CXXToken* %29, %struct._CXXToken** %pStart, align 8
  br label %while.cond

while.end24:                                      ; preds = %land.end
  %30 = load %struct._CXXToken*, %struct._CXXToken** %pStart, align 8
  %tobool25 = icmp ne %struct._CXXToken* %30, null
  br i1 %tobool25, label %if.then26, label %if.end37

if.then26:                                        ; preds = %while.end24
  %31 = load %struct._CXXToken*, %struct._CXXToken** %pStart, align 8
  %32 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %tc.addr, align 8
  %tobool28 = icmp ne %struct._CXXTokenChain* %32, null
  br i1 %tobool28, label %cond.true29, label %cond.false30

cond.true29:                                      ; preds = %if.then26
  %33 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %tc.addr, align 8
  %pTail = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %33, i32 0, i32 1
  %34 = load %struct._CXXToken*, %struct._CXXToken** %pTail, align 8
  br label %cond.end31

cond.false30:                                     ; preds = %if.then26
  br label %cond.end31

cond.end31:                                       ; preds = %cond.false30, %cond.true29
  %cond32 = phi %struct._CXXToken* [ %34, %cond.true29 ], [ null, %cond.false30 ]
  %call33 = call %struct._CXXToken* @cxxTokenChainExtractRange(%struct._CXXToken* %31, %struct._CXXToken* %cond32, i32 0)
  store %struct._CXXToken* %call33, %struct._CXXToken** %pNew27, align 8
  %35 = load %struct._CXXToken*, %struct._CXXToken** %pNew27, align 8
  %tobool34 = icmp ne %struct._CXXToken* %35, null
  br i1 %tobool34, label %if.then35, label %if.end36

if.then35:                                        ; preds = %cond.end31
  %36 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pRet, align 8
  %37 = load %struct._CXXToken*, %struct._CXXToken** %pNew27, align 8
  call void @cxxTokenChainAppend(%struct._CXXTokenChain* %36, %struct._CXXToken* %37)
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %cond.end31
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %while.end24
  %38 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pRet, align 8
  store %struct._CXXTokenChain* %38, %struct._CXXTokenChain** %retval, align 8
  br label %return

return:                                           ; preds = %if.end37, %if.then3, %if.then
  %39 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %retval, align 8
  ret %struct._CXXTokenChain* %39
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct._CXXToken* @cxxTokenChainExtractRange(%struct._CXXToken* %from, %struct._CXXToken* %to, i32 %uFlags) #0 {
entry:
  %retval = alloca %struct._CXXToken*, align 8
  %from.addr = alloca %struct._CXXToken*, align 8
  %to.addr = alloca %struct._CXXToken*, align 8
  %uFlags.addr = alloca i32, align 4
  %pToken = alloca %struct._CXXToken*, align 8
  %pRet = alloca %struct._CXXToken*, align 8
  store %struct._CXXToken* %from, %struct._CXXToken** %from.addr, align 8
  store %struct._CXXToken* %to, %struct._CXXToken** %to.addr, align 8
  store i32 %uFlags, i32* %uFlags.addr, align 4
  %0 = load %struct._CXXToken*, %struct._CXXToken** %from.addr, align 8
  %tobool = icmp ne %struct._CXXToken* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._CXXToken* null, %struct._CXXToken** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._CXXToken*, %struct._CXXToken** %from.addr, align 8
  store %struct._CXXToken* %1, %struct._CXXToken** %pToken, align 8
  %call = call %struct._CXXToken* @cxxTokenCreate()
  store %struct._CXXToken* %call, %struct._CXXToken** %pRet, align 8
  %2 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %iLineNumber = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %2, i32 0, i32 5
  %3 = load i32, i32* %iLineNumber, align 4
  %4 = load %struct._CXXToken*, %struct._CXXToken** %pRet, align 8
  %iLineNumber1 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %4, i32 0, i32 5
  store i32 %3, i32* %iLineNumber1, align 4
  %5 = load %struct._CXXToken*, %struct._CXXToken** %pRet, align 8
  %oFilePosition = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %5, i32 0, i32 6
  %6 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %oFilePosition2 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %6, i32 0, i32 6
  %7 = bitcast %struct._MIOPos* %oFilePosition to i8*
  %8 = bitcast %struct._MIOPos* %oFilePosition2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 %8, i64 16, i1 false)
  %9 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %eType = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %9, i32 0, i32 0
  %10 = load i32, i32* %eType, align 8
  %11 = load %struct._CXXToken*, %struct._CXXToken** %pRet, align 8
  %eType3 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %11, i32 0, i32 0
  store i32 %10, i32* %eType3, align 8
  %12 = load %struct._CXXToken*, %struct._CXXToken** %pRet, align 8
  %pszWord = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %12, i32 0, i32 1
  %13 = load %struct.sVString*, %struct.sVString** %pszWord, align 8
  %14 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  call void @cxxTokenAppendToString(%struct.sVString* %13, %struct._CXXToken* %14)
  %15 = load i32, i32* %uFlags.addr, align 4
  %and = and i32 %15, 1
  %tobool4 = icmp ne i32 %and, 0
  br i1 %tobool4, label %if.end8, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %16 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %bFollowedBySpace = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %16, i32 0, i32 4
  %17 = load i8, i8* %bFollowedBySpace, align 8
  %tobool5 = trunc i8 %17 to i1
  br i1 %tobool5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %land.lhs.true
  %18 = load %struct._CXXToken*, %struct._CXXToken** %pRet, align 8
  %pszWord7 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %18, i32 0, i32 1
  %19 = load %struct.sVString*, %struct.sVString** %pszWord7, align 8
  call void @vStringPut(%struct.sVString* %19, i32 32)
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %land.lhs.true, %if.end
  %20 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %bFollowedBySpace9 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %20, i32 0, i32 4
  %21 = load i8, i8* %bFollowedBySpace9, align 8
  %tobool10 = trunc i8 %21 to i1
  %22 = load %struct._CXXToken*, %struct._CXXToken** %pRet, align 8
  %bFollowedBySpace11 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %22, i32 0, i32 4
  %frombool = zext i1 %tobool10 to i8
  store i8 %frombool, i8* %bFollowedBySpace11, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end23, %if.end8
  %23 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %24 = load %struct._CXXToken*, %struct._CXXToken** %to.addr, align 8
  %cmp = icmp ne %struct._CXXToken* %23, %24
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %25 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %pNext = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %25, i32 0, i32 7
  %26 = load %struct._CXXToken*, %struct._CXXToken** %pNext, align 8
  store %struct._CXXToken* %26, %struct._CXXToken** %pToken, align 8
  %27 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %tobool12 = icmp ne %struct._CXXToken* %27, null
  br i1 %tobool12, label %if.end14, label %if.then13

if.then13:                                        ; preds = %while.body
  %28 = load %struct._CXXToken*, %struct._CXXToken** %pRet, align 8
  store %struct._CXXToken* %28, %struct._CXXToken** %retval, align 8
  br label %return

if.end14:                                         ; preds = %while.body
  %29 = load %struct._CXXToken*, %struct._CXXToken** %pRet, align 8
  %pszWord15 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %29, i32 0, i32 1
  %30 = load %struct.sVString*, %struct.sVString** %pszWord15, align 8
  %31 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  call void @cxxTokenAppendToString(%struct.sVString* %30, %struct._CXXToken* %31)
  %32 = load i32, i32* %uFlags.addr, align 4
  %and16 = and i32 %32, 1
  %tobool17 = icmp ne i32 %and16, 0
  br i1 %tobool17, label %if.end23, label %land.lhs.true18

land.lhs.true18:                                  ; preds = %if.end14
  %33 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %bFollowedBySpace19 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %33, i32 0, i32 4
  %34 = load i8, i8* %bFollowedBySpace19, align 8
  %tobool20 = trunc i8 %34 to i1
  br i1 %tobool20, label %if.then21, label %if.end23

if.then21:                                        ; preds = %land.lhs.true18
  %35 = load %struct._CXXToken*, %struct._CXXToken** %pRet, align 8
  %pszWord22 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %35, i32 0, i32 1
  %36 = load %struct.sVString*, %struct.sVString** %pszWord22, align 8
  call void @vStringPut(%struct.sVString* %36, i32 32)
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %land.lhs.true18, %if.end14
  %37 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %bFollowedBySpace24 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %37, i32 0, i32 4
  %38 = load i8, i8* %bFollowedBySpace24, align 8
  %tobool25 = trunc i8 %38 to i1
  %39 = load %struct._CXXToken*, %struct._CXXToken** %pRet, align 8
  %bFollowedBySpace26 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %39, i32 0, i32 4
  %frombool27 = zext i1 %tobool25 to i8
  store i8 %frombool27, i8* %bFollowedBySpace26, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %40 = load %struct._CXXToken*, %struct._CXXToken** %pRet, align 8
  store %struct._CXXToken* %40, %struct._CXXToken** %retval, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then13, %if.then
  %41 = load %struct._CXXToken*, %struct._CXXToken** %retval, align 8
  ret %struct._CXXToken* %41
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @cxxTokenChainCondense(%struct._CXXTokenChain* %tc, i32 %uFlags) #0 {
entry:
  %tc.addr = alloca %struct._CXXTokenChain*, align 8
  %uFlags.addr = alloca i32, align 4
  %pCondensed = alloca %struct._CXXToken*, align 8
  %t = alloca %struct._CXXToken*, align 8
  store %struct._CXXTokenChain* %tc, %struct._CXXTokenChain** %tc.addr, align 8
  store i32 %uFlags, i32* %uFlags.addr, align 4
  %0 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %tc.addr, align 8
  %tobool = icmp ne %struct._CXXTokenChain* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %tc.addr, align 8
  %iCount = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %1, i32 0, i32 2
  %2 = load i32, i32* %iCount, align 8
  %cmp = icmp sle i32 %2, 1
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  br label %return

if.end2:                                          ; preds = %if.end
  %call = call %struct._CXXToken* @cxxTokenCreate()
  store %struct._CXXToken* %call, %struct._CXXToken** %pCondensed, align 8
  %3 = load %struct._CXXToken*, %struct._CXXToken** %pCondensed, align 8
  %eType = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %3, i32 0, i32 0
  store i32 1024, i32* %eType, align 8
  %4 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %tc.addr, align 8
  %pHead = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %4, i32 0, i32 0
  %5 = load %struct._CXXToken*, %struct._CXXToken** %pHead, align 8
  %iLineNumber = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %5, i32 0, i32 5
  %6 = load i32, i32* %iLineNumber, align 4
  %7 = load %struct._CXXToken*, %struct._CXXToken** %pCondensed, align 8
  %iLineNumber3 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %7, i32 0, i32 5
  store i32 %6, i32* %iLineNumber3, align 4
  %8 = load %struct._CXXToken*, %struct._CXXToken** %pCondensed, align 8
  %oFilePosition = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %8, i32 0, i32 6
  %9 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %tc.addr, align 8
  %pHead4 = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %9, i32 0, i32 0
  %10 = load %struct._CXXToken*, %struct._CXXToken** %pHead4, align 8
  %oFilePosition5 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %10, i32 0, i32 6
  %11 = bitcast %struct._MIOPos* %oFilePosition to i8*
  %12 = bitcast %struct._MIOPos* %oFilePosition5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 16, i1 false)
  br label %while.cond

while.cond:                                       ; preds = %if.end13, %if.end2
  %13 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %tc.addr, align 8
  %iCount6 = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %13, i32 0, i32 2
  %14 = load i32, i32* %iCount6, align 8
  %cmp7 = icmp sgt i32 %14, 0
  br i1 %cmp7, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %15 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %tc.addr, align 8
  %call8 = call %struct._CXXToken* @cxxTokenChainTakeFirst(%struct._CXXTokenChain* %15)
  store %struct._CXXToken* %call8, %struct._CXXToken** %t, align 8
  %16 = load %struct._CXXToken*, %struct._CXXToken** %pCondensed, align 8
  %pszWord = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %16, i32 0, i32 1
  %17 = load %struct.sVString*, %struct.sVString** %pszWord, align 8
  %18 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  call void @cxxTokenAppendToString(%struct.sVString* %17, %struct._CXXToken* %18)
  %19 = load i32, i32* %uFlags.addr, align 4
  %and = and i32 %19, 1
  %tobool9 = icmp ne i32 %and, 0
  br i1 %tobool9, label %if.end13, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.body
  %20 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %bFollowedBySpace = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %20, i32 0, i32 4
  %21 = load i8, i8* %bFollowedBySpace, align 8
  %tobool10 = trunc i8 %21 to i1
  br i1 %tobool10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %land.lhs.true
  %22 = load %struct._CXXToken*, %struct._CXXToken** %pCondensed, align 8
  %pszWord12 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %22, i32 0, i32 1
  %23 = load %struct.sVString*, %struct.sVString** %pszWord12, align 8
  call void @vStringPut(%struct.sVString* %23, i32 32)
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %land.lhs.true, %while.body
  %24 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %bFollowedBySpace14 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %24, i32 0, i32 4
  %25 = load i8, i8* %bFollowedBySpace14, align 8
  %tobool15 = trunc i8 %25 to i1
  %26 = load %struct._CXXToken*, %struct._CXXToken** %pCondensed, align 8
  %bFollowedBySpace16 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %26, i32 0, i32 4
  %frombool = zext i1 %tobool15 to i8
  store i8 %frombool, i8* %bFollowedBySpace16, align 8
  %27 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  call void @cxxTokenDestroy(%struct._CXXToken* %27)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %28 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %tc.addr, align 8
  %29 = load %struct._CXXToken*, %struct._CXXToken** %pCondensed, align 8
  call void @cxxTokenChainAppend(%struct._CXXTokenChain* %28, %struct._CXXToken* %29)
  br label %return

return:                                           ; preds = %while.end, %if.then1, %if.then
  ret void
}

declare %struct._CXXToken* @cxxTokenCreate() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct._CXXToken* @cxxTokenChainAt(%struct._CXXTokenChain* %tc, i32 %index) #0 {
entry:
  %retval = alloca %struct._CXXToken*, align 8
  %tc.addr = alloca %struct._CXXTokenChain*, align 8
  %index.addr = alloca i32, align 4
  %pToken = alloca %struct._CXXToken*, align 8
  store %struct._CXXTokenChain* %tc, %struct._CXXTokenChain** %tc.addr, align 8
  store i32 %index, i32* %index.addr, align 4
  %0 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %tc.addr, align 8
  %tobool = icmp ne %struct._CXXTokenChain* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._CXXToken* null, %struct._CXXToken** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %index.addr, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  store %struct._CXXToken* null, %struct._CXXToken** %retval, align 8
  br label %return

if.end2:                                          ; preds = %if.end
  %2 = load i32, i32* %index.addr, align 4
  %3 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %tc.addr, align 8
  %iCount = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %3, i32 0, i32 2
  %4 = load i32, i32* %iCount, align 8
  %cmp3 = icmp sge i32 %2, %4
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end2
  store %struct._CXXToken* null, %struct._CXXToken** %retval, align 8
  br label %return

if.end5:                                          ; preds = %if.end2
  %5 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %tc.addr, align 8
  %pHead = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %5, i32 0, i32 0
  %6 = load %struct._CXXToken*, %struct._CXXToken** %pHead, align 8
  store %struct._CXXToken* %6, %struct._CXXToken** %pToken, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end5
  %7 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %tobool6 = icmp ne %struct._CXXToken* %7, null
  br i1 %tobool6, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %8 = load i32, i32* %index.addr, align 4
  %tobool7 = icmp ne i32 %8, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %9 = phi i1 [ false, %while.cond ], [ %tobool7, %land.rhs ]
  br i1 %9, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %10 = load i32, i32* %index.addr, align 4
  %dec = add nsw i32 %10, -1
  store i32 %dec, i32* %index.addr, align 4
  %11 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %pNext = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %11, i32 0, i32 7
  %12 = load %struct._CXXToken*, %struct._CXXToken** %pNext, align 8
  store %struct._CXXToken* %12, %struct._CXXToken** %pToken, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %13 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  store %struct._CXXToken* %13, %struct._CXXToken** %retval, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then4, %if.then1, %if.then
  %14 = load %struct._CXXToken*, %struct._CXXToken** %retval, align 8
  ret %struct._CXXToken* %14
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct._CXXToken* @cxxTokenChainSkipToEndOfTemplateAngleBracket(%struct._CXXToken* %t) #0 {
entry:
  %retval = alloca %struct._CXXToken*, align 8
  %t.addr = alloca %struct._CXXToken*, align 8
  %iLevel = alloca i32, align 4
  store %struct._CXXToken* %t, %struct._CXXToken** %t.addr, align 8
  %0 = load %struct._CXXToken*, %struct._CXXToken** %t.addr, align 8
  %tobool = icmp ne %struct._CXXToken* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._CXXToken* null, %struct._CXXToken** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.body
  store i32 1, i32* %iLevel, align 4
  %1 = load %struct._CXXToken*, %struct._CXXToken** %t.addr, align 8
  %pNext = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %1, i32 0, i32 7
  %2 = load %struct._CXXToken*, %struct._CXXToken** %pNext, align 8
  store %struct._CXXToken* %2, %struct._CXXToken** %t.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end10, %do.end
  %3 = load %struct._CXXToken*, %struct._CXXToken** %t.addr, align 8
  %tobool1 = icmp ne %struct._CXXToken* %3, null
  br i1 %tobool1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct._CXXToken*, %struct._CXXToken** %t.addr, align 8
  %eType = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %4, i32 0, i32 0
  %5 = load i32, i32* %eType, align 8
  %cmp = icmp eq i32 %5, 4194304
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %while.body
  %6 = load i32, i32* %iLevel, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %iLevel, align 4
  br label %if.end10

if.else:                                          ; preds = %while.body
  %7 = load %struct._CXXToken*, %struct._CXXToken** %t.addr, align 8
  %eType3 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %7, i32 0, i32 0
  %8 = load i32, i32* %eType3, align 8
  %cmp4 = icmp eq i32 %8, 67108864
  br i1 %cmp4, label %if.then5, label %if.end9

if.then5:                                         ; preds = %if.else
  %9 = load i32, i32* %iLevel, align 4
  %cmp6 = icmp eq i32 %9, 1
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.then5
  %10 = load %struct._CXXToken*, %struct._CXXToken** %t.addr, align 8
  store %struct._CXXToken* %10, %struct._CXXToken** %retval, align 8
  br label %return

if.end8:                                          ; preds = %if.then5
  %11 = load i32, i32* %iLevel, align 4
  %dec = add nsw i32 %11, -1
  store i32 %dec, i32* %iLevel, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %if.else
  br label %if.end10

if.end10:                                         ; preds = %if.end9, %if.then2
  %12 = load %struct._CXXToken*, %struct._CXXToken** %t.addr, align 8
  %pNext11 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %12, i32 0, i32 7
  %13 = load %struct._CXXToken*, %struct._CXXToken** %pNext11, align 8
  store %struct._CXXToken* %13, %struct._CXXToken** %t.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store %struct._CXXToken* null, %struct._CXXToken** %retval, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then7, %if.then
  %14 = load %struct._CXXToken*, %struct._CXXToken** %retval, align 8
  ret %struct._CXXToken* %14
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct._CXXToken* @cxxTokenChainSkipBackToStartOfTemplateAngleBracket(%struct._CXXToken* %t) #0 {
entry:
  %retval = alloca %struct._CXXToken*, align 8
  %t.addr = alloca %struct._CXXToken*, align 8
  %iLevel = alloca i32, align 4
  store %struct._CXXToken* %t, %struct._CXXToken** %t.addr, align 8
  %0 = load %struct._CXXToken*, %struct._CXXToken** %t.addr, align 8
  %tobool = icmp ne %struct._CXXToken* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._CXXToken* null, %struct._CXXToken** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.body
  store i32 1, i32* %iLevel, align 4
  %1 = load %struct._CXXToken*, %struct._CXXToken** %t.addr, align 8
  %pPrev = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %1, i32 0, i32 8
  %2 = load %struct._CXXToken*, %struct._CXXToken** %pPrev, align 8
  store %struct._CXXToken* %2, %struct._CXXToken** %t.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end10, %do.end
  %3 = load %struct._CXXToken*, %struct._CXXToken** %t.addr, align 8
  %tobool1 = icmp ne %struct._CXXToken* %3, null
  br i1 %tobool1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct._CXXToken*, %struct._CXXToken** %t.addr, align 8
  %eType = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %4, i32 0, i32 0
  %5 = load i32, i32* %eType, align 8
  %cmp = icmp eq i32 %5, 67108864
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %while.body
  %6 = load i32, i32* %iLevel, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %iLevel, align 4
  br label %if.end10

if.else:                                          ; preds = %while.body
  %7 = load %struct._CXXToken*, %struct._CXXToken** %t.addr, align 8
  %eType3 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %7, i32 0, i32 0
  %8 = load i32, i32* %eType3, align 8
  %cmp4 = icmp eq i32 %8, 4194304
  br i1 %cmp4, label %if.then5, label %if.end9

if.then5:                                         ; preds = %if.else
  %9 = load i32, i32* %iLevel, align 4
  %cmp6 = icmp eq i32 %9, 1
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.then5
  %10 = load %struct._CXXToken*, %struct._CXXToken** %t.addr, align 8
  store %struct._CXXToken* %10, %struct._CXXToken** %retval, align 8
  br label %return

if.end8:                                          ; preds = %if.then5
  %11 = load i32, i32* %iLevel, align 4
  %dec = add nsw i32 %11, -1
  store i32 %dec, i32* %iLevel, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %if.else
  br label %if.end10

if.end10:                                         ; preds = %if.end9, %if.then2
  %12 = load %struct._CXXToken*, %struct._CXXToken** %t.addr, align 8
  %pPrev11 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %12, i32 0, i32 8
  %13 = load %struct._CXXToken*, %struct._CXXToken** %pPrev11, align 8
  store %struct._CXXToken* %13, %struct._CXXToken** %t.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store %struct._CXXToken* null, %struct._CXXToken** %retval, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then7, %if.then
  %14 = load %struct._CXXToken*, %struct._CXXToken** %retval, align 8
  ret %struct._CXXToken* %14
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct._CXXToken* @cxxTokenChainFirstTokenOfType(%struct._CXXTokenChain* %tc, i32 %uTokenTypes) #0 {
entry:
  %retval = alloca %struct._CXXToken*, align 8
  %tc.addr = alloca %struct._CXXTokenChain*, align 8
  %uTokenTypes.addr = alloca i32, align 4
  %t = alloca %struct._CXXToken*, align 8
  store %struct._CXXTokenChain* %tc, %struct._CXXTokenChain** %tc.addr, align 8
  store i32 %uTokenTypes, i32* %uTokenTypes.addr, align 4
  %0 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %tc.addr, align 8
  %tobool = icmp ne %struct._CXXTokenChain* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._CXXToken* null, %struct._CXXToken** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %tc.addr, align 8
  %pHead = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %1, i32 0, i32 0
  %2 = load %struct._CXXToken*, %struct._CXXToken** %pHead, align 8
  store %struct._CXXToken* %2, %struct._CXXToken** %t, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end4, %if.end
  %3 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %tobool1 = icmp ne %struct._CXXToken* %3, null
  br i1 %tobool1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %eType = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %4, i32 0, i32 0
  %5 = load i32, i32* %eType, align 8
  %6 = load i32, i32* %uTokenTypes.addr, align 4
  %and = and i32 %5, %6
  %tobool2 = icmp ne i32 %and, 0
  br i1 %tobool2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %while.body
  %7 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  store %struct._CXXToken* %7, %struct._CXXToken** %retval, align 8
  br label %return

if.end4:                                          ; preds = %while.body
  %8 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pNext = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %8, i32 0, i32 7
  %9 = load %struct._CXXToken*, %struct._CXXToken** %pNext, align 8
  store %struct._CXXToken* %9, %struct._CXXToken** %t, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store %struct._CXXToken* null, %struct._CXXToken** %retval, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then3, %if.then
  %10 = load %struct._CXXToken*, %struct._CXXToken** %retval, align 8
  ret %struct._CXXToken* %10
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct._CXXToken* @cxxTokenChainNextTokenOfType(%struct._CXXToken* %t, i32 %uTokenTypes) #0 {
entry:
  %retval = alloca %struct._CXXToken*, align 8
  %t.addr = alloca %struct._CXXToken*, align 8
  %uTokenTypes.addr = alloca i32, align 4
  store %struct._CXXToken* %t, %struct._CXXToken** %t.addr, align 8
  store i32 %uTokenTypes, i32* %uTokenTypes.addr, align 4
  %0 = load %struct._CXXToken*, %struct._CXXToken** %t.addr, align 8
  %tobool = icmp ne %struct._CXXToken* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._CXXToken* null, %struct._CXXToken** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._CXXToken*, %struct._CXXToken** %t.addr, align 8
  %pNext = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %1, i32 0, i32 7
  %2 = load %struct._CXXToken*, %struct._CXXToken** %pNext, align 8
  store %struct._CXXToken* %2, %struct._CXXToken** %t.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end4, %if.end
  %3 = load %struct._CXXToken*, %struct._CXXToken** %t.addr, align 8
  %tobool1 = icmp ne %struct._CXXToken* %3, null
  br i1 %tobool1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct._CXXToken*, %struct._CXXToken** %t.addr, align 8
  %eType = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %4, i32 0, i32 0
  %5 = load i32, i32* %eType, align 8
  %6 = load i32, i32* %uTokenTypes.addr, align 4
  %and = and i32 %5, %6
  %tobool2 = icmp ne i32 %and, 0
  br i1 %tobool2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %while.body
  %7 = load %struct._CXXToken*, %struct._CXXToken** %t.addr, align 8
  store %struct._CXXToken* %7, %struct._CXXToken** %retval, align 8
  br label %return

if.end4:                                          ; preds = %while.body
  %8 = load %struct._CXXToken*, %struct._CXXToken** %t.addr, align 8
  %pNext5 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %8, i32 0, i32 7
  %9 = load %struct._CXXToken*, %struct._CXXToken** %pNext5, align 8
  store %struct._CXXToken* %9, %struct._CXXToken** %t.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store %struct._CXXToken* null, %struct._CXXToken** %retval, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then3, %if.then
  %10 = load %struct._CXXToken*, %struct._CXXToken** %retval, align 8
  ret %struct._CXXToken* %10
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct._CXXToken* @cxxTokenChainPreviousTokenOfType(%struct._CXXToken* %t, i32 %uTokenTypes) #0 {
entry:
  %retval = alloca %struct._CXXToken*, align 8
  %t.addr = alloca %struct._CXXToken*, align 8
  %uTokenTypes.addr = alloca i32, align 4
  store %struct._CXXToken* %t, %struct._CXXToken** %t.addr, align 8
  store i32 %uTokenTypes, i32* %uTokenTypes.addr, align 4
  %0 = load %struct._CXXToken*, %struct._CXXToken** %t.addr, align 8
  %tobool = icmp ne %struct._CXXToken* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._CXXToken* null, %struct._CXXToken** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._CXXToken*, %struct._CXXToken** %t.addr, align 8
  %pPrev = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %1, i32 0, i32 8
  %2 = load %struct._CXXToken*, %struct._CXXToken** %pPrev, align 8
  store %struct._CXXToken* %2, %struct._CXXToken** %t.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end4, %if.end
  %3 = load %struct._CXXToken*, %struct._CXXToken** %t.addr, align 8
  %tobool1 = icmp ne %struct._CXXToken* %3, null
  br i1 %tobool1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct._CXXToken*, %struct._CXXToken** %t.addr, align 8
  %eType = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %4, i32 0, i32 0
  %5 = load i32, i32* %eType, align 8
  %6 = load i32, i32* %uTokenTypes.addr, align 4
  %and = and i32 %5, %6
  %tobool2 = icmp ne i32 %and, 0
  br i1 %tobool2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %while.body
  %7 = load %struct._CXXToken*, %struct._CXXToken** %t.addr, align 8
  store %struct._CXXToken* %7, %struct._CXXToken** %retval, align 8
  br label %return

if.end4:                                          ; preds = %while.body
  %8 = load %struct._CXXToken*, %struct._CXXToken** %t.addr, align 8
  %pPrev5 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %8, i32 0, i32 8
  %9 = load %struct._CXXToken*, %struct._CXXToken** %pPrev5, align 8
  store %struct._CXXToken* %9, %struct._CXXToken** %t.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store %struct._CXXToken* null, %struct._CXXToken** %retval, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then3, %if.then
  %10 = load %struct._CXXToken*, %struct._CXXToken** %retval, align 8
  ret %struct._CXXToken* %10
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct._CXXToken* @cxxTokenChainPreviousTokenNotOfType(%struct._CXXToken* %t, i32 %uTokenTypes) #0 {
entry:
  %retval = alloca %struct._CXXToken*, align 8
  %t.addr = alloca %struct._CXXToken*, align 8
  %uTokenTypes.addr = alloca i32, align 4
  store %struct._CXXToken* %t, %struct._CXXToken** %t.addr, align 8
  store i32 %uTokenTypes, i32* %uTokenTypes.addr, align 4
  %0 = load %struct._CXXToken*, %struct._CXXToken** %t.addr, align 8
  %tobool = icmp ne %struct._CXXToken* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._CXXToken* null, %struct._CXXToken** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._CXXToken*, %struct._CXXToken** %t.addr, align 8
  %pPrev = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %1, i32 0, i32 8
  %2 = load %struct._CXXToken*, %struct._CXXToken** %pPrev, align 8
  store %struct._CXXToken* %2, %struct._CXXToken** %t.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end4, %if.end
  %3 = load %struct._CXXToken*, %struct._CXXToken** %t.addr, align 8
  %tobool1 = icmp ne %struct._CXXToken* %3, null
  br i1 %tobool1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct._CXXToken*, %struct._CXXToken** %t.addr, align 8
  %eType = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %4, i32 0, i32 0
  %5 = load i32, i32* %eType, align 8
  %6 = load i32, i32* %uTokenTypes.addr, align 4
  %and = and i32 %5, %6
  %tobool2 = icmp ne i32 %and, 0
  br i1 %tobool2, label %if.end4, label %if.then3

if.then3:                                         ; preds = %while.body
  %7 = load %struct._CXXToken*, %struct._CXXToken** %t.addr, align 8
  store %struct._CXXToken* %7, %struct._CXXToken** %retval, align 8
  br label %return

if.end4:                                          ; preds = %while.body
  %8 = load %struct._CXXToken*, %struct._CXXToken** %t.addr, align 8
  %pPrev5 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %8, i32 0, i32 8
  %9 = load %struct._CXXToken*, %struct._CXXToken** %pPrev5, align 8
  store %struct._CXXToken* %9, %struct._CXXToken** %t.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store %struct._CXXToken* null, %struct._CXXToken** %retval, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then3, %if.then
  %10 = load %struct._CXXToken*, %struct._CXXToken** %retval, align 8
  ret %struct._CXXToken* %10
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct._CXXToken* @cxxTokenChainLastTokenOfType(%struct._CXXTokenChain* %tc, i32 %uTokenTypes) #0 {
entry:
  %retval = alloca %struct._CXXToken*, align 8
  %tc.addr = alloca %struct._CXXTokenChain*, align 8
  %uTokenTypes.addr = alloca i32, align 4
  %t = alloca %struct._CXXToken*, align 8
  store %struct._CXXTokenChain* %tc, %struct._CXXTokenChain** %tc.addr, align 8
  store i32 %uTokenTypes, i32* %uTokenTypes.addr, align 4
  %0 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %tc.addr, align 8
  %tobool = icmp ne %struct._CXXTokenChain* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._CXXToken* null, %struct._CXXToken** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %tc.addr, align 8
  %pTail = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %1, i32 0, i32 1
  %2 = load %struct._CXXToken*, %struct._CXXToken** %pTail, align 8
  store %struct._CXXToken* %2, %struct._CXXToken** %t, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end4, %if.end
  %3 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %tobool1 = icmp ne %struct._CXXToken* %3, null
  br i1 %tobool1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %eType = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %4, i32 0, i32 0
  %5 = load i32, i32* %eType, align 8
  %6 = load i32, i32* %uTokenTypes.addr, align 4
  %and = and i32 %5, %6
  %tobool2 = icmp ne i32 %and, 0
  br i1 %tobool2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %while.body
  %7 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  store %struct._CXXToken* %7, %struct._CXXToken** %retval, align 8
  br label %return

if.end4:                                          ; preds = %while.body
  %8 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pPrev = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %8, i32 0, i32 8
  %9 = load %struct._CXXToken*, %struct._CXXToken** %pPrev, align 8
  store %struct._CXXToken* %9, %struct._CXXToken** %t, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store %struct._CXXToken* null, %struct._CXXToken** %retval, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then3, %if.then
  %10 = load %struct._CXXToken*, %struct._CXXToken** %retval, align 8
  ret %struct._CXXToken* %10
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct._CXXToken* @cxxTokenChainLastPossiblyNestedTokenOfType(%struct._CXXTokenChain* %tc, i32 %uTokenTypes, %struct._CXXTokenChain** %ppParentChain) #0 {
entry:
  %retval = alloca %struct._CXXToken*, align 8
  %tc.addr = alloca %struct._CXXTokenChain*, align 8
  %uTokenTypes.addr = alloca i32, align 4
  %ppParentChain.addr = alloca %struct._CXXTokenChain**, align 8
  %t = alloca %struct._CXXToken*, align 8
  %tmp = alloca %struct._CXXToken*, align 8
  store %struct._CXXTokenChain* %tc, %struct._CXXTokenChain** %tc.addr, align 8
  store i32 %uTokenTypes, i32* %uTokenTypes.addr, align 4
  store %struct._CXXTokenChain** %ppParentChain, %struct._CXXTokenChain*** %ppParentChain.addr, align 8
  %0 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %tc.addr, align 8
  %tobool = icmp ne %struct._CXXTokenChain* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._CXXToken* null, %struct._CXXToken** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %tc.addr, align 8
  %pTail = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %1, i32 0, i32 1
  %2 = load %struct._CXXToken*, %struct._CXXToken** %pTail, align 8
  store %struct._CXXToken* %2, %struct._CXXToken** %t, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end13, %if.end
  %3 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %tobool1 = icmp ne %struct._CXXToken* %3, null
  br i1 %tobool1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %eType = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %4, i32 0, i32 0
  %5 = load i32, i32* %eType, align 8
  %6 = load i32, i32* %uTokenTypes.addr, align 4
  %and = and i32 %5, %6
  %tobool2 = icmp ne i32 %and, 0
  br i1 %tobool2, label %if.then3, label %if.end7

if.then3:                                         ; preds = %while.body
  %7 = load %struct._CXXTokenChain**, %struct._CXXTokenChain*** %ppParentChain.addr, align 8
  %tobool4 = icmp ne %struct._CXXTokenChain** %7, null
  br i1 %tobool4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.then3
  %8 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %tc.addr, align 8
  %9 = load %struct._CXXTokenChain**, %struct._CXXTokenChain*** %ppParentChain.addr, align 8
  store %struct._CXXTokenChain* %8, %struct._CXXTokenChain** %9, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.then3
  %10 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  store %struct._CXXToken* %10, %struct._CXXToken** %retval, align 8
  br label %return

if.end7:                                          ; preds = %while.body
  %11 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %eType8 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %11, i32 0, i32 0
  %12 = load i32, i32* %eType8, align 8
  %cmp = icmp eq i32 %12, 268435456
  br i1 %cmp, label %if.then9, label %if.end13

if.then9:                                         ; preds = %if.end7
  %13 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pChain = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %13, i32 0, i32 3
  %14 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain, align 8
  %15 = load i32, i32* %uTokenTypes.addr, align 4
  %16 = load %struct._CXXTokenChain**, %struct._CXXTokenChain*** %ppParentChain.addr, align 8
  %call = call %struct._CXXToken* @cxxTokenChainLastPossiblyNestedTokenOfType(%struct._CXXTokenChain* %14, i32 %15, %struct._CXXTokenChain** %16)
  store %struct._CXXToken* %call, %struct._CXXToken** %tmp, align 8
  %17 = load %struct._CXXToken*, %struct._CXXToken** %tmp, align 8
  %tobool10 = icmp ne %struct._CXXToken* %17, null
  br i1 %tobool10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.then9
  %18 = load %struct._CXXToken*, %struct._CXXToken** %tmp, align 8
  store %struct._CXXToken* %18, %struct._CXXToken** %retval, align 8
  br label %return

if.end12:                                         ; preds = %if.then9
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.end7
  %19 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pPrev = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %19, i32 0, i32 8
  %20 = load %struct._CXXToken*, %struct._CXXToken** %pPrev, align 8
  store %struct._CXXToken* %20, %struct._CXXToken** %t, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store %struct._CXXToken* null, %struct._CXXToken** %retval, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then11, %if.end6, %if.then
  %21 = load %struct._CXXToken*, %struct._CXXToken** %retval, align 8
  ret %struct._CXXToken* %21
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct._CXXToken* @cxxTokenChainFirstPossiblyNestedTokenOfType(%struct._CXXTokenChain* %tc, i32 %uTokenTypes, %struct._CXXTokenChain** %ppParentChain) #0 {
entry:
  %retval = alloca %struct._CXXToken*, align 8
  %tc.addr = alloca %struct._CXXTokenChain*, align 8
  %uTokenTypes.addr = alloca i32, align 4
  %ppParentChain.addr = alloca %struct._CXXTokenChain**, align 8
  %t = alloca %struct._CXXToken*, align 8
  %tmp = alloca %struct._CXXToken*, align 8
  store %struct._CXXTokenChain* %tc, %struct._CXXTokenChain** %tc.addr, align 8
  store i32 %uTokenTypes, i32* %uTokenTypes.addr, align 4
  store %struct._CXXTokenChain** %ppParentChain, %struct._CXXTokenChain*** %ppParentChain.addr, align 8
  %0 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %tc.addr, align 8
  %tobool = icmp ne %struct._CXXTokenChain* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._CXXToken* null, %struct._CXXToken** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %tc.addr, align 8
  %pHead = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %1, i32 0, i32 0
  %2 = load %struct._CXXToken*, %struct._CXXToken** %pHead, align 8
  store %struct._CXXToken* %2, %struct._CXXToken** %t, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end13, %if.end
  %3 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %tobool1 = icmp ne %struct._CXXToken* %3, null
  br i1 %tobool1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %eType = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %4, i32 0, i32 0
  %5 = load i32, i32* %eType, align 8
  %6 = load i32, i32* %uTokenTypes.addr, align 4
  %and = and i32 %5, %6
  %tobool2 = icmp ne i32 %and, 0
  br i1 %tobool2, label %if.then3, label %if.end7

if.then3:                                         ; preds = %while.body
  %7 = load %struct._CXXTokenChain**, %struct._CXXTokenChain*** %ppParentChain.addr, align 8
  %tobool4 = icmp ne %struct._CXXTokenChain** %7, null
  br i1 %tobool4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.then3
  %8 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %tc.addr, align 8
  %9 = load %struct._CXXTokenChain**, %struct._CXXTokenChain*** %ppParentChain.addr, align 8
  store %struct._CXXTokenChain* %8, %struct._CXXTokenChain** %9, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.then3
  %10 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  store %struct._CXXToken* %10, %struct._CXXToken** %retval, align 8
  br label %return

if.end7:                                          ; preds = %while.body
  %11 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %eType8 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %11, i32 0, i32 0
  %12 = load i32, i32* %eType8, align 8
  %cmp = icmp eq i32 %12, 268435456
  br i1 %cmp, label %if.then9, label %if.end13

if.then9:                                         ; preds = %if.end7
  %13 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pChain = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %13, i32 0, i32 3
  %14 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain, align 8
  %15 = load i32, i32* %uTokenTypes.addr, align 4
  %16 = load %struct._CXXTokenChain**, %struct._CXXTokenChain*** %ppParentChain.addr, align 8
  %call = call %struct._CXXToken* @cxxTokenChainFirstPossiblyNestedTokenOfType(%struct._CXXTokenChain* %14, i32 %15, %struct._CXXTokenChain** %16)
  store %struct._CXXToken* %call, %struct._CXXToken** %tmp, align 8
  %17 = load %struct._CXXToken*, %struct._CXXToken** %tmp, align 8
  %tobool10 = icmp ne %struct._CXXToken* %17, null
  br i1 %tobool10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.then9
  %18 = load %struct._CXXToken*, %struct._CXXToken** %tmp, align 8
  store %struct._CXXToken* %18, %struct._CXXToken** %retval, align 8
  br label %return

if.end12:                                         ; preds = %if.then9
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.end7
  %19 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pNext = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %19, i32 0, i32 7
  %20 = load %struct._CXXToken*, %struct._CXXToken** %pNext, align 8
  store %struct._CXXToken* %20, %struct._CXXToken** %t, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store %struct._CXXToken* null, %struct._CXXToken** %retval, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then11, %if.end6, %if.then
  %21 = load %struct._CXXToken*, %struct._CXXToken** %retval, align 8
  ret %struct._CXXToken* %21
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct._CXXToken* @cxxTokenChainFirstTokenNotOfType(%struct._CXXTokenChain* %tc, i32 %uTokenTypes) #0 {
entry:
  %retval = alloca %struct._CXXToken*, align 8
  %tc.addr = alloca %struct._CXXTokenChain*, align 8
  %uTokenTypes.addr = alloca i32, align 4
  %t = alloca %struct._CXXToken*, align 8
  store %struct._CXXTokenChain* %tc, %struct._CXXTokenChain** %tc.addr, align 8
  store i32 %uTokenTypes, i32* %uTokenTypes.addr, align 4
  %0 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %tc.addr, align 8
  %tobool = icmp ne %struct._CXXTokenChain* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._CXXToken* null, %struct._CXXToken** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %tc.addr, align 8
  %pHead = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %1, i32 0, i32 0
  %2 = load %struct._CXXToken*, %struct._CXXToken** %pHead, align 8
  store %struct._CXXToken* %2, %struct._CXXToken** %t, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end4, %if.end
  %3 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %tobool1 = icmp ne %struct._CXXToken* %3, null
  br i1 %tobool1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %eType = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %4, i32 0, i32 0
  %5 = load i32, i32* %eType, align 8
  %6 = load i32, i32* %uTokenTypes.addr, align 4
  %and = and i32 %5, %6
  %tobool2 = icmp ne i32 %and, 0
  br i1 %tobool2, label %if.end4, label %if.then3

if.then3:                                         ; preds = %while.body
  %7 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  store %struct._CXXToken* %7, %struct._CXXToken** %retval, align 8
  br label %return

if.end4:                                          ; preds = %while.body
  %8 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pNext = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %8, i32 0, i32 7
  %9 = load %struct._CXXToken*, %struct._CXXToken** %pNext, align 8
  store %struct._CXXToken* %9, %struct._CXXToken** %t, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store %struct._CXXToken* null, %struct._CXXToken** %retval, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then3, %if.then
  %10 = load %struct._CXXToken*, %struct._CXXToken** %retval, align 8
  ret %struct._CXXToken* %10
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct._CXXToken* @cxxTokenChainNextTokenNotOfGeneric(%struct._CXXToken* %t, i1 (%struct._CXXToken*, i8*)* %predicator, i8* %data) #0 {
entry:
  %retval = alloca %struct._CXXToken*, align 8
  %t.addr = alloca %struct._CXXToken*, align 8
  %predicator.addr = alloca i1 (%struct._CXXToken*, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._CXXToken* %t, %struct._CXXToken** %t.addr, align 8
  store i1 (%struct._CXXToken*, i8*)* %predicator, i1 (%struct._CXXToken*, i8*)** %predicator.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._CXXToken*, %struct._CXXToken** %t.addr, align 8
  %tobool = icmp ne %struct._CXXToken* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._CXXToken* null, %struct._CXXToken** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._CXXToken*, %struct._CXXToken** %t.addr, align 8
  %pNext = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %1, i32 0, i32 7
  %2 = load %struct._CXXToken*, %struct._CXXToken** %pNext, align 8
  store %struct._CXXToken* %2, %struct._CXXToken** %t.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end3, %if.end
  %3 = load %struct._CXXToken*, %struct._CXXToken** %t.addr, align 8
  %tobool1 = icmp ne %struct._CXXToken* %3, null
  br i1 %tobool1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i1 (%struct._CXXToken*, i8*)*, i1 (%struct._CXXToken*, i8*)** %predicator.addr, align 8
  %5 = load %struct._CXXToken*, %struct._CXXToken** %t.addr, align 8
  %6 = load i8*, i8** %data.addr, align 8
  %call = call zeroext i1 %4(%struct._CXXToken* %5, i8* %6)
  br i1 %call, label %if.end3, label %if.then2

if.then2:                                         ; preds = %while.body
  %7 = load %struct._CXXToken*, %struct._CXXToken** %t.addr, align 8
  store %struct._CXXToken* %7, %struct._CXXToken** %retval, align 8
  br label %return

if.end3:                                          ; preds = %while.body
  %8 = load %struct._CXXToken*, %struct._CXXToken** %t.addr, align 8
  %pNext4 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %8, i32 0, i32 7
  %9 = load %struct._CXXToken*, %struct._CXXToken** %pNext4, align 8
  store %struct._CXXToken* %9, %struct._CXXToken** %t.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store %struct._CXXToken* null, %struct._CXXToken** %retval, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then2, %if.then
  %10 = load %struct._CXXToken*, %struct._CXXToken** %retval, align 8
  ret %struct._CXXToken* %10
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct._CXXToken* @cxxTokenChainNextTokenNotOfType(%struct._CXXToken* %t, i32 %uTokenTypes) #0 {
entry:
  %retval = alloca %struct._CXXToken*, align 8
  %t.addr = alloca %struct._CXXToken*, align 8
  %uTokenTypes.addr = alloca i32, align 4
  store %struct._CXXToken* %t, %struct._CXXToken** %t.addr, align 8
  store i32 %uTokenTypes, i32* %uTokenTypes.addr, align 4
  %0 = load %struct._CXXToken*, %struct._CXXToken** %t.addr, align 8
  %tobool = icmp ne %struct._CXXToken* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._CXXToken* null, %struct._CXXToken** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._CXXToken*, %struct._CXXToken** %t.addr, align 8
  %pNext = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %1, i32 0, i32 7
  %2 = load %struct._CXXToken*, %struct._CXXToken** %pNext, align 8
  store %struct._CXXToken* %2, %struct._CXXToken** %t.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end4, %if.end
  %3 = load %struct._CXXToken*, %struct._CXXToken** %t.addr, align 8
  %tobool1 = icmp ne %struct._CXXToken* %3, null
  br i1 %tobool1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct._CXXToken*, %struct._CXXToken** %t.addr, align 8
  %eType = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %4, i32 0, i32 0
  %5 = load i32, i32* %eType, align 8
  %6 = load i32, i32* %uTokenTypes.addr, align 4
  %and = and i32 %5, %6
  %tobool2 = icmp ne i32 %and, 0
  br i1 %tobool2, label %if.end4, label %if.then3

if.then3:                                         ; preds = %while.body
  %7 = load %struct._CXXToken*, %struct._CXXToken** %t.addr, align 8
  store %struct._CXXToken* %7, %struct._CXXToken** %retval, align 8
  br label %return

if.end4:                                          ; preds = %while.body
  %8 = load %struct._CXXToken*, %struct._CXXToken** %t.addr, align 8
  %pNext5 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %8, i32 0, i32 7
  %9 = load %struct._CXXToken*, %struct._CXXToken** %pNext5, align 8
  store %struct._CXXToken* %9, %struct._CXXToken** %t.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store %struct._CXXToken* null, %struct._CXXToken** %retval, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then3, %if.then
  %10 = load %struct._CXXToken*, %struct._CXXToken** %retval, align 8
  ret %struct._CXXToken* %10
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct._CXXToken* @cxxTokenChainLastTokenNotOfType(%struct._CXXTokenChain* %tc, i32 %uTokenTypes) #0 {
entry:
  %retval = alloca %struct._CXXToken*, align 8
  %tc.addr = alloca %struct._CXXTokenChain*, align 8
  %uTokenTypes.addr = alloca i32, align 4
  %t = alloca %struct._CXXToken*, align 8
  store %struct._CXXTokenChain* %tc, %struct._CXXTokenChain** %tc.addr, align 8
  store i32 %uTokenTypes, i32* %uTokenTypes.addr, align 4
  %0 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %tc.addr, align 8
  %tobool = icmp ne %struct._CXXTokenChain* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._CXXToken* null, %struct._CXXToken** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %tc.addr, align 8
  %pTail = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %1, i32 0, i32 1
  %2 = load %struct._CXXToken*, %struct._CXXToken** %pTail, align 8
  store %struct._CXXToken* %2, %struct._CXXToken** %t, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end4, %if.end
  %3 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %tobool1 = icmp ne %struct._CXXToken* %3, null
  br i1 %tobool1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %eType = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %4, i32 0, i32 0
  %5 = load i32, i32* %eType, align 8
  %6 = load i32, i32* %uTokenTypes.addr, align 4
  %and = and i32 %5, %6
  %tobool2 = icmp ne i32 %and, 0
  br i1 %tobool2, label %if.end4, label %if.then3

if.then3:                                         ; preds = %while.body
  %7 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  store %struct._CXXToken* %7, %struct._CXXToken** %retval, align 8
  br label %return

if.end4:                                          ; preds = %while.body
  %8 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pPrev = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %8, i32 0, i32 8
  %9 = load %struct._CXXToken*, %struct._CXXToken** %pPrev, align 8
  store %struct._CXXToken* %9, %struct._CXXToken** %t, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store %struct._CXXToken* null, %struct._CXXToken** %retval, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then3, %if.then
  %10 = load %struct._CXXToken*, %struct._CXXToken** %retval, align 8
  ret %struct._CXXToken* %10
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @cxxTokenChainFindToken(%struct._CXXTokenChain* %tc, %struct._CXXToken* %t) #0 {
entry:
  %retval = alloca i32, align 4
  %tc.addr = alloca %struct._CXXTokenChain*, align 8
  %t.addr = alloca %struct._CXXToken*, align 8
  %pToken = alloca %struct._CXXToken*, align 8
  %idx = alloca i32, align 4
  store %struct._CXXTokenChain* %tc, %struct._CXXTokenChain** %tc.addr, align 8
  store %struct._CXXToken* %t, %struct._CXXToken** %t.addr, align 8
  %0 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %tc.addr, align 8
  %tobool = icmp ne %struct._CXXTokenChain* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %tc.addr, align 8
  %iCount = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %1, i32 0, i32 2
  %2 = load i32, i32* %iCount, align 8
  %cmp = icmp slt i32 %2, 1
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  store i32 -1, i32* %retval, align 4
  br label %return

if.end2:                                          ; preds = %if.end
  %3 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %tc.addr, align 8
  %pHead = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %3, i32 0, i32 0
  %4 = load %struct._CXXToken*, %struct._CXXToken** %pHead, align 8
  store %struct._CXXToken* %4, %struct._CXXToken** %pToken, align 8
  store i32 0, i32* %idx, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end6, %if.end2
  %5 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %tobool3 = icmp ne %struct._CXXToken* %5, null
  br i1 %tobool3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %7 = load %struct._CXXToken*, %struct._CXXToken** %t.addr, align 8
  %cmp4 = icmp eq %struct._CXXToken* %6, %7
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %while.body
  %8 = load i32, i32* %idx, align 4
  store i32 %8, i32* %retval, align 4
  br label %return

if.end6:                                          ; preds = %while.body
  %9 = load i32, i32* %idx, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %idx, align 4
  %10 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %pNext = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %10, i32 0, i32 7
  %11 = load %struct._CXXToken*, %struct._CXXToken** %pNext, align 8
  store %struct._CXXToken* %11, %struct._CXXToken** %pToken, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 -1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then5, %if.then1, %if.then
  %12 = load i32, i32* %retval, align 4
  ret i32 %12
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct._CXXToken* @cxxTokenChainPreviousKeyword(%struct._CXXToken* %from, i32 %eKeyword) #0 {
entry:
  %retval = alloca %struct._CXXToken*, align 8
  %from.addr = alloca %struct._CXXToken*, align 8
  %eKeyword.addr = alloca i32, align 4
  %t = alloca %struct._CXXToken*, align 8
  store %struct._CXXToken* %from, %struct._CXXToken** %from.addr, align 8
  store i32 %eKeyword, i32* %eKeyword.addr, align 4
  %0 = load %struct._CXXToken*, %struct._CXXToken** %from.addr, align 8
  %tobool = icmp ne %struct._CXXToken* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._CXXToken* null, %struct._CXXToken** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._CXXToken*, %struct._CXXToken** %from.addr, align 8
  %pPrev = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %1, i32 0, i32 8
  %2 = load %struct._CXXToken*, %struct._CXXToken** %pPrev, align 8
  store %struct._CXXToken* %2, %struct._CXXToken** %t, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end5, %if.end
  %3 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %tobool1 = icmp ne %struct._CXXToken* %3, null
  br i1 %tobool1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %eType = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %4, i32 0, i32 0
  %5 = load i32, i32* %eType, align 8
  %cmp = icmp eq i32 %5, 4
  br i1 %cmp, label %land.lhs.true, label %if.end5

land.lhs.true:                                    ; preds = %while.body
  %6 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %eKeyword2 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %6, i32 0, i32 2
  %7 = load i32, i32* %eKeyword2, align 8
  %8 = load i32, i32* %eKeyword.addr, align 4
  %cmp3 = icmp eq i32 %7, %8
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %land.lhs.true
  %9 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  store %struct._CXXToken* %9, %struct._CXXToken** %retval, align 8
  br label %return

if.end5:                                          ; preds = %land.lhs.true, %while.body
  %10 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pPrev6 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %10, i32 0, i32 8
  %11 = load %struct._CXXToken*, %struct._CXXToken** %pPrev6, align 8
  store %struct._CXXToken* %11, %struct._CXXToken** %t, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store %struct._CXXToken* null, %struct._CXXToken** %retval, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then4, %if.then
  %12 = load %struct._CXXToken*, %struct._CXXToken** %retval, align 8
  ret %struct._CXXToken* %12
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct._CXXToken* @cxxTokenChainNextKeyword(%struct._CXXToken* %from, i32 %eKeyword) #0 {
entry:
  %retval = alloca %struct._CXXToken*, align 8
  %from.addr = alloca %struct._CXXToken*, align 8
  %eKeyword.addr = alloca i32, align 4
  %t = alloca %struct._CXXToken*, align 8
  store %struct._CXXToken* %from, %struct._CXXToken** %from.addr, align 8
  store i32 %eKeyword, i32* %eKeyword.addr, align 4
  %0 = load %struct._CXXToken*, %struct._CXXToken** %from.addr, align 8
  %tobool = icmp ne %struct._CXXToken* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._CXXToken* null, %struct._CXXToken** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._CXXToken*, %struct._CXXToken** %from.addr, align 8
  %pNext = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %1, i32 0, i32 7
  %2 = load %struct._CXXToken*, %struct._CXXToken** %pNext, align 8
  store %struct._CXXToken* %2, %struct._CXXToken** %t, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end5, %if.end
  %3 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %tobool1 = icmp ne %struct._CXXToken* %3, null
  br i1 %tobool1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %eType = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %4, i32 0, i32 0
  %5 = load i32, i32* %eType, align 8
  %cmp = icmp eq i32 %5, 4
  br i1 %cmp, label %land.lhs.true, label %if.end5

land.lhs.true:                                    ; preds = %while.body
  %6 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %eKeyword2 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %6, i32 0, i32 2
  %7 = load i32, i32* %eKeyword2, align 8
  %8 = load i32, i32* %eKeyword.addr, align 4
  %cmp3 = icmp eq i32 %7, %8
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %land.lhs.true
  %9 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  store %struct._CXXToken* %9, %struct._CXXToken** %retval, align 8
  br label %return

if.end5:                                          ; preds = %land.lhs.true, %while.body
  %10 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pNext6 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %10, i32 0, i32 7
  %11 = load %struct._CXXToken*, %struct._CXXToken** %pNext6, align 8
  store %struct._CXXToken* %11, %struct._CXXToken** %t, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store %struct._CXXToken* null, %struct._CXXToken** %retval, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then4, %if.then
  %12 = load %struct._CXXToken*, %struct._CXXToken** %retval, align 8
  ret %struct._CXXToken* %12
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @cxxTokenChainFirstKeywordIndex(%struct._CXXTokenChain* %tc, i32 %eKeyword) #0 {
entry:
  %retval = alloca i32, align 4
  %tc.addr = alloca %struct._CXXTokenChain*, align 8
  %eKeyword.addr = alloca i32, align 4
  %pToken = alloca %struct._CXXToken*, align 8
  %idx = alloca i32, align 4
  store %struct._CXXTokenChain* %tc, %struct._CXXTokenChain** %tc.addr, align 8
  store i32 %eKeyword, i32* %eKeyword.addr, align 4
  %0 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %tc.addr, align 8
  %tobool = icmp ne %struct._CXXTokenChain* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %tc.addr, align 8
  %iCount = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %1, i32 0, i32 2
  %2 = load i32, i32* %iCount, align 8
  %cmp = icmp slt i32 %2, 1
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  store i32 -1, i32* %retval, align 4
  br label %return

if.end2:                                          ; preds = %if.end
  %3 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %tc.addr, align 8
  %pHead = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %3, i32 0, i32 0
  %4 = load %struct._CXXToken*, %struct._CXXToken** %pHead, align 8
  store %struct._CXXToken* %4, %struct._CXXToken** %pToken, align 8
  store i32 0, i32* %idx, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end8, %if.end2
  %5 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %tobool3 = icmp ne %struct._CXXToken* %5, null
  br i1 %tobool3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %eType = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %6, i32 0, i32 0
  %7 = load i32, i32* %eType, align 8
  %cmp4 = icmp eq i32 %7, 4
  br i1 %cmp4, label %land.lhs.true, label %if.end8

land.lhs.true:                                    ; preds = %while.body
  %8 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %eKeyword5 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %8, i32 0, i32 2
  %9 = load i32, i32* %eKeyword5, align 8
  %10 = load i32, i32* %eKeyword.addr, align 4
  %cmp6 = icmp eq i32 %9, %10
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %land.lhs.true
  %11 = load i32, i32* %idx, align 4
  store i32 %11, i32* %retval, align 4
  br label %return

if.end8:                                          ; preds = %land.lhs.true, %while.body
  %12 = load i32, i32* %idx, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %idx, align 4
  %13 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %pNext = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %13, i32 0, i32 7
  %14 = load %struct._CXXToken*, %struct._CXXToken** %pNext, align 8
  store %struct._CXXToken* %14, %struct._CXXToken** %pToken, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 -1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then7, %if.then1, %if.then
  %15 = load i32, i32* %retval, align 4
  ret i32 %15
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct._CXXToken* @cxxTokenChainNextIdentifier(%struct._CXXToken* %from, i8* %szIdentifier) #0 {
entry:
  %retval = alloca %struct._CXXToken*, align 8
  %from.addr = alloca %struct._CXXToken*, align 8
  %szIdentifier.addr = alloca i8*, align 8
  %t = alloca %struct._CXXToken*, align 8
  store %struct._CXXToken* %from, %struct._CXXToken** %from.addr, align 8
  store i8* %szIdentifier, i8** %szIdentifier.addr, align 8
  %0 = load %struct._CXXToken*, %struct._CXXToken** %from.addr, align 8
  %tobool = icmp ne %struct._CXXToken* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._CXXToken* null, %struct._CXXToken** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._CXXToken*, %struct._CXXToken** %from.addr, align 8
  %pNext = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %1, i32 0, i32 7
  %2 = load %struct._CXXToken*, %struct._CXXToken** %pNext, align 8
  store %struct._CXXToken* %2, %struct._CXXToken** %t, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end4, %if.end
  %3 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %tobool1 = icmp ne %struct._CXXToken* %3, null
  br i1 %tobool1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %eType = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %4, i32 0, i32 0
  %5 = load i32, i32* %eType, align 8
  %cmp = icmp eq i32 %5, 2
  br i1 %cmp, label %land.lhs.true, label %if.end4

land.lhs.true:                                    ; preds = %while.body
  %6 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pszWord = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %6, i32 0, i32 1
  %7 = load %struct.sVString*, %struct.sVString** %pszWord, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %7, i32 0, i32 2
  %8 = load i8*, i8** %buffer, align 8
  %9 = load i8*, i8** %szIdentifier.addr, align 8
  %call = call i32 @strcmp(i8* %8, i8* %9)
  %cmp2 = icmp eq i32 %call, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %land.lhs.true
  %10 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  store %struct._CXXToken* %10, %struct._CXXToken** %retval, align 8
  br label %return

if.end4:                                          ; preds = %land.lhs.true, %while.body
  %11 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pNext5 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %11, i32 0, i32 7
  %12 = load %struct._CXXToken*, %struct._CXXToken** %pNext5, align 8
  store %struct._CXXToken* %12, %struct._CXXToken** %t, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store %struct._CXXToken* null, %struct._CXXToken** %retval, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then3, %if.then
  %13 = load %struct._CXXToken*, %struct._CXXToken** %retval, align 8
  ret %struct._CXXToken* %13
}

declare i32 @strcmp(i8*, i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @cxxTokenChainDestroyRange(%struct._CXXTokenChain* %pChain, %struct._CXXToken* %from, %struct._CXXToken* %to) #0 {
entry:
  %pChain.addr = alloca %struct._CXXTokenChain*, align 8
  %from.addr = alloca %struct._CXXToken*, align 8
  %to.addr = alloca %struct._CXXToken*, align 8
  %next = alloca %struct._CXXToken*, align 8
  store %struct._CXXTokenChain* %pChain, %struct._CXXTokenChain** %pChain.addr, align 8
  store %struct._CXXToken* %from, %struct._CXXToken** %from.addr, align 8
  store %struct._CXXToken* %to, %struct._CXXToken** %to.addr, align 8
  %0 = load %struct._CXXToken*, %struct._CXXToken** %from.addr, align 8
  %tobool = icmp ne %struct._CXXToken* %0, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct._CXXToken*, %struct._CXXToken** %to.addr, align 8
  %tobool1 = icmp ne %struct._CXXToken* %1, null
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  br label %do.body

do.body:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body2

do.body2:                                         ; preds = %do.end
  br label %do.end3

do.end3:                                          ; preds = %do.body2
  br label %for.cond

for.cond:                                         ; preds = %do.end7, %do.end3
  %2 = load %struct._CXXToken*, %struct._CXXToken** %from.addr, align 8
  %pNext = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %2, i32 0, i32 7
  %3 = load %struct._CXXToken*, %struct._CXXToken** %pNext, align 8
  store %struct._CXXToken* %3, %struct._CXXToken** %next, align 8
  %4 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain.addr, align 8
  %5 = load %struct._CXXToken*, %struct._CXXToken** %from.addr, align 8
  call void @cxxTokenChainTake(%struct._CXXTokenChain* %4, %struct._CXXToken* %5)
  %6 = load %struct._CXXToken*, %struct._CXXToken** %from.addr, align 8
  call void @cxxTokenDestroy(%struct._CXXToken* %6)
  %7 = load %struct._CXXToken*, %struct._CXXToken** %from.addr, align 8
  %8 = load %struct._CXXToken*, %struct._CXXToken** %to.addr, align 8
  %cmp = icmp eq %struct._CXXToken* %7, %8
  br i1 %cmp, label %if.then4, label %if.end5

if.then4:                                         ; preds = %for.cond
  br label %return

if.end5:                                          ; preds = %for.cond
  %9 = load %struct._CXXToken*, %struct._CXXToken** %next, align 8
  store %struct._CXXToken* %9, %struct._CXXToken** %from.addr, align 8
  br label %do.body6

do.body6:                                         ; preds = %if.end5
  br label %do.end7

do.end7:                                          ; preds = %do.body6
  br label %for.cond

return:                                           ; preds = %if.then4, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct._CXXToken* @cxxTokenChainExtractRangeFilterTypeName(%struct._CXXToken* %from, %struct._CXXToken* %to) #0 {
entry:
  %retval = alloca %struct._CXXToken*, align 8
  %from.addr = alloca %struct._CXXToken*, align 8
  %to.addr = alloca %struct._CXXToken*, align 8
  %pToken = alloca %struct._CXXToken*, align 8
  %pRet = alloca %struct._CXXToken*, align 8
  store %struct._CXXToken* %from, %struct._CXXToken** %from.addr, align 8
  store %struct._CXXToken* %to, %struct._CXXToken** %to.addr, align 8
  %0 = load %struct._CXXToken*, %struct._CXXToken** %from.addr, align 8
  %tobool = icmp ne %struct._CXXToken* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._CXXToken* null, %struct._CXXToken** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._CXXToken*, %struct._CXXToken** %from.addr, align 8
  store %struct._CXXToken* %1, %struct._CXXToken** %pToken, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end10, %if.end
  %2 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %eType = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %2, i32 0, i32 0
  %3 = load i32, i32* %eType, align 8
  %cmp = icmp eq i32 %3, 4
  br i1 %cmp, label %if.end2, label %if.then1

if.then1:                                         ; preds = %for.cond
  br label %for.end

if.end2:                                          ; preds = %for.cond
  %4 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %eKeyword = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %4, i32 0, i32 2
  %5 = load i32, i32* %eKeyword, align 8
  %call = call zeroext i1 @cxxKeywordExcludeFromTypeNames(i32 %5)
  br i1 %call, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end2
  br label %for.end

if.end4:                                          ; preds = %if.end2
  %6 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %7 = load %struct._CXXToken*, %struct._CXXToken** %to.addr, align 8
  %cmp5 = icmp eq %struct._CXXToken* %6, %7
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end4
  store %struct._CXXToken* null, %struct._CXXToken** %retval, align 8
  br label %return

if.end7:                                          ; preds = %if.end4
  %8 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %pNext = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %8, i32 0, i32 7
  %9 = load %struct._CXXToken*, %struct._CXXToken** %pNext, align 8
  store %struct._CXXToken* %9, %struct._CXXToken** %pToken, align 8
  %10 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %tobool8 = icmp ne %struct._CXXToken* %10, null
  br i1 %tobool8, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.end7
  store %struct._CXXToken* null, %struct._CXXToken** %retval, align 8
  br label %return

if.end10:                                         ; preds = %if.end7
  br label %for.cond

for.end:                                          ; preds = %if.then3, %if.then1
  %call11 = call %struct._CXXToken* @cxxTokenCreate()
  store %struct._CXXToken* %call11, %struct._CXXToken** %pRet, align 8
  %11 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %iLineNumber = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %11, i32 0, i32 5
  %12 = load i32, i32* %iLineNumber, align 4
  %13 = load %struct._CXXToken*, %struct._CXXToken** %pRet, align 8
  %iLineNumber12 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %13, i32 0, i32 5
  store i32 %12, i32* %iLineNumber12, align 4
  %14 = load %struct._CXXToken*, %struct._CXXToken** %pRet, align 8
  %oFilePosition = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %14, i32 0, i32 6
  %15 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %oFilePosition13 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %15, i32 0, i32 6
  %16 = bitcast %struct._MIOPos* %oFilePosition to i8*
  %17 = bitcast %struct._MIOPos* %oFilePosition13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 16, i1 false)
  %18 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %eType14 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %18, i32 0, i32 0
  %19 = load i32, i32* %eType14, align 8
  %20 = load %struct._CXXToken*, %struct._CXXToken** %pRet, align 8
  %eType15 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %20, i32 0, i32 0
  store i32 %19, i32* %eType15, align 8
  %21 = load %struct._CXXToken*, %struct._CXXToken** %pRet, align 8
  %pszWord = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %21, i32 0, i32 1
  %22 = load %struct.sVString*, %struct.sVString** %pszWord, align 8
  %23 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  call void @cxxTokenAppendToString(%struct.sVString* %22, %struct._CXXToken* %23)
  %24 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %bFollowedBySpace = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %24, i32 0, i32 4
  %25 = load i8, i8* %bFollowedBySpace, align 8
  %tobool16 = trunc i8 %25 to i1
  br i1 %tobool16, label %if.then17, label %if.end19

if.then17:                                        ; preds = %for.end
  %26 = load %struct._CXXToken*, %struct._CXXToken** %pRet, align 8
  %pszWord18 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %26, i32 0, i32 1
  %27 = load %struct.sVString*, %struct.sVString** %pszWord18, align 8
  call void @vStringPut(%struct.sVString* %27, i32 32)
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %for.end
  %28 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %bFollowedBySpace20 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %28, i32 0, i32 4
  %29 = load i8, i8* %bFollowedBySpace20, align 8
  %tobool21 = trunc i8 %29 to i1
  %30 = load %struct._CXXToken*, %struct._CXXToken** %pRet, align 8
  %bFollowedBySpace22 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %30, i32 0, i32 4
  %frombool = zext i1 %tobool21 to i8
  store i8 %frombool, i8* %bFollowedBySpace22, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end50, %if.end19
  %31 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %32 = load %struct._CXXToken*, %struct._CXXToken** %to.addr, align 8
  %cmp23 = icmp ne %struct._CXXToken* %31, %32
  br i1 %cmp23, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %33 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %pNext24 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %33, i32 0, i32 7
  %34 = load %struct._CXXToken*, %struct._CXXToken** %pNext24, align 8
  store %struct._CXXToken* %34, %struct._CXXToken** %pToken, align 8
  %35 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %tobool25 = icmp ne %struct._CXXToken* %35, null
  br i1 %tobool25, label %if.end27, label %if.then26

if.then26:                                        ; preds = %while.body
  %36 = load %struct._CXXToken*, %struct._CXXToken** %pRet, align 8
  store %struct._CXXToken* %36, %struct._CXXToken** %retval, align 8
  br label %return

if.end27:                                         ; preds = %while.body
  br label %for.cond28

for.cond28:                                       ; preds = %if.end43, %if.end27
  %37 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %eType29 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %37, i32 0, i32 0
  %38 = load i32, i32* %eType29, align 8
  %cmp30 = icmp eq i32 %38, 4
  br i1 %cmp30, label %if.end32, label %if.then31

if.then31:                                        ; preds = %for.cond28
  br label %for.end44

if.end32:                                         ; preds = %for.cond28
  %39 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %eKeyword33 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %39, i32 0, i32 2
  %40 = load i32, i32* %eKeyword33, align 8
  %call34 = call zeroext i1 @cxxKeywordExcludeFromTypeNames(i32 %40)
  br i1 %call34, label %if.end36, label %if.then35

if.then35:                                        ; preds = %if.end32
  br label %for.end44

if.end36:                                         ; preds = %if.end32
  %41 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %42 = load %struct._CXXToken*, %struct._CXXToken** %to.addr, align 8
  %cmp37 = icmp eq %struct._CXXToken* %41, %42
  br i1 %cmp37, label %if.then38, label %if.end39

if.then38:                                        ; preds = %if.end36
  %43 = load %struct._CXXToken*, %struct._CXXToken** %pRet, align 8
  store %struct._CXXToken* %43, %struct._CXXToken** %retval, align 8
  br label %return

if.end39:                                         ; preds = %if.end36
  %44 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %pNext40 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %44, i32 0, i32 7
  %45 = load %struct._CXXToken*, %struct._CXXToken** %pNext40, align 8
  store %struct._CXXToken* %45, %struct._CXXToken** %pToken, align 8
  %46 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %tobool41 = icmp ne %struct._CXXToken* %46, null
  br i1 %tobool41, label %if.end43, label %if.then42

if.then42:                                        ; preds = %if.end39
  %47 = load %struct._CXXToken*, %struct._CXXToken** %pRet, align 8
  store %struct._CXXToken* %47, %struct._CXXToken** %retval, align 8
  br label %return

if.end43:                                         ; preds = %if.end39
  br label %for.cond28

for.end44:                                        ; preds = %if.then35, %if.then31
  %48 = load %struct._CXXToken*, %struct._CXXToken** %pRet, align 8
  %pszWord45 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %48, i32 0, i32 1
  %49 = load %struct.sVString*, %struct.sVString** %pszWord45, align 8
  %50 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  call void @cxxTokenAppendToString(%struct.sVString* %49, %struct._CXXToken* %50)
  %51 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %bFollowedBySpace46 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %51, i32 0, i32 4
  %52 = load i8, i8* %bFollowedBySpace46, align 8
  %tobool47 = trunc i8 %52 to i1
  br i1 %tobool47, label %if.then48, label %if.end50

if.then48:                                        ; preds = %for.end44
  %53 = load %struct._CXXToken*, %struct._CXXToken** %pRet, align 8
  %pszWord49 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %53, i32 0, i32 1
  %54 = load %struct.sVString*, %struct.sVString** %pszWord49, align 8
  call void @vStringPut(%struct.sVString* %54, i32 32)
  br label %if.end50

if.end50:                                         ; preds = %if.then48, %for.end44
  %55 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %bFollowedBySpace51 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %55, i32 0, i32 4
  %56 = load i8, i8* %bFollowedBySpace51, align 8
  %tobool52 = trunc i8 %56 to i1
  %57 = load %struct._CXXToken*, %struct._CXXToken** %pRet, align 8
  %bFollowedBySpace53 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %57, i32 0, i32 4
  %frombool54 = zext i1 %tobool52 to i8
  store i8 %frombool54, i8* %bFollowedBySpace53, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %58 = load %struct._CXXToken*, %struct._CXXToken** %pRet, align 8
  store %struct._CXXToken* %58, %struct._CXXToken** %retval, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then42, %if.then38, %if.then26, %if.then9, %if.then6, %if.then
  %59 = load %struct._CXXToken*, %struct._CXXToken** %retval, align 8
  ret %struct._CXXToken* %59
}

declare zeroext i1 @cxxKeywordExcludeFromTypeNames(i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct._CXXToken* @cxxTokenChainExtractIndexRange(%struct._CXXTokenChain* %tc, i32 %iFirstIndex, i32 %iLastIndex, i32 %uFlags) #0 {
entry:
  %retval = alloca %struct._CXXToken*, align 8
  %tc.addr = alloca %struct._CXXTokenChain*, align 8
  %iFirstIndex.addr = alloca i32, align 4
  %iLastIndex.addr = alloca i32, align 4
  %uFlags.addr = alloca i32, align 4
  %pToken = alloca %struct._CXXToken*, align 8
  %idx = alloca i32, align 4
  %pRet = alloca %struct._CXXToken*, align 8
  store %struct._CXXTokenChain* %tc, %struct._CXXTokenChain** %tc.addr, align 8
  store i32 %iFirstIndex, i32* %iFirstIndex.addr, align 4
  store i32 %iLastIndex, i32* %iLastIndex.addr, align 4
  store i32 %uFlags, i32* %uFlags.addr, align 4
  %0 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %tc.addr, align 8
  %tobool = icmp ne %struct._CXXTokenChain* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._CXXToken* null, %struct._CXXToken** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %iFirstIndex.addr, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  store %struct._CXXToken* null, %struct._CXXToken** %retval, align 8
  br label %return

if.end2:                                          ; preds = %if.end
  %2 = load i32, i32* %iFirstIndex.addr, align 4
  %3 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %tc.addr, align 8
  %iCount = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %3, i32 0, i32 2
  %4 = load i32, i32* %iCount, align 8
  %cmp3 = icmp sge i32 %2, %4
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end2
  store %struct._CXXToken* null, %struct._CXXToken** %retval, align 8
  br label %return

if.end5:                                          ; preds = %if.end2
  %5 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %tc.addr, align 8
  %pHead = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %5, i32 0, i32 0
  %6 = load %struct._CXXToken*, %struct._CXXToken** %pHead, align 8
  store %struct._CXXToken* %6, %struct._CXXToken** %pToken, align 8
  store i32 0, i32* %idx, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end5
  %7 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %tobool6 = icmp ne %struct._CXXToken* %7, null
  br i1 %tobool6, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %8 = load i32, i32* %idx, align 4
  %9 = load i32, i32* %iFirstIndex.addr, align 4
  %cmp7 = icmp slt i32 %8, %9
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %10 = phi i1 [ false, %while.cond ], [ %cmp7, %land.rhs ]
  br i1 %10, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %11 = load i32, i32* %idx, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %idx, align 4
  %12 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %pNext = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %12, i32 0, i32 7
  %13 = load %struct._CXXToken*, %struct._CXXToken** %pNext, align 8
  store %struct._CXXToken* %13, %struct._CXXToken** %pToken, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %14 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %tobool8 = icmp ne %struct._CXXToken* %14, null
  br i1 %tobool8, label %if.end10, label %if.then9

if.then9:                                         ; preds = %while.end
  store %struct._CXXToken* null, %struct._CXXToken** %retval, align 8
  br label %return

if.end10:                                         ; preds = %while.end
  %call = call %struct._CXXToken* @cxxTokenCreate()
  store %struct._CXXToken* %call, %struct._CXXToken** %pRet, align 8
  %15 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %iLineNumber = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %15, i32 0, i32 5
  %16 = load i32, i32* %iLineNumber, align 4
  %17 = load %struct._CXXToken*, %struct._CXXToken** %pRet, align 8
  %iLineNumber11 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %17, i32 0, i32 5
  store i32 %16, i32* %iLineNumber11, align 4
  %18 = load %struct._CXXToken*, %struct._CXXToken** %pRet, align 8
  %oFilePosition = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %18, i32 0, i32 6
  %19 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %oFilePosition12 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %19, i32 0, i32 6
  %20 = bitcast %struct._MIOPos* %oFilePosition to i8*
  %21 = bitcast %struct._MIOPos* %oFilePosition12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 %21, i64 16, i1 false)
  %22 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %eType = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %22, i32 0, i32 0
  %23 = load i32, i32* %eType, align 8
  %24 = load %struct._CXXToken*, %struct._CXXToken** %pRet, align 8
  %eType13 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %24, i32 0, i32 0
  store i32 %23, i32* %eType13, align 8
  %25 = load %struct._CXXToken*, %struct._CXXToken** %pRet, align 8
  %pszWord = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %25, i32 0, i32 1
  %26 = load %struct.sVString*, %struct.sVString** %pszWord, align 8
  %27 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  call void @cxxTokenAppendToString(%struct.sVString* %26, %struct._CXXToken* %27)
  %28 = load i32, i32* %uFlags.addr, align 4
  %and = and i32 %28, 1
  %tobool14 = icmp ne i32 %and, 0
  br i1 %tobool14, label %if.end18, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end10
  %29 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %bFollowedBySpace = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %29, i32 0, i32 4
  %30 = load i8, i8* %bFollowedBySpace, align 8
  %tobool15 = trunc i8 %30 to i1
  br i1 %tobool15, label %if.then16, label %if.end18

if.then16:                                        ; preds = %land.lhs.true
  %31 = load %struct._CXXToken*, %struct._CXXToken** %pRet, align 8
  %pszWord17 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %31, i32 0, i32 1
  %32 = load %struct.sVString*, %struct.sVString** %pszWord17, align 8
  call void @vStringPut(%struct.sVString* %32, i32 32)
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %land.lhs.true, %if.end10
  %33 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %bFollowedBySpace19 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %33, i32 0, i32 4
  %34 = load i8, i8* %bFollowedBySpace19, align 8
  %tobool20 = trunc i8 %34 to i1
  %35 = load %struct._CXXToken*, %struct._CXXToken** %pRet, align 8
  %bFollowedBySpace21 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %35, i32 0, i32 4
  %frombool = zext i1 %tobool20 to i8
  store i8 %frombool, i8* %bFollowedBySpace21, align 8
  br label %while.cond22

while.cond22:                                     ; preds = %if.end37, %if.end18
  %36 = load i32, i32* %idx, align 4
  %37 = load i32, i32* %iLastIndex.addr, align 4
  %cmp23 = icmp slt i32 %36, %37
  br i1 %cmp23, label %while.body24, label %while.end43

while.body24:                                     ; preds = %while.cond22
  %38 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %pNext25 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %38, i32 0, i32 7
  %39 = load %struct._CXXToken*, %struct._CXXToken** %pNext25, align 8
  store %struct._CXXToken* %39, %struct._CXXToken** %pToken, align 8
  %40 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %tobool26 = icmp ne %struct._CXXToken* %40, null
  br i1 %tobool26, label %if.end28, label %if.then27

if.then27:                                        ; preds = %while.body24
  %41 = load %struct._CXXToken*, %struct._CXXToken** %pRet, align 8
  store %struct._CXXToken* %41, %struct._CXXToken** %retval, align 8
  br label %return

if.end28:                                         ; preds = %while.body24
  %42 = load %struct._CXXToken*, %struct._CXXToken** %pRet, align 8
  %pszWord29 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %42, i32 0, i32 1
  %43 = load %struct.sVString*, %struct.sVString** %pszWord29, align 8
  %44 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  call void @cxxTokenAppendToString(%struct.sVString* %43, %struct._CXXToken* %44)
  %45 = load i32, i32* %uFlags.addr, align 4
  %and30 = and i32 %45, 1
  %tobool31 = icmp ne i32 %and30, 0
  br i1 %tobool31, label %if.end37, label %land.lhs.true32

land.lhs.true32:                                  ; preds = %if.end28
  %46 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %bFollowedBySpace33 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %46, i32 0, i32 4
  %47 = load i8, i8* %bFollowedBySpace33, align 8
  %tobool34 = trunc i8 %47 to i1
  br i1 %tobool34, label %if.then35, label %if.end37

if.then35:                                        ; preds = %land.lhs.true32
  %48 = load %struct._CXXToken*, %struct._CXXToken** %pRet, align 8
  %pszWord36 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %48, i32 0, i32 1
  %49 = load %struct.sVString*, %struct.sVString** %pszWord36, align 8
  call void @vStringPut(%struct.sVString* %49, i32 32)
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %land.lhs.true32, %if.end28
  %50 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %bFollowedBySpace38 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %50, i32 0, i32 4
  %51 = load i8, i8* %bFollowedBySpace38, align 8
  %tobool39 = trunc i8 %51 to i1
  %52 = load %struct._CXXToken*, %struct._CXXToken** %pRet, align 8
  %bFollowedBySpace40 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %52, i32 0, i32 4
  %frombool41 = zext i1 %tobool39 to i8
  store i8 %frombool41, i8* %bFollowedBySpace40, align 8
  %53 = load i32, i32* %idx, align 4
  %inc42 = add nsw i32 %53, 1
  store i32 %inc42, i32* %idx, align 4
  br label %while.cond22

while.end43:                                      ; preds = %while.cond22
  %54 = load %struct._CXXToken*, %struct._CXXToken** %pRet, align 8
  store %struct._CXXToken* %54, %struct._CXXToken** %retval, align 8
  br label %return

return:                                           ; preds = %while.end43, %if.then27, %if.then9, %if.then4, %if.then1, %if.then
  %55 = load %struct._CXXToken*, %struct._CXXToken** %retval, align 8
  ret %struct._CXXToken* %55
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @cxxTokenChainNormalizeTypeNameSpacing(%struct._CXXTokenChain* %pChain) #0 {
entry:
  %pChain.addr = alloca %struct._CXXTokenChain*, align 8
  store %struct._CXXTokenChain* %pChain, %struct._CXXTokenChain** %pChain.addr, align 8
  %0 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain.addr, align 8
  %tobool = icmp ne %struct._CXXTokenChain* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain.addr, align 8
  %iCount = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %1, i32 0, i32 2
  %2 = load i32, i32* %iCount, align 8
  %cmp = icmp slt i32 %2, 1
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  br label %return

if.end2:                                          ; preds = %if.end
  %3 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain.addr, align 8
  %pHead = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %3, i32 0, i32 0
  %4 = load %struct._CXXToken*, %struct._CXXToken** %pHead, align 8
  %5 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain.addr, align 8
  %pTail = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %5, i32 0, i32 1
  %6 = load %struct._CXXToken*, %struct._CXXToken** %pTail, align 8
  call void @cxxTokenChainNormalizeTypeNameSpacingInRange(%struct._CXXToken* %4, %struct._CXXToken* %6)
  br label %return

return:                                           ; preds = %if.end2, %if.then1, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @cxxTokenChainNormalizeTypeNameSpacingInRange(%struct._CXXToken* %pFrom, %struct._CXXToken* %pTo) #0 {
entry:
  %pFrom.addr = alloca %struct._CXXToken*, align 8
  %pTo.addr = alloca %struct._CXXToken*, align 8
  %t = alloca %struct._CXXToken*, align 8
  store %struct._CXXToken* %pFrom, %struct._CXXToken** %pFrom.addr, align 8
  store %struct._CXXToken* %pTo, %struct._CXXToken** %pTo.addr, align 8
  %0 = load %struct._CXXToken*, %struct._CXXToken** %pFrom.addr, align 8
  %tobool = icmp ne %struct._CXXToken* %0, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct._CXXToken*, %struct._CXXToken** %pTo.addr, align 8
  %tobool1 = icmp ne %struct._CXXToken* %1, null
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load %struct._CXXToken*, %struct._CXXToken** %pFrom.addr, align 8
  store %struct._CXXToken* %2, %struct._CXXToken** %t, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end34, %if.end
  %3 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %eType = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %3, i32 0, i32 0
  %4 = load i32, i32* %eType, align 8
  %and = and i32 %4, 805306368
  %tobool2 = icmp ne i32 %and, 0
  br i1 %tobool2, label %if.then3, label %if.else

if.then3:                                         ; preds = %for.cond
  %5 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pChain = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %5, i32 0, i32 3
  %6 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain, align 8
  call void @cxxTokenChainNormalizeTypeNameSpacing(%struct._CXXTokenChain* %6)
  %7 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %bFollowedBySpace = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %7, i32 0, i32 4
  store i8 0, i8* %bFollowedBySpace, align 8
  br label %if.end31

if.else:                                          ; preds = %for.cond
  %8 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %eType4 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %8, i32 0, i32 0
  %9 = load i32, i32* %eType4, align 8
  %and5 = and i32 %9, 67207174
  %tobool6 = icmp ne i32 %and5, 0
  br i1 %tobool6, label %if.then7, label %if.else14

if.then7:                                         ; preds = %if.else
  %10 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pNext = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %10, i32 0, i32 7
  %11 = load %struct._CXXToken*, %struct._CXXToken** %pNext, align 8
  %tobool8 = icmp ne %struct._CXXToken* %11, null
  br i1 %tobool8, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then7
  %12 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pNext9 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %12, i32 0, i32 7
  %13 = load %struct._CXXToken*, %struct._CXXToken** %pNext9, align 8
  %eType10 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %13, i32 0, i32 0
  %14 = load i32, i32* %eType10, align 8
  %and11 = and i32 %14, 268550150
  %tobool12 = icmp ne i32 %and11, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then7
  %15 = phi i1 [ false, %if.then7 ], [ %tobool12, %land.rhs ]
  %16 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %bFollowedBySpace13 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %16, i32 0, i32 4
  %frombool = zext i1 %15 to i8
  store i8 %frombool, i8* %bFollowedBySpace13, align 8
  br label %if.end30

if.else14:                                        ; preds = %if.else
  %17 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %eType15 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %17, i32 0, i32 0
  %18 = load i32, i32* %eType15, align 8
  %cmp = icmp eq i32 %18, 16384
  br i1 %cmp, label %if.then16, label %if.else27

if.then16:                                        ; preds = %if.else14
  %19 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pNext17 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %19, i32 0, i32 7
  %20 = load %struct._CXXToken*, %struct._CXXToken** %pNext17, align 8
  %tobool18 = icmp ne %struct._CXXToken* %20, null
  br i1 %tobool18, label %land.rhs19, label %land.end24

land.rhs19:                                       ; preds = %if.then16
  %21 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pNext20 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %21, i32 0, i32 7
  %22 = load %struct._CXXToken*, %struct._CXXToken** %pNext20, align 8
  %eType21 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %22, i32 0, i32 0
  %23 = load i32, i32* %eType21, align 8
  %and22 = and i32 %23, 16793728
  %tobool23 = icmp ne i32 %and22, 0
  %lnot = xor i1 %tobool23, true
  br label %land.end24

land.end24:                                       ; preds = %land.rhs19, %if.then16
  %24 = phi i1 [ false, %if.then16 ], [ %lnot, %land.rhs19 ]
  %25 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %bFollowedBySpace25 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %25, i32 0, i32 4
  %frombool26 = zext i1 %24 to i8
  store i8 %frombool26, i8* %bFollowedBySpace25, align 8
  br label %if.end29

if.else27:                                        ; preds = %if.else14
  %26 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %bFollowedBySpace28 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %26, i32 0, i32 4
  store i8 0, i8* %bFollowedBySpace28, align 8
  br label %if.end29

if.end29:                                         ; preds = %if.else27, %land.end24
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %land.end
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %if.then3
  %27 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %28 = load %struct._CXXToken*, %struct._CXXToken** %pTo.addr, align 8
  %cmp32 = icmp eq %struct._CXXToken* %27, %28
  br i1 %cmp32, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.end31
  br label %for.end

if.end34:                                         ; preds = %if.end31
  %29 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pNext35 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %29, i32 0, i32 7
  %30 = load %struct._CXXToken*, %struct._CXXToken** %pNext35, align 8
  store %struct._CXXToken* %30, %struct._CXXToken** %t, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then33
  %31 = load %struct._CXXToken*, %struct._CXXToken** %pTo.addr, align 8
  %bFollowedBySpace36 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %31, i32 0, i32 4
  store i8 0, i8* %bFollowedBySpace36, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then
  ret void
}

declare void @vStringResize(%struct.sVString*, i64) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 10.0.0 (https://github.com/holzschu/clang.git 0cfc630fbdb62e96720b611a57123ef3eb13e297) (https://github.com/holzschu/llvm.git 0d8a71e39b28502c24718f7e74b5acbcfe36dfe0)"}
