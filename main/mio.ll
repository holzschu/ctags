; ModuleID = 'mio.c'
source_filename = "mio.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-ios11.0.0"

%struct._MIO = type { i32, i32, %union.anon, %struct._MIOUserData }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { i8*, i32, i64, i64, i64, i8* (i8*, i64)*, void (i8*)*, i8, i8 }
%struct._MIOUserData = type { i8*, void (i8*)* }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.anon = type { %struct.__sFILE*, i32 (%struct.__sFILE*)* }
%struct._MIOPos = type { i32, %union.anon.1 }
%union.anon.1 = type { i64 }

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct._MIO* @mio_new_file_full(i8* %filename, i8* %mode, %struct.__sFILE* (i8*, i8*)* %open_func, i32 (%struct.__sFILE*)* %close_func) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  %mode.addr = alloca i8*, align 8
  %open_func.addr = alloca %struct.__sFILE* (i8*, i8*)*, align 8
  %close_func.addr = alloca i32 (%struct.__sFILE*)*, align 8
  %mio = alloca %struct._MIO*, align 8
  %fp = alloca %struct.__sFILE*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i8* %mode, i8** %mode.addr, align 8
  store %struct.__sFILE* (i8*, i8*)* %open_func, %struct.__sFILE* (i8*, i8*)** %open_func.addr, align 8
  store i32 (%struct.__sFILE*)* %close_func, i32 (%struct.__sFILE*)** %close_func.addr, align 8
  %call = call i8* @eMalloc(i64 88)
  %0 = bitcast i8* %call to %struct._MIO*
  store %struct._MIO* %0, %struct._MIO** %mio, align 8
  %1 = load %struct._MIO*, %struct._MIO** %mio, align 8
  %tobool = icmp ne %struct._MIO* %1, null
  br i1 %tobool, label %if.then, label %if.end9

if.then:                                          ; preds = %entry
  %2 = load %struct.__sFILE* (i8*, i8*)*, %struct.__sFILE* (i8*, i8*)** %open_func.addr, align 8
  %3 = load i8*, i8** %filename.addr, align 8
  %4 = load i8*, i8** %mode.addr, align 8
  %call1 = call %struct.__sFILE* %2(i8* %3, i8* %4)
  store %struct.__sFILE* %call1, %struct.__sFILE** %fp, align 8
  %5 = load %struct.__sFILE*, %struct.__sFILE** %fp, align 8
  %tobool2 = icmp ne %struct.__sFILE* %5, null
  br i1 %tobool2, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.then
  %6 = load %struct._MIO*, %struct._MIO** %mio, align 8
  %7 = bitcast %struct._MIO* %6 to i8*
  call void @eFree(i8* %7)
  store %struct._MIO* null, %struct._MIO** %mio, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %8 = load %struct._MIO*, %struct._MIO** %mio, align 8
  %type = getelementptr inbounds %struct._MIO, %struct._MIO* %8, i32 0, i32 0
  store i32 0, i32* %type, align 8
  %9 = load %struct.__sFILE*, %struct.__sFILE** %fp, align 8
  %10 = load %struct._MIO*, %struct._MIO** %mio, align 8
  %impl = getelementptr inbounds %struct._MIO, %struct._MIO* %10, i32 0, i32 2
  %file = bitcast %union.anon* %impl to %struct.anon*
  %fp4 = getelementptr inbounds %struct.anon, %struct.anon* %file, i32 0, i32 0
  store %struct.__sFILE* %9, %struct.__sFILE** %fp4, align 8
  %11 = load i32 (%struct.__sFILE*)*, i32 (%struct.__sFILE*)** %close_func.addr, align 8
  %12 = load %struct._MIO*, %struct._MIO** %mio, align 8
  %impl5 = getelementptr inbounds %struct._MIO, %struct._MIO* %12, i32 0, i32 2
  %file6 = bitcast %union.anon* %impl5 to %struct.anon*
  %close_func7 = getelementptr inbounds %struct.anon, %struct.anon* %file6, i32 0, i32 1
  store i32 (%struct.__sFILE*)* %11, i32 (%struct.__sFILE*)** %close_func7, align 8
  %13 = load %struct._MIO*, %struct._MIO** %mio, align 8
  %refcount = getelementptr inbounds %struct._MIO, %struct._MIO* %13, i32 0, i32 1
  store i32 1, i32* %refcount, align 4
  %14 = load %struct._MIO*, %struct._MIO** %mio, align 8
  %udata = getelementptr inbounds %struct._MIO, %struct._MIO* %14, i32 0, i32 3
  %d = getelementptr inbounds %struct._MIOUserData, %struct._MIOUserData* %udata, i32 0, i32 0
  store i8* null, i8** %d, align 8
  %15 = load %struct._MIO*, %struct._MIO** %mio, align 8
  %udata8 = getelementptr inbounds %struct._MIO, %struct._MIO* %15, i32 0, i32 3
  %f = getelementptr inbounds %struct._MIOUserData, %struct._MIOUserData* %udata8, i32 0, i32 1
  store void (i8*)* null, void (i8*)** %f, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then3
  br label %if.end9

if.end9:                                          ; preds = %if.end, %entry
  %16 = load %struct._MIO*, %struct._MIO** %mio, align 8
  ret %struct._MIO* %16
}

declare i8* @eMalloc(i64) #1

declare void @eFree(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct._MIO* @mio_new_file(i8* %filename, i8* %mode) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  %mode.addr = alloca i8*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i8* %mode, i8** %mode.addr, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %1 = load i8*, i8** %mode.addr, align 8
  %call = call %struct._MIO* @mio_new_file_full(i8* %0, i8* %1, %struct.__sFILE* (i8*, i8*)* @"\01_fopen", i32 (%struct.__sFILE*)* @fclose)
  ret %struct._MIO* %call
}

declare %struct.__sFILE* @"\01_fopen"(i8*, i8*) #1

declare i32 @fclose(%struct.__sFILE*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct._MIO* @mio_new_fp(%struct.__sFILE* %fp, i32 (%struct.__sFILE*)* %close_func) #0 {
entry:
  %retval = alloca %struct._MIO*, align 8
  %fp.addr = alloca %struct.__sFILE*, align 8
  %close_func.addr = alloca i32 (%struct.__sFILE*)*, align 8
  %mio = alloca %struct._MIO*, align 8
  store %struct.__sFILE* %fp, %struct.__sFILE** %fp.addr, align 8
  store i32 (%struct.__sFILE*)* %close_func, i32 (%struct.__sFILE*)** %close_func.addr, align 8
  %0 = load %struct.__sFILE*, %struct.__sFILE** %fp.addr, align 8
  %tobool = icmp ne %struct.__sFILE* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._MIO* null, %struct._MIO** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %call = call i8* @eMalloc(i64 88)
  %1 = bitcast i8* %call to %struct._MIO*
  store %struct._MIO* %1, %struct._MIO** %mio, align 8
  %2 = load %struct._MIO*, %struct._MIO** %mio, align 8
  %tobool1 = icmp ne %struct._MIO* %2, null
  br i1 %tobool1, label %if.then2, label %if.end8

if.then2:                                         ; preds = %if.end
  %3 = load %struct._MIO*, %struct._MIO** %mio, align 8
  %type = getelementptr inbounds %struct._MIO, %struct._MIO* %3, i32 0, i32 0
  store i32 0, i32* %type, align 8
  %4 = load %struct.__sFILE*, %struct.__sFILE** %fp.addr, align 8
  %5 = load %struct._MIO*, %struct._MIO** %mio, align 8
  %impl = getelementptr inbounds %struct._MIO, %struct._MIO* %5, i32 0, i32 2
  %file = bitcast %union.anon* %impl to %struct.anon*
  %fp3 = getelementptr inbounds %struct.anon, %struct.anon* %file, i32 0, i32 0
  store %struct.__sFILE* %4, %struct.__sFILE** %fp3, align 8
  %6 = load i32 (%struct.__sFILE*)*, i32 (%struct.__sFILE*)** %close_func.addr, align 8
  %7 = load %struct._MIO*, %struct._MIO** %mio, align 8
  %impl4 = getelementptr inbounds %struct._MIO, %struct._MIO* %7, i32 0, i32 2
  %file5 = bitcast %union.anon* %impl4 to %struct.anon*
  %close_func6 = getelementptr inbounds %struct.anon, %struct.anon* %file5, i32 0, i32 1
  store i32 (%struct.__sFILE*)* %6, i32 (%struct.__sFILE*)** %close_func6, align 8
  %8 = load %struct._MIO*, %struct._MIO** %mio, align 8
  %refcount = getelementptr inbounds %struct._MIO, %struct._MIO* %8, i32 0, i32 1
  store i32 1, i32* %refcount, align 4
  %9 = load %struct._MIO*, %struct._MIO** %mio, align 8
  %udata = getelementptr inbounds %struct._MIO, %struct._MIO* %9, i32 0, i32 3
  %d = getelementptr inbounds %struct._MIOUserData, %struct._MIOUserData* %udata, i32 0, i32 0
  store i8* null, i8** %d, align 8
  %10 = load %struct._MIO*, %struct._MIO** %mio, align 8
  %udata7 = getelementptr inbounds %struct._MIO, %struct._MIO* %10, i32 0, i32 3
  %f = getelementptr inbounds %struct._MIOUserData, %struct._MIOUserData* %udata7, i32 0, i32 1
  store void (i8*)* null, void (i8*)** %f, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.then2, %if.end
  %11 = load %struct._MIO*, %struct._MIO** %mio, align 8
  store %struct._MIO* %11, %struct._MIO** %retval, align 8
  br label %return

return:                                           ; preds = %if.end8, %if.then
  %12 = load %struct._MIO*, %struct._MIO** %retval, align 8
  ret %struct._MIO* %12
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct._MIO* @mio_new_memory(i8* %data, i64 %size, i8* (i8*, i64)* %realloc_func, void (i8*)* %free_func) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %realloc_func.addr = alloca i8* (i8*, i64)*, align 8
  %free_func.addr = alloca void (i8*)*, align 8
  %mio = alloca %struct._MIO*, align 8
  store i8* %data, i8** %data.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  store i8* (i8*, i64)* %realloc_func, i8* (i8*, i64)** %realloc_func.addr, align 8
  store void (i8*)* %free_func, void (i8*)** %free_func.addr, align 8
  %call = call i8* @eMalloc(i64 88)
  %0 = bitcast i8* %call to %struct._MIO*
  store %struct._MIO* %0, %struct._MIO** %mio, align 8
  %1 = load %struct._MIO*, %struct._MIO** %mio, align 8
  %tobool = icmp ne %struct._MIO* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._MIO*, %struct._MIO** %mio, align 8
  %type = getelementptr inbounds %struct._MIO, %struct._MIO* %2, i32 0, i32 0
  store i32 1, i32* %type, align 8
  %3 = load i8*, i8** %data.addr, align 8
  %4 = load %struct._MIO*, %struct._MIO** %mio, align 8
  %impl = getelementptr inbounds %struct._MIO, %struct._MIO* %4, i32 0, i32 2
  %mem = bitcast %union.anon* %impl to %struct.anon.0*
  %buf = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem, i32 0, i32 0
  store i8* %3, i8** %buf, align 8
  %5 = load %struct._MIO*, %struct._MIO** %mio, align 8
  %impl1 = getelementptr inbounds %struct._MIO, %struct._MIO* %5, i32 0, i32 2
  %mem2 = bitcast %union.anon* %impl1 to %struct.anon.0*
  %ungetch = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem2, i32 0, i32 1
  store i32 -1, i32* %ungetch, align 8
  %6 = load %struct._MIO*, %struct._MIO** %mio, align 8
  %impl3 = getelementptr inbounds %struct._MIO, %struct._MIO* %6, i32 0, i32 2
  %mem4 = bitcast %union.anon* %impl3 to %struct.anon.0*
  %pos = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem4, i32 0, i32 2
  store i64 0, i64* %pos, align 8
  %7 = load i64, i64* %size.addr, align 8
  %8 = load %struct._MIO*, %struct._MIO** %mio, align 8
  %impl5 = getelementptr inbounds %struct._MIO, %struct._MIO* %8, i32 0, i32 2
  %mem6 = bitcast %union.anon* %impl5 to %struct.anon.0*
  %size7 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem6, i32 0, i32 3
  store i64 %7, i64* %size7, align 8
  %9 = load i64, i64* %size.addr, align 8
  %10 = load %struct._MIO*, %struct._MIO** %mio, align 8
  %impl8 = getelementptr inbounds %struct._MIO, %struct._MIO* %10, i32 0, i32 2
  %mem9 = bitcast %union.anon* %impl8 to %struct.anon.0*
  %allocated_size = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem9, i32 0, i32 4
  store i64 %9, i64* %allocated_size, align 8
  %11 = load i8* (i8*, i64)*, i8* (i8*, i64)** %realloc_func.addr, align 8
  %12 = load %struct._MIO*, %struct._MIO** %mio, align 8
  %impl10 = getelementptr inbounds %struct._MIO, %struct._MIO* %12, i32 0, i32 2
  %mem11 = bitcast %union.anon* %impl10 to %struct.anon.0*
  %realloc_func12 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem11, i32 0, i32 5
  store i8* (i8*, i64)* %11, i8* (i8*, i64)** %realloc_func12, align 8
  %13 = load void (i8*)*, void (i8*)** %free_func.addr, align 8
  %14 = load %struct._MIO*, %struct._MIO** %mio, align 8
  %impl13 = getelementptr inbounds %struct._MIO, %struct._MIO* %14, i32 0, i32 2
  %mem14 = bitcast %union.anon* %impl13 to %struct.anon.0*
  %free_func15 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem14, i32 0, i32 6
  store void (i8*)* %13, void (i8*)** %free_func15, align 8
  %15 = load %struct._MIO*, %struct._MIO** %mio, align 8
  %impl16 = getelementptr inbounds %struct._MIO, %struct._MIO* %15, i32 0, i32 2
  %mem17 = bitcast %union.anon* %impl16 to %struct.anon.0*
  %eof = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem17, i32 0, i32 8
  store i8 0, i8* %eof, align 1
  %16 = load %struct._MIO*, %struct._MIO** %mio, align 8
  %impl18 = getelementptr inbounds %struct._MIO, %struct._MIO* %16, i32 0, i32 2
  %mem19 = bitcast %union.anon* %impl18 to %struct.anon.0*
  %error = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem19, i32 0, i32 7
  store i8 0, i8* %error, align 8
  %17 = load %struct._MIO*, %struct._MIO** %mio, align 8
  %refcount = getelementptr inbounds %struct._MIO, %struct._MIO* %17, i32 0, i32 1
  store i32 1, i32* %refcount, align 4
  %18 = load %struct._MIO*, %struct._MIO** %mio, align 8
  %udata = getelementptr inbounds %struct._MIO, %struct._MIO* %18, i32 0, i32 3
  %d = getelementptr inbounds %struct._MIOUserData, %struct._MIOUserData* %udata, i32 0, i32 0
  store i8* null, i8** %d, align 8
  %19 = load %struct._MIO*, %struct._MIO** %mio, align 8
  %udata20 = getelementptr inbounds %struct._MIO, %struct._MIO* %19, i32 0, i32 3
  %f = getelementptr inbounds %struct._MIOUserData, %struct._MIOUserData* %udata20, i32 0, i32 1
  store void (i8*)* null, void (i8*)** %f, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %20 = load %struct._MIO*, %struct._MIO** %mio, align 8
  ret %struct._MIO* %20
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct._MIO* @mio_new_mio(%struct._MIO* %base, i64 %start, i64 %size) #0 {
entry:
  %retval = alloca %struct._MIO*, align 8
  %base.addr = alloca %struct._MIO*, align 8
  %start.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %data = alloca i8*, align 8
  %original_pos = alloca i64, align 8
  %submio = alloca %struct._MIO*, align 8
  %r = alloca i64, align 8
  %end = alloca i64, align 8
  store %struct._MIO* %base, %struct._MIO** %base.addr, align 8
  store i64 %start, i64* %start.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load %struct._MIO*, %struct._MIO** %base.addr, align 8
  %call = call i64 @mio_tell(%struct._MIO* %0)
  store i64 %call, i64* %original_pos, align 8
  %1 = load i64, i64* %size.addr, align 8
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %2 = load %struct._MIO*, %struct._MIO** %base.addr, align 8
  %call1 = call i32 @mio_seek(%struct._MIO* %2, i64 0, i32 2)
  %cmp2 = icmp ne i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  store %struct._MIO* null, %struct._MIO** %retval, align 8
  br label %return

if.end:                                           ; preds = %if.then
  %3 = load %struct._MIO*, %struct._MIO** %base.addr, align 8
  %call4 = call i64 @mio_tell(%struct._MIO* %3)
  store i64 %call4, i64* %end, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.body
  %4 = load i64, i64* %end, align 8
  %5 = load i64, i64* %start.addr, align 8
  %sub = sub nsw i64 %4, %5
  store i64 %sub, i64* %size.addr, align 8
  br label %if.end5

if.end5:                                          ; preds = %do.end, %entry
  %6 = load %struct._MIO*, %struct._MIO** %base.addr, align 8
  %7 = load i64, i64* %start.addr, align 8
  %call6 = call i32 @mio_seek(%struct._MIO* %6, i64 %7, i32 0)
  %cmp7 = icmp ne i32 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end5
  store %struct._MIO* null, %struct._MIO** %retval, align 8
  br label %return

if.end9:                                          ; preds = %if.end5
  %8 = load i64, i64* %size.addr, align 8
  %mul = mul i64 %8, 1
  %call10 = call i8* @eMalloc(i64 %mul)
  store i8* %call10, i8** %data, align 8
  %9 = load %struct._MIO*, %struct._MIO** %base.addr, align 8
  %10 = load i8*, i8** %data, align 8
  %11 = load i64, i64* %size.addr, align 8
  %call11 = call i64 @mio_read(%struct._MIO* %9, i8* %10, i64 1, i64 %11)
  store i64 %call11, i64* %r, align 8
  %12 = load %struct._MIO*, %struct._MIO** %base.addr, align 8
  %13 = load i64, i64* %original_pos, align 8
  %call12 = call i32 @mio_seek(%struct._MIO* %12, i64 %13, i32 0)
  %14 = load i64, i64* %r, align 8
  %15 = load i64, i64* %size.addr, align 8
  %cmp13 = icmp ne i64 %14, %15
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end9
  br label %cleanup

if.end15:                                         ; preds = %if.end9
  %16 = load i8*, i8** %data, align 8
  %17 = load i64, i64* %size.addr, align 8
  %call16 = call %struct._MIO* @mio_new_memory(i8* %16, i64 %17, i8* (i8*, i64)* @eRealloc, void (i8*)* @eFree)
  store %struct._MIO* %call16, %struct._MIO** %submio, align 8
  %18 = load %struct._MIO*, %struct._MIO** %submio, align 8
  %tobool = icmp ne %struct._MIO* %18, null
  br i1 %tobool, label %if.end18, label %if.then17

if.then17:                                        ; preds = %if.end15
  br label %cleanup

if.end18:                                         ; preds = %if.end15
  %19 = load %struct._MIO*, %struct._MIO** %submio, align 8
  store %struct._MIO* %19, %struct._MIO** %retval, align 8
  br label %return

cleanup:                                          ; preds = %if.then17, %if.then14
  %20 = load i8*, i8** %data, align 8
  call void @eFree(i8* %20)
  store %struct._MIO* null, %struct._MIO** %retval, align 8
  br label %return

return:                                           ; preds = %cleanup, %if.end18, %if.then8, %if.then3
  %21 = load %struct._MIO*, %struct._MIO** %retval, align 8
  ret %struct._MIO* %21
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @mio_tell(%struct._MIO* %mio) #0 {
entry:
  %retval = alloca i64, align 8
  %mio.addr = alloca %struct._MIO*, align 8
  %rv = alloca i64, align 8
  store %struct._MIO* %mio, %struct._MIO** %mio.addr, align 8
  %0 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %type = getelementptr inbounds %struct._MIO, %struct._MIO* %0, i32 0, i32 0
  %1 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl = getelementptr inbounds %struct._MIO, %struct._MIO* %2, i32 0, i32 2
  %file = bitcast %union.anon* %impl to %struct.anon*
  %fp = getelementptr inbounds %struct.anon, %struct.anon* %file, i32 0, i32 0
  %3 = load %struct.__sFILE*, %struct.__sFILE** %fp, align 8
  %call = call i64 @ftell(%struct.__sFILE* %3)
  store i64 %call, i64* %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %4 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %type1 = getelementptr inbounds %struct._MIO, %struct._MIO* %4, i32 0, i32 0
  %5 = load i32, i32* %type1, align 8
  %cmp2 = icmp eq i32 %5, 1
  br i1 %cmp2, label %if.then3, label %if.else12

if.then3:                                         ; preds = %if.else
  store i64 -1, i64* %rv, align 8
  %6 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl4 = getelementptr inbounds %struct._MIO, %struct._MIO* %6, i32 0, i32 2
  %mem = bitcast %union.anon* %impl4 to %struct.anon.0*
  %pos = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem, i32 0, i32 2
  %7 = load i64, i64* %pos, align 8
  %cmp5 = icmp ugt i64 %7, 9223372036854775807
  br i1 %cmp5, label %if.then6, label %if.else8

if.then6:                                         ; preds = %if.then3
  %call7 = call i32* @__error()
  store i32 84, i32* %call7, align 4
  br label %if.end

if.else8:                                         ; preds = %if.then3
  %8 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl9 = getelementptr inbounds %struct._MIO, %struct._MIO* %8, i32 0, i32 2
  %mem10 = bitcast %union.anon* %impl9 to %struct.anon.0*
  %pos11 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem10, i32 0, i32 2
  %9 = load i64, i64* %pos11, align 8
  store i64 %9, i64* %rv, align 8
  br label %if.end

if.end:                                           ; preds = %if.else8, %if.then6
  %10 = load i64, i64* %rv, align 8
  store i64 %10, i64* %retval, align 8
  br label %return

if.else12:                                        ; preds = %if.else
  br label %do.body

do.body:                                          ; preds = %if.else12
  br label %do.end

do.end:                                           ; preds = %do.body
  store i64 0, i64* %retval, align 8
  br label %return

return:                                           ; preds = %do.end, %if.end, %if.then
  %11 = load i64, i64* %retval, align 8
  ret i64 %11
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @mio_seek(%struct._MIO* %mio, i64 %offset, i32 %whence) #0 {
entry:
  %retval = alloca i32, align 4
  %mio.addr = alloca %struct._MIO*, align 8
  %offset.addr = alloca i64, align 8
  %whence.addr = alloca i32, align 4
  %rv = alloca i32, align 4
  store %struct._MIO* %mio, %struct._MIO** %mio.addr, align 8
  store i64 %offset, i64* %offset.addr, align 8
  store i32 %whence, i32* %whence.addr, align 4
  %0 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %type = getelementptr inbounds %struct._MIO, %struct._MIO* %0, i32 0, i32 0
  %1 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl = getelementptr inbounds %struct._MIO, %struct._MIO* %2, i32 0, i32 2
  %file = bitcast %union.anon* %impl to %struct.anon*
  %fp = getelementptr inbounds %struct.anon, %struct.anon* %file, i32 0, i32 0
  %3 = load %struct.__sFILE*, %struct.__sFILE** %fp, align 8
  %4 = load i64, i64* %offset.addr, align 8
  %5 = load i32, i32* %whence.addr, align 4
  %call = call i32 @fseek(%struct.__sFILE* %3, i64 %4, i32 %5)
  store i32 %call, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %6 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %type1 = getelementptr inbounds %struct._MIO, %struct._MIO* %6, i32 0, i32 0
  %7 = load i32, i32* %type1, align 8
  %cmp2 = icmp eq i32 %7, 1
  br i1 %cmp2, label %if.then3, label %if.else65

if.then3:                                         ; preds = %if.else
  store i32 -1, i32* %rv, align 4
  %8 = load i32, i32* %whence.addr, align 4
  switch i32 %8, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb12
    i32 2, label %sw.bb37
  ]

sw.bb:                                            ; preds = %if.then3
  %9 = load i64, i64* %offset.addr, align 8
  %cmp4 = icmp slt i64 %9, 0
  br i1 %cmp4, label %if.then7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb
  %10 = load i64, i64* %offset.addr, align 8
  %11 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl5 = getelementptr inbounds %struct._MIO, %struct._MIO* %11, i32 0, i32 2
  %mem = bitcast %union.anon* %impl5 to %struct.anon.0*
  %size = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem, i32 0, i32 3
  %12 = load i64, i64* %size, align 8
  %cmp6 = icmp ugt i64 %10, %12
  br i1 %cmp6, label %if.then7, label %if.else9

if.then7:                                         ; preds = %lor.lhs.false, %sw.bb
  %call8 = call i32* @__error()
  store i32 22, i32* %call8, align 4
  br label %if.end

if.else9:                                         ; preds = %lor.lhs.false
  %13 = load i64, i64* %offset.addr, align 8
  %14 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl10 = getelementptr inbounds %struct._MIO, %struct._MIO* %14, i32 0, i32 2
  %mem11 = bitcast %union.anon* %impl10 to %struct.anon.0*
  %pos = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem11, i32 0, i32 2
  store i64 %13, i64* %pos, align 8
  store i32 0, i32* %rv, align 4
  br label %if.end

if.end:                                           ; preds = %if.else9, %if.then7
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.then3
  %15 = load i64, i64* %offset.addr, align 8
  %cmp13 = icmp slt i64 %15, 0
  br i1 %cmp13, label %land.lhs.true, label %lor.lhs.false18

land.lhs.true:                                    ; preds = %sw.bb12
  %16 = load i64, i64* %offset.addr, align 8
  %sub = sub nsw i64 0, %16
  %17 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl14 = getelementptr inbounds %struct._MIO, %struct._MIO* %17, i32 0, i32 2
  %mem15 = bitcast %union.anon* %impl14 to %struct.anon.0*
  %pos16 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem15, i32 0, i32 2
  %18 = load i64, i64* %pos16, align 8
  %cmp17 = icmp ugt i64 %sub, %18
  br i1 %cmp17, label %if.then26, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %land.lhs.true, %sw.bb12
  %19 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl19 = getelementptr inbounds %struct._MIO, %struct._MIO* %19, i32 0, i32 2
  %mem20 = bitcast %union.anon* %impl19 to %struct.anon.0*
  %pos21 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem20, i32 0, i32 2
  %20 = load i64, i64* %pos21, align 8
  %21 = load i64, i64* %offset.addr, align 8
  %add = add i64 %20, %21
  %22 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl22 = getelementptr inbounds %struct._MIO, %struct._MIO* %22, i32 0, i32 2
  %mem23 = bitcast %union.anon* %impl22 to %struct.anon.0*
  %size24 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem23, i32 0, i32 3
  %23 = load i64, i64* %size24, align 8
  %cmp25 = icmp ugt i64 %add, %23
  br i1 %cmp25, label %if.then26, label %if.else28

if.then26:                                        ; preds = %lor.lhs.false18, %land.lhs.true
  %call27 = call i32* @__error()
  store i32 22, i32* %call27, align 4
  br label %if.end36

if.else28:                                        ; preds = %lor.lhs.false18
  %24 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl29 = getelementptr inbounds %struct._MIO, %struct._MIO* %24, i32 0, i32 2
  %mem30 = bitcast %union.anon* %impl29 to %struct.anon.0*
  %pos31 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem30, i32 0, i32 2
  %25 = load i64, i64* %pos31, align 8
  %26 = load i64, i64* %offset.addr, align 8
  %add32 = add i64 %25, %26
  %27 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl33 = getelementptr inbounds %struct._MIO, %struct._MIO* %27, i32 0, i32 2
  %mem34 = bitcast %union.anon* %impl33 to %struct.anon.0*
  %pos35 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem34, i32 0, i32 2
  store i64 %add32, i64* %pos35, align 8
  store i32 0, i32* %rv, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.else28, %if.then26
  br label %sw.epilog

sw.bb37:                                          ; preds = %if.then3
  %28 = load i64, i64* %offset.addr, align 8
  %cmp38 = icmp sgt i64 %28, 0
  br i1 %cmp38, label %if.then45, label %lor.lhs.false39

lor.lhs.false39:                                  ; preds = %sw.bb37
  %29 = load i64, i64* %offset.addr, align 8
  %sub40 = sub nsw i64 0, %29
  %30 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl41 = getelementptr inbounds %struct._MIO, %struct._MIO* %30, i32 0, i32 2
  %mem42 = bitcast %union.anon* %impl41 to %struct.anon.0*
  %size43 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem42, i32 0, i32 3
  %31 = load i64, i64* %size43, align 8
  %cmp44 = icmp ugt i64 %sub40, %31
  br i1 %cmp44, label %if.then45, label %if.else47

if.then45:                                        ; preds = %lor.lhs.false39, %sw.bb37
  %call46 = call i32* @__error()
  store i32 22, i32* %call46, align 4
  br label %if.end56

if.else47:                                        ; preds = %lor.lhs.false39
  %32 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl48 = getelementptr inbounds %struct._MIO, %struct._MIO* %32, i32 0, i32 2
  %mem49 = bitcast %union.anon* %impl48 to %struct.anon.0*
  %size50 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem49, i32 0, i32 3
  %33 = load i64, i64* %size50, align 8
  %34 = load i64, i64* %offset.addr, align 8
  %sub51 = sub nsw i64 0, %34
  %sub52 = sub i64 %33, %sub51
  %35 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl53 = getelementptr inbounds %struct._MIO, %struct._MIO* %35, i32 0, i32 2
  %mem54 = bitcast %union.anon* %impl53 to %struct.anon.0*
  %pos55 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem54, i32 0, i32 2
  store i64 %sub52, i64* %pos55, align 8
  store i32 0, i32* %rv, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.else47, %if.then45
  br label %sw.epilog

sw.default:                                       ; preds = %if.then3
  %call57 = call i32* @__error()
  store i32 22, i32* %call57, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end56, %if.end36, %if.end
  %36 = load i32, i32* %rv, align 4
  %cmp58 = icmp eq i32 %36, 0
  br i1 %cmp58, label %if.then59, label %if.end64

if.then59:                                        ; preds = %sw.epilog
  %37 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl60 = getelementptr inbounds %struct._MIO, %struct._MIO* %37, i32 0, i32 2
  %mem61 = bitcast %union.anon* %impl60 to %struct.anon.0*
  %eof = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem61, i32 0, i32 8
  store i8 0, i8* %eof, align 1
  %38 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl62 = getelementptr inbounds %struct._MIO, %struct._MIO* %38, i32 0, i32 2
  %mem63 = bitcast %union.anon* %impl62 to %struct.anon.0*
  %ungetch = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem63, i32 0, i32 1
  store i32 -1, i32* %ungetch, align 8
  br label %if.end64

if.end64:                                         ; preds = %if.then59, %sw.epilog
  %39 = load i32, i32* %rv, align 4
  store i32 %39, i32* %retval, align 4
  br label %return

if.else65:                                        ; preds = %if.else
  br label %do.body

do.body:                                          ; preds = %if.else65
  br label %do.end

do.end:                                           ; preds = %do.body
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %do.end, %if.end64, %if.then
  %40 = load i32, i32* %retval, align 4
  ret i32 %40
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @mio_read(%struct._MIO* %mio, i8* %ptr_, i64 %size, i64 %nmemb) #0 {
entry:
  %retval = alloca i64, align 8
  %mio.addr = alloca %struct._MIO*, align 8
  %ptr_.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %nmemb.addr = alloca i64, align 8
  %n_read = alloca i64, align 8
  %size_avail = alloca i64, align 8
  %copy_bytes = alloca i64, align 8
  %ptr = alloca i8*, align 8
  store %struct._MIO* %mio, %struct._MIO** %mio.addr, align 8
  store i8* %ptr_, i8** %ptr_.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  store i64 %nmemb, i64* %nmemb.addr, align 8
  %0 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %type = getelementptr inbounds %struct._MIO, %struct._MIO* %0, i32 0, i32 0
  %1 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %ptr_.addr, align 8
  %3 = load i64, i64* %size.addr, align 8
  %4 = load i64, i64* %nmemb.addr, align 8
  %5 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl = getelementptr inbounds %struct._MIO, %struct._MIO* %5, i32 0, i32 2
  %file = bitcast %union.anon* %impl to %struct.anon*
  %fp = getelementptr inbounds %struct.anon, %struct.anon* %file, i32 0, i32 0
  %6 = load %struct.__sFILE*, %struct.__sFILE** %fp, align 8
  %call = call i64 @fread(i8* %2, i64 %3, i64 %4, %struct.__sFILE* %6)
  store i64 %call, i64* %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %7 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %type1 = getelementptr inbounds %struct._MIO, %struct._MIO* %7, i32 0, i32 0
  %8 = load i32, i32* %type1, align 8
  %cmp2 = icmp eq i32 %8, 1
  br i1 %cmp2, label %if.then3, label %if.else51

if.then3:                                         ; preds = %if.else
  store i64 0, i64* %n_read, align 8
  %9 = load i64, i64* %size.addr, align 8
  %cmp4 = icmp ne i64 %9, 0
  br i1 %cmp4, label %land.lhs.true, label %if.end50

land.lhs.true:                                    ; preds = %if.then3
  %10 = load i64, i64* %nmemb.addr, align 8
  %cmp5 = icmp ne i64 %10, 0
  br i1 %cmp5, label %if.then6, label %if.end50

if.then6:                                         ; preds = %land.lhs.true
  %11 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl7 = getelementptr inbounds %struct._MIO, %struct._MIO* %11, i32 0, i32 2
  %mem = bitcast %union.anon* %impl7 to %struct.anon.0*
  %size8 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem, i32 0, i32 3
  %12 = load i64, i64* %size8, align 8
  %13 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl9 = getelementptr inbounds %struct._MIO, %struct._MIO* %13, i32 0, i32 2
  %mem10 = bitcast %union.anon* %impl9 to %struct.anon.0*
  %pos = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem10, i32 0, i32 2
  %14 = load i64, i64* %pos, align 8
  %sub = sub i64 %12, %14
  store i64 %sub, i64* %size_avail, align 8
  %15 = load i64, i64* %size.addr, align 8
  %16 = load i64, i64* %nmemb.addr, align 8
  %mul = mul i64 %15, %16
  store i64 %mul, i64* %copy_bytes, align 8
  %17 = load i8*, i8** %ptr_.addr, align 8
  store i8* %17, i8** %ptr, align 8
  %18 = load i64, i64* %size_avail, align 8
  %19 = load i64, i64* %copy_bytes, align 8
  %cmp11 = icmp ult i64 %18, %19
  br i1 %cmp11, label %if.then12, label %if.end

if.then12:                                        ; preds = %if.then6
  %20 = load i64, i64* %size_avail, align 8
  store i64 %20, i64* %copy_bytes, align 8
  br label %if.end

if.end:                                           ; preds = %if.then12, %if.then6
  %21 = load i64, i64* %copy_bytes, align 8
  %cmp13 = icmp ugt i64 %21, 0
  br i1 %cmp13, label %if.then14, label %if.end37

if.then14:                                        ; preds = %if.end
  %22 = load i64, i64* %copy_bytes, align 8
  %23 = load i64, i64* %size.addr, align 8
  %div = udiv i64 %22, %23
  store i64 %div, i64* %n_read, align 8
  %24 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl15 = getelementptr inbounds %struct._MIO, %struct._MIO* %24, i32 0, i32 2
  %mem16 = bitcast %union.anon* %impl15 to %struct.anon.0*
  %ungetch = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem16, i32 0, i32 1
  %25 = load i32, i32* %ungetch, align 8
  %cmp17 = icmp ne i32 %25, -1
  br i1 %cmp17, label %if.then18, label %if.end28

if.then18:                                        ; preds = %if.then14
  %26 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl19 = getelementptr inbounds %struct._MIO, %struct._MIO* %26, i32 0, i32 2
  %mem20 = bitcast %union.anon* %impl19 to %struct.anon.0*
  %ungetch21 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem20, i32 0, i32 1
  %27 = load i32, i32* %ungetch21, align 8
  %conv = trunc i32 %27 to i8
  %28 = load i8*, i8** %ptr, align 8
  store i8 %conv, i8* %28, align 1
  %29 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl22 = getelementptr inbounds %struct._MIO, %struct._MIO* %29, i32 0, i32 2
  %mem23 = bitcast %union.anon* %impl22 to %struct.anon.0*
  %ungetch24 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem23, i32 0, i32 1
  store i32 -1, i32* %ungetch24, align 8
  %30 = load i64, i64* %copy_bytes, align 8
  %dec = add i64 %30, -1
  store i64 %dec, i64* %copy_bytes, align 8
  %31 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl25 = getelementptr inbounds %struct._MIO, %struct._MIO* %31, i32 0, i32 2
  %mem26 = bitcast %union.anon* %impl25 to %struct.anon.0*
  %pos27 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem26, i32 0, i32 2
  %32 = load i64, i64* %pos27, align 8
  %inc = add i64 %32, 1
  store i64 %inc, i64* %pos27, align 8
  %33 = load i8*, i8** %ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr, i8** %ptr, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.then18, %if.then14
  %34 = load i8*, i8** %ptr, align 8
  %35 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl29 = getelementptr inbounds %struct._MIO, %struct._MIO* %35, i32 0, i32 2
  %mem30 = bitcast %union.anon* %impl29 to %struct.anon.0*
  %buf = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem30, i32 0, i32 0
  %36 = load i8*, i8** %buf, align 8
  %37 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl31 = getelementptr inbounds %struct._MIO, %struct._MIO* %37, i32 0, i32 2
  %mem32 = bitcast %union.anon* %impl31 to %struct.anon.0*
  %pos33 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem32, i32 0, i32 2
  %38 = load i64, i64* %pos33, align 8
  %arrayidx = getelementptr inbounds i8, i8* %36, i64 %38
  %39 = load i64, i64* %copy_bytes, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %34, i8* align 1 %arrayidx, i64 %39, i1 false)
  %40 = load i64, i64* %copy_bytes, align 8
  %41 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl34 = getelementptr inbounds %struct._MIO, %struct._MIO* %41, i32 0, i32 2
  %mem35 = bitcast %union.anon* %impl34 to %struct.anon.0*
  %pos36 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem35, i32 0, i32 2
  %42 = load i64, i64* %pos36, align 8
  %add = add i64 %42, %40
  store i64 %add, i64* %pos36, align 8
  br label %if.end37

if.end37:                                         ; preds = %if.end28, %if.end
  %43 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl38 = getelementptr inbounds %struct._MIO, %struct._MIO* %43, i32 0, i32 2
  %mem39 = bitcast %union.anon* %impl38 to %struct.anon.0*
  %pos40 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem39, i32 0, i32 2
  %44 = load i64, i64* %pos40, align 8
  %45 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl41 = getelementptr inbounds %struct._MIO, %struct._MIO* %45, i32 0, i32 2
  %mem42 = bitcast %union.anon* %impl41 to %struct.anon.0*
  %size43 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem42, i32 0, i32 3
  %46 = load i64, i64* %size43, align 8
  %cmp44 = icmp uge i64 %44, %46
  br i1 %cmp44, label %if.then46, label %if.end49

if.then46:                                        ; preds = %if.end37
  %47 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl47 = getelementptr inbounds %struct._MIO, %struct._MIO* %47, i32 0, i32 2
  %mem48 = bitcast %union.anon* %impl47 to %struct.anon.0*
  %eof = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem48, i32 0, i32 8
  store i8 1, i8* %eof, align 1
  br label %if.end49

if.end49:                                         ; preds = %if.then46, %if.end37
  br label %if.end50

if.end50:                                         ; preds = %if.end49, %land.lhs.true, %if.then3
  %48 = load i64, i64* %n_read, align 8
  store i64 %48, i64* %retval, align 8
  br label %return

if.else51:                                        ; preds = %if.else
  br label %do.body

do.body:                                          ; preds = %if.else51
  br label %do.end

do.end:                                           ; preds = %do.body
  store i64 0, i64* %retval, align 8
  br label %return

return:                                           ; preds = %do.end, %if.end50, %if.then
  %49 = load i64, i64* %retval, align 8
  ret i64 %49
}

declare i8* @eRealloc(i8*, i64) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct._MIO* @mio_ref(%struct._MIO* %mio) #0 {
entry:
  %mio.addr = alloca %struct._MIO*, align 8
  store %struct._MIO* %mio, %struct._MIO** %mio.addr, align 8
  %0 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %refcount = getelementptr inbounds %struct._MIO, %struct._MIO* %0, i32 0, i32 1
  %1 = load i32, i32* %refcount, align 4
  %inc = add i32 %1, 1
  store i32 %inc, i32* %refcount, align 4
  %2 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  ret %struct._MIO* %2
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.__sFILE* @mio_file_get_fp(%struct._MIO* %mio) #0 {
entry:
  %mio.addr = alloca %struct._MIO*, align 8
  %fp = alloca %struct.__sFILE*, align 8
  store %struct._MIO* %mio, %struct._MIO** %mio.addr, align 8
  store %struct.__sFILE* null, %struct.__sFILE** %fp, align 8
  %0 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %type = getelementptr inbounds %struct._MIO, %struct._MIO* %0, i32 0, i32 0
  %1 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl = getelementptr inbounds %struct._MIO, %struct._MIO* %2, i32 0, i32 2
  %file = bitcast %union.anon* %impl to %struct.anon*
  %fp1 = getelementptr inbounds %struct.anon, %struct.anon* %file, i32 0, i32 0
  %3 = load %struct.__sFILE*, %struct.__sFILE** %fp1, align 8
  store %struct.__sFILE* %3, %struct.__sFILE** %fp, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.__sFILE*, %struct.__sFILE** %fp, align 8
  ret %struct.__sFILE* %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @mio_memory_get_data(%struct._MIO* %mio, i64* %size) #0 {
entry:
  %mio.addr = alloca %struct._MIO*, align 8
  %size.addr = alloca i64*, align 8
  %ptr = alloca i8*, align 8
  store %struct._MIO* %mio, %struct._MIO** %mio.addr, align 8
  store i64* %size, i64** %size.addr, align 8
  store i8* null, i8** %ptr, align 8
  %0 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %type = getelementptr inbounds %struct._MIO, %struct._MIO* %0, i32 0, i32 0
  %1 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %2 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl = getelementptr inbounds %struct._MIO, %struct._MIO* %2, i32 0, i32 2
  %mem = bitcast %union.anon* %impl to %struct.anon.0*
  %buf = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem, i32 0, i32 0
  %3 = load i8*, i8** %buf, align 8
  store i8* %3, i8** %ptr, align 8
  %4 = load i64*, i64** %size.addr, align 8
  %tobool = icmp ne i64* %4, null
  br i1 %tobool, label %if.then1, label %if.end

if.then1:                                         ; preds = %if.then
  %5 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl2 = getelementptr inbounds %struct._MIO, %struct._MIO* %5, i32 0, i32 2
  %mem3 = bitcast %union.anon* %impl2 to %struct.anon.0*
  %size4 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem3, i32 0, i32 3
  %6 = load i64, i64* %size4, align 8
  %7 = load i64*, i64** %size.addr, align 8
  store i64 %6, i64* %7, align 8
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry
  %8 = load i8*, i8** %ptr, align 8
  ret i8* %8
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @mio_free(%struct._MIO* %mio) #0 {
entry:
  %retval = alloca i32, align 4
  %mio.addr = alloca %struct._MIO*, align 8
  %rv = alloca i32, align 4
  store %struct._MIO* %mio, %struct._MIO** %mio.addr, align 8
  store i32 0, i32* %rv, align 4
  %0 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %tobool = icmp ne %struct._MIO* %0, null
  br i1 %tobool, label %if.then, label %if.end60

if.then:                                          ; preds = %entry
  %1 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %refcount = getelementptr inbounds %struct._MIO, %struct._MIO* %1, i32 0, i32 1
  %2 = load i32, i32* %refcount, align 4
  %dec = add i32 %2, -1
  store i32 %dec, i32* %refcount, align 4
  %tobool1 = icmp ne i32 %dec, 0
  br i1 %tobool1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %3 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %udata = getelementptr inbounds %struct._MIO, %struct._MIO* %3, i32 0, i32 3
  %d = getelementptr inbounds %struct._MIOUserData, %struct._MIOUserData* %udata, i32 0, i32 0
  %4 = load i8*, i8** %d, align 8
  %tobool3 = icmp ne i8* %4, null
  br i1 %tobool3, label %land.lhs.true, label %if.end11

land.lhs.true:                                    ; preds = %if.end
  %5 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %udata4 = getelementptr inbounds %struct._MIO, %struct._MIO* %5, i32 0, i32 3
  %f = getelementptr inbounds %struct._MIOUserData, %struct._MIOUserData* %udata4, i32 0, i32 1
  %6 = load void (i8*)*, void (i8*)** %f, align 8
  %tobool5 = icmp ne void (i8*)* %6, null
  br i1 %tobool5, label %if.then6, label %if.end11

if.then6:                                         ; preds = %land.lhs.true
  %7 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %udata7 = getelementptr inbounds %struct._MIO, %struct._MIO* %7, i32 0, i32 3
  %f8 = getelementptr inbounds %struct._MIOUserData, %struct._MIOUserData* %udata7, i32 0, i32 1
  %8 = load void (i8*)*, void (i8*)** %f8, align 8
  %9 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %udata9 = getelementptr inbounds %struct._MIO, %struct._MIO* %9, i32 0, i32 3
  %d10 = getelementptr inbounds %struct._MIOUserData, %struct._MIOUserData* %udata9, i32 0, i32 0
  %10 = load i8*, i8** %d10, align 8
  call void %8(i8* %10)
  br label %if.end11

if.end11:                                         ; preds = %if.then6, %land.lhs.true, %if.end
  %11 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %type = getelementptr inbounds %struct._MIO, %struct._MIO* %11, i32 0, i32 0
  %12 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %12, 0
  br i1 %cmp, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end11
  %13 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl = getelementptr inbounds %struct._MIO, %struct._MIO* %13, i32 0, i32 2
  %file = bitcast %union.anon* %impl to %struct.anon*
  %close_func = getelementptr inbounds %struct.anon, %struct.anon* %file, i32 0, i32 1
  %14 = load i32 (%struct.__sFILE*)*, i32 (%struct.__sFILE*)** %close_func, align 8
  %tobool13 = icmp ne i32 (%struct.__sFILE*)* %14, null
  br i1 %tobool13, label %if.then14, label %if.end20

if.then14:                                        ; preds = %if.then12
  %15 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl15 = getelementptr inbounds %struct._MIO, %struct._MIO* %15, i32 0, i32 2
  %file16 = bitcast %union.anon* %impl15 to %struct.anon*
  %close_func17 = getelementptr inbounds %struct.anon, %struct.anon* %file16, i32 0, i32 1
  %16 = load i32 (%struct.__sFILE*)*, i32 (%struct.__sFILE*)** %close_func17, align 8
  %17 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl18 = getelementptr inbounds %struct._MIO, %struct._MIO* %17, i32 0, i32 2
  %file19 = bitcast %union.anon* %impl18 to %struct.anon*
  %fp = getelementptr inbounds %struct.anon, %struct.anon* %file19, i32 0, i32 0
  %18 = load %struct.__sFILE*, %struct.__sFILE** %fp, align 8
  %call = call i32 %16(%struct.__sFILE* %18)
  store i32 %call, i32* %rv, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then14, %if.then12
  %19 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl21 = getelementptr inbounds %struct._MIO, %struct._MIO* %19, i32 0, i32 2
  %file22 = bitcast %union.anon* %impl21 to %struct.anon*
  %close_func23 = getelementptr inbounds %struct.anon, %struct.anon* %file22, i32 0, i32 1
  store i32 (%struct.__sFILE*)* null, i32 (%struct.__sFILE*)** %close_func23, align 8
  %20 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl24 = getelementptr inbounds %struct._MIO, %struct._MIO* %20, i32 0, i32 2
  %file25 = bitcast %union.anon* %impl24 to %struct.anon*
  %fp26 = getelementptr inbounds %struct.anon, %struct.anon* %file25, i32 0, i32 0
  store %struct.__sFILE* null, %struct.__sFILE** %fp26, align 8
  br label %if.end59

if.else:                                          ; preds = %if.end11
  %21 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %type27 = getelementptr inbounds %struct._MIO, %struct._MIO* %21, i32 0, i32 0
  %22 = load i32, i32* %type27, align 8
  %cmp28 = icmp eq i32 %22, 1
  br i1 %cmp28, label %if.then29, label %if.else57

if.then29:                                        ; preds = %if.else
  %23 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl30 = getelementptr inbounds %struct._MIO, %struct._MIO* %23, i32 0, i32 2
  %mem = bitcast %union.anon* %impl30 to %struct.anon.0*
  %free_func = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem, i32 0, i32 6
  %24 = load void (i8*)*, void (i8*)** %free_func, align 8
  %tobool31 = icmp ne void (i8*)* %24, null
  br i1 %tobool31, label %if.then32, label %if.end38

if.then32:                                        ; preds = %if.then29
  %25 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl33 = getelementptr inbounds %struct._MIO, %struct._MIO* %25, i32 0, i32 2
  %mem34 = bitcast %union.anon* %impl33 to %struct.anon.0*
  %free_func35 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem34, i32 0, i32 6
  %26 = load void (i8*)*, void (i8*)** %free_func35, align 8
  %27 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl36 = getelementptr inbounds %struct._MIO, %struct._MIO* %27, i32 0, i32 2
  %mem37 = bitcast %union.anon* %impl36 to %struct.anon.0*
  %buf = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem37, i32 0, i32 0
  %28 = load i8*, i8** %buf, align 8
  call void %26(i8* %28)
  br label %if.end38

if.end38:                                         ; preds = %if.then32, %if.then29
  %29 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl39 = getelementptr inbounds %struct._MIO, %struct._MIO* %29, i32 0, i32 2
  %mem40 = bitcast %union.anon* %impl39 to %struct.anon.0*
  %buf41 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem40, i32 0, i32 0
  store i8* null, i8** %buf41, align 8
  %30 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl42 = getelementptr inbounds %struct._MIO, %struct._MIO* %30, i32 0, i32 2
  %mem43 = bitcast %union.anon* %impl42 to %struct.anon.0*
  %pos = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem43, i32 0, i32 2
  store i64 0, i64* %pos, align 8
  %31 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl44 = getelementptr inbounds %struct._MIO, %struct._MIO* %31, i32 0, i32 2
  %mem45 = bitcast %union.anon* %impl44 to %struct.anon.0*
  %size = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem45, i32 0, i32 3
  store i64 0, i64* %size, align 8
  %32 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl46 = getelementptr inbounds %struct._MIO, %struct._MIO* %32, i32 0, i32 2
  %mem47 = bitcast %union.anon* %impl46 to %struct.anon.0*
  %allocated_size = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem47, i32 0, i32 4
  store i64 0, i64* %allocated_size, align 8
  %33 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl48 = getelementptr inbounds %struct._MIO, %struct._MIO* %33, i32 0, i32 2
  %mem49 = bitcast %union.anon* %impl48 to %struct.anon.0*
  %realloc_func = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem49, i32 0, i32 5
  store i8* (i8*, i64)* null, i8* (i8*, i64)** %realloc_func, align 8
  %34 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl50 = getelementptr inbounds %struct._MIO, %struct._MIO* %34, i32 0, i32 2
  %mem51 = bitcast %union.anon* %impl50 to %struct.anon.0*
  %free_func52 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem51, i32 0, i32 6
  store void (i8*)* null, void (i8*)** %free_func52, align 8
  %35 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl53 = getelementptr inbounds %struct._MIO, %struct._MIO* %35, i32 0, i32 2
  %mem54 = bitcast %union.anon* %impl53 to %struct.anon.0*
  %eof = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem54, i32 0, i32 8
  store i8 0, i8* %eof, align 1
  %36 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl55 = getelementptr inbounds %struct._MIO, %struct._MIO* %36, i32 0, i32 2
  %mem56 = bitcast %union.anon* %impl55 to %struct.anon.0*
  %error = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem56, i32 0, i32 7
  store i8 0, i8* %error, align 8
  br label %if.end58

if.else57:                                        ; preds = %if.else
  br label %do.body

do.body:                                          ; preds = %if.else57
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %if.end58

if.end58:                                         ; preds = %do.end, %if.end38
  br label %if.end59

if.end59:                                         ; preds = %if.end58, %if.end20
  %37 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %38 = bitcast %struct._MIO* %37 to i8*
  call void @eFree(i8* %38)
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %entry
  %39 = load i32, i32* %rv, align 4
  store i32 %39, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end60, %if.then2
  %40 = load i32, i32* %retval, align 4
  ret i32 %40
}

declare i64 @fread(i8*, i64, i64, %struct.__sFILE*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @mio_write(%struct._MIO* %mio, i8* %ptr, i64 %size, i64 %nmemb) #0 {
entry:
  %retval = alloca i64, align 8
  %mio.addr = alloca %struct._MIO*, align 8
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %nmemb.addr = alloca i64, align 8
  %n_written = alloca i64, align 8
  store %struct._MIO* %mio, %struct._MIO** %mio.addr, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  store i64 %nmemb, i64* %nmemb.addr, align 8
  %0 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %type = getelementptr inbounds %struct._MIO, %struct._MIO* %0, i32 0, i32 0
  %1 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %ptr.addr, align 8
  %3 = load i64, i64* %size.addr, align 8
  %4 = load i64, i64* %nmemb.addr, align 8
  %5 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl = getelementptr inbounds %struct._MIO, %struct._MIO* %5, i32 0, i32 2
  %file = bitcast %union.anon* %impl to %struct.anon*
  %fp = getelementptr inbounds %struct.anon, %struct.anon* %file, i32 0, i32 0
  %6 = load %struct.__sFILE*, %struct.__sFILE** %fp, align 8
  %call = call i64 @"\01_fwrite"(i8* %2, i64 %3, i64 %4, %struct.__sFILE* %6)
  store i64 %call, i64* %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %7 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %type1 = getelementptr inbounds %struct._MIO, %struct._MIO* %7, i32 0, i32 0
  %8 = load i32, i32* %type1, align 8
  %cmp2 = icmp eq i32 %8, 1
  br i1 %cmp2, label %if.then3, label %if.else18

if.then3:                                         ; preds = %if.else
  store i64 0, i64* %n_written, align 8
  %9 = load i64, i64* %size.addr, align 8
  %cmp4 = icmp ne i64 %9, 0
  br i1 %cmp4, label %land.lhs.true, label %if.end17

land.lhs.true:                                    ; preds = %if.then3
  %10 = load i64, i64* %nmemb.addr, align 8
  %cmp5 = icmp ne i64 %10, 0
  br i1 %cmp5, label %if.then6, label %if.end17

if.then6:                                         ; preds = %land.lhs.true
  %11 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %12 = load i64, i64* %size.addr, align 8
  %13 = load i64, i64* %nmemb.addr, align 8
  %mul = mul i64 %12, %13
  %call7 = call i32 @mem_try_ensure_space(%struct._MIO* %11, i64 %mul)
  %tobool = icmp ne i32 %call7, 0
  br i1 %tobool, label %if.then8, label %if.end

if.then8:                                         ; preds = %if.then6
  %14 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl9 = getelementptr inbounds %struct._MIO, %struct._MIO* %14, i32 0, i32 2
  %mem = bitcast %union.anon* %impl9 to %struct.anon.0*
  %buf = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem, i32 0, i32 0
  %15 = load i8*, i8** %buf, align 8
  %16 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl10 = getelementptr inbounds %struct._MIO, %struct._MIO* %16, i32 0, i32 2
  %mem11 = bitcast %union.anon* %impl10 to %struct.anon.0*
  %pos = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem11, i32 0, i32 2
  %17 = load i64, i64* %pos, align 8
  %arrayidx = getelementptr inbounds i8, i8* %15, i64 %17
  %18 = load i8*, i8** %ptr.addr, align 8
  %19 = load i64, i64* %size.addr, align 8
  %20 = load i64, i64* %nmemb.addr, align 8
  %mul12 = mul i64 %19, %20
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %arrayidx, i8* align 1 %18, i64 %mul12, i1 false)
  %21 = load i64, i64* %size.addr, align 8
  %22 = load i64, i64* %nmemb.addr, align 8
  %mul13 = mul i64 %21, %22
  %23 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl14 = getelementptr inbounds %struct._MIO, %struct._MIO* %23, i32 0, i32 2
  %mem15 = bitcast %union.anon* %impl14 to %struct.anon.0*
  %pos16 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem15, i32 0, i32 2
  %24 = load i64, i64* %pos16, align 8
  %add = add i64 %24, %mul13
  store i64 %add, i64* %pos16, align 8
  %25 = load i64, i64* %nmemb.addr, align 8
  store i64 %25, i64* %n_written, align 8
  br label %if.end

if.end:                                           ; preds = %if.then8, %if.then6
  br label %if.end17

if.end17:                                         ; preds = %if.end, %land.lhs.true, %if.then3
  %26 = load i64, i64* %n_written, align 8
  store i64 %26, i64* %retval, align 8
  br label %return

if.else18:                                        ; preds = %if.else
  br label %do.body

do.body:                                          ; preds = %if.else18
  br label %do.end

do.end:                                           ; preds = %do.body
  store i64 0, i64* %retval, align 8
  br label %return

return:                                           ; preds = %do.end, %if.end17, %if.then
  %27 = load i64, i64* %retval, align 8
  ret i64 %27
}

declare i64 @"\01_fwrite"(i8*, i64, i64, %struct.__sFILE*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @mem_try_ensure_space(%struct._MIO* %mio, i64 %n) #0 {
entry:
  %mio.addr = alloca %struct._MIO*, align 8
  %n.addr = alloca i64, align 8
  %success = alloca i32, align 4
  store %struct._MIO* %mio, %struct._MIO** %mio.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl = getelementptr inbounds %struct._MIO, %struct._MIO* %0, i32 0, i32 2
  %mem = bitcast %union.anon* %impl to %struct.anon.0*
  %pos = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem, i32 0, i32 2
  %1 = load i64, i64* %pos, align 8
  %2 = load i64, i64* %n.addr, align 8
  %add = add i64 %1, %2
  %3 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl1 = getelementptr inbounds %struct._MIO, %struct._MIO* %3, i32 0, i32 2
  %mem2 = bitcast %union.anon* %impl1 to %struct.anon.0*
  %size = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem2, i32 0, i32 3
  %4 = load i64, i64* %size, align 8
  %cmp = icmp ugt i64 %add, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %6 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl3 = getelementptr inbounds %struct._MIO, %struct._MIO* %6, i32 0, i32 2
  %mem4 = bitcast %union.anon* %impl3 to %struct.anon.0*
  %pos5 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem4, i32 0, i32 2
  %7 = load i64, i64* %pos5, align 8
  %8 = load i64, i64* %n.addr, align 8
  %add6 = add i64 %7, %8
  %call = call i32 @mem_try_resize(%struct._MIO* %5, i64 %add6)
  store i32 %call, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32, i32* %success, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @mio_putc(%struct._MIO* %mio, i32 %c) #0 {
entry:
  %retval = alloca i32, align 4
  %mio.addr = alloca %struct._MIO*, align 8
  %c.addr = alloca i32, align 4
  %rv = alloca i32, align 4
  store %struct._MIO* %mio, %struct._MIO** %mio.addr, align 8
  store i32 %c, i32* %c.addr, align 4
  %0 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %type = getelementptr inbounds %struct._MIO, %struct._MIO* %0, i32 0, i32 0
  %1 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %c.addr, align 4
  %3 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl = getelementptr inbounds %struct._MIO, %struct._MIO* %3, i32 0, i32 2
  %file = bitcast %union.anon* %impl to %struct.anon*
  %fp = getelementptr inbounds %struct.anon, %struct.anon* %file, i32 0, i32 0
  %4 = load %struct.__sFILE*, %struct.__sFILE** %fp, align 8
  %call = call i32 @fputc(i32 %2, %struct.__sFILE* %4)
  store i32 %call, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %5 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %type1 = getelementptr inbounds %struct._MIO, %struct._MIO* %5, i32 0, i32 0
  %6 = load i32, i32* %type1, align 8
  %cmp2 = icmp eq i32 %6, 1
  br i1 %cmp2, label %if.then3, label %if.else14

if.then3:                                         ; preds = %if.else
  store i32 -1, i32* %rv, align 4
  %7 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %call4 = call i32 @mem_try_ensure_space(%struct._MIO* %7, i64 1)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then3
  %8 = load i32, i32* %c.addr, align 4
  %conv = trunc i32 %8 to i8
  %9 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl6 = getelementptr inbounds %struct._MIO, %struct._MIO* %9, i32 0, i32 2
  %mem = bitcast %union.anon* %impl6 to %struct.anon.0*
  %buf = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem, i32 0, i32 0
  %10 = load i8*, i8** %buf, align 8
  %11 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl7 = getelementptr inbounds %struct._MIO, %struct._MIO* %11, i32 0, i32 2
  %mem8 = bitcast %union.anon* %impl7 to %struct.anon.0*
  %pos = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem8, i32 0, i32 2
  %12 = load i64, i64* %pos, align 8
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %12
  store i8 %conv, i8* %arrayidx, align 1
  %13 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl9 = getelementptr inbounds %struct._MIO, %struct._MIO* %13, i32 0, i32 2
  %mem10 = bitcast %union.anon* %impl9 to %struct.anon.0*
  %pos11 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem10, i32 0, i32 2
  %14 = load i64, i64* %pos11, align 8
  %inc = add i64 %14, 1
  store i64 %inc, i64* %pos11, align 8
  %15 = load i32, i32* %c.addr, align 4
  %conv12 = trunc i32 %15 to i8
  %conv13 = zext i8 %conv12 to i32
  store i32 %conv13, i32* %rv, align 4
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then3
  %16 = load i32, i32* %rv, align 4
  store i32 %16, i32* %retval, align 4
  br label %return

if.else14:                                        ; preds = %if.else
  br label %do.body

do.body:                                          ; preds = %if.else14
  br label %do.end

do.end:                                           ; preds = %do.body
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %do.end, %if.end, %if.then
  %17 = load i32, i32* %retval, align 4
  ret i32 %17
}

declare i32 @fputc(i32, %struct.__sFILE*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @mio_puts(%struct._MIO* %mio, i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %mio.addr = alloca %struct._MIO*, align 8
  %s.addr = alloca i8*, align 8
  %rv = alloca i32, align 4
  %len = alloca i64, align 8
  store %struct._MIO* %mio, %struct._MIO** %mio.addr, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %type = getelementptr inbounds %struct._MIO, %struct._MIO* %0, i32 0, i32 0
  %1 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %s.addr, align 8
  %3 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl = getelementptr inbounds %struct._MIO, %struct._MIO* %3, i32 0, i32 2
  %file = bitcast %union.anon* %impl to %struct.anon*
  %fp = getelementptr inbounds %struct.anon, %struct.anon* %file, i32 0, i32 0
  %4 = load %struct.__sFILE*, %struct.__sFILE** %fp, align 8
  %call = call i32 @"\01_fputs"(i8* %2, %struct.__sFILE* %4)
  store i32 %call, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %5 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %type1 = getelementptr inbounds %struct._MIO, %struct._MIO* %5, i32 0, i32 0
  %6 = load i32, i32* %type1, align 8
  %cmp2 = icmp eq i32 %6, 1
  br i1 %cmp2, label %if.then3, label %if.else13

if.then3:                                         ; preds = %if.else
  store i32 -1, i32* %rv, align 4
  %7 = load i8*, i8** %s.addr, align 8
  %call4 = call i64 @strlen(i8* %7)
  store i64 %call4, i64* %len, align 8
  %8 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %9 = load i64, i64* %len, align 8
  %call5 = call i32 @mem_try_ensure_space(%struct._MIO* %8, i64 %9)
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then3
  %10 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl7 = getelementptr inbounds %struct._MIO, %struct._MIO* %10, i32 0, i32 2
  %mem = bitcast %union.anon* %impl7 to %struct.anon.0*
  %buf = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem, i32 0, i32 0
  %11 = load i8*, i8** %buf, align 8
  %12 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl8 = getelementptr inbounds %struct._MIO, %struct._MIO* %12, i32 0, i32 2
  %mem9 = bitcast %union.anon* %impl8 to %struct.anon.0*
  %pos = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem9, i32 0, i32 2
  %13 = load i64, i64* %pos, align 8
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 %13
  %14 = load i8*, i8** %s.addr, align 8
  %15 = load i64, i64* %len, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %arrayidx, i8* align 1 %14, i64 %15, i1 false)
  %16 = load i64, i64* %len, align 8
  %17 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl10 = getelementptr inbounds %struct._MIO, %struct._MIO* %17, i32 0, i32 2
  %mem11 = bitcast %union.anon* %impl10 to %struct.anon.0*
  %pos12 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem11, i32 0, i32 2
  %18 = load i64, i64* %pos12, align 8
  %add = add i64 %18, %16
  store i64 %add, i64* %pos12, align 8
  store i32 1, i32* %rv, align 4
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then3
  %19 = load i32, i32* %rv, align 4
  store i32 %19, i32* %retval, align 4
  br label %return

if.else13:                                        ; preds = %if.else
  br label %do.body

do.body:                                          ; preds = %if.else13
  br label %do.end

do.end:                                           ; preds = %do.body
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %do.end, %if.end, %if.then
  %20 = load i32, i32* %retval, align 4
  ret i32 %20
}

declare i32 @"\01_fputs"(i8*, %struct.__sFILE*) #1

declare i64 @strlen(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @mio_vprintf(%struct._MIO* %mio, i8* %format, i8* %ap) #0 {
entry:
  %retval = alloca i32, align 4
  %mio.addr = alloca %struct._MIO*, align 8
  %format.addr = alloca i8*, align 8
  %ap.addr = alloca i8*, align 8
  %rv = alloca i32, align 4
  %n = alloca i64, align 8
  %old_pos = alloca i64, align 8
  %old_size = alloca i64, align 8
  %ap_copy = alloca i8*, align 8
  %dummy = alloca i8, align 1
  %c = alloca i8, align 1
  store %struct._MIO* %mio, %struct._MIO** %mio.addr, align 8
  store i8* %format, i8** %format.addr, align 8
  store i8* %ap, i8** %ap.addr, align 8
  %0 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %type = getelementptr inbounds %struct._MIO, %struct._MIO* %0, i32 0, i32 0
  %1 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl = getelementptr inbounds %struct._MIO, %struct._MIO* %2, i32 0, i32 2
  %file = bitcast %union.anon* %impl to %struct.anon*
  %fp = getelementptr inbounds %struct.anon, %struct.anon* %file, i32 0, i32 0
  %3 = load %struct.__sFILE*, %struct.__sFILE** %fp, align 8
  %4 = load i8*, i8** %format.addr, align 8
  %5 = load i8*, i8** %ap.addr, align 8
  %call = call i32 @vfprintf(%struct.__sFILE* %3, i8* %4, i8* %5)
  store i32 %call, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %6 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %type1 = getelementptr inbounds %struct._MIO, %struct._MIO* %6, i32 0, i32 0
  %7 = load i32, i32* %type1, align 8
  %cmp2 = icmp eq i32 %7, 1
  br i1 %cmp2, label %if.then3, label %if.else59

if.then3:                                         ; preds = %if.else
  store i32 -1, i32* %rv, align 4
  %8 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl4 = getelementptr inbounds %struct._MIO, %struct._MIO* %8, i32 0, i32 2
  %mem = bitcast %union.anon* %impl4 to %struct.anon.0*
  %pos = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem, i32 0, i32 2
  %9 = load i64, i64* %pos, align 8
  store i64 %9, i64* %old_pos, align 8
  %10 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl5 = getelementptr inbounds %struct._MIO, %struct._MIO* %10, i32 0, i32 2
  %mem6 = bitcast %union.anon* %impl5 to %struct.anon.0*
  %size = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem6, i32 0, i32 3
  %11 = load i64, i64* %size, align 8
  store i64 %11, i64* %old_size, align 8
  %12 = bitcast i8** %ap_copy to i8*
  %13 = bitcast i8** %ap.addr to i8*
  call void @llvm.va_copy(i8* %12, i8* %13)
  %14 = load i8*, i8** %format.addr, align 8
  %15 = load i8*, i8** %ap_copy, align 8
  %call7 = call i32 @vsnprintf(i8* %dummy, i64 1, i8* %14, i8* %15)
  %conv = sext i32 %call7 to i64
  store i64 %conv, i64* %n, align 8
  %ap_copy8 = bitcast i8** %ap_copy to i8*
  call void @llvm.va_end(i8* %ap_copy8)
  %16 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %17 = load i64, i64* %n, align 8
  %call9 = call i32 @mem_try_ensure_space(%struct._MIO* %16, i64 %17)
  %tobool = icmp ne i32 %call9, 0
  br i1 %tobool, label %if.then10, label %if.end58

if.then10:                                        ; preds = %if.then3
  %18 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl11 = getelementptr inbounds %struct._MIO, %struct._MIO* %18, i32 0, i32 2
  %mem12 = bitcast %union.anon* %impl11 to %struct.anon.0*
  %buf = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem12, i32 0, i32 0
  %19 = load i8*, i8** %buf, align 8
  %20 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl13 = getelementptr inbounds %struct._MIO, %struct._MIO* %20, i32 0, i32 2
  %mem14 = bitcast %union.anon* %impl13 to %struct.anon.0*
  %pos15 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem14, i32 0, i32 2
  %21 = load i64, i64* %pos15, align 8
  %22 = load i64, i64* %n, align 8
  %sub = sub i64 %22, 1
  %add = add i64 %21, %sub
  %arrayidx = getelementptr inbounds i8, i8* %19, i64 %add
  %23 = load i8, i8* %arrayidx, align 1
  store i8 %23, i8* %c, align 1
  %24 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl16 = getelementptr inbounds %struct._MIO, %struct._MIO* %24, i32 0, i32 2
  %mem17 = bitcast %union.anon* %impl16 to %struct.anon.0*
  %buf18 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem17, i32 0, i32 0
  %25 = load i8*, i8** %buf18, align 8
  %26 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl19 = getelementptr inbounds %struct._MIO, %struct._MIO* %26, i32 0, i32 2
  %mem20 = bitcast %union.anon* %impl19 to %struct.anon.0*
  %pos21 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem20, i32 0, i32 2
  %27 = load i64, i64* %pos21, align 8
  %arrayidx22 = getelementptr inbounds i8, i8* %25, i64 %27
  %28 = load i8*, i8** %format.addr, align 8
  %29 = load i8*, i8** %ap.addr, align 8
  %call23 = call i32 @vsprintf(i8* %arrayidx22, i8* %28, i8* %29)
  store i32 %call23, i32* %rv, align 4
  %30 = load i8, i8* %c, align 1
  %31 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl24 = getelementptr inbounds %struct._MIO, %struct._MIO* %31, i32 0, i32 2
  %mem25 = bitcast %union.anon* %impl24 to %struct.anon.0*
  %buf26 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem25, i32 0, i32 0
  %32 = load i8*, i8** %buf26, align 8
  %33 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl27 = getelementptr inbounds %struct._MIO, %struct._MIO* %33, i32 0, i32 2
  %mem28 = bitcast %union.anon* %impl27 to %struct.anon.0*
  %pos29 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem28, i32 0, i32 2
  %34 = load i64, i64* %pos29, align 8
  %35 = load i64, i64* %n, align 8
  %sub30 = sub i64 %35, 1
  %add31 = add i64 %34, %sub30
  %arrayidx32 = getelementptr inbounds i8, i8* %32, i64 %add31
  store i8 %30, i8* %arrayidx32, align 1
  %36 = load i32, i32* %rv, align 4
  %cmp33 = icmp sge i32 %36, 0
  br i1 %cmp33, label %land.lhs.true, label %if.else54

land.lhs.true:                                    ; preds = %if.then10
  %37 = load i32, i32* %rv, align 4
  %conv35 = sext i32 %37 to i64
  %38 = load i64, i64* %n, align 8
  %sub36 = sub i64 %38, 1
  %cmp37 = icmp eq i64 %conv35, %sub36
  br i1 %cmp37, label %if.then39, label %if.else54

if.then39:                                        ; preds = %land.lhs.true
  %39 = load i64, i64* %old_size, align 8
  %40 = load i64, i64* %old_pos, align 8
  %41 = load i32, i32* %rv, align 4
  %conv40 = zext i32 %41 to i64
  %add41 = add i64 %40, %conv40
  %cmp42 = icmp ugt i64 %39, %add41
  br i1 %cmp42, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then39
  %42 = load i64, i64* %old_size, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then39
  %43 = load i64, i64* %old_pos, align 8
  %44 = load i32, i32* %rv, align 4
  %conv44 = zext i32 %44 to i64
  %add45 = add i64 %43, %conv44
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %42, %cond.true ], [ %add45, %cond.false ]
  %45 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl46 = getelementptr inbounds %struct._MIO, %struct._MIO* %45, i32 0, i32 2
  %mem47 = bitcast %union.anon* %impl46 to %struct.anon.0*
  %size48 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem47, i32 0, i32 3
  store i64 %cond, i64* %size48, align 8
  %46 = load i32, i32* %rv, align 4
  %conv49 = zext i32 %46 to i64
  %47 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl50 = getelementptr inbounds %struct._MIO, %struct._MIO* %47, i32 0, i32 2
  %mem51 = bitcast %union.anon* %impl50 to %struct.anon.0*
  %pos52 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem51, i32 0, i32 2
  %48 = load i64, i64* %pos52, align 8
  %add53 = add i64 %48, %conv49
  store i64 %add53, i64* %pos52, align 8
  br label %if.end

if.else54:                                        ; preds = %land.lhs.true, %if.then10
  %49 = load i64, i64* %old_size, align 8
  %50 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl55 = getelementptr inbounds %struct._MIO, %struct._MIO* %50, i32 0, i32 2
  %mem56 = bitcast %union.anon* %impl55 to %struct.anon.0*
  %size57 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem56, i32 0, i32 3
  store i64 %49, i64* %size57, align 8
  store i32 -1, i32* %rv, align 4
  br label %if.end

if.end:                                           ; preds = %if.else54, %cond.end
  br label %if.end58

if.end58:                                         ; preds = %if.end, %if.then3
  %51 = load i32, i32* %rv, align 4
  store i32 %51, i32* %retval, align 4
  br label %return

if.else59:                                        ; preds = %if.else
  br label %do.body

do.body:                                          ; preds = %if.else59
  br label %do.end

do.end:                                           ; preds = %do.body
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %do.end, %if.end58, %if.then
  %52 = load i32, i32* %retval, align 4
  ret i32 %52
}

declare i32 @vfprintf(%struct.__sFILE*, i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.va_copy(i8*, i8*) #3

declare i32 @vsnprintf(i8*, i64, i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #3

declare i32 @vsprintf(i8*, i8*, i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @mio_printf(%struct._MIO* %mio, i8* %format, ...) #0 {
entry:
  %mio.addr = alloca %struct._MIO*, align 8
  %format.addr = alloca i8*, align 8
  %rv = alloca i32, align 4
  %ap = alloca i8*, align 8
  store %struct._MIO* %mio, %struct._MIO** %mio.addr, align 8
  store i8* %format, i8** %format.addr, align 8
  %ap1 = bitcast i8** %ap to i8*
  call void @llvm.va_start(i8* %ap1)
  %0 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %1 = load i8*, i8** %format.addr, align 8
  %2 = load i8*, i8** %ap, align 8
  %call = call i32 @mio_vprintf(%struct._MIO* %0, i8* %1, i8* %2)
  store i32 %call, i32* %rv, align 4
  %ap2 = bitcast i8** %ap to i8*
  call void @llvm.va_end(i8* %ap2)
  %3 = load i32, i32* %rv, align 4
  ret i32 %3
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #3

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @mio_getc(%struct._MIO* %mio) #0 {
entry:
  %retval = alloca i32, align 4
  %mio.addr = alloca %struct._MIO*, align 8
  %rv = alloca i32, align 4
  store %struct._MIO* %mio, %struct._MIO** %mio.addr, align 8
  %0 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %type = getelementptr inbounds %struct._MIO, %struct._MIO* %0, i32 0, i32 0
  %1 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl = getelementptr inbounds %struct._MIO, %struct._MIO* %2, i32 0, i32 2
  %file = bitcast %union.anon* %impl to %struct.anon*
  %fp = getelementptr inbounds %struct.anon, %struct.anon* %file, i32 0, i32 0
  %3 = load %struct.__sFILE*, %struct.__sFILE** %fp, align 8
  %call = call i32 @fgetc(%struct.__sFILE* %3)
  store i32 %call, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %4 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %type1 = getelementptr inbounds %struct._MIO, %struct._MIO* %4, i32 0, i32 0
  %5 = load i32, i32* %type1, align 8
  %cmp2 = icmp eq i32 %5, 1
  br i1 %cmp2, label %if.then3, label %if.else36

if.then3:                                         ; preds = %if.else
  store i32 -1, i32* %rv, align 4
  %6 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl4 = getelementptr inbounds %struct._MIO, %struct._MIO* %6, i32 0, i32 2
  %mem = bitcast %union.anon* %impl4 to %struct.anon.0*
  %ungetch = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem, i32 0, i32 1
  %7 = load i32, i32* %ungetch, align 8
  %cmp5 = icmp ne i32 %7, -1
  br i1 %cmp5, label %if.then6, label %if.else15

if.then6:                                         ; preds = %if.then3
  %8 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl7 = getelementptr inbounds %struct._MIO, %struct._MIO* %8, i32 0, i32 2
  %mem8 = bitcast %union.anon* %impl7 to %struct.anon.0*
  %ungetch9 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem8, i32 0, i32 1
  %9 = load i32, i32* %ungetch9, align 8
  store i32 %9, i32* %rv, align 4
  %10 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl10 = getelementptr inbounds %struct._MIO, %struct._MIO* %10, i32 0, i32 2
  %mem11 = bitcast %union.anon* %impl10 to %struct.anon.0*
  %ungetch12 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem11, i32 0, i32 1
  store i32 -1, i32* %ungetch12, align 8
  %11 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl13 = getelementptr inbounds %struct._MIO, %struct._MIO* %11, i32 0, i32 2
  %mem14 = bitcast %union.anon* %impl13 to %struct.anon.0*
  %pos = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem14, i32 0, i32 2
  %12 = load i64, i64* %pos, align 8
  %inc = add i64 %12, 1
  store i64 %inc, i64* %pos, align 8
  br label %if.end35

if.else15:                                        ; preds = %if.then3
  %13 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl16 = getelementptr inbounds %struct._MIO, %struct._MIO* %13, i32 0, i32 2
  %mem17 = bitcast %union.anon* %impl16 to %struct.anon.0*
  %pos18 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem17, i32 0, i32 2
  %14 = load i64, i64* %pos18, align 8
  %15 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl19 = getelementptr inbounds %struct._MIO, %struct._MIO* %15, i32 0, i32 2
  %mem20 = bitcast %union.anon* %impl19 to %struct.anon.0*
  %size = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem20, i32 0, i32 3
  %16 = load i64, i64* %size, align 8
  %cmp21 = icmp ult i64 %14, %16
  br i1 %cmp21, label %if.then22, label %if.else32

if.then22:                                        ; preds = %if.else15
  %17 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl23 = getelementptr inbounds %struct._MIO, %struct._MIO* %17, i32 0, i32 2
  %mem24 = bitcast %union.anon* %impl23 to %struct.anon.0*
  %buf = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem24, i32 0, i32 0
  %18 = load i8*, i8** %buf, align 8
  %19 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl25 = getelementptr inbounds %struct._MIO, %struct._MIO* %19, i32 0, i32 2
  %mem26 = bitcast %union.anon* %impl25 to %struct.anon.0*
  %pos27 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem26, i32 0, i32 2
  %20 = load i64, i64* %pos27, align 8
  %arrayidx = getelementptr inbounds i8, i8* %18, i64 %20
  %21 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %21 to i32
  store i32 %conv, i32* %rv, align 4
  %22 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl28 = getelementptr inbounds %struct._MIO, %struct._MIO* %22, i32 0, i32 2
  %mem29 = bitcast %union.anon* %impl28 to %struct.anon.0*
  %pos30 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem29, i32 0, i32 2
  %23 = load i64, i64* %pos30, align 8
  %inc31 = add i64 %23, 1
  store i64 %inc31, i64* %pos30, align 8
  br label %if.end

if.else32:                                        ; preds = %if.else15
  %24 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl33 = getelementptr inbounds %struct._MIO, %struct._MIO* %24, i32 0, i32 2
  %mem34 = bitcast %union.anon* %impl33 to %struct.anon.0*
  %eof = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem34, i32 0, i32 8
  store i8 1, i8* %eof, align 1
  br label %if.end

if.end:                                           ; preds = %if.else32, %if.then22
  br label %if.end35

if.end35:                                         ; preds = %if.end, %if.then6
  %25 = load i32, i32* %rv, align 4
  store i32 %25, i32* %retval, align 4
  br label %return

if.else36:                                        ; preds = %if.else
  br label %do.body

do.body:                                          ; preds = %if.else36
  br label %do.end

do.end:                                           ; preds = %do.body
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %do.end, %if.end35, %if.then
  %26 = load i32, i32* %retval, align 4
  ret i32 %26
}

declare i32 @fgetc(%struct.__sFILE*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @mio_ungetc(%struct._MIO* %mio, i32 %ch) #0 {
entry:
  %retval = alloca i32, align 4
  %mio.addr = alloca %struct._MIO*, align 8
  %ch.addr = alloca i32, align 4
  %rv = alloca i32, align 4
  store %struct._MIO* %mio, %struct._MIO** %mio.addr, align 8
  store i32 %ch, i32* %ch.addr, align 4
  %0 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %type = getelementptr inbounds %struct._MIO, %struct._MIO* %0, i32 0, i32 0
  %1 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %ch.addr, align 4
  %3 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl = getelementptr inbounds %struct._MIO, %struct._MIO* %3, i32 0, i32 2
  %file = bitcast %union.anon* %impl to %struct.anon*
  %fp = getelementptr inbounds %struct.anon, %struct.anon* %file, i32 0, i32 0
  %4 = load %struct.__sFILE*, %struct.__sFILE** %fp, align 8
  %call = call i32 @ungetc(i32 %2, %struct.__sFILE* %4)
  store i32 %call, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %5 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %type1 = getelementptr inbounds %struct._MIO, %struct._MIO* %5, i32 0, i32 0
  %6 = load i32, i32* %type1, align 8
  %cmp2 = icmp eq i32 %6, 1
  br i1 %cmp2, label %if.then3, label %if.else15

if.then3:                                         ; preds = %if.else
  store i32 -1, i32* %rv, align 4
  %7 = load i32, i32* %ch.addr, align 4
  %cmp4 = icmp ne i32 %7, -1
  br i1 %cmp4, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then3
  %8 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl5 = getelementptr inbounds %struct._MIO, %struct._MIO* %8, i32 0, i32 2
  %mem = bitcast %union.anon* %impl5 to %struct.anon.0*
  %ungetch = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem, i32 0, i32 1
  %9 = load i32, i32* %ungetch, align 8
  %cmp6 = icmp eq i32 %9, -1
  br i1 %cmp6, label %if.then7, label %if.end

if.then7:                                         ; preds = %land.lhs.true
  %10 = load i32, i32* %ch.addr, align 4
  %11 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl8 = getelementptr inbounds %struct._MIO, %struct._MIO* %11, i32 0, i32 2
  %mem9 = bitcast %union.anon* %impl8 to %struct.anon.0*
  %ungetch10 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem9, i32 0, i32 1
  store i32 %10, i32* %ungetch10, align 8
  store i32 %10, i32* %rv, align 4
  %12 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl11 = getelementptr inbounds %struct._MIO, %struct._MIO* %12, i32 0, i32 2
  %mem12 = bitcast %union.anon* %impl11 to %struct.anon.0*
  %pos = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem12, i32 0, i32 2
  %13 = load i64, i64* %pos, align 8
  %dec = add i64 %13, -1
  store i64 %dec, i64* %pos, align 8
  %14 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl13 = getelementptr inbounds %struct._MIO, %struct._MIO* %14, i32 0, i32 2
  %mem14 = bitcast %union.anon* %impl13 to %struct.anon.0*
  %eof = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem14, i32 0, i32 8
  store i8 0, i8* %eof, align 1
  br label %if.end

if.end:                                           ; preds = %if.then7, %land.lhs.true, %if.then3
  %15 = load i32, i32* %rv, align 4
  store i32 %15, i32* %retval, align 4
  br label %return

if.else15:                                        ; preds = %if.else
  br label %do.body

do.body:                                          ; preds = %if.else15
  br label %do.end

do.end:                                           ; preds = %do.body
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %do.end, %if.end, %if.then
  %16 = load i32, i32* %retval, align 4
  ret i32 %16
}

declare i32 @ungetc(i32, %struct.__sFILE*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @mio_gets(%struct._MIO* %mio, i8* %s, i64 %size) #0 {
entry:
  %retval = alloca i8*, align 8
  %mio.addr = alloca %struct._MIO*, align 8
  %s.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %rv = alloca i8*, align 8
  %i = alloca i64, align 8
  %newline = alloca i8, align 1
  %pos = alloca i64, align 8
  %buf_size = alloca i64, align 8
  %buf = alloca i8*, align 8
  store %struct._MIO* %mio, %struct._MIO** %mio.addr, align 8
  store i8* %s, i8** %s.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %type = getelementptr inbounds %struct._MIO, %struct._MIO* %0, i32 0, i32 0
  %1 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %s.addr, align 8
  %3 = load i64, i64* %size.addr, align 8
  %conv = trunc i64 %3 to i32
  %4 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl = getelementptr inbounds %struct._MIO, %struct._MIO* %4, i32 0, i32 2
  %file = bitcast %union.anon* %impl to %struct.anon*
  %fp = getelementptr inbounds %struct.anon, %struct.anon* %file, i32 0, i32 0
  %5 = load %struct.__sFILE*, %struct.__sFILE** %fp, align 8
  %call = call i8* @fgets(i8* %2, i32 %conv, %struct.__sFILE* %5)
  store i8* %call, i8** %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %6 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %type1 = getelementptr inbounds %struct._MIO, %struct._MIO* %6, i32 0, i32 0
  %7 = load i32, i32* %type1, align 8
  %cmp2 = icmp eq i32 %7, 1
  br i1 %cmp2, label %if.then4, label %if.else62

if.then4:                                         ; preds = %if.else
  store i8* null, i8** %rv, align 8
  %8 = load i64, i64* %size.addr, align 8
  %cmp5 = icmp ugt i64 %8, 0
  br i1 %cmp5, label %if.then7, label %if.end61

if.then7:                                         ; preds = %if.then4
  store i64 0, i64* %i, align 8
  store i8 0, i8* %newline, align 1
  %9 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl8 = getelementptr inbounds %struct._MIO, %struct._MIO* %9, i32 0, i32 2
  %mem = bitcast %union.anon* %impl8 to %struct.anon.0*
  %pos9 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem, i32 0, i32 2
  %10 = load i64, i64* %pos9, align 8
  store i64 %10, i64* %pos, align 8
  %11 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl10 = getelementptr inbounds %struct._MIO, %struct._MIO* %11, i32 0, i32 2
  %mem11 = bitcast %union.anon* %impl10 to %struct.anon.0*
  %size12 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem11, i32 0, i32 3
  %12 = load i64, i64* %size12, align 8
  store i64 %12, i64* %buf_size, align 8
  %13 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl13 = getelementptr inbounds %struct._MIO, %struct._MIO* %13, i32 0, i32 2
  %mem14 = bitcast %union.anon* %impl13 to %struct.anon.0*
  %buf15 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem14, i32 0, i32 0
  %14 = load i8*, i8** %buf15, align 8
  store i8* %14, i8** %buf, align 8
  %15 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl16 = getelementptr inbounds %struct._MIO, %struct._MIO* %15, i32 0, i32 2
  %mem17 = bitcast %union.anon* %impl16 to %struct.anon.0*
  %ungetch = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem17, i32 0, i32 1
  %16 = load i32, i32* %ungetch, align 8
  %cmp18 = icmp ne i32 %16, -1
  br i1 %cmp18, label %if.then20, label %if.end

if.then20:                                        ; preds = %if.then7
  %17 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl21 = getelementptr inbounds %struct._MIO, %struct._MIO* %17, i32 0, i32 2
  %mem22 = bitcast %union.anon* %impl21 to %struct.anon.0*
  %ungetch23 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem22, i32 0, i32 1
  %18 = load i32, i32* %ungetch23, align 8
  %conv24 = trunc i32 %18 to i8
  %19 = load i8*, i8** %s.addr, align 8
  %20 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds i8, i8* %19, i64 %20
  store i8 %conv24, i8* %arrayidx, align 1
  %21 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl25 = getelementptr inbounds %struct._MIO, %struct._MIO* %21, i32 0, i32 2
  %mem26 = bitcast %union.anon* %impl25 to %struct.anon.0*
  %ungetch27 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem26, i32 0, i32 1
  store i32 -1, i32* %ungetch27, align 8
  %22 = load i64, i64* %pos, align 8
  %inc = add i64 %22, 1
  store i64 %inc, i64* %pos, align 8
  %23 = load i64, i64* %i, align 8
  %inc28 = add i64 %23, 1
  store i64 %inc28, i64* %i, align 8
  br label %if.end

if.end:                                           ; preds = %if.then20, %if.then7
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %24 = load i64, i64* %pos, align 8
  %25 = load i64, i64* %buf_size, align 8
  %cmp29 = icmp ult i64 %24, %25
  br i1 %cmp29, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %26 = load i64, i64* %i, align 8
  %27 = load i64, i64* %size.addr, align 8
  %sub = sub i64 %27, 1
  %cmp31 = icmp ult i64 %26, %sub
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %28 = phi i1 [ false, %for.cond ], [ %cmp31, %land.rhs ]
  br i1 %28, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %29 = load i8*, i8** %buf, align 8
  %30 = load i64, i64* %pos, align 8
  %arrayidx33 = getelementptr inbounds i8, i8* %29, i64 %30
  %31 = load i8, i8* %arrayidx33, align 1
  %32 = load i8*, i8** %s.addr, align 8
  %33 = load i64, i64* %i, align 8
  %arrayidx34 = getelementptr inbounds i8, i8* %32, i64 %33
  store i8 %31, i8* %arrayidx34, align 1
  %34 = load i64, i64* %pos, align 8
  %inc35 = add i64 %34, 1
  store i64 %inc35, i64* %pos, align 8
  %35 = load i8*, i8** %s.addr, align 8
  %36 = load i64, i64* %i, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %35, i64 %36
  %37 = load i8, i8* %arrayidx36, align 1
  %conv37 = sext i8 %37 to i32
  %cmp38 = icmp eq i32 %conv37, 10
  br i1 %cmp38, label %if.then40, label %if.end42

if.then40:                                        ; preds = %for.body
  %38 = load i64, i64* %i, align 8
  %inc41 = add i64 %38, 1
  store i64 %inc41, i64* %i, align 8
  store i8 1, i8* %newline, align 1
  br label %for.end

if.end42:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end42
  %39 = load i64, i64* %i, align 8
  %inc43 = add i64 %39, 1
  store i64 %inc43, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then40, %land.end
  %40 = load i64, i64* %i, align 8
  %cmp44 = icmp ugt i64 %40, 0
  br i1 %cmp44, label %if.then46, label %if.end48

if.then46:                                        ; preds = %for.end
  %41 = load i8*, i8** %s.addr, align 8
  %42 = load i64, i64* %i, align 8
  %arrayidx47 = getelementptr inbounds i8, i8* %41, i64 %42
  store i8 0, i8* %arrayidx47, align 1
  %43 = load i8*, i8** %s.addr, align 8
  store i8* %43, i8** %rv, align 8
  br label %if.end48

if.end48:                                         ; preds = %if.then46, %for.end
  %44 = load i8, i8* %newline, align 1
  %tobool = trunc i8 %44 to i1
  br i1 %tobool, label %if.end54, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end48
  %45 = load i64, i64* %pos, align 8
  %46 = load i64, i64* %buf_size, align 8
  %cmp49 = icmp uge i64 %45, %46
  br i1 %cmp49, label %if.then51, label %if.end54

if.then51:                                        ; preds = %land.lhs.true
  %47 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl52 = getelementptr inbounds %struct._MIO, %struct._MIO* %47, i32 0, i32 2
  %mem53 = bitcast %union.anon* %impl52 to %struct.anon.0*
  %eof = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem53, i32 0, i32 8
  store i8 1, i8* %eof, align 1
  br label %if.end54

if.end54:                                         ; preds = %if.then51, %land.lhs.true, %if.end48
  %48 = load i64, i64* %pos, align 8
  %49 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl55 = getelementptr inbounds %struct._MIO, %struct._MIO* %49, i32 0, i32 2
  %mem56 = bitcast %union.anon* %impl55 to %struct.anon.0*
  %pos57 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem56, i32 0, i32 2
  store i64 %48, i64* %pos57, align 8
  %50 = load i64, i64* %buf_size, align 8
  %51 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl58 = getelementptr inbounds %struct._MIO, %struct._MIO* %51, i32 0, i32 2
  %mem59 = bitcast %union.anon* %impl58 to %struct.anon.0*
  %size60 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem59, i32 0, i32 3
  store i64 %50, i64* %size60, align 8
  br label %if.end61

if.end61:                                         ; preds = %if.end54, %if.then4
  %52 = load i8*, i8** %rv, align 8
  store i8* %52, i8** %retval, align 8
  br label %return

if.else62:                                        ; preds = %if.else
  br label %do.body

do.body:                                          ; preds = %if.else62
  br label %do.end

do.end:                                           ; preds = %do.body
  store i8* null, i8** %retval, align 8
  br label %return

return:                                           ; preds = %do.end, %if.end61, %if.then
  %53 = load i8*, i8** %retval, align 8
  ret i8* %53
}

declare i8* @fgets(i8*, i32, %struct.__sFILE*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @mio_clearerr(%struct._MIO* %mio) #0 {
entry:
  %mio.addr = alloca %struct._MIO*, align 8
  store %struct._MIO* %mio, %struct._MIO** %mio.addr, align 8
  %0 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %type = getelementptr inbounds %struct._MIO, %struct._MIO* %0, i32 0, i32 0
  %1 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl = getelementptr inbounds %struct._MIO, %struct._MIO* %2, i32 0, i32 2
  %file = bitcast %union.anon* %impl to %struct.anon*
  %fp = getelementptr inbounds %struct.anon, %struct.anon* %file, i32 0, i32 0
  %3 = load %struct.__sFILE*, %struct.__sFILE** %fp, align 8
  call void @clearerr(%struct.__sFILE* %3)
  br label %if.end8

if.else:                                          ; preds = %entry
  %4 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %type1 = getelementptr inbounds %struct._MIO, %struct._MIO* %4, i32 0, i32 0
  %5 = load i32, i32* %type1, align 8
  %cmp2 = icmp eq i32 %5, 1
  br i1 %cmp2, label %if.then3, label %if.else7

if.then3:                                         ; preds = %if.else
  %6 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl4 = getelementptr inbounds %struct._MIO, %struct._MIO* %6, i32 0, i32 2
  %mem = bitcast %union.anon* %impl4 to %struct.anon.0*
  %error = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem, i32 0, i32 7
  store i8 0, i8* %error, align 8
  %7 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl5 = getelementptr inbounds %struct._MIO, %struct._MIO* %7, i32 0, i32 2
  %mem6 = bitcast %union.anon* %impl5 to %struct.anon.0*
  %eof = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem6, i32 0, i32 8
  store i8 0, i8* %eof, align 1
  br label %if.end

if.else7:                                         ; preds = %if.else
  br label %do.body

do.body:                                          ; preds = %if.else7
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then3
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  ret void
}

declare void @clearerr(%struct.__sFILE*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @mio_eof(%struct._MIO* %mio) #0 {
entry:
  %retval = alloca i32, align 4
  %mio.addr = alloca %struct._MIO*, align 8
  store %struct._MIO* %mio, %struct._MIO** %mio.addr, align 8
  %0 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %type = getelementptr inbounds %struct._MIO, %struct._MIO* %0, i32 0, i32 0
  %1 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl = getelementptr inbounds %struct._MIO, %struct._MIO* %2, i32 0, i32 2
  %file = bitcast %union.anon* %impl to %struct.anon*
  %fp = getelementptr inbounds %struct.anon, %struct.anon* %file, i32 0, i32 0
  %3 = load %struct.__sFILE*, %struct.__sFILE** %fp, align 8
  %call = call i32 @feof(%struct.__sFILE* %3)
  store i32 %call, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %4 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %type1 = getelementptr inbounds %struct._MIO, %struct._MIO* %4, i32 0, i32 0
  %5 = load i32, i32* %type1, align 8
  %cmp2 = icmp eq i32 %5, 1
  br i1 %cmp2, label %if.then3, label %if.else7

if.then3:                                         ; preds = %if.else
  %6 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl4 = getelementptr inbounds %struct._MIO, %struct._MIO* %6, i32 0, i32 2
  %mem = bitcast %union.anon* %impl4 to %struct.anon.0*
  %eof = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem, i32 0, i32 8
  %7 = load i8, i8* %eof, align 1
  %tobool = trunc i8 %7 to i1
  %conv = zext i1 %tobool to i32
  %cmp5 = icmp ne i32 %conv, 0
  %conv6 = zext i1 %cmp5 to i32
  store i32 %conv6, i32* %retval, align 4
  br label %return

if.else7:                                         ; preds = %if.else
  br label %do.body

do.body:                                          ; preds = %if.else7
  br label %do.end

do.end:                                           ; preds = %do.body
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %do.end, %if.then3, %if.then
  %8 = load i32, i32* %retval, align 4
  ret i32 %8
}

declare i32 @feof(%struct.__sFILE*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @mio_error(%struct._MIO* %mio) #0 {
entry:
  %retval = alloca i32, align 4
  %mio.addr = alloca %struct._MIO*, align 8
  store %struct._MIO* %mio, %struct._MIO** %mio.addr, align 8
  %0 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %type = getelementptr inbounds %struct._MIO, %struct._MIO* %0, i32 0, i32 0
  %1 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl = getelementptr inbounds %struct._MIO, %struct._MIO* %2, i32 0, i32 2
  %file = bitcast %union.anon* %impl to %struct.anon*
  %fp = getelementptr inbounds %struct.anon, %struct.anon* %file, i32 0, i32 0
  %3 = load %struct.__sFILE*, %struct.__sFILE** %fp, align 8
  %call = call i32 @ferror(%struct.__sFILE* %3)
  store i32 %call, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %4 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %type1 = getelementptr inbounds %struct._MIO, %struct._MIO* %4, i32 0, i32 0
  %5 = load i32, i32* %type1, align 8
  %cmp2 = icmp eq i32 %5, 1
  br i1 %cmp2, label %if.then3, label %if.else7

if.then3:                                         ; preds = %if.else
  %6 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl4 = getelementptr inbounds %struct._MIO, %struct._MIO* %6, i32 0, i32 2
  %mem = bitcast %union.anon* %impl4 to %struct.anon.0*
  %error = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem, i32 0, i32 7
  %7 = load i8, i8* %error, align 8
  %tobool = trunc i8 %7 to i1
  %conv = zext i1 %tobool to i32
  %cmp5 = icmp ne i32 %conv, 0
  %conv6 = zext i1 %cmp5 to i32
  store i32 %conv6, i32* %retval, align 4
  br label %return

if.else7:                                         ; preds = %if.else
  br label %do.body

do.body:                                          ; preds = %if.else7
  br label %do.end

do.end:                                           ; preds = %do.body
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %do.end, %if.then3, %if.then
  %8 = load i32, i32* %retval, align 4
  ret i32 %8
}

declare i32 @ferror(%struct.__sFILE*) #1

declare i32 @fseek(%struct.__sFILE*, i64, i32) #1

declare i32* @__error() #1

declare i64 @ftell(%struct.__sFILE*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @mio_rewind(%struct._MIO* %mio) #0 {
entry:
  %mio.addr = alloca %struct._MIO*, align 8
  store %struct._MIO* %mio, %struct._MIO** %mio.addr, align 8
  %0 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %type = getelementptr inbounds %struct._MIO, %struct._MIO* %0, i32 0, i32 0
  %1 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl = getelementptr inbounds %struct._MIO, %struct._MIO* %2, i32 0, i32 2
  %file = bitcast %union.anon* %impl to %struct.anon*
  %fp = getelementptr inbounds %struct.anon, %struct.anon* %file, i32 0, i32 0
  %3 = load %struct.__sFILE*, %struct.__sFILE** %fp, align 8
  call void @rewind(%struct.__sFILE* %3)
  br label %if.end12

if.else:                                          ; preds = %entry
  %4 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %type1 = getelementptr inbounds %struct._MIO, %struct._MIO* %4, i32 0, i32 0
  %5 = load i32, i32* %type1, align 8
  %cmp2 = icmp eq i32 %5, 1
  br i1 %cmp2, label %if.then3, label %if.else11

if.then3:                                         ; preds = %if.else
  %6 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl4 = getelementptr inbounds %struct._MIO, %struct._MIO* %6, i32 0, i32 2
  %mem = bitcast %union.anon* %impl4 to %struct.anon.0*
  %pos = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem, i32 0, i32 2
  store i64 0, i64* %pos, align 8
  %7 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl5 = getelementptr inbounds %struct._MIO, %struct._MIO* %7, i32 0, i32 2
  %mem6 = bitcast %union.anon* %impl5 to %struct.anon.0*
  %ungetch = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem6, i32 0, i32 1
  store i32 -1, i32* %ungetch, align 8
  %8 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl7 = getelementptr inbounds %struct._MIO, %struct._MIO* %8, i32 0, i32 2
  %mem8 = bitcast %union.anon* %impl7 to %struct.anon.0*
  %eof = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem8, i32 0, i32 8
  store i8 0, i8* %eof, align 1
  %9 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl9 = getelementptr inbounds %struct._MIO, %struct._MIO* %9, i32 0, i32 2
  %mem10 = bitcast %union.anon* %impl9 to %struct.anon.0*
  %error = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem10, i32 0, i32 7
  store i8 0, i8* %error, align 8
  br label %if.end

if.else11:                                        ; preds = %if.else
  br label %do.body

do.body:                                          ; preds = %if.else11
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then3
  br label %if.end12

if.end12:                                         ; preds = %if.end, %if.then
  ret void
}

declare void @rewind(%struct.__sFILE*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @mio_getpos(%struct._MIO* %mio, %struct._MIOPos* %pos) #0 {
entry:
  %mio.addr = alloca %struct._MIO*, align 8
  %pos.addr = alloca %struct._MIOPos*, align 8
  %rv = alloca i32, align 4
  store %struct._MIO* %mio, %struct._MIO** %mio.addr, align 8
  store %struct._MIOPos* %pos, %struct._MIOPos** %pos.addr, align 8
  store i32 -1, i32* %rv, align 4
  %0 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %type = getelementptr inbounds %struct._MIO, %struct._MIO* %0, i32 0, i32 0
  %1 = load i32, i32* %type, align 8
  %2 = load %struct._MIOPos*, %struct._MIOPos** %pos.addr, align 8
  %type1 = getelementptr inbounds %struct._MIOPos, %struct._MIOPos* %2, i32 0, i32 0
  store i32 %1, i32* %type1, align 8
  %3 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %type2 = getelementptr inbounds %struct._MIO, %struct._MIO* %3, i32 0, i32 0
  %4 = load i32, i32* %type2, align 8
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl = getelementptr inbounds %struct._MIO, %struct._MIO* %5, i32 0, i32 2
  %file = bitcast %union.anon* %impl to %struct.anon*
  %fp = getelementptr inbounds %struct.anon, %struct.anon* %file, i32 0, i32 0
  %6 = load %struct.__sFILE*, %struct.__sFILE** %fp, align 8
  %7 = load %struct._MIOPos*, %struct._MIOPos** %pos.addr, align 8
  %impl3 = getelementptr inbounds %struct._MIOPos, %struct._MIOPos* %7, i32 0, i32 1
  %file4 = bitcast %union.anon.1* %impl3 to i64*
  %call = call i32 @fgetpos(%struct.__sFILE* %6, i64* %file4)
  store i32 %call, i32* %rv, align 4
  br label %if.end21

if.else:                                          ; preds = %entry
  %8 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %type5 = getelementptr inbounds %struct._MIO, %struct._MIO* %8, i32 0, i32 0
  %9 = load i32, i32* %type5, align 8
  %cmp6 = icmp eq i32 %9, 1
  br i1 %cmp6, label %if.then7, label %if.else19

if.then7:                                         ; preds = %if.else
  store i32 -1, i32* %rv, align 4
  %10 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl8 = getelementptr inbounds %struct._MIO, %struct._MIO* %10, i32 0, i32 2
  %mem = bitcast %union.anon* %impl8 to %struct.anon.0*
  %pos9 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem, i32 0, i32 2
  %11 = load i64, i64* %pos9, align 8
  %cmp10 = icmp eq i64 %11, -1
  br i1 %cmp10, label %if.then11, label %if.else13

if.then11:                                        ; preds = %if.then7
  %call12 = call i32* @__error()
  store i32 5, i32* %call12, align 4
  br label %if.end

if.else13:                                        ; preds = %if.then7
  %12 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl14 = getelementptr inbounds %struct._MIO, %struct._MIO* %12, i32 0, i32 2
  %mem15 = bitcast %union.anon* %impl14 to %struct.anon.0*
  %pos16 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem15, i32 0, i32 2
  %13 = load i64, i64* %pos16, align 8
  %14 = load %struct._MIOPos*, %struct._MIOPos** %pos.addr, align 8
  %impl17 = getelementptr inbounds %struct._MIOPos, %struct._MIOPos* %14, i32 0, i32 1
  %mem18 = bitcast %union.anon.1* %impl17 to i64*
  store i64 %13, i64* %mem18, align 8
  store i32 0, i32* %rv, align 4
  br label %if.end

if.end:                                           ; preds = %if.else13, %if.then11
  br label %if.end20

if.else19:                                        ; preds = %if.else
  br label %do.body

do.body:                                          ; preds = %if.else19
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %if.end20

if.end20:                                         ; preds = %do.end, %if.end
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %if.then
  %15 = load i32, i32* %rv, align 4
  ret i32 %15
}

declare i32 @fgetpos(%struct.__sFILE*, i64*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @mio_setpos(%struct._MIO* %mio, %struct._MIOPos* %pos) #0 {
entry:
  %mio.addr = alloca %struct._MIO*, align 8
  %pos.addr = alloca %struct._MIOPos*, align 8
  %rv = alloca i32, align 4
  store %struct._MIO* %mio, %struct._MIO** %mio.addr, align 8
  store %struct._MIOPos* %pos, %struct._MIOPos** %pos.addr, align 8
  store i32 -1, i32* %rv, align 4
  %0 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %type = getelementptr inbounds %struct._MIO, %struct._MIO* %0, i32 0, i32 0
  %1 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl = getelementptr inbounds %struct._MIO, %struct._MIO* %2, i32 0, i32 2
  %file = bitcast %union.anon* %impl to %struct.anon*
  %fp = getelementptr inbounds %struct.anon, %struct.anon* %file, i32 0, i32 0
  %3 = load %struct.__sFILE*, %struct.__sFILE** %fp, align 8
  %4 = load %struct._MIOPos*, %struct._MIOPos** %pos.addr, align 8
  %impl1 = getelementptr inbounds %struct._MIOPos, %struct._MIOPos* %4, i32 0, i32 1
  %file2 = bitcast %union.anon.1* %impl1 to i64*
  %call = call i32 @fsetpos(%struct.__sFILE* %3, i64* %file2)
  store i32 %call, i32* %rv, align 4
  br label %if.end22

if.else:                                          ; preds = %entry
  %5 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %type3 = getelementptr inbounds %struct._MIO, %struct._MIO* %5, i32 0, i32 0
  %6 = load i32, i32* %type3, align 8
  %cmp4 = icmp eq i32 %6, 1
  br i1 %cmp4, label %if.then5, label %if.else20

if.then5:                                         ; preds = %if.else
  store i32 -1, i32* %rv, align 4
  %7 = load %struct._MIOPos*, %struct._MIOPos** %pos.addr, align 8
  %impl6 = getelementptr inbounds %struct._MIOPos, %struct._MIOPos* %7, i32 0, i32 1
  %mem = bitcast %union.anon.1* %impl6 to i64*
  %8 = load i64, i64* %mem, align 8
  %9 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl7 = getelementptr inbounds %struct._MIO, %struct._MIO* %9, i32 0, i32 2
  %mem8 = bitcast %union.anon* %impl7 to %struct.anon.0*
  %size = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem8, i32 0, i32 3
  %10 = load i64, i64* %size, align 8
  %cmp9 = icmp ugt i64 %8, %10
  br i1 %cmp9, label %if.then10, label %if.else12

if.then10:                                        ; preds = %if.then5
  %call11 = call i32* @__error()
  store i32 22, i32* %call11, align 4
  br label %if.end

if.else12:                                        ; preds = %if.then5
  %11 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl13 = getelementptr inbounds %struct._MIO, %struct._MIO* %11, i32 0, i32 2
  %mem14 = bitcast %union.anon* %impl13 to %struct.anon.0*
  %ungetch = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem14, i32 0, i32 1
  store i32 -1, i32* %ungetch, align 8
  %12 = load %struct._MIOPos*, %struct._MIOPos** %pos.addr, align 8
  %impl15 = getelementptr inbounds %struct._MIOPos, %struct._MIOPos* %12, i32 0, i32 1
  %mem16 = bitcast %union.anon.1* %impl15 to i64*
  %13 = load i64, i64* %mem16, align 8
  %14 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl17 = getelementptr inbounds %struct._MIO, %struct._MIO* %14, i32 0, i32 2
  %mem18 = bitcast %union.anon* %impl17 to %struct.anon.0*
  %pos19 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem18, i32 0, i32 2
  store i64 %13, i64* %pos19, align 8
  store i32 0, i32* %rv, align 4
  br label %if.end

if.end:                                           ; preds = %if.else12, %if.then10
  br label %if.end21

if.else20:                                        ; preds = %if.else
  br label %do.body

do.body:                                          ; preds = %if.else20
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %if.end21

if.end21:                                         ; preds = %do.end, %if.end
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.then
  %15 = load i32, i32* %rv, align 4
  ret i32 %15
}

declare i32 @fsetpos(%struct.__sFILE*, i64*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @mio_flush(%struct._MIO* %mio) #0 {
entry:
  %retval = alloca i32, align 4
  %mio.addr = alloca %struct._MIO*, align 8
  store %struct._MIO* %mio, %struct._MIO** %mio.addr, align 8
  %0 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %type = getelementptr inbounds %struct._MIO, %struct._MIO* %0, i32 0, i32 0
  %1 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl = getelementptr inbounds %struct._MIO, %struct._MIO* %2, i32 0, i32 2
  %file = bitcast %union.anon* %impl to %struct.anon*
  %fp = getelementptr inbounds %struct.anon, %struct.anon* %file, i32 0, i32 0
  %3 = load %struct.__sFILE*, %struct.__sFILE** %fp, align 8
  %call = call i32 @fflush(%struct.__sFILE* %3)
  store i32 %call, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval, align 4
  ret i32 %4
}

declare i32 @fflush(%struct.__sFILE*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @mio_attach_user_data(%struct._MIO* %mio, i8* %user_data, void (i8*)* %user_data_free_func) #0 {
entry:
  %mio.addr = alloca %struct._MIO*, align 8
  %user_data.addr = alloca i8*, align 8
  %user_data_free_func.addr = alloca void (i8*)*, align 8
  store %struct._MIO* %mio, %struct._MIO** %mio.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  store void (i8*)* %user_data_free_func, void (i8*)** %user_data_free_func.addr, align 8
  %0 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %udata = getelementptr inbounds %struct._MIO, %struct._MIO* %0, i32 0, i32 3
  %d = getelementptr inbounds %struct._MIOUserData, %struct._MIOUserData* %udata, i32 0, i32 0
  %1 = load i8*, i8** %d, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %udata1 = getelementptr inbounds %struct._MIO, %struct._MIO* %2, i32 0, i32 3
  %f = getelementptr inbounds %struct._MIOUserData, %struct._MIOUserData* %udata1, i32 0, i32 1
  %3 = load void (i8*)*, void (i8*)** %f, align 8
  %tobool2 = icmp ne void (i8*)* %3, null
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %udata3 = getelementptr inbounds %struct._MIO, %struct._MIO* %4, i32 0, i32 3
  %f4 = getelementptr inbounds %struct._MIOUserData, %struct._MIOUserData* %udata3, i32 0, i32 1
  %5 = load void (i8*)*, void (i8*)** %f4, align 8
  %6 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %udata5 = getelementptr inbounds %struct._MIO, %struct._MIO* %6, i32 0, i32 3
  %d6 = getelementptr inbounds %struct._MIOUserData, %struct._MIOUserData* %udata5, i32 0, i32 0
  %7 = load i8*, i8** %d6, align 8
  call void %5(i8* %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %8 = load i8*, i8** %user_data.addr, align 8
  %9 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %udata7 = getelementptr inbounds %struct._MIO, %struct._MIO* %9, i32 0, i32 3
  %d8 = getelementptr inbounds %struct._MIOUserData, %struct._MIOUserData* %udata7, i32 0, i32 0
  store i8* %8, i8** %d8, align 8
  %10 = load void (i8*)*, void (i8*)** %user_data_free_func.addr, align 8
  %11 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %udata9 = getelementptr inbounds %struct._MIO, %struct._MIO* %11, i32 0, i32 3
  %f10 = getelementptr inbounds %struct._MIOUserData, %struct._MIOUserData* %udata9, i32 0, i32 1
  store void (i8*)* %10, void (i8*)** %f10, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @mio_get_user_data(%struct._MIO* %mio) #0 {
entry:
  %mio.addr = alloca %struct._MIO*, align 8
  store %struct._MIO* %mio, %struct._MIO** %mio.addr, align 8
  %0 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %udata = getelementptr inbounds %struct._MIO, %struct._MIO* %0, i32 0, i32 3
  %d = getelementptr inbounds %struct._MIOUserData, %struct._MIOUserData* %udata, i32 0, i32 0
  %1 = load i8*, i8** %d, align 8
  ret i8* %1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @mem_try_resize(%struct._MIO* %mio, i64 %new_size) #0 {
entry:
  %mio.addr = alloca %struct._MIO*, align 8
  %new_size.addr = alloca i64, align 8
  %success = alloca i32, align 4
  %newsize = alloca i64, align 8
  %newbuf = alloca i8*, align 8
  %newbuf41 = alloca i8*, align 8
  store %struct._MIO* %mio, %struct._MIO** %mio.addr, align 8
  store i64 %new_size, i64* %new_size.addr, align 8
  store i32 0, i32* %success, align 4
  %0 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl = getelementptr inbounds %struct._MIO, %struct._MIO* %0, i32 0, i32 2
  %mem = bitcast %union.anon* %impl to %struct.anon.0*
  %realloc_func = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem, i32 0, i32 5
  %1 = load i8* (i8*, i64)*, i8* (i8*, i64)** %realloc_func, align 8
  %tobool = icmp ne i8* (i8*, i64)* %1, null
  br i1 %tobool, label %if.then, label %if.end64

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %new_size.addr, align 8
  %cmp = icmp eq i64 %2, -1
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.then
  %call = call i32* @__error()
  store i32 84, i32* %call, align 4
  br label %if.end63

if.else:                                          ; preds = %if.then
  %3 = load i64, i64* %new_size.addr, align 8
  %4 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl2 = getelementptr inbounds %struct._MIO, %struct._MIO* %4, i32 0, i32 2
  %mem3 = bitcast %union.anon* %impl2 to %struct.anon.0*
  %size = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem3, i32 0, i32 3
  %5 = load i64, i64* %size, align 8
  %cmp4 = icmp ugt i64 %3, %5
  br i1 %cmp4, label %if.then5, label %if.else40

if.then5:                                         ; preds = %if.else
  %6 = load i64, i64* %new_size.addr, align 8
  %7 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl6 = getelementptr inbounds %struct._MIO, %struct._MIO* %7, i32 0, i32 2
  %mem7 = bitcast %union.anon* %impl6 to %struct.anon.0*
  %allocated_size = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem7, i32 0, i32 4
  %8 = load i64, i64* %allocated_size, align 8
  %cmp8 = icmp ule i64 %6, %8
  br i1 %cmp8, label %if.then9, label %if.else13

if.then9:                                         ; preds = %if.then5
  %9 = load i64, i64* %new_size.addr, align 8
  %10 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl10 = getelementptr inbounds %struct._MIO, %struct._MIO* %10, i32 0, i32 2
  %mem11 = bitcast %union.anon* %impl10 to %struct.anon.0*
  %size12 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem11, i32 0, i32 3
  store i64 %9, i64* %size12, align 8
  store i32 1, i32* %success, align 4
  br label %if.end39

if.else13:                                        ; preds = %if.then5
  %11 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl14 = getelementptr inbounds %struct._MIO, %struct._MIO* %11, i32 0, i32 2
  %mem15 = bitcast %union.anon* %impl14 to %struct.anon.0*
  %allocated_size16 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem15, i32 0, i32 4
  %12 = load i64, i64* %allocated_size16, align 8
  %add = add i64 %12, 4096
  %13 = load i64, i64* %new_size.addr, align 8
  %cmp17 = icmp ugt i64 %add, %13
  br i1 %cmp17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else13
  %14 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl18 = getelementptr inbounds %struct._MIO, %struct._MIO* %14, i32 0, i32 2
  %mem19 = bitcast %union.anon* %impl18 to %struct.anon.0*
  %allocated_size20 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem19, i32 0, i32 4
  %15 = load i64, i64* %allocated_size20, align 8
  %add21 = add i64 %15, 4096
  br label %cond.end

cond.false:                                       ; preds = %if.else13
  %16 = load i64, i64* %new_size.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %add21, %cond.true ], [ %16, %cond.false ]
  store i64 %cond, i64* %newsize, align 8
  %17 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl22 = getelementptr inbounds %struct._MIO, %struct._MIO* %17, i32 0, i32 2
  %mem23 = bitcast %union.anon* %impl22 to %struct.anon.0*
  %realloc_func24 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem23, i32 0, i32 5
  %18 = load i8* (i8*, i64)*, i8* (i8*, i64)** %realloc_func24, align 8
  %19 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl25 = getelementptr inbounds %struct._MIO, %struct._MIO* %19, i32 0, i32 2
  %mem26 = bitcast %union.anon* %impl25 to %struct.anon.0*
  %buf = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem26, i32 0, i32 0
  %20 = load i8*, i8** %buf, align 8
  %21 = load i64, i64* %newsize, align 8
  %call27 = call i8* %18(i8* %20, i64 %21)
  store i8* %call27, i8** %newbuf, align 8
  %22 = load i8*, i8** %newbuf, align 8
  %tobool28 = icmp ne i8* %22, null
  br i1 %tobool28, label %if.then29, label %if.end

if.then29:                                        ; preds = %cond.end
  %23 = load i8*, i8** %newbuf, align 8
  %24 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl30 = getelementptr inbounds %struct._MIO, %struct._MIO* %24, i32 0, i32 2
  %mem31 = bitcast %union.anon* %impl30 to %struct.anon.0*
  %buf32 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem31, i32 0, i32 0
  store i8* %23, i8** %buf32, align 8
  %25 = load i64, i64* %newsize, align 8
  %26 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl33 = getelementptr inbounds %struct._MIO, %struct._MIO* %26, i32 0, i32 2
  %mem34 = bitcast %union.anon* %impl33 to %struct.anon.0*
  %allocated_size35 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem34, i32 0, i32 4
  store i64 %25, i64* %allocated_size35, align 8
  %27 = load i64, i64* %new_size.addr, align 8
  %28 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl36 = getelementptr inbounds %struct._MIO, %struct._MIO* %28, i32 0, i32 2
  %mem37 = bitcast %union.anon* %impl36 to %struct.anon.0*
  %size38 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem37, i32 0, i32 3
  store i64 %27, i64* %size38, align 8
  store i32 1, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.then29, %cond.end
  br label %if.end39

if.end39:                                         ; preds = %if.end, %if.then9
  br label %if.end62

if.else40:                                        ; preds = %if.else
  %29 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl42 = getelementptr inbounds %struct._MIO, %struct._MIO* %29, i32 0, i32 2
  %mem43 = bitcast %union.anon* %impl42 to %struct.anon.0*
  %realloc_func44 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem43, i32 0, i32 5
  %30 = load i8* (i8*, i64)*, i8* (i8*, i64)** %realloc_func44, align 8
  %31 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl45 = getelementptr inbounds %struct._MIO, %struct._MIO* %31, i32 0, i32 2
  %mem46 = bitcast %union.anon* %impl45 to %struct.anon.0*
  %buf47 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem46, i32 0, i32 0
  %32 = load i8*, i8** %buf47, align 8
  %33 = load i64, i64* %new_size.addr, align 8
  %call48 = call i8* %30(i8* %32, i64 %33)
  store i8* %call48, i8** %newbuf41, align 8
  %34 = load i8*, i8** %newbuf41, align 8
  %tobool49 = icmp ne i8* %34, null
  br i1 %tobool49, label %if.then51, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else40
  %35 = load i64, i64* %new_size.addr, align 8
  %cmp50 = icmp eq i64 %35, 0
  br i1 %cmp50, label %if.then51, label %if.end61

if.then51:                                        ; preds = %lor.lhs.false, %if.else40
  %36 = load i8*, i8** %newbuf41, align 8
  %37 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl52 = getelementptr inbounds %struct._MIO, %struct._MIO* %37, i32 0, i32 2
  %mem53 = bitcast %union.anon* %impl52 to %struct.anon.0*
  %buf54 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem53, i32 0, i32 0
  store i8* %36, i8** %buf54, align 8
  %38 = load i64, i64* %new_size.addr, align 8
  %39 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl55 = getelementptr inbounds %struct._MIO, %struct._MIO* %39, i32 0, i32 2
  %mem56 = bitcast %union.anon* %impl55 to %struct.anon.0*
  %allocated_size57 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem56, i32 0, i32 4
  store i64 %38, i64* %allocated_size57, align 8
  %40 = load i64, i64* %new_size.addr, align 8
  %41 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %impl58 = getelementptr inbounds %struct._MIO, %struct._MIO* %41, i32 0, i32 2
  %mem59 = bitcast %union.anon* %impl58 to %struct.anon.0*
  %size60 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mem59, i32 0, i32 3
  store i64 %40, i64* %size60, align 8
  store i32 1, i32* %success, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.then51, %lor.lhs.false
  br label %if.end62

if.end62:                                         ; preds = %if.end61, %if.end39
  br label %if.end63

if.end63:                                         ; preds = %if.end62, %if.then1
  br label %if.end64

if.end64:                                         ; preds = %if.end63, %entry
  %42 = load i32, i32* %success, align 4
  ret i32 %42
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 10.0.0 (https://github.com/holzschu/clang.git 0cfc630fbdb62e96720b611a57123ef3eb13e297) (https://github.com/holzschu/llvm.git 0d8a71e39b28502c24718f7e74b5acbcfe36dfe0)"}
