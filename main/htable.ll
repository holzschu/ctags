; ModuleID = 'htable.c'
source_filename = "htable.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-ios11.0.0"

%struct.sHashTable = type { %struct.sHashEntry**, i32, i32 (i8*)*, i1 (i8*, i8*)*, void (i8*)*, void (i8*)* }
%struct.sHashEntry = type { i8*, i8*, %struct.sHashEntry* }
%union.anon = type { i8* }
%union.tmp = type { i32 }

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sHashTable* @hashTableNew(i32 %size, i32 (i8*)* %hashfn, i1 (i8*, i8*)* %equalfn, void (i8*)* %keyfreefn, void (i8*)* %valfreefn) #0 {
entry:
  %size.addr = alloca i32, align 4
  %hashfn.addr = alloca i32 (i8*)*, align 8
  %equalfn.addr = alloca i1 (i8*, i8*)*, align 8
  %keyfreefn.addr = alloca void (i8*)*, align 8
  %valfreefn.addr = alloca void (i8*)*, align 8
  %htable = alloca %struct.sHashTable*, align 8
  store i32 %size, i32* %size.addr, align 4
  store i32 (i8*)* %hashfn, i32 (i8*)** %hashfn.addr, align 8
  store i1 (i8*, i8*)* %equalfn, i1 (i8*, i8*)** %equalfn.addr, align 8
  store void (i8*)* %keyfreefn, void (i8*)** %keyfreefn.addr, align 8
  store void (i8*)* %valfreefn, void (i8*)** %valfreefn.addr, align 8
  %call = call i8* @eMalloc(i64 48)
  %0 = bitcast i8* %call to %struct.sHashTable*
  store %struct.sHashTable* %0, %struct.sHashTable** %htable, align 8
  %1 = load i32, i32* %size.addr, align 4
  %2 = load %struct.sHashTable*, %struct.sHashTable** %htable, align 8
  %size1 = getelementptr inbounds %struct.sHashTable, %struct.sHashTable* %2, i32 0, i32 1
  store i32 %1, i32* %size1, align 8
  %3 = load i32, i32* %size.addr, align 4
  %conv = zext i32 %3 to i64
  %call2 = call i8* @eCalloc(i64 %conv, i64 8)
  %4 = bitcast i8* %call2 to %struct.sHashEntry**
  %5 = load %struct.sHashTable*, %struct.sHashTable** %htable, align 8
  %table = getelementptr inbounds %struct.sHashTable, %struct.sHashTable* %5, i32 0, i32 0
  store %struct.sHashEntry** %4, %struct.sHashEntry*** %table, align 8
  %6 = load i32 (i8*)*, i32 (i8*)** %hashfn.addr, align 8
  %7 = load %struct.sHashTable*, %struct.sHashTable** %htable, align 8
  %hashfn3 = getelementptr inbounds %struct.sHashTable, %struct.sHashTable* %7, i32 0, i32 2
  store i32 (i8*)* %6, i32 (i8*)** %hashfn3, align 8
  %8 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %equalfn.addr, align 8
  %9 = load %struct.sHashTable*, %struct.sHashTable** %htable, align 8
  %equalfn4 = getelementptr inbounds %struct.sHashTable, %struct.sHashTable* %9, i32 0, i32 3
  store i1 (i8*, i8*)* %8, i1 (i8*, i8*)** %equalfn4, align 8
  %10 = load void (i8*)*, void (i8*)** %keyfreefn.addr, align 8
  %11 = load %struct.sHashTable*, %struct.sHashTable** %htable, align 8
  %keyfreefn5 = getelementptr inbounds %struct.sHashTable, %struct.sHashTable* %11, i32 0, i32 4
  store void (i8*)* %10, void (i8*)** %keyfreefn5, align 8
  %12 = load void (i8*)*, void (i8*)** %valfreefn.addr, align 8
  %13 = load %struct.sHashTable*, %struct.sHashTable** %htable, align 8
  %valfreefn6 = getelementptr inbounds %struct.sHashTable, %struct.sHashTable* %13, i32 0, i32 5
  store void (i8*)* %12, void (i8*)** %valfreefn6, align 8
  %14 = load %struct.sHashTable*, %struct.sHashTable** %htable, align 8
  ret %struct.sHashTable* %14
}

declare i8* @eMalloc(i64) #1

declare i8* @eCalloc(i64, i64) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @hashTableDelete(%struct.sHashTable* %htable) #0 {
entry:
  %htable.addr = alloca %struct.sHashTable*, align 8
  store %struct.sHashTable* %htable, %struct.sHashTable** %htable.addr, align 8
  %0 = load %struct.sHashTable*, %struct.sHashTable** %htable.addr, align 8
  %tobool = icmp ne %struct.sHashTable* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.sHashTable*, %struct.sHashTable** %htable.addr, align 8
  call void @hashTableClear(%struct.sHashTable* %1)
  %2 = load %struct.sHashTable*, %struct.sHashTable** %htable.addr, align 8
  %table = getelementptr inbounds %struct.sHashTable, %struct.sHashTable* %2, i32 0, i32 0
  %3 = load %struct.sHashEntry**, %struct.sHashEntry*** %table, align 8
  %4 = bitcast %struct.sHashEntry** %3 to i8*
  call void @eFree(i8* %4)
  %5 = load %struct.sHashTable*, %struct.sHashTable** %htable.addr, align 8
  %6 = bitcast %struct.sHashTable* %5 to i8*
  call void @eFree(i8* %6)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @hashTableClear(%struct.sHashTable* %htable) #0 {
entry:
  %htable.addr = alloca %struct.sHashTable*, align 8
  %i = alloca i32, align 4
  %entry1 = alloca %struct.sHashEntry*, align 8
  store %struct.sHashTable* %htable, %struct.sHashTable** %htable.addr, align 8
  %0 = load %struct.sHashTable*, %struct.sHashTable** %htable.addr, align 8
  %tobool = icmp ne %struct.sHashTable* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %for.end

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, i32* %i, align 4
  %2 = load %struct.sHashTable*, %struct.sHashTable** %htable.addr, align 8
  %size = getelementptr inbounds %struct.sHashTable, %struct.sHashTable* %2, i32 0, i32 1
  %3 = load i32, i32* %size, align 8
  %cmp = icmp ult i32 %1, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.sHashTable*, %struct.sHashTable** %htable.addr, align 8
  %table = getelementptr inbounds %struct.sHashTable, %struct.sHashTable* %4, i32 0, i32 0
  %5 = load %struct.sHashEntry**, %struct.sHashEntry*** %table, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom = zext i32 %6 to i64
  %arrayidx = getelementptr inbounds %struct.sHashEntry*, %struct.sHashEntry** %5, i64 %idxprom
  %7 = load %struct.sHashEntry*, %struct.sHashEntry** %arrayidx, align 8
  store %struct.sHashEntry* %7, %struct.sHashEntry** %entry1, align 8
  %8 = load %struct.sHashEntry*, %struct.sHashEntry** %entry1, align 8
  %9 = load %struct.sHashTable*, %struct.sHashTable** %htable.addr, align 8
  %keyfreefn = getelementptr inbounds %struct.sHashTable, %struct.sHashTable* %9, i32 0, i32 4
  %10 = load void (i8*)*, void (i8*)** %keyfreefn, align 8
  %11 = load %struct.sHashTable*, %struct.sHashTable** %htable.addr, align 8
  %valfreefn = getelementptr inbounds %struct.sHashTable, %struct.sHashTable* %11, i32 0, i32 5
  %12 = load void (i8*)*, void (i8*)** %valfreefn, align 8
  call void @entry_reclaim(%struct.sHashEntry* %8, void (i8*)* %10, void (i8*)* %12)
  %13 = load %struct.sHashTable*, %struct.sHashTable** %htable.addr, align 8
  %table2 = getelementptr inbounds %struct.sHashTable, %struct.sHashTable* %13, i32 0, i32 0
  %14 = load %struct.sHashEntry**, %struct.sHashEntry*** %table2, align 8
  %15 = load i32, i32* %i, align 4
  %idxprom3 = zext i32 %15 to i64
  %arrayidx4 = getelementptr inbounds %struct.sHashEntry*, %struct.sHashEntry** %14, i64 %idxprom3
  store %struct.sHashEntry* null, %struct.sHashEntry** %arrayidx4, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4
  %inc = add i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  ret void
}

declare void @eFree(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @entry_reclaim(%struct.sHashEntry* %entry1, void (i8*)* %keyfreefn, void (i8*)* %valfreefn) #0 {
entry:
  %entry.addr = alloca %struct.sHashEntry*, align 8
  %keyfreefn.addr = alloca void (i8*)*, align 8
  %valfreefn.addr = alloca void (i8*)*, align 8
  store %struct.sHashEntry* %entry1, %struct.sHashEntry** %entry.addr, align 8
  store void (i8*)* %keyfreefn, void (i8*)** %keyfreefn.addr, align 8
  store void (i8*)* %valfreefn, void (i8*)** %valfreefn.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.sHashEntry*, %struct.sHashEntry** %entry.addr, align 8
  %tobool = icmp ne %struct.sHashEntry* %0, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.sHashEntry*, %struct.sHashEntry** %entry.addr, align 8
  %2 = load void (i8*)*, void (i8*)** %keyfreefn.addr, align 8
  %3 = load void (i8*)*, void (i8*)** %valfreefn.addr, align 8
  %call = call %struct.sHashEntry* @entry_destroy(%struct.sHashEntry* %1, void (i8*)* %2, void (i8*)* %3)
  store %struct.sHashEntry* %call, %struct.sHashEntry** %entry.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @hashTablePutItem(%struct.sHashTable* %htable, i8* %key, i8* %value) #0 {
entry:
  %htable.addr = alloca %struct.sHashTable*, align 8
  %key.addr = alloca i8*, align 8
  %value.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store %struct.sHashTable* %htable, %struct.sHashTable** %htable.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  %0 = load %struct.sHashTable*, %struct.sHashTable** %htable.addr, align 8
  %hashfn = getelementptr inbounds %struct.sHashTable, %struct.sHashTable* %0, i32 0, i32 2
  %1 = load i32 (i8*)*, i32 (i8*)** %hashfn, align 8
  %2 = load i8*, i8** %key.addr, align 8
  %call = call i32 %1(i8* %2)
  %3 = load %struct.sHashTable*, %struct.sHashTable** %htable.addr, align 8
  %size = getelementptr inbounds %struct.sHashTable, %struct.sHashTable* %3, i32 0, i32 1
  %4 = load i32, i32* %size, align 8
  %rem = urem i32 %call, %4
  store i32 %rem, i32* %i, align 4
  %5 = load i8*, i8** %key.addr, align 8
  %6 = load i8*, i8** %value.addr, align 8
  %7 = load %struct.sHashTable*, %struct.sHashTable** %htable.addr, align 8
  %table = getelementptr inbounds %struct.sHashTable, %struct.sHashTable* %7, i32 0, i32 0
  %8 = load %struct.sHashEntry**, %struct.sHashEntry*** %table, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom = zext i32 %9 to i64
  %arrayidx = getelementptr inbounds %struct.sHashEntry*, %struct.sHashEntry** %8, i64 %idxprom
  %10 = load %struct.sHashEntry*, %struct.sHashEntry** %arrayidx, align 8
  %call1 = call %struct.sHashEntry* @entry_new(i8* %5, i8* %6, %struct.sHashEntry* %10)
  %11 = load %struct.sHashTable*, %struct.sHashTable** %htable.addr, align 8
  %table2 = getelementptr inbounds %struct.sHashTable, %struct.sHashTable* %11, i32 0, i32 0
  %12 = load %struct.sHashEntry**, %struct.sHashEntry*** %table2, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom3 = zext i32 %13 to i64
  %arrayidx4 = getelementptr inbounds %struct.sHashEntry*, %struct.sHashEntry** %12, i64 %idxprom3
  store %struct.sHashEntry* %call1, %struct.sHashEntry** %arrayidx4, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct.sHashEntry* @entry_new(i8* %key, i8* %value, %struct.sHashEntry* %next) #0 {
entry:
  %key.addr = alloca i8*, align 8
  %value.addr = alloca i8*, align 8
  %next.addr = alloca %struct.sHashEntry*, align 8
  %entry1 = alloca %struct.sHashEntry*, align 8
  store i8* %key, i8** %key.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  store %struct.sHashEntry* %next, %struct.sHashEntry** %next.addr, align 8
  %call = call i8* @eMalloc(i64 24)
  %0 = bitcast i8* %call to %struct.sHashEntry*
  store %struct.sHashEntry* %0, %struct.sHashEntry** %entry1, align 8
  %1 = load i8*, i8** %key.addr, align 8
  %2 = load %struct.sHashEntry*, %struct.sHashEntry** %entry1, align 8
  %key2 = getelementptr inbounds %struct.sHashEntry, %struct.sHashEntry* %2, i32 0, i32 0
  store i8* %1, i8** %key2, align 8
  %3 = load i8*, i8** %value.addr, align 8
  %4 = load %struct.sHashEntry*, %struct.sHashEntry** %entry1, align 8
  %value3 = getelementptr inbounds %struct.sHashEntry, %struct.sHashEntry* %4, i32 0, i32 1
  store i8* %3, i8** %value3, align 8
  %5 = load %struct.sHashEntry*, %struct.sHashEntry** %next.addr, align 8
  %6 = load %struct.sHashEntry*, %struct.sHashEntry** %entry1, align 8
  %next4 = getelementptr inbounds %struct.sHashEntry, %struct.sHashEntry* %6, i32 0, i32 2
  store %struct.sHashEntry* %5, %struct.sHashEntry** %next4, align 8
  %7 = load %struct.sHashEntry*, %struct.sHashEntry** %entry1, align 8
  ret %struct.sHashEntry* %7
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @hashTableGetItem(%struct.sHashTable* %htable, i8* %key) #0 {
entry:
  %htable.addr = alloca %struct.sHashTable*, align 8
  %key.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store %struct.sHashTable* %htable, %struct.sHashTable** %htable.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  %0 = load %struct.sHashTable*, %struct.sHashTable** %htable.addr, align 8
  %hashfn = getelementptr inbounds %struct.sHashTable, %struct.sHashTable* %0, i32 0, i32 2
  %1 = load i32 (i8*)*, i32 (i8*)** %hashfn, align 8
  %2 = load i8*, i8** %key.addr, align 8
  %call = call i32 %1(i8* %2)
  %3 = load %struct.sHashTable*, %struct.sHashTable** %htable.addr, align 8
  %size = getelementptr inbounds %struct.sHashTable, %struct.sHashTable* %3, i32 0, i32 1
  %4 = load i32, i32* %size, align 8
  %rem = urem i32 %call, %4
  store i32 %rem, i32* %i, align 4
  %5 = load %struct.sHashTable*, %struct.sHashTable** %htable.addr, align 8
  %table = getelementptr inbounds %struct.sHashTable, %struct.sHashTable* %5, i32 0, i32 0
  %6 = load %struct.sHashEntry**, %struct.sHashEntry*** %table, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom = zext i32 %7 to i64
  %arrayidx = getelementptr inbounds %struct.sHashEntry*, %struct.sHashEntry** %6, i64 %idxprom
  %8 = load %struct.sHashEntry*, %struct.sHashEntry** %arrayidx, align 8
  %9 = load i8*, i8** %key.addr, align 8
  %10 = load %struct.sHashTable*, %struct.sHashTable** %htable.addr, align 8
  %equalfn = getelementptr inbounds %struct.sHashTable, %struct.sHashTable* %10, i32 0, i32 3
  %11 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %equalfn, align 8
  %call1 = call i8* @entry_find(%struct.sHashEntry* %8, i8* %9, i1 (i8*, i8*)* %11)
  ret i8* %call1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @entry_find(%struct.sHashEntry* %entry1, i8* %key, i1 (i8*, i8*)* %equalfn) #0 {
entry:
  %retval = alloca i8*, align 8
  %entry.addr = alloca %struct.sHashEntry*, align 8
  %key.addr = alloca i8*, align 8
  %equalfn.addr = alloca i1 (i8*, i8*)*, align 8
  store %struct.sHashEntry* %entry1, %struct.sHashEntry** %entry.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i1 (i8*, i8*)* %equalfn, i1 (i8*, i8*)** %equalfn.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %struct.sHashEntry*, %struct.sHashEntry** %entry.addr, align 8
  %tobool = icmp ne %struct.sHashEntry* %0, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %equalfn.addr, align 8
  %2 = load i8*, i8** %key.addr, align 8
  %3 = load %struct.sHashEntry*, %struct.sHashEntry** %entry.addr, align 8
  %key2 = getelementptr inbounds %struct.sHashEntry, %struct.sHashEntry* %3, i32 0, i32 0
  %4 = load i8*, i8** %key2, align 8
  %call = call zeroext i1 %1(i8* %2, i8* %4)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %5 = load %struct.sHashEntry*, %struct.sHashEntry** %entry.addr, align 8
  %value = getelementptr inbounds %struct.sHashEntry, %struct.sHashEntry* %5, i32 0, i32 1
  %6 = load i8*, i8** %value, align 8
  store i8* %6, i8** %retval, align 8
  br label %return

if.end:                                           ; preds = %while.body
  %7 = load %struct.sHashEntry*, %struct.sHashEntry** %entry.addr, align 8
  %next = getelementptr inbounds %struct.sHashEntry, %struct.sHashEntry* %7, i32 0, i32 2
  %8 = load %struct.sHashEntry*, %struct.sHashEntry** %next, align 8
  store %struct.sHashEntry* %8, %struct.sHashEntry** %entry.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i8* null, i8** %retval, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then
  %9 = load i8*, i8** %retval, align 8
  ret i8* %9
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @hashTableDeleteItem(%struct.sHashTable* %htable, i8* %key) #0 {
entry:
  %htable.addr = alloca %struct.sHashTable*, align 8
  %key.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store %struct.sHashTable* %htable, %struct.sHashTable** %htable.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  %0 = load %struct.sHashTable*, %struct.sHashTable** %htable.addr, align 8
  %hashfn = getelementptr inbounds %struct.sHashTable, %struct.sHashTable* %0, i32 0, i32 2
  %1 = load i32 (i8*)*, i32 (i8*)** %hashfn, align 8
  %2 = load i8*, i8** %key.addr, align 8
  %call = call i32 %1(i8* %2)
  %3 = load %struct.sHashTable*, %struct.sHashTable** %htable.addr, align 8
  %size = getelementptr inbounds %struct.sHashTable, %struct.sHashTable* %3, i32 0, i32 1
  %4 = load i32, i32* %size, align 8
  %rem = urem i32 %call, %4
  store i32 %rem, i32* %i, align 4
  %5 = load %struct.sHashTable*, %struct.sHashTable** %htable.addr, align 8
  %table = getelementptr inbounds %struct.sHashTable, %struct.sHashTable* %5, i32 0, i32 0
  %6 = load %struct.sHashEntry**, %struct.sHashEntry*** %table, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom = zext i32 %7 to i64
  %arrayidx = getelementptr inbounds %struct.sHashEntry*, %struct.sHashEntry** %6, i64 %idxprom
  %8 = load i8*, i8** %key.addr, align 8
  %9 = load %struct.sHashTable*, %struct.sHashTable** %htable.addr, align 8
  %equalfn = getelementptr inbounds %struct.sHashTable, %struct.sHashTable* %9, i32 0, i32 3
  %10 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %equalfn, align 8
  %11 = load %struct.sHashTable*, %struct.sHashTable** %htable.addr, align 8
  %keyfreefn = getelementptr inbounds %struct.sHashTable, %struct.sHashTable* %11, i32 0, i32 4
  %12 = load void (i8*)*, void (i8*)** %keyfreefn, align 8
  %13 = load %struct.sHashTable*, %struct.sHashTable** %htable.addr, align 8
  %valfreefn = getelementptr inbounds %struct.sHashTable, %struct.sHashTable* %13, i32 0, i32 5
  %14 = load void (i8*)*, void (i8*)** %valfreefn, align 8
  %call1 = call zeroext i1 @entry_delete(%struct.sHashEntry** %arrayidx, i8* %8, i1 (i8*, i8*)* %10, void (i8*)* %12, void (i8*)* %14)
  ret i1 %call1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @entry_delete(%struct.sHashEntry** %entry1, i8* %key, i1 (i8*, i8*)* %equalfn, void (i8*)* %keyfreefn, void (i8*)* %valfreefn) #0 {
entry:
  %retval = alloca i1, align 1
  %entry.addr = alloca %struct.sHashEntry**, align 8
  %key.addr = alloca i8*, align 8
  %equalfn.addr = alloca i1 (i8*, i8*)*, align 8
  %keyfreefn.addr = alloca void (i8*)*, align 8
  %valfreefn.addr = alloca void (i8*)*, align 8
  store %struct.sHashEntry** %entry1, %struct.sHashEntry*** %entry.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i1 (i8*, i8*)* %equalfn, i1 (i8*, i8*)** %equalfn.addr, align 8
  store void (i8*)* %keyfreefn, void (i8*)** %keyfreefn.addr, align 8
  store void (i8*)* %valfreefn, void (i8*)** %valfreefn.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %struct.sHashEntry**, %struct.sHashEntry*** %entry.addr, align 8
  %1 = load %struct.sHashEntry*, %struct.sHashEntry** %0, align 8
  %tobool = icmp ne %struct.sHashEntry* %1, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %equalfn.addr, align 8
  %3 = load i8*, i8** %key.addr, align 8
  %4 = load %struct.sHashEntry**, %struct.sHashEntry*** %entry.addr, align 8
  %5 = load %struct.sHashEntry*, %struct.sHashEntry** %4, align 8
  %key2 = getelementptr inbounds %struct.sHashEntry, %struct.sHashEntry* %5, i32 0, i32 0
  %6 = load i8*, i8** %key2, align 8
  %call = call zeroext i1 %2(i8* %3, i8* %6)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %7 = load %struct.sHashEntry**, %struct.sHashEntry*** %entry.addr, align 8
  %8 = load %struct.sHashEntry*, %struct.sHashEntry** %7, align 8
  %9 = load void (i8*)*, void (i8*)** %keyfreefn.addr, align 8
  %10 = load void (i8*)*, void (i8*)** %valfreefn.addr, align 8
  %call3 = call %struct.sHashEntry* @entry_destroy(%struct.sHashEntry* %8, void (i8*)* %9, void (i8*)* %10)
  %11 = load %struct.sHashEntry**, %struct.sHashEntry*** %entry.addr, align 8
  store %struct.sHashEntry* %call3, %struct.sHashEntry** %11, align 8
  store i1 true, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i1 false, i1* %retval, align 1
  br label %return

return:                                           ; preds = %while.end, %if.then
  %12 = load i1, i1* %retval, align 1
  ret i1 %12
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @hashTableHasItem(%struct.sHashTable* %htable, i8* %key) #0 {
entry:
  %htable.addr = alloca %struct.sHashTable*, align 8
  %key.addr = alloca i8*, align 8
  store %struct.sHashTable* %htable, %struct.sHashTable** %htable.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  %0 = load %struct.sHashTable*, %struct.sHashTable** %htable.addr, align 8
  %1 = load i8*, i8** %key.addr, align 8
  %call = call i8* @hashTableGetItem(%struct.sHashTable* %0, i8* %1)
  %tobool = icmp ne i8* %call, null
  %2 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i32 1, i32 0
  %tobool1 = icmp ne i32 %cond, 0
  ret i1 %tobool1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @hashTableForeachItem(%struct.sHashTable* %htable, void (i8*, i8*, i8*)* %proc, i8* %user_data) #0 {
entry:
  %htable.addr = alloca %struct.sHashTable*, align 8
  %proc.addr = alloca void (i8*, i8*, i8*)*, align 8
  %user_data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store %struct.sHashTable* %htable, %struct.sHashTable** %htable.addr, align 8
  store void (i8*, i8*, i8*)* %proc, void (i8*, i8*, i8*)** %proc.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.sHashTable*, %struct.sHashTable** %htable.addr, align 8
  %size = getelementptr inbounds %struct.sHashTable, %struct.sHashTable* %1, i32 0, i32 1
  %2 = load i32, i32* %size, align 8
  %cmp = icmp ult i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.sHashTable*, %struct.sHashTable** %htable.addr, align 8
  %table = getelementptr inbounds %struct.sHashTable, %struct.sHashTable* %3, i32 0, i32 0
  %4 = load %struct.sHashEntry**, %struct.sHashEntry*** %table, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = zext i32 %5 to i64
  %arrayidx = getelementptr inbounds %struct.sHashEntry*, %struct.sHashEntry** %4, i64 %idxprom
  %6 = load %struct.sHashEntry*, %struct.sHashEntry** %arrayidx, align 8
  %7 = load void (i8*, i8*, i8*)*, void (i8*, i8*, i8*)** %proc.addr, align 8
  %8 = load i8*, i8** %user_data.addr, align 8
  call void @entry_foreach(%struct.sHashEntry* %6, void (i8*, i8*, i8*)* %7, i8* %8)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @entry_foreach(%struct.sHashEntry* %entry1, void (i8*, i8*, i8*)* %proc, i8* %user_data) #0 {
entry:
  %entry.addr = alloca %struct.sHashEntry*, align 8
  %proc.addr = alloca void (i8*, i8*, i8*)*, align 8
  %user_data.addr = alloca i8*, align 8
  store %struct.sHashEntry* %entry1, %struct.sHashEntry** %entry.addr, align 8
  store void (i8*, i8*, i8*)* %proc, void (i8*, i8*, i8*)** %proc.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.sHashEntry*, %struct.sHashEntry** %entry.addr, align 8
  %tobool = icmp ne %struct.sHashEntry* %0, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load void (i8*, i8*, i8*)*, void (i8*, i8*, i8*)** %proc.addr, align 8
  %2 = load %struct.sHashEntry*, %struct.sHashEntry** %entry.addr, align 8
  %key = getelementptr inbounds %struct.sHashEntry, %struct.sHashEntry* %2, i32 0, i32 0
  %3 = load i8*, i8** %key, align 8
  %4 = load %struct.sHashEntry*, %struct.sHashEntry** %entry.addr, align 8
  %value = getelementptr inbounds %struct.sHashEntry, %struct.sHashEntry* %4, i32 0, i32 1
  %5 = load i8*, i8** %value, align 8
  %6 = load i8*, i8** %user_data.addr, align 8
  call void %1(i8* %3, i8* %5, i8* %6)
  %7 = load %struct.sHashEntry*, %struct.sHashEntry** %entry.addr, align 8
  %next = getelementptr inbounds %struct.sHashEntry, %struct.sHashEntry* %7, i32 0, i32 2
  %8 = load %struct.sHashEntry*, %struct.sHashEntry** %next, align 8
  store %struct.sHashEntry* %8, %struct.sHashEntry** %entry.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @hashTableCountItem(%struct.sHashTable* %htable) #0 {
entry:
  %htable.addr = alloca %struct.sHashTable*, align 8
  %c = alloca i32, align 4
  store %struct.sHashTable* %htable, %struct.sHashTable** %htable.addr, align 8
  store i32 0, i32* %c, align 4
  %0 = load %struct.sHashTable*, %struct.sHashTable** %htable.addr, align 8
  %1 = bitcast i32* %c to i8*
  call void @hashTableForeachItem(%struct.sHashTable* %0, void (i8*, i8*, i8*)* @count, i8* %1)
  %2 = load i32, i32* %c, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @count(i8* %key, i8* %value, i8* %data) #0 {
entry:
  %key.addr = alloca i8*, align 8
  %value.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  %c = alloca i32*, align 8
  store i8* %key, i8** %key.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to i32*
  store i32* %1, i32** %c, align 8
  %2 = load i32*, i32** %c, align 8
  %3 = load i32, i32* %2, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %2, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @hashPtrhash(i8* %x) #0 {
entry:
  %x.addr = alloca i8*, align 8
  %v = alloca %union.anon, align 8
  store i8* %x, i8** %x.addr, align 8
  %ui = bitcast %union.anon* %v to i32*
  store i32 0, i32* %ui, align 8
  %0 = load i8*, i8** %x.addr, align 8
  %ptr = bitcast %union.anon* %v to i8**
  store i8* %0, i8** %ptr, align 8
  %ui1 = bitcast %union.anon* %v to i32*
  %1 = load i32, i32* %ui1, align 8
  ret i32 %1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @hashPtreq(i8* %a, i8* %b) #0 {
entry:
  %a.addr = alloca i8*, align 8
  %b.addr = alloca i8*, align 8
  store i8* %a, i8** %a.addr, align 8
  store i8* %b, i8** %b.addr, align 8
  %0 = load i8*, i8** %a.addr, align 8
  %1 = load i8*, i8** %b.addr, align 8
  %cmp = icmp eq i8* %0, %1
  %2 = zext i1 %cmp to i64
  %cond = select i1 %cmp, i32 1, i32 0
  %tobool = icmp ne i32 %cond, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @hashCstrhash(i8* %x) #0 {
entry:
  %x.addr = alloca i8*, align 8
  %s = alloca i8*, align 8
  store i8* %x, i8** %x.addr, align 8
  %0 = load i8*, i8** %x.addr, align 8
  store i8* %0, i8** %s, align 8
  %1 = load i8*, i8** %s, align 8
  %call = call i64 @djb2(i8* %1)
  %conv = trunc i64 %call to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i64 @djb2(i8* %str) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %hash = alloca i64, align 8
  %c = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  store i64 5381, i64* %hash, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i8*, i8** %str.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i32 1
  store i8* %incdec.ptr, i8** %str.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = zext i8 %1 to i32
  store i32 %conv, i32* %c, align 4
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i64, i64* %hash, align 8
  %shl = shl i64 %2, 5
  %3 = load i64, i64* %hash, align 8
  %add = add i64 %shl, %3
  %4 = load i32, i32* %c, align 4
  %conv1 = sext i32 %4 to i64
  %add2 = add i64 %add, %conv1
  store i64 %add2, i64* %hash, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %5 = load i64, i64* %hash, align 8
  ret i64 %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @hashCstreq(i8* %a, i8* %b) #0 {
entry:
  %a.addr = alloca i8*, align 8
  %b.addr = alloca i8*, align 8
  store i8* %a, i8** %a.addr, align 8
  store i8* %b, i8** %b.addr, align 8
  %0 = load i8*, i8** %a.addr, align 8
  %1 = load i8*, i8** %b.addr, align 8
  %call = call i32 @strcmp(i8* %0, i8* %1)
  %cmp = icmp eq i32 %call, 0
  %lnot = xor i1 %cmp, true
  %lnot1 = xor i1 %lnot, true
  ret i1 %lnot1
}

declare i32 @strcmp(i8*, i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @hashInthash(i8* %x) #0 {
entry:
  %x.addr = alloca i8*, align 8
  %x0 = alloca %union.tmp, align 4
  store i8* %x, i8** %x.addr, align 8
  %u = bitcast %union.tmp* %x0 to i32*
  store i32 0, i32* %u, align 4
  %0 = load i8*, i8** %x.addr, align 8
  %1 = bitcast i8* %0 to i32*
  %2 = load i32, i32* %1, align 4
  %i = bitcast %union.tmp* %x0 to i32*
  store i32 %2, i32* %i, align 4
  %u1 = bitcast %union.tmp* %x0 to i32*
  %3 = load i32, i32* %u1, align 4
  ret i32 %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @hashInteq(i8* %a, i8* %b) #0 {
entry:
  %a.addr = alloca i8*, align 8
  %b.addr = alloca i8*, align 8
  %ai = alloca i32, align 4
  %bi = alloca i32, align 4
  store i8* %a, i8** %a.addr, align 8
  store i8* %b, i8** %b.addr, align 8
  %0 = load i8*, i8** %a.addr, align 8
  %1 = bitcast i8* %0 to i32*
  %2 = load i32, i32* %1, align 4
  store i32 %2, i32* %ai, align 4
  %3 = load i8*, i8** %b.addr, align 8
  %4 = bitcast i8* %3 to i32*
  %5 = load i32, i32* %4, align 4
  store i32 %5, i32* %bi, align 4
  %6 = load i32, i32* %ai, align 4
  %7 = load i32, i32* %bi, align 4
  %cmp = icmp eq i32 %6, %7
  %lnot = xor i1 %cmp, true
  %lnot1 = xor i1 %lnot, true
  ret i1 %lnot1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @hashCstrcasehash(i8* %x) #0 {
entry:
  %x.addr = alloca i8*, align 8
  %s = alloca i8*, align 8
  store i8* %x, i8** %x.addr, align 8
  %0 = load i8*, i8** %x.addr, align 8
  store i8* %0, i8** %s, align 8
  %1 = load i8*, i8** %s, align 8
  %call = call i64 @casedjb2(i8* %1)
  %conv = trunc i64 %call to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i64 @casedjb2(i8* %str) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %hash = alloca i64, align 8
  %c = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  store i64 5381, i64* %hash, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i8*, i8** %str.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i32 1
  store i8* %incdec.ptr, i8** %str.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = zext i8 %1 to i32
  store i32 %conv, i32* %c, align 4
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, i32* %c, align 4
  %cmp = icmp sle i32 97, %2
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.body
  %3 = load i32, i32* %c, align 4
  %cmp2 = icmp sle i32 %3, 122
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %4 = load i32, i32* %c, align 4
  %add = add nsw i32 %4, -32
  store i32 %add, i32* %c, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %while.body
  %5 = load i64, i64* %hash, align 8
  %shl = shl i64 %5, 5
  %6 = load i64, i64* %hash, align 8
  %add4 = add i64 %shl, %6
  %7 = load i32, i32* %c, align 4
  %conv5 = sext i32 %7 to i64
  %add6 = add i64 %add4, %conv5
  store i64 %add6, i64* %hash, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %8 = load i64, i64* %hash, align 8
  ret i64 %8
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @hashCstrcaseeq(i8* %a, i8* %b) #0 {
entry:
  %a.addr = alloca i8*, align 8
  %b.addr = alloca i8*, align 8
  store i8* %a, i8** %a.addr, align 8
  store i8* %b, i8** %b.addr, align 8
  %0 = load i8*, i8** %a.addr, align 8
  %1 = load i8*, i8** %b.addr, align 8
  %call = call i32 @strcasecmp(i8* %0, i8* %1)
  %cmp = icmp eq i32 %call, 0
  %lnot = xor i1 %cmp, true
  %lnot1 = xor i1 %lnot, true
  ret i1 %lnot1
}

declare i32 @strcasecmp(i8*, i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct.sHashEntry* @entry_destroy(%struct.sHashEntry* %entry1, void (i8*)* %keyfreefn, void (i8*)* %valfreefn) #0 {
entry:
  %entry.addr = alloca %struct.sHashEntry*, align 8
  %keyfreefn.addr = alloca void (i8*)*, align 8
  %valfreefn.addr = alloca void (i8*)*, align 8
  %tmp = alloca %struct.sHashEntry*, align 8
  store %struct.sHashEntry* %entry1, %struct.sHashEntry** %entry.addr, align 8
  store void (i8*)* %keyfreefn, void (i8*)** %keyfreefn.addr, align 8
  store void (i8*)* %valfreefn, void (i8*)** %valfreefn.addr, align 8
  %0 = load void (i8*)*, void (i8*)** %keyfreefn.addr, align 8
  %tobool = icmp ne void (i8*)* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load void (i8*)*, void (i8*)** %keyfreefn.addr, align 8
  %2 = load %struct.sHashEntry*, %struct.sHashEntry** %entry.addr, align 8
  %key = getelementptr inbounds %struct.sHashEntry, %struct.sHashEntry* %2, i32 0, i32 0
  %3 = load i8*, i8** %key, align 8
  call void %1(i8* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load void (i8*)*, void (i8*)** %valfreefn.addr, align 8
  %tobool2 = icmp ne void (i8*)* %4, null
  br i1 %tobool2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %5 = load void (i8*)*, void (i8*)** %valfreefn.addr, align 8
  %6 = load %struct.sHashEntry*, %struct.sHashEntry** %entry.addr, align 8
  %value = getelementptr inbounds %struct.sHashEntry, %struct.sHashEntry* %6, i32 0, i32 1
  %7 = load i8*, i8** %value, align 8
  call void %5(i8* %7)
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  %8 = load %struct.sHashEntry*, %struct.sHashEntry** %entry.addr, align 8
  %key5 = getelementptr inbounds %struct.sHashEntry, %struct.sHashEntry* %8, i32 0, i32 0
  store i8* null, i8** %key5, align 8
  %9 = load %struct.sHashEntry*, %struct.sHashEntry** %entry.addr, align 8
  %value6 = getelementptr inbounds %struct.sHashEntry, %struct.sHashEntry* %9, i32 0, i32 1
  store i8* null, i8** %value6, align 8
  %10 = load %struct.sHashEntry*, %struct.sHashEntry** %entry.addr, align 8
  %next = getelementptr inbounds %struct.sHashEntry, %struct.sHashEntry* %10, i32 0, i32 2
  %11 = load %struct.sHashEntry*, %struct.sHashEntry** %next, align 8
  store %struct.sHashEntry* %11, %struct.sHashEntry** %tmp, align 8
  %12 = load %struct.sHashEntry*, %struct.sHashEntry** %entry.addr, align 8
  %13 = bitcast %struct.sHashEntry* %12 to i8*
  call void @eFree(i8* %13)
  %14 = load %struct.sHashEntry*, %struct.sHashEntry** %tmp, align 8
  ret %struct.sHashEntry* %14
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 10.0.0 (https://github.com/holzschu/clang.git 0cfc630fbdb62e96720b611a57123ef3eb13e297) (https://github.com/holzschu/llvm.git 0d8a71e39b28502c24718f7e74b5acbcfe36dfe0)"}
