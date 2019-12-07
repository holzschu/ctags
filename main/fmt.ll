; ModuleID = 'fmt.c'
source_filename = "fmt.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-ios11.0.0"

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

@.str = private unnamed_addr constant [45 x i8] c"unexpectedly terminated just after '-': \22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"unexpectedly terminated just after '.': \22%s\22\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"unexpectedly terminated during parsing column width: \22%s\22\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"no column width given after '-': \22%s\22\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"converting failed: %s\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"No suitable parser for field name: %s\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"No such field name: %s\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"No such field letter: %c\00", align 1
@.str.8 = private unnamed_addr constant [49 x i8] c"The field cannot be printed in format output: %c\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%-.*s\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"%-*s\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"%.*s\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"%*s\00", align 1
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

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
  %l140 = alloca i8*, align 8
  store i8* %fmtString, i8** %fmtString.addr, align 8
  store %struct.sVString* null, %struct.sVString** %literal, align 8
  store %struct.sFmtElement* null, %struct.sFmtElement** %code, align 8
  store %struct.sFmtElement** %code, %struct.sFmtElement*** %last, align 8
  store i8 0, i8* %found_percent, align 1
  %0 = load i8*, i8** %fmtString.addr, align 8
  store i8* %0, i8** %cursor, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc135, %entry
  %1 = load i8*, i8** %cursor, align 8
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end137

for.body:                                         ; preds = %for.cond
  %4 = load i8, i8* %found_percent, align 1
  %tobool = trunc i8 %4 to i1
  br i1 %tobool, label %if.then, label %if.else117

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
  br label %if.end116

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
  br i1 %cmp22, label %if.then24, label %if.end32

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
  br i1 %cmp28, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.then24
  %24 = load i8*, i8** %fmtString.addr, align 8
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8* %24)
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.then24
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %if.end18
  %25 = load i8*, i8** %cursor, align 8
  %26 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %26 to i64
  %arrayidx34 = getelementptr inbounds i8, i8* %25, i64 %idxprom33
  %27 = load i8, i8* %arrayidx34, align 1
  %conv35 = sext i8 %27 to i32
  %cmp36 = icmp eq i32 %conv35, 46
  br i1 %cmp36, label %if.then38, label %if.end47

if.then38:                                        ; preds = %if.end32
  store i8 1, i8* %truncation, align 1
  %28 = load i32, i32* %i, align 4
  %inc39 = add nsw i32 %28, 1
  store i32 %inc39, i32* %i, align 4
  %29 = load i8*, i8** %cursor, align 8
  %30 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %30 to i64
  %arrayidx41 = getelementptr inbounds i8, i8* %29, i64 %idxprom40
  %31 = load i8, i8* %arrayidx41, align 1
  %conv42 = sext i8 %31 to i32
  %cmp43 = icmp eq i32 %conv42, 0
  br i1 %cmp43, label %if.then45, label %if.end46

if.then45:                                        ; preds = %if.then38
  %32 = load i8*, i8** %fmtString.addr, align 8
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i8* %32)
  br label %if.end46

if.end46:                                         ; preds = %if.then45, %if.then38
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %if.end32
  br label %while.cond

while.cond:                                       ; preds = %if.end73, %if.end47
  %33 = load i8*, i8** %cursor, align 8
  %34 = load i32, i32* %i, align 4
  %idxprom48 = sext i32 %34 to i64
  %arrayidx49 = getelementptr inbounds i8, i8* %33, i64 %idxprom48
  %35 = load i8, i8* %arrayidx49, align 1
  %conv50 = sext i8 %35 to i32
  %cmp51 = icmp sle i32 48, %conv50
  br i1 %cmp51, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %36 = load i8*, i8** %cursor, align 8
  %37 = load i32, i32* %i, align 4
  %idxprom53 = sext i32 %37 to i64
  %arrayidx54 = getelementptr inbounds i8, i8* %36, i64 %idxprom53
  %38 = load i8, i8* %arrayidx54, align 1
  %conv55 = sext i8 %38 to i32
  %cmp56 = icmp sle i32 %conv55, 57
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %39 = phi i1 [ false, %while.cond ], [ %cmp56, %land.rhs ]
  br i1 %39, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %40 = load %struct.sVString*, %struct.sVString** %width, align 8
  %cmp58 = icmp eq %struct.sVString* %40, null
  br i1 %cmp58, label %if.then60, label %if.end62

if.then60:                                        ; preds = %while.body
  %call61 = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call61, %struct.sVString** %width, align 8
  br label %if.end62

if.end62:                                         ; preds = %if.then60, %while.body
  %41 = load %struct.sVString*, %struct.sVString** %width, align 8
  %42 = load i8*, i8** %cursor, align 8
  %43 = load i32, i32* %i, align 4
  %idxprom63 = sext i32 %43 to i64
  %arrayidx64 = getelementptr inbounds i8, i8* %42, i64 %idxprom63
  %44 = load i8, i8* %arrayidx64, align 1
  %conv65 = sext i8 %44 to i32
  call void @vStringPut(%struct.sVString* %41, i32 %conv65)
  %45 = load i32, i32* %i, align 4
  %inc66 = add nsw i32 %45, 1
  store i32 %inc66, i32* %i, align 4
  %46 = load i8*, i8** %cursor, align 8
  %47 = load i32, i32* %i, align 4
  %idxprom67 = sext i32 %47 to i64
  %arrayidx68 = getelementptr inbounds i8, i8* %46, i64 %idxprom67
  %48 = load i8, i8* %arrayidx68, align 1
  %conv69 = sext i8 %48 to i32
  %cmp70 = icmp eq i32 %conv69, 0
  br i1 %cmp70, label %if.then72, label %if.end73

if.then72:                                        ; preds = %if.end62
  %49 = load i8*, i8** %fmtString.addr, align 8
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i8* %49)
  br label %if.end73

if.end73:                                         ; preds = %if.then72, %if.end62
  br label %while.cond

while.end:                                        ; preds = %land.end
  %50 = load i32, i32* %justification_right, align 4
  %cmp74 = icmp eq i32 %50, -1
  br i1 %cmp74, label %land.lhs.true, label %if.end79

land.lhs.true:                                    ; preds = %while.end
  %51 = load %struct.sVString*, %struct.sVString** %width, align 8
  %cmp76 = icmp eq %struct.sVString* %51, null
  br i1 %cmp76, label %if.then78, label %if.end79

if.then78:                                        ; preds = %land.lhs.true
  %52 = load i8*, i8** %fmtString.addr, align 8
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i8* %52)
  br label %if.end79

if.end79:                                         ; preds = %if.then78, %land.lhs.true, %while.end
  store i64 0, i64* %column_width, align 8
  %53 = load %struct.sVString*, %struct.sVString** %width, align 8
  %tobool80 = icmp ne %struct.sVString* %53, null
  br i1 %tobool80, label %if.then81, label %if.end87

if.then81:                                        ; preds = %if.end79
  %54 = load %struct.sVString*, %struct.sVString** %width, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %54, i32 0, i32 2
  %55 = load i8*, i8** %buffer, align 8
  %call82 = call zeroext i1 @strToLong(i8* %55, i32 0, i64* %column_width)
  br i1 %call82, label %if.end85, label %if.then83

if.then83:                                        ; preds = %if.then81
  %56 = load %struct.sVString*, %struct.sVString** %width, align 8
  %buffer84 = getelementptr inbounds %struct.sVString, %struct.sVString* %56, i32 0, i32 2
  %57 = load i8*, i8** %buffer84, align 8
  call void (i32, i8*, ...) @error(i32 5, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8* %57)
  br label %if.end85

if.end85:                                         ; preds = %if.then83, %if.then81
  %58 = load %struct.sVString*, %struct.sVString** %width, align 8
  call void @vStringDelete(%struct.sVString* %58)
  store %struct.sVString* null, %struct.sVString** %width, align 8
  %59 = load i32, i32* %justification_right, align 4
  %conv86 = sext i32 %59 to i64
  %60 = load i64, i64* %column_width, align 8
  %mul = mul nsw i64 %60, %conv86
  store i64 %mul, i64* %column_width, align 8
  br label %if.end87

if.end87:                                         ; preds = %if.end85, %if.end79
  %61 = load i8*, i8** %cursor, align 8
  %62 = load i32, i32* %i, align 4
  %idxprom88 = sext i32 %62 to i64
  %arrayidx89 = getelementptr inbounds i8, i8* %61, i64 %idxprom88
  %63 = load i8, i8* %arrayidx89, align 1
  %conv90 = sext i8 %63 to i32
  %cmp91 = icmp eq i32 %conv90, 123
  br i1 %cmp91, label %if.then93, label %if.else110

if.then93:                                        ; preds = %if.end87
  %call94 = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call94, %struct.sVString** %field_name, align 8
  %64 = load i32, i32* %i, align 4
  %inc95 = add nsw i32 %64, 1
  store i32 %inc95, i32* %i, align 4
  br label %for.cond96

for.cond96:                                       ; preds = %for.inc, %if.then93
  %65 = load i8*, i8** %cursor, align 8
  %66 = load i32, i32* %i, align 4
  %idxprom97 = sext i32 %66 to i64
  %arrayidx98 = getelementptr inbounds i8, i8* %65, i64 %idxprom97
  %67 = load i8, i8* %arrayidx98, align 1
  %conv99 = sext i8 %67 to i32
  %cmp100 = icmp ne i32 %conv99, 125
  br i1 %cmp100, label %for.body102, label %for.end

for.body102:                                      ; preds = %for.cond96
  %68 = load %struct.sVString*, %struct.sVString** %field_name, align 8
  %69 = load i8*, i8** %cursor, align 8
  %70 = load i32, i32* %i, align 4
  %idxprom103 = sext i32 %70 to i64
  %arrayidx104 = getelementptr inbounds i8, i8* %69, i64 %idxprom103
  %71 = load i8, i8* %arrayidx104, align 1
  %conv105 = sext i8 %71 to i32
  call void @vStringPut(%struct.sVString* %68, i32 %conv105)
  br label %for.inc

for.inc:                                          ; preds = %for.body102
  %72 = load i32, i32* %i, align 4
  %inc106 = add nsw i32 %72, 1
  store i32 %inc106, i32* %i, align 4
  br label %for.cond96

for.end:                                          ; preds = %for.cond96
  %73 = load %struct.sFmtElement**, %struct.sFmtElement*** %last, align 8
  %74 = load i64, i64* %column_width, align 8
  %75 = load i8, i8* %truncation, align 1
  %tobool107 = trunc i8 %75 to i1
  %76 = load %struct.sVString*, %struct.sVString** %field_name, align 8
  %buffer108 = getelementptr inbounds %struct.sVString, %struct.sVString* %76, i32 0, i32 2
  %77 = load i8*, i8** %buffer108, align 8
  %call109 = call %struct.sFmtElement** @queueTagField(%struct.sFmtElement** %73, i64 %74, i1 zeroext %tobool107, i8 signext 0, i8* %77)
  store %struct.sFmtElement** %call109, %struct.sFmtElement*** %last, align 8
  %78 = load %struct.sVString*, %struct.sVString** %field_name, align 8
  call void @vStringDelete(%struct.sVString* %78)
  br label %if.end115

if.else110:                                       ; preds = %if.end87
  %79 = load %struct.sFmtElement**, %struct.sFmtElement*** %last, align 8
  %80 = load i64, i64* %column_width, align 8
  %81 = load i8, i8* %truncation, align 1
  %tobool111 = trunc i8 %81 to i1
  %82 = load i8*, i8** %cursor, align 8
  %83 = load i32, i32* %i, align 4
  %idxprom112 = sext i32 %83 to i64
  %arrayidx113 = getelementptr inbounds i8, i8* %82, i64 %idxprom112
  %84 = load i8, i8* %arrayidx113, align 1
  %call114 = call %struct.sFmtElement** @queueTagField(%struct.sFmtElement** %79, i64 %80, i1 zeroext %tobool111, i8 signext %84, i8* null)
  store %struct.sFmtElement** %call114, %struct.sFmtElement*** %last, align 8
  br label %if.end115

if.end115:                                        ; preds = %if.else110, %for.end
  br label %if.end116

if.end116:                                        ; preds = %if.end115, %if.end
  br label %if.end134

if.else117:                                       ; preds = %for.body
  %85 = load i8*, i8** %cursor, align 8
  %86 = load i32, i32* %i, align 4
  %idxprom118 = sext i32 %86 to i64
  %arrayidx119 = getelementptr inbounds i8, i8* %85, i64 %idxprom118
  %87 = load i8, i8* %arrayidx119, align 1
  %conv120 = sext i8 %87 to i32
  %cmp121 = icmp eq i32 %conv120, 37
  br i1 %cmp121, label %if.then123, label %if.else124

if.then123:                                       ; preds = %if.else117
  store i8 1, i8* %found_percent, align 1
  br label %if.end133

if.else124:                                       ; preds = %if.else117
  %88 = load %struct.sVString*, %struct.sVString** %literal, align 8
  %cmp125 = icmp eq %struct.sVString* %88, null
  br i1 %cmp125, label %if.then127, label %if.end129

if.then127:                                       ; preds = %if.else124
  %call128 = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call128, %struct.sVString** %literal, align 8
  br label %if.end129

if.end129:                                        ; preds = %if.then127, %if.else124
  %89 = load %struct.sVString*, %struct.sVString** %literal, align 8
  %90 = load i8*, i8** %cursor, align 8
  %91 = load i32, i32* %i, align 4
  %idxprom130 = sext i32 %91 to i64
  %arrayidx131 = getelementptr inbounds i8, i8* %90, i64 %idxprom130
  %92 = load i8, i8* %arrayidx131, align 1
  %conv132 = sext i8 %92 to i32
  call void @vStringPut(%struct.sVString* %89, i32 %conv132)
  br label %if.end133

if.end133:                                        ; preds = %if.end129, %if.then123
  br label %if.end134

if.end134:                                        ; preds = %if.end133, %if.end116
  br label %for.inc135

for.inc135:                                       ; preds = %if.end134
  %93 = load i32, i32* %i, align 4
  %inc136 = add nsw i32 %93, 1
  store i32 %inc136, i32* %i, align 4
  br label %for.cond

for.end137:                                       ; preds = %for.cond
  %94 = load %struct.sVString*, %struct.sVString** %literal, align 8
  %tobool138 = icmp ne %struct.sVString* %94, null
  br i1 %tobool138, label %if.then139, label %if.end143

if.then139:                                       ; preds = %for.end137
  %95 = load %struct.sVString*, %struct.sVString** %literal, align 8
  %call141 = call i8* @vStringDeleteUnwrap(%struct.sVString* %95)
  store i8* %call141, i8** %l140, align 8
  store %struct.sVString* null, %struct.sVString** %literal, align 8
  %96 = load %struct.sFmtElement**, %struct.sFmtElement*** %last, align 8
  %97 = load i8*, i8** %l140, align 8
  %call142 = call %struct.sFmtElement** @queueLiteral(%struct.sFmtElement** %96, i8* %97)
  store %struct.sFmtElement** %call142, %struct.sFmtElement*** %last, align 8
  br label %if.end143

if.end143:                                        ; preds = %if.then139, %for.end137
  %98 = load %struct.sFmtElement*, %struct.sFmtElement** %code, align 8
  ret %struct.sFmtElement* %98
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

declare void @error(i32, i8*, ...) #1

declare zeroext i1 @strToLong(i8*, i32, i64*) #1

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
  %3 = load i8*, i8** %field_name.addr, align 8
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i8* %3)
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then
  %4 = load i8*, i8** %f, align 8
  %5 = load i32, i32* %language, align 4
  %call5 = call i32 @getFieldTypeForNameAndLanguage(i8* %4, i32 %5)
  store i32 %call5, i32* %ftype, align 4
  br label %if.end7

if.else:                                          ; preds = %entry
  store i32 -2, i32* %language, align 4
  %6 = load i8, i8* %field_letter.addr, align 1
  %call6 = call i32 @getFieldTypeForOption(i8 signext %6)
  store i32 %call6, i32* %ftype, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.end
  %7 = load i32, i32* %ftype, align 4
  %cmp8 = icmp eq i32 %7, -1
  br i1 %cmp8, label %if.then10, label %if.end18

if.then10:                                        ; preds = %if.end7
  %8 = load i8, i8* %field_letter.addr, align 1
  %conv11 = sext i8 %8 to i32
  %cmp12 = icmp eq i32 %conv11, 0
  br i1 %cmp12, label %if.then14, label %if.else15

if.then14:                                        ; preds = %if.then10
  %9 = load i8*, i8** %field_name.addr, align 8
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i8* %9)
  br label %if.end17

if.else15:                                        ; preds = %if.then10
  %10 = load i8, i8* %field_letter.addr, align 1
  %conv16 = sext i8 %10 to i32
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32 %conv16)
  br label %if.end17

if.end17:                                         ; preds = %if.else15, %if.then14
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.end7
  %11 = load i32, i32* %ftype, align 4
  %call19 = call zeroext i1 @isFieldRenderable(i32 %11)
  br i1 %call19, label %if.end22, label %if.then20

if.then20:                                        ; preds = %if.end18
  br label %do.body

do.body:                                          ; preds = %if.then20
  br label %do.end

do.end:                                           ; preds = %do.body
  %12 = load i8, i8* %field_letter.addr, align 1
  %conv21 = sext i8 %12 to i32
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.8, i64 0, i64 0), i32 %conv21)
  br label %if.end22

if.end22:                                         ; preds = %do.end, %if.end18
  %call23 = call i8* @eMalloc(i64 32)
  %13 = bitcast i8* %call23 to %struct.sFmtElement*
  store %struct.sFmtElement* %13, %struct.sFmtElement** %cur, align 8
  %14 = load i64, i64* %width.addr, align 8
  %conv24 = trunc i64 %14 to i32
  %15 = load %struct.sFmtElement*, %struct.sFmtElement** %cur, align 8
  %spec = getelementptr inbounds %struct.sFmtElement, %struct.sFmtElement* %15, i32 0, i32 0
  %field = bitcast %union.uFmtSpec* %spec to %struct.anon*
  %width25 = getelementptr inbounds %struct.anon, %struct.anon* %field, i32 0, i32 1
  store i32 %conv24, i32* %width25, align 4
  %16 = load i32, i32* %ftype, align 4
  %17 = load %struct.sFmtElement*, %struct.sFmtElement** %cur, align 8
  %spec26 = getelementptr inbounds %struct.sFmtElement, %struct.sFmtElement* %17, i32 0, i32 0
  %field27 = bitcast %union.uFmtSpec* %spec26 to %struct.anon*
  %ftype28 = getelementptr inbounds %struct.anon, %struct.anon* %field27, i32 0, i32 0
  store i32 %16, i32* %ftype28, align 8
  %18 = load i64, i64* %width.addr, align 8
  %cmp29 = icmp slt i64 %18, 0
  br i1 %cmp29, label %if.then31, label %if.else38

if.then31:                                        ; preds = %if.end22
  %19 = load %struct.sFmtElement*, %struct.sFmtElement** %cur, align 8
  %spec32 = getelementptr inbounds %struct.sFmtElement, %struct.sFmtElement* %19, i32 0, i32 0
  %field33 = bitcast %union.uFmtSpec* %spec32 to %struct.anon*
  %width34 = getelementptr inbounds %struct.anon, %struct.anon* %field33, i32 0, i32 1
  %20 = load i32, i32* %width34, align 4
  %mul = mul nsw i32 %20, -1
  store i32 %mul, i32* %width34, align 4
  %21 = load i8, i8* %truncation.addr, align 1
  %tobool = trunc i8 %21 to i1
  %22 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0)
  %23 = load %struct.sFmtElement*, %struct.sFmtElement** %cur, align 8
  %spec36 = getelementptr inbounds %struct.sFmtElement, %struct.sFmtElement* %23, i32 0, i32 0
  %field37 = bitcast %union.uFmtSpec* %spec36 to %struct.anon*
  %raw_fmtstr = getelementptr inbounds %struct.anon, %struct.anon* %field37, i32 0, i32 2
  store i8* %cond, i8** %raw_fmtstr, align 8
  br label %if.end53

if.else38:                                        ; preds = %if.end22
  %24 = load i64, i64* %width.addr, align 8
  %cmp39 = icmp sgt i64 %24, 0
  br i1 %cmp39, label %if.then41, label %if.else48

if.then41:                                        ; preds = %if.else38
  %25 = load i8, i8* %truncation.addr, align 1
  %tobool42 = trunc i8 %25 to i1
  %26 = zext i1 %tobool42 to i64
  %cond44 = select i1 %tobool42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0)
  %27 = load %struct.sFmtElement*, %struct.sFmtElement** %cur, align 8
  %spec45 = getelementptr inbounds %struct.sFmtElement, %struct.sFmtElement* %27, i32 0, i32 0
  %field46 = bitcast %union.uFmtSpec* %spec45 to %struct.anon*
  %raw_fmtstr47 = getelementptr inbounds %struct.anon, %struct.anon* %field46, i32 0, i32 2
  store i8* %cond44, i8** %raw_fmtstr47, align 8
  br label %if.end52

if.else48:                                        ; preds = %if.else38
  %28 = load %struct.sFmtElement*, %struct.sFmtElement** %cur, align 8
  %spec49 = getelementptr inbounds %struct.sFmtElement, %struct.sFmtElement* %28, i32 0, i32 0
  %field50 = bitcast %union.uFmtSpec* %spec49 to %struct.anon*
  %raw_fmtstr51 = getelementptr inbounds %struct.anon, %struct.anon* %field50, i32 0, i32 2
  store i8* null, i8** %raw_fmtstr51, align 8
  br label %if.end52

if.end52:                                         ; preds = %if.else48, %if.then41
  br label %if.end53

if.end53:                                         ; preds = %if.end52, %if.then31
  %29 = load i32, i32* %ftype, align 4
  %call54 = call zeroext i1 @enableField(i32 %29, i1 zeroext true, i1 zeroext false)
  %30 = load i32, i32* %language, align 4
  %cmp55 = icmp eq i32 %30, -1
  br i1 %cmp55, label %if.then57, label %if.end62

if.then57:                                        ; preds = %if.end53
  %31 = load i32, i32* %ftype, align 4
  store i32 %31, i32* %ftype_next, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then57
  %32 = load i32, i32* %ftype_next, align 4
  %call58 = call i32 @nextSiblingField(i32 %32)
  store i32 %call58, i32* %ftype_next, align 4
  %cmp59 = icmp ne i32 %call58, -1
  br i1 %cmp59, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %33 = load i32, i32* %ftype_next, align 4
  %call61 = call zeroext i1 @enableField(i32 %33, i1 zeroext true, i1 zeroext false)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end62

if.end62:                                         ; preds = %while.end, %if.end53
  %34 = load %struct.sFmtElement*, %struct.sFmtElement** %cur, align 8
  %printer = getelementptr inbounds %struct.sFmtElement, %struct.sFmtElement* %34, i32 0, i32 1
  store i32 (%union.uFmtSpec*, %struct._MIO*, %struct.sTagEntryInfo*)* @printTagField, i32 (%union.uFmtSpec*, %struct._MIO*, %struct.sTagEntryInfo*)** %printer, align 8
  %35 = load %struct.sFmtElement*, %struct.sFmtElement** %cur, align 8
  %next = getelementptr inbounds %struct.sFmtElement, %struct.sFmtElement* %35, i32 0, i32 2
  store %struct.sFmtElement* null, %struct.sFmtElement** %next, align 8
  %36 = load %struct.sFmtElement*, %struct.sFmtElement** %cur, align 8
  %37 = load %struct.sFmtElement**, %struct.sFmtElement*** %last.addr, align 8
  store %struct.sFmtElement* %36, %struct.sFmtElement** %37, align 8
  %38 = load %struct.sFmtElement*, %struct.sFmtElement** %cur, align 8
  %next63 = getelementptr inbounds %struct.sFmtElement, %struct.sFmtElement* %38, i32 0, i32 2
  ret %struct.sFmtElement** %next63
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
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0), i8** %str, align 8
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
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0), i8** %str, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end19
  %25 = load i32, i32* %width, align 4
  %tobool = icmp ne i32 %25, 0
  br i1 %tobool, label %if.then23, label %if.else26

if.then23:                                        ; preds = %if.end22
  %26 = load %struct._MIO*, %struct._MIO** %fp.addr, align 8
  %27 = load %union.uFmtSpec*, %union.uFmtSpec** %fspec.addr, align 8
  %field24 = bitcast %union.uFmtSpec* %27 to %struct.anon*
  %raw_fmtstr = getelementptr inbounds %struct.anon, %struct.anon* %field24, i32 0, i32 2
  %28 = load i8*, i8** %raw_fmtstr, align 8
  %29 = load i32, i32* %width, align 4
  %30 = load i8*, i8** %str, align 8
  %call25 = call i32 (%struct._MIO*, i8*, ...) @mio_printf(%struct._MIO* %26, i8* %28, i32 %29, i8* %30)
  store i32 %call25, i32* %i, align 4
  br label %if.end29

if.else26:                                        ; preds = %if.end22
  %31 = load %struct._MIO*, %struct._MIO** %fp.addr, align 8
  %32 = load i8*, i8** %str, align 8
  %call27 = call i32 @mio_puts(%struct._MIO* %31, i8* %32)
  %33 = load i8*, i8** %str, align 8
  %call28 = call i64 @strlen(i8* %33)
  %conv = trunc i64 %call28 to i32
  store i32 %conv, i32* %i, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.else26, %if.then23
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

declare i32 @mio_printf(%struct._MIO*, i8*, ...) #1

declare i32 @mio_puts(%struct._MIO*, i8*) #1

declare i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 10.0.0 (https://github.com/holzschu/clang.git 0cfc630fbdb62e96720b611a57123ef3eb13e297) (https://github.com/holzschu/llvm.git 0d8a71e39b28502c24718f7e74b5acbcfe36dfe0)"}
