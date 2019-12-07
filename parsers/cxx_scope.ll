; ModuleID = 'cxx/cxx_scope.c'
source_filename = "cxx/cxx_scope.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-ios11.0.0"

%struct._CXXTokenChain = type { %struct._CXXToken*, %struct._CXXToken*, i32 }
%struct._CXXToken = type { i32, %struct.sVString*, i32, %struct._CXXTokenChain*, i8, i32, %struct._MIOPos, %struct._CXXToken*, %struct._CXXToken*, i8, i8 }
%struct.sVString = type { i64, i64, i8* }
%struct._MIOPos = type { i32, %union.anon }
%union.anon = type { i64 }

@g_pScope = internal global %struct._CXXTokenChain* null, align 8
@g_szScopeName = internal global %struct.sVString* null, align 8
@g_bScopeNameDirty = internal global i8 1, align 1
@.str = private unnamed_addr constant [3 x i8] c"::\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @cxxScopeInit() #0 {
entry:
  %call = call %struct._CXXTokenChain* @cxxTokenChainCreate()
  store %struct._CXXTokenChain* %call, %struct._CXXTokenChain** @g_pScope, align 8
  ret void
}

declare %struct._CXXTokenChain* @cxxTokenChainCreate() #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @cxxScopeDone() #0 {
entry:
  %0 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** @g_pScope, align 8
  call void @cxxTokenChainDestroy(%struct._CXXTokenChain* %0)
  %1 = load %struct.sVString*, %struct.sVString** @g_szScopeName, align 8
  %tobool = icmp ne %struct.sVString* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.sVString*, %struct.sVString** @g_szScopeName, align 8
  call void @vStringDelete(%struct.sVString* %2)
  store %struct.sVString* null, %struct.sVString** @g_szScopeName, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @cxxTokenChainDestroy(%struct._CXXTokenChain*) #1

declare void @vStringDelete(%struct.sVString*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @cxxScopeClear() #0 {
entry:
  %0 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** @g_pScope, align 8
  %tobool = icmp ne %struct._CXXTokenChain* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** @g_pScope, align 8
  call void @cxxTokenChainClear(%struct._CXXTokenChain* %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.sVString*, %struct.sVString** @g_szScopeName, align 8
  %tobool1 = icmp ne %struct.sVString* %2, null
  br i1 %tobool1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %3 = load %struct.sVString*, %struct.sVString** @g_szScopeName, align 8
  call void @vStringDelete(%struct.sVString* %3)
  store %struct.sVString* null, %struct.sVString** @g_szScopeName, align 8
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  ret void
}

declare void @cxxTokenChainClear(%struct._CXXTokenChain*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @cxxScopeIsGlobal() #0 {
entry:
  %0 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** @g_pScope, align 8
  %iCount = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %0, i32 0, i32 2
  %1 = load i32, i32* %iCount, align 8
  %cmp = icmp slt i32 %1, 1
  ret i1 %cmp
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @cxxScopeGetType() #0 {
entry:
  %retval = alloca i32, align 4
  %0 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** @g_pScope, align 8
  %iCount = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %0, i32 0, i32 2
  %1 = load i32, i32* %iCount, align 8
  %cmp = icmp slt i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** @g_pScope, align 8
  %pTail = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %2, i32 0, i32 1
  %3 = load %struct._CXXToken*, %struct._CXXToken** %pTail, align 8
  %uInternalScopeType = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %3, i32 0, i32 9
  %4 = load i8, i8* %uInternalScopeType, align 8
  %conv = zext i8 %4 to i32
  store i32 %conv, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @cxxScopeGetVariableKind() #0 {
entry:
  %retval = alloca i32, align 4
  %call = call i32 @cxxScopeGetType()
  switch i32 %call, label %sw.default [
    i32 2, label %sw.bb
    i32 4, label %sw.bb
    i32 5, label %sw.bb
    i32 0, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry
  store i32 6, i32* %retval, align 4
  br label %return

sw.bb1:                                           ; preds = %entry
  store i32 5, i32* %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  store i32 11, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb1, %sw.bb
  %0 = load i32, i32* %retval, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @cxxScopeGetKind() #0 {
entry:
  %retval = alloca i32, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** @g_pScope, align 8
  %pTail = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %0, i32 0, i32 1
  %1 = load %struct._CXXToken*, %struct._CXXToken** %pTail, align 8
  %uInternalScopeType = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %1, i32 0, i32 9
  %2 = load i8, i8* %uInternalScopeType, align 8
  %conv = zext i8 %2 to i32
  switch i32 %conv, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb3
    i32 3, label %sw.bb6
    i32 0, label %sw.bb7
    i32 5, label %sw.bb8
    i32 4, label %sw.bb9
  ]

sw.bb:                                            ; preds = %do.end
  br label %do.body1

do.body1:                                         ; preds = %sw.bb
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  store i32 16, i32* %retval, align 4
  br label %return

sw.bb3:                                           ; preds = %do.end
  br label %do.body4

do.body4:                                         ; preds = %sw.bb3
  br label %do.end5

do.end5:                                          ; preds = %do.body4
  store i32 15, i32* %retval, align 4
  br label %return

sw.bb6:                                           ; preds = %do.end
  store i32 3, i32* %retval, align 4
  br label %return

sw.bb7:                                           ; preds = %do.end
  store i32 2, i32* %retval, align 4
  br label %return

sw.bb8:                                           ; preds = %do.end
  store i32 8, i32* %retval, align 4
  br label %return

sw.bb9:                                           ; preds = %do.end
  store i32 10, i32* %retval, align 4
  br label %return

sw.default:                                       ; preds = %do.end
  br label %do.body10

do.body10:                                        ; preds = %sw.default
  br label %do.end11

do.end11:                                         ; preds = %do.body10
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end11
  store i32 2, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %do.end5, %do.end2
  %3 = load i32, i32* %retval, align 4
  ret i32 %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @cxxScopeGetAccess() #0 {
entry:
  %retval = alloca i32, align 4
  %0 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** @g_pScope, align 8
  %iCount = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %0, i32 0, i32 2
  %1 = load i32, i32* %iCount, align 8
  %cmp = icmp slt i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** @g_pScope, align 8
  %pTail = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %2, i32 0, i32 1
  %3 = load %struct._CXXToken*, %struct._CXXToken** %pTail, align 8
  %uInternalScopeAccess = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %3, i32 0, i32 10
  %4 = load i8, i8* %uInternalScopeAccess, align 1
  %conv = zext i8 %4 to i32
  store i32 %conv, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @cxxScopeGetName() #0 {
entry:
  %retval = alloca i8*, align 8
  %0 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** @g_pScope, align 8
  %iCount = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %0, i32 0, i32 2
  %1 = load i32, i32* %iCount, align 8
  %cmp = icmp slt i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** @g_pScope, align 8
  %pTail = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %2, i32 0, i32 1
  %3 = load %struct._CXXToken*, %struct._CXXToken** %pTail, align 8
  %pszWord = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %3, i32 0, i32 1
  %4 = load %struct.sVString*, %struct.sVString** %pszWord, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %4, i32 0, i32 2
  %5 = load i8*, i8** %buffer, align 8
  store i8* %5, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i8*, i8** %retval, align 8
  ret i8* %6
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @cxxScopeGetSize() #0 {
entry:
  %0 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** @g_pScope, align 8
  %iCount = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %0, i32 0, i32 2
  %1 = load i32, i32* %iCount, align 8
  ret i32 %1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @cxxScopeGetFullName() #0 {
entry:
  %retval = alloca i8*, align 8
  %vStringClear_s = alloca %struct.sVString*, align 8
  %0 = load i8, i8* @g_bScopeNameDirty, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct.sVString*, %struct.sVString** @g_szScopeName, align 8
  %tobool1 = icmp ne %struct.sVString* %1, null
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %2 = load %struct.sVString*, %struct.sVString** @g_szScopeName, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %2, i32 0, i32 2
  %3 = load i8*, i8** %buffer, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %3, %cond.true ], [ null, %cond.false ]
  store i8* %cond, i8** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** @g_pScope, align 8
  %iCount = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %4, i32 0, i32 2
  %5 = load i32, i32* %iCount, align 8
  %cmp = icmp slt i32 %5, 1
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i8 0, i8* @g_bScopeNameDirty, align 1
  store i8* null, i8** %retval, align 8
  br label %return

if.end3:                                          ; preds = %if.end
  %6 = load %struct.sVString*, %struct.sVString** @g_szScopeName, align 8
  %tobool4 = icmp ne %struct.sVString* %6, null
  br i1 %tobool4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end3
  br label %do.body

do.body:                                          ; preds = %if.then5
  %7 = load %struct.sVString*, %struct.sVString** @g_szScopeName, align 8
  store %struct.sVString* %7, %struct.sVString** %vStringClear_s, align 8
  %8 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %8, i32 0, i32 0
  store i64 0, i64* %length, align 8
  %9 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %buffer6 = getelementptr inbounds %struct.sVString, %struct.sVString* %9, i32 0, i32 2
  %10 = load i8*, i8** %buffer6, align 8
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 0
  store i8 0, i8* %arrayidx, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %if.end7

if.else:                                          ; preds = %if.end3
  %call = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call, %struct.sVString** @g_szScopeName, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.else, %do.end
  %11 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** @g_pScope, align 8
  %12 = load %struct.sVString*, %struct.sVString** @g_szScopeName, align 8
  call void @cxxTokenChainJoinInString(%struct._CXXTokenChain* %11, %struct.sVString* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 1)
  store i8 0, i8* @g_bScopeNameDirty, align 1
  %13 = load %struct.sVString*, %struct.sVString** @g_szScopeName, align 8
  %buffer8 = getelementptr inbounds %struct.sVString, %struct.sVString* %13, i32 0, i32 2
  %14 = load i8*, i8** %buffer8, align 8
  store i8* %14, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.end7, %if.then2, %cond.end
  %15 = load i8*, i8** %retval, align 8
  ret i8* %15
}

declare %struct.sVString* @vStringNew() #1

declare void @cxxTokenChainJoinInString(%struct._CXXTokenChain*, %struct.sVString*, i8*, i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sVString* @cxxScopeGetFullNameAsString() #0 {
entry:
  %retval = alloca %struct.sVString*, align 8
  %ret = alloca %struct.sVString*, align 8
  %vStringClear_s = alloca %struct.sVString*, align 8
  %0 = load i8, i8* @g_bScopeNameDirty, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct.sVString*, %struct.sVString** @g_szScopeName, align 8
  store %struct.sVString* %1, %struct.sVString** %ret, align 8
  store %struct.sVString* null, %struct.sVString** @g_szScopeName, align 8
  store i8 1, i8* @g_bScopeNameDirty, align 1
  %2 = load %struct.sVString*, %struct.sVString** %ret, align 8
  store %struct.sVString* %2, %struct.sVString** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** @g_pScope, align 8
  %iCount = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %3, i32 0, i32 2
  %4 = load i32, i32* %iCount, align 8
  %cmp = icmp slt i32 %4, 1
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  store %struct.sVString* null, %struct.sVString** %retval, align 8
  br label %return

if.end2:                                          ; preds = %if.end
  %5 = load %struct.sVString*, %struct.sVString** @g_szScopeName, align 8
  %tobool3 = icmp ne %struct.sVString* %5, null
  br i1 %tobool3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end2
  br label %do.body

do.body:                                          ; preds = %if.then4
  %6 = load %struct.sVString*, %struct.sVString** @g_szScopeName, align 8
  store %struct.sVString* %6, %struct.sVString** %vStringClear_s, align 8
  %7 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %7, i32 0, i32 0
  store i64 0, i64* %length, align 8
  %8 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %8, i32 0, i32 2
  %9 = load i8*, i8** %buffer, align 8
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 0
  store i8 0, i8* %arrayidx, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %if.end5

if.else:                                          ; preds = %if.end2
  %call = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call, %struct.sVString** @g_szScopeName, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.else, %do.end
  %10 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** @g_pScope, align 8
  %11 = load %struct.sVString*, %struct.sVString** @g_szScopeName, align 8
  call void @cxxTokenChainJoinInString(%struct._CXXTokenChain* %10, %struct.sVString* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 1)
  %12 = load %struct.sVString*, %struct.sVString** @g_szScopeName, align 8
  store %struct.sVString* %12, %struct.sVString** %ret, align 8
  store %struct.sVString* null, %struct.sVString** @g_szScopeName, align 8
  %13 = load %struct.sVString*, %struct.sVString** %ret, align 8
  store %struct.sVString* %13, %struct.sVString** %retval, align 8
  br label %return

return:                                           ; preds = %if.end5, %if.then1, %if.then
  %14 = load %struct.sVString*, %struct.sVString** %retval, align 8
  ret %struct.sVString* %14
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sVString* @cxxScopeGetFullNameExceptLastComponentAsString() #0 {
entry:
  %retval = alloca %struct.sVString*, align 8
  %0 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** @g_pScope, align 8
  %iCount = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %0, i32 0, i32 2
  %1 = load i32, i32* %iCount, align 8
  %cmp = icmp slt i32 %1, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.sVString* null, %struct.sVString** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** @g_pScope, align 8
  %pHead = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %2, i32 0, i32 0
  %3 = load %struct._CXXToken*, %struct._CXXToken** %pHead, align 8
  %4 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** @g_pScope, align 8
  %pTail = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %4, i32 0, i32 1
  %5 = load %struct._CXXToken*, %struct._CXXToken** %pTail, align 8
  %pPrev = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %5, i32 0, i32 8
  %6 = load %struct._CXXToken*, %struct._CXXToken** %pPrev, align 8
  %call = call %struct.sVString* @cxxTokenChainJoinRange(%struct._CXXToken* %3, %struct._CXXToken* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 1)
  store %struct.sVString* %call, %struct.sVString** %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load %struct.sVString*, %struct.sVString** %retval, align 8
  ret %struct.sVString* %7
}

declare %struct.sVString* @cxxTokenChainJoinRange(%struct._CXXToken*, %struct._CXXToken*, i8*, i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @cxxScopeSetAccess(i32 %eAccess) #0 {
entry:
  %eAccess.addr = alloca i32, align 4
  store i32 %eAccess, i32* %eAccess.addr, align 4
  %0 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** @g_pScope, align 8
  %iCount = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %0, i32 0, i32 2
  %1 = load i32, i32* %iCount, align 8
  %cmp = icmp slt i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %eAccess.addr, align 4
  %conv = trunc i32 %2 to i8
  %3 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** @g_pScope, align 8
  %pTail = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %3, i32 0, i32 1
  %4 = load %struct._CXXToken*, %struct._CXXToken** %pTail, align 8
  %uInternalScopeAccess = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %4, i32 0, i32 10
  store i8 %conv, i8* %uInternalScopeAccess, align 1
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @cxxScopePushTop(%struct._CXXToken* %t) #0 {
entry:
  %t.addr = alloca %struct._CXXToken*, align 8
  store %struct._CXXToken* %t, %struct._CXXToken** %t.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  %0 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** @g_pScope, align 8
  %1 = load %struct._CXXToken*, %struct._CXXToken** %t.addr, align 8
  call void @cxxTokenChainAppend(%struct._CXXTokenChain* %0, %struct._CXXToken* %1)
  store i8 1, i8* @g_bScopeNameDirty, align 1
  ret void
}

declare void @cxxTokenChainAppend(%struct._CXXTokenChain*, %struct._CXXToken*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct._CXXToken* @cxxScopeTakeTop() #0 {
entry:
  %t = alloca %struct._CXXToken*, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** @g_pScope, align 8
  %call = call %struct._CXXToken* @cxxTokenChainTakeLast(%struct._CXXTokenChain* %0)
  store %struct._CXXToken* %call, %struct._CXXToken** %t, align 8
  store i8 1, i8* @g_bScopeNameDirty, align 1
  %1 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  ret %struct._CXXToken* %1
}

declare %struct._CXXToken* @cxxTokenChainTakeLast(%struct._CXXTokenChain*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @cxxScopePush(%struct._CXXToken* %t, i32 %eScopeType, i32 %eInitialAccess) #0 {
entry:
  %t.addr = alloca %struct._CXXToken*, align 8
  %eScopeType.addr = alloca i32, align 4
  %eInitialAccess.addr = alloca i32, align 4
  store %struct._CXXToken* %t, %struct._CXXToken** %t.addr, align 8
  store i32 %eScopeType, i32* %eScopeType.addr, align 4
  store i32 %eInitialAccess, i32* %eInitialAccess.addr, align 4
  %0 = load i32, i32* %eScopeType.addr, align 4
  %conv = trunc i32 %0 to i8
  %1 = load %struct._CXXToken*, %struct._CXXToken** %t.addr, align 8
  %uInternalScopeType = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %1, i32 0, i32 9
  store i8 %conv, i8* %uInternalScopeType, align 8
  %2 = load i32, i32* %eInitialAccess.addr, align 4
  %conv1 = trunc i32 %2 to i8
  %3 = load %struct._CXXToken*, %struct._CXXToken** %t.addr, align 8
  %uInternalScopeAccess = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %3, i32 0, i32 10
  store i8 %conv1, i8* %uInternalScopeAccess, align 1
  %4 = load %struct._CXXToken*, %struct._CXXToken** %t.addr, align 8
  call void @cxxScopePushTop(%struct._CXXToken* %4)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @cxxScopePop() #0 {
entry:
  %call = call %struct._CXXToken* @cxxScopeTakeTop()
  call void @cxxTokenDestroy(%struct._CXXToken* %call)
  ret void
}

declare void @cxxTokenDestroy(%struct._CXXToken*) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 10.0.0 (https://github.com/holzschu/clang.git 0cfc630fbdb62e96720b611a57123ef3eb13e297) (https://github.com/holzschu/llvm.git 0d8a71e39b28502c24718f7e74b5acbcfe36dfe0)"}
