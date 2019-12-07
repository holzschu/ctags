; ModuleID = 'mbcs.c'
source_filename = "mbcs.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-ios11.0.0"

%struct.sVString = type { i64, i64, i8* }

@warn = internal global i8 0, align 1
@.str = private unnamed_addr constant [34 x i8] c"--input-encoding is not specified\00", align 1
@iconv_fd = internal global i8* inttoptr (i64 -1 to i8*), align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"failed opening encoding from '%s' to '%s'\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"  Encoding: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @openConverter(i8* %inputEncoding, i8* %outputEncoding) #0 {
entry:
  %retval = alloca i1, align 1
  %inputEncoding.addr = alloca i8*, align 8
  %outputEncoding.addr = alloca i8*, align 8
  store i8* %inputEncoding, i8** %inputEncoding.addr, align 8
  store i8* %outputEncoding, i8** %outputEncoding.addr, align 8
  %0 = load i8*, i8** %inputEncoding.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8*, i8** %outputEncoding.addr, align 8
  %tobool1 = icmp ne i8* %1, null
  br i1 %tobool1, label %if.end5, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load i8, i8* @warn, align 1
  %tobool2 = trunc i8 %2 to i1
  br i1 %tobool2, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then
  %3 = load i8*, i8** %outputEncoding.addr, align 8
  %tobool3 = icmp ne i8* %3, null
  br i1 %tobool3, label %if.then4, label %if.end

if.then4:                                         ; preds = %land.lhs.true
  call void (i32, i8*, ...) @error(i32 2, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i8 1, i8* @warn, align 1
  br label %if.end

if.end:                                           ; preds = %if.then4, %land.lhs.true, %if.then
  store i1 false, i1* %retval, align 1
  br label %return

if.end5:                                          ; preds = %lor.lhs.false
  %4 = load i8*, i8** %outputEncoding.addr, align 8
  %5 = load i8*, i8** %inputEncoding.addr, align 8
  %call = call i8* @iconv_open(i8* %4, i8* %5)
  store i8* %call, i8** @iconv_fd, align 8
  %6 = load i8*, i8** @iconv_fd, align 8
  %cmp = icmp eq i8* %6, inttoptr (i64 -1 to i8*)
  br i1 %cmp, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end5
  %7 = load i8*, i8** %inputEncoding.addr, align 8
  %8 = load i8*, i8** %outputEncoding.addr, align 8
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8* %7, i8* %8)
  store i1 false, i1* %retval, align 1
  br label %return

if.end7:                                          ; preds = %if.end5
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end7, %if.then6, %if.end
  %9 = load i1, i1* %retval, align 1
  ret i1 %9
}

declare void @error(i32, i8*, ...) #1

declare i8* @iconv_open(i8*, i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @isConverting() #0 {
entry:
  %0 = load i8*, i8** @iconv_fd, align 8
  %cmp = icmp ne i8* %0, inttoptr (i64 -1 to i8*)
  ret i1 %cmp
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @convertString(%struct.sVString* %string) #0 {
entry:
  %retval = alloca i1, align 1
  %string.addr = alloca %struct.sVString*, align 8
  %dest_len = alloca i64, align 8
  %src_len = alloca i64, align 8
  %dest = alloca i8*, align 8
  %dest_ptr = alloca i8*, align 8
  %src = alloca i8*, align 8
  %vStringClear_s = alloca %struct.sVString*, align 8
  store %struct.sVString* %string, %struct.sVString** %string.addr, align 8
  %0 = load i8*, i8** @iconv_fd, align 8
  %cmp = icmp eq i8* %0, inttoptr (i64 -1 to i8*)
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %1, i32 0, i32 0
  %2 = load i64, i64* %length, align 8
  store i64 %2, i64* %src_len, align 8
  %3 = load i64, i64* %src_len, align 8
  %mul = mul i64 %3, 4
  store i64 %mul, i64* %dest_len, align 8
  %4 = load i64, i64* %dest_len, align 8
  %call = call i8* @eCalloc(i64 %4, i64 1)
  store i8* %call, i8** %dest, align 8
  store i8* %call, i8** %dest_ptr, align 8
  %5 = load i8*, i8** %dest, align 8
  %tobool = icmp ne i8* %5, null
  br i1 %tobool, label %if.end2, label %if.then1

if.then1:                                         ; preds = %if.end
  store i1 false, i1* %retval, align 1
  br label %return

if.end2:                                          ; preds = %if.end
  %6 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %6, i32 0, i32 2
  %7 = load i8*, i8** %buffer, align 8
  store i8* %7, i8** %src, align 8
  br label %retry

retry:                                            ; preds = %if.then8, %if.end2
  %8 = load i8*, i8** @iconv_fd, align 8
  %call3 = call i64 @iconv(i8* %8, i8** %src, i64* %src_len, i8** %dest_ptr, i64* %dest_len)
  %cmp4 = icmp eq i64 %call3, -1
  br i1 %cmp4, label %if.then5, label %if.end14

if.then5:                                         ; preds = %retry
  %call6 = call i32* @__error()
  %9 = load i32, i32* %call6, align 4
  %cmp7 = icmp eq i32 %9, 92
  br i1 %cmp7, label %if.then8, label %if.end13

if.then8:                                         ; preds = %if.then5
  %10 = load i8*, i8** %dest_ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr, i8** %dest_ptr, align 8
  store i8 63, i8* %10, align 1
  %11 = load i64, i64* %dest_len, align 8
  %dec = add i64 %11, -1
  store i64 %dec, i64* %dest_len, align 8
  %12 = load i8*, i8** %src, align 8
  %incdec.ptr9 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr9, i8** %src, align 8
  %13 = load i64, i64* %src_len, align 8
  %dec10 = add i64 %13, -1
  store i64 %dec10, i64* %src_len, align 8
  %call11 = call i32* @__error()
  %14 = load i32, i32* %call11, align 4
  %call12 = call i8* @"\01_strerror"(i32 %14)
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %call12)
  br label %retry

if.end13:                                         ; preds = %if.then5
  %15 = load i8*, i8** %dest, align 8
  call void @eFree(i8* %15)
  store i1 false, i1* %retval, align 1
  br label %return

if.end14:                                         ; preds = %retry
  %16 = load i8*, i8** %dest_ptr, align 8
  %17 = load i8*, i8** %dest, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %16 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %17 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %dest_len, align 8
  br label %do.body

do.body:                                          ; preds = %if.end14
  %18 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  store %struct.sVString* %18, %struct.sVString** %vStringClear_s, align 8
  %19 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %length15 = getelementptr inbounds %struct.sVString, %struct.sVString* %19, i32 0, i32 0
  store i64 0, i64* %length15, align 8
  %20 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %buffer16 = getelementptr inbounds %struct.sVString, %struct.sVString* %20, i32 0, i32 2
  %21 = load i8*, i8** %buffer16, align 8
  %arrayidx = getelementptr inbounds i8, i8* %21, i64 0
  store i8 0, i8* %arrayidx, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  %22 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %size = getelementptr inbounds %struct.sVString, %struct.sVString* %22, i32 0, i32 1
  %23 = load i64, i64* %size, align 8
  %24 = load i64, i64* %dest_len, align 8
  %add = add i64 %24, 1
  %cmp17 = icmp ult i64 %23, %add
  br i1 %cmp17, label %if.then18, label %if.end20

if.then18:                                        ; preds = %do.end
  %25 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %26 = load i64, i64* %dest_len, align 8
  %add19 = add i64 %26, 1
  call void @vStringResize(%struct.sVString* %25, i64 %add19)
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %do.end
  %27 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %buffer21 = getelementptr inbounds %struct.sVString, %struct.sVString* %27, i32 0, i32 2
  %28 = load i8*, i8** %buffer21, align 8
  %29 = load i8*, i8** %dest, align 8
  %30 = load i64, i64* %dest_len, align 8
  %add22 = add i64 %30, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %28, i8* align 1 %29, i64 %add22, i1 false)
  %31 = load i64, i64* %dest_len, align 8
  %32 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %length23 = getelementptr inbounds %struct.sVString, %struct.sVString* %32, i32 0, i32 0
  store i64 %31, i64* %length23, align 8
  %33 = load i8*, i8** %dest, align 8
  call void @eFree(i8* %33)
  %34 = load i8*, i8** @iconv_fd, align 8
  %call24 = call i64 @iconv(i8* %34, i8** null, i64* null, i8** null, i64* null)
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end20, %if.end13, %if.then1, %if.then
  %35 = load i1, i1* %retval, align 1
  ret i1 %35
}

declare i8* @eCalloc(i64, i64) #1

declare i64 @iconv(i8*, i8**, i64*, i8**, i64*) #1

declare i32* @__error() #1

declare void @verbose(i8*, ...) #1

declare i8* @"\01_strerror"(i32) #1

declare void @eFree(i8*) #1

declare void @vStringResize(%struct.sVString*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @closeConverter() #0 {
entry:
  %0 = load i8*, i8** @iconv_fd, align 8
  %cmp = icmp ne i8* %0, inttoptr (i64 -1 to i8*)
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** @iconv_fd, align 8
  %call = call i32 @iconv_close(i8* %1)
  store i8* inttoptr (i64 -1 to i8*), i8** @iconv_fd, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i8 0, i8* @warn, align 1
  ret void
}

declare i32 @iconv_close(i8*) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 10.0.0 (https://github.com/holzschu/clang.git 0cfc630fbdb62e96720b611a57123ef3eb13e297) (https://github.com/holzschu/llvm.git 0d8a71e39b28502c24718f7e74b5acbcfe36dfe0)"}
