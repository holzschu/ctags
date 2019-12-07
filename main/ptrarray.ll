; ModuleID = 'ptrarray.c'
source_filename = "ptrarray.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-ios11.0.0"

%struct.sPtrArray = type { i32, i32, i8**, void (i8*)* }

@ptrArraySortCompareVar = internal global i32 (i8*, i8*)* null, align 8

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sPtrArray* @ptrArrayNew(void (i8*)* %deleteFunc) #0 {
entry:
  %deleteFunc.addr = alloca void (i8*)*, align 8
  %result = alloca %struct.sPtrArray*, align 8
  store void (i8*)* %deleteFunc, void (i8*)** %deleteFunc.addr, align 8
  %call = call i8* @eMalloc(i64 24)
  %0 = bitcast i8* %call to %struct.sPtrArray*
  store %struct.sPtrArray* %0, %struct.sPtrArray** %result, align 8
  %1 = load %struct.sPtrArray*, %struct.sPtrArray** %result, align 8
  %max = getelementptr inbounds %struct.sPtrArray, %struct.sPtrArray* %1, i32 0, i32 0
  store i32 8, i32* %max, align 8
  %2 = load %struct.sPtrArray*, %struct.sPtrArray** %result, align 8
  %count = getelementptr inbounds %struct.sPtrArray, %struct.sPtrArray* %2, i32 0, i32 1
  store i32 0, i32* %count, align 4
  %3 = load %struct.sPtrArray*, %struct.sPtrArray** %result, align 8
  %max1 = getelementptr inbounds %struct.sPtrArray, %struct.sPtrArray* %3, i32 0, i32 0
  %4 = load i32, i32* %max1, align 8
  %conv = zext i32 %4 to i64
  %mul = mul i64 %conv, 8
  %call2 = call i8* @eMalloc(i64 %mul)
  %5 = bitcast i8* %call2 to i8**
  %6 = load %struct.sPtrArray*, %struct.sPtrArray** %result, align 8
  %array = getelementptr inbounds %struct.sPtrArray, %struct.sPtrArray* %6, i32 0, i32 2
  store i8** %5, i8*** %array, align 8
  %7 = load void (i8*)*, void (i8*)** %deleteFunc.addr, align 8
  %8 = load %struct.sPtrArray*, %struct.sPtrArray** %result, align 8
  %deleteFunc3 = getelementptr inbounds %struct.sPtrArray, %struct.sPtrArray* %8, i32 0, i32 3
  store void (i8*)* %7, void (i8*)** %deleteFunc3, align 8
  %9 = load %struct.sPtrArray*, %struct.sPtrArray** %result, align 8
  ret %struct.sPtrArray* %9
}

declare i8* @eMalloc(i64) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @ptrArrayAdd(%struct.sPtrArray* %current, i8* %ptr) #0 {
entry:
  %current.addr = alloca %struct.sPtrArray*, align 8
  %ptr.addr = alloca i8*, align 8
  store %struct.sPtrArray* %current, %struct.sPtrArray** %current.addr, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.sPtrArray*, %struct.sPtrArray** %current.addr, align 8
  %count = getelementptr inbounds %struct.sPtrArray, %struct.sPtrArray* %0, i32 0, i32 1
  %1 = load i32, i32* %count, align 4
  %2 = load %struct.sPtrArray*, %struct.sPtrArray** %current.addr, align 8
  %max = getelementptr inbounds %struct.sPtrArray, %struct.sPtrArray* %2, i32 0, i32 0
  %3 = load i32, i32* %max, align 8
  %cmp = icmp eq i32 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  %4 = load %struct.sPtrArray*, %struct.sPtrArray** %current.addr, align 8
  %max1 = getelementptr inbounds %struct.sPtrArray, %struct.sPtrArray* %4, i32 0, i32 0
  %5 = load i32, i32* %max1, align 8
  %mul = mul i32 %5, 2
  store i32 %mul, i32* %max1, align 8
  %6 = load %struct.sPtrArray*, %struct.sPtrArray** %current.addr, align 8
  %array = getelementptr inbounds %struct.sPtrArray, %struct.sPtrArray* %6, i32 0, i32 2
  %7 = load i8**, i8*** %array, align 8
  %8 = bitcast i8** %7 to i8*
  %9 = load %struct.sPtrArray*, %struct.sPtrArray** %current.addr, align 8
  %max2 = getelementptr inbounds %struct.sPtrArray, %struct.sPtrArray* %9, i32 0, i32 0
  %10 = load i32, i32* %max2, align 8
  %conv = zext i32 %10 to i64
  %mul3 = mul i64 %conv, 8
  %call = call i8* @eRealloc(i8* %8, i64 %mul3)
  %11 = bitcast i8* %call to i8**
  %12 = load %struct.sPtrArray*, %struct.sPtrArray** %current.addr, align 8
  %array4 = getelementptr inbounds %struct.sPtrArray, %struct.sPtrArray* %12, i32 0, i32 2
  store i8** %11, i8*** %array4, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end
  %13 = load i8*, i8** %ptr.addr, align 8
  %14 = load %struct.sPtrArray*, %struct.sPtrArray** %current.addr, align 8
  %array5 = getelementptr inbounds %struct.sPtrArray, %struct.sPtrArray* %14, i32 0, i32 2
  %15 = load i8**, i8*** %array5, align 8
  %16 = load %struct.sPtrArray*, %struct.sPtrArray** %current.addr, align 8
  %count6 = getelementptr inbounds %struct.sPtrArray, %struct.sPtrArray* %16, i32 0, i32 1
  %17 = load i32, i32* %count6, align 4
  %inc = add i32 %17, 1
  store i32 %inc, i32* %count6, align 4
  %idxprom = zext i32 %17 to i64
  %arrayidx = getelementptr inbounds i8*, i8** %15, i64 %idxprom
  store i8* %13, i8** %arrayidx, align 8
  ret void
}

declare i8* @eRealloc(i8*, i64) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @ptrArrayRemoveLast(%struct.sPtrArray* %current) #0 {
entry:
  %current.addr = alloca %struct.sPtrArray*, align 8
  store %struct.sPtrArray* %current, %struct.sPtrArray** %current.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  %0 = load %struct.sPtrArray*, %struct.sPtrArray** %current.addr, align 8
  %count = getelementptr inbounds %struct.sPtrArray, %struct.sPtrArray* %0, i32 0, i32 1
  %1 = load i32, i32* %count, align 4
  %dec = add i32 %1, -1
  store i32 %dec, i32* %count, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @ptrArrayCombine(%struct.sPtrArray* %current, %struct.sPtrArray* %from) #0 {
entry:
  %current.addr = alloca %struct.sPtrArray*, align 8
  %from.addr = alloca %struct.sPtrArray*, align 8
  %i = alloca i32, align 4
  store %struct.sPtrArray* %current, %struct.sPtrArray** %current.addr, align 8
  store %struct.sPtrArray* %from, %struct.sPtrArray** %from.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end2
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.sPtrArray*, %struct.sPtrArray** %from.addr, align 8
  %count = getelementptr inbounds %struct.sPtrArray, %struct.sPtrArray* %1, i32 0, i32 1
  %2 = load i32, i32* %count, align 4
  %cmp = icmp ult i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.sPtrArray*, %struct.sPtrArray** %current.addr, align 8
  %4 = load %struct.sPtrArray*, %struct.sPtrArray** %from.addr, align 8
  %array = getelementptr inbounds %struct.sPtrArray, %struct.sPtrArray* %4, i32 0, i32 2
  %5 = load i8**, i8*** %array, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom = zext i32 %6 to i64
  %arrayidx = getelementptr inbounds i8*, i8** %5, i64 %idxprom
  %7 = load i8*, i8** %arrayidx, align 8
  call void @ptrArrayAdd(%struct.sPtrArray* %3, i8* %7)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load %struct.sPtrArray*, %struct.sPtrArray** %from.addr, align 8
  %count3 = getelementptr inbounds %struct.sPtrArray, %struct.sPtrArray* %9, i32 0, i32 1
  store i32 0, i32* %count3, align 4
  %10 = load %struct.sPtrArray*, %struct.sPtrArray** %from.addr, align 8
  call void @ptrArrayDelete(%struct.sPtrArray* %10)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @ptrArrayDelete(%struct.sPtrArray* %current) #0 {
entry:
  %current.addr = alloca %struct.sPtrArray*, align 8
  store %struct.sPtrArray* %current, %struct.sPtrArray** %current.addr, align 8
  %0 = load %struct.sPtrArray*, %struct.sPtrArray** %current.addr, align 8
  %cmp = icmp ne %struct.sPtrArray* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.sPtrArray*, %struct.sPtrArray** %current.addr, align 8
  call void @ptrArrayClear(%struct.sPtrArray* %1)
  %2 = load %struct.sPtrArray*, %struct.sPtrArray** %current.addr, align 8
  %array = getelementptr inbounds %struct.sPtrArray, %struct.sPtrArray* %2, i32 0, i32 2
  %3 = load i8**, i8*** %array, align 8
  %4 = bitcast i8** %3 to i8*
  call void @eFree(i8* %4)
  %5 = load %struct.sPtrArray*, %struct.sPtrArray** %current.addr, align 8
  %array1 = getelementptr inbounds %struct.sPtrArray, %struct.sPtrArray* %5, i32 0, i32 2
  store i8** null, i8*** %array1, align 8
  %6 = load %struct.sPtrArray*, %struct.sPtrArray** %current.addr, align 8
  %count = getelementptr inbounds %struct.sPtrArray, %struct.sPtrArray* %6, i32 0, i32 1
  store i32 0, i32* %count, align 4
  %7 = load %struct.sPtrArray*, %struct.sPtrArray** %current.addr, align 8
  %max = getelementptr inbounds %struct.sPtrArray, %struct.sPtrArray* %7, i32 0, i32 0
  store i32 0, i32* %max, align 8
  %8 = load %struct.sPtrArray*, %struct.sPtrArray** %current.addr, align 8
  %9 = bitcast %struct.sPtrArray* %8 to i8*
  call void @eFree(i8* %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @ptrArrayCount(%struct.sPtrArray* %current) #0 {
entry:
  %current.addr = alloca %struct.sPtrArray*, align 8
  store %struct.sPtrArray* %current, %struct.sPtrArray** %current.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.sPtrArray*, %struct.sPtrArray** %current.addr, align 8
  %count = getelementptr inbounds %struct.sPtrArray, %struct.sPtrArray* %0, i32 0, i32 1
  %1 = load i32, i32* %count, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @ptrArrayItem(%struct.sPtrArray* %current, i32 %indx) #0 {
entry:
  %current.addr = alloca %struct.sPtrArray*, align 8
  %indx.addr = alloca i32, align 4
  store %struct.sPtrArray* %current, %struct.sPtrArray** %current.addr, align 8
  store i32 %indx, i32* %indx.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.sPtrArray*, %struct.sPtrArray** %current.addr, align 8
  %array = getelementptr inbounds %struct.sPtrArray, %struct.sPtrArray* %0, i32 0, i32 2
  %1 = load i8**, i8*** %array, align 8
  %2 = load i32, i32* %indx.addr, align 4
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 %idxprom
  %3 = load i8*, i8** %arrayidx, align 8
  ret i8* %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @ptrArrayLast(%struct.sPtrArray* %current) #0 {
entry:
  %current.addr = alloca %struct.sPtrArray*, align 8
  store %struct.sPtrArray* %current, %struct.sPtrArray** %current.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  %0 = load %struct.sPtrArray*, %struct.sPtrArray** %current.addr, align 8
  %array = getelementptr inbounds %struct.sPtrArray, %struct.sPtrArray* %0, i32 0, i32 2
  %1 = load i8**, i8*** %array, align 8
  %2 = load %struct.sPtrArray*, %struct.sPtrArray** %current.addr, align 8
  %count = getelementptr inbounds %struct.sPtrArray, %struct.sPtrArray* %2, i32 0, i32 1
  %3 = load i32, i32* %count, align 4
  %sub = sub i32 %3, 1
  %idxprom = zext i32 %sub to i64
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 %idxprom
  %4 = load i8*, i8** %arrayidx, align 8
  ret i8* %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @ptrArrayClear(%struct.sPtrArray* %current) #0 {
entry:
  %current.addr = alloca %struct.sPtrArray*, align 8
  %i = alloca i32, align 4
  store %struct.sPtrArray* %current, %struct.sPtrArray** %current.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.sPtrArray*, %struct.sPtrArray** %current.addr, align 8
  %deleteFunc = getelementptr inbounds %struct.sPtrArray, %struct.sPtrArray* %0, i32 0, i32 3
  %1 = load void (i8*)*, void (i8*)** %deleteFunc, align 8
  %tobool = icmp ne void (i8*)* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, i32* %i, align 4
  %3 = load %struct.sPtrArray*, %struct.sPtrArray** %current.addr, align 8
  %count = getelementptr inbounds %struct.sPtrArray, %struct.sPtrArray* %3, i32 0, i32 1
  %4 = load i32, i32* %count, align 4
  %cmp = icmp ult i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.sPtrArray*, %struct.sPtrArray** %current.addr, align 8
  %deleteFunc1 = getelementptr inbounds %struct.sPtrArray, %struct.sPtrArray* %5, i32 0, i32 3
  %6 = load void (i8*)*, void (i8*)** %deleteFunc1, align 8
  %7 = load %struct.sPtrArray*, %struct.sPtrArray** %current.addr, align 8
  %array = getelementptr inbounds %struct.sPtrArray, %struct.sPtrArray* %7, i32 0, i32 2
  %8 = load i8**, i8*** %array, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom = zext i32 %9 to i64
  %arrayidx = getelementptr inbounds i8*, i8** %8, i64 %idxprom
  %10 = load i8*, i8** %arrayidx, align 8
  call void %6(i8* %10)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %inc = add i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %do.end
  %12 = load %struct.sPtrArray*, %struct.sPtrArray** %current.addr, align 8
  %count2 = getelementptr inbounds %struct.sPtrArray, %struct.sPtrArray* %12, i32 0, i32 1
  store i32 0, i32* %count2, align 4
  ret void
}

declare void @eFree(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @ptrArrayHasTest(%struct.sPtrArray* %current, i1 (i8*, i8*)* %test, i8* %userData) #0 {
entry:
  %current.addr = alloca %struct.sPtrArray*, align 8
  %test.addr = alloca i1 (i8*, i8*)*, align 8
  %userData.addr = alloca i8*, align 8
  %result = alloca i8, align 1
  %i = alloca i32, align 4
  store %struct.sPtrArray* %current, %struct.sPtrArray** %current.addr, align 8
  store i1 (i8*, i8*)* %test, i1 (i8*, i8*)** %test.addr, align 8
  store i8* %userData, i8** %userData.addr, align 8
  store i8 0, i8* %result, align 1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %0 = load i8, i8* %result, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %2 = load %struct.sPtrArray*, %struct.sPtrArray** %current.addr, align 8
  %count = getelementptr inbounds %struct.sPtrArray, %struct.sPtrArray* %2, i32 0, i32 1
  %3 = load i32, i32* %count, align 4
  %cmp = icmp ult i32 %1, %3
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %4 = phi i1 [ false, %for.cond ], [ %cmp, %land.rhs ]
  br i1 %4, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %5 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %test.addr, align 8
  %6 = load %struct.sPtrArray*, %struct.sPtrArray** %current.addr, align 8
  %array = getelementptr inbounds %struct.sPtrArray, %struct.sPtrArray* %6, i32 0, i32 2
  %7 = load i8**, i8*** %array, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom = zext i32 %8 to i64
  %arrayidx = getelementptr inbounds i8*, i8** %7, i64 %idxprom
  %9 = load i8*, i8** %arrayidx, align 8
  %10 = load i8*, i8** %userData.addr, align 8
  %call = call zeroext i1 %5(i8* %9, i8* %10)
  %frombool = zext i1 %call to i8
  store i8 %frombool, i8* %result, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %inc = add i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %12 = load i8, i8* %result, align 1
  %tobool1 = trunc i8 %12 to i1
  ret i1 %tobool1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @ptrArrayHas(%struct.sPtrArray* %current, i8* %ptr) #0 {
entry:
  %current.addr = alloca %struct.sPtrArray*, align 8
  %ptr.addr = alloca i8*, align 8
  store %struct.sPtrArray* %current, %struct.sPtrArray** %current.addr, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  %0 = load %struct.sPtrArray*, %struct.sPtrArray** %current.addr, align 8
  %1 = load i8*, i8** %ptr.addr, align 8
  %call = call zeroext i1 @ptrArrayHasTest(%struct.sPtrArray* %0, i1 (i8*, i8*)* @ptrEq, i8* %1)
  ret i1 %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @ptrEq(i8* %ptr, i8* %userData) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  %userData.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  store i8* %userData, i8** %userData.addr, align 8
  %0 = load i8*, i8** %ptr.addr, align 8
  %1 = load i8*, i8** %userData.addr, align 8
  %cmp = icmp eq i8* %0, %1
  ret i1 %cmp
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @ptrArrayReverse(%struct.sPtrArray* %current) #0 {
entry:
  %current.addr = alloca %struct.sPtrArray*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %tmp = alloca i8*, align 8
  store %struct.sPtrArray* %current, %struct.sPtrArray** %current.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  store i32 0, i32* %i, align 4
  %0 = load %struct.sPtrArray*, %struct.sPtrArray** %current.addr, align 8
  %count = getelementptr inbounds %struct.sPtrArray, %struct.sPtrArray* %0, i32 0, i32 1
  %1 = load i32, i32* %count, align 4
  %sub = sub i32 %1, 1
  store i32 %sub, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %2 = load i32, i32* %i, align 4
  %3 = load %struct.sPtrArray*, %struct.sPtrArray** %current.addr, align 8
  %count1 = getelementptr inbounds %struct.sPtrArray, %struct.sPtrArray* %3, i32 0, i32 1
  %4 = load i32, i32* %count1, align 4
  %div = udiv i32 %4, 2
  %cmp = icmp ult i32 %2, %div
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.sPtrArray*, %struct.sPtrArray** %current.addr, align 8
  %array = getelementptr inbounds %struct.sPtrArray, %struct.sPtrArray* %5, i32 0, i32 2
  %6 = load i8**, i8*** %array, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom = zext i32 %7 to i64
  %arrayidx = getelementptr inbounds i8*, i8** %6, i64 %idxprom
  %8 = load i8*, i8** %arrayidx, align 8
  store i8* %8, i8** %tmp, align 8
  %9 = load %struct.sPtrArray*, %struct.sPtrArray** %current.addr, align 8
  %array2 = getelementptr inbounds %struct.sPtrArray, %struct.sPtrArray* %9, i32 0, i32 2
  %10 = load i8**, i8*** %array2, align 8
  %11 = load i32, i32* %j, align 4
  %idxprom3 = zext i32 %11 to i64
  %arrayidx4 = getelementptr inbounds i8*, i8** %10, i64 %idxprom3
  %12 = load i8*, i8** %arrayidx4, align 8
  %13 = load %struct.sPtrArray*, %struct.sPtrArray** %current.addr, align 8
  %array5 = getelementptr inbounds %struct.sPtrArray, %struct.sPtrArray* %13, i32 0, i32 2
  %14 = load i8**, i8*** %array5, align 8
  %15 = load i32, i32* %i, align 4
  %idxprom6 = zext i32 %15 to i64
  %arrayidx7 = getelementptr inbounds i8*, i8** %14, i64 %idxprom6
  store i8* %12, i8** %arrayidx7, align 8
  %16 = load i8*, i8** %tmp, align 8
  %17 = load %struct.sPtrArray*, %struct.sPtrArray** %current.addr, align 8
  %array8 = getelementptr inbounds %struct.sPtrArray, %struct.sPtrArray* %17, i32 0, i32 2
  %18 = load i8**, i8*** %array8, align 8
  %19 = load i32, i32* %j, align 4
  %idxprom9 = zext i32 %19 to i64
  %arrayidx10 = getelementptr inbounds i8*, i8** %18, i64 %idxprom9
  store i8* %16, i8** %arrayidx10, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %i, align 4
  %inc = add i32 %20, 1
  store i32 %inc, i32* %i, align 4
  %21 = load i32, i32* %j, align 4
  %dec = add i32 %21, -1
  store i32 %dec, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @ptrArrayDeleteItem(%struct.sPtrArray* %current, i32 %indx) #0 {
entry:
  %current.addr = alloca %struct.sPtrArray*, align 8
  %indx.addr = alloca i32, align 4
  %ptr = alloca i8*, align 8
  store %struct.sPtrArray* %current, %struct.sPtrArray** %current.addr, align 8
  store i32 %indx, i32* %indx.addr, align 4
  %0 = load %struct.sPtrArray*, %struct.sPtrArray** %current.addr, align 8
  %array = getelementptr inbounds %struct.sPtrArray, %struct.sPtrArray* %0, i32 0, i32 2
  %1 = load i8**, i8*** %array, align 8
  %2 = load i32, i32* %indx.addr, align 4
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 %idxprom
  %3 = load i8*, i8** %arrayidx, align 8
  store i8* %3, i8** %ptr, align 8
  %4 = load %struct.sPtrArray*, %struct.sPtrArray** %current.addr, align 8
  %deleteFunc = getelementptr inbounds %struct.sPtrArray, %struct.sPtrArray* %4, i32 0, i32 3
  %5 = load void (i8*)*, void (i8*)** %deleteFunc, align 8
  %tobool = icmp ne void (i8*)* %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.sPtrArray*, %struct.sPtrArray** %current.addr, align 8
  %deleteFunc1 = getelementptr inbounds %struct.sPtrArray, %struct.sPtrArray* %6, i32 0, i32 3
  %7 = load void (i8*)*, void (i8*)** %deleteFunc1, align 8
  %8 = load i8*, i8** %ptr, align 8
  call void %7(i8* %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct.sPtrArray*, %struct.sPtrArray** %current.addr, align 8
  %array2 = getelementptr inbounds %struct.sPtrArray, %struct.sPtrArray* %9, i32 0, i32 2
  %10 = load i8**, i8*** %array2, align 8
  %11 = load i32, i32* %indx.addr, align 4
  %idx.ext = zext i32 %11 to i64
  %add.ptr = getelementptr inbounds i8*, i8** %10, i64 %idx.ext
  %12 = bitcast i8** %add.ptr to i8*
  %13 = load %struct.sPtrArray*, %struct.sPtrArray** %current.addr, align 8
  %array3 = getelementptr inbounds %struct.sPtrArray, %struct.sPtrArray* %13, i32 0, i32 2
  %14 = load i8**, i8*** %array3, align 8
  %15 = load i32, i32* %indx.addr, align 4
  %idx.ext4 = zext i32 %15 to i64
  %add.ptr5 = getelementptr inbounds i8*, i8** %14, i64 %idx.ext4
  %add.ptr6 = getelementptr inbounds i8*, i8** %add.ptr5, i64 1
  %16 = bitcast i8** %add.ptr6 to i8*
  %17 = load %struct.sPtrArray*, %struct.sPtrArray** %current.addr, align 8
  %count = getelementptr inbounds %struct.sPtrArray, %struct.sPtrArray* %17, i32 0, i32 1
  %18 = load i32, i32* %count, align 4
  %19 = load i32, i32* %indx.addr, align 4
  %sub = sub i32 %18, %19
  %conv = zext i32 %sub to i64
  %mul = mul i64 %conv, 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 %16, i64 %mul, i1 false)
  %20 = load %struct.sPtrArray*, %struct.sPtrArray** %current.addr, align 8
  %count7 = getelementptr inbounds %struct.sPtrArray, %struct.sPtrArray* %20, i32 0, i32 1
  %21 = load i32, i32* %count7, align 4
  %dec = add i32 %21, -1
  store i32 %dec, i32* %count7, align 4
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @ptrArraySort(%struct.sPtrArray* %current, i32 (i8*, i8*)* %compare) #0 {
entry:
  %current.addr = alloca %struct.sPtrArray*, align 8
  %compare.addr = alloca i32 (i8*, i8*)*, align 8
  store %struct.sPtrArray* %current, %struct.sPtrArray** %current.addr, align 8
  store i32 (i8*, i8*)* %compare, i32 (i8*, i8*)** %compare.addr, align 8
  %0 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %compare.addr, align 8
  store i32 (i8*, i8*)* %0, i32 (i8*, i8*)** @ptrArraySortCompareVar, align 8
  %1 = load %struct.sPtrArray*, %struct.sPtrArray** %current.addr, align 8
  %array = getelementptr inbounds %struct.sPtrArray, %struct.sPtrArray* %1, i32 0, i32 2
  %2 = load i8**, i8*** %array, align 8
  %3 = bitcast i8** %2 to i8*
  %4 = load %struct.sPtrArray*, %struct.sPtrArray** %current.addr, align 8
  %count = getelementptr inbounds %struct.sPtrArray, %struct.sPtrArray* %4, i32 0, i32 1
  %5 = load i32, i32* %count, align 4
  %conv = zext i32 %5 to i64
  call void @qsort(i8* %3, i64 %conv, i64 8, i32 (i8*, i8*)* @ptrArraySortCompare)
  ret void
}

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @ptrArraySortCompare(i8* %a0, i8* %b0) #0 {
entry:
  %a0.addr = alloca i8*, align 8
  %b0.addr = alloca i8*, align 8
  %a = alloca i8**, align 8
  %b = alloca i8**, align 8
  store i8* %a0, i8** %a0.addr, align 8
  store i8* %b0, i8** %b0.addr, align 8
  %0 = load i8*, i8** %a0.addr, align 8
  %1 = bitcast i8* %0 to i8**
  store i8** %1, i8*** %a, align 8
  %2 = load i8*, i8** %b0.addr, align 8
  %3 = bitcast i8* %2 to i8**
  store i8** %3, i8*** %b, align 8
  %4 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** @ptrArraySortCompareVar, align 8
  %5 = load i8**, i8*** %a, align 8
  %6 = load i8*, i8** %5, align 8
  %7 = load i8**, i8*** %b, align 8
  %8 = load i8*, i8** %7, align 8
  %call = call i32 %4(i8* %6, i8* %8)
  ret i32 %call
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 10.0.0 (https://github.com/holzschu/clang.git 0cfc630fbdb62e96720b611a57123ef3eb13e297) (https://github.com/holzschu/llvm.git 0d8a71e39b28502c24718f7e74b5acbcfe36dfe0)"}
