; ModuleID = 'dependency.c'
source_filename = "dependency.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-ios11.0.0"

%struct.slaveControlBlock = type { %struct.sSlaveParser*, %struct.sSubparser*, %struct.sSubparser*, i32 }
%struct.sSlaveParser = type { i32, i32, i8*, %struct.sSlaveParser* }
%struct.sSubparser = type { %struct.sSlaveParser*, %struct.sSubparser*, i8, i8, i32, void (%struct.sSubparser*)*, void (%struct.sSubparser*)*, void (%struct.sSubparser*, i8*)*, void (%struct.sSubparser*, %struct.sTagEntryInfo*, i32)* }
%struct.sTagEntryInfo = type { i8, i64, i8*, i32, %struct._MIOPos, i32, i8*, i8*, i32, [2 x i8], i8*, %struct.anon, i32, [5 x %struct.sTagField], %struct.sPtrArray*, i32, i8*, i64 }
%struct._MIOPos = type { i32, %union.anon.0 }
%union.anon.0 = type { i64 }
%struct.anon = type { i8*, i8*, i8*, i8*, i32, i32, i8*, i32, i8*, [2 x i8*], i32, i64 }
%struct.sTagField = type { i32, i8*, i8 }
%struct.sPtrArray = type opaque
%struct.sParserDefinition = type { i8*, %struct.sKindDefinition*, i32, i8**, i8**, i8**, void (i32)*, void (i32, i1)*, void ()*, i32 (i32)*, i8* (%struct._MIO*, i32*, i32)**, i32, i8, i8, i8, i8, %struct.tagRegexTable*, i32, %struct.keywordTable*, i32, %struct.sTagXpathTableTable*, i32, i8, %struct.sFieldDefinition*, i32, %struct.sXtagDefinition*, i32, %struct.sParserDependency*, i32, %struct.sParameterHandlerTable*, i32, %struct.sXpathFileSpec*, i32, i32, i8 }
%struct.sKindDefinition = type { i8, i8, i8*, i8*, i8, i32, %struct.sRoleDesc*, %struct.sScopeSeparator*, i32, i32, i32, %struct.sKindDefinition*, %struct.sKindDefinition* }
%struct.sRoleDesc = type { i8, i8*, i8* }
%struct.sScopeSeparator = type { i32, i8* }
%struct._MIO = type opaque
%struct.tagRegexTable = type { i8*, i8*, i8*, i8*, i8*, i8 }
%struct.keywordTable = type { i8*, i32 }
%struct.sTagXpathTableTable = type { %struct.sTagXpathTable*, i32 }
%struct.sTagXpathTable = type { i8*, i32, %union.anon, i8* }
%union.anon = type { %struct.sTagXpathMakeTagSpec }
%struct.sTagXpathMakeTagSpec = type { i32, i32, void (i8*, %struct.sTagXpathMakeTagSpec*, %struct.sTagEntryInfo*, i8*)* }
%struct.sFieldDefinition = type { i8, i8*, i8*, i8, [5 x i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)*], i1 (%struct.sTagEntryInfo*)*, i32, i32 }
%struct.sVString = type { i64, i64, i8* }
%struct.sXtagDefinition = type { i8, i8, i8*, i8*, i1 (%struct.sXtagDefinition*)*, i1 (%struct.sXtagDefinition*)*, i32 }
%struct.sParserDependency = type { i32, i8*, i8* }
%struct.sParameterHandlerTable = type { i8*, i8*, void (i32, i8*, i8*)* }
%struct.sXpathFileSpec = type { i8*, i8*, i8*, i8*, i8*, i8* }
%struct.kindControlBlock = type opaque
%struct.colprintTable = type opaque
%struct.colprintLine = type opaque
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@.str = private unnamed_addr constant [37 x i8] c"%s is chosen as exclusive subparser\0A\00", align 1
@subparserDepth = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"L:NAME\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"L:BASEPARSER\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"L:DIRECTIONS\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"base => sub {shared}\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"base <= sub {dedicated}\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"base <> sub {bidirectional}\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"UNKNOWN(INTERNAL BUG)\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @linkDependencyAtInitializeParsing(i32 %dtype, %struct.sParserDefinition* %master, %struct.slaveControlBlock* %masterSCB, %struct.kindControlBlock* %masterKCB, %struct.sParserDefinition* %slave, %struct.kindControlBlock* %slaveKCB, i8* %data) #0 {
entry:
  %dtype.addr = alloca i32, align 4
  %master.addr = alloca %struct.sParserDefinition*, align 8
  %masterSCB.addr = alloca %struct.slaveControlBlock*, align 8
  %masterKCB.addr = alloca %struct.kindControlBlock*, align 8
  %slave.addr = alloca %struct.sParserDefinition*, align 8
  %slaveKCB.addr = alloca %struct.kindControlBlock*, align 8
  %data.addr = alloca i8*, align 8
  %s = alloca %struct.sSlaveParser*, align 8
  store i32 %dtype, i32* %dtype.addr, align 4
  store %struct.sParserDefinition* %master, %struct.sParserDefinition** %master.addr, align 8
  store %struct.slaveControlBlock* %masterSCB, %struct.slaveControlBlock** %masterSCB.addr, align 8
  store %struct.kindControlBlock* %masterKCB, %struct.kindControlBlock** %masterKCB.addr, align 8
  store %struct.sParserDefinition* %slave, %struct.sParserDefinition** %slave.addr, align 8
  store %struct.kindControlBlock* %slaveKCB, %struct.kindControlBlock** %slaveKCB.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i32, i32* %dtype.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.kindControlBlock*, %struct.kindControlBlock** %masterKCB.addr, align 8
  %2 = load %struct.kindControlBlock*, %struct.kindControlBlock** %slaveKCB.addr, align 8
  call void @linkKindDependency(%struct.kindControlBlock* %1, %struct.kindControlBlock* %2)
  br label %if.end6

if.else:                                          ; preds = %entry
  %3 = load i32, i32* %dtype.addr, align 4
  %cmp1 = icmp eq i32 %3, 1
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.else
  %call = call i8* @eMalloc(i64 24)
  %4 = bitcast i8* %call to %struct.sSlaveParser*
  store %struct.sSlaveParser* %4, %struct.sSlaveParser** %s, align 8
  %5 = load i32, i32* %dtype.addr, align 4
  %6 = load %struct.sSlaveParser*, %struct.sSlaveParser** %s, align 8
  %type = getelementptr inbounds %struct.sSlaveParser, %struct.sSlaveParser* %6, i32 0, i32 0
  store i32 %5, i32* %type, align 8
  %7 = load %struct.sParserDefinition*, %struct.sParserDefinition** %slave.addr, align 8
  %id = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %7, i32 0, i32 33
  %8 = load i32, i32* %id, align 4
  %9 = load %struct.sSlaveParser*, %struct.sSlaveParser** %s, align 8
  %id3 = getelementptr inbounds %struct.sSlaveParser, %struct.sSlaveParser* %9, i32 0, i32 1
  store i32 %8, i32* %id3, align 4
  %10 = load i8*, i8** %data.addr, align 8
  %11 = load %struct.sSlaveParser*, %struct.sSlaveParser** %s, align 8
  %data4 = getelementptr inbounds %struct.sSlaveParser, %struct.sSlaveParser* %11, i32 0, i32 2
  store i8* %10, i8** %data4, align 8
  %12 = load %struct.slaveControlBlock*, %struct.slaveControlBlock** %masterSCB.addr, align 8
  %slaveParsers = getelementptr inbounds %struct.slaveControlBlock, %struct.slaveControlBlock* %12, i32 0, i32 0
  %13 = load %struct.sSlaveParser*, %struct.sSlaveParser** %slaveParsers, align 8
  %14 = load %struct.sSlaveParser*, %struct.sSlaveParser** %s, align 8
  %next = getelementptr inbounds %struct.sSlaveParser, %struct.sSlaveParser* %14, i32 0, i32 3
  store %struct.sSlaveParser* %13, %struct.sSlaveParser** %next, align 8
  %15 = load %struct.sSlaveParser*, %struct.sSlaveParser** %s, align 8
  %16 = load %struct.slaveControlBlock*, %struct.slaveControlBlock** %masterSCB.addr, align 8
  %slaveParsers5 = getelementptr inbounds %struct.slaveControlBlock, %struct.slaveControlBlock* %16, i32 0, i32 0
  store %struct.sSlaveParser* %15, %struct.sSlaveParser** %slaveParsers5, align 8
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.then
  ret void
}

declare void @linkKindDependency(%struct.kindControlBlock*, %struct.kindControlBlock*) #1

declare i8* @eMalloc(i64) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.slaveControlBlock* @allocSlaveControlBlock(%struct.sParserDefinition* %parser) #0 {
entry:
  %parser.addr = alloca %struct.sParserDefinition*, align 8
  %cb = alloca %struct.slaveControlBlock*, align 8
  store %struct.sParserDefinition* %parser, %struct.sParserDefinition** %parser.addr, align 8
  %call = call i8* @eMalloc(i64 32)
  %0 = bitcast i8* %call to %struct.slaveControlBlock*
  store %struct.slaveControlBlock* %0, %struct.slaveControlBlock** %cb, align 8
  %1 = load %struct.slaveControlBlock*, %struct.slaveControlBlock** %cb, align 8
  %slaveParsers = getelementptr inbounds %struct.slaveControlBlock, %struct.slaveControlBlock* %1, i32 0, i32 0
  store %struct.sSlaveParser* null, %struct.sSlaveParser** %slaveParsers, align 8
  %2 = load %struct.slaveControlBlock*, %struct.slaveControlBlock** %cb, align 8
  %subparsersDefault = getelementptr inbounds %struct.slaveControlBlock, %struct.slaveControlBlock* %2, i32 0, i32 1
  store %struct.sSubparser* null, %struct.sSubparser** %subparsersDefault, align 8
  %3 = load %struct.slaveControlBlock*, %struct.slaveControlBlock** %cb, align 8
  %subparsersInUse = getelementptr inbounds %struct.slaveControlBlock, %struct.slaveControlBlock* %3, i32 0, i32 2
  store %struct.sSubparser* null, %struct.sSubparser** %subparsersInUse, align 8
  %4 = load %struct.sParserDefinition*, %struct.sParserDefinition** %parser.addr, align 8
  %id = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %4, i32 0, i32 33
  %5 = load i32, i32* %id, align 4
  %6 = load %struct.slaveControlBlock*, %struct.slaveControlBlock** %cb, align 8
  %owner = getelementptr inbounds %struct.slaveControlBlock, %struct.slaveControlBlock* %6, i32 0, i32 3
  store i32 %5, i32* %owner, align 8
  %7 = load %struct.slaveControlBlock*, %struct.slaveControlBlock** %cb, align 8
  ret %struct.slaveControlBlock* %7
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @freeSlaveControlBlock(%struct.slaveControlBlock* %cb) #0 {
entry:
  %cb.addr = alloca %struct.slaveControlBlock*, align 8
  store %struct.slaveControlBlock* %cb, %struct.slaveControlBlock** %cb.addr, align 8
  %0 = load %struct.slaveControlBlock*, %struct.slaveControlBlock** %cb.addr, align 8
  %1 = bitcast %struct.slaveControlBlock* %0 to i8*
  call void @eFree(i8* %1)
  ret void
}

declare void @eFree(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @initializeDependencies(%struct.sParserDefinition* %parser, %struct.slaveControlBlock* %cb) #0 {
entry:
  %parser.addr = alloca %struct.sParserDefinition*, align 8
  %cb.addr = alloca %struct.slaveControlBlock*, align 8
  %i = alloca i32, align 4
  %sp = alloca %struct.sSlaveParser*, align 8
  %sub = alloca %struct.sSubparser*, align 8
  %subparser = alloca %struct.sSubparser*, align 8
  %d = alloca %struct.sParserDependency*, align 8
  %baseParser = alloca i32, align 4
  store %struct.sParserDefinition* %parser, %struct.sParserDefinition** %parser.addr, align 8
  store %struct.slaveControlBlock* %cb, %struct.slaveControlBlock** %cb.addr, align 8
  %0 = load %struct.slaveControlBlock*, %struct.slaveControlBlock** %cb.addr, align 8
  %slaveParsers = getelementptr inbounds %struct.slaveControlBlock, %struct.slaveControlBlock* %0, i32 0, i32 0
  %1 = load %struct.sSlaveParser*, %struct.sSlaveParser** %slaveParsers, align 8
  store %struct.sSlaveParser* %1, %struct.sSlaveParser** %sp, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end14, %entry
  %2 = load %struct.sSlaveParser*, %struct.sSlaveParser** %sp, align 8
  %cmp = icmp ne %struct.sSlaveParser* %2, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct.sSlaveParser*, %struct.sSlaveParser** %sp, align 8
  %type = getelementptr inbounds %struct.sSlaveParser, %struct.sSlaveParser* %3, i32 0, i32 0
  %4 = load i32, i32* %type, align 8
  %cmp1 = icmp eq i32 %4, 1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %5 = load %struct.sSlaveParser*, %struct.sSlaveParser** %sp, align 8
  %data = getelementptr inbounds %struct.sSlaveParser, %struct.sSlaveParser* %5, i32 0, i32 2
  %6 = load i8*, i8** %data, align 8
  %7 = bitcast i8* %6 to %struct.sSubparser*
  store %struct.sSubparser* %7, %struct.sSubparser** %sub, align 8
  %8 = load %struct.sSlaveParser*, %struct.sSlaveParser** %sp, align 8
  %9 = load %struct.sSubparser*, %struct.sSubparser** %sub, align 8
  %slaveParser = getelementptr inbounds %struct.sSubparser, %struct.sSubparser* %9, i32 0, i32 0
  store %struct.sSlaveParser* %8, %struct.sSlaveParser** %slaveParser, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %10 = load %struct.sSlaveParser*, %struct.sSlaveParser** %sp, align 8
  %type2 = getelementptr inbounds %struct.sSlaveParser, %struct.sSlaveParser* %10, i32 0, i32 0
  %11 = load i32, i32* %type2, align 8
  %cmp3 = icmp eq i32 %11, 0
  br i1 %cmp3, label %if.then7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %12 = load %struct.sSlaveParser*, %struct.sSlaveParser** %sp, align 8
  %type4 = getelementptr inbounds %struct.sSlaveParser, %struct.sSlaveParser* %12, i32 0, i32 0
  %13 = load i32, i32* %type4, align 8
  %cmp5 = icmp eq i32 %13, 1
  br i1 %cmp5, label %land.lhs.true, label %if.end14

land.lhs.true:                                    ; preds = %lor.lhs.false
  %14 = load %struct.sSlaveParser*, %struct.sSlaveParser** %sp, align 8
  %data6 = getelementptr inbounds %struct.sSlaveParser, %struct.sSlaveParser* %14, i32 0, i32 2
  %15 = load i8*, i8** %data6, align 8
  %16 = bitcast i8* %15 to %struct.sSubparser*
  %direction = getelementptr inbounds %struct.sSubparser, %struct.sSubparser* %16, i32 0, i32 4
  %17 = load i32, i32* %direction, align 4
  %and = and i32 %17, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then7, label %if.end14

if.then7:                                         ; preds = %land.lhs.true, %if.end
  %18 = load %struct.sSlaveParser*, %struct.sSlaveParser** %sp, align 8
  %id = getelementptr inbounds %struct.sSlaveParser, %struct.sSlaveParser* %18, i32 0, i32 1
  %19 = load i32, i32* %id, align 4
  call void @initializeParser(i32 %19)
  %20 = load %struct.sSlaveParser*, %struct.sSlaveParser** %sp, align 8
  %type8 = getelementptr inbounds %struct.sSlaveParser, %struct.sSlaveParser* %20, i32 0, i32 0
  %21 = load i32, i32* %type8, align 8
  %cmp9 = icmp eq i32 %21, 1
  br i1 %cmp9, label %land.lhs.true10, label %if.end13

land.lhs.true10:                                  ; preds = %if.then7
  %call = call zeroext i1 @isXtagEnabled(i32 6)
  br i1 %call, label %if.then11, label %if.end13

if.then11:                                        ; preds = %land.lhs.true10
  %22 = load %struct.sSlaveParser*, %struct.sSlaveParser** %sp, align 8
  %data12 = getelementptr inbounds %struct.sSlaveParser, %struct.sSlaveParser* %22, i32 0, i32 2
  %23 = load i8*, i8** %data12, align 8
  %24 = bitcast i8* %23 to %struct.sSubparser*
  store %struct.sSubparser* %24, %struct.sSubparser** %subparser, align 8
  %25 = load %struct.slaveControlBlock*, %struct.slaveControlBlock** %cb.addr, align 8
  %26 = load %struct.sSubparser*, %struct.sSubparser** %subparser, align 8
  call void @attachSubparser(%struct.slaveControlBlock* %25, %struct.sSubparser* %26)
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %land.lhs.true10, %if.then7
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %land.lhs.true, %lor.lhs.false
  %27 = load %struct.sSlaveParser*, %struct.sSlaveParser** %sp, align 8
  %next = getelementptr inbounds %struct.sSlaveParser, %struct.sSlaveParser* %27, i32 0, i32 3
  %28 = load %struct.sSlaveParser*, %struct.sSlaveParser** %next, align 8
  store %struct.sSlaveParser* %28, %struct.sSlaveParser** %sp, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %29 = load i32, i32* %i, align 4
  %30 = load %struct.sParserDefinition*, %struct.sParserDefinition** %parser.addr, align 8
  %dependencyCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %30, i32 0, i32 28
  %31 = load i32, i32* %dependencyCount, align 8
  %cmp15 = icmp ult i32 %29, %31
  br i1 %cmp15, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %32 = load %struct.sParserDefinition*, %struct.sParserDefinition** %parser.addr, align 8
  %dependencies = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %32, i32 0, i32 27
  %33 = load %struct.sParserDependency*, %struct.sParserDependency** %dependencies, align 8
  %34 = load i32, i32* %i, align 4
  %idx.ext = zext i32 %34 to i64
  %add.ptr = getelementptr inbounds %struct.sParserDependency, %struct.sParserDependency* %33, i64 %idx.ext
  store %struct.sParserDependency* %add.ptr, %struct.sParserDependency** %d, align 8
  %35 = load %struct.sParserDependency*, %struct.sParserDependency** %d, align 8
  %type16 = getelementptr inbounds %struct.sParserDependency, %struct.sParserDependency* %35, i32 0, i32 0
  %36 = load i32, i32* %type16, align 8
  %cmp17 = icmp eq i32 %36, 1
  br i1 %cmp17, label %land.lhs.true18, label %if.end25

land.lhs.true18:                                  ; preds = %for.body
  %37 = load %struct.sParserDependency*, %struct.sParserDependency** %d, align 8
  %data19 = getelementptr inbounds %struct.sParserDependency, %struct.sParserDependency* %37, i32 0, i32 2
  %38 = load i8*, i8** %data19, align 8
  %39 = bitcast i8* %38 to %struct.sSubparser*
  %direction20 = getelementptr inbounds %struct.sSubparser, %struct.sSubparser* %39, i32 0, i32 4
  %40 = load i32, i32* %direction20, align 4
  %and21 = and i32 %40, 2
  %tobool22 = icmp ne i32 %and21, 0
  br i1 %tobool22, label %if.then23, label %if.end25

if.then23:                                        ; preds = %land.lhs.true18
  %41 = load %struct.sParserDependency*, %struct.sParserDependency** %d, align 8
  %upperParser = getelementptr inbounds %struct.sParserDependency, %struct.sParserDependency* %41, i32 0, i32 1
  %42 = load i8*, i8** %upperParser, align 8
  %call24 = call i32 @getNamedLanguage(i8* %42, i64 0)
  store i32 %call24, i32* %baseParser, align 4
  br label %do.body

do.body:                                          ; preds = %if.then23
  br label %do.end

do.end:                                           ; preds = %do.body
  %43 = load i32, i32* %baseParser, align 4
  call void @initializeParser(i32 %43)
  br label %if.end25

if.end25:                                         ; preds = %do.end, %land.lhs.true18, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end25
  %44 = load i32, i32* %i, align 4
  %inc = add i32 %44, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @initializeParser(i32) #1

declare zeroext i1 @isXtagEnabled(i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @attachSubparser(%struct.slaveControlBlock* %base_sb, %struct.sSubparser* %subparser) #0 {
entry:
  %base_sb.addr = alloca %struct.slaveControlBlock*, align 8
  %subparser.addr = alloca %struct.sSubparser*, align 8
  store %struct.slaveControlBlock* %base_sb, %struct.slaveControlBlock** %base_sb.addr, align 8
  store %struct.sSubparser* %subparser, %struct.sSubparser** %subparser.addr, align 8
  %0 = load %struct.slaveControlBlock*, %struct.slaveControlBlock** %base_sb.addr, align 8
  %subparsersDefault = getelementptr inbounds %struct.slaveControlBlock, %struct.slaveControlBlock* %0, i32 0, i32 1
  %1 = load %struct.sSubparser*, %struct.sSubparser** %subparsersDefault, align 8
  %2 = load %struct.sSubparser*, %struct.sSubparser** %subparser.addr, align 8
  %next = getelementptr inbounds %struct.sSubparser, %struct.sSubparser* %2, i32 0, i32 1
  store %struct.sSubparser* %1, %struct.sSubparser** %next, align 8
  %3 = load %struct.sSubparser*, %struct.sSubparser** %subparser.addr, align 8
  %4 = load %struct.slaveControlBlock*, %struct.slaveControlBlock** %base_sb.addr, align 8
  %subparsersDefault1 = getelementptr inbounds %struct.slaveControlBlock, %struct.slaveControlBlock* %4, i32 0, i32 1
  store %struct.sSubparser* %3, %struct.sSubparser** %subparsersDefault1, align 8
  ret void
}

declare i32 @getNamedLanguage(i8*, i64) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @finalizeDependencies(%struct.sParserDefinition* %parser, %struct.slaveControlBlock* %cb) #0 {
entry:
  %parser.addr = alloca %struct.sParserDefinition*, align 8
  %cb.addr = alloca %struct.slaveControlBlock*, align 8
  %sp = alloca %struct.sSlaveParser*, align 8
  store %struct.sParserDefinition* %parser, %struct.sParserDefinition** %parser.addr, align 8
  store %struct.slaveControlBlock* %cb, %struct.slaveControlBlock** %cb.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.slaveControlBlock*, %struct.slaveControlBlock** %cb.addr, align 8
  %slaveParsers = getelementptr inbounds %struct.slaveControlBlock, %struct.slaveControlBlock* %0, i32 0, i32 0
  %1 = load %struct.sSlaveParser*, %struct.sSlaveParser** %slaveParsers, align 8
  %tobool = icmp ne %struct.sSlaveParser* %1, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.slaveControlBlock*, %struct.slaveControlBlock** %cb.addr, align 8
  %slaveParsers1 = getelementptr inbounds %struct.slaveControlBlock, %struct.slaveControlBlock* %2, i32 0, i32 0
  %3 = load %struct.sSlaveParser*, %struct.sSlaveParser** %slaveParsers1, align 8
  store %struct.sSlaveParser* %3, %struct.sSlaveParser** %sp, align 8
  %4 = load %struct.sSlaveParser*, %struct.sSlaveParser** %sp, align 8
  %next = getelementptr inbounds %struct.sSlaveParser, %struct.sSlaveParser* %4, i32 0, i32 3
  %5 = load %struct.sSlaveParser*, %struct.sSlaveParser** %next, align 8
  %6 = load %struct.slaveControlBlock*, %struct.slaveControlBlock** %cb.addr, align 8
  %slaveParsers2 = getelementptr inbounds %struct.slaveControlBlock, %struct.slaveControlBlock* %6, i32 0, i32 0
  store %struct.sSlaveParser* %5, %struct.sSlaveParser** %slaveParsers2, align 8
  %7 = load %struct.sSlaveParser*, %struct.sSlaveParser** %sp, align 8
  %next3 = getelementptr inbounds %struct.sSlaveParser, %struct.sSlaveParser* %7, i32 0, i32 3
  store %struct.sSlaveParser* null, %struct.sSlaveParser** %next3, align 8
  %8 = load %struct.sSlaveParser*, %struct.sSlaveParser** %sp, align 8
  %9 = bitcast %struct.sSlaveParser* %8 to i8*
  call void @eFree(i8* %9)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @notifyInputStart() #0 {
entry:
  %s = alloca %struct.sSubparser*, align 8
  %lang = alloca i32, align 4
  store %struct.sSubparser* null, %struct.sSubparser** %s, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %struct.sSubparser*, %struct.sSubparser** %s, align 8
  %call = call %struct.sSubparser* @getNextSubparser(%struct.sSubparser* %0, i1 zeroext false)
  store %struct.sSubparser* %call, %struct.sSubparser** %s, align 8
  %cmp = icmp ne %struct.sSubparser* %call, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.sSubparser*, %struct.sSubparser** %s, align 8
  %call1 = call i32 @getSubparserLanguage(%struct.sSubparser* %1)
  store i32 %call1, i32* %lang, align 4
  %2 = load i32, i32* %lang, align 4
  call void @notifyLanguageRegexInputStart(i32 %2)
  %3 = load %struct.sSubparser*, %struct.sSubparser** %s, align 8
  %inputStart = getelementptr inbounds %struct.sSubparser, %struct.sSubparser* %3, i32 0, i32 5
  %4 = load void (%struct.sSubparser*)*, void (%struct.sSubparser*)** %inputStart, align 8
  %tobool = icmp ne void (%struct.sSubparser*)* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %5 = load %struct.sSubparser*, %struct.sSubparser** %s, align 8
  call void @enterSubparser(%struct.sSubparser* %5)
  %6 = load %struct.sSubparser*, %struct.sSubparser** %s, align 8
  %inputStart2 = getelementptr inbounds %struct.sSubparser, %struct.sSubparser* %6, i32 0, i32 5
  %7 = load void (%struct.sSubparser*)*, void (%struct.sSubparser*)** %inputStart2, align 8
  %8 = load %struct.sSubparser*, %struct.sSubparser** %s, align 8
  call void %7(%struct.sSubparser* %8)
  call void @leaveSubparser()
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

declare %struct.sSubparser* @getNextSubparser(%struct.sSubparser*, i1 zeroext) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @getSubparserLanguage(%struct.sSubparser* %s) #0 {
entry:
  %s.addr = alloca %struct.sSubparser*, align 8
  store %struct.sSubparser* %s, %struct.sSubparser** %s.addr, align 8
  %0 = load %struct.sSubparser*, %struct.sSubparser** %s.addr, align 8
  %slaveParser = getelementptr inbounds %struct.sSubparser, %struct.sSubparser* %0, i32 0, i32 0
  %1 = load %struct.sSlaveParser*, %struct.sSlaveParser** %slaveParser, align 8
  %id = getelementptr inbounds %struct.sSlaveParser, %struct.sSlaveParser* %1, i32 0, i32 1
  %2 = load i32, i32* %id, align 4
  ret i32 %2
}

declare void @notifyLanguageRegexInputStart(i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @enterSubparser(%struct.sSubparser* %subparser) #0 {
entry:
  %subparser.addr = alloca %struct.sSubparser*, align 8
  store %struct.sSubparser* %subparser, %struct.sSubparser** %subparser.addr, align 8
  %0 = load i32, i32* @subparserDepth, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @subparserDepth, align 4
  %1 = load %struct.sSubparser*, %struct.sSubparser** %subparser.addr, align 8
  %call = call i32 @getSubparserLanguage(%struct.sSubparser* %1)
  call void @pushLanguage(i32 %call)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @leaveSubparser() #0 {
entry:
  %call = call i32 @popLanguage()
  %0 = load i32, i32* @subparserDepth, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* @subparserDepth, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @notifyInputEnd() #0 {
entry:
  %s = alloca %struct.sSubparser*, align 8
  %lang = alloca i32, align 4
  store %struct.sSubparser* null, %struct.sSubparser** %s, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %struct.sSubparser*, %struct.sSubparser** %s, align 8
  %call = call %struct.sSubparser* @getNextSubparser(%struct.sSubparser* %0, i1 zeroext false)
  store %struct.sSubparser* %call, %struct.sSubparser** %s, align 8
  %cmp = icmp ne %struct.sSubparser* %call, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.sSubparser*, %struct.sSubparser** %s, align 8
  %inputEnd = getelementptr inbounds %struct.sSubparser, %struct.sSubparser* %1, i32 0, i32 6
  %2 = load void (%struct.sSubparser*)*, void (%struct.sSubparser*)** %inputEnd, align 8
  %tobool = icmp ne void (%struct.sSubparser*)* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %3 = load %struct.sSubparser*, %struct.sSubparser** %s, align 8
  call void @enterSubparser(%struct.sSubparser* %3)
  %4 = load %struct.sSubparser*, %struct.sSubparser** %s, align 8
  %inputEnd1 = getelementptr inbounds %struct.sSubparser, %struct.sSubparser* %4, i32 0, i32 6
  %5 = load void (%struct.sSubparser*)*, void (%struct.sSubparser*)** %inputEnd1, align 8
  %6 = load %struct.sSubparser*, %struct.sSubparser** %s, align 8
  call void %5(%struct.sSubparser* %6)
  call void @leaveSubparser()
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %7 = load %struct.sSubparser*, %struct.sSubparser** %s, align 8
  %call2 = call i32 @getSubparserLanguage(%struct.sSubparser* %7)
  store i32 %call2, i32* %lang, align 4
  %8 = load i32, i32* %lang, align 4
  call void @notifyLanguageRegexInputEnd(i32 %8)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

declare void @notifyLanguageRegexInputEnd(i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @notifyMakeTagEntry(%struct.sTagEntryInfo* %tag, i32 %corkIndex) #0 {
entry:
  %tag.addr = alloca %struct.sTagEntryInfo*, align 8
  %corkIndex.addr = alloca i32, align 4
  %s = alloca %struct.sSubparser*, align 8
  store %struct.sTagEntryInfo* %tag, %struct.sTagEntryInfo** %tag.addr, align 8
  store i32 %corkIndex, i32* %corkIndex.addr, align 4
  store %struct.sSubparser* null, %struct.sSubparser** %s, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %struct.sSubparser*, %struct.sSubparser** %s, align 8
  %call = call %struct.sSubparser* @getNextSubparser(%struct.sSubparser* %0, i1 zeroext false)
  store %struct.sSubparser* %call, %struct.sSubparser** %s, align 8
  %cmp = icmp ne %struct.sSubparser* %call, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.sSubparser*, %struct.sSubparser** %s, align 8
  %makeTagEntryNotify = getelementptr inbounds %struct.sSubparser, %struct.sSubparser* %1, i32 0, i32 8
  %2 = load void (%struct.sSubparser*, %struct.sTagEntryInfo*, i32)*, void (%struct.sSubparser*, %struct.sTagEntryInfo*, i32)** %makeTagEntryNotify, align 8
  %tobool = icmp ne void (%struct.sSubparser*, %struct.sTagEntryInfo*, i32)* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %3 = load %struct.sSubparser*, %struct.sSubparser** %s, align 8
  call void @enterSubparser(%struct.sSubparser* %3)
  %4 = load %struct.sSubparser*, %struct.sSubparser** %s, align 8
  %makeTagEntryNotify1 = getelementptr inbounds %struct.sSubparser, %struct.sSubparser* %4, i32 0, i32 8
  %5 = load void (%struct.sSubparser*, %struct.sTagEntryInfo*, i32)*, void (%struct.sSubparser*, %struct.sTagEntryInfo*, i32)** %makeTagEntryNotify1, align 8
  %6 = load %struct.sSubparser*, %struct.sSubparser** %s, align 8
  %7 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %8 = load i32, i32* %corkIndex.addr, align 4
  call void %5(%struct.sSubparser* %6, %struct.sTagEntryInfo* %7, i32 %8)
  call void @leaveSubparser()
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @chooseExclusiveSubparser(%struct.sSubparser* %s, i8* %data) #0 {
entry:
  %s.addr = alloca %struct.sSubparser*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.sSubparser* %s, %struct.sSubparser** %s.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct.sSubparser*, %struct.sSubparser** %s.addr, align 8
  %exclusiveSubparserChosenNotify = getelementptr inbounds %struct.sSubparser, %struct.sSubparser* %0, i32 0, i32 7
  %1 = load void (%struct.sSubparser*, i8*)*, void (%struct.sSubparser*, i8*)** %exclusiveSubparserChosenNotify, align 8
  %tobool = icmp ne void (%struct.sSubparser*, i8*)* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.sSubparser*, %struct.sSubparser** %s.addr, align 8
  %chosenAsExclusiveSubparser = getelementptr inbounds %struct.sSubparser, %struct.sSubparser* %2, i32 0, i32 3
  store i8 1, i8* %chosenAsExclusiveSubparser, align 1
  %3 = load %struct.sSubparser*, %struct.sSubparser** %s.addr, align 8
  call void @enterSubparser(%struct.sSubparser* %3)
  %4 = load %struct.sSubparser*, %struct.sSubparser** %s.addr, align 8
  %exclusiveSubparserChosenNotify1 = getelementptr inbounds %struct.sSubparser, %struct.sSubparser* %4, i32 0, i32 7
  %5 = load void (%struct.sSubparser*, i8*)*, void (%struct.sSubparser*, i8*)** %exclusiveSubparserChosenNotify1, align 8
  %6 = load %struct.sSubparser*, %struct.sSubparser** %s.addr, align 8
  %7 = load i8*, i8** %data.addr, align 8
  call void %5(%struct.sSubparser* %6, i8* %7)
  %8 = load %struct.sSubparser*, %struct.sSubparser** %s.addr, align 8
  %call = call i32 @getSubparserLanguage(%struct.sSubparser* %8)
  %call2 = call i8* @getLanguageName(i32 %call)
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %call2)
  call void @leaveSubparser()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @verbose(i8*, ...) #1

declare i8* @getLanguageName(i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sSubparser* @getFirstSubparser(%struct.slaveControlBlock* %controlBlock) #0 {
entry:
  %retval = alloca %struct.sSubparser*, align 8
  %controlBlock.addr = alloca %struct.slaveControlBlock*, align 8
  store %struct.slaveControlBlock* %controlBlock, %struct.slaveControlBlock** %controlBlock.addr, align 8
  %0 = load %struct.slaveControlBlock*, %struct.slaveControlBlock** %controlBlock.addr, align 8
  %tobool = icmp ne %struct.slaveControlBlock* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.slaveControlBlock*, %struct.slaveControlBlock** %controlBlock.addr, align 8
  %subparsersInUse = getelementptr inbounds %struct.slaveControlBlock, %struct.slaveControlBlock* %1, i32 0, i32 2
  %2 = load %struct.sSubparser*, %struct.sSubparser** %subparsersInUse, align 8
  store %struct.sSubparser* %2, %struct.sSubparser** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  store %struct.sSubparser* null, %struct.sSubparser** %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct.sSubparser*, %struct.sSubparser** %retval, align 8
  ret %struct.sSubparser* %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @useDefaultSubparsers(%struct.slaveControlBlock* %controlBlock) #0 {
entry:
  %controlBlock.addr = alloca %struct.slaveControlBlock*, align 8
  store %struct.slaveControlBlock* %controlBlock, %struct.slaveControlBlock** %controlBlock.addr, align 8
  %0 = load %struct.slaveControlBlock*, %struct.slaveControlBlock** %controlBlock.addr, align 8
  %subparsersDefault = getelementptr inbounds %struct.slaveControlBlock, %struct.slaveControlBlock* %0, i32 0, i32 1
  %1 = load %struct.sSubparser*, %struct.sSubparser** %subparsersDefault, align 8
  %2 = load %struct.slaveControlBlock*, %struct.slaveControlBlock** %controlBlock.addr, align 8
  %subparsersInUse = getelementptr inbounds %struct.slaveControlBlock, %struct.slaveControlBlock* %2, i32 0, i32 2
  store %struct.sSubparser* %1, %struct.sSubparser** %subparsersInUse, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @useSpecifiedSubparser(%struct.slaveControlBlock* %controlBlock, %struct.sSubparser* %s) #0 {
entry:
  %controlBlock.addr = alloca %struct.slaveControlBlock*, align 8
  %s.addr = alloca %struct.sSubparser*, align 8
  store %struct.slaveControlBlock* %controlBlock, %struct.slaveControlBlock** %controlBlock.addr, align 8
  store %struct.sSubparser* %s, %struct.sSubparser** %s.addr, align 8
  %0 = load %struct.sSubparser*, %struct.sSubparser** %s.addr, align 8
  %schedulingBaseparserExplicitly = getelementptr inbounds %struct.sSubparser, %struct.sSubparser* %0, i32 0, i32 2
  store i8 1, i8* %schedulingBaseparserExplicitly, align 8
  %1 = load %struct.sSubparser*, %struct.sSubparser** %s.addr, align 8
  %2 = load %struct.slaveControlBlock*, %struct.slaveControlBlock** %controlBlock.addr, align 8
  %subparsersInUse = getelementptr inbounds %struct.slaveControlBlock, %struct.slaveControlBlock* %2, i32 0, i32 2
  store %struct.sSubparser* %1, %struct.sSubparser** %subparsersInUse, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @setupSubparsersInUse(%struct.slaveControlBlock* %controlBlock) #0 {
entry:
  %controlBlock.addr = alloca %struct.slaveControlBlock*, align 8
  store %struct.slaveControlBlock* %controlBlock, %struct.slaveControlBlock** %controlBlock.addr, align 8
  %0 = load %struct.slaveControlBlock*, %struct.slaveControlBlock** %controlBlock.addr, align 8
  %subparsersInUse = getelementptr inbounds %struct.slaveControlBlock, %struct.slaveControlBlock* %0, i32 0, i32 2
  %1 = load %struct.sSubparser*, %struct.sSubparser** %subparsersInUse, align 8
  %tobool = icmp ne %struct.sSubparser* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.slaveControlBlock*, %struct.slaveControlBlock** %controlBlock.addr, align 8
  call void @useDefaultSubparsers(%struct.slaveControlBlock* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sSubparser* @teardownSubparsersInUse(%struct.slaveControlBlock* %controlBlock) #0 {
entry:
  %retval = alloca %struct.sSubparser*, align 8
  %controlBlock.addr = alloca %struct.slaveControlBlock*, align 8
  %tmp = alloca %struct.sSubparser*, align 8
  %s = alloca %struct.sSubparser*, align 8
  store %struct.slaveControlBlock* %controlBlock, %struct.slaveControlBlock** %controlBlock.addr, align 8
  store %struct.sSubparser* null, %struct.sSubparser** %s, align 8
  %0 = load %struct.slaveControlBlock*, %struct.slaveControlBlock** %controlBlock.addr, align 8
  %subparsersInUse = getelementptr inbounds %struct.slaveControlBlock, %struct.slaveControlBlock* %0, i32 0, i32 2
  %1 = load %struct.sSubparser*, %struct.sSubparser** %subparsersInUse, align 8
  store %struct.sSubparser* %1, %struct.sSubparser** %tmp, align 8
  %2 = load %struct.slaveControlBlock*, %struct.slaveControlBlock** %controlBlock.addr, align 8
  %subparsersInUse1 = getelementptr inbounds %struct.slaveControlBlock, %struct.slaveControlBlock* %2, i32 0, i32 2
  store %struct.sSubparser* null, %struct.sSubparser** %subparsersInUse1, align 8
  %3 = load %struct.sSubparser*, %struct.sSubparser** %tmp, align 8
  %tobool = icmp ne %struct.sSubparser* %3, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct.sSubparser*, %struct.sSubparser** %tmp, align 8
  %schedulingBaseparserExplicitly = getelementptr inbounds %struct.sSubparser, %struct.sSubparser* %4, i32 0, i32 2
  %5 = load i8, i8* %schedulingBaseparserExplicitly, align 8
  %tobool2 = trunc i8 %5 to i1
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct.sSubparser*, %struct.sSubparser** %tmp, align 8
  %schedulingBaseparserExplicitly3 = getelementptr inbounds %struct.sSubparser, %struct.sSubparser* %6, i32 0, i32 2
  store i8 0, i8* %schedulingBaseparserExplicitly3, align 8
  %7 = load %struct.sSubparser*, %struct.sSubparser** %tmp, align 8
  store %struct.sSubparser* %7, %struct.sSubparser** %s, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %8 = load %struct.sSubparser*, %struct.sSubparser** %s, align 8
  %tobool4 = icmp ne %struct.sSubparser* %8, null
  br i1 %tobool4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  %9 = load %struct.sSubparser*, %struct.sSubparser** %s, align 8
  store %struct.sSubparser* %9, %struct.sSubparser** %retval, align 8
  br label %return

if.end6:                                          ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %if.end10, %if.end6
  %10 = load %struct.sSubparser*, %struct.sSubparser** %tmp, align 8
  %tobool7 = icmp ne %struct.sSubparser* %10, null
  br i1 %tobool7, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load %struct.sSubparser*, %struct.sSubparser** %tmp, align 8
  %chosenAsExclusiveSubparser = getelementptr inbounds %struct.sSubparser, %struct.sSubparser* %11, i32 0, i32 3
  %12 = load i8, i8* %chosenAsExclusiveSubparser, align 1
  %tobool8 = trunc i8 %12 to i1
  br i1 %tobool8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %while.body
  %13 = load %struct.sSubparser*, %struct.sSubparser** %tmp, align 8
  store %struct.sSubparser* %13, %struct.sSubparser** %s, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %while.body
  %14 = load %struct.sSubparser*, %struct.sSubparser** %tmp, align 8
  %next = getelementptr inbounds %struct.sSubparser, %struct.sSubparser* %14, i32 0, i32 1
  %15 = load %struct.sSubparser*, %struct.sSubparser** %next, align 8
  store %struct.sSubparser* %15, %struct.sSubparser** %tmp, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %16 = load %struct.sSubparser*, %struct.sSubparser** %s, align 8
  store %struct.sSubparser* %16, %struct.sSubparser** %retval, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then5
  %17 = load %struct.sSubparser*, %struct.sSubparser** %retval, align 8
  ret %struct.sSubparser* %17
}

declare void @pushLanguage(i32) #1

declare i32 @popLanguage() #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @doesSubparserRun() #0 {
entry:
  %0 = load i32, i32* @subparserDepth, align 4
  %tobool = icmp ne i32 %0, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sSlaveParser* @getFirstSlaveParser(%struct.slaveControlBlock* %scb) #0 {
entry:
  %retval = alloca %struct.sSlaveParser*, align 8
  %scb.addr = alloca %struct.slaveControlBlock*, align 8
  store %struct.slaveControlBlock* %scb, %struct.slaveControlBlock** %scb.addr, align 8
  %0 = load %struct.slaveControlBlock*, %struct.slaveControlBlock** %scb.addr, align 8
  %tobool = icmp ne %struct.slaveControlBlock* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.slaveControlBlock*, %struct.slaveControlBlock** %scb.addr, align 8
  %slaveParsers = getelementptr inbounds %struct.slaveControlBlock, %struct.slaveControlBlock* %1, i32 0, i32 0
  %2 = load %struct.sSlaveParser*, %struct.sSlaveParser** %slaveParsers, align 8
  store %struct.sSlaveParser* %2, %struct.sSlaveParser** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  store %struct.sSlaveParser* null, %struct.sSlaveParser** %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct.sSlaveParser*, %struct.sSlaveParser** %retval, align 8
  ret %struct.sSlaveParser* %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.colprintTable* @subparserColprintTableNew() #0 {
entry:
  %call = call %struct.colprintTable* (i8*, ...) @colprintTableNew(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* null)
  ret %struct.colprintTable* %call
}

declare %struct.colprintTable* @colprintTableNew(i8*, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @subparserColprintAddSubparsers(%struct.colprintTable* %table, %struct.slaveControlBlock* %scb) #0 {
entry:
  %table.addr = alloca %struct.colprintTable*, align 8
  %scb.addr = alloca %struct.slaveControlBlock*, align 8
  %tmp = alloca %struct.sSlaveParser*, align 8
  %line = alloca %struct.colprintLine*, align 8
  %direction = alloca i8*, align 8
  store %struct.colprintTable* %table, %struct.colprintTable** %table.addr, align 8
  store %struct.slaveControlBlock* %scb, %struct.slaveControlBlock** %scb.addr, align 8
  %0 = load %struct.slaveControlBlock*, %struct.slaveControlBlock** %scb.addr, align 8
  %owner = getelementptr inbounds %struct.slaveControlBlock, %struct.slaveControlBlock* %0, i32 0, i32 3
  %1 = load i32, i32* %owner, align 8
  call void @pushLanguage(i32 %1)
  store %struct.sSlaveParser* null, %struct.sSlaveParser** %tmp, align 8
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %2 = load %struct.sSlaveParser*, %struct.sSlaveParser** %tmp, align 8
  %call = call %struct.sSlaveParser* @getNextSlaveParser(%struct.sSlaveParser* %2)
  store %struct.sSlaveParser* %call, %struct.sSlaveParser** %tmp, align 8
  %cmp = icmp ne %struct.sSlaveParser* %call, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct.colprintTable*, %struct.colprintTable** %table.addr, align 8
  %call1 = call %struct.colprintLine* @colprintTableGetNewLine(%struct.colprintTable* %3)
  store %struct.colprintLine* %call1, %struct.colprintLine** %line, align 8
  %4 = load %struct.colprintLine*, %struct.colprintLine** %line, align 8
  %5 = load %struct.sSlaveParser*, %struct.sSlaveParser** %tmp, align 8
  %id = getelementptr inbounds %struct.sSlaveParser, %struct.sSlaveParser* %5, i32 0, i32 1
  %6 = load i32, i32* %id, align 4
  %call2 = call i8* @getLanguageName(i32 %6)
  call void @colprintLineAppendColumnCString(%struct.colprintLine* %4, i8* %call2)
  %7 = load %struct.colprintLine*, %struct.colprintLine** %line, align 8
  %8 = load %struct.slaveControlBlock*, %struct.slaveControlBlock** %scb.addr, align 8
  %owner3 = getelementptr inbounds %struct.slaveControlBlock, %struct.slaveControlBlock* %8, i32 0, i32 3
  %9 = load i32, i32* %owner3, align 8
  %call4 = call i8* @getLanguageName(i32 %9)
  call void @colprintLineAppendColumnCString(%struct.colprintLine* %7, i8* %call4)
  %10 = load %struct.sSlaveParser*, %struct.sSlaveParser** %tmp, align 8
  %data = getelementptr inbounds %struct.sSlaveParser, %struct.sSlaveParser* %10, i32 0, i32 2
  %11 = load i8*, i8** %data, align 8
  %12 = bitcast i8* %11 to %struct.sSubparser*
  %direction5 = getelementptr inbounds %struct.sSubparser, %struct.sSubparser* %12, i32 0, i32 4
  %13 = load i32, i32* %direction5, align 4
  switch i32 %13, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb6
    i32 3, label %sw.bb7
  ]

sw.bb:                                            ; preds = %while.body
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8** %direction, align 8
  br label %sw.epilog

sw.bb6:                                           ; preds = %while.body
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i8** %direction, align 8
  br label %sw.epilog

sw.bb7:                                           ; preds = %while.body
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i8** %direction, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i8** %direction, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb7, %sw.bb6, %sw.bb
  %14 = load %struct.colprintLine*, %struct.colprintLine** %line, align 8
  %15 = load i8*, i8** %direction, align 8
  call void @colprintLineAppendColumnCString(%struct.colprintLine* %14, i8* %15)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %call8 = call i32 @popLanguage()
  ret void
}

declare %struct.sSlaveParser* @getNextSlaveParser(%struct.sSlaveParser*) #1

declare %struct.colprintLine* @colprintTableGetNewLine(%struct.colprintTable*) #1

declare void @colprintLineAppendColumnCString(%struct.colprintLine*, i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @subparserColprintTablePrint(%struct.colprintTable* %table, i1 zeroext %withListHeader, i1 zeroext %machinable, %struct.__sFILE* %fp) #0 {
entry:
  %table.addr = alloca %struct.colprintTable*, align 8
  %withListHeader.addr = alloca i8, align 1
  %machinable.addr = alloca i8, align 1
  %fp.addr = alloca %struct.__sFILE*, align 8
  store %struct.colprintTable* %table, %struct.colprintTable** %table.addr, align 8
  %frombool = zext i1 %withListHeader to i8
  store i8 %frombool, i8* %withListHeader.addr, align 1
  %frombool1 = zext i1 %machinable to i8
  store i8 %frombool1, i8* %machinable.addr, align 1
  store %struct.__sFILE* %fp, %struct.__sFILE** %fp.addr, align 8
  %0 = load %struct.colprintTable*, %struct.colprintTable** %table.addr, align 8
  call void @colprintTableSort(%struct.colprintTable* %0, i32 (%struct.colprintLine*, %struct.colprintLine*)* @subparserColprintCompareLines)
  %1 = load %struct.colprintTable*, %struct.colprintTable** %table.addr, align 8
  %2 = load i8, i8* %withListHeader.addr, align 1
  %tobool = trunc i8 %2 to i1
  %3 = load i8, i8* %machinable.addr, align 1
  %tobool2 = trunc i8 %3 to i1
  %4 = load %struct.__sFILE*, %struct.__sFILE** %fp.addr, align 8
  call void @colprintTablePrint(%struct.colprintTable* %1, i32 0, i1 zeroext %tobool, i1 zeroext %tobool2, %struct.__sFILE* %4)
  ret void
}

declare void @colprintTableSort(%struct.colprintTable*, i32 (%struct.colprintLine*, %struct.colprintLine*)*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @subparserColprintCompareLines(%struct.colprintLine* %a, %struct.colprintLine* %b) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca %struct.colprintLine*, align 8
  %b.addr = alloca %struct.colprintLine*, align 8
  %a_name = alloca i8*, align 8
  %b_name = alloca i8*, align 8
  %r = alloca i32, align 4
  %a_baseparser = alloca i8*, align 8
  %b_baseparser = alloca i8*, align 8
  store %struct.colprintLine* %a, %struct.colprintLine** %a.addr, align 8
  store %struct.colprintLine* %b, %struct.colprintLine** %b.addr, align 8
  %0 = load %struct.colprintLine*, %struct.colprintLine** %a.addr, align 8
  %call = call i8* @colprintLineGetColumn(%struct.colprintLine* %0, i32 0)
  store i8* %call, i8** %a_name, align 8
  %1 = load %struct.colprintLine*, %struct.colprintLine** %b.addr, align 8
  %call1 = call i8* @colprintLineGetColumn(%struct.colprintLine* %1, i32 0)
  store i8* %call1, i8** %b_name, align 8
  %2 = load i8*, i8** %a_name, align 8
  %3 = load i8*, i8** %b_name, align 8
  %call2 = call i32 @strcmp(i8* %2, i8* %3)
  store i32 %call2, i32* %r, align 4
  %4 = load i32, i32* %r, align 4
  %cmp = icmp ne i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %r, align 4
  store i32 %5, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct.colprintLine*, %struct.colprintLine** %a.addr, align 8
  %call3 = call i8* @colprintLineGetColumn(%struct.colprintLine* %6, i32 1)
  store i8* %call3, i8** %a_baseparser, align 8
  %7 = load %struct.colprintLine*, %struct.colprintLine** %b.addr, align 8
  %call4 = call i8* @colprintLineGetColumn(%struct.colprintLine* %7, i32 1)
  store i8* %call4, i8** %b_baseparser, align 8
  %8 = load i8*, i8** %a_baseparser, align 8
  %9 = load i8*, i8** %b_baseparser, align 8
  %call5 = call i32 @strcmp(i8* %8, i8* %9)
  store i32 %call5, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %10 = load i32, i32* %retval, align 4
  ret i32 %10
}

declare void @colprintTablePrint(%struct.colprintTable*, i32, i1 zeroext, i1 zeroext, %struct.__sFILE*) #1

declare i8* @colprintLineGetColumn(%struct.colprintLine*, i32) #1

declare i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 10.0.0 (https://github.com/holzschu/clang.git 0cfc630fbdb62e96720b611a57123ef3eb13e297) (https://github.com/holzschu/llvm.git 0d8a71e39b28502c24718f7e74b5acbcfe36dfe0)"}
