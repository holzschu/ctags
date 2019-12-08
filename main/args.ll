; ModuleID = 'args.c'
source_filename = "args.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-ios11.0.0"

%struct.sArgs = type { i32, %union.anon, i8*, i8 }
%union.anon = type { %struct.sArgvArgs }
%struct.sArgvArgs = type { i8**, i8** }
%struct.sStringArgs = type { i8* }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.sFileArgs = type { %struct.__sFILE* }
%struct.sVString = type { i64, i64, i8* }

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sArgs* @argNewFromString(i8* %string) #0 {
entry:
  %string.addr = alloca i8*, align 8
  %result = alloca %struct.sArgs*, align 8
  store i8* %string, i8** %string.addr, align 8
  %call = call i8* @eMalloc(i64 40)
  %0 = bitcast i8* %call to %struct.sArgs*
  store %struct.sArgs* %0, %struct.sArgs** %result, align 8
  %1 = load %struct.sArgs*, %struct.sArgs** %result, align 8
  %2 = bitcast %struct.sArgs* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %2, i8 0, i64 40, i1 false)
  %3 = load %struct.sArgs*, %struct.sArgs** %result, align 8
  %type = getelementptr inbounds %struct.sArgs, %struct.sArgs* %3, i32 0, i32 0
  store i32 1, i32* %type, align 8
  %4 = load i8*, i8** %string.addr, align 8
  %5 = load %struct.sArgs*, %struct.sArgs** %result, align 8
  %u = getelementptr inbounds %struct.sArgs, %struct.sArgs* %5, i32 0, i32 1
  %stringArgs = bitcast %union.anon* %u to %struct.sStringArgs*
  %next = getelementptr inbounds %struct.sStringArgs, %struct.sStringArgs* %stringArgs, i32 0, i32 0
  store i8* %4, i8** %next, align 8
  %6 = load %struct.sArgs*, %struct.sArgs** %result, align 8
  %7 = load %struct.sArgs*, %struct.sArgs** %result, align 8
  %u1 = getelementptr inbounds %struct.sArgs, %struct.sArgs* %7, i32 0, i32 1
  %stringArgs2 = bitcast %union.anon* %u1 to %struct.sStringArgs*
  %next3 = getelementptr inbounds %struct.sStringArgs, %struct.sStringArgs* %stringArgs2, i32 0, i32 0
  %call4 = call i8* @nextString(%struct.sArgs* %6, i8** %next3)
  %8 = load %struct.sArgs*, %struct.sArgs** %result, align 8
  %item = getelementptr inbounds %struct.sArgs, %struct.sArgs* %8, i32 0, i32 2
  store i8* %call4, i8** %item, align 8
  %9 = load %struct.sArgs*, %struct.sArgs** %result, align 8
  ret %struct.sArgs* %9
}

declare i8* @eMalloc(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @nextString(%struct.sArgs* %current, i8** %next) #0 {
entry:
  %current.addr = alloca %struct.sArgs*, align 8
  %next.addr = alloca i8**, align 8
  %result = alloca i8*, align 8
  store %struct.sArgs* %current, %struct.sArgs** %current.addr, align 8
  store i8** %next, i8*** %next.addr, align 8
  %0 = load %struct.sArgs*, %struct.sArgs** %current.addr, align 8
  %lineMode = getelementptr inbounds %struct.sArgs, %struct.sArgs* %0, i32 0, i32 3
  %1 = load i8, i8* %lineMode, align 8
  %tobool = trunc i8 %1 to i1
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i8**, i8*** %next.addr, align 8
  %call = call i8* @nextStringLine(i8** %2)
  store i8* %call, i8** %result, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load i8**, i8*** %next.addr, align 8
  %call1 = call i8* @nextStringArg(i8** %3)
  store i8* %call1, i8** %result, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load i8*, i8** %result, align 8
  ret i8* %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sArgs* @argNewFromArgv(i8** %argv) #0 {
entry:
  %argv.addr = alloca i8**, align 8
  %result = alloca %struct.sArgs*, align 8
  store i8** %argv, i8*** %argv.addr, align 8
  %call = call i8* @eMalloc(i64 40)
  %0 = bitcast i8* %call to %struct.sArgs*
  store %struct.sArgs* %0, %struct.sArgs** %result, align 8
  %1 = load %struct.sArgs*, %struct.sArgs** %result, align 8
  %2 = bitcast %struct.sArgs* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %2, i8 0, i64 40, i1 false)
  %3 = load %struct.sArgs*, %struct.sArgs** %result, align 8
  %type = getelementptr inbounds %struct.sArgs, %struct.sArgs* %3, i32 0, i32 0
  store i32 2, i32* %type, align 8
  %4 = load i8**, i8*** %argv.addr, align 8
  %5 = load %struct.sArgs*, %struct.sArgs** %result, align 8
  %u = getelementptr inbounds %struct.sArgs, %struct.sArgs* %5, i32 0, i32 1
  %argvArgs = bitcast %union.anon* %u to %struct.sArgvArgs*
  %argv1 = getelementptr inbounds %struct.sArgvArgs, %struct.sArgvArgs* %argvArgs, i32 0, i32 0
  store i8** %4, i8*** %argv1, align 8
  %6 = load %struct.sArgs*, %struct.sArgs** %result, align 8
  %u2 = getelementptr inbounds %struct.sArgs, %struct.sArgs* %6, i32 0, i32 1
  %argvArgs3 = bitcast %union.anon* %u2 to %struct.sArgvArgs*
  %argv4 = getelementptr inbounds %struct.sArgvArgs, %struct.sArgvArgs* %argvArgs3, i32 0, i32 0
  %7 = load i8**, i8*** %argv4, align 8
  %8 = load %struct.sArgs*, %struct.sArgs** %result, align 8
  %u5 = getelementptr inbounds %struct.sArgs, %struct.sArgs* %8, i32 0, i32 1
  %argvArgs6 = bitcast %union.anon* %u5 to %struct.sArgvArgs*
  %item = getelementptr inbounds %struct.sArgvArgs, %struct.sArgvArgs* %argvArgs6, i32 0, i32 1
  store i8** %7, i8*** %item, align 8
  %9 = load %struct.sArgs*, %struct.sArgs** %result, align 8
  %u7 = getelementptr inbounds %struct.sArgs, %struct.sArgs* %9, i32 0, i32 1
  %argvArgs8 = bitcast %union.anon* %u7 to %struct.sArgvArgs*
  %item9 = getelementptr inbounds %struct.sArgvArgs, %struct.sArgvArgs* %argvArgs8, i32 0, i32 1
  %10 = load i8**, i8*** %item9, align 8
  %11 = load i8*, i8** %10, align 8
  %12 = load %struct.sArgs*, %struct.sArgs** %result, align 8
  %item10 = getelementptr inbounds %struct.sArgs, %struct.sArgs* %12, i32 0, i32 2
  store i8* %11, i8** %item10, align 8
  %13 = load %struct.sArgs*, %struct.sArgs** %result, align 8
  ret %struct.sArgs* %13
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sArgs* @argNewFromFile(%struct.__sFILE* %fp) #0 {
entry:
  %fp.addr = alloca %struct.__sFILE*, align 8
  %result = alloca %struct.sArgs*, align 8
  store %struct.__sFILE* %fp, %struct.__sFILE** %fp.addr, align 8
  %call = call i8* @eMalloc(i64 40)
  %0 = bitcast i8* %call to %struct.sArgs*
  store %struct.sArgs* %0, %struct.sArgs** %result, align 8
  %1 = load %struct.sArgs*, %struct.sArgs** %result, align 8
  %2 = bitcast %struct.sArgs* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %2, i8 0, i64 40, i1 false)
  %3 = load %struct.sArgs*, %struct.sArgs** %result, align 8
  %type = getelementptr inbounds %struct.sArgs, %struct.sArgs* %3, i32 0, i32 0
  store i32 3, i32* %type, align 8
  %4 = load %struct.__sFILE*, %struct.__sFILE** %fp.addr, align 8
  %5 = load %struct.sArgs*, %struct.sArgs** %result, align 8
  %u = getelementptr inbounds %struct.sArgs, %struct.sArgs* %5, i32 0, i32 1
  %fileArgs = bitcast %union.anon* %u to %struct.sFileArgs*
  %fp1 = getelementptr inbounds %struct.sFileArgs, %struct.sFileArgs* %fileArgs, i32 0, i32 0
  store %struct.__sFILE* %4, %struct.__sFILE** %fp1, align 8
  %6 = load %struct.sArgs*, %struct.sArgs** %result, align 8
  %7 = load %struct.sArgs*, %struct.sArgs** %result, align 8
  %u2 = getelementptr inbounds %struct.sArgs, %struct.sArgs* %7, i32 0, i32 1
  %fileArgs3 = bitcast %union.anon* %u2 to %struct.sFileArgs*
  %fp4 = getelementptr inbounds %struct.sFileArgs, %struct.sFileArgs* %fileArgs3, i32 0, i32 0
  %8 = load %struct.__sFILE*, %struct.__sFILE** %fp4, align 8
  %call5 = call i8* @nextFileString(%struct.sArgs* %6, %struct.__sFILE* %8)
  %9 = load %struct.sArgs*, %struct.sArgs** %result, align 8
  %item = getelementptr inbounds %struct.sArgs, %struct.sArgs* %9, i32 0, i32 2
  store i8* %call5, i8** %item, align 8
  %10 = load %struct.sArgs*, %struct.sArgs** %result, align 8
  ret %struct.sArgs* %10
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @nextFileString(%struct.sArgs* %current, %struct.__sFILE* %fp) #0 {
entry:
  %current.addr = alloca %struct.sArgs*, align 8
  %fp.addr = alloca %struct.__sFILE*, align 8
  %result = alloca i8*, align 8
  store %struct.sArgs* %current, %struct.sArgs** %current.addr, align 8
  store %struct.__sFILE* %fp, %struct.__sFILE** %fp.addr, align 8
  %0 = load %struct.sArgs*, %struct.sArgs** %current.addr, align 8
  %lineMode = getelementptr inbounds %struct.sArgs, %struct.sArgs* %0, i32 0, i32 3
  %1 = load i8, i8* %lineMode, align 8
  %tobool = trunc i8 %1 to i1
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.__sFILE*, %struct.__sFILE** %fp.addr, align 8
  %call = call i8* @nextFileLineSkippingComments(%struct.__sFILE* %2)
  store i8* %call, i8** %result, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load %struct.__sFILE*, %struct.__sFILE** %fp.addr, align 8
  %call1 = call i8* @nextFileArg(%struct.__sFILE* %3)
  store i8* %call1, i8** %result, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load i8*, i8** %result, align 8
  ret i8* %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sArgs* @argNewFromLineFile(%struct.__sFILE* %fp) #0 {
entry:
  %fp.addr = alloca %struct.__sFILE*, align 8
  %result = alloca %struct.sArgs*, align 8
  store %struct.__sFILE* %fp, %struct.__sFILE** %fp.addr, align 8
  %call = call i8* @eMalloc(i64 40)
  %0 = bitcast i8* %call to %struct.sArgs*
  store %struct.sArgs* %0, %struct.sArgs** %result, align 8
  %1 = load %struct.sArgs*, %struct.sArgs** %result, align 8
  %2 = bitcast %struct.sArgs* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %2, i8 0, i64 40, i1 false)
  %3 = load %struct.sArgs*, %struct.sArgs** %result, align 8
  %type = getelementptr inbounds %struct.sArgs, %struct.sArgs* %3, i32 0, i32 0
  store i32 3, i32* %type, align 8
  %4 = load %struct.sArgs*, %struct.sArgs** %result, align 8
  %lineMode = getelementptr inbounds %struct.sArgs, %struct.sArgs* %4, i32 0, i32 3
  store i8 1, i8* %lineMode, align 8
  %5 = load %struct.__sFILE*, %struct.__sFILE** %fp.addr, align 8
  %6 = load %struct.sArgs*, %struct.sArgs** %result, align 8
  %u = getelementptr inbounds %struct.sArgs, %struct.sArgs* %6, i32 0, i32 1
  %fileArgs = bitcast %union.anon* %u to %struct.sFileArgs*
  %fp1 = getelementptr inbounds %struct.sFileArgs, %struct.sFileArgs* %fileArgs, i32 0, i32 0
  store %struct.__sFILE* %5, %struct.__sFILE** %fp1, align 8
  %7 = load %struct.sArgs*, %struct.sArgs** %result, align 8
  %8 = load %struct.sArgs*, %struct.sArgs** %result, align 8
  %u2 = getelementptr inbounds %struct.sArgs, %struct.sArgs* %8, i32 0, i32 1
  %fileArgs3 = bitcast %union.anon* %u2 to %struct.sFileArgs*
  %fp4 = getelementptr inbounds %struct.sFileArgs, %struct.sFileArgs* %fileArgs3, i32 0, i32 0
  %9 = load %struct.__sFILE*, %struct.__sFILE** %fp4, align 8
  %call5 = call i8* @nextFileString(%struct.sArgs* %7, %struct.__sFILE* %9)
  %10 = load %struct.sArgs*, %struct.sArgs** %result, align 8
  %item = getelementptr inbounds %struct.sArgs, %struct.sArgs* %10, i32 0, i32 2
  store i8* %call5, i8** %item, align 8
  %11 = load %struct.sArgs*, %struct.sArgs** %result, align 8
  ret %struct.sArgs* %11
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @argItem(%struct.sArgs* %current) #0 {
entry:
  %current.addr = alloca %struct.sArgs*, align 8
  store %struct.sArgs* %current, %struct.sArgs** %current.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  %0 = load %struct.sArgs*, %struct.sArgs** %current.addr, align 8
  %item = getelementptr inbounds %struct.sArgs, %struct.sArgs* %0, i32 0, i32 2
  %1 = load i8*, i8** %item, align 8
  ret i8* %1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @argOff(%struct.sArgs* %current) #0 {
entry:
  %current.addr = alloca %struct.sArgs*, align 8
  store %struct.sArgs* %current, %struct.sArgs** %current.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.sArgs*, %struct.sArgs** %current.addr, align 8
  %item = getelementptr inbounds %struct.sArgs, %struct.sArgs* %0, i32 0, i32 2
  %1 = load i8*, i8** %item, align 8
  %cmp = icmp eq i8* %1, null
  ret i1 %cmp
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @argSetWordMode(%struct.sArgs* %current) #0 {
entry:
  %current.addr = alloca %struct.sArgs*, align 8
  store %struct.sArgs* %current, %struct.sArgs** %current.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.sArgs*, %struct.sArgs** %current.addr, align 8
  %lineMode = getelementptr inbounds %struct.sArgs, %struct.sArgs* %0, i32 0, i32 3
  store i8 0, i8* %lineMode, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @argSetLineMode(%struct.sArgs* %current) #0 {
entry:
  %current.addr = alloca %struct.sArgs*, align 8
  store %struct.sArgs* %current, %struct.sArgs** %current.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.sArgs*, %struct.sArgs** %current.addr, align 8
  %lineMode = getelementptr inbounds %struct.sArgs, %struct.sArgs* %0, i32 0, i32 3
  store i8 1, i8* %lineMode, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @argForth(%struct.sArgs* %current) #0 {
entry:
  %current.addr = alloca %struct.sArgs*, align 8
  store %struct.sArgs* %current, %struct.sArgs** %current.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  %0 = load %struct.sArgs*, %struct.sArgs** %current.addr, align 8
  %type = getelementptr inbounds %struct.sArgs, %struct.sArgs* %0, i32 0, i32 0
  %1 = load i32, i32* %type, align 8
  switch i32 %1, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb5
    i32 3, label %sw.bb12
  ]

sw.bb:                                            ; preds = %do.end2
  %2 = load %struct.sArgs*, %struct.sArgs** %current.addr, align 8
  %item = getelementptr inbounds %struct.sArgs, %struct.sArgs* %2, i32 0, i32 2
  %3 = load i8*, i8** %item, align 8
  %cmp = icmp ne i8* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %4 = load %struct.sArgs*, %struct.sArgs** %current.addr, align 8
  %item3 = getelementptr inbounds %struct.sArgs, %struct.sArgs* %4, i32 0, i32 2
  %5 = load i8*, i8** %item3, align 8
  call void @eFree(i8* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  %6 = load %struct.sArgs*, %struct.sArgs** %current.addr, align 8
  %7 = load %struct.sArgs*, %struct.sArgs** %current.addr, align 8
  %u = getelementptr inbounds %struct.sArgs, %struct.sArgs* %7, i32 0, i32 1
  %stringArgs = bitcast %union.anon* %u to %struct.sStringArgs*
  %next = getelementptr inbounds %struct.sStringArgs, %struct.sStringArgs* %stringArgs, i32 0, i32 0
  %call = call i8* @nextString(%struct.sArgs* %6, i8** %next)
  %8 = load %struct.sArgs*, %struct.sArgs** %current.addr, align 8
  %item4 = getelementptr inbounds %struct.sArgs, %struct.sArgs* %8, i32 0, i32 2
  store i8* %call, i8** %item4, align 8
  br label %sw.epilog

sw.bb5:                                           ; preds = %do.end2
  %9 = load %struct.sArgs*, %struct.sArgs** %current.addr, align 8
  %u6 = getelementptr inbounds %struct.sArgs, %struct.sArgs* %9, i32 0, i32 1
  %argvArgs = bitcast %union.anon* %u6 to %struct.sArgvArgs*
  %item7 = getelementptr inbounds %struct.sArgvArgs, %struct.sArgvArgs* %argvArgs, i32 0, i32 1
  %10 = load i8**, i8*** %item7, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %10, i32 1
  store i8** %incdec.ptr, i8*** %item7, align 8
  %11 = load %struct.sArgs*, %struct.sArgs** %current.addr, align 8
  %u8 = getelementptr inbounds %struct.sArgs, %struct.sArgs* %11, i32 0, i32 1
  %argvArgs9 = bitcast %union.anon* %u8 to %struct.sArgvArgs*
  %item10 = getelementptr inbounds %struct.sArgvArgs, %struct.sArgvArgs* %argvArgs9, i32 0, i32 1
  %12 = load i8**, i8*** %item10, align 8
  %13 = load i8*, i8** %12, align 8
  %14 = load %struct.sArgs*, %struct.sArgs** %current.addr, align 8
  %item11 = getelementptr inbounds %struct.sArgs, %struct.sArgs* %14, i32 0, i32 2
  store i8* %13, i8** %item11, align 8
  br label %sw.epilog

sw.bb12:                                          ; preds = %do.end2
  %15 = load %struct.sArgs*, %struct.sArgs** %current.addr, align 8
  %item13 = getelementptr inbounds %struct.sArgs, %struct.sArgs* %15, i32 0, i32 2
  %16 = load i8*, i8** %item13, align 8
  %cmp14 = icmp ne i8* %16, null
  br i1 %cmp14, label %if.then15, label %if.end17

if.then15:                                        ; preds = %sw.bb12
  %17 = load %struct.sArgs*, %struct.sArgs** %current.addr, align 8
  %item16 = getelementptr inbounds %struct.sArgs, %struct.sArgs* %17, i32 0, i32 2
  %18 = load i8*, i8** %item16, align 8
  call void @eFree(i8* %18)
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %sw.bb12
  %19 = load %struct.sArgs*, %struct.sArgs** %current.addr, align 8
  %20 = load %struct.sArgs*, %struct.sArgs** %current.addr, align 8
  %u18 = getelementptr inbounds %struct.sArgs, %struct.sArgs* %20, i32 0, i32 1
  %fileArgs = bitcast %union.anon* %u18 to %struct.sFileArgs*
  %fp = getelementptr inbounds %struct.sFileArgs, %struct.sFileArgs* %fileArgs, i32 0, i32 0
  %21 = load %struct.__sFILE*, %struct.__sFILE** %fp, align 8
  %call19 = call i8* @nextFileString(%struct.sArgs* %19, %struct.__sFILE* %21)
  %22 = load %struct.sArgs*, %struct.sArgs** %current.addr, align 8
  %item20 = getelementptr inbounds %struct.sArgs, %struct.sArgs* %22, i32 0, i32 2
  store i8* %call19, i8** %item20, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %do.end2
  br label %do.body21

do.body21:                                        ; preds = %sw.default
  br label %do.end22

do.end22:                                         ; preds = %do.body21
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end22, %if.end17, %sw.bb5, %if.end
  ret void
}

declare void @eFree(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @argDelete(%struct.sArgs* %current) #0 {
entry:
  %current.addr = alloca %struct.sArgs*, align 8
  store %struct.sArgs* %current, %struct.sArgs** %current.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.sArgs*, %struct.sArgs** %current.addr, align 8
  %type = getelementptr inbounds %struct.sArgs, %struct.sArgs* %0, i32 0, i32 0
  %1 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %2 = load %struct.sArgs*, %struct.sArgs** %current.addr, align 8
  %type1 = getelementptr inbounds %struct.sArgs, %struct.sArgs* %2, i32 0, i32 0
  %3 = load i32, i32* %type1, align 8
  %cmp2 = icmp eq i32 %3, 3
  br i1 %cmp2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false, %do.end
  %4 = load %struct.sArgs*, %struct.sArgs** %current.addr, align 8
  %item = getelementptr inbounds %struct.sArgs, %struct.sArgs* %4, i32 0, i32 2
  %5 = load i8*, i8** %item, align 8
  %cmp3 = icmp ne i8* %5, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct.sArgs*, %struct.sArgs** %current.addr, align 8
  %item4 = getelementptr inbounds %struct.sArgs, %struct.sArgs* %6, i32 0, i32 2
  %7 = load i8*, i8** %item4, align 8
  call void @eFree(i8* %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %lor.lhs.false
  %8 = load %struct.sArgs*, %struct.sArgs** %current.addr, align 8
  %9 = bitcast %struct.sArgs* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 40, i1 false)
  %10 = load %struct.sArgs*, %struct.sArgs** %current.addr, align 8
  %11 = bitcast %struct.sArgs* %10 to i8*
  call void @eFree(i8* %11)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @nextStringLine(i8** %next) #0 {
entry:
  %next.addr = alloca i8**, align 8
  %result = alloca i8*, align 8
  %length = alloca i64, align 8
  %end = alloca i8*, align 8
  store i8** %next, i8*** %next.addr, align 8
  store i8* null, i8** %result, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load i8**, i8*** %next.addr, align 8
  %1 = load i8*, i8** %0, align 8
  store i8* %1, i8** %end, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %2 = load i8*, i8** %end, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp ne i32 %conv, 10
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %4 = load i8*, i8** %end, align 8
  %5 = load i8, i8* %4, align 1
  %conv2 = sext i8 %5 to i32
  %cmp3 = icmp ne i32 %conv2, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %6 = phi i1 [ false, %for.cond ], [ %cmp3, %land.rhs ]
  br i1 %6, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i8*, i8** %end, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %end, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %8 = load i8*, i8** %end, align 8
  %9 = load i8**, i8*** %next.addr, align 8
  %10 = load i8*, i8** %9, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %8 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %10 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %length, align 8
  %11 = load i64, i64* %length, align 8
  %cmp5 = icmp ugt i64 %11, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %12 = load i64, i64* %length, align 8
  %add = add i64 %12, 1
  %mul = mul i64 %add, 1
  %call = call i8* @eMalloc(i64 %mul)
  store i8* %call, i8** %result, align 8
  %13 = load i8*, i8** %result, align 8
  %14 = load i8**, i8*** %next.addr, align 8
  %15 = load i8*, i8** %14, align 8
  %16 = load i64, i64* %length, align 8
  %call7 = call i8* @strncpy(i8* %13, i8* %15, i64 %16)
  %17 = load i8*, i8** %result, align 8
  %18 = load i64, i64* %length, align 8
  %arrayidx = getelementptr inbounds i8, i8* %17, i64 %18
  store i8 0, i8* %arrayidx, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %19 = load i8*, i8** %end, align 8
  %20 = load i8, i8* %19, align 1
  %conv8 = sext i8 %20 to i32
  %cmp9 = icmp eq i32 %conv8, 10
  br i1 %cmp9, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end
  %21 = load i8*, i8** %end, align 8
  %incdec.ptr12 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr12, i8** %end, align 8
  br label %if.end25

if.else:                                          ; preds = %if.end
  %22 = load i8*, i8** %end, align 8
  %23 = load i8, i8* %22, align 1
  %conv13 = sext i8 %23 to i32
  %cmp14 = icmp eq i32 %conv13, 13
  br i1 %cmp14, label %if.then16, label %if.end24

if.then16:                                        ; preds = %if.else
  %24 = load i8*, i8** %end, align 8
  %incdec.ptr17 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr17, i8** %end, align 8
  %25 = load i8*, i8** %end, align 8
  %26 = load i8, i8* %25, align 1
  %conv18 = sext i8 %26 to i32
  %cmp19 = icmp eq i32 %conv18, 10
  br i1 %cmp19, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.then16
  %27 = load i8*, i8** %end, align 8
  %incdec.ptr22 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr22, i8** %end, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.then16
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.else
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.then11
  %28 = load i8*, i8** %end, align 8
  %29 = load i8**, i8*** %next.addr, align 8
  store i8* %28, i8** %29, align 8
  %30 = load i8*, i8** %result, align 8
  ret i8* %30
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @nextStringArg(i8** %next) #0 {
entry:
  %next.addr = alloca i8**, align 8
  %result = alloca i8*, align 8
  %start = alloca i8*, align 8
  %length = alloca i64, align 8
  %end = alloca i8*, align 8
  store i8** %next, i8*** %next.addr, align 8
  store i8* null, i8** %result, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load i8**, i8*** %next.addr, align 8
  %1 = load i8*, i8** %0, align 8
  store i8* %1, i8** %start, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %2 = load i8*, i8** %start, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %call = call i32 @isspace(i32 %conv) #4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i8*, i8** %start, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %start, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %5 = load i8*, i8** %start, align 8
  %6 = load i8, i8* %5, align 1
  %conv1 = sext i8 %6 to i32
  %cmp = icmp eq i32 %conv1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  %7 = load i8*, i8** %start, align 8
  %8 = load i8**, i8*** %next.addr, align 8
  store i8* %7, i8** %8, align 8
  br label %if.end

if.else:                                          ; preds = %for.end
  %9 = load i8*, i8** %start, align 8
  store i8* %9, i8** %end, align 8
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc11, %if.else
  %10 = load i8*, i8** %end, align 8
  %11 = load i8, i8* %10, align 1
  %conv4 = sext i8 %11 to i32
  %cmp5 = icmp ne i32 %conv4, 0
  br i1 %cmp5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond3
  %12 = load i8*, i8** %end, align 8
  %13 = load i8, i8* %12, align 1
  %conv7 = sext i8 %13 to i32
  %call8 = call i32 @isspace(i32 %conv7) #4
  %tobool9 = icmp ne i32 %call8, 0
  %lnot = xor i1 %tobool9, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond3
  %14 = phi i1 [ false, %for.cond3 ], [ %lnot, %land.rhs ]
  br i1 %14, label %for.body10, label %for.end13

for.body10:                                       ; preds = %land.end
  br label %for.inc11

for.inc11:                                        ; preds = %for.body10
  %15 = load i8*, i8** %end, align 8
  %incdec.ptr12 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr12, i8** %end, align 8
  br label %for.cond3

for.end13:                                        ; preds = %land.end
  %16 = load i8*, i8** %end, align 8
  %17 = load i8*, i8** %start, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %16 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %17 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %length, align 8
  br label %do.body14

do.body14:                                        ; preds = %for.end13
  br label %do.end15

do.end15:                                         ; preds = %do.body14
  %18 = load i64, i64* %length, align 8
  %add = add i64 %18, 1
  %mul = mul i64 %add, 1
  %call16 = call i8* @eMalloc(i64 %mul)
  store i8* %call16, i8** %result, align 8
  %19 = load i8*, i8** %result, align 8
  %20 = load i8*, i8** %start, align 8
  %21 = load i64, i64* %length, align 8
  %call17 = call i8* @strncpy(i8* %19, i8* %20, i64 %21)
  %22 = load i8*, i8** %result, align 8
  %23 = load i64, i64* %length, align 8
  %arrayidx = getelementptr inbounds i8, i8* %22, i64 %23
  store i8 0, i8* %arrayidx, align 1
  %24 = load i8*, i8** %end, align 8
  %25 = load i8**, i8*** %next.addr, align 8
  store i8* %24, i8** %25, align 8
  br label %if.end

if.end:                                           ; preds = %do.end15, %if.then
  %26 = load i8*, i8** %result, align 8
  ret i8* %26
}

declare i8* @strncpy(i8*, i8*, i64) #1

; Function Attrs: nounwind readonly
declare i32 @isspace(i32) #3

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @nextFileLineSkippingComments(%struct.__sFILE* %fp) #0 {
entry:
  %fp.addr = alloca %struct.__sFILE*, align 8
  %result = alloca i8*, align 8
  %comment = alloca i8, align 1
  store %struct.__sFILE* %fp, %struct.__sFILE** %fp.addr, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load %struct.__sFILE*, %struct.__sFILE** %fp.addr, align 8
  %call = call i8* @nextFileLine(%struct.__sFILE* %0)
  store i8* %call, i8** %result, align 8
  %1 = load i8*, i8** %result, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.body
  %2 = load i8*, i8** %result, align 8
  %call1 = call zeroext i1 @isCommentLine(i8* %2)
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.body
  %3 = phi i1 [ false, %do.body ], [ %call1, %land.rhs ]
  %frombool = zext i1 %3 to i8
  store i8 %frombool, i8* %comment, align 1
  %4 = load i8, i8* %comment, align 1
  %tobool2 = trunc i8 %4 to i1
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %land.end
  %5 = load i8*, i8** %result, align 8
  call void @eFree(i8* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %6 = load i8, i8* %comment, align 1
  %tobool3 = trunc i8 %6 to i1
  br i1 %tobool3, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %7 = load i8*, i8** %result, align 8
  ret i8* %7
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @nextFileArg(%struct.__sFILE* %fp) #0 {
entry:
  %fp.addr = alloca %struct.__sFILE*, align 8
  %result = alloca i8*, align 8
  %vs = alloca %struct.sVString*, align 8
  %c = alloca i32, align 4
  store %struct.__sFILE* %fp, %struct.__sFILE** %fp.addr, align 8
  store i8* null, i8** %result, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.__sFILE*, %struct.__sFILE** %fp.addr, align 8
  %call = call i32 @feof(%struct.__sFILE* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end20, label %if.then

if.then:                                          ; preds = %do.end
  %call1 = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call1, %struct.sVString** %vs, align 8
  br label %do.body2

do.body2:                                         ; preds = %do.cond, %if.then
  %1 = load %struct.__sFILE*, %struct.__sFILE** %fp.addr, align 8
  %call3 = call i32 @fgetc(%struct.__sFILE* %1)
  store i32 %call3, i32* %c, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body2
  %2 = load i32, i32* %c, align 4
  %call4 = call i32 @isspace(i32 %2) #4
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %do.body2, label %do.end6

do.end6:                                          ; preds = %do.cond
  %3 = load i32, i32* %c, align 4
  %cmp = icmp ne i32 %3, -1
  br i1 %cmp, label %if.then7, label %if.end

if.then7:                                         ; preds = %do.end6
  br label %do.body8

do.body8:                                         ; preds = %land.end, %if.then7
  %4 = load %struct.sVString*, %struct.sVString** %vs, align 8
  %5 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %4, i32 %5)
  %6 = load %struct.__sFILE*, %struct.__sFILE** %fp.addr, align 8
  %call9 = call i32 @fgetc(%struct.__sFILE* %6)
  store i32 %call9, i32* %c, align 4
  br label %do.cond10

do.cond10:                                        ; preds = %do.body8
  %7 = load i32, i32* %c, align 4
  %cmp11 = icmp ne i32 %7, -1
  br i1 %cmp11, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond10
  %8 = load i32, i32* %c, align 4
  %call12 = call i32 @isspace(i32 %8) #4
  %tobool13 = icmp ne i32 %call12, 0
  %lnot = xor i1 %tobool13, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond10
  %9 = phi i1 [ false, %do.cond10 ], [ %lnot, %land.rhs ]
  br i1 %9, label %do.body8, label %do.end14

do.end14:                                         ; preds = %land.end
  br label %do.body15

do.body15:                                        ; preds = %do.end14
  br label %do.end17

do.end17:                                         ; preds = %do.body15
  %10 = load %struct.sVString*, %struct.sVString** %vs, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %10, i32 0, i32 0
  %11 = load i64, i64* %length, align 8
  %add = add i64 %11, 1
  %mul = mul i64 %add, 1
  %call18 = call i8* @eMalloc(i64 %mul)
  store i8* %call18, i8** %result, align 8
  %12 = load i8*, i8** %result, align 8
  %13 = load %struct.sVString*, %struct.sVString** %vs, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %13, i32 0, i32 2
  %14 = load i8*, i8** %buffer, align 8
  %call19 = call i8* @strcpy(i8* %12, i8* %14)
  br label %if.end

if.end:                                           ; preds = %do.end17, %do.end6
  %15 = load %struct.sVString*, %struct.sVString** %vs, align 8
  call void @vStringDelete(%struct.sVString* %15)
  br label %if.end20

if.end20:                                         ; preds = %if.end, %do.end
  %16 = load i8*, i8** %result, align 8
  ret i8* %16
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @nextFileLine(%struct.__sFILE* %fp) #0 {
entry:
  %fp.addr = alloca %struct.__sFILE*, align 8
  %result = alloca i8*, align 8
  %vs = alloca %struct.sVString*, align 8
  %c = alloca i32, align 4
  store %struct.__sFILE* %fp, %struct.__sFILE** %fp.addr, align 8
  store i8* null, i8** %result, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.__sFILE*, %struct.__sFILE** %fp.addr, align 8
  %call = call i32 @feof(%struct.__sFILE* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end26, label %if.then

if.then:                                          ; preds = %do.end
  %call1 = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call1, %struct.sVString** %vs, align 8
  %1 = load %struct.__sFILE*, %struct.__sFILE** %fp.addr, align 8
  %call2 = call i32 @fgetc(%struct.__sFILE* %1)
  store i32 %call2, i32* %c, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end8, %if.then
  %2 = load i32, i32* %c, align 4
  %cmp = icmp ne i32 %2, -1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32, i32* %c, align 4
  %cmp3 = icmp ne i32 %3, 10
  br i1 %cmp3, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %while.body
  %4 = load i32, i32* %c, align 4
  %cmp4 = icmp ne i32 %4, 13
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %land.lhs.true
  %5 = load %struct.sVString*, %struct.sVString** %vs, align 8
  %6 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %5, i32 %6)
  br label %if.end8

if.else:                                          ; preds = %land.lhs.true, %while.body
  %7 = load %struct.sVString*, %struct.sVString** %vs, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %7, i32 0, i32 0
  %8 = load i64, i64* %length, align 8
  %cmp6 = icmp ugt i64 %8, 0
  br i1 %cmp6, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.else
  br label %while.end

if.end:                                           ; preds = %if.else
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then5
  %9 = load %struct.__sFILE*, %struct.__sFILE** %fp.addr, align 8
  %call9 = call i32 @fgetc(%struct.__sFILE* %9)
  store i32 %call9, i32* %c, align 4
  br label %while.cond

while.end:                                        ; preds = %if.then7, %while.cond
  %10 = load i32, i32* %c, align 4
  %cmp10 = icmp ne i32 %10, -1
  br i1 %cmp10, label %if.then13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end
  %11 = load %struct.sVString*, %struct.sVString** %vs, align 8
  %length11 = getelementptr inbounds %struct.sVString, %struct.sVString* %11, i32 0, i32 0
  %12 = load i64, i64* %length11, align 8
  %cmp12 = icmp ugt i64 %12, 0
  br i1 %cmp12, label %if.then13, label %if.end25

if.then13:                                        ; preds = %lor.lhs.false, %while.end
  %13 = load i32, i32* %c, align 4
  %cmp14 = icmp eq i32 %13, 13
  br i1 %cmp14, label %if.then15, label %if.end21

if.then15:                                        ; preds = %if.then13
  %14 = load %struct.__sFILE*, %struct.__sFILE** %fp.addr, align 8
  %call16 = call i32 @fgetc(%struct.__sFILE* %14)
  store i32 %call16, i32* %c, align 4
  %15 = load i32, i32* %c, align 4
  %cmp17 = icmp ne i32 %15, 10
  br i1 %cmp17, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.then15
  %16 = load i32, i32* %c, align 4
  %17 = load %struct.__sFILE*, %struct.__sFILE** %fp.addr, align 8
  %call19 = call i32 @ungetc(i32 %16, %struct.__sFILE* %17)
  store i32 %call19, i32* %c, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.then15
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %if.then13
  %18 = load %struct.sVString*, %struct.sVString** %vs, align 8
  call void @vStringStripTrailing(%struct.sVString* %18)
  %19 = load %struct.sVString*, %struct.sVString** %vs, align 8
  %length22 = getelementptr inbounds %struct.sVString, %struct.sVString* %19, i32 0, i32 0
  %20 = load i64, i64* %length22, align 8
  %add = add i64 %20, 1
  %mul = mul i64 %add, 1
  %call23 = call i8* @eMalloc(i64 %mul)
  store i8* %call23, i8** %result, align 8
  %21 = load %struct.sVString*, %struct.sVString** %vs, align 8
  call void @vStringStripLeading(%struct.sVString* %21)
  %22 = load i8*, i8** %result, align 8
  %23 = load %struct.sVString*, %struct.sVString** %vs, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %23, i32 0, i32 2
  %24 = load i8*, i8** %buffer, align 8
  %call24 = call i8* @strcpy(i8* %22, i8* %24)
  br label %if.end25

if.end25:                                         ; preds = %if.end21, %lor.lhs.false
  %25 = load %struct.sVString*, %struct.sVString** %vs, align 8
  call void @vStringDelete(%struct.sVString* %25)
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %do.end
  %26 = load i8*, i8** %result, align 8
  ret i8* %26
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @isCommentLine(i8* %line) #0 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i8*, i8** %line.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %call = call i32 @isspace(i32 %conv) #4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i8*, i8** %line.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %line.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %3 = load i8*, i8** %line.addr, align 8
  %4 = load i8, i8* %3, align 1
  %conv1 = sext i8 %4 to i32
  %cmp = icmp eq i32 %conv1, 35
  ret i1 %cmp
}

declare i32 @feof(%struct.__sFILE*) #1

declare %struct.sVString* @vStringNew() #1

declare i32 @fgetc(%struct.__sFILE*) #1

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

declare i32 @ungetc(i32, %struct.__sFILE*) #1

declare void @vStringStripTrailing(%struct.sVString*) #1

declare void @vStringStripLeading(%struct.sVString*) #1

declare i8* @strcpy(i8*, i8*) #1

declare void @vStringDelete(%struct.sVString*) #1

declare void @vStringResize(%struct.sVString*, i64) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 10.0.0 (https://github.com/holzschu/clang.git 0cfc630fbdb62e96720b611a57123ef3eb13e297) (https://github.com/holzschu/llvm.git 0d8a71e39b28502c24718f7e74b5acbcfe36dfe0)"}
