; ModuleID = 'objpool.c'
source_filename = "objpool.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-ios11.0.0"

%struct.sObjPool = type { %struct.sPtrArray*, i32, i8* (i8*)*, void (i8*)*, void (i8*)*, i8* }
%struct.sPtrArray = type opaque

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sObjPool* @objPoolNew(i32 %size, i8* (i8*)* %createFunc, void (i8*)* %deleteFunc, void (i8*)* %clearFunc, i8* %createArg) #0 {
entry:
  %size.addr = alloca i32, align 4
  %createFunc.addr = alloca i8* (i8*)*, align 8
  %deleteFunc.addr = alloca void (i8*)*, align 8
  %clearFunc.addr = alloca void (i8*)*, align 8
  %createArg.addr = alloca i8*, align 8
  %result = alloca %struct.sObjPool*, align 8
  store i32 %size, i32* %size.addr, align 4
  store i8* (i8*)* %createFunc, i8* (i8*)** %createFunc.addr, align 8
  store void (i8*)* %deleteFunc, void (i8*)** %deleteFunc.addr, align 8
  store void (i8*)* %clearFunc, void (i8*)** %clearFunc.addr, align 8
  store i8* %createArg, i8** %createArg.addr, align 8
  %call = call i8* @eMalloc(i64 48)
  %0 = bitcast i8* %call to %struct.sObjPool*
  store %struct.sObjPool* %0, %struct.sObjPool** %result, align 8
  %1 = load void (i8*)*, void (i8*)** %deleteFunc.addr, align 8
  %call1 = call %struct.sPtrArray* @ptrArrayNew(void (i8*)* %1)
  %2 = load %struct.sObjPool*, %struct.sObjPool** %result, align 8
  %array = getelementptr inbounds %struct.sObjPool, %struct.sObjPool* %2, i32 0, i32 0
  store %struct.sPtrArray* %call1, %struct.sPtrArray** %array, align 8
  %3 = load i32, i32* %size.addr, align 4
  %4 = load %struct.sObjPool*, %struct.sObjPool** %result, align 8
  %size2 = getelementptr inbounds %struct.sObjPool, %struct.sObjPool* %4, i32 0, i32 1
  store i32 %3, i32* %size2, align 8
  %5 = load i8* (i8*)*, i8* (i8*)** %createFunc.addr, align 8
  %6 = load %struct.sObjPool*, %struct.sObjPool** %result, align 8
  %createFunc3 = getelementptr inbounds %struct.sObjPool, %struct.sObjPool* %6, i32 0, i32 2
  store i8* (i8*)* %5, i8* (i8*)** %createFunc3, align 8
  %7 = load void (i8*)*, void (i8*)** %deleteFunc.addr, align 8
  %8 = load %struct.sObjPool*, %struct.sObjPool** %result, align 8
  %deleteFunc4 = getelementptr inbounds %struct.sObjPool, %struct.sObjPool* %8, i32 0, i32 3
  store void (i8*)* %7, void (i8*)** %deleteFunc4, align 8
  %9 = load void (i8*)*, void (i8*)** %clearFunc.addr, align 8
  %10 = load %struct.sObjPool*, %struct.sObjPool** %result, align 8
  %clearFunc5 = getelementptr inbounds %struct.sObjPool, %struct.sObjPool* %10, i32 0, i32 4
  store void (i8*)* %9, void (i8*)** %clearFunc5, align 8
  %11 = load i8*, i8** %createArg.addr, align 8
  %12 = load %struct.sObjPool*, %struct.sObjPool** %result, align 8
  %createArg6 = getelementptr inbounds %struct.sObjPool, %struct.sObjPool* %12, i32 0, i32 5
  store i8* %11, i8** %createArg6, align 8
  %13 = load %struct.sObjPool*, %struct.sObjPool** %result, align 8
  ret %struct.sObjPool* %13
}

declare i8* @eMalloc(i64) #1

declare %struct.sPtrArray* @ptrArrayNew(void (i8*)*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @objPoolDelete(%struct.sObjPool* %pool) #0 {
entry:
  %pool.addr = alloca %struct.sObjPool*, align 8
  store %struct.sObjPool* %pool, %struct.sObjPool** %pool.addr, align 8
  %0 = load %struct.sObjPool*, %struct.sObjPool** %pool.addr, align 8
  %array = getelementptr inbounds %struct.sObjPool, %struct.sObjPool* %0, i32 0, i32 0
  %1 = load %struct.sPtrArray*, %struct.sPtrArray** %array, align 8
  call void @ptrArrayDelete(%struct.sPtrArray* %1)
  %2 = load %struct.sObjPool*, %struct.sObjPool** %pool.addr, align 8
  %3 = bitcast %struct.sObjPool* %2 to i8*
  call void @eFree(i8* %3)
  ret void
}

declare void @ptrArrayDelete(%struct.sPtrArray*) #1

declare void @eFree(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @objPoolGet(%struct.sObjPool* %pool) #0 {
entry:
  %pool.addr = alloca %struct.sObjPool*, align 8
  %obj = alloca i8*, align 8
  store %struct.sObjPool* %pool, %struct.sObjPool** %pool.addr, align 8
  %0 = load %struct.sObjPool*, %struct.sObjPool** %pool.addr, align 8
  %array = getelementptr inbounds %struct.sObjPool, %struct.sObjPool* %0, i32 0, i32 0
  %1 = load %struct.sPtrArray*, %struct.sPtrArray** %array, align 8
  %call = call i32 @ptrArrayCount(%struct.sPtrArray* %1)
  %cmp = icmp ugt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.sObjPool*, %struct.sObjPool** %pool.addr, align 8
  %array1 = getelementptr inbounds %struct.sObjPool, %struct.sObjPool* %2, i32 0, i32 0
  %3 = load %struct.sPtrArray*, %struct.sPtrArray** %array1, align 8
  %call2 = call i8* @ptrArrayLast(%struct.sPtrArray* %3)
  store i8* %call2, i8** %obj, align 8
  %4 = load %struct.sObjPool*, %struct.sObjPool** %pool.addr, align 8
  %array3 = getelementptr inbounds %struct.sObjPool, %struct.sObjPool* %4, i32 0, i32 0
  %5 = load %struct.sPtrArray*, %struct.sPtrArray** %array3, align 8
  call void @ptrArrayRemoveLast(%struct.sPtrArray* %5)
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load %struct.sObjPool*, %struct.sObjPool** %pool.addr, align 8
  %createFunc = getelementptr inbounds %struct.sObjPool, %struct.sObjPool* %6, i32 0, i32 2
  %7 = load i8* (i8*)*, i8* (i8*)** %createFunc, align 8
  %8 = load %struct.sObjPool*, %struct.sObjPool** %pool.addr, align 8
  %createArg = getelementptr inbounds %struct.sObjPool, %struct.sObjPool* %8, i32 0, i32 5
  %9 = load i8*, i8** %createArg, align 8
  %call4 = call i8* %7(i8* %9)
  store i8* %call4, i8** %obj, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %10 = load %struct.sObjPool*, %struct.sObjPool** %pool.addr, align 8
  %clearFunc = getelementptr inbounds %struct.sObjPool, %struct.sObjPool* %10, i32 0, i32 4
  %11 = load void (i8*)*, void (i8*)** %clearFunc, align 8
  %tobool = icmp ne void (i8*)* %11, null
  br i1 %tobool, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  %12 = load %struct.sObjPool*, %struct.sObjPool** %pool.addr, align 8
  %clearFunc6 = getelementptr inbounds %struct.sObjPool, %struct.sObjPool* %12, i32 0, i32 4
  %13 = load void (i8*)*, void (i8*)** %clearFunc6, align 8
  %14 = load i8*, i8** %obj, align 8
  call void %13(i8* %14)
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end
  %15 = load i8*, i8** %obj, align 8
  ret i8* %15
}

declare i32 @ptrArrayCount(%struct.sPtrArray*) #1

declare i8* @ptrArrayLast(%struct.sPtrArray*) #1

declare void @ptrArrayRemoveLast(%struct.sPtrArray*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @objPoolPut(%struct.sObjPool* %pool, i8* %obj) #0 {
entry:
  %pool.addr = alloca %struct.sObjPool*, align 8
  %obj.addr = alloca i8*, align 8
  store %struct.sObjPool* %pool, %struct.sObjPool** %pool.addr, align 8
  store i8* %obj, i8** %obj.addr, align 8
  %0 = load i8*, i8** %obj.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end4

if.end:                                           ; preds = %entry
  %1 = load %struct.sObjPool*, %struct.sObjPool** %pool.addr, align 8
  %array = getelementptr inbounds %struct.sObjPool, %struct.sObjPool* %1, i32 0, i32 0
  %2 = load %struct.sPtrArray*, %struct.sPtrArray** %array, align 8
  %call = call i32 @ptrArrayCount(%struct.sPtrArray* %2)
  %3 = load %struct.sObjPool*, %struct.sObjPool** %pool.addr, align 8
  %size = getelementptr inbounds %struct.sObjPool, %struct.sObjPool* %3, i32 0, i32 1
  %4 = load i32, i32* %size, align 8
  %cmp1 = icmp ult i32 %call, %4
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %5 = load %struct.sObjPool*, %struct.sObjPool** %pool.addr, align 8
  %array3 = getelementptr inbounds %struct.sObjPool, %struct.sObjPool* %5, i32 0, i32 0
  %6 = load %struct.sPtrArray*, %struct.sPtrArray** %array3, align 8
  %7 = load i8*, i8** %obj.addr, align 8
  call void @ptrArrayAdd(%struct.sPtrArray* %6, i8* %7)
  br label %if.end4

if.else:                                          ; preds = %if.end
  %8 = load %struct.sObjPool*, %struct.sObjPool** %pool.addr, align 8
  %deleteFunc = getelementptr inbounds %struct.sObjPool, %struct.sObjPool* %8, i32 0, i32 3
  %9 = load void (i8*)*, void (i8*)** %deleteFunc, align 8
  %10 = load i8*, i8** %obj.addr, align 8
  call void %9(i8* %10)
  br label %if.end4

if.end4:                                          ; preds = %if.then, %if.else, %if.then2
  ret void
}

declare void @ptrArrayAdd(%struct.sPtrArray*, i8*) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 10.0.0 (https://github.com/holzschu/clang.git 0cfc630fbdb62e96720b611a57123ef3eb13e297) (https://github.com/holzschu/llvm.git 0d8a71e39b28502c24718f7e74b5acbcfe36dfe0)"}
