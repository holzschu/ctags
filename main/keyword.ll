; ModuleID = 'keyword.c'
source_filename = "keyword.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-ios11.0.0"

%struct.sHashEntry = type { %struct.sHashEntry*, i8*, i32, i32 }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@HashTable = internal global %struct.sHashEntry** null, align 8
@allocated = internal global i8 0, align 1
@.str = private unnamed_addr constant [7 x i8] c"%s\09%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @addKeyword(i8* %string, i32 %language, i32 %value) #0 {
entry:
  %string.addr = alloca i8*, align 8
  %language.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %entry1 = alloca %struct.sHashEntry*, align 8
  %table = alloca %struct.sHashEntry**, align 8
  %prev = alloca %struct.sHashEntry*, align 8
  store i8* %string, i8** %string.addr, align 8
  store i32 %language, i32* %language.addr, align 4
  store i32 %value, i32* %value.addr, align 4
  %0 = load i8*, i8** %string.addr, align 8
  %1 = load i32, i32* %language.addr, align 4
  %call = call i32 @hashValue(i8* %0, i32 %1)
  %rem = urem i32 %call, 2039
  store i32 %rem, i32* %index, align 4
  %2 = load i32, i32* %index, align 4
  %conv = zext i32 %2 to i64
  %call2 = call %struct.sHashEntry* @getHashTableEntry(i64 %conv)
  store %struct.sHashEntry* %call2, %struct.sHashEntry** %entry1, align 8
  %3 = load %struct.sHashEntry*, %struct.sHashEntry** %entry1, align 8
  %cmp = icmp eq %struct.sHashEntry* %3, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call4 = call %struct.sHashEntry** @getHashTable()
  store %struct.sHashEntry** %call4, %struct.sHashEntry*** %table, align 8
  %4 = load i8*, i8** %string.addr, align 8
  %5 = load i32, i32* %language.addr, align 4
  %6 = load i32, i32* %value.addr, align 4
  %call5 = call %struct.sHashEntry* @newEntry(i8* %4, i32 %5, i32 %6)
  %7 = load %struct.sHashEntry**, %struct.sHashEntry*** %table, align 8
  %8 = load i32, i32* %index, align 4
  %idxprom = zext i32 %8 to i64
  %arrayidx = getelementptr inbounds %struct.sHashEntry*, %struct.sHashEntry** %7, i64 %idxprom
  store %struct.sHashEntry* %call5, %struct.sHashEntry** %arrayidx, align 8
  br label %if.end24

if.else:                                          ; preds = %entry
  store %struct.sHashEntry* null, %struct.sHashEntry** %prev, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.else
  %9 = load %struct.sHashEntry*, %struct.sHashEntry** %entry1, align 8
  %cmp6 = icmp ne %struct.sHashEntry* %9, null
  br i1 %cmp6, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load i32, i32* %language.addr, align 4
  %11 = load %struct.sHashEntry*, %struct.sHashEntry** %entry1, align 8
  %language8 = getelementptr inbounds %struct.sHashEntry, %struct.sHashEntry* %11, i32 0, i32 2
  %12 = load i32, i32* %language8, align 8
  %cmp9 = icmp eq i32 %10, %12
  br i1 %cmp9, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.body
  %13 = load i8*, i8** %string.addr, align 8
  %14 = load %struct.sHashEntry*, %struct.sHashEntry** %entry1, align 8
  %string11 = getelementptr inbounds %struct.sHashEntry, %struct.sHashEntry* %14, i32 0, i32 1
  %15 = load i8*, i8** %string11, align 8
  %call12 = call i32 @strcmp(i8* %13, i8* %15)
  %cmp13 = icmp eq i32 %call12, 0
  br i1 %cmp13, label %if.then15, label %if.end

if.then15:                                        ; preds = %land.lhs.true
  br label %do.body

do.body:                                          ; preds = %if.then15
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %if.end

if.end:                                           ; preds = %do.end, %land.lhs.true, %while.body
  %16 = load %struct.sHashEntry*, %struct.sHashEntry** %entry1, align 8
  store %struct.sHashEntry* %16, %struct.sHashEntry** %prev, align 8
  %17 = load %struct.sHashEntry*, %struct.sHashEntry** %entry1, align 8
  %next = getelementptr inbounds %struct.sHashEntry, %struct.sHashEntry* %17, i32 0, i32 0
  %18 = load %struct.sHashEntry*, %struct.sHashEntry** %next, align 8
  store %struct.sHashEntry* %18, %struct.sHashEntry** %entry1, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %19 = load %struct.sHashEntry*, %struct.sHashEntry** %entry1, align 8
  %cmp16 = icmp eq %struct.sHashEntry* %19, null
  br i1 %cmp16, label %if.then18, label %if.end23

if.then18:                                        ; preds = %while.end
  br label %do.body19

do.body19:                                        ; preds = %if.then18
  br label %do.end20

do.end20:                                         ; preds = %do.body19
  %20 = load i8*, i8** %string.addr, align 8
  %21 = load i32, i32* %language.addr, align 4
  %22 = load i32, i32* %value.addr, align 4
  %call21 = call %struct.sHashEntry* @newEntry(i8* %20, i32 %21, i32 %22)
  %23 = load %struct.sHashEntry*, %struct.sHashEntry** %prev, align 8
  %next22 = getelementptr inbounds %struct.sHashEntry, %struct.sHashEntry* %23, i32 0, i32 0
  store %struct.sHashEntry* %call21, %struct.sHashEntry** %next22, align 8
  br label %if.end23

if.end23:                                         ; preds = %do.end20, %while.end
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @hashValue(i8* %string, i32 %language) #0 {
entry:
  %string.addr = alloca i8*, align 8
  %language.addr = alloca i32, align 4
  %p = alloca i8*, align 8
  %h = alloca i32, align 4
  store i8* %string, i8** %string.addr, align 8
  store i32 %language, i32* %language.addr, align 4
  store i32 5381, i32* %h, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load i8*, i8** %string.addr, align 8
  store i8* %0, i8** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %1 = load i8*, i8** %p, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %h, align 4
  %shl = shl i32 %3, 5
  %4 = load i32, i32* %h, align 4
  %add = add i32 %shl, %4
  %5 = load i8*, i8** %p, align 8
  %6 = load i8, i8* %5, align 1
  %conv2 = sext i8 %6 to i32
  %call = call i32 @tolower(i32 %conv2) #3
  %add3 = add i32 %add, %call
  store i32 %add3, i32* %h, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* %h, align 4
  %shl4 = shl i32 %8, 5
  %9 = load i32, i32* %h, align 4
  %add5 = add i32 %shl4, %9
  %10 = load i32, i32* %language.addr, align 4
  %add6 = add i32 %add5, %10
  store i32 %add6, i32* %h, align 4
  %11 = load i32, i32* %h, align 4
  ret i32 %11
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct.sHashEntry* @getHashTableEntry(i64 %hashedValue) #0 {
entry:
  %hashedValue.addr = alloca i64, align 8
  %table = alloca %struct.sHashEntry**, align 8
  %entry1 = alloca %struct.sHashEntry*, align 8
  store i64 %hashedValue, i64* %hashedValue.addr, align 8
  %call = call %struct.sHashEntry** @getHashTable()
  store %struct.sHashEntry** %call, %struct.sHashEntry*** %table, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.sHashEntry**, %struct.sHashEntry*** %table, align 8
  %1 = load i64, i64* %hashedValue.addr, align 8
  %arrayidx = getelementptr inbounds %struct.sHashEntry*, %struct.sHashEntry** %0, i64 %1
  %2 = load %struct.sHashEntry*, %struct.sHashEntry** %arrayidx, align 8
  store %struct.sHashEntry* %2, %struct.sHashEntry** %entry1, align 8
  %3 = load %struct.sHashEntry*, %struct.sHashEntry** %entry1, align 8
  ret %struct.sHashEntry* %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct.sHashEntry** @getHashTable() #0 {
entry:
  %i = alloca i32, align 4
  %0 = load i8, i8* @allocated, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i8* @eMalloc(i64 16312)
  %1 = bitcast i8* %call to %struct.sHashEntry**
  store %struct.sHashEntry** %1, %struct.sHashEntry*** @HashTable, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, i32* %i, align 4
  %cmp = icmp ult i32 %2, 2039
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.sHashEntry**, %struct.sHashEntry*** @HashTable, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom = zext i32 %4 to i64
  %arrayidx = getelementptr inbounds %struct.sHashEntry*, %struct.sHashEntry** %3, i64 %idxprom
  store %struct.sHashEntry* null, %struct.sHashEntry** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i8 1, i8* @allocated, align 1
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %6 = load %struct.sHashEntry**, %struct.sHashEntry*** @HashTable, align 8
  ret %struct.sHashEntry** %6
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct.sHashEntry* @newEntry(i8* %string, i32 %language, i32 %value) #0 {
entry:
  %string.addr = alloca i8*, align 8
  %language.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  %entry1 = alloca %struct.sHashEntry*, align 8
  store i8* %string, i8** %string.addr, align 8
  store i32 %language, i32* %language.addr, align 4
  store i32 %value, i32* %value.addr, align 4
  %call = call i8* @eMalloc(i64 24)
  %0 = bitcast i8* %call to %struct.sHashEntry*
  store %struct.sHashEntry* %0, %struct.sHashEntry** %entry1, align 8
  %1 = load %struct.sHashEntry*, %struct.sHashEntry** %entry1, align 8
  %next = getelementptr inbounds %struct.sHashEntry, %struct.sHashEntry* %1, i32 0, i32 0
  store %struct.sHashEntry* null, %struct.sHashEntry** %next, align 8
  %2 = load i8*, i8** %string.addr, align 8
  %3 = load %struct.sHashEntry*, %struct.sHashEntry** %entry1, align 8
  %string2 = getelementptr inbounds %struct.sHashEntry, %struct.sHashEntry* %3, i32 0, i32 1
  store i8* %2, i8** %string2, align 8
  %4 = load i32, i32* %language.addr, align 4
  %5 = load %struct.sHashEntry*, %struct.sHashEntry** %entry1, align 8
  %language3 = getelementptr inbounds %struct.sHashEntry, %struct.sHashEntry* %5, i32 0, i32 2
  store i32 %4, i32* %language3, align 8
  %6 = load i32, i32* %value.addr, align 4
  %7 = load %struct.sHashEntry*, %struct.sHashEntry** %entry1, align 8
  %value4 = getelementptr inbounds %struct.sHashEntry, %struct.sHashEntry* %7, i32 0, i32 3
  store i32 %6, i32* %value4, align 4
  %8 = load %struct.sHashEntry*, %struct.sHashEntry** %entry1, align 8
  ret %struct.sHashEntry* %8
}

declare i32 @strcmp(i8*, i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @lookupKeyword(i8* %string, i32 %language) #0 {
entry:
  %string.addr = alloca i8*, align 8
  %language.addr = alloca i32, align 4
  store i8* %string, i8** %string.addr, align 8
  store i32 %language, i32* %language.addr, align 4
  %0 = load i8*, i8** %string.addr, align 8
  %1 = load i32, i32* %language.addr, align 4
  %call = call i32 @lookupKeywordFull(i8* %0, i1 zeroext true, i32 %1)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @lookupKeywordFull(i8* %string, i1 zeroext %caseSensitive, i32 %language) #0 {
entry:
  %string.addr = alloca i8*, align 8
  %caseSensitive.addr = alloca i8, align 1
  %language.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %entry1 = alloca %struct.sHashEntry*, align 8
  %result = alloca i32, align 4
  store i8* %string, i8** %string.addr, align 8
  %frombool = zext i1 %caseSensitive to i8
  store i8 %frombool, i8* %caseSensitive.addr, align 1
  store i32 %language, i32* %language.addr, align 4
  %0 = load i8*, i8** %string.addr, align 8
  %1 = load i32, i32* %language.addr, align 4
  %call = call i32 @hashValue(i8* %0, i32 %1)
  %rem = urem i32 %call, 2039
  store i32 %rem, i32* %index, align 4
  %2 = load i32, i32* %index, align 4
  %conv = zext i32 %2 to i64
  %call2 = call %struct.sHashEntry* @getHashTableEntry(i64 %conv)
  store %struct.sHashEntry* %call2, %struct.sHashEntry** %entry1, align 8
  store i32 -1, i32* %result, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %3 = load %struct.sHashEntry*, %struct.sHashEntry** %entry1, align 8
  %cmp = icmp ne %struct.sHashEntry* %3, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i32, i32* %language.addr, align 4
  %5 = load %struct.sHashEntry*, %struct.sHashEntry** %entry1, align 8
  %language4 = getelementptr inbounds %struct.sHashEntry, %struct.sHashEntry* %5, i32 0, i32 2
  %6 = load i32, i32* %language4, align 8
  %cmp5 = icmp eq i32 %4, %6
  br i1 %cmp5, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.body
  %7 = load i8, i8* %caseSensitive.addr, align 1
  %tobool = trunc i8 %7 to i1
  br i1 %tobool, label %land.lhs.true8, label %lor.lhs.false

land.lhs.true8:                                   ; preds = %land.lhs.true
  %8 = load i8*, i8** %string.addr, align 8
  %9 = load %struct.sHashEntry*, %struct.sHashEntry** %entry1, align 8
  %string9 = getelementptr inbounds %struct.sHashEntry, %struct.sHashEntry* %9, i32 0, i32 1
  %10 = load i8*, i8** %string9, align 8
  %call10 = call i32 @strcmp(i8* %8, i8* %10)
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true8, %land.lhs.true
  %11 = load i8, i8* %caseSensitive.addr, align 1
  %tobool13 = trunc i8 %11 to i1
  br i1 %tobool13, label %if.end, label %land.lhs.true14

land.lhs.true14:                                  ; preds = %lor.lhs.false
  %12 = load i8*, i8** %string.addr, align 8
  %13 = load %struct.sHashEntry*, %struct.sHashEntry** %entry1, align 8
  %string15 = getelementptr inbounds %struct.sHashEntry, %struct.sHashEntry* %13, i32 0, i32 1
  %14 = load i8*, i8** %string15, align 8
  %call16 = call i32 @strcasecmp(i8* %12, i8* %14)
  %cmp17 = icmp eq i32 %call16, 0
  br i1 %cmp17, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true14, %land.lhs.true8
  %15 = load %struct.sHashEntry*, %struct.sHashEntry** %entry1, align 8
  %value = getelementptr inbounds %struct.sHashEntry, %struct.sHashEntry* %15, i32 0, i32 3
  %16 = load i32, i32* %value, align 4
  store i32 %16, i32* %result, align 4
  br label %while.end

if.end:                                           ; preds = %land.lhs.true14, %lor.lhs.false, %while.body
  %17 = load %struct.sHashEntry*, %struct.sHashEntry** %entry1, align 8
  %next = getelementptr inbounds %struct.sHashEntry, %struct.sHashEntry* %17, i32 0, i32 0
  %18 = load %struct.sHashEntry*, %struct.sHashEntry** %next, align 8
  store %struct.sHashEntry* %18, %struct.sHashEntry** %entry1, align 8
  br label %while.cond

while.end:                                        ; preds = %if.then, %while.cond
  %19 = load i32, i32* %result, align 4
  ret i32 %19
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @lookupCaseKeyword(i8* %string, i32 %language) #0 {
entry:
  %string.addr = alloca i8*, align 8
  %language.addr = alloca i32, align 4
  store i8* %string, i8** %string.addr, align 8
  store i32 %language, i32* %language.addr, align 4
  %0 = load i8*, i8** %string.addr, align 8
  %1 = load i32, i32* %language.addr, align 4
  %call = call i32 @lookupKeywordFull(i8* %0, i1 zeroext false, i32 %1)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @freeKeywordTable() #0 {
entry:
  %i = alloca i32, align 4
  %entry2 = alloca %struct.sHashEntry*, align 8
  %next = alloca %struct.sHashEntry*, align 8
  %0 = load %struct.sHashEntry**, %struct.sHashEntry*** @HashTable, align 8
  %cmp = icmp ne %struct.sHashEntry** %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4
  %cmp1 = icmp ult i32 %1, 2039
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.sHashEntry**, %struct.sHashEntry*** @HashTable, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = zext i32 %3 to i64
  %arrayidx = getelementptr inbounds %struct.sHashEntry*, %struct.sHashEntry** %2, i64 %idxprom
  %4 = load %struct.sHashEntry*, %struct.sHashEntry** %arrayidx, align 8
  store %struct.sHashEntry* %4, %struct.sHashEntry** %entry2, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %5 = load %struct.sHashEntry*, %struct.sHashEntry** %entry2, align 8
  %cmp3 = icmp ne %struct.sHashEntry* %5, null
  br i1 %cmp3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load %struct.sHashEntry*, %struct.sHashEntry** %entry2, align 8
  %next4 = getelementptr inbounds %struct.sHashEntry, %struct.sHashEntry* %6, i32 0, i32 0
  %7 = load %struct.sHashEntry*, %struct.sHashEntry** %next4, align 8
  store %struct.sHashEntry* %7, %struct.sHashEntry** %next, align 8
  %8 = load %struct.sHashEntry*, %struct.sHashEntry** %entry2, align 8
  %9 = bitcast %struct.sHashEntry* %8 to i8*
  call void @eFree(i8* %9)
  %10 = load %struct.sHashEntry*, %struct.sHashEntry** %next, align 8
  store %struct.sHashEntry* %10, %struct.sHashEntry** %entry2, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %11 = load i32, i32* %i, align 4
  %inc = add i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load %struct.sHashEntry**, %struct.sHashEntry*** @HashTable, align 8
  %13 = bitcast %struct.sHashEntry** %12 to i8*
  call void @eFree(i8* %13)
  store %struct.sHashEntry** null, %struct.sHashEntry*** @HashTable, align 8
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  store i8 0, i8* @allocated, align 1
  ret void
}

declare void @eFree(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @dumpKeywordTable(%struct.__sFILE* %fp) #0 {
entry:
  %fp.addr = alloca %struct.__sFILE*, align 8
  %i = alloca i32, align 4
  %table = alloca %struct.sHashEntry**, align 8
  %entry1 = alloca %struct.sHashEntry*, align 8
  store %struct.__sFILE* %fp, %struct.__sFILE** %fp.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp ult i32 %0, 2039
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call %struct.sHashEntry** @getHashTable()
  store %struct.sHashEntry** %call, %struct.sHashEntry*** %table, align 8
  %1 = load %struct.sHashEntry**, %struct.sHashEntry*** %table, align 8
  %2 = load i32, i32* %i, align 4
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds %struct.sHashEntry*, %struct.sHashEntry** %1, i64 %idxprom
  %3 = load %struct.sHashEntry*, %struct.sHashEntry** %arrayidx, align 8
  store %struct.sHashEntry* %3, %struct.sHashEntry** %entry1, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %4 = load %struct.sHashEntry*, %struct.sHashEntry** %entry1, align 8
  %cmp2 = icmp ne %struct.sHashEntry* %4, null
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load %struct.__sFILE*, %struct.__sFILE** %fp.addr, align 8
  %6 = load %struct.sHashEntry*, %struct.sHashEntry** %entry1, align 8
  %string = getelementptr inbounds %struct.sHashEntry, %struct.sHashEntry* %6, i32 0, i32 1
  %7 = load i8*, i8** %string, align 8
  %8 = load %struct.sHashEntry*, %struct.sHashEntry** %entry1, align 8
  %language = getelementptr inbounds %struct.sHashEntry, %struct.sHashEntry* %8, i32 0, i32 2
  %9 = load i32, i32* %language, align 8
  %call3 = call i8* @getLanguageName(i32 %9)
  %call4 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %7, i8* %call3)
  %10 = load %struct.sHashEntry*, %struct.sHashEntry** %entry1, align 8
  %next = getelementptr inbounds %struct.sHashEntry, %struct.sHashEntry* %10, i32 0, i32 0
  %11 = load %struct.sHashEntry*, %struct.sHashEntry** %next, align 8
  store %struct.sHashEntry* %11, %struct.sHashEntry** %entry1, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %12 = load i32, i32* %i, align 4
  %inc = add i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare i32 @fprintf(%struct.__sFILE*, i8*, ...) #1

declare i8* @getLanguageName(i32) #1

; Function Attrs: nounwind readonly
declare i32 @tolower(i32) #2

declare i8* @eMalloc(i64) #1

declare i32 @strcasecmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 10.0.0 (https://github.com/holzschu/clang.git 0cfc630fbdb62e96720b611a57123ef3eb13e297) (https://github.com/holzschu/llvm.git 0d8a71e39b28502c24718f7e74b5acbcfe36dfe0)"}
