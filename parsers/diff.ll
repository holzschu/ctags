; ModuleID = 'diff.c'
source_filename = "diff.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-ios11.0.0"

%struct.sKindDefinition = type { i8, i8, i8*, i8*, i8, i32, %struct.sRoleDesc*, %struct.sScopeSeparator*, i32, i32, i32, %struct.sKindDefinition*, %struct.sKindDefinition* }
%struct.sRoleDesc = type { i8, i8*, i8* }
%struct.sScopeSeparator = type { i32, i8* }
%struct.sParserDefinition = type { i8*, %struct.sKindDefinition*, i32, i8**, i8**, i8**, void (i32)*, void (i32, i1)*, void ()*, i32 (i32)*, i8* (%struct._MIO*, i32*, i32)**, i32, i8, i8, i8, i8, %struct.tagRegexTable*, i32, %struct.keywordTable*, i32, %struct.sTagXpathTableTable*, i32, i8, %struct.sFieldDefinition*, i32, %struct.sXtagDefinition*, i32, %struct.sParserDependency*, i32, %struct.sParameterHandlerTable*, i32, %struct.sXpathFileSpec*, i32, i32, i8 }
%struct._MIO = type opaque
%struct.tagRegexTable = type { i8*, i8*, i8*, i8*, i8*, i8 }
%struct.keywordTable = type { i8*, i32 }
%struct.sTagXpathTableTable = type { %struct.sTagXpathTable*, i32 }
%struct.sTagXpathTable = type { i8*, i32, %union.anon, i8* }
%union.anon = type { %struct.sTagXpathMakeTagSpec }
%struct.sTagXpathMakeTagSpec = type { i32, i32, void (i8*, %struct.sTagXpathMakeTagSpec*, %struct.sTagEntryInfo*, i8*)* }
%struct.sTagEntryInfo = type { i8, i64, i8*, i32, %struct._MIOPos, i32, i8*, i8*, i32, [2 x i8], i8*, %struct.anon, i32, [5 x %struct.sTagField], %struct.sPtrArray*, i32, i8*, i64 }
%struct._MIOPos = type { i32, %union.anon.0 }
%union.anon.0 = type { i64 }
%struct.anon = type { i8*, i8*, i8*, i8*, i32, i32, i8*, i32, i8*, [2 x i8*], i32, i64 }
%struct.sTagField = type { i32, i8*, i8 }
%struct.sPtrArray = type opaque
%struct.sFieldDefinition = type { i8, i8*, i8*, i8, [5 x i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)*], i1 (%struct.sTagEntryInfo*)*, i32, i32 }
%struct.sVString = type { i64, i64, i8* }
%struct.sXtagDefinition = type { i8, i8, i8*, i8*, i1 (%struct.sXtagDefinition*)*, i1 (%struct.sXtagDefinition*)*, i32 }
%struct.sParserDependency = type { i32, i8*, i8* }
%struct.sParameterHandlerTable = type { i8*, i8*, void (i32, i8*, i8*)* }
%struct.sXpathFileSpec = type { i8*, i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [5 x i8] c"Diff\00", align 1
@DiffKinds = internal global [4 x %struct.sKindDefinition] [%struct.sKindDefinition { i8 1, i8 109, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 110, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 100, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 104, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }], align 8
@extensions = internal constant [3 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i8* null], align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"modifiedFile\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"modified files\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"newFile\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"newly created files\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"deletedFile\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"deleted files\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"hunk\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"hunks\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"diff\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"patch\00", align 1
@DiffDelims = internal global [2 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0)], align 8
@.str.11 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@HunkDelim = internal global [2 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0)], align 8
@.str.12 = private unnamed_addr constant [5 x i8] c"--- \00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"+++ \00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"@@ \00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c" @@\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sParserDefinition* @DiffParser() #0 {
entry:
  %def = alloca %struct.sParserDefinition*, align 8
  %call = call %struct.sParserDefinition* @parserNew(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.sParserDefinition* %call, %struct.sParserDefinition** %def, align 8
  %0 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %0, i32 0, i32 1
  store %struct.sKindDefinition* getelementptr inbounds ([4 x %struct.sKindDefinition], [4 x %struct.sKindDefinition]* @DiffKinds, i64 0, i64 0), %struct.sKindDefinition** %kindTable, align 8
  %1 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %1, i32 0, i32 2
  store i32 4, i32* %kindCount, align 8
  %2 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %extensions = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %2, i32 0, i32 3
  store i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @extensions, i64 0, i64 0), i8*** %extensions, align 8
  %3 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %parser = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %3, i32 0, i32 8
  store void ()* @findDiffTags, void ()** %parser, align 8
  %4 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %useCork = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %4, i32 0, i32 12
  store i8 1, i8* %useCork, align 4
  %5 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  ret %struct.sParserDefinition* %5
}

declare %struct.sParserDefinition* @parserNew(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @findDiffTags() #0 {
entry:
  %filename = alloca %struct.sVString*, align 8
  %hunk = alloca %struct.sVString*, align 8
  %line = alloca i8*, align 8
  %tmp = alloca i8*, align 8
  %delim = alloca i32, align 4
  %kind = alloca i32, align 4
  %scope_index = alloca i32, align 4
  %cp = alloca i8*, align 8
  %vStringClear_s = alloca %struct.sVString*, align 8
  %vStringClear_s82 = alloca %struct.sVString*, align 8
  %call = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call, %struct.sVString** %filename, align 8
  %call1 = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call1, %struct.sVString** %hunk, align 8
  store i32 0, i32* %delim, align 4
  store i32 0, i32* %scope_index, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end90, %if.then55, %if.then21, %if.then6, %entry
  %call2 = call i8* @readLineFromInputFile()
  store i8* %call2, i8** %line, align 8
  %cmp = icmp ne i8* %call2, null
  br i1 %cmp, label %while.body, label %while.end91

while.body:                                       ; preds = %while.cond
  %0 = load i8*, i8** %line, align 8
  store i8* %0, i8** %cp, align 8
  %1 = load i8*, i8** %cp, align 8
  %2 = load i32, i32* %delim, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [2 x i8*], [2 x i8*]* @DiffDelims, i64 0, i64 %idxprom
  %3 = load i8*, i8** %arrayidx, align 8
  %call3 = call i32 @strncmp(i8* %1, i8* %3, i64 4)
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.then, label %if.else43

if.then:                                          ; preds = %while.body
  store i32 0, i32* %scope_index, align 4
  %4 = load i8*, i8** %cp, align 8
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 4
  store i8* %add.ptr, i8** %cp, align 8
  %5 = load i8*, i8** %cp, align 8
  %6 = load i8, i8* %5, align 1
  %conv = zext i8 %6 to i32
  %call5 = call i32 @isspace(i32 %conv) #3
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then
  br label %while.cond

if.end:                                           ; preds = %if.then
  %7 = load i32, i32* %delim, align 4
  %cmp7 = icmp eq i32 %7, 0
  br i1 %cmp7, label %land.lhs.true, label %if.end22

land.lhs.true:                                    ; preds = %if.end
  %8 = load i8*, i8** %cp, align 8
  %call9 = call i32 @strncmp(i8* %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i64 9)
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %land.lhs.true12, label %if.end22

land.lhs.true12:                                  ; preds = %land.lhs.true
  %9 = load i8*, i8** %cp, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %9, i64 9
  %10 = load i8, i8* %arrayidx13, align 1
  %conv14 = zext i8 %10 to i32
  %cmp15 = icmp eq i32 %conv14, 0
  br i1 %cmp15, label %if.then21, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true12
  %11 = load i8*, i8** %cp, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %11, i64 9
  %12 = load i8, i8* %arrayidx17, align 1
  %conv18 = zext i8 %12 to i32
  %call19 = call i32 @isspace(i32 %conv18) #3
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %lor.lhs.false, %land.lhs.true12
  store i32 1, i32* %delim, align 4
  br label %while.cond

if.end22:                                         ; preds = %lor.lhs.false, %land.lhs.true, %if.end
  %13 = load i8*, i8** %cp, align 8
  %call23 = call i8* @stripAbsolute(i8* %13)
  store i8* %call23, i8** %tmp, align 8
  %14 = load i8*, i8** %tmp, align 8
  %cmp24 = icmp ne i8* %14, null
  br i1 %cmp24, label %if.then26, label %if.end42

if.then26:                                        ; preds = %if.end22
  br label %while.cond27

while.cond27:                                     ; preds = %while.body34, %if.then26
  %15 = load i8*, i8** %tmp, align 8
  %16 = load i8, i8* %15, align 1
  %conv28 = zext i8 %16 to i32
  %call29 = call i32 @isspace(i32 %conv28) #3
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond27
  %17 = load i8*, i8** %tmp, align 8
  %18 = load i8, i8* %17, align 1
  %conv31 = zext i8 %18 to i32
  %cmp32 = icmp ne i32 %conv31, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond27
  %19 = phi i1 [ false, %while.cond27 ], [ %cmp32, %land.rhs ]
  br i1 %19, label %while.body34, label %while.end

while.body34:                                     ; preds = %land.end
  %20 = load %struct.sVString*, %struct.sVString** %filename, align 8
  %21 = load i8*, i8** %tmp, align 8
  %22 = load i8, i8* %21, align 1
  %conv35 = zext i8 %22 to i32
  call void @vStringPut(%struct.sVString* %20, i32 %conv35)
  %23 = load i8*, i8** %tmp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr, i8** %tmp, align 8
  br label %while.cond27

while.end:                                        ; preds = %land.end
  %24 = load i32, i32* %delim, align 4
  %cmp36 = icmp eq i32 %24, 1
  br i1 %cmp36, label %if.then38, label %if.else

if.then38:                                        ; preds = %while.end
  store i32 1, i32* %kind, align 4
  br label %if.end39

if.else:                                          ; preds = %while.end
  store i32 0, i32* %kind, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.else, %if.then38
  %25 = load %struct.sVString*, %struct.sVString** %filename, align 8
  %26 = load i32, i32* %kind, align 4
  %call40 = call i32 @makeSimpleTag(%struct.sVString* %25, i32 %26)
  store i32 %call40, i32* %scope_index, align 4
  br label %do.body

do.body:                                          ; preds = %if.end39
  %27 = load %struct.sVString*, %struct.sVString** %filename, align 8
  store %struct.sVString* %27, %struct.sVString** %vStringClear_s, align 8
  %28 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %28, i32 0, i32 0
  store i64 0, i64* %length, align 8
  %29 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %29, i32 0, i32 2
  %30 = load i8*, i8** %buffer, align 8
  %arrayidx41 = getelementptr inbounds i8, i8* %30, i64 0
  store i8 0, i8* %arrayidx41, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %if.end42

if.end42:                                         ; preds = %do.end, %if.end22
  store i32 0, i32* %delim, align 4
  br label %if.end90

if.else43:                                        ; preds = %while.body
  %31 = load i32, i32* %scope_index, align 4
  %cmp44 = icmp sgt i32 %31, 0
  br i1 %cmp44, label %land.lhs.true46, label %if.else72

land.lhs.true46:                                  ; preds = %if.else43
  %32 = load i8*, i8** %cp, align 8
  %33 = load i8*, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @DiffDelims, i64 0, i64 1), align 8
  %call47 = call i32 @strncmp(i8* %32, i8* %33, i64 4)
  %cmp48 = icmp eq i32 %call47, 0
  br i1 %cmp48, label %if.then50, label %if.else72

if.then50:                                        ; preds = %land.lhs.true46
  %34 = load i8*, i8** %cp, align 8
  %add.ptr51 = getelementptr inbounds i8, i8* %34, i64 4
  store i8* %add.ptr51, i8** %cp, align 8
  %35 = load i8*, i8** %cp, align 8
  %36 = load i8, i8* %35, align 1
  %conv52 = zext i8 %36 to i32
  %call53 = call i32 @isspace(i32 %conv52) #3
  %tobool54 = icmp ne i32 %call53, 0
  br i1 %tobool54, label %if.then55, label %if.end56

if.then55:                                        ; preds = %if.then50
  br label %while.cond

if.end56:                                         ; preds = %if.then50
  %37 = load i8*, i8** %cp, align 8
  %call57 = call i32 @strncmp(i8* %37, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i64 9)
  %cmp58 = icmp eq i32 %call57, 0
  br i1 %cmp58, label %land.lhs.true60, label %if.end71

land.lhs.true60:                                  ; preds = %if.end56
  %38 = load i8*, i8** %cp, align 8
  %arrayidx61 = getelementptr inbounds i8, i8* %38, i64 9
  %39 = load i8, i8* %arrayidx61, align 1
  %conv62 = zext i8 %39 to i32
  %cmp63 = icmp eq i32 %conv62, 0
  br i1 %cmp63, label %if.then70, label %lor.lhs.false65

lor.lhs.false65:                                  ; preds = %land.lhs.true60
  %40 = load i8*, i8** %cp, align 8
  %arrayidx66 = getelementptr inbounds i8, i8* %40, i64 9
  %41 = load i8, i8* %arrayidx66, align 1
  %conv67 = zext i8 %41 to i32
  %call68 = call i32 @isspace(i32 %conv67) #3
  %tobool69 = icmp ne i32 %call68, 0
  br i1 %tobool69, label %if.then70, label %if.end71

if.then70:                                        ; preds = %lor.lhs.false65, %land.lhs.true60
  %42 = load i32, i32* %scope_index, align 4
  call void @markTheLastTagAsDeletedFile(i32 %42)
  br label %if.end71

if.end71:                                         ; preds = %if.then70, %lor.lhs.false65, %if.end56
  br label %if.end89

if.else72:                                        ; preds = %land.lhs.true46, %if.else43
  %43 = load i8*, i8** %cp, align 8
  %44 = load i8*, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @HunkDelim, i64 0, i64 0), align 8
  %call73 = call i32 @strncmp(i8* %43, i8* %44, i64 3)
  %cmp74 = icmp eq i32 %call73, 0
  br i1 %cmp74, label %if.then76, label %if.end88

if.then76:                                        ; preds = %if.else72
  %45 = load i8*, i8** %cp, align 8
  %46 = load %struct.sVString*, %struct.sVString** %hunk, align 8
  %47 = load i32, i32* %scope_index, align 4
  %call77 = call i32 @parseHunk(i8* %45, %struct.sVString* %46, i32 %47)
  %cmp78 = icmp ne i32 %call77, 0
  br i1 %cmp78, label %if.then80, label %if.end87

if.then80:                                        ; preds = %if.then76
  br label %do.body81

do.body81:                                        ; preds = %if.then80
  %48 = load %struct.sVString*, %struct.sVString** %hunk, align 8
  store %struct.sVString* %48, %struct.sVString** %vStringClear_s82, align 8
  %49 = load %struct.sVString*, %struct.sVString** %vStringClear_s82, align 8
  %length83 = getelementptr inbounds %struct.sVString, %struct.sVString* %49, i32 0, i32 0
  store i64 0, i64* %length83, align 8
  %50 = load %struct.sVString*, %struct.sVString** %vStringClear_s82, align 8
  %buffer84 = getelementptr inbounds %struct.sVString, %struct.sVString* %50, i32 0, i32 2
  %51 = load i8*, i8** %buffer84, align 8
  %arrayidx85 = getelementptr inbounds i8, i8* %51, i64 0
  store i8 0, i8* %arrayidx85, align 1
  br label %do.end86

do.end86:                                         ; preds = %do.body81
  br label %if.end87

if.end87:                                         ; preds = %do.end86, %if.then76
  br label %if.end88

if.end88:                                         ; preds = %if.end87, %if.else72
  br label %if.end89

if.end89:                                         ; preds = %if.end88, %if.end71
  br label %if.end90

if.end90:                                         ; preds = %if.end89, %if.end42
  br label %while.cond

while.end91:                                      ; preds = %while.cond
  %52 = load %struct.sVString*, %struct.sVString** %hunk, align 8
  call void @vStringDelete(%struct.sVString* %52)
  %53 = load %struct.sVString*, %struct.sVString** %filename, align 8
  call void @vStringDelete(%struct.sVString* %53)
  ret void
}

declare %struct.sVString* @vStringNew() #1

declare i8* @readLineFromInputFile() #1

declare i32 @strncmp(i8*, i8*, i64) #1

; Function Attrs: nounwind readonly
declare i32 @isspace(i32) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @stripAbsolute(i8* %filename) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  %tmp = alloca i8*, align 8
  %skipSlash = alloca i8, align 1
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = zext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 47
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i8*, i8** %filename.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv2 = zext i8 %3 to i32
  %cmp3 = icmp eq i32 %conv2, 92
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i8 1, i8* %skipSlash, align 1
  %4 = load i8*, i8** %filename.addr, align 8
  %call = call i8* @strrchr(i8* %4, i32 47)
  store i8* %call, i8** %tmp, align 8
  %5 = load i8*, i8** %tmp, align 8
  %cmp5 = icmp eq i8* %5, null
  br i1 %cmp5, label %if.then7, label %if.end12

if.then7:                                         ; preds = %if.then
  %6 = load i8*, i8** %filename.addr, align 8
  %call8 = call i8* @strrchr(i8* %6, i32 92)
  store i8* %call8, i8** %tmp, align 8
  %7 = load i8*, i8** %tmp, align 8
  %cmp9 = icmp eq i8* %7, null
  br i1 %cmp9, label %if.then11, label %if.end

if.then11:                                        ; preds = %if.then7
  %8 = load i8*, i8** %filename.addr, align 8
  store i8* %8, i8** %tmp, align 8
  store i8 0, i8* %skipSlash, align 1
  br label %if.end

if.end:                                           ; preds = %if.then11, %if.then7
  br label %if.end12

if.end12:                                         ; preds = %if.end, %if.then
  %9 = load i8, i8* %skipSlash, align 1
  %tobool = trunc i8 %9 to i1
  br i1 %tobool, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end12
  %10 = load i8*, i8** %tmp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr, i8** %tmp, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end12
  br label %if.end15

if.else:                                          ; preds = %lor.lhs.false
  %11 = load i8*, i8** %filename.addr, align 8
  store i8* %11, i8** %tmp, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.end14
  %12 = load i8*, i8** %tmp, align 8
  ret i8* %12
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

declare i32 @makeSimpleTag(%struct.sVString*, i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @markTheLastTagAsDeletedFile(i32 %scope_index) #0 {
entry:
  %scope_index.addr = alloca i32, align 4
  %e = alloca %struct.sTagEntryInfo*, align 8
  store i32 %scope_index, i32* %scope_index.addr, align 4
  %0 = load i32, i32* %scope_index.addr, align 4
  %call = call %struct.sTagEntryInfo* @getEntryInCorkQueue(i32 %0)
  store %struct.sTagEntryInfo* %call, %struct.sTagEntryInfo** %e, align 8
  %1 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %e, align 8
  %kindIndex = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %1, i32 0, i32 8
  store i32 2, i32* %kindIndex, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @parseHunk(i8* %cp, %struct.sVString* %hunk, i32 %scope_index) #0 {
entry:
  %retval = alloca i32, align 4
  %cp.addr = alloca i8*, align 8
  %hunk.addr = alloca %struct.sVString*, align 8
  %scope_index.addr = alloca i32, align 4
  %next_delim = alloca i8*, align 8
  %start = alloca i8*, align 8
  %end = alloca i8*, align 8
  %c = alloca i8*, align 8
  %i = alloca i32, align 4
  %e = alloca %struct.sTagEntryInfo*, align 8
  store i8* %cp, i8** %cp.addr, align 8
  store %struct.sVString* %hunk, %struct.sVString** %hunk.addr, align 8
  store i32 %scope_index, i32* %scope_index.addr, align 4
  store i32 0, i32* %i, align 4
  %0 = load i8*, i8** %cp.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 3
  store i8* %add.ptr, i8** %cp.addr, align 8
  %1 = load i8*, i8** %cp.addr, align 8
  store i8* %1, i8** %start, align 8
  %2 = load i8*, i8** %start, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp ne i32 %conv, 45
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %i, align 4
  store i32 %4, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i8*, i8** %cp.addr, align 8
  %6 = load i8*, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @HunkDelim, i64 0, i64 1), align 8
  %call = call i8* @strstr(i8* %5, i8* %6)
  store i8* %call, i8** %next_delim, align 8
  %7 = load i8*, i8** %next_delim, align 8
  %cmp2 = icmp eq i8* %7, null
  br i1 %cmp2, label %if.then6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %8 = load i8*, i8** %start, align 8
  %9 = load i8*, i8** %next_delim, align 8
  %cmp4 = icmp ult i8* %8, %9
  br i1 %cmp4, label %if.end7, label %if.then6

if.then6:                                         ; preds = %lor.lhs.false, %if.end
  %10 = load i32, i32* %i, align 4
  store i32 %10, i32* %retval, align 4
  br label %return

if.end7:                                          ; preds = %lor.lhs.false
  %11 = load i8*, i8** %next_delim, align 8
  store i8* %11, i8** %end, align 8
  %12 = load i8*, i8** %end, align 8
  %add.ptr8 = getelementptr inbounds i8, i8* %12, i64 -1
  %13 = load i8, i8* %add.ptr8, align 1
  %conv9 = sext i8 %13 to i32
  %cmp10 = icmp sle i32 48, %conv9
  br i1 %cmp10, label %land.lhs.true, label %if.then16

land.lhs.true:                                    ; preds = %if.end7
  %14 = load i8*, i8** %end, align 8
  %add.ptr12 = getelementptr inbounds i8, i8* %14, i64 -1
  %15 = load i8, i8* %add.ptr12, align 1
  %conv13 = sext i8 %15 to i32
  %cmp14 = icmp sle i32 %conv13, 57
  br i1 %cmp14, label %if.end17, label %if.then16

if.then16:                                        ; preds = %land.lhs.true, %if.end7
  %16 = load i32, i32* %i, align 4
  store i32 %16, i32* %retval, align 4
  br label %return

if.end17:                                         ; preds = %land.lhs.true
  %17 = load i8*, i8** %start, align 8
  store i8* %17, i8** %c, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end17
  %18 = load i8*, i8** %c, align 8
  %19 = load i8*, i8** %end, align 8
  %cmp18 = icmp ult i8* %18, %19
  br i1 %cmp18, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load i8*, i8** %c, align 8
  %21 = load i8, i8* %20, align 1
  %conv20 = sext i8 %21 to i32
  %cmp21 = icmp eq i32 %conv20, 9
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %for.body
  %22 = load i32, i32* %i, align 4
  store i32 %22, i32* %retval, align 4
  br label %return

if.end24:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end24
  %23 = load i8*, i8** %c, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr, i8** %c, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %24 = load %struct.sVString*, %struct.sVString** %hunk.addr, align 8
  %25 = load i8*, i8** %start, align 8
  %26 = load i8*, i8** %end, align 8
  %27 = load i8*, i8** %start, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %26 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %27 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @vStringNCopyS(%struct.sVString* %24, i8* %25, i64 %sub.ptr.sub)
  %28 = load %struct.sVString*, %struct.sVString** %hunk.addr, align 8
  %call25 = call i32 @makeSimpleTag(%struct.sVString* %28, i32 3)
  store i32 %call25, i32* %i, align 4
  %29 = load i32, i32* %i, align 4
  %cmp26 = icmp sgt i32 %29, 0
  br i1 %cmp26, label %land.lhs.true28, label %if.end33

land.lhs.true28:                                  ; preds = %for.end
  %30 = load i32, i32* %scope_index.addr, align 4
  %cmp29 = icmp sgt i32 %30, 0
  br i1 %cmp29, label %if.then31, label %if.end33

if.then31:                                        ; preds = %land.lhs.true28
  %31 = load i32, i32* %i, align 4
  %call32 = call %struct.sTagEntryInfo* @getEntryInCorkQueue(i32 %31)
  store %struct.sTagEntryInfo* %call32, %struct.sTagEntryInfo** %e, align 8
  %32 = load i32, i32* %scope_index.addr, align 4
  %33 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %e, align 8
  %extensionFields = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %33, i32 0, i32 11
  %scopeIndex = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields, i32 0, i32 7
  store i32 %32, i32* %scopeIndex, align 8
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %land.lhs.true28, %for.end
  %34 = load i32, i32* %i, align 4
  store i32 %34, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end33, %if.then23, %if.then16, %if.then6, %if.then
  %35 = load i32, i32* %retval, align 4
  ret i32 %35
}

declare void @vStringDelete(%struct.sVString*) #1

declare i8* @strrchr(i8*, i32) #1

declare void @vStringResize(%struct.sVString*, i64) #1

declare %struct.sTagEntryInfo* @getEntryInCorkQueue(i32) #1

declare i8* @strstr(i8*, i8*) #1

declare void @vStringNCopyS(%struct.sVString*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 10.0.0 (https://github.com/holzschu/clang.git 0cfc630fbdb62e96720b611a57123ef3eb13e297) (https://github.com/holzschu/llvm.git 0d8a71e39b28502c24718f7e74b5acbcfe36dfe0)"}
