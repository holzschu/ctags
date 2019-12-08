; ModuleID = 'error.c'
source_filename = "error.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-ios11.0.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.sOptionValues = type { i8, i8, i8, i32, i8, i32, i8, i8, %struct.sFmtElement*, i8*, i8*, %struct.sPtrArray*, %struct.sPtrArray*, i32, i8*, i8*, i32, i8, i8, i8*, i32, i8, i8, i8, i8, i8, i8, i32, i8, i32, i32 }
%struct.sFmtElement = type opaque
%struct.sPtrArray = type opaque

@errorPrinter = internal global i1 (i32, i8*, i8*, i8*)* null, align 8
@errorPrinterData = internal global i8* null, align 8
@__stderrp = external global %struct.__sFILE*, align 8
@.str = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Warning: \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [6 x i8] c" : %s\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@Option = external constant %struct.sOptionValues, align 8

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @setErrorPrinter(i1 (i32, i8*, i8*, i8*)* %printer, i8* %data) #0 {
entry:
  %printer.addr = alloca i1 (i32, i8*, i8*, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  store i1 (i32, i8*, i8*, i8*)* %printer, i1 (i32, i8*, i8*, i8*)** %printer.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i1 (i32, i8*, i8*, i8*)*, i1 (i32, i8*, i8*, i8*)** %printer.addr, align 8
  store i1 (i32, i8*, i8*, i8*)* %0, i1 (i32, i8*, i8*, i8*)** @errorPrinter, align 8
  %1 = load i8*, i8** %data.addr, align 8
  store i8* %1, i8** @errorPrinterData, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @stderrDefaultErrorPrinter(i32 %selection, i8* %format, i8* %ap, i8* %data) #0 {
entry:
  %selection.addr = alloca i32, align 4
  %format.addr = alloca i8*, align 8
  %ap.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  store i32 %selection, i32* %selection.addr, align 4
  store i8* %format, i8** %format.addr, align 8
  store i8* %ap, i8** %ap.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %call = call i8* @getExecutableName()
  %1 = load i32, i32* %selection.addr, align 4
  %and = and i32 %1, 2
  %cmp = icmp eq i32 %and, 2
  %2 = zext i1 %cmp to i64
  %cond = select i1 %cmp, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %call1 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %call, i8* %cond)
  %3 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %4 = load i8*, i8** %format.addr, align 8
  %5 = load i8*, i8** %ap.addr, align 8
  %call2 = call i32 @vfprintf(%struct.__sFILE* %3, i8* %4, i8* %5)
  %6 = load i32, i32* %selection.addr, align 4
  %and3 = and i32 %6, 4
  %cmp4 = icmp eq i32 %and3, 4
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %call5 = call i32* @__error()
  %8 = load i32, i32* %call5, align 4
  %call6 = call i8* @"\01_strerror"(i32 %8)
  %call7 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %call6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %call8 = call i32 @"\01_fputs"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), %struct.__sFILE* %9)
  %10 = load i32, i32* %selection.addr, align 4
  %and9 = and i32 %10, 1
  %cmp10 = icmp eq i32 %and9, 1
  br i1 %cmp10, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end
  %11 = load i8, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 26), align 1
  %tobool = trunc i8 %11 to i1
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end
  %12 = phi i1 [ true, %if.end ], [ %tobool, %lor.rhs ]
  %13 = zext i1 %12 to i64
  %cond11 = select i1 %12, i32 1, i32 0
  %tobool12 = icmp ne i32 %cond11, 0
  ret i1 %tobool12
}

declare i32 @fprintf(%struct.__sFILE*, i8*, ...) #1

declare i8* @getExecutableName() #1

declare i32 @vfprintf(%struct.__sFILE*, i8*, i8*) #1

declare i8* @"\01_strerror"(i32) #1

declare i32* @__error() #1

declare i32 @"\01_fputs"(i8*, %struct.__sFILE*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @error(i32 %selection, i8* %format, ...) #0 {
entry:
  %selection.addr = alloca i32, align 4
  %format.addr = alloca i8*, align 8
  %ap = alloca i8*, align 8
  %shouldExit = alloca i8, align 1
  store i32 %selection, i32* %selection.addr, align 4
  store i8* %format, i8** %format.addr, align 8
  %ap1 = bitcast i8** %ap to i8*
  call void @llvm.va_start(i8* %ap1)
  %0 = load i1 (i32, i8*, i8*, i8*)*, i1 (i32, i8*, i8*, i8*)** @errorPrinter, align 8
  %1 = load i32, i32* %selection.addr, align 4
  %2 = load i8*, i8** %format.addr, align 8
  %3 = load i8*, i8** %ap, align 8
  %4 = load i8*, i8** @errorPrinterData, align 8
  %call = call zeroext i1 %0(i32 %1, i8* %2, i8* %3, i8* %4)
  %frombool = zext i1 %call to i8
  store i8 %frombool, i8* %shouldExit, align 1
  %ap2 = bitcast i8** %ap to i8*
  call void @llvm.va_end(i8* %ap2)
  %5 = load i8, i8* %shouldExit, align 1
  %tobool = trunc i8 %5 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void bitcast (void (...)* @ctags_cleanup to void ()*)()
  call void @exit(i32 1) #4
  unreachable

if.end:                                           ; preds = %entry
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #2

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #2

declare void @ctags_cleanup(...) #1

; Function Attrs: noreturn
declare void @exit(i32) #3

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 10.0.0 (https://github.com/holzschu/clang.git 0cfc630fbdb62e96720b611a57123ef3eb13e297) (https://github.com/holzschu/llvm.git 0d8a71e39b28502c24718f7e74b5acbcfe36dfe0)"}
