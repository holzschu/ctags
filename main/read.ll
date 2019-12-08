; ModuleID = 'read.c'
source_filename = "read.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-ios11.0.0"

%struct.sInputFile = type { %struct.sVString*, %struct.sVString*, i8*, %struct._MIO*, %struct.sComputPos, i32, [3 x i32], i8, %struct.sInputFileInfo, %struct.sInputFileInfo, %struct.sNestedInputStreamInfo, %struct.sPtrArray*, %struct.sInputLineFposMap, %struct.sVString*, i32 }
%struct._MIO = type opaque
%struct.sComputPos = type { %struct._MIOPos, i64, i8, i32 }
%struct._MIOPos = type { i32, %union.anon }
%union.anon = type { i64 }
%struct.sInputFileInfo = type { %struct.sVString*, %struct.sVString*, i64, i64, i8, %union.sInputLangInfo }
%union.sInputLangInfo = type { %struct.sLangStack }
%struct.sLangStack = type { i32*, i32, i32 }
%struct.sNestedInputStreamInfo = type { i64, i64, i64, i64 }
%struct.sPtrArray = type opaque
%struct.sInputLineFposMap = type { %struct.sComputPos*, i32, i32 }
%struct.sVString = type { i64, i64, i8* }
%struct.sOptionValues = type { i8, i8, i8, i32, i8, i32, i8, i8, %struct.sFmtElement*, i8*, i8*, %struct.sPtrArray*, %struct.sPtrArray*, i32, i8*, i8*, i32, i8, i8, i8*, i32, i8, i8, i8, i8, i8, i8, i32, i8, i32, i32 }
%struct.sFmtElement = type opaque
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.fileStatus = type { i8*, i8, i8, i8, i8, i8, i8, i8, i64 }
%struct.sTrashBox = type opaque
%struct.regex_t = type { i32, i64, i8*, %struct.re_guts* }
%struct.re_guts = type opaque
%struct.regmatch_t = type { i64, i64 }

@File = internal global %struct.sInputFile zeroinitializer, align 8
@StartOfLine = internal global %struct.sComputPos zeroinitializer, align 8
@BackupFile = internal global %struct.sInputFile zeroinitializer, align 8
@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"cannot open \22%s\22\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"OPENING%s %s as %s language %sfile [%s%s]\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"(skipping utf-8 bom)\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"include \00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"reused\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c",required\00", align 1
@Option = external constant %struct.sOptionValues, align 8
@.str.9 = private unnamed_addr constant [18 x i8] c"NULL file pointer\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"regcomp %s in readLineFromBypassSlow: %s\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"push thin stream (%d)\0A\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"memory for mio may be exhausted\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"CLEARING thin flag(%d)\0A\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"line\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"Failure on attempt to read file\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @getInputLineNumber() #0 {
entry:
  %0 = load i64, i64* getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 8, i32 2), align 8
  ret i64 %0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @getInputLineOffset() #0 {
entry:
  %base = alloca i8*, align 8
  %ret = alloca i32, align 4
  %0 = load %struct.sVString*, %struct.sVString** getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 1), align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %0, i32 0, i32 2
  %1 = load i8*, i8** %buffer, align 8
  store i8* %1, i8** %base, align 8
  %2 = load i8*, i8** getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 2), align 8
  %3 = load i8*, i8** %base, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %2 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %4 = load i32, i32* getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 5), align 8
  %conv = zext i32 %4 to i64
  %sub = sub nsw i64 %sub.ptr.sub, %conv
  %conv1 = trunc i64 %sub to i32
  store i32 %conv1, i32* %ret, align 4
  %5 = load i32, i32* %ret, align 4
  %cmp = icmp sge i32 %5, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %6 = load i32, i32* %ret, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %6, %cond.true ], [ 0, %cond.false ]
  ret i32 %cond
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @getInputFileName() #0 {
entry:
  %retval = alloca i8*, align 8
  %0 = load %struct.sVString*, %struct.sVString** getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 8, i32 0), align 8
  %tobool = icmp ne %struct.sVString* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.sVString*, %struct.sVString** getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 8, i32 0), align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %1, i32 0, i32 2
  %2 = load i8*, i8** %buffer, align 8
  store i8* %2, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i8*, i8** %retval, align 8
  ret i8* %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define [2 x i64] @getInputFilePosition() #0 {
entry:
  %retval = alloca %struct._MIOPos, align 8
  %0 = bitcast %struct._MIOPos* %retval to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 bitcast (%struct._MIOPos* getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 4, i32 0) to i8*), i64 16, i1 false)
  %1 = bitcast %struct._MIOPos* %retval to [2 x i64]*
  %2 = load [2 x i64], [2 x i64]* %1, align 8
  ret [2 x i64] %2
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define [2 x i64] @getInputFilePositionForLine(i32 %line) #0 {
entry:
  %retval = alloca %struct._MIOPos, align 8
  %line.addr = alloca i32, align 4
  store i32 %line, i32* %line.addr, align 4
  %0 = load %struct.sComputPos*, %struct.sComputPos** getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 12, i32 0), align 8
  %1 = load i32, i32* getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 12, i32 1), align 8
  %2 = load i32, i32* %line.addr, align 4
  %sub = sub i32 %2, 1
  %cmp = icmp ugt i32 %1, %sub
  br i1 %cmp, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* %line.addr, align 4
  %cmp1 = icmp ugt i32 %3, 0
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %4 = load i32, i32* %line.addr, align 4
  %sub2 = sub i32 %4, 1
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub2, %cond.true ], [ 0, %cond.false ]
  %idxprom = zext i32 %cond to i64
  %arrayidx = getelementptr inbounds %struct.sComputPos, %struct.sComputPos* %0, i64 %idxprom
  %pos = getelementptr inbounds %struct.sComputPos, %struct.sComputPos* %arrayidx, i32 0, i32 0
  %5 = bitcast %struct._MIOPos* %retval to i8*
  %6 = bitcast %struct._MIOPos* %pos to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 8 %6, i64 16, i1 false)
  %7 = bitcast %struct._MIOPos* %retval to [2 x i64]*
  %8 = load [2 x i64], [2 x i64]* %7, align 8
  ret [2 x i64] %8
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @getInputLanguage() #0 {
entry:
  %call = call i32 @langStackTop(%struct.sLangStack* getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 8, i32 5, i32 0))
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @langStackTop(%struct.sLangStack* %langStack) #0 {
entry:
  %langStack.addr = alloca %struct.sLangStack*, align 8
  store %struct.sLangStack* %langStack, %struct.sLangStack** %langStack.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.sLangStack*, %struct.sLangStack** %langStack.addr, align 8
  %languages = getelementptr inbounds %struct.sLangStack, %struct.sLangStack* %0, i32 0, i32 0
  %1 = load i32*, i32** %languages, align 8
  %2 = load %struct.sLangStack*, %struct.sLangStack** %langStack.addr, align 8
  %count = getelementptr inbounds %struct.sLangStack, %struct.sLangStack* %2, i32 0, i32 1
  %3 = load i32, i32* %count, align 8
  %sub = sub i32 %3, 1
  %idxprom = zext i32 %sub to i64
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @getInputLanguageName() #0 {
entry:
  %call = call i32 @getInputLanguage()
  %call1 = call i8* @getLanguageName(i32 %call)
  ret i8* %call1
}

declare i8* @getLanguageName(i32) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @getInputFileTagPath() #0 {
entry:
  %0 = load %struct.sVString*, %struct.sVString** getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 8, i32 1), align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %0, i32 0, i32 2
  %1 = load i8*, i8** %buffer, align 8
  ret i8* %1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @isInputLanguage(i32 %lang) #0 {
entry:
  %lang.addr = alloca i32, align 4
  store i32 %lang, i32* %lang.addr, align 4
  %0 = load i32, i32* %lang.addr, align 4
  %call = call i32 @getInputLanguage()
  %cmp = icmp eq i32 %0, %call
  ret i1 %cmp
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @isInputHeaderFile() #0 {
entry:
  %0 = load i8, i8* getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 8, i32 4), align 8
  %tobool = trunc i8 %0 to i1
  ret i1 %tobool
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @isInputLanguageKindEnabled(i32 %kindIndex) #0 {
entry:
  %kindIndex.addr = alloca i32, align 4
  store i32 %kindIndex, i32* %kindIndex.addr, align 4
  %call = call i32 @getInputLanguage()
  %0 = load i32, i32* %kindIndex.addr, align 4
  %call1 = call zeroext i1 @isLanguageKindEnabled(i32 %call, i32 %0)
  ret i1 %call1
}

declare zeroext i1 @isLanguageKindEnabled(i32, i32) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @isInputLanguageRoleEnabled(i32 %kindIndex, i32 %roleIndex) #0 {
entry:
  %kindIndex.addr = alloca i32, align 4
  %roleIndex.addr = alloca i32, align 4
  store i32 %kindIndex, i32* %kindIndex.addr, align 4
  store i32 %roleIndex, i32* %roleIndex.addr, align 4
  %call = call i32 @getInputLanguage()
  %0 = load i32, i32* %kindIndex.addr, align 4
  %1 = load i32, i32* %roleIndex.addr, align 4
  %call1 = call zeroext i1 @isLanguageRoleEnabled(i32 %call, i32 %0, i32 %1)
  ret i1 %call1
}

declare zeroext i1 @isLanguageRoleEnabled(i32, i32, i32) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @countInputLanguageKinds() #0 {
entry:
  %call = call i32 @getInputLanguage()
  %call1 = call i32 @countLanguageKinds(i32 %call)
  ret i32 %call1
}

declare i32 @countLanguageKinds(i32) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @countInputLanguageRoles(i32 %kindIndex) #0 {
entry:
  %kindIndex.addr = alloca i32, align 4
  store i32 %kindIndex, i32* %kindIndex.addr, align 4
  %call = call i32 @getInputLanguage()
  %0 = load i32, i32* %kindIndex.addr, align 4
  %call1 = call i32 @countLanguageRoles(i32 %call, i32 %0)
  ret i32 %call1
}

declare i32 @countLanguageRoles(i32, i32) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @doesInputLanguageAllowNullTag() #0 {
entry:
  %call = call i32 @getInputLanguage()
  %call1 = call zeroext i1 @doesLanguageAllowNullTag(i32 %call)
  ret i1 %call1
}

declare zeroext i1 @doesLanguageAllowNullTag(i32) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @doesInputLanguageRequestAutomaticFQTag() #0 {
entry:
  %call = call i32 @getInputLanguage()
  %call1 = call zeroext i1 @doesLanguageRequestAutomaticFQTag(i32 %call)
  ret i1 %call1
}

declare zeroext i1 @doesLanguageRequestAutomaticFQTag(i32) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @getSourceFileTagPath() #0 {
entry:
  %0 = load %struct.sVString*, %struct.sVString** getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 9, i32 1), align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %0, i32 0, i32 2
  %1 = load i8*, i8** %buffer, align 8
  ret i8* %1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @getSourceLanguage() #0 {
entry:
  %0 = load i32, i32* bitcast (%union.sInputLangInfo* getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 9, i32 5) to i32*), align 8
  ret i32 %0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @getSourceLineNumber() #0 {
entry:
  %0 = load i64, i64* getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 9, i32 2), align 8
  ret i64 %0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @freeInputFileResources() #0 {
entry:
  store i64 0, i64* getelementptr inbounds (%struct.sComputPos, %struct.sComputPos* @StartOfLine, i32 0, i32 0, i32 1, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.sComputPos, %struct.sComputPos* @StartOfLine, i32 0, i32 0, i32 1, i32 0), align 8
  store i32 0, i32* getelementptr inbounds (%struct.sComputPos, %struct.sComputPos* @StartOfLine, i32 0, i32 0, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.sComputPos, %struct.sComputPos* @StartOfLine, i32 0, i32 1), align 8
  store i8 0, i8* getelementptr inbounds (%struct.sComputPos, %struct.sComputPos* @StartOfLine, i32 0, i32 2), align 8
  store i32 0, i32* getelementptr inbounds (%struct.sComputPos, %struct.sComputPos* @StartOfLine, i32 0, i32 3), align 4
  %0 = load %struct.sVString*, %struct.sVString** getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 0), align 8
  %cmp = icmp ne %struct.sVString* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.sVString*, %struct.sVString** getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 0), align 8
  call void @vStringDelete(%struct.sVString* %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store %struct.sVString* null, %struct.sVString** getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 0), align 8
  %2 = load %struct.sVString*, %struct.sVString** getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 1), align 8
  %cmp1 = icmp ne %struct.sVString* %2, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %3 = load %struct.sVString*, %struct.sVString** getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 1), align 8
  call void @vStringDelete(%struct.sVString* %3)
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  store %struct.sVString* null, %struct.sVString** getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 1), align 8
  store i8* null, i8** getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 2), align 8
  store %struct._MIO* null, %struct._MIO** getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 3), align 8
  call void @freeInputFileInfo(%struct.sInputFileInfo* getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 8))
  call void @freeInputFileInfo(%struct.sInputFileInfo* getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 9))
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.sComputPos* getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 4) to i8*), i8* align 8 bitcast (%struct.sComputPos* @StartOfLine to i8*), i64 32, i1 false)
  store i32 0, i32* getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 5), align 8
  store i32 0, i32* getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 6, i64 0), align 4
  store i32 0, i32* getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 6, i64 1), align 4
  store i32 0, i32* getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 6, i64 2), align 4
  store i8 0, i8* getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 7), align 8
  store %struct.sPtrArray* null, %struct.sPtrArray** getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 11), align 8
  store i64 0, i64* getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 10, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 10, i32 1), align 8
  store i64 0, i64* getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 10, i32 2), align 8
  store i64 0, i64* getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 10, i32 3), align 8
  call void @freeLineFposMap(%struct.sInputLineFposMap* getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 12))
  store i32 0, i32* getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 14), align 8
  %4 = load %struct.sVString*, %struct.sVString** getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 13), align 8
  %cmp4 = icmp ne %struct.sVString* %4, null
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  %5 = load %struct.sVString*, %struct.sVString** getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 13), align 8
  call void @vStringDelete(%struct.sVString* %5)
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end3
  store %struct.sVString* null, %struct.sVString** getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 13), align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.sInputFile* @BackupFile to i8*), i8* align 8 bitcast (%struct.sInputFile* @File to i8*), i64 272, i1 false)
  ret void
}

declare void @vStringDelete(%struct.sVString*) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @freeInputFileInfo(%struct.sInputFileInfo* %finfo) #0 {
entry:
  %finfo.addr = alloca %struct.sInputFileInfo*, align 8
  store %struct.sInputFileInfo* %finfo, %struct.sInputFileInfo** %finfo.addr, align 8
  %0 = load %struct.sInputFileInfo*, %struct.sInputFileInfo** %finfo.addr, align 8
  %name = getelementptr inbounds %struct.sInputFileInfo, %struct.sInputFileInfo* %0, i32 0, i32 0
  %1 = load %struct.sVString*, %struct.sVString** %name, align 8
  %tobool = icmp ne %struct.sVString* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.sInputFileInfo*, %struct.sInputFileInfo** %finfo.addr, align 8
  %name1 = getelementptr inbounds %struct.sInputFileInfo, %struct.sInputFileInfo* %2, i32 0, i32 0
  %3 = load %struct.sVString*, %struct.sVString** %name1, align 8
  call void @vStringDelete(%struct.sVString* %3)
  %4 = load %struct.sInputFileInfo*, %struct.sInputFileInfo** %finfo.addr, align 8
  %name2 = getelementptr inbounds %struct.sInputFileInfo, %struct.sInputFileInfo* %4, i32 0, i32 0
  store %struct.sVString* null, %struct.sVString** %name2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.sInputFileInfo*, %struct.sInputFileInfo** %finfo.addr, align 8
  %tagPath = getelementptr inbounds %struct.sInputFileInfo, %struct.sInputFileInfo* %5, i32 0, i32 1
  %6 = load %struct.sVString*, %struct.sVString** %tagPath, align 8
  %tobool3 = icmp ne %struct.sVString* %6, null
  br i1 %tobool3, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  %7 = load %struct.sInputFileInfo*, %struct.sInputFileInfo** %finfo.addr, align 8
  %tagPath5 = getelementptr inbounds %struct.sInputFileInfo, %struct.sInputFileInfo* %7, i32 0, i32 1
  %8 = load %struct.sVString*, %struct.sVString** %tagPath5, align 8
  call void @vStringDelete(%struct.sVString* %8)
  %9 = load %struct.sInputFileInfo*, %struct.sInputFileInfo** %finfo.addr, align 8
  %tagPath6 = getelementptr inbounds %struct.sInputFileInfo, %struct.sInputFileInfo* %9, i32 0, i32 1
  store %struct.sVString* null, %struct.sVString** %tagPath6, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end
  %10 = load %struct.sInputFileInfo*, %struct.sInputFileInfo** %finfo.addr, align 8
  %lineNumber = getelementptr inbounds %struct.sInputFileInfo, %struct.sInputFileInfo* %10, i32 0, i32 2
  store i64 0, i64* %lineNumber, align 8
  %11 = load %struct.sInputFileInfo*, %struct.sInputFileInfo** %finfo.addr, align 8
  %lineNumberOrigin = getelementptr inbounds %struct.sInputFileInfo, %struct.sInputFileInfo* %11, i32 0, i32 3
  store i64 0, i64* %lineNumberOrigin, align 8
  %12 = load %struct.sInputFileInfo*, %struct.sInputFileInfo** %finfo.addr, align 8
  %isHeader = getelementptr inbounds %struct.sInputFileInfo, %struct.sInputFileInfo* %12, i32 0, i32 4
  store i8 0, i8* %isHeader, align 8
  %13 = load %struct.sInputFileInfo*, %struct.sInputFileInfo** %finfo.addr, align 8
  %langInfo = getelementptr inbounds %struct.sInputFileInfo, %struct.sInputFileInfo* %13, i32 0, i32 5
  %stack = bitcast %union.sInputLangInfo* %langInfo to %struct.sLangStack*
  %count = getelementptr inbounds %struct.sLangStack, %struct.sLangStack* %stack, i32 0, i32 1
  store i32 0, i32* %count, align 8
  %14 = load %struct.sInputFileInfo*, %struct.sInputFileInfo** %finfo.addr, align 8
  %langInfo8 = getelementptr inbounds %struct.sInputFileInfo, %struct.sInputFileInfo* %14, i32 0, i32 5
  %stack9 = bitcast %union.sInputLangInfo* %langInfo8 to %struct.sLangStack*
  %size = getelementptr inbounds %struct.sLangStack, %struct.sLangStack* %stack9, i32 0, i32 2
  store i32 0, i32* %size, align 4
  %15 = load %struct.sInputFileInfo*, %struct.sInputFileInfo** %finfo.addr, align 8
  %langInfo10 = getelementptr inbounds %struct.sInputFileInfo, %struct.sInputFileInfo* %15, i32 0, i32 5
  %stack11 = bitcast %union.sInputLangInfo* %langInfo10 to %struct.sLangStack*
  %languages = getelementptr inbounds %struct.sLangStack, %struct.sLangStack* %stack11, i32 0, i32 0
  store i32* null, i32** %languages, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @freeLineFposMap(%struct.sInputLineFposMap* %lineFposMap) #0 {
entry:
  %lineFposMap.addr = alloca %struct.sInputLineFposMap*, align 8
  store %struct.sInputLineFposMap* %lineFposMap, %struct.sInputLineFposMap** %lineFposMap.addr, align 8
  %0 = load %struct.sInputLineFposMap*, %struct.sInputLineFposMap** %lineFposMap.addr, align 8
  %pos = getelementptr inbounds %struct.sInputLineFposMap, %struct.sInputLineFposMap* %0, i32 0, i32 0
  %1 = load %struct.sComputPos*, %struct.sComputPos** %pos, align 8
  %tobool = icmp ne %struct.sComputPos* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.sInputLineFposMap*, %struct.sInputLineFposMap** %lineFposMap.addr, align 8
  %pos1 = getelementptr inbounds %struct.sInputLineFposMap, %struct.sInputLineFposMap* %2, i32 0, i32 0
  %3 = load %struct.sComputPos*, %struct.sComputPos** %pos1, align 8
  %4 = bitcast %struct.sComputPos* %3 to i8*
  call void @eFree(i8* %4)
  %5 = load %struct.sInputLineFposMap*, %struct.sInputLineFposMap** %lineFposMap.addr, align 8
  %pos2 = getelementptr inbounds %struct.sInputLineFposMap, %struct.sInputLineFposMap* %5, i32 0, i32 0
  store %struct.sComputPos* null, %struct.sComputPos** %pos2, align 8
  %6 = load %struct.sInputLineFposMap*, %struct.sInputLineFposMap** %lineFposMap.addr, align 8
  %count = getelementptr inbounds %struct.sInputLineFposMap, %struct.sInputLineFposMap* %6, i32 0, i32 1
  store i32 0, i32* %count, align 8
  %7 = load %struct.sInputLineFposMap*, %struct.sInputLineFposMap** %lineFposMap.addr, align 8
  %size = getelementptr inbounds %struct.sInputLineFposMap, %struct.sInputLineFposMap* %7, i32 0, i32 2
  store i32 0, i32* %size, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @getInputFileData(i64* %size) #0 {
entry:
  %size.addr = alloca i64*, align 8
  store i64* %size, i64** %size.addr, align 8
  %0 = load %struct._MIO*, %struct._MIO** getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 3), align 8
  %1 = load i64*, i64** %size.addr, align 8
  %call = call i8* @mio_memory_get_data(%struct._MIO* %0, i64* %1)
  ret i8* %call
}

declare i8* @mio_memory_get_data(%struct._MIO*, i64*) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @getInputLineNumberForFileOffset(i64 %offset) #0 {
entry:
  %retval = alloca i64, align 8
  %offset.addr = alloca i64, align 8
  %p = alloca %struct.sComputPos*, align 8
  store i64 %offset, i64* %offset.addr, align 8
  %0 = bitcast i64* %offset.addr to i8*
  %1 = load %struct.sComputPos*, %struct.sComputPos** getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 12, i32 0), align 8
  %2 = bitcast %struct.sComputPos* %1 to i8*
  %3 = load i32, i32* getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 12, i32 1), align 8
  %conv = zext i32 %3 to i64
  %call = call i8* @bsearch(i8* %0, i8* %2, i64 %conv, i64 32, i32 (i8*, i8*)* @compoundPosForOffset)
  %4 = bitcast i8* %call to %struct.sComputPos*
  store %struct.sComputPos* %4, %struct.sComputPos** %p, align 8
  %5 = load %struct.sComputPos*, %struct.sComputPos** %p, align 8
  %cmp = icmp eq %struct.sComputPos* %5, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i64 1, i64* %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %6 = load %struct.sComputPos*, %struct.sComputPos** %p, align 8
  %7 = load %struct.sComputPos*, %struct.sComputPos** getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 12, i32 0), align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sComputPos* %6 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sComputPos* %7 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 32
  %add = add nsw i64 1, %sub.ptr.div
  store i64 %add, i64* %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then
  %8 = load i64, i64* %retval, align 8
  ret i64 %8
}

declare i8* @bsearch(i8*, i8*, i64, i64, i32 (i8*, i8*)*) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @compoundPosForOffset(i8* %oft, i8* %p) #0 {
entry:
  %retval = alloca i32, align 4
  %oft.addr = alloca i8*, align 8
  %p.addr = alloca i8*, align 8
  %offset = alloca i64, align 8
  %pos = alloca %struct.sComputPos*, align 8
  %next = alloca %struct.sComputPos*, align 8
  store i8* %oft, i8** %oft.addr, align 8
  store i8* %p, i8** %p.addr, align 8
  %0 = load i8*, i8** %oft.addr, align 8
  %1 = bitcast i8* %0 to i64*
  %2 = load i64, i64* %1, align 8
  store i64 %2, i64* %offset, align 8
  %3 = load i8*, i8** %p.addr, align 8
  %4 = bitcast i8* %3 to %struct.sComputPos*
  store %struct.sComputPos* %4, %struct.sComputPos** %pos, align 8
  %5 = load %struct.sComputPos*, %struct.sComputPos** %pos, align 8
  %6 = bitcast %struct.sComputPos* %5 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 32
  %7 = bitcast i8* %add.ptr to %struct.sComputPos*
  store %struct.sComputPos* %7, %struct.sComputPos** %next, align 8
  %8 = load i64, i64* %offset, align 8
  %9 = load %struct.sComputPos*, %struct.sComputPos** %pos, align 8
  %offset1 = getelementptr inbounds %struct.sComputPos, %struct.sComputPos* %9, i32 0, i32 1
  %10 = load i64, i64* %offset1, align 8
  %11 = load %struct.sComputPos*, %struct.sComputPos** %pos, align 8
  %crAdjustment = getelementptr inbounds %struct.sComputPos, %struct.sComputPos* %11, i32 0, i32 3
  %12 = load i32, i32* %crAdjustment, align 4
  %conv = sext i32 %12 to i64
  %sub = sub nsw i64 %10, %conv
  %cmp = icmp slt i64 %8, %sub
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %13 = load %struct.sComputPos*, %struct.sComputPos** %pos, align 8
  %offset3 = getelementptr inbounds %struct.sComputPos, %struct.sComputPos* %13, i32 0, i32 1
  %14 = load i64, i64* %offset3, align 8
  %15 = load %struct.sComputPos*, %struct.sComputPos** %pos, align 8
  %crAdjustment4 = getelementptr inbounds %struct.sComputPos, %struct.sComputPos* %15, i32 0, i32 3
  %16 = load i32, i32* %crAdjustment4, align 4
  %conv5 = sext i32 %16 to i64
  %sub6 = sub nsw i64 %14, %conv5
  %17 = load i64, i64* %offset, align 8
  %cmp7 = icmp sle i64 %sub6, %17
  br i1 %cmp7, label %land.lhs.true, label %if.else17

land.lhs.true:                                    ; preds = %if.else
  %18 = load %struct.sComputPos*, %struct.sComputPos** %pos, align 8
  %open = getelementptr inbounds %struct.sComputPos, %struct.sComputPos* %18, i32 0, i32 2
  %19 = load i8, i8* %open, align 8
  %tobool = trunc i8 %19 to i1
  br i1 %tobool, label %if.then16, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %20 = load i64, i64* %offset, align 8
  %21 = load %struct.sComputPos*, %struct.sComputPos** %next, align 8
  %offset10 = getelementptr inbounds %struct.sComputPos, %struct.sComputPos* %21, i32 0, i32 1
  %22 = load i64, i64* %offset10, align 8
  %23 = load %struct.sComputPos*, %struct.sComputPos** %next, align 8
  %crAdjustment11 = getelementptr inbounds %struct.sComputPos, %struct.sComputPos* %23, i32 0, i32 3
  %24 = load i32, i32* %crAdjustment11, align 4
  %conv12 = sext i32 %24 to i64
  %sub13 = sub nsw i64 %22, %conv12
  %cmp14 = icmp slt i64 %20, %sub13
  br i1 %cmp14, label %if.then16, label %if.else17

if.then16:                                        ; preds = %lor.lhs.false, %land.lhs.true
  store i32 0, i32* %retval, align 4
  br label %return

if.else17:                                        ; preds = %lor.lhs.false, %if.else
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else17, %if.then16, %if.then
  %25 = load i32, i32* %retval, align 4
  ret i32 %25
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct._MIO* @getMio(i8* %fileName, i8* %openMode, i1 zeroext %memStreamRequired) #0 {
entry:
  %retval = alloca %struct._MIO*, align 8
  %fileName.addr = alloca i8*, align 8
  %openMode.addr = alloca i8*, align 8
  %memStreamRequired.addr = alloca i8, align 1
  %src = alloca %struct.__sFILE*, align 8
  %st = alloca %struct.fileStatus*, align 8
  %size = alloca i64, align 8
  %data = alloca i8*, align 8
  store i8* %fileName, i8** %fileName.addr, align 8
  store i8* %openMode, i8** %openMode.addr, align 8
  %frombool = zext i1 %memStreamRequired to i8
  store i8 %frombool, i8* %memStreamRequired.addr, align 1
  %0 = load i8*, i8** %fileName.addr, align 8
  %call = call %struct.fileStatus* @eStat(i8* %0)
  store %struct.fileStatus* %call, %struct.fileStatus** %st, align 8
  %1 = load %struct.fileStatus*, %struct.fileStatus** %st, align 8
  %size1 = getelementptr inbounds %struct.fileStatus, %struct.fileStatus* %1, i32 0, i32 8
  %2 = load i64, i64* %size1, align 8
  store i64 %2, i64* %size, align 8
  %3 = load %struct.fileStatus*, %struct.fileStatus** %st, align 8
  call void @eStatFree(%struct.fileStatus* %3)
  %4 = load i8, i8* %memStreamRequired.addr, align 1
  %tobool = trunc i8 %4 to i1
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %5 = load i64, i64* %size, align 8
  %cmp = icmp ugt i64 %5, 1048576
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %6 = load i64, i64* %size, align 8
  %cmp2 = icmp eq i64 %6, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %7 = load i8*, i8** %fileName.addr, align 8
  %8 = load i8*, i8** %openMode.addr, align 8
  %call3 = call %struct._MIO* @mio_new_file(i8* %7, i8* %8)
  store %struct._MIO* %call3, %struct._MIO** %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false, %entry
  %9 = load i8*, i8** %fileName.addr, align 8
  %10 = load i8*, i8** %openMode.addr, align 8
  %call4 = call %struct.__sFILE* @"\01_fopen"(i8* %9, i8* %10)
  store %struct.__sFILE* %call4, %struct.__sFILE** %src, align 8
  %11 = load %struct.__sFILE*, %struct.__sFILE** %src, align 8
  %tobool5 = icmp ne %struct.__sFILE* %11, null
  br i1 %tobool5, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end
  store %struct._MIO* null, %struct._MIO** %retval, align 8
  br label %return

if.end7:                                          ; preds = %if.end
  %12 = load i64, i64* %size, align 8
  %call8 = call i8* @eMalloc(i64 %12)
  store i8* %call8, i8** %data, align 8
  %13 = load i8*, i8** %data, align 8
  %14 = load i64, i64* %size, align 8
  %15 = load %struct.__sFILE*, %struct.__sFILE** %src, align 8
  %call9 = call i64 @fread(i8* %13, i64 1, i64 %14, %struct.__sFILE* %15)
  %16 = load i64, i64* %size, align 8
  %cmp10 = icmp ne i64 %call9, %16
  br i1 %cmp10, label %if.then11, label %if.end16

if.then11:                                        ; preds = %if.end7
  %17 = load i8*, i8** %data, align 8
  call void @eFree(i8* %17)
  %18 = load %struct.__sFILE*, %struct.__sFILE** %src, align 8
  %call12 = call i32 @fclose(%struct.__sFILE* %18)
  %19 = load i8, i8* %memStreamRequired.addr, align 1
  %tobool13 = trunc i8 %19 to i1
  br i1 %tobool13, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.then11
  store %struct._MIO* null, %struct._MIO** %retval, align 8
  br label %return

if.else:                                          ; preds = %if.then11
  %20 = load i8*, i8** %fileName.addr, align 8
  %21 = load i8*, i8** %openMode.addr, align 8
  %call15 = call %struct._MIO* @mio_new_file(i8* %20, i8* %21)
  store %struct._MIO* %call15, %struct._MIO** %retval, align 8
  br label %return

if.end16:                                         ; preds = %if.end7
  %22 = load %struct.__sFILE*, %struct.__sFILE** %src, align 8
  %call17 = call i32 @fclose(%struct.__sFILE* %22)
  %23 = load i8*, i8** %data, align 8
  %24 = load i64, i64* %size, align 8
  %call18 = call %struct._MIO* @mio_new_memory(i8* %23, i64 %24, i8* (i8*, i64)* @eRealloc, void (i8*)* @eFree)
  store %struct._MIO* %call18, %struct._MIO** %retval, align 8
  br label %return

return:                                           ; preds = %if.end16, %if.else, %if.then14, %if.then6, %if.then
  %25 = load %struct._MIO*, %struct._MIO** %retval, align 8
  ret %struct._MIO* %25
}

declare %struct.fileStatus* @eStat(i8*) #2

declare void @eStatFree(%struct.fileStatus*) #2

declare %struct._MIO* @mio_new_file(i8*, i8*) #2

declare %struct.__sFILE* @"\01_fopen"(i8*, i8*) #2

declare i8* @eMalloc(i64) #2

declare i64 @fread(i8*, i64, i64, %struct.__sFILE*) #2

declare void @eFree(i8*) #2

declare i32 @fclose(%struct.__sFILE*) #2

declare %struct._MIO* @mio_new_memory(i8*, i64, i8* (i8*, i64)*, void (i8*)*) #2

declare i8* @eRealloc(i8*, i64) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @openInputFile(i8* %fileName, i32 %language, %struct._MIO* %mio) #0 {
entry:
  %fileName.addr = alloca i8*, align 8
  %language.addr = alloca i32, align 4
  %mio.addr = alloca %struct._MIO*, align 8
  %openMode = alloca i8*, align 8
  %opened = alloca i8, align 1
  %memStreamRequired = alloca i8, align 1
  %tmp = alloca i64, align 8
  %vStringClear_s = alloca %struct.sVString*, align 8
  store i8* %fileName, i8** %fileName.addr, align 8
  store i32 %language, i32* %language.addr, align 4
  store %struct._MIO* %mio, %struct._MIO** %mio.addr, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %openMode, align 8
  store i8 0, i8* %opened, align 1
  %0 = load %struct._MIO*, %struct._MIO** getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 3), align 8
  %cmp = icmp ne %struct._MIO* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._MIO*, %struct._MIO** getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 3), align 8
  %call = call i32 @mio_free(%struct._MIO* %1)
  store %struct._MIO* null, %struct._MIO** getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 3), align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @invalidatePatternCache()
  %2 = load %struct.sPtrArray*, %struct.sPtrArray** getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 11), align 8
  %cmp1 = icmp eq %struct.sPtrArray* %2, null
  br i1 %cmp1, label %if.then2, label %if.end5

if.then2:                                         ; preds = %if.end
  %call3 = call %struct.sPtrArray* @stringListNew()
  store %struct.sPtrArray* %call3, %struct.sPtrArray** getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 11), align 8
  %3 = load %struct.sPtrArray*, %struct.sPtrArray** getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 11), align 8
  %4 = bitcast %struct.sPtrArray* %3 to i8*
  %call4 = call i8* @trashBoxPut(%struct.sTrashBox* null, i8* %4, void (i8*)* bitcast (void (%struct.sPtrArray*)* @stringListDelete to void (i8*)*))
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end
  %5 = load %struct.sPtrArray*, %struct.sPtrArray** getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 11), align 8
  call void @stringListClear(%struct.sPtrArray* %5)
  %6 = load i32, i32* %language.addr, align 4
  %call6 = call zeroext i1 @doesParserRequireMemoryStream(i32 %6)
  %frombool = zext i1 %call6 to i8
  store i8 %frombool, i8* %memStreamRequired, align 1
  %7 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %tobool = icmp ne %struct._MIO* %7, null
  br i1 %tobool, label %if.then7, label %if.end13

if.then7:                                         ; preds = %if.end5
  %8 = load i8, i8* %memStreamRequired, align 1
  %tobool8 = trunc i8 %8 to i1
  br i1 %tobool8, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then7
  %9 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %call9 = call i8* @mio_memory_get_data(%struct._MIO* %9, i64* %tmp)
  %tobool10 = icmp ne i8* %call9, null
  br i1 %tobool10, label %if.else, label %if.then11

if.then11:                                        ; preds = %land.lhs.true
  store %struct._MIO* null, %struct._MIO** %mio.addr, align 8
  br label %if.end12

if.else:                                          ; preds = %land.lhs.true, %if.then7
  %10 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  call void @mio_rewind(%struct._MIO* %10)
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then11
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.end5
  %11 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %tobool14 = icmp ne %struct._MIO* %11, null
  br i1 %tobool14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end13
  %12 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %call15 = call %struct._MIO* @mio_ref(%struct._MIO* %12)
  br label %cond.end

cond.false:                                       ; preds = %if.end13
  %13 = load i8*, i8** %fileName.addr, align 8
  %14 = load i8, i8* %memStreamRequired, align 1
  %tobool16 = trunc i8 %14 to i1
  %call17 = call %struct._MIO* @getMio(i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i1 zeroext %tobool16)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._MIO* [ %call15, %cond.true ], [ %call17, %cond.false ]
  store %struct._MIO* %cond, %struct._MIO** getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 3), align 8
  %15 = load %struct._MIO*, %struct._MIO** getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 3), align 8
  %cmp18 = icmp eq %struct._MIO* %15, null
  br i1 %cmp18, label %if.then19, label %if.else20

if.then19:                                        ; preds = %cond.end
  %16 = load i8*, i8** %fileName.addr, align 8
  call void (i32, i8*, ...) @error(i32 6, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %16)
  br label %if.end40

if.else20:                                        ; preds = %cond.end
  store i8 1, i8* %opened, align 1
  %17 = load %struct._MIO*, %struct._MIO** getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 3), align 8
  %call21 = call zeroext i1 @checkUTF8BOM(%struct._MIO* %17, i1 zeroext true)
  %frombool22 = zext i1 %call21 to i8
  store i8 %frombool22, i8* getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 7), align 8
  %18 = load i8*, i8** %fileName.addr, align 8
  call void @setOwnerDirectoryOfInputFile(i8* %18)
  %19 = load %struct._MIO*, %struct._MIO** getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 3), align 8
  %call23 = call i32 @mio_getpos(%struct._MIO* %19, %struct._MIOPos* getelementptr inbounds (%struct.sComputPos, %struct.sComputPos* @StartOfLine, i32 0, i32 0))
  %20 = load %struct._MIO*, %struct._MIO** getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 3), align 8
  %call24 = call i32 @mio_getpos(%struct._MIO* %20, %struct._MIOPos* getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 4, i32 0))
  %21 = load %struct._MIO*, %struct._MIO** getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 3), align 8
  %call25 = call i64 @mio_tell(%struct._MIO* %21)
  store i64 %call25, i64* getelementptr inbounds (%struct.sComputPos, %struct.sComputPos* @StartOfLine, i32 0, i32 1), align 8
  store i64 %call25, i64* getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 4, i32 1), align 8
  store i8* null, i8** getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 2), align 8
  %22 = load %struct.sVString*, %struct.sVString** getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 1), align 8
  %cmp26 = icmp ne %struct.sVString* %22, null
  br i1 %cmp26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.else20
  br label %do.body

do.body:                                          ; preds = %if.then27
  %23 = load %struct.sVString*, %struct.sVString** getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 1), align 8
  store %struct.sVString* %23, %struct.sVString** %vStringClear_s, align 8
  %24 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %24, i32 0, i32 0
  store i64 0, i64* %length, align 8
  %25 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %25, i32 0, i32 2
  %26 = load i8*, i8** %buffer, align 8
  %arrayidx = getelementptr inbounds i8, i8* %26, i64 0
  store i8 0, i8* %arrayidx, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %if.end28

if.end28:                                         ; preds = %do.end, %if.else20
  %27 = load i8*, i8** %fileName.addr, align 8
  %call29 = call %struct.sVString* @vStringNewInit(i8* %27)
  %28 = load i32, i32* %language.addr, align 4
  call void @setInputFileParameters(%struct.sVString* %call29, i32 %28)
  store i64 0, i64* getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 8, i32 3), align 8
  %29 = load i64, i64* getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 8, i32 3), align 8
  store i64 %29, i64* getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 8, i32 2), align 8
  %30 = load i8*, i8** %fileName.addr, align 8
  %call30 = call %struct.sVString* @vStringNewInit(i8* %30)
  %31 = load i32, i32* %language.addr, align 4
  call void @setSourceFileParameters(%struct.sVString* %call30, i32 %31)
  store i64 0, i64* getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 9, i32 3), align 8
  %32 = load i64, i64* getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 9, i32 3), align 8
  store i64 %32, i64* getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 9, i32 2), align 8
  call void @allocLineFposMap(%struct.sInputLineFposMap* getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 12))
  store i32 0, i32* getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 14), align 8
  %33 = load i8, i8* getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 7), align 8
  %tobool31 = trunc i8 %33 to i1
  %34 = zext i1 %tobool31 to i64
  %cond32 = select i1 %tobool31, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %35 = load i8*, i8** %fileName.addr, align 8
  %36 = load i32, i32* %language.addr, align 4
  %call33 = call i8* @getLanguageName(i32 %36)
  %37 = load i8, i8* getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 8, i32 4), align 8
  %tobool34 = trunc i8 %37 to i1
  %38 = zext i1 %tobool34 to i64
  %cond35 = select i1 %tobool34, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %39 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %tobool36 = icmp ne %struct._MIO* %39, null
  %40 = zext i1 %tobool36 to i64
  %cond37 = select i1 %tobool36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0)
  %41 = load i8, i8* %memStreamRequired, align 1
  %tobool38 = trunc i8 %41 to i1
  %42 = zext i1 %tobool38 to i64
  %cond39 = select i1 %tobool38, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i8* %cond32, i8* %35, i8* %call33, i8* %cond35, i8* %cond37, i8* %cond39)
  br label %if.end40

if.end40:                                         ; preds = %if.end28, %if.then19
  %43 = load i8, i8* %opened, align 1
  %tobool41 = trunc i8 %43 to i1
  ret i1 %tobool41
}

declare i32 @mio_free(%struct._MIO*) #2

declare void @invalidatePatternCache() #2

declare %struct.sPtrArray* @stringListNew() #2

declare i8* @trashBoxPut(%struct.sTrashBox*, i8*, void (i8*)*) #2

declare void @stringListDelete(%struct.sPtrArray*) #2

declare void @stringListClear(%struct.sPtrArray*) #2

declare zeroext i1 @doesParserRequireMemoryStream(i32) #2

declare void @mio_rewind(%struct._MIO*) #2

declare %struct._MIO* @mio_ref(%struct._MIO*) #2

declare void @error(i32, i8*, ...) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @checkUTF8BOM(%struct._MIO* %mio, i1 zeroext %skipIfFound) #0 {
entry:
  %mio.addr = alloca %struct._MIO*, align 8
  %skipIfFound.addr = alloca i8, align 1
  %r = alloca i8, align 1
  store %struct._MIO* %mio, %struct._MIO** %mio.addr, align 8
  %frombool = zext i1 %skipIfFound to i8
  store i8 %frombool, i8* %skipIfFound.addr, align 1
  store i8 0, i8* %r, align 1
  %0 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %call = call i32 @mio_getc(%struct._MIO* %0)
  %cmp = icmp eq i32 239, %call
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %call1 = call i32 @mio_getc(%struct._MIO* %1)
  %cmp2 = icmp eq i32 187, %call1
  br i1 %cmp2, label %land.lhs.true3, label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %2 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %call4 = call i32 @mio_getc(%struct._MIO* %2)
  %cmp5 = icmp eq i32 191, %call4
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true3
  store i8 1, i8* %r, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true3, %land.lhs.true, %entry
  %3 = load i8, i8* %r, align 1
  %tobool = trunc i8 %3 to i1
  br i1 %tobool, label %land.lhs.true6, label %if.then8

land.lhs.true6:                                   ; preds = %if.end
  %4 = load i8, i8* %skipIfFound.addr, align 1
  %tobool7 = trunc i8 %4 to i1
  br i1 %tobool7, label %if.end9, label %if.then8

if.then8:                                         ; preds = %land.lhs.true6, %if.end
  %5 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  call void @mio_rewind(%struct._MIO* %5)
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %land.lhs.true6
  %6 = load i8, i8* %r, align 1
  %tobool10 = trunc i8 %6 to i1
  ret i1 %tobool10
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @setOwnerDirectoryOfInputFile(i8* %fileName) #0 {
entry:
  %fileName.addr = alloca i8*, align 8
  %head = alloca i8*, align 8
  %tail = alloca i8*, align 8
  %length = alloca i64, align 8
  store i8* %fileName, i8** %fileName.addr, align 8
  %0 = load i8*, i8** %fileName.addr, align 8
  store i8* %0, i8** %head, align 8
  %1 = load i8*, i8** %head, align 8
  %call = call i8* @baseFilename(i8* %1)
  store i8* %call, i8** %tail, align 8
  %2 = load %struct.sVString*, %struct.sVString** getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 0), align 8
  %cmp = icmp ne %struct.sVString* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.sVString*, %struct.sVString** getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 0), align 8
  call void @vStringDelete(%struct.sVString* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i8*, i8** %tail, align 8
  %5 = load i8*, i8** %head, align 8
  %cmp1 = icmp eq i8* %4, %5
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  store %struct.sVString* null, %struct.sVString** getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 0), align 8
  br label %if.end4

if.else:                                          ; preds = %if.end
  %6 = load i8*, i8** %tail, align 8
  %7 = load i8*, i8** %head, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %6 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %7 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub = sub nsw i64 %sub.ptr.sub, 1
  store i64 %sub, i64* %length, align 8
  %call3 = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call3, %struct.sVString** getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 0), align 8
  %8 = load %struct.sVString*, %struct.sVString** getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 0), align 8
  %9 = load i8*, i8** %fileName.addr, align 8
  %10 = load i64, i64* %length, align 8
  call void @vStringNCopyS(%struct.sVString* %8, i8* %9, i64 %10)
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then2
  ret void
}

declare i32 @mio_getpos(%struct._MIO*, %struct._MIOPos*) #2

declare i64 @mio_tell(%struct._MIO*) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @setInputFileParameters(%struct.sVString* %fileName, i32 %language) #0 {
entry:
  %fileName.addr = alloca %struct.sVString*, align 8
  %language.addr = alloca i32, align 4
  store %struct.sVString* %fileName, %struct.sVString** %fileName.addr, align 8
  store i32 %language, i32* %language.addr, align 4
  %0 = load %struct.sVString*, %struct.sVString** %fileName.addr, align 8
  %1 = load i32, i32* %language.addr, align 4
  call void @setInputFileParametersCommon(%struct.sInputFileInfo* getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 8), %struct.sVString* %0, i32 %1, void (%union.sInputLangInfo*, i32)* @pushLangOnStack, %struct.sPtrArray* null)
  ret void
}

declare %struct.sVString* @vStringNewInit(i8*) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @setSourceFileParameters(%struct.sVString* %fileName, i32 %language) #0 {
entry:
  %fileName.addr = alloca %struct.sVString*, align 8
  %language.addr = alloca i32, align 4
  store %struct.sVString* %fileName, %struct.sVString** %fileName.addr, align 8
  store i32 %language, i32* %language.addr, align 4
  %0 = load %struct.sVString*, %struct.sVString** %fileName.addr, align 8
  %1 = load i32, i32* %language.addr, align 4
  %2 = load %struct.sPtrArray*, %struct.sPtrArray** getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 11), align 8
  call void @setInputFileParametersCommon(%struct.sInputFileInfo* getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 9), %struct.sVString* %0, i32 %1, void (%union.sInputLangInfo*, i32)* @setLangToType, %struct.sPtrArray* %2)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @allocLineFposMap(%struct.sInputLineFposMap* %lineFposMap) #0 {
entry:
  %lineFposMap.addr = alloca %struct.sInputLineFposMap*, align 8
  store %struct.sInputLineFposMap* %lineFposMap, %struct.sInputLineFposMap** %lineFposMap.addr, align 8
  %call = call i8* @eCalloc(i64 256, i64 32)
  %0 = bitcast i8* %call to %struct.sComputPos*
  %1 = load %struct.sInputLineFposMap*, %struct.sInputLineFposMap** %lineFposMap.addr, align 8
  %pos = getelementptr inbounds %struct.sInputLineFposMap, %struct.sInputLineFposMap* %1, i32 0, i32 0
  store %struct.sComputPos* %0, %struct.sComputPos** %pos, align 8
  %2 = load %struct.sInputLineFposMap*, %struct.sInputLineFposMap** %lineFposMap.addr, align 8
  %size = getelementptr inbounds %struct.sInputLineFposMap, %struct.sInputLineFposMap* %2, i32 0, i32 2
  store i32 256, i32* %size, align 4
  %3 = load %struct.sInputLineFposMap*, %struct.sInputLineFposMap** %lineFposMap.addr, align 8
  %count = getelementptr inbounds %struct.sInputLineFposMap, %struct.sInputLineFposMap* %3, i32 0, i32 1
  store i32 0, i32* %count, align 8
  ret void
}

declare void @verbose(i8*, ...) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @resetInputFile(i32 %language) #0 {
entry:
  %language.addr = alloca i32, align 4
  %vStringClear_s = alloca %struct.sVString*, align 8
  store i32 %language, i32* %language.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  call void @rewindInputFile(%struct.sInputFile* @File)
  %0 = load %struct._MIO*, %struct._MIO** getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 3), align 8
  %call = call i32 @mio_getpos(%struct._MIO* %0, %struct._MIOPos* getelementptr inbounds (%struct.sComputPos, %struct.sComputPos* @StartOfLine, i32 0, i32 0))
  %1 = load %struct._MIO*, %struct._MIO** getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 3), align 8
  %call1 = call i32 @mio_getpos(%struct._MIO* %1, %struct._MIOPos* getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 4, i32 0))
  %2 = load %struct._MIO*, %struct._MIO** getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 3), align 8
  %call2 = call i64 @mio_tell(%struct._MIO* %2)
  store i64 %call2, i64* getelementptr inbounds (%struct.sComputPos, %struct.sComputPos* @StartOfLine, i32 0, i32 1), align 8
  store i64 %call2, i64* getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 4, i32 1), align 8
  store i8* null, i8** getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 2), align 8
  %3 = load %struct.sVString*, %struct.sVString** getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 1), align 8
  %cmp = icmp ne %struct.sVString* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  br label %do.body3

do.body3:                                         ; preds = %if.then
  %4 = load %struct.sVString*, %struct.sVString** getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 1), align 8
  store %struct.sVString* %4, %struct.sVString** %vStringClear_s, align 8
  %5 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %5, i32 0, i32 0
  store i64 0, i64* %length, align 8
  %6 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %6, i32 0, i32 2
  %7 = load i8*, i8** %buffer, align 8
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 0
  store i8 0, i8* %arrayidx, align 1
  br label %do.end4

do.end4:                                          ; preds = %do.body3
  br label %if.end

if.end:                                           ; preds = %do.end4, %do.end
  %8 = load i32, i32* %language.addr, align 4
  call void @resetLangOnStack(%union.sInputLangInfo* getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 8, i32 5), i32 %8)
  %9 = load i64, i64* getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 8, i32 3), align 8
  store i64 %9, i64* getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 8, i32 2), align 8
  %10 = load i32, i32* %language.addr, align 4
  call void @setLangToType(%union.sInputLangInfo* getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 9, i32 5), i32 %10)
  %11 = load i64, i64* getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 9, i32 3), align 8
  store i64 %11, i64* getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 9, i32 2), align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @rewindInputFile(%struct.sInputFile* %f) #0 {
entry:
  %f.addr = alloca %struct.sInputFile*, align 8
  %c = alloca i32, align 4
  store %struct.sInputFile* %f, %struct.sInputFile** %f.addr, align 8
  %0 = load %struct.sInputFile*, %struct.sInputFile** %f.addr, align 8
  %mio = getelementptr inbounds %struct.sInputFile, %struct.sInputFile* %0, i32 0, i32 3
  %1 = load %struct._MIO*, %struct._MIO** %mio, align 8
  call void @mio_rewind(%struct._MIO* %1)
  %2 = load %struct.sInputFile*, %struct.sInputFile** %f.addr, align 8
  %bomFound = getelementptr inbounds %struct.sInputFile, %struct.sInputFile* %2, i32 0, i32 7
  %3 = load i8, i8* %bomFound, align 8
  %tobool = trunc i8 %3 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.sInputFile*, %struct.sInputFile** %f.addr, align 8
  %mio1 = getelementptr inbounds %struct.sInputFile, %struct.sInputFile* %4, i32 0, i32 3
  %5 = load %struct._MIO*, %struct._MIO** %mio1, align 8
  %call = call i32 @mio_getc(%struct._MIO* %5)
  store i32 %call, i32* %c, align 4
  br label %do.body

do.body:                                          ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %do.body
  %6 = load %struct.sInputFile*, %struct.sInputFile** %f.addr, align 8
  %mio2 = getelementptr inbounds %struct.sInputFile, %struct.sInputFile* %6, i32 0, i32 3
  %7 = load %struct._MIO*, %struct._MIO** %mio2, align 8
  %call3 = call i32 @mio_getc(%struct._MIO* %7)
  store i32 %call3, i32* %c, align 4
  br label %do.body4

do.body4:                                         ; preds = %do.end
  br label %do.end5

do.end5:                                          ; preds = %do.body4
  %8 = load %struct.sInputFile*, %struct.sInputFile** %f.addr, align 8
  %mio6 = getelementptr inbounds %struct.sInputFile, %struct.sInputFile* %8, i32 0, i32 3
  %9 = load %struct._MIO*, %struct._MIO** %mio6, align 8
  %call7 = call i32 @mio_getc(%struct._MIO* %9)
  store i32 %call7, i32* %c, align 4
  br label %do.body8

do.body8:                                         ; preds = %do.end5
  br label %do.end9

do.end9:                                          ; preds = %do.body8
  br label %if.end

if.end:                                           ; preds = %do.end9, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @resetLangOnStack(%union.sInputLangInfo* %langInfo, i32 %lang) #0 {
entry:
  %langInfo.addr = alloca %union.sInputLangInfo*, align 8
  %lang.addr = alloca i32, align 4
  store %union.sInputLangInfo* %langInfo, %union.sInputLangInfo** %langInfo.addr, align 8
  store i32 %lang, i32* %lang.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %union.sInputLangInfo*, %union.sInputLangInfo** %langInfo.addr, align 8
  %stack = bitcast %union.sInputLangInfo* %0 to %struct.sLangStack*
  call void @langStackClear(%struct.sLangStack* %stack)
  %1 = load %union.sInputLangInfo*, %union.sInputLangInfo** %langInfo.addr, align 8
  %stack1 = bitcast %union.sInputLangInfo* %1 to %struct.sLangStack*
  %2 = load i32, i32* %lang.addr, align 4
  call void @langStackPush(%struct.sLangStack* %stack1, i32 %2)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @setLangToType(%union.sInputLangInfo* %langInfo, i32 %lang) #0 {
entry:
  %langInfo.addr = alloca %union.sInputLangInfo*, align 8
  %lang.addr = alloca i32, align 4
  store %union.sInputLangInfo* %langInfo, %union.sInputLangInfo** %langInfo.addr, align 8
  store i32 %lang, i32* %lang.addr, align 4
  %0 = load i32, i32* %lang.addr, align 4
  %1 = load %union.sInputLangInfo*, %union.sInputLangInfo** %langInfo.addr, align 8
  %type = bitcast %union.sInputLangInfo* %1 to i32*
  store i32 %0, i32* %type, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @closeInputFile() #0 {
entry:
  %status = alloca %struct.fileStatus*, align 8
  %0 = load %struct._MIO*, %struct._MIO** getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 3), align 8
  %cmp = icmp ne %struct._MIO* %0, null
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  call void @clearLangOnStack(%union.sInputLangInfo* getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 8, i32 5))
  %1 = load i8, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 21), align 4
  %tobool = trunc i8 %1 to i1
  br i1 %tobool, label %if.then1, label %if.end

if.then1:                                         ; preds = %if.then
  %2 = load %struct.sVString*, %struct.sVString** getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 8, i32 0), align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %2, i32 0, i32 2
  %3 = load i8*, i8** %buffer, align 8
  %call = call %struct.fileStatus* @eStat(i8* %3)
  store %struct.fileStatus* %call, %struct.fileStatus** %status, align 8
  %4 = load i64, i64* getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 8, i32 2), align 8
  %sub = sub i64 %4, 1
  %5 = load %struct.fileStatus*, %struct.fileStatus** %status, align 8
  %size = getelementptr inbounds %struct.fileStatus, %struct.fileStatus* %5, i32 0, i32 8
  %6 = load i64, i64* %size, align 8
  call void @addTotals(i32 0, i64 %sub, i64 %6)
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then
  %7 = load %struct._MIO*, %struct._MIO** getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 3), align 8
  %call2 = call i32 @mio_free(%struct._MIO* %7)
  store %struct._MIO* null, %struct._MIO** getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 3), align 8
  call void @freeLineFposMap(%struct.sInputLineFposMap* getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 12))
  br label %if.end3

if.end3:                                          ; preds = %if.end, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @clearLangOnStack(%union.sInputLangInfo* %langInfo) #0 {
entry:
  %langInfo.addr = alloca %union.sInputLangInfo*, align 8
  store %union.sInputLangInfo* %langInfo, %union.sInputLangInfo** %langInfo.addr, align 8
  %0 = load %union.sInputLangInfo*, %union.sInputLangInfo** %langInfo.addr, align 8
  %stack = bitcast %union.sInputLangInfo* %0 to %struct.sLangStack*
  call void @langStackClear(%struct.sLangStack* %stack)
  ret void
}

declare void @addTotals(i32, i64, i64) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @getInputFileUserData() #0 {
entry:
  %0 = load %struct._MIO*, %struct._MIO** getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 3), align 8
  %call = call i8* @mio_get_user_data(%struct._MIO* %0)
  ret i8* %call
}

declare i8* @mio_get_user_data(%struct._MIO*) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @ungetcToInputFile(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  %len = alloca i64, align 8
  store i32 %c, i32* %c.addr, align 4
  store i64 3, i64* %len, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load i32, i32* getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 5), align 8
  %conv = zext i32 %0 to i64
  %cmp = icmp ult i64 %conv, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  %1 = load i32, i32* %c.addr, align 4
  %2 = load i32, i32* getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 5), align 8
  %inc = add i32 %2, 1
  store i32 %inc, i32* getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 5), align 8
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 6), i64 0, i64 %idxprom
  store i32 %1, i32* %arrayidx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @getcFromInputFile() #0 {
entry:
  %retval = alloca i32, align 4
  %c = alloca i32, align 4
  %line = alloca %struct.sVString*, align 8
  %0 = load i32, i32* getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 5), align 8
  %cmp = icmp ugt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 5), align 8
  %dec = add i32 %1, -1
  store i32 %dec, i32* getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 5), align 8
  %idxprom = zext i32 %dec to i64
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 6), i64 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  store i32 %2, i32* %c, align 4
  %3 = load i32, i32* %c, align 4
  store i32 %3, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  %4 = load i8*, i8** getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 2), align 8
  %cmp1 = icmp ne i8* %4, null
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %do.body
  %5 = load i8*, i8** getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 2), align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 2), align 8
  %6 = load i8, i8* %5, align 1
  %conv = zext i8 %6 to i32
  store i32 %conv, i32* %c, align 4
  %7 = load i32, i32* %c, align 4
  %cmp3 = icmp eq i32 %7, 0
  br i1 %cmp3, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.then2
  store i8* null, i8** getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 2), align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.then2
  br label %if.end16

if.else:                                          ; preds = %do.body
  %call = call %struct.sVString* @iFileGetLine()
  store %struct.sVString* %call, %struct.sVString** %line, align 8
  %8 = load %struct.sVString*, %struct.sVString** %line, align 8
  %cmp7 = icmp ne %struct.sVString* %8, null
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.else
  %9 = load %struct.sVString*, %struct.sVString** %line, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %9, i32 0, i32 2
  %10 = load i8*, i8** %buffer, align 8
  store i8* %10, i8** getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 2), align 8
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.else
  %11 = load i8*, i8** getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 2), align 8
  %cmp11 = icmp eq i8* %11, null
  br i1 %cmp11, label %if.then13, label %if.else14

if.then13:                                        ; preds = %if.end10
  store i32 -1, i32* %c, align 4
  br label %if.end15

if.else14:                                        ; preds = %if.end10
  store i32 0, i32* %c, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.else14, %if.then13
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.end6
  br label %do.cond

do.cond:                                          ; preds = %if.end16
  %12 = load i32, i32* %c, align 4
  %cmp17 = icmp eq i32 %12, 0
  br i1 %cmp17, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %13 = load i32, i32* %c, align 4
  store i32 %13, i32* %retval, align 4
  br label %return

return:                                           ; preds = %do.end, %if.then
  %14 = load i32, i32* %retval, align 4
  ret i32 %14
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct.sVString* @iFileGetLine() #0 {
entry:
  %retval = alloca %struct.sVString*, align 8
  %eol = alloca i32, align 4
  %lang = alloca i32, align 4
  %use_multiline = alloca i8, align 1
  %call = call i32 @getInputLanguage()
  store i32 %call, i32* %lang, align 4
  %0 = load i32, i32* %lang, align 4
  %call1 = call zeroext i1 @hasLanguageMultilineRegexPatterns(i32 %0)
  %frombool = zext i1 %call1 to i8
  store i8 %frombool, i8* %use_multiline, align 1
  %1 = load %struct.sVString*, %struct.sVString** getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 1), align 8
  %cmp = icmp eq %struct.sVString* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call2, %struct.sVString** getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 1), align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i8, i8* %use_multiline, align 1
  %tobool = trunc i8 %2 to i1
  br i1 %tobool, label %land.lhs.true, label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %3 = load %struct.sVString*, %struct.sVString** getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 13), align 8
  %cmp3 = icmp eq %struct.sVString* %3, null
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %land.lhs.true
  %call5 = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call5, %struct.sVString** getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 13), align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %land.lhs.true, %if.end
  %4 = load %struct.sVString*, %struct.sVString** getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 1), align 8
  %5 = load %struct._MIO*, %struct._MIO** getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 3), align 8
  %call7 = call i32 @readLine(%struct.sVString* %4, %struct._MIO* %5)
  store i32 %call7, i32* %eol, align 4
  %6 = load %struct.sVString*, %struct.sVString** getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 1), align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %6, i32 0, i32 0
  %7 = load i64, i64* %length, align 8
  %cmp8 = icmp ugt i64 %7, 0
  br i1 %cmp8, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end6
  %8 = load i32, i32* %eol, align 4
  %cmp10 = icmp eq i32 %8, 2
  call void @fileNewline(i1 zeroext %cmp10)
  %9 = load %struct._MIO*, %struct._MIO** getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 3), align 8
  %call11 = call i32 @mio_getpos(%struct._MIO* %9, %struct._MIOPos* getelementptr inbounds (%struct.sComputPos, %struct.sComputPos* @StartOfLine, i32 0, i32 0))
  %10 = load %struct._MIO*, %struct._MIO** getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 3), align 8
  %call12 = call i64 @mio_tell(%struct._MIO* %10)
  store i64 %call12, i64* getelementptr inbounds (%struct.sComputPos, %struct.sComputPos* @StartOfLine, i32 0, i32 1), align 8
  %11 = load i8, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 22), align 1
  %tobool13 = trunc i8 %11 to i1
  br i1 %tobool13, label %land.lhs.true14, label %if.end20

land.lhs.true14:                                  ; preds = %if.then9
  %12 = load %struct.sVString*, %struct.sVString** getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 1), align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %12, i32 0, i32 2
  %13 = load i8*, i8** %buffer, align 8
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 0
  %14 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %14 to i32
  %cmp15 = icmp eq i32 %conv, 35
  br i1 %cmp15, label %if.then17, label %if.end20

if.then17:                                        ; preds = %land.lhs.true14
  %15 = load %struct.sVString*, %struct.sVString** getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 1), align 8
  %buffer18 = getelementptr inbounds %struct.sVString, %struct.sVString* %15, i32 0, i32 2
  %16 = load i8*, i8** %buffer18, align 8
  %add.ptr = getelementptr inbounds i8, i8* %16, i64 1
  %call19 = call zeroext i1 @parseLineDirective(i8* %add.ptr)
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %land.lhs.true14, %if.then9
  %17 = load i32, i32* %lang, align 4
  %18 = load %struct.sVString*, %struct.sVString** getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 1), align 8
  call void @matchLanguageRegex(i32 %17, %struct.sVString* %18)
  %19 = load i8, i8* %use_multiline, align 1
  %tobool21 = trunc i8 %19 to i1
  br i1 %tobool21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end20
  %20 = load %struct.sVString*, %struct.sVString** getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 13), align 8
  %21 = load %struct.sVString*, %struct.sVString** getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 1), align 8
  call void @vStringCat(%struct.sVString* %20, %struct.sVString* %21)
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.end20
  %22 = load %struct.sVString*, %struct.sVString** getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 1), align 8
  store %struct.sVString* %22, %struct.sVString** %retval, align 8
  br label %return

if.else:                                          ; preds = %if.end6
  %23 = load i8, i8* %use_multiline, align 1
  %tobool24 = trunc i8 %23 to i1
  br i1 %tobool24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.else
  %24 = load i32, i32* %lang, align 4
  %25 = load %struct.sVString*, %struct.sVString** getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 13), align 8
  call void @matchLanguageMultilineRegex(i32 %24, %struct.sVString* %25)
  %26 = load i32, i32* %lang, align 4
  %27 = load %struct.sVString*, %struct.sVString** getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 13), align 8
  call void @matchLanguageMultitableRegex(i32 %26, %struct.sVString* %27)
  %28 = load %struct.sVString*, %struct.sVString** getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 13), align 8
  call void @vStringDelete(%struct.sVString* %28)
  store %struct.sVString* null, %struct.sVString** getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 13), align 8
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.else
  store %struct.sVString* null, %struct.sVString** %retval, align 8
  br label %return

return:                                           ; preds = %if.end26, %if.end23
  %29 = load %struct.sVString*, %struct.sVString** %retval, align 8
  ret %struct.sVString* %29
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @getNthPrevCFromInputFile(i32 %nth, i32 %def) #0 {
entry:
  %retval = alloca i32, align 4
  %nth.addr = alloca i32, align 4
  %def.addr = alloca i32, align 4
  %base = alloca i8*, align 8
  %offset = alloca i32, align 4
  store i32 %nth, i32* %nth.addr, align 4
  store i32 %def, i32* %def.addr, align 4
  %0 = load %struct.sVString*, %struct.sVString** getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 1), align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %0, i32 0, i32 2
  %1 = load i8*, i8** %buffer, align 8
  store i8* %1, i8** %base, align 8
  %2 = load i32, i32* getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 5), align 8
  %add = add i32 %2, 1
  %3 = load i32, i32* %nth.addr, align 4
  %add1 = add i32 %add, %3
  store i32 %add1, i32* %offset, align 4
  %4 = load i8*, i8** getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 2), align 8
  %cmp = icmp ne i8* %4, null
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %5 = load i8*, i8** getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 2), align 8
  %6 = load i8*, i8** %base, align 8
  %7 = load i32, i32* %offset, align 4
  %idx.ext = zext i32 %7 to i64
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %idx.ext
  %cmp2 = icmp uge i8* %5, %add.ptr
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %8 = load i8*, i8** getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 2), align 8
  %9 = load i32, i32* %offset, align 4
  %idx.ext3 = zext i32 %9 to i64
  %idx.neg = sub i64 0, %idx.ext3
  %add.ptr4 = getelementptr inbounds i8, i8* %8, i64 %idx.neg
  %10 = load i8, i8* %add.ptr4, align 1
  %conv = zext i8 %10 to i32
  store i32 %conv, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  %11 = load i32, i32* %def.addr, align 4
  store i32 %11, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %12 = load i32, i32* %retval, align 4
  ret i32 %12
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @skipToCharacterInInputFile(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  %d = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  br label %do.body

do.body:                                          ; preds = %land.end, %entry
  %call = call i32 @getcFromInputFile()
  store i32 %call, i32* %d, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %0 = load i32, i32* %d, align 4
  %cmp = icmp ne i32 %0, -1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %1 = load i32, i32* %d, align 4
  %2 = load i32, i32* %c.addr, align 4
  %cmp1 = icmp ne i32 %1, %2
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %3 = phi i1 [ false, %do.cond ], [ %cmp1, %land.rhs ]
  br i1 %3, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  %4 = load i32, i32* %d, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @readLineFromInputFile() #0 {
entry:
  %line = alloca %struct.sVString*, align 8
  %result = alloca i8*, align 8
  %call = call %struct.sVString* @iFileGetLine()
  store %struct.sVString* %call, %struct.sVString** %line, align 8
  store i8* null, i8** %result, align 8
  %0 = load %struct.sVString*, %struct.sVString** %line, align 8
  %cmp = icmp ne %struct.sVString* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.sVString*, %struct.sVString** %line, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %1, i32 0, i32 2
  %2 = load i8*, i8** %buffer, align 8
  store i8* %2, i8** %result, align 8
  %3 = load %struct.sVString*, %struct.sVString** %line, align 8
  call void @vStringStripNewline(%struct.sVString* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i8*, i8** %result, align 8
  ret i8* %4
}

declare void @vStringStripNewline(%struct.sVString*) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @readLineRaw(%struct.sVString* %vLine, %struct._MIO* %mio) #0 {
entry:
  %vLine.addr = alloca %struct.sVString*, align 8
  %mio.addr = alloca %struct._MIO*, align 8
  store %struct.sVString* %vLine, %struct.sVString** %vLine.addr, align 8
  store %struct._MIO* %mio, %struct._MIO** %mio.addr, align 8
  %0 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %cmp = icmp eq %struct._MIO* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0))
  br label %if.end4

if.else:                                          ; preds = %entry
  %1 = load %struct.sVString*, %struct.sVString** %vLine.addr, align 8
  %2 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %call = call i32 @readLine(%struct.sVString* %1, %struct._MIO* %2)
  %call1 = call zeroext i1 @isConverting()
  br i1 %call1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.else
  %3 = load %struct.sVString*, %struct.sVString** %vLine.addr, align 8
  %call3 = call zeroext i1 @convertString(%struct.sVString* %3)
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.else
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then
  %4 = load %struct.sVString*, %struct.sVString** %vLine.addr, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %4, i32 0, i32 0
  %5 = load i64, i64* %length, align 8
  %cmp5 = icmp ugt i64 %5, 0
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end4
  %6 = load %struct.sVString*, %struct.sVString** %vLine.addr, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %6, i32 0, i32 2
  %7 = load i8*, i8** %buffer, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %7, %cond.true ], [ null, %cond.false ]
  ret i8* %cond
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @readLine(%struct.sVString* %vLine, %struct._MIO* %mio) #0 {
entry:
  %vLine.addr = alloca %struct.sVString*, align 8
  %mio.addr = alloca %struct._MIO*, align 8
  %str = alloca i8*, align 8
  %size = alloca i64, align 8
  %r = alloca i32, align 4
  %vStringClear_s = alloca %struct.sVString*, align 8
  %newLine = alloca i8, align 1
  %eof = alloca i8, align 1
  store %struct.sVString* %vLine, %struct.sVString** %vLine.addr, align 8
  store %struct._MIO* %mio, %struct._MIO** %mio.addr, align 8
  store i32 1, i32* %r, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.sVString*, %struct.sVString** %vLine.addr, align 8
  store %struct.sVString* %0, %struct.sVString** %vStringClear_s, align 8
  %1 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %1, i32 0, i32 0
  store i64 0, i64* %length, align 8
  %2 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %2, i32 0, i32 2
  %3 = load i8*, i8** %buffer, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 0
  store i8 0, i8* %arrayidx, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  %4 = load %struct.sVString*, %struct.sVString** %vLine.addr, align 8
  %buffer1 = getelementptr inbounds %struct.sVString, %struct.sVString* %4, i32 0, i32 2
  %5 = load i8*, i8** %buffer1, align 8
  store i8* %5, i8** %str, align 8
  %6 = load %struct.sVString*, %struct.sVString** %vLine.addr, align 8
  %size2 = getelementptr inbounds %struct.sVString, %struct.sVString* %6, i32 0, i32 1
  %7 = load i64, i64* %size2, align 8
  store i64 %7, i64* %size, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end43, %do.end
  %8 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %9 = load i8*, i8** %str, align 8
  %10 = load i64, i64* %size, align 8
  %call = call i8* @mio_gets(%struct._MIO* %8, i8* %9, i64 %10)
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end5

if.then:                                          ; preds = %for.cond
  %11 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %call3 = call i32 @mio_eof(%struct._MIO* %11)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.end, label %if.then4

if.then4:                                         ; preds = %if.then
  call void (i32, i8*, ...) @error(i32 5, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then
  br label %if.end5

if.end5:                                          ; preds = %if.end, %for.cond
  %12 = load %struct.sVString*, %struct.sVString** %vLine.addr, align 8
  call void @vStringSetLength(%struct.sVString* %12)
  %13 = load %struct.sVString*, %struct.sVString** %vLine.addr, align 8
  %length6 = getelementptr inbounds %struct.sVString, %struct.sVString* %13, i32 0, i32 0
  %14 = load i64, i64* %length6, align 8
  %cmp7 = icmp ugt i64 %14, 0
  br i1 %cmp7, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end5
  %15 = load %struct.sVString*, %struct.sVString** %vLine.addr, align 8
  %buffer8 = getelementptr inbounds %struct.sVString, %struct.sVString* %15, i32 0, i32 2
  %16 = load i8*, i8** %buffer8, align 8
  %17 = load %struct.sVString*, %struct.sVString** %vLine.addr, align 8
  %length9 = getelementptr inbounds %struct.sVString, %struct.sVString* %17, i32 0, i32 0
  %18 = load i64, i64* %length9, align 8
  %sub = sub i64 %18, 1
  %arrayidx10 = getelementptr inbounds i8, i8* %16, i64 %sub
  %19 = load i8, i8* %arrayidx10, align 1
  %conv = sext i8 %19 to i32
  %cmp11 = icmp eq i32 %conv, 10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end5
  %20 = phi i1 [ false, %if.end5 ], [ %cmp11, %land.rhs ]
  %frombool = zext i1 %20 to i8
  store i8 %frombool, i8* %newLine, align 1
  %21 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %call13 = call i32 @mio_eof(%struct._MIO* %21)
  %tobool14 = icmp ne i32 %call13, 0
  %frombool15 = zext i1 %tobool14 to i8
  store i8 %frombool15, i8* %eof, align 1
  %22 = load i8, i8* %eof, align 1
  %tobool16 = trunc i8 %22 to i1
  br i1 %tobool16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %land.end
  store i32 0, i32* %r, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %land.end
  %23 = load i8, i8* %newLine, align 1
  %tobool19 = trunc i8 %23 to i1
  br i1 %tobool19, label %land.lhs.true, label %if.end37

land.lhs.true:                                    ; preds = %if.end18
  %24 = load %struct.sVString*, %struct.sVString** %vLine.addr, align 8
  %length21 = getelementptr inbounds %struct.sVString, %struct.sVString* %24, i32 0, i32 0
  %25 = load i64, i64* %length21, align 8
  %cmp22 = icmp ugt i64 %25, 1
  br i1 %cmp22, label %land.lhs.true24, label %if.end37

land.lhs.true24:                                  ; preds = %land.lhs.true
  %26 = load %struct.sVString*, %struct.sVString** %vLine.addr, align 8
  %buffer25 = getelementptr inbounds %struct.sVString, %struct.sVString* %26, i32 0, i32 2
  %27 = load i8*, i8** %buffer25, align 8
  %28 = load %struct.sVString*, %struct.sVString** %vLine.addr, align 8
  %length26 = getelementptr inbounds %struct.sVString, %struct.sVString* %28, i32 0, i32 0
  %29 = load i64, i64* %length26, align 8
  %sub27 = sub i64 %29, 2
  %arrayidx28 = getelementptr inbounds i8, i8* %27, i64 %sub27
  %30 = load i8, i8* %arrayidx28, align 1
  %conv29 = sext i8 %30 to i32
  %cmp30 = icmp eq i32 %conv29, 13
  br i1 %cmp30, label %if.then32, label %if.end37

if.then32:                                        ; preds = %land.lhs.true24
  %31 = load %struct.sVString*, %struct.sVString** %vLine.addr, align 8
  %buffer33 = getelementptr inbounds %struct.sVString, %struct.sVString* %31, i32 0, i32 2
  %32 = load i8*, i8** %buffer33, align 8
  %33 = load %struct.sVString*, %struct.sVString** %vLine.addr, align 8
  %length34 = getelementptr inbounds %struct.sVString, %struct.sVString* %33, i32 0, i32 0
  %34 = load i64, i64* %length34, align 8
  %sub35 = sub i64 %34, 2
  %arrayidx36 = getelementptr inbounds i8, i8* %32, i64 %sub35
  store i8 10, i8* %arrayidx36, align 1
  %35 = load %struct.sVString*, %struct.sVString** %vLine.addr, align 8
  call void @vStringChop(%struct.sVString* %35)
  store i32 2, i32* %r, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then32, %land.lhs.true24, %land.lhs.true, %if.end18
  %36 = load i8, i8* %newLine, align 1
  %tobool38 = trunc i8 %36 to i1
  br i1 %tobool38, label %if.then42, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end37
  %37 = load i8, i8* %eof, align 1
  %tobool40 = trunc i8 %37 to i1
  br i1 %tobool40, label %if.then42, label %if.end43

if.then42:                                        ; preds = %lor.lhs.false, %if.end37
  br label %for.end

if.end43:                                         ; preds = %lor.lhs.false
  %38 = load %struct.sVString*, %struct.sVString** %vLine.addr, align 8
  %39 = load %struct.sVString*, %struct.sVString** %vLine.addr, align 8
  %length44 = getelementptr inbounds %struct.sVString, %struct.sVString* %39, i32 0, i32 0
  %40 = load i64, i64* %length44, align 8
  %mul = mul i64 %40, 2
  call void @vStringResize(%struct.sVString* %38, i64 %mul)
  %41 = load %struct.sVString*, %struct.sVString** %vLine.addr, align 8
  %buffer45 = getelementptr inbounds %struct.sVString, %struct.sVString* %41, i32 0, i32 2
  %42 = load i8*, i8** %buffer45, align 8
  %43 = load %struct.sVString*, %struct.sVString** %vLine.addr, align 8
  %length46 = getelementptr inbounds %struct.sVString, %struct.sVString* %43, i32 0, i32 0
  %44 = load i64, i64* %length46, align 8
  %add.ptr = getelementptr inbounds i8, i8* %42, i64 %44
  store i8* %add.ptr, i8** %str, align 8
  %45 = load %struct.sVString*, %struct.sVString** %vLine.addr, align 8
  %size47 = getelementptr inbounds %struct.sVString, %struct.sVString* %45, i32 0, i32 1
  %46 = load i64, i64* %size47, align 8
  %47 = load %struct.sVString*, %struct.sVString** %vLine.addr, align 8
  %length48 = getelementptr inbounds %struct.sVString, %struct.sVString* %47, i32 0, i32 0
  %48 = load i64, i64* %length48, align 8
  %sub49 = sub i64 %46, %48
  store i64 %sub49, i64* %size, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then42
  %49 = load i32, i32* %r, align 4
  ret i32 %49
}

declare zeroext i1 @isConverting() #2

declare zeroext i1 @convertString(%struct.sVString*) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @readLineFromBypass(%struct.sVString* %vLine, [2 x i64] %location.coerce, i64* %pSeekValue) #0 {
entry:
  %location = alloca %struct._MIOPos, align 8
  %vLine.addr = alloca %struct.sVString*, align 8
  %pSeekValue.addr = alloca i64*, align 8
  %orignalPosition = alloca %struct._MIOPos, align 8
  %result = alloca i8*, align 8
  %0 = bitcast %struct._MIOPos* %location to [2 x i64]*
  store [2 x i64] %location.coerce, [2 x i64]* %0, align 8
  store %struct.sVString* %vLine, %struct.sVString** %vLine.addr, align 8
  store i64* %pSeekValue, i64** %pSeekValue.addr, align 8
  %1 = load %struct._MIO*, %struct._MIO** getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 3), align 8
  %call = call i32 @mio_getpos(%struct._MIO* %1, %struct._MIOPos* %orignalPosition)
  %2 = load %struct._MIO*, %struct._MIO** getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 3), align 8
  %call1 = call i32 @mio_setpos(%struct._MIO* %2, %struct._MIOPos* %location)
  %3 = load %struct._MIO*, %struct._MIO** getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 3), align 8
  call void @mio_clearerr(%struct._MIO* %3)
  %4 = load i64*, i64** %pSeekValue.addr, align 8
  %cmp = icmp ne i64* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._MIO*, %struct._MIO** getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 3), align 8
  %call2 = call i64 @mio_tell(%struct._MIO* %5)
  %6 = load i64*, i64** %pSeekValue.addr, align 8
  store i64 %call2, i64* %6, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.sVString*, %struct.sVString** %vLine.addr, align 8
  %8 = load %struct._MIO*, %struct._MIO** getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 3), align 8
  %call3 = call i8* @readLineRaw(%struct.sVString* %7, %struct._MIO* %8)
  store i8* %call3, i8** %result, align 8
  %9 = load %struct._MIO*, %struct._MIO** getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 3), align 8
  %call4 = call i32 @mio_setpos(%struct._MIO* %9, %struct._MIOPos* %orignalPosition)
  %10 = load i8*, i8** %result, align 8
  ret i8* %10
}

declare i32 @mio_setpos(%struct._MIO*, %struct._MIOPos*) #2

declare void @mio_clearerr(%struct._MIO*) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @readLineFromBypassSlow(%struct.sVString* %vLine, i64 %lineNumber, i8* %pattern, i64* %pSeekValue) #0 {
entry:
  %retval = alloca i8*, align 8
  %vLine.addr = alloca %struct.sVString*, align 8
  %lineNumber.addr = alloca i64, align 8
  %pattern.addr = alloca i8*, align 8
  %pSeekValue.addr = alloca i64*, align 8
  %result = alloca i8*, align 8
  %originalPosition = alloca %struct._MIOPos, align 8
  %line = alloca i8*, align 8
  %len = alloca i64, align 8
  %pos = alloca i64, align 8
  %patbuf = alloca %struct.regex_t, align 8
  %lastc = alloca i8, align 1
  %pat = alloca i8*, align 8
  %errcode = alloca i32, align 4
  %errmsg = alloca [256 x i8], align 1
  %n = alloca i64, align 8
  %pmatch = alloca %struct.regmatch_t, align 8
  %after_newline = alloca i32, align 4
  store %struct.sVString* %vLine, %struct.sVString** %vLine.addr, align 8
  store i64 %lineNumber, i64* %lineNumber.addr, align 8
  store i8* %pattern, i8** %pattern.addr, align 8
  store i64* %pSeekValue, i64** %pSeekValue.addr, align 8
  store i8* null, i8** %result, align 8
  %0 = load i8*, i8** %pattern.addr, align 8
  %call = call i8* @eStrdup(i8* %0)
  store i8* %call, i8** %pat, align 8
  %1 = load i8*, i8** %pat, align 8
  %2 = load i8*, i8** %pat, align 8
  %call1 = call i64 @strlen(i8* %2)
  %sub = sub i64 %call1, 1
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %sub
  store i8 0, i8* %arrayidx, align 1
  %3 = load i8*, i8** %pat, align 8
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 1
  %call2 = call i32 @"\01_regcomp"(%struct.regex_t* %patbuf, i8* %add.ptr, i32 0)
  store i32 %call2, i32* %errcode, align 4
  %4 = load i8*, i8** %pat, align 8
  call void @eFree(i8* %4)
  %5 = load i32, i32* %errcode, align 4
  %cmp = icmp ne i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %errcode, align 4
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %errmsg, i64 0, i64 0
  %call3 = call i64 @regerror(i32 %6, %struct.regex_t* %patbuf, i8* %arraydecay, i64 256) #5
  %7 = load i8*, i8** %pattern.addr, align 8
  %arraydecay4 = getelementptr inbounds [256 x i8], [256 x i8]* %errmsg, i64 0, i64 0
  call void (i32, i8*, ...) @error(i32 2, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0), i8* %7, i8* %arraydecay4)
  call void @regfree(%struct.regex_t* %patbuf)
  store i8* null, i8** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %8 = load %struct._MIO*, %struct._MIO** getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 3), align 8
  %call5 = call i32 @mio_getpos(%struct._MIO* %8, %struct._MIOPos* %originalPosition)
  call void @rewindInputFile(%struct.sInputFile* @File)
  store i8* null, i8** %line, align 8
  store i64 0, i64* %pos, align 8
  store i64 0, i64* %n, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %9 = load i64, i64* %n, align 8
  %10 = load i64, i64* %lineNumber.addr, align 8
  %cmp6 = icmp ult i64 %9, %10
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load %struct._MIO*, %struct._MIO** getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 3), align 8
  %call7 = call i64 @mio_tell(%struct._MIO* %11)
  store i64 %call7, i64* %pos, align 8
  %12 = load %struct.sVString*, %struct.sVString** %vLine.addr, align 8
  %13 = load %struct._MIO*, %struct._MIO** getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 3), align 8
  %call8 = call i8* @readLineRaw(%struct.sVString* %12, %struct._MIO* %13)
  store i8* %call8, i8** %line, align 8
  %14 = load i8*, i8** %line, align 8
  %cmp9 = icmp eq i8* %14, null
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %for.body
  br label %for.end

if.end11:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end11
  %15 = load i64, i64* %n, align 8
  %inc = add i64 %15, 1
  store i64 %inc, i64* %n, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then10, %for.cond
  %16 = load i8*, i8** %line, align 8
  %cmp12 = icmp eq i8* %16, null
  br i1 %cmp12, label %if.then13, label %if.else

if.then13:                                        ; preds = %for.end
  br label %out

if.else:                                          ; preds = %for.end
  %17 = load i8*, i8** %line, align 8
  %call14 = call i64 @strlen(i8* %17)
  store i64 %call14, i64* %len, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.else
  %18 = load i64, i64* %len, align 8
  %cmp16 = icmp eq i64 %18, 0
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end15
  br label %out

if.end18:                                         ; preds = %if.end15
  %19 = load i8*, i8** %line, align 8
  %20 = load i64, i64* %len, align 8
  %sub19 = sub i64 %20, 1
  %arrayidx20 = getelementptr inbounds i8, i8* %19, i64 %sub19
  %21 = load i8, i8* %arrayidx20, align 1
  store i8 %21, i8* %lastc, align 1
  %22 = load i8, i8* %lastc, align 1
  %conv = sext i8 %22 to i32
  %cmp21 = icmp eq i32 %conv, 10
  br i1 %cmp21, label %if.then23, label %if.end26

if.then23:                                        ; preds = %if.end18
  %23 = load i8*, i8** %line, align 8
  %24 = load i64, i64* %len, align 8
  %sub24 = sub i64 %24, 1
  %arrayidx25 = getelementptr inbounds i8, i8* %23, i64 %sub24
  store i8 0, i8* %arrayidx25, align 1
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %if.end18
  store i32 0, i32* %after_newline, align 4
  %25 = load i8*, i8** %line, align 8
  %call27 = call i32 @regexec(%struct.regex_t* %patbuf, i8* %25, i64 1, %struct.regmatch_t* %pmatch, i32 0)
  %cmp28 = icmp eq i32 %call27, 0
  br i1 %cmp28, label %if.then30, label %if.end41

if.then30:                                        ; preds = %if.end26
  %26 = load i8, i8* %lastc, align 1
  %27 = load i8*, i8** %line, align 8
  %28 = load i64, i64* %len, align 8
  %sub31 = sub i64 %28, 1
  %arrayidx32 = getelementptr inbounds i8, i8* %27, i64 %sub31
  store i8 %26, i8* %arrayidx32, align 1
  %29 = load i8*, i8** %line, align 8
  %rm_so = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %pmatch, i32 0, i32 0
  %30 = load i64, i64* %rm_so, align 8
  %add.ptr33 = getelementptr inbounds i8, i8* %29, i64 %30
  store i8* %add.ptr33, i8** %result, align 8
  %31 = load i64*, i64** %pSeekValue.addr, align 8
  %tobool = icmp ne i64* %31, null
  br i1 %tobool, label %if.then34, label %if.end40

if.then34:                                        ; preds = %if.then30
  %32 = load i64, i64* %lineNumber.addr, align 8
  %cmp35 = icmp eq i64 %32, 1
  %33 = zext i1 %cmp35 to i64
  %cond = select i1 %cmp35, i32 0, i32 1
  store i32 %cond, i32* %after_newline, align 4
  %34 = load i64, i64* %pos, align 8
  %35 = load i32, i32* %after_newline, align 4
  %conv37 = sext i32 %35 to i64
  %add = add nsw i64 %34, %conv37
  %rm_so38 = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %pmatch, i32 0, i32 0
  %36 = load i64, i64* %rm_so38, align 8
  %add39 = add nsw i64 %add, %36
  %37 = load i64*, i64** %pSeekValue.addr, align 8
  store i64 %add39, i64* %37, align 8
  br label %if.end40

if.end40:                                         ; preds = %if.then34, %if.then30
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.end26
  br label %out

out:                                              ; preds = %if.end41, %if.then17, %if.then13
  call void @regfree(%struct.regex_t* %patbuf)
  %38 = load %struct._MIO*, %struct._MIO** getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 3), align 8
  %call42 = call i32 @mio_setpos(%struct._MIO* %38, %struct._MIOPos* %originalPosition)
  %39 = load i8*, i8** %result, align 8
  store i8* %39, i8** %retval, align 8
  br label %return

return:                                           ; preds = %out, %if.then
  %40 = load i8*, i8** %retval, align 8
  ret i8* %40
}

declare i8* @eStrdup(i8*) #2

declare i64 @strlen(i8*) #2

declare i32 @"\01_regcomp"(%struct.regex_t*, i8*, i32) #2

; Function Attrs: cold
declare i64 @regerror(i32, %struct.regex_t*, i8*, i64) #3

declare void @regfree(%struct.regex_t*) #2

declare i32 @regexec(%struct.regex_t*, i8*, i64, %struct.regmatch_t*, i32) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @pushNarrowedInputStream(i64 %startLine, i64 %startCharOffset, i64 %endLine, i64 %endCharOffset, i64 %sourceLineOffset) #0 {
entry:
  %startLine.addr = alloca i64, align 8
  %startCharOffset.addr = alloca i64, align 8
  %endLine.addr = alloca i64, align 8
  %endCharOffset.addr = alloca i64, align 8
  %sourceLineOffset.addr = alloca i64, align 8
  %p = alloca i64, align 8
  %q = alloca i64, align 8
  %original = alloca %struct._MIOPos, align 8
  %tmp = alloca %struct._MIOPos, align 8
  %subio = alloca %struct._MIO*, align 8
  %tmp1 = alloca %struct._MIOPos, align 8
  %tmp3 = alloca %struct._MIOPos, align 8
  %tmp8 = alloca %struct._MIOPos, align 8
  store i64 %startLine, i64* %startLine.addr, align 8
  store i64 %startCharOffset, i64* %startCharOffset.addr, align 8
  store i64 %endLine, i64* %endLine.addr, align 8
  store i64 %endCharOffset, i64* %endCharOffset.addr, align 8
  store i64 %sourceLineOffset, i64* %sourceLineOffset.addr, align 8
  %0 = load i64, i64* %startLine.addr, align 8
  %1 = load i64, i64* %startCharOffset.addr, align 8
  %2 = load i64, i64* %endLine.addr, align 8
  %3 = load i64, i64* %endCharOffset.addr, align 8
  %4 = load i64, i64* %sourceLineOffset.addr, align 8
  %call = call zeroext i1 @isThinStreamSpec(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 14), align 8
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 14), align 8
  %6 = load i32, i32* getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 14), align 8
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0), i32 %6)
  br label %return

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.body
  %call2 = call [2 x i64] @getInputFilePosition()
  %7 = bitcast %struct._MIOPos* %tmp1 to [2 x i64]*
  store [2 x i64] %call2, [2 x i64]* %7, align 8
  %8 = bitcast %struct._MIOPos* %original to i8*
  %9 = bitcast %struct._MIOPos* %tmp1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 %9, i64 16, i1 false)
  %10 = load i64, i64* %startLine.addr, align 8
  %conv = trunc i64 %10 to i32
  %call4 = call [2 x i64] @getInputFilePositionForLine(i32 %conv)
  %11 = bitcast %struct._MIOPos* %tmp3 to [2 x i64]*
  store [2 x i64] %call4, [2 x i64]* %11, align 8
  %12 = bitcast %struct._MIOPos* %tmp to i8*
  %13 = bitcast %struct._MIOPos* %tmp3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 %13, i64 16, i1 false)
  %14 = load %struct._MIO*, %struct._MIO** getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 3), align 8
  %call5 = call i32 @mio_setpos(%struct._MIO* %14, %struct._MIOPos* %tmp)
  %15 = load %struct._MIO*, %struct._MIO** getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 3), align 8
  %16 = load i64, i64* %startCharOffset.addr, align 8
  %call6 = call i32 @mio_seek(%struct._MIO* %15, i64 %16, i32 1)
  %17 = load %struct._MIO*, %struct._MIO** getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 3), align 8
  %call7 = call i64 @mio_tell(%struct._MIO* %17)
  store i64 %call7, i64* %p, align 8
  %18 = load i64, i64* %endLine.addr, align 8
  %conv9 = trunc i64 %18 to i32
  %call10 = call [2 x i64] @getInputFilePositionForLine(i32 %conv9)
  %19 = bitcast %struct._MIOPos* %tmp8 to [2 x i64]*
  store [2 x i64] %call10, [2 x i64]* %19, align 8
  %20 = bitcast %struct._MIOPos* %tmp to i8*
  %21 = bitcast %struct._MIOPos* %tmp8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 %21, i64 16, i1 false)
  %22 = load %struct._MIO*, %struct._MIO** getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 3), align 8
  %call11 = call i32 @mio_setpos(%struct._MIO* %22, %struct._MIOPos* %tmp)
  %23 = load %struct._MIO*, %struct._MIO** getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 3), align 8
  %24 = load i64, i64* %endCharOffset.addr, align 8
  %call12 = call i32 @mio_seek(%struct._MIO* %23, i64 %24, i32 1)
  %25 = load %struct._MIO*, %struct._MIO** getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 3), align 8
  %call13 = call i64 @mio_tell(%struct._MIO* %25)
  store i64 %call13, i64* %q, align 8
  %26 = load %struct._MIO*, %struct._MIO** getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 3), align 8
  %call14 = call i32 @mio_setpos(%struct._MIO* %26, %struct._MIOPos* %original)
  call void @invalidatePatternCache()
  %27 = load %struct._MIO*, %struct._MIO** getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 3), align 8
  %28 = load i64, i64* %p, align 8
  %29 = load i64, i64* %q, align 8
  %30 = load i64, i64* %p, align 8
  %sub = sub nsw i64 %29, %30
  %call15 = call %struct._MIO* @mio_new_mio(%struct._MIO* %27, i64 %28, i64 %sub)
  store %struct._MIO* %call15, %struct._MIO** %subio, align 8
  %31 = load %struct._MIO*, %struct._MIO** %subio, align 8
  %cmp = icmp eq %struct._MIO* %31, null
  br i1 %cmp, label %if.then17, label %if.end18

if.then17:                                        ; preds = %do.end
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0))
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %do.end
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.sInputFile* @BackupFile to i8*), i8* align 8 bitcast (%struct.sInputFile* @File to i8*), i64 272, i1 false)
  %32 = load %struct._MIO*, %struct._MIO** %subio, align 8
  store %struct._MIO* %32, %struct._MIO** getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 3), align 8
  store i8 0, i8* getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 7), align 8
  %33 = load i64, i64* %startLine.addr, align 8
  store i64 %33, i64* getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 10, i32 0), align 8
  %34 = load i64, i64* %startCharOffset.addr, align 8
  store i64 %34, i64* getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 10, i32 1), align 8
  %35 = load i64, i64* %endLine.addr, align 8
  store i64 %35, i64* getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 10, i32 2), align 8
  %36 = load i64, i64* %endCharOffset.addr, align 8
  store i64 %36, i64* getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 10, i32 3), align 8
  %37 = load i64, i64* %startLine.addr, align 8
  %cmp19 = icmp eq i64 %37, 0
  br i1 %cmp19, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end18
  br label %cond.end

cond.false:                                       ; preds = %if.end18
  %38 = load i64, i64* %startLine.addr, align 8
  %sub21 = sub i64 %38, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %sub21, %cond.false ]
  store i64 %cond, i64* getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 8, i32 3), align 8
  %39 = load i64, i64* %sourceLineOffset.addr, align 8
  %cmp22 = icmp eq i64 %39, 0
  br i1 %cmp22, label %cond.true24, label %cond.false25

cond.true24:                                      ; preds = %cond.end
  br label %cond.end27

cond.false25:                                     ; preds = %cond.end
  %40 = load i64, i64* %sourceLineOffset.addr, align 8
  %sub26 = sub i64 %40, 1
  br label %cond.end27

cond.end27:                                       ; preds = %cond.false25, %cond.true24
  %cond28 = phi i64 [ 0, %cond.true24 ], [ %sub26, %cond.false25 ]
  store i64 %cond28, i64* getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 9, i32 3), align 8
  br label %return

return:                                           ; preds = %cond.end27, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @isThinStreamSpec(i64 %startLine, i64 %startCharOffset, i64 %endLine, i64 %endCharOffset, i64 %sourceLineOffset) #0 {
entry:
  %startLine.addr = alloca i64, align 8
  %startCharOffset.addr = alloca i64, align 8
  %endLine.addr = alloca i64, align 8
  %endCharOffset.addr = alloca i64, align 8
  %sourceLineOffset.addr = alloca i64, align 8
  store i64 %startLine, i64* %startLine.addr, align 8
  store i64 %startCharOffset, i64* %startCharOffset.addr, align 8
  store i64 %endLine, i64* %endLine.addr, align 8
  store i64 %endCharOffset, i64* %endCharOffset.addr, align 8
  store i64 %sourceLineOffset, i64* %sourceLineOffset.addr, align 8
  %0 = load i64, i64* %startLine.addr, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i64, i64* %startCharOffset.addr, align 8
  %cmp1 = icmp eq i64 %1, 0
  br i1 %cmp1, label %land.lhs.true2, label %land.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %2 = load i64, i64* %endLine.addr, align 8
  %cmp3 = icmp eq i64 %2, 0
  br i1 %cmp3, label %land.lhs.true4, label %land.end

land.lhs.true4:                                   ; preds = %land.lhs.true2
  %3 = load i64, i64* %endCharOffset.addr, align 8
  %cmp5 = icmp eq i64 %3, 0
  br i1 %cmp5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true4
  %4 = load i64, i64* %sourceLineOffset.addr, align 8
  %cmp6 = icmp eq i64 %4, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true4, %land.lhs.true2, %land.lhs.true, %entry
  %5 = phi i1 [ false, %land.lhs.true4 ], [ false, %land.lhs.true2 ], [ false, %land.lhs.true ], [ false, %entry ], [ %cmp6, %land.rhs ]
  ret i1 %5
}

declare i32 @mio_seek(%struct._MIO*, i64, i32) #2

declare %struct._MIO* @mio_new_mio(%struct._MIO*, i64, i64) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @doesParserRunAsGuest() #0 {
entry:
  %0 = load i64, i64* getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 10, i32 0), align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i64, i64* getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 10, i32 1), align 8
  %cmp1 = icmp eq i64 %1, 0
  br i1 %cmp1, label %land.lhs.true2, label %land.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %2 = load i64, i64* getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 10, i32 2), align 8
  %cmp3 = icmp eq i64 %2, 0
  br i1 %cmp3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true2
  %3 = load i64, i64* getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 10, i32 3), align 8
  %cmp4 = icmp eq i64 %3, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true2, %land.lhs.true, %entry
  %4 = phi i1 [ false, %land.lhs.true2 ], [ false, %land.lhs.true ], [ false, %entry ], [ %cmp4, %land.rhs ]
  %lnot = xor i1 %4, true
  ret i1 %lnot
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @getNestedInputBoundaryInfo(i64 %lineNumber) #0 {
entry:
  %retval = alloca i32, align 4
  %lineNumber.addr = alloca i64, align 8
  %info = alloca i32, align 4
  store i64 %lineNumber, i64* %lineNumber.addr, align 8
  %call = call zeroext i1 @doesParserRunAsGuest()
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %info, align 4
  %0 = load i64, i64* getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 10, i32 0), align 8
  %1 = load i64, i64* %lineNumber.addr, align 8
  %cmp = icmp eq i64 %0, %1
  br i1 %cmp, label %land.lhs.true, label %if.end3

land.lhs.true:                                    ; preds = %if.end
  %2 = load i64, i64* getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 10, i32 1), align 8
  %cmp1 = icmp ne i64 %2, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %land.lhs.true
  %3 = load i32, i32* %info, align 4
  %or = or i32 %3, 1
  store i32 %or, i32* %info, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %land.lhs.true, %if.end
  %4 = load i64, i64* getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 10, i32 2), align 8
  %5 = load i64, i64* %lineNumber.addr, align 8
  %cmp4 = icmp eq i64 %4, %5
  br i1 %cmp4, label %land.lhs.true5, label %if.end9

land.lhs.true5:                                   ; preds = %if.end3
  %6 = load i64, i64* getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 10, i32 3), align 8
  %cmp6 = icmp ne i64 %6, 0
  br i1 %cmp6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %land.lhs.true5
  %7 = load i32, i32* %info, align 4
  %or8 = or i32 %7, 2
  store i32 %or8, i32* %info, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %land.lhs.true5, %if.end3
  %8 = load i32, i32* %info, align 4
  store i32 %8, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end9, %if.then
  %9 = load i32, i32* %retval, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @popNarrowedInputStream() #0 {
entry:
  %0 = load i32, i32* getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 14), align 8
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 14), align 8
  %dec = add nsw i32 %1, -1
  store i32 %dec, i32* getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 14), align 8
  %2 = load i32, i32* getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 14), align 8
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0), i32 %2)
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._MIO*, %struct._MIO** getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 3), align 8
  %call = call i32 @mio_free(%struct._MIO* %3)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.sInputFile* @File to i8*), i8* align 8 bitcast (%struct.sInputFile* @BackupFile to i8*), i64 272, i1 false)
  call void @llvm.memset.p0i8.i64(i8* align 8 bitcast (%struct.sInputFile* @BackupFile to i8*), i8 0, i64 272, i1 false)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @pushLanguage(i32 %language) #0 {
entry:
  %language.addr = alloca i32, align 4
  store i32 %language, i32* %language.addr, align 4
  %0 = load i32, i32* %language.addr, align 4
  call void @pushLangOnStack(%union.sInputLangInfo* getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 8, i32 5), i32 %0)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @pushLangOnStack(%union.sInputLangInfo* %langInfo, i32 %lang) #0 {
entry:
  %langInfo.addr = alloca %union.sInputLangInfo*, align 8
  %lang.addr = alloca i32, align 4
  store %union.sInputLangInfo* %langInfo, %union.sInputLangInfo** %langInfo.addr, align 8
  store i32 %lang, i32* %lang.addr, align 4
  %0 = load %union.sInputLangInfo*, %union.sInputLangInfo** %langInfo.addr, align 8
  %stack = bitcast %union.sInputLangInfo* %0 to %struct.sLangStack*
  %1 = load i32, i32* %lang.addr, align 4
  call void @langStackPush(%struct.sLangStack* %stack, i32 %1)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @popLanguage() #0 {
entry:
  %call = call i32 @popLangOnStack(%union.sInputLangInfo* getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 8, i32 5))
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @popLangOnStack(%union.sInputLangInfo* %langInfo) #0 {
entry:
  %langInfo.addr = alloca %union.sInputLangInfo*, align 8
  store %union.sInputLangInfo* %langInfo, %union.sInputLangInfo** %langInfo.addr, align 8
  %0 = load %union.sInputLangInfo*, %union.sInputLangInfo** %langInfo.addr, align 8
  %stack = bitcast %union.sInputLangInfo* %0 to %struct.sLangStack*
  %call = call i32 @langStackPop(%struct.sLangStack* %stack)
  ret i32 %call
}

declare i32 @mio_getc(%struct._MIO*) #2

declare i8* @baseFilename(i8*) #2

declare %struct.sVString* @vStringNew() #2

declare void @vStringNCopyS(%struct.sVString*, i8*, i64) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @setInputFileParametersCommon(%struct.sInputFileInfo* %finfo, %struct.sVString* %fileName, i32 %language, void (%union.sInputLangInfo*, i32)* %setLang, %struct.sPtrArray* %holder) #0 {
entry:
  %finfo.addr = alloca %struct.sInputFileInfo*, align 8
  %fileName.addr = alloca %struct.sVString*, align 8
  %language.addr = alloca i32, align 4
  %setLang.addr = alloca void (%union.sInputLangInfo*, i32)*, align 8
  %holder.addr = alloca %struct.sPtrArray*, align 8
  store %struct.sInputFileInfo* %finfo, %struct.sInputFileInfo** %finfo.addr, align 8
  store %struct.sVString* %fileName, %struct.sVString** %fileName.addr, align 8
  store i32 %language, i32* %language.addr, align 4
  store void (%union.sInputLangInfo*, i32)* %setLang, void (%union.sInputLangInfo*, i32)** %setLang.addr, align 8
  store %struct.sPtrArray* %holder, %struct.sPtrArray** %holder.addr, align 8
  %0 = load %struct.sInputFileInfo*, %struct.sInputFileInfo** %finfo.addr, align 8
  %name = getelementptr inbounds %struct.sInputFileInfo, %struct.sInputFileInfo* %0, i32 0, i32 0
  %1 = load %struct.sVString*, %struct.sVString** %name, align 8
  %cmp = icmp ne %struct.sVString* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.sInputFileInfo*, %struct.sInputFileInfo** %finfo.addr, align 8
  %name1 = getelementptr inbounds %struct.sInputFileInfo, %struct.sInputFileInfo* %2, i32 0, i32 0
  %3 = load %struct.sVString*, %struct.sVString** %name1, align 8
  call void @vStringDelete(%struct.sVString* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.sVString*, %struct.sVString** %fileName.addr, align 8
  %5 = load %struct.sInputFileInfo*, %struct.sInputFileInfo** %finfo.addr, align 8
  %name2 = getelementptr inbounds %struct.sInputFileInfo, %struct.sInputFileInfo* %5, i32 0, i32 0
  store %struct.sVString* %4, %struct.sVString** %name2, align 8
  %6 = load %struct.sInputFileInfo*, %struct.sInputFileInfo** %finfo.addr, align 8
  %tagPath = getelementptr inbounds %struct.sInputFileInfo, %struct.sInputFileInfo* %6, i32 0, i32 1
  %7 = load %struct.sVString*, %struct.sVString** %tagPath, align 8
  %cmp3 = icmp ne %struct.sVString* %7, null
  br i1 %cmp3, label %if.then4, label %if.end9

if.then4:                                         ; preds = %if.end
  %8 = load %struct.sPtrArray*, %struct.sPtrArray** %holder.addr, align 8
  %tobool = icmp ne %struct.sPtrArray* %8, null
  br i1 %tobool, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then4
  %9 = load %struct.sPtrArray*, %struct.sPtrArray** %holder.addr, align 8
  %10 = load %struct.sInputFileInfo*, %struct.sInputFileInfo** %finfo.addr, align 8
  %tagPath6 = getelementptr inbounds %struct.sInputFileInfo, %struct.sInputFileInfo* %10, i32 0, i32 1
  %11 = load %struct.sVString*, %struct.sVString** %tagPath6, align 8
  call void @stringListAdd(%struct.sPtrArray* %9, %struct.sVString* %11)
  br label %if.end8

if.else:                                          ; preds = %if.then4
  %12 = load %struct.sInputFileInfo*, %struct.sInputFileInfo** %finfo.addr, align 8
  %tagPath7 = getelementptr inbounds %struct.sInputFileInfo, %struct.sInputFileInfo* %12, i32 0, i32 1
  %13 = load %struct.sVString*, %struct.sVString** %tagPath7, align 8
  call void @vStringDelete(%struct.sVString* %13)
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then5
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %if.end
  %14 = load i32, i32* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 20), align 8
  %cmp10 = icmp eq i32 %14, 2
  br i1 %cmp10, label %if.then11, label %if.else15

if.then11:                                        ; preds = %if.end9
  %15 = load %struct.sVString*, %struct.sVString** %fileName.addr, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %15, i32 0, i32 2
  %16 = load i8*, i8** %buffer, align 8
  %call = call i8* @getTagFileDirectory()
  %call12 = call i8* @relativeFilename(i8* %16, i8* %call)
  %call13 = call %struct.sVString* @vStringNewOwn(i8* %call12)
  %17 = load %struct.sInputFileInfo*, %struct.sInputFileInfo** %finfo.addr, align 8
  %tagPath14 = getelementptr inbounds %struct.sInputFileInfo, %struct.sInputFileInfo* %17, i32 0, i32 1
  store %struct.sVString* %call13, %struct.sVString** %tagPath14, align 8
  br label %if.end37

if.else15:                                        ; preds = %if.end9
  %18 = load i32, i32* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 20), align 8
  %cmp16 = icmp eq i32 %18, 3
  br i1 %cmp16, label %if.then17, label %if.else22

if.then17:                                        ; preds = %if.else15
  %19 = load %struct.sVString*, %struct.sVString** %fileName.addr, align 8
  %buffer18 = getelementptr inbounds %struct.sVString, %struct.sVString* %19, i32 0, i32 2
  %20 = load i8*, i8** %buffer18, align 8
  %call19 = call i8* @absoluteFilename(i8* %20)
  %call20 = call %struct.sVString* @vStringNewOwn(i8* %call19)
  %21 = load %struct.sInputFileInfo*, %struct.sInputFileInfo** %finfo.addr, align 8
  %tagPath21 = getelementptr inbounds %struct.sInputFileInfo, %struct.sInputFileInfo* %21, i32 0, i32 1
  store %struct.sVString* %call20, %struct.sVString** %tagPath21, align 8
  br label %if.end36

if.else22:                                        ; preds = %if.else15
  %22 = load i32, i32* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 20), align 8
  %cmp23 = icmp eq i32 %22, 0
  br i1 %cmp23, label %if.then26, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else22
  %23 = load %struct.sVString*, %struct.sVString** %fileName.addr, align 8
  %buffer24 = getelementptr inbounds %struct.sVString, %struct.sVString* %23, i32 0, i32 2
  %24 = load i8*, i8** %buffer24, align 8
  %call25 = call zeroext i1 @isAbsolutePath(i8* %24)
  br i1 %call25, label %if.then26, label %if.else29

if.then26:                                        ; preds = %lor.lhs.false, %if.else22
  %25 = load %struct.sVString*, %struct.sVString** %fileName.addr, align 8
  %call27 = call %struct.sVString* @vStringNewCopy(%struct.sVString* %25)
  %26 = load %struct.sInputFileInfo*, %struct.sInputFileInfo** %finfo.addr, align 8
  %tagPath28 = getelementptr inbounds %struct.sInputFileInfo, %struct.sInputFileInfo* %26, i32 0, i32 1
  store %struct.sVString* %call27, %struct.sVString** %tagPath28, align 8
  br label %if.end35

if.else29:                                        ; preds = %lor.lhs.false
  %27 = load %struct.sVString*, %struct.sVString** %fileName.addr, align 8
  %buffer30 = getelementptr inbounds %struct.sVString, %struct.sVString* %27, i32 0, i32 2
  %28 = load i8*, i8** %buffer30, align 8
  %call31 = call i8* @getTagFileDirectory()
  %call32 = call i8* @relativeFilename(i8* %28, i8* %call31)
  %call33 = call %struct.sVString* @vStringNewOwn(i8* %call32)
  %29 = load %struct.sInputFileInfo*, %struct.sInputFileInfo** %finfo.addr, align 8
  %tagPath34 = getelementptr inbounds %struct.sInputFileInfo, %struct.sInputFileInfo* %29, i32 0, i32 1
  store %struct.sVString* %call33, %struct.sVString** %tagPath34, align 8
  br label %if.end35

if.end35:                                         ; preds = %if.else29, %if.then26
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.then17
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.then11
  %30 = load %struct.sVString*, %struct.sVString** %fileName.addr, align 8
  %buffer38 = getelementptr inbounds %struct.sVString, %struct.sVString* %30, i32 0, i32 2
  %31 = load i8*, i8** %buffer38, align 8
  %call39 = call zeroext i1 @isIncludeFile(i8* %31)
  %32 = load %struct.sInputFileInfo*, %struct.sInputFileInfo** %finfo.addr, align 8
  %isHeader = getelementptr inbounds %struct.sInputFileInfo, %struct.sInputFileInfo* %32, i32 0, i32 4
  %frombool = zext i1 %call39 to i8
  store i8 %frombool, i8* %isHeader, align 8
  %33 = load void (%union.sInputLangInfo*, i32)*, void (%union.sInputLangInfo*, i32)** %setLang.addr, align 8
  %34 = load %struct.sInputFileInfo*, %struct.sInputFileInfo** %finfo.addr, align 8
  %langInfo = getelementptr inbounds %struct.sInputFileInfo, %struct.sInputFileInfo* %34, i32 0, i32 5
  %35 = load i32, i32* %language.addr, align 4
  call void %33(%union.sInputLangInfo* %langInfo, i32 %35)
  ret void
}

declare void @stringListAdd(%struct.sPtrArray*, %struct.sVString*) #2

declare %struct.sVString* @vStringNewOwn(i8*) #2

declare i8* @relativeFilename(i8*, i8*) #2

declare i8* @getTagFileDirectory() #2

declare i8* @absoluteFilename(i8*) #2

declare zeroext i1 @isAbsolutePath(i8*) #2

declare %struct.sVString* @vStringNewCopy(%struct.sVString*) #2

declare zeroext i1 @isIncludeFile(i8*) #2

declare i8* @eCalloc(i64, i64) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @langStackClear(%struct.sLangStack* %langStack) #0 {
entry:
  %langStack.addr = alloca %struct.sLangStack*, align 8
  store %struct.sLangStack* %langStack, %struct.sLangStack** %langStack.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.sLangStack*, %struct.sLangStack** %langStack.addr, align 8
  %count = getelementptr inbounds %struct.sLangStack, %struct.sLangStack* %0, i32 0, i32 1
  %1 = load i32, i32* %count, align 8
  %cmp = icmp ugt i32 %1, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.sLangStack*, %struct.sLangStack** %langStack.addr, align 8
  %call = call i32 @langStackPop(%struct.sLangStack* %2)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @langStackPush(%struct.sLangStack* %langStack, i32 %type) #0 {
entry:
  %langStack.addr = alloca %struct.sLangStack*, align 8
  %type.addr = alloca i32, align 4
  store %struct.sLangStack* %langStack, %struct.sLangStack** %langStack.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  %0 = load %struct.sLangStack*, %struct.sLangStack** %langStack.addr, align 8
  %size = getelementptr inbounds %struct.sLangStack, %struct.sLangStack* %0, i32 0, i32 2
  %1 = load i32, i32* %size, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.sLangStack*, %struct.sLangStack** %langStack.addr, align 8
  call void @langStackInit(%struct.sLangStack* %2)
  br label %if.end6

if.else:                                          ; preds = %entry
  %3 = load %struct.sLangStack*, %struct.sLangStack** %langStack.addr, align 8
  %count = getelementptr inbounds %struct.sLangStack, %struct.sLangStack* %3, i32 0, i32 1
  %4 = load i32, i32* %count, align 8
  %5 = load %struct.sLangStack*, %struct.sLangStack** %langStack.addr, align 8
  %size1 = getelementptr inbounds %struct.sLangStack, %struct.sLangStack* %5, i32 0, i32 2
  %6 = load i32, i32* %size1, align 4
  %cmp2 = icmp eq i32 %4, %6
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.else
  %7 = load %struct.sLangStack*, %struct.sLangStack** %langStack.addr, align 8
  %languages = getelementptr inbounds %struct.sLangStack, %struct.sLangStack* %7, i32 0, i32 0
  %8 = load i32*, i32** %languages, align 8
  %9 = bitcast i32* %8 to i8*
  %10 = load %struct.sLangStack*, %struct.sLangStack** %langStack.addr, align 8
  %size4 = getelementptr inbounds %struct.sLangStack, %struct.sLangStack* %10, i32 0, i32 2
  %11 = load i32, i32* %size4, align 4
  %inc = add i32 %11, 1
  store i32 %inc, i32* %size4, align 4
  %conv = zext i32 %inc to i64
  %mul = mul i64 %conv, 4
  %call = call i8* @eRealloc(i8* %9, i64 %mul)
  %12 = bitcast i8* %call to i32*
  %13 = load %struct.sLangStack*, %struct.sLangStack** %langStack.addr, align 8
  %languages5 = getelementptr inbounds %struct.sLangStack, %struct.sLangStack* %13, i32 0, i32 0
  store i32* %12, i32** %languages5, align 8
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.then
  %14 = load i32, i32* %type.addr, align 4
  %15 = load %struct.sLangStack*, %struct.sLangStack** %langStack.addr, align 8
  %languages7 = getelementptr inbounds %struct.sLangStack, %struct.sLangStack* %15, i32 0, i32 0
  %16 = load i32*, i32** %languages7, align 8
  %17 = load %struct.sLangStack*, %struct.sLangStack** %langStack.addr, align 8
  %count8 = getelementptr inbounds %struct.sLangStack, %struct.sLangStack* %17, i32 0, i32 1
  %18 = load i32, i32* %count8, align 8
  %inc9 = add i32 %18, 1
  store i32 %inc9, i32* %count8, align 8
  %idxprom = zext i32 %18 to i64
  %arrayidx = getelementptr inbounds i32, i32* %16, i64 %idxprom
  store i32 %14, i32* %arrayidx, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @langStackPop(%struct.sLangStack* %langStack) #0 {
entry:
  %langStack.addr = alloca %struct.sLangStack*, align 8
  store %struct.sLangStack* %langStack, %struct.sLangStack** %langStack.addr, align 8
  %0 = load %struct.sLangStack*, %struct.sLangStack** %langStack.addr, align 8
  %languages = getelementptr inbounds %struct.sLangStack, %struct.sLangStack* %0, i32 0, i32 0
  %1 = load i32*, i32** %languages, align 8
  %2 = load %struct.sLangStack*, %struct.sLangStack** %langStack.addr, align 8
  %count = getelementptr inbounds %struct.sLangStack, %struct.sLangStack* %2, i32 0, i32 1
  %3 = load i32, i32* %count, align 8
  %dec = add i32 %3, -1
  store i32 %dec, i32* %count, align 8
  %idxprom = zext i32 %dec to i64
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @langStackInit(%struct.sLangStack* %langStack) #0 {
entry:
  %langStack.addr = alloca %struct.sLangStack*, align 8
  store %struct.sLangStack* %langStack, %struct.sLangStack** %langStack.addr, align 8
  %0 = load %struct.sLangStack*, %struct.sLangStack** %langStack.addr, align 8
  %count = getelementptr inbounds %struct.sLangStack, %struct.sLangStack* %0, i32 0, i32 1
  store i32 0, i32* %count, align 8
  %1 = load %struct.sLangStack*, %struct.sLangStack** %langStack.addr, align 8
  %size = getelementptr inbounds %struct.sLangStack, %struct.sLangStack* %1, i32 0, i32 2
  store i32 1, i32* %size, align 4
  %2 = load %struct.sLangStack*, %struct.sLangStack** %langStack.addr, align 8
  %size1 = getelementptr inbounds %struct.sLangStack, %struct.sLangStack* %2, i32 0, i32 2
  %3 = load i32, i32* %size1, align 4
  %conv = zext i32 %3 to i64
  %call = call i8* @eCalloc(i64 %conv, i64 4)
  %4 = bitcast i8* %call to i32*
  %5 = load %struct.sLangStack*, %struct.sLangStack** %langStack.addr, align 8
  %languages = getelementptr inbounds %struct.sLangStack, %struct.sLangStack* %5, i32 0, i32 0
  store i32* %4, i32** %languages, align 8
  %6 = load %struct.sLangStack*, %struct.sLangStack** %langStack.addr, align 8
  %languages2 = getelementptr inbounds %struct.sLangStack, %struct.sLangStack* %6, i32 0, i32 0
  %7 = bitcast i32** %languages2 to i8*
  %call3 = call i8* @trashBoxPut(%struct.sTrashBox* null, i8* %7, void (i8*)* bitcast (void (i8**)* @eFreeIndirect to void (i8*)*))
  ret void
}

declare void @eFreeIndirect(i8**) #2

declare zeroext i1 @hasLanguageMultilineRegexPatterns(i32) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @fileNewline(i1 zeroext %crAdjustment) #0 {
entry:
  %crAdjustment.addr = alloca i8, align 1
  %frombool = zext i1 %crAdjustment to i8
  store i8 %frombool, i8* %crAdjustment.addr, align 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.sComputPos* getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 4) to i8*), i8* align 8 bitcast (%struct.sComputPos* @StartOfLine to i8*), i64 32, i1 false)
  %0 = load %struct._MIO*, %struct._MIO** getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @BackupFile, i32 0, i32 3), align 8
  %cmp = icmp eq %struct._MIO* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8, i8* %crAdjustment.addr, align 1
  %tobool = trunc i8 %1 to i1
  call void @appendLineFposMap(%struct.sInputLineFposMap* getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 12), %struct.sComputPos* getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 4), i1 zeroext %tobool)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i64, i64* getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 8, i32 2), align 8
  %inc = add i64 %2, 1
  store i64 %inc, i64* getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 8, i32 2), align 8
  %3 = load i64, i64* getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 9, i32 2), align 8
  %inc1 = add i64 %3, 1
  store i64 %inc1, i64* getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 9, i32 2), align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @parseLineDirective(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %result = alloca i8, align 1
  %lNum = alloca i64, align 8
  %fileName = alloca %struct.sVString*, align 8
  store i8* %s, i8** %s.addr, align 8
  store i8 0, i8* %result, align 1
  call void @skipWhite(i8** %s.addr)
  %0 = load i8*, i8** %s.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %call = call i32 @isdigit(i32 %conv) #6
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i8 1, i8* %result, align 1
  br label %if.end12

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** %s.addr, align 8
  %call1 = call i32 @strncmp(i8* %2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i64 4)
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %if.then3, label %if.end11

if.then3:                                         ; preds = %if.else
  %3 = load i8*, i8** %s.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 4
  store i8* %add.ptr, i8** %s.addr, align 8
  %4 = load i8*, i8** %s.addr, align 8
  %5 = load i8, i8* %4, align 1
  %conv4 = sext i8 %5 to i32
  %cmp5 = icmp eq i32 %conv4, 32
  br i1 %cmp5, label %if.then10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then3
  %6 = load i8*, i8** %s.addr, align 8
  %7 = load i8, i8* %6, align 1
  %conv7 = sext i8 %7 to i32
  %cmp8 = icmp eq i32 %conv7, 9
  br i1 %cmp8, label %if.then10, label %if.end

if.then10:                                        ; preds = %lor.lhs.false, %if.then3
  store i8 1, i8* %result, align 1
  br label %if.end

if.end:                                           ; preds = %if.then10, %lor.lhs.false
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.else
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %if.then
  %8 = load i8, i8* %result, align 1
  %tobool13 = trunc i8 %8 to i1
  br i1 %tobool13, label %if.then14, label %if.end38

if.then14:                                        ; preds = %if.end12
  %call15 = call i64 @readLineNumber(i8** %s.addr)
  store i64 %call15, i64* %lNum, align 8
  %9 = load i64, i64* %lNum, align 8
  %cmp16 = icmp eq i64 %9, 0
  br i1 %cmp16, label %if.then18, label %if.else19

if.then18:                                        ; preds = %if.then14
  store i8 0, i8* %result, align 1
  br label %if.end37

if.else19:                                        ; preds = %if.then14
  %10 = load i8*, i8** %s.addr, align 8
  %call20 = call %struct.sVString* @readFileName(i8* %10)
  store %struct.sVString* %call20, %struct.sVString** %fileName, align 8
  %11 = load %struct.sVString*, %struct.sVString** %fileName, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %11, i32 0, i32 0
  %12 = load i64, i64* %length, align 8
  %cmp21 = icmp eq i64 %12, 0
  br i1 %cmp21, label %if.then23, label %if.else24

if.then23:                                        ; preds = %if.else19
  %13 = load i64, i64* %lNum, align 8
  %sub = sub i64 %13, 1
  store i64 %sub, i64* getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 9, i32 2), align 8
  br label %if.end29

if.else24:                                        ; preds = %if.else19
  %14 = load %struct.sVString*, %struct.sVString** %fileName, align 8
  %call25 = call zeroext i1 @setSourceFileName(%struct.sVString* %14)
  br i1 %call25, label %if.then26, label %if.end28

if.then26:                                        ; preds = %if.else24
  %15 = load i64, i64* %lNum, align 8
  %sub27 = sub i64 %15, 1
  store i64 %sub27, i64* getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 9, i32 2), align 8
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.else24
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.then23
  %16 = load %struct.sVString*, %struct.sVString** %fileName, align 8
  %length30 = getelementptr inbounds %struct.sVString, %struct.sVString* %16, i32 0, i32 0
  %17 = load i64, i64* %length30, align 8
  %cmp31 = icmp ugt i64 %17, 0
  br i1 %cmp31, label %land.lhs.true, label %if.end36

land.lhs.true:                                    ; preds = %if.end29
  %18 = load i64, i64* %lNum, align 8
  %cmp33 = icmp eq i64 %18, 1
  br i1 %cmp33, label %if.then35, label %if.end36

if.then35:                                        ; preds = %land.lhs.true
  %19 = load %struct.sVString*, %struct.sVString** %fileName, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %19, i32 0, i32 2
  %20 = load i8*, i8** %buffer, align 8
  call void @makeFileTag(i8* %20)
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %land.lhs.true, %if.end29
  %21 = load %struct.sVString*, %struct.sVString** %fileName, align 8
  call void @vStringDelete(%struct.sVString* %21)
  store i8 1, i8* %result, align 1
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.then18
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %if.end12
  %22 = load i8, i8* %result, align 1
  %tobool39 = trunc i8 %22 to i1
  ret i1 %tobool39
}

declare void @matchLanguageRegex(i32, %struct.sVString*) #2

declare void @vStringCat(%struct.sVString*, %struct.sVString*) #2

declare void @matchLanguageMultilineRegex(i32, %struct.sVString*) #2

declare void @matchLanguageMultitableRegex(i32, %struct.sVString*) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @appendLineFposMap(%struct.sInputLineFposMap* %lineFposMap, %struct.sComputPos* %pos, i1 zeroext %crAdjustment) #0 {
entry:
  %lineFposMap.addr = alloca %struct.sInputLineFposMap*, align 8
  %pos.addr = alloca %struct.sComputPos*, align 8
  %crAdjustment.addr = alloca i8, align 1
  %lastCrAdjustment = alloca i32, align 4
  store %struct.sInputLineFposMap* %lineFposMap, %struct.sInputLineFposMap** %lineFposMap.addr, align 8
  store %struct.sComputPos* %pos, %struct.sComputPos** %pos.addr, align 8
  %frombool = zext i1 %crAdjustment to i8
  store i8 %frombool, i8* %crAdjustment.addr, align 1
  store i32 0, i32* %lastCrAdjustment, align 4
  %0 = load %struct.sInputLineFposMap*, %struct.sInputLineFposMap** %lineFposMap.addr, align 8
  %size = getelementptr inbounds %struct.sInputLineFposMap, %struct.sInputLineFposMap* %0, i32 0, i32 2
  %1 = load i32, i32* %size, align 4
  %2 = load %struct.sInputLineFposMap*, %struct.sInputLineFposMap** %lineFposMap.addr, align 8
  %count = getelementptr inbounds %struct.sInputLineFposMap, %struct.sInputLineFposMap* %2, i32 0, i32 1
  %3 = load i32, i32* %count, align 8
  %cmp = icmp eq i32 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.sInputLineFposMap*, %struct.sInputLineFposMap** %lineFposMap.addr, align 8
  %size1 = getelementptr inbounds %struct.sInputLineFposMap, %struct.sInputLineFposMap* %4, i32 0, i32 2
  %5 = load i32, i32* %size1, align 4
  %mul = mul i32 %5, 2
  store i32 %mul, i32* %size1, align 4
  %6 = load %struct.sInputLineFposMap*, %struct.sInputLineFposMap** %lineFposMap.addr, align 8
  %pos2 = getelementptr inbounds %struct.sInputLineFposMap, %struct.sInputLineFposMap* %6, i32 0, i32 0
  %7 = load %struct.sComputPos*, %struct.sComputPos** %pos2, align 8
  %8 = bitcast %struct.sComputPos* %7 to i8*
  %9 = load %struct.sInputLineFposMap*, %struct.sInputLineFposMap** %lineFposMap.addr, align 8
  %size3 = getelementptr inbounds %struct.sInputLineFposMap, %struct.sInputLineFposMap* %9, i32 0, i32 2
  %10 = load i32, i32* %size3, align 4
  %conv = zext i32 %10 to i64
  %mul4 = mul i64 %conv, 32
  %call = call i8* @eRealloc(i8* %8, i64 %mul4)
  %11 = bitcast i8* %call to %struct.sComputPos*
  %12 = load %struct.sInputLineFposMap*, %struct.sInputLineFposMap** %lineFposMap.addr, align 8
  %pos5 = getelementptr inbounds %struct.sInputLineFposMap, %struct.sInputLineFposMap* %12, i32 0, i32 0
  store %struct.sComputPos* %11, %struct.sComputPos** %pos5, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load %struct.sInputLineFposMap*, %struct.sInputLineFposMap** %lineFposMap.addr, align 8
  %count6 = getelementptr inbounds %struct.sInputLineFposMap, %struct.sInputLineFposMap* %13, i32 0, i32 1
  %14 = load i32, i32* %count6, align 8
  %cmp7 = icmp ne i32 %14, 0
  br i1 %cmp7, label %if.then9, label %if.end18

if.then9:                                         ; preds = %if.end
  %15 = load %struct.sInputLineFposMap*, %struct.sInputLineFposMap** %lineFposMap.addr, align 8
  %pos10 = getelementptr inbounds %struct.sInputLineFposMap, %struct.sInputLineFposMap* %15, i32 0, i32 0
  %16 = load %struct.sComputPos*, %struct.sComputPos** %pos10, align 8
  %17 = load %struct.sInputLineFposMap*, %struct.sInputLineFposMap** %lineFposMap.addr, align 8
  %count11 = getelementptr inbounds %struct.sInputLineFposMap, %struct.sInputLineFposMap* %17, i32 0, i32 1
  %18 = load i32, i32* %count11, align 8
  %sub = sub i32 %18, 1
  %idxprom = zext i32 %sub to i64
  %arrayidx = getelementptr inbounds %struct.sComputPos, %struct.sComputPos* %16, i64 %idxprom
  %open = getelementptr inbounds %struct.sComputPos, %struct.sComputPos* %arrayidx, i32 0, i32 2
  store i8 0, i8* %open, align 8
  %19 = load %struct.sInputLineFposMap*, %struct.sInputLineFposMap** %lineFposMap.addr, align 8
  %pos12 = getelementptr inbounds %struct.sInputLineFposMap, %struct.sInputLineFposMap* %19, i32 0, i32 0
  %20 = load %struct.sComputPos*, %struct.sComputPos** %pos12, align 8
  %21 = load %struct.sInputLineFposMap*, %struct.sInputLineFposMap** %lineFposMap.addr, align 8
  %count13 = getelementptr inbounds %struct.sInputLineFposMap, %struct.sInputLineFposMap* %21, i32 0, i32 1
  %22 = load i32, i32* %count13, align 8
  %sub14 = sub i32 %22, 1
  %idxprom15 = zext i32 %sub14 to i64
  %arrayidx16 = getelementptr inbounds %struct.sComputPos, %struct.sComputPos* %20, i64 %idxprom15
  %crAdjustment17 = getelementptr inbounds %struct.sComputPos, %struct.sComputPos* %arrayidx16, i32 0, i32 3
  %23 = load i32, i32* %crAdjustment17, align 4
  store i32 %23, i32* %lastCrAdjustment, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then9, %if.end
  %24 = load %struct.sInputLineFposMap*, %struct.sInputLineFposMap** %lineFposMap.addr, align 8
  %pos19 = getelementptr inbounds %struct.sInputLineFposMap, %struct.sInputLineFposMap* %24, i32 0, i32 0
  %25 = load %struct.sComputPos*, %struct.sComputPos** %pos19, align 8
  %26 = load %struct.sInputLineFposMap*, %struct.sInputLineFposMap** %lineFposMap.addr, align 8
  %count20 = getelementptr inbounds %struct.sInputLineFposMap, %struct.sInputLineFposMap* %26, i32 0, i32 1
  %27 = load i32, i32* %count20, align 8
  %idxprom21 = zext i32 %27 to i64
  %arrayidx22 = getelementptr inbounds %struct.sComputPos, %struct.sComputPos* %25, i64 %idxprom21
  %28 = load %struct.sComputPos*, %struct.sComputPos** %pos.addr, align 8
  %29 = bitcast %struct.sComputPos* %arrayidx22 to i8*
  %30 = bitcast %struct.sComputPos* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %29, i8* align 8 %30, i64 32, i1 false)
  %31 = load %struct.sInputLineFposMap*, %struct.sInputLineFposMap** %lineFposMap.addr, align 8
  %pos23 = getelementptr inbounds %struct.sInputLineFposMap, %struct.sInputLineFposMap* %31, i32 0, i32 0
  %32 = load %struct.sComputPos*, %struct.sComputPos** %pos23, align 8
  %33 = load %struct.sInputLineFposMap*, %struct.sInputLineFposMap** %lineFposMap.addr, align 8
  %count24 = getelementptr inbounds %struct.sInputLineFposMap, %struct.sInputLineFposMap* %33, i32 0, i32 1
  %34 = load i32, i32* %count24, align 8
  %idxprom25 = zext i32 %34 to i64
  %arrayidx26 = getelementptr inbounds %struct.sComputPos, %struct.sComputPos* %32, i64 %idxprom25
  %open27 = getelementptr inbounds %struct.sComputPos, %struct.sComputPos* %arrayidx26, i32 0, i32 2
  store i8 1, i8* %open27, align 8
  %35 = load i32, i32* %lastCrAdjustment, align 4
  %36 = load i8, i8* %crAdjustment.addr, align 1
  %tobool = trunc i8 %36 to i1
  %37 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i32 1, i32 0
  %add = add nsw i32 %35, %cond
  %38 = load %struct.sInputLineFposMap*, %struct.sInputLineFposMap** %lineFposMap.addr, align 8
  %pos29 = getelementptr inbounds %struct.sInputLineFposMap, %struct.sInputLineFposMap* %38, i32 0, i32 0
  %39 = load %struct.sComputPos*, %struct.sComputPos** %pos29, align 8
  %40 = load %struct.sInputLineFposMap*, %struct.sInputLineFposMap** %lineFposMap.addr, align 8
  %count30 = getelementptr inbounds %struct.sInputLineFposMap, %struct.sInputLineFposMap* %40, i32 0, i32 1
  %41 = load i32, i32* %count30, align 8
  %idxprom31 = zext i32 %41 to i64
  %arrayidx32 = getelementptr inbounds %struct.sComputPos, %struct.sComputPos* %39, i64 %idxprom31
  %crAdjustment33 = getelementptr inbounds %struct.sComputPos, %struct.sComputPos* %arrayidx32, i32 0, i32 3
  store i32 %add, i32* %crAdjustment33, align 4
  %42 = load %struct.sInputLineFposMap*, %struct.sInputLineFposMap** %lineFposMap.addr, align 8
  %count34 = getelementptr inbounds %struct.sInputLineFposMap, %struct.sInputLineFposMap* %42, i32 0, i32 1
  %43 = load i32, i32* %count34, align 8
  %inc = add i32 %43, 1
  store i32 %inc, i32* %count34, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @skipWhite(i8** %str) #0 {
entry:
  %str.addr = alloca i8**, align 8
  store i8** %str, i8*** %str.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i8**, i8*** %str.addr, align 8
  %1 = load i8*, i8** %0, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 32
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %3 = load i8**, i8*** %str.addr, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = load i8, i8* %4, align 1
  %conv2 = sext i8 %5 to i32
  %cmp3 = icmp eq i32 %conv2, 9
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %6 = phi i1 [ true, %while.cond ], [ %cmp3, %lor.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %7 = load i8**, i8*** %str.addr, align 8
  %8 = load i8*, i8** %7, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr, i8** %7, align 8
  br label %while.cond

while.end:                                        ; preds = %lor.end
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @isdigit(i32) #4

declare i32 @strncmp(i8*, i8*, i64) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i64 @readLineNumber(i8** %str) #0 {
entry:
  %str.addr = alloca i8**, align 8
  %s = alloca i8*, align 8
  %lNum = alloca i64, align 8
  store i8** %str, i8*** %str.addr, align 8
  store i64 0, i64* %lNum, align 8
  %0 = load i8**, i8*** %str.addr, align 8
  call void @skipWhite(i8** %0)
  %1 = load i8**, i8*** %str.addr, align 8
  %2 = load i8*, i8** %1, align 8
  store i8* %2, i8** %s, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = load i8*, i8** %s, align 8
  %4 = load i8, i8* %3, align 1
  %conv = sext i8 %4 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %5 = load i8*, i8** %s, align 8
  %6 = load i8, i8* %5, align 1
  %conv2 = sext i8 %6 to i32
  %call = call i32 @isdigit(i32 %conv2) #6
  %tobool = icmp ne i32 %call, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %7 = phi i1 [ false, %while.cond ], [ %tobool, %land.rhs ]
  br i1 %7, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %8 = load i64, i64* %lNum, align 8
  %mul = mul i64 %8, 10
  %9 = load i8*, i8** %s, align 8
  %10 = load i8, i8* %9, align 1
  %conv3 = sext i8 %10 to i32
  %sub = sub nsw i32 %conv3, 48
  %conv4 = sext i32 %sub to i64
  %add = add i64 %mul, %conv4
  store i64 %add, i64* %lNum, align 8
  %11 = load i8*, i8** %s, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr, i8** %s, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %12 = load i8*, i8** %s, align 8
  %13 = load i8, i8* %12, align 1
  %conv5 = sext i8 %13 to i32
  %cmp6 = icmp ne i32 %conv5, 32
  br i1 %cmp6, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.end
  %14 = load i8*, i8** %s, align 8
  %15 = load i8, i8* %14, align 1
  %conv8 = sext i8 %15 to i32
  %cmp9 = icmp ne i32 %conv8, 9
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i64 0, i64* %lNum, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %while.end
  %16 = load i8*, i8** %s, align 8
  %17 = load i8**, i8*** %str.addr, align 8
  store i8* %16, i8** %17, align 8
  %18 = load i64, i64* %lNum, align 8
  ret i64 %18
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct.sVString* @readFileName(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %fileName = alloca %struct.sVString*, align 8
  %quoteDelimited = alloca i8, align 1
  store i8* %s, i8** %s.addr, align 8
  %call = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call, %struct.sVString** %fileName, align 8
  store i8 0, i8* %quoteDelimited, align 1
  call void @skipWhite(i8** %s.addr)
  %0 = load i8*, i8** %s.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 34
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %s.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 8
  store i8 1, i8* %quoteDelimited, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %3 = load i8*, i8** %s.addr, align 8
  %4 = load i8, i8* %3, align 1
  %conv2 = sext i8 %4 to i32
  %cmp3 = icmp ne i32 %conv2, 0
  br i1 %cmp3, label %land.lhs.true, label %land.end20

land.lhs.true:                                    ; preds = %while.cond
  %5 = load i8*, i8** %s.addr, align 8
  %6 = load i8, i8* %5, align 1
  %conv5 = sext i8 %6 to i32
  %cmp6 = icmp ne i32 %conv5, 10
  br i1 %cmp6, label %land.rhs, label %land.end20

land.rhs:                                         ; preds = %land.lhs.true
  %7 = load i8, i8* %quoteDelimited, align 1
  %tobool = trunc i8 %7 to i1
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.rhs
  %8 = load i8*, i8** %s.addr, align 8
  %9 = load i8, i8* %8, align 1
  %conv9 = sext i8 %9 to i32
  %cmp10 = icmp ne i32 %conv9, 34
  %conv11 = zext i1 %cmp10 to i32
  br label %cond.end

cond.false:                                       ; preds = %land.rhs
  %10 = load i8*, i8** %s.addr, align 8
  %11 = load i8, i8* %10, align 1
  %conv12 = sext i8 %11 to i32
  %cmp13 = icmp ne i32 %conv12, 32
  br i1 %cmp13, label %land.rhs15, label %land.end

land.rhs15:                                       ; preds = %cond.false
  %12 = load i8*, i8** %s.addr, align 8
  %13 = load i8, i8* %12, align 1
  %conv16 = sext i8 %13 to i32
  %cmp17 = icmp ne i32 %conv16, 9
  br label %land.end

land.end:                                         ; preds = %land.rhs15, %cond.false
  %14 = phi i1 [ false, %cond.false ], [ %cmp17, %land.rhs15 ]
  %land.ext = zext i1 %14 to i32
  br label %cond.end

cond.end:                                         ; preds = %land.end, %cond.true
  %cond = phi i32 [ %conv11, %cond.true ], [ %land.ext, %land.end ]
  %tobool19 = icmp ne i32 %cond, 0
  br label %land.end20

land.end20:                                       ; preds = %cond.end, %land.lhs.true, %while.cond
  %15 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool19, %cond.end ]
  br i1 %15, label %while.body, label %while.end

while.body:                                       ; preds = %land.end20
  %16 = load %struct.sVString*, %struct.sVString** %fileName, align 8
  %17 = load i8*, i8** %s.addr, align 8
  %18 = load i8, i8* %17, align 1
  %conv22 = sext i8 %18 to i32
  call void @vStringPut(%struct.sVString* %16, i32 %conv22)
  %19 = load i8*, i8** %s.addr, align 8
  %incdec.ptr23 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr23, i8** %s.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end20
  %20 = load %struct.sVString*, %struct.sVString** %fileName, align 8
  call void @vStringPut(%struct.sVString* %20, i32 0)
  %21 = load %struct.sVString*, %struct.sVString** %fileName, align 8
  ret %struct.sVString* %21
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @setSourceFileName(%struct.sVString* %fileName) #0 {
entry:
  %fileName.addr = alloca %struct.sVString*, align 8
  %language = alloca i32, align 4
  %result = alloca i8, align 1
  %pathName = alloca %struct.sVString*, align 8
  %tmp = alloca i8*, align 8
  store %struct.sVString* %fileName, %struct.sVString** %fileName.addr, align 8
  %0 = load %struct.sVString*, %struct.sVString** %fileName.addr, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %0, i32 0, i32 2
  %1 = load i8*, i8** %buffer, align 8
  %call = call i32 @getLanguageForFilenameAndContents(i8* %1)
  store i32 %call, i32* %language, align 4
  store i8 0, i8* %result, align 1
  %2 = load i32, i32* %language, align 4
  %cmp = icmp ne i32 %2, -2
  br i1 %cmp, label %if.then, label %if.end10

if.then:                                          ; preds = %entry
  %3 = load %struct.sVString*, %struct.sVString** %fileName.addr, align 8
  %buffer1 = getelementptr inbounds %struct.sVString, %struct.sVString* %3, i32 0, i32 2
  %4 = load i8*, i8** %buffer1, align 8
  %call2 = call zeroext i1 @isAbsolutePath(i8* %4)
  br i1 %call2, label %if.then4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %5 = load %struct.sVString*, %struct.sVString** getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 0), align 8
  %cmp3 = icmp eq %struct.sVString* %5, null
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %lor.lhs.false, %if.then
  %6 = load %struct.sVString*, %struct.sVString** %fileName.addr, align 8
  %call5 = call %struct.sVString* @vStringNewCopy(%struct.sVString* %6)
  store %struct.sVString* %call5, %struct.sVString** %pathName, align 8
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %7 = load %struct.sVString*, %struct.sVString** getelementptr inbounds (%struct.sInputFile, %struct.sInputFile* @File, i32 0, i32 0), align 8
  %buffer6 = getelementptr inbounds %struct.sVString, %struct.sVString* %7, i32 0, i32 2
  %8 = load i8*, i8** %buffer6, align 8
  %9 = load %struct.sVString*, %struct.sVString** %fileName.addr, align 8
  %buffer7 = getelementptr inbounds %struct.sVString, %struct.sVString* %9, i32 0, i32 2
  %10 = load i8*, i8** %buffer7, align 8
  %call8 = call i8* @combinePathAndFile(i8* %8, i8* %10)
  store i8* %call8, i8** %tmp, align 8
  %11 = load i8*, i8** %tmp, align 8
  %call9 = call %struct.sVString* @vStringNewOwn(i8* %11)
  store %struct.sVString* %call9, %struct.sVString** %pathName, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then4
  %12 = load %struct.sVString*, %struct.sVString** %pathName, align 8
  %13 = load i32, i32* %language, align 4
  call void @setSourceFileParameters(%struct.sVString* %12, i32 %13)
  store i8 1, i8* %result, align 1
  br label %if.end10

if.end10:                                         ; preds = %if.end, %entry
  %14 = load i8, i8* %result, align 1
  %tobool = trunc i8 %14 to i1
  ret i1 %tobool
}

declare void @makeFileTag(i8*) #2

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

declare void @vStringResize(%struct.sVString*, i64) #2

declare i32 @getLanguageForFilenameAndContents(i8*) #2

declare i8* @combinePathAndFile(i8*, i8*) #2

declare i8* @mio_gets(%struct._MIO*, i8*, i64) #2

declare i32 @mio_eof(%struct._MIO*) #2

declare void @vStringSetLength(%struct.sVString*) #2

declare void @vStringChop(%struct.sVString*) #2

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { cold "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { cold }
attributes #6 = { nounwind readonly }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 10.0.0 (https://github.com/holzschu/clang.git 0cfc630fbdb62e96720b611a57123ef3eb13e297) (https://github.com/holzschu/llvm.git 0d8a71e39b28502c24718f7e74b5acbcfe36dfe0)"}
