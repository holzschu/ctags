; ModuleID = 'ptag.c'
source_filename = "ptag.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-ios11.0.0"

%struct.sPtagDesc = type { i8, i8*, i8*, i1 (%struct.sPtagDesc*, i8*)*, i8 }
%struct.sOptionValues = type { i8, i8, i8, i32, i8, i32, i8, i8, %struct.sFmtElement*, i8*, i8*, %struct.sPtrArray*, %struct.sPtrArray*, i32, i8*, i8*, i32, i8, i8, i8*, i32, i8, i8, i8, i8, i8, i8, i32, i8, i32, i32 }
%struct.sFmtElement = type opaque
%struct.sPtrArray = type opaque
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.colprintTable = type opaque
%struct.colprintLine = type opaque

@ptagDescs = internal global [11 x %struct.sPtagDesc] [%struct.sPtagDesc { i8 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i32 0, i32 0), i1 (%struct.sPtagDesc*, i8*)* @ptagMakeJsonOutputVersion, i8 1 }, %struct.sPtagDesc { i8 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i32 0, i32 0), i1 (%struct.sPtagDesc*, i8*)* @ptagMakeFormat, i8 1 }, %struct.sPtagDesc { i8 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i1 (%struct.sPtagDesc*, i8*)* @ptagMakeHowSorted, i8 1 }, %struct.sPtagDesc { i8 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12, i32 0, i32 0), i1 (%struct.sPtagDesc*, i8*)* @ptagMakeAuthor, i8 1 }, %struct.sPtagDesc { i8 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.14, i32 0, i32 0), i1 (%struct.sPtagDesc*, i8*)* @ptagMakeProgName, i8 1 }, %struct.sPtagDesc { i8 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.16, i32 0, i32 0), i1 (%struct.sPtagDesc*, i8*)* @ptagMakeProgURL, i8 1 }, %struct.sPtagDesc { i8 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.18, i32 0, i32 0), i1 (%struct.sPtagDesc*, i8*)* @ptagMakeProgVersion, i8 1 }, %struct.sPtagDesc { i8 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.20, i32 0, i32 0), i1 (%struct.sPtagDesc*, i8*)* @ptagMakeFileEncoding, i8 1 }, %struct.sPtagDesc { i8 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22, i32 0, i32 0), i1 (%struct.sPtagDesc*, i8*)* @ptagMakeKindSeparators, i8 0 }, %struct.sPtagDesc { i8 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.24, i32 0, i32 0), i1 (%struct.sPtagDesc*, i8*)* @ptagMakeKindDescriptions, i8 0 }, %struct.sPtagDesc { i8 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.26, i32 0, i32 0), i1 (%struct.sPtagDesc*, i8*)* @ptagMakeCtagsOutputMode, i8 1 }], align 8
@.str = private unnamed_addr constant [7 x i8] c"L:NAME\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"L:ENABLED\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"L:DESCRIPTION\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"JSON_OUTPUT_VERSION\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"the version of json output stream format\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"TAG_FILE_FORMAT\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"the version of tags file format\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"TAG_FILE_SORTED\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"how tags are sorted\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"TAG_PROGRAM_AUTHOR\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"the author of this ctags implementation\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"TAG_PROGRAM_NAME\00", align 1
@.str.14 = private unnamed_addr constant [38 x i8] c"the name of this ctags implementation\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"TAG_PROGRAM_URL\00", align 1
@.str.16 = private unnamed_addr constant [51 x i8] c"the official site URL of this ctags implementation\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"TAG_PROGRAM_VERSION\00", align 1
@.str.18 = private unnamed_addr constant [41 x i8] c"the version of this ctags implementation\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"TAG_FILE_ENCODING\00", align 1
@.str.20 = private unnamed_addr constant [38 x i8] c"the encoding used in output tags file\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"TAG_KIND_SEPARATOR\00", align 1
@.str.22 = private unnamed_addr constant [29 x i8] c"the separators used in kinds\00", align 1
@.str.23 = private unnamed_addr constant [21 x i8] c"TAG_KIND_DESCRIPTION\00", align 1
@.str.24 = private unnamed_addr constant [57 x i8] c"the letters, names and descriptions of kinds in a parser\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"TAG_OUTPUT_MODE\00", align 1
@.str.26 = private unnamed_addr constant [36 x i8] c"the output mode: u-ctags or e-ctags\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"unknown format\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@Option = external constant %struct.sOptionValues, align 8
@.str.29 = private unnamed_addr constant [22 x i8] c"original ctags format\00", align 1
@.str.30 = private unnamed_addr constant [56 x i8] c"extended format; --format=1 will not append ;\22 to lines\00", align 1
@.str.31 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.34 = private unnamed_addr constant [33 x i8] c"0=unsorted, 1=sorted, 2=foldcase\00", align 1
@.str.35 = private unnamed_addr constant [21 x i8] c"Universal Ctags Team\00", align 1
@.str.36 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.37 = private unnamed_addr constant [16 x i8] c"Universal Ctags\00", align 1
@.str.38 = private unnamed_addr constant [29 x i8] c"Derived from Exuberant Ctags\00", align 1
@.str.39 = private unnamed_addr constant [18 x i8] c"https://ctags.io/\00", align 1
@.str.40 = private unnamed_addr constant [14 x i8] c"official site\00", align 1
@ctags_repoinfo = external global i8*, align 8
@.str.41 = private unnamed_addr constant [6 x i8] c"0.0.0\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @makePtagIfEnabled(i32 %type, i8* %data) #0 {
entry:
  %retval = alloca i1, align 1
  %type.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %desc = alloca %struct.sPtagDesc*, align 8
  store i32 %type, i32* %type.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load i32, i32* %type.addr, align 4
  %idx.ext = sext i32 %0 to i64
  %add.ptr = getelementptr inbounds %struct.sPtagDesc, %struct.sPtagDesc* getelementptr inbounds ([11 x %struct.sPtagDesc], [11 x %struct.sPtagDesc]* @ptagDescs, i64 0, i64 0), i64 %idx.ext
  store %struct.sPtagDesc* %add.ptr, %struct.sPtagDesc** %desc, align 8
  %1 = load %struct.sPtagDesc*, %struct.sPtagDesc** %desc, align 8
  %enabled = getelementptr inbounds %struct.sPtagDesc, %struct.sPtagDesc* %1, i32 0, i32 0
  %2 = load i8, i8* %enabled, align 8
  %tobool = trunc i8 %2 to i1
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.end
  %3 = load %struct.sPtagDesc*, %struct.sPtagDesc** %desc, align 8
  %makeTag = getelementptr inbounds %struct.sPtagDesc, %struct.sPtagDesc* %3, i32 0, i32 3
  %4 = load i1 (%struct.sPtagDesc*, i8*)*, i1 (%struct.sPtagDesc*, i8*)** %makeTag, align 8
  %5 = load %struct.sPtagDesc*, %struct.sPtagDesc** %desc, align 8
  %6 = load i8*, i8** %data.addr, align 8
  %call = call zeroext i1 %4(%struct.sPtagDesc* %5, i8* %6)
  store i1 %call, i1* %retval, align 1
  br label %return

if.else:                                          ; preds = %do.end
  store i1 false, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.else, %if.then
  %7 = load i1, i1* %retval, align 1
  ret i1 %7
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @isPtagEnabled(i32 %type) #0 {
entry:
  %type.addr = alloca i32, align 4
  %desc = alloca %struct.sPtagDesc*, align 8
  store i32 %type, i32* %type.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load i32, i32* %type.addr, align 4
  %idx.ext = sext i32 %0 to i64
  %add.ptr = getelementptr inbounds %struct.sPtagDesc, %struct.sPtagDesc* getelementptr inbounds ([11 x %struct.sPtagDesc], [11 x %struct.sPtagDesc]* @ptagDescs, i64 0, i64 0), i64 %idx.ext
  store %struct.sPtagDesc* %add.ptr, %struct.sPtagDesc** %desc, align 8
  %1 = load %struct.sPtagDesc*, %struct.sPtagDesc** %desc, align 8
  %enabled = getelementptr inbounds %struct.sPtagDesc, %struct.sPtagDesc* %1, i32 0, i32 0
  %2 = load i8, i8* %enabled, align 8
  %tobool = trunc i8 %2 to i1
  ret i1 %tobool
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @enablePtag(i32 %type, i1 zeroext %state) #0 {
entry:
  %type.addr = alloca i32, align 4
  %state.addr = alloca i8, align 1
  %oldstate = alloca i8, align 1
  %desc = alloca %struct.sPtagDesc*, align 8
  store i32 %type, i32* %type.addr, align 4
  %frombool = zext i1 %state to i8
  store i8 %frombool, i8* %state.addr, align 1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load i32, i32* %type.addr, align 4
  %idx.ext = sext i32 %0 to i64
  %add.ptr = getelementptr inbounds %struct.sPtagDesc, %struct.sPtagDesc* getelementptr inbounds ([11 x %struct.sPtagDesc], [11 x %struct.sPtagDesc]* @ptagDescs, i64 0, i64 0), i64 %idx.ext
  store %struct.sPtagDesc* %add.ptr, %struct.sPtagDesc** %desc, align 8
  %1 = load %struct.sPtagDesc*, %struct.sPtagDesc** %desc, align 8
  %enabled = getelementptr inbounds %struct.sPtagDesc, %struct.sPtagDesc* %1, i32 0, i32 0
  %2 = load i8, i8* %enabled, align 8
  %tobool = trunc i8 %2 to i1
  %frombool1 = zext i1 %tobool to i8
  store i8 %frombool1, i8* %oldstate, align 1
  %3 = load i8, i8* %state.addr, align 1
  %tobool2 = trunc i8 %3 to i1
  %4 = load %struct.sPtagDesc*, %struct.sPtagDesc** %desc, align 8
  %enabled3 = getelementptr inbounds %struct.sPtagDesc, %struct.sPtagDesc* %4, i32 0, i32 0
  %frombool4 = zext i1 %tobool2 to i8
  store i8 %frombool4, i8* %enabled3, align 8
  %5 = load i8, i8* %oldstate, align 1
  %tobool5 = trunc i8 %5 to i1
  ret i1 %tobool5
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sPtagDesc* @getPtagDesc(i32 %type) #0 {
entry:
  %retval = alloca %struct.sPtagDesc*, align 8
  %type.addr = alloca i32, align 4
  store i32 %type, i32* %type.addr, align 4
  %0 = load i32, i32* %type.addr, align 4
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %type.addr, align 4
  %cmp1 = icmp sge i32 %1, 11
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store %struct.sPtagDesc* null, %struct.sPtagDesc** %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i32, i32* %type.addr, align 4
  %idx.ext = sext i32 %2 to i64
  %add.ptr = getelementptr inbounds %struct.sPtagDesc, %struct.sPtagDesc* getelementptr inbounds ([11 x %struct.sPtagDesc], [11 x %struct.sPtagDesc]* @ptagDescs, i64 0, i64 0), i64 %idx.ext
  store %struct.sPtagDesc* %add.ptr, %struct.sPtagDesc** %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct.sPtagDesc*, %struct.sPtagDesc** %retval, align 8
  ret %struct.sPtagDesc* %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @getPtagTypeForName(i8* %name) #0 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [11 x %struct.sPtagDesc], [11 x %struct.sPtagDesc]* @ptagDescs, i64 0, i64 %idxprom
  %name1 = getelementptr inbounds %struct.sPtagDesc, %struct.sPtagDesc* %arrayidx, i32 0, i32 1
  %2 = load i8*, i8** %name1, align 8
  %3 = load i8*, i8** %name.addr, align 8
  %call = call i32 @strcmp(i8* %2, i8* %3)
  %cmp2 = icmp eq i32 %call, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  store i32 %4, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 -1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %6 = load i32, i32* %retval, align 4
  ret i32 %6
}

declare i32 @strcmp(i8*, i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @isPtagCommonInParsers(i32 %type) #0 {
entry:
  %type.addr = alloca i32, align 4
  %pdesc = alloca %struct.sPtagDesc*, align 8
  store i32 %type, i32* %type.addr, align 4
  %0 = load i32, i32* %type.addr, align 4
  %call = call %struct.sPtagDesc* @getPtagDesc(i32 %0)
  store %struct.sPtagDesc* %call, %struct.sPtagDesc** %pdesc, align 8
  %1 = load %struct.sPtagDesc*, %struct.sPtagDesc** %pdesc, align 8
  %commonInParsers = getelementptr inbounds %struct.sPtagDesc, %struct.sPtagDesc* %1, i32 0, i32 4
  %2 = load i8, i8* %commonInParsers, align 8
  %tobool = trunc i8 %2 to i1
  ret i1 %tobool
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @printPtags(i1 zeroext %withListHeader, i1 zeroext %machinable, %struct.__sFILE* %fp) #0 {
entry:
  %withListHeader.addr = alloca i8, align 1
  %machinable.addr = alloca i8, align 1
  %fp.addr = alloca %struct.__sFILE*, align 8
  %table = alloca %struct.colprintTable*, align 8
  %i = alloca i32, align 4
  %line = alloca %struct.colprintLine*, align 8
  %frombool = zext i1 %withListHeader to i8
  store i8 %frombool, i8* %withListHeader.addr, align 1
  %frombool1 = zext i1 %machinable to i8
  store i8 %frombool1, i8* %machinable.addr, align 1
  store %struct.__sFILE* %fp, %struct.__sFILE** %fp.addr, align 8
  %call = call %struct.colprintTable* (i8*, ...) @colprintTableNew(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* null)
  store %struct.colprintTable* %call, %struct.colprintTable** %table, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp ult i32 %0, 11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct.colprintTable*, %struct.colprintTable** %table, align 8
  %call2 = call %struct.colprintLine* @colprintTableGetNewLine(%struct.colprintTable* %1)
  store %struct.colprintLine* %call2, %struct.colprintLine** %line, align 8
  %2 = load %struct.colprintLine*, %struct.colprintLine** %line, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = zext i32 %3 to i64
  %arrayidx = getelementptr inbounds [11 x %struct.sPtagDesc], [11 x %struct.sPtagDesc]* @ptagDescs, i64 0, i64 %idxprom
  %name = getelementptr inbounds %struct.sPtagDesc, %struct.sPtagDesc* %arrayidx, i32 0, i32 1
  %4 = load i8*, i8** %name, align 8
  call void @colprintLineAppendColumnCString(%struct.colprintLine* %2, i8* %4)
  %5 = load %struct.colprintLine*, %struct.colprintLine** %line, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom3 = zext i32 %6 to i64
  %arrayidx4 = getelementptr inbounds [11 x %struct.sPtagDesc], [11 x %struct.sPtagDesc]* @ptagDescs, i64 0, i64 %idxprom3
  %enabled = getelementptr inbounds %struct.sPtagDesc, %struct.sPtagDesc* %arrayidx4, i32 0, i32 0
  %7 = load i8, i8* %enabled, align 8
  %tobool = trunc i8 %7 to i1
  %8 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  call void @colprintLineAppendColumnCString(%struct.colprintLine* %5, i8* %cond)
  %9 = load %struct.colprintLine*, %struct.colprintLine** %line, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom5 = zext i32 %10 to i64
  %arrayidx6 = getelementptr inbounds [11 x %struct.sPtagDesc], [11 x %struct.sPtagDesc]* @ptagDescs, i64 0, i64 %idxprom5
  %description = getelementptr inbounds %struct.sPtagDesc, %struct.sPtagDesc* %arrayidx6, i32 0, i32 2
  %11 = load i8*, i8** %description, align 8
  call void @colprintLineAppendColumnCString(%struct.colprintLine* %9, i8* %11)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %inc = add i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load %struct.colprintTable*, %struct.colprintTable** %table, align 8
  call void @colprintTableSort(%struct.colprintTable* %13, i32 (%struct.colprintLine*, %struct.colprintLine*)* @ptagCompare)
  %14 = load %struct.colprintTable*, %struct.colprintTable** %table, align 8
  %15 = load i8, i8* %withListHeader.addr, align 1
  %tobool7 = trunc i8 %15 to i1
  %16 = load i8, i8* %machinable.addr, align 1
  %tobool8 = trunc i8 %16 to i1
  %17 = load %struct.__sFILE*, %struct.__sFILE** %fp.addr, align 8
  call void @colprintTablePrint(%struct.colprintTable* %14, i32 0, i1 zeroext %tobool7, i1 zeroext %tobool8, %struct.__sFILE* %17)
  %18 = load %struct.colprintTable*, %struct.colprintTable** %table, align 8
  call void @colprintTableDelete(%struct.colprintTable* %18)
  ret void
}

declare %struct.colprintTable* @colprintTableNew(i8*, ...) #1

declare %struct.colprintLine* @colprintTableGetNewLine(%struct.colprintTable*) #1

declare void @colprintLineAppendColumnCString(%struct.colprintLine*, i8*) #1

declare void @colprintTableSort(%struct.colprintTable*, i32 (%struct.colprintLine*, %struct.colprintLine*)*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @ptagCompare(%struct.colprintLine* %a, %struct.colprintLine* %b) #0 {
entry:
  %a.addr = alloca %struct.colprintLine*, align 8
  %b.addr = alloca %struct.colprintLine*, align 8
  %a_name = alloca i8*, align 8
  %b_name = alloca i8*, align 8
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
  ret i32 %call2
}

declare void @colprintTablePrint(%struct.colprintTable*, i32, i1 zeroext, i1 zeroext, %struct.__sFILE*) #1

declare void @colprintTableDelete(%struct.colprintTable*) #1

declare zeroext i1 @ptagMakeJsonOutputVersion(%struct.sPtagDesc*, i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @ptagMakeFormat(%struct.sPtagDesc* %desc, i8* %data) #0 {
entry:
  %desc.addr = alloca %struct.sPtagDesc*, align 8
  %data.addr = alloca i8*, align 8
  %format = alloca [11 x i8], align 1
  %formatComment = alloca i8*, align 8
  store %struct.sPtagDesc* %desc, %struct.sPtagDesc** %desc.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i64 0, i64 0), i8** %formatComment, align 8
  %arraydecay = getelementptr inbounds [11 x i8], [11 x i8]* %format, i64 0, i64 0
  %0 = load i32, i32* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 13), align 8
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0), i32 %0)
  %1 = load i32, i32* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 13), align 8
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.29, i64 0, i64 0), i8** %formatComment, align 8
  br label %if.end3

if.else:                                          ; preds = %entry
  %2 = load i32, i32* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 13), align 8
  %cmp1 = icmp eq i32 %2, 2
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.else
  store i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.30, i64 0, i64 0), i8** %formatComment, align 8
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.else
  br label %if.end3

if.end3:                                          ; preds = %if.end, %if.then
  %3 = load %struct.sPtagDesc*, %struct.sPtagDesc** %desc.addr, align 8
  %arraydecay4 = getelementptr inbounds [11 x i8], [11 x i8]* %format, i64 0, i64 0
  %4 = load i8*, i8** %formatComment, align 8
  %call5 = call zeroext i1 @writePseudoTag(%struct.sPtagDesc* %3, i8* %arraydecay4, i8* %4, i8* null)
  ret i1 %call5
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @ptagMakeHowSorted(%struct.sPtagDesc* %desc, i8* %data) #0 {
entry:
  %desc.addr = alloca %struct.sPtagDesc*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.sPtagDesc* %desc, %struct.sPtagDesc** %desc.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct.sPtagDesc*, %struct.sPtagDesc** %desc.addr, align 8
  %1 = load i32, i32* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 5), align 4
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load i32, i32* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 5), align 4
  %cmp1 = icmp eq i32 %2, 1
  %3 = zext i1 %cmp1 to i64
  %cond = select i1 %cmp1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond2 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0), %cond.true ], [ %cond, %cond.false ]
  %call = call zeroext i1 @writePseudoTag(%struct.sPtagDesc* %0, i8* %cond2, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.34, i64 0, i64 0), i8* null)
  ret i1 %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @ptagMakeAuthor(%struct.sPtagDesc* %desc, i8* %data) #0 {
entry:
  %desc.addr = alloca %struct.sPtagDesc*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.sPtagDesc* %desc, %struct.sPtagDesc** %desc.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct.sPtagDesc*, %struct.sPtagDesc** %desc.addr, align 8
  %call = call zeroext i1 @writePseudoTag(%struct.sPtagDesc* %0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.35, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.36, i64 0, i64 0), i8* null)
  ret i1 %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @ptagMakeProgName(%struct.sPtagDesc* %desc, i8* %data) #0 {
entry:
  %desc.addr = alloca %struct.sPtagDesc*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.sPtagDesc* %desc, %struct.sPtagDesc** %desc.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct.sPtagDesc*, %struct.sPtagDesc** %desc.addr, align 8
  %call = call zeroext i1 @writePseudoTag(%struct.sPtagDesc* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.37, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.38, i64 0, i64 0), i8* null)
  ret i1 %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @ptagMakeProgURL(%struct.sPtagDesc* %desc, i8* %data) #0 {
entry:
  %desc.addr = alloca %struct.sPtagDesc*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.sPtagDesc* %desc, %struct.sPtagDesc** %desc.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct.sPtagDesc*, %struct.sPtagDesc** %desc.addr, align 8
  %call = call zeroext i1 @writePseudoTag(%struct.sPtagDesc* %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.39, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.40, i64 0, i64 0), i8* null)
  ret i1 %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @ptagMakeProgVersion(%struct.sPtagDesc* %desc, i8* %data) #0 {
entry:
  %desc.addr = alloca %struct.sPtagDesc*, align 8
  %data.addr = alloca i8*, align 8
  %repoinfo = alloca i8*, align 8
  store %struct.sPtagDesc* %desc, %struct.sPtagDesc** %desc.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** @ctags_repoinfo, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i8*, i8** @ctags_repoinfo, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %1, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.36, i64 0, i64 0), %cond.false ]
  store i8* %cond, i8** %repoinfo, align 8
  %2 = load %struct.sPtagDesc*, %struct.sPtagDesc** %desc.addr, align 8
  %3 = load i8*, i8** %repoinfo, align 8
  %call = call zeroext i1 @writePseudoTag(%struct.sPtagDesc* %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i64 0, i64 0), i8* %3, i8* null)
  ret i1 %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @ptagMakeFileEncoding(%struct.sPtagDesc* %desc, i8* %data) #0 {
entry:
  %retval = alloca i1, align 1
  %desc.addr = alloca %struct.sPtagDesc*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.sPtagDesc* %desc, %struct.sPtagDesc** %desc.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 15), align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.sPtagDesc*, %struct.sPtagDesc** %desc.addr, align 8
  %2 = load i8*, i8** getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 15), align 8
  %call = call zeroext i1 @writePseudoTag(%struct.sPtagDesc* %1, i8* %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.36, i64 0, i64 0), i8* null)
  store i1 %call, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i1, i1* %retval, align 1
  ret i1 %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @ptagMakeKindSeparators(%struct.sPtagDesc* %desc, i8* %data) #0 {
entry:
  %desc.addr = alloca %struct.sPtagDesc*, align 8
  %data.addr = alloca i8*, align 8
  %language = alloca i32*, align 8
  store %struct.sPtagDesc* %desc, %struct.sPtagDesc** %desc.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to i32*
  store i32* %1, i32** %language, align 8
  %2 = load i32*, i32** %language, align 8
  %3 = load i32, i32* %2, align 4
  %4 = load %struct.sPtagDesc*, %struct.sPtagDesc** %desc.addr, align 8
  %call = call zeroext i1 @makeKindSeparatorsPseudoTags(i32 %3, %struct.sPtagDesc* %4)
  ret i1 %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @ptagMakeKindDescriptions(%struct.sPtagDesc* %desc, i8* %data) #0 {
entry:
  %desc.addr = alloca %struct.sPtagDesc*, align 8
  %data.addr = alloca i8*, align 8
  %language = alloca i32*, align 8
  store %struct.sPtagDesc* %desc, %struct.sPtagDesc** %desc.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to i32*
  store i32* %1, i32** %language, align 8
  %2 = load i32*, i32** %language, align 8
  %3 = load i32, i32* %2, align 4
  %4 = load %struct.sPtagDesc*, %struct.sPtagDesc** %desc.addr, align 8
  %call = call zeroext i1 @makeKindDescriptionsPseudoTags(i32 %3, %struct.sPtagDesc* %4)
  ret i1 %call
}

declare zeroext i1 @ptagMakeCtagsOutputMode(%struct.sPtagDesc*, i8*) #1

declare i32 @sprintf(i8*, i8*, ...) #1

declare zeroext i1 @writePseudoTag(%struct.sPtagDesc*, i8*, i8*, i8*) #1

declare zeroext i1 @makeKindSeparatorsPseudoTags(i32, %struct.sPtagDesc*) #1

declare zeroext i1 @makeKindDescriptionsPseudoTags(i32, %struct.sPtagDesc*) #1

declare i8* @colprintLineGetColumn(%struct.colprintLine*, i32) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 10.0.0 (https://github.com/holzschu/clang.git 0cfc630fbdb62e96720b611a57123ef3eb13e297) (https://github.com/holzschu/llvm.git 0d8a71e39b28502c24718f7e74b5acbcfe36dfe0)"}
