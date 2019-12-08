; ModuleID = 'vstring.c'
source_filename = "vstring.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-ios11.0.0"

%struct.sVString = type { i64, i64, i8* }
%struct.sTrashBox = type opaque

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @vStringResize(%struct.sVString* %string, i64 %newSize) #0 {
entry:
  %string.addr = alloca %struct.sVString*, align 8
  %newSize.addr = alloca i64, align 8
  %size = alloca i64, align 8
  store %struct.sVString* %string, %struct.sVString** %string.addr, align 8
  store i64 %newSize, i64* %newSize.addr, align 8
  store i64 32, i64* %size, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %size, align 8
  %1 = load i64, i64* %newSize.addr, align 8
  %cmp = icmp ult i64 %0, %1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i64, i64* %size, align 8
  %mul = mul i64 %2, 2
  store i64 %mul, i64* %size, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %3 = load i64, i64* %size, align 8
  %4 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %size1 = getelementptr inbounds %struct.sVString, %struct.sVString* %4, i32 0, i32 1
  %5 = load i64, i64* %size1, align 8
  %cmp2 = icmp ugt i64 %3, %5
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %6 = load i64, i64* %size, align 8
  %7 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %size3 = getelementptr inbounds %struct.sVString, %struct.sVString* %7, i32 0, i32 1
  store i64 %6, i64* %size3, align 8
  %8 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %8, i32 0, i32 2
  %9 = load i8*, i8** %buffer, align 8
  %10 = load i64, i64* %size, align 8
  %mul4 = mul i64 %10, 1
  %call = call i8* @eRealloc(i8* %9, i64 %mul4)
  %11 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %buffer5 = getelementptr inbounds %struct.sVString, %struct.sVString* %11, i32 0, i32 2
  store i8* %call, i8** %buffer5, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  ret void
}

declare i8* @eRealloc(i8*, i64) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @vStringTruncate(%struct.sVString* %string, i64 %length) #0 {
entry:
  %string.addr = alloca %struct.sVString*, align 8
  %length.addr = alloca i64, align 8
  store %struct.sVString* %string, %struct.sVString** %string.addr, align 8
  store i64 %length, i64* %length.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load i64, i64* %length.addr, align 8
  %1 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %length1 = getelementptr inbounds %struct.sVString, %struct.sVString* %1, i32 0, i32 0
  store i64 %0, i64* %length1, align 8
  %2 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %2, i32 0, i32 2
  %3 = load i8*, i8** %buffer, align 8
  %4 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %length2 = getelementptr inbounds %struct.sVString, %struct.sVString* %4, i32 0, i32 0
  %5 = load i64, i64* %length2, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %5
  store i8 0, i8* %arrayidx, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @vStringDelete(%struct.sVString* %string) #0 {
entry:
  %string.addr = alloca %struct.sVString*, align 8
  store %struct.sVString* %string, %struct.sVString** %string.addr, align 8
  %0 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %cmp = icmp ne %struct.sVString* %0, null
  br i1 %cmp, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %1 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %1, i32 0, i32 2
  %2 = load i8*, i8** %buffer, align 8
  %cmp1 = icmp ne i8* %2, null
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %3 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %buffer3 = getelementptr inbounds %struct.sVString, %struct.sVString* %3, i32 0, i32 2
  %4 = load i8*, i8** %buffer3, align 8
  call void @eFree(i8* %4)
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %5 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %6 = bitcast %struct.sVString* %5 to i8*
  call void @eFree(i8* %6)
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry
  ret void
}

declare void @eFree(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sVString* @vStringNew() #0 {
entry:
  %string = alloca %struct.sVString*, align 8
  %vStringClear_s = alloca %struct.sVString*, align 8
  %call = call i8* @eMalloc(i64 24)
  %0 = bitcast i8* %call to %struct.sVString*
  store %struct.sVString* %0, %struct.sVString** %string, align 8
  %1 = load %struct.sVString*, %struct.sVString** %string, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %1, i32 0, i32 0
  store i64 0, i64* %length, align 8
  %2 = load %struct.sVString*, %struct.sVString** %string, align 8
  %size = getelementptr inbounds %struct.sVString, %struct.sVString* %2, i32 0, i32 1
  store i64 32, i64* %size, align 8
  %3 = load %struct.sVString*, %struct.sVString** %string, align 8
  %size1 = getelementptr inbounds %struct.sVString, %struct.sVString* %3, i32 0, i32 1
  %4 = load i64, i64* %size1, align 8
  %mul = mul i64 %4, 1
  %call2 = call i8* @eMalloc(i64 %mul)
  %5 = load %struct.sVString*, %struct.sVString** %string, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %5, i32 0, i32 2
  store i8* %call2, i8** %buffer, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %6 = load %struct.sVString*, %struct.sVString** %string, align 8
  store %struct.sVString* %6, %struct.sVString** %vStringClear_s, align 8
  %7 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %length3 = getelementptr inbounds %struct.sVString, %struct.sVString* %7, i32 0, i32 0
  store i64 0, i64* %length3, align 8
  %8 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %buffer4 = getelementptr inbounds %struct.sVString, %struct.sVString* %8, i32 0, i32 2
  %9 = load i8*, i8** %buffer4, align 8
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 0
  store i8 0, i8* %arrayidx, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  %10 = load %struct.sVString*, %struct.sVString** %string, align 8
  ret %struct.sVString* %10
}

declare i8* @eMalloc(i64) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sVString* @vStringNewCopy(%struct.sVString* %string) #0 {
entry:
  %string.addr = alloca %struct.sVString*, align 8
  %vs = alloca %struct.sVString*, align 8
  store %struct.sVString* %string, %struct.sVString** %string.addr, align 8
  %call = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call, %struct.sVString** %vs, align 8
  %0 = load %struct.sVString*, %struct.sVString** %vs, align 8
  %1 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %1, i32 0, i32 2
  %2 = load i8*, i8** %buffer, align 8
  call void @vStringCatS(%struct.sVString* %0, i8* %2)
  %3 = load %struct.sVString*, %struct.sVString** %vs, align 8
  ret %struct.sVString* %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @vStringCatS(%struct.sVString* %string, i8* %s) #0 {
entry:
  %string.addr = alloca %struct.sVString*, align 8
  %s.addr = alloca i8*, align 8
  %len = alloca i64, align 8
  store %struct.sVString* %string, %struct.sVString** %string.addr, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i64 @strlen(i8* %0)
  store i64 %call, i64* %len, align 8
  %1 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %2 = load i8*, i8** %s.addr, align 8
  %3 = load i64, i64* %len, align 8
  call void @stringCat(%struct.sVString* %1, i8* %2, i64 %3)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sVString* @vStringNewInit(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %vs = alloca %struct.sVString*, align 8
  store i8* %s, i8** %s.addr, align 8
  %call = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call, %struct.sVString** %vs, align 8
  %0 = load %struct.sVString*, %struct.sVString** %vs, align 8
  %1 = load i8*, i8** %s.addr, align 8
  call void @vStringCatS(%struct.sVString* %0, i8* %1)
  %2 = load %struct.sVString*, %struct.sVString** %vs, align 8
  ret %struct.sVString* %2
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @vStringNCat(%struct.sVString* %string, %struct.sVString* %s, i64 %length) #0 {
entry:
  %string.addr = alloca %struct.sVString*, align 8
  %s.addr = alloca %struct.sVString*, align 8
  %length.addr = alloca i64, align 8
  %len = alloca i64, align 8
  store %struct.sVString* %string, %struct.sVString** %string.addr, align 8
  store %struct.sVString* %s, %struct.sVString** %s.addr, align 8
  store i64 %length, i64* %length.addr, align 8
  %0 = load %struct.sVString*, %struct.sVString** %s.addr, align 8
  %length1 = getelementptr inbounds %struct.sVString, %struct.sVString* %0, i32 0, i32 0
  %1 = load i64, i64* %length1, align 8
  store i64 %1, i64* %len, align 8
  %2 = load i64, i64* %len, align 8
  %3 = load i64, i64* %length.addr, align 8
  %cmp = icmp ult i64 %2, %3
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load i64, i64* %len, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %5 = load i64, i64* %length.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %4, %cond.true ], [ %5, %cond.false ]
  store i64 %cond, i64* %len, align 8
  %6 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %7 = load %struct.sVString*, %struct.sVString** %s.addr, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %7, i32 0, i32 2
  %8 = load i8*, i8** %buffer, align 8
  %9 = load i64, i64* %len, align 8
  call void @stringCat(%struct.sVString* %6, i8* %8, i64 %9)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @stringCat(%struct.sVString* %string, i8* %s, i64 %length) #0 {
entry:
  %string.addr = alloca %struct.sVString*, align 8
  %s.addr = alloca i8*, align 8
  %length.addr = alloca i64, align 8
  store %struct.sVString* %string, %struct.sVString** %string.addr, align 8
  store i8* %s, i8** %s.addr, align 8
  store i64 %length, i64* %length.addr, align 8
  %0 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %length1 = getelementptr inbounds %struct.sVString, %struct.sVString* %0, i32 0, i32 0
  %1 = load i64, i64* %length1, align 8
  %2 = load i64, i64* %length.addr, align 8
  %add = add i64 %1, %2
  %add2 = add i64 %add, 1
  %3 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %size = getelementptr inbounds %struct.sVString, %struct.sVString* %3, i32 0, i32 1
  %4 = load i64, i64* %size, align 8
  %cmp = icmp ugt i64 %add2, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %6 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %length3 = getelementptr inbounds %struct.sVString, %struct.sVString* %6, i32 0, i32 0
  %7 = load i64, i64* %length3, align 8
  %8 = load i64, i64* %length.addr, align 8
  %add4 = add i64 %7, %8
  %add5 = add i64 %add4, 1
  call void @vStringResize(%struct.sVString* %5, i64 %add5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %9, i32 0, i32 2
  %10 = load i8*, i8** %buffer, align 8
  %11 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %length6 = getelementptr inbounds %struct.sVString, %struct.sVString* %11, i32 0, i32 0
  %12 = load i64, i64* %length6, align 8
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 %12
  %13 = load i8*, i8** %s.addr, align 8
  %14 = load i64, i64* %length.addr, align 8
  %call = call i8* @strncpy(i8* %add.ptr, i8* %13, i64 %14)
  %15 = load i64, i64* %length.addr, align 8
  %16 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %length7 = getelementptr inbounds %struct.sVString, %struct.sVString* %16, i32 0, i32 0
  %17 = load i64, i64* %length7, align 8
  %add8 = add i64 %17, %15
  store i64 %add8, i64* %length7, align 8
  %18 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  call void @vStringPut(%struct.sVString* %18, i32 0)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @vStringNCatS(%struct.sVString* %string, i8* %s, i64 %length) #0 {
entry:
  %string.addr = alloca %struct.sVString*, align 8
  %s.addr = alloca i8*, align 8
  %length.addr = alloca i64, align 8
  %len = alloca i64, align 8
  store %struct.sVString* %string, %struct.sVString** %string.addr, align 8
  store i8* %s, i8** %s.addr, align 8
  store i64 %length, i64* %length.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i64 @strlen(i8* %0)
  store i64 %call, i64* %len, align 8
  %1 = load i64, i64* %len, align 8
  %2 = load i64, i64* %length.addr, align 8
  %cmp = icmp ult i64 %1, %2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load i64, i64* %len, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load i64, i64* %length.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %3, %cond.true ], [ %4, %cond.false ]
  store i64 %cond, i64* %len, align 8
  %5 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %6 = load i8*, i8** %s.addr, align 8
  %7 = load i64, i64* %len, align 8
  call void @stringCat(%struct.sVString* %5, i8* %6, i64 %7)
  ret void
}

declare i64 @strlen(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @vStringCat(%struct.sVString* %string, %struct.sVString* %s) #0 {
entry:
  %string.addr = alloca %struct.sVString*, align 8
  %s.addr = alloca %struct.sVString*, align 8
  %len = alloca i64, align 8
  store %struct.sVString* %string, %struct.sVString** %string.addr, align 8
  store %struct.sVString* %s, %struct.sVString** %s.addr, align 8
  %0 = load %struct.sVString*, %struct.sVString** %s.addr, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %0, i32 0, i32 0
  %1 = load i64, i64* %length, align 8
  store i64 %1, i64* %len, align 8
  %2 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %3 = load %struct.sVString*, %struct.sVString** %s.addr, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %3, i32 0, i32 2
  %4 = load i8*, i8** %buffer, align 8
  %5 = load i64, i64* %len, align 8
  call void @stringCat(%struct.sVString* %2, i8* %4, i64 %5)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @vStringStripNewline(%struct.sVString* %string) #0 {
entry:
  %string.addr = alloca %struct.sVString*, align 8
  %final = alloca i64, align 8
  store %struct.sVString* %string, %struct.sVString** %string.addr, align 8
  %0 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %0, i32 0, i32 0
  %1 = load i64, i64* %length, align 8
  %sub = sub i64 %1, 1
  store i64 %sub, i64* %final, align 8
  %2 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %length1 = getelementptr inbounds %struct.sVString, %struct.sVString* %2, i32 0, i32 0
  %3 = load i64, i64* %length1, align 8
  %cmp = icmp eq i64 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end8

if.end:                                           ; preds = %entry
  %4 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %4, i32 0, i32 2
  %5 = load i8*, i8** %buffer, align 8
  %6 = load i64, i64* %final, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %6
  %7 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %7 to i32
  %cmp2 = icmp eq i32 %conv, 10
  br i1 %cmp2, label %if.then4, label %if.end8

if.then4:                                         ; preds = %if.end
  %8 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %buffer5 = getelementptr inbounds %struct.sVString, %struct.sVString* %8, i32 0, i32 2
  %9 = load i8*, i8** %buffer5, align 8
  %10 = load i64, i64* %final, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %9, i64 %10
  store i8 0, i8* %arrayidx6, align 1
  %11 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %length7 = getelementptr inbounds %struct.sVString, %struct.sVString* %11, i32 0, i32 0
  %12 = load i64, i64* %length7, align 8
  %dec = add i64 %12, -1
  store i64 %dec, i64* %length7, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.then, %if.then4, %if.end
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @vStringStripLeading(%struct.sVString* %string) #0 {
entry:
  %string.addr = alloca %struct.sVString*, align 8
  %n = alloca i64, align 8
  store %struct.sVString* %string, %struct.sVString** %string.addr, align 8
  store i64 0, i64* %n, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %n, align 8
  %1 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %1, i32 0, i32 0
  %2 = load i64, i64* %length, align 8
  %cmp = icmp ult i64 %0, %2
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %3 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %3, i32 0, i32 2
  %4 = load i8*, i8** %buffer, align 8
  %5 = load i64, i64* %n, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %5
  %6 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %6 to i32
  %call = call i32 @isspace(i32 %conv) #4
  %tobool = icmp ne i32 %call, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %7 = phi i1 [ false, %while.cond ], [ %tobool, %land.rhs ]
  br i1 %7, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %8 = load i64, i64* %n, align 8
  %inc = add i64 %8, 1
  store i64 %inc, i64* %n, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %9 = load i64, i64* %n, align 8
  %cmp1 = icmp ugt i64 %9, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %10 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %buffer3 = getelementptr inbounds %struct.sVString, %struct.sVString* %10, i32 0, i32 2
  %11 = load i8*, i8** %buffer3, align 8
  %12 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %buffer4 = getelementptr inbounds %struct.sVString, %struct.sVString* %12, i32 0, i32 2
  %13 = load i8*, i8** %buffer4, align 8
  %14 = load i64, i64* %n, align 8
  %add.ptr = getelementptr inbounds i8, i8* %13, i64 %14
  %15 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %length5 = getelementptr inbounds %struct.sVString, %struct.sVString* %15, i32 0, i32 0
  %16 = load i64, i64* %length5, align 8
  %17 = load i64, i64* %n, align 8
  %sub = sub i64 %16, %17
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %add.ptr, i64 %sub, i1 false)
  %18 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %19 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %length6 = getelementptr inbounds %struct.sVString, %struct.sVString* %19, i32 0, i32 0
  %20 = load i64, i64* %length6, align 8
  %21 = load i64, i64* %n, align 8
  %sub7 = sub i64 %20, %21
  call void @vStringTruncate(%struct.sVString* %18, i64 %sub7)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @isspace(i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @vStringStripTrailing(%struct.sVString* %string) #0 {
entry:
  %string.addr = alloca %struct.sVString*, align 8
  store %struct.sVString* %string, %struct.sVString** %string.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %0, i32 0, i32 0
  %1 = load i64, i64* %length, align 8
  %cmp = icmp ugt i64 %1, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %2 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %2, i32 0, i32 2
  %3 = load i8*, i8** %buffer, align 8
  %4 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %length1 = getelementptr inbounds %struct.sVString, %struct.sVString* %4, i32 0, i32 0
  %5 = load i64, i64* %length1, align 8
  %sub = sub i64 %5, 1
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %sub
  %6 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %6 to i32
  %call = call i32 @isspace(i32 %conv) #4
  %tobool = icmp ne i32 %call, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %7 = phi i1 [ false, %while.cond ], [ %tobool, %land.rhs ]
  br i1 %7, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %8 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %length2 = getelementptr inbounds %struct.sVString, %struct.sVString* %8, i32 0, i32 0
  %9 = load i64, i64* %length2, align 8
  %dec = add i64 %9, -1
  store i64 %dec, i64* %length2, align 8
  %10 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %buffer3 = getelementptr inbounds %struct.sVString, %struct.sVString* %10, i32 0, i32 2
  %11 = load i8*, i8** %buffer3, align 8
  %12 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %length4 = getelementptr inbounds %struct.sVString, %struct.sVString* %12, i32 0, i32 0
  %13 = load i64, i64* %length4, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %11, i64 %13
  store i8 0, i8* %arrayidx5, align 1
  br label %while.cond

while.end:                                        ; preds = %land.end
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @vStringChop(%struct.sVString* %string) #0 {
entry:
  %string.addr = alloca %struct.sVString*, align 8
  store %struct.sVString* %string, %struct.sVString** %string.addr, align 8
  %0 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %0, i32 0, i32 0
  %1 = load i64, i64* %length, align 8
  %cmp = icmp ugt i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %length1 = getelementptr inbounds %struct.sVString, %struct.sVString* %2, i32 0, i32 0
  %3 = load i64, i64* %length1, align 8
  %dec = add i64 %3, -1
  store i64 %dec, i64* %length1, align 8
  %4 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %4, i32 0, i32 2
  %5 = load i8*, i8** %buffer, align 8
  %6 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %length2 = getelementptr inbounds %struct.sVString, %struct.sVString* %6, i32 0, i32 0
  %7 = load i64, i64* %length2, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %7
  store i8 0, i8* %arrayidx, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @vStringCopy(%struct.sVString* %string, %struct.sVString* %s) #0 {
entry:
  %string.addr = alloca %struct.sVString*, align 8
  %s.addr = alloca %struct.sVString*, align 8
  %vStringClear_s = alloca %struct.sVString*, align 8
  store %struct.sVString* %string, %struct.sVString** %string.addr, align 8
  store %struct.sVString* %s, %struct.sVString** %s.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
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
  %4 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %5 = load %struct.sVString*, %struct.sVString** %s.addr, align 8
  call void @vStringCat(%struct.sVString* %4, %struct.sVString* %5)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @vStringCopyS(%struct.sVString* %string, i8* %s) #0 {
entry:
  %string.addr = alloca %struct.sVString*, align 8
  %s.addr = alloca i8*, align 8
  %vStringClear_s = alloca %struct.sVString*, align 8
  store %struct.sVString* %string, %struct.sVString** %string.addr, align 8
  store i8* %s, i8** %s.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
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
  %4 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %5 = load i8*, i8** %s.addr, align 8
  call void @vStringCatS(%struct.sVString* %4, i8* %5)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @vStringNCopy(%struct.sVString* %string, %struct.sVString* %s, i64 %length) #0 {
entry:
  %string.addr = alloca %struct.sVString*, align 8
  %s.addr = alloca %struct.sVString*, align 8
  %length.addr = alloca i64, align 8
  %vStringClear_s = alloca %struct.sVString*, align 8
  store %struct.sVString* %string, %struct.sVString** %string.addr, align 8
  store %struct.sVString* %s, %struct.sVString** %s.addr, align 8
  store i64 %length, i64* %length.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  store %struct.sVString* %0, %struct.sVString** %vStringClear_s, align 8
  %1 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %length1 = getelementptr inbounds %struct.sVString, %struct.sVString* %1, i32 0, i32 0
  store i64 0, i64* %length1, align 8
  %2 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %2, i32 0, i32 2
  %3 = load i8*, i8** %buffer, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 0
  store i8 0, i8* %arrayidx, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  %4 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %5 = load %struct.sVString*, %struct.sVString** %s.addr, align 8
  %6 = load i64, i64* %length.addr, align 8
  call void @vStringNCat(%struct.sVString* %4, %struct.sVString* %5, i64 %6)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @vStringNCopyS(%struct.sVString* %string, i8* %s, i64 %length) #0 {
entry:
  %string.addr = alloca %struct.sVString*, align 8
  %s.addr = alloca i8*, align 8
  %length.addr = alloca i64, align 8
  %vStringClear_s = alloca %struct.sVString*, align 8
  store %struct.sVString* %string, %struct.sVString** %string.addr, align 8
  store i8* %s, i8** %s.addr, align 8
  store i64 %length, i64* %length.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  store %struct.sVString* %0, %struct.sVString** %vStringClear_s, align 8
  %1 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %length1 = getelementptr inbounds %struct.sVString, %struct.sVString* %1, i32 0, i32 0
  store i64 0, i64* %length1, align 8
  %2 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %2, i32 0, i32 2
  %3 = load i8*, i8** %buffer, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 0
  store i8 0, i8* %arrayidx, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  %4 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %5 = load i8*, i8** %s.addr, align 8
  %6 = load i64, i64* %length.addr, align 8
  call void @vStringNCatS(%struct.sVString* %4, i8* %5, i64 %6)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @vStringCopyToLower(%struct.sVString* %dest, %struct.sVString* %src) #0 {
entry:
  %dest.addr = alloca %struct.sVString*, align 8
  %src.addr = alloca %struct.sVString*, align 8
  %length = alloca i64, align 8
  %s = alloca i8*, align 8
  %d = alloca i8*, align 8
  %i = alloca i64, align 8
  %c = alloca i32, align 4
  store %struct.sVString* %dest, %struct.sVString** %dest.addr, align 8
  store %struct.sVString* %src, %struct.sVString** %src.addr, align 8
  %0 = load %struct.sVString*, %struct.sVString** %src.addr, align 8
  %length1 = getelementptr inbounds %struct.sVString, %struct.sVString* %0, i32 0, i32 0
  %1 = load i64, i64* %length1, align 8
  store i64 %1, i64* %length, align 8
  %2 = load %struct.sVString*, %struct.sVString** %src.addr, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %2, i32 0, i32 2
  %3 = load i8*, i8** %buffer, align 8
  store i8* %3, i8** %s, align 8
  %4 = load %struct.sVString*, %struct.sVString** %dest.addr, align 8
  %size = getelementptr inbounds %struct.sVString, %struct.sVString* %4, i32 0, i32 1
  %5 = load i64, i64* %size, align 8
  %6 = load %struct.sVString*, %struct.sVString** %src.addr, align 8
  %size2 = getelementptr inbounds %struct.sVString, %struct.sVString* %6, i32 0, i32 1
  %7 = load i64, i64* %size2, align 8
  %cmp = icmp ult i64 %5, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct.sVString*, %struct.sVString** %dest.addr, align 8
  %9 = load %struct.sVString*, %struct.sVString** %src.addr, align 8
  %size3 = getelementptr inbounds %struct.sVString, %struct.sVString* %9, i32 0, i32 1
  %10 = load i64, i64* %size3, align 8
  call void @vStringResize(%struct.sVString* %8, i64 %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load %struct.sVString*, %struct.sVString** %dest.addr, align 8
  %buffer4 = getelementptr inbounds %struct.sVString, %struct.sVString* %11, i32 0, i32 2
  %12 = load i8*, i8** %buffer4, align 8
  store i8* %12, i8** %d, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %13 = load i64, i64* %i, align 8
  %14 = load i64, i64* %length, align 8
  %cmp5 = icmp ult i64 %13, %14
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load i8*, i8** %s, align 8
  %16 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds i8, i8* %15, i64 %16
  %17 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %17 to i32
  store i32 %conv, i32* %c, align 4
  %18 = load i32, i32* %c, align 4
  %call = call i32 @tolower(i32 %18) #4
  %conv6 = trunc i32 %call to i8
  %19 = load i8*, i8** %d, align 8
  %20 = load i64, i64* %i, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %19, i64 %20
  store i8 %conv6, i8* %arrayidx7, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load i64, i64* %i, align 8
  %inc = add i64 %21, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load i8*, i8** %d, align 8
  %23 = load i64, i64* %i, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %22, i64 %23
  store i8 0, i8* %arrayidx8, align 1
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @tolower(i32) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @vStringSetLength(%struct.sVString* %string) #0 {
entry:
  %string.addr = alloca %struct.sVString*, align 8
  store %struct.sVString* %string, %struct.sVString** %string.addr, align 8
  %0 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %0, i32 0, i32 2
  %1 = load i8*, i8** %buffer, align 8
  %call = call i64 @strlen(i8* %1)
  %2 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %2, i32 0, i32 0
  store i64 %call, i64* %length, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sVString* @vStringNewOwn(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %r = alloca %struct.sVString*, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %call = call %struct.sVString* @vStringNewInit(i8* %0)
  store %struct.sVString* %call, %struct.sVString** %r, align 8
  %1 = load i8*, i8** %s.addr, align 8
  call void @eFree(i8* %1)
  %2 = load %struct.sVString*, %struct.sVString** %r, align 8
  ret %struct.sVString* %2
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @vStringDeleteUnwrap(%struct.sVString* %string) #0 {
entry:
  %string.addr = alloca %struct.sVString*, align 8
  %buffer = alloca i8*, align 8
  store %struct.sVString* %string, %struct.sVString** %string.addr, align 8
  store i8* null, i8** %buffer, align 8
  %0 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %cmp = icmp ne %struct.sVString* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %buffer1 = getelementptr inbounds %struct.sVString, %struct.sVString* %1, i32 0, i32 2
  %2 = load i8*, i8** %buffer1, align 8
  store i8* %2, i8** %buffer, align 8
  %3 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %buffer2 = getelementptr inbounds %struct.sVString, %struct.sVString* %3, i32 0, i32 2
  store i8* null, i8** %buffer2, align 8
  %4 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %size = getelementptr inbounds %struct.sVString, %struct.sVString* %4, i32 0, i32 1
  store i64 0, i64* %size, align 8
  %5 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %5, i32 0, i32 0
  store i64 0, i64* %length, align 8
  %6 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %7 = bitcast %struct.sVString* %6 to i8*
  call void @eFree(i8* %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i8*, i8** %buffer, align 8
  ret i8* %8
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @vStringCatSWithEscaping(%struct.sVString* %b, i8* %s) #0 {
entry:
  %b.addr = alloca %struct.sVString*, align 8
  %s.addr = alloca i8*, align 8
  %c = alloca i32, align 4
  store %struct.sVString* %b, %struct.sVString** %b.addr, align 8
  store i8* %s, i8** %s.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8*, i8** %s.addr, align 8
  %1 = load i8, i8* %0, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %s.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  store i32 %conv, i32* %c, align 4
  %4 = load i32, i32* %c, align 4
  %cmp = icmp sgt i32 %4, 0
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %for.body
  %5 = load i32, i32* %c, align 4
  %cmp2 = icmp sle i32 %5, 31
  br i1 %cmp2, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %for.body
  %6 = load i32, i32* %c, align 4
  %cmp4 = icmp eq i32 %6, 127
  br i1 %cmp4, label %if.then, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %7 = load i32, i32* %c, align 4
  %cmp7 = icmp eq i32 %7, 92
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false6, %lor.lhs.false, %land.lhs.true
  %8 = load %struct.sVString*, %struct.sVString** %b.addr, align 8
  call void @vStringPut(%struct.sVString* %8, i32 92)
  %9 = load i32, i32* %c, align 4
  switch i32 %9, label %sw.default [
    i32 7, label %sw.bb
    i32 8, label %sw.bb9
    i32 9, label %sw.bb10
    i32 10, label %sw.bb11
    i32 11, label %sw.bb12
    i32 12, label %sw.bb13
    i32 13, label %sw.bb14
    i32 92, label %sw.bb15
  ]

sw.bb:                                            ; preds = %if.then
  store i32 97, i32* %c, align 4
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.then
  store i32 98, i32* %c, align 4
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.then
  store i32 116, i32* %c, align 4
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.then
  store i32 110, i32* %c, align 4
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.then
  store i32 118, i32* %c, align 4
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.then
  store i32 102, i32* %c, align 4
  br label %sw.epilog

sw.bb14:                                          ; preds = %if.then
  store i32 114, i32* %c, align 4
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.then
  store i32 92, i32* %c, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.then
  %10 = load %struct.sVString*, %struct.sVString** %b.addr, align 8
  call void @vStringPut(%struct.sVString* %10, i32 120)
  %11 = load %struct.sVString*, %struct.sVString** %b.addr, align 8
  %12 = load i32, i32* %c, align 4
  %and = and i32 %12, 240
  %shr = ashr i32 %and, 4
  %call = call signext i8 @valueToXDigit(i32 %shr)
  %conv16 = sext i8 %call to i32
  call void @vStringPut(%struct.sVString* %11, i32 %conv16)
  %13 = load %struct.sVString*, %struct.sVString** %b.addr, align 8
  %14 = load i32, i32* %c, align 4
  %and17 = and i32 %14, 15
  %call18 = call signext i8 @valueToXDigit(i32 %and17)
  %conv19 = sext i8 %call18 to i32
  call void @vStringPut(%struct.sVString* %13, i32 %conv19)
  br label %for.inc

sw.epilog:                                        ; preds = %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %lor.lhs.false6
  %15 = load %struct.sVString*, %struct.sVString** %b.addr, align 8
  %16 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %15, i32 %16)
  br label %for.inc

for.inc:                                          ; preds = %if.end, %sw.default
  %17 = load i8*, i8** %s.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

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

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal signext i8 @valueToXDigit(i32 %v) #0 {
entry:
  %retval = alloca i8, align 1
  %v.addr = alloca i32, align 4
  store i32 %v, i32* %v.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load i32, i32* %v.addr, align 4
  %cmp = icmp sge i32 %0, 10
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.end
  %1 = load i32, i32* %v.addr, align 4
  %sub = sub nsw i32 %1, 10
  %add = add nsw i32 65, %sub
  %conv = trunc i32 %add to i8
  store i8 %conv, i8* %retval, align 1
  br label %return

if.else:                                          ; preds = %do.end
  %2 = load i32, i32* %v.addr, align 4
  %add1 = add nsw i32 48, %2
  %conv2 = trunc i32 %add1 to i8
  store i8 %conv2, i8* %retval, align 1
  br label %return

return:                                           ; preds = %if.else, %if.then
  %3 = load i8, i8* %retval, align 1
  ret i8 %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @vStringCatSWithEscapingAsPattern(%struct.sVString* %output, i8* %input) #0 {
entry:
  %output.addr = alloca %struct.sVString*, align 8
  %input.addr = alloca i8*, align 8
  store %struct.sVString* %output, %struct.sVString** %output.addr, align 8
  store i8* %input, i8** %input.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %0 = load i8*, i8** %input.addr, align 8
  %1 = load i8, i8* %0, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i8*, i8** %input.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  switch i32 %conv, label %sw.default [
    i32 92, label %sw.bb
    i32 47, label %sw.bb1
  ]

sw.bb:                                            ; preds = %while.body
  %4 = load %struct.sVString*, %struct.sVString** %output.addr, align 8
  call void @vStringPut(%struct.sVString* %4, i32 92)
  %5 = load %struct.sVString*, %struct.sVString** %output.addr, align 8
  call void @vStringPut(%struct.sVString* %5, i32 92)
  br label %sw.epilog

sw.bb1:                                           ; preds = %while.body
  %6 = load %struct.sVString*, %struct.sVString** %output.addr, align 8
  call void @vStringPut(%struct.sVString* %6, i32 92)
  %7 = load %struct.sVString*, %struct.sVString** %output.addr, align 8
  call void @vStringPut(%struct.sVString* %7, i32 47)
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  %8 = load %struct.sVString*, %struct.sVString** %output.addr, align 8
  %9 = load i8*, i8** %input.addr, align 8
  %10 = load i8, i8* %9, align 1
  %conv2 = sext i8 %10 to i32
  call void @vStringPut(%struct.sVString* %8, i32 %conv2)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb1, %sw.bb
  %11 = load i8*, i8** %input.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr, i8** %input.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sVString* @vStringNewOrClear(%struct.sVString* %string) #0 {
entry:
  %retval = alloca %struct.sVString*, align 8
  %string.addr = alloca %struct.sVString*, align 8
  %vStringClear_s = alloca %struct.sVString*, align 8
  store %struct.sVString* %string, %struct.sVString** %string.addr, align 8
  %0 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %tobool = icmp ne %struct.sVString* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %1 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  store %struct.sVString* %1, %struct.sVString** %vStringClear_s, align 8
  %2 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %2, i32 0, i32 0
  store i64 0, i64* %length, align 8
  %3 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %3, i32 0, i32 2
  %4 = load i8*, i8** %buffer, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 0
  store i8 0, i8* %arrayidx, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  %5 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  store %struct.sVString* %5, %struct.sVString** %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %call = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call, %struct.sVString** %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %do.end
  %6 = load %struct.sVString*, %struct.sVString** %retval, align 8
  ret %struct.sVString* %6
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sVString* @vStringNewOrClearWithAutoRelease(%struct.sVString* %string) #0 {
entry:
  %string.addr = alloca %struct.sVString*, align 8
  %r = alloca %struct.sVString*, align 8
  %autoRelease = alloca i8, align 1
  store %struct.sVString* %string, %struct.sVString** %string.addr, align 8
  store i8 0, i8* %autoRelease, align 1
  %0 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %tobool = icmp ne %struct.sVString* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8 1, i8* %autoRelease, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %call = call %struct.sVString* @vStringNewOrClear(%struct.sVString* %1)
  store %struct.sVString* %call, %struct.sVString** %r, align 8
  %2 = load i8, i8* %autoRelease, align 1
  %tobool1 = trunc i8 %2 to i1
  br i1 %tobool1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %3 = load %struct.sVString*, %struct.sVString** %r, align 8
  %4 = bitcast %struct.sVString* %3 to i8*
  %call3 = call i8* @trashBoxPut(%struct.sTrashBox* null, i8* %4, void (i8*)* bitcast (void (%struct.sVString*)* @vStringDelete to void (i8*)*))
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end
  %5 = load %struct.sVString*, %struct.sVString** %r, align 8
  ret %struct.sVString* %5
}

declare i8* @trashBoxPut(%struct.sTrashBox*, i8*, void (i8*)*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @vStringTranslate(%struct.sVString* %string, i8 signext %fromC, i8 signext %toC) #0 {
entry:
  %string.addr = alloca %struct.sVString*, align 8
  %fromC.addr = alloca i8, align 1
  %toC.addr = alloca i8, align 1
  %i = alloca i32, align 4
  store %struct.sVString* %string, %struct.sVString** %string.addr, align 8
  store i8 %fromC, i8* %fromC.addr, align 1
  store i8 %toC, i8* %toC.addr, align 1
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %conv = sext i32 %0 to i64
  %1 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %1, i32 0, i32 0
  %2 = load i64, i64* %length, align 8
  %cmp = icmp ult i64 %conv, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %3, i32 0, i32 2
  %4 = load i8*, i8** %buffer, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1
  %conv2 = sext i8 %6 to i32
  %7 = load i8, i8* %fromC.addr, align 1
  %conv3 = sext i8 %7 to i32
  %cmp4 = icmp eq i32 %conv2, %conv3
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load i8, i8* %toC.addr, align 1
  %9 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %buffer6 = getelementptr inbounds %struct.sVString, %struct.sVString* %9, i32 0, i32 2
  %10 = load i8*, i8** %buffer6, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %11 to i64
  %arrayidx8 = getelementptr inbounds i8, i8* %10, i64 %idxprom7
  store i8 %8, i8* %arrayidx8, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare i8* @strncpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { nounwind readonly }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 10.0.0 (https://github.com/holzschu/clang.git 0cfc630fbdb62e96720b611a57123ef3eb13e297) (https://github.com/holzschu/llvm.git 0d8a71e39b28502c24718f7e74b5acbcfe36dfe0)"}
