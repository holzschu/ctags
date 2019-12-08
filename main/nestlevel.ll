; ModuleID = 'nestlevel.c'
source_filename = "nestlevel.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-ios11.0.0"

%struct.NestingLevels = type { i8*, i32, i32, i64 }
%struct.NestingLevel = type { i32, [0 x i8] }

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.NestingLevels* @nestingLevelsNew(i64 %userDataSize) #0 {
entry:
  %userDataSize.addr = alloca i64, align 8
  %nls = alloca %struct.NestingLevels*, align 8
  store i64 %userDataSize, i64* %userDataSize.addr, align 8
  %call = call i8* @eCalloc(i64 1, i64 24)
  %0 = bitcast i8* %call to %struct.NestingLevels*
  store %struct.NestingLevels* %0, %struct.NestingLevels** %nls, align 8
  %1 = load i64, i64* %userDataSize.addr, align 8
  %2 = load %struct.NestingLevels*, %struct.NestingLevels** %nls, align 8
  %userDataSize1 = getelementptr inbounds %struct.NestingLevels, %struct.NestingLevels* %2, i32 0, i32 3
  store i64 %1, i64* %userDataSize1, align 8
  %3 = load %struct.NestingLevels*, %struct.NestingLevels** %nls, align 8
  ret %struct.NestingLevels* %3
}

declare i8* @eCalloc(i64, i64) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @nestingLevelsFree(%struct.NestingLevels* %nls) #0 {
entry:
  %nls.addr = alloca %struct.NestingLevels*, align 8
  %i = alloca i32, align 4
  %nl = alloca %struct.NestingLevel*, align 8
  store %struct.NestingLevels* %nls, %struct.NestingLevels** %nls.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.NestingLevels*, %struct.NestingLevels** %nls.addr, align 8
  %allocated = getelementptr inbounds %struct.NestingLevels, %struct.NestingLevels* %1, i32 0, i32 2
  %2 = load i32, i32* %allocated, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.NestingLevels*, %struct.NestingLevels** %nls.addr, align 8
  %levels = getelementptr inbounds %struct.NestingLevels, %struct.NestingLevels* %3, i32 0, i32 0
  %4 = load i8*, i8** %levels, align 8
  %5 = load i32, i32* %i, align 4
  %conv = sext i32 %5 to i64
  %6 = load %struct.NestingLevels*, %struct.NestingLevels** %nls.addr, align 8
  %userDataSize = getelementptr inbounds %struct.NestingLevels, %struct.NestingLevels* %6, i32 0, i32 3
  %7 = load i64, i64* %userDataSize, align 8
  %add = add i64 4, %7
  %mul = mul i64 %conv, %add
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %mul
  %8 = bitcast i8* %add.ptr to %struct.NestingLevel*
  store %struct.NestingLevel* %8, %struct.NestingLevel** %nl, align 8
  %9 = load %struct.NestingLevel*, %struct.NestingLevel** %nl, align 8
  %corkIndex = getelementptr inbounds %struct.NestingLevel, %struct.NestingLevel* %9, i32 0, i32 0
  store i32 0, i32* %corkIndex, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load %struct.NestingLevels*, %struct.NestingLevels** %nls.addr, align 8
  %levels1 = getelementptr inbounds %struct.NestingLevels, %struct.NestingLevels* %11, i32 0, i32 0
  %12 = load i8*, i8** %levels1, align 8
  %tobool = icmp ne i8* %12, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %13 = load %struct.NestingLevels*, %struct.NestingLevels** %nls.addr, align 8
  %levels2 = getelementptr inbounds %struct.NestingLevels, %struct.NestingLevels* %13, i32 0, i32 0
  %14 = load i8*, i8** %levels2, align 8
  call void @eFree(i8* %14)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %15 = load %struct.NestingLevels*, %struct.NestingLevels** %nls.addr, align 8
  %16 = bitcast %struct.NestingLevels* %15 to i8*
  call void @eFree(i8* %16)
  ret void
}

declare void @eFree(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.NestingLevel* @nestingLevelsPush(%struct.NestingLevels* %nls, i32 %corkIndex) #0 {
entry:
  %nls.addr = alloca %struct.NestingLevels*, align 8
  %corkIndex.addr = alloca i32, align 4
  %nl = alloca %struct.NestingLevel*, align 8
  store %struct.NestingLevels* %nls, %struct.NestingLevels** %nls.addr, align 8
  store i32 %corkIndex, i32* %corkIndex.addr, align 4
  store %struct.NestingLevel* null, %struct.NestingLevel** %nl, align 8
  %0 = load %struct.NestingLevels*, %struct.NestingLevels** %nls.addr, align 8
  %n = getelementptr inbounds %struct.NestingLevels, %struct.NestingLevels* %0, i32 0, i32 1
  %1 = load i32, i32* %n, align 8
  %2 = load %struct.NestingLevels*, %struct.NestingLevels** %nls.addr, align 8
  %allocated = getelementptr inbounds %struct.NestingLevels, %struct.NestingLevels* %2, i32 0, i32 2
  %3 = load i32, i32* %allocated, align 4
  %cmp = icmp sge i32 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.NestingLevels*, %struct.NestingLevels** %nls.addr, align 8
  %allocated1 = getelementptr inbounds %struct.NestingLevels, %struct.NestingLevels* %4, i32 0, i32 2
  %5 = load i32, i32* %allocated1, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %allocated1, align 4
  %6 = load %struct.NestingLevels*, %struct.NestingLevels** %nls.addr, align 8
  %levels = getelementptr inbounds %struct.NestingLevels, %struct.NestingLevels* %6, i32 0, i32 0
  %7 = load i8*, i8** %levels, align 8
  %8 = load %struct.NestingLevels*, %struct.NestingLevels** %nls.addr, align 8
  %allocated2 = getelementptr inbounds %struct.NestingLevels, %struct.NestingLevels* %8, i32 0, i32 2
  %9 = load i32, i32* %allocated2, align 4
  %conv = sext i32 %9 to i64
  %10 = load %struct.NestingLevels*, %struct.NestingLevels** %nls.addr, align 8
  %userDataSize = getelementptr inbounds %struct.NestingLevels, %struct.NestingLevels* %10, i32 0, i32 3
  %11 = load i64, i64* %userDataSize, align 8
  %add = add i64 4, %11
  %mul = mul i64 %conv, %add
  %call = call i8* @eRealloc(i8* %7, i64 %mul)
  %12 = load %struct.NestingLevels*, %struct.NestingLevels** %nls.addr, align 8
  %levels3 = getelementptr inbounds %struct.NestingLevels, %struct.NestingLevels* %12, i32 0, i32 0
  store i8* %call, i8** %levels3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load %struct.NestingLevels*, %struct.NestingLevels** %nls.addr, align 8
  %levels4 = getelementptr inbounds %struct.NestingLevels, %struct.NestingLevels* %13, i32 0, i32 0
  %14 = load i8*, i8** %levels4, align 8
  %15 = load %struct.NestingLevels*, %struct.NestingLevels** %nls.addr, align 8
  %n5 = getelementptr inbounds %struct.NestingLevels, %struct.NestingLevels* %15, i32 0, i32 1
  %16 = load i32, i32* %n5, align 8
  %conv6 = sext i32 %16 to i64
  %17 = load %struct.NestingLevels*, %struct.NestingLevels** %nls.addr, align 8
  %userDataSize7 = getelementptr inbounds %struct.NestingLevels, %struct.NestingLevels* %17, i32 0, i32 3
  %18 = load i64, i64* %userDataSize7, align 8
  %add8 = add i64 4, %18
  %mul9 = mul i64 %conv6, %add8
  %add.ptr = getelementptr inbounds i8, i8* %14, i64 %mul9
  %19 = bitcast i8* %add.ptr to %struct.NestingLevel*
  store %struct.NestingLevel* %19, %struct.NestingLevel** %nl, align 8
  %20 = load %struct.NestingLevels*, %struct.NestingLevels** %nls.addr, align 8
  %n10 = getelementptr inbounds %struct.NestingLevels, %struct.NestingLevels* %20, i32 0, i32 1
  %21 = load i32, i32* %n10, align 8
  %inc11 = add nsw i32 %21, 1
  store i32 %inc11, i32* %n10, align 8
  %22 = load i32, i32* %corkIndex.addr, align 4
  %23 = load %struct.NestingLevel*, %struct.NestingLevel** %nl, align 8
  %corkIndex12 = getelementptr inbounds %struct.NestingLevel, %struct.NestingLevel* %23, i32 0, i32 0
  store i32 %22, i32* %corkIndex12, align 4
  %24 = load %struct.NestingLevel*, %struct.NestingLevel** %nl, align 8
  ret %struct.NestingLevel* %24
}

declare i8* @eRealloc(i8*, i64) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.NestingLevel* @nestingLevelsTruncate(%struct.NestingLevels* %nls, i32 %depth, i32 %corkIndex) #0 {
entry:
  %nls.addr = alloca %struct.NestingLevels*, align 8
  %depth.addr = alloca i32, align 4
  %corkIndex.addr = alloca i32, align 4
  %nl = alloca %struct.NestingLevel*, align 8
  store %struct.NestingLevels* %nls, %struct.NestingLevels** %nls.addr, align 8
  store i32 %depth, i32* %depth.addr, align 4
  store i32 %corkIndex, i32* %corkIndex.addr, align 4
  %0 = load i32, i32* %depth.addr, align 4
  %1 = load %struct.NestingLevels*, %struct.NestingLevels** %nls.addr, align 8
  %n = getelementptr inbounds %struct.NestingLevels, %struct.NestingLevels* %1, i32 0, i32 1
  store i32 %0, i32* %n, align 8
  %2 = load %struct.NestingLevels*, %struct.NestingLevels** %nls.addr, align 8
  %call = call %struct.NestingLevel* @nestingLevelsGetCurrent(%struct.NestingLevels* %2)
  store %struct.NestingLevel* %call, %struct.NestingLevel** %nl, align 8
  %3 = load i32, i32* %corkIndex.addr, align 4
  %4 = load %struct.NestingLevel*, %struct.NestingLevel** %nl, align 8
  %corkIndex1 = getelementptr inbounds %struct.NestingLevel, %struct.NestingLevel* %4, i32 0, i32 0
  store i32 %3, i32* %corkIndex1, align 4
  %5 = load %struct.NestingLevel*, %struct.NestingLevel** %nl, align 8
  ret %struct.NestingLevel* %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.NestingLevel* @nestingLevelsGetCurrent(%struct.NestingLevels* %nls) #0 {
entry:
  %retval = alloca %struct.NestingLevel*, align 8
  %nls.addr = alloca %struct.NestingLevels*, align 8
  store %struct.NestingLevels* %nls, %struct.NestingLevels** %nls.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.NestingLevels*, %struct.NestingLevels** %nls.addr, align 8
  %n = getelementptr inbounds %struct.NestingLevels, %struct.NestingLevels* %0, i32 0, i32 1
  %1 = load i32, i32* %n, align 8
  %cmp = icmp slt i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  store %struct.NestingLevel* null, %struct.NestingLevel** %retval, align 8
  br label %return

if.end:                                           ; preds = %do.end
  %2 = load %struct.NestingLevels*, %struct.NestingLevels** %nls.addr, align 8
  %levels = getelementptr inbounds %struct.NestingLevels, %struct.NestingLevels* %2, i32 0, i32 0
  %3 = load i8*, i8** %levels, align 8
  %4 = load %struct.NestingLevels*, %struct.NestingLevels** %nls.addr, align 8
  %n1 = getelementptr inbounds %struct.NestingLevels, %struct.NestingLevels* %4, i32 0, i32 1
  %5 = load i32, i32* %n1, align 8
  %sub = sub nsw i32 %5, 1
  %conv = sext i32 %sub to i64
  %6 = load %struct.NestingLevels*, %struct.NestingLevels** %nls.addr, align 8
  %userDataSize = getelementptr inbounds %struct.NestingLevels, %struct.NestingLevels* %6, i32 0, i32 3
  %7 = load i64, i64* %userDataSize, align 8
  %add = add i64 4, %7
  %mul = mul i64 %conv, %add
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %mul
  %8 = bitcast i8* %add.ptr to %struct.NestingLevel*
  store %struct.NestingLevel* %8, %struct.NestingLevel** %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %9 = load %struct.NestingLevel*, %struct.NestingLevel** %retval, align 8
  ret %struct.NestingLevel* %9
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @nestingLevelsPop(%struct.NestingLevels* %nls) #0 {
entry:
  %nls.addr = alloca %struct.NestingLevels*, align 8
  %nl = alloca %struct.NestingLevel*, align 8
  store %struct.NestingLevels* %nls, %struct.NestingLevels** %nls.addr, align 8
  %0 = load %struct.NestingLevels*, %struct.NestingLevels** %nls.addr, align 8
  %call = call %struct.NestingLevel* @nestingLevelsGetCurrent(%struct.NestingLevels* %0)
  store %struct.NestingLevel* %call, %struct.NestingLevel** %nl, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %1 = load %struct.NestingLevel*, %struct.NestingLevel** %nl, align 8
  %corkIndex = getelementptr inbounds %struct.NestingLevel, %struct.NestingLevel* %1, i32 0, i32 0
  store i32 0, i32* %corkIndex, align 4
  %2 = load %struct.NestingLevels*, %struct.NestingLevels** %nls.addr, align 8
  %n = getelementptr inbounds %struct.NestingLevels, %struct.NestingLevels* %2, i32 0, i32 1
  %3 = load i32, i32* %n, align 8
  %dec = add nsw i32 %3, -1
  store i32 %dec, i32* %n, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.NestingLevel* @nestingLevelsGetNth(%struct.NestingLevels* %nls, i32 %n) #0 {
entry:
  %retval = alloca %struct.NestingLevel*, align 8
  %nls.addr = alloca %struct.NestingLevels*, align 8
  %n.addr = alloca i32, align 4
  store %struct.NestingLevels* %nls, %struct.NestingLevels** %nls.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.NestingLevels*, %struct.NestingLevels** %nls.addr, align 8
  %n1 = getelementptr inbounds %struct.NestingLevels, %struct.NestingLevels* %0, i32 0, i32 1
  %1 = load i32, i32* %n1, align 8
  %2 = load i32, i32* %n.addr, align 4
  %cmp = icmp sgt i32 %1, %2
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %do.end
  %3 = load i32, i32* %n.addr, align 4
  %cmp2 = icmp sge i32 %3, 0
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct.NestingLevels*, %struct.NestingLevels** %nls.addr, align 8
  %levels = getelementptr inbounds %struct.NestingLevels, %struct.NestingLevels* %4, i32 0, i32 0
  %5 = load i8*, i8** %levels, align 8
  %6 = load i32, i32* %n.addr, align 4
  %conv = sext i32 %6 to i64
  %7 = load %struct.NestingLevels*, %struct.NestingLevels** %nls.addr, align 8
  %userDataSize = getelementptr inbounds %struct.NestingLevels, %struct.NestingLevels* %7, i32 0, i32 3
  %8 = load i64, i64* %userDataSize, align 8
  %add = add i64 4, %8
  %mul = mul i64 %conv, %add
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %mul
  %9 = bitcast i8* %add.ptr to %struct.NestingLevel*
  store %struct.NestingLevel* %9, %struct.NestingLevel** %retval, align 8
  br label %return

if.else:                                          ; preds = %land.lhs.true, %do.end
  store %struct.NestingLevel* null, %struct.NestingLevel** %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then
  %10 = load %struct.NestingLevel*, %struct.NestingLevel** %retval, align 8
  ret %struct.NestingLevel* %10
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @nestingLevelGetUserData(%struct.NestingLevel* %nl) #0 {
entry:
  %nl.addr = alloca %struct.NestingLevel*, align 8
  store %struct.NestingLevel* %nl, %struct.NestingLevel** %nl.addr, align 8
  %0 = load %struct.NestingLevel*, %struct.NestingLevel** %nl.addr, align 8
  %userData = getelementptr inbounds %struct.NestingLevel, %struct.NestingLevel* %0, i32 0, i32 1
  %arraydecay = getelementptr inbounds [0 x i8], [0 x i8]* %userData, i64 0, i64 0
  ret i8* %arraydecay
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 10.0.0 (https://github.com/holzschu/clang.git 0cfc630fbdb62e96720b611a57123ef3eb13e297) (https://github.com/holzschu/llvm.git 0d8a71e39b28502c24718f7e74b5acbcfe36dfe0)"}
