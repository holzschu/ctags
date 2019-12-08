; ModuleID = 'sort.c'
source_filename = "sort.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-ios11.0.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.sOptionValues = type { i8, i8, i8, i32, i8, i32, i8, i8, %struct.sFmtElement*, i8*, i8*, %struct.sPtrArray*, %struct.sPtrArray*, i32, i8*, i8*, i32, i8, i8, i8*, i32, i8, i8, i8, i8, i8, i8, i32, i8, i32, i32 }
%struct.sFmtElement = type opaque
%struct.sPtrArray = type opaque
%struct._MIO = type opaque
%struct.sVString = type { i64, i64, i8* }

@thread_stdout = external thread_local global %struct.__sFILE*, align 8
@.str = private unnamed_addr constant [21 x i8] c"cannot sort tag file\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@Option = external constant %struct.sOptionValues, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"w\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @catFile(%struct._MIO* %mio) #0 {
entry:
  %mio.addr = alloca %struct._MIO*, align 8
  %c = alloca i32, align 4
  store %struct._MIO* %mio, %struct._MIO** %mio.addr, align 8
  %0 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %cmp = icmp ne %struct._MIO* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %call = call i32 @mio_seek(%struct._MIO* %1, i64 0, i32 0)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %2 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %call1 = call i32 @mio_getc(%struct._MIO* %2)
  store i32 %call1, i32* %c, align 4
  %cmp2 = icmp ne i32 %call1, -1
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32, i32* %c, align 4
  %4 = load %struct.__sFILE*, %struct.__sFILE** @thread_stdout, align 8
  %call3 = call i32 @ios_fputc(i32 %3, %struct.__sFILE* %4)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %5 = load %struct.__sFILE*, %struct.__sFILE** @thread_stdout, align 8
  %call4 = call i32 @ios_fflush(%struct.__sFILE* %5)
  br label %if.end

if.end:                                           ; preds = %while.end, %entry
  ret void
}

declare i32 @mio_seek(%struct._MIO*, i64, i32) #1

declare i32 @mio_getc(%struct._MIO*) #1

declare i32 @ios_fputc(i32, %struct.__sFILE*) #1

declare i32 @ios_fflush(%struct.__sFILE*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @failedSort(%struct._MIO* %mio, i8* %msg) #0 {
entry:
  %mio.addr = alloca %struct._MIO*, align 8
  %msg.addr = alloca i8*, align 8
  %cannotSort = alloca i8*, align 8
  store %struct._MIO* %mio, %struct._MIO** %mio.addr, align 8
  store i8* %msg, i8** %msg.addr, align 8
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8** %cannotSort, align 8
  %0 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %cmp = icmp ne %struct._MIO* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %call = call i32 @mio_free(%struct._MIO* %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i8*, i8** %msg.addr, align 8
  %cmp1 = icmp eq i8* %2, null
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void (i32, i8*, ...) @error(i32 5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0))
  br label %if.end3

if.else:                                          ; preds = %if.end
  %3 = load i8*, i8** %msg.addr, align 8
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %3, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0))
  br label %if.end3

if.end3:                                          ; preds = %if.else, %if.then2
  ret void
}

declare i32 @mio_free(%struct._MIO*) #1

declare void @error(i32, i8*, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @internalSortTags(i1 zeroext %toStdout, %struct._MIO* %mio, i64 %numTags) #0 {
entry:
  %toStdout.addr = alloca i8, align 1
  %mio.addr = alloca %struct._MIO*, align 8
  %numTags.addr = alloca i64, align 8
  %vLine = alloca %struct.sVString*, align 8
  %line = alloca i8*, align 8
  %i = alloca i64, align 8
  %cmpFunc = alloca i32 (i8*, i8*)*, align 8
  %newlineReplaced = alloca i8, align 1
  %tableSize = alloca i64, align 8
  %table = alloca i8**, align 8
  %stringSize = alloca i64, align 8
  %frombool = zext i1 %toStdout to i8
  store i8 %frombool, i8* %toStdout.addr, align 1
  store %struct._MIO* %mio, %struct._MIO** %mio.addr, align 8
  store i64 %numTags, i64* %numTags.addr, align 8
  %call = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call, %struct.sVString** %vLine, align 8
  store i8 0, i8* %newlineReplaced, align 1
  %0 = load i64, i64* %numTags.addr, align 8
  %mul = mul i64 %0, 8
  store i64 %mul, i64* %tableSize, align 8
  %1 = load i64, i64* %tableSize, align 8
  %call1 = call i8* @malloc(i64 %1) #3
  %2 = bitcast i8* %call1 to i8**
  store i8** %2, i8*** %table, align 8
  %3 = load i32, i32* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 5), align 4
  %cmp = icmp eq i32 %3, 2
  %4 = zext i1 %cmp to i64
  %cond = select i1 %cmp, i32 (i8*, i8*)* @compareTagsFolded, i32 (i8*, i8*)* @compareTags
  store i32 (i8*, i8*)* %cond, i32 (i8*, i8*)** %cmpFunc, align 8
  %5 = load i8**, i8*** %table, align 8
  %cmp2 = icmp eq i8** %5, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  call void @failedSort(%struct._MIO* %6, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end39, %if.end
  %7 = load i64, i64* %i, align 8
  %8 = load i64, i64* %numTags.addr, align 8
  %cmp3 = icmp ult i64 %7, %8
  br i1 %cmp3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %9 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %call4 = call i32 @mio_eof(%struct._MIO* %9)
  %tobool = icmp ne i32 %call4, 0
  %lnot = xor i1 %tobool, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %10 = phi i1 [ false, %for.cond ], [ %lnot, %land.rhs ]
  br i1 %10, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %11 = load %struct.sVString*, %struct.sVString** %vLine, align 8
  %12 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %call5 = call i8* @readLineRaw(%struct.sVString* %11, %struct._MIO* %12)
  store i8* %call5, i8** %line, align 8
  %13 = load i8*, i8** %line, align 8
  %cmp6 = icmp eq i8* %13, null
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %for.body
  %14 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %call8 = call i32 @mio_eof(%struct._MIO* %14)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.end11, label %if.then10

if.then10:                                        ; preds = %if.then7
  %15 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  call void @failedSort(%struct._MIO* %15, i8* null)
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.then7
  br label %for.end

if.else:                                          ; preds = %for.body
  %16 = load i8*, i8** %line, align 8
  %17 = load i8, i8* %16, align 1
  %conv = sext i8 %17 to i32
  %cmp12 = icmp eq i32 %conv, 0
  br i1 %cmp12, label %if.then17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %18 = load i8*, i8** %line, align 8
  %call14 = call i32 @strcmp(i8* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %cmp15 = icmp eq i32 %call14, 0
  br i1 %cmp15, label %if.then17, label %if.else18

if.then17:                                        ; preds = %lor.lhs.false, %if.else
  br label %if.end38

if.else18:                                        ; preds = %lor.lhs.false
  %19 = load i8*, i8** %line, align 8
  %call19 = call i64 @strlen(i8* %19)
  %add = add i64 %call19, 1
  store i64 %add, i64* %stringSize, align 8
  %20 = load i64, i64* %stringSize, align 8
  %call20 = call i8* @malloc(i64 %20) #3
  %21 = load i8**, i8*** %table, align 8
  %22 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %21, i64 %22
  store i8* %call20, i8** %arrayidx, align 8
  %23 = load i8**, i8*** %table, align 8
  %24 = load i64, i64* %i, align 8
  %arrayidx21 = getelementptr inbounds i8*, i8** %23, i64 %24
  %25 = load i8*, i8** %arrayidx21, align 8
  %cmp22 = icmp eq i8* %25, null
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.else18
  %26 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  call void @failedSort(%struct._MIO* %26, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.else18
  %27 = load i8**, i8*** %table, align 8
  %28 = load i64, i64* %i, align 8
  %arrayidx26 = getelementptr inbounds i8*, i8** %27, i64 %28
  %29 = load i8*, i8** %arrayidx26, align 8
  %30 = load i8*, i8** %line, align 8
  %call27 = call i8* @strcpy(i8* %29, i8* %30)
  %31 = load i8**, i8*** %table, align 8
  %32 = load i64, i64* %i, align 8
  %arrayidx28 = getelementptr inbounds i8*, i8** %31, i64 %32
  %33 = load i8*, i8** %arrayidx28, align 8
  %34 = load i64, i64* %stringSize, align 8
  %sub = sub i64 %34, 2
  %arrayidx29 = getelementptr inbounds i8, i8* %33, i64 %sub
  %35 = load i8, i8* %arrayidx29, align 1
  %conv30 = sext i8 %35 to i32
  %cmp31 = icmp eq i32 %conv30, 10
  br i1 %cmp31, label %if.then33, label %if.end37

if.then33:                                        ; preds = %if.end25
  %36 = load i8**, i8*** %table, align 8
  %37 = load i64, i64* %i, align 8
  %arrayidx34 = getelementptr inbounds i8*, i8** %36, i64 %37
  %38 = load i8*, i8** %arrayidx34, align 8
  %39 = load i64, i64* %stringSize, align 8
  %sub35 = sub i64 %39, 2
  %arrayidx36 = getelementptr inbounds i8, i8* %38, i64 %sub35
  store i8 0, i8* %arrayidx36, align 1
  store i8 1, i8* %newlineReplaced, align 1
  br label %if.end37

if.end37:                                         ; preds = %if.then33, %if.end25
  %40 = load i64, i64* %i, align 8
  %inc = add i64 %40, 1
  store i64 %inc, i64* %i, align 8
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %if.then17
  br label %if.end39

if.end39:                                         ; preds = %if.end38
  br label %for.cond

for.end:                                          ; preds = %if.end11, %land.end
  %41 = load i64, i64* %i, align 8
  store i64 %41, i64* %numTags.addr, align 8
  %42 = load %struct.sVString*, %struct.sVString** %vLine, align 8
  call void @vStringDelete(%struct.sVString* %42)
  %43 = load i8**, i8*** %table, align 8
  %44 = bitcast i8** %43 to i8*
  %45 = load i64, i64* %numTags.addr, align 8
  %46 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %cmpFunc, align 8
  call void @qsort(i8* %44, i64 %45, i64 8, i32 (i8*, i8*)* %46)
  %47 = load i8**, i8*** %table, align 8
  %48 = load i64, i64* %numTags.addr, align 8
  %49 = load i8, i8* %toStdout.addr, align 1
  %tobool40 = trunc i8 %49 to i1
  %50 = load i8, i8* %newlineReplaced, align 1
  %tobool41 = trunc i8 %50 to i1
  call void @writeSortedTags(i8** %47, i64 %48, i1 zeroext %tobool40, i1 zeroext %tobool41)
  store i64 0, i64* %i, align 8
  br label %for.cond42

for.cond42:                                       ; preds = %for.inc, %for.end
  %51 = load i64, i64* %i, align 8
  %52 = load i64, i64* %numTags.addr, align 8
  %cmp43 = icmp ult i64 %51, %52
  br i1 %cmp43, label %for.body45, label %for.end48

for.body45:                                       ; preds = %for.cond42
  %53 = load i8**, i8*** %table, align 8
  %54 = load i64, i64* %i, align 8
  %arrayidx46 = getelementptr inbounds i8*, i8** %53, i64 %54
  %55 = load i8*, i8** %arrayidx46, align 8
  call void @free(i8* %55)
  br label %for.inc

for.inc:                                          ; preds = %for.body45
  %56 = load i64, i64* %i, align 8
  %inc47 = add i64 %56, 1
  store i64 %inc47, i64* %i, align 8
  br label %for.cond42

for.end48:                                        ; preds = %for.cond42
  %57 = load i8**, i8*** %table, align 8
  %58 = bitcast i8** %57 to i8*
  call void @free(i8* %58)
  ret void
}

declare %struct.sVString* @vStringNew() #1

; Function Attrs: allocsize(0)
declare i8* @malloc(i64) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @compareTagsFolded(i8* %one, i8* %two) #0 {
entry:
  %one.addr = alloca i8*, align 8
  %two.addr = alloca i8*, align 8
  %line1 = alloca i8*, align 8
  %line2 = alloca i8*, align 8
  store i8* %one, i8** %one.addr, align 8
  store i8* %two, i8** %two.addr, align 8
  %0 = load i8*, i8** %one.addr, align 8
  %1 = bitcast i8* %0 to i8**
  %2 = load i8*, i8** %1, align 8
  store i8* %2, i8** %line1, align 8
  %3 = load i8*, i8** %two.addr, align 8
  %4 = bitcast i8* %3 to i8**
  %5 = load i8*, i8** %4, align 8
  store i8* %5, i8** %line2, align 8
  %6 = load i8*, i8** %line1, align 8
  %7 = load i8*, i8** %line2, align 8
  %call = call i32 @struppercmp(i8* %6, i8* %7)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @compareTags(i8* %one, i8* %two) #0 {
entry:
  %one.addr = alloca i8*, align 8
  %two.addr = alloca i8*, align 8
  %line1 = alloca i8*, align 8
  %line2 = alloca i8*, align 8
  store i8* %one, i8** %one.addr, align 8
  store i8* %two, i8** %two.addr, align 8
  %0 = load i8*, i8** %one.addr, align 8
  %1 = bitcast i8* %0 to i8**
  %2 = load i8*, i8** %1, align 8
  store i8* %2, i8** %line1, align 8
  %3 = load i8*, i8** %two.addr, align 8
  %4 = bitcast i8* %3 to i8**
  %5 = load i8*, i8** %4, align 8
  store i8* %5, i8** %line2, align 8
  %6 = load i8*, i8** %line1, align 8
  %7 = load i8*, i8** %line2, align 8
  %call = call i32 @strcmp(i8* %6, i8* %7)
  ret i32 %call
}

declare i32 @mio_eof(%struct._MIO*) #1

declare i8* @readLineRaw(%struct.sVString*, %struct._MIO*) #1

declare i32 @strcmp(i8*, i8*) #1

declare i64 @strlen(i8*) #1

declare i8* @strcpy(i8*, i8*) #1

declare void @vStringDelete(%struct.sVString*) #1

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @writeSortedTags(i8** %table, i64 %numTags, i1 zeroext %toStdout, i1 zeroext %newlineReplaced) #0 {
entry:
  %table.addr = alloca i8**, align 8
  %numTags.addr = alloca i64, align 8
  %toStdout.addr = alloca i8, align 1
  %newlineReplaced.addr = alloca i8, align 1
  %mio = alloca %struct._MIO*, align 8
  %i = alloca i64, align 8
  store i8** %table, i8*** %table.addr, align 8
  store i64 %numTags, i64* %numTags.addr, align 8
  %frombool = zext i1 %toStdout to i8
  store i8 %frombool, i8* %toStdout.addr, align 1
  %frombool1 = zext i1 %newlineReplaced to i8
  store i8 %frombool1, i8* %newlineReplaced.addr, align 1
  %0 = load i8, i8* %toStdout.addr, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.__sFILE*, %struct.__sFILE** @thread_stdout, align 8
  %call = call %struct._MIO* @mio_new_fp(%struct.__sFILE* %1, i32 (%struct.__sFILE*)* null)
  store %struct._MIO* %call, %struct._MIO** %mio, align 8
  br label %if.end5

if.else:                                          ; preds = %entry
  %call2 = call i8* @tagFileName()
  %call3 = call %struct._MIO* @mio_new_file(i8* %call2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store %struct._MIO* %call3, %struct._MIO** %mio, align 8
  %2 = load %struct._MIO*, %struct._MIO** %mio, align 8
  %cmp = icmp eq %struct._MIO* %2, null
  br i1 %cmp, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.else
  %3 = load %struct._MIO*, %struct._MIO** %mio, align 8
  call void @failedSort(%struct._MIO* %3, i8* null)
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.else
  br label %if.end5

if.end5:                                          ; preds = %if.end, %if.then
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end5
  %4 = load i64, i64* %i, align 8
  %5 = load i64, i64* %numTags.addr, align 8
  %cmp6 = icmp ult i64 %4, %5
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i64, i64* %i, align 8
  %cmp7 = icmp eq i64 %6, 0
  br i1 %cmp7, label %if.then13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %7 = load i8, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 7), align 1
  %tobool8 = trunc i8 %7 to i1
  br i1 %tobool8, label %if.then13, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %8 = load i8**, i8*** %table.addr, align 8
  %9 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %8, i64 %9
  %10 = load i8*, i8** %arrayidx, align 8
  %11 = load i8**, i8*** %table.addr, align 8
  %12 = load i64, i64* %i, align 8
  %sub = sub i64 %12, 1
  %arrayidx10 = getelementptr inbounds i8*, i8** %11, i64 %sub
  %13 = load i8*, i8** %arrayidx10, align 8
  %call11 = call i32 @strcmp(i8* %10, i8* %13)
  %cmp12 = icmp ne i32 %call11, 0
  br i1 %cmp12, label %if.then13, label %if.end24

if.then13:                                        ; preds = %lor.lhs.false9, %lor.lhs.false, %for.body
  %14 = load %struct._MIO*, %struct._MIO** %mio, align 8
  %15 = load i8**, i8*** %table.addr, align 8
  %16 = load i64, i64* %i, align 8
  %arrayidx14 = getelementptr inbounds i8*, i8** %15, i64 %16
  %17 = load i8*, i8** %arrayidx14, align 8
  %call15 = call i32 @mio_puts(%struct._MIO* %14, i8* %17)
  %cmp16 = icmp eq i32 %call15, -1
  br i1 %cmp16, label %if.then17, label %if.else18

if.then17:                                        ; preds = %if.then13
  %18 = load %struct._MIO*, %struct._MIO** %mio, align 8
  call void @failedSort(%struct._MIO* %18, i8* null)
  br label %if.end23

if.else18:                                        ; preds = %if.then13
  %19 = load i8, i8* %newlineReplaced.addr, align 1
  %tobool19 = trunc i8 %19 to i1
  br i1 %tobool19, label %if.then20, label %if.end22

if.then20:                                        ; preds = %if.else18
  %20 = load %struct._MIO*, %struct._MIO** %mio, align 8
  %call21 = call i32 @mio_putc(%struct._MIO* %20, i32 10)
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.else18
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %if.then17
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %lor.lhs.false9
  br label %for.inc

for.inc:                                          ; preds = %if.end24
  %21 = load i64, i64* %i, align 8
  %inc = add i64 %21, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load i8, i8* %toStdout.addr, align 1
  %tobool25 = trunc i8 %22 to i1
  br i1 %tobool25, label %if.then26, label %if.end28

if.then26:                                        ; preds = %for.end
  %23 = load %struct._MIO*, %struct._MIO** %mio, align 8
  %call27 = call i32 @mio_flush(%struct._MIO* %23)
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %for.end
  %24 = load %struct._MIO*, %struct._MIO** %mio, align 8
  %call29 = call i32 @mio_free(%struct._MIO* %24)
  ret void
}

declare void @free(i8*) #1

declare i32 @struppercmp(i8*, i8*) #1

declare %struct._MIO* @mio_new_fp(%struct.__sFILE*, i32 (%struct.__sFILE*)*) #1

declare %struct._MIO* @mio_new_file(i8*, i8*) #1

declare i8* @tagFileName() #1

declare i32 @mio_puts(%struct._MIO*, i8*) #1

declare i32 @mio_putc(%struct._MIO*, i32) #1

declare i32 @mio_flush(%struct._MIO*) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { allocsize(0) "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 10.0.0 (https://github.com/holzschu/clang.git 0cfc630fbdb62e96720b611a57123ef3eb13e297) (https://github.com/holzschu/llvm.git 0d8a71e39b28502c24718f7e74b5acbcfe36dfe0)"}
