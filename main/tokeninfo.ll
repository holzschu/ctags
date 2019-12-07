; ModuleID = 'tokeninfo.c'
source_filename = "tokeninfo.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-ios11.0.0"

%struct.tokenInfoClass = type { i32, i16, i16, i16, i16, i64, %struct.tokenTypePair*, i32, void (%struct.sTokenInfo*, i8*)*, void (%struct.sTokenInfo*, i8*)*, void (%struct.sTokenInfo*)*, void (%struct.sTokenInfo*)*, void (%struct.sTokenInfo*, %struct.sTokenInfo*, i8*)*, %struct.sObjPool*, %struct.sPtrArray* }
%struct.tokenTypePair = type { i16, i16 }
%struct.sTokenInfo = type { i16, i16, %struct.sVString*, %struct.tokenInfoClass*, i64, %struct._MIOPos }
%struct.sVString = type { i64, i64, i8* }
%struct._MIOPos = type { i32, %union.anon }
%union.anon = type { i64 }
%struct.sObjPool = type opaque
%struct.sPtrArray = type opaque

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @newToken(%struct.tokenInfoClass* %klass) #0 {
entry:
  %klass.addr = alloca %struct.tokenInfoClass*, align 8
  store %struct.tokenInfoClass* %klass, %struct.tokenInfoClass** %klass.addr, align 8
  %0 = load %struct.tokenInfoClass*, %struct.tokenInfoClass** %klass.addr, align 8
  %call = call i8* @newTokenFull(%struct.tokenInfoClass* %0, i8* null)
  ret i8* %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @newTokenFull(%struct.tokenInfoClass* %klass, i8* %data) #0 {
entry:
  %klass.addr = alloca %struct.tokenInfoClass*, align 8
  %data.addr = alloca i8*, align 8
  %token = alloca %struct.sTokenInfo*, align 8
  store %struct.tokenInfoClass* %klass, %struct.tokenInfoClass** %klass.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store %struct.sTokenInfo* null, %struct.sTokenInfo** %token, align 8
  %0 = load %struct.tokenInfoClass*, %struct.tokenInfoClass** %klass.addr, align 8
  %nPreAlloc = getelementptr inbounds %struct.tokenInfoClass, %struct.tokenInfoClass* %0, i32 0, i32 0
  %1 = load i32, i32* %nPreAlloc, align 8
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.tokenInfoClass*, %struct.tokenInfoClass** %klass.addr, align 8
  %nPreAlloc1 = getelementptr inbounds %struct.tokenInfoClass, %struct.tokenInfoClass* %2, i32 0, i32 0
  store i32 16, i32* %nPreAlloc1, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %retry

retry:                                            ; preds = %if.else, %if.end
  %3 = load %struct.tokenInfoClass*, %struct.tokenInfoClass** %klass.addr, align 8
  %pool = getelementptr inbounds %struct.tokenInfoClass, %struct.tokenInfoClass* %3, i32 0, i32 13
  %4 = load %struct.sObjPool*, %struct.sObjPool** %pool, align 8
  %tobool = icmp ne %struct.sObjPool* %4, null
  br i1 %tobool, label %if.then2, label %if.else

if.then2:                                         ; preds = %retry
  %5 = load %struct.tokenInfoClass*, %struct.tokenInfoClass** %klass.addr, align 8
  %pool3 = getelementptr inbounds %struct.tokenInfoClass, %struct.tokenInfoClass* %5, i32 0, i32 13
  %6 = load %struct.sObjPool*, %struct.sObjPool** %pool3, align 8
  %call = call i8* @objPoolGet(%struct.sObjPool* %6)
  %7 = bitcast i8* %call to %struct.sTokenInfo*
  store %struct.sTokenInfo* %7, %struct.sTokenInfo** %token, align 8
  br label %if.end7

if.else:                                          ; preds = %retry
  %8 = load %struct.tokenInfoClass*, %struct.tokenInfoClass** %klass.addr, align 8
  %nPreAlloc4 = getelementptr inbounds %struct.tokenInfoClass, %struct.tokenInfoClass* %8, i32 0, i32 0
  %9 = load i32, i32* %nPreAlloc4, align 8
  %10 = load %struct.tokenInfoClass*, %struct.tokenInfoClass** %klass.addr, align 8
  %11 = bitcast %struct.tokenInfoClass* %10 to i8*
  %call5 = call %struct.sObjPool* @objPoolNew(i32 %9, i8* (i8*)* @createToken, void (i8*)* @destroyToken, void (i8*)* @clearToken, i8* %11)
  %12 = load %struct.tokenInfoClass*, %struct.tokenInfoClass** %klass.addr, align 8
  %pool6 = getelementptr inbounds %struct.tokenInfoClass, %struct.tokenInfoClass* %12, i32 0, i32 13
  store %struct.sObjPool* %call5, %struct.sObjPool** %pool6, align 8
  br label %retry

if.end7:                                          ; preds = %if.then2
  %13 = load %struct.tokenInfoClass*, %struct.tokenInfoClass** %klass.addr, align 8
  %init = getelementptr inbounds %struct.tokenInfoClass, %struct.tokenInfoClass* %13, i32 0, i32 8
  %14 = load void (%struct.sTokenInfo*, i8*)*, void (%struct.sTokenInfo*, i8*)** %init, align 8
  %tobool8 = icmp ne void (%struct.sTokenInfo*, i8*)* %14, null
  br i1 %tobool8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end7
  %15 = load %struct.tokenInfoClass*, %struct.tokenInfoClass** %klass.addr, align 8
  %init10 = getelementptr inbounds %struct.tokenInfoClass, %struct.tokenInfoClass* %15, i32 0, i32 8
  %16 = load void (%struct.sTokenInfo*, i8*)*, void (%struct.sTokenInfo*, i8*)** %init10, align 8
  %17 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %18 = load i8*, i8** %data.addr, align 8
  call void %16(%struct.sTokenInfo* %17, i8* %18)
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end7
  %19 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %20 = bitcast %struct.sTokenInfo* %19 to i8*
  ret i8* %20
}

declare i8* @objPoolGet(%struct.sObjPool*) #1

declare %struct.sObjPool* @objPoolNew(i32, i8* (i8*)*, void (i8*)*, void (i8*)*, i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @createToken(i8* %createArg) #0 {
entry:
  %createArg.addr = alloca i8*, align 8
  %klass = alloca %struct.tokenInfoClass*, align 8
  %token = alloca %struct.sTokenInfo*, align 8
  store i8* %createArg, i8** %createArg.addr, align 8
  %0 = load i8*, i8** %createArg.addr, align 8
  %1 = bitcast i8* %0 to %struct.tokenInfoClass*
  store %struct.tokenInfoClass* %1, %struct.tokenInfoClass** %klass, align 8
  %2 = load %struct.tokenInfoClass*, %struct.tokenInfoClass** %klass, align 8
  %extraSpace = getelementptr inbounds %struct.tokenInfoClass, %struct.tokenInfoClass* %2, i32 0, i32 5
  %3 = load i64, i64* %extraSpace, align 8
  %add = add i64 48, %3
  %call = call i8* @eMalloc(i64 %add)
  %4 = bitcast i8* %call to %struct.sTokenInfo*
  store %struct.sTokenInfo* %4, %struct.sTokenInfo** %token, align 8
  %5 = load %struct.tokenInfoClass*, %struct.tokenInfoClass** %klass, align 8
  %6 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %klass1 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %6, i32 0, i32 3
  store %struct.tokenInfoClass* %5, %struct.tokenInfoClass** %klass1, align 8
  %call2 = call %struct.sVString* @vStringNew()
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %string = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %7, i32 0, i32 2
  store %struct.sVString* %call2, %struct.sVString** %string, align 8
  %8 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %9 = bitcast %struct.sTokenInfo* %8 to i8*
  ret i8* %9
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @destroyToken(i8* %data) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %token = alloca %struct.sTokenInfo*, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.sTokenInfo*
  store %struct.sTokenInfo* %1, %struct.sTokenInfo** %token, align 8
  %2 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %klass = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %2, i32 0, i32 3
  %3 = load %struct.tokenInfoClass*, %struct.tokenInfoClass** %klass, align 8
  %destroy = getelementptr inbounds %struct.tokenInfoClass, %struct.tokenInfoClass* %3, i32 0, i32 11
  %4 = load void (%struct.sTokenInfo*)*, void (%struct.sTokenInfo*)** %destroy, align 8
  %tobool = icmp ne void (%struct.sTokenInfo*)* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %klass1 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %5, i32 0, i32 3
  %6 = load %struct.tokenInfoClass*, %struct.tokenInfoClass** %klass1, align 8
  %destroy2 = getelementptr inbounds %struct.tokenInfoClass, %struct.tokenInfoClass* %6, i32 0, i32 11
  %7 = load void (%struct.sTokenInfo*)*, void (%struct.sTokenInfo*)** %destroy2, align 8
  %8 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  call void %7(%struct.sTokenInfo* %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %string = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %9, i32 0, i32 2
  %10 = load %struct.sVString*, %struct.sVString** %string, align 8
  call void @vStringDelete(%struct.sVString* %10)
  %11 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %12 = bitcast %struct.sTokenInfo* %11 to i8*
  call void @eFree(i8* %12)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @clearToken(i8* %data) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %token = alloca %struct.sTokenInfo*, align 8
  %vStringClear_s = alloca %struct.sVString*, align 8
  %tmp = alloca %struct._MIOPos, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.sTokenInfo*
  store %struct.sTokenInfo* %1, %struct.sTokenInfo** %token, align 8
  %2 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %klass = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %2, i32 0, i32 3
  %3 = load %struct.tokenInfoClass*, %struct.tokenInfoClass** %klass, align 8
  %clear = getelementptr inbounds %struct.tokenInfoClass, %struct.tokenInfoClass* %3, i32 0, i32 10
  %4 = load void (%struct.sTokenInfo*)*, void (%struct.sTokenInfo*)** %clear, align 8
  %tobool = icmp ne void (%struct.sTokenInfo*)* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %klass1 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %5, i32 0, i32 3
  %6 = load %struct.tokenInfoClass*, %struct.tokenInfoClass** %klass1, align 8
  %clear2 = getelementptr inbounds %struct.tokenInfoClass, %struct.tokenInfoClass* %6, i32 0, i32 10
  %7 = load void (%struct.sTokenInfo*)*, void (%struct.sTokenInfo*)** %clear2, align 8
  %8 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  call void %7(%struct.sTokenInfo* %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %klass3 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %9, i32 0, i32 3
  %10 = load %struct.tokenInfoClass*, %struct.tokenInfoClass** %klass3, align 8
  %typeForKeyword = getelementptr inbounds %struct.tokenInfoClass, %struct.tokenInfoClass* %10, i32 0, i32 3
  %11 = load i16, i16* %typeForKeyword, align 8
  %12 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %12, i32 0, i32 0
  store i16 %11, i16* %type, align 8
  %13 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %klass4 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %13, i32 0, i32 3
  %14 = load %struct.tokenInfoClass*, %struct.tokenInfoClass** %klass4, align 8
  %keywordNone = getelementptr inbounds %struct.tokenInfoClass, %struct.tokenInfoClass* %14, i32 0, i32 2
  %15 = load i16, i16* %keywordNone, align 2
  %16 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %16, i32 0, i32 1
  store i16 %15, i16* %keyword, align 2
  br label %do.body

do.body:                                          ; preds = %if.end
  %17 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %string = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %17, i32 0, i32 2
  %18 = load %struct.sVString*, %struct.sVString** %string, align 8
  store %struct.sVString* %18, %struct.sVString** %vStringClear_s, align 8
  %19 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %19, i32 0, i32 0
  store i64 0, i64* %length, align 8
  %20 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %20, i32 0, i32 2
  %21 = load i8*, i8** %buffer, align 8
  %arrayidx = getelementptr inbounds i8, i8* %21, i64 0
  store i8 0, i8* %arrayidx, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  %call = call i64 @getInputLineNumber()
  %22 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %lineNumber = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %22, i32 0, i32 4
  store i64 %call, i64* %lineNumber, align 8
  %23 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %filePosition = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %23, i32 0, i32 5
  %call5 = call [2 x i64] @getInputFilePosition()
  %24 = bitcast %struct._MIOPos* %tmp to [2 x i64]*
  store [2 x i64] %call5, [2 x i64]* %24, align 8
  %25 = bitcast %struct._MIOPos* %filePosition to i8*
  %26 = bitcast %struct._MIOPos* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 8 %26, i64 16, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @flashTokenBacklog(%struct.tokenInfoClass* %klass) #0 {
entry:
  %klass.addr = alloca %struct.tokenInfoClass*, align 8
  store %struct.tokenInfoClass* %klass, %struct.tokenInfoClass** %klass.addr, align 8
  %0 = load %struct.tokenInfoClass*, %struct.tokenInfoClass** %klass.addr, align 8
  %backlog = getelementptr inbounds %struct.tokenInfoClass, %struct.tokenInfoClass* %0, i32 0, i32 14
  %1 = load %struct.sPtrArray*, %struct.sPtrArray** %backlog, align 8
  %tobool = icmp ne %struct.sPtrArray* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.tokenInfoClass*, %struct.tokenInfoClass** %klass.addr, align 8
  %backlog1 = getelementptr inbounds %struct.tokenInfoClass, %struct.tokenInfoClass* %2, i32 0, i32 14
  %3 = load %struct.sPtrArray*, %struct.sPtrArray** %backlog1, align 8
  call void @ptrArrayClear(%struct.sPtrArray* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @ptrArrayClear(%struct.sPtrArray*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @tokenDestroy(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %klass = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 3
  %1 = load %struct.tokenInfoClass*, %struct.tokenInfoClass** %klass, align 8
  %pool = getelementptr inbounds %struct.tokenInfoClass, %struct.tokenInfoClass* %1, i32 0, i32 13
  %2 = load %struct.sObjPool*, %struct.sObjPool** %pool, align 8
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %4 = bitcast %struct.sTokenInfo* %3 to i8*
  call void @objPoolPut(%struct.sObjPool* %2, i8* %4)
  ret void
}

declare void @objPoolPut(%struct.sObjPool*, i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @tokenReadFull(%struct.sTokenInfo* %token, i8* %data) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %data.addr = alloca i8*, align 8
  %backlog7 = alloca %struct.sTokenInfo*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %klass = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 3
  %1 = load %struct.tokenInfoClass*, %struct.tokenInfoClass** %klass, align 8
  %backlog = getelementptr inbounds %struct.tokenInfoClass, %struct.tokenInfoClass* %1, i32 0, i32 14
  %2 = load %struct.sPtrArray*, %struct.sPtrArray** %backlog, align 8
  %tobool = icmp ne %struct.sPtrArray* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call %struct.sPtrArray* @ptrArrayNew(void (i8*)* bitcast (void (%struct.sTokenInfo*)* @tokenDestroy to void (i8*)*))
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %klass1 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %3, i32 0, i32 3
  %4 = load %struct.tokenInfoClass*, %struct.tokenInfoClass** %klass1, align 8
  %backlog2 = getelementptr inbounds %struct.tokenInfoClass, %struct.tokenInfoClass* %4, i32 0, i32 14
  store %struct.sPtrArray* %call, %struct.sPtrArray** %backlog2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %klass3 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %5, i32 0, i32 3
  %6 = load %struct.tokenInfoClass*, %struct.tokenInfoClass** %klass3, align 8
  %backlog4 = getelementptr inbounds %struct.tokenInfoClass, %struct.tokenInfoClass* %6, i32 0, i32 14
  %7 = load %struct.sPtrArray*, %struct.sPtrArray** %backlog4, align 8
  %call5 = call i32 @ptrArrayCount(%struct.sPtrArray* %7)
  %cmp = icmp ugt i32 %call5, 0
  br i1 %cmp, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  %8 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %klass8 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %8, i32 0, i32 3
  %9 = load %struct.tokenInfoClass*, %struct.tokenInfoClass** %klass8, align 8
  %backlog9 = getelementptr inbounds %struct.tokenInfoClass, %struct.tokenInfoClass* %9, i32 0, i32 14
  %10 = load %struct.sPtrArray*, %struct.sPtrArray** %backlog9, align 8
  %call10 = call i8* @ptrArrayLast(%struct.sPtrArray* %10)
  %11 = bitcast i8* %call10 to %struct.sTokenInfo*
  store %struct.sTokenInfo* %11, %struct.sTokenInfo** %backlog7, align 8
  %12 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %13 = load %struct.sTokenInfo*, %struct.sTokenInfo** %backlog7, align 8
  %14 = load i8*, i8** %data.addr, align 8
  call void @tokenCopyFull(%struct.sTokenInfo* %12, %struct.sTokenInfo* %13, i8* %14)
  %15 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %klass11 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %15, i32 0, i32 3
  %16 = load %struct.tokenInfoClass*, %struct.tokenInfoClass** %klass11, align 8
  %backlog12 = getelementptr inbounds %struct.tokenInfoClass, %struct.tokenInfoClass* %16, i32 0, i32 14
  %17 = load %struct.sPtrArray*, %struct.sPtrArray** %backlog12, align 8
  call void @ptrArrayRemoveLast(%struct.sPtrArray* %17)
  %18 = load %struct.sTokenInfo*, %struct.sTokenInfo** %backlog7, align 8
  call void @tokenDestroy(%struct.sTokenInfo* %18)
  br label %if.end14

if.else:                                          ; preds = %if.end
  %19 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %klass13 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %19, i32 0, i32 3
  %20 = load %struct.tokenInfoClass*, %struct.tokenInfoClass** %klass13, align 8
  %read = getelementptr inbounds %struct.tokenInfoClass, %struct.tokenInfoClass* %20, i32 0, i32 9
  %21 = load void (%struct.sTokenInfo*, i8*)*, void (%struct.sTokenInfo*, i8*)** %read, align 8
  %22 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %23 = load i8*, i8** %data.addr, align 8
  call void %21(%struct.sTokenInfo* %22, i8* %23)
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then6
  ret void
}

declare %struct.sPtrArray* @ptrArrayNew(void (i8*)*) #1

declare i32 @ptrArrayCount(%struct.sPtrArray*) #1

declare i8* @ptrArrayLast(%struct.sPtrArray*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @tokenCopyFull(%struct.sTokenInfo* %dest, %struct.sTokenInfo* %src, i8* %data) #0 {
entry:
  %dest.addr = alloca %struct.sTokenInfo*, align 8
  %src.addr = alloca %struct.sTokenInfo*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.sTokenInfo* %dest, %struct.sTokenInfo** %dest.addr, align 8
  store %struct.sTokenInfo* %src, %struct.sTokenInfo** %src.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %src.addr, align 8
  %lineNumber = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 4
  %1 = load i64, i64* %lineNumber, align 8
  %2 = load %struct.sTokenInfo*, %struct.sTokenInfo** %dest.addr, align 8
  %lineNumber1 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %2, i32 0, i32 4
  store i64 %1, i64* %lineNumber1, align 8
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %dest.addr, align 8
  %filePosition = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %3, i32 0, i32 5
  %4 = load %struct.sTokenInfo*, %struct.sTokenInfo** %src.addr, align 8
  %filePosition2 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %4, i32 0, i32 5
  %5 = bitcast %struct._MIOPos* %filePosition to i8*
  %6 = bitcast %struct._MIOPos* %filePosition2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 8 %6, i64 16, i1 false)
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %src.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %7, i32 0, i32 0
  %8 = load i16, i16* %type, align 8
  %9 = load %struct.sTokenInfo*, %struct.sTokenInfo** %dest.addr, align 8
  %type3 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %9, i32 0, i32 0
  store i16 %8, i16* %type3, align 8
  %10 = load %struct.sTokenInfo*, %struct.sTokenInfo** %src.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %10, i32 0, i32 1
  %11 = load i16, i16* %keyword, align 2
  %12 = load %struct.sTokenInfo*, %struct.sTokenInfo** %dest.addr, align 8
  %keyword4 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %12, i32 0, i32 1
  store i16 %11, i16* %keyword4, align 2
  %13 = load %struct.sTokenInfo*, %struct.sTokenInfo** %dest.addr, align 8
  %string = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %13, i32 0, i32 2
  %14 = load %struct.sVString*, %struct.sVString** %string, align 8
  %15 = load %struct.sTokenInfo*, %struct.sTokenInfo** %src.addr, align 8
  %string5 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %15, i32 0, i32 2
  %16 = load %struct.sVString*, %struct.sVString** %string5, align 8
  call void @vStringCopy(%struct.sVString* %14, %struct.sVString* %16)
  %17 = load %struct.sTokenInfo*, %struct.sTokenInfo** %src.addr, align 8
  %klass = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %17, i32 0, i32 3
  %18 = load %struct.tokenInfoClass*, %struct.tokenInfoClass** %klass, align 8
  %copy = getelementptr inbounds %struct.tokenInfoClass, %struct.tokenInfoClass* %18, i32 0, i32 12
  %19 = load void (%struct.sTokenInfo*, %struct.sTokenInfo*, i8*)*, void (%struct.sTokenInfo*, %struct.sTokenInfo*, i8*)** %copy, align 8
  %tobool = icmp ne void (%struct.sTokenInfo*, %struct.sTokenInfo*, i8*)* %19, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %20 = load %struct.sTokenInfo*, %struct.sTokenInfo** %src.addr, align 8
  %klass6 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %20, i32 0, i32 3
  %21 = load %struct.tokenInfoClass*, %struct.tokenInfoClass** %klass6, align 8
  %copy7 = getelementptr inbounds %struct.tokenInfoClass, %struct.tokenInfoClass* %21, i32 0, i32 12
  %22 = load void (%struct.sTokenInfo*, %struct.sTokenInfo*, i8*)*, void (%struct.sTokenInfo*, %struct.sTokenInfo*, i8*)** %copy7, align 8
  %23 = load %struct.sTokenInfo*, %struct.sTokenInfo** %dest.addr, align 8
  %24 = load %struct.sTokenInfo*, %struct.sTokenInfo** %src.addr, align 8
  %25 = load i8*, i8** %data.addr, align 8
  call void %22(%struct.sTokenInfo* %23, %struct.sTokenInfo* %24, i8* %25)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @ptrArrayRemoveLast(%struct.sPtrArray*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @tokenRead(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @tokenReadFull(%struct.sTokenInfo* %0, i8* null)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare void @vStringCopy(%struct.sVString*, %struct.sVString*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @tokenCopy(%struct.sTokenInfo* %dest, %struct.sTokenInfo* %src) #0 {
entry:
  %dest.addr = alloca %struct.sTokenInfo*, align 8
  %src.addr = alloca %struct.sTokenInfo*, align 8
  store %struct.sTokenInfo* %dest, %struct.sTokenInfo** %dest.addr, align 8
  store %struct.sTokenInfo* %src, %struct.sTokenInfo** %src.addr, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %dest.addr, align 8
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %src.addr, align 8
  call void @tokenCopyFull(%struct.sTokenInfo* %0, %struct.sTokenInfo* %1, i8* null)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @newTokenByCopying(%struct.sTokenInfo* %src) #0 {
entry:
  %src.addr = alloca %struct.sTokenInfo*, align 8
  store %struct.sTokenInfo* %src, %struct.sTokenInfo** %src.addr, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %src.addr, align 8
  %call = call i8* @newTokenByCopyingFull(%struct.sTokenInfo* %0, i8* null)
  ret i8* %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @newTokenByCopyingFull(%struct.sTokenInfo* %src, i8* %data) #0 {
entry:
  %src.addr = alloca %struct.sTokenInfo*, align 8
  %data.addr = alloca i8*, align 8
  %dest = alloca i8*, align 8
  store %struct.sTokenInfo* %src, %struct.sTokenInfo** %src.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %src.addr, align 8
  %klass = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 3
  %1 = load %struct.tokenInfoClass*, %struct.tokenInfoClass** %klass, align 8
  %call = call i8* @newToken(%struct.tokenInfoClass* %1)
  store i8* %call, i8** %dest, align 8
  %2 = load i8*, i8** %dest, align 8
  %3 = bitcast i8* %2 to %struct.sTokenInfo*
  %4 = load %struct.sTokenInfo*, %struct.sTokenInfo** %src.addr, align 8
  %5 = load i8*, i8** %data.addr, align 8
  call void @tokenCopyFull(%struct.sTokenInfo* %3, %struct.sTokenInfo* %4, i8* %5)
  %6 = load i8*, i8** %dest, align 8
  ret i8* %6
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @tokenSkipToTypeFull(%struct.sTokenInfo* %token, i16 signext %t, i8* %data) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %t.addr = alloca i16, align 2
  %data.addr = alloca i8*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  store i16 %t, i16* %t.addr, align 2
  store i8* %data, i8** %data.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 0
  %1 = load i16, i16* %type, align 8
  %conv = sext i16 %1 to i32
  %2 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %klass = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %2, i32 0, i32 3
  %3 = load %struct.tokenInfoClass*, %struct.tokenInfoClass** %klass, align 8
  %typeForEOF = getelementptr inbounds %struct.tokenInfoClass, %struct.tokenInfoClass* %3, i32 0, i32 4
  %4 = load i16, i16* %typeForEOF, align 2
  %conv1 = sext i16 %4 to i32
  %cmp = icmp eq i32 %conv, %conv1
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %5 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type3 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %5, i32 0, i32 0
  %6 = load i16, i16* %type3, align 8
  %conv4 = sext i16 %6 to i32
  %7 = load i16, i16* %t.addr, align 2
  %conv5 = sext i16 %7 to i32
  %cmp6 = icmp eq i32 %conv4, %conv5
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %8 = phi i1 [ true, %while.cond ], [ %cmp6, %lor.rhs ]
  %lnot = xor i1 %8, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %9 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %10 = load i8*, i8** %data.addr, align 8
  call void @tokenReadFull(%struct.sTokenInfo* %9, i8* %10)
  br label %while.cond

while.end:                                        ; preds = %lor.end
  %11 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type8 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %11, i32 0, i32 0
  %12 = load i16, i16* %type8, align 8
  %conv9 = sext i16 %12 to i32
  %13 = load i16, i16* %t.addr, align 2
  %conv10 = sext i16 %13 to i32
  %cmp11 = icmp eq i32 %conv9, %conv10
  %14 = zext i1 %cmp11 to i64
  %cond = select i1 %cmp11, i32 1, i32 0
  %tobool = icmp ne i32 %cond, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @tokenSkipToType(%struct.sTokenInfo* %token, i16 signext %t) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %t.addr = alloca i16, align 2
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  store i16 %t, i16* %t.addr, align 2
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %1 = load i16, i16* %t.addr, align 2
  %call = call zeroext i1 @tokenSkipToTypeFull(%struct.sTokenInfo* %0, i16 signext %1, i8* null)
  ret i1 %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @tokenUnreadFull(%struct.sTokenInfo* %token, i8* %data) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %data.addr = alloca i8*, align 8
  %backlog = alloca %struct.sTokenInfo*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %klass = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 3
  %1 = load %struct.tokenInfoClass*, %struct.tokenInfoClass** %klass, align 8
  %backlog1 = getelementptr inbounds %struct.tokenInfoClass, %struct.tokenInfoClass* %1, i32 0, i32 14
  %2 = load %struct.sPtrArray*, %struct.sPtrArray** %backlog1, align 8
  %tobool = icmp ne %struct.sPtrArray* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call %struct.sPtrArray* @ptrArrayNew(void (i8*)* bitcast (void (%struct.sTokenInfo*)* @tokenDestroy to void (i8*)*))
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %klass2 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %3, i32 0, i32 3
  %4 = load %struct.tokenInfoClass*, %struct.tokenInfoClass** %klass2, align 8
  %backlog3 = getelementptr inbounds %struct.tokenInfoClass, %struct.tokenInfoClass* %4, i32 0, i32 14
  store %struct.sPtrArray* %call, %struct.sPtrArray** %backlog3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %klass4 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %5, i32 0, i32 3
  %6 = load %struct.tokenInfoClass*, %struct.tokenInfoClass** %klass4, align 8
  %call5 = call i8* @newToken(%struct.tokenInfoClass* %6)
  %7 = bitcast i8* %call5 to %struct.sTokenInfo*
  store %struct.sTokenInfo* %7, %struct.sTokenInfo** %backlog, align 8
  %8 = load %struct.sTokenInfo*, %struct.sTokenInfo** %backlog, align 8
  %9 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %10 = load i8*, i8** %data.addr, align 8
  call void @tokenCopyFull(%struct.sTokenInfo* %8, %struct.sTokenInfo* %9, i8* %10)
  %11 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %klass6 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %11, i32 0, i32 3
  %12 = load %struct.tokenInfoClass*, %struct.tokenInfoClass** %klass6, align 8
  %backlog7 = getelementptr inbounds %struct.tokenInfoClass, %struct.tokenInfoClass* %12, i32 0, i32 14
  %13 = load %struct.sPtrArray*, %struct.sPtrArray** %backlog7, align 8
  %14 = load %struct.sTokenInfo*, %struct.sTokenInfo** %backlog, align 8
  %15 = bitcast %struct.sTokenInfo* %14 to i8*
  call void @ptrArrayAdd(%struct.sPtrArray* %13, i8* %15)
  ret void
}

declare void @ptrArrayAdd(%struct.sPtrArray*, i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @tokenUnread(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @tokenUnreadFull(%struct.sTokenInfo* %0, i8* null)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @tokenSkipOverPair(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call = call zeroext i1 @tokenSkipOverPairFull(%struct.sTokenInfo* %0, i8* null)
  ret i1 %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @tokenSkipOverPairFull(%struct.sTokenInfo* %token, i8* %data) #0 {
entry:
  %retval = alloca i1, align 1
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %data.addr = alloca i8*, align 8
  %start = alloca i32, align 4
  %end = alloca i32, align 4
  %i = alloca i32, align 4
  %depth = alloca i32, align 4
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 0
  %1 = load i16, i16* %type, align 8
  %conv = sext i16 %1 to i32
  store i32 %conv, i32* %start, align 4
  %2 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %klass = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %2, i32 0, i32 3
  %3 = load %struct.tokenInfoClass*, %struct.tokenInfoClass** %klass, align 8
  %typeForUndefined = getelementptr inbounds %struct.tokenInfoClass, %struct.tokenInfoClass* %3, i32 0, i32 1
  %4 = load i16, i16* %typeForUndefined, align 4
  %conv1 = sext i16 %4 to i32
  store i32 %conv1, i32* %end, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4
  %6 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %klass2 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %6, i32 0, i32 3
  %7 = load %struct.tokenInfoClass*, %struct.tokenInfoClass** %klass2, align 8
  %pairCount = getelementptr inbounds %struct.tokenInfoClass, %struct.tokenInfoClass* %7, i32 0, i32 7
  %8 = load i32, i32* %pairCount, align 8
  %cmp = icmp ult i32 %5, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %start, align 4
  %10 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %klass4 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %10, i32 0, i32 3
  %11 = load %struct.tokenInfoClass*, %struct.tokenInfoClass** %klass4, align 8
  %pairs = getelementptr inbounds %struct.tokenInfoClass, %struct.tokenInfoClass* %11, i32 0, i32 6
  %12 = load %struct.tokenTypePair*, %struct.tokenTypePair** %pairs, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom = zext i32 %13 to i64
  %arrayidx = getelementptr inbounds %struct.tokenTypePair, %struct.tokenTypePair* %12, i64 %idxprom
  %start5 = getelementptr inbounds %struct.tokenTypePair, %struct.tokenTypePair* %arrayidx, i32 0, i32 0
  %14 = load i16, i16* %start5, align 2
  %conv6 = sext i16 %14 to i32
  %cmp7 = icmp eq i32 %9, %conv6
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %15 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %klass9 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %15, i32 0, i32 3
  %16 = load %struct.tokenInfoClass*, %struct.tokenInfoClass** %klass9, align 8
  %pairs10 = getelementptr inbounds %struct.tokenInfoClass, %struct.tokenInfoClass* %16, i32 0, i32 6
  %17 = load %struct.tokenTypePair*, %struct.tokenTypePair** %pairs10, align 8
  %18 = load i32, i32* %i, align 4
  %idxprom11 = zext i32 %18 to i64
  %arrayidx12 = getelementptr inbounds %struct.tokenTypePair, %struct.tokenTypePair* %17, i64 %idxprom11
  %end13 = getelementptr inbounds %struct.tokenTypePair, %struct.tokenTypePair* %arrayidx12, i32 0, i32 1
  %19 = load i16, i16* %end13, align 2
  %conv14 = sext i16 %19 to i32
  store i32 %conv14, i32* %end, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %20 = load i32, i32* %i, align 4
  %inc = add i32 %20, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load i32, i32* %end, align 4
  %22 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %klass15 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %22, i32 0, i32 3
  %23 = load %struct.tokenInfoClass*, %struct.tokenInfoClass** %klass15, align 8
  %typeForUndefined16 = getelementptr inbounds %struct.tokenInfoClass, %struct.tokenInfoClass* %23, i32 0, i32 1
  %24 = load i16, i16* %typeForUndefined16, align 4
  %conv17 = sext i16 %24 to i32
  %cmp18 = icmp eq i32 %21, %conv17
  br i1 %cmp18, label %if.then20, label %if.end21

if.then20:                                        ; preds = %for.end
  store i1 false, i1* %retval, align 1
  br label %return

if.end21:                                         ; preds = %for.end
  store i32 1, i32* %depth, align 4
  br label %do.body

do.body:                                          ; preds = %land.end, %if.end21
  %25 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %26 = load i8*, i8** %data.addr, align 8
  call void @tokenReadFull(%struct.sTokenInfo* %25, i8* %26)
  %27 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type22 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %27, i32 0, i32 0
  %28 = load i16, i16* %type22, align 8
  %conv23 = sext i16 %28 to i32
  %29 = load i32, i32* %start, align 4
  %cmp24 = icmp eq i32 %conv23, %29
  br i1 %cmp24, label %if.then26, label %if.else

if.then26:                                        ; preds = %do.body
  %30 = load i32, i32* %depth, align 4
  %inc27 = add nsw i32 %30, 1
  store i32 %inc27, i32* %depth, align 4
  br label %if.end34

if.else:                                          ; preds = %do.body
  %31 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type28 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %31, i32 0, i32 0
  %32 = load i16, i16* %type28, align 8
  %conv29 = sext i16 %32 to i32
  %33 = load i32, i32* %end, align 4
  %cmp30 = icmp eq i32 %conv29, %33
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.else
  %34 = load i32, i32* %depth, align 4
  %dec = add nsw i32 %34, -1
  store i32 %dec, i32* %depth, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.else
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.then26
  br label %do.cond

do.cond:                                          ; preds = %if.end34
  %35 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type35 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %35, i32 0, i32 0
  %36 = load i16, i16* %type35, align 8
  %conv36 = sext i16 %36 to i32
  %37 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %klass37 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %37, i32 0, i32 3
  %38 = load %struct.tokenInfoClass*, %struct.tokenInfoClass** %klass37, align 8
  %typeForEOF = getelementptr inbounds %struct.tokenInfoClass, %struct.tokenInfoClass* %38, i32 0, i32 4
  %39 = load i16, i16* %typeForEOF, align 2
  %conv38 = sext i16 %39 to i32
  %cmp39 = icmp eq i32 %conv36, %conv38
  br i1 %cmp39, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %do.cond
  %40 = load i32, i32* %depth, align 4
  %cmp41 = icmp sgt i32 %40, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %41 = phi i1 [ false, %do.cond ], [ %cmp41, %land.rhs ]
  br i1 %41, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  %42 = load i32, i32* %depth, align 4
  %cmp43 = icmp eq i32 %42, 0
  %43 = zext i1 %cmp43 to i64
  %cond = select i1 %cmp43, i32 1, i32 0
  %tobool = icmp ne i32 %cond, 0
  store i1 %tobool, i1* %retval, align 1
  br label %return

return:                                           ; preds = %do.end, %if.then20
  %44 = load i1, i1* %retval, align 1
  ret i1 %44
}

declare i8* @eMalloc(i64) #1

declare %struct.sVString* @vStringNew() #1

declare void @vStringDelete(%struct.sVString*) #1

declare void @eFree(i8*) #1

declare i64 @getInputLineNumber() #1

declare [2 x i64] @getInputFilePosition() #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 10.0.0 (https://github.com/holzschu/clang.git 0cfc630fbdb62e96720b611a57123ef3eb13e297) (https://github.com/holzschu/llvm.git 0d8a71e39b28502c24718f7e74b5acbcfe36dfe0)"}
