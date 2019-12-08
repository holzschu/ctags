; ModuleID = 'main.c'
source_filename = "main.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-ios11.0.0"

%struct.anon = type { i64, i64, i64 }
%struct.sOptionValues = type { i8, i8, i8, i32, i8, i32, i8, i8, %struct.sFmtElement*, i8*, i8*, %struct.sPtrArray*, %struct.sPtrArray*, i32, i8*, i8*, i32, i8, i8, i8*, i32, i8, i8, i8, i8, i8, i8, i32, i8, i32, i32 }
%struct.sFmtElement = type opaque
%struct.sPtrArray = type opaque
%struct.sCookedArgs = type { %struct.sArgs*, i8*, [2 x i8], i8, i8, i8*, i8* }
%struct.sArgs = type { i32, %union.anon, i8*, i8 }
%union.anon = type { %struct.sArgvArgs }
%struct.sArgvArgs = type { i8**, i8** }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.fileStatus = type { i8*, i8, i8, i8, i8, i8, i8, i8, i64 }
%struct.DIR = type { i32, i64, i64, i8*, i32, i64, i64, i32, %struct._opaque_pthread_mutex_t, %struct._telldir* }
%struct._opaque_pthread_mutex_t = type { i64, [56 x i8] }
%struct._telldir = type opaque
%struct.dirent = type { i64, i64, i16, i16, i8, [1024 x i8] }

@Totals = internal global %struct.anon zeroinitializer, align 8
@Option = external constant %struct.sOptionValues, align 8
@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"/dev/stdout\00", align 1
@mainLoop = internal global void (%struct.sCookedArgs*, i8*)* null, align 8
@mainData = internal global i8* null, align 8
@args = internal global %struct.sCookedArgs* null, align 8
@.str.2 = private unnamed_addr constant [43 x i8] c"Reading initial options from command line\0A\00", align 1
@__stderrp = external global %struct.__sFILE*, align 8
@.str.3 = private unnamed_addr constant [25 x i8] c"we have an execName: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"No files specified. Try \22%s --help\22.\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Reading command line arguments\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"Reading list file\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"Reading filter input\0A\00", align 1
@__stdinp = external global %struct.__sFILE*, align 8
@.str.8 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"excluding \22%s\22\0A\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"ignoring \22%s\22 (symbolic link)\0A\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"cannot open input file \22%s\22\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"ignoring \22%s\22 (special file)\0A\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"cannot open list file \22%s\22\00", align 1
@__stdoutp = external global %struct.__sFILE*, align 8
@recurseIntoDirectory.recursionDepth = internal global i32 0, align 4
@.str.15 = private unnamed_addr constant [32 x i8] c"ignoring \22%s\22 (recursive link)\0A\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"ignoring \22%s\22 (directory)\0A\00", align 1
@.str.17 = private unnamed_addr constant [50 x i8] c"not descending in directory \22%s\22 (depth %u > %u)\0A\00", align 1
@.str.18 = private unnamed_addr constant [31 x i8] c"RECURSING into directory \22%s\22\0A\00", align 1
@.str.19 = private unnamed_addr constant [35 x i8] c"cannot recurse into directory \22%s\22\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.21 = private unnamed_addr constant [40 x i8] c"%ld file%s, %ld line%s (%ld kB) scanned\00", align 1
@.str.22 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c" in %.01f seconds\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c" (%lu kB/s)\00", align 1
@.str.26 = private unnamed_addr constant [28 x i8] c"%lu tag%s added to tag file\00", align 1
@.str.27 = private unnamed_addr constant [16 x i8] c" (now %lu tags)\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"%lu tag%s sorted\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c" in %.02f seconds\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"() {\00", align 1
@.str.31 = private unnamed_addr constant [22 x i8] c"reset environment: %s\00", align 1
@.str.32 = private unnamed_addr constant [20 x i8] c"BASH_FUNC_module()=\00", align 1
@.str.33 = private unnamed_addr constant [17 x i8] c"BASH_FUNC_scl()=\00", align 1
@__const.isSafeVar.safe_vars = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.33, i32 0, i32 0), i8* null], align 8

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @addTotals(i32 %files, i64 %lines, i64 %bytes) #0 {
entry:
  %files.addr = alloca i32, align 4
  %lines.addr = alloca i64, align 8
  %bytes.addr = alloca i64, align 8
  store i32 %files, i32* %files.addr, align 4
  store i64 %lines, i64* %lines.addr, align 8
  store i64 %bytes, i64* %bytes.addr, align 8
  %0 = load i32, i32* %files.addr, align 4
  %conv = zext i32 %0 to i64
  %1 = load i64, i64* getelementptr inbounds (%struct.anon, %struct.anon* @Totals, i32 0, i32 0), align 8
  %add = add nsw i64 %1, %conv
  store i64 %add, i64* getelementptr inbounds (%struct.anon, %struct.anon* @Totals, i32 0, i32 0), align 8
  %2 = load i64, i64* %lines.addr, align 8
  %3 = load i64, i64* getelementptr inbounds (%struct.anon, %struct.anon* @Totals, i32 0, i32 1), align 8
  %add1 = add i64 %3, %2
  store i64 %add1, i64* getelementptr inbounds (%struct.anon, %struct.anon* @Totals, i32 0, i32 1), align 8
  %4 = load i64, i64* %bytes.addr, align 8
  %5 = load i64, i64* getelementptr inbounds (%struct.anon, %struct.anon* @Totals, i32 0, i32 2), align 8
  %add2 = add i64 %5, %4
  store i64 %add2, i64* getelementptr inbounds (%struct.anon, %struct.anon* @Totals, i32 0, i32 2), align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @isDestinationStdout() #0 {
entry:
  %toStdout = alloca i8, align 1
  store i8 0, i8* %toStdout, align 1
  %0 = load i8, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 18), align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 30), align 8
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load i8*, i8** getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 10), align 8
  %cmp = icmp ne i8* %2, null
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %lor.lhs.false2
  %3 = load i8*, i8** getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 10), align 8
  %call = call i32 @strcmp(i8* %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %cmp3 = icmp eq i32 %call, 0
  br i1 %cmp3, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %land.lhs.true
  %4 = load i8*, i8** getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 10), align 8
  %call5 = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false4, %land.lhs.true, %lor.lhs.false, %entry
  store i8 1, i8* %toStdout, align 1
  br label %if.end12

if.else:                                          ; preds = %lor.lhs.false4, %lor.lhs.false2
  %5 = load i8*, i8** getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 10), align 8
  %cmp7 = icmp eq i8* %5, null
  br i1 %cmp7, label %land.lhs.true8, label %if.end

land.lhs.true8:                                   ; preds = %if.else
  %call9 = call i8* @outputDefaultFileName()
  %cmp10 = icmp eq i8* null, %call9
  br i1 %cmp10, label %if.then11, label %if.end

if.then11:                                        ; preds = %land.lhs.true8
  store i8 1, i8* %toStdout, align 1
  br label %if.end

if.end:                                           ; preds = %if.then11, %land.lhs.true8, %if.else
  br label %if.end12

if.end12:                                         ; preds = %if.end, %if.then
  %6 = load i8, i8* %toStdout, align 1
  %tobool13 = trunc i8 %6 to i1
  ret i1 %tobool13
}

declare i32 @strcmp(i8*, i8*) #1

declare i8* @outputDefaultFileName() #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @setMainLoop(void (%struct.sCookedArgs*, i8*)* %func, i8* %data) #0 {
entry:
  %func.addr = alloca void (%struct.sCookedArgs*, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  store void (%struct.sCookedArgs*, i8*)* %func, void (%struct.sCookedArgs*, i8*)** %func.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load void (%struct.sCookedArgs*, i8*)*, void (%struct.sCookedArgs*, i8*)** %func.addr, align 8
  store void (%struct.sCookedArgs*, i8*)* %0, void (%struct.sCookedArgs*, i8*)** @mainLoop, align 8
  %1 = load i8*, i8** %data.addr, align 8
  store i8* %1, i8** @mainData, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %vfp = alloca %struct.__sFILE*, align 8
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  call void @initDefaultTrashBox()
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  call void @setErrorPrinter(i1 (i32, i8*, i8*, i8*)* @stderrDefaultErrorPrinter, i8* null)
  call void @setMainLoop(void (%struct.sCookedArgs*, i8*)* @batchMakeTags, i8* null)
  call void @setTagWriter(i32 0)
  call void @setCurrentDirectory()
  %0 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 0
  %1 = load i8*, i8** %arrayidx, align 8
  call void @setExecutableName(i8* %1)
  %2 = load i8**, i8*** %argv.addr, align 8
  %add.ptr = getelementptr inbounds i8*, i8** %2, i64 1
  store i8** %add.ptr, i8*** %argv.addr, align 8
  call void @sanitizeEnviron()
  %call = call zeroext i1 @checkRegex()
  call void @initFieldObjects()
  call void @initXtagObjects()
  %3 = load i8**, i8*** %argv.addr, align 8
  %call1 = call %struct.sCookedArgs* @cArgNewFromArgv(i8** %3)
  store %struct.sCookedArgs* %call1, %struct.sCookedArgs** @args, align 8
  %4 = load %struct.sCookedArgs*, %struct.sCookedArgs** @args, align 8
  call void @previewFirstOption(%struct.sCookedArgs* %4)
  call void @testEtagsInvocation()
  call void @initializeParsing()
  call void @initOptions()
  call void @readOptionConfiguration()
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %5 = load %struct.sCookedArgs*, %struct.sCookedArgs** @args, align 8
  call void @parseCmdlineOptions(%struct.sCookedArgs* %5)
  call void @checkOptions()
  %6 = load %struct.sCookedArgs*, %struct.sCookedArgs** @args, align 8
  call void @runMainLoop(%struct.sCookedArgs* %6)
  br label %do.body2

do.body2:                                         ; preds = %do.end
  %7 = load i8, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 6), align 8
  %tobool = trunc i8 %7 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body2
  %8 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  store %struct.__sFILE* %8, %struct.__sFILE** %vfp, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %9 = load i32, i32* %i, align 4
  %call3 = call i32 @countParsers()
  %cmp = icmp ult i32 %9, %call3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %i, align 4
  %11 = load %struct.__sFILE*, %struct.__sFILE** %vfp, align 8
  call void @printLanguageMultitableStatistics(i32 %10, %struct.__sFILE* %11)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %inc = add i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %do.body2
  br label %do.end4

do.end4:                                          ; preds = %if.end
  call void @ctags_cleanup()
  %13 = load i8, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 23), align 2
  %tobool5 = trunc i8 %13 to i1
  br i1 %tobool5, label %if.then6, label %if.end10

if.then6:                                         ; preds = %do.end4
  %14 = load i8, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 23), align 2
  %tobool7 = trunc i8 %14 to i1
  %conv = zext i1 %tobool7 to i32
  %cmp8 = icmp eq i32 %conv, 1
  %15 = zext i1 %cmp8 to i64
  %cond = select i1 %cmp8, i32 0, i32 1
  ret i32 %cond

if.end10:                                         ; preds = %do.end4
  call void @exit(i32 0) #4
  unreachable
}

declare void @initDefaultTrashBox() #1

declare void @setErrorPrinter(i1 (i32, i8*, i8*, i8*)*, i8*) #1

declare zeroext i1 @stderrDefaultErrorPrinter(i32, i8*, i8*, i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @batchMakeTags(%struct.sCookedArgs* %args, i8* %user) #0 {
entry:
  %args.addr = alloca %struct.sCookedArgs*, align 8
  %user.addr = alloca i8*, align 8
  %timeStamps = alloca [3 x i64], align 8
  %resize = alloca i8, align 1
  %files = alloca i8, align 1
  %execName = alloca i8*, align 8
  store %struct.sCookedArgs* %args, %struct.sCookedArgs** %args.addr, align 8
  store i8* %user, i8** %user.addr, align 8
  store i8 0, i8* %resize, align 1
  %0 = load %struct.sCookedArgs*, %struct.sCookedArgs** %args.addr, align 8
  %call = call zeroext i1 @cArgOff(%struct.sCookedArgs* %0)
  br i1 %call, label %lor.lhs.false, label %lor.end

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8*, i8** getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 9), align 8
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %2 = load i8, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 18), align 1
  %tobool = trunc i8 %2 to i1
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %entry
  %3 = phi i1 [ true, %lor.lhs.false ], [ true, %entry ], [ %tobool, %lor.rhs ]
  %frombool = zext i1 %3 to i8
  store i8 %frombool, i8* %files, align 1
  %4 = load i8, i8* %files, align 1
  %tobool1 = trunc i8 %4 to i1
  br i1 %tobool1, label %if.end10, label %if.then

if.then:                                          ; preds = %lor.end
  %call2 = call zeroext i1 @filesRequired()
  br i1 %call2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  %call4 = call i8* @getExecutableName()
  store i8* %call4, i8** %execName, align 8
  %5 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %6 = load i8*, i8** %execName, align 8
  %call5 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %5, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* %6)
  %7 = load i8*, i8** %execName, align 8
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i8* %7)
  br label %if.end9

if.else:                                          ; preds = %if.then
  %8 = load i8, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 4), align 8
  %tobool6 = trunc i8 %8 to i1
  br i1 %tobool6, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else
  %call7 = call zeroext i1 @etagsInclude()
  br i1 %call7, label %if.end, label %if.then8

if.then8:                                         ; preds = %land.lhs.true
  br label %if.end68

if.end:                                           ; preds = %land.lhs.true, %if.else
  br label %if.end9

if.end9:                                          ; preds = %if.end, %if.then3
  br label %if.end10

if.end10:                                         ; preds = %if.end9, %lor.end
  %9 = load i8, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 18), align 1
  %tobool11 = trunc i8 %9 to i1
  br i1 %tobool11, label %if.end15, label %land.lhs.true12

land.lhs.true12:                                  ; preds = %if.end10
  %10 = load i8, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 23), align 2
  %tobool13 = trunc i8 %10 to i1
  br i1 %tobool13, label %if.end15, label %if.then14

if.then14:                                        ; preds = %land.lhs.true12
  call void @openTagFile()
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %land.lhs.true12, %if.end10
  %11 = load i8, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 21), align 4
  %tobool16 = trunc i8 %11 to i1
  br i1 %tobool16, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end15
  %call17 = call i64 @"\01_clock"()
  br label %cond.end

cond.false:                                       ; preds = %if.end15
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call17, %cond.true ], [ 0, %cond.false ]
  %arrayidx = getelementptr inbounds [3 x i64], [3 x i64]* %timeStamps, i64 0, i64 0
  store i64 %cond, i64* %arrayidx, align 8
  %12 = load %struct.sCookedArgs*, %struct.sCookedArgs** %args.addr, align 8
  %call18 = call zeroext i1 @cArgOff(%struct.sCookedArgs* %12)
  br i1 %call18, label %if.end22, label %if.then19

if.then19:                                        ; preds = %cond.end
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %13 = load %struct.sCookedArgs*, %struct.sCookedArgs** %args.addr, align 8
  %call20 = call zeroext i1 @createTagsForArgs(%struct.sCookedArgs* %13)
  %frombool21 = zext i1 %call20 to i8
  store i8 %frombool21, i8* %resize, align 1
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %cond.end
  %14 = load i8*, i8** getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 9), align 8
  %cmp23 = icmp ne i8* %14, null
  br i1 %cmp23, label %if.then24, label %if.end30

if.then24:                                        ; preds = %if.end22
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %15 = load i8*, i8** getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 9), align 8
  %call25 = call zeroext i1 @createTagsFromListFile(i8* %15)
  br i1 %call25, label %lor.end28, label %lor.rhs26

lor.rhs26:                                        ; preds = %if.then24
  %16 = load i8, i8* %resize, align 1
  %tobool27 = trunc i8 %16 to i1
  br label %lor.end28

lor.end28:                                        ; preds = %lor.rhs26, %if.then24
  %17 = phi i1 [ true, %if.then24 ], [ %tobool27, %lor.rhs26 ]
  %frombool29 = zext i1 %17 to i8
  store i8 %frombool29, i8* %resize, align 1
  br label %if.end30

if.end30:                                         ; preds = %lor.end28, %if.end22
  %18 = load i8, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 18), align 1
  %tobool31 = trunc i8 %18 to i1
  br i1 %tobool31, label %if.then32, label %if.end38

if.then32:                                        ; preds = %if.end30
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  %19 = load %struct.__sFILE*, %struct.__sFILE** @__stdinp, align 8
  %call33 = call zeroext i1 @createTagsFromFileInput(%struct.__sFILE* %19, i1 zeroext true)
  br i1 %call33, label %lor.end36, label %lor.rhs34

lor.rhs34:                                        ; preds = %if.then32
  %20 = load i8, i8* %resize, align 1
  %tobool35 = trunc i8 %20 to i1
  br label %lor.end36

lor.end36:                                        ; preds = %lor.rhs34, %if.then32
  %21 = phi i1 [ true, %if.then32 ], [ %tobool35, %lor.rhs34 ]
  %frombool37 = zext i1 %21 to i8
  store i8 %frombool37, i8* %resize, align 1
  br label %if.end38

if.end38:                                         ; preds = %lor.end36, %if.end30
  %22 = load i8, i8* %files, align 1
  %tobool39 = trunc i8 %22 to i1
  br i1 %tobool39, label %if.end45, label %land.lhs.true40

land.lhs.true40:                                  ; preds = %if.end38
  %23 = load i8, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 4), align 8
  %tobool41 = trunc i8 %23 to i1
  br i1 %tobool41, label %if.then42, label %if.end45

if.then42:                                        ; preds = %land.lhs.true40
  %call43 = call zeroext i1 @recurseIntoDirectory(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %frombool44 = zext i1 %call43 to i8
  store i8 %frombool44, i8* %resize, align 1
  br label %if.end45

if.end45:                                         ; preds = %if.then42, %land.lhs.true40, %if.end38
  %24 = load i8, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 21), align 4
  %tobool46 = trunc i8 %24 to i1
  br i1 %tobool46, label %cond.true47, label %cond.false49

cond.true47:                                      ; preds = %if.end45
  %call48 = call i64 @"\01_clock"()
  br label %cond.end50

cond.false49:                                     ; preds = %if.end45
  br label %cond.end50

cond.end50:                                       ; preds = %cond.false49, %cond.true47
  %cond51 = phi i64 [ %call48, %cond.true47 ], [ 0, %cond.false49 ]
  %arrayidx52 = getelementptr inbounds [3 x i64], [3 x i64]* %timeStamps, i64 0, i64 1
  store i64 %cond51, i64* %arrayidx52, align 8
  %25 = load i8, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 18), align 1
  %tobool53 = trunc i8 %25 to i1
  br i1 %tobool53, label %if.end58, label %land.lhs.true54

land.lhs.true54:                                  ; preds = %cond.end50
  %26 = load i8, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 23), align 2
  %tobool55 = trunc i8 %26 to i1
  br i1 %tobool55, label %if.end58, label %if.then56

if.then56:                                        ; preds = %land.lhs.true54
  %27 = load i8, i8* %resize, align 1
  %tobool57 = trunc i8 %27 to i1
  call void @closeTagFile(i1 zeroext %tobool57)
  br label %if.end58

if.end58:                                         ; preds = %if.then56, %land.lhs.true54, %cond.end50
  %28 = load i8, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 21), align 4
  %tobool59 = trunc i8 %28 to i1
  br i1 %tobool59, label %cond.true60, label %cond.false62

cond.true60:                                      ; preds = %if.end58
  %call61 = call i64 @"\01_clock"()
  br label %cond.end63

cond.false62:                                     ; preds = %if.end58
  br label %cond.end63

cond.end63:                                       ; preds = %cond.false62, %cond.true60
  %cond64 = phi i64 [ %call61, %cond.true60 ], [ 0, %cond.false62 ]
  %arrayidx65 = getelementptr inbounds [3 x i64], [3 x i64]* %timeStamps, i64 0, i64 2
  store i64 %cond64, i64* %arrayidx65, align 8
  %29 = load i8, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 21), align 4
  %tobool66 = trunc i8 %29 to i1
  br i1 %tobool66, label %if.then67, label %if.end68

if.then67:                                        ; preds = %cond.end63
  %arraydecay = getelementptr inbounds [3 x i64], [3 x i64]* %timeStamps, i64 0, i64 0
  call void @printTotals(i64* %arraydecay)
  br label %if.end68

if.end68:                                         ; preds = %if.then8, %if.then67, %cond.end63
  ret void
}

declare void @setTagWriter(i32) #1

declare void @setCurrentDirectory() #1

declare void @setExecutableName(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @sanitizeEnviron() #0 {
entry:
  %e = alloca i8**, align 8
  %i = alloca i32, align 4
  %value = alloca i8*, align 8
  store i8** null, i8*** %e, align 8
  %0 = load i8**, i8*** %e, align 8
  %tobool = icmp ne i8** %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %for.end

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i8**, i8*** %e, align 8
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 %idxprom
  %3 = load i8*, i8** %arrayidx, align 8
  %tobool1 = icmp ne i8* %3, null
  br i1 %tobool1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i8**, i8*** %e, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %5 to i64
  %arrayidx3 = getelementptr inbounds i8*, i8** %4, i64 %idxprom2
  %6 = load i8*, i8** %arrayidx3, align 8
  %call = call i8* @strchr(i8* %6, i32 61)
  store i8* %call, i8** %value, align 8
  %7 = load i8*, i8** %value, align 8
  %tobool4 = icmp ne i8* %7, null
  br i1 %tobool4, label %if.end6, label %if.then5

if.then5:                                         ; preds = %for.body
  br label %for.inc

if.end6:                                          ; preds = %for.body
  %8 = load i8*, i8** %value, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr, i8** %value, align 8
  %9 = load i8*, i8** %value, align 8
  %call7 = call i32 @strncmp(i8* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i64 0, i64 0), i64 4)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.end18, label %if.then9

if.then9:                                         ; preds = %if.end6
  %10 = load i8**, i8*** %e, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %11 to i64
  %arrayidx11 = getelementptr inbounds i8*, i8** %10, i64 %idxprom10
  %12 = load i8*, i8** %arrayidx11, align 8
  %call12 = call zeroext i1 @isSafeVar(i8* %12)
  br i1 %call12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.then9
  br label %for.inc

if.end14:                                         ; preds = %if.then9
  %13 = load i8**, i8*** %e, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %14 to i64
  %arrayidx16 = getelementptr inbounds i8*, i8** %13, i64 %idxprom15
  %15 = load i8*, i8** %arrayidx16, align 8
  call void (i32, i8*, ...) @error(i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.31, i64 0, i64 0), i8* %15)
  %16 = load i8*, i8** %value, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %16, i64 0
  store i8 0, i8* %arrayidx17, align 1
  br label %if.end18

if.end18:                                         ; preds = %if.end14, %if.end6
  br label %for.inc

for.inc:                                          ; preds = %if.end18, %if.then13, %if.then5
  %17 = load i32, i32* %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  ret void
}

declare zeroext i1 @checkRegex() #1

declare void @initFieldObjects() #1

declare void @initXtagObjects() #1

declare %struct.sCookedArgs* @cArgNewFromArgv(i8**) #1

declare void @previewFirstOption(%struct.sCookedArgs*) #1

declare void @testEtagsInvocation() #1

declare void @initializeParsing() #1

declare void @initOptions() #1

declare void @readOptionConfiguration() #1

declare void @verbose(i8*, ...) #1

declare void @parseCmdlineOptions(%struct.sCookedArgs*) #1

declare void @checkOptions() #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @runMainLoop(%struct.sCookedArgs* %args) #0 {
entry:
  %args.addr = alloca %struct.sCookedArgs*, align 8
  store %struct.sCookedArgs* %args, %struct.sCookedArgs** %args.addr, align 8
  %0 = load void (%struct.sCookedArgs*, i8*)*, void (%struct.sCookedArgs*, i8*)** @mainLoop, align 8
  %1 = load %struct.sCookedArgs*, %struct.sCookedArgs** %args.addr, align 8
  %2 = load i8*, i8** @mainData, align 8
  call void %0(%struct.sCookedArgs* %1, i8* %2)
  ret void
}

declare i32 @countParsers() #1

declare void @printLanguageMultitableStatistics(i32, %struct.__sFILE*) #1

; Function Attrs: noreturn
declare void @exit(i32) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @ctags_cleanup() #0 {
entry:
  %0 = load %struct.sCookedArgs*, %struct.sCookedArgs** @args, align 8
  call void @cArgDelete(%struct.sCookedArgs* %0)
  store %struct.sCookedArgs* null, %struct.sCookedArgs** @args, align 8
  call void @freeKeywordTable()
  call void @freeRoutineResources()
  call void @freeInputFileResources()
  call void @freeTagFileResources()
  call void @freeOptionResources()
  call void @freeParserResources()
  call void @freeRegexResources()
  call void @freeEncodingResources()
  call void @finiDefaultTrashBox()
  call void bitcast (void (...)* @cleanFieldTrashbox to void ()*)()
  store i64 0, i64* getelementptr inbounds (%struct.anon, %struct.anon* @Totals, i32 0, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.anon, %struct.anon* @Totals, i32 0, i32 1), align 8
  store i64 0, i64* getelementptr inbounds (%struct.anon, %struct.anon* @Totals, i32 0, i32 2), align 8
  store void (%struct.sCookedArgs*, i8*)* null, void (%struct.sCookedArgs*, i8*)** @mainLoop, align 8
  store i8* null, i8** @mainData, align 8
  call void bitcast (void (...)* @initLanguageTables to void ()*)()
  call void bitcast (void (...)* @initPromiseCount to void ()*)()
  call void bitcast (void (...)* @init_apop_count to void ()*)()
  call void @mio_stdcleanup()
  ret void
}

declare void @cArgDelete(%struct.sCookedArgs*) #1

declare void @freeKeywordTable() #1

declare void @freeRoutineResources() #1

declare void @freeInputFileResources() #1

declare void @freeTagFileResources() #1

declare void @freeOptionResources() #1

declare void @freeParserResources() #1

declare void @freeRegexResources() #1

declare void @freeEncodingResources() #1

declare void @finiDefaultTrashBox() #1

declare void @cleanFieldTrashbox(...) #1

declare void @initLanguageTables(...) #1

declare void @initPromiseCount(...) #1

declare void @init_apop_count(...) #1

declare void @mio_stdcleanup() #1

declare zeroext i1 @cArgOff(%struct.sCookedArgs*) #1

declare zeroext i1 @filesRequired() #1

declare i8* @getExecutableName() #1

declare i32 @fprintf(%struct.__sFILE*, i8*, ...) #1

declare void @error(i32, i8*, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @etagsInclude() #0 {
entry:
  %0 = load i8, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 2), align 2
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %1 = load %struct.sPtrArray*, %struct.sPtrArray** getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 12), align 8
  %cmp = icmp ne %struct.sPtrArray* %1, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ]
  ret i1 %2
}

declare void @openTagFile() #1

declare i64 @"\01_clock"() #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @createTagsForArgs(%struct.sCookedArgs* %args) #0 {
entry:
  %args.addr = alloca %struct.sCookedArgs*, align 8
  %resize = alloca i8, align 1
  %arg = alloca i8*, align 8
  store %struct.sCookedArgs* %args, %struct.sCookedArgs** %args.addr, align 8
  store i8 0, i8* %resize, align 1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.sCookedArgs*, %struct.sCookedArgs** %args.addr, align 8
  %call = call zeroext i1 @cArgOff(%struct.sCookedArgs* %0)
  %lnot = xor i1 %call, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.sCookedArgs*, %struct.sCookedArgs** %args.addr, align 8
  %call1 = call i8* @cArgItem(%struct.sCookedArgs* %1)
  store i8* %call1, i8** %arg, align 8
  %2 = load i8*, i8** %arg, align 8
  %call2 = call zeroext i1 @createTagsForEntry(i8* %2)
  %conv = zext i1 %call2 to i32
  %3 = load i8, i8* %resize, align 1
  %tobool = trunc i8 %3 to i1
  %conv3 = zext i1 %tobool to i32
  %or = or i32 %conv3, %conv
  %tobool4 = icmp ne i32 %or, 0
  %frombool = zext i1 %tobool4 to i8
  store i8 %frombool, i8* %resize, align 1
  %4 = load %struct.sCookedArgs*, %struct.sCookedArgs** %args.addr, align 8
  call void @cArgForth(%struct.sCookedArgs* %4)
  %5 = load %struct.sCookedArgs*, %struct.sCookedArgs** %args.addr, align 8
  call void @parseCmdlineOptions(%struct.sCookedArgs* %5)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %6 = load i8, i8* %resize, align 1
  %tobool5 = trunc i8 %6 to i1
  ret i1 %tobool5
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @createTagsFromListFile(i8* %fileName) #0 {
entry:
  %fileName.addr = alloca i8*, align 8
  %resize = alloca i8, align 1
  %fp = alloca %struct.__sFILE*, align 8
  store i8* %fileName, i8** %fileName.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load i8*, i8** %fileName.addr, align 8
  %call = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.end
  %1 = load %struct.__sFILE*, %struct.__sFILE** @__stdinp, align 8
  %call1 = call zeroext i1 @createTagsFromFileInput(%struct.__sFILE* %1, i1 zeroext false)
  %frombool = zext i1 %call1 to i8
  store i8 %frombool, i8* %resize, align 1
  br label %if.end8

if.else:                                          ; preds = %do.end
  %2 = load i8*, i8** %fileName.addr, align 8
  %call2 = call %struct.__sFILE* @"\01_fopen"(i8* %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  store %struct.__sFILE* %call2, %struct.__sFILE** %fp, align 8
  %3 = load %struct.__sFILE*, %struct.__sFILE** %fp, align 8
  %cmp3 = icmp eq %struct.__sFILE* %3, null
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.else
  %4 = load i8*, i8** %fileName.addr, align 8
  call void (i32, i8*, ...) @error(i32 5, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0), i8* %4)
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.else
  %5 = load %struct.__sFILE*, %struct.__sFILE** %fp, align 8
  %call5 = call zeroext i1 @createTagsFromFileInput(%struct.__sFILE* %5, i1 zeroext false)
  %frombool6 = zext i1 %call5 to i8
  store i8 %frombool6, i8* %resize, align 1
  %6 = load %struct.__sFILE*, %struct.__sFILE** %fp, align 8
  %call7 = call i32 @fclose(%struct.__sFILE* %6)
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  %7 = load i8, i8* %resize, align 1
  %tobool = trunc i8 %7 to i1
  ret i1 %tobool
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @createTagsFromFileInput(%struct.__sFILE* %fp, i1 zeroext %filter) #0 {
entry:
  %fp.addr = alloca %struct.__sFILE*, align 8
  %filter.addr = alloca i8, align 1
  %resize = alloca i8, align 1
  %args = alloca %struct.sCookedArgs*, align 8
  store %struct.__sFILE* %fp, %struct.__sFILE** %fp.addr, align 8
  %frombool = zext i1 %filter to i8
  store i8 %frombool, i8* %filter.addr, align 1
  store i8 0, i8* %resize, align 1
  %0 = load %struct.__sFILE*, %struct.__sFILE** %fp.addr, align 8
  %cmp = icmp ne %struct.__sFILE* %0, null
  br i1 %cmp, label %if.then, label %if.end15

if.then:                                          ; preds = %entry
  %1 = load %struct.__sFILE*, %struct.__sFILE** %fp.addr, align 8
  %call = call %struct.sCookedArgs* @cArgNewFromLineFile(%struct.__sFILE* %1)
  store %struct.sCookedArgs* %call, %struct.sCookedArgs** %args, align 8
  %2 = load %struct.sCookedArgs*, %struct.sCookedArgs** %args, align 8
  call void @parseCmdlineOptions(%struct.sCookedArgs* %2)
  br label %while.cond

while.cond:                                       ; preds = %if.end14, %if.then
  %3 = load %struct.sCookedArgs*, %struct.sCookedArgs** %args, align 8
  %call1 = call zeroext i1 @cArgOff(%struct.sCookedArgs* %3)
  %lnot = xor i1 %call1, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct.sCookedArgs*, %struct.sCookedArgs** %args, align 8
  %call2 = call i8* @cArgItem(%struct.sCookedArgs* %4)
  %call3 = call zeroext i1 @createTagsForEntry(i8* %call2)
  %conv = zext i1 %call3 to i32
  %5 = load i8, i8* %resize, align 1
  %tobool = trunc i8 %5 to i1
  %conv4 = zext i1 %tobool to i32
  %or = or i32 %conv4, %conv
  %tobool5 = icmp ne i32 %or, 0
  %frombool6 = zext i1 %tobool5 to i8
  store i8 %frombool6, i8* %resize, align 1
  %6 = load i8, i8* %filter.addr, align 1
  %tobool7 = trunc i8 %6 to i1
  br i1 %tobool7, label %if.then8, label %if.end14

if.then8:                                         ; preds = %while.body
  %7 = load i8*, i8** getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 19), align 8
  %cmp9 = icmp ne i8* %7, null
  br i1 %cmp9, label %if.then11, label %if.end

if.then11:                                        ; preds = %if.then8
  %8 = load i8*, i8** getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 19), align 8
  %9 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8
  %call12 = call i32 @"\01_fputs"(i8* %8, %struct.__sFILE* %9)
  br label %if.end

if.end:                                           ; preds = %if.then11, %if.then8
  %10 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8
  %call13 = call i32 @fflush(%struct.__sFILE* %10)
  br label %if.end14

if.end14:                                         ; preds = %if.end, %while.body
  %11 = load %struct.sCookedArgs*, %struct.sCookedArgs** %args, align 8
  call void @cArgForth(%struct.sCookedArgs* %11)
  %12 = load %struct.sCookedArgs*, %struct.sCookedArgs** %args, align 8
  call void @parseCmdlineOptions(%struct.sCookedArgs* %12)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %13 = load %struct.sCookedArgs*, %struct.sCookedArgs** %args, align 8
  call void @cArgDelete(%struct.sCookedArgs* %13)
  br label %if.end15

if.end15:                                         ; preds = %while.end, %entry
  %14 = load i8, i8* %resize, align 1
  %tobool16 = trunc i8 %14 to i1
  ret i1 %tobool16
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @recurseIntoDirectory(i8* %dirName) #0 {
entry:
  %dirName.addr = alloca i8*, align 8
  %resize = alloca i8, align 1
  store i8* %dirName, i8** %dirName.addr, align 8
  %0 = load i32, i32* @recurseIntoDirectory.recursionDepth, align 4
  %inc = add i32 %0, 1
  store i32 %inc, i32* @recurseIntoDirectory.recursionDepth, align 4
  store i8 0, i8* %resize, align 1
  %1 = load i8*, i8** %dirName.addr, align 8
  %call = call zeroext i1 @isRecursiveLink(i8* %1)
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %dirName.addr, align 8
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i64 0, i64 0), i8* %2)
  br label %if.end7

if.else:                                          ; preds = %entry
  %3 = load i8, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 4), align 8
  %tobool = trunc i8 %3 to i1
  br i1 %tobool, label %if.else2, label %if.then1

if.then1:                                         ; preds = %if.else
  %4 = load i8*, i8** %dirName.addr, align 8
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i64 0, i64 0), i8* %4)
  br label %if.end6

if.else2:                                         ; preds = %if.else
  %5 = load i32, i32* @recurseIntoDirectory.recursionDepth, align 4
  %6 = load i32, i32* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 29), align 4
  %cmp = icmp ugt i32 %5, %6
  br i1 %cmp, label %if.then3, label %if.else4

if.then3:                                         ; preds = %if.else2
  %7 = load i8*, i8** %dirName.addr, align 8
  %8 = load i32, i32* @recurseIntoDirectory.recursionDepth, align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 29), align 4
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.17, i64 0, i64 0), i8* %7, i32 %8, i32 %9)
  br label %if.end

if.else4:                                         ; preds = %if.else2
  %10 = load i8*, i8** %dirName.addr, align 8
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.18, i64 0, i64 0), i8* %10)
  %11 = load i8*, i8** %dirName.addr, align 8
  %call5 = call zeroext i1 @recurseUsingOpendir(i8* %11)
  %frombool = zext i1 %call5 to i8
  store i8 %frombool, i8* %resize, align 1
  br label %if.end

if.end:                                           ; preds = %if.else4, %if.then3
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.then1
  br label %if.end7

if.end7:                                          ; preds = %if.end6, %if.then
  %12 = load i32, i32* @recurseIntoDirectory.recursionDepth, align 4
  %dec = add i32 %12, -1
  store i32 %dec, i32* @recurseIntoDirectory.recursionDepth, align 4
  %13 = load i8, i8* %resize, align 1
  %tobool8 = trunc i8 %13 to i1
  ret i1 %tobool8
}

declare void @closeTagFile(i1 zeroext) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @printTotals(i64* %timeStamps) #0 {
entry:
  %timeStamps.addr = alloca i64*, align 8
  %totalTags = alloca i64, align 8
  %addedTags = alloca i64, align 8
  %interval = alloca double, align 8
  store i64* %timeStamps, i64** %timeStamps.addr, align 8
  %call = call i64 @numTagsTotal()
  store i64 %call, i64* %totalTags, align 8
  %call1 = call i64 @numTagsAdded()
  store i64 %call1, i64* %addedTags, align 8
  %0 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %1 = load i64, i64* getelementptr inbounds (%struct.anon, %struct.anon* @Totals, i32 0, i32 0), align 8
  %2 = load i64, i64* getelementptr inbounds (%struct.anon, %struct.anon* @Totals, i32 0, i32 0), align 8
  %cmp = icmp eq i64 %2, 1
  %3 = zext i1 %cmp to i64
  %cond = select i1 %cmp, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0)
  %4 = load i64, i64* getelementptr inbounds (%struct.anon, %struct.anon* @Totals, i32 0, i32 1), align 8
  %5 = load i64, i64* getelementptr inbounds (%struct.anon, %struct.anon* @Totals, i32 0, i32 1), align 8
  %cmp2 = icmp eq i64 %5, 1
  %6 = zext i1 %cmp2 to i64
  %cond3 = select i1 %cmp2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0)
  %7 = load i64, i64* getelementptr inbounds (%struct.anon, %struct.anon* @Totals, i32 0, i32 2), align 8
  %div = sdiv i64 %7, 1024
  %call4 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21, i64 0, i64 0), i64 %1, i8* %cond, i64 %4, i8* %cond3, i64 %div)
  %8 = load i64*, i64** %timeStamps.addr, align 8
  %arrayidx = getelementptr inbounds i64, i64* %8, i64 1
  %9 = load i64, i64* %arrayidx, align 8
  %10 = load i64*, i64** %timeStamps.addr, align 8
  %arrayidx5 = getelementptr inbounds i64, i64* %10, i64 0
  %11 = load i64, i64* %arrayidx5, align 8
  %sub = sub i64 %9, %11
  %conv = uitofp i64 %sub to double
  %div6 = fdiv double %conv, 1.000000e+06
  store double %div6, double* %interval, align 8
  %12 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %13 = load double, double* %interval, align 8
  %call7 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %12, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i64 0, i64 0), double %13)
  %14 = load double, double* %interval, align 8
  %cmp8 = fcmp une double %14, 0.000000e+00
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %15 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %16 = load i64, i64* getelementptr inbounds (%struct.anon, %struct.anon* @Totals, i32 0, i32 2), align 8
  %conv10 = sitofp i64 %16 to double
  %17 = load double, double* %interval, align 8
  %div11 = fdiv double %conv10, %17
  %conv12 = fptoui double %div11 to i64
  %div13 = udiv i64 %conv12, 1024
  %call14 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i64 0, i64 0), i64 %div13)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %18 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %call15 = call i32 @fputc(i32 10, %struct.__sFILE* %18)
  %19 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %20 = load i64, i64* %addedTags, align 8
  %21 = load i64, i64* %addedTags, align 8
  %cmp16 = icmp eq i64 %21, 1
  %22 = zext i1 %cmp16 to i64
  %cond18 = select i1 %cmp16, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0)
  %call19 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %19, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.26, i64 0, i64 0), i64 %20, i8* %cond18)
  %23 = load i8, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 0), align 8
  %tobool = trunc i8 %23 to i1
  br i1 %tobool, label %if.then20, label %if.end22

if.then20:                                        ; preds = %if.end
  %24 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %25 = load i64, i64* %totalTags, align 8
  %call21 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.27, i64 0, i64 0), i64 %25)
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.end
  %26 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %call23 = call i32 @fputc(i32 10, %struct.__sFILE* %26)
  %27 = load i64, i64* %totalTags, align 8
  %cmp24 = icmp ugt i64 %27, 0
  br i1 %cmp24, label %land.lhs.true, label %if.end40

land.lhs.true:                                    ; preds = %if.end22
  %28 = load i32, i32* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 5), align 4
  %cmp26 = icmp ne i32 %28, 0
  br i1 %cmp26, label %if.then28, label %if.end40

if.then28:                                        ; preds = %land.lhs.true
  %29 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %30 = load i64, i64* %totalTags, align 8
  %31 = load i64, i64* %totalTags, align 8
  %cmp29 = icmp eq i64 %31, 1
  %32 = zext i1 %cmp29 to i64
  %cond31 = select i1 %cmp29, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0)
  %call32 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %29, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.28, i64 0, i64 0), i64 %30, i8* %cond31)
  %33 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %34 = load i64*, i64** %timeStamps.addr, align 8
  %arrayidx33 = getelementptr inbounds i64, i64* %34, i64 2
  %35 = load i64, i64* %arrayidx33, align 8
  %36 = load i64*, i64** %timeStamps.addr, align 8
  %arrayidx34 = getelementptr inbounds i64, i64* %36, i64 1
  %37 = load i64, i64* %arrayidx34, align 8
  %sub35 = sub i64 %35, %37
  %conv36 = uitofp i64 %sub35 to double
  %div37 = fdiv double %conv36, 1.000000e+06
  %call38 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i64 0, i64 0), double %div37)
  %38 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %call39 = call i32 @fputc(i32 10, %struct.__sFILE* %38)
  br label %if.end40

if.end40:                                         ; preds = %if.then28, %land.lhs.true, %if.end22
  ret void
}

declare i8* @cArgItem(%struct.sCookedArgs*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @createTagsForEntry(i8* %entryName) #0 {
entry:
  %entryName.addr = alloca i8*, align 8
  %resize = alloca i8, align 1
  %status = alloca %struct.fileStatus*, align 8
  store i8* %entryName, i8** %entryName.addr, align 8
  store i8 0, i8* %resize, align 1
  %0 = load i8*, i8** %entryName.addr, align 8
  %call = call %struct.fileStatus* @eStat(i8* %0)
  store %struct.fileStatus* %call, %struct.fileStatus** %status, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %1 = load i8*, i8** %entryName.addr, align 8
  %call1 = call zeroext i1 @isExcludedFile(i8* %1)
  br i1 %call1, label %if.then, label %if.else

if.then:                                          ; preds = %do.end
  %2 = load i8*, i8** %entryName.addr, align 8
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i8* %2)
  br label %if.end20

if.else:                                          ; preds = %do.end
  %3 = load %struct.fileStatus*, %struct.fileStatus** %status, align 8
  %isSymbolicLink = getelementptr inbounds %struct.fileStatus, %struct.fileStatus* %3, i32 0, i32 2
  %4 = load i8, i8* %isSymbolicLink, align 1
  %tobool = trunc i8 %4 to i1
  br i1 %tobool, label %land.lhs.true, label %if.else4

land.lhs.true:                                    ; preds = %if.else
  %5 = load i8, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 17), align 4
  %tobool2 = trunc i8 %5 to i1
  br i1 %tobool2, label %if.else4, label %if.then3

if.then3:                                         ; preds = %land.lhs.true
  %6 = load i8*, i8** %entryName.addr, align 8
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0), i8* %6)
  br label %if.end19

if.else4:                                         ; preds = %land.lhs.true, %if.else
  %7 = load %struct.fileStatus*, %struct.fileStatus** %status, align 8
  %exists = getelementptr inbounds %struct.fileStatus, %struct.fileStatus* %7, i32 0, i32 1
  %8 = load i8, i8* %exists, align 8
  %tobool5 = trunc i8 %8 to i1
  br i1 %tobool5, label %if.else7, label %if.then6

if.then6:                                         ; preds = %if.else4
  %9 = load i8*, i8** %entryName.addr, align 8
  call void (i32, i8*, ...) @error(i32 6, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0), i8* %9)
  br label %if.end18

if.else7:                                         ; preds = %if.else4
  %10 = load %struct.fileStatus*, %struct.fileStatus** %status, align 8
  %isDirectory = getelementptr inbounds %struct.fileStatus, %struct.fileStatus* %10, i32 0, i32 3
  %11 = load i8, i8* %isDirectory, align 2
  %tobool8 = trunc i8 %11 to i1
  br i1 %tobool8, label %if.then9, label %if.else11

if.then9:                                         ; preds = %if.else7
  %12 = load i8*, i8** %entryName.addr, align 8
  %call10 = call zeroext i1 @recurseIntoDirectory(i8* %12)
  %frombool = zext i1 %call10 to i8
  store i8 %frombool, i8* %resize, align 1
  br label %if.end17

if.else11:                                        ; preds = %if.else7
  %13 = load %struct.fileStatus*, %struct.fileStatus** %status, align 8
  %isNormalFile = getelementptr inbounds %struct.fileStatus, %struct.fileStatus* %13, i32 0, i32 4
  %14 = load i8, i8* %isNormalFile, align 1
  %tobool12 = trunc i8 %14 to i1
  br i1 %tobool12, label %if.else14, label %if.then13

if.then13:                                        ; preds = %if.else11
  %15 = load i8*, i8** %entryName.addr, align 8
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0), i8* %15)
  br label %if.end

if.else14:                                        ; preds = %if.else11
  %16 = load i8*, i8** %entryName.addr, align 8
  %call15 = call zeroext i1 @parseFile(i8* %16)
  %frombool16 = zext i1 %call15 to i8
  store i8 %frombool16, i8* %resize, align 1
  br label %if.end

if.end:                                           ; preds = %if.else14, %if.then13
  br label %if.end17

if.end17:                                         ; preds = %if.end, %if.then9
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then6
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.then3
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.then
  %17 = load %struct.fileStatus*, %struct.fileStatus** %status, align 8
  call void @eStatFree(%struct.fileStatus* %17)
  %18 = load i8, i8* %resize, align 1
  %tobool21 = trunc i8 %18 to i1
  ret i1 %tobool21
}

declare void @cArgForth(%struct.sCookedArgs*) #1

declare %struct.fileStatus* @eStat(i8*) #1

declare zeroext i1 @isExcludedFile(i8*) #1

declare zeroext i1 @parseFile(i8*) #1

declare void @eStatFree(%struct.fileStatus*) #1

declare %struct.__sFILE* @"\01_fopen"(i8*, i8*) #1

declare i32 @fclose(%struct.__sFILE*) #1

declare %struct.sCookedArgs* @cArgNewFromLineFile(%struct.__sFILE*) #1

declare i32 @"\01_fputs"(i8*, %struct.__sFILE*) #1

declare i32 @fflush(%struct.__sFILE*) #1

declare zeroext i1 @isRecursiveLink(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @recurseUsingOpendir(i8* %dirName) #0 {
entry:
  %dirName.addr = alloca i8*, align 8
  %resize = alloca i8, align 1
  %dir = alloca %struct.DIR*, align 8
  %entry1 = alloca %struct.dirent*, align 8
  %filePath = alloca i8*, align 8
  %free_p = alloca i8, align 1
  store i8* %dirName, i8** %dirName.addr, align 8
  store i8 0, i8* %resize, align 1
  %0 = load i8*, i8** %dirName.addr, align 8
  %call = call %struct.DIR* @"\01_opendir"(i8* %0)
  store %struct.DIR* %call, %struct.DIR** %dir, align 8
  %1 = load %struct.DIR*, %struct.DIR** %dir, align 8
  %cmp = icmp eq %struct.DIR* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %dirName.addr, align 8
  call void (i32, i8*, ...) @error(i32 6, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.19, i64 0, i64 0), i8* %2)
  br label %if.end28

if.else:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end26, %if.else
  %3 = load %struct.DIR*, %struct.DIR** %dir, align 8
  %call2 = call %struct.dirent* @"\01_readdir"(%struct.DIR* %3)
  store %struct.dirent* %call2, %struct.dirent** %entry1, align 8
  %cmp3 = icmp ne %struct.dirent* %call2, null
  br i1 %cmp3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct.dirent*, %struct.dirent** %entry1, align 8
  %d_name = getelementptr inbounds %struct.dirent, %struct.dirent* %4, i32 0, i32 5
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %d_name, i64 0, i64 0
  %call4 = call i32 @strcmp(i8* %arraydecay, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %cmp5 = icmp ne i32 %call4, 0
  br i1 %cmp5, label %land.lhs.true, label %if.end26

land.lhs.true:                                    ; preds = %while.body
  %5 = load %struct.dirent*, %struct.dirent** %entry1, align 8
  %d_name6 = getelementptr inbounds %struct.dirent, %struct.dirent* %5, i32 0, i32 5
  %arraydecay7 = getelementptr inbounds [1024 x i8], [1024 x i8]* %d_name6, i64 0, i64 0
  %call8 = call i32 @strcmp(i8* %arraydecay7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0))
  %cmp9 = icmp ne i32 %call8, 0
  br i1 %cmp9, label %if.then10, label %if.end26

if.then10:                                        ; preds = %land.lhs.true
  store i8 0, i8* %free_p, align 1
  %6 = load i8*, i8** %dirName.addr, align 8
  %call11 = call i32 @strcmp(i8* %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %if.then13, label %if.else16

if.then13:                                        ; preds = %if.then10
  %7 = load %struct.dirent*, %struct.dirent** %entry1, align 8
  %d_name14 = getelementptr inbounds %struct.dirent, %struct.dirent* %7, i32 0, i32 5
  %arraydecay15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %d_name14, i64 0, i64 0
  store i8* %arraydecay15, i8** %filePath, align 8
  br label %if.end

if.else16:                                        ; preds = %if.then10
  %8 = load i8*, i8** %dirName.addr, align 8
  %9 = load %struct.dirent*, %struct.dirent** %entry1, align 8
  %d_name17 = getelementptr inbounds %struct.dirent, %struct.dirent* %9, i32 0, i32 5
  %arraydecay18 = getelementptr inbounds [1024 x i8], [1024 x i8]* %d_name17, i64 0, i64 0
  %call19 = call i8* @combinePathAndFile(i8* %8, i8* %arraydecay18)
  store i8* %call19, i8** %filePath, align 8
  store i8 1, i8* %free_p, align 1
  br label %if.end

if.end:                                           ; preds = %if.else16, %if.then13
  %10 = load i8*, i8** %filePath, align 8
  %call20 = call zeroext i1 @createTagsForEntry(i8* %10)
  %conv = zext i1 %call20 to i32
  %11 = load i8, i8* %resize, align 1
  %tobool = trunc i8 %11 to i1
  %conv21 = zext i1 %tobool to i32
  %or = or i32 %conv21, %conv
  %tobool22 = icmp ne i32 %or, 0
  %frombool = zext i1 %tobool22 to i8
  store i8 %frombool, i8* %resize, align 1
  %12 = load i8, i8* %free_p, align 1
  %tobool23 = trunc i8 %12 to i1
  br i1 %tobool23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end
  %13 = load i8*, i8** %filePath, align 8
  call void @eFree(i8* %13)
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %land.lhs.true, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %14 = load %struct.DIR*, %struct.DIR** %dir, align 8
  %call27 = call i32 @"\01_closedir"(%struct.DIR* %14)
  br label %if.end28

if.end28:                                         ; preds = %while.end, %if.then
  %15 = load i8, i8* %resize, align 1
  %tobool29 = trunc i8 %15 to i1
  ret i1 %tobool29
}

declare %struct.DIR* @"\01_opendir"(i8*) #1

declare %struct.dirent* @"\01_readdir"(%struct.DIR*) #1

declare i8* @combinePathAndFile(i8*, i8*) #1

declare void @eFree(i8*) #1

declare i32 @"\01_closedir"(%struct.DIR*) #1

declare i64 @numTagsTotal() #1

declare i64 @numTagsAdded() #1

declare i32 @fputc(i32, %struct.__sFILE*) #1

declare i8* @strchr(i8*, i32) #1

declare i32 @strncmp(i8*, i8*, i64) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @isSafeVar(i8* %var) #0 {
entry:
  %retval = alloca i1, align 1
  %var.addr = alloca i8*, align 8
  %safe_vars = alloca [3 x i8*], align 8
  %sv = alloca i8*, align 8
  store i8* %var, i8** %var.addr, align 8
  %0 = bitcast [3 x i8*]* %safe_vars to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 bitcast ([3 x i8*]* @__const.isSafeVar.safe_vars to i8*), i64 24, i1 false)
  %arrayidx = getelementptr inbounds [3 x i8*], [3 x i8*]* %safe_vars, i64 0, i64 0
  %1 = load i8*, i8** %arrayidx, align 8
  store i8* %1, i8** %sv, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i8*, i8** %sv, align 8
  %cmp = icmp ne i8* %2, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8*, i8** %var.addr, align 8
  %4 = load i8*, i8** %sv, align 8
  %5 = load i8*, i8** %sv, align 8
  %call = call i64 @strlen(i8* %5)
  %call1 = call i32 @strncmp(i8* %3, i8* %4, i64 %call)
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i1 true, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i8*, i8** %sv, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %sv, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i1 false, i1* %retval, align 1
  br label %return

return:                                           ; preds = %for.end, %if.then
  %7 = load i1, i1* %retval, align 1
  ret i1 %7
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 10.0.0 (https://github.com/holzschu/clang.git 0cfc630fbdb62e96720b611a57123ef3eb13e297) (https://github.com/holzschu/llvm.git 0d8a71e39b28502c24718f7e74b5acbcfe36dfe0)"}
