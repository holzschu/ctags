; ModuleID = 'colprint.c'
source_filename = "colprint.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-ios11.0.0"

%struct.colprintTable = type { %struct.sPtrArray*, %struct.sPtrArray* }
%struct.sPtrArray = type opaque
%struct.colprintHeaderColumn = type { %struct.sVString*, i32, i32, i8 }
%struct.sVString = type { i64, i64, i8* }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.colprintLine = type opaque

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"L:\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"R:\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.colprintTable* @colprintTableNew(i8* %columnHeader, ...) #0 {
entry:
  %columnHeader.addr = alloca i8*, align 8
  %tmp = alloca i8*, align 8
  %ap = alloca i8*, align 8
  %table = alloca %struct.colprintTable*, align 8
  %headerCol = alloca %struct.colprintHeaderColumn*, align 8
  %varet = alloca i8*, align 8
  %last_col = alloca %struct.colprintHeaderColumn*, align 8
  store i8* %columnHeader, i8** %columnHeader.addr, align 8
  %call = call i8* @eCalloc(i64 1, i64 16)
  %0 = bitcast i8* %call to %struct.colprintTable*
  store %struct.colprintTable* %0, %struct.colprintTable** %table, align 8
  %call1 = call %struct.sPtrArray* @ptrArrayNew(void (i8*)* bitcast (void (%struct.colprintHeaderColumn*)* @colprintHeaderColumnDelete to void (i8*)*))
  %1 = load %struct.colprintTable*, %struct.colprintTable** %table, align 8
  %header = getelementptr inbounds %struct.colprintTable, %struct.colprintTable* %1, i32 0, i32 0
  store %struct.sPtrArray* %call1, %struct.sPtrArray** %header, align 8
  %call2 = call %struct.sPtrArray* @ptrArrayNew(void (i8*)* bitcast (void (%struct.sPtrArray*)* @stringListDelete to void (i8*)*))
  %2 = load %struct.colprintTable*, %struct.colprintTable** %table, align 8
  %lines = getelementptr inbounds %struct.colprintTable, %struct.colprintTable* %2, i32 0, i32 1
  store %struct.sPtrArray* %call2, %struct.sPtrArray** %lines, align 8
  %3 = load i8*, i8** %columnHeader.addr, align 8
  %call3 = call %struct.colprintHeaderColumn* @colprintHeaderColumnNew(i8* %3)
  store %struct.colprintHeaderColumn* %call3, %struct.colprintHeaderColumn** %headerCol, align 8
  %4 = load %struct.colprintTable*, %struct.colprintTable** %table, align 8
  %header4 = getelementptr inbounds %struct.colprintTable, %struct.colprintTable* %4, i32 0, i32 0
  %5 = load %struct.sPtrArray*, %struct.sPtrArray** %header4, align 8
  %6 = load %struct.colprintHeaderColumn*, %struct.colprintHeaderColumn** %headerCol, align 8
  %7 = bitcast %struct.colprintHeaderColumn* %6 to i8*
  call void @ptrArrayAdd(%struct.sPtrArray* %5, i8* %7)
  %ap5 = bitcast i8** %ap to i8*
  call void @llvm.va_start(i8* %ap5)
  br label %while.body

while.body:                                       ; preds = %entry, %if.end
  %8 = va_arg i8** %ap, i8*
  store i8* %8, i8** %varet, align 8
  %9 = load i8*, i8** %varet, align 8
  store i8* %9, i8** %tmp, align 8
  %10 = load i8*, i8** %tmp, align 8
  %tobool = icmp ne i8* %10, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %11 = load i8*, i8** %tmp, align 8
  %call6 = call %struct.colprintHeaderColumn* @colprintHeaderColumnNew(i8* %11)
  store %struct.colprintHeaderColumn* %call6, %struct.colprintHeaderColumn** %headerCol, align 8
  %12 = load %struct.colprintTable*, %struct.colprintTable** %table, align 8
  %header7 = getelementptr inbounds %struct.colprintTable, %struct.colprintTable* %12, i32 0, i32 0
  %13 = load %struct.sPtrArray*, %struct.sPtrArray** %header7, align 8
  %14 = load %struct.colprintHeaderColumn*, %struct.colprintHeaderColumn** %headerCol, align 8
  %15 = bitcast %struct.colprintHeaderColumn* %14 to i8*
  call void @ptrArrayAdd(%struct.sPtrArray* %13, i8* %15)
  br label %if.end

if.else:                                          ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %if.then
  br label %while.body

while.end:                                        ; preds = %if.else
  %ap8 = bitcast i8** %ap to i8*
  call void @llvm.va_end(i8* %ap8)
  %16 = load %struct.colprintTable*, %struct.colprintTable** %table, align 8
  %header9 = getelementptr inbounds %struct.colprintTable, %struct.colprintTable* %16, i32 0, i32 0
  %17 = load %struct.sPtrArray*, %struct.sPtrArray** %header9, align 8
  %call10 = call i8* @ptrArrayLast(%struct.sPtrArray* %17)
  %18 = bitcast i8* %call10 to %struct.colprintHeaderColumn*
  store %struct.colprintHeaderColumn* %18, %struct.colprintHeaderColumn** %last_col, align 8
  %19 = load %struct.colprintHeaderColumn*, %struct.colprintHeaderColumn** %last_col, align 8
  %tobool11 = icmp ne %struct.colprintHeaderColumn* %19, null
  br i1 %tobool11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %while.end
  %20 = load %struct.colprintHeaderColumn*, %struct.colprintHeaderColumn** %last_col, align 8
  %justification = getelementptr inbounds %struct.colprintHeaderColumn, %struct.colprintHeaderColumn* %20, i32 0, i32 1
  store i32 2, i32* %justification, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %while.end
  %21 = load %struct.colprintTable*, %struct.colprintTable** %table, align 8
  ret %struct.colprintTable* %21
}

declare i8* @eCalloc(i64, i64) #1

declare %struct.sPtrArray* @ptrArrayNew(void (i8*)*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @colprintHeaderColumnDelete(%struct.colprintHeaderColumn* %headerCol) #0 {
entry:
  %headerCol.addr = alloca %struct.colprintHeaderColumn*, align 8
  store %struct.colprintHeaderColumn* %headerCol, %struct.colprintHeaderColumn** %headerCol.addr, align 8
  %0 = load %struct.colprintHeaderColumn*, %struct.colprintHeaderColumn** %headerCol.addr, align 8
  %value = getelementptr inbounds %struct.colprintHeaderColumn, %struct.colprintHeaderColumn* %0, i32 0, i32 0
  %1 = load %struct.sVString*, %struct.sVString** %value, align 8
  call void @vStringDelete(%struct.sVString* %1)
  %2 = load %struct.colprintHeaderColumn*, %struct.colprintHeaderColumn** %headerCol.addr, align 8
  %3 = bitcast %struct.colprintHeaderColumn* %2 to i8*
  call void @eFree(i8* %3)
  ret void
}

declare void @stringListDelete(%struct.sPtrArray*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct.colprintHeaderColumn* @colprintHeaderColumnNew(i8* %spec) #0 {
entry:
  %spec.addr = alloca i8*, align 8
  %offset = alloca i32, align 4
  %headerCol = alloca %struct.colprintHeaderColumn*, align 8
  store i8* %spec, i8** %spec.addr, align 8
  store i32 2, i32* %offset, align 4
  %call = call i8* @eCalloc(i64 1, i64 24)
  %0 = bitcast i8* %call to %struct.colprintHeaderColumn*
  store %struct.colprintHeaderColumn* %0, %struct.colprintHeaderColumn** %headerCol, align 8
  %1 = load i8*, i8** %spec.addr, align 8
  %call1 = call i8* @strstr(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %2 = load i8*, i8** %spec.addr, align 8
  %cmp = icmp eq i8* %call1, %2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.colprintHeaderColumn*, %struct.colprintHeaderColumn** %headerCol, align 8
  %justification = getelementptr inbounds %struct.colprintHeaderColumn, %struct.colprintHeaderColumn* %3, i32 0, i32 1
  store i32 0, i32* %justification, align 8
  br label %if.end8

if.else:                                          ; preds = %entry
  %4 = load i8*, i8** %spec.addr, align 8
  %call2 = call i8* @strstr(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %5 = load i8*, i8** %spec.addr, align 8
  %cmp3 = icmp eq i8* %call2, %5
  br i1 %cmp3, label %if.then4, label %if.else6

if.then4:                                         ; preds = %if.else
  %6 = load %struct.colprintHeaderColumn*, %struct.colprintHeaderColumn** %headerCol, align 8
  %justification5 = getelementptr inbounds %struct.colprintHeaderColumn, %struct.colprintHeaderColumn* %6, i32 0, i32 1
  store i32 1, i32* %justification5, align 8
  br label %if.end

if.else6:                                         ; preds = %if.else
  %7 = load %struct.colprintHeaderColumn*, %struct.colprintHeaderColumn** %headerCol, align 8
  %justification7 = getelementptr inbounds %struct.colprintHeaderColumn, %struct.colprintHeaderColumn* %7, i32 0, i32 1
  store i32 0, i32* %justification7, align 8
  store i32 0, i32* %offset, align 4
  br label %if.end

if.end:                                           ; preds = %if.else6, %if.then4
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  %8 = load i8*, i8** %spec.addr, align 8
  %9 = load i32, i32* %offset, align 4
  %idx.ext = sext i32 %9 to i64
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 %idx.ext
  %call9 = call %struct.sVString* @vStringNewInit(i8* %add.ptr)
  %10 = load %struct.colprintHeaderColumn*, %struct.colprintHeaderColumn** %headerCol, align 8
  %value = getelementptr inbounds %struct.colprintHeaderColumn, %struct.colprintHeaderColumn* %10, i32 0, i32 0
  store %struct.sVString* %call9, %struct.sVString** %value, align 8
  %11 = load %struct.colprintHeaderColumn*, %struct.colprintHeaderColumn** %headerCol, align 8
  %value10 = getelementptr inbounds %struct.colprintHeaderColumn, %struct.colprintHeaderColumn* %11, i32 0, i32 0
  %12 = load %struct.sVString*, %struct.sVString** %value10, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %12, i32 0, i32 0
  %13 = load i64, i64* %length, align 8
  %conv = trunc i64 %13 to i32
  %14 = load %struct.colprintHeaderColumn*, %struct.colprintHeaderColumn** %headerCol, align 8
  %maxWidth = getelementptr inbounds %struct.colprintHeaderColumn, %struct.colprintHeaderColumn* %14, i32 0, i32 2
  store i32 %conv, i32* %maxWidth, align 4
  %15 = load %struct.colprintHeaderColumn*, %struct.colprintHeaderColumn** %headerCol, align 8
  ret %struct.colprintHeaderColumn* %15
}

declare void @ptrArrayAdd(%struct.sPtrArray*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #2

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #2

declare i8* @ptrArrayLast(%struct.sPtrArray*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @colprintTableDelete(%struct.colprintTable* %table) #0 {
entry:
  %table.addr = alloca %struct.colprintTable*, align 8
  store %struct.colprintTable* %table, %struct.colprintTable** %table.addr, align 8
  %0 = load %struct.colprintTable*, %struct.colprintTable** %table.addr, align 8
  %header = getelementptr inbounds %struct.colprintTable, %struct.colprintTable* %0, i32 0, i32 0
  %1 = load %struct.sPtrArray*, %struct.sPtrArray** %header, align 8
  call void @ptrArrayDelete(%struct.sPtrArray* %1)
  %2 = load %struct.colprintTable*, %struct.colprintTable** %table.addr, align 8
  %header1 = getelementptr inbounds %struct.colprintTable, %struct.colprintTable* %2, i32 0, i32 0
  store %struct.sPtrArray* null, %struct.sPtrArray** %header1, align 8
  %3 = load %struct.colprintTable*, %struct.colprintTable** %table.addr, align 8
  %lines = getelementptr inbounds %struct.colprintTable, %struct.colprintTable* %3, i32 0, i32 1
  %4 = load %struct.sPtrArray*, %struct.sPtrArray** %lines, align 8
  call void @ptrArrayDelete(%struct.sPtrArray* %4)
  %5 = load %struct.colprintTable*, %struct.colprintTable** %table.addr, align 8
  %header2 = getelementptr inbounds %struct.colprintTable, %struct.colprintTable* %5, i32 0, i32 0
  store %struct.sPtrArray* null, %struct.sPtrArray** %header2, align 8
  %6 = load %struct.colprintTable*, %struct.colprintTable** %table.addr, align 8
  %7 = bitcast %struct.colprintTable* %6 to i8*
  call void @eFree(i8* %7)
  ret void
}

declare void @ptrArrayDelete(%struct.sPtrArray*) #1

declare void @eFree(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @colprintTablePrint(%struct.colprintTable* %table, i32 %startFrom, i1 zeroext %withHeader, i1 zeroext %machinable, %struct.__sFILE* %fp) #0 {
entry:
  %table.addr = alloca %struct.colprintTable*, align 8
  %startFrom.addr = alloca i32, align 4
  %withHeader.addr = alloca i8, align 1
  %machinable.addr = alloca i8, align 1
  %fp.addr = alloca %struct.__sFILE*, align 8
  store %struct.colprintTable* %table, %struct.colprintTable** %table.addr, align 8
  store i32 %startFrom, i32* %startFrom.addr, align 4
  %frombool = zext i1 %withHeader to i8
  store i8 %frombool, i8* %withHeader.addr, align 1
  %frombool1 = zext i1 %machinable to i8
  store i8 %frombool1, i8* %machinable.addr, align 1
  store %struct.__sFILE* %fp, %struct.__sFILE** %fp.addr, align 8
  %0 = load %struct.colprintTable*, %struct.colprintTable** %table.addr, align 8
  %header = getelementptr inbounds %struct.colprintTable, %struct.colprintTable* %0, i32 0, i32 0
  %1 = load %struct.sPtrArray*, %struct.sPtrArray** %header, align 8
  %2 = load %struct.colprintTable*, %struct.colprintTable** %table.addr, align 8
  %lines = getelementptr inbounds %struct.colprintTable, %struct.colprintTable* %2, i32 0, i32 1
  %3 = load %struct.sPtrArray*, %struct.sPtrArray** %lines, align 8
  %4 = load i32, i32* %startFrom.addr, align 4
  call void @colprintUpdateMaxWidths(%struct.sPtrArray* %1, %struct.sPtrArray* %3, i32 %4)
  %5 = load %struct.colprintTable*, %struct.colprintTable** %table.addr, align 8
  %header2 = getelementptr inbounds %struct.colprintTable, %struct.colprintTable* %5, i32 0, i32 0
  %6 = load %struct.sPtrArray*, %struct.sPtrArray** %header2, align 8
  %7 = load i32, i32* %startFrom.addr, align 4
  %8 = load i8, i8* %withHeader.addr, align 1
  %tobool = trunc i8 %8 to i1
  %9 = load i8, i8* %machinable.addr, align 1
  %tobool3 = trunc i8 %9 to i1
  %10 = load %struct.__sFILE*, %struct.__sFILE** %fp.addr, align 8
  call void @colprintHeaderPrint(%struct.sPtrArray* %6, i32 %7, i1 zeroext %tobool, i1 zeroext %tobool3, %struct.__sFILE* %10)
  %11 = load %struct.colprintTable*, %struct.colprintTable** %table.addr, align 8
  %lines4 = getelementptr inbounds %struct.colprintTable, %struct.colprintTable* %11, i32 0, i32 1
  %12 = load %struct.sPtrArray*, %struct.sPtrArray** %lines4, align 8
  %13 = load i32, i32* %startFrom.addr, align 4
  %14 = load %struct.colprintTable*, %struct.colprintTable** %table.addr, align 8
  %header5 = getelementptr inbounds %struct.colprintTable, %struct.colprintTable* %14, i32 0, i32 0
  %15 = load %struct.sPtrArray*, %struct.sPtrArray** %header5, align 8
  %16 = load i8, i8* %machinable.addr, align 1
  %tobool6 = trunc i8 %16 to i1
  %17 = load %struct.__sFILE*, %struct.__sFILE** %fp.addr, align 8
  call void @colprintLinesPrint(%struct.sPtrArray* %12, i32 %13, %struct.sPtrArray* %15, i1 zeroext %tobool6, %struct.__sFILE* %17)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @colprintUpdateMaxWidths(%struct.sPtrArray* %header, %struct.sPtrArray* %lines, i32 %startFrom) #0 {
entry:
  %header.addr = alloca %struct.sPtrArray*, align 8
  %lines.addr = alloca %struct.sPtrArray*, align 8
  %startFrom.addr = alloca i32, align 4
  %c = alloca i32, align 4
  %spec = alloca %struct.colprintHeaderColumn*, align 8
  %c4 = alloca i32, align 4
  %spec9 = alloca %struct.colprintHeaderColumn*, align 8
  %l = alloca i32, align 4
  %line = alloca %struct.colprintLine*, align 8
  %column = alloca %struct.sVString*, align 8
  store %struct.sPtrArray* %header, %struct.sPtrArray** %header.addr, align 8
  store %struct.sPtrArray* %lines, %struct.sPtrArray** %lines.addr, align 8
  store i32 %startFrom, i32* %startFrom.addr, align 4
  store i32 0, i32* %c, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %c, align 4
  %1 = load %struct.sPtrArray*, %struct.sPtrArray** %header.addr, align 8
  %call = call i32 @ptrArrayCount(%struct.sPtrArray* %1)
  %cmp = icmp ult i32 %0, %call
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.sPtrArray*, %struct.sPtrArray** %header.addr, align 8
  %3 = load i32, i32* %c, align 4
  %call1 = call i8* @ptrArrayItem(%struct.sPtrArray* %2, i32 %3)
  %4 = bitcast i8* %call1 to %struct.colprintHeaderColumn*
  store %struct.colprintHeaderColumn* %4, %struct.colprintHeaderColumn** %spec, align 8
  %5 = load i32, i32* %c, align 4
  %6 = load i32, i32* %startFrom.addr, align 4
  %cmp2 = icmp eq i32 %5, %6
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %7 = load %struct.colprintHeaderColumn*, %struct.colprintHeaderColumn** %spec, align 8
  %needPrefix = getelementptr inbounds %struct.colprintHeaderColumn, %struct.colprintHeaderColumn* %7, i32 0, i32 3
  store i8 1, i8* %needPrefix, align 8
  br label %if.end

if.else:                                          ; preds = %for.body
  %8 = load %struct.colprintHeaderColumn*, %struct.colprintHeaderColumn** %spec, align 8
  %needPrefix3 = getelementptr inbounds %struct.colprintHeaderColumn, %struct.colprintHeaderColumn* %8, i32 0, i32 3
  store i8 0, i8* %needPrefix3, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, i32* %c, align 4
  %inc = add i32 %9, 1
  store i32 %inc, i32* %c, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %c4, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc27, %for.end
  %10 = load i32, i32* %c4, align 4
  %11 = load %struct.sPtrArray*, %struct.sPtrArray** %header.addr, align 8
  %call6 = call i32 @ptrArrayCount(%struct.sPtrArray* %11)
  %cmp7 = icmp ult i32 %10, %call6
  br i1 %cmp7, label %for.body8, label %for.end29

for.body8:                                        ; preds = %for.cond5
  %12 = load %struct.sPtrArray*, %struct.sPtrArray** %header.addr, align 8
  %13 = load i32, i32* %c4, align 4
  %call10 = call i8* @ptrArrayItem(%struct.sPtrArray* %12, i32 %13)
  %14 = bitcast i8* %call10 to %struct.colprintHeaderColumn*
  store %struct.colprintHeaderColumn* %14, %struct.colprintHeaderColumn** %spec9, align 8
  store i32 0, i32* %l, align 4
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc24, %for.body8
  %15 = load i32, i32* %l, align 4
  %16 = load %struct.sPtrArray*, %struct.sPtrArray** %lines.addr, align 8
  %call12 = call i32 @ptrArrayCount(%struct.sPtrArray* %16)
  %cmp13 = icmp ult i32 %15, %call12
  br i1 %cmp13, label %for.body14, label %for.end26

for.body14:                                       ; preds = %for.cond11
  %17 = load %struct.sPtrArray*, %struct.sPtrArray** %lines.addr, align 8
  %18 = load i32, i32* %l, align 4
  %call15 = call i8* @ptrArrayItem(%struct.sPtrArray* %17, i32 %18)
  %19 = bitcast i8* %call15 to %struct.colprintLine*
  store %struct.colprintLine* %19, %struct.colprintLine** %line, align 8
  %20 = load %struct.colprintLine*, %struct.colprintLine** %line, align 8
  %21 = bitcast %struct.colprintLine* %20 to %struct.sPtrArray*
  %22 = load i32, i32* %c4, align 4
  %call16 = call i8* @ptrArrayItem(%struct.sPtrArray* %21, i32 %22)
  %23 = bitcast i8* %call16 to %struct.sVString*
  store %struct.sVString* %23, %struct.sVString** %column, align 8
  %24 = load %struct.colprintHeaderColumn*, %struct.colprintHeaderColumn** %spec9, align 8
  %maxWidth = getelementptr inbounds %struct.colprintHeaderColumn, %struct.colprintHeaderColumn* %24, i32 0, i32 2
  %25 = load i32, i32* %maxWidth, align 4
  %conv = zext i32 %25 to i64
  %26 = load %struct.sVString*, %struct.sVString** %column, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %26, i32 0, i32 0
  %27 = load i64, i64* %length, align 8
  %cmp17 = icmp ult i64 %conv, %27
  br i1 %cmp17, label %if.then19, label %if.end23

if.then19:                                        ; preds = %for.body14
  %28 = load %struct.sVString*, %struct.sVString** %column, align 8
  %length20 = getelementptr inbounds %struct.sVString, %struct.sVString* %28, i32 0, i32 0
  %29 = load i64, i64* %length20, align 8
  %conv21 = trunc i64 %29 to i32
  %30 = load %struct.colprintHeaderColumn*, %struct.colprintHeaderColumn** %spec9, align 8
  %maxWidth22 = getelementptr inbounds %struct.colprintHeaderColumn, %struct.colprintHeaderColumn* %30, i32 0, i32 2
  store i32 %conv21, i32* %maxWidth22, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then19, %for.body14
  br label %for.inc24

for.inc24:                                        ; preds = %if.end23
  %31 = load i32, i32* %l, align 4
  %inc25 = add i32 %31, 1
  store i32 %inc25, i32* %l, align 4
  br label %for.cond11

for.end26:                                        ; preds = %for.cond11
  br label %for.inc27

for.inc27:                                        ; preds = %for.end26
  %32 = load i32, i32* %c4, align 4
  %inc28 = add i32 %32, 1
  store i32 %inc28, i32* %c4, align 4
  br label %for.cond5

for.end29:                                        ; preds = %for.cond5
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @colprintHeaderPrint(%struct.sPtrArray* %header, i32 %startFrom, i1 zeroext %withHeader, i1 zeroext %machinable, %struct.__sFILE* %fp) #0 {
entry:
  %header.addr = alloca %struct.sPtrArray*, align 8
  %startFrom.addr = alloca i32, align 4
  %withHeader.addr = alloca i8, align 1
  %machinable.addr = alloca i8, align 1
  %fp.addr = alloca %struct.__sFILE*, align 8
  %i = alloca i32, align 4
  %headerCol = alloca %struct.colprintHeaderColumn*, align 8
  store %struct.sPtrArray* %header, %struct.sPtrArray** %header.addr, align 8
  store i32 %startFrom, i32* %startFrom.addr, align 4
  %frombool = zext i1 %withHeader to i8
  store i8 %frombool, i8* %withHeader.addr, align 1
  %frombool1 = zext i1 %machinable to i8
  store i8 %frombool1, i8* %machinable.addr, align 1
  store %struct.__sFILE* %fp, %struct.__sFILE** %fp.addr, align 8
  %0 = load i8, i8* %withHeader.addr, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %startFrom.addr, align 4
  store i32 %1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %i, align 4
  %3 = load %struct.sPtrArray*, %struct.sPtrArray** %header.addr, align 8
  %call = call i32 @ptrArrayCount(%struct.sPtrArray* %3)
  %cmp = icmp ult i32 %2, %call
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.sPtrArray*, %struct.sPtrArray** %header.addr, align 8
  %5 = load i32, i32* %i, align 4
  %call2 = call i8* @ptrArrayItem(%struct.sPtrArray* %4, i32 %5)
  %6 = bitcast i8* %call2 to %struct.colprintHeaderColumn*
  store %struct.colprintHeaderColumn* %6, %struct.colprintHeaderColumn** %headerCol, align 8
  %7 = load %struct.colprintHeaderColumn*, %struct.colprintHeaderColumn** %headerCol, align 8
  %8 = load i8, i8* %machinable.addr, align 1
  %tobool3 = trunc i8 %8 to i1
  %9 = load %struct.__sFILE*, %struct.__sFILE** %fp.addr, align 8
  call void @colprintHeaderColumnPrint(%struct.colprintHeaderColumn* %7, i1 zeroext %tobool3, %struct.__sFILE* %9)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load %struct.__sFILE*, %struct.__sFILE** %fp.addr, align 8
  %call4 = call i32 @fputc(i32 10, %struct.__sFILE* %11)
  br label %return

return:                                           ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @colprintLinesPrint(%struct.sPtrArray* %lines, i32 %startFrom, %struct.sPtrArray* %header, i1 zeroext %machinable, %struct.__sFILE* %fp) #0 {
entry:
  %lines.addr = alloca %struct.sPtrArray*, align 8
  %startFrom.addr = alloca i32, align 4
  %header.addr = alloca %struct.sPtrArray*, align 8
  %machinable.addr = alloca i8, align 1
  %fp.addr = alloca %struct.__sFILE*, align 8
  %i = alloca i32, align 4
  %line = alloca %struct.sPtrArray*, align 8
  store %struct.sPtrArray* %lines, %struct.sPtrArray** %lines.addr, align 8
  store i32 %startFrom, i32* %startFrom.addr, align 4
  store %struct.sPtrArray* %header, %struct.sPtrArray** %header.addr, align 8
  %frombool = zext i1 %machinable to i8
  store i8 %frombool, i8* %machinable.addr, align 1
  store %struct.__sFILE* %fp, %struct.__sFILE** %fp.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.sPtrArray*, %struct.sPtrArray** %lines.addr, align 8
  %call = call i32 @ptrArrayCount(%struct.sPtrArray* %1)
  %cmp = icmp ult i32 %0, %call
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.sPtrArray*, %struct.sPtrArray** %lines.addr, align 8
  %3 = load i32, i32* %i, align 4
  %call1 = call i8* @ptrArrayItem(%struct.sPtrArray* %2, i32 %3)
  %4 = bitcast i8* %call1 to %struct.sPtrArray*
  store %struct.sPtrArray* %4, %struct.sPtrArray** %line, align 8
  %5 = load %struct.sPtrArray*, %struct.sPtrArray** %line, align 8
  %6 = load i32, i32* %startFrom.addr, align 4
  %7 = load %struct.sPtrArray*, %struct.sPtrArray** %header.addr, align 8
  %8 = load i8, i8* %machinable.addr, align 1
  %tobool = trunc i8 %8 to i1
  %9 = load %struct.__sFILE*, %struct.__sFILE** %fp.addr, align 8
  call void @colprintLinePrint(%struct.sPtrArray* %5, i32 %6, %struct.sPtrArray* %7, i1 zeroext %tobool, %struct.__sFILE* %9)
  %10 = load %struct.__sFILE*, %struct.__sFILE** %fp.addr, align 8
  %call2 = call i32 @fputc(i32 10, %struct.__sFILE* %10)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %inc = add i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @colprintTableSort(%struct.colprintTable* %table, i32 (%struct.colprintLine*, %struct.colprintLine*)* %compareFn) #0 {
entry:
  %table.addr = alloca %struct.colprintTable*, align 8
  %compareFn.addr = alloca i32 (%struct.colprintLine*, %struct.colprintLine*)*, align 8
  store %struct.colprintTable* %table, %struct.colprintTable** %table.addr, align 8
  store i32 (%struct.colprintLine*, %struct.colprintLine*)* %compareFn, i32 (%struct.colprintLine*, %struct.colprintLine*)** %compareFn.addr, align 8
  %0 = load %struct.colprintTable*, %struct.colprintTable** %table.addr, align 8
  %lines = getelementptr inbounds %struct.colprintTable, %struct.colprintTable* %0, i32 0, i32 1
  %1 = load %struct.sPtrArray*, %struct.sPtrArray** %lines, align 8
  %2 = load i32 (%struct.colprintLine*, %struct.colprintLine*)*, i32 (%struct.colprintLine*, %struct.colprintLine*)** %compareFn.addr, align 8
  %3 = bitcast i32 (%struct.colprintLine*, %struct.colprintLine*)* %2 to i32 (i8*, i8*)*
  call void @ptrArraySort(%struct.sPtrArray* %1, i32 (i8*, i8*)* %3)
  ret void
}

declare void @ptrArraySort(%struct.sPtrArray*, i32 (i8*, i8*)*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.colprintLine* @colprintTableGetNewLine(%struct.colprintTable* %table) #0 {
entry:
  %table.addr = alloca %struct.colprintTable*, align 8
  %line = alloca %struct.sPtrArray*, align 8
  store %struct.colprintTable* %table, %struct.colprintTable** %table.addr, align 8
  %call = call %struct.sPtrArray* @stringListNew()
  store %struct.sPtrArray* %call, %struct.sPtrArray** %line, align 8
  %0 = load %struct.colprintTable*, %struct.colprintTable** %table.addr, align 8
  %lines = getelementptr inbounds %struct.colprintTable, %struct.colprintTable* %0, i32 0, i32 1
  %1 = load %struct.sPtrArray*, %struct.sPtrArray** %lines, align 8
  %2 = load %struct.sPtrArray*, %struct.sPtrArray** %line, align 8
  %3 = bitcast %struct.sPtrArray* %2 to i8*
  call void @ptrArrayAdd(%struct.sPtrArray* %1, i8* %3)
  %4 = load %struct.sPtrArray*, %struct.sPtrArray** %line, align 8
  %5 = bitcast %struct.sPtrArray* %4 to %struct.colprintLine*
  ret %struct.colprintLine* %5
}

declare %struct.sPtrArray* @stringListNew() #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @colprintLineAppendColumnCString(%struct.colprintLine* %line, i8* %column) #0 {
entry:
  %line.addr = alloca %struct.colprintLine*, align 8
  %column.addr = alloca i8*, align 8
  %vcol = alloca %struct.sVString*, align 8
  store %struct.colprintLine* %line, %struct.colprintLine** %line.addr, align 8
  store i8* %column, i8** %column.addr, align 8
  %0 = load i8*, i8** %column.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i8*, i8** %column.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %1, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %cond.false ]
  %call = call %struct.sVString* @vStringNewInit(i8* %cond)
  store %struct.sVString* %call, %struct.sVString** %vcol, align 8
  %2 = load %struct.colprintLine*, %struct.colprintLine** %line.addr, align 8
  %3 = load %struct.sVString*, %struct.sVString** %vcol, align 8
  call void @colprintLineAppendColumn(%struct.colprintLine* %2, %struct.sVString* %3)
  ret void
}

declare %struct.sVString* @vStringNewInit(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @colprintLineAppendColumn(%struct.colprintLine* %line, %struct.sVString* %column) #0 {
entry:
  %line.addr = alloca %struct.colprintLine*, align 8
  %column.addr = alloca %struct.sVString*, align 8
  %slist = alloca %struct.sPtrArray*, align 8
  store %struct.colprintLine* %line, %struct.colprintLine** %line.addr, align 8
  store %struct.sVString* %column, %struct.sVString** %column.addr, align 8
  %0 = load %struct.colprintLine*, %struct.colprintLine** %line.addr, align 8
  %1 = bitcast %struct.colprintLine* %0 to %struct.sPtrArray*
  store %struct.sPtrArray* %1, %struct.sPtrArray** %slist, align 8
  %2 = load %struct.sPtrArray*, %struct.sPtrArray** %slist, align 8
  %3 = load %struct.sVString*, %struct.sVString** %column.addr, align 8
  call void @stringListAdd(%struct.sPtrArray* %2, %struct.sVString* %3)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @colprintLineAppendColumnVString(%struct.colprintLine* %line, %struct.sVString* %column) #0 {
entry:
  %line.addr = alloca %struct.colprintLine*, align 8
  %column.addr = alloca %struct.sVString*, align 8
  store %struct.colprintLine* %line, %struct.colprintLine** %line.addr, align 8
  store %struct.sVString* %column, %struct.sVString** %column.addr, align 8
  %0 = load %struct.colprintLine*, %struct.colprintLine** %line.addr, align 8
  %1 = load %struct.sVString*, %struct.sVString** %column.addr, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %1, i32 0, i32 2
  %2 = load i8*, i8** %buffer, align 8
  call void @colprintLineAppendColumnCString(%struct.colprintLine* %0, i8* %2)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @colprintLineAppendColumnChar(%struct.colprintLine* %line, i8 signext %column) #0 {
entry:
  %line.addr = alloca %struct.colprintLine*, align 8
  %column.addr = alloca i8, align 1
  %vcol = alloca %struct.sVString*, align 8
  store %struct.colprintLine* %line, %struct.colprintLine** %line.addr, align 8
  store i8 %column, i8* %column.addr, align 1
  %call = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call, %struct.sVString** %vcol, align 8
  %0 = load %struct.sVString*, %struct.sVString** %vcol, align 8
  %1 = load i8, i8* %column.addr, align 1
  %conv = sext i8 %1 to i32
  call void @vStringPut(%struct.sVString* %0, i32 %conv)
  %2 = load %struct.colprintLine*, %struct.colprintLine** %line.addr, align 8
  %3 = load %struct.sVString*, %struct.sVString** %vcol, align 8
  call void @colprintLineAppendColumn(%struct.colprintLine* %2, %struct.sVString* %3)
  ret void
}

declare %struct.sVString* @vStringNew() #1

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

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @colprintLineAppendColumnInt(%struct.colprintLine* %line, i32 %column) #0 {
entry:
  %line.addr = alloca %struct.colprintLine*, align 8
  %column.addr = alloca i32, align 4
  %buf = alloca [12 x i8], align 1
  store %struct.colprintLine* %line, %struct.colprintLine** %line.addr, align 8
  store i32 %column, i32* %column.addr, align 4
  %arraydecay = getelementptr inbounds [12 x i8], [12 x i8]* %buf, i64 0, i64 0
  %0 = load i32, i32* %column.addr, align 4
  %call = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay, i64 12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %0)
  %1 = load %struct.colprintLine*, %struct.colprintLine** %line.addr, align 8
  %arraydecay1 = getelementptr inbounds [12 x i8], [12 x i8]* %buf, i64 0, i64 0
  call void @colprintLineAppendColumnCString(%struct.colprintLine* %1, i8* %arraydecay1)
  ret void
}

declare i32 @snprintf(i8*, i64, i8*, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @colprintLineAppendColumnBool(%struct.colprintLine* %line, i1 zeroext %column) #0 {
entry:
  %line.addr = alloca %struct.colprintLine*, align 8
  %column.addr = alloca i8, align 1
  store %struct.colprintLine* %line, %struct.colprintLine** %line.addr, align 8
  %frombool = zext i1 %column to i8
  store i8 %frombool, i8* %column.addr, align 1
  %0 = load %struct.colprintLine*, %struct.colprintLine** %line.addr, align 8
  %1 = load i8, i8* %column.addr, align 1
  %tobool = trunc i8 %1 to i1
  %2 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  call void @colprintLineAppendColumnCString(%struct.colprintLine* %0, i8* %cond)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @colprintLineGetColumn(%struct.colprintLine* %line, i32 %column) #0 {
entry:
  %retval = alloca i8*, align 8
  %line.addr = alloca %struct.colprintLine*, align 8
  %column.addr = alloca i32, align 4
  %slist = alloca %struct.sPtrArray*, align 8
  %vstr = alloca %struct.sVString*, align 8
  store %struct.colprintLine* %line, %struct.colprintLine** %line.addr, align 8
  store i32 %column, i32* %column.addr, align 4
  %0 = load %struct.colprintLine*, %struct.colprintLine** %line.addr, align 8
  %1 = bitcast %struct.colprintLine* %0 to %struct.sPtrArray*
  store %struct.sPtrArray* %1, %struct.sPtrArray** %slist, align 8
  %2 = load i32, i32* %column.addr, align 4
  %3 = load %struct.sPtrArray*, %struct.sPtrArray** %slist, align 8
  %call = call i32 @stringListCount(%struct.sPtrArray* %3)
  %cmp = icmp ule i32 %2, %call
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct.sPtrArray*, %struct.sPtrArray** %slist, align 8
  %5 = load i32, i32* %column.addr, align 4
  %call1 = call %struct.sVString* @stringListItem(%struct.sPtrArray* %4, i32 %5)
  store %struct.sVString* %call1, %struct.sVString** %vstr, align 8
  %6 = load %struct.sVString*, %struct.sVString** %vstr, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %6, i32 0, i32 2
  %7 = load i8*, i8** %buffer, align 8
  store i8* %7, i8** %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then
  %8 = load i8*, i8** %retval, align 8
  ret i8* %8
}

declare i32 @stringListCount(%struct.sPtrArray*) #1

declare %struct.sVString* @stringListItem(%struct.sPtrArray*, i32) #1

declare void @vStringDelete(%struct.sVString*) #1

declare i8* @strstr(i8*, i8*) #1

declare i32 @ptrArrayCount(%struct.sPtrArray*) #1

declare i8* @ptrArrayItem(%struct.sPtrArray*, i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @colprintHeaderColumnPrint(%struct.colprintHeaderColumn* %headerCol, i1 zeroext %machinable, %struct.__sFILE* %fp) #0 {
entry:
  %headerCol.addr = alloca %struct.colprintHeaderColumn*, align 8
  %machinable.addr = alloca i8, align 1
  %fp.addr = alloca %struct.__sFILE*, align 8
  store %struct.colprintHeaderColumn* %headerCol, %struct.colprintHeaderColumn** %headerCol.addr, align 8
  %frombool = zext i1 %machinable to i8
  store i8 %frombool, i8* %machinable.addr, align 1
  store %struct.__sFILE* %fp, %struct.__sFILE** %fp.addr, align 8
  %0 = load %struct.colprintHeaderColumn*, %struct.colprintHeaderColumn** %headerCol.addr, align 8
  %value = getelementptr inbounds %struct.colprintHeaderColumn, %struct.colprintHeaderColumn* %0, i32 0, i32 0
  %1 = load %struct.sVString*, %struct.sVString** %value, align 8
  %2 = load %struct.colprintHeaderColumn*, %struct.colprintHeaderColumn** %headerCol.addr, align 8
  %3 = load i8, i8* %machinable.addr, align 1
  %tobool = trunc i8 %3 to i1
  %4 = load %struct.__sFILE*, %struct.__sFILE** %fp.addr, align 8
  call void @colprintColumnPrintGeneric(%struct.sVString* %1, %struct.colprintHeaderColumn* %2, i1 zeroext %tobool, %struct.__sFILE* %4)
  ret void
}

declare i32 @fputc(i32, %struct.__sFILE*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @colprintColumnPrintGeneric(%struct.sVString* %column, %struct.colprintHeaderColumn* %spec, i1 zeroext %machinable, %struct.__sFILE* %fp) #0 {
entry:
  %column.addr = alloca %struct.sVString*, align 8
  %spec.addr = alloca %struct.colprintHeaderColumn*, align 8
  %machinable.addr = alloca i8, align 1
  %fp.addr = alloca %struct.__sFILE*, align 8
  %maxWidth = alloca i32, align 4
  %padLen = alloca i32, align 4
  store %struct.sVString* %column, %struct.sVString** %column.addr, align 8
  store %struct.colprintHeaderColumn* %spec, %struct.colprintHeaderColumn** %spec.addr, align 8
  %frombool = zext i1 %machinable to i8
  store i8 %frombool, i8* %machinable.addr, align 1
  store %struct.__sFILE* %fp, %struct.__sFILE** %fp.addr, align 8
  %0 = load %struct.colprintHeaderColumn*, %struct.colprintHeaderColumn** %spec.addr, align 8
  %maxWidth1 = getelementptr inbounds %struct.colprintHeaderColumn, %struct.colprintHeaderColumn* %0, i32 0, i32 2
  %1 = load i32, i32* %maxWidth1, align 4
  %2 = load %struct.colprintHeaderColumn*, %struct.colprintHeaderColumn** %spec.addr, align 8
  %needPrefix = getelementptr inbounds %struct.colprintHeaderColumn, %struct.colprintHeaderColumn* %2, i32 0, i32 3
  %3 = load i8, i8* %needPrefix, align 8
  %tobool = trunc i8 %3 to i1
  %4 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i32 1, i32 0
  %add = add i32 %1, %cond
  store i32 %add, i32* %maxWidth, align 4
  %5 = load %struct.sVString*, %struct.sVString** %column.addr, align 8
  %6 = load %struct.colprintHeaderColumn*, %struct.colprintHeaderColumn** %spec.addr, align 8
  %value = getelementptr inbounds %struct.colprintHeaderColumn, %struct.colprintHeaderColumn* %6, i32 0, i32 0
  %7 = load %struct.sVString*, %struct.sVString** %value, align 8
  %cmp = icmp eq %struct.sVString* %5, %7
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %8 = load %struct.colprintHeaderColumn*, %struct.colprintHeaderColumn** %spec.addr, align 8
  %needPrefix2 = getelementptr inbounds %struct.colprintHeaderColumn, %struct.colprintHeaderColumn* %8, i32 0, i32 3
  %9 = load i8, i8* %needPrefix2, align 8
  %tobool3 = trunc i8 %9 to i1
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %10 = load %struct.__sFILE*, %struct.__sFILE** %fp.addr, align 8
  %call = call i32 @fputc(i32 35, %struct.__sFILE* %10)
  %11 = load i32, i32* %maxWidth, align 4
  %dec = add nsw i32 %11, -1
  store i32 %dec, i32* %maxWidth, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %12 = load i8, i8* %machinable.addr, align 1
  %tobool4 = trunc i8 %12 to i1
  br i1 %tobool4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  %13 = load %struct.sVString*, %struct.sVString** %column.addr, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %13, i32 0, i32 2
  %14 = load i8*, i8** %buffer, align 8
  %15 = load %struct.__sFILE*, %struct.__sFILE** %fp.addr, align 8
  %call6 = call i32 @"\01_fputs"(i8* %14, %struct.__sFILE* %15)
  %16 = load %struct.colprintHeaderColumn*, %struct.colprintHeaderColumn** %spec.addr, align 8
  %justification = getelementptr inbounds %struct.colprintHeaderColumn, %struct.colprintHeaderColumn* %16, i32 0, i32 1
  %17 = load i32, i32* %justification, align 8
  %cmp7 = icmp ne i32 %17, 2
  br i1 %cmp7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.then5
  %18 = load %struct.__sFILE*, %struct.__sFILE** %fp.addr, align 8
  %call9 = call i32 @fputc(i32 9, %struct.__sFILE* %18)
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.then5
  br label %if.end32

if.else:                                          ; preds = %if.end
  %19 = load i32, i32* %maxWidth, align 4
  %conv = sext i32 %19 to i64
  %20 = load %struct.sVString*, %struct.sVString** %column.addr, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %20, i32 0, i32 0
  %21 = load i64, i64* %length, align 8
  %sub = sub i64 %conv, %21
  %conv11 = trunc i64 %sub to i32
  store i32 %conv11, i32* %padLen, align 4
  %22 = load %struct.colprintHeaderColumn*, %struct.colprintHeaderColumn** %spec.addr, align 8
  %justification12 = getelementptr inbounds %struct.colprintHeaderColumn, %struct.colprintHeaderColumn* %22, i32 0, i32 1
  %23 = load i32, i32* %justification12, align 8
  %cmp13 = icmp eq i32 %23, 0
  br i1 %cmp13, label %if.then18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %24 = load %struct.colprintHeaderColumn*, %struct.colprintHeaderColumn** %spec.addr, align 8
  %justification15 = getelementptr inbounds %struct.colprintHeaderColumn, %struct.colprintHeaderColumn* %24, i32 0, i32 1
  %25 = load i32, i32* %justification15, align 8
  %cmp16 = icmp eq i32 %25, 2
  br i1 %cmp16, label %if.then18, label %if.else27

if.then18:                                        ; preds = %lor.lhs.false, %if.else
  %26 = load %struct.sVString*, %struct.sVString** %column.addr, align 8
  %buffer19 = getelementptr inbounds %struct.sVString, %struct.sVString* %26, i32 0, i32 2
  %27 = load i8*, i8** %buffer19, align 8
  %28 = load %struct.__sFILE*, %struct.__sFILE** %fp.addr, align 8
  %call20 = call i32 @"\01_fputs"(i8* %27, %struct.__sFILE* %28)
  %29 = load %struct.colprintHeaderColumn*, %struct.colprintHeaderColumn** %spec.addr, align 8
  %justification21 = getelementptr inbounds %struct.colprintHeaderColumn, %struct.colprintHeaderColumn* %29, i32 0, i32 1
  %30 = load i32, i32* %justification21, align 8
  %cmp22 = icmp ne i32 %30, 2
  br i1 %cmp22, label %if.then24, label %if.end26

if.then24:                                        ; preds = %if.then18
  %31 = load i32, i32* %padLen, align 4
  %32 = load %struct.__sFILE*, %struct.__sFILE** %fp.addr, align 8
  call void @fillWithWhitespaces(i32 %31, %struct.__sFILE* %32)
  %33 = load %struct.__sFILE*, %struct.__sFILE** %fp.addr, align 8
  %call25 = call i32 @fputc(i32 32, %struct.__sFILE* %33)
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.then18
  br label %if.end31

if.else27:                                        ; preds = %lor.lhs.false
  %34 = load i32, i32* %padLen, align 4
  %35 = load %struct.__sFILE*, %struct.__sFILE** %fp.addr, align 8
  call void @fillWithWhitespaces(i32 %34, %struct.__sFILE* %35)
  %36 = load %struct.sVString*, %struct.sVString** %column.addr, align 8
  %buffer28 = getelementptr inbounds %struct.sVString, %struct.sVString* %36, i32 0, i32 2
  %37 = load i8*, i8** %buffer28, align 8
  %38 = load %struct.__sFILE*, %struct.__sFILE** %fp.addr, align 8
  %call29 = call i32 @"\01_fputs"(i8* %37, %struct.__sFILE* %38)
  %39 = load %struct.__sFILE*, %struct.__sFILE** %fp.addr, align 8
  %call30 = call i32 @fputc(i32 32, %struct.__sFILE* %39)
  br label %if.end31

if.end31:                                         ; preds = %if.else27, %if.end26
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %if.end10
  ret void
}

declare i32 @"\01_fputs"(i8*, %struct.__sFILE*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @fillWithWhitespaces(i32 %i, %struct.__sFILE* %fp) #0 {
entry:
  %i.addr = alloca i32, align 4
  %fp.addr = alloca %struct.__sFILE*, align 8
  store i32 %i, i32* %i.addr, align 4
  store %struct.__sFILE* %fp, %struct.__sFILE** %fp.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* %i.addr, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* %i.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.__sFILE*, %struct.__sFILE** %fp.addr, align 8
  %call = call i32 @fputc(i32 32, %struct.__sFILE* %1)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @colprintLinePrint(%struct.sPtrArray* %line, i32 %startFrom, %struct.sPtrArray* %header, i1 zeroext %machinable, %struct.__sFILE* %fp) #0 {
entry:
  %line.addr = alloca %struct.sPtrArray*, align 8
  %startFrom.addr = alloca i32, align 4
  %header.addr = alloca %struct.sPtrArray*, align 8
  %machinable.addr = alloca i8, align 1
  %fp.addr = alloca %struct.__sFILE*, align 8
  %i = alloca i32, align 4
  %value = alloca %struct.sVString*, align 8
  %spec = alloca %struct.colprintHeaderColumn*, align 8
  store %struct.sPtrArray* %line, %struct.sPtrArray** %line.addr, align 8
  store i32 %startFrom, i32* %startFrom.addr, align 4
  store %struct.sPtrArray* %header, %struct.sPtrArray** %header.addr, align 8
  %frombool = zext i1 %machinable to i8
  store i8 %frombool, i8* %machinable.addr, align 1
  store %struct.__sFILE* %fp, %struct.__sFILE** %fp.addr, align 8
  %0 = load i32, i32* %startFrom.addr, align 4
  store i32 %0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load %struct.sPtrArray*, %struct.sPtrArray** %line.addr, align 8
  %call = call i32 @stringListCount(%struct.sPtrArray* %2)
  %cmp = icmp ult i32 %1, %call
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.sPtrArray*, %struct.sPtrArray** %line.addr, align 8
  %4 = load i32, i32* %i, align 4
  %call1 = call %struct.sVString* @stringListItem(%struct.sPtrArray* %3, i32 %4)
  store %struct.sVString* %call1, %struct.sVString** %value, align 8
  %5 = load %struct.sPtrArray*, %struct.sPtrArray** %header.addr, align 8
  %6 = load i32, i32* %i, align 4
  %call2 = call i8* @ptrArrayItem(%struct.sPtrArray* %5, i32 %6)
  %7 = bitcast i8* %call2 to %struct.colprintHeaderColumn*
  store %struct.colprintHeaderColumn* %7, %struct.colprintHeaderColumn** %spec, align 8
  %8 = load %struct.sVString*, %struct.sVString** %value, align 8
  %9 = load %struct.colprintHeaderColumn*, %struct.colprintHeaderColumn** %spec, align 8
  %10 = load i8, i8* %machinable.addr, align 1
  %tobool = trunc i8 %10 to i1
  %11 = load %struct.__sFILE*, %struct.__sFILE** %fp.addr, align 8
  call void @colprintColumnPrintGeneric(%struct.sVString* %8, %struct.colprintHeaderColumn* %9, i1 zeroext %tobool, %struct.__sFILE* %11)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %inc = add i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @stringListAdd(%struct.sPtrArray*, %struct.sVString*) #1

declare void @vStringResize(%struct.sVString*, i64) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 10.0.0 (https://github.com/holzschu/clang.git 0cfc630fbdb62e96720b611a57123ef3eb13e297) (https://github.com/holzschu/llvm.git 0d8a71e39b28502c24718f7e74b5acbcfe36dfe0)"}
