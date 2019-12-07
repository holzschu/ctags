; ModuleID = 'strlist.c'
source_filename = "strlist.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-ios11.0.0"

%struct.sPtrArray = type opaque
%struct.sVString = type { i64, i64, i8* }
%struct._MIO = type opaque
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sPtrArray* @stringListNew() #0 {
entry:
  %call = call %struct.sPtrArray* @ptrArrayNew(void (i8*)* bitcast (void (%struct.sVString*)* @vStringDelete to void (i8*)*))
  ret %struct.sPtrArray* %call
}

declare %struct.sPtrArray* @ptrArrayNew(void (i8*)*) #1

declare void @vStringDelete(%struct.sVString*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @stringListAdd(%struct.sPtrArray* %current, %struct.sVString* %string) #0 {
entry:
  %current.addr = alloca %struct.sPtrArray*, align 8
  %string.addr = alloca %struct.sVString*, align 8
  store %struct.sPtrArray* %current, %struct.sPtrArray** %current.addr, align 8
  store %struct.sVString* %string, %struct.sVString** %string.addr, align 8
  %0 = load %struct.sPtrArray*, %struct.sPtrArray** %current.addr, align 8
  %1 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %2 = bitcast %struct.sVString* %1 to i8*
  call void @ptrArrayAdd(%struct.sPtrArray* %0, i8* %2)
  ret void
}

declare void @ptrArrayAdd(%struct.sPtrArray*, i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @stringListRemoveLast(%struct.sPtrArray* %current) #0 {
entry:
  %current.addr = alloca %struct.sPtrArray*, align 8
  store %struct.sPtrArray* %current, %struct.sPtrArray** %current.addr, align 8
  %0 = load %struct.sPtrArray*, %struct.sPtrArray** %current.addr, align 8
  call void @ptrArrayRemoveLast(%struct.sPtrArray* %0)
  ret void
}

declare void @ptrArrayRemoveLast(%struct.sPtrArray*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @stringListCombine(%struct.sPtrArray* %current, %struct.sPtrArray* %from) #0 {
entry:
  %current.addr = alloca %struct.sPtrArray*, align 8
  %from.addr = alloca %struct.sPtrArray*, align 8
  store %struct.sPtrArray* %current, %struct.sPtrArray** %current.addr, align 8
  store %struct.sPtrArray* %from, %struct.sPtrArray** %from.addr, align 8
  %0 = load %struct.sPtrArray*, %struct.sPtrArray** %current.addr, align 8
  %1 = load %struct.sPtrArray*, %struct.sPtrArray** %from.addr, align 8
  call void @ptrArrayCombine(%struct.sPtrArray* %0, %struct.sPtrArray* %1)
  ret void
}

declare void @ptrArrayCombine(%struct.sPtrArray*, %struct.sPtrArray*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sPtrArray* @stringListNewFromArgv(i8** %argv) #0 {
entry:
  %argv.addr = alloca i8**, align 8
  %result = alloca %struct.sPtrArray*, align 8
  %p = alloca i8**, align 8
  store i8** %argv, i8*** %argv.addr, align 8
  %call = call %struct.sPtrArray* @stringListNew()
  store %struct.sPtrArray* %call, %struct.sPtrArray** %result, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load i8**, i8*** %argv.addr, align 8
  store i8** %0, i8*** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %1 = load i8**, i8*** %p, align 8
  %2 = load i8*, i8** %1, align 8
  %cmp = icmp ne i8* %2, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.sPtrArray*, %struct.sPtrArray** %result, align 8
  %4 = load i8**, i8*** %p, align 8
  %5 = load i8*, i8** %4, align 8
  %call1 = call %struct.sVString* @vStringNewInit(i8* %5)
  call void @stringListAdd(%struct.sPtrArray* %3, %struct.sVString* %call1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i8**, i8*** %p, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %6, i32 1
  store i8** %incdec.ptr, i8*** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load %struct.sPtrArray*, %struct.sPtrArray** %result, align 8
  ret %struct.sPtrArray* %7
}

declare %struct.sVString* @vStringNewInit(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sPtrArray* @stringListNewFromFile(i8* %fileName) #0 {
entry:
  %fileName.addr = alloca i8*, align 8
  %result = alloca %struct.sPtrArray*, align 8
  %mio = alloca %struct._MIO*, align 8
  %str = alloca %struct.sVString*, align 8
  store i8* %fileName, i8** %fileName.addr, align 8
  store %struct.sPtrArray* null, %struct.sPtrArray** %result, align 8
  %0 = load i8*, i8** %fileName.addr, align 8
  %call = call %struct._MIO* @mio_new_file(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store %struct._MIO* %call, %struct._MIO** %mio, align 8
  %1 = load %struct._MIO*, %struct._MIO** %mio, align 8
  %cmp = icmp ne %struct._MIO* %1, null
  br i1 %cmp, label %if.then, label %if.end8

if.then:                                          ; preds = %entry
  %call1 = call %struct.sPtrArray* @stringListNew()
  store %struct.sPtrArray* %call1, %struct.sPtrArray** %result, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.then
  %2 = load %struct._MIO*, %struct._MIO** %mio, align 8
  %call2 = call i32 @mio_eof(%struct._MIO* %2)
  %tobool = icmp ne i32 %call2, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call3 = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call3, %struct.sVString** %str, align 8
  %3 = load %struct.sVString*, %struct.sVString** %str, align 8
  %4 = load %struct._MIO*, %struct._MIO** %mio, align 8
  %call4 = call i8* @readLineRaw(%struct.sVString* %3, %struct._MIO* %4)
  %5 = load %struct.sVString*, %struct.sVString** %str, align 8
  call void @vStringStripTrailing(%struct.sVString* %5)
  %6 = load %struct.sVString*, %struct.sVString** %str, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %6, i32 0, i32 0
  %7 = load i64, i64* %length, align 8
  %cmp5 = icmp ugt i64 %7, 0
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %while.body
  %8 = load %struct.sPtrArray*, %struct.sPtrArray** %result, align 8
  %9 = load %struct.sVString*, %struct.sVString** %str, align 8
  call void @stringListAdd(%struct.sPtrArray* %8, %struct.sVString* %9)
  br label %if.end

if.else:                                          ; preds = %while.body
  %10 = load %struct.sVString*, %struct.sVString** %str, align 8
  call void @vStringDelete(%struct.sVString* %10)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then6
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %11 = load %struct._MIO*, %struct._MIO** %mio, align 8
  %call7 = call i32 @mio_free(%struct._MIO* %11)
  br label %if.end8

if.end8:                                          ; preds = %while.end, %entry
  %12 = load %struct.sPtrArray*, %struct.sPtrArray** %result, align 8
  ret %struct.sPtrArray* %12
}

declare %struct._MIO* @mio_new_file(i8*, i8*) #1

declare i32 @mio_eof(%struct._MIO*) #1

declare %struct.sVString* @vStringNew() #1

declare i8* @readLineRaw(%struct.sVString*, %struct._MIO*) #1

declare void @vStringStripTrailing(%struct.sVString*) #1

declare i32 @mio_free(%struct._MIO*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @stringListCount(%struct.sPtrArray* %current) #0 {
entry:
  %current.addr = alloca %struct.sPtrArray*, align 8
  store %struct.sPtrArray* %current, %struct.sPtrArray** %current.addr, align 8
  %0 = load %struct.sPtrArray*, %struct.sPtrArray** %current.addr, align 8
  %call = call i32 @ptrArrayCount(%struct.sPtrArray* %0)
  ret i32 %call
}

declare i32 @ptrArrayCount(%struct.sPtrArray*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sVString* @stringListItem(%struct.sPtrArray* %current, i32 %indx) #0 {
entry:
  %current.addr = alloca %struct.sPtrArray*, align 8
  %indx.addr = alloca i32, align 4
  store %struct.sPtrArray* %current, %struct.sPtrArray** %current.addr, align 8
  store i32 %indx, i32* %indx.addr, align 4
  %0 = load %struct.sPtrArray*, %struct.sPtrArray** %current.addr, align 8
  %1 = load i32, i32* %indx.addr, align 4
  %call = call i8* @ptrArrayItem(%struct.sPtrArray* %0, i32 %1)
  %2 = bitcast i8* %call to %struct.sVString*
  ret %struct.sVString* %2
}

declare i8* @ptrArrayItem(%struct.sPtrArray*, i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sVString* @stringListLast(%struct.sPtrArray* %current) #0 {
entry:
  %current.addr = alloca %struct.sPtrArray*, align 8
  store %struct.sPtrArray* %current, %struct.sPtrArray** %current.addr, align 8
  %0 = load %struct.sPtrArray*, %struct.sPtrArray** %current.addr, align 8
  %call = call i8* @ptrArrayLast(%struct.sPtrArray* %0)
  %1 = bitcast i8* %call to %struct.sVString*
  ret %struct.sVString* %1
}

declare i8* @ptrArrayLast(%struct.sPtrArray*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @stringListClear(%struct.sPtrArray* %current) #0 {
entry:
  %current.addr = alloca %struct.sPtrArray*, align 8
  store %struct.sPtrArray* %current, %struct.sPtrArray** %current.addr, align 8
  %0 = load %struct.sPtrArray*, %struct.sPtrArray** %current.addr, align 8
  call void @ptrArrayClear(%struct.sPtrArray* %0)
  ret void
}

declare void @ptrArrayClear(%struct.sPtrArray*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @stringListDelete(%struct.sPtrArray* %current) #0 {
entry:
  %current.addr = alloca %struct.sPtrArray*, align 8
  store %struct.sPtrArray* %current, %struct.sPtrArray** %current.addr, align 8
  %0 = load %struct.sPtrArray*, %struct.sPtrArray** %current.addr, align 8
  call void @ptrArrayDelete(%struct.sPtrArray* %0)
  ret void
}

declare void @ptrArrayDelete(%struct.sPtrArray*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @stringListHas(%struct.sPtrArray* %current, i8* %string) #0 {
entry:
  %current.addr = alloca %struct.sPtrArray*, align 8
  %string.addr = alloca i8*, align 8
  %result = alloca i8, align 1
  store %struct.sPtrArray* %current, %struct.sPtrArray** %current.addr, align 8
  store i8* %string, i8** %string.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.sPtrArray*, %struct.sPtrArray** %current.addr, align 8
  %1 = load i8*, i8** %string.addr, align 8
  %call = call i32 @stringListIndex(%struct.sPtrArray* %0, i8* %1, i1 (i8*, %struct.sVString*)* @compareString)
  %cmp = icmp ne i32 %call, -1
  %frombool = zext i1 %cmp to i8
  store i8 %frombool, i8* %result, align 1
  %2 = load i8, i8* %result, align 1
  %tobool = trunc i8 %2 to i1
  ret i1 %tobool
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @stringListIndex(%struct.sPtrArray* %current, i8* %string, i1 (i8*, %struct.sVString*)* %test) #0 {
entry:
  %current.addr = alloca %struct.sPtrArray*, align 8
  %string.addr = alloca i8*, align 8
  %test.addr = alloca i1 (i8*, %struct.sVString*)*, align 8
  %result = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.sPtrArray* %current, %struct.sPtrArray** %current.addr, align 8
  store i8* %string, i8** %string.addr, align 8
  store i1 (i8*, %struct.sVString*)* %test, i1 (i8*, %struct.sVString*)** %test.addr, align 8
  store i32 -1, i32* %result, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  br label %do.body3

do.body3:                                         ; preds = %do.end2
  br label %do.end4

do.end4:                                          ; preds = %do.body3
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end4
  %0 = load i32, i32* %result, align 4
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %2 = load %struct.sPtrArray*, %struct.sPtrArray** %current.addr, align 8
  %call = call i32 @ptrArrayCount(%struct.sPtrArray* %2)
  %cmp5 = icmp ult i32 %1, %call
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %3 = phi i1 [ false, %for.cond ], [ %cmp5, %land.rhs ]
  br i1 %3, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %4 = load i1 (i8*, %struct.sVString*)*, i1 (i8*, %struct.sVString*)** %test.addr, align 8
  %5 = load i8*, i8** %string.addr, align 8
  %6 = load %struct.sPtrArray*, %struct.sPtrArray** %current.addr, align 8
  %7 = load i32, i32* %i, align 4
  %call6 = call i8* @ptrArrayItem(%struct.sPtrArray* %6, i32 %7)
  %8 = bitcast i8* %call6 to %struct.sVString*
  %call7 = call zeroext i1 %4(i8* %5, %struct.sVString* %8)
  br i1 %call7, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  store i32 %9, i32* %result, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i32, i32* %i, align 4
  %inc = add i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %11 = load i32, i32* %result, align 4
  ret i32 %11
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @compareString(i8* %string, %struct.sVString* %itm) #0 {
entry:
  %string.addr = alloca i8*, align 8
  %itm.addr = alloca %struct.sVString*, align 8
  store i8* %string, i8** %string.addr, align 8
  store %struct.sVString* %itm, %struct.sVString** %itm.addr, align 8
  %0 = load i8*, i8** %string.addr, align 8
  %1 = load %struct.sVString*, %struct.sVString** %itm.addr, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %1, i32 0, i32 2
  %2 = load i8*, i8** %buffer, align 8
  %call = call i32 @strcmp(i8* %0, i8* %2)
  %cmp = icmp eq i32 %call, 0
  ret i1 %cmp
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @stringListHasInsensitive(%struct.sPtrArray* %current, i8* %string) #0 {
entry:
  %current.addr = alloca %struct.sPtrArray*, align 8
  %string.addr = alloca i8*, align 8
  %result = alloca i8, align 1
  store %struct.sPtrArray* %current, %struct.sPtrArray** %current.addr, align 8
  store i8* %string, i8** %string.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  %0 = load %struct.sPtrArray*, %struct.sPtrArray** %current.addr, align 8
  %1 = load i8*, i8** %string.addr, align 8
  %call = call i32 @stringListIndex(%struct.sPtrArray* %0, i8* %1, i1 (i8*, %struct.sVString*)* @compareStringInsensitive)
  %cmp = icmp ne i32 %call, -1
  %frombool = zext i1 %cmp to i8
  store i8 %frombool, i8* %result, align 1
  %2 = load i8, i8* %result, align 1
  %tobool = trunc i8 %2 to i1
  ret i1 %tobool
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @compareStringInsensitive(i8* %string, %struct.sVString* %itm) #0 {
entry:
  %string.addr = alloca i8*, align 8
  %itm.addr = alloca %struct.sVString*, align 8
  store i8* %string, i8** %string.addr, align 8
  store %struct.sVString* %itm, %struct.sVString** %itm.addr, align 8
  %0 = load i8*, i8** %string.addr, align 8
  %1 = load %struct.sVString*, %struct.sVString** %itm.addr, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %1, i32 0, i32 2
  %2 = load i8*, i8** %buffer, align 8
  %call = call i32 @strcasecmp(i8* %0, i8* %2)
  %cmp = icmp eq i32 %call, 0
  ret i1 %cmp
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @stringListHasTest(%struct.sPtrArray* %current, i1 (i8*, i8*)* %test, i8* %userData) #0 {
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
  %call = call i32 @ptrArrayCount(%struct.sPtrArray* %2)
  %cmp = icmp ult i32 %1, %call
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %3 = phi i1 [ false, %for.cond ], [ %cmp, %land.rhs ]
  br i1 %3, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %4 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %test.addr, align 8
  %5 = load %struct.sPtrArray*, %struct.sPtrArray** %current.addr, align 8
  %6 = load i32, i32* %i, align 4
  %call1 = call i8* @ptrArrayItem(%struct.sPtrArray* %5, i32 %6)
  %7 = bitcast i8* %call1 to %struct.sVString*
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %7, i32 0, i32 2
  %8 = load i8*, i8** %buffer, align 8
  %9 = load i8*, i8** %userData.addr, align 8
  %call2 = call zeroext i1 %4(i8* %8, i8* %9)
  %frombool = zext i1 %call2 to i8
  store i8 %frombool, i8* %result, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %11 = load i8, i8* %result, align 1
  %tobool3 = trunc i8 %11 to i1
  ret i1 %tobool3
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @stringListDeleteItemExtension(%struct.sPtrArray* %current, i8* %extension) #0 {
entry:
  %current.addr = alloca %struct.sPtrArray*, align 8
  %extension.addr = alloca i8*, align 8
  %where = alloca i32, align 4
  store %struct.sPtrArray* %current, %struct.sPtrArray** %current.addr, align 8
  store i8* %extension, i8** %extension.addr, align 8
  %0 = load %struct.sPtrArray*, %struct.sPtrArray** %current.addr, align 8
  %1 = load i8*, i8** %extension.addr, align 8
  %call = call i32 @stringListIndex(%struct.sPtrArray* %0, i8* %1, i1 (i8*, %struct.sVString*)* @compareStringInsensitive)
  store i32 %call, i32* %where, align 4
  %2 = load i32, i32* %where, align 4
  %cmp = icmp ne i32 %2, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.sPtrArray*, %struct.sPtrArray** %current.addr, align 8
  %4 = load i32, i32* %where, align 4
  call void @ptrArrayDeleteItem(%struct.sPtrArray* %3, i32 %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, i32* %where, align 4
  %cmp1 = icmp ne i32 %5, -1
  ret i1 %cmp1
}

declare void @ptrArrayDeleteItem(%struct.sPtrArray*, i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @stringListExtensionMatched(%struct.sPtrArray* %current, i8* %extension) #0 {
entry:
  %current.addr = alloca %struct.sPtrArray*, align 8
  %extension.addr = alloca i8*, align 8
  store %struct.sPtrArray* %current, %struct.sPtrArray** %current.addr, align 8
  store i8* %extension, i8** %extension.addr, align 8
  %0 = load %struct.sPtrArray*, %struct.sPtrArray** %current.addr, align 8
  %1 = load i8*, i8** %extension.addr, align 8
  %call = call zeroext i1 @stringListHasInsensitive(%struct.sPtrArray* %0, i8* %1)
  ret i1 %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sVString* @stringListExtensionFinds(%struct.sPtrArray* %current, i8* %extension) #0 {
entry:
  %current.addr = alloca %struct.sPtrArray*, align 8
  %extension.addr = alloca i8*, align 8
  store %struct.sPtrArray* %current, %struct.sPtrArray** %current.addr, align 8
  store i8* %extension, i8** %extension.addr, align 8
  %0 = load %struct.sPtrArray*, %struct.sPtrArray** %current.addr, align 8
  %1 = load i8*, i8** %extension.addr, align 8
  %call = call %struct.sVString* @stringListFinds(%struct.sPtrArray* %0, i8* %1, i1 (i8*, %struct.sVString*)* @compareStringInsensitive)
  ret %struct.sVString* %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct.sVString* @stringListFinds(%struct.sPtrArray* %current, i8* %string, i1 (i8*, %struct.sVString*)* %test) #0 {
entry:
  %retval = alloca %struct.sVString*, align 8
  %current.addr = alloca %struct.sPtrArray*, align 8
  %string.addr = alloca i8*, align 8
  %test.addr = alloca i1 (i8*, %struct.sVString*)*, align 8
  %i = alloca i32, align 4
  store %struct.sPtrArray* %current, %struct.sPtrArray** %current.addr, align 8
  store i8* %string, i8** %string.addr, align 8
  store i1 (i8*, %struct.sVString*)* %test, i1 (i8*, %struct.sVString*)** %test.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  %0 = load %struct.sPtrArray*, %struct.sPtrArray** %current.addr, align 8
  %1 = load i8*, i8** %string.addr, align 8
  %2 = load i1 (i8*, %struct.sVString*)*, i1 (i8*, %struct.sVString*)** %test.addr, align 8
  %call = call i32 @stringListIndex(%struct.sPtrArray* %0, i8* %1, i1 (i8*, %struct.sVString*)* %2)
  store i32 %call, i32* %i, align 4
  %3 = load i32, i32* %i, align 4
  %cmp = icmp eq i32 %3, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.end2
  store %struct.sVString* null, %struct.sVString** %retval, align 8
  br label %return

if.else:                                          ; preds = %do.end2
  %4 = load %struct.sPtrArray*, %struct.sPtrArray** %current.addr, align 8
  %5 = load i32, i32* %i, align 4
  %call3 = call %struct.sVString* @stringListItem(%struct.sPtrArray* %4, i32 %5)
  store %struct.sVString* %call3, %struct.sVString** %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then
  %6 = load %struct.sVString*, %struct.sVString** %retval, align 8
  ret %struct.sVString* %6
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @stringListFileMatched(%struct.sPtrArray* %current, i8* %fileName) #0 {
entry:
  %current.addr = alloca %struct.sPtrArray*, align 8
  %fileName.addr = alloca i8*, align 8
  store %struct.sPtrArray* %current, %struct.sPtrArray** %current.addr, align 8
  store i8* %fileName, i8** %fileName.addr, align 8
  %0 = load %struct.sPtrArray*, %struct.sPtrArray** %current.addr, align 8
  %1 = load i8*, i8** %fileName.addr, align 8
  %call = call %struct.sVString* @stringListFileFinds(%struct.sPtrArray* %0, i8* %1)
  %tobool = icmp ne %struct.sVString* %call, null
  %2 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i32 1, i32 0
  %tobool1 = icmp ne i32 %cond, 0
  ret i1 %tobool1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sVString* @stringListFileFinds(%struct.sPtrArray* %current, i8* %fileName) #0 {
entry:
  %current.addr = alloca %struct.sPtrArray*, align 8
  %fileName.addr = alloca i8*, align 8
  %vstr = alloca %struct.sVString*, align 8
  %matched = alloca i8, align 1
  %i = alloca i32, align 4
  %normalized = alloca i8*, align 8
  store %struct.sPtrArray* %current, %struct.sPtrArray** %current.addr, align 8
  store i8* %fileName, i8** %fileName.addr, align 8
  store %struct.sVString* null, %struct.sVString** %vstr, align 8
  store i8 0, i8* %matched, align 1
  %0 = load i8*, i8** %fileName.addr, align 8
  store i8* %0, i8** %normalized, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i8, i8* %matched, align 1
  %tobool = trunc i8 %1 to i1
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %3 = load %struct.sPtrArray*, %struct.sPtrArray** %current.addr, align 8
  %call = call i32 @stringListCount(%struct.sPtrArray* %3)
  %cmp = icmp ult i32 %2, %call
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %4 = phi i1 [ false, %for.cond ], [ %cmp, %land.rhs ]
  br i1 %4, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %5 = load %struct.sPtrArray*, %struct.sPtrArray** %current.addr, align 8
  %6 = load i32, i32* %i, align 4
  %call1 = call %struct.sVString* @stringListItem(%struct.sPtrArray* %5, i32 %6)
  store %struct.sVString* %call1, %struct.sVString** %vstr, align 8
  %7 = load %struct.sVString*, %struct.sVString** %vstr, align 8
  %8 = load i8*, i8** %normalized, align 8
  %call2 = call zeroext i1 @fileNameMatched(%struct.sVString* %7, i8* %8)
  %frombool = zext i1 %call2 to i8
  store i8 %frombool, i8* %matched, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %10 = load i8, i8* %matched, align 1
  %tobool3 = trunc i8 %10 to i1
  br i1 %tobool3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end
  %11 = load %struct.sVString*, %struct.sVString** %vstr, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.sVString* [ %11, %cond.true ], [ null, %cond.false ]
  ret %struct.sVString* %cond
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @fileNameMatched(%struct.sVString* %vpattern, i8* %fileName) #0 {
entry:
  %vpattern.addr = alloca %struct.sVString*, align 8
  %fileName.addr = alloca i8*, align 8
  %pattern = alloca i8*, align 8
  %p = alloca i8*, align 8
  %f = alloca i8*, align 8
  %r = alloca i8, align 1
  store %struct.sVString* %vpattern, %struct.sVString** %vpattern.addr, align 8
  store i8* %fileName, i8** %fileName.addr, align 8
  %0 = load %struct.sVString*, %struct.sVString** %vpattern.addr, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %0, i32 0, i32 2
  %1 = load i8*, i8** %buffer, align 8
  store i8* %1, i8** %pattern, align 8
  %2 = load i8*, i8** %pattern, align 8
  %call = call i8* @newUpperString(i8* %2)
  store i8* %call, i8** %p, align 8
  %3 = load i8*, i8** %fileName.addr, align 8
  %call1 = call i8* @newUpperString(i8* %3)
  store i8* %call1, i8** %f, align 8
  %4 = load i8*, i8** %p, align 8
  %5 = load i8*, i8** %f, align 8
  %call2 = call i32 @"\01_fnmatch"(i8* %4, i8* %5, i32 0)
  %cmp = icmp eq i32 %call2, 0
  %frombool = zext i1 %cmp to i8
  store i8 %frombool, i8* %r, align 1
  %6 = load i8*, i8** %f, align 8
  call void @eFree(i8* %6)
  %7 = load i8*, i8** %p, align 8
  call void @eFree(i8* %7)
  %8 = load i8, i8* %r, align 1
  %tobool = trunc i8 %8 to i1
  ret i1 %tobool
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @stringListPrint(%struct.sPtrArray* %current, %struct.__sFILE* %fp) #0 {
entry:
  %current.addr = alloca %struct.sPtrArray*, align 8
  %fp.addr = alloca %struct.__sFILE*, align 8
  %i = alloca i32, align 4
  store %struct.sPtrArray* %current, %struct.sPtrArray** %current.addr, align 8
  store %struct.__sFILE* %fp, %struct.__sFILE** %fp.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.sPtrArray*, %struct.sPtrArray** %current.addr, align 8
  %call = call i32 @ptrArrayCount(%struct.sPtrArray* %1)
  %cmp = icmp ult i32 %0, %call
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.__sFILE*, %struct.__sFILE** %fp.addr, align 8
  %3 = load i32, i32* %i, align 4
  %cmp1 = icmp ugt i32 %3, 0
  %4 = zext i1 %cmp1 to i64
  %cond = select i1 %cmp1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %5 = load %struct.sPtrArray*, %struct.sPtrArray** %current.addr, align 8
  %6 = load i32, i32* %i, align 4
  %call2 = call i8* @ptrArrayItem(%struct.sPtrArray* %5, i32 %6)
  %7 = bitcast i8* %call2 to %struct.sVString*
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %7, i32 0, i32 2
  %8 = load i8*, i8** %buffer, align 8
  %call3 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %cond, i8* %8)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare i32 @fprintf(%struct.__sFILE*, i8*, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @stringListReverse(%struct.sPtrArray* %current) #0 {
entry:
  %current.addr = alloca %struct.sPtrArray*, align 8
  store %struct.sPtrArray* %current, %struct.sPtrArray** %current.addr, align 8
  %0 = load %struct.sPtrArray*, %struct.sPtrArray** %current.addr, align 8
  call void @ptrArrayReverse(%struct.sPtrArray* %0)
  ret void
}

declare void @ptrArrayReverse(%struct.sPtrArray*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sPtrArray* @stringListNewBySplittingWordIntoSubwords(i8* %originalWord) #0 {
entry:
  %originalWord.addr = alloca i8*, align 8
  %list = alloca %struct.sPtrArray*, align 8
  %subword = alloca %struct.sVString*, align 8
  %cursor = alloca i8*, align 8
  %last = alloca i8, align 1
  store i8* %originalWord, i8** %originalWord.addr, align 8
  %call = call %struct.sPtrArray* @stringListNew()
  store %struct.sPtrArray* %call, %struct.sPtrArray** %list, align 8
  %call1 = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call1, %struct.sVString** %subword, align 8
  %0 = load i8*, i8** %originalWord.addr, align 8
  store i8* %0, i8** %cursor, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i8*, i8** %cursor, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8*, i8** %cursor, align 8
  %4 = load i8, i8* %3, align 1
  %conv3 = sext i8 %4 to i32
  %call4 = call i32 @islower(i32 %conv3) #3
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %5 = load %struct.sVString*, %struct.sVString** %subword, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %5, i32 0, i32 0
  %6 = load i64, i64* %length, align 8
  %cmp5 = icmp ugt i64 %6, 1
  br i1 %cmp5, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %7 = load %struct.sVString*, %struct.sVString** %subword, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %7, i32 0, i32 2
  %8 = load i8*, i8** %buffer, align 8
  %9 = load %struct.sVString*, %struct.sVString** %subword, align 8
  %length7 = getelementptr inbounds %struct.sVString, %struct.sVString* %9, i32 0, i32 0
  %10 = load i64, i64* %length7, align 8
  %sub = sub i64 %10, 1
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %sub
  %11 = load i8, i8* %arrayidx, align 1
  %conv8 = sext i8 %11 to i32
  %call9 = call i32 @isupper(i32 %conv8) #3
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %land.lhs.true11, label %if.end

land.lhs.true11:                                  ; preds = %land.lhs.true
  %12 = load %struct.sVString*, %struct.sVString** %subword, align 8
  %buffer12 = getelementptr inbounds %struct.sVString, %struct.sVString* %12, i32 0, i32 2
  %13 = load i8*, i8** %buffer12, align 8
  %14 = load %struct.sVString*, %struct.sVString** %subword, align 8
  %length13 = getelementptr inbounds %struct.sVString, %struct.sVString* %14, i32 0, i32 0
  %15 = load i64, i64* %length13, align 8
  %sub14 = sub i64 %15, 2
  %arrayidx15 = getelementptr inbounds i8, i8* %13, i64 %sub14
  %16 = load i8, i8* %arrayidx15, align 1
  %conv16 = sext i8 %16 to i32
  %call17 = call i32 @isupper(i32 %conv16) #3
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.then19, label %if.end

if.then19:                                        ; preds = %land.lhs.true11
  %17 = load %struct.sVString*, %struct.sVString** %subword, align 8
  %buffer20 = getelementptr inbounds %struct.sVString, %struct.sVString* %17, i32 0, i32 2
  %18 = load i8*, i8** %buffer20, align 8
  %19 = load %struct.sVString*, %struct.sVString** %subword, align 8
  %length21 = getelementptr inbounds %struct.sVString, %struct.sVString* %19, i32 0, i32 0
  %20 = load i64, i64* %length21, align 8
  %sub22 = sub i64 %20, 1
  %arrayidx23 = getelementptr inbounds i8, i8* %18, i64 %sub22
  %21 = load i8, i8* %arrayidx23, align 1
  store i8 %21, i8* %last, align 1
  %22 = load %struct.sVString*, %struct.sVString** %subword, align 8
  %23 = load %struct.sVString*, %struct.sVString** %subword, align 8
  %length24 = getelementptr inbounds %struct.sVString, %struct.sVString* %23, i32 0, i32 0
  %24 = load i64, i64* %length24, align 8
  %sub25 = sub i64 %24, 1
  call void @vStringTruncate(%struct.sVString* %22, i64 %sub25)
  %25 = load %struct.sPtrArray*, %struct.sPtrArray** %list, align 8
  %26 = load %struct.sVString*, %struct.sVString** %subword, align 8
  call void @stringListAdd(%struct.sPtrArray* %25, %struct.sVString* %26)
  %call26 = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call26, %struct.sVString** %subword, align 8
  %27 = load %struct.sVString*, %struct.sVString** %subword, align 8
  %28 = load i8, i8* %last, align 1
  %conv27 = sext i8 %28 to i32
  call void @vStringPut(%struct.sVString* %27, i32 %conv27)
  br label %if.end

if.end:                                           ; preds = %if.then19, %land.lhs.true11, %land.lhs.true, %if.then
  %29 = load %struct.sVString*, %struct.sVString** %subword, align 8
  %30 = load i8*, i8** %cursor, align 8
  %31 = load i8, i8* %30, align 1
  %conv28 = sext i8 %31 to i32
  call void @vStringPut(%struct.sVString* %29, i32 %conv28)
  br label %if.end63

if.else:                                          ; preds = %for.body
  %32 = load i8*, i8** %cursor, align 8
  %33 = load i8, i8* %32, align 1
  %conv29 = sext i8 %33 to i32
  %call30 = call i32 @isupper(i32 %conv29) #3
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.then32, label %if.else48

if.then32:                                        ; preds = %if.else
  %34 = load %struct.sVString*, %struct.sVString** %subword, align 8
  %length33 = getelementptr inbounds %struct.sVString, %struct.sVString* %34, i32 0, i32 0
  %35 = load i64, i64* %length33, align 8
  %cmp34 = icmp ugt i64 %35, 0
  br i1 %cmp34, label %land.lhs.true36, label %if.end46

land.lhs.true36:                                  ; preds = %if.then32
  %36 = load %struct.sVString*, %struct.sVString** %subword, align 8
  %buffer37 = getelementptr inbounds %struct.sVString, %struct.sVString* %36, i32 0, i32 2
  %37 = load i8*, i8** %buffer37, align 8
  %38 = load %struct.sVString*, %struct.sVString** %subword, align 8
  %length38 = getelementptr inbounds %struct.sVString, %struct.sVString* %38, i32 0, i32 0
  %39 = load i64, i64* %length38, align 8
  %sub39 = sub i64 %39, 1
  %arrayidx40 = getelementptr inbounds i8, i8* %37, i64 %sub39
  %40 = load i8, i8* %arrayidx40, align 1
  %conv41 = sext i8 %40 to i32
  %call42 = call i32 @islower(i32 %conv41) #3
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.then44, label %if.end46

if.then44:                                        ; preds = %land.lhs.true36
  %41 = load %struct.sPtrArray*, %struct.sPtrArray** %list, align 8
  %42 = load %struct.sVString*, %struct.sVString** %subword, align 8
  call void @stringListAdd(%struct.sPtrArray* %41, %struct.sVString* %42)
  %call45 = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call45, %struct.sVString** %subword, align 8
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %land.lhs.true36, %if.then32
  %43 = load %struct.sVString*, %struct.sVString** %subword, align 8
  %44 = load i8*, i8** %cursor, align 8
  %45 = load i8, i8* %44, align 1
  %conv47 = sext i8 %45 to i32
  call void @vStringPut(%struct.sVString* %43, i32 %conv47)
  br label %if.end62

if.else48:                                        ; preds = %if.else
  %46 = load i8*, i8** %cursor, align 8
  %47 = load i8, i8* %46, align 1
  %conv49 = sext i8 %47 to i32
  %call50 = call i32 @isdigit(i32 %conv49) #3
  %tobool51 = icmp ne i32 %call50, 0
  br i1 %tobool51, label %if.then52, label %if.else54

if.then52:                                        ; preds = %if.else48
  %48 = load %struct.sVString*, %struct.sVString** %subword, align 8
  %49 = load i8*, i8** %cursor, align 8
  %50 = load i8, i8* %49, align 1
  %conv53 = sext i8 %50 to i32
  call void @vStringPut(%struct.sVString* %48, i32 %conv53)
  br label %if.end61

if.else54:                                        ; preds = %if.else48
  %51 = load %struct.sVString*, %struct.sVString** %subword, align 8
  %length55 = getelementptr inbounds %struct.sVString, %struct.sVString* %51, i32 0, i32 0
  %52 = load i64, i64* %length55, align 8
  %cmp56 = icmp ugt i64 %52, 0
  br i1 %cmp56, label %if.then58, label %if.end60

if.then58:                                        ; preds = %if.else54
  %53 = load %struct.sPtrArray*, %struct.sPtrArray** %list, align 8
  %54 = load %struct.sVString*, %struct.sVString** %subword, align 8
  call void @stringListAdd(%struct.sPtrArray* %53, %struct.sVString* %54)
  %call59 = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call59, %struct.sVString** %subword, align 8
  br label %if.end60

if.end60:                                         ; preds = %if.then58, %if.else54
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %if.then52
  br label %if.end62

if.end62:                                         ; preds = %if.end61, %if.end46
  br label %if.end63

if.end63:                                         ; preds = %if.end62, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end63
  %55 = load i8*, i8** %cursor, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %incdec.ptr, i8** %cursor, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %56 = load %struct.sVString*, %struct.sVString** %subword, align 8
  %length64 = getelementptr inbounds %struct.sVString, %struct.sVString* %56, i32 0, i32 0
  %57 = load i64, i64* %length64, align 8
  %cmp65 = icmp ugt i64 %57, 0
  br i1 %cmp65, label %if.then67, label %if.else68

if.then67:                                        ; preds = %for.end
  %58 = load %struct.sPtrArray*, %struct.sPtrArray** %list, align 8
  %59 = load %struct.sVString*, %struct.sVString** %subword, align 8
  call void @stringListAdd(%struct.sPtrArray* %58, %struct.sVString* %59)
  br label %if.end69

if.else68:                                        ; preds = %for.end
  %60 = load %struct.sVString*, %struct.sVString** %subword, align 8
  call void @vStringDelete(%struct.sVString* %60)
  br label %if.end69

if.end69:                                         ; preds = %if.else68, %if.then67
  %61 = load %struct.sPtrArray*, %struct.sPtrArray** %list, align 8
  ret %struct.sPtrArray* %61
}

; Function Attrs: nounwind readonly
declare i32 @islower(i32) #2

; Function Attrs: nounwind readonly
declare i32 @isupper(i32) #2

declare void @vStringTruncate(%struct.sVString*, i64) #1

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

; Function Attrs: nounwind readonly
declare i32 @isdigit(i32) #2

declare i32 @strcmp(i8*, i8*) #1

declare i32 @strcasecmp(i8*, i8*) #1

declare i8* @newUpperString(i8*) #1

declare i32 @"\01_fnmatch"(i8*, i8*, i32) #1

declare void @eFree(i8*) #1

declare void @vStringResize(%struct.sVString*, i64) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 10.0.0 (https://github.com/holzschu/clang.git 0cfc630fbdb62e96720b611a57123ef3eb13e297) (https://github.com/holzschu/llvm.git 0d8a71e39b28502c24718f7e74b5acbcfe36dfe0)"}
