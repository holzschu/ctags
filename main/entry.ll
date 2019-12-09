; ModuleID = 'entry.c'
source_filename = "entry.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-ios11.0.0"

%struct.eTagFile = type { i8*, i8*, %struct._MIO*, %struct.sNumTags, %struct.sMax, %struct.sVString*, i32, %struct.sCorkQueue, i8 }
%struct._MIO = type opaque
%struct.sNumTags = type { i64, i64 }
%struct.sMax = type { i64, i64 }
%struct.sVString = type { i64, i64, i8* }
%struct.sCorkQueue = type { %struct.sTagEntryInfo*, i32, i32 }
%struct.sTagEntryInfo = type { i8, i64, i8*, i32, %struct._MIOPos, i32, i8*, i8*, i32, [2 x i8], i8*, %struct.anon, i32, [5 x %struct.sTagField], %struct.sPtrArray*, i32, i8*, i64 }
%struct._MIOPos = type { i32, %union.anon }
%union.anon = type { i64 }
%struct.anon = type { i8*, i8*, i8*, i8*, i32, i32, i8*, i32, i8*, [2 x i8*], i32, i64 }
%struct.sTagField = type { i32, i8*, i8 }
%struct.sPtrArray = type opaque
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.sOptionValues = type { i8, i8, i8, i32, i8, i32, i8, i8, %struct.sFmtElement*, i8*, i8*, %struct.sPtrArray*, %struct.sPtrArray*, i32, i8*, i8*, i32, i8, i8, i8*, i32, i8, i8, i8, i8, i8, i8, i32, i8, i32, i32 }
%struct.sFmtElement = type opaque
%struct.sKindDefinition = type { i8, i8, i8*, i8*, i8, i32, %struct.sRoleDesc*, %struct.sScopeSeparator*, i32, i32, i32, %struct.sKindDefinition*, %struct.sKindDefinition* }
%struct.sRoleDesc = type { i8, i8*, i8* }
%struct.sScopeSeparator = type { i32, i8* }
%struct.sPtagDesc = type { i8, i8*, i8*, i1 (%struct.sPtagDesc*, i8*)*, i8 }
%struct.NestingLevel = type { i32, [0 x i8] }

@TagFile = internal global %struct.eTagFile zeroinitializer, align 8
@TagsToStdout = internal global i8 0, align 1
@cached_pattern = internal global %struct.sVString* null, align 8
@cached_location = internal global %struct._MIOPos zeroinitializer, align 8
@__stderrp = external global %struct.__sFILE*, align 8
@.str = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"cannot write tag file\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c" : %s\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@Option = external constant %struct.sOptionValues, align 8
@__stdoutp = external global %struct.__sFILE*, align 8
@.str.5 = private unnamed_addr constant [12 x i8] c"/dev/stdout\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"w+\00", align 1
@.str.7 = private unnamed_addr constant [61 x i8] c"\22%s\22 doesn't look like a tag file; I refuse to overwrite it.\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"a+b\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"w+b\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"r+\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"a+\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"cannot open tag file\00", align 1
@CurrentDirectory = external global i8*, align 8
@.str.14 = private unnamed_addr constant [22 x i8] c"cannot close tag file\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"Warning: \00", align 1
@.str.16 = private unnamed_addr constant [35 x i8] c"ignoring null tag in %s(line: %lu)\00", align 1
@makeQualifiedTagEntry.fqn = internal global %struct.sVString* null, align 8
@.str.17 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"Cannot analyze tag file\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"%[^\09]%[\09]%[^\09]%[\09]%[^\0D\0A]\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"/?\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"%[^;\0A]\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"%sTAG_FILE\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"!_\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"%15s%c\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"_SORTED\00", align 1
@.str.27 = private unnamed_addr constant [37 x i8] c"Failed to update 'sorted' pseudo-tag\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"\0C\0A%s,include\0A\00", align 1
@.str.29 = private unnamed_addr constant [37 x i8] c"Cannot shorten tag file: errno = %d\0A\00", align 1
@.str.30 = private unnamed_addr constant [18 x i8] c"sorting tag file\0A\00", align 1
@.str.31 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.32 = private unnamed_addr constant [44 x i8] c"could not read tag line from %s at line %lu\00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c"$\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @freeTagFileResources() #0 {
entry:
  %0 = load i8*, i8** getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 0), align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 0), align 8
  call void @eFree(i8* %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i8* null, i8** getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 0), align 8
  %2 = load i8*, i8** getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 1), align 8
  %cmp1 = icmp ne i8* %2, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %3 = load i8*, i8** getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 1), align 8
  call void @eFree(i8* %3)
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  store i8* null, i8** getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 1), align 8
  store %struct._MIO* null, %struct._MIO** getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 2), align 8
  store i64 0, i64* getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 3, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 3, i32 1), align 8
  store i64 0, i64* getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 4, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 4, i32 1), align 8
  %4 = load %struct.sVString*, %struct.sVString** getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 5), align 8
  call void @vStringDelete(%struct.sVString* %4)
  store %struct.sVString* null, %struct.sVString** getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 5), align 8
  call void @uncorkTagFile()
  store i32 0, i32* getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 6), align 8
  store i8 0, i8* getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 8), align 8
  store i8 0, i8* @TagsToStdout, align 1
  store %struct.sVString* null, %struct.sVString** @cached_pattern, align 8
  store i64 0, i64* getelementptr inbounds (%struct._MIOPos, %struct._MIOPos* @cached_location, i32 0, i32 1, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct._MIOPos, %struct._MIOPos* @cached_location, i32 0, i32 1, i32 0), align 8
  store i32 0, i32* getelementptr inbounds (%struct._MIOPos, %struct._MIOPos* @cached_location, i32 0, i32 0), align 8
  ret void
}

declare void @eFree(i8*) #1

declare void @vStringDelete(%struct.sVString*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @uncorkTagFile() #0 {
entry:
  %i = alloca i32, align 4
  %tag = alloca %struct.sTagEntryInfo*, align 8
  %0 = load i32, i32* getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 6), align 8
  %dec = add i32 %0, -1
  store i32 %dec, i32* getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 6), align 8
  %1 = load i32, i32* getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 6), align 8
  %cmp = icmp ugt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 7, i32 2), align 4
  %cmp1 = icmp ult i32 %2, %3
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 7, i32 0), align 8
  %5 = load i32, i32* %i, align 4
  %idx.ext = zext i32 %5 to i64
  %add.ptr = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %4, i64 %idx.ext
  store %struct.sTagEntryInfo* %add.ptr, %struct.sTagEntryInfo** %tag, align 8
  %6 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag, align 8
  call void @writeTagEntry(%struct.sTagEntryInfo* %6)
  %call = call zeroext i1 @doesInputLanguageRequestAutomaticFQTag()
  br i1 %call, label %land.lhs.true, label %if.end12

land.lhs.true:                                    ; preds = %for.body
  %call2 = call zeroext i1 @isXtagEnabled(i32 3)
  br i1 %call2, label %land.lhs.true3, label %if.end12

land.lhs.true3:                                   ; preds = %land.lhs.true
  %7 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag, align 8
  %extensionFields = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %7, i32 0, i32 11
  %scopeKindIndex = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields, i32 0, i32 5
  %8 = load i32, i32* %scopeKindIndex, align 4
  %cmp4 = icmp ne i32 %8, -1
  br i1 %cmp4, label %land.lhs.true5, label %if.end12

land.lhs.true5:                                   ; preds = %land.lhs.true3
  %9 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag, align 8
  %extensionFields6 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %9, i32 0, i32 11
  %scopeName = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields6, i32 0, i32 6
  %10 = load i8*, i8** %scopeName, align 8
  %tobool = icmp ne i8* %10, null
  br i1 %tobool, label %land.lhs.true7, label %if.end12

land.lhs.true7:                                   ; preds = %land.lhs.true5
  %11 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag, align 8
  %extensionFields8 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %11, i32 0, i32 11
  %scopeIndex = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields8, i32 0, i32 7
  %12 = load i32, i32* %scopeIndex, align 8
  %tobool9 = icmp ne i32 %12, 0
  br i1 %tobool9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %land.lhs.true7
  %13 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag, align 8
  %call11 = call i32 @makeQualifiedTagEntry(%struct.sTagEntryInfo* %13)
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %land.lhs.true7, %land.lhs.true5, %land.lhs.true3, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end12
  %14 = load i32, i32* %i, align 4
  %inc = add i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %i, align 4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc18, %for.end
  %15 = load i32, i32* %i, align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 7, i32 2), align 4
  %cmp14 = icmp ult i32 %15, %16
  br i1 %cmp14, label %for.body15, label %for.end20

for.body15:                                       ; preds = %for.cond13
  %17 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 7, i32 0), align 8
  %18 = load i32, i32* %i, align 4
  %idx.ext16 = zext i32 %18 to i64
  %add.ptr17 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %17, i64 %idx.ext16
  call void @clearTagEntryInQueue(%struct.sTagEntryInfo* %add.ptr17)
  br label %for.inc18

for.inc18:                                        ; preds = %for.body15
  %19 = load i32, i32* %i, align 4
  %inc19 = add i32 %19, 1
  store i32 %inc19, i32* %i, align 4
  br label %for.cond13

for.end20:                                        ; preds = %for.cond13
  %20 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 7, i32 0), align 8
  %21 = bitcast %struct.sTagEntryInfo* %20 to i8*
  %22 = load i32, i32* getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 7, i32 2), align 4
  %conv = zext i32 %22 to i64
  %mul = mul i64 344, %conv
  call void @llvm.memset.p0i8.i64(i8* align 8 %21, i8 0, i64 %mul, i1 false)
  store i32 0, i32* getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 7, i32 2), align 4
  %23 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 7, i32 0), align 8
  %24 = bitcast %struct.sTagEntryInfo* %23 to i8*
  call void @eFree(i8* %24)
  store %struct.sTagEntryInfo* null, %struct.sTagEntryInfo** getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 7, i32 0), align 8
  store i32 0, i32* getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 7, i32 1), align 8
  br label %return

return:                                           ; preds = %for.end20, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @tagFileName() #0 {
entry:
  %0 = load i8*, i8** getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 0), align 8
  ret i8* %0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @abort_if_ferror(%struct._MIO* %mio) #0 {
entry:
  %mio.addr = alloca %struct._MIO*, align 8
  store %struct._MIO* %mio, %struct._MIO** %mio.addr, align 8
  %0 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %call = call i32 @mio_error(%struct._MIO* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %call1 = call i8* @getExecutableName()
  %call2 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %call1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %2 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %call3 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %3 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %call4 = call i32* @__error()
  %4 = load i32, i32* %call4, align 4
  %call5 = call i8* @"\01_strerror"(i32 %4)
  %call6 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %call5)
  %5 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %call7 = call i32 @"\01_fputs"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), %struct.__sFILE* %5)
  call void bitcast (void (...)* @ctags_cleanup to void ()*)()
  call void @exit(i32 1) #4
  unreachable

if.end:                                           ; preds = %entry
  ret void
}

declare i32 @mio_error(%struct._MIO*) #1

declare i32 @fprintf(%struct.__sFILE*, i8*, ...) #1

declare i8* @getExecutableName() #1

declare i8* @"\01_strerror"(i32) #1

declare i32* @__error() #1

declare i32 @"\01_fputs"(i8*, %struct.__sFILE*) #1

declare void @ctags_cleanup(...) #1

; Function Attrs: noreturn
declare void @exit(i32) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @makeFileTag(i8* %fileName) #0 {
entry:
  %fileName.addr = alloca i8*, align 8
  %tag = alloca %struct.sTagEntryInfo, align 8
  %kind = alloca %struct.sKindDefinition*, align 8
  store i8* %fileName, i8** %fileName.addr, align 8
  %call = call zeroext i1 @isXtagEnabled(i32 1)
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call %struct.sKindDefinition* @getInputLanguageFileKind()
  store %struct.sKindDefinition* %call1, %struct.sKindDefinition** %kind, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.sKindDefinition*, %struct.sKindDefinition** %kind, align 8
  %enabled = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %0, i32 0, i32 0
  store i8 1, i8* %enabled, align 8
  %1 = load i8*, i8** %fileName.addr, align 8
  %call2 = call i8* @baseFilename(i8* %1)
  call void @initTagEntry(%struct.sTagEntryInfo* %tag, i8* %call2, i32 -2)
  %2 = bitcast %struct.sTagEntryInfo* %tag to i8*
  %bf.load = load i8, i8* %2, align 8
  %bf.clear = and i8 %bf.load, -5
  %bf.set = or i8 %bf.clear, 4
  store i8 %bf.set, i8* %2, align 8
  %3 = bitcast %struct.sTagEntryInfo* %tag to i8*
  %bf.load3 = load i8, i8* %3, align 8
  %bf.clear4 = and i8 %bf.load3, -2
  %bf.set5 = or i8 %bf.clear4, 1
  store i8 %bf.set5, i8* %3, align 8
  call void @markTagExtraBit(%struct.sTagEntryInfo* %tag, i32 1)
  %lineNumber = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %tag, i32 0, i32 1
  store i64 1, i64* %lineNumber, align 8
  %call6 = call zeroext i1 @isFieldEnabled(i32 22)
  br i1 %call6, label %if.then7, label %if.end10

if.then7:                                         ; preds = %do.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then7
  %call8 = call i8* @readLineFromInputFile()
  %cmp = icmp ne i8* %call8, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %call9 = call i64 @getInputLineNumber()
  %extensionFields = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %tag, i32 0, i32 11
  %endLine = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields, i32 0, i32 11
  store i64 %call9, i64* %endLine, align 8
  br label %if.end10

if.end10:                                         ; preds = %while.end, %do.end
  %call11 = call i32 @makeTagEntry(%struct.sTagEntryInfo* %tag)
  br label %return

return:                                           ; preds = %if.end10, %if.then
  ret void
}

declare zeroext i1 @isXtagEnabled(i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct.sKindDefinition* @getInputLanguageFileKind() #0 {
entry:
  %call = call i32 @getInputLanguage()
  %call1 = call %struct.sKindDefinition* @getLanguageKind(i32 %call, i32 -2)
  ret %struct.sKindDefinition* %call1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @initTagEntry(%struct.sTagEntryInfo* %e, i8* %name, i32 %kindIndex) #0 {
entry:
  %e.addr = alloca %struct.sTagEntryInfo*, align 8
  %name.addr = alloca i8*, align 8
  %kindIndex.addr = alloca i32, align 4
  %agg.tmp = alloca %struct._MIOPos, align 8
  store %struct.sTagEntryInfo* %e, %struct.sTagEntryInfo** %e.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 %kindIndex, i32* %kindIndex.addr, align 4
  %0 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %e.addr, align 8
  %1 = load i8*, i8** %name.addr, align 8
  %call = call i64 @getInputLineNumber()
  %call1 = call i32 @getInputLanguage()
  %call2 = call [2 x i64] @getInputFilePosition()
  %2 = bitcast %struct._MIOPos* %agg.tmp to [2 x i64]*
  store [2 x i64] %call2, [2 x i64]* %2, align 8
  %call3 = call i8* @getInputFileTagPath()
  %3 = load i32, i32* %kindIndex.addr, align 4
  %call4 = call i8* @getSourceFileTagPath()
  %call5 = call i32 @getSourceLanguage()
  %call6 = call i64 @getSourceLineNumber()
  %call7 = call i64 @getInputLineNumber()
  %sub = sub i64 %call6, %call7
  %4 = bitcast %struct._MIOPos* %agg.tmp to [2 x i64]*
  %5 = load [2 x i64], [2 x i64]* %4, align 8
  call void @initTagEntryFull(%struct.sTagEntryInfo* %0, i8* %1, i64 %call, i32 %call1, [2 x i64] %5, i8* %call3, i32 %3, i32 -1, i8* %call4, i32 %call5, i64 %sub)
  ret void
}

declare i8* @baseFilename(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @markTagExtraBit(%struct.sTagEntryInfo* %tag, i32 %extra) #0 {
entry:
  %tag.addr = alloca %struct.sTagEntryInfo*, align 8
  %extra.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %offset = alloca i32, align 4
  %slot = alloca i8*, align 8
  %n = alloca i32, align 4
  store %struct.sTagEntryInfo* %tag, %struct.sTagEntryInfo** %tag.addr, align 8
  store i32 %extra, i32* %extra.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load i32, i32* %extra.addr, align 4
  %cmp = icmp slt i32 %0, 8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.end
  %1 = load i32, i32* %extra.addr, align 4
  %div = sdiv i32 %1, 8
  store i32 %div, i32* %index, align 4
  %2 = load i32, i32* %extra.addr, align 4
  %rem = srem i32 %2, 8
  store i32 %rem, i32* %offset, align 4
  %3 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %extra1 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %3, i32 0, i32 9
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %extra1, i64 0, i64 0
  store i8* %arraydecay, i8** %slot, align 8
  br label %if.end18

if.else:                                          ; preds = %do.end
  %4 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %extraDynamic = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %4, i32 0, i32 10
  %5 = load i8*, i8** %extraDynamic, align 8
  %tobool = icmp ne i8* %5, null
  br i1 %tobool, label %if.then2, label %if.else9

if.then2:                                         ; preds = %if.else
  br label %do.body3

do.body3:                                         ; preds = %if.then2
  br label %do.end4

do.end4:                                          ; preds = %do.body3
  %6 = load i32, i32* %extra.addr, align 4
  %sub = sub nsw i32 %6, 8
  %div5 = sdiv i32 %sub, 8
  store i32 %div5, i32* %index, align 4
  %7 = load i32, i32* %extra.addr, align 4
  %sub6 = sub nsw i32 %7, 8
  %rem7 = srem i32 %sub6, 8
  store i32 %rem7, i32* %offset, align 4
  %8 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %extraDynamic8 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %8, i32 0, i32 10
  %9 = load i8*, i8** %extraDynamic8, align 8
  store i8* %9, i8** %slot, align 8
  br label %if.end

if.else9:                                         ; preds = %if.else
  br label %do.body10

do.body10:                                        ; preds = %if.else9
  br label %do.end11

do.end11:                                         ; preds = %do.body10
  %call = call i32 @countXtags()
  %sub12 = sub nsw i32 %call, 8
  store i32 %sub12, i32* %n, align 4
  %10 = load i32, i32* %n, align 4
  %div13 = sdiv i32 %10, 8
  %add = add nsw i32 %div13, 1
  %conv = sext i32 %add to i64
  %call14 = call i8* @eCalloc(i64 %conv, i64 1)
  %11 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %extraDynamic15 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %11, i32 0, i32 10
  store i8* %call14, i8** %extraDynamic15, align 8
  %12 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %extraDynamic16 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %12, i32 0, i32 10
  %13 = load i8*, i8** %extraDynamic16, align 8
  %call17 = call i8* @parserTrashBoxPut(i8* %13, void (i8*)* @eFree)
  %14 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %15 = load i32, i32* %extra.addr, align 4
  call void @markTagExtraBit(%struct.sTagEntryInfo* %14, i32 %15)
  br label %return

if.end:                                           ; preds = %do.end4
  br label %if.end18

if.end18:                                         ; preds = %if.end, %if.then
  %16 = load i32, i32* %offset, align 4
  %shl = shl i32 1, %16
  %17 = load i8*, i8** %slot, align 8
  %18 = load i32, i32* %index, align 4
  %idxprom = zext i32 %18 to i64
  %arrayidx = getelementptr inbounds i8, i8* %17, i64 %idxprom
  %19 = load i8, i8* %arrayidx, align 1
  %conv19 = zext i8 %19 to i32
  %or = or i32 %conv19, %shl
  %conv20 = trunc i32 %or to i8
  store i8 %conv20, i8* %arrayidx, align 1
  br label %return

return:                                           ; preds = %if.end18, %do.end11
  ret void
}

declare zeroext i1 @isFieldEnabled(i32) #1

declare i8* @readLineFromInputFile() #1

declare i64 @getInputLineNumber() #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @makeTagEntry(%struct.sTagEntryInfo* %tag) #0 {
entry:
  %retval = alloca i32, align 4
  %tag.addr = alloca %struct.sTagEntryInfo*, align 8
  %r = alloca i32, align 4
  %subtag = alloca %struct.sTagEntryInfo, align 8
  store %struct.sTagEntryInfo* %tag, %struct.sTagEntryInfo** %tag.addr, align 8
  store i32 0, i32* %r, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %kindIndex = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %0, i32 0, i32 8
  %1 = load i32, i32* %kindIndex, align 8
  %cmp = icmp ne i32 -2, %1
  br i1 %cmp, label %if.then, label %if.end15

if.then:                                          ; preds = %do.end
  %2 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %langType = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %2, i32 0, i32 5
  %3 = load i32, i32* %langType, align 8
  %4 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %kindIndex1 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %4, i32 0, i32 8
  %5 = load i32, i32* %kindIndex1, align 8
  %call = call %struct.sKindDefinition* @getLanguageKind(i32 %3, i32 %5)
  %tobool = icmp ne %struct.sKindDefinition* %call, null
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then
  %6 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %extensionFields = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %6, i32 0, i32 11
  %roleIndex = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields, i32 0, i32 10
  %7 = load i32, i32* %roleIndex, align 8
  %cmp2 = icmp eq i32 %7, -1
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %land.lhs.true
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %if.then
  %8 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %extensionFields4 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %8, i32 0, i32 11
  %roleIndex5 = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields4, i32 0, i32 10
  %9 = load i32, i32* %roleIndex5, align 8
  %cmp6 = icmp ne i32 %9, -1
  br i1 %cmp6, label %land.lhs.true7, label %if.end14

land.lhs.true7:                                   ; preds = %if.end
  %10 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %langType8 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %10, i32 0, i32 5
  %11 = load i32, i32* %langType8, align 8
  %12 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %kindIndex9 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %12, i32 0, i32 8
  %13 = load i32, i32* %kindIndex9, align 8
  %14 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %extensionFields10 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %14, i32 0, i32 11
  %roleIndex11 = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields10, i32 0, i32 10
  %15 = load i32, i32* %roleIndex11, align 8
  %call12 = call zeroext i1 @isLanguageRoleEnabled(i32 %11, i32 %13, i32 %15)
  br i1 %call12, label %if.end14, label %if.then13

if.then13:                                        ; preds = %land.lhs.true7
  store i32 0, i32* %retval, align 4
  br label %return

if.end14:                                         ; preds = %land.lhs.true7, %if.end
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %do.end
  %16 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %name = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %16, i32 0, i32 7
  %17 = load i8*, i8** %name, align 8
  %arrayidx = getelementptr inbounds i8, i8* %17, i64 0
  %18 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %18 to i32
  %cmp16 = icmp eq i32 %conv, 0
  br i1 %cmp16, label %land.lhs.true18, label %if.end32

land.lhs.true18:                                  ; preds = %if.end15
  %19 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %20 = bitcast %struct.sTagEntryInfo* %19 to i8*
  %bf.load = load i8, i8* %20, align 8
  %bf.lshr = lshr i8 %bf.load, 4
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool19 = icmp ne i32 %bf.cast, 0
  br i1 %tobool19, label %if.end32, label %if.then20

if.then20:                                        ; preds = %land.lhs.true18
  %call21 = call zeroext i1 @doesInputLanguageAllowNullTag()
  br i1 %call21, label %if.end31, label %if.then22

if.then22:                                        ; preds = %if.then20
  %21 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %call23 = call i8* @getExecutableName()
  %call24 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %call23, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0))
  %22 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %call25 = call i8* @getInputFileName()
  %23 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %lineNumber = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %23, i32 0, i32 1
  %24 = load i64, i64* %lineNumber, align 8
  %call26 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %22, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.16, i64 0, i64 0), i8* %call25, i64 %24)
  %25 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %call27 = call i32 @"\01_fputs"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), %struct.__sFILE* %25)
  %26 = load i8, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 26), align 1
  %tobool28 = trunc i8 %26 to i1
  br i1 %tobool28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.then22
  call void bitcast (void (...)* @ctags_cleanup to void ()*)()
  call void @exit(i32 1) #4
  unreachable

if.end30:                                         ; preds = %if.then22
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %if.then20
  br label %out

if.end32:                                         ; preds = %land.lhs.true18, %if.end15
  %27 = load i32, i32* getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 6), align 8
  %tobool33 = icmp ne i32 %27, 0
  br i1 %tobool33, label %if.then34, label %if.else

if.then34:                                        ; preds = %if.end32
  %28 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %call35 = call i32 @queueTagEntry(%struct.sTagEntryInfo* %28)
  store i32 %call35, i32* %r, align 4
  br label %if.end36

if.else:                                          ; preds = %if.end32
  %29 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  call void @writeTagEntry(%struct.sTagEntryInfo* %29)
  br label %if.end36

if.end36:                                         ; preds = %if.else, %if.then34
  %30 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %31 = load i32, i32* %r, align 4
  call void @notifyMakeTagEntry(%struct.sTagEntryInfo* %30, i32 %31)
  %call37 = call zeroext i1 @isXtagEnabled(i32 7)
  br i1 %call37, label %if.then38, label %if.end39

if.then38:                                        ; preds = %if.end36
  %32 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %33 = bitcast %struct.sTagEntryInfo* %subtag to i8*
  %34 = bitcast %struct.sTagEntryInfo* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %33, i8* align 8 %34, i64 344, i1 false)
  call void @makeTagEntriesForSubwords(%struct.sTagEntryInfo* %subtag)
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %if.end36
  br label %out

out:                                              ; preds = %if.end39, %if.end31
  %35 = load i32, i32* %r, align 4
  store i32 %35, i32* %retval, align 4
  br label %return

return:                                           ; preds = %out, %if.then13, %if.then3
  %36 = load i32, i32* %retval, align 4
  ret i32 %36
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @openTagFile() #0 {
entry:
  %fileExists = alloca i8, align 1
  call void @setDefaultTagFileName()
  %call = call zeroext i1 @isDestinationStdout()
  %frombool = zext i1 %call to i8
  store i8 %frombool, i8* @TagsToStdout, align 1
  %0 = load %struct.sVString*, %struct.sVString** getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 5), align 8
  %cmp = icmp eq %struct.sVString* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call1, %struct.sVString** getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 5), align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i8, i8* @TagsToStdout, align 1
  %tobool = trunc i8 %1 to i1
  br i1 %tobool, label %if.then2, label %if.else12

if.then2:                                         ; preds = %if.end
  %2 = load i32, i32* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 5), align 4
  %cmp3 = icmp eq i32 %2, 0
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then2
  %3 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8
  %call5 = call %struct._MIO* @mio_new_fp(%struct.__sFILE* %3, i32 (%struct.__sFILE*)* null)
  store %struct._MIO* %call5, %struct._MIO** getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 2), align 8
  %call6 = call i8* @eStrdup(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  store i8* %call6, i8** getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 0), align 8
  br label %if.end8

if.else:                                          ; preds = %if.then2
  %call7 = call %struct._MIO* @tempFile(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8** getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 0))
  store %struct._MIO* %call7, %struct._MIO** getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 2), align 8
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then4
  %call9 = call zeroext i1 @isXtagEnabled(i32 2)
  br i1 %call9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end8
  call void @addCommonPseudoTags()
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end8
  br label %if.end65

if.else12:                                        ; preds = %if.end
  %4 = load i8*, i8** getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 10), align 8
  %call13 = call i8* @eStrdup(i8* %4)
  store i8* %call13, i8** getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 0), align 8
  %5 = load i8*, i8** getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 0), align 8
  %call14 = call zeroext i1 @doesFileExist(i8* %5)
  %frombool15 = zext i1 %call14 to i8
  store i8 %frombool15, i8* %fileExists, align 1
  %6 = load i8, i8* %fileExists, align 1
  %tobool16 = trunc i8 %6 to i1
  br i1 %tobool16, label %land.lhs.true, label %if.end23

land.lhs.true:                                    ; preds = %if.else12
  %7 = load i8*, i8** getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 0), align 8
  %call17 = call zeroext i1 @isTagFile(i8* %7)
  br i1 %call17, label %if.end23, label %if.then18

if.then18:                                        ; preds = %land.lhs.true
  %8 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %call19 = call i8* @getExecutableName()
  %call20 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %call19, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %9 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %10 = load i8*, i8** getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 0), align 8
  %call21 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %9, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i64 0, i64 0), i8* %10)
  %11 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %call22 = call i32 @"\01_fputs"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), %struct.__sFILE* %11)
  call void bitcast (void (...)* @ctags_cleanup to void ()*)()
  call void @exit(i32 1) #4
  unreachable

if.end23:                                         ; preds = %land.lhs.true, %if.else12
  %12 = load i8, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 2), align 2
  %tobool24 = trunc i8 %12 to i1
  br i1 %tobool24, label %if.then25, label %if.else34

if.then25:                                        ; preds = %if.end23
  %13 = load i8, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 0), align 8
  %tobool26 = trunc i8 %13 to i1
  br i1 %tobool26, label %land.lhs.true27, label %if.else31

land.lhs.true27:                                  ; preds = %if.then25
  %14 = load i8, i8* %fileExists, align 1
  %tobool28 = trunc i8 %14 to i1
  br i1 %tobool28, label %if.then29, label %if.else31

if.then29:                                        ; preds = %land.lhs.true27
  %15 = load i8*, i8** getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 0), align 8
  %call30 = call %struct._MIO* @mio_new_file(i8* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  store %struct._MIO* %call30, %struct._MIO** getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 2), align 8
  br label %if.end33

if.else31:                                        ; preds = %land.lhs.true27, %if.then25
  %16 = load i8*, i8** getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 0), align 8
  %call32 = call %struct._MIO* @mio_new_file(i8* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  store %struct._MIO* %call32, %struct._MIO** getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 2), align 8
  br label %if.end33

if.end33:                                         ; preds = %if.else31, %if.then29
  br label %if.end54

if.else34:                                        ; preds = %if.end23
  %17 = load i8, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 0), align 8
  %tobool35 = trunc i8 %17 to i1
  br i1 %tobool35, label %land.lhs.true36, label %if.else46

land.lhs.true36:                                  ; preds = %if.else34
  %18 = load i8, i8* %fileExists, align 1
  %tobool37 = trunc i8 %18 to i1
  br i1 %tobool37, label %if.then38, label %if.else46

if.then38:                                        ; preds = %land.lhs.true36
  %19 = load i8*, i8** getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 0), align 8
  %call39 = call %struct._MIO* @mio_new_file(i8* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  store %struct._MIO* %call39, %struct._MIO** getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 2), align 8
  %20 = load %struct._MIO*, %struct._MIO** getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 2), align 8
  %cmp40 = icmp ne %struct._MIO* %20, null
  br i1 %cmp40, label %if.then41, label %if.end45

if.then41:                                        ; preds = %if.then38
  %21 = load %struct._MIO*, %struct._MIO** getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 2), align 8
  %call42 = call i64 @updatePseudoTags(%struct._MIO* %21)
  store i64 %call42, i64* getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 3, i32 1), align 8
  %22 = load %struct._MIO*, %struct._MIO** getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 2), align 8
  %call43 = call i32 @mio_free(%struct._MIO* %22)
  %23 = load i8*, i8** getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 0), align 8
  %call44 = call %struct._MIO* @mio_new_file(i8* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  store %struct._MIO* %call44, %struct._MIO** getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 2), align 8
  br label %if.end45

if.end45:                                         ; preds = %if.then41, %if.then38
  br label %if.end53

if.else46:                                        ; preds = %land.lhs.true36, %if.else34
  %24 = load i8*, i8** getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 0), align 8
  %call47 = call %struct._MIO* @mio_new_file(i8* %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  store %struct._MIO* %call47, %struct._MIO** getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 2), align 8
  %25 = load %struct._MIO*, %struct._MIO** getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 2), align 8
  %cmp48 = icmp ne %struct._MIO* %25, null
  br i1 %cmp48, label %land.lhs.true49, label %if.end52

land.lhs.true49:                                  ; preds = %if.else46
  %call50 = call zeroext i1 @isXtagEnabled(i32 2)
  br i1 %call50, label %if.then51, label %if.end52

if.then51:                                        ; preds = %land.lhs.true49
  call void @addCommonPseudoTags()
  br label %if.end52

if.end52:                                         ; preds = %if.then51, %land.lhs.true49, %if.else46
  br label %if.end53

if.end53:                                         ; preds = %if.end52, %if.end45
  br label %if.end54

if.end54:                                         ; preds = %if.end53, %if.end33
  %26 = load %struct._MIO*, %struct._MIO** getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 2), align 8
  %cmp55 = icmp eq %struct._MIO* %26, null
  br i1 %cmp55, label %if.then56, label %if.end64

if.then56:                                        ; preds = %if.end54
  %27 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %call57 = call i8* @getExecutableName()
  %call58 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %call57, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %28 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %call59 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %28, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0))
  %29 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %call60 = call i32* @__error()
  %30 = load i32, i32* %call60, align 4
  %call61 = call i8* @"\01_strerror"(i32 %30)
  %call62 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %call61)
  %31 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %call63 = call i32 @"\01_fputs"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), %struct.__sFILE* %31)
  call void bitcast (void (...)* @ctags_cleanup to void ()*)()
  call void @exit(i32 1) #4
  unreachable

if.end64:                                         ; preds = %if.end54
  br label %if.end65

if.end65:                                         ; preds = %if.end64, %if.end11
  %32 = load i8*, i8** getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 1), align 8
  %cmp66 = icmp eq i8* %32, null
  br i1 %cmp66, label %if.then67, label %if.end74

if.then67:                                        ; preds = %if.end65
  %33 = load i8, i8* @TagsToStdout, align 1
  %tobool68 = trunc i8 %33 to i1
  br i1 %tobool68, label %if.then69, label %if.else71

if.then69:                                        ; preds = %if.then67
  %34 = load i8*, i8** @CurrentDirectory, align 8
  %call70 = call i8* @eStrdup(i8* %34)
  store i8* %call70, i8** getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 1), align 8
  br label %if.end73

if.else71:                                        ; preds = %if.then67
  %35 = load i8*, i8** getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 0), align 8
  %call72 = call i8* @absoluteDirname(i8* %35)
  store i8* %call72, i8** getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 1), align 8
  br label %if.end73

if.end73:                                         ; preds = %if.else71, %if.then69
  br label %if.end74

if.end74:                                         ; preds = %if.end73, %if.end65
  ret void
}

declare void @setDefaultTagFileName() #1

declare zeroext i1 @isDestinationStdout() #1

declare %struct.sVString* @vStringNew() #1

declare %struct._MIO* @mio_new_fp(%struct.__sFILE*, i32 (%struct.__sFILE*)*) #1

declare i8* @eStrdup(i8*) #1

declare %struct._MIO* @tempFile(i8*, i8**) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @addCommonPseudoTags() #0 {
entry:
  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %call = call zeroext i1 @isPtagCommonInParsers(i32 %1)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %call1 = call zeroext i1 @makePtagIfEnabled(i32 %2, i8* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %3 = load i32, i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare zeroext i1 @doesFileExist(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @isTagFile(i8* %filename) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  %ok = alloca i8, align 1
  %mio = alloca %struct._MIO*, align 8
  %line = alloca i8*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i8 0, i8* %ok, align 1
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call %struct._MIO* @mio_new_file(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0))
  store %struct._MIO* %call, %struct._MIO** %mio, align 8
  %1 = load %struct._MIO*, %struct._MIO** %mio, align 8
  %cmp = icmp eq %struct._MIO* %1, null
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %call1 = call i32* @__error()
  %2 = load i32, i32* %call1, align 4
  %cmp2 = icmp eq i32 %2, 2
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  store i8 1, i8* %ok, align 1
  br label %if.end13

if.else:                                          ; preds = %land.lhs.true, %entry
  %3 = load %struct._MIO*, %struct._MIO** %mio, align 8
  %cmp3 = icmp ne %struct._MIO* %3, null
  br i1 %cmp3, label %if.then4, label %if.end12

if.then4:                                         ; preds = %if.else
  %4 = load %struct.sVString*, %struct.sVString** getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 5), align 8
  %5 = load %struct._MIO*, %struct._MIO** %mio, align 8
  %call5 = call i8* @readLineRaw(%struct.sVString* %4, %struct._MIO* %5)
  store i8* %call5, i8** %line, align 8
  %6 = load i8*, i8** %line, align 8
  %cmp6 = icmp eq i8* %6, null
  br i1 %cmp6, label %if.then7, label %if.else8

if.then7:                                         ; preds = %if.then4
  store i8 1, i8* %ok, align 1
  br label %if.end

if.else8:                                         ; preds = %if.then4
  %7 = load i8*, i8** %line, align 8
  %call9 = call zeroext i1 @isCtagsLine(i8* %7)
  br i1 %call9, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.else8
  %8 = load i8*, i8** %line, align 8
  %call10 = call zeroext i1 @isEtagsLine(i8* %8)
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.else8
  %9 = phi i1 [ true, %if.else8 ], [ %call10, %lor.rhs ]
  %frombool = zext i1 %9 to i8
  store i8 %frombool, i8* %ok, align 1
  br label %if.end

if.end:                                           ; preds = %lor.end, %if.then7
  %10 = load %struct._MIO*, %struct._MIO** %mio, align 8
  %call11 = call i32 @mio_free(%struct._MIO* %10)
  br label %if.end12

if.end12:                                         ; preds = %if.end, %if.else
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.then
  %11 = load i8, i8* %ok, align 1
  %tobool = trunc i8 %11 to i1
  ret i1 %tobool
}

declare %struct._MIO* @mio_new_file(i8*, i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i64 @updatePseudoTags(%struct._MIO* %mio) #0 {
entry:
  %mio.addr = alloca %struct._MIO*, align 8
  %entry1 = alloca [21 x i8], align 1
  %linesRead = alloca i64, align 8
  %startOfLine = alloca %struct._MIOPos, align 8
  %entryLength = alloca i64, align 8
  %line = alloca i8*, align 8
  %tab = alloca i8, align 1
  %classType = alloca [16 x i8], align 1
  store %struct._MIO* %mio, %struct._MIO** %mio.addr, align 8
  store i64 0, i64* %linesRead, align 8
  %arraydecay = getelementptr inbounds [21 x i8], [21 x i8]* %entry1, i64 0, i64 0
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0))
  %arraydecay2 = getelementptr inbounds [21 x i8], [21 x i8]* %entry1, i64 0, i64 0
  %call3 = call i64 @strlen(i8* %arraydecay2)
  store i64 %call3, i64* %entryLength, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %call4 = call i32 @mio_getpos(%struct._MIO* %0, %struct._MIOPos* %startOfLine)
  %1 = load %struct.sVString*, %struct.sVString** getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 5), align 8
  %2 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %call5 = call i8* @readLineRaw(%struct.sVString* %1, %struct._MIO* %2)
  store i8* %call5, i8** %line, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end29, %do.end
  %3 = load i8*, i8** %line, align 8
  %cmp = icmp ne i8* %3, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %4 = load i8*, i8** %line, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 0
  %5 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %5 to i32
  %arrayidx6 = getelementptr inbounds [21 x i8], [21 x i8]* %entry1, i64 0, i64 0
  %6 = load i8, i8* %arrayidx6, align 1
  %conv7 = sext i8 %6 to i32
  %cmp8 = icmp eq i32 %conv, %conv7
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %7 = phi i1 [ false, %while.cond ], [ %cmp8, %land.rhs ]
  br i1 %7, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %8 = load i64, i64* %linesRead, align 8
  %inc = add i64 %8, 1
  store i64 %inc, i64* %linesRead, align 8
  %9 = load i8*, i8** %line, align 8
  %arraydecay10 = getelementptr inbounds [21 x i8], [21 x i8]* %entry1, i64 0, i64 0
  %10 = load i64, i64* %entryLength, align 8
  %call11 = call i32 @strncmp(i8* %9, i8* %arraydecay10, i64 %10)
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %if.then, label %if.end29

if.then:                                          ; preds = %while.body
  %11 = load i8*, i8** %line, align 8
  %12 = load i64, i64* %entryLength, align 8
  %add.ptr = getelementptr inbounds i8, i8* %11, i64 %12
  %arraydecay14 = getelementptr inbounds [16 x i8], [16 x i8]* %classType, i64 0, i64 0
  %call15 = call i32 (i8*, i8*, ...) @sscanf(i8* %add.ptr, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0), i8* %arraydecay14, i8* %tab)
  %cmp16 = icmp eq i32 %call15, 2
  br i1 %cmp16, label %land.lhs.true, label %if.end27

land.lhs.true:                                    ; preds = %if.then
  %13 = load i8, i8* %tab, align 1
  %conv18 = sext i8 %13 to i32
  %cmp19 = icmp eq i32 %conv18, 9
  br i1 %cmp19, label %if.then21, label %if.end27

if.then21:                                        ; preds = %land.lhs.true
  %arraydecay22 = getelementptr inbounds [16 x i8], [16 x i8]* %classType, i64 0, i64 0
  %call23 = call i32 @strcmp(i8* %arraydecay22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i64 0, i64 0))
  %cmp24 = icmp eq i32 %call23, 0
  br i1 %cmp24, label %if.then26, label %if.end

if.then26:                                        ; preds = %if.then21
  %14 = load i8*, i8** %line, align 8
  %15 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %16 = bitcast %struct._MIOPos* %startOfLine to [2 x i64]*
  %17 = load [2 x i64], [2 x i64]* %16, align 8
  call void @updateSortedFlag(i8* %14, %struct._MIO* %15, [2 x i64] %17)
  br label %if.end

if.end:                                           ; preds = %if.then26, %if.then21
  br label %if.end27

if.end27:                                         ; preds = %if.end, %land.lhs.true, %if.then
  %18 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %call28 = call i32 @mio_getpos(%struct._MIO* %18, %struct._MIOPos* %startOfLine)
  br label %if.end29

if.end29:                                         ; preds = %if.end27, %while.body
  %19 = load %struct.sVString*, %struct.sVString** getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 5), align 8
  %20 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %call30 = call i8* @readLineRaw(%struct.sVString* %19, %struct._MIO* %20)
  store i8* %call30, i8** %line, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %while.cond31

while.cond31:                                     ; preds = %while.body34, %while.end
  %21 = load i8*, i8** %line, align 8
  %cmp32 = icmp ne i8* %21, null
  br i1 %cmp32, label %while.body34, label %while.end37

while.body34:                                     ; preds = %while.cond31
  %22 = load i64, i64* %linesRead, align 8
  %inc35 = add i64 %22, 1
  store i64 %inc35, i64* %linesRead, align 8
  %23 = load %struct.sVString*, %struct.sVString** getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 5), align 8
  %24 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %call36 = call i8* @readLineRaw(%struct.sVString* %23, %struct._MIO* %24)
  store i8* %call36, i8** %line, align 8
  br label %while.cond31

while.end37:                                      ; preds = %while.cond31
  %25 = load i64, i64* %linesRead, align 8
  ret i64 %25
}

declare i32 @mio_free(%struct._MIO*) #1

declare i8* @absoluteDirname(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @closeTagFile(i1 zeroext %resize) #0 {
entry:
  %resize.addr = alloca i8, align 1
  %desiredSize = alloca i64, align 8
  %size = alloca i64, align 8
  %frombool = zext i1 %resize to i8
  store i8 %frombool, i8* %resize.addr, align 1
  %0 = load i8, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 2), align 2
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._MIO*, %struct._MIO** getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 2), align 8
  call void @writeEtagsIncludes(%struct._MIO* %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct._MIO*, %struct._MIO** getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 2), align 8
  %call = call i32 @mio_flush(%struct._MIO* %2)
  %3 = load i8, i8* @TagsToStdout, align 1
  %tobool1 = trunc i8 %3 to i1
  br i1 %tobool1, label %land.lhs.true, label %if.end14

land.lhs.true:                                    ; preds = %if.end
  %4 = load i32, i32* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 5), align 4
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then2, label %if.end14

if.then2:                                         ; preds = %land.lhs.true
  %5 = load %struct._MIO*, %struct._MIO** getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 2), align 8
  %call3 = call i32 @mio_free(%struct._MIO* %5)
  %cmp4 = icmp ne i32 %call3, 0
  br i1 %cmp4, label %if.then5, label %if.end13

if.then5:                                         ; preds = %if.then2
  %6 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %call6 = call i8* @getExecutableName()
  %call7 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %call6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %7 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %call8 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %7, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0))
  %8 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %call9 = call i32* @__error()
  %9 = load i32, i32* %call9, align 4
  %call10 = call i8* @"\01_strerror"(i32 %9)
  %call11 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %call10)
  %10 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %call12 = call i32 @"\01_fputs"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), %struct.__sFILE* %10)
  call void bitcast (void (...)* @ctags_cleanup to void ()*)()
  call void @exit(i32 1) #4
  unreachable

if.end13:                                         ; preds = %if.then2
  br label %out

if.end14:                                         ; preds = %land.lhs.true, %if.end
  %11 = load %struct._MIO*, %struct._MIO** getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 2), align 8
  call void @abort_if_ferror(%struct._MIO* %11)
  %12 = load %struct._MIO*, %struct._MIO** getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 2), align 8
  %call15 = call i64 @mio_tell(%struct._MIO* %12)
  store i64 %call15, i64* %desiredSize, align 8
  %13 = load %struct._MIO*, %struct._MIO** getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 2), align 8
  %call16 = call i32 @mio_seek(%struct._MIO* %13, i64 0, i32 2)
  %14 = load %struct._MIO*, %struct._MIO** getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 2), align 8
  %call17 = call i64 @mio_tell(%struct._MIO* %14)
  store i64 %call17, i64* %size, align 8
  %15 = load i8, i8* @TagsToStdout, align 1
  %tobool18 = trunc i8 %15 to i1
  br i1 %tobool18, label %if.end31, label %if.then19

if.then19:                                        ; preds = %if.end14
  %16 = load %struct._MIO*, %struct._MIO** getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 2), align 8
  %call20 = call i32 @mio_free(%struct._MIO* %16)
  %cmp21 = icmp ne i32 %call20, 0
  br i1 %cmp21, label %if.then22, label %if.end30

if.then22:                                        ; preds = %if.then19
  %17 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %call23 = call i8* @getExecutableName()
  %call24 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %call23, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %18 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %call25 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %18, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0))
  %19 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %call26 = call i32* @__error()
  %20 = load i32, i32* %call26, align 4
  %call27 = call i8* @"\01_strerror"(i32 %20)
  %call28 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %call27)
  %21 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %call29 = call i32 @"\01_fputs"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), %struct.__sFILE* %21)
  call void bitcast (void (...)* @ctags_cleanup to void ()*)()
  call void @exit(i32 1) #4
  unreachable

if.end30:                                         ; preds = %if.then19
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %if.end14
  %22 = load i8, i8* %resize.addr, align 1
  %tobool32 = trunc i8 %22 to i1
  br i1 %tobool32, label %land.lhs.true33, label %if.end36

land.lhs.true33:                                  ; preds = %if.end31
  %23 = load i64, i64* %desiredSize, align 8
  %24 = load i64, i64* %size, align 8
  %cmp34 = icmp slt i64 %23, %24
  br i1 %cmp34, label %if.then35, label %if.end36

if.then35:                                        ; preds = %land.lhs.true33
  %25 = load i64, i64* %desiredSize, align 8
  call void @resizeTagFile(i64 %25)
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %land.lhs.true33, %if.end31
  call void @sortTagFile()
  %26 = load i8, i8* @TagsToStdout, align 1
  %tobool37 = trunc i8 %26 to i1
  br i1 %tobool37, label %if.then38, label %if.end52

if.then38:                                        ; preds = %if.end36
  %27 = load %struct._MIO*, %struct._MIO** getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 2), align 8
  %call39 = call i32 @mio_free(%struct._MIO* %27)
  %cmp40 = icmp ne i32 %call39, 0
  br i1 %cmp40, label %if.then41, label %if.end49

if.then41:                                        ; preds = %if.then38
  %28 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %call42 = call i8* @getExecutableName()
  %call43 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %call42, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %29 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %call44 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %29, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0))
  %30 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %call45 = call i32* @__error()
  %31 = load i32, i32* %call45, align 4
  %call46 = call i8* @"\01_strerror"(i32 %31)
  %call47 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %call46)
  %32 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %call48 = call i32 @"\01_fputs"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), %struct.__sFILE* %32)
  call void bitcast (void (...)* @ctags_cleanup to void ()*)()
  call void @exit(i32 1) #4
  unreachable

if.end49:                                         ; preds = %if.then38
  %call50 = call i8* @tagFileName()
  %call51 = call i32 @remove(i8* %call50)
  br label %if.end52

if.end52:                                         ; preds = %if.end49, %if.end36
  br label %out

out:                                              ; preds = %if.end52, %if.end13
  %33 = load i8*, i8** getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 0), align 8
  call void @eFree(i8* %33)
  store i8* null, i8** getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 0), align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @writeEtagsIncludes(%struct._MIO* %mio) #0 {
entry:
  %mio.addr = alloca %struct._MIO*, align 8
  %i = alloca i32, align 4
  %item = alloca %struct.sVString*, align 8
  store %struct._MIO* %mio, %struct._MIO** %mio.addr, align 8
  %0 = load %struct.sPtrArray*, %struct.sPtrArray** getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 12), align 8
  %tobool = icmp ne %struct.sPtrArray* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4
  %2 = load %struct.sPtrArray*, %struct.sPtrArray** getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 12), align 8
  %call = call i32 @stringListCount(%struct.sPtrArray* %2)
  %cmp = icmp ult i32 %1, %call
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.sPtrArray*, %struct.sPtrArray** getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 12), align 8
  %4 = load i32, i32* %i, align 4
  %call1 = call %struct.sVString* @stringListItem(%struct.sPtrArray* %3, i32 %4)
  store %struct.sVString* %call1, %struct.sVString** %item, align 8
  %5 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %call2 = call %struct.__sFILE* @mio_file_get_fp(%struct._MIO* %5)
  %6 = load %struct.sVString*, %struct.sVString** %item, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %6, i32 0, i32 2
  %7 = load i8*, i8** %buffer, align 8
  %call3 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %call2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i64 0, i64 0), i8* %7)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  ret void
}

declare i32 @mio_flush(%struct._MIO*) #1

declare i64 @mio_tell(%struct._MIO*) #1

declare i32 @mio_seek(%struct._MIO*, i64, i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @resizeTagFile(i64 %newSize) #0 {
entry:
  %newSize.addr = alloca i64, align 8
  %result = alloca i32, align 4
  store i64 %newSize, i64* %newSize.addr, align 8
  %0 = load i8*, i8** getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 0), align 8
  %1 = load i64, i64* %newSize.addr, align 8
  %call = call i32 @truncate(i8* %0, i64 %1)
  store i32 %call, i32* %result, align 4
  %2 = load i32, i32* %result, align 4
  %cmp = icmp eq i32 %2, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %call1 = call i32* @__error()
  %4 = load i32, i32* %call1, align 4
  %call2 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.29, i64 0, i64 0), i32 %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @sortTagFile() #0 {
entry:
  %0 = load i64, i64* getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 3, i32 0), align 8
  %cmp = icmp ugt i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end8

if.then:                                          ; preds = %entry
  %1 = load i32, i32* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 5), align 4
  %cmp1 = icmp ne i32 %1, 0
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %2 = load i8, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 6), align 8
  %tobool = trunc i8 %2 to i1
  br i1 %tobool, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then2
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.30, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then2
  call void @internalSortTagFile()
  br label %if.end7

if.else:                                          ; preds = %if.then
  %3 = load i8, i8* @TagsToStdout, align 1
  %tobool4 = trunc i8 %3 to i1
  br i1 %tobool4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.else
  %4 = load %struct._MIO*, %struct._MIO** getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 2), align 8
  call void @catFile(%struct._MIO* %4)
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.else
  br label %if.end7

if.end7:                                          ; preds = %if.end6, %if.end
  br label %if.end8

if.end8:                                          ; preds = %if.end7, %entry
  ret void
}

declare i32 @remove(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @readLineFromBypassAnyway(%struct.sVString* %vLine, %struct.sTagEntryInfo* %tag, i64* %pSeekValue) #0 {
entry:
  %vLine.addr = alloca %struct.sVString*, align 8
  %tag.addr = alloca %struct.sTagEntryInfo*, align 8
  %pSeekValue.addr = alloca i64*, align 8
  %line = alloca i8*, align 8
  store %struct.sVString* %vLine, %struct.sVString** %vLine.addr, align 8
  store %struct.sTagEntryInfo* %tag, %struct.sTagEntryInfo** %tag.addr, align 8
  store i64* %pSeekValue, i64** %pSeekValue.addr, align 8
  %0 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %filePosition = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %0, i32 0, i32 4
  %1 = bitcast %struct._MIOPos* %filePosition to [2 x i64]*
  %2 = load [2 x i64], [2 x i64]* %1, align 8
  %call = call zeroext i1 @isPosSet([2 x i64] %2)
  br i1 %call, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %pattern = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %3, i32 0, i32 2
  %4 = load i8*, i8** %pattern, align 8
  %cmp = icmp eq i8* %4, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %5 = load %struct.sVString*, %struct.sVString** %vLine.addr, align 8
  %6 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %filePosition1 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %6, i32 0, i32 4
  %7 = load i64*, i64** %pSeekValue.addr, align 8
  %8 = bitcast %struct._MIOPos* %filePosition1 to [2 x i64]*
  %9 = load [2 x i64], [2 x i64]* %8, align 8
  %call2 = call i8* @readLineFromBypass(%struct.sVString* %5, [2 x i64] %9, i64* %7)
  store i8* %call2, i8** %line, align 8
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %10 = load %struct.sVString*, %struct.sVString** %vLine.addr, align 8
  %11 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %lineNumber = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %11, i32 0, i32 1
  %12 = load i64, i64* %lineNumber, align 8
  %13 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %pattern3 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %13, i32 0, i32 2
  %14 = load i8*, i8** %pattern3, align 8
  %15 = load i64*, i64** %pSeekValue.addr, align 8
  %call4 = call i8* @readLineFromBypassSlow(%struct.sVString* %10, i64 %12, i8* %14, i64* %15)
  store i8* %call4, i8** %line, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %16 = load i8*, i8** %line, align 8
  ret i8* %16
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @isPosSet([2 x i64] %pos.coerce) #0 {
entry:
  %pos = alloca %struct._MIOPos, align 8
  %p = alloca i8*, align 8
  %r = alloca i8, align 1
  %i = alloca i32, align 4
  %0 = bitcast %struct._MIOPos* %pos to [2 x i64]*
  store [2 x i64] %pos.coerce, [2 x i64]* %0, align 8
  %1 = bitcast %struct._MIOPos* %pos to i8*
  store i8* %1, i8** %p, align 8
  store i8 0, i8* %r, align 1
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %conv = zext i32 %2 to i64
  %cmp = icmp ult i64 %conv, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8*, i8** %p, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom = zext i32 %4 to i64
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1
  %conv2 = sext i8 %5 to i32
  %6 = load i8, i8* %r, align 1
  %tobool = trunc i8 %6 to i1
  %conv3 = zext i1 %tobool to i32
  %or = or i32 %conv3, %conv2
  %tobool4 = icmp ne i32 %or, 0
  %frombool = zext i1 %tobool4 to i8
  store i8 %frombool, i8* %r, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load i8, i8* %r, align 1
  %tobool5 = trunc i8 %8 to i1
  ret i1 %tobool5
}

declare i8* @readLineFromBypass(%struct.sVString*, [2 x i64], i64*) #1

declare i8* @readLineFromBypassSlow(%struct.sVString*, i64, i8*, i64*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @truncateTagLineAfterTag(i8* %line, i8* %token, i1 zeroext %discardNewline) #0 {
entry:
  %line.addr = alloca i8*, align 8
  %token.addr = alloca i8*, align 8
  %discardNewline.addr = alloca i8, align 1
  %p = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  store i8* %token, i8** %token.addr, align 8
  %frombool = zext i1 %discardNewline to i8
  store i8 %frombool, i8* %discardNewline.addr, align 1
  %0 = load i8*, i8** %line.addr, align 8
  %1 = load i8*, i8** %token.addr, align 8
  %call = call i8* @strstr(i8* %0, i8* %1)
  store i8* %call, i8** %p, align 8
  %2 = load i8*, i8** %p, align 8
  %cmp = icmp ne i8* %2, null
  br i1 %cmp, label %if.then, label %if.end10

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %token.addr, align 8
  %call1 = call i64 @strlen(i8* %3)
  %4 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %call1
  store i8* %add.ptr, i8** %p, align 8
  %5 = load i8*, i8** %p, align 8
  %6 = load i8, i8* %5, align 1
  %conv = sext i8 %6 to i32
  %cmp2 = icmp ne i32 %conv, 0
  br i1 %cmp2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %7 = load i8*, i8** %p, align 8
  %8 = load i8, i8* %7, align 1
  %conv4 = sext i8 %8 to i32
  %cmp5 = icmp eq i32 %conv4, 10
  br i1 %cmp5, label %land.lhs.true7, label %if.then9

land.lhs.true7:                                   ; preds = %land.lhs.true
  %9 = load i8, i8* %discardNewline.addr, align 1
  %tobool = trunc i8 %9 to i1
  br i1 %tobool, label %if.end, label %if.then9

if.then9:                                         ; preds = %land.lhs.true7, %land.lhs.true
  %10 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %if.end

if.end:                                           ; preds = %if.then9, %land.lhs.true7, %if.then
  %11 = load i8*, i8** %p, align 8
  store i8 0, i8* %11, align 1
  br label %if.end10

if.end10:                                         ; preds = %if.end, %entry
  ret void
}

declare i8* @strstr(i8*, i8*) #1

declare i64 @strlen(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @getTagScopeInformation(%struct.sTagEntryInfo* %tag, i8** %kind, i8** %name) #0 {
entry:
  %tag.addr = alloca %struct.sTagEntryInfo*, align 8
  %kind.addr = alloca i8**, align 8
  %name.addr = alloca i8**, align 8
  %scope = alloca %struct.sTagEntryInfo*, align 8
  %full_qualified_scope_name = alloca i8*, align 8
  %lang = alloca i32, align 4
  %kdef = alloca %struct.sKindDefinition*, align 8
  store %struct.sTagEntryInfo* %tag, %struct.sTagEntryInfo** %tag.addr, align 8
  store i8** %kind, i8*** %kind.addr, align 8
  store i8** %name, i8*** %name.addr, align 8
  %0 = load i8**, i8*** %kind.addr, align 8
  %tobool = icmp ne i8** %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8**, i8*** %kind.addr, align 8
  store i8* null, i8** %1, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i8**, i8*** %name.addr, align 8
  %tobool1 = icmp ne i8** %2, null
  br i1 %tobool1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %3 = load i8**, i8*** %name.addr, align 8
  store i8* null, i8** %3, align 8
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %4 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %extensionFields = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %4, i32 0, i32 11
  %scopeKindIndex = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields, i32 0, i32 5
  %5 = load i32, i32* %scopeKindIndex, align 4
  %cmp = icmp eq i32 %5, -1
  br i1 %cmp, label %land.lhs.true, label %if.end20

land.lhs.true:                                    ; preds = %if.end3
  %6 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %extensionFields4 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %6, i32 0, i32 11
  %scopeName = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields4, i32 0, i32 6
  %7 = load i8*, i8** %scopeName, align 8
  %cmp5 = icmp eq i8* %7, null
  br i1 %cmp5, label %land.lhs.true6, label %if.end20

land.lhs.true6:                                   ; preds = %land.lhs.true
  %8 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %extensionFields7 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %8, i32 0, i32 11
  %scopeIndex = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields7, i32 0, i32 7
  %9 = load i32, i32* %scopeIndex, align 8
  %cmp8 = icmp ne i32 %9, 0
  br i1 %cmp8, label %land.lhs.true9, label %if.end20

land.lhs.true9:                                   ; preds = %land.lhs.true6
  %10 = load i32, i32* getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 7, i32 2), align 4
  %cmp10 = icmp ugt i32 %10, 0
  br i1 %cmp10, label %if.then11, label %if.end20

if.then11:                                        ; preds = %land.lhs.true9
  %11 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %extensionFields12 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %11, i32 0, i32 11
  %scopeIndex13 = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields12, i32 0, i32 7
  %12 = load i32, i32* %scopeIndex13, align 8
  %call = call %struct.sTagEntryInfo* @getEntryInCorkQueue(i32 %12)
  store %struct.sTagEntryInfo* %call, %struct.sTagEntryInfo** %scope, align 8
  %13 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %scope, align 8
  %call14 = call i8* @getFullQualifiedScopeNameFromCorkQueue(%struct.sTagEntryInfo* %13)
  store i8* %call14, i8** %full_qualified_scope_name, align 8
  br label %do.body

do.body:                                          ; preds = %if.then11
  br label %do.end

do.end:                                           ; preds = %do.body
  %14 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %scope, align 8
  %langType = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %14, i32 0, i32 5
  %15 = load i32, i32* %langType, align 8
  %16 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %extensionFields15 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %16, i32 0, i32 11
  %scopeLangType = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields15, i32 0, i32 4
  store i32 %15, i32* %scopeLangType, align 8
  %17 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %scope, align 8
  %kindIndex = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %17, i32 0, i32 8
  %18 = load i32, i32* %kindIndex, align 8
  %19 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %extensionFields16 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %19, i32 0, i32 11
  %scopeKindIndex17 = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields16, i32 0, i32 5
  store i32 %18, i32* %scopeKindIndex17, align 4
  %20 = load i8*, i8** %full_qualified_scope_name, align 8
  %21 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %extensionFields18 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %21, i32 0, i32 11
  %scopeName19 = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields18, i32 0, i32 6
  store i8* %20, i8** %scopeName19, align 8
  br label %if.end20

if.end20:                                         ; preds = %do.end, %land.lhs.true9, %land.lhs.true6, %land.lhs.true, %if.end3
  %22 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %extensionFields21 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %22, i32 0, i32 11
  %scopeKindIndex22 = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields21, i32 0, i32 5
  %23 = load i32, i32* %scopeKindIndex22, align 4
  %cmp23 = icmp ne i32 %23, -1
  br i1 %cmp23, label %land.lhs.true24, label %if.end47

land.lhs.true24:                                  ; preds = %if.end20
  %24 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %extensionFields25 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %24, i32 0, i32 11
  %scopeName26 = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields25, i32 0, i32 6
  %25 = load i8*, i8** %scopeName26, align 8
  %cmp27 = icmp ne i8* %25, null
  br i1 %cmp27, label %if.then28, label %if.end47

if.then28:                                        ; preds = %land.lhs.true24
  %26 = load i8**, i8*** %kind.addr, align 8
  %tobool29 = icmp ne i8** %26, null
  br i1 %tobool29, label %if.then30, label %if.end41

if.then30:                                        ; preds = %if.then28
  %27 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %extensionFields31 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %27, i32 0, i32 11
  %scopeLangType32 = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields31, i32 0, i32 4
  %28 = load i32, i32* %scopeLangType32, align 8
  %cmp33 = icmp eq i32 %28, -1
  br i1 %cmp33, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then30
  %29 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %langType34 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %29, i32 0, i32 5
  %30 = load i32, i32* %langType34, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then30
  %31 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %extensionFields35 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %31, i32 0, i32 11
  %scopeLangType36 = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields35, i32 0, i32 4
  %32 = load i32, i32* %scopeLangType36, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %30, %cond.true ], [ %32, %cond.false ]
  store i32 %cond, i32* %lang, align 4
  %33 = load i32, i32* %lang, align 4
  %34 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %extensionFields37 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %34, i32 0, i32 11
  %scopeKindIndex38 = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields37, i32 0, i32 5
  %35 = load i32, i32* %scopeKindIndex38, align 4
  %call39 = call %struct.sKindDefinition* @getLanguageKind(i32 %33, i32 %35)
  store %struct.sKindDefinition* %call39, %struct.sKindDefinition** %kdef, align 8
  %36 = load %struct.sKindDefinition*, %struct.sKindDefinition** %kdef, align 8
  %name40 = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %36, i32 0, i32 2
  %37 = load i8*, i8** %name40, align 8
  %38 = load i8**, i8*** %kind.addr, align 8
  store i8* %37, i8** %38, align 8
  br label %if.end41

if.end41:                                         ; preds = %cond.end, %if.then28
  %39 = load i8**, i8*** %name.addr, align 8
  %tobool42 = icmp ne i8** %39, null
  br i1 %tobool42, label %if.then43, label %if.end46

if.then43:                                        ; preds = %if.end41
  %40 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %extensionFields44 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %40, i32 0, i32 11
  %scopeName45 = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields44, i32 0, i32 6
  %41 = load i8*, i8** %scopeName45, align 8
  %42 = load i8**, i8*** %name.addr, align 8
  store i8* %41, i8** %42, align 8
  br label %if.end46

if.end46:                                         ; preds = %if.then43, %if.end41
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %land.lhs.true24, %if.end20
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sTagEntryInfo* @getEntryInCorkQueue(i32 %n) #0 {
entry:
  %retval = alloca %struct.sTagEntryInfo*, align 8
  %n.addr = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %cmp = icmp ult i32 0, %0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %n.addr, align 4
  %2 = load i32, i32* getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 7, i32 2), align 4
  %cmp1 = icmp ult i32 %1, %2
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 7, i32 0), align 8
  %4 = load i32, i32* %n.addr, align 4
  %idx.ext = zext i32 %4 to i64
  %add.ptr = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %3, i64 %idx.ext
  store %struct.sTagEntryInfo* %add.ptr, %struct.sTagEntryInfo** %retval, align 8
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  store %struct.sTagEntryInfo* null, %struct.sTagEntryInfo** %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then
  %5 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %retval, align 8
  ret %struct.sTagEntryInfo* %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @getFullQualifiedScopeNameFromCorkQueue(%struct.sTagEntryInfo* %inner_scope) #0 {
entry:
  %inner_scope.addr = alloca %struct.sTagEntryInfo*, align 8
  %kindIndex = alloca i32, align 4
  %lang = alloca i32, align 4
  %scope = alloca %struct.sTagEntryInfo*, align 8
  %queue = alloca %struct.sPtrArray*, align 8
  %v = alloca %struct.sVString*, align 8
  %n = alloca %struct.sVString*, align 8
  %c = alloca i32, align 4
  %sep = alloca i8*, align 8
  store %struct.sTagEntryInfo* %inner_scope, %struct.sTagEntryInfo** %inner_scope.addr, align 8
  store i32 -1, i32* %kindIndex, align 4
  %0 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %inner_scope.addr, align 8
  store %struct.sTagEntryInfo* %0, %struct.sTagEntryInfo** %scope, align 8
  %call = call %struct.sPtrArray* @stringListNew()
  store %struct.sPtrArray* %call, %struct.sPtrArray** %queue, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end8, %entry
  %1 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %scope, align 8
  %tobool = icmp ne %struct.sTagEntryInfo* %1, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %scope, align 8
  %3 = bitcast %struct.sTagEntryInfo* %2 to i8*
  %bf.load = load i8, i8* %3, align 8
  %bf.lshr = lshr i8 %bf.load, 4
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool1 = icmp ne i32 %bf.cast, 0
  br i1 %tobool1, label %if.end8, label %if.then

if.then:                                          ; preds = %while.body
  %4 = load i32, i32* %kindIndex, align 4
  %cmp = icmp ne i32 %4, -1
  br i1 %cmp, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %5 = load i32, i32* %lang, align 4
  %6 = load i32, i32* %kindIndex, align 4
  %7 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %scope, align 8
  %kindIndex3 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %7, i32 0, i32 8
  %8 = load i32, i32* %kindIndex3, align 8
  %call4 = call i8* @scopeSeparatorFor(i32 %5, i32 %6, i32 %8)
  store i8* %call4, i8** %sep, align 8
  %9 = load i8*, i8** %sep, align 8
  %call5 = call %struct.sVString* @vStringNewInit(i8* %9)
  store %struct.sVString* %call5, %struct.sVString** %v, align 8
  %10 = load %struct.sPtrArray*, %struct.sPtrArray** %queue, align 8
  %11 = load %struct.sVString*, %struct.sVString** %v, align 8
  call void @stringListAdd(%struct.sPtrArray* %10, %struct.sVString* %11)
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %12 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %scope, align 8
  %name = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %12, i32 0, i32 7
  %13 = load i8*, i8** %name, align 8
  %call6 = call %struct.sVString* @vStringNewInit(i8* %13)
  store %struct.sVString* %call6, %struct.sVString** %v, align 8
  %14 = load %struct.sPtrArray*, %struct.sPtrArray** %queue, align 8
  %15 = load %struct.sVString*, %struct.sVString** %v, align 8
  call void @stringListAdd(%struct.sPtrArray* %14, %struct.sVString* %15)
  %16 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %scope, align 8
  %kindIndex7 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %16, i32 0, i32 8
  %17 = load i32, i32* %kindIndex7, align 8
  store i32 %17, i32* %kindIndex, align 4
  %18 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %scope, align 8
  %langType = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %18, i32 0, i32 5
  %19 = load i32, i32* %langType, align 8
  store i32 %19, i32* %lang, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.end, %while.body
  %20 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %scope, align 8
  %extensionFields = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %20, i32 0, i32 11
  %scopeIndex = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields, i32 0, i32 7
  %21 = load i32, i32* %scopeIndex, align 8
  %call9 = call %struct.sTagEntryInfo* @getEntryInCorkQueue(i32 %21)
  store %struct.sTagEntryInfo* %call9, %struct.sTagEntryInfo** %scope, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %call10 = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call10, %struct.sVString** %n, align 8
  br label %while.cond11

while.cond11:                                     ; preds = %while.body14, %while.end
  %22 = load %struct.sPtrArray*, %struct.sPtrArray** %queue, align 8
  %call12 = call i32 @stringListCount(%struct.sPtrArray* %22)
  store i32 %call12, i32* %c, align 4
  %cmp13 = icmp ugt i32 %call12, 0
  br i1 %cmp13, label %while.body14, label %while.end16

while.body14:                                     ; preds = %while.cond11
  %23 = load %struct.sPtrArray*, %struct.sPtrArray** %queue, align 8
  %call15 = call %struct.sVString* @stringListLast(%struct.sPtrArray* %23)
  store %struct.sVString* %call15, %struct.sVString** %v, align 8
  %24 = load %struct.sVString*, %struct.sVString** %n, align 8
  %25 = load %struct.sVString*, %struct.sVString** %v, align 8
  call void @vStringCat(%struct.sVString* %24, %struct.sVString* %25)
  %26 = load %struct.sVString*, %struct.sVString** %v, align 8
  call void @vStringDelete(%struct.sVString* %26)
  %27 = load %struct.sPtrArray*, %struct.sPtrArray** %queue, align 8
  call void @stringListRemoveLast(%struct.sPtrArray* %27)
  br label %while.cond11

while.end16:                                      ; preds = %while.cond11
  %28 = load %struct.sPtrArray*, %struct.sPtrArray** %queue, align 8
  call void @stringListDelete(%struct.sPtrArray* %28)
  %29 = load %struct.sVString*, %struct.sVString** %n, align 8
  %call17 = call i8* @vStringDeleteUnwrap(%struct.sVString* %29)
  ret i8* %call17
}

declare %struct.sKindDefinition* @getLanguageKind(i32, i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @makePatternString(%struct.sTagEntryInfo* %tag) #0 {
entry:
  %tag.addr = alloca %struct.sTagEntryInfo*, align 8
  %pattern = alloca %struct.sVString*, align 8
  store %struct.sTagEntryInfo* %tag, %struct.sTagEntryInfo** %tag.addr, align 8
  %call = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call, %struct.sVString** %pattern, align 8
  %0 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %1 = load %struct.sVString*, %struct.sVString** %pattern, align 8
  %2 = bitcast %struct.sVString* %1 to i8*
  %call1 = call i32 @makePatternStringCommon(%struct.sTagEntryInfo* %0, i32 (i8, i8*)* @vstring_putc, i32 (i8*, i8*)* @vstring_puts, i8* %2)
  %3 = load %struct.sVString*, %struct.sVString** %pattern, align 8
  %call2 = call i8* @vStringDeleteUnwrap(%struct.sVString* %3)
  ret i8* %call2
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @makePatternStringCommon(%struct.sTagEntryInfo* %tag, i32 (i8, i8*)* %putc_func, i32 (i8*, i8*)* %puts_func, i8* %output) #0 {
entry:
  %retval = alloca i32, align 4
  %tag.addr = alloca %struct.sTagEntryInfo*, align 8
  %putc_func.addr = alloca i32 (i8, i8*)*, align 8
  %puts_func.addr = alloca i32 (i8*, i8*)*, align 8
  %output.addr = alloca i8*, align 8
  %length = alloca i32, align 4
  %line = alloca i8*, align 8
  %searchChar = alloca i32, align 4
  %terminator = alloca i8*, align 8
  %omitted = alloca i8, align 1
  %line_len = alloca i64, align 8
  %making_cache = alloca i8, align 1
  %puts_o_func = alloca i32 (i8*, i8*)*, align 8
  %o_output = alloca i8*, align 8
  store %struct.sTagEntryInfo* %tag, %struct.sTagEntryInfo** %tag.addr, align 8
  store i32 (i8, i8*)* %putc_func, i32 (i8, i8*)** %putc_func.addr, align 8
  store i32 (i8*, i8*)* %puts_func, i32 (i8*, i8*)** %puts_func.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  store i32 0, i32* %length, align 4
  store i8 0, i8* %making_cache, align 1
  %0 = load i8, i8* getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 8), align 8
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %2 = bitcast %struct.sTagEntryInfo* %1 to i8*
  %bf.load = load i8, i8* %2, align 8
  %bf.lshr = lshr i8 %bf.load, 3
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool1 = icmp ne i32 %bf.cast, 0
  br i1 %tobool1, label %if.end, label %land.lhs.true2

land.lhs.true2:                                   ; preds = %land.lhs.true
  %3 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %filePosition = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %3, i32 0, i32 4
  %4 = bitcast %struct._MIOPos* %filePosition to i8*
  %call = call i32 @memcmp(i8* %4, i8* bitcast (%struct._MIOPos* @cached_location to i8*), i64 16)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true2
  %5 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %puts_func.addr, align 8
  %6 = load %struct.sVString*, %struct.sVString** @cached_pattern, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %6, i32 0, i32 2
  %7 = load i8*, i8** %buffer, align 8
  %8 = load i8*, i8** %output.addr, align 8
  %call3 = call i32 %5(i8* %7, i8* %8)
  store i32 %call3, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true2, %land.lhs.true, %entry
  %9 = load %struct.sVString*, %struct.sVString** getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 5), align 8
  %10 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %filePosition4 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %10, i32 0, i32 4
  %11 = bitcast %struct._MIOPos* %filePosition4 to [2 x i64]*
  %12 = load [2 x i64], [2 x i64]* %11, align 8
  %call5 = call i8* @readLineFromBypass(%struct.sVString* %9, [2 x i64] %12, i64* null)
  store i8* %call5, i8** %line, align 8
  %13 = load i8*, i8** %line, align 8
  %cmp6 = icmp eq i8* %13, null
  br i1 %cmp6, label %if.then7, label %if.end13

if.then7:                                         ; preds = %if.end
  %14 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %call8 = call i8* @getExecutableName()
  %call9 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %call8, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %15 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %call10 = call i8* @getInputFileName()
  %16 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %lineNumber = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %16, i32 0, i32 1
  %17 = load i64, i64* %lineNumber, align 8
  %call11 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %15, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.32, i64 0, i64 0), i8* %call10, i64 %17)
  %18 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %call12 = call i32 @"\01_fputs"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), %struct.__sFILE* %18)
  call void bitcast (void (...)* @ctags_cleanup to void ()*)()
  call void @exit(i32 1) #4
  unreachable

if.end13:                                         ; preds = %if.end
  %19 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %20 = bitcast %struct.sTagEntryInfo* %19 to i8*
  %bf.load14 = load i8, i8* %20, align 8
  %bf.lshr15 = lshr i8 %bf.load14, 3
  %bf.clear16 = and i8 %bf.lshr15, 1
  %bf.cast17 = zext i8 %bf.clear16 to i32
  %tobool18 = icmp ne i32 %bf.cast17, 0
  br i1 %tobool18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end13
  %21 = load i8*, i8** %line, align 8
  %22 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %name = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %22, i32 0, i32 7
  %23 = load i8*, i8** %name, align 8
  call void @truncateTagLineAfterTag(i8* %21, i8* %23, i1 zeroext false)
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end13
  %24 = load i8*, i8** %line, align 8
  %call21 = call i64 @strlen(i8* %24)
  store i64 %call21, i64* %line_len, align 8
  %25 = load i8, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 1), align 1
  %tobool22 = trunc i8 %25 to i1
  %26 = zext i1 %tobool22 to i64
  %cond = select i1 %tobool22, i32 63, i32 47
  store i32 %cond, i32* %searchChar, align 4
  %27 = load i8*, i8** %line, align 8
  %28 = load i64, i64* %line_len, align 8
  %sub = sub i64 %28, 1
  %arrayidx = getelementptr inbounds i8, i8* %27, i64 %sub
  %29 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %29 to i32
  %cmp23 = icmp eq i32 %conv, 10
  %30 = zext i1 %cmp23 to i64
  %cond26 = select i1 %cmp23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)
  store i8* %cond26, i8** %terminator, align 8
  %31 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %32 = bitcast %struct.sTagEntryInfo* %31 to i8*
  %bf.load27 = load i8, i8* %32, align 8
  %bf.lshr28 = lshr i8 %bf.load27, 3
  %bf.clear29 = and i8 %bf.lshr28, 1
  %bf.cast30 = zext i8 %bf.clear29 to i32
  %tobool31 = icmp ne i32 %bf.cast30, 0
  br i1 %tobool31, label %if.end34, label %if.then32

if.then32:                                        ; preds = %if.end20
  store i8 1, i8* %making_cache, align 1
  %33 = load %struct.sVString*, %struct.sVString** @cached_pattern, align 8
  %call33 = call %struct.sVString* @vStringNewOrClearWithAutoRelease(%struct.sVString* %33)
  store %struct.sVString* %call33, %struct.sVString** @cached_pattern, align 8
  %34 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %puts_func.addr, align 8
  store i32 (i8*, i8*)* %34, i32 (i8*, i8*)** %puts_o_func, align 8
  %35 = load i8*, i8** %output.addr, align 8
  store i8* %35, i8** %o_output, align 8
  store i32 (i8, i8*)* @vstring_putc, i32 (i8, i8*)** %putc_func.addr, align 8
  store i32 (i8*, i8*)* @vstring_puts, i32 (i8*, i8*)** %puts_func.addr, align 8
  %36 = load %struct.sVString*, %struct.sVString** @cached_pattern, align 8
  %37 = bitcast %struct.sVString* %36 to i8*
  store i8* %37, i8** %output.addr, align 8
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.end20
  %38 = load i32 (i8, i8*)*, i32 (i8, i8*)** %putc_func.addr, align 8
  %39 = load i32, i32* %searchChar, align 4
  %conv35 = trunc i32 %39 to i8
  %40 = load i8*, i8** %output.addr, align 8
  %call36 = call i32 %38(i8 signext %conv35, i8* %40)
  %41 = load i32, i32* %length, align 4
  %add = add nsw i32 %41, %call36
  store i32 %add, i32* %length, align 4
  %42 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %boundaryInfo = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %42, i32 0, i32 3
  %43 = load i32, i32* %boundaryInfo, align 8
  %and = and i32 %43, 1
  %cmp37 = icmp eq i32 %and, 0
  br i1 %cmp37, label %if.then39, label %if.end42

if.then39:                                        ; preds = %if.end34
  %44 = load i32 (i8, i8*)*, i32 (i8, i8*)** %putc_func.addr, align 8
  %45 = load i8*, i8** %output.addr, align 8
  %call40 = call i32 %44(i8 signext 94, i8* %45)
  %46 = load i32, i32* %length, align 4
  %add41 = add nsw i32 %46, %call40
  store i32 %add41, i32* %length, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then39, %if.end34
  %47 = load i32 (i8, i8*)*, i32 (i8, i8*)** %putc_func.addr, align 8
  %48 = load i8*, i8** %line, align 8
  %49 = load i8*, i8** %output.addr, align 8
  %call43 = call i64 @appendInputLine(i32 (i8, i8*)* %47, i8* %48, i8* %49, i8* %omitted)
  %50 = load i32, i32* %length, align 4
  %conv44 = sext i32 %50 to i64
  %add45 = add i64 %conv44, %call43
  %conv46 = trunc i64 %add45 to i32
  store i32 %conv46, i32* %length, align 4
  %51 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %puts_func.addr, align 8
  %52 = load i8, i8* %omitted, align 1
  %tobool47 = trunc i8 %52 to i1
  br i1 %tobool47, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end42
  br label %cond.end

cond.false:                                       ; preds = %if.end42
  %53 = load i8*, i8** %terminator, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond49 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %cond.true ], [ %53, %cond.false ]
  %54 = load i8*, i8** %output.addr, align 8
  %call50 = call i32 %51(i8* %cond49, i8* %54)
  %55 = load i32, i32* %length, align 4
  %add51 = add nsw i32 %55, %call50
  store i32 %add51, i32* %length, align 4
  %56 = load i32 (i8, i8*)*, i32 (i8, i8*)** %putc_func.addr, align 8
  %57 = load i32, i32* %searchChar, align 4
  %conv52 = trunc i32 %57 to i8
  %58 = load i8*, i8** %output.addr, align 8
  %call53 = call i32 %56(i8 signext %conv52, i8* %58)
  %59 = load i32, i32* %length, align 4
  %add54 = add nsw i32 %59, %call53
  store i32 %add54, i32* %length, align 4
  %60 = load i8, i8* %making_cache, align 1
  %tobool55 = trunc i8 %60 to i1
  br i1 %tobool55, label %if.then56, label %if.end60

if.then56:                                        ; preds = %cond.end
  %61 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %puts_o_func, align 8
  %62 = load %struct.sVString*, %struct.sVString** @cached_pattern, align 8
  %buffer57 = getelementptr inbounds %struct.sVString, %struct.sVString* %62, i32 0, i32 2
  %63 = load i8*, i8** %buffer57, align 8
  %64 = load i8*, i8** %o_output, align 8
  %call58 = call i32 %61(i8* %63, i8* %64)
  %65 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %filePosition59 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %65, i32 0, i32 4
  %66 = bitcast %struct._MIOPos* %filePosition59 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct._MIOPos* @cached_location to i8*), i8* align 8 %66, i64 16, i1 false)
  store i8 1, i8* getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 8), align 8
  br label %if.end60

if.end60:                                         ; preds = %if.then56, %cond.end
  %67 = load i32, i32* %length, align 4
  store i32 %67, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end60, %if.then
  %68 = load i32, i32* %retval, align 4
  ret i32 %68
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @vstring_putc(i8 signext %c, i8* %data) #0 {
entry:
  %c.addr = alloca i8, align 1
  %data.addr = alloca i8*, align 8
  %str = alloca %struct.sVString*, align 8
  store i8 %c, i8* %c.addr, align 1
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.sVString*
  store %struct.sVString* %1, %struct.sVString** %str, align 8
  %2 = load %struct.sVString*, %struct.sVString** %str, align 8
  %3 = load i8, i8* %c.addr, align 1
  %conv = sext i8 %3 to i32
  call void @vStringPut(%struct.sVString* %2, i32 %conv)
  ret i32 1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @vstring_puts(i8* %s, i8* %data) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  %str = alloca %struct.sVString*, align 8
  %len = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.sVString*
  store %struct.sVString* %1, %struct.sVString** %str, align 8
  %2 = load %struct.sVString*, %struct.sVString** %str, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %2, i32 0, i32 0
  %3 = load i64, i64* %length, align 8
  %conv = trunc i64 %3 to i32
  store i32 %conv, i32* %len, align 4
  %4 = load %struct.sVString*, %struct.sVString** %str, align 8
  %5 = load i8*, i8** %s.addr, align 8
  call void @vStringCatS(%struct.sVString* %4, i8* %5)
  %6 = load %struct.sVString*, %struct.sVString** %str, align 8
  %length1 = getelementptr inbounds %struct.sVString, %struct.sVString* %6, i32 0, i32 0
  %7 = load i64, i64* %length1, align 8
  %8 = load i32, i32* %len, align 4
  %conv2 = sext i32 %8 to i64
  %sub = sub i64 %7, %conv2
  %conv3 = trunc i64 %sub to i32
  ret i32 %conv3
}

declare i8* @vStringDeleteUnwrap(%struct.sVString*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @attachParserField(%struct.sTagEntryInfo* %tag, i32 %ftype, i8* %value) #0 {
entry:
  %tag.addr = alloca %struct.sTagEntryInfo*, align 8
  %ftype.addr = alloca i32, align 4
  %value.addr = alloca i8*, align 8
  store %struct.sTagEntryInfo* %tag, %struct.sTagEntryInfo** %tag.addr, align 8
  store i32 %ftype, i32* %ftype.addr, align 4
  store i8* %value, i8** %value.addr, align 8
  %0 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %1 = load i32, i32* %ftype.addr, align 4
  %2 = load i8*, i8** %value.addr, align 8
  call void @attachParserFieldGeneric(%struct.sTagEntryInfo* %0, i32 %1, i8* %2, i1 zeroext false)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @attachParserFieldGeneric(%struct.sTagEntryInfo* %tag, i32 %ftype, i8* %value, i1 zeroext %valueOwner) #0 {
entry:
  %tag.addr = alloca %struct.sTagEntryInfo*, align 8
  %ftype.addr = alloca i32, align 4
  %value.addr = alloca i8*, align 8
  %valueOwner.addr = alloca i8, align 1
  %f = alloca %struct.sTagField*, align 8
  store %struct.sTagEntryInfo* %tag, %struct.sTagEntryInfo** %tag.addr, align 8
  store i32 %ftype, i32* %ftype.addr, align 4
  store i8* %value, i8** %value.addr, align 8
  %frombool = zext i1 %valueOwner to i8
  store i8 %frombool, i8* %valueOwner.addr, align 1
  %0 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %usedParserFields = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %0, i32 0, i32 12
  %1 = load i32, i32* %usedParserFields, align 8
  %cmp = icmp ult i32 %1, 5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %ftype.addr, align 4
  %3 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %parserFields = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %3, i32 0, i32 13
  %4 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %usedParserFields1 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %4, i32 0, i32 12
  %5 = load i32, i32* %usedParserFields1, align 8
  %idxprom = zext i32 %5 to i64
  %arrayidx = getelementptr inbounds [5 x %struct.sTagField], [5 x %struct.sTagField]* %parserFields, i64 0, i64 %idxprom
  %ftype2 = getelementptr inbounds %struct.sTagField, %struct.sTagField* %arrayidx, i32 0, i32 0
  store i32 %2, i32* %ftype2, align 8
  %6 = load i8*, i8** %value.addr, align 8
  %7 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %parserFields3 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %7, i32 0, i32 13
  %8 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %usedParserFields4 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %8, i32 0, i32 12
  %9 = load i32, i32* %usedParserFields4, align 8
  %idxprom5 = zext i32 %9 to i64
  %arrayidx6 = getelementptr inbounds [5 x %struct.sTagField], [5 x %struct.sTagField]* %parserFields3, i64 0, i64 %idxprom5
  %value7 = getelementptr inbounds %struct.sTagField, %struct.sTagField* %arrayidx6, i32 0, i32 1
  store i8* %6, i8** %value7, align 8
  %10 = load i8, i8* %valueOwner.addr, align 1
  %tobool = trunc i8 %10 to i1
  %11 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %parserFields8 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %11, i32 0, i32 13
  %12 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %usedParserFields9 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %12, i32 0, i32 12
  %13 = load i32, i32* %usedParserFields9, align 8
  %idxprom10 = zext i32 %13 to i64
  %arrayidx11 = getelementptr inbounds [5 x %struct.sTagField], [5 x %struct.sTagField]* %parserFields8, i64 0, i64 %idxprom10
  %valueOwner12 = getelementptr inbounds %struct.sTagField, %struct.sTagField* %arrayidx11, i32 0, i32 2
  %frombool13 = zext i1 %tobool to i8
  store i8 %frombool13, i8* %valueOwner12, align 8
  %14 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %usedParserFields14 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %14, i32 0, i32 12
  %15 = load i32, i32* %usedParserFields14, align 8
  %inc = add i32 %15, 1
  store i32 %inc, i32* %usedParserFields14, align 8
  br label %if.end27

if.else:                                          ; preds = %entry
  %16 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %parserFieldsDynamic = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %16, i32 0, i32 14
  %17 = load %struct.sPtrArray*, %struct.sPtrArray** %parserFieldsDynamic, align 8
  %cmp15 = icmp eq %struct.sPtrArray* %17, null
  br i1 %cmp15, label %if.then16, label %if.else21

if.then16:                                        ; preds = %if.else
  %call = call %struct.sPtrArray* @ptrArrayNew(void (i8*)* bitcast (void (%struct.sTagField*)* @tagFieldDelete to void (i8*)*))
  %18 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %parserFieldsDynamic17 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %18, i32 0, i32 14
  store %struct.sPtrArray* %call, %struct.sPtrArray** %parserFieldsDynamic17, align 8
  %19 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %parserFieldsDynamic18 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %19, i32 0, i32 14
  %20 = load %struct.sPtrArray*, %struct.sPtrArray** %parserFieldsDynamic18, align 8
  %21 = bitcast %struct.sPtrArray* %20 to i8*
  %call19 = call i8* @parserTrashBoxPut(i8* %21, void (i8*)* bitcast (void (%struct.sPtrArray*)* @ptrArrayDelete to void (i8*)*))
  %22 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %23 = load i32, i32* %ftype.addr, align 4
  %24 = load i8*, i8** %value.addr, align 8
  %25 = load i8, i8* %valueOwner.addr, align 1
  %tobool20 = trunc i8 %25 to i1
  call void @attachParserFieldGeneric(%struct.sTagEntryInfo* %22, i32 %23, i8* %24, i1 zeroext %tobool20)
  br label %if.end

if.else21:                                        ; preds = %if.else
  %26 = load i32, i32* %ftype.addr, align 4
  %27 = load i8*, i8** %value.addr, align 8
  %28 = load i8, i8* %valueOwner.addr, align 1
  %tobool22 = trunc i8 %28 to i1
  %call23 = call %struct.sTagField* @tagFieldNew(i32 %26, i8* %27, i1 zeroext %tobool22)
  store %struct.sTagField* %call23, %struct.sTagField** %f, align 8
  %29 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %parserFieldsDynamic24 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %29, i32 0, i32 14
  %30 = load %struct.sPtrArray*, %struct.sPtrArray** %parserFieldsDynamic24, align 8
  %31 = load %struct.sTagField*, %struct.sTagField** %f, align 8
  %32 = bitcast %struct.sTagField* %31 to i8*
  call void @ptrArrayAdd(%struct.sPtrArray* %30, i8* %32)
  %33 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %usedParserFields25 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %33, i32 0, i32 12
  %34 = load i32, i32* %usedParserFields25, align 8
  %inc26 = add i32 %34, 1
  store i32 %inc26, i32* %usedParserFields25, align 8
  br label %if.end

if.end:                                           ; preds = %if.else21, %if.then16
  br label %if.end27

if.end27:                                         ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @attachParserFieldToCorkEntry(i32 %index, i32 %ftype, i8* %value) #0 {
entry:
  %index.addr = alloca i32, align 4
  %ftype.addr = alloca i32, align 4
  %value.addr = alloca i8*, align 8
  %tag = alloca %struct.sTagEntryInfo*, align 8
  %v = alloca i8*, align 8
  store i32 %index, i32* %index.addr, align 4
  store i32 %ftype, i32* %ftype.addr, align 4
  store i8* %value, i8** %value.addr, align 8
  %0 = load i32, i32* %index.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %index.addr, align 4
  %call = call %struct.sTagEntryInfo* @getEntryInCorkQueue(i32 %1)
  store %struct.sTagEntryInfo* %call, %struct.sTagEntryInfo** %tag, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %value.addr, align 8
  %call1 = call i8* @eStrdup(i8* %2)
  store i8* %call1, i8** %v, align 8
  %3 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag, align 8
  %4 = load i32, i32* %ftype.addr, align 4
  %5 = load i8*, i8** %v, align 8
  call void @attachParserFieldGeneric(%struct.sTagEntryInfo* %3, i32 %4, i8* %5, i1 zeroext true)
  br label %return

return:                                           ; preds = %do.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sTagField* @getParserField(%struct.sTagEntryInfo* %tag, i32 %index) #0 {
entry:
  %retval = alloca %struct.sTagField*, align 8
  %tag.addr = alloca %struct.sTagEntryInfo*, align 8
  %index.addr = alloca i32, align 4
  %n = alloca i32, align 4
  store %struct.sTagEntryInfo* %tag, %struct.sTagEntryInfo** %tag.addr, align 8
  store i32 %index, i32* %index.addr, align 4
  %0 = load i32, i32* %index.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %usedParserFields = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %1, i32 0, i32 12
  %2 = load i32, i32* %usedParserFields, align 8
  %3 = load i32, i32* %index.addr, align 4
  %cmp1 = icmp ule i32 %2, %3
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  store %struct.sTagField* null, %struct.sTagField** %retval, align 8
  br label %return

if.else:                                          ; preds = %lor.lhs.false
  %4 = load i32, i32* %index.addr, align 4
  %cmp2 = icmp slt i32 %4, 5
  br i1 %cmp2, label %if.then3, label %if.else4

if.then3:                                         ; preds = %if.else
  %5 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %parserFields = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %5, i32 0, i32 13
  %arraydecay = getelementptr inbounds [5 x %struct.sTagField], [5 x %struct.sTagField]* %parserFields, i64 0, i64 0
  %6 = load i32, i32* %index.addr, align 4
  %idx.ext = sext i32 %6 to i64
  %add.ptr = getelementptr inbounds %struct.sTagField, %struct.sTagField* %arraydecay, i64 %idx.ext
  store %struct.sTagField* %add.ptr, %struct.sTagField** %retval, align 8
  br label %return

if.else4:                                         ; preds = %if.else
  %7 = load i32, i32* %index.addr, align 4
  %sub = sub nsw i32 %7, 5
  store i32 %sub, i32* %n, align 4
  %8 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %parserFieldsDynamic = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %8, i32 0, i32 14
  %9 = load %struct.sPtrArray*, %struct.sPtrArray** %parserFieldsDynamic, align 8
  %10 = load i32, i32* %n, align 4
  %call = call i8* @ptrArrayItem(%struct.sPtrArray* %9, i32 %10)
  %11 = bitcast i8* %call to %struct.sTagField*
  store %struct.sTagField* %11, %struct.sTagField** %retval, align 8
  br label %return

return:                                           ; preds = %if.else4, %if.then3, %if.then
  %12 = load %struct.sTagField*, %struct.sTagField** %retval, align 8
  ret %struct.sTagField* %12
}

declare i8* @ptrArrayItem(%struct.sPtrArray*, i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @setupWriter() #0 {
entry:
  %0 = load %struct._MIO*, %struct._MIO** getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 2), align 8
  call void @writerSetup(%struct._MIO* %0)
  ret void
}

declare void @writerSetup(%struct._MIO*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @teardownWriter(i8* %filename) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load %struct._MIO*, %struct._MIO** getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 2), align 8
  %1 = load i8*, i8** %filename.addr, align 8
  %call = call zeroext i1 @writerTeardown(%struct._MIO* %0, i8* %1)
  ret i1 %call
}

declare zeroext i1 @writerTeardown(%struct._MIO*, i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @writePseudoTag(%struct.sPtagDesc* %desc, i8* %fileName, i8* %pattern, i8* %parserName) #0 {
entry:
  %retval = alloca i1, align 1
  %desc.addr = alloca %struct.sPtagDesc*, align 8
  %fileName.addr = alloca i8*, align 8
  %pattern.addr = alloca i8*, align 8
  %parserName.addr = alloca i8*, align 8
  %length = alloca i32, align 4
  store %struct.sPtagDesc* %desc, %struct.sPtagDesc** %desc.addr, align 8
  store i8* %fileName, i8** %fileName.addr, align 8
  store i8* %pattern, i8** %pattern.addr, align 8
  store i8* %parserName, i8** %parserName.addr, align 8
  %0 = load %struct._MIO*, %struct._MIO** getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 2), align 8
  %1 = load %struct.sPtagDesc*, %struct.sPtagDesc** %desc.addr, align 8
  %2 = load i8*, i8** %fileName.addr, align 8
  %3 = load i8*, i8** %pattern.addr, align 8
  %4 = load i8*, i8** %parserName.addr, align 8
  %call = call i32 @writerWritePtag(%struct._MIO* %0, %struct.sPtagDesc* %1, i8* %2, i8* %3, i8* %4)
  store i32 %call, i32* %length, align 4
  %5 = load i32, i32* %length, align 4
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct._MIO*, %struct._MIO** getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 2), align 8
  call void @abort_if_ferror(%struct._MIO* %6)
  %7 = load i64, i64* getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 3, i32 0), align 8
  %inc = add i64 %7, 1
  store i64 %inc, i64* getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 3, i32 0), align 8
  %8 = load %struct.sPtagDesc*, %struct.sPtagDesc** %desc.addr, align 8
  %name = getelementptr inbounds %struct.sPtagDesc, %struct.sPtagDesc* %8, i32 0, i32 1
  %9 = load i8*, i8** %name, align 8
  %call1 = call i64 @strlen(i8* %9)
  %10 = load i32, i32* %length, align 4
  %conv = sext i32 %10 to i64
  call void @rememberMaxLengths(i64 %call1, i64 %conv)
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end, %if.then
  %11 = load i1, i1* %retval, align 1
  ret i1 %11
}

declare i32 @writerWritePtag(%struct._MIO*, %struct.sPtagDesc*, i8*, i8*, i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @rememberMaxLengths(i64 %nameLength, i64 %lineLength) #0 {
entry:
  %nameLength.addr = alloca i64, align 8
  %lineLength.addr = alloca i64, align 8
  store i64 %nameLength, i64* %nameLength.addr, align 8
  store i64 %lineLength, i64* %lineLength.addr, align 8
  %0 = load i64, i64* %nameLength.addr, align 8
  %1 = load i64, i64* getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 4, i32 1), align 8
  %cmp = icmp ugt i64 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %nameLength.addr, align 8
  store i64 %2, i64* getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 4, i32 1), align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* %lineLength.addr, align 8
  %4 = load i64, i64* getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 4, i32 0), align 8
  %cmp1 = icmp ugt i64 %3, %4
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %5 = load i64, i64* %lineLength.addr, align 8
  store i64 %5, i64* getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 4, i32 0), align 8
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @corkTagFile() #0 {
entry:
  %0 = load i32, i32* getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 6), align 8
  %inc = add i32 %0, 1
  store i32 %inc, i32* getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 6), align 8
  %1 = load i32, i32* getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 6), align 8
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 7, i32 1), align 8
  store i32 1, i32* getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 7, i32 2), align 4
  %call = call i8* @eMalloc(i64 344)
  %2 = bitcast i8* %call to %struct.sTagEntryInfo*
  store %struct.sTagEntryInfo* %2, %struct.sTagEntryInfo** getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 7, i32 0), align 8
  %3 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 7, i32 0), align 8
  %4 = bitcast %struct.sTagEntryInfo* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %4, i8 0, i64 344, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i8* @eMalloc(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @writeTagEntry(%struct.sTagEntryInfo* %tag) #0 {
entry:
  %tag.addr = alloca %struct.sTagEntryInfo*, align 8
  %length = alloca i32, align 4
  store %struct.sTagEntryInfo* %tag, %struct.sTagEntryInfo** %tag.addr, align 8
  store i32 0, i32* %length, align 4
  %0 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %1 = bitcast %struct.sTagEntryInfo* %0 to i8*
  %bf.load = load i8, i8* %1, align 8
  %bf.lshr = lshr i8 %bf.load, 4
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %kindIndex = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %2, i32 0, i32 8
  %3 = load i32, i32* %kindIndex, align 8
  %cmp = icmp eq i32 %3, -2
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  %call = call %struct.sKindDefinition* @getInputLanguageFileKind()
  %enabled = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %call, i32 0, i32 0
  %4 = load i8, i8* %enabled, align 8
  %tobool2 = trunc i8 %4 to i1
  br i1 %tobool2, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.then1
  br label %return

if.end4:                                          ; preds = %if.then1
  br label %if.end9

if.else:                                          ; preds = %if.end
  %5 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %langType = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %5, i32 0, i32 5
  %6 = load i32, i32* %langType, align 8
  %7 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %kindIndex5 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %7, i32 0, i32 8
  %8 = load i32, i32* %kindIndex5, align 8
  %call6 = call zeroext i1 @isLanguageKindEnabled(i32 %6, i32 %8)
  br i1 %call6, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.else
  br label %return

if.end8:                                          ; preds = %if.else
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %if.end4
  %9 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %extensionFields = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %9, i32 0, i32 11
  %roleIndex = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields, i32 0, i32 10
  %10 = load i32, i32* %roleIndex, align 8
  %cmp10 = icmp ne i32 %10, -1
  br i1 %cmp10, label %land.lhs.true, label %if.end13

land.lhs.true:                                    ; preds = %if.end9
  %call11 = call zeroext i1 @isXtagEnabled(i32 4)
  br i1 %call11, label %if.end13, label %if.then12

if.then12:                                        ; preds = %land.lhs.true
  br label %return

if.end13:                                         ; preds = %land.lhs.true, %if.end9
  %11 = load i32, i32* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 13), align 8
  %cmp14 = icmp ugt i32 %11, 1
  br i1 %cmp14, label %land.lhs.true15, label %if.end20

land.lhs.true15:                                  ; preds = %if.end13
  %call16 = call zeroext i1 @isXtagEnabled(i32 3)
  br i1 %call16, label %land.lhs.true17, label %if.end20

land.lhs.true17:                                  ; preds = %land.lhs.true15
  %call18 = call zeroext i1 @doesInputLanguageRequestAutomaticFQTag()
  br i1 %call18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %land.lhs.true17
  %12 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  call void @writerBuildFqTagCache(%struct.sTagEntryInfo* %12)
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %land.lhs.true17, %land.lhs.true15, %if.end13
  %13 = load %struct._MIO*, %struct._MIO** getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 2), align 8
  %14 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %call21 = call i32 @writerWriteTag(%struct._MIO* %13, %struct.sTagEntryInfo* %14)
  store i32 %call21, i32* %length, align 4
  %15 = load i64, i64* getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 3, i32 0), align 8
  %inc = add i64 %15, 1
  store i64 %inc, i64* getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 3, i32 0), align 8
  %16 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %name = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %16, i32 0, i32 7
  %17 = load i8*, i8** %name, align 8
  %call22 = call i64 @strlen(i8* %17)
  %18 = load i32, i32* %length, align 4
  %conv = sext i32 %18 to i64
  call void @rememberMaxLengths(i64 %call22, i64 %conv)
  %19 = load %struct._MIO*, %struct._MIO** getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 2), align 8
  call void @abort_if_ferror(%struct._MIO* %19)
  br label %return

return:                                           ; preds = %if.end20, %if.then12, %if.then7, %if.then3, %if.then
  ret void
}

declare zeroext i1 @doesInputLanguageRequestAutomaticFQTag() #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @makeQualifiedTagEntry(%struct.sTagEntryInfo* %e) #0 {
entry:
  %retval = alloca i32, align 4
  %e.addr = alloca %struct.sTagEntryInfo*, align 8
  %r = alloca i32, align 4
  %x = alloca %struct.sTagEntryInfo, align 8
  %xk = alloca i32, align 4
  %sep = alloca i8*, align 8
  %in_subparser = alloca i8, align 1
  store %struct.sTagEntryInfo* %e, %struct.sTagEntryInfo** %e.addr, align 8
  store i32 0, i32* %r, align 4
  %call = call zeroext i1 @isXtagEnabled(i32 3)
  br i1 %call, label %if.then, label %if.end24

if.then:                                          ; preds = %entry
  %0 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %e.addr, align 8
  %1 = bitcast %struct.sTagEntryInfo* %x to i8*
  %2 = bitcast %struct.sTagEntryInfo* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 344, i1 false)
  call void @markTagExtraBit(%struct.sTagEntryInfo* %x, i32 3)
  %3 = load %struct.sVString*, %struct.sVString** @makeQualifiedTagEntry.fqn, align 8
  %call1 = call %struct.sVString* @vStringNewOrClearWithAutoRelease(%struct.sVString* %3)
  store %struct.sVString* %call1, %struct.sVString** @makeQualifiedTagEntry.fqn, align 8
  %4 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %e.addr, align 8
  %extensionFields = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %4, i32 0, i32 11
  %scopeName = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields, i32 0, i32 6
  %5 = load i8*, i8** %scopeName, align 8
  %tobool = icmp ne i8* %5, null
  br i1 %tobool, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %6 = load %struct.sVString*, %struct.sVString** @makeQualifiedTagEntry.fqn, align 8
  %7 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %e.addr, align 8
  %extensionFields3 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %7, i32 0, i32 11
  %scopeName4 = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields3, i32 0, i32 6
  %8 = load i8*, i8** %scopeName4, align 8
  call void @vStringCatS(%struct.sVString* %6, i8* %8)
  %9 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %e.addr, align 8
  %extensionFields5 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %9, i32 0, i32 11
  %scopeKindIndex = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields5, i32 0, i32 5
  %10 = load i32, i32* %scopeKindIndex, align 4
  store i32 %10, i32* %xk, align 4
  %11 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %e.addr, align 8
  %langType = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %11, i32 0, i32 5
  %12 = load i32, i32* %langType, align 8
  %13 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %e.addr, align 8
  %kindIndex = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %13, i32 0, i32 8
  %14 = load i32, i32* %kindIndex, align 8
  %15 = load i32, i32* %xk, align 4
  %call6 = call i8* @scopeSeparatorFor(i32 %12, i32 %14, i32 %15)
  store i8* %call6, i8** %sep, align 8
  %16 = load %struct.sVString*, %struct.sVString** @makeQualifiedTagEntry.fqn, align 8
  %17 = load i8*, i8** %sep, align 8
  call void @vStringCatS(%struct.sVString* %16, i8* %17)
  br label %if.end12

if.else:                                          ; preds = %if.then
  %18 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %e.addr, align 8
  %langType7 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %18, i32 0, i32 5
  %19 = load i32, i32* %langType7, align 8
  %20 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %e.addr, align 8
  %kindIndex8 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %20, i32 0, i32 8
  %21 = load i32, i32* %kindIndex8, align 8
  %call9 = call i8* @scopeSeparatorFor(i32 %19, i32 %21, i32 -1)
  store i8* %call9, i8** %sep, align 8
  %22 = load i8*, i8** %sep, align 8
  %cmp = icmp eq i8* %22, null
  br i1 %cmp, label %if.then10, label %if.else11

if.then10:                                        ; preds = %if.else
  %23 = load i32, i32* %r, align 4
  store i32 %23, i32* %retval, align 4
  br label %return

if.else11:                                        ; preds = %if.else
  %24 = load %struct.sVString*, %struct.sVString** @makeQualifiedTagEntry.fqn, align 8
  %25 = load i8*, i8** %sep, align 8
  call void @vStringCatS(%struct.sVString* %24, i8* %25)
  br label %if.end

if.end:                                           ; preds = %if.else11
  br label %if.end12

if.end12:                                         ; preds = %if.end, %if.then2
  %26 = load %struct.sVString*, %struct.sVString** @makeQualifiedTagEntry.fqn, align 8
  %27 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %e.addr, align 8
  %name = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %27, i32 0, i32 7
  %28 = load i8*, i8** %name, align 8
  call void @vStringCatS(%struct.sVString* %26, i8* %28)
  %29 = load %struct.sVString*, %struct.sVString** @makeQualifiedTagEntry.fqn, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %29, i32 0, i32 2
  %30 = load i8*, i8** %buffer, align 8
  %name13 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %x, i32 0, i32 7
  store i8* %30, i8** %name13, align 8
  %call14 = call zeroext i1 @isTagExtraBitMarked(%struct.sTagEntryInfo* %x, i32 6)
  %frombool = zext i1 %call14 to i8
  store i8 %frombool, i8* %in_subparser, align 1
  %31 = load i8, i8* %in_subparser, align 1
  %tobool15 = trunc i8 %31 to i1
  br i1 %tobool15, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end12
  %langType17 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %x, i32 0, i32 5
  %32 = load i32, i32* %langType17, align 8
  call void @pushLanguage(i32 %32)
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end12
  %call19 = call i32 @makeTagEntry(%struct.sTagEntryInfo* %x)
  store i32 %call19, i32* %r, align 4
  %33 = load i8, i8* %in_subparser, align 1
  %tobool20 = trunc i8 %33 to i1
  br i1 %tobool20, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.end18
  %call22 = call i32 @popLanguage()
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.end18
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %entry
  %34 = load i32, i32* %r, align 4
  store i32 %34, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end24, %if.then10
  %35 = load i32, i32* %retval, align 4
  ret i32 %35
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @clearTagEntryInQueue(%struct.sTagEntryInfo* %slot) #0 {
entry:
  %slot.addr = alloca %struct.sTagEntryInfo*, align 8
  store %struct.sTagEntryInfo* %slot, %struct.sTagEntryInfo** %slot.addr, align 8
  %0 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %slot.addr, align 8
  %pattern = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %0, i32 0, i32 2
  %1 = load i8*, i8** %pattern, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %slot.addr, align 8
  %pattern1 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %2, i32 0, i32 2
  %3 = load i8*, i8** %pattern1, align 8
  call void @eFree(i8* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %slot.addr, align 8
  %inputFileName = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %4, i32 0, i32 6
  %5 = load i8*, i8** %inputFileName, align 8
  call void @eFree(i8* %5)
  %6 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %slot.addr, align 8
  %name = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %6, i32 0, i32 7
  %7 = load i8*, i8** %name, align 8
  call void @eFree(i8* %7)
  %8 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %slot.addr, align 8
  %extensionFields = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %8, i32 0, i32 11
  %access = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields, i32 0, i32 0
  %9 = load i8*, i8** %access, align 8
  %tobool2 = icmp ne i8* %9, null
  br i1 %tobool2, label %if.then3, label %if.end6

if.then3:                                         ; preds = %if.end
  %10 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %slot.addr, align 8
  %extensionFields4 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %10, i32 0, i32 11
  %access5 = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields4, i32 0, i32 0
  %11 = load i8*, i8** %access5, align 8
  call void @eFree(i8* %11)
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end
  %12 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %slot.addr, align 8
  %extensionFields7 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %12, i32 0, i32 11
  %fileScope = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields7, i32 0, i32 1
  %13 = load i8*, i8** %fileScope, align 8
  %tobool8 = icmp ne i8* %13, null
  br i1 %tobool8, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end6
  %14 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %slot.addr, align 8
  %extensionFields10 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %14, i32 0, i32 11
  %fileScope11 = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields10, i32 0, i32 1
  %15 = load i8*, i8** %fileScope11, align 8
  call void @eFree(i8* %15)
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end6
  %16 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %slot.addr, align 8
  %extensionFields13 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %16, i32 0, i32 11
  %implementation = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields13, i32 0, i32 2
  %17 = load i8*, i8** %implementation, align 8
  %tobool14 = icmp ne i8* %17, null
  br i1 %tobool14, label %if.then15, label %if.end18

if.then15:                                        ; preds = %if.end12
  %18 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %slot.addr, align 8
  %extensionFields16 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %18, i32 0, i32 11
  %implementation17 = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields16, i32 0, i32 2
  %19 = load i8*, i8** %implementation17, align 8
  call void @eFree(i8* %19)
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.end12
  %20 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %slot.addr, align 8
  %extensionFields19 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %20, i32 0, i32 11
  %inheritance = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields19, i32 0, i32 3
  %21 = load i8*, i8** %inheritance, align 8
  %tobool20 = icmp ne i8* %21, null
  br i1 %tobool20, label %if.then21, label %if.end24

if.then21:                                        ; preds = %if.end18
  %22 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %slot.addr, align 8
  %extensionFields22 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %22, i32 0, i32 11
  %inheritance23 = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields22, i32 0, i32 3
  %23 = load i8*, i8** %inheritance23, align 8
  call void @eFree(i8* %23)
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %if.end18
  %24 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %slot.addr, align 8
  %extensionFields25 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %24, i32 0, i32 11
  %scopeName = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields25, i32 0, i32 6
  %25 = load i8*, i8** %scopeName, align 8
  %tobool26 = icmp ne i8* %25, null
  br i1 %tobool26, label %if.then27, label %if.end30

if.then27:                                        ; preds = %if.end24
  %26 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %slot.addr, align 8
  %extensionFields28 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %26, i32 0, i32 11
  %scopeName29 = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields28, i32 0, i32 6
  %27 = load i8*, i8** %scopeName29, align 8
  call void @eFree(i8* %27)
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %if.end24
  %28 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %slot.addr, align 8
  %extensionFields31 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %28, i32 0, i32 11
  %signature = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields31, i32 0, i32 8
  %29 = load i8*, i8** %signature, align 8
  %tobool32 = icmp ne i8* %29, null
  br i1 %tobool32, label %if.then33, label %if.end36

if.then33:                                        ; preds = %if.end30
  %30 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %slot.addr, align 8
  %extensionFields34 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %30, i32 0, i32 11
  %signature35 = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields34, i32 0, i32 8
  %31 = load i8*, i8** %signature35, align 8
  call void @eFree(i8* %31)
  br label %if.end36

if.end36:                                         ; preds = %if.then33, %if.end30
  %32 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %slot.addr, align 8
  %extensionFields37 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %32, i32 0, i32 11
  %typeRef = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields37, i32 0, i32 9
  %arrayidx = getelementptr inbounds [2 x i8*], [2 x i8*]* %typeRef, i64 0, i64 0
  %33 = load i8*, i8** %arrayidx, align 8
  %tobool38 = icmp ne i8* %33, null
  br i1 %tobool38, label %if.then39, label %if.end43

if.then39:                                        ; preds = %if.end36
  %34 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %slot.addr, align 8
  %extensionFields40 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %34, i32 0, i32 11
  %typeRef41 = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields40, i32 0, i32 9
  %arrayidx42 = getelementptr inbounds [2 x i8*], [2 x i8*]* %typeRef41, i64 0, i64 0
  %35 = load i8*, i8** %arrayidx42, align 8
  call void @eFree(i8* %35)
  br label %if.end43

if.end43:                                         ; preds = %if.then39, %if.end36
  %36 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %slot.addr, align 8
  %extensionFields44 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %36, i32 0, i32 11
  %typeRef45 = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields44, i32 0, i32 9
  %arrayidx46 = getelementptr inbounds [2 x i8*], [2 x i8*]* %typeRef45, i64 0, i64 1
  %37 = load i8*, i8** %arrayidx46, align 8
  %tobool47 = icmp ne i8* %37, null
  br i1 %tobool47, label %if.then48, label %if.end52

if.then48:                                        ; preds = %if.end43
  %38 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %slot.addr, align 8
  %extensionFields49 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %38, i32 0, i32 11
  %typeRef50 = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields49, i32 0, i32 9
  %arrayidx51 = getelementptr inbounds [2 x i8*], [2 x i8*]* %typeRef50, i64 0, i64 1
  %39 = load i8*, i8** %arrayidx51, align 8
  call void @eFree(i8* %39)
  br label %if.end52

if.end52:                                         ; preds = %if.then48, %if.end43
  %40 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %slot.addr, align 8
  %extraDynamic = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %40, i32 0, i32 10
  %41 = load i8*, i8** %extraDynamic, align 8
  %tobool53 = icmp ne i8* %41, null
  br i1 %tobool53, label %if.then54, label %if.end56

if.then54:                                        ; preds = %if.end52
  %42 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %slot.addr, align 8
  %extraDynamic55 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %42, i32 0, i32 10
  %43 = load i8*, i8** %extraDynamic55, align 8
  call void @eFree(i8* %43)
  br label %if.end56

if.end56:                                         ; preds = %if.then54, %if.end52
  %44 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %slot.addr, align 8
  %sourceFileName = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %44, i32 0, i32 16
  %45 = load i8*, i8** %sourceFileName, align 8
  %tobool57 = icmp ne i8* %45, null
  br i1 %tobool57, label %if.then58, label %if.end60

if.then58:                                        ; preds = %if.end56
  %46 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %slot.addr, align 8
  %sourceFileName59 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %46, i32 0, i32 16
  %47 = load i8*, i8** %sourceFileName59, align 8
  call void @eFree(i8* %47)
  br label %if.end60

if.end60:                                         ; preds = %if.then58, %if.end56
  %48 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %slot.addr, align 8
  call void @clearParserFields(%struct.sTagEntryInfo* %48)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sTagEntryInfo* @getEntryOfNestingLevel(%struct.NestingLevel* %nl) #0 {
entry:
  %retval = alloca %struct.sTagEntryInfo*, align 8
  %nl.addr = alloca %struct.NestingLevel*, align 8
  store %struct.NestingLevel* %nl, %struct.NestingLevel** %nl.addr, align 8
  %0 = load %struct.NestingLevel*, %struct.NestingLevel** %nl.addr, align 8
  %cmp = icmp eq %struct.NestingLevel* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.sTagEntryInfo* null, %struct.sTagEntryInfo** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.NestingLevel*, %struct.NestingLevel** %nl.addr, align 8
  %corkIndex = getelementptr inbounds %struct.NestingLevel, %struct.NestingLevel* %1, i32 0, i32 0
  %2 = load i32, i32* %corkIndex, align 4
  %call = call %struct.sTagEntryInfo* @getEntryInCorkQueue(i32 %2)
  store %struct.sTagEntryInfo* %call, %struct.sTagEntryInfo** %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %retval, align 8
  ret %struct.sTagEntryInfo* %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @countEntryInCorkQueue() #0 {
entry:
  %0 = load i32, i32* getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 7, i32 2), align 4
  %conv = zext i32 %0 to i64
  ret i64 %conv
}

declare zeroext i1 @isLanguageRoleEnabled(i32, i32, i32) #1

declare zeroext i1 @doesInputLanguageAllowNullTag() #1

declare i8* @getInputFileName() #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @queueTagEntry(%struct.sTagEntryInfo* %tag) #0 {
entry:
  %tag.addr = alloca %struct.sTagEntryInfo*, align 8
  %i = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %slot = alloca %struct.sTagEntryInfo*, align 8
  store %struct.sTagEntryInfo* %tag, %struct.sTagEntryInfo** %tag.addr, align 8
  %0 = load i32, i32* getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 7, i32 2), align 4
  %1 = load i32, i32* getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 7, i32 1), align 8
  %cmp = icmp ult i32 %0, %1
  br i1 %cmp, label %if.end4, label %if.then

if.then:                                          ; preds = %entry
  %2 = load i32, i32* getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 7, i32 1), align 8
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.end, label %if.then1

if.then1:                                         ; preds = %if.then
  store i32 1, i32* getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 7, i32 1), align 8
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then
  %3 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 7, i32 0), align 8
  %4 = bitcast %struct.sTagEntryInfo* %3 to i8*
  %5 = load i32, i32* getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 7, i32 1), align 8
  %conv = zext i32 %5 to i64
  %mul = mul i64 344, %conv
  %mul2 = mul i64 %mul, 2
  %call = call i8* @eRealloc(i8* %4, i64 %mul2)
  store i8* %call, i8** %tmp, align 8
  %6 = load i32, i32* getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 7, i32 1), align 8
  %mul3 = mul i32 %6, 2
  store i32 %mul3, i32* getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 7, i32 1), align 8
  %7 = load i8*, i8** %tmp, align 8
  %8 = bitcast i8* %7 to %struct.sTagEntryInfo*
  store %struct.sTagEntryInfo* %8, %struct.sTagEntryInfo** getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 7, i32 0), align 8
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry
  %9 = load i32, i32* getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 7, i32 2), align 4
  store i32 %9, i32* %i, align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 7, i32 2), align 4
  %inc = add i32 %10, 1
  store i32 %inc, i32* getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 7, i32 2), align 4
  %11 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 7, i32 0), align 8
  %12 = load i32, i32* %i, align 4
  %idx.ext = zext i32 %12 to i64
  %add.ptr = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %11, i64 %idx.ext
  store %struct.sTagEntryInfo* %add.ptr, %struct.sTagEntryInfo** %slot, align 8
  %13 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %14 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %slot, align 8
  call void @recordTagEntryInQueue(%struct.sTagEntryInfo* %13, %struct.sTagEntryInfo* %14)
  %15 = load i32, i32* %i, align 4
  ret i32 %15
}

declare void @notifyMakeTagEntry(%struct.sTagEntryInfo*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @makeTagEntriesForSubwords(%struct.sTagEntryInfo* %subtag) #0 {
entry:
  %subtag.addr = alloca %struct.sTagEntryInfo*, align 8
  %list = alloca %struct.sPtrArray*, align 8
  %i = alloca i32, align 4
  %subword = alloca %struct.sVString*, align 8
  store %struct.sTagEntryInfo* %subtag, %struct.sTagEntryInfo** %subtag.addr, align 8
  %0 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %subtag.addr, align 8
  %extensionFields = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %0, i32 0, i32 11
  %scopeIndex = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields, i32 0, i32 7
  store i32 0, i32* %scopeIndex, align 8
  %1 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %subtag.addr, align 8
  call void @markTagExtraBit(%struct.sTagEntryInfo* %1, i32 7)
  %2 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %subtag.addr, align 8
  %name = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %2, i32 0, i32 7
  %3 = load i8*, i8** %name, align 8
  %call = call %struct.sPtrArray* @stringListNewBySplittingWordIntoSubwords(i8* %3)
  store %struct.sPtrArray* %call, %struct.sPtrArray** %list, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %5 = load %struct.sPtrArray*, %struct.sPtrArray** %list, align 8
  %call1 = call i32 @stringListCount(%struct.sPtrArray* %5)
  %cmp = icmp ult i32 %4, %call1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct.sPtrArray*, %struct.sPtrArray** %list, align 8
  %7 = load i32, i32* %i, align 4
  %call2 = call %struct.sVString* @stringListItem(%struct.sPtrArray* %6, i32 %7)
  store %struct.sVString* %call2, %struct.sVString** %subword, align 8
  %8 = load %struct.sVString*, %struct.sVString** %subword, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %8, i32 0, i32 2
  %9 = load i8*, i8** %buffer, align 8
  %10 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %subtag.addr, align 8
  %name3 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %10, i32 0, i32 7
  store i8* %9, i8** %name3, align 8
  %11 = load i32, i32* getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 6), align 8
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %12 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %subtag.addr, align 8
  %call4 = call i32 @queueTagEntry(%struct.sTagEntryInfo* %12)
  br label %if.end

if.else:                                          ; preds = %for.body
  %13 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %subtag.addr, align 8
  call void @writeTagEntry(%struct.sTagEntryInfo* %13)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load i32, i32* %i, align 4
  %inc = add i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load %struct.sPtrArray*, %struct.sPtrArray** %list, align 8
  call void @stringListDelete(%struct.sPtrArray* %15)
  ret void
}

declare %struct.sVString* @vStringNewOrClearWithAutoRelease(%struct.sVString*) #1

declare void @vStringCatS(%struct.sVString*, i8*) #1

declare i8* @scopeSeparatorFor(i32, i32, i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @isTagExtraBitMarked(%struct.sTagEntryInfo* %tag, i32 %extra) #0 {
entry:
  %retval = alloca i1, align 1
  %tag.addr = alloca %struct.sTagEntryInfo*, align 8
  %extra.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %offset = alloca i32, align 4
  %slot = alloca i8*, align 8
  store %struct.sTagEntryInfo* %tag, %struct.sTagEntryInfo** %tag.addr, align 8
  store i32 %extra, i32* %extra.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load i32, i32* %extra.addr, align 4
  %cmp = icmp slt i32 %0, 8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.end
  %1 = load i32, i32* %extra.addr, align 4
  %div = sdiv i32 %1, 8
  store i32 %div, i32* %index, align 4
  %2 = load i32, i32* %extra.addr, align 4
  %rem = srem i32 %2, 8
  store i32 %rem, i32* %offset, align 4
  %3 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %extra1 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %3, i32 0, i32 9
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %extra1, i64 0, i64 0
  store i8* %arraydecay, i8** %slot, align 8
  br label %if.end10

if.else:                                          ; preds = %do.end
  %4 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %extraDynamic = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %4, i32 0, i32 10
  %5 = load i8*, i8** %extraDynamic, align 8
  %tobool = icmp ne i8* %5, null
  br i1 %tobool, label %if.else3, label %if.then2

if.then2:                                         ; preds = %if.else
  store i1 false, i1* %retval, align 1
  br label %return

if.else3:                                         ; preds = %if.else
  br label %do.body4

do.body4:                                         ; preds = %if.else3
  br label %do.end5

do.end5:                                          ; preds = %do.body4
  %6 = load i32, i32* %extra.addr, align 4
  %sub = sub nsw i32 %6, 8
  %div6 = sdiv i32 %sub, 8
  store i32 %div6, i32* %index, align 4
  %7 = load i32, i32* %extra.addr, align 4
  %sub7 = sub nsw i32 %7, 8
  %rem8 = srem i32 %sub7, 8
  store i32 %rem8, i32* %offset, align 4
  %8 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %extraDynamic9 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %8, i32 0, i32 10
  %9 = load i8*, i8** %extraDynamic9, align 8
  store i8* %9, i8** %slot, align 8
  br label %if.end

if.end:                                           ; preds = %do.end5
  br label %if.end10

if.end10:                                         ; preds = %if.end, %if.then
  %10 = load i8*, i8** %slot, align 8
  %11 = load i32, i32* %index, align 4
  %idxprom = zext i32 %11 to i64
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %idxprom
  %12 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %12 to i32
  %13 = load i32, i32* %offset, align 4
  %shl = shl i32 1, %13
  %and = and i32 %conv, %shl
  %tobool11 = icmp ne i32 %and, 0
  %lnot = xor i1 %tobool11, true
  %lnot12 = xor i1 %lnot, true
  store i1 %lnot12, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end10, %if.then2
  %14 = load i1, i1* %retval, align 1
  ret i1 %14
}

declare void @pushLanguage(i32) #1

declare i32 @popLanguage() #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @initTagEntryFull(%struct.sTagEntryInfo* %e, i8* %name, i64 %lineNumber, i32 %langType_, [2 x i64] %filePosition.coerce, i8* %inputFileName, i32 %kindIndex, i32 %roleIndex, i8* %sourceFileName, i32 %sourceLangType, i64 %sourceLineNumberDifference) #0 {
entry:
  %filePosition = alloca %struct._MIOPos, align 8
  %e.addr = alloca %struct.sTagEntryInfo*, align 8
  %name.addr = alloca i8*, align 8
  %lineNumber.addr = alloca i64, align 8
  %langType_.addr = alloca i32, align 4
  %inputFileName.addr = alloca i8*, align 8
  %kindIndex.addr = alloca i32, align 4
  %roleIndex.addr = alloca i32, align 4
  %sourceFileName.addr = alloca i8*, align 8
  %sourceLangType.addr = alloca i32, align 4
  %sourceLineNumberDifference.addr = alloca i64, align 8
  %i = alloca i32, align 4
  %0 = bitcast %struct._MIOPos* %filePosition to [2 x i64]*
  store [2 x i64] %filePosition.coerce, [2 x i64]* %0, align 8
  store %struct.sTagEntryInfo* %e, %struct.sTagEntryInfo** %e.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i64 %lineNumber, i64* %lineNumber.addr, align 8
  store i32 %langType_, i32* %langType_.addr, align 4
  store i8* %inputFileName, i8** %inputFileName.addr, align 8
  store i32 %kindIndex, i32* %kindIndex.addr, align 4
  store i32 %roleIndex, i32* %roleIndex.addr, align 4
  store i8* %sourceFileName, i8** %sourceFileName.addr, align 8
  store i32 %sourceLangType, i32* %sourceLangType.addr, align 4
  store i64 %sourceLineNumberDifference, i64* %sourceLineNumberDifference.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %1 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %e.addr, align 8
  %2 = bitcast %struct.sTagEntryInfo* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %2, i8 0, i64 344, i1 false)
  %3 = load i32, i32* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 3), align 4
  %cmp = icmp eq i32 %3, 1
  %conv = zext i1 %cmp to i32
  %4 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %e.addr, align 8
  %5 = bitcast %struct.sTagEntryInfo* %4 to i8*
  %6 = trunc i32 %conv to i8
  %bf.load = load i8, i8* %5, align 8
  %bf.value = and i8 %6, 1
  %bf.clear = and i8 %bf.load, -2
  %bf.set = or i8 %bf.clear, %bf.value
  store i8 %bf.set, i8* %5, align 8
  %bf.result.cast = zext i8 %bf.value to i32
  %7 = load i64, i64* %lineNumber.addr, align 8
  %8 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %e.addr, align 8
  %lineNumber1 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %8, i32 0, i32 1
  store i64 %7, i64* %lineNumber1, align 8
  %9 = load i64, i64* %lineNumber.addr, align 8
  %call = call i32 @getNestedInputBoundaryInfo(i64 %9)
  %10 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %e.addr, align 8
  %boundaryInfo = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %10, i32 0, i32 3
  store i32 %call, i32* %boundaryInfo, align 8
  %11 = load i32, i32* %langType_.addr, align 4
  %12 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %e.addr, align 8
  %langType = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %12, i32 0, i32 5
  store i32 %11, i32* %langType, align 8
  %13 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %e.addr, align 8
  %filePosition2 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %13, i32 0, i32 4
  %14 = bitcast %struct._MIOPos* %filePosition2 to i8*
  %15 = bitcast %struct._MIOPos* %filePosition to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 %15, i64 16, i1 false)
  %16 = load i8*, i8** %inputFileName.addr, align 8
  %17 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %e.addr, align 8
  %inputFileName3 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %17, i32 0, i32 6
  store i8* %16, i8** %inputFileName3, align 8
  %18 = load i8*, i8** %name.addr, align 8
  %19 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %e.addr, align 8
  %name4 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %19, i32 0, i32 7
  store i8* %18, i8** %name4, align 8
  %20 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %e.addr, align 8
  %extensionFields = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %20, i32 0, i32 11
  %scopeLangType = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields, i32 0, i32 4
  store i32 -1, i32* %scopeLangType, align 8
  %21 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %e.addr, align 8
  %extensionFields5 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %21, i32 0, i32 11
  %scopeKindIndex = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields5, i32 0, i32 5
  store i32 -1, i32* %scopeKindIndex, align 4
  %22 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %e.addr, align 8
  %extensionFields6 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %22, i32 0, i32 11
  %scopeIndex = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields6, i32 0, i32 7
  store i32 0, i32* %scopeIndex, align 8
  %23 = load i32, i32* %kindIndex.addr, align 4
  %24 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %e.addr, align 8
  %kindIndex7 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %24, i32 0, i32 8
  store i32 %23, i32* %kindIndex7, align 8
  br label %do.body8

do.body8:                                         ; preds = %do.end
  br label %do.end9

do.end9:                                          ; preds = %do.body8
  br label %do.body10

do.body10:                                        ; preds = %do.end9
  br label %do.end11

do.end11:                                         ; preds = %do.body10
  %25 = load i32, i32* %roleIndex.addr, align 4
  %26 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %e.addr, align 8
  %extensionFields12 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %26, i32 0, i32 11
  %roleIndex13 = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields12, i32 0, i32 10
  store i32 %25, i32* %roleIndex13, align 8
  %27 = load i32, i32* %roleIndex.addr, align 4
  %cmp14 = icmp sgt i32 %27, -1
  br i1 %cmp14, label %if.then, label %if.end

if.then:                                          ; preds = %do.end11
  %28 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %e.addr, align 8
  call void @markTagExtraBit(%struct.sTagEntryInfo* %28, i32 4)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end11
  %call16 = call zeroext i1 @doesParserRunAsGuest()
  br i1 %call16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end
  %29 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %e.addr, align 8
  call void @markTagExtraBit(%struct.sTagEntryInfo* %29, i32 5)
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end
  %call19 = call zeroext i1 @doesSubparserRun()
  br i1 %call19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end18
  %30 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %e.addr, align 8
  call void @markTagExtraBit(%struct.sTagEntryInfo* %30, i32 6)
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end18
  %31 = load i32, i32* %sourceLangType.addr, align 4
  %32 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %e.addr, align 8
  %sourceLangType22 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %32, i32 0, i32 15
  store i32 %31, i32* %sourceLangType22, align 8
  %33 = load i8*, i8** %sourceFileName.addr, align 8
  %34 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %e.addr, align 8
  %sourceFileName23 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %34, i32 0, i32 16
  store i8* %33, i8** %sourceFileName23, align 8
  %35 = load i64, i64* %sourceLineNumberDifference.addr, align 8
  %36 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %e.addr, align 8
  %sourceLineNumberDifference24 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %36, i32 0, i32 17
  store i64 %35, i64* %sourceLineNumberDifference24, align 8
  %37 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %e.addr, align 8
  %usedParserFields = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %37, i32 0, i32 12
  store i32 0, i32* %usedParserFields, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end21
  %38 = load i32, i32* %i, align 4
  %cmp25 = icmp slt i32 %38, 5
  br i1 %cmp25, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %39 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %e.addr, align 8
  %parserFields = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %39, i32 0, i32 13
  %40 = load i32, i32* %i, align 4
  %idxprom = sext i32 %40 to i64
  %arrayidx = getelementptr inbounds [5 x %struct.sTagField], [5 x %struct.sTagField]* %parserFields, i64 0, i64 %idxprom
  %ftype = getelementptr inbounds %struct.sTagField, %struct.sTagField* %arrayidx, i32 0, i32 0
  store i32 -1, i32* %ftype, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %41 = load i32, i32* %i, align 4
  %inc = add nsw i32 %41, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call27 = call zeroext i1 @isParserMarkedNoEmission()
  br i1 %call27, label %if.then28, label %if.end32

if.then28:                                        ; preds = %for.end
  %42 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %e.addr, align 8
  %43 = bitcast %struct.sTagEntryInfo* %42 to i8*
  %bf.load29 = load i8, i8* %43, align 8
  %bf.clear30 = and i8 %bf.load29, -17
  %bf.set31 = or i8 %bf.clear30, 16
  store i8 %bf.set31, i8* %43, align 8
  br label %if.end32

if.end32:                                         ; preds = %if.then28, %for.end
  ret void
}

declare i32 @getInputLanguage() #1

declare [2 x i64] @getInputFilePosition() #1

declare i8* @getInputFileTagPath() #1

declare i8* @getSourceFileTagPath() #1

declare i32 @getSourceLanguage() #1

declare i64 @getSourceLineNumber() #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @initRefTagEntry(%struct.sTagEntryInfo* %e, i8* %name, i32 %kindIndex, i32 %roleIndex) #0 {
entry:
  %e.addr = alloca %struct.sTagEntryInfo*, align 8
  %name.addr = alloca i8*, align 8
  %kindIndex.addr = alloca i32, align 4
  %roleIndex.addr = alloca i32, align 4
  %agg.tmp = alloca %struct._MIOPos, align 8
  store %struct.sTagEntryInfo* %e, %struct.sTagEntryInfo** %e.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 %kindIndex, i32* %kindIndex.addr, align 4
  store i32 %roleIndex, i32* %roleIndex.addr, align 4
  %0 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %e.addr, align 8
  %1 = load i8*, i8** %name.addr, align 8
  %call = call i64 @getInputLineNumber()
  %call1 = call i32 @getInputLanguage()
  %call2 = call [2 x i64] @getInputFilePosition()
  %2 = bitcast %struct._MIOPos* %agg.tmp to [2 x i64]*
  store [2 x i64] %call2, [2 x i64]* %2, align 8
  %call3 = call i8* @getInputFileTagPath()
  %3 = load i32, i32* %kindIndex.addr, align 4
  %4 = load i32, i32* %roleIndex.addr, align 4
  %call4 = call i8* @getSourceFileTagPath()
  %call5 = call i32 @getSourceLanguage()
  %call6 = call i64 @getSourceLineNumber()
  %call7 = call i64 @getInputLineNumber()
  %sub = sub i64 %call6, %call7
  %5 = bitcast %struct._MIOPos* %agg.tmp to [2 x i64]*
  %6 = load [2 x i64], [2 x i64]* %5, align 8
  call void @initTagEntryFull(%struct.sTagEntryInfo* %0, i8* %1, i64 %call, i32 %call1, [2 x i64] %6, i8* %call3, i32 %3, i32 %4, i8* %call4, i32 %call5, i64 %sub)
  ret void
}

declare i32 @getNestedInputBoundaryInfo(i64) #1

declare zeroext i1 @doesParserRunAsGuest() #1

declare zeroext i1 @doesSubparserRun() #1

declare zeroext i1 @isParserMarkedNoEmission() #1

declare i32 @countXtags() #1

declare i8* @eCalloc(i64, i64) #1

declare i8* @parserTrashBoxPut(i8*, void (i8*)*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @numTagsAdded() #0 {
entry:
  %0 = load i64, i64* getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 3, i32 0), align 8
  ret i64 %0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @setNumTagsAdded(i64 %nadded) #0 {
entry:
  %nadded.addr = alloca i64, align 8
  store i64 %nadded, i64* %nadded.addr, align 8
  %0 = load i64, i64* %nadded.addr, align 8
  store i64 %0, i64* getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 3, i32 0), align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @numTagsTotal() #0 {
entry:
  %0 = load i64, i64* getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 3, i32 0), align 8
  %1 = load i64, i64* getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 3, i32 1), align 8
  %add = add i64 %0, %1
  ret i64 %add
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @maxTagsLine() #0 {
entry:
  %0 = load i64, i64* getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 4, i32 0), align 8
  ret i64 %0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @invalidatePatternCache() #0 {
entry:
  store i8 0, i8* getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 8), align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @tagFilePosition(%struct._MIOPos* %p) #0 {
entry:
  %p.addr = alloca %struct._MIOPos*, align 8
  store %struct._MIOPos* %p, %struct._MIOPos** %p.addr, align 8
  %0 = load %struct._MIO*, %struct._MIO** getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 2), align 8
  %1 = load %struct._MIOPos*, %struct._MIOPos** %p.addr, align 8
  %call = call i32 @mio_getpos(%struct._MIO* %0, %struct._MIOPos* %1)
  ret void
}

declare i32 @mio_getpos(%struct._MIO*, %struct._MIOPos*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @setTagFilePosition(%struct._MIOPos* %p) #0 {
entry:
  %p.addr = alloca %struct._MIOPos*, align 8
  store %struct._MIOPos* %p, %struct._MIOPos** %p.addr, align 8
  %0 = load %struct._MIO*, %struct._MIO** getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 2), align 8
  %1 = load %struct._MIOPos*, %struct._MIOPos** %p.addr, align 8
  %call = call i32 @mio_setpos(%struct._MIO* %0, %struct._MIOPos* %1)
  ret void
}

declare i32 @mio_setpos(%struct._MIO*, %struct._MIOPos*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @getTagFileDirectory() #0 {
entry:
  %0 = load i8*, i8** getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 1), align 8
  ret i8* %0
}

declare zeroext i1 @isPtagCommonInParsers(i32) #1

declare zeroext i1 @makePtagIfEnabled(i32, i8*) #1

declare i8* @readLineRaw(%struct.sVString*, %struct._MIO*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @isCtagsLine(i8* %line) #0 {
entry:
  %line.addr = alloca i8*, align 8
  %ok = alloca i8, align 1
  %fieldLength = alloca i64, align 8
  %fields = alloca i8*, align 8
  %numFields = alloca i32, align 4
  store i8* %line, i8** %line.addr, align 8
  store i8 0, i8* %ok, align 1
  %0 = load i8*, i8** %line.addr, align 8
  %call = call i64 @strlen(i8* %0)
  %add = add i64 %call, 1
  store i64 %add, i64* %fieldLength, align 8
  %1 = load i64, i64* %fieldLength, align 8
  %mul = mul i64 5, %1
  %mul1 = mul i64 %mul, 1
  %call2 = call i8* @eMalloc(i64 %mul1)
  store i8* %call2, i8** %fields, align 8
  %2 = load i8*, i8** %fields, align 8
  %cmp = icmp eq i8* %2, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %call3 = call i8* @getExecutableName()
  %call4 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %call3, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %4 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %call5 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i64 0, i64 0))
  %5 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %call6 = call i32 @"\01_fputs"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), %struct.__sFILE* %5)
  call void bitcast (void (...)* @ctags_cleanup to void ()*)()
  call void @exit(i32 1) #4
  unreachable

if.else:                                          ; preds = %entry
  %6 = load i8*, i8** %line.addr, align 8
  %7 = load i8*, i8** %fields, align 8
  %8 = load i64, i64* %fieldLength, align 8
  %mul7 = mul i64 0, %8
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %mul7
  %9 = load i8*, i8** %fields, align 8
  %10 = load i64, i64* %fieldLength, align 8
  %mul8 = mul i64 1, %10
  %add.ptr9 = getelementptr inbounds i8, i8* %9, i64 %mul8
  %11 = load i8*, i8** %fields, align 8
  %12 = load i64, i64* %fieldLength, align 8
  %mul10 = mul i64 2, %12
  %add.ptr11 = getelementptr inbounds i8, i8* %11, i64 %mul10
  %13 = load i8*, i8** %fields, align 8
  %14 = load i64, i64* %fieldLength, align 8
  %mul12 = mul i64 3, %14
  %add.ptr13 = getelementptr inbounds i8, i8* %13, i64 %mul12
  %15 = load i8*, i8** %fields, align 8
  %16 = load i64, i64* %fieldLength, align 8
  %mul14 = mul i64 4, %16
  %add.ptr15 = getelementptr inbounds i8, i8* %15, i64 %mul14
  %call16 = call i32 (i8*, i8*, ...) @sscanf(i8* %6, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.19, i64 0, i64 0), i8* %add.ptr, i8* %add.ptr9, i8* %add.ptr11, i8* %add.ptr13, i8* %add.ptr15)
  store i32 %call16, i32* %numFields, align 4
  %17 = load i32, i32* %numFields, align 4
  %cmp17 = icmp eq i32 %17, 5
  br i1 %cmp17, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.else
  %18 = load i8*, i8** %fields, align 8
  %19 = load i64, i64* %fieldLength, align 8
  %mul18 = mul i64 1, %19
  %add.ptr19 = getelementptr inbounds i8, i8* %18, i64 %mul18
  %call20 = call i64 @strlen(i8* %add.ptr19)
  %cmp21 = icmp eq i64 %call20, 1
  br i1 %cmp21, label %land.lhs.true22, label %if.end

land.lhs.true22:                                  ; preds = %land.lhs.true
  %20 = load i8*, i8** %fields, align 8
  %21 = load i64, i64* %fieldLength, align 8
  %mul23 = mul i64 3, %21
  %add.ptr24 = getelementptr inbounds i8, i8* %20, i64 %mul23
  %call25 = call i64 @strlen(i8* %add.ptr24)
  %cmp26 = icmp eq i64 %call25, 1
  br i1 %cmp26, label %land.lhs.true27, label %if.end

land.lhs.true27:                                  ; preds = %land.lhs.true22
  %22 = load i8*, i8** %fields, align 8
  %23 = load i64, i64* %fieldLength, align 8
  %mul28 = mul i64 0, %23
  %add.ptr29 = getelementptr inbounds i8, i8* %22, i64 %mul28
  %arrayidx = getelementptr inbounds i8, i8* %add.ptr29, i64 0
  %24 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %24 to i32
  %cmp30 = icmp ne i32 %conv, 35
  br i1 %cmp30, label %land.lhs.true32, label %if.end

land.lhs.true32:                                  ; preds = %land.lhs.true27
  %25 = load i8*, i8** %fields, align 8
  %26 = load i64, i64* %fieldLength, align 8
  %mul33 = mul i64 2, %26
  %add.ptr34 = getelementptr inbounds i8, i8* %25, i64 %mul33
  %27 = load i8*, i8** %fields, align 8
  %28 = load i64, i64* %fieldLength, align 8
  %mul35 = mul i64 2, %28
  %add.ptr36 = getelementptr inbounds i8, i8* %27, i64 %mul35
  %call37 = call i64 @strlen(i8* %add.ptr36)
  %sub = sub i64 %call37, 1
  %arrayidx38 = getelementptr inbounds i8, i8* %add.ptr34, i64 %sub
  %29 = load i8, i8* %arrayidx38, align 1
  %conv39 = sext i8 %29 to i32
  %cmp40 = icmp ne i32 %conv39, 59
  br i1 %cmp40, label %land.lhs.true42, label %if.end

land.lhs.true42:                                  ; preds = %land.lhs.true32
  %30 = load i8*, i8** %fields, align 8
  %31 = load i64, i64* %fieldLength, align 8
  %mul43 = mul i64 4, %31
  %add.ptr44 = getelementptr inbounds i8, i8* %30, i64 %mul43
  %call45 = call zeroext i1 @isValidTagAddress(i8* %add.ptr44)
  br i1 %call45, label %if.then47, label %if.end

if.then47:                                        ; preds = %land.lhs.true42
  store i8 1, i8* %ok, align 1
  br label %if.end

if.end:                                           ; preds = %if.then47, %land.lhs.true42, %land.lhs.true32, %land.lhs.true27, %land.lhs.true22, %land.lhs.true, %if.else
  %32 = load i8*, i8** %fields, align 8
  call void @eFree(i8* %32)
  br label %if.end48

if.end48:                                         ; preds = %if.end
  %33 = load i8, i8* %ok, align 1
  %tobool = trunc i8 %33 to i1
  ret i1 %tobool
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @isEtagsLine(i8* %line) #0 {
entry:
  %line.addr = alloca i8*, align 8
  %result = alloca i8, align 1
  store i8* %line, i8** %line.addr, align 8
  store i8 0, i8* %result, align 1
  %0 = load i8*, i8** %line.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 12
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %line.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %2, i64 1
  %3 = load i8, i8* %arrayidx2, align 1
  %conv3 = sext i8 %3 to i32
  %cmp4 = icmp eq i32 %conv3, 10
  br i1 %cmp4, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.then
  %4 = load i8*, i8** %line.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %4, i64 1
  %5 = load i8, i8* %arrayidx6, align 1
  %conv7 = sext i8 %5 to i32
  %cmp8 = icmp eq i32 %conv7, 13
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then
  %6 = phi i1 [ true, %if.then ], [ %cmp8, %lor.rhs ]
  %frombool = zext i1 %6 to i8
  store i8 %frombool, i8* %result, align 1
  br label %if.end

if.end:                                           ; preds = %lor.end, %entry
  %7 = load i8, i8* %result, align 1
  %tobool = trunc i8 %7 to i1
  ret i1 %tobool
}

declare i32 @sscanf(i8*, i8*, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @isValidTagAddress(i8* %excmd) #0 {
entry:
  %excmd.addr = alloca i8*, align 8
  %isValid = alloca i8, align 1
  %address = alloca i8*, align 8
  store i8* %excmd, i8** %excmd.addr, align 8
  store i8 0, i8* %isValid, align 1
  %0 = load i8*, i8** %excmd.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %1 to i32
  %call = call i8* @strchr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), i32 %conv)
  %cmp = icmp ne i8* %call, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i8 1, i8* %isValid, align 1
  br label %if.end12

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** %excmd.addr, align 8
  %call2 = call i64 @strlen(i8* %2)
  %add = add i64 %call2, 1
  %mul = mul i64 %add, 1
  %call3 = call i8* @eMalloc(i64 %mul)
  store i8* %call3, i8** %address, align 8
  %3 = load i8*, i8** %excmd.addr, align 8
  %4 = load i8*, i8** %address, align 8
  %call4 = call i32 (i8*, i8*, ...) @sscanf(i8* %3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0), i8* %4)
  %cmp5 = icmp eq i32 %call4, 1
  br i1 %cmp5, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.else
  %5 = load i8*, i8** %address, align 8
  %call7 = call i64 @strspn(i8* %5, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i64 0, i64 0))
  %6 = load i8*, i8** %address, align 8
  %call8 = call i64 @strlen(i8* %6)
  %cmp9 = icmp eq i64 %call7, %call8
  br i1 %cmp9, label %if.then11, label %if.end

if.then11:                                        ; preds = %land.lhs.true
  store i8 1, i8* %isValid, align 1
  br label %if.end

if.end:                                           ; preds = %if.then11, %land.lhs.true, %if.else
  %7 = load i8*, i8** %address, align 8
  call void @eFree(i8* %7)
  br label %if.end12

if.end12:                                         ; preds = %if.end, %if.then
  %8 = load i8, i8* %isValid, align 1
  %tobool = trunc i8 %8 to i1
  ret i1 %tobool
}

declare i8* @strchr(i8*, i32) #1

declare i64 @strspn(i8*, i8*) #1

declare i32 @sprintf(i8*, i8*, ...) #1

declare i32 @strncmp(i8*, i8*, i64) #1

declare i32 @strcmp(i8*, i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @updateSortedFlag(i8* %line, %struct._MIO* %mio, [2 x i64] %startOfLine.coerce) #0 {
entry:
  %startOfLine = alloca %struct._MIOPos, align 8
  %line.addr = alloca i8*, align 8
  %mio.addr = alloca %struct._MIO*, align 8
  %tab = alloca i8*, align 8
  %boolOffset = alloca i64, align 8
  %nextLine = alloca %struct._MIOPos, align 8
  %shouldExit = alloca i32, align 4
  %flagLocation = alloca %struct._MIOPos, align 8
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %0 = bitcast %struct._MIOPos* %startOfLine to [2 x i64]*
  store [2 x i64] %startOfLine.coerce, [2 x i64]* %0, align 8
  store i8* %line, i8** %line.addr, align 8
  store %struct._MIO* %mio, %struct._MIO** %mio.addr, align 8
  %1 = load i8*, i8** %line.addr, align 8
  %call = call i8* @strchr(i8* %1, i32 9)
  store i8* %call, i8** %tab, align 8
  %2 = load i8*, i8** %tab, align 8
  %cmp = icmp ne i8* %2, null
  br i1 %cmp, label %if.then, label %if.end53

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %tab, align 8
  %4 = load i8*, i8** %line.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %3 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %4 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add = add nsw i64 %sub.ptr.sub, 1
  store i64 %add, i64* %boolOffset, align 8
  %5 = load i8*, i8** %line.addr, align 8
  %6 = load i64, i64* %boolOffset, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %6
  %7 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %7 to i32
  %cmp1 = icmp eq i32 %conv, 48
  br i1 %cmp1, label %if.then7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %8 = load i8*, i8** %line.addr, align 8
  %9 = load i64, i64* %boolOffset, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %8, i64 %9
  %10 = load i8, i8* %arrayidx3, align 1
  %conv4 = sext i8 %10 to i32
  %cmp5 = icmp eq i32 %conv4, 49
  br i1 %cmp5, label %if.then7, label %if.end52

if.then7:                                         ; preds = %lor.lhs.false, %if.then
  %11 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %call8 = call i32 @mio_getpos(%struct._MIO* %11, %struct._MIOPos* %nextLine)
  %cmp9 = icmp eq i32 %call8, -1
  br i1 %cmp9, label %if.then15, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %if.then7
  %12 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %call12 = call i32 @mio_setpos(%struct._MIO* %12, %struct._MIOPos* %startOfLine)
  %cmp13 = icmp eq i32 %call12, -1
  br i1 %cmp13, label %if.then15, label %if.else

if.then15:                                        ; preds = %lor.lhs.false11, %if.then7
  %13 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %call16 = call i8* @getExecutableName()
  %call17 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %call16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0))
  %14 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %call18 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %14, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.27, i64 0, i64 0))
  %15 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %call19 = call i32 @"\01_fputs"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), %struct.__sFILE* %15)
  %16 = load i8, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 26), align 1
  %tobool = trunc i8 %16 to i1
  %17 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i32 1, i32 0
  store i32 %cond, i32* %shouldExit, align 4
  %18 = load i32, i32* %shouldExit, align 4
  %tobool21 = icmp ne i32 %18, 0
  br i1 %tobool21, label %if.then22, label %if.end

if.then22:                                        ; preds = %if.then15
  call void bitcast (void (...)* @ctags_cleanup to void ()*)()
  call void @exit(i32 1) #4
  unreachable

if.end:                                           ; preds = %if.then15
  br label %if.end51

if.else:                                          ; preds = %lor.lhs.false11
  br label %do.body

do.body:                                          ; preds = %land.end, %if.else
  %19 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %call23 = call i32 @mio_getc(%struct._MIO* %19)
  store i32 %call23, i32* %c, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %20 = load i32, i32* %c, align 4
  %cmp24 = icmp ne i32 %20, 9
  br i1 %cmp24, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %21 = load i32, i32* %c, align 4
  %cmp26 = icmp ne i32 %21, 10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %22 = phi i1 [ false, %do.cond ], [ %cmp26, %land.rhs ]
  br i1 %22, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  %23 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %call28 = call i32 @mio_getpos(%struct._MIO* %23, %struct._MIOPos* %flagLocation)
  %24 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %call29 = call i32 @mio_getc(%struct._MIO* %24)
  store i32 %call29, i32* %d, align 4
  %25 = load i32, i32* %c, align 4
  %cmp30 = icmp eq i32 %25, 9
  br i1 %cmp30, label %land.lhs.true, label %if.end49

land.lhs.true:                                    ; preds = %do.end
  %26 = load i32, i32* %d, align 4
  %cmp32 = icmp eq i32 %26, 48
  br i1 %cmp32, label %land.lhs.true37, label %lor.lhs.false34

lor.lhs.false34:                                  ; preds = %land.lhs.true
  %27 = load i32, i32* %d, align 4
  %cmp35 = icmp eq i32 %27, 49
  br i1 %cmp35, label %land.lhs.true37, label %if.end49

land.lhs.true37:                                  ; preds = %lor.lhs.false34, %land.lhs.true
  %28 = load i32, i32* %d, align 4
  %29 = load i32, i32* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 5), align 4
  %cmp38 = icmp ne i32 %28, %29
  br i1 %cmp38, label %if.then40, label %if.end49

if.then40:                                        ; preds = %land.lhs.true37
  %30 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %call41 = call i32 @mio_setpos(%struct._MIO* %30, %struct._MIOPos* %flagLocation)
  %31 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %32 = load i32, i32* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 5), align 4
  %cmp42 = icmp eq i32 %32, 2
  br i1 %cmp42, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then40
  br label %cond.end

cond.false:                                       ; preds = %if.then40
  %33 = load i32, i32* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 5), align 4
  %cmp44 = icmp eq i32 %33, 1
  %34 = zext i1 %cmp44 to i64
  %cond46 = select i1 %cmp44, i32 49, i32 48
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond47 = phi i32 [ 50, %cond.true ], [ %cond46, %cond.false ]
  %call48 = call i32 @mio_putc(%struct._MIO* %31, i32 %cond47)
  br label %if.end49

if.end49:                                         ; preds = %cond.end, %land.lhs.true37, %lor.lhs.false34, %do.end
  %35 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %call50 = call i32 @mio_setpos(%struct._MIO* %35, %struct._MIOPos* %nextLine)
  br label %if.end51

if.end51:                                         ; preds = %if.end49, %if.end
  br label %if.end52

if.end52:                                         ; preds = %if.end51, %lor.lhs.false
  br label %if.end53

if.end53:                                         ; preds = %if.end52, %entry
  ret void
}

declare i32 @mio_getc(%struct._MIO*) #1

declare i32 @mio_putc(%struct._MIO*, i32) #1

declare i32 @stringListCount(%struct.sPtrArray*) #1

declare %struct.sVString* @stringListItem(%struct.sPtrArray*, i32) #1

declare %struct.__sFILE* @mio_file_get_fp(%struct._MIO*) #1

declare i32 @truncate(i8*, i64) #1

declare i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @internalSortTagFile() #0 {
entry:
  %mio = alloca %struct._MIO*, align 8
  %0 = load i8, i8* @TagsToStdout, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._MIO*, %struct._MIO** getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 2), align 8
  store %struct._MIO* %1, %struct._MIO** %mio, align 8
  %2 = load %struct._MIO*, %struct._MIO** %mio, align 8
  %call = call i32 @mio_seek(%struct._MIO* %2, i64 0, i32 0)
  br label %if.end4

if.else:                                          ; preds = %entry
  %call1 = call i8* @tagFileName()
  %call2 = call %struct._MIO* @mio_new_file(i8* %call1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0))
  store %struct._MIO* %call2, %struct._MIO** %mio, align 8
  %3 = load %struct._MIO*, %struct._MIO** %mio, align 8
  %cmp = icmp eq %struct._MIO* %3, null
  br i1 %cmp, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.else
  %4 = load %struct._MIO*, %struct._MIO** %mio, align 8
  call void @failedSort(%struct._MIO* %4, i8* null)
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.else
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then
  %5 = load i8, i8* @TagsToStdout, align 1
  %tobool5 = trunc i8 %5 to i1
  %6 = load %struct._MIO*, %struct._MIO** %mio, align 8
  %7 = load i64, i64* getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 3, i32 0), align 8
  %8 = load i64, i64* getelementptr inbounds (%struct.eTagFile, %struct.eTagFile* @TagFile, i32 0, i32 3, i32 1), align 8
  %add = add i64 %7, %8
  call void @internalSortTags(i1 zeroext %tobool5, %struct._MIO* %6, i64 %add)
  %9 = load i8, i8* @TagsToStdout, align 1
  %tobool6 = trunc i8 %9 to i1
  br i1 %tobool6, label %if.end9, label %if.then7

if.then7:                                         ; preds = %if.end4
  %10 = load %struct._MIO*, %struct._MIO** %mio, align 8
  %call8 = call i32 @mio_free(%struct._MIO* %10)
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end4
  ret void
}

declare void @catFile(%struct._MIO*) #1

declare void @failedSort(%struct._MIO*, i8*) #1

declare void @internalSortTags(i1 zeroext, %struct._MIO*, i64) #1

declare %struct.sPtrArray* @stringListNew() #1

declare %struct.sVString* @vStringNewInit(i8*) #1

declare void @stringListAdd(%struct.sPtrArray*, %struct.sVString*) #1

declare %struct.sVString* @stringListLast(%struct.sPtrArray*) #1

declare void @vStringCat(%struct.sVString*, %struct.sVString*) #1

declare void @stringListRemoveLast(%struct.sPtrArray*) #1

declare void @stringListDelete(%struct.sPtrArray*) #1

declare i32 @memcmp(i8*, i8*, i64) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i64 @appendInputLine(i32 (i8, i8*)* %putc_func, i8* %line, i8* %data, i8* %omitted) #0 {
entry:
  %putc_func.addr = alloca i32 (i8, i8*)*, align 8
  %line.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  %omitted.addr = alloca i8*, align 8
  %length = alloca i64, align 8
  %p = alloca i8*, align 8
  %next = alloca i32, align 4
  %c = alloca i32, align 4
  store i32 (i8, i8*)* %putc_func, i32 (i8, i8*)** %putc_func.addr, align 8
  store i8* %line, i8** %line.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i8* %omitted, i8** %omitted.addr, align 8
  store i64 0, i64* %length, align 8
  %0 = load i8*, i8** %omitted.addr, align 8
  store i8 0, i8* %0, align 1
  %1 = load i8*, i8** %line.addr, align 8
  store i8* %1, i8** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i8*, i8** %p, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 1
  %5 = load i8, i8* %add.ptr, align 1
  %conv2 = sext i8 %5 to i32
  store i32 %conv2, i32* %next, align 4
  %6 = load i8*, i8** %p, align 8
  %7 = load i8, i8* %6, align 1
  %conv3 = sext i8 %7 to i32
  store i32 %conv3, i32* %c, align 4
  %8 = load i32, i32* %c, align 4
  %cmp4 = icmp eq i32 %8, 13
  br i1 %cmp4, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %9 = load i32, i32* %c, align 4
  %cmp6 = icmp eq i32 %9, 10
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body
  br label %for.end

if.end:                                           ; preds = %lor.lhs.false
  %10 = load i32, i32* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 27), align 4
  %cmp8 = icmp ne i32 %10, 0
  br i1 %cmp8, label %land.lhs.true, label %if.end14

land.lhs.true:                                    ; preds = %if.end
  %11 = load i64, i64* %length, align 8
  %12 = load i32, i32* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 27), align 4
  %conv10 = zext i32 %12 to i64
  %cmp11 = icmp uge i64 %11, %conv10
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %land.lhs.true
  %13 = load i8*, i8** %omitted.addr, align 8
  store i8 1, i8* %13, align 1
  br label %for.end

if.end14:                                         ; preds = %land.lhs.true, %if.end
  %14 = load i32, i32* %c, align 4
  %cmp15 = icmp eq i32 %14, 92
  br i1 %cmp15, label %if.then30, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %if.end14
  %15 = load i32, i32* %c, align 4
  %16 = load i8, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 1), align 1
  %tobool = trunc i8 %16 to i1
  %17 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i32 63, i32 47
  %cmp19 = icmp eq i32 %15, %cond
  br i1 %cmp19, label %if.then30, label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %lor.lhs.false17
  %18 = load i32, i32* %c, align 4
  %cmp22 = icmp eq i32 %18, 36
  br i1 %cmp22, label %land.lhs.true24, label %if.end31

land.lhs.true24:                                  ; preds = %lor.lhs.false21
  %19 = load i32, i32* %next, align 4
  %cmp25 = icmp eq i32 %19, 10
  br i1 %cmp25, label %if.then30, label %lor.lhs.false27

lor.lhs.false27:                                  ; preds = %land.lhs.true24
  %20 = load i32, i32* %next, align 4
  %cmp28 = icmp eq i32 %20, 13
  br i1 %cmp28, label %if.then30, label %if.end31

if.then30:                                        ; preds = %lor.lhs.false27, %land.lhs.true24, %lor.lhs.false17, %if.end14
  %21 = load i32 (i8, i8*)*, i32 (i8, i8*)** %putc_func.addr, align 8
  %22 = load i8*, i8** %data.addr, align 8
  %call = call i32 %21(i8 signext 92, i8* %22)
  %23 = load i64, i64* %length, align 8
  %inc = add i64 %23, 1
  store i64 %inc, i64* %length, align 8
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %lor.lhs.false27, %lor.lhs.false21
  %24 = load i32 (i8, i8*)*, i32 (i8, i8*)** %putc_func.addr, align 8
  %25 = load i32, i32* %c, align 4
  %conv32 = trunc i32 %25 to i8
  %26 = load i8*, i8** %data.addr, align 8
  %call33 = call i32 %24(i8 signext %conv32, i8* %26)
  %27 = load i64, i64* %length, align 8
  %inc34 = add i64 %27, 1
  store i64 %inc34, i64* %length, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end31
  %28 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then13, %if.then, %for.cond
  %29 = load i64, i64* %length, align 8
  ret i64 %29
}

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

declare void @vStringResize(%struct.sVString*, i64) #1

declare %struct.sPtrArray* @ptrArrayNew(void (i8*)*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @tagFieldDelete(%struct.sTagField* %f) #0 {
entry:
  %f.addr = alloca %struct.sTagField*, align 8
  store %struct.sTagField* %f, %struct.sTagField** %f.addr, align 8
  %0 = load %struct.sTagField*, %struct.sTagField** %f.addr, align 8
  %valueOwner = getelementptr inbounds %struct.sTagField, %struct.sTagField* %0, i32 0, i32 2
  %1 = load i8, i8* %valueOwner, align 8
  %tobool = trunc i8 %1 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.sTagField*, %struct.sTagField** %f.addr, align 8
  %value = getelementptr inbounds %struct.sTagField, %struct.sTagField* %2, i32 0, i32 1
  %3 = load i8*, i8** %value, align 8
  call void @eFree(i8* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.sTagField*, %struct.sTagField** %f.addr, align 8
  %5 = bitcast %struct.sTagField* %4 to i8*
  call void @eFree(i8* %5)
  ret void
}

declare void @ptrArrayDelete(%struct.sPtrArray*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct.sTagField* @tagFieldNew(i32 %ftype, i8* %value, i1 zeroext %valueOwner) #0 {
entry:
  %ftype.addr = alloca i32, align 4
  %value.addr = alloca i8*, align 8
  %valueOwner.addr = alloca i8, align 1
  %f = alloca %struct.sTagField*, align 8
  store i32 %ftype, i32* %ftype.addr, align 4
  store i8* %value, i8** %value.addr, align 8
  %frombool = zext i1 %valueOwner to i8
  store i8 %frombool, i8* %valueOwner.addr, align 1
  %call = call i8* @eMalloc(i64 24)
  %0 = bitcast i8* %call to %struct.sTagField*
  store %struct.sTagField* %0, %struct.sTagField** %f, align 8
  %1 = load i32, i32* %ftype.addr, align 4
  %2 = load %struct.sTagField*, %struct.sTagField** %f, align 8
  %ftype1 = getelementptr inbounds %struct.sTagField, %struct.sTagField* %2, i32 0, i32 0
  store i32 %1, i32* %ftype1, align 8
  %3 = load i8*, i8** %value.addr, align 8
  %4 = load %struct.sTagField*, %struct.sTagField** %f, align 8
  %value2 = getelementptr inbounds %struct.sTagField, %struct.sTagField* %4, i32 0, i32 1
  store i8* %3, i8** %value2, align 8
  %5 = load i8, i8* %valueOwner.addr, align 1
  %tobool = trunc i8 %5 to i1
  %6 = load %struct.sTagField*, %struct.sTagField** %f, align 8
  %valueOwner3 = getelementptr inbounds %struct.sTagField, %struct.sTagField* %6, i32 0, i32 2
  %frombool4 = zext i1 %tobool to i8
  store i8 %frombool4, i8* %valueOwner3, align 8
  %7 = load %struct.sTagField*, %struct.sTagField** %f, align 8
  ret %struct.sTagField* %7
}

declare void @ptrArrayAdd(%struct.sPtrArray*, i8*) #1

declare zeroext i1 @isLanguageKindEnabled(i32, i32) #1

declare void @writerBuildFqTagCache(%struct.sTagEntryInfo*) #1

declare i32 @writerWriteTag(%struct._MIO*, %struct.sTagEntryInfo*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @clearParserFields(%struct.sTagEntryInfo* %tag) #0 {
entry:
  %tag.addr = alloca %struct.sTagEntryInfo*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %value = alloca i8*, align 8
  store %struct.sTagEntryInfo* %tag, %struct.sTagEntryInfo** %tag.addr, align 8
  %0 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %usedParserFields = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %0, i32 0, i32 12
  %1 = load i32, i32* %usedParserFields, align 8
  %cmp = icmp ult i32 %1, 5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %usedParserFields1 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %2, i32 0, i32 12
  %3 = load i32, i32* %usedParserFields1, align 8
  store i32 %3, i32* %n, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 5, i32* %n, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %n, align 4
  %cmp2 = icmp ult i32 %4, %5
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %parserFields = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %6, i32 0, i32 13
  %7 = load i32, i32* %i, align 4
  %idxprom = zext i32 %7 to i64
  %arrayidx = getelementptr inbounds [5 x %struct.sTagField], [5 x %struct.sTagField]* %parserFields, i64 0, i64 %idxprom
  %value3 = getelementptr inbounds %struct.sTagField, %struct.sTagField* %arrayidx, i32 0, i32 1
  %8 = load i8*, i8** %value3, align 8
  store i8* %8, i8** %value, align 8
  %9 = load i8*, i8** %value, align 8
  %tobool = icmp ne i8* %9, null
  br i1 %tobool, label %land.lhs.true, label %if.end9

land.lhs.true:                                    ; preds = %for.body
  %10 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %parserFields4 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %10, i32 0, i32 13
  %11 = load i32, i32* %i, align 4
  %idxprom5 = zext i32 %11 to i64
  %arrayidx6 = getelementptr inbounds [5 x %struct.sTagField], [5 x %struct.sTagField]* %parserFields4, i64 0, i64 %idxprom5
  %valueOwner = getelementptr inbounds %struct.sTagField, %struct.sTagField* %arrayidx6, i32 0, i32 2
  %12 = load i8, i8* %valueOwner, align 8
  %tobool7 = trunc i8 %12 to i1
  br i1 %tobool7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %land.lhs.true
  %13 = load i8*, i8** %value, align 8
  call void @eFree(i8* %13)
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %land.lhs.true, %for.body
  %14 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %parserFields10 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %14, i32 0, i32 13
  %15 = load i32, i32* %i, align 4
  %idxprom11 = zext i32 %15 to i64
  %arrayidx12 = getelementptr inbounds [5 x %struct.sTagField], [5 x %struct.sTagField]* %parserFields10, i64 0, i64 %idxprom11
  %value13 = getelementptr inbounds %struct.sTagField, %struct.sTagField* %arrayidx12, i32 0, i32 1
  store i8* null, i8** %value13, align 8
  %16 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %parserFields14 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %16, i32 0, i32 13
  %17 = load i32, i32* %i, align 4
  %idxprom15 = zext i32 %17 to i64
  %arrayidx16 = getelementptr inbounds [5 x %struct.sTagField], [5 x %struct.sTagField]* %parserFields14, i64 0, i64 %idxprom15
  %ftype = getelementptr inbounds %struct.sTagField, %struct.sTagField* %arrayidx16, i32 0, i32 0
  store i32 -1, i32* %ftype, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end9
  %18 = load i32, i32* %i, align 4
  %inc = add i32 %18, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %parserFieldsDynamic = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %19, i32 0, i32 14
  %20 = load %struct.sPtrArray*, %struct.sPtrArray** %parserFieldsDynamic, align 8
  %tobool17 = icmp ne %struct.sPtrArray* %20, null
  br i1 %tobool17, label %if.then18, label %if.end21

if.then18:                                        ; preds = %for.end
  %21 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %parserFieldsDynamic19 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %21, i32 0, i32 14
  %22 = load %struct.sPtrArray*, %struct.sPtrArray** %parserFieldsDynamic19, align 8
  call void @ptrArrayDelete(%struct.sPtrArray* %22)
  %23 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %parserFieldsDynamic20 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %23, i32 0, i32 14
  store %struct.sPtrArray* null, %struct.sPtrArray** %parserFieldsDynamic20, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %for.end
  ret void
}

declare i8* @eRealloc(i8*, i64) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @recordTagEntryInQueue(%struct.sTagEntryInfo* %tag, %struct.sTagEntryInfo* %slot) #0 {
entry:
  %tag.addr = alloca %struct.sTagEntryInfo*, align 8
  %slot.addr = alloca %struct.sTagEntryInfo*, align 8
  %n = alloca i32, align 4
  store %struct.sTagEntryInfo* %tag, %struct.sTagEntryInfo** %tag.addr, align 8
  store %struct.sTagEntryInfo* %slot, %struct.sTagEntryInfo** %slot.addr, align 8
  %0 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %slot.addr, align 8
  %1 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %2 = bitcast %struct.sTagEntryInfo* %0 to i8*
  %3 = bitcast %struct.sTagEntryInfo* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %2, i8* align 8 %3, i64 344, i1 false)
  %4 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %slot.addr, align 8
  %pattern = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %4, i32 0, i32 2
  %5 = load i8*, i8** %pattern, align 8
  %tobool = icmp ne i8* %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %slot.addr, align 8
  %pattern1 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %6, i32 0, i32 2
  %7 = load i8*, i8** %pattern1, align 8
  %call = call i8* @eStrdup(i8* %7)
  %8 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %slot.addr, align 8
  %pattern2 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %8, i32 0, i32 2
  store i8* %call, i8** %pattern2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %slot.addr, align 8
  %inputFileName = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %9, i32 0, i32 6
  %10 = load i8*, i8** %inputFileName, align 8
  %call3 = call i8* @eStrdup(i8* %10)
  %11 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %slot.addr, align 8
  %inputFileName4 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %11, i32 0, i32 6
  store i8* %call3, i8** %inputFileName4, align 8
  %12 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %slot.addr, align 8
  %name = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %12, i32 0, i32 7
  %13 = load i8*, i8** %name, align 8
  %call5 = call i8* @eStrdup(i8* %13)
  %14 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %slot.addr, align 8
  %name6 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %14, i32 0, i32 7
  store i8* %call5, i8** %name6, align 8
  %15 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %slot.addr, align 8
  %extensionFields = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %15, i32 0, i32 11
  %access = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields, i32 0, i32 0
  %16 = load i8*, i8** %access, align 8
  %tobool7 = icmp ne i8* %16, null
  br i1 %tobool7, label %if.then8, label %if.end14

if.then8:                                         ; preds = %if.end
  %17 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %slot.addr, align 8
  %extensionFields9 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %17, i32 0, i32 11
  %access10 = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields9, i32 0, i32 0
  %18 = load i8*, i8** %access10, align 8
  %call11 = call i8* @eStrdup(i8* %18)
  %19 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %slot.addr, align 8
  %extensionFields12 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %19, i32 0, i32 11
  %access13 = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields12, i32 0, i32 0
  store i8* %call11, i8** %access13, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then8, %if.end
  %20 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %slot.addr, align 8
  %extensionFields15 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %20, i32 0, i32 11
  %fileScope = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields15, i32 0, i32 1
  %21 = load i8*, i8** %fileScope, align 8
  %tobool16 = icmp ne i8* %21, null
  br i1 %tobool16, label %if.then17, label %if.end23

if.then17:                                        ; preds = %if.end14
  %22 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %slot.addr, align 8
  %extensionFields18 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %22, i32 0, i32 11
  %fileScope19 = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields18, i32 0, i32 1
  %23 = load i8*, i8** %fileScope19, align 8
  %call20 = call i8* @eStrdup(i8* %23)
  %24 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %slot.addr, align 8
  %extensionFields21 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %24, i32 0, i32 11
  %fileScope22 = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields21, i32 0, i32 1
  store i8* %call20, i8** %fileScope22, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then17, %if.end14
  %25 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %slot.addr, align 8
  %extensionFields24 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %25, i32 0, i32 11
  %implementation = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields24, i32 0, i32 2
  %26 = load i8*, i8** %implementation, align 8
  %tobool25 = icmp ne i8* %26, null
  br i1 %tobool25, label %if.then26, label %if.end32

if.then26:                                        ; preds = %if.end23
  %27 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %slot.addr, align 8
  %extensionFields27 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %27, i32 0, i32 11
  %implementation28 = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields27, i32 0, i32 2
  %28 = load i8*, i8** %implementation28, align 8
  %call29 = call i8* @eStrdup(i8* %28)
  %29 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %slot.addr, align 8
  %extensionFields30 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %29, i32 0, i32 11
  %implementation31 = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields30, i32 0, i32 2
  store i8* %call29, i8** %implementation31, align 8
  br label %if.end32

if.end32:                                         ; preds = %if.then26, %if.end23
  %30 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %slot.addr, align 8
  %extensionFields33 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %30, i32 0, i32 11
  %inheritance = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields33, i32 0, i32 3
  %31 = load i8*, i8** %inheritance, align 8
  %tobool34 = icmp ne i8* %31, null
  br i1 %tobool34, label %if.then35, label %if.end41

if.then35:                                        ; preds = %if.end32
  %32 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %slot.addr, align 8
  %extensionFields36 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %32, i32 0, i32 11
  %inheritance37 = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields36, i32 0, i32 3
  %33 = load i8*, i8** %inheritance37, align 8
  %call38 = call i8* @eStrdup(i8* %33)
  %34 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %slot.addr, align 8
  %extensionFields39 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %34, i32 0, i32 11
  %inheritance40 = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields39, i32 0, i32 3
  store i8* %call38, i8** %inheritance40, align 8
  br label %if.end41

if.end41:                                         ; preds = %if.then35, %if.end32
  %35 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %slot.addr, align 8
  %extensionFields42 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %35, i32 0, i32 11
  %scopeName = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields42, i32 0, i32 6
  %36 = load i8*, i8** %scopeName, align 8
  %tobool43 = icmp ne i8* %36, null
  br i1 %tobool43, label %if.then44, label %if.end50

if.then44:                                        ; preds = %if.end41
  %37 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %slot.addr, align 8
  %extensionFields45 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %37, i32 0, i32 11
  %scopeName46 = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields45, i32 0, i32 6
  %38 = load i8*, i8** %scopeName46, align 8
  %call47 = call i8* @eStrdup(i8* %38)
  %39 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %slot.addr, align 8
  %extensionFields48 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %39, i32 0, i32 11
  %scopeName49 = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields48, i32 0, i32 6
  store i8* %call47, i8** %scopeName49, align 8
  br label %if.end50

if.end50:                                         ; preds = %if.then44, %if.end41
  %40 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %slot.addr, align 8
  %extensionFields51 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %40, i32 0, i32 11
  %signature = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields51, i32 0, i32 8
  %41 = load i8*, i8** %signature, align 8
  %tobool52 = icmp ne i8* %41, null
  br i1 %tobool52, label %if.then53, label %if.end59

if.then53:                                        ; preds = %if.end50
  %42 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %slot.addr, align 8
  %extensionFields54 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %42, i32 0, i32 11
  %signature55 = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields54, i32 0, i32 8
  %43 = load i8*, i8** %signature55, align 8
  %call56 = call i8* @eStrdup(i8* %43)
  %44 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %slot.addr, align 8
  %extensionFields57 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %44, i32 0, i32 11
  %signature58 = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields57, i32 0, i32 8
  store i8* %call56, i8** %signature58, align 8
  br label %if.end59

if.end59:                                         ; preds = %if.then53, %if.end50
  %45 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %slot.addr, align 8
  %extensionFields60 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %45, i32 0, i32 11
  %typeRef = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields60, i32 0, i32 9
  %arrayidx = getelementptr inbounds [2 x i8*], [2 x i8*]* %typeRef, i64 0, i64 0
  %46 = load i8*, i8** %arrayidx, align 8
  %tobool61 = icmp ne i8* %46, null
  br i1 %tobool61, label %if.then62, label %if.end70

if.then62:                                        ; preds = %if.end59
  %47 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %slot.addr, align 8
  %extensionFields63 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %47, i32 0, i32 11
  %typeRef64 = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields63, i32 0, i32 9
  %arrayidx65 = getelementptr inbounds [2 x i8*], [2 x i8*]* %typeRef64, i64 0, i64 0
  %48 = load i8*, i8** %arrayidx65, align 8
  %call66 = call i8* @eStrdup(i8* %48)
  %49 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %slot.addr, align 8
  %extensionFields67 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %49, i32 0, i32 11
  %typeRef68 = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields67, i32 0, i32 9
  %arrayidx69 = getelementptr inbounds [2 x i8*], [2 x i8*]* %typeRef68, i64 0, i64 0
  store i8* %call66, i8** %arrayidx69, align 8
  br label %if.end70

if.end70:                                         ; preds = %if.then62, %if.end59
  %50 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %slot.addr, align 8
  %extensionFields71 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %50, i32 0, i32 11
  %typeRef72 = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields71, i32 0, i32 9
  %arrayidx73 = getelementptr inbounds [2 x i8*], [2 x i8*]* %typeRef72, i64 0, i64 1
  %51 = load i8*, i8** %arrayidx73, align 8
  %tobool74 = icmp ne i8* %51, null
  br i1 %tobool74, label %if.then75, label %if.end83

if.then75:                                        ; preds = %if.end70
  %52 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %slot.addr, align 8
  %extensionFields76 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %52, i32 0, i32 11
  %typeRef77 = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields76, i32 0, i32 9
  %arrayidx78 = getelementptr inbounds [2 x i8*], [2 x i8*]* %typeRef77, i64 0, i64 1
  %53 = load i8*, i8** %arrayidx78, align 8
  %call79 = call i8* @eStrdup(i8* %53)
  %54 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %slot.addr, align 8
  %extensionFields80 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %54, i32 0, i32 11
  %typeRef81 = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields80, i32 0, i32 9
  %arrayidx82 = getelementptr inbounds [2 x i8*], [2 x i8*]* %typeRef81, i64 0, i64 1
  store i8* %call79, i8** %arrayidx82, align 8
  br label %if.end83

if.end83:                                         ; preds = %if.then75, %if.end70
  %55 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %slot.addr, align 8
  %extraDynamic = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %55, i32 0, i32 10
  %56 = load i8*, i8** %extraDynamic, align 8
  %tobool84 = icmp ne i8* %56, null
  br i1 %tobool84, label %if.then85, label %if.end94

if.then85:                                        ; preds = %if.end83
  %call86 = call i32 @countXtags()
  %sub = sub nsw i32 %call86, 8
  store i32 %sub, i32* %n, align 4
  %57 = load i32, i32* %n, align 4
  %div = sdiv i32 %57, 8
  %add = add nsw i32 %div, 1
  %conv = sext i32 %add to i64
  %call87 = call i8* @eCalloc(i64 %conv, i64 1)
  %58 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %slot.addr, align 8
  %extraDynamic88 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %58, i32 0, i32 10
  store i8* %call87, i8** %extraDynamic88, align 8
  %59 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %slot.addr, align 8
  %extraDynamic89 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %59, i32 0, i32 10
  %60 = load i8*, i8** %extraDynamic89, align 8
  %61 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %extraDynamic90 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %61, i32 0, i32 10
  %62 = load i8*, i8** %extraDynamic90, align 8
  %63 = load i32, i32* %n, align 4
  %div91 = sdiv i32 %63, 8
  %add92 = add nsw i32 %div91, 1
  %conv93 = sext i32 %add92 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %60, i8* align 1 %62, i64 %conv93, i1 false)
  br label %if.end94

if.end94:                                         ; preds = %if.then85, %if.end83
  %64 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %slot.addr, align 8
  %sourceFileName = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %64, i32 0, i32 16
  %65 = load i8*, i8** %sourceFileName, align 8
  %tobool95 = icmp ne i8* %65, null
  br i1 %tobool95, label %if.then96, label %if.end100

if.then96:                                        ; preds = %if.end94
  %66 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %slot.addr, align 8
  %sourceFileName97 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %66, i32 0, i32 16
  %67 = load i8*, i8** %sourceFileName97, align 8
  %call98 = call i8* @eStrdup(i8* %67)
  %68 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %slot.addr, align 8
  %sourceFileName99 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %68, i32 0, i32 16
  store i8* %call98, i8** %sourceFileName99, align 8
  br label %if.end100

if.end100:                                        ; preds = %if.then96, %if.end94
  %69 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %slot.addr, align 8
  %usedParserFields = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %69, i32 0, i32 12
  store i32 0, i32* %usedParserFields, align 8
  %70 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %slot.addr, align 8
  %parserFieldsDynamic = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %70, i32 0, i32 14
  store %struct.sPtrArray* null, %struct.sPtrArray** %parserFieldsDynamic, align 8
  %71 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %72 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %slot.addr, align 8
  call void @copyParserFields(%struct.sTagEntryInfo* %71, %struct.sTagEntryInfo* %72)
  %73 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %slot.addr, align 8
  %parserFieldsDynamic101 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %73, i32 0, i32 14
  %74 = load %struct.sPtrArray*, %struct.sPtrArray** %parserFieldsDynamic101, align 8
  %tobool102 = icmp ne %struct.sPtrArray* %74, null
  br i1 %tobool102, label %if.then103, label %if.end106

if.then103:                                       ; preds = %if.end100
  %75 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %slot.addr, align 8
  %parserFieldsDynamic104 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %75, i32 0, i32 14
  %76 = load %struct.sPtrArray*, %struct.sPtrArray** %parserFieldsDynamic104, align 8
  %77 = bitcast %struct.sPtrArray* %76 to i8*
  %call105 = call void (i8*)* @parserTrashBoxTakeBack(i8* %77)
  br label %if.end106

if.end106:                                        ; preds = %if.then103, %if.end100
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @copyParserFields(%struct.sTagEntryInfo* %tag, %struct.sTagEntryInfo* %slot) #0 {
entry:
  %tag.addr = alloca %struct.sTagEntryInfo*, align 8
  %slot.addr = alloca %struct.sTagEntryInfo*, align 8
  %i = alloca i32, align 4
  %value = alloca i8*, align 8
  %f = alloca %struct.sTagField*, align 8
  store %struct.sTagEntryInfo* %tag, %struct.sTagEntryInfo** %tag.addr, align 8
  store %struct.sTagEntryInfo* %slot, %struct.sTagEntryInfo** %slot.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %usedParserFields = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %1, i32 0, i32 12
  %2 = load i32, i32* %usedParserFields, align 8
  %cmp = icmp ult i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %4 = load i32, i32* %i, align 4
  %call = call %struct.sTagField* @getParserField(%struct.sTagEntryInfo* %3, i32 %4)
  store %struct.sTagField* %call, %struct.sTagField** %f, align 8
  br label %do.body

do.body:                                          ; preds = %for.body
  br label %do.end

do.end:                                           ; preds = %do.body
  %5 = load %struct.sTagField*, %struct.sTagField** %f, align 8
  %value1 = getelementptr inbounds %struct.sTagField, %struct.sTagField* %5, i32 0, i32 1
  %6 = load i8*, i8** %value1, align 8
  store i8* %6, i8** %value, align 8
  %7 = load i8*, i8** %value, align 8
  %tobool = icmp ne i8* %7, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  %8 = load i8*, i8** %value, align 8
  %call2 = call i8* @eStrdup(i8* %8)
  store i8* %call2, i8** %value, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end
  %9 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %slot.addr, align 8
  %10 = load %struct.sTagField*, %struct.sTagField** %f, align 8
  %ftype = getelementptr inbounds %struct.sTagField, %struct.sTagField* %10, i32 0, i32 0
  %11 = load i32, i32* %ftype, align 8
  %12 = load i8*, i8** %value, align 8
  call void @attachParserFieldGeneric(%struct.sTagEntryInfo* %9, i32 %11, i8* %12, i1 zeroext true)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, i32* %i, align 4
  %inc = add i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void (i8*)* @parserTrashBoxTakeBack(i8*) #1

declare %struct.sPtrArray* @stringListNewBySplittingWordIntoSubwords(i8*) #1

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
