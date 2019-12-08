; ModuleID = 'rst.c'
source_filename = "rst.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-ios11.0.0"

%struct.sKindDefinition = type { i8, i8, i8*, i8*, i8, i32, %struct.sRoleDesc*, %struct.sScopeSeparator*, i32, i32, i32, %struct.sKindDefinition*, %struct.sKindDefinition* }
%struct.sRoleDesc = type { i8, i8*, i8* }
%struct.sScopeSeparator = type { i32, i8* }
%struct.sFieldDefinition = type { i8, i8*, i8*, i8, [5 x i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)*], i1 (%struct.sTagEntryInfo*)*, i32, i32 }
%struct.sTagEntryInfo = type { i8, i64, i8*, i32, %struct._MIOPos, i32, i8*, i8*, i32, [2 x i8], i8*, %struct.anon, i32, [5 x %struct.sTagField], %struct.sPtrArray*, i32, i8*, i64 }
%struct._MIOPos = type { i32, %union.anon.0 }
%union.anon.0 = type { i64 }
%struct.anon = type { i8*, i8*, i8*, i8*, i32, i32, i8*, i32, i8*, [2 x i8*], i32, i64 }
%struct.sTagField = type { i32, i8*, i8 }
%struct.sPtrArray = type opaque
%struct.sVString = type { i64, i64, i8* }
%struct.NestingLevels = type { i8*, i32, i32, i64 }
%struct.sParserDefinition = type { i8*, %struct.sKindDefinition*, i32, i8**, i8**, i8**, void (i32)*, void (i32, i1)*, void ()*, i32 (i32)*, i8* (%struct._MIO*, i32*, i32)**, i32, i8, i8, i8, i8, %struct.tagRegexTable*, i32, %struct.keywordTable*, i32, %struct.sTagXpathTableTable*, i32, i8, %struct.sFieldDefinition*, i32, %struct.sXtagDefinition*, i32, %struct.sParserDependency*, i32, %struct.sParameterHandlerTable*, i32, %struct.sXpathFileSpec*, i32, i32, i8 }
%struct._MIO = type opaque
%struct.tagRegexTable = type { i8*, i8*, i8*, i8*, i8*, i8 }
%struct.keywordTable = type { i8*, i32 }
%struct.sTagXpathTableTable = type { %struct.sTagXpathTable*, i32 }
%struct.sTagXpathTable = type { i8*, i32, %union.anon, i8* }
%union.anon = type { %struct.sTagXpathMakeTagSpec }
%struct.sTagXpathMakeTagSpec = type { i32, i32, void (i8*, %struct.sTagXpathMakeTagSpec*, %struct.sTagEntryInfo*, i8*)* }
%struct.sXtagDefinition = type { i8, i8, i8*, i8*, i1 (%struct.sXtagDefinition*)*, i1 (%struct.sXtagDefinition*)*, i32 }
%struct.sParserDependency = type { i32, i8*, i8* }
%struct.sParameterHandlerTable = type { i8*, i8*, void (i32, i8*, i8*)* }
%struct.sXpathFileSpec = type { i8*, i8*, i8*, i8*, i8*, i8* }
%struct.NestingLevel = type { i32, [0 x i8] }

@.str = private unnamed_addr constant [17 x i8] c"reStructuredText\00", align 1
@RstKinds = internal global [4 x %struct.sKindDefinition] [%struct.sKindDefinition { i8 1, i8 99, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 115, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 83, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 116, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }], align 8
@extensions = internal constant [4 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), i8* null], align 8
@RstFields = internal global [1 x %struct.sFieldDefinition] [%struct.sFieldDefinition { i8 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.13, i32 0, i32 0), i8 0, [5 x i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)*] zeroinitializer, i1 (%struct.sTagEntryInfo*)* null, i32 0, i32 0 }], align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"chapter\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"chapters\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"section\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"sections\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"subsection\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"subsections\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"subsubsection\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"subsubsections\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"rest\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"reST\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"rst\00", align 1
@kindchars = internal global [4 x i8] zeroinitializer, align 1
@nestingLevels = internal global %struct.NestingLevels* null, align 8
@.str.12 = private unnamed_addr constant [14 x i8] c"sectionMarker\00", align 1
@.str.13 = private unnamed_addr constant [37 x i8] c"character used for declaring section\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sParserDefinition* @RstParser() #0 {
entry:
  %def = alloca %struct.sParserDefinition*, align 8
  %call = call %struct.sParserDefinition* @parserNew(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store %struct.sParserDefinition* %call, %struct.sParserDefinition** %def, align 8
  %0 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %0, i32 0, i32 1
  store %struct.sKindDefinition* getelementptr inbounds ([4 x %struct.sKindDefinition], [4 x %struct.sKindDefinition]* @RstKinds, i64 0, i64 0), %struct.sKindDefinition** %kindTable, align 8
  %1 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %1, i32 0, i32 2
  store i32 4, i32* %kindCount, align 8
  %2 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %extensions = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %2, i32 0, i32 3
  store i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @extensions, i64 0, i64 0), i8*** %extensions, align 8
  %3 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %parser = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %3, i32 0, i32 8
  store void ()* @findRstTags, void ()** %parser, align 8
  %4 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %fieldTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %4, i32 0, i32 23
  store %struct.sFieldDefinition* getelementptr inbounds ([1 x %struct.sFieldDefinition], [1 x %struct.sFieldDefinition]* @RstFields, i64 0, i64 0), %struct.sFieldDefinition** %fieldTable, align 8
  %5 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %fieldCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %5, i32 0, i32 24
  store i32 1, i32* %fieldCount, align 8
  %6 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %useCork = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %6, i32 0, i32 12
  store i8 1, i8* %useCork, align 4
  %7 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  ret %struct.sParserDefinition* %7
}

declare %struct.sParserDefinition* @parserNew(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @findRstTags() #0 {
entry:
  %name = alloca %struct.sVString*, align 8
  %filepos = alloca %struct._MIOPos, align 8
  %line = alloca i8*, align 8
  %line_len = alloca i32, align 4
  %name_len_bytes = alloca i32, align 4
  %name_len = alloca i32, align 4
  %c = alloca i8, align 1
  %kind = alloca i32, align 4
  %vStringClear_s = alloca %struct.sVString*, align 8
  %tmp = alloca %struct._MIOPos, align 8
  %call = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call, %struct.sVString** %name, align 8
  %0 = bitcast %struct._MIOPos* %filepos to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0i8.i64(i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @kindchars, i64 0, i64 0), i8 0, i64 4, i1 false)
  %call1 = call %struct.NestingLevels* @nestingLevelsNew(i64 0)
  store %struct.NestingLevels* %call1, %struct.NestingLevels** @nestingLevels, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end34, %if.then23, %entry
  %call2 = call i8* @readLineFromInputFile()
  store i8* %call2, i8** %line, align 8
  %cmp = icmp ne i8* %call2, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i8*, i8** %line, align 8
  %call3 = call i64 @strlen(i8* %1)
  %conv = trunc i64 %call3 to i32
  store i32 %conv, i32* %line_len, align 4
  %2 = load %struct.sVString*, %struct.sVString** %name, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %2, i32 0, i32 0
  %3 = load i64, i64* %length, align 8
  %conv4 = trunc i64 %3 to i32
  store i32 %conv4, i32* %name_len_bytes, align 4
  %4 = load %struct.sVString*, %struct.sVString** %name, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %4, i32 0, i32 2
  %5 = load i8*, i8** %buffer, align 8
  %6 = load i32, i32* %name_len_bytes, align 4
  %call5 = call i32 @utf8_strlen(i8* %5, i32 %6)
  store i32 %call5, i32* %name_len, align 4
  %7 = load i32, i32* %name_len, align 4
  %cmp6 = icmp slt i32 %7, 0
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %8 = load i32, i32* %name_len_bytes, align 4
  store i32 %8, i32* %name_len, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %9 = load i32, i32* %line_len, align 4
  %10 = load i32, i32* %name_len, align 4
  %cmp8 = icmp sge i32 %9, %10
  br i1 %cmp8, label %land.lhs.true, label %if.end25

land.lhs.true:                                    ; preds = %if.end
  %11 = load i32, i32* %name_len, align 4
  %cmp10 = icmp sgt i32 %11, 0
  br i1 %cmp10, label %land.lhs.true12, label %if.end25

land.lhs.true12:                                  ; preds = %land.lhs.true
  %12 = load i8*, i8** %line, align 8
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 0
  %13 = load i8, i8* %arrayidx, align 1
  %conv13 = zext i8 %13 to i32
  %call14 = call i32 @ispunct(i32 %conv13) #4
  %tobool = icmp ne i32 %call14, 0
  br i1 %tobool, label %land.lhs.true15, label %if.end25

land.lhs.true15:                                  ; preds = %land.lhs.true12
  %14 = load i8*, i8** %line, align 8
  %call16 = call zeroext i1 @issame(i8* %14)
  br i1 %call16, label %if.then18, label %if.end25

if.then18:                                        ; preds = %land.lhs.true15
  %15 = load i8*, i8** %line, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %15, i64 0
  %16 = load i8, i8* %arrayidx19, align 1
  store i8 %16, i8* %c, align 1
  %17 = load i8, i8* %c, align 1
  %call20 = call i32 @get_kind(i8 signext %17)
  store i32 %call20, i32* %kind, align 4
  %18 = load i32, i32* %kind, align 4
  %cmp21 = icmp sge i32 %18, 0
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.then18
  %19 = load %struct.sVString*, %struct.sVString** %name, align 8
  %20 = load i32, i32* %kind, align 4
  %21 = load i8, i8* %c, align 1
  %22 = bitcast %struct._MIOPos* %filepos to [2 x i64]*
  %23 = load [2 x i64], [2 x i64]* %22, align 8
  call void @makeRstTag(%struct.sVString* %19, i32 %20, [2 x i64] %23, i8 signext %21)
  br label %while.cond

if.end24:                                         ; preds = %if.then18
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %land.lhs.true15, %land.lhs.true12, %land.lhs.true, %if.end
  br label %do.body

do.body:                                          ; preds = %if.end25
  %24 = load %struct.sVString*, %struct.sVString** %name, align 8
  store %struct.sVString* %24, %struct.sVString** %vStringClear_s, align 8
  %25 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %length26 = getelementptr inbounds %struct.sVString, %struct.sVString* %25, i32 0, i32 0
  store i64 0, i64* %length26, align 8
  %26 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %buffer27 = getelementptr inbounds %struct.sVString, %struct.sVString* %26, i32 0, i32 2
  %27 = load i8*, i8** %buffer27, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %27, i64 0
  store i8 0, i8* %arrayidx28, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  %28 = load i8*, i8** %line, align 8
  %29 = load i8, i8* %28, align 1
  %conv29 = zext i8 %29 to i32
  %call30 = call i32 @isspace(i32 %conv29) #4
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.end34, label %if.then32

if.then32:                                        ; preds = %do.end
  %30 = load %struct.sVString*, %struct.sVString** %name, align 8
  %31 = load i8*, i8** %line, align 8
  call void @vStringCatS(%struct.sVString* %30, i8* %31)
  %call33 = call [2 x i64] @getInputFilePosition()
  %32 = bitcast %struct._MIOPos* %tmp to [2 x i64]*
  store [2 x i64] %call33, [2 x i64]* %32, align 8
  %33 = bitcast %struct._MIOPos* %filepos to i8*
  %34 = bitcast %struct._MIOPos* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %33, i8* align 8 %34, i64 16, i1 false)
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %do.end
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %call35 = call %struct.NestingLevel* @getNestingLevel(i32 -1)
  %35 = load %struct.sVString*, %struct.sVString** %name, align 8
  call void @vStringDelete(%struct.sVString* %35)
  %36 = load %struct.NestingLevels*, %struct.NestingLevels** @nestingLevels, align 8
  call void @nestingLevelsFree(%struct.NestingLevels* %36)
  ret void
}

declare %struct.sVString* @vStringNew() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare %struct.NestingLevels* @nestingLevelsNew(i64) #1

declare i8* @readLineFromInputFile() #1

declare i64 @strlen(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @utf8_strlen(i8* %buf, i32 %buf_len) #0 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %buf_len.addr = alloca i32, align 4
  %len = alloca i32, align 4
  %end = alloca i8*, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i32 %buf_len, i32* %buf_len.addr, align 4
  store i32 0, i32* %len, align 4
  %0 = load i8*, i8** %buf.addr, align 8
  %1 = load i32, i32* %buf_len.addr, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %idx.ext
  store i8* %add.ptr, i8** %end, align 8
  store i32 0, i32* %len, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i8*, i8** %buf.addr, align 8
  %3 = load i8*, i8** %end, align 8
  %cmp = icmp ult i8* %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i8*, i8** %buf.addr, align 8
  %5 = load i8, i8* %4, align 1
  %conv = sext i8 %5 to i32
  %and = and i32 %conv, 128
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  %6 = load i8*, i8** %buf.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %buf.addr, align 8
  br label %if.end24

if.else:                                          ; preds = %for.body
  %7 = load i8*, i8** %buf.addr, align 8
  %8 = load i8, i8* %7, align 1
  %conv1 = sext i8 %8 to i32
  %and2 = and i32 %conv1, 224
  %cmp3 = icmp eq i32 %and2, 192
  br i1 %cmp3, label %if.then5, label %if.else7

if.then5:                                         ; preds = %if.else
  %9 = load i8*, i8** %buf.addr, align 8
  %add.ptr6 = getelementptr inbounds i8, i8* %9, i64 2
  store i8* %add.ptr6, i8** %buf.addr, align 8
  br label %if.end23

if.else7:                                         ; preds = %if.else
  %10 = load i8*, i8** %buf.addr, align 8
  %11 = load i8, i8* %10, align 1
  %conv8 = sext i8 %11 to i32
  %and9 = and i32 %conv8, 240
  %cmp10 = icmp eq i32 %and9, 224
  br i1 %cmp10, label %if.then12, label %if.else14

if.then12:                                        ; preds = %if.else7
  %12 = load i8*, i8** %buf.addr, align 8
  %add.ptr13 = getelementptr inbounds i8, i8* %12, i64 3
  store i8* %add.ptr13, i8** %buf.addr, align 8
  br label %if.end22

if.else14:                                        ; preds = %if.else7
  %13 = load i8*, i8** %buf.addr, align 8
  %14 = load i8, i8* %13, align 1
  %conv15 = sext i8 %14 to i32
  %and16 = and i32 %conv15, 248
  %cmp17 = icmp eq i32 %and16, 240
  br i1 %cmp17, label %if.then19, label %if.else21

if.then19:                                        ; preds = %if.else14
  %15 = load i8*, i8** %buf.addr, align 8
  %add.ptr20 = getelementptr inbounds i8, i8* %15, i64 4
  store i8* %add.ptr20, i8** %buf.addr, align 8
  br label %if.end

if.else21:                                        ; preds = %if.else14
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then19
  br label %if.end22

if.end22:                                         ; preds = %if.end, %if.then12
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %if.then5
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.then
  %16 = load i8*, i8** %buf.addr, align 8
  %17 = load i8*, i8** %end, align 8
  %cmp25 = icmp ugt i8* %16, %17
  br i1 %cmp25, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end24
  store i32 -1, i32* %retval, align 4
  br label %return

if.end28:                                         ; preds = %if.end24
  br label %for.inc

for.inc:                                          ; preds = %if.end28
  %18 = load i32, i32* %len, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %len, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load i32, i32* %len, align 4
  store i32 %19, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then27, %if.else21
  %20 = load i32, i32* %retval, align 4
  ret i32 %20
}

; Function Attrs: nounwind readonly
declare i32 @ispunct(i32) #3

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @issame(i8* %str) #0 {
entry:
  %retval = alloca i1, align 1
  %str.addr = alloca i8*, align 8
  %first = alloca i8, align 1
  %c = alloca i8, align 1
  store i8* %str, i8** %str.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %1 = load i8, i8* %0, align 1
  store i8 %1, i8* %first, align 1
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %2 = load i8*, i8** %str.addr, align 8
  %3 = load i8, i8* %2, align 1
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i8*, i8** %str.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %str.addr, align 8
  %5 = load i8*, i8** %str.addr, align 8
  %6 = load i8, i8* %5, align 1
  store i8 %6, i8* %c, align 1
  %7 = load i8, i8* %c, align 1
  %conv = sext i8 %7 to i32
  %tobool1 = icmp ne i32 %conv, 0
  br i1 %tobool1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.body
  %8 = load i8, i8* %c, align 1
  %conv2 = sext i8 %8 to i32
  %9 = load i8, i8* %first, align 1
  %conv3 = sext i8 %9 to i32
  %cmp = icmp ne i32 %conv2, %conv3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %land.lhs.true, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %while.end, %if.then
  %10 = load i1, i1* %retval, align 1
  ret i1 %10
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @get_kind(i8 signext %c) #0 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca i8, align 1
  %i = alloca i32, align 4
  store i8 %c, i8* %c.addr, align 1
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* @kindchars, i64 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %3 = load i8, i8* %c.addr, align 1
  %conv1 = sext i8 %3 to i32
  %cmp2 = icmp eq i32 %conv, %conv1
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  store i32 %4, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds [4 x i8], [4 x i8]* @kindchars, i64 0, i64 %idxprom4
  %6 = load i8, i8* %arrayidx5, align 1
  %conv6 = sext i8 %6 to i32
  %cmp7 = icmp eq i32 %conv6, 0
  br i1 %cmp7, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end
  %7 = load i8, i8* %c.addr, align 1
  %8 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %8 to i64
  %arrayidx11 = getelementptr inbounds [4 x i8], [4 x i8]* @kindchars, i64 0, i64 %idxprom10
  store i8 %7, i8* %arrayidx11, align 1
  %9 = load i32, i32* %i, align 4
  store i32 %9, i32* %retval, align 4
  br label %return

if.end12:                                         ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end12
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 -1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then9, %if.then
  %11 = load i32, i32* %retval, align 4
  ret i32 %11
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @makeRstTag(%struct.sVString* %name, i32 %kind, [2 x i64] %filepos.coerce, i8 signext %marker) #0 {
entry:
  %filepos = alloca %struct._MIOPos, align 8
  %name.addr = alloca %struct.sVString*, align 8
  %kind.addr = alloca i32, align 4
  %marker.addr = alloca i8, align 1
  %nl = alloca %struct.NestingLevel*, align 8
  %parent = alloca %struct.sTagEntryInfo*, align 8
  %r = alloca i32, align 4
  %e = alloca %struct.sTagEntryInfo, align 8
  %m = alloca [2 x i8], align 1
  %0 = bitcast %struct._MIOPos* %filepos to [2 x i64]*
  store [2 x i64] %filepos.coerce, [2 x i64]* %0, align 8
  store %struct.sVString* %name, %struct.sVString** %name.addr, align 8
  store i32 %kind, i32* %kind.addr, align 4
  store i8 %marker, i8* %marker.addr, align 1
  %1 = load i32, i32* %kind.addr, align 4
  %call = call %struct.NestingLevel* @getNestingLevel(i32 %1)
  store %struct.NestingLevel* %call, %struct.NestingLevel** %nl, align 8
  store i32 0, i32* %r, align 4
  %2 = load %struct.sVString*, %struct.sVString** %name.addr, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %2, i32 0, i32 0
  %3 = load i64, i64* %length, align 8
  %cmp = icmp ugt i64 %3, 0
  br i1 %cmp, label %if.then, label %if.end8

if.then:                                          ; preds = %entry
  %4 = bitcast [2 x i8]* %m to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %4, i8 0, i64 2, i1 false)
  %5 = load %struct.sVString*, %struct.sVString** %name.addr, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %5, i32 0, i32 2
  %6 = load i8*, i8** %buffer, align 8
  %7 = load i32, i32* %kind.addr, align 4
  call void @initTagEntry(%struct.sTagEntryInfo* %e, i8* %6, i32 %7)
  %lineNumber = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %e, i32 0, i32 1
  %8 = load i64, i64* %lineNumber, align 8
  %dec = add i64 %8, -1
  store i64 %dec, i64* %lineNumber, align 8
  %filePosition = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %e, i32 0, i32 4
  %9 = bitcast %struct._MIOPos* %filePosition to i8*
  %10 = bitcast %struct._MIOPos* %filepos to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 %10, i64 16, i1 false)
  %11 = load %struct.NestingLevel*, %struct.NestingLevel** %nl, align 8
  %call1 = call %struct.sTagEntryInfo* @getEntryOfNestingLevel(%struct.NestingLevel* %11)
  store %struct.sTagEntryInfo* %call1, %struct.sTagEntryInfo** %parent, align 8
  %12 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %parent, align 8
  %tobool = icmp ne %struct.sTagEntryInfo* %12, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %13 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %parent, align 8
  %kindIndex = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %13, i32 0, i32 8
  %14 = load i32, i32* %kindIndex, align 8
  %15 = load i32, i32* %kind.addr, align 4
  %cmp2 = icmp slt i32 %14, %15
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %land.lhs.true
  %16 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %parent, align 8
  %kindIndex4 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %16, i32 0, i32 8
  %17 = load i32, i32* %kindIndex4, align 8
  %extensionFields = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %e, i32 0, i32 11
  %scopeKindIndex = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields, i32 0, i32 5
  store i32 %17, i32* %scopeKindIndex, align 4
  %18 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %parent, align 8
  %name5 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %18, i32 0, i32 7
  %19 = load i8*, i8** %name5, align 8
  %extensionFields6 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %e, i32 0, i32 11
  %scopeName = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields6, i32 0, i32 6
  store i8* %19, i8** %scopeName, align 8
  br label %if.end

if.end:                                           ; preds = %if.then3, %land.lhs.true, %if.then
  %20 = load i8, i8* %marker.addr, align 1
  %arrayidx = getelementptr inbounds [2 x i8], [2 x i8]* %m, i64 0, i64 0
  store i8 %20, i8* %arrayidx, align 1
  %21 = load i32, i32* getelementptr inbounds ([1 x %struct.sFieldDefinition], [1 x %struct.sFieldDefinition]* @RstFields, i64 0, i64 0, i32 7), align 4
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %m, i64 0, i64 0
  call void @attachParserField(%struct.sTagEntryInfo* %e, i32 %21, i8* %arraydecay)
  %call7 = call i32 @makeTagEntry(%struct.sTagEntryInfo* %e)
  store i32 %call7, i32* %r, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.end, %entry
  %22 = load %struct.NestingLevels*, %struct.NestingLevels** @nestingLevels, align 8
  %23 = load i32, i32* %r, align 4
  %call9 = call %struct.NestingLevel* @nestingLevelsPush(%struct.NestingLevels* %22, i32 %23)
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @isspace(i32) #3

declare void @vStringCatS(%struct.sVString*, i8*) #1

declare [2 x i64] @getInputFilePosition() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct.NestingLevel* @getNestingLevel(i32 %kind) #0 {
entry:
  %kind.addr = alloca i32, align 4
  %nl = alloca %struct.NestingLevel*, align 8
  %e = alloca %struct.sTagEntryInfo*, align 8
  %d = alloca i32, align 4
  store i32 %kind, i32* %kind.addr, align 4
  store i32 0, i32* %d, align 4
  %0 = load i32, i32* %kind.addr, align 4
  %cmp = icmp sgt i32 %0, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %d, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* %d, align 4
  %2 = load i32, i32* %d, align 4
  %inc1 = add nsw i32 %2, 1
  store i32 %inc1, i32* %d, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %while.body

while.body:                                       ; preds = %if.end, %if.end12
  %3 = load %struct.NestingLevels*, %struct.NestingLevels** @nestingLevels, align 8
  %call = call %struct.NestingLevel* @nestingLevelsGetCurrent(%struct.NestingLevels* %3)
  store %struct.NestingLevel* %call, %struct.NestingLevel** %nl, align 8
  %4 = load %struct.NestingLevel*, %struct.NestingLevel** %nl, align 8
  %call2 = call %struct.sTagEntryInfo* @getEntryOfNestingLevel(%struct.NestingLevel* %4)
  store %struct.sTagEntryInfo* %call2, %struct.sTagEntryInfo** %e, align 8
  %5 = load %struct.NestingLevel*, %struct.NestingLevel** %nl, align 8
  %tobool = icmp ne %struct.NestingLevel* %5, null
  br i1 %tobool, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %while.body
  %6 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %e, align 8
  %cmp3 = icmp eq %struct.sTagEntryInfo* %6, null
  br i1 %cmp3, label %if.then7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %while.body
  %7 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %e, align 8
  %tobool4 = icmp ne %struct.sTagEntryInfo* %7, null
  br i1 %tobool4, label %land.lhs.true5, label %if.else

land.lhs.true5:                                   ; preds = %lor.lhs.false
  %8 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %e, align 8
  %kindIndex = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %8, i32 0, i32 8
  %9 = load i32, i32* %kindIndex, align 8
  %10 = load i32, i32* %kind.addr, align 4
  %cmp6 = icmp sge i32 %9, %10
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %land.lhs.true5, %land.lhs.true
  %11 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %e, align 8
  %tobool8 = icmp ne %struct.sTagEntryInfo* %11, null
  br i1 %tobool8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.then7
  %call10 = call i64 @getInputLineNumber()
  %12 = load i32, i32* %d, align 4
  %conv = sext i32 %12 to i64
  %sub = sub i64 %call10, %conv
  %13 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %e, align 8
  %extensionFields = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %13, i32 0, i32 11
  %endLine = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields, i32 0, i32 11
  store i64 %sub, i64* %endLine, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.then7
  %14 = load %struct.NestingLevels*, %struct.NestingLevels** @nestingLevels, align 8
  call void @nestingLevelsPop(%struct.NestingLevels* %14)
  br label %if.end12

if.else:                                          ; preds = %land.lhs.true5, %lor.lhs.false
  br label %while.end

if.end12:                                         ; preds = %if.end11
  br label %while.body

while.end:                                        ; preds = %if.else
  %15 = load %struct.NestingLevel*, %struct.NestingLevel** %nl, align 8
  ret %struct.NestingLevel* %15
}

declare void @vStringDelete(%struct.sVString*) #1

declare void @nestingLevelsFree(%struct.NestingLevels*) #1

declare void @initTagEntry(%struct.sTagEntryInfo*, i8*, i32) #1

declare %struct.sTagEntryInfo* @getEntryOfNestingLevel(%struct.NestingLevel*) #1

declare void @attachParserField(%struct.sTagEntryInfo*, i32, i8*) #1

declare i32 @makeTagEntry(%struct.sTagEntryInfo*) #1

declare %struct.NestingLevel* @nestingLevelsPush(%struct.NestingLevels*, i32) #1

declare %struct.NestingLevel* @nestingLevelsGetCurrent(%struct.NestingLevels*) #1

declare i64 @getInputLineNumber() #1

declare void @nestingLevelsPop(%struct.NestingLevels*) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 10.0.0 (https://github.com/holzschu/clang.git 0cfc630fbdb62e96720b611a57123ef3eb13e297) (https://github.com/holzschu/llvm.git 0d8a71e39b28502c24718f7e74b5acbcfe36dfe0)"}
