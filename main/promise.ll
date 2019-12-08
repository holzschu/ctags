; ModuleID = 'promise.c'
source_filename = "promise.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-ios11.0.0"

%struct.promise = type { i32, i64, i64, i64, i64, i64 }
%struct.sTrashBox = type opaque

@promise_count = internal global i32 0, align 4
@promise_allocated = internal global i32 0, align 4
@promises = internal global %struct.promise* null, align 8

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @initPromiseCount() #0 {
entry:
  store i32 0, i32* @promise_count, align 4
  store i32 0, i32* @promise_allocated, align 4
  store %struct.promise* null, %struct.promise** @promises, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @makePromise(i8* %parser, i64 %startLine, i64 %startCharOffset, i64 %endLine, i64 %endCharOffset, i64 %sourceLineOffset) #0 {
entry:
  %retval = alloca i32, align 4
  %parser.addr = alloca i8*, align 8
  %startLine.addr = alloca i64, align 8
  %startCharOffset.addr = alloca i64, align 8
  %endLine.addr = alloca i64, align 8
  %endCharOffset.addr = alloca i64, align 8
  %sourceLineOffset.addr = alloca i64, align 8
  %p = alloca %struct.promise*, align 8
  %r = alloca i32, align 4
  %lang = alloca i32, align 4
  %c = alloca i64, align 8
  store i8* %parser, i8** %parser.addr, align 8
  store i64 %startLine, i64* %startLine.addr, align 8
  store i64 %startCharOffset, i64* %startCharOffset.addr, align 8
  store i64 %endLine, i64* %endLine.addr, align 8
  store i64 %endCharOffset, i64* %endCharOffset.addr, align 8
  store i64 %sourceLineOffset, i64* %sourceLineOffset.addr, align 8
  %0 = load i64, i64* %startLine.addr, align 8
  %1 = load i64, i64* %startCharOffset.addr, align 8
  %2 = load i64, i64* %endLine.addr, align 8
  %3 = load i64, i64* %endCharOffset.addr, align 8
  %4 = load i64, i64* %sourceLineOffset.addr, align 8
  %call = call zeroext i1 @isThinStreamSpec(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4)
  br i1 %call, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call1 = call zeroext i1 @isXtagEnabled(i32 5)
  br i1 %call1, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %5 = load i8*, i8** %parser.addr, align 8
  %call2 = call i32 @getNamedLanguage(i8* %5, i64 0)
  store i32 %call2, i32* %lang, align 4
  %6 = load i32, i32* %lang, align 4
  %cmp = icmp eq i32 %6, -2
  br i1 %cmp, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 -1, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %7 = load i32, i32* @promise_count, align 4
  %8 = load i32, i32* @promise_allocated, align 4
  %cmp5 = icmp eq i32 %7, %8
  br i1 %cmp5, label %if.then6, label %if.end15

if.then6:                                         ; preds = %if.end4
  %9 = load i32, i32* @promise_allocated, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then6
  %10 = load i32, i32* @promise_allocated, align 4
  %mul = mul nsw i32 %10, 2
  br label %cond.end

cond.false:                                       ; preds = %if.then6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %mul, %cond.true ], [ 8, %cond.false ]
  %conv = sext i32 %cond to i64
  store i64 %conv, i64* %c, align 8
  %11 = load %struct.promise*, %struct.promise** @promises, align 8
  %tobool7 = icmp ne %struct.promise* %11, null
  br i1 %tobool7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %cond.end
  %12 = load %struct.promise*, %struct.promise** @promises, align 8
  %13 = bitcast %struct.promise* %12 to i8*
  %call9 = call void (i8*)* @trashBoxTakeBack(%struct.sTrashBox* null, i8* %13)
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %cond.end
  %14 = load %struct.promise*, %struct.promise** @promises, align 8
  %15 = bitcast %struct.promise* %14 to i8*
  %16 = load i64, i64* %c, align 8
  %mul11 = mul i64 %16, 48
  %call12 = call i8* @eRealloc(i8* %15, i64 %mul11)
  %17 = bitcast i8* %call12 to %struct.promise*
  store %struct.promise* %17, %struct.promise** @promises, align 8
  %18 = load %struct.promise*, %struct.promise** @promises, align 8
  %19 = bitcast %struct.promise* %18 to i8*
  %call13 = call i8* @trashBoxPut(%struct.sTrashBox* null, i8* %19, void (i8*)* @eFree)
  %20 = load i64, i64* %c, align 8
  %conv14 = trunc i64 %20 to i32
  store i32 %conv14, i32* @promise_allocated, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.end10, %if.end4
  %21 = load %struct.promise*, %struct.promise** @promises, align 8
  %22 = load i32, i32* @promise_count, align 4
  %idx.ext = sext i32 %22 to i64
  %add.ptr = getelementptr inbounds %struct.promise, %struct.promise* %21, i64 %idx.ext
  store %struct.promise* %add.ptr, %struct.promise** %p, align 8
  %23 = load i32, i32* %lang, align 4
  %24 = load %struct.promise*, %struct.promise** %p, align 8
  %lang16 = getelementptr inbounds %struct.promise, %struct.promise* %24, i32 0, i32 0
  store i32 %23, i32* %lang16, align 8
  %25 = load i64, i64* %startLine.addr, align 8
  %26 = load %struct.promise*, %struct.promise** %p, align 8
  %startLine17 = getelementptr inbounds %struct.promise, %struct.promise* %26, i32 0, i32 1
  store i64 %25, i64* %startLine17, align 8
  %27 = load i64, i64* %startCharOffset.addr, align 8
  %28 = load %struct.promise*, %struct.promise** %p, align 8
  %startCharOffset18 = getelementptr inbounds %struct.promise, %struct.promise* %28, i32 0, i32 2
  store i64 %27, i64* %startCharOffset18, align 8
  %29 = load i64, i64* %endLine.addr, align 8
  %30 = load %struct.promise*, %struct.promise** %p, align 8
  %endLine19 = getelementptr inbounds %struct.promise, %struct.promise* %30, i32 0, i32 3
  store i64 %29, i64* %endLine19, align 8
  %31 = load i64, i64* %endCharOffset.addr, align 8
  %32 = load %struct.promise*, %struct.promise** %p, align 8
  %endCharOffset20 = getelementptr inbounds %struct.promise, %struct.promise* %32, i32 0, i32 4
  store i64 %31, i64* %endCharOffset20, align 8
  %33 = load i64, i64* %sourceLineOffset.addr, align 8
  %34 = load %struct.promise*, %struct.promise** %p, align 8
  %sourceLineOffset21 = getelementptr inbounds %struct.promise, %struct.promise* %34, i32 0, i32 5
  store i64 %33, i64* %sourceLineOffset21, align 8
  %35 = load i32, i32* @promise_count, align 4
  store i32 %35, i32* %r, align 4
  %36 = load i32, i32* @promise_count, align 4
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* @promise_count, align 4
  %37 = load i32, i32* %r, align 4
  store i32 %37, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end15, %if.then3, %if.then
  %38 = load i32, i32* %retval, align 4
  ret i32 %38
}

declare zeroext i1 @isThinStreamSpec(i64, i64, i64, i64, i64) #1

declare zeroext i1 @isXtagEnabled(i32) #1

declare i32 @getNamedLanguage(i8*, i64) #1

declare void (i8*)* @trashBoxTakeBack(%struct.sTrashBox*, i8*) #1

declare i8* @eRealloc(i8*, i64) #1

declare i8* @trashBoxPut(%struct.sTrashBox*, i8*, void (i8*)*) #1

declare void @eFree(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @breakPromisesAfter(i32 %promise) #0 {
entry:
  %promise.addr = alloca i32, align 4
  store i32 %promise, i32* %promise.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load i32, i32* %promise.addr, align 4
  store i32 %0, i32* @promise_count, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @forcePromises() #0 {
entry:
  %i = alloca i32, align 4
  %tagFileResized = alloca i8, align 1
  %p = alloca %struct.promise*, align 8
  store i8 0, i8* %tagFileResized, align 1
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @promise_count, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.promise*, %struct.promise** @promises, align 8
  %3 = load i32, i32* %i, align 4
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.promise, %struct.promise* %2, i64 %idx.ext
  store %struct.promise* %add.ptr, %struct.promise** %p, align 8
  %4 = load %struct.promise*, %struct.promise** %p, align 8
  %lang = getelementptr inbounds %struct.promise, %struct.promise* %4, i32 0, i32 0
  %5 = load i32, i32* %lang, align 8
  %6 = load %struct.promise*, %struct.promise** %p, align 8
  %startLine = getelementptr inbounds %struct.promise, %struct.promise* %6, i32 0, i32 1
  %7 = load i64, i64* %startLine, align 8
  %8 = load %struct.promise*, %struct.promise** %p, align 8
  %startCharOffset = getelementptr inbounds %struct.promise, %struct.promise* %8, i32 0, i32 2
  %9 = load i64, i64* %startCharOffset, align 8
  %10 = load %struct.promise*, %struct.promise** %p, align 8
  %endLine = getelementptr inbounds %struct.promise, %struct.promise* %10, i32 0, i32 3
  %11 = load i64, i64* %endLine, align 8
  %12 = load %struct.promise*, %struct.promise** %p, align 8
  %endCharOffset = getelementptr inbounds %struct.promise, %struct.promise* %12, i32 0, i32 4
  %13 = load i64, i64* %endCharOffset, align 8
  %14 = load %struct.promise*, %struct.promise** %p, align 8
  %sourceLineOffset = getelementptr inbounds %struct.promise, %struct.promise* %14, i32 0, i32 5
  %15 = load i64, i64* %sourceLineOffset, align 8
  %call = call zeroext i1 @runParserInNarrowedInputStream(i32 %5, i64 %7, i64 %9, i64 %11, i64 %13, i64 %15)
  br i1 %call, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %16 = load i8, i8* %tagFileResized, align 1
  %tobool = trunc i8 %16 to i1
  %conv = zext i1 %tobool to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %conv, %cond.false ]
  %tobool1 = icmp ne i32 %cond, 0
  %frombool = zext i1 %tobool1 to i8
  store i8 %frombool, i8* %tagFileResized, align 1
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %17 = load i32, i32* %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* @promise_count, align 4
  %18 = load i8, i8* %tagFileResized, align 1
  %tobool2 = trunc i8 %18 to i1
  ret i1 %tobool2
}

declare zeroext i1 @runParserInNarrowedInputStream(i32, i64, i64, i64, i64, i64) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @getLastPromise() #0 {
entry:
  %0 = load i32, i32* @promise_count, align 4
  %sub = sub nsw i32 %0, 1
  ret i32 %sub
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 10.0.0 (https://github.com/holzschu/clang.git 0cfc630fbdb62e96720b611a57123ef3eb13e297) (https://github.com/holzschu/llvm.git 0d8a71e39b28502c24718f7e74b5acbcfe36dfe0)"}
