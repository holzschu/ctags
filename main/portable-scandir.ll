; ModuleID = 'portable-scandir.c'
source_filename = "portable-scandir.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-ios11.0.0"

%struct.dirent = type { i64, i64, i16, i16, i8, [1024 x i8] }
%struct.DIR = type { i32, i64, i64, i8*, i32, i64, i64, i32, %struct._opaque_pthread_mutex_t, %struct._telldir* }
%struct._opaque_pthread_mutex_t = type { i64, [56 x i8] }
%struct._telldir = type opaque

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @"\01_scandir"(i8* %directory_name, %struct.dirent*** %array_pointer, i32 (%struct.dirent*)* %select_function, i32 (%struct.dirent**, %struct.dirent**)* %compare_function) #0 {
entry:
  %retval = alloca i32, align 4
  %directory_name.addr = alloca i8*, align 8
  %array_pointer.addr = alloca %struct.dirent***, align 8
  %select_function.addr = alloca i32 (%struct.dirent*)*, align 8
  %compare_function.addr = alloca i32 (%struct.dirent**, %struct.dirent**)*, align 8
  %directory = alloca %struct.DIR*, align 8
  %array = alloca %struct.dirent**, align 8
  %entry1 = alloca %struct.dirent*, align 8
  %copy = alloca %struct.dirent*, align 8
  %allocated = alloca i32, align 4
  %counter = alloca i32, align 4
  %namelength = alloca i32, align 4
  %extra = alloca i32, align 4
  store i8* %directory_name, i8** %directory_name.addr, align 8
  store %struct.dirent*** %array_pointer, %struct.dirent**** %array_pointer.addr, align 8
  store i32 (%struct.dirent*)* %select_function, i32 (%struct.dirent*)** %select_function.addr, align 8
  store i32 (%struct.dirent**, %struct.dirent**)* %compare_function, i32 (%struct.dirent**, %struct.dirent**)** %compare_function.addr, align 8
  store i32 20, i32* %allocated, align 4
  store i32 0, i32* %counter, align 4
  %0 = load i8*, i8** %directory_name.addr, align 8
  %call = call %struct.DIR* @"\01_opendir"(i8* %0)
  store %struct.DIR* %call, %struct.DIR** %directory, align 8
  %1 = load %struct.DIR*, %struct.DIR** %directory, align 8
  %cmp = icmp eq %struct.DIR* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %allocated, align 4
  %conv = sext i32 %2 to i64
  %mul = mul i64 %conv, 8
  %call2 = call i8* @eMalloc(i64 %mul)
  %3 = bitcast i8* %call2 to %struct.dirent**
  store %struct.dirent** %3, %struct.dirent*** %array, align 8
  %4 = load %struct.dirent**, %struct.dirent*** %array, align 8
  %cmp3 = icmp eq %struct.dirent** %4, null
  br i1 %cmp3, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  store i32 -1, i32* %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %if.end52, %if.end6
  %5 = load %struct.DIR*, %struct.DIR** %directory, align 8
  %call7 = call %struct.dirent* @"\01_readdir"(%struct.DIR* %5)
  store %struct.dirent* %call7, %struct.dirent** %entry1, align 8
  %6 = load %struct.dirent*, %struct.dirent** %entry1, align 8
  %tobool = icmp ne %struct.dirent* %6, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load i32 (%struct.dirent*)*, i32 (%struct.dirent*)** %select_function.addr, align 8
  %cmp8 = icmp eq i32 (%struct.dirent*)* %7, null
  br i1 %cmp8, label %if.then12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %8 = load i32 (%struct.dirent*)*, i32 (%struct.dirent*)** %select_function.addr, align 8
  %9 = load %struct.dirent*, %struct.dirent** %entry1, align 8
  %call10 = call i32 %8(%struct.dirent* %9)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then12, label %if.end52

if.then12:                                        ; preds = %lor.lhs.false, %while.body
  %10 = load %struct.dirent*, %struct.dirent** %entry1, align 8
  %d_name = getelementptr inbounds %struct.dirent, %struct.dirent* %10, i32 0, i32 5
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %d_name, i64 0, i64 0
  %call13 = call i64 @strlen(i8* %arraydecay)
  %add = add i64 %call13, 1
  %conv14 = trunc i64 %add to i32
  store i32 %conv14, i32* %namelength, align 4
  store i32 0, i32* %extra, align 4
  %11 = load i32, i32* %namelength, align 4
  %conv15 = sext i32 %11 to i64
  %cmp16 = icmp ule i64 1024, %conv15
  br i1 %cmp16, label %if.then18, label %if.end23

if.then18:                                        ; preds = %if.then12
  %12 = load i32, i32* %namelength, align 4
  %conv19 = sext i32 %12 to i64
  %sub = sub i64 %conv19, 1024
  %13 = load i32, i32* %extra, align 4
  %conv20 = sext i32 %13 to i64
  %add21 = add i64 %conv20, %sub
  %conv22 = trunc i64 %add21 to i32
  store i32 %conv22, i32* %extra, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then18, %if.then12
  %14 = load i32, i32* %extra, align 4
  %conv24 = sext i32 %14 to i64
  %add25 = add i64 1048, %conv24
  %call26 = call i8* @eMalloc(i64 %add25)
  %15 = bitcast i8* %call26 to %struct.dirent*
  store %struct.dirent* %15, %struct.dirent** %copy, align 8
  %16 = load %struct.dirent*, %struct.dirent** %copy, align 8
  %cmp27 = icmp eq %struct.dirent* %16, null
  br i1 %cmp27, label %if.then29, label %if.end31

if.then29:                                        ; preds = %if.end23
  %17 = load %struct.DIR*, %struct.DIR** %directory, align 8
  %call30 = call i32 @"\01_closedir"(%struct.DIR* %17)
  %18 = load %struct.dirent**, %struct.dirent*** %array, align 8
  %19 = bitcast %struct.dirent** %18 to i8*
  call void @eFree(i8* %19)
  store i32 -1, i32* %retval, align 4
  br label %return

if.end31:                                         ; preds = %if.end23
  %20 = load %struct.dirent*, %struct.dirent** %entry1, align 8
  %d_ino = getelementptr inbounds %struct.dirent, %struct.dirent* %20, i32 0, i32 0
  %21 = load i64, i64* %d_ino, align 8
  %22 = load %struct.dirent*, %struct.dirent** %copy, align 8
  %d_ino32 = getelementptr inbounds %struct.dirent, %struct.dirent* %22, i32 0, i32 0
  store i64 %21, i64* %d_ino32, align 8
  %23 = load %struct.dirent*, %struct.dirent** %entry1, align 8
  %d_reclen = getelementptr inbounds %struct.dirent, %struct.dirent* %23, i32 0, i32 2
  %24 = load i16, i16* %d_reclen, align 8
  %25 = load %struct.dirent*, %struct.dirent** %copy, align 8
  %d_reclen33 = getelementptr inbounds %struct.dirent, %struct.dirent* %25, i32 0, i32 2
  store i16 %24, i16* %d_reclen33, align 8
  %26 = load %struct.dirent*, %struct.dirent** %copy, align 8
  %d_name34 = getelementptr inbounds %struct.dirent, %struct.dirent* %26, i32 0, i32 5
  %arraydecay35 = getelementptr inbounds [1024 x i8], [1024 x i8]* %d_name34, i64 0, i64 0
  %27 = load %struct.dirent*, %struct.dirent** %entry1, align 8
  %d_name36 = getelementptr inbounds %struct.dirent, %struct.dirent* %27, i32 0, i32 5
  %arraydecay37 = getelementptr inbounds [1024 x i8], [1024 x i8]* %d_name36, i64 0, i64 0
  %call38 = call i8* @strcpy(i8* %arraydecay35, i8* %arraydecay37)
  %28 = load i32, i32* %counter, align 4
  %add39 = add nsw i32 %28, 1
  %29 = load i32, i32* %allocated, align 4
  %cmp40 = icmp eq i32 %add39, %29
  br i1 %cmp40, label %if.then42, label %if.end51

if.then42:                                        ; preds = %if.end31
  %30 = load i32, i32* %allocated, align 4
  %shl = shl i32 %30, 1
  store i32 %shl, i32* %allocated, align 4
  %31 = load %struct.dirent**, %struct.dirent*** %array, align 8
  %32 = bitcast %struct.dirent** %31 to i8*
  %33 = load i32, i32* %allocated, align 4
  %conv43 = sext i32 %33 to i64
  %mul44 = mul i64 %conv43, 8
  %call45 = call i8* @eRealloc(i8* %32, i64 %mul44)
  %34 = bitcast i8* %call45 to %struct.dirent**
  store %struct.dirent** %34, %struct.dirent*** %array, align 8
  %35 = load %struct.dirent**, %struct.dirent*** %array, align 8
  %cmp46 = icmp eq %struct.dirent** %35, null
  br i1 %cmp46, label %if.then48, label %if.end50

if.then48:                                        ; preds = %if.then42
  %36 = load %struct.DIR*, %struct.DIR** %directory, align 8
  %call49 = call i32 @"\01_closedir"(%struct.DIR* %36)
  %37 = load %struct.dirent**, %struct.dirent*** %array, align 8
  %38 = bitcast %struct.dirent** %37 to i8*
  call void @eFree(i8* %38)
  %39 = load %struct.dirent*, %struct.dirent** %copy, align 8
  %40 = bitcast %struct.dirent* %39 to i8*
  call void @eFree(i8* %40)
  store i32 -1, i32* %retval, align 4
  br label %return

if.end50:                                         ; preds = %if.then42
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %if.end31
  %41 = load %struct.dirent*, %struct.dirent** %copy, align 8
  %42 = load %struct.dirent**, %struct.dirent*** %array, align 8
  %43 = load i32, i32* %counter, align 4
  %inc = add nsw i32 %43, 1
  store i32 %inc, i32* %counter, align 4
  %idxprom = sext i32 %43 to i64
  %arrayidx = getelementptr inbounds %struct.dirent*, %struct.dirent** %42, i64 %idxprom
  store %struct.dirent* %41, %struct.dirent** %arrayidx, align 8
  br label %if.end52

if.end52:                                         ; preds = %if.end51, %lor.lhs.false
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %44 = load %struct.dirent**, %struct.dirent*** %array, align 8
  %45 = load i32, i32* %counter, align 4
  %idxprom53 = sext i32 %45 to i64
  %arrayidx54 = getelementptr inbounds %struct.dirent*, %struct.dirent** %44, i64 %idxprom53
  store %struct.dirent* null, %struct.dirent** %arrayidx54, align 8
  %46 = load %struct.dirent**, %struct.dirent*** %array, align 8
  %47 = load %struct.dirent***, %struct.dirent**** %array_pointer.addr, align 8
  store %struct.dirent** %46, %struct.dirent*** %47, align 8
  %48 = load %struct.DIR*, %struct.DIR** %directory, align 8
  %call55 = call i32 @"\01_closedir"(%struct.DIR* %48)
  %49 = load i32, i32* %counter, align 4
  %cmp56 = icmp sgt i32 %49, 1
  br i1 %cmp56, label %land.lhs.true, label %if.end61

land.lhs.true:                                    ; preds = %while.end
  %50 = load i32 (%struct.dirent**, %struct.dirent**)*, i32 (%struct.dirent**, %struct.dirent**)** %compare_function.addr, align 8
  %tobool58 = icmp ne i32 (%struct.dirent**, %struct.dirent**)* %50, null
  br i1 %tobool58, label %if.then59, label %if.end61

if.then59:                                        ; preds = %land.lhs.true
  %51 = load %struct.dirent**, %struct.dirent*** %array, align 8
  %52 = bitcast %struct.dirent** %51 to i8*
  %53 = load i32, i32* %counter, align 4
  %conv60 = sext i32 %53 to i64
  %54 = load i32 (%struct.dirent**, %struct.dirent**)*, i32 (%struct.dirent**, %struct.dirent**)** %compare_function.addr, align 8
  %55 = bitcast i32 (%struct.dirent**, %struct.dirent**)* %54 to i32 (i8*, i8*)*
  call void @qsort(i8* %52, i64 %conv60, i64 8, i32 (i8*, i8*)* %55)
  br label %if.end61

if.end61:                                         ; preds = %if.then59, %land.lhs.true, %while.end
  %56 = load i32, i32* %counter, align 4
  store i32 %56, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end61, %if.then48, %if.then29, %if.then5, %if.then
  %57 = load i32, i32* %retval, align 4
  ret i32 %57
}

declare %struct.DIR* @"\01_opendir"(i8*) #1

declare i8* @eMalloc(i64) #1

declare %struct.dirent* @"\01_readdir"(%struct.DIR*) #1

declare i64 @strlen(i8*) #1

declare i32 @"\01_closedir"(%struct.DIR*) #1

declare void @eFree(i8*) #1

declare i8* @strcpy(i8*, i8*) #1

declare i8* @eRealloc(i8*, i64) #1

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @scanDirectory(i8* %directory_name, %struct.dirent*** %array_pointer, i32 (%struct.dirent*)* %select_function, i32 (%struct.dirent**, %struct.dirent**)* %compare_function) #0 {
entry:
  %directory_name.addr = alloca i8*, align 8
  %array_pointer.addr = alloca %struct.dirent***, align 8
  %select_function.addr = alloca i32 (%struct.dirent*)*, align 8
  %compare_function.addr = alloca i32 (%struct.dirent**, %struct.dirent**)*, align 8
  store i8* %directory_name, i8** %directory_name.addr, align 8
  store %struct.dirent*** %array_pointer, %struct.dirent**** %array_pointer.addr, align 8
  store i32 (%struct.dirent*)* %select_function, i32 (%struct.dirent*)** %select_function.addr, align 8
  store i32 (%struct.dirent**, %struct.dirent**)* %compare_function, i32 (%struct.dirent**, %struct.dirent**)** %compare_function.addr, align 8
  %0 = load i8*, i8** %directory_name.addr, align 8
  %1 = load %struct.dirent***, %struct.dirent**** %array_pointer.addr, align 8
  %2 = load i32 (%struct.dirent*)*, i32 (%struct.dirent*)** %select_function.addr, align 8
  %3 = load i32 (%struct.dirent**, %struct.dirent**)*, i32 (%struct.dirent**, %struct.dirent**)** %compare_function.addr, align 8
  %call = call i32 @"\01_scandir"(i8* %0, %struct.dirent*** %1, i32 (%struct.dirent*)* %2, i32 (%struct.dirent**, %struct.dirent**)* %3)
  ret i32 %call
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 10.0.0 (https://github.com/holzschu/clang.git 0cfc630fbdb62e96720b611a57123ef3eb13e297) (https://github.com/holzschu/llvm.git 0d8a71e39b28502c24718f7e74b5acbcfe36dfe0)"}
