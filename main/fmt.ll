; ModuleID = 'fmt.c'
source_filename = "fmt.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-ios11.0.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.sFmtElement = type { %union.uFmtSpec, i32 (%union.uFmtSpec*, %struct._MIO*, %struct.sTagEntryInfo*)*, %struct.sFmtElement* }
%union.uFmtSpec = type { %struct.anon }
%struct.anon = type { i32, i32, i8* }
%struct._MIO = type opaque
%struct.sTagEntryInfo = type { i8, i64, i8*, i32, %struct._MIOPos, i32, i8*, i8*, i32, [2 x i8], i8*, %struct.anon.0, i32, [5 x %struct.sTagField], %struct.sPtrArray*, i32, i8*, i64 }
%struct._MIOPos = type { i32, %union.anon }
%union.anon = type { i64 }
%struct.anon.0 = type { i8*, i8*, i8*, i8*, i32, i32, i8*, i32, i8*, [2 x i8*], i32, i64 }
%struct.sTagField = type { i32, i8*, i8 }
%struct.sPtrArray = type opaque
%struct.sVString = type { i64, i64, i8* }

@__stderrp = external global %struct.__sFILE*, align 8
@.str = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"unexpectedly terminated just after '-': \22%s\22\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"unexpectedly terminated just after '.': \22%s\22\00", align 1
@.str.5 = private unnamed_addr constant [58 x i8] c"unexpectedly terminated during parsing column width: \22%s\22\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"no column width given after '-': \22%s\22\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"converting failed: %s\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c" : %s\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"No suitable parser for field name: %s\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"No such field name: %s\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"No such field letter: %c\00", align 1
@.str.12 = private unnamed_addr constant [49 x i8] c"The field cannot be printed in format output: %c\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"%-.*s\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"%-*s\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"%.*s\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"%*s\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sFmtElement* @fmtNew(i8* %fmtString) #0 {
entry:
  %fmtString.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %literal = alloca %struct.sVString*, align 8
  %code = alloca %struct.sFmtElement*, align 8
  %last = alloca %struct.sFmtElement**, align 8
  %found_percent = alloca i8, align 1
  %column_width = alloca i64, align 8
  %cursor = alloca i8*, align 8
  %justification_right = alloca i32, align 4
  %truncation = alloca i8, align 1
  %width = alloca %struct.sVString*, align 8
  %l = alloca i8*, align 8
  %field_name = alloca %struct.sVString*, align 8
  %l163 = alloca i8*, align 8
  store i8* %fmtString, i8** %fmtString.addr, align 8
  store %struct.sVString* null, %struct.sVString** %literal, align 8
  store %struct.sFmtElement* null, %struct.sFmtElement** %code, align 8
  store %struct.sFmtElement** %code, %struct.sFmtElement*** %last, align 8
  store i8 0, i8* %found_percent, align 1
  %0 = load i8*, i8** %fmtString.addr, align 8
  store i8* %0, i8** %cursor, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc158, %entry
  %1 = load i8*, i8** %cursor, align 8
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end160

for.body:                                         ; preds = %for.cond
  %4 = load i8, i8* %found_percent, align 1
  %tobool = trunc i8 %4 to i1
  br i1 %tobool, label %if.then, label %if.else140

if.then:                                          ; preds = %for.body
  store i8 0, i8* %found_percent, align 1
  %5 = load i8*, i8** %cursor, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %6 to i64
  %arrayidx3 = getelementptr inbounds i8, i8* %5, i64 %idxprom2
  %7 = load i8, i8* %arrayidx3, align 1
  %conv4 = sext i8 %7 to i32
  %cmp5 = icmp eq i32 %conv4, 37
  br i1 %cmp5, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.then
  %8 = load %struct.sVString*, %struct.sVString** %literal, align 8
  %cmp8 = icmp eq %struct.sVString* %8, null
  br i1 %cmp8, label %if.then10, label %if.end

if.then10:                                        ; preds = %if.then7
  %call = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call, %struct.sVString** %literal, align 8
  br label %if.end

if.end:                                           ; preds = %if.then10, %if.then7
  %9 = load %struct.sVString*, %struct.sVString** %literal, align 8
  %10 = load i8*, i8** %cursor, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %11 to i64
  %arrayidx12 = getelementptr inbounds i8, i8* %10, i64 %idxprom11
  %12 = load i8, i8* %arrayidx12, align 1
  %conv13 = sext i8 %12 to i32
  call void @vStringPut(%struct.sVString* %9, i32 %conv13)
  br label %if.end139

if.else:                                          ; preds = %if.then
  store i32 1, i32* %justification_right, align 4
  store i8 0, i8* %truncation, align 1
  store %struct.sVString* null, %struct.sVString** %width, align 8
  %13 = load %struct.sVString*, %struct.sVString** %literal, align 8
  %tobool14 = icmp ne %struct.sVString* %13, null
  br i1 %tobool14, label %if.then15, label %if.end18

if.then15:                                        ; preds = %if.else
  %14 = load %struct.sVString*, %struct.sVString** %literal, align 8
  %call16 = call i8* @vStringDeleteUnwrap(%struct.sVString* %14)
  store i8* %call16, i8** %l, align 8
  store %struct.sVString* null, %struct.sVString** %literal, align 8
  %15 = load %struct.sFmtElement**, %struct.sFmtElement*** %last, align 8
  %16 = load i8*, i8** %l, align 8
  %call17 = call %struct.sFmtElement** @queueLiteral(%struct.sFmtElement** %15, i8* %16)
  store %struct.sFmtElement** %call17, %struct.sFmtElement*** %last, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.else
  %17 = load i8*, i8** %cursor, align 8
  %18 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %18 to i64
  %arrayidx20 = getelementptr inbounds i8, i8* %17, i64 %idxprom19
  %19 = load i8, i8* %arrayidx20, align 1
  %conv21 = sext i8 %19 to i32
  %cmp22 = icmp eq i32 %conv21, 45
  br i1 %cmp22, label %if.then24, label %if.end36

if.then24:                                        ; preds = %if.end18
  store i32 -1, i32* %justification_right, align 4
  %20 = load i32, i32* %i, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4
  %21 = load i8*, i8** %cursor, align 8
  %22 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %22 to i64
  %arrayidx26 = getelementptr inbounds i8, i8* %21, i64 %idxprom25
  %23 = load i8, i8* %arrayidx26, align 1
  %conv27 = sext i8 %23 to i32
  %cmp28 = icmp eq i32 %conv27, 0
  br i1 %cmp28, label %if.then30, label %if.end35

if.then30:                                        ; preds = %if.then24
  %24 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %call31 = call i8* @getExecutableName()
  %call32 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %call31, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %25 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %26 = load i8*, i8** %fmtString.addr, align 8
  %call33 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %25, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i8* %26)
  %27 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %call34 = call i32 @"\01_fputs"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), %struct.__sFILE* %27)
  call void bitcast (void (...)* @ctags_cleanup to void ()*)()
  call void @exit(i32 1) #3
  unreachable

if.end35:                                         ; preds = %if.then24
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.end18
  %28 = load i8*, i8** %cursor, align 8
  %29 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %29 to i64
  %arrayidx38 = getelementptr inbounds i8, i8* %28, i64 %idxprom37
  %30 = load i8, i8* %arrayidx38, align 1
  %conv39 = sext i8 %30 to i32
  %cmp40 = icmp eq i32 %conv39, 46
  br i1 %cmp40, label %if.then42, label %if.end55

if.then42:                                        ; preds = %if.end36
  store i8 1, i8* %truncation, align 1
  %31 = load i32, i32* %i, align 4
  %inc43 = add nsw i32 %31, 1
  store i32 %inc43, i32* %i, align 4
  %32 = load i8*, i8** %cursor, align 8
  %33 = load i32, i32* %i, align 4
  %idxprom44 = sext i32 %33 to i64
  %arrayidx45 = getelementptr inbounds i8, i8* %32, i64 %idxprom44
  %34 = load i8, i8* %arrayidx45, align 1
  %conv46 = sext i8 %34 to i32
  %cmp47 = icmp eq i32 %conv46, 0
  br i1 %cmp47, label %if.then49, label %if.end54

if.then49:                                        ; preds = %if.then42
  %35 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %call50 = call i8* @getExecutableName()
  %call51 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %call50, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %36 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %37 = load i8*, i8** %fmtString.addr, align 8
  %call52 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %36, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i8* %37)
  %38 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %call53 = call i32 @"\01_fputs"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), %struct.__sFILE* %38)
  call void bitcast (void (...)* @ctags_cleanup to void ()*)()
  call void @exit(i32 1) #3
  unreachable

if.end54:                                         ; preds = %if.then42
  br label %if.end55

if.end55:                                         ; preds = %if.end54, %if.end36
  br label %while.cond

while.cond:                                       ; preds = %if.end85, %if.end55
  %39 = load i8*, i8** %cursor, align 8
  %40 = load i32, i32* %i, align 4
  %idxprom56 = sext i32 %40 to i64
  %arrayidx57 = getelementptr inbounds i8, i8* %39, i64 %idxprom56
  %41 = load i8, i8* %arrayidx57, align 1
  %conv58 = sext i8 %41 to i32
  %cmp59 = icmp sle i32 48, %conv58
  br i1 %cmp59, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %42 = load i8*, i8** %cursor, align 8
  %43 = load i32, i32* %i, align 4
  %idxprom61 = sext i32 %43 to i64
  %arrayidx62 = getelementptr inbounds i8, i8* %42, i64 %idxprom61
  %44 = load i8, i8* %arrayidx62, align 1
  %conv63 = sext i8 %44 to i32
  %cmp64 = icmp sle i32 %conv63, 57
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %45 = phi i1 [ false, %while.cond ], [ %cmp64, %land.rhs ]
  br i1 %45, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %46 = load %struct.sVString*, %struct.sVString** %width, align 8
  %cmp66 = icmp eq %struct.sVString* %46, null
  br i1 %cmp66, label %if.then68, label %if.end70

if.then68:                                        ; preds = %while.body
  %call69 = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call69, %struct.sVString** %width, align 8
  br label %if.end70

if.end70:                                         ; preds = %if.then68, %while.body
  %47 = load %struct.sVString*, %struct.sVString** %width, align 8
  %48 = load i8*, i8** %cursor, align 8
  %49 = load i32, i32* %i, align 4
  %idxprom71 = sext i32 %49 to i64
  %arrayidx72 = getelementptr inbounds i8, i8* %48, i64 %idxprom71
  %50 = load i8, i8* %arrayidx72, align 1
  %conv73 = sext i8 %50 to i32
  call void @vStringPut(%struct.sVString* %47, i32 %conv73)
  %51 = load i32, i32* %i, align 4
  %inc74 = add nsw i32 %51, 1
  store i32 %inc74, i32* %i, align 4
  %52 = load i8*, i8** %cursor, align 8
  %53 = load i32, i32* %i, align 4
  %idxprom75 = sext i32 %53 to i64
  %arrayidx76 = getelementptr inbounds i8, i8* %52, i64 %idxprom75
  %54 = load i8, i8* %arrayidx76, align 1
  %conv77 = sext i8 %54 to i32
  %cmp78 = icmp eq i32 %conv77, 0
  br i1 %cmp78, label %if.then80, label %if.end85

if.then80:                                        ; preds = %if.end70
  %55 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %call81 = call i8* @getExecutableName()
  %call82 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %55, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %call81, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %56 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %57 = load i8*, i8** %fmtString.addr, align 8
  %call83 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %56, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.5, i64 0, i64 0), i8* %57)
  %58 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %call84 = call i32 @"\01_fputs"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), %struct.__sFILE* %58)
  call void bitcast (void (...)* @ctags_cleanup to void ()*)()
  call void @exit(i32 1) #3
  unreachable

if.end85:                                         ; preds = %if.end70
  br label %while.cond

while.end:                                        ; preds = %land.end
  %59 = load i32, i32* %justification_right, align 4
  %cmp86 = icmp eq i32 %59, -1
  br i1 %cmp86, label %land.lhs.true, label %if.end95

land.lhs.true:                                    ; preds = %while.end
  %60 = load %struct.sVString*, %struct.sVString** %width, align 8
  %cmp88 = icmp eq %struct.sVString* %60, null
  br i1 %cmp88, label %if.then90, label %if.end95

if.then90:                                        ; preds = %land.lhs.true
  %61 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %call91 = call i8* @getExecutableName()
  %call92 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %61, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %call91, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %62 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %63 = load i8*, i8** %fmtString.addr, align 8
  %call93 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %62, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i8* %63)
  %64 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %call94 = call i32 @"\01_fputs"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), %struct.__sFILE* %64)
  call void bitcast (void (...)* @ctags_cleanup to void ()*)()
  call void @exit(i32 1) #3
  unreachable

if.end95:                                         ; preds = %land.lhs.true, %while.end
  store i64 0, i64* %column_width, align 8
  %65 = load %struct.sVString*, %struct.sVString** %width, align 8
  %tobool96 = icmp ne %struct.sVString* %65, null
  br i1 %tobool96, label %if.then97, label %if.end110

if.then97:                                        ; preds = %if.end95
  %66 = load %struct.sVString*, %struct.sVString** %width, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %66, i32 0, i32 2
  %67 = load i8*, i8** %buffer, align 8
  %call98 = call zeroext i1 @strToLong(i8* %67, i32 0, i64* %column_width)
  br i1 %call98, label %if.end108, label %if.then99

if.then99:                                        ; preds = %if.then97
  %68 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %call100 = call i8* @getExecutableName()
  %call101 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %68, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %call100, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %69 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %70 = load %struct.sVString*, %struct.sVString** %width, align 8
  %buffer102 = getelementptr inbounds %struct.sVString, %struct.sVString* %70, i32 0, i32 2
  %71 = load i8*, i8** %buffer102, align 8
  %call103 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %69, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i8* %71)
  %72 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %call104 = call i32* @__error()
  %73 = load i32, i32* %call104, align 4
  %call105 = call i8* @"\01_strerror"(i32 %73)
  %call106 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %72, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* %call105)
  %74 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %call107 = call i32 @"\01_fputs"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), %struct.__sFILE* %74)
  call void bitcast (void (...)* @ctags_cleanup to void ()*)()
  call void @exit(i32 1) #3
  unreachable

if.end108:                                        ; preds = %if.then97
  %75 = load %struct.sVString*, %struct.sVString** %width, align 8
  call void @vStringDelete(%struct.sVString* %75)
  store %struct.sVString* null, %struct.sVString** %width, align 8
  %76 = load i32, i32* %justification_right, align 4
  %conv109 = sext i32 %76 to i64
  %77 = load i64, i64* %column_width, align 8
  %mul = mul nsw i64 %77, %conv109
  store i64 %mul, i64* %column_width, align 8
  br label %if.end110

if.end110:                                        ; preds = %if.end108, %if.end95
  %78 = load i8*, i8** %cursor, align 8
  %79 = load i32, i32* %i, align 4
  %idxprom111 = sext i32 %79 to i64
  %arrayidx112 = getelementptr inbounds i8, i8* %78, i64 %idxprom111
  %80 = load i8, i8* %arrayidx112, align 1
  %conv113 = sext i8 %80 to i32
  %cmp114 = icmp eq i32 %conv113, 123
  br i1 %cmp114, label %if.then116, label %if.else133

if.then116:                                       ; preds = %if.end110
  %call117 = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call117, %struct.sVString** %field_name, align 8
  %81 = load i32, i32* %i, align 4
  %inc118 = add nsw i32 %81, 1
  store i32 %inc118, i32* %i, align 4
  br label %for.cond119

for.cond119:                                      ; preds = %for.inc, %if.then116
  %82 = load i8*, i8** %cursor, align 8
  %83 = load i32, i32* %i, align 4
  %idxprom120 = sext i32 %83 to i64
  %arrayidx121 = getelementptr inbounds i8, i8* %82, i64 %idxprom120
  %84 = load i8, i8* %arrayidx121, align 1
  %conv122 = sext i8 %84 to i32
  %cmp123 = icmp ne i32 %conv122, 125
  br i1 %cmp123, label %for.body125, label %for.end

for.body125:                                      ; preds = %for.cond119
  %85 = load %struct.sVString*, %struct.sVString** %field_name, align 8
  %86 = load i8*, i8** %cursor, align 8
  %87 = load i32, i32* %i, align 4
  %idxprom126 = sext i32 %87 to i64
  %arrayidx127 = getelementptr inbounds i8, i8* %86, i64 %idxprom126
  %88 = load i8, i8* %arrayidx127, align 1
  %conv128 = sext i8 %88 to i32
  call void @vStringPut(%struct.sVString* %85, i32 %conv128)
  br label %for.inc

for.inc:                                          ; preds = %for.body125
  %89 = load i32, i32* %i, align 4
  %inc129 = add nsw i32 %89, 1
  store i32 %inc129, i32* %i, align 4
  br label %for.cond119

for.end:                                          ; preds = %for.cond119
  %90 = load %struct.sFmtElement**, %struct.sFmtElement*** %last, align 8
  %91 = load i64, i64* %column_width, align 8
  %92 = load i8, i8* %truncation, align 1
  %tobool130 = trunc i8 %92 to i1
  %93 = load %struct.sVString*, %struct.sVString** %field_name, align 8
  %buffer131 = getelementptr inbounds %struct.sVString, %struct.sVString* %93, i32 0, i32 2
  %94 = load i8*, i8** %buffer131, align 8
  %call132 = call %struct.sFmtElement** @queueTagField(%struct.sFmtElement** %90, i64 %91, i1 zeroext %tobool130, i8 signext 0, i8* %94)
  store %struct.sFmtElement** %call132, %struct.sFmtElement*** %last, align 8
  %95 = load %struct.sVString*, %struct.sVString** %field_name, align 8
  call void @vStringDelete(%struct.sVString* %95)
  br label %if.end138

if.else133:                                       ; preds = %if.end110
  %96 = load %struct.sFmtElement**, %struct.sFmtElement*** %last, align 8
  %97 = load i64, i64* %column_width, align 8
  %98 = load i8, i8* %truncation, align 1
  %tobool134 = trunc i8 %98 to i1
  %99 = load i8*, i8** %cursor, align 8
  %100 = load i32, i32* %i, align 4
  %idxprom135 = sext i32 %100 to i64
  %arrayidx136 = getelementptr inbounds i8, i8* %99, i64 %idxprom135
  %101 = load i8, i8* %arrayidx136, align 1
  %call137 = call %struct.sFmtElement** @queueTagField(%struct.sFmtElement** %96, i64 %97, i1 zeroext %tobool134, i8 signext %101, i8* null)
  store %struct.sFmtElement** %call137, %struct.sFmtElement*** %last, align 8
  br label %if.end138

if.end138:                                        ; preds = %if.else133, %for.end
  br label %if.end139

if.end139:                                        ; preds = %if.end138, %if.end
  br label %if.end157

if.else140:                                       ; preds = %for.body
  %102 = load i8*, i8** %cursor, align 8
  %103 = load i32, i32* %i, align 4
  %idxprom141 = sext i32 %103 to i64
  %arrayidx142 = getelementptr inbounds i8, i8* %102, i64 %idxprom141
  %104 = load i8, i8* %arrayidx142, align 1
  %conv143 = sext i8 %104 to i32
  %cmp144 = icmp eq i32 %conv143, 37
  br i1 %cmp144, label %if.then146, label %if.else147

if.then146:                                       ; preds = %if.else140
  store i8 1, i8* %found_percent, align 1
  br label %if.end156

if.else147:                                       ; preds = %if.else140
  %105 = load %struct.sVString*, %struct.sVString** %literal, align 8
  %cmp148 = icmp eq %struct.sVString* %105, null
  br i1 %cmp148, label %if.then150, label %if.end152

if.then150:                                       ; preds = %if.else147
  %call151 = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call151, %struct.sVString** %literal, align 8
  br label %if.end152

if.end152:                                        ; preds = %if.then150, %if.else147
  %106 = load %struct.sVString*, %struct.sVString** %literal, align 8
  %107 = load i8*, i8** %cursor, align 8
  %108 = load i32, i32* %i, align 4
  %idxprom153 = sext i32 %108 to i64
  %arrayidx154 = getelementptr inbounds i8, i8* %107, i64 %idxprom153
  %109 = load i8, i8* %arrayidx154, align 1
  %conv155 = sext i8 %109 to i32
  call void @vStringPut(%struct.sVString* %106, i32 %conv155)
  br label %if.end156

if.end156:                                        ; preds = %if.end152, %if.then146
  br label %if.end157

if.end157:                                        ; preds = %if.end156, %if.end139
  br label %for.inc158

for.inc158:                                       ; preds = %if.end157
  %110 = load i32, i32* %i, align 4
  %inc159 = add nsw i32 %110, 1
  store i32 %inc159, i32* %i, align 4
  br label %for.cond

for.end160:                                       ; preds = %for.cond
  %111 = load %struct.sVString*, %struct.sVString** %literal, align 8
  %tobool161 = icmp ne %struct.sVString* %111, null
  br i1 %tobool161, label %if.then162, label %if.end166

if.then162:                                       ; preds = %for.end160
  %112 = load %struct.sVString*, %struct.sVString** %literal, align 8
  %call164 = call i8* @vStringDeleteUnwrap(%struct.sVString* %112)
  store i8* %call164, i8** %l163, align 8
  store %struct.sVString* null, %struct.sVString** %literal, align 8
  %113 = load %struct.sFmtElement**, %struct.sFmtElement*** %last, align 8
  %114 = load i8*, i8** %l163, align 8
  %call165 = call %struct.sFmtElement** @queueLiteral(%struct.sFmtElement** %113, i8* %114)
  store %struct.sFmtElement** %call165, %struct.sFmtElement*** %last, align 8
  br label %if.end166

if.end166:                                        ; preds = %if.then162, %for.end160
  %115 = load %struct.sFmtElement*, %struct.sFmtElement** %code, align 8
  ret %struct.sFmtElement* %115
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

declare i8* @vStringDeleteUnwrap(%struct.sVString*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct.sFmtElement** @queueLiteral(%struct.sFmtElement** %last, i8* %literal) #0 {
entry:
  %last.addr = alloca %struct.sFmtElement**, align 8
  %literal.addr = alloca i8*, align 8
  %cur = alloca %struct.sFmtElement*, align 8
  store %struct.sFmtElement** %last, %struct.sFmtElement*** %last.addr, align 8
  store i8* %literal, i8** %literal.addr, align 8
  %call = call i8* @eMalloc(i64 32)
  %0 = bitcast i8* %call to %struct.sFmtElement*
  store %struct.sFmtElement* %0, %struct.sFmtElement** %cur, align 8
  %1 = load i8*, i8** %literal.addr, align 8
  %2 = load %struct.sFmtElement*, %struct.sFmtElement** %cur, align 8
  %spec = getelementptr inbounds %struct.sFmtElement, %struct.sFmtElement* %2, i32 0, i32 0
  %const_str = bitcast %union.uFmtSpec* %spec to i8**
  store i8* %1, i8** %const_str, align 8
  %3 = load %struct.sFmtElement*, %struct.sFmtElement** %cur, align 8
  %printer = getelementptr inbounds %struct.sFmtElement, %struct.sFmtElement* %3, i32 0, i32 1
  store i32 (%union.uFmtSpec*, %struct._MIO*, %struct.sTagEntryInfo*)* @printLiteral, i32 (%union.uFmtSpec*, %struct._MIO*, %struct.sTagEntryInfo*)** %printer, align 8
  %4 = load %struct.sFmtElement*, %struct.sFmtElement** %cur, align 8
  %next = getelementptr inbounds %struct.sFmtElement, %struct.sFmtElement* %4, i32 0, i32 2
  store %struct.sFmtElement* null, %struct.sFmtElement** %next, align 8
  %5 = load %struct.sFmtElement*, %struct.sFmtElement** %cur, align 8
  %6 = load %struct.sFmtElement**, %struct.sFmtElement*** %last.addr, align 8
  store %struct.sFmtElement* %5, %struct.sFmtElement** %6, align 8
  %7 = load %struct.sFmtElement*, %struct.sFmtElement** %cur, align 8
  %next1 = getelementptr inbounds %struct.sFmtElement, %struct.sFmtElement* %7, i32 0, i32 2
  ret %struct.sFmtElement** %next1
}

declare i32 @fprintf(%struct.__sFILE*, i8*, ...) #1

declare i8* @getExecutableName() #1

declare i32 @"\01_fputs"(i8*, %struct.__sFILE*) #1

declare void @ctags_cleanup(...) #1

; Function Attrs: noreturn
declare void @exit(i32) #2

declare zeroext i1 @strToLong(i8*, i32, i64*) #1

declare i8* @"\01_strerror"(i32) #1

declare i32* @__error() #1

declare void @vStringDelete(%struct.sVString*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct.sFmtElement** @queueTagField(%struct.sFmtElement** %last, i64 %width, i1 zeroext %truncation, i8 signext %field_letter, i8* %field_name) #0 {
entry:
  %last.addr = alloca %struct.sFmtElement**, align 8
  %width.addr = alloca i64, align 8
  %truncation.addr = alloca i8, align 1
  %field_letter.addr = alloca i8, align 1
  %field_name.addr = alloca i8*, align 8
  %ftype = alloca i32, align 4
  %cur = alloca %struct.sFmtElement*, align 8
  %language = alloca i32, align 4
  %f = alloca i8*, align 8
  %ftype_next = alloca i32, align 4
  store %struct.sFmtElement** %last, %struct.sFmtElement*** %last.addr, align 8
  store i64 %width, i64* %width.addr, align 8
  %frombool = zext i1 %truncation to i8
  store i8 %frombool, i8* %truncation.addr, align 1
  store i8 %field_letter, i8* %field_letter.addr, align 1
  store i8* %field_name, i8** %field_name.addr, align 8
  %0 = load i8, i8* %field_letter.addr, align 1
  %conv = sext i8 %0 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %field_name.addr, align 8
  %call = call i32 @getLanguageComponentInFieldName(i8* %1, i8** %f)
  store i32 %call, i32* %language, align 4
  %2 = load i8*, i8** %f, align 8
  %cmp2 = icmp eq i8* %2, null
  br i1 %cmp2, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  %3 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %call5 = call i8* @getExecutableName()
  %call6 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %call5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %4 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %5 = load i8*, i8** %field_name.addr, align 8
  %call7 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0), i8* %5)
  %6 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %call8 = call i32 @"\01_fputs"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), %struct.__sFILE* %6)
  call void bitcast (void (...)* @ctags_cleanup to void ()*)()
  call void @exit(i32 1) #3
  unreachable

if.end:                                           ; preds = %if.then
  %7 = load i8*, i8** %f, align 8
  %8 = load i32, i32* %language, align 4
  %call9 = call i32 @getFieldTypeForNameAndLanguage(i8* %7, i32 %8)
  store i32 %call9, i32* %ftype, align 4
  br label %if.end11

if.else:                                          ; preds = %entry
  store i32 -2, i32* %language, align 4
  %9 = load i8, i8* %field_letter.addr, align 1
  %call10 = call i32 @getFieldTypeForOption(i8 signext %9)
  store i32 %call10, i32* %ftype, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.end
  %10 = load i32, i32* %ftype, align 4
  %cmp12 = icmp eq i32 %10, -1
  br i1 %cmp12, label %if.then14, label %if.end29

if.then14:                                        ; preds = %if.end11
  %11 = load i8, i8* %field_letter.addr, align 1
  %conv15 = sext i8 %11 to i32
  %cmp16 = icmp eq i32 %conv15, 0
  br i1 %cmp16, label %if.then18, label %if.else23

if.then18:                                        ; preds = %if.then14
  %12 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %call19 = call i8* @getExecutableName()
  %call20 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %call19, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %13 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %14 = load i8*, i8** %field_name.addr, align 8
  %call21 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %13, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0), i8* %14)
  %15 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %call22 = call i32 @"\01_fputs"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), %struct.__sFILE* %15)
  call void bitcast (void (...)* @ctags_cleanup to void ()*)()
  call void @exit(i32 1) #3
  unreachable

if.else23:                                        ; preds = %if.then14
  %16 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %call24 = call i8* @getExecutableName()
  %call25 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %call24, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %17 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %18 = load i8, i8* %field_letter.addr, align 1
  %conv26 = sext i8 %18 to i32
  %call27 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %17, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), i32 %conv26)
  %19 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %call28 = call i32 @"\01_fputs"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), %struct.__sFILE* %19)
  call void bitcast (void (...)* @ctags_cleanup to void ()*)()
  call void @exit(i32 1) #3
  unreachable

if.end29:                                         ; preds = %if.end11
  %20 = load i32, i32* %ftype, align 4
  %call30 = call zeroext i1 @isFieldRenderable(i32 %20)
  br i1 %call30, label %if.end37, label %if.then31

if.then31:                                        ; preds = %if.end29
  br label %do.body

do.body:                                          ; preds = %if.then31
  br label %do.end

do.end:                                           ; preds = %do.body
  %21 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %call32 = call i8* @getExecutableName()
  %call33 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %call32, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %22 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %23 = load i8, i8* %field_letter.addr, align 1
  %conv34 = sext i8 %23 to i32
  %call35 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %22, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.12, i64 0, i64 0), i32 %conv34)
  %24 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %call36 = call i32 @"\01_fputs"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), %struct.__sFILE* %24)
  call void bitcast (void (...)* @ctags_cleanup to void ()*)()
  call void @exit(i32 1) #3
  unreachable

if.end37:                                         ; preds = %if.end29
  %call38 = call i8* @eMalloc(i64 32)
  %25 = bitcast i8* %call38 to %struct.sFmtElement*
  store %struct.sFmtElement* %25, %struct.sFmtElement** %cur, align 8
  %26 = load i64, i64* %width.addr, align 8
  %conv39 = trunc i64 %26 to i32
  %27 = load %struct.sFmtElement*, %struct.sFmtElement** %cur, align 8
  %spec = getelementptr inbounds %struct.sFmtElement, %struct.sFmtElement* %27, i32 0, i32 0
  %field = bitcast %union.uFmtSpec* %spec to %struct.anon*
  %width40 = getelementptr inbounds %struct.anon, %struct.anon* %field, i32 0, i32 1
  store i32 %conv39, i32* %width40, align 4
  %28 = load i32, i32* %ftype, align 4
  %29 = load %struct.sFmtElement*, %struct.sFmtElement** %cur, align 8
  %spec41 = getelementptr inbounds %struct.sFmtElement, %struct.sFmtElement* %29, i32 0, i32 0
  %field42 = bitcast %union.uFmtSpec* %spec41 to %struct.anon*
  %ftype43 = getelementptr inbounds %struct.anon, %struct.anon* %field42, i32 0, i32 0
  store i32 %28, i32* %ftype43, align 8
  %30 = load i64, i64* %width.addr, align 8
  %cmp44 = icmp slt i64 %30, 0
  br i1 %cmp44, label %if.then46, label %if.else53

if.then46:                                        ; preds = %if.end37
  %31 = load %struct.sFmtElement*, %struct.sFmtElement** %cur, align 8
  %spec47 = getelementptr inbounds %struct.sFmtElement, %struct.sFmtElement* %31, i32 0, i32 0
  %field48 = bitcast %union.uFmtSpec* %spec47 to %struct.anon*
  %width49 = getelementptr inbounds %struct.anon, %struct.anon* %field48, i32 0, i32 1
  %32 = load i32, i32* %width49, align 4
  %mul = mul nsw i32 %32, -1
  store i32 %mul, i32* %width49, align 4
  %33 = load i8, i8* %truncation.addr, align 1
  %tobool = trunc i8 %33 to i1
  %34 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0)
  %35 = load %struct.sFmtElement*, %struct.sFmtElement** %cur, align 8
  %spec51 = getelementptr inbounds %struct.sFmtElement, %struct.sFmtElement* %35, i32 0, i32 0
  %field52 = bitcast %union.uFmtSpec* %spec51 to %struct.anon*
  %raw_fmtstr = getelementptr inbounds %struct.anon, %struct.anon* %field52, i32 0, i32 2
  store i8* %cond, i8** %raw_fmtstr, align 8
  br label %if.end68

if.else53:                                        ; preds = %if.end37
  %36 = load i64, i64* %width.addr, align 8
  %cmp54 = icmp sgt i64 %36, 0
  br i1 %cmp54, label %if.then56, label %if.else63

if.then56:                                        ; preds = %if.else53
  %37 = load i8, i8* %truncation.addr, align 1
  %tobool57 = trunc i8 %37 to i1
  %38 = zext i1 %tobool57 to i64
  %cond59 = select i1 %tobool57, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0)
  %39 = load %struct.sFmtElement*, %struct.sFmtElement** %cur, align 8
  %spec60 = getelementptr inbounds %struct.sFmtElement, %struct.sFmtElement* %39, i32 0, i32 0
  %field61 = bitcast %union.uFmtSpec* %spec60 to %struct.anon*
  %raw_fmtstr62 = getelementptr inbounds %struct.anon, %struct.anon* %field61, i32 0, i32 2
  store i8* %cond59, i8** %raw_fmtstr62, align 8
  br label %if.end67

if.else63:                                        ; preds = %if.else53
  %40 = load %struct.sFmtElement*, %struct.sFmtElement** %cur, align 8
  %spec64 = getelementptr inbounds %struct.sFmtElement, %struct.sFmtElement* %40, i32 0, i32 0
  %field65 = bitcast %union.uFmtSpec* %spec64 to %struct.anon*
  %raw_fmtstr66 = getelementptr inbounds %struct.anon, %struct.anon* %field65, i32 0, i32 2
  store i8* null, i8** %raw_fmtstr66, align 8
  br label %if.end67

if.end67:                                         ; preds = %if.else63, %if.then56
  br label %if.end68

if.end68:                                         ; preds = %if.end67, %if.then46
  %41 = load i32, i32* %ftype, align 4
  %call69 = call zeroext i1 @enableField(i32 %41, i1 zeroext true, i1 zeroext false)
  %42 = load i32, i32* %language, align 4
  %cmp70 = icmp eq i32 %42, -1
  br i1 %cmp70, label %if.then72, label %if.end77

if.then72:                                        ; preds = %if.end68
  %43 = load i32, i32* %ftype, align 4
  store i32 %43, i32* %ftype_next, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then72
  %44 = load i32, i32* %ftype_next, align 4
  %call73 = call i32 @nextSiblingField(i32 %44)
  store i32 %call73, i32* %ftype_next, align 4
  %cmp74 = icmp ne i32 %call73, -1
  br i1 %cmp74, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %45 = load i32, i32* %ftype_next, align 4
  %call76 = call zeroext i1 @enableField(i32 %45, i1 zeroext true, i1 zeroext false)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end77

if.end77:                                         ; preds = %while.end, %if.end68
  %46 = load %struct.sFmtElement*, %struct.sFmtElement** %cur, align 8
  %printer = getelementptr inbounds %struct.sFmtElement, %struct.sFmtElement* %46, i32 0, i32 1
  store i32 (%union.uFmtSpec*, %struct._MIO*, %struct.sTagEntryInfo*)* @printTagField, i32 (%union.uFmtSpec*, %struct._MIO*, %struct.sTagEntryInfo*)** %printer, align 8
  %47 = load %struct.sFmtElement*, %struct.sFmtElement** %cur, align 8
  %next = getelementptr inbounds %struct.sFmtElement, %struct.sFmtElement* %47, i32 0, i32 2
  store %struct.sFmtElement* null, %struct.sFmtElement** %next, align 8
  %48 = load %struct.sFmtElement*, %struct.sFmtElement** %cur, align 8
  %49 = load %struct.sFmtElement**, %struct.sFmtElement*** %last.addr, align 8
  store %struct.sFmtElement* %48, %struct.sFmtElement** %49, align 8
  %50 = load %struct.sFmtElement*, %struct.sFmtElement** %cur, align 8
  %next78 = getelementptr inbounds %struct.sFmtElement, %struct.sFmtElement* %50, i32 0, i32 2
  ret %struct.sFmtElement** %next78
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @fmtPrint(%struct.sFmtElement* %fmtelts, %struct._MIO* %fp, %struct.sTagEntryInfo* %tag) #0 {
entry:
  %fmtelts.addr = alloca %struct.sFmtElement*, align 8
  %fp.addr = alloca %struct._MIO*, align 8
  %tag.addr = alloca %struct.sTagEntryInfo*, align 8
  %f = alloca %struct.sFmtElement*, align 8
  %i = alloca i32, align 4
  store %struct.sFmtElement* %fmtelts, %struct.sFmtElement** %fmtelts.addr, align 8
  store %struct._MIO* %fp, %struct._MIO** %fp.addr, align 8
  store %struct.sTagEntryInfo* %tag, %struct.sTagEntryInfo** %tag.addr, align 8
  %0 = load %struct.sFmtElement*, %struct.sFmtElement** %fmtelts.addr, align 8
  store %struct.sFmtElement* %0, %struct.sFmtElement** %f, align 8
  store i32 0, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load %struct.sFmtElement*, %struct.sFmtElement** %f, align 8
  %tobool = icmp ne %struct.sFmtElement* %1, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.sFmtElement*, %struct.sFmtElement** %f, align 8
  %printer = getelementptr inbounds %struct.sFmtElement, %struct.sFmtElement* %2, i32 0, i32 1
  %3 = load i32 (%union.uFmtSpec*, %struct._MIO*, %struct.sTagEntryInfo*)*, i32 (%union.uFmtSpec*, %struct._MIO*, %struct.sTagEntryInfo*)** %printer, align 8
  %4 = load %struct.sFmtElement*, %struct.sFmtElement** %f, align 8
  %spec = getelementptr inbounds %struct.sFmtElement, %struct.sFmtElement* %4, i32 0, i32 0
  %5 = load %struct._MIO*, %struct._MIO** %fp.addr, align 8
  %6 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %call = call i32 %3(%union.uFmtSpec* %spec, %struct._MIO* %5, %struct.sTagEntryInfo* %6)
  %7 = load i32, i32* %i, align 4
  %add = add nsw i32 %7, %call
  store i32 %add, i32* %i, align 4
  %8 = load %struct.sFmtElement*, %struct.sFmtElement** %f, align 8
  %next = getelementptr inbounds %struct.sFmtElement, %struct.sFmtElement* %8, i32 0, i32 2
  %9 = load %struct.sFmtElement*, %struct.sFmtElement** %next, align 8
  store %struct.sFmtElement* %9, %struct.sFmtElement** %f, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %10 = load i32, i32* %i, align 4
  ret i32 %10
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @fmtDelete(%struct.sFmtElement* %fmtelts) #0 {
entry:
  %fmtelts.addr = alloca %struct.sFmtElement*, align 8
  %f = alloca %struct.sFmtElement*, align 8
  %next = alloca %struct.sFmtElement*, align 8
  store %struct.sFmtElement* %fmtelts, %struct.sFmtElement** %fmtelts.addr, align 8
  %0 = load %struct.sFmtElement*, %struct.sFmtElement** %fmtelts.addr, align 8
  store %struct.sFmtElement* %0, %struct.sFmtElement** %f, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %1 = load %struct.sFmtElement*, %struct.sFmtElement** %f, align 8
  %tobool = icmp ne %struct.sFmtElement* %1, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.sFmtElement*, %struct.sFmtElement** %f, align 8
  %next1 = getelementptr inbounds %struct.sFmtElement, %struct.sFmtElement* %2, i32 0, i32 2
  %3 = load %struct.sFmtElement*, %struct.sFmtElement** %next1, align 8
  store %struct.sFmtElement* %3, %struct.sFmtElement** %next, align 8
  %4 = load %struct.sFmtElement*, %struct.sFmtElement** %f, align 8
  %printer = getelementptr inbounds %struct.sFmtElement, %struct.sFmtElement* %4, i32 0, i32 1
  %5 = load i32 (%union.uFmtSpec*, %struct._MIO*, %struct.sTagEntryInfo*)*, i32 (%union.uFmtSpec*, %struct._MIO*, %struct.sTagEntryInfo*)** %printer, align 8
  %cmp = icmp eq i32 (%union.uFmtSpec*, %struct._MIO*, %struct.sTagEntryInfo*)* %5, @printLiteral
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %6 = load %struct.sFmtElement*, %struct.sFmtElement** %f, align 8
  %spec = getelementptr inbounds %struct.sFmtElement, %struct.sFmtElement* %6, i32 0, i32 0
  %const_str = bitcast %union.uFmtSpec* %spec to i8**
  %7 = load i8*, i8** %const_str, align 8
  call void @eFree(i8* %7)
  %8 = load %struct.sFmtElement*, %struct.sFmtElement** %f, align 8
  %spec2 = getelementptr inbounds %struct.sFmtElement, %struct.sFmtElement* %8, i32 0, i32 0
  %const_str3 = bitcast %union.uFmtSpec* %spec2 to i8**
  store i8* null, i8** %const_str3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %9 = load %struct.sFmtElement*, %struct.sFmtElement** %f, align 8
  %next4 = getelementptr inbounds %struct.sFmtElement, %struct.sFmtElement* %9, i32 0, i32 2
  store %struct.sFmtElement* null, %struct.sFmtElement** %next4, align 8
  %10 = load %struct.sFmtElement*, %struct.sFmtElement** %f, align 8
  %11 = bitcast %struct.sFmtElement* %10 to i8*
  call void @eFree(i8* %11)
  %12 = load %struct.sFmtElement*, %struct.sFmtElement** %next, align 8
  store %struct.sFmtElement* %12, %struct.sFmtElement** %f, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @printLiteral(%union.uFmtSpec* %fspec, %struct._MIO* %fp, %struct.sTagEntryInfo* %tag) #0 {
entry:
  %fspec.addr = alloca %union.uFmtSpec*, align 8
  %fp.addr = alloca %struct._MIO*, align 8
  %tag.addr = alloca %struct.sTagEntryInfo*, align 8
  store %union.uFmtSpec* %fspec, %union.uFmtSpec** %fspec.addr, align 8
  store %struct._MIO* %fp, %struct._MIO** %fp.addr, align 8
  store %struct.sTagEntryInfo* %tag, %struct.sTagEntryInfo** %tag.addr, align 8
  %0 = load %struct._MIO*, %struct._MIO** %fp.addr, align 8
  %1 = load %union.uFmtSpec*, %union.uFmtSpec** %fspec.addr, align 8
  %const_str = bitcast %union.uFmtSpec* %1 to i8**
  %2 = load i8*, i8** %const_str, align 8
  %call = call i32 @mio_puts(%struct._MIO* %0, i8* %2)
  ret i32 %call
}

declare void @eFree(i8*) #1

declare void @vStringResize(%struct.sVString*, i64) #1

declare i8* @eMalloc(i64) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @getLanguageComponentInFieldName(i8* %fullName, i8** %fieldName) #0 {
entry:
  %fullName.addr = alloca i8*, align 8
  %fieldName.addr = alloca i8**, align 8
  %tmp = alloca i8*, align 8
  %language = alloca i32, align 4
  %len = alloca i64, align 8
  store i8* %fullName, i8** %fullName.addr, align 8
  store i8** %fieldName, i8*** %fieldName.addr, align 8
  %0 = load i8*, i8** %fullName.addr, align 8
  %call = call i8* @strchr(i8* %0, i32 46)
  store i8* %call, i8** %tmp, align 8
  %1 = load i8*, i8** %tmp, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.else17

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %tmp, align 8
  %3 = load i8*, i8** %fullName.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %2 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %len, align 8
  %4 = load i64, i64* %len, align 8
  %cmp = icmp eq i64 %4, 1
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %5 = load i8*, i8** %fullName.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 0
  %6 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %6 to i32
  %cmp1 = icmp eq i32 %conv, 42
  br i1 %cmp1, label %if.then3, label %if.else

if.then3:                                         ; preds = %land.lhs.true
  store i32 -1, i32* %language, align 4
  %7 = load i8*, i8** %tmp, align 8
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 1
  %8 = load i8**, i8*** %fieldName.addr, align 8
  store i8* %add.ptr, i8** %8, align 8
  br label %if.end16

if.else:                                          ; preds = %land.lhs.true, %if.then
  %9 = load i64, i64* %len, align 8
  %cmp4 = icmp eq i64 %9, 0
  br i1 %cmp4, label %if.then6, label %if.else8

if.then6:                                         ; preds = %if.else
  store i32 -2, i32* %language, align 4
  %10 = load i8*, i8** %tmp, align 8
  %add.ptr7 = getelementptr inbounds i8, i8* %10, i64 1
  %11 = load i8**, i8*** %fieldName.addr, align 8
  store i8* %add.ptr7, i8** %11, align 8
  br label %if.end15

if.else8:                                         ; preds = %if.else
  %12 = load i8*, i8** %fullName.addr, align 8
  %13 = load i64, i64* %len, align 8
  %call9 = call i32 @getNamedLanguage(i8* %12, i64 %13)
  store i32 %call9, i32* %language, align 4
  %14 = load i32, i32* %language, align 4
  %cmp10 = icmp eq i32 %14, -2
  br i1 %cmp10, label %if.then12, label %if.else13

if.then12:                                        ; preds = %if.else8
  %15 = load i8**, i8*** %fieldName.addr, align 8
  store i8* null, i8** %15, align 8
  br label %if.end

if.else13:                                        ; preds = %if.else8
  %16 = load i8*, i8** %tmp, align 8
  %add.ptr14 = getelementptr inbounds i8, i8* %16, i64 1
  %17 = load i8**, i8*** %fieldName.addr, align 8
  store i8* %add.ptr14, i8** %17, align 8
  br label %if.end

if.end:                                           ; preds = %if.else13, %if.then12
  br label %if.end15

if.end15:                                         ; preds = %if.end, %if.then6
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.then3
  br label %if.end18

if.else17:                                        ; preds = %entry
  store i32 -2, i32* %language, align 4
  %18 = load i8*, i8** %fullName.addr, align 8
  %19 = load i8**, i8*** %fieldName.addr, align 8
  store i8* %18, i8** %19, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.else17, %if.end16
  %20 = load i32, i32* %language, align 4
  ret i32 %20
}

declare i32 @getFieldTypeForNameAndLanguage(i8*, i32) #1

declare i32 @getFieldTypeForOption(i8 signext) #1

declare zeroext i1 @isFieldRenderable(i32) #1

declare zeroext i1 @enableField(i32, i1 zeroext, i1 zeroext) #1

declare i32 @nextSiblingField(i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @printTagField(%union.uFmtSpec* %fspec, %struct._MIO* %fp, %struct.sTagEntryInfo* %tag) #0 {
entry:
  %fspec.addr = alloca %union.uFmtSpec*, align 8
  %fp.addr = alloca %struct._MIO*, align 8
  %tag.addr = alloca %struct.sTagEntryInfo*, align 8
  %i = alloca i32, align 4
  %width = alloca i32, align 4
  %ftype = alloca i32, align 4
  %str = alloca i8*, align 8
  %findex = alloca i32, align 4
  %f = alloca %struct.sTagField*, align 8
  store %union.uFmtSpec* %fspec, %union.uFmtSpec** %fspec.addr, align 8
  store %struct._MIO* %fp, %struct._MIO** %fp.addr, align 8
  store %struct.sTagEntryInfo* %tag, %struct.sTagEntryInfo** %tag.addr, align 8
  %0 = load %union.uFmtSpec*, %union.uFmtSpec** %fspec.addr, align 8
  %field = bitcast %union.uFmtSpec* %0 to %struct.anon*
  %width1 = getelementptr inbounds %struct.anon, %struct.anon* %field, i32 0, i32 1
  %1 = load i32, i32* %width1, align 4
  store i32 %1, i32* %width, align 4
  store i8* null, i8** %str, align 8
  %2 = load %union.uFmtSpec*, %union.uFmtSpec** %fspec.addr, align 8
  %field2 = bitcast %union.uFmtSpec* %2 to %struct.anon*
  %ftype3 = getelementptr inbounds %struct.anon, %struct.anon* %field2, i32 0, i32 0
  %3 = load i32, i32* %ftype3, align 8
  store i32 %3, i32* %ftype, align 4
  %4 = load i32, i32* %ftype, align 4
  %call = call zeroext i1 @isCommonField(i32 %4)
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %ftype, align 4
  %6 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %call4 = call i8* @renderFieldEscaped(i32 3, i32 %5, %struct.sTagEntryInfo* %6, i32 -1, i8* null)
  store i8* %call4, i8** %str, align 8
  br label %if.end19

if.else:                                          ; preds = %entry
  store i32 0, i32* %findex, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %7 = load i32, i32* %findex, align 4
  %8 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %usedParserFields = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %8, i32 0, i32 12
  %9 = load i32, i32* %usedParserFields, align 8
  %cmp = icmp ult i32 %7, %9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %11 = load i32, i32* %findex, align 4
  %call5 = call %struct.sTagField* @getParserField(%struct.sTagEntryInfo* %10, i32 %11)
  store %struct.sTagField* %call5, %struct.sTagField** %f, align 8
  %12 = load %struct.sTagField*, %struct.sTagField** %f, align 8
  %13 = load i32, i32* %ftype, align 4
  %call6 = call zeroext i1 @isParserFieldCompatibleWithFtype(%struct.sTagField* %12, i32 %13)
  br i1 %call6, label %if.then7, label %if.end

if.then7:                                         ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load i32, i32* %findex, align 4
  %inc = add i32 %14, 1
  store i32 %inc, i32* %findex, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then7, %for.cond
  %15 = load i32, i32* %findex, align 4
  %16 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %usedParserFields8 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %16, i32 0, i32 12
  %17 = load i32, i32* %usedParserFields8, align 8
  %cmp9 = icmp eq i32 %15, %17
  br i1 %cmp9, label %if.then10, label %if.else11

if.then10:                                        ; preds = %for.end
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %str, align 8
  br label %if.end18

if.else11:                                        ; preds = %for.end
  %18 = load %struct.sTagField*, %struct.sTagField** %f, align 8
  %ftype12 = getelementptr inbounds %struct.sTagField, %struct.sTagField* %18, i32 0, i32 0
  %19 = load i32, i32* %ftype12, align 8
  %call13 = call zeroext i1 @isFieldEnabled(i32 %19)
  br i1 %call13, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.else11
  %20 = load %struct.sTagField*, %struct.sTagField** %f, align 8
  %ftype15 = getelementptr inbounds %struct.sTagField, %struct.sTagField* %20, i32 0, i32 0
  %21 = load i32, i32* %ftype15, align 8
  %22 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %23 = load i32, i32* %findex, align 4
  %call16 = call i8* @renderFieldEscaped(i32 3, i32 %21, %struct.sTagEntryInfo* %22, i32 %23, i8* null)
  store i8* %call16, i8** %str, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.else11
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then10
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.then
  %24 = load i8*, i8** %str, align 8
  %cmp20 = icmp eq i8* %24, null
  br i1 %cmp20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end19
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %str, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end19
  %25 = load i32, i32* %width, align 4
  %tobool = icmp ne i32 %25, 0
  br i1 %tobool, label %if.then23, label %if.else27

if.then23:                                        ; preds = %if.end22
  %26 = load %struct._MIO*, %struct._MIO** %fp.addr, align 8
  %call24 = call %struct.__sFILE* @mio_file_get_fp(%struct._MIO* %26)
  %27 = load %union.uFmtSpec*, %union.uFmtSpec** %fspec.addr, align 8
  %field25 = bitcast %union.uFmtSpec* %27 to %struct.anon*
  %raw_fmtstr = getelementptr inbounds %struct.anon, %struct.anon* %field25, i32 0, i32 2
  %28 = load i8*, i8** %raw_fmtstr, align 8
  %29 = load i32, i32* %width, align 4
  %30 = load i8*, i8** %str, align 8
  %call26 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %call24, i8* %28, i32 %29, i8* %30)
  store i32 %call26, i32* %i, align 4
  br label %if.end30

if.else27:                                        ; preds = %if.end22
  %31 = load %struct._MIO*, %struct._MIO** %fp.addr, align 8
  %32 = load i8*, i8** %str, align 8
  %call28 = call i32 @mio_puts(%struct._MIO* %31, i8* %32)
  %33 = load i8*, i8** %str, align 8
  %call29 = call i64 @strlen(i8* %33)
  %conv = trunc i64 %call29 to i32
  store i32 %conv, i32* %i, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.else27, %if.then23
  %34 = load i32, i32* %i, align 4
  ret i32 %34
}

declare i8* @strchr(i8*, i32) #1

declare i32 @getNamedLanguage(i8*, i64) #1

declare zeroext i1 @isCommonField(i32) #1

declare i8* @renderFieldEscaped(i32, i32, %struct.sTagEntryInfo*, i32, i8*) #1

declare %struct.sTagField* @getParserField(%struct.sTagEntryInfo*, i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @isParserFieldCompatibleWithFtype(%struct.sTagField* %pfield, i32 %baseFtype) #0 {
entry:
  %retval = alloca i1, align 1
  %pfield.addr = alloca %struct.sTagField*, align 8
  %baseFtype.addr = alloca i32, align 4
  store %struct.sTagField* %pfield, %struct.sTagField** %pfield.addr, align 8
  store i32 %baseFtype, i32* %baseFtype.addr, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load %struct.sTagField*, %struct.sTagField** %pfield.addr, align 8
  %ftype = getelementptr inbounds %struct.sTagField, %struct.sTagField* %0, i32 0, i32 0
  %1 = load i32, i32* %ftype, align 8
  %2 = load i32, i32* %baseFtype.addr, align 4
  %cmp = icmp eq i32 %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  store i1 true, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %do.body
  %3 = load i32, i32* %baseFtype.addr, align 4
  %call = call i32 @nextSiblingField(i32 %3)
  store i32 %call, i32* %baseFtype.addr, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %4 = load i32, i32* %baseFtype.addr, align 4
  %cmp1 = icmp ne i32 %4, -1
  br i1 %cmp1, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  store i1 false, i1* %retval, align 1
  br label %return

return:                                           ; preds = %do.end, %if.then
  %5 = load i1, i1* %retval, align 1
  ret i1 %5
}

declare zeroext i1 @isFieldEnabled(i32) #1

declare %struct.__sFILE* @mio_file_get_fp(%struct._MIO*) #1

declare i32 @mio_puts(%struct._MIO*, i8*) #1

declare i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 10.0.0 (https://github.com/holzschu/clang.git 0cfc630fbdb62e96720b611a57123ef3eb13e297) (https://github.com/holzschu/llvm.git 0d8a71e39b28502c24718f7e74b5acbcfe36dfe0)"}
