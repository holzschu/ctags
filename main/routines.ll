; ModuleID = 'routines.c'
source_filename = "routines.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-ios11.0.0"

%struct.fileStatus = type { i8*, i8, i8, i8, i8, i8, i8, i8, i64 }
%struct.stat = type { i32, i16, i16, i64, i32, i32, i32, %struct.timespec, %struct.timespec, %struct.timespec, %struct.timespec, i64, i64, i32, i32, i32, i32, [2 x i64] }
%struct.timespec = type { i64, i64 }
%struct.sVString = type { i64, i64, i8* }
%struct._MIO = type opaque
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@CurrentDirectory = common global i8* null, align 8
@ExecutableProgram = internal global i8* null, align 8
@ExecutableName = internal global i8* null, align 8
@.str = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@eStat.file = internal global %struct.fileStatus zeroinitializer, align 8
@__const.absoluteFilename.root = private unnamed_addr constant [2 x i8] c"/\00", align 1
@__const.relativeFilename.parent = private unnamed_addr constant [4 x i8] c"../\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"tags.XXXXXX\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"TMPDIR\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"/var/folders/dc/nlppmksc8xjgz5001s645sr80000gn/T/\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"%s%c%s\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"cannot open temporary file: %s\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"cannot open temporary file\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @freeRoutineResources() #0 {
entry:
  %0 = load i8*, i8** @CurrentDirectory, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** @CurrentDirectory, align 8
  call void @eFree(i8* %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i8* null, i8** @CurrentDirectory, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @eFree(i8* %ptr) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load i8*, i8** %ptr.addr, align 8
  call void @free(i8* %0)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @setExecutableName(i8* %path) #0 {
entry:
  %path.addr = alloca i8*, align 8
  store i8* %path, i8** %path.addr, align 8
  %0 = load i8*, i8** %path.addr, align 8
  store i8* %0, i8** @ExecutableProgram, align 8
  %1 = load i8*, i8** %path.addr, align 8
  %call = call i8* @baseFilename(i8* %1)
  store i8* %call, i8** @ExecutableName, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @baseFilename(i8* %filePath) #0 {
entry:
  %filePath.addr = alloca i8*, align 8
  %tail = alloca i8*, align 8
  store i8* %filePath, i8** %filePath.addr, align 8
  %0 = load i8*, i8** %filePath.addr, align 8
  %call = call i8* @strRSeparator(i8* %0)
  store i8* %call, i8** %tail, align 8
  %1 = load i8*, i8** %tail, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %filePath.addr, align 8
  store i8* %2, i8** %tail, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load i8*, i8** %tail, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr, i8** %tail, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load i8*, i8** %tail, align 8
  ret i8* %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @getExecutableName() #0 {
entry:
  %0 = load i8*, i8** @ExecutableName, align 8
  ret i8* %0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @getExecutablePath() #0 {
entry:
  %0 = load i8*, i8** @ExecutableProgram, align 8
  ret i8* %0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @eMalloc(i64 %size) #0 {
entry:
  %size.addr = alloca i64, align 8
  %buffer = alloca i8*, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load i64, i64* %size.addr, align 8
  %call = call i8* @malloc(i64 %0) #8
  store i8* %call, i8** %buffer, align 8
  %1 = load i8*, i8** %buffer, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i8*, i8** %buffer, align 8
  ret i8* %2
}

; Function Attrs: allocsize(0)
declare i8* @malloc(i64) #1

declare void @error(i32, i8*, ...) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @eCalloc(i64 %count, i64 %size) #0 {
entry:
  %count.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %buffer = alloca i8*, align 8
  store i64 %count, i64* %count.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load i64, i64* %count.addr, align 8
  %1 = load i64, i64* %size.addr, align 8
  %call = call i8* @calloc(i64 %0, i64 %1) #9
  store i8* %call, i8** %buffer, align 8
  %2 = load i8*, i8** %buffer, align 8
  %cmp = icmp eq i8* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %buffer, align 8
  ret i8* %3
}

; Function Attrs: allocsize(0,1)
declare i8* @calloc(i64, i64) #3

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @eRealloc(i8* %ptr, i64 %size) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %buffer = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load i8*, i8** %ptr.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %size.addr, align 8
  %call = call i8* @eMalloc(i64 %1)
  store i8* %call, i8** %buffer, align 8
  br label %if.end4

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** %ptr.addr, align 8
  %3 = load i64, i64* %size.addr, align 8
  %call1 = call i8* @realloc(i8* %2, i64 %3) #10
  store i8* %call1, i8** %buffer, align 8
  %4 = load i8*, i8** %buffer, align 8
  %cmp2 = icmp eq i8* %4, null
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.else
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.else
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then
  %5 = load i8*, i8** %buffer, align 8
  ret i8* %5
}

; Function Attrs: allocsize(1)
declare i8* @realloc(i8*, i64) #4

declare void @free(i8*) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @eFreeIndirect(i8** %ptr) #0 {
entry:
  %ptr.addr = alloca i8**, align 8
  store i8** %ptr, i8*** %ptr.addr, align 8
  %0 = load i8**, i8*** %ptr.addr, align 8
  %tobool = icmp ne i8** %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i8**, i8*** %ptr.addr, align 8
  %2 = load i8*, i8** %1, align 8
  %tobool1 = icmp ne i8* %2, null
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %3 = load i8**, i8*** %ptr.addr, align 8
  %4 = load i8*, i8** %3, align 8
  call void @eFree(i8* %4)
  %5 = load i8**, i8*** %ptr.addr, align 8
  store i8* null, i8** %5, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @struppercmp(i8* %s1, i8* %s2) #0 {
entry:
  %s1.addr = alloca i8*, align 8
  %s2.addr = alloca i8*, align 8
  %result = alloca i32, align 4
  store i8* %s1, i8** %s1.addr, align 8
  store i8* %s2, i8** %s2.addr, align 8
  br label %do.body

do.body:                                          ; preds = %land.end, %entry
  %0 = load i8*, i8** %s1.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %call = call i32 @toupper(i32 %conv) #11
  %2 = load i8*, i8** %s2.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv1 = sext i8 %3 to i32
  %call2 = call i32 @toupper(i32 %conv1) #11
  %sub = sub nsw i32 %call, %call2
  store i32 %sub, i32* %result, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %4 = load i32, i32* %result, align 4
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %do.cond
  %5 = load i8*, i8** %s1.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %s1.addr, align 8
  %6 = load i8, i8* %5, align 1
  %conv4 = sext i8 %6 to i32
  %cmp5 = icmp ne i32 %conv4, 0
  br i1 %cmp5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %7 = load i8*, i8** %s2.addr, align 8
  %incdec.ptr7 = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr7, i8** %s2.addr, align 8
  %8 = load i8, i8* %7, align 1
  %conv8 = sext i8 %8 to i32
  %cmp9 = icmp ne i32 %conv8, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %do.cond
  %9 = phi i1 [ false, %land.lhs.true ], [ false, %do.cond ], [ %cmp9, %land.rhs ]
  br i1 %9, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  %10 = load i32, i32* %result, align 4
  ret i32 %10
}

; Function Attrs: nounwind readonly
declare i32 @toupper(i32) #5

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @strnuppercmp(i8* %s1, i8* %s2, i64 %n) #0 {
entry:
  %s1.addr = alloca i8*, align 8
  %s2.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %result = alloca i32, align 4
  store i8* %s1, i8** %s1.addr, align 8
  store i8* %s2, i8** %s2.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  br label %do.body

do.body:                                          ; preds = %land.end, %entry
  %0 = load i8*, i8** %s1.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %call = call i32 @toupper(i32 %conv) #11
  %2 = load i8*, i8** %s2.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv1 = sext i8 %3 to i32
  %call2 = call i32 @toupper(i32 %conv1) #11
  %sub = sub nsw i32 %call, %call2
  store i32 %sub, i32* %result, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %4 = load i32, i32* %result, align 4
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %do.cond
  %5 = load i64, i64* %n.addr, align 8
  %dec = add i64 %5, -1
  store i64 %dec, i64* %n.addr, align 8
  %cmp4 = icmp ugt i64 %dec, 0
  br i1 %cmp4, label %land.lhs.true6, label %land.end

land.lhs.true6:                                   ; preds = %land.lhs.true
  %6 = load i8*, i8** %s1.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %s1.addr, align 8
  %7 = load i8, i8* %6, align 1
  %conv7 = sext i8 %7 to i32
  %cmp8 = icmp ne i32 %conv7, 0
  br i1 %cmp8, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true6
  %8 = load i8*, i8** %s2.addr, align 8
  %incdec.ptr10 = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr10, i8** %s2.addr, align 8
  %9 = load i8, i8* %8, align 1
  %conv11 = sext i8 %9 to i32
  %cmp12 = icmp ne i32 %conv11, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true6, %land.lhs.true, %do.cond
  %10 = phi i1 [ false, %land.lhs.true6 ], [ false, %land.lhs.true ], [ false, %do.cond ], [ %cmp12, %land.rhs ]
  br i1 %10, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  %11 = load i32, i32* %result, align 4
  ret i32 %11
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @strrstr(i8* %str, i8* %substr) #0 {
entry:
  %retval = alloca i8*, align 8
  %str.addr = alloca i8*, align 8
  %substr.addr = alloca i8*, align 8
  %length = alloca i64, align 8
  %p = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  store i8* %substr, i8** %substr.addr, align 8
  %0 = load i8*, i8** %substr.addr, align 8
  %call = call i64 @strlen(i8* %0)
  store i64 %call, i64* %length, align 8
  %1 = load i8*, i8** %str.addr, align 8
  %2 = load i8*, i8** %str.addr, align 8
  %call1 = call i64 @strlen(i8* %2)
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %call1
  %3 = load i64, i64* %length, align 8
  %idx.neg = sub i64 0, %3
  %add.ptr2 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.neg
  store i8* %add.ptr2, i8** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i8*, i8** %p, align 8
  %5 = load i8*, i8** %str.addr, align 8
  %cmp = icmp uge i8* %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i8*, i8** %p, align 8
  %7 = load i8*, i8** %substr.addr, align 8
  %8 = load i64, i64* %length, align 8
  %call3 = call i32 @strncmp(i8* %6, i8* %7, i64 %8)
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %9 = load i8*, i8** %p, align 8
  store i8* %9, i8** %retval, align 8
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %10, i32 -1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i8* null, i8** %retval, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then
  %11 = load i8*, i8** %retval, align 8
  ret i8* %11
}

declare i64 @strlen(i8*) #2

declare i32 @strncmp(i8*, i8*, i64) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @eStrdup(i8* %str) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %result = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %call = call i64 @strlen(i8* %0)
  %add = add i64 %call, 1
  %mul = mul i64 %add, 1
  %call1 = call i8* @eMalloc(i64 %mul)
  store i8* %call1, i8** %result, align 8
  %1 = load i8*, i8** %result, align 8
  %2 = load i8*, i8** %str.addr, align 8
  %call2 = call i8* @strcpy(i8* %1, i8* %2)
  %3 = load i8*, i8** %result, align 8
  ret i8* %3
}

declare i8* @strcpy(i8*, i8*) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @eStrndup(i8* %str, i64 %len) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %result = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  %0 = load i64, i64* %len.addr, align 8
  %add = add i64 %0, 1
  %mul = mul i64 %add, 1
  %call = call i8* @eMalloc(i64 %mul)
  store i8* %call, i8** %result, align 8
  %1 = load i8*, i8** %result, align 8
  %2 = load i8*, i8** %str.addr, align 8
  %3 = load i64, i64* %len.addr, align 8
  %call1 = call i8* @strncpy(i8* %1, i8* %2, i64 %3)
  %4 = load i8*, i8** %result, align 8
  %5 = load i64, i64* %len.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %5
  store i8 0, i8* %arrayidx, align 1
  %6 = load i8*, i8** %result, align 8
  ret i8* %6
}

declare i8* @strncpy(i8*, i8*, i64) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @toLowerString(i8* %str) #0 {
entry:
  %str.addr = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i8*, i8** %str.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i8*, i8** %str.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv2 = sext i8 %3 to i32
  %call = call i32 @tolower(i32 %conv2) #11
  %conv3 = trunc i32 %call to i8
  %4 = load i8*, i8** %str.addr, align 8
  store i8 %conv3, i8* %4, align 1
  %5 = load i8*, i8** %str.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %str.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @tolower(i32) #5

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @toUpperString(i8* %str) #0 {
entry:
  %str.addr = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i8*, i8** %str.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i8*, i8** %str.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv2 = sext i8 %3 to i32
  %call = call i32 @toupper(i32 %conv2) #11
  %conv3 = trunc i32 %call to i8
  %4 = load i8*, i8** %str.addr, align 8
  store i8 %conv3, i8* %4, align 1
  %5 = load i8*, i8** %str.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %str.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @newLowerString(i8* %str) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %result = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %call = call i64 @strlen(i8* %0)
  %add = add i64 %call, 1
  %mul = mul i64 %add, 1
  %call1 = call i8* @eMalloc(i64 %mul)
  store i8* %call1, i8** %result, align 8
  store i32 0, i32* %i, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %1 = load i8*, i8** %str.addr, align 8
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %call2 = call i32 @tolower(i32 %conv) #11
  %conv3 = trunc i32 %call2 to i8
  %4 = load i8*, i8** %result, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds i8, i8* %4, i64 %idxprom4
  store i8 %conv3, i8* %arrayidx5, align 1
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %6 = load i8*, i8** %str.addr, align 8
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  %idxprom6 = sext i32 %7 to i64
  %arrayidx7 = getelementptr inbounds i8, i8* %6, i64 %idxprom6
  %8 = load i8, i8* %arrayidx7, align 1
  %conv8 = sext i8 %8 to i32
  %cmp = icmp ne i32 %conv8, 0
  br i1 %cmp, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %9 = load i8*, i8** %result, align 8
  ret i8* %9
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @newUpperString(i8* %str) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %result = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %call = call i64 @strlen(i8* %0)
  %add = add i64 %call, 1
  %mul = mul i64 %add, 1
  %call1 = call i8* @eMalloc(i64 %mul)
  store i8* %call1, i8** %result, align 8
  store i32 0, i32* %i, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %1 = load i8*, i8** %str.addr, align 8
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %call2 = call i32 @toupper(i32 %conv) #11
  %conv3 = trunc i32 %call2 to i8
  %4 = load i8*, i8** %result, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds i8, i8* %4, i64 %idxprom4
  store i8 %conv3, i8* %arrayidx5, align 1
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %6 = load i8*, i8** %str.addr, align 8
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  %idxprom6 = sext i32 %7 to i64
  %arrayidx7 = getelementptr inbounds i8, i8* %6, i64 %idxprom6
  %8 = load i8, i8* %arrayidx7, align 1
  %conv8 = sext i8 %8 to i32
  %cmp = icmp ne i32 %conv8, 0
  br i1 %cmp, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %9 = load i8*, i8** %result, align 8
  ret i8* %9
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @strToULong(i8* %str, i32 %base, i64* %value) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %base.addr = alloca i32, align 4
  %value.addr = alloca i64*, align 8
  %endptr = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  store i32 %base, i32* %base.addr, align 4
  store i64* %value, i64** %value.addr, align 8
  %call = call i32* @__error()
  store i32 0, i32* %call, align 4
  %0 = load i8*, i8** %str.addr, align 8
  %1 = load i32, i32* %base.addr, align 4
  %call1 = call i64 @strtoul(i8* %0, i8** %endptr, i32 %1)
  %2 = load i64*, i64** %value.addr, align 8
  store i64 %call1, i64* %2, align 8
  %3 = load i8*, i8** %endptr, align 8
  %4 = load i8, i8* %3, align 1
  %conv = sext i8 %4 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %5 = load i8*, i8** %str.addr, align 8
  %6 = load i8*, i8** %endptr, align 8
  %cmp3 = icmp ne i8* %5, %6
  br i1 %cmp3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %call5 = call i32* @__error()
  %7 = load i32, i32* %call5, align 4
  %cmp6 = icmp eq i32 %7, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %cmp6, %land.rhs ]
  ret i1 %8
}

declare i32* @__error() #2

declare i64 @strtoul(i8*, i8**, i32) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @strToLong(i8* %str, i32 %base, i64* %value) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %base.addr = alloca i32, align 4
  %value.addr = alloca i64*, align 8
  %endptr = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  store i32 %base, i32* %base.addr, align 4
  store i64* %value, i64** %value.addr, align 8
  %call = call i32* @__error()
  store i32 0, i32* %call, align 4
  %0 = load i8*, i8** %str.addr, align 8
  %1 = load i32, i32* %base.addr, align 4
  %call1 = call i64 @strtol(i8* %0, i8** %endptr, i32 %1)
  %2 = load i64*, i64** %value.addr, align 8
  store i64 %call1, i64* %2, align 8
  %3 = load i8*, i8** %endptr, align 8
  %4 = load i8, i8* %3, align 1
  %conv = sext i8 %4 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %5 = load i8*, i8** %str.addr, align 8
  %6 = load i8*, i8** %endptr, align 8
  %cmp3 = icmp ne i8* %5, %6
  br i1 %cmp3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %call5 = call i32* @__error()
  %7 = load i32, i32* %call5, align 4
  %cmp6 = icmp eq i32 %7, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %cmp6, %land.rhs ]
  ret i1 %8
}

declare i64 @strtol(i8*, i8**, i32) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @strToUInt(i8* %str, i32 %base, i32* %value) #0 {
entry:
  %retval = alloca i1, align 1
  %str.addr = alloca i8*, align 8
  %base.addr = alloca i32, align 4
  %value.addr = alloca i32*, align 8
  %ulong_value = alloca i64, align 8
  store i8* %str, i8** %str.addr, align 8
  store i32 %base, i32* %base.addr, align 4
  store i32* %value, i32** %value.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %1 = load i32, i32* %base.addr, align 4
  %call = call zeroext i1 @strToULong(i8* %0, i32 %1, i64* %ulong_value)
  br i1 %call, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %2 = load i64, i64* %ulong_value, align 8
  %cmp = icmp ugt i64 %2, 4294967295
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load i64, i64* %ulong_value, align 8
  %conv = trunc i64 %3 to i32
  %4 = load i32*, i32** %value.addr, align 8
  store i32 %conv, i32* %4, align 4
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i1, i1* %retval, align 1
  ret i1 %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @strToInt(i8* %str, i32 %base, i32* %value) #0 {
entry:
  %retval = alloca i1, align 1
  %str.addr = alloca i8*, align 8
  %base.addr = alloca i32, align 4
  %value.addr = alloca i32*, align 8
  %long_value = alloca i64, align 8
  store i8* %str, i8** %str.addr, align 8
  store i32 %base, i32* %base.addr, align 4
  store i32* %value, i32** %value.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %1 = load i32, i32* %base.addr, align 4
  %call = call zeroext i1 @strToLong(i8* %0, i32 %1, i64* %long_value)
  br i1 %call, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %2 = load i64, i64* %long_value, align 8
  %cmp = icmp sgt i64 %2, 2147483647
  br i1 %cmp, label %if.then, label %lor.lhs.false1

lor.lhs.false1:                                   ; preds = %lor.lhs.false
  %3 = load i64, i64* %long_value, align 8
  %cmp2 = icmp slt i64 %3, -2147483648
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false1, %lor.lhs.false, %entry
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %lor.lhs.false1
  %4 = load i64, i64* %long_value, align 8
  %conv = trunc i64 %4 to i32
  %5 = load i32*, i32** %value.addr, align 8
  store i32 %conv, i32* %5, align 4
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i1, i1* %retval, align 1
  ret i1 %6
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @setCurrentDirectory() #0 {
entry:
  %buf = alloca i8*, align 8
  %0 = load i8*, i8** @CurrentDirectory, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i8* @eMalloc(i64 1025)
  store i8* %call, i8** @CurrentDirectory, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i8*, i8** @CurrentDirectory, align 8
  %call1 = call i8* @getcwd(i8* %1, i64 1024)
  store i8* %call1, i8** %buf, align 8
  %2 = load i8*, i8** %buf, align 8
  %cmp2 = icmp eq i8* %2, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @perror(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)) #12
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  %3 = load i8*, i8** @CurrentDirectory, align 8
  %4 = load i8*, i8** @CurrentDirectory, align 8
  %call5 = call i64 @strlen(i8* %4)
  %sub = sub i64 %call5, 1
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %sub
  %5 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %5 to i32
  %call6 = call zeroext i1 @isPathSeparator(i32 %conv)
  br i1 %call6, label %if.end10, label %if.then7

if.then7:                                         ; preds = %if.end4
  %6 = load i8*, i8** @CurrentDirectory, align 8
  %7 = load i8*, i8** @CurrentDirectory, align 8
  %call8 = call i64 @strlen(i8* %7)
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %call8
  %call9 = call i32 (i8*, i8*, ...) @sprintf(i8* %add.ptr, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 47)
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.end4
  %8 = load i8*, i8** @CurrentDirectory, align 8
  call void @canonicalizePath(i8* %8)
  ret void
}

declare i8* @getcwd(i8*, i64) #2

; Function Attrs: cold
declare void @perror(i8*) #6

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @isPathSeparator(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  %result = alloca i8, align 1
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %cmp = icmp eq i32 %0, 47
  %frombool = zext i1 %cmp to i8
  store i8 %frombool, i8* %result, align 1
  %1 = load i8, i8* %result, align 1
  %tobool = trunc i8 %1 to i1
  ret i1 %tobool
}

declare i32 @sprintf(i8*, i8*, ...) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @canonicalizePath(i8* %path) #0 {
entry:
  %path.addr = alloca i8*, align 8
  store i8* %path, i8** %path.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.fileStatus* @eStat(i8* %fileName) #0 {
entry:
  %fileName.addr = alloca i8*, align 8
  %status = alloca %struct.stat, align 8
  store i8* %fileName, i8** %fileName.addr, align 8
  %0 = load i8*, i8** getelementptr inbounds (%struct.fileStatus, %struct.fileStatus* @eStat.file, i32 0, i32 0), align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8*, i8** %fileName.addr, align 8
  %2 = load i8*, i8** getelementptr inbounds (%struct.fileStatus, %struct.fileStatus* @eStat.file, i32 0, i32 0), align 8
  %call = call i32 @strcmp(i8* %1, i8* %2)
  %cmp1 = icmp ne i32 %call, 0
  br i1 %cmp1, label %if.then, label %if.end45

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @eStatFree(%struct.fileStatus* @eStat.file)
  %3 = load i8*, i8** %fileName.addr, align 8
  %call2 = call i8* @eStrdup(i8* %3)
  store i8* %call2, i8** getelementptr inbounds (%struct.fileStatus, %struct.fileStatus* @eStat.file, i32 0, i32 0), align 8
  %4 = load i8*, i8** getelementptr inbounds (%struct.fileStatus, %struct.fileStatus* @eStat.file, i32 0, i32 0), align 8
  %call3 = call i32 @"\01_lstat"(i8* %4, %struct.stat* %status)
  %cmp4 = icmp ne i32 %call3, 0
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then
  store i8 0, i8* getelementptr inbounds (%struct.fileStatus, %struct.fileStatus* @eStat.file, i32 0, i32 1), align 8
  br label %if.end44

if.else:                                          ; preds = %if.then
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %status, i32 0, i32 1
  %5 = load i16, i16* %st_mode, align 4
  %conv = zext i16 %5 to i32
  %and = and i32 %conv, 61440
  %cmp6 = icmp eq i32 %and, 40960
  %frombool = zext i1 %cmp6 to i8
  store i8 %frombool, i8* getelementptr inbounds (%struct.fileStatus, %struct.fileStatus* @eStat.file, i32 0, i32 2), align 1
  %6 = load i8, i8* getelementptr inbounds (%struct.fileStatus, %struct.fileStatus* @eStat.file, i32 0, i32 2), align 1
  %tobool = trunc i8 %6 to i1
  br i1 %tobool, label %land.lhs.true, label %if.else13

land.lhs.true:                                    ; preds = %if.else
  %7 = load i8*, i8** getelementptr inbounds (%struct.fileStatus, %struct.fileStatus* @eStat.file, i32 0, i32 0), align 8
  %call9 = call i32 @"\01_stat"(i8* %7, %struct.stat* %status)
  %cmp10 = icmp ne i32 %call9, 0
  br i1 %cmp10, label %if.then12, label %if.else13

if.then12:                                        ; preds = %land.lhs.true
  store i8 0, i8* getelementptr inbounds (%struct.fileStatus, %struct.fileStatus* @eStat.file, i32 0, i32 1), align 8
  br label %if.end

if.else13:                                        ; preds = %land.lhs.true, %if.else
  store i8 1, i8* getelementptr inbounds (%struct.fileStatus, %struct.fileStatus* @eStat.file, i32 0, i32 1), align 8
  %st_mode14 = getelementptr inbounds %struct.stat, %struct.stat* %status, i32 0, i32 1
  %8 = load i16, i16* %st_mode14, align 4
  %conv15 = zext i16 %8 to i32
  %and16 = and i32 %conv15, 61440
  %cmp17 = icmp eq i32 %and16, 16384
  %frombool19 = zext i1 %cmp17 to i8
  store i8 %frombool19, i8* getelementptr inbounds (%struct.fileStatus, %struct.fileStatus* @eStat.file, i32 0, i32 3), align 2
  %st_mode20 = getelementptr inbounds %struct.stat, %struct.stat* %status, i32 0, i32 1
  %9 = load i16, i16* %st_mode20, align 4
  %conv21 = zext i16 %9 to i32
  %and22 = and i32 %conv21, 61440
  %cmp23 = icmp eq i32 %and22, 32768
  %frombool25 = zext i1 %cmp23 to i8
  store i8 %frombool25, i8* getelementptr inbounds (%struct.fileStatus, %struct.fileStatus* @eStat.file, i32 0, i32 4), align 1
  %st_mode26 = getelementptr inbounds %struct.stat, %struct.stat* %status, i32 0, i32 1
  %10 = load i16, i16* %st_mode26, align 4
  %conv27 = zext i16 %10 to i32
  %and28 = and i32 %conv27, 73
  %cmp29 = icmp ne i32 %and28, 0
  %frombool31 = zext i1 %cmp29 to i8
  store i8 %frombool31, i8* getelementptr inbounds (%struct.fileStatus, %struct.fileStatus* @eStat.file, i32 0, i32 5), align 4
  %st_mode32 = getelementptr inbounds %struct.stat, %struct.stat* %status, i32 0, i32 1
  %11 = load i16, i16* %st_mode32, align 4
  %conv33 = zext i16 %11 to i32
  %and34 = and i32 %conv33, 2048
  %cmp35 = icmp ne i32 %and34, 0
  %frombool37 = zext i1 %cmp35 to i8
  store i8 %frombool37, i8* getelementptr inbounds (%struct.fileStatus, %struct.fileStatus* @eStat.file, i32 0, i32 6), align 1
  %st_mode38 = getelementptr inbounds %struct.stat, %struct.stat* %status, i32 0, i32 1
  %12 = load i16, i16* %st_mode38, align 4
  %conv39 = zext i16 %12 to i32
  %and40 = and i32 %conv39, 1024
  %cmp41 = icmp ne i32 %and40, 0
  %frombool43 = zext i1 %cmp41 to i8
  store i8 %frombool43, i8* getelementptr inbounds (%struct.fileStatus, %struct.fileStatus* @eStat.file, i32 0, i32 7), align 2
  %st_size = getelementptr inbounds %struct.stat, %struct.stat* %status, i32 0, i32 11
  %13 = load i64, i64* %st_size, align 8
  store i64 %13, i64* getelementptr inbounds (%struct.fileStatus, %struct.fileStatus* @eStat.file, i32 0, i32 8), align 8
  br label %if.end

if.end:                                           ; preds = %if.else13, %if.then12
  br label %if.end44

if.end44:                                         ; preds = %if.end, %if.then5
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %lor.lhs.false
  ret %struct.fileStatus* @eStat.file
}

declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @eStatFree(%struct.fileStatus* %status) #0 {
entry:
  %status.addr = alloca %struct.fileStatus*, align 8
  store %struct.fileStatus* %status, %struct.fileStatus** %status.addr, align 8
  %0 = load %struct.fileStatus*, %struct.fileStatus** %status.addr, align 8
  %name = getelementptr inbounds %struct.fileStatus, %struct.fileStatus* %0, i32 0, i32 0
  %1 = load i8*, i8** %name, align 8
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.fileStatus*, %struct.fileStatus** %status.addr, align 8
  %name1 = getelementptr inbounds %struct.fileStatus, %struct.fileStatus* %2, i32 0, i32 0
  %3 = load i8*, i8** %name1, align 8
  call void @eFree(i8* %3)
  %4 = load %struct.fileStatus*, %struct.fileStatus** %status.addr, align 8
  %name2 = getelementptr inbounds %struct.fileStatus, %struct.fileStatus* %4, i32 0, i32 0
  store i8* null, i8** %name2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i32 @"\01_lstat"(i8*, %struct.stat*) #2

declare i32 @"\01_stat"(i8*, %struct.stat*) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @doesFileExist(i8* %fileName) #0 {
entry:
  %fileName.addr = alloca i8*, align 8
  %status = alloca %struct.fileStatus*, align 8
  store i8* %fileName, i8** %fileName.addr, align 8
  %0 = load i8*, i8** %fileName.addr, align 8
  %call = call %struct.fileStatus* @eStat(i8* %0)
  store %struct.fileStatus* %call, %struct.fileStatus** %status, align 8
  %1 = load %struct.fileStatus*, %struct.fileStatus** %status, align 8
  %exists = getelementptr inbounds %struct.fileStatus, %struct.fileStatus* %1, i32 0, i32 1
  %2 = load i8, i8* %exists, align 8
  %tobool = trunc i8 %2 to i1
  ret i1 %tobool
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @doesExecutableExist(i8* %fileName) #0 {
entry:
  %fileName.addr = alloca i8*, align 8
  %status = alloca %struct.fileStatus*, align 8
  store i8* %fileName, i8** %fileName.addr, align 8
  %0 = load i8*, i8** %fileName.addr, align 8
  %call = call %struct.fileStatus* @eStat(i8* %0)
  store %struct.fileStatus* %call, %struct.fileStatus** %status, align 8
  %1 = load %struct.fileStatus*, %struct.fileStatus** %status, align 8
  %exists = getelementptr inbounds %struct.fileStatus, %struct.fileStatus* %1, i32 0, i32 1
  %2 = load i8, i8* %exists, align 8
  %tobool = trunc i8 %2 to i1
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %3 = load %struct.fileStatus*, %struct.fileStatus** %status, align 8
  %isExecutable = getelementptr inbounds %struct.fileStatus, %struct.fileStatus* %3, i32 0, i32 5
  %4 = load i8, i8* %isExecutable, align 4
  %tobool1 = trunc i8 %4 to i1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %tobool1, %land.rhs ]
  ret i1 %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @isRecursiveLink(i8* %dirName) #0 {
entry:
  %dirName.addr = alloca i8*, align 8
  %result = alloca i8, align 1
  %status = alloca %struct.fileStatus*, align 8
  %path = alloca i8*, align 8
  %separator = alloca i8*, align 8
  store i8* %dirName, i8** %dirName.addr, align 8
  store i8 0, i8* %result, align 1
  %0 = load i8*, i8** %dirName.addr, align 8
  %call = call %struct.fileStatus* @eStat(i8* %0)
  store %struct.fileStatus* %call, %struct.fileStatus** %status, align 8
  %1 = load %struct.fileStatus*, %struct.fileStatus** %status, align 8
  %isSymbolicLink = getelementptr inbounds %struct.fileStatus, %struct.fileStatus* %1, i32 0, i32 2
  %2 = load i8, i8* %isSymbolicLink, align 1
  %tobool = trunc i8 %2 to i1
  br i1 %tobool, label %if.then, label %if.end23

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %dirName.addr, align 8
  %call1 = call i8* @absoluteFilename(i8* %3)
  store i8* %call1, i8** %path, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %4 = load i8*, i8** %path, align 8
  %5 = load i8*, i8** %path, align 8
  %call2 = call i64 @strlen(i8* %5)
  %sub = sub i64 %call2, 1
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %sub
  %6 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %6 to i32
  %call3 = call zeroext i1 @isPathSeparator(i32 %conv)
  br i1 %call3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load i8*, i8** %path, align 8
  %8 = load i8*, i8** %path, align 8
  %call4 = call i64 @strlen(i8* %8)
  %sub5 = sub i64 %call4, 1
  %arrayidx6 = getelementptr inbounds i8, i8* %7, i64 %sub5
  store i8 0, i8* %arrayidx6, align 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %while.cond7

while.cond7:                                      ; preds = %if.end20, %while.end
  %9 = load i8, i8* %result, align 1
  %tobool8 = trunc i8 %9 to i1
  br i1 %tobool8, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond7
  %10 = load i8*, i8** %path, align 8
  %call9 = call i64 @strlen(i8* %10)
  %cmp = icmp ugt i64 %call9, 1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond7
  %11 = phi i1 [ false, %while.cond7 ], [ %cmp, %land.rhs ]
  br i1 %11, label %while.body11, label %while.end22

while.body11:                                     ; preds = %land.end
  %12 = load i8*, i8** %path, align 8
  %call12 = call i8* @strRSeparator(i8* %12)
  store i8* %call12, i8** %separator, align 8
  %13 = load i8*, i8** %separator, align 8
  %cmp13 = icmp eq i8* %13, null
  br i1 %cmp13, label %if.then15, label %if.else

if.then15:                                        ; preds = %while.body11
  br label %while.end22

if.else:                                          ; preds = %while.body11
  %14 = load i8*, i8** %separator, align 8
  %15 = load i8*, i8** %path, align 8
  %cmp16 = icmp eq i8* %14, %15
  br i1 %cmp16, label %if.then18, label %if.else19

if.then18:                                        ; preds = %if.else
  %16 = load i8*, i8** %separator, align 8
  %add.ptr = getelementptr inbounds i8, i8* %16, i64 1
  store i8 0, i8* %add.ptr, align 1
  br label %if.end

if.else19:                                        ; preds = %if.else
  %17 = load i8*, i8** %separator, align 8
  store i8 0, i8* %17, align 1
  br label %if.end

if.end:                                           ; preds = %if.else19, %if.then18
  br label %if.end20

if.end20:                                         ; preds = %if.end
  %18 = load i8*, i8** %path, align 8
  %19 = load i8*, i8** %dirName.addr, align 8
  %call21 = call zeroext i1 @isSameFile(i8* %18, i8* %19)
  %frombool = zext i1 %call21 to i8
  store i8 %frombool, i8* %result, align 1
  br label %while.cond7

while.end22:                                      ; preds = %if.then15, %land.end
  %20 = load i8*, i8** %path, align 8
  call void @eFree(i8* %20)
  br label %if.end23

if.end23:                                         ; preds = %while.end22, %entry
  %21 = load i8, i8* %result, align 1
  %tobool24 = trunc i8 %21 to i1
  ret i1 %tobool24
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @absoluteFilename(i8* %file) #0 {
entry:
  %file.addr = alloca i8*, align 8
  %slashp = alloca i8*, align 8
  %cp = alloca i8*, align 8
  %res = alloca i8*, align 8
  %root = alloca [2 x i8], align 1
  store i8* %file, i8** %file.addr, align 8
  store i8* null, i8** %res, align 8
  %0 = load i8*, i8** %file.addr, align 8
  %call = call zeroext i1 @isAbsolutePath(i8* %0)
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %file.addr, align 8
  %call1 = call i8* @eStrdup(i8* %1)
  store i8* %call1, i8** %res, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** @CurrentDirectory, align 8
  %3 = load i8*, i8** %file.addr, align 8
  %call2 = call i8* @concat(i8* %2, i8* %3, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  store i8* %call2, i8** %res, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load i8*, i8** %res, align 8
  %call3 = call i8* @strSeparator(i8* %4)
  store i8* %call3, i8** %slashp, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end52, %if.then45, %if.end32, %if.end
  %5 = load i8*, i8** %slashp, align 8
  %cmp = icmp ne i8* %5, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %6 = load i8*, i8** %slashp, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 0
  %7 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %7 to i32
  %cmp4 = icmp ne i32 %conv, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %8 = phi i1 [ false, %while.cond ], [ %cmp4, %land.rhs ]
  br i1 %8, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %9 = load i8*, i8** %slashp, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %9, i64 1
  %10 = load i8, i8* %arrayidx6, align 1
  %conv7 = sext i8 %10 to i32
  %cmp8 = icmp eq i32 %conv7, 46
  br i1 %cmp8, label %if.then10, label %if.end52

if.then10:                                        ; preds = %while.body
  %11 = load i8*, i8** %slashp, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %11, i64 2
  %12 = load i8, i8* %arrayidx11, align 1
  %conv12 = sext i8 %12 to i32
  %cmp13 = icmp eq i32 %conv12, 46
  br i1 %cmp13, label %land.lhs.true, label %if.else35

land.lhs.true:                                    ; preds = %if.then10
  %13 = load i8*, i8** %slashp, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %13, i64 3
  %14 = load i8, i8* %arrayidx15, align 1
  %conv16 = sext i8 %14 to i32
  %call17 = call zeroext i1 @isPathSeparator(i32 %conv16)
  br i1 %call17, label %if.then23, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %15 = load i8*, i8** %slashp, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %15, i64 3
  %16 = load i8, i8* %arrayidx19, align 1
  %conv20 = sext i8 %16 to i32
  %cmp21 = icmp eq i32 %conv20, 0
  br i1 %cmp21, label %if.then23, label %if.else35

if.then23:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %17 = load i8*, i8** %slashp, align 8
  store i8* %17, i8** %cp, align 8
  br label %do.body

do.body:                                          ; preds = %land.end28, %if.then23
  %18 = load i8*, i8** %cp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %18, i32 -1
  store i8* %incdec.ptr, i8** %cp, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %19 = load i8*, i8** %cp, align 8
  %20 = load i8*, i8** %res, align 8
  %cmp24 = icmp uge i8* %19, %20
  br i1 %cmp24, label %land.rhs26, label %land.end28

land.rhs26:                                       ; preds = %do.cond
  %21 = load i8*, i8** %cp, align 8
  %call27 = call zeroext i1 @isAbsolutePath(i8* %21)
  %lnot = xor i1 %call27, true
  br label %land.end28

land.end28:                                       ; preds = %land.rhs26, %do.cond
  %22 = phi i1 [ false, %do.cond ], [ %lnot, %land.rhs26 ]
  br i1 %22, label %do.body, label %do.end

do.end:                                           ; preds = %land.end28
  %23 = load i8*, i8** %cp, align 8
  %24 = load i8*, i8** %res, align 8
  %cmp29 = icmp ult i8* %23, %24
  br i1 %cmp29, label %if.then31, label %if.end32

if.then31:                                        ; preds = %do.end
  %25 = load i8*, i8** %slashp, align 8
  store i8* %25, i8** %cp, align 8
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %do.end
  %26 = load i8*, i8** %cp, align 8
  %27 = load i8*, i8** %slashp, align 8
  %add.ptr = getelementptr inbounds i8, i8* %27, i64 3
  %28 = load i8*, i8** %slashp, align 8
  %add.ptr33 = getelementptr inbounds i8, i8* %28, i64 3
  %call34 = call i64 @strlen(i8* %add.ptr33)
  %add = add i64 %call34, 1
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 %26, i8* align 1 %add.ptr, i64 %add, i1 false)
  %29 = load i8*, i8** %cp, align 8
  store i8* %29, i8** %slashp, align 8
  br label %while.cond

if.else35:                                        ; preds = %lor.lhs.false, %if.then10
  %30 = load i8*, i8** %slashp, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %30, i64 2
  %31 = load i8, i8* %arrayidx36, align 1
  %conv37 = sext i8 %31 to i32
  %call38 = call zeroext i1 @isPathSeparator(i32 %conv37)
  br i1 %call38, label %if.then45, label %lor.lhs.false40

lor.lhs.false40:                                  ; preds = %if.else35
  %32 = load i8*, i8** %slashp, align 8
  %arrayidx41 = getelementptr inbounds i8, i8* %32, i64 2
  %33 = load i8, i8* %arrayidx41, align 1
  %conv42 = sext i8 %33 to i32
  %cmp43 = icmp eq i32 %conv42, 0
  br i1 %cmp43, label %if.then45, label %if.end50

if.then45:                                        ; preds = %lor.lhs.false40, %if.else35
  %34 = load i8*, i8** %slashp, align 8
  %35 = load i8*, i8** %slashp, align 8
  %add.ptr46 = getelementptr inbounds i8, i8* %35, i64 2
  %36 = load i8*, i8** %slashp, align 8
  %add.ptr47 = getelementptr inbounds i8, i8* %36, i64 2
  %call48 = call i64 @strlen(i8* %add.ptr47)
  %add49 = add i64 %call48, 1
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 %34, i8* align 1 %add.ptr46, i64 %add49, i1 false)
  br label %while.cond

if.end50:                                         ; preds = %lor.lhs.false40
  br label %if.end51

if.end51:                                         ; preds = %if.end50
  br label %if.end52

if.end52:                                         ; preds = %if.end51, %while.body
  %37 = load i8*, i8** %slashp, align 8
  %add.ptr53 = getelementptr inbounds i8, i8* %37, i64 1
  %call54 = call i8* @strSeparator(i8* %add.ptr53)
  store i8* %call54, i8** %slashp, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %38 = load i8*, i8** %res, align 8
  %arrayidx55 = getelementptr inbounds i8, i8* %38, i64 0
  %39 = load i8, i8* %arrayidx55, align 1
  %conv56 = sext i8 %39 to i32
  %cmp57 = icmp eq i32 %conv56, 0
  br i1 %cmp57, label %if.then59, label %if.else61

if.then59:                                        ; preds = %while.end
  %40 = bitcast [2 x i8]* %root to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %40, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.absoluteFilename.root, i32 0, i32 0), i64 2, i1 false)
  %41 = load i8*, i8** %res, align 8
  call void @eFree(i8* %41)
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %root, i64 0, i64 0
  %call60 = call i8* @eStrdup(i8* %arraydecay)
  store i8* %call60, i8** %res, align 8
  br label %if.end62

if.else61:                                        ; preds = %while.end
  br label %if.end62

if.end62:                                         ; preds = %if.else61, %if.then59
  %42 = load i8*, i8** %res, align 8
  call void @canonicalizePath(i8* %42)
  %43 = load i8*, i8** %res, align 8
  ret i8* %43
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @strRSeparator(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i8* @strrchr(i8* %0, i32 47)
  ret i8* %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @isSameFile(i8* %name1, i8* %name2) #0 {
entry:
  %name1.addr = alloca i8*, align 8
  %name2.addr = alloca i8*, align 8
  %result = alloca i8, align 1
  %stat1 = alloca %struct.stat, align 8
  %stat2 = alloca %struct.stat, align 8
  store i8* %name1, i8** %name1.addr, align 8
  store i8* %name2, i8** %name2.addr, align 8
  store i8 0, i8* %result, align 1
  %0 = load i8*, i8** %name1.addr, align 8
  %call = call i32 @"\01_stat"(i8* %0, %struct.stat* %stat1)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i8*, i8** %name2.addr, align 8
  %call1 = call i32 @"\01_stat"(i8* %1, %struct.stat* %stat2)
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %st_ino = getelementptr inbounds %struct.stat, %struct.stat* %stat1, i32 0, i32 3
  %2 = load i64, i64* %st_ino, align 8
  %st_ino3 = getelementptr inbounds %struct.stat, %struct.stat* %stat2, i32 0, i32 3
  %3 = load i64, i64* %st_ino3, align 8
  %cmp4 = icmp eq i64 %2, %3
  %frombool = zext i1 %cmp4 to i8
  store i8 %frombool, i8* %result, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %4 = load i8, i8* %result, align 1
  %tobool = trunc i8 %4 to i1
  ret i1 %tobool
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @fileExtension(i8* %fileName) #0 {
entry:
  %fileName.addr = alloca i8*, align 8
  %extension = alloca i8*, align 8
  %pDelimiter = alloca i8*, align 8
  %base = alloca i8*, align 8
  store i8* %fileName, i8** %fileName.addr, align 8
  %0 = load i8*, i8** %fileName.addr, align 8
  %call = call i8* @baseFilename(i8* %0)
  store i8* %call, i8** %base, align 8
  %1 = load i8*, i8** %base, align 8
  %call1 = call i8* @strrchr(i8* %1, i32 46)
  store i8* %call1, i8** %pDelimiter, align 8
  %2 = load i8*, i8** %pDelimiter, align 8
  %cmp = icmp eq i8* %2, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %extension, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load i8*, i8** %pDelimiter, align 8
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 1
  store i8* %add.ptr, i8** %extension, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load i8*, i8** %extension, align 8
  ret i8* %4
}

declare i8* @strrchr(i8*, i32) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @baseFilenameSansExtensionNew(i8* %fileName, i8* %templateExt) #0 {
entry:
  %retval = alloca i8*, align 8
  %fileName.addr = alloca i8*, align 8
  %templateExt.addr = alloca i8*, align 8
  %pDelimiter = alloca i8*, align 8
  %base = alloca i8*, align 8
  %shorten_base = alloca i8*, align 8
  store i8* %fileName, i8** %fileName.addr, align 8
  store i8* %templateExt, i8** %templateExt.addr, align 8
  %0 = load i8*, i8** %fileName.addr, align 8
  %call = call i8* @baseFilename(i8* %0)
  store i8* %call, i8** %base, align 8
  %1 = load i8*, i8** %base, align 8
  %2 = load i8*, i8** %templateExt.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 0
  %3 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %call1 = call i8* @strrchr(i8* %1, i32 %conv)
  store i8* %call1, i8** %pDelimiter, align 8
  %4 = load i8*, i8** %pDelimiter, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %5 = load i8*, i8** %pDelimiter, align 8
  %6 = load i8*, i8** %templateExt.addr, align 8
  %call2 = call i32 @strcmp(i8* %5, i8* %6)
  %cmp = icmp eq i32 %call2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %7 = load i8*, i8** %base, align 8
  %8 = load i8*, i8** %pDelimiter, align 8
  %9 = load i8*, i8** %base, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %8 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %9 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call4 = call i8* @eStrndup(i8* %7, i64 %sub.ptr.sub)
  store i8* %call4, i8** %shorten_base, align 8
  %10 = load i8*, i8** %shorten_base, align 8
  store i8* %10, i8** %retval, align 8
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  store i8* null, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then
  %11 = load i8*, i8** %retval, align 8
  ret i8* %11
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @isAbsolutePath(i8* %path) #0 {
entry:
  %path.addr = alloca i8*, align 8
  %result = alloca i8, align 1
  store i8* %path, i8** %path.addr, align 8
  %0 = load i8*, i8** %path.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %1 to i32
  %call = call zeroext i1 @isPathSeparator(i32 %conv)
  %frombool = zext i1 %call to i8
  store i8 %frombool, i8* %result, align 1
  %2 = load i8, i8* %result, align 1
  %tobool = trunc i8 %2 to i1
  ret i1 %tobool
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @combinePathAndFile(i8* %path, i8* %file) #0 {
entry:
  %path.addr = alloca i8*, align 8
  %file.addr = alloca i8*, align 8
  %filePath = alloca %struct.sVString*, align 8
  %lastChar = alloca i32, align 4
  %terminated = alloca i8, align 1
  store i8* %path, i8** %path.addr, align 8
  store i8* %file, i8** %file.addr, align 8
  %call = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call, %struct.sVString** %filePath, align 8
  %0 = load i8*, i8** %path.addr, align 8
  %1 = load i8*, i8** %path.addr, align 8
  %call1 = call i64 @strlen(i8* %1)
  %sub = sub i64 %call1, 1
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 %sub
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  store i32 %conv, i32* %lastChar, align 4
  %3 = load i32, i32* %lastChar, align 4
  %call2 = call zeroext i1 @isPathSeparator(i32 %3)
  %frombool = zext i1 %call2 to i8
  store i8 %frombool, i8* %terminated, align 1
  %4 = load %struct.sVString*, %struct.sVString** %filePath, align 8
  %5 = load i8*, i8** %path.addr, align 8
  call void @vStringCopyS(%struct.sVString* %4, i8* %5)
  %6 = load i8, i8* %terminated, align 1
  %tobool = trunc i8 %6 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %7 = load %struct.sVString*, %struct.sVString** %filePath, align 8
  call void @vStringPut(%struct.sVString* %7, i32 47)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct.sVString*, %struct.sVString** %filePath, align 8
  %9 = load i8*, i8** %file.addr, align 8
  call void @vStringCatS(%struct.sVString* %8, i8* %9)
  %10 = load %struct.sVString*, %struct.sVString** %filePath, align 8
  %call3 = call i8* @vStringDeleteUnwrap(%struct.sVString* %10)
  ret i8* %call3
}

declare %struct.sVString* @vStringNew() #2

declare void @vStringCopyS(%struct.sVString*, i8*) #2

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

declare void @vStringCatS(%struct.sVString*, i8*) #2

declare i8* @vStringDeleteUnwrap(%struct.sVString*) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @concat(i8* %s1, i8* %s2, i8* %s3) #0 {
entry:
  %s1.addr = alloca i8*, align 8
  %s2.addr = alloca i8*, align 8
  %s3.addr = alloca i8*, align 8
  %len1 = alloca i32, align 4
  %len2 = alloca i32, align 4
  %len3 = alloca i32, align 4
  %result = alloca i8*, align 8
  store i8* %s1, i8** %s1.addr, align 8
  store i8* %s2, i8** %s2.addr, align 8
  store i8* %s3, i8** %s3.addr, align 8
  %0 = load i8*, i8** %s1.addr, align 8
  %call = call i64 @strlen(i8* %0)
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %len1, align 4
  %1 = load i8*, i8** %s2.addr, align 8
  %call1 = call i64 @strlen(i8* %1)
  %conv2 = trunc i64 %call1 to i32
  store i32 %conv2, i32* %len2, align 4
  %2 = load i8*, i8** %s3.addr, align 8
  %call3 = call i64 @strlen(i8* %2)
  %conv4 = trunc i64 %call3 to i32
  store i32 %conv4, i32* %len3, align 4
  %3 = load i32, i32* %len1, align 4
  %4 = load i32, i32* %len2, align 4
  %add = add nsw i32 %3, %4
  %5 = load i32, i32* %len3, align 4
  %add5 = add nsw i32 %add, %5
  %add6 = add nsw i32 %add5, 1
  %conv7 = sext i32 %add6 to i64
  %mul = mul i64 %conv7, 1
  %call8 = call i8* @eMalloc(i64 %mul)
  store i8* %call8, i8** %result, align 8
  %6 = load i8*, i8** %result, align 8
  %7 = load i8*, i8** %s1.addr, align 8
  %call9 = call i8* @strcpy(i8* %6, i8* %7)
  %8 = load i8*, i8** %result, align 8
  %9 = load i32, i32* %len1, align 4
  %idx.ext = sext i32 %9 to i64
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 %idx.ext
  %10 = load i8*, i8** %s2.addr, align 8
  %call10 = call i8* @strcpy(i8* %add.ptr, i8* %10)
  %11 = load i8*, i8** %result, align 8
  %12 = load i32, i32* %len1, align 4
  %idx.ext11 = sext i32 %12 to i64
  %add.ptr12 = getelementptr inbounds i8, i8* %11, i64 %idx.ext11
  %13 = load i32, i32* %len2, align 4
  %idx.ext13 = sext i32 %13 to i64
  %add.ptr14 = getelementptr inbounds i8, i8* %add.ptr12, i64 %idx.ext13
  %14 = load i8*, i8** %s3.addr, align 8
  %call15 = call i8* @strcpy(i8* %add.ptr14, i8* %14)
  %15 = load i8*, i8** %result, align 8
  %16 = load i32, i32* %len1, align 4
  %17 = load i32, i32* %len2, align 4
  %add16 = add nsw i32 %16, %17
  %18 = load i32, i32* %len3, align 4
  %add17 = add nsw i32 %add16, %18
  %idxprom = sext i32 %add17 to i64
  %arrayidx = getelementptr inbounds i8, i8* %15, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  %19 = load i8*, i8** %result, align 8
  ret i8* %19
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @strSeparator(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i8* @strchr(i8* %0, i32 47)
  ret i8* %call
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i1 immarg) #7

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @absoluteDirname(i8* %file) #0 {
entry:
  %file.addr = alloca i8*, align 8
  %slashp = alloca i8*, align 8
  %res = alloca i8*, align 8
  %save = alloca i8, align 1
  store i8* %file, i8** %file.addr, align 8
  %0 = load i8*, i8** %file.addr, align 8
  %call = call i8* @strRSeparator(i8* %0)
  store i8* %call, i8** %slashp, align 8
  %1 = load i8*, i8** %slashp, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** @CurrentDirectory, align 8
  %call1 = call i8* @eStrdup(i8* %2)
  store i8* %call1, i8** %res, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load i8*, i8** %slashp, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 1
  %4 = load i8, i8* %arrayidx, align 1
  store i8 %4, i8* %save, align 1
  %5 = load i8*, i8** %slashp, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %5, i64 1
  store i8 0, i8* %arrayidx2, align 1
  %6 = load i8*, i8** %file.addr, align 8
  %call3 = call i8* @absoluteFilename(i8* %6)
  store i8* %call3, i8** %res, align 8
  %7 = load i8, i8* %save, align 1
  %8 = load i8*, i8** %slashp, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %8, i64 1
  store i8 %7, i8* %arrayidx4, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load i8*, i8** %res, align 8
  ret i8* %9
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @relativeFilename(i8* %file, i8* %dir) #0 {
entry:
  %retval = alloca i8*, align 8
  %file.addr = alloca i8*, align 8
  %dir.addr = alloca i8*, align 8
  %fp = alloca i8*, align 8
  %dp = alloca i8*, align 8
  %absdir = alloca i8*, align 8
  %res = alloca i8*, align 8
  %i = alloca i32, align 4
  %parent = alloca [4 x i8], align 1
  store i8* %file, i8** %file.addr, align 8
  store i8* %dir, i8** %dir.addr, align 8
  %0 = load i8*, i8** %file.addr, align 8
  %call = call i8* @absoluteFilename(i8* %0)
  store i8* %call, i8** %absdir, align 8
  %1 = load i8*, i8** %absdir, align 8
  store i8* %1, i8** %fp, align 8
  %2 = load i8*, i8** %dir.addr, align 8
  store i8* %2, i8** %dp, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = load i8*, i8** %fp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr, i8** %fp, align 8
  %4 = load i8, i8* %3, align 1
  %conv = sext i8 %4 to i32
  %5 = load i8*, i8** %dp, align 8
  %incdec.ptr1 = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr1, i8** %dp, align 8
  %6 = load i8, i8* %5, align 1
  %conv2 = sext i8 %6 to i32
  %cmp = icmp eq i32 %conv, %conv2
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %7 = load i8*, i8** %fp, align 8
  %incdec.ptr4 = getelementptr inbounds i8, i8* %7, i32 -1
  store i8* %incdec.ptr4, i8** %fp, align 8
  %8 = load i8*, i8** %dp, align 8
  %incdec.ptr5 = getelementptr inbounds i8, i8* %8, i32 -1
  store i8* %incdec.ptr5, i8** %dp, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %while.end
  %9 = load i8*, i8** %fp, align 8
  %10 = load i8*, i8** %absdir, align 8
  %cmp6 = icmp eq i8* %9, %10
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %11 = load i8*, i8** %absdir, align 8
  store i8* %11, i8** %retval, align 8
  br label %return

if.end:                                           ; preds = %do.body
  %12 = load i8*, i8** %fp, align 8
  %incdec.ptr8 = getelementptr inbounds i8, i8* %12, i32 -1
  store i8* %incdec.ptr8, i8** %fp, align 8
  %13 = load i8*, i8** %dp, align 8
  %incdec.ptr9 = getelementptr inbounds i8, i8* %13, i32 -1
  store i8* %incdec.ptr9, i8** %dp, align 8
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %14 = load i8*, i8** %fp, align 8
  %15 = load i8, i8* %14, align 1
  %conv10 = sext i8 %15 to i32
  %call11 = call zeroext i1 @isPathSeparator(i32 %conv10)
  %lnot = xor i1 %call11, true
  br i1 %lnot, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %i, align 4
  br label %while.cond12

while.cond12:                                     ; preds = %while.body16, %do.end
  %16 = load i8*, i8** %dp, align 8
  %add.ptr = getelementptr inbounds i8, i8* %16, i64 1
  %call13 = call i8* @strSeparator(i8* %add.ptr)
  store i8* %call13, i8** %dp, align 8
  %cmp14 = icmp ne i8* %call13, null
  br i1 %cmp14, label %while.body16, label %while.end17

while.body16:                                     ; preds = %while.cond12
  %17 = load i32, i32* %i, align 4
  %add = add nsw i32 %17, 1
  store i32 %add, i32* %i, align 4
  br label %while.cond12

while.end17:                                      ; preds = %while.cond12
  %18 = load i32, i32* %i, align 4
  %mul = mul nsw i32 3, %18
  %conv18 = sext i32 %mul to i64
  %19 = load i8*, i8** %fp, align 8
  %add.ptr19 = getelementptr inbounds i8, i8* %19, i64 1
  %call20 = call i64 @strlen(i8* %add.ptr19)
  %add21 = add i64 %conv18, %call20
  %add22 = add i64 %add21, 1
  %mul23 = mul i64 %add22, 1
  %call24 = call i8* @eMalloc(i64 %mul23)
  store i8* %call24, i8** %res, align 8
  %20 = load i8*, i8** %res, align 8
  %arrayidx = getelementptr inbounds i8, i8* %20, i64 0
  store i8 0, i8* %arrayidx, align 1
  br label %while.cond25

while.cond25:                                     ; preds = %while.body28, %while.end17
  %21 = load i32, i32* %i, align 4
  %dec = add nsw i32 %21, -1
  store i32 %dec, i32* %i, align 4
  %cmp26 = icmp sgt i32 %21, 0
  br i1 %cmp26, label %while.body28, label %while.end30

while.body28:                                     ; preds = %while.cond25
  %22 = bitcast [4 x i8]* %parent to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %22, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @__const.relativeFilename.parent, i32 0, i32 0), i64 4, i1 false)
  %23 = load i8*, i8** %res, align 8
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %parent, i64 0, i64 0
  %call29 = call i8* @strcat(i8* %23, i8* %arraydecay)
  br label %while.cond25

while.end30:                                      ; preds = %while.cond25
  %24 = load i8*, i8** %res, align 8
  %25 = load i8*, i8** %fp, align 8
  %add.ptr31 = getelementptr inbounds i8, i8* %25, i64 1
  %call32 = call i8* @strcat(i8* %24, i8* %add.ptr31)
  %26 = load i8*, i8** %absdir, align 8
  call void @eFree(i8* %26)
  %27 = load i8*, i8** %res, align 8
  store i8* %27, i8** %retval, align 8
  br label %return

return:                                           ; preds = %while.end30, %if.then
  %28 = load i8*, i8** %retval, align 8
  ret i8* %28
}

declare i8* @strcat(i8*, i8*) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct._MIO* @tempFile(i8* %mode, i8** %pName) #0 {
entry:
  %mode.addr = alloca i8*, align 8
  %pName.addr = alloca i8**, align 8
  %name = alloca i8*, align 8
  %fp = alloca %struct.__sFILE*, align 8
  %mio = alloca %struct._MIO*, align 8
  %fd = alloca i32, align 4
  %pattern = alloca i8*, align 8
  %tmpdir = alloca i8*, align 8
  %file = alloca %struct.fileStatus*, align 8
  store i8* %mode, i8** %mode.addr, align 8
  store i8** %pName, i8*** %pName.addr, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8** %pattern, align 8
  store i8* null, i8** %tmpdir, align 8
  %0 = load i8*, i8** @ExecutableProgram, align 8
  %call = call %struct.fileStatus* @eStat(i8* %0)
  store %struct.fileStatus* %call, %struct.fileStatus** %file, align 8
  %1 = load %struct.fileStatus*, %struct.fileStatus** %file, align 8
  %isSetuid = getelementptr inbounds %struct.fileStatus, %struct.fileStatus* %1, i32 0, i32 6
  %2 = load i8, i8* %isSetuid, align 1
  %tobool = trunc i8 %2 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  store i8* %call1, i8** %tmpdir, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %tmpdir, align 8
  %cmp = icmp eq i8* %3, null
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i8** %tmpdir, align 8
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %4 = load i8*, i8** %tmpdir, align 8
  %call4 = call i64 @strlen(i8* %4)
  %add = add i64 %call4, 1
  %add5 = add i64 %add, 11
  %add6 = add i64 %add5, 1
  %mul = mul i64 %add6, 1
  %call7 = call i8* @eMalloc(i64 %mul)
  store i8* %call7, i8** %name, align 8
  %5 = load i8*, i8** %name, align 8
  %6 = load i8*, i8** %tmpdir, align 8
  %call8 = call i32 (i8*, i8*, ...) @sprintf(i8* %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* %6, i32 47, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  %7 = load i8*, i8** %name, align 8
  %call9 = call i32 @mkstemp(i8* %7)
  store i32 %call9, i32* %fd, align 4
  %8 = load %struct.fileStatus*, %struct.fileStatus** %file, align 8
  call void @eStatFree(%struct.fileStatus* %8)
  %9 = load i32, i32* %fd, align 4
  %cmp10 = icmp eq i32 %9, -1
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end3
  %10 = load i8*, i8** %name, align 8
  call void (i32, i8*, ...) @error(i32 5, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i8* %10)
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end3
  %11 = load i32, i32* %fd, align 4
  %12 = load i8*, i8** %mode.addr, align 8
  %call13 = call %struct.__sFILE* @"\01_fdopen"(i32 %11, i8* %12)
  store %struct.__sFILE* %call13, %struct.__sFILE** %fp, align 8
  %13 = load %struct.__sFILE*, %struct.__sFILE** %fp, align 8
  %cmp14 = icmp eq %struct.__sFILE* %13, null
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end12
  call void (i32, i8*, ...) @error(i32 5, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0))
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end12
  %14 = load %struct.__sFILE*, %struct.__sFILE** %fp, align 8
  %call17 = call %struct._MIO* @mio_new_fp(%struct.__sFILE* %14, i32 (%struct.__sFILE*)* @fclose)
  store %struct._MIO* %call17, %struct._MIO** %mio, align 8
  br label %do.body

do.body:                                          ; preds = %if.end16
  br label %do.end

do.end:                                           ; preds = %do.body
  %15 = load i8*, i8** %name, align 8
  %16 = load i8**, i8*** %pName.addr, align 8
  store i8* %15, i8** %16, align 8
  %17 = load %struct._MIO*, %struct._MIO** %mio, align 8
  ret %struct._MIO* %17
}

declare i8* @getenv(i8*) #2

declare i32 @mkstemp(i8*) #2

declare %struct.__sFILE* @"\01_fdopen"(i32, i8*) #2

declare %struct._MIO* @mio_new_fp(%struct.__sFILE*, i32 (%struct.__sFILE*)*) #2

declare i32 @fclose(%struct.__sFILE*) #2

declare void @vStringResize(%struct.sVString*, i64) #2

declare i8* @strchr(i8*, i32) #2

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { allocsize(0) "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { allocsize(0,1) "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { allocsize(1) "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { cold "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { argmemonly nounwind willreturn }
attributes #8 = { allocsize(0) }
attributes #9 = { allocsize(0,1) }
attributes #10 = { allocsize(1) }
attributes #11 = { nounwind readonly }
attributes #12 = { cold }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 10.0.0 (https://github.com/holzschu/clang.git 0cfc630fbdb62e96720b611a57123ef3eb13e297) (https://github.com/holzschu/llvm.git 0d8a71e39b28502c24718f7e74b5acbcfe36dfe0)"}
