; ModuleID = 'perl.c'
source_filename = "perl.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-ios11.0.0"

%struct._MIO = type opaque
%struct.sKindDefinition = type { i8, i8, i8*, i8*, i8, i32, %struct.sRoleDesc*, %struct.sScopeSeparator*, i32, i32, i32, %struct.sKindDefinition*, %struct.sKindDefinition* }
%struct.sRoleDesc = type { i8, i8*, i8* }
%struct.sScopeSeparator = type { i32, i8* }
%struct.sParserDefinition = type { i8*, %struct.sKindDefinition*, i32, i8**, i8**, i8**, void (i32)*, void (i32, i1)*, void ()*, i32 (i32)*, i8* (%struct._MIO*, i32*, i32)**, i32, i8, i8, i8, i8, %struct.tagRegexTable*, i32, %struct.keywordTable*, i32, %struct.sTagXpathTableTable*, i32, i8, %struct.sFieldDefinition*, i32, %struct.sXtagDefinition*, i32, %struct.sParserDependency*, i32, %struct.sParameterHandlerTable*, i32, %struct.sXpathFileSpec*, i32, i32, i8 }
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

@PerlParser.selectors = internal global [2 x i8* (%struct._MIO*, i32*, i32)*] [i8* (%struct._MIO*, i32*, i32)* @selectByPickingPerlVersion, i8* (%struct._MIO*, i32*, i32)* null], align 8
@.str = private unnamed_addr constant [5 x i8] c"Perl\00", align 1
@PerlKinds = internal global [6 x %struct.sKindDefinition] [%struct.sKindDefinition { i8 1, i8 99, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 102, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 108, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 112, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 115, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 0, i8 100, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }], align 8
@extensions = internal constant [6 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i8* null], align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"constant\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"constants\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"format\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"formats\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"labels\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"package\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"packages\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"subroutine\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"subroutines\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"subroutineDeclaration\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"subroutine declarations\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"pl\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"pm\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"ph\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"plx\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"perl\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"=cut\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"Pod\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"__DATA__\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"__END__\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"sub\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"use\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"AutoLoader\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"SelfLoader\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"::\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"STDOUT\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"end\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"for\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"pod\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"back\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"item\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"over\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"begin\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"head1\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"head2\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"head3\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"head4\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"encoding\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"#}=\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sParserDefinition* @PerlParser() #0 {
entry:
  %def = alloca %struct.sParserDefinition*, align 8
  %call = call %struct.sParserDefinition* @parserNew(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.sParserDefinition* %call, %struct.sParserDefinition** %def, align 8
  %0 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %0, i32 0, i32 1
  store %struct.sKindDefinition* getelementptr inbounds ([6 x %struct.sKindDefinition], [6 x %struct.sKindDefinition]* @PerlKinds, i64 0, i64 0), %struct.sKindDefinition** %kindTable, align 8
  %1 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %1, i32 0, i32 2
  store i32 6, i32* %kindCount, align 8
  %2 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %extensions = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %2, i32 0, i32 3
  store i8** getelementptr inbounds ([6 x i8*], [6 x i8*]* @extensions, i64 0, i64 0), i8*** %extensions, align 8
  %3 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %parser = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %3, i32 0, i32 8
  store void ()* @findPerlTags, void ()** %parser, align 8
  %4 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %selectLanguage = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %4, i32 0, i32 10
  store i8* (%struct._MIO*, i32*, i32)** getelementptr inbounds ([2 x i8* (%struct._MIO*, i32*, i32)*], [2 x i8* (%struct._MIO*, i32*, i32)*]* @PerlParser.selectors, i64 0, i64 0), i8* (%struct._MIO*, i32*, i32)*** %selectLanguage, align 8
  %5 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  ret %struct.sParserDefinition* %5
}

declare i8* @selectByPickingPerlVersion(%struct._MIO*, i32*, i32) #1

declare %struct.sParserDefinition* @parserNew(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @findPerlTags() #0 {
entry:
  %name = alloca %struct.sVString*, align 8
  %package = alloca %struct.sVString*, align 8
  %skipPodDoc = alloca i8, align 1
  %line = alloca i8*, align 8
  %podStart = alloca i64, align 8
  %respect_token = alloca i32, align 4
  %spaceRequired = alloca i8, align 1
  %qualified = alloca i8, align 1
  %cp = alloca i8*, align 8
  %kind = alloca i32, align 4
  %e = alloca %struct.sTagEntryInfo, align 8
  %vStringClear_s = alloca %struct.sVString*, align 8
  %vStringClear_s179 = alloca %struct.sVString*, align 8
  %first = alloca i8*, align 8
  %p = alloca i8*, align 8
  %vStringClear_s314 = alloca %struct.sVString*, align 8
  %vStringClear_s336 = alloca %struct.sVString*, align 8
  %qualifiedName = alloca %struct.sVString*, align 8
  %fqe = alloca %struct.sTagEntryInfo, align 8
  %qualifiedName389 = alloca %struct.sVString*, align 8
  %vStringClear_s397 = alloca %struct.sVString*, align 8
  %call = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call, %struct.sVString** %name, align 8
  store %struct.sVString* null, %struct.sVString** %package, align 8
  store i8 0, i8* %skipPodDoc, align 1
  store i64 0, i64* %podStart, align 8
  store i32 3, i32* %respect_token, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end402, %if.then345, %do.end340, %do.end318, %if.then251, %do.end, %if.then92, %if.then86, %if.then80, %if.then66, %if.then41, %if.else35, %if.else26, %if.end18, %if.end10, %entry
  %call1 = call i8* @readLineFromInputFile()
  store i8* %call1, i8** %line, align 8
  %cmp = icmp ne i8* %call1, null
  br i1 %cmp, label %while.body, label %while.end403

while.body:                                       ; preds = %while.cond
  store i8 0, i8* %spaceRequired, align 1
  store i8 0, i8* %qualified, align 1
  %0 = load i8*, i8** %line, align 8
  store i8* %0, i8** %cp, align 8
  store i32 -1, i32* %kind, align 4
  %1 = load i8, i8* %skipPodDoc, align 1
  %tobool = trunc i8 %1 to i1
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %2 = load i8*, i8** %line, align 8
  %call2 = call i32 @strncmp(i8* %2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), i64 4)
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end10

if.then4:                                         ; preds = %if.then
  store i8 0, i8* %skipPodDoc, align 1
  %3 = load i64, i64* %podStart, align 8
  %cmp5 = icmp ne i64 %3, 0
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then4
  %4 = load i64, i64* %podStart, align 8
  %call7 = call i64 @getInputLineNumber()
  %call8 = call i64 @getSourceLineNumber()
  %call9 = call i32 @makePromise(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0), i64 %4, i64 0, i64 %call7, i64 0, i64 %call8)
  store i64 0, i64* %podStart, align 8
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then4
  br label %if.end10

if.end10:                                         ; preds = %if.end, %if.then
  br label %while.cond

if.else:                                          ; preds = %while.body
  %5 = load i8*, i8** %line, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 0
  %6 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %6 to i32
  %cmp11 = icmp eq i32 %conv, 61
  br i1 %cmp11, label %if.then13, label %if.else19

if.then13:                                        ; preds = %if.else
  %7 = load i8*, i8** %line, align 8
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 1
  %call14 = call zeroext i1 @isPodWord(i8* %add.ptr)
  %frombool = zext i1 %call14 to i8
  store i8 %frombool, i8* %skipPodDoc, align 1
  %8 = load i8, i8* %skipPodDoc, align 1
  %tobool15 = trunc i8 %8 to i1
  br i1 %tobool15, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.then13
  %call17 = call i64 @getSourceLineNumber()
  store i64 %call17, i64* %podStart, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.then13
  br label %while.cond

if.else19:                                        ; preds = %if.else
  %9 = load i8*, i8** %line, align 8
  %call20 = call i32 @strcmp(i8* %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0))
  %cmp21 = icmp eq i32 %call20, 0
  br i1 %cmp21, label %if.then23, label %if.else27

if.then23:                                        ; preds = %if.else19
  %10 = load i32, i32* %respect_token, align 4
  %and = and i32 %10, 2
  %tobool24 = icmp ne i32 %and, 0
  br i1 %tobool24, label %if.then25, label %if.else26

if.then25:                                        ; preds = %if.then23
  br label %while.end403

if.else26:                                        ; preds = %if.then23
  br label %while.cond

if.else27:                                        ; preds = %if.else19
  %11 = load i8*, i8** %line, align 8
  %call28 = call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i64 0, i64 0))
  %cmp29 = icmp eq i32 %call28, 0
  br i1 %cmp29, label %if.then31, label %if.else36

if.then31:                                        ; preds = %if.else27
  %12 = load i32, i32* %respect_token, align 4
  %and32 = and i32 %12, 1
  %tobool33 = icmp ne i32 %and32, 0
  br i1 %tobool33, label %if.then34, label %if.else35

if.then34:                                        ; preds = %if.then31
  br label %while.end403

if.else35:                                        ; preds = %if.then31
  br label %while.cond

if.else36:                                        ; preds = %if.else27
  %13 = load i8*, i8** %line, align 8
  %arrayidx37 = getelementptr inbounds i8, i8* %13, i64 0
  %14 = load i8, i8* %arrayidx37, align 1
  %conv38 = zext i8 %14 to i32
  %cmp39 = icmp eq i32 %conv38, 35
  br i1 %cmp39, label %if.then41, label %if.end42

if.then41:                                        ; preds = %if.else36
  br label %while.cond

if.end42:                                         ; preds = %if.else36
  br label %if.end43

if.end43:                                         ; preds = %if.end42
  br label %if.end44

if.end44:                                         ; preds = %if.end43
  br label %if.end45

if.end45:                                         ; preds = %if.end44
  br label %if.end46

if.end46:                                         ; preds = %if.end45
  br label %while.cond47

while.cond47:                                     ; preds = %while.body51, %if.end46
  %15 = load i8*, i8** %cp, align 8
  %16 = load i8, i8* %15, align 1
  %conv48 = zext i8 %16 to i32
  %call49 = call i32 @isspace(i32 %conv48) #3
  %tobool50 = icmp ne i32 %call49, 0
  br i1 %tobool50, label %while.body51, label %while.end

while.body51:                                     ; preds = %while.cond47
  %17 = load i8*, i8** %cp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr, i8** %cp, align 8
  br label %while.cond47

while.end:                                        ; preds = %while.cond47
  %18 = load i8*, i8** %cp, align 8
  %call52 = call i32 @strncmp(i8* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), i64 3)
  %cmp53 = icmp eq i32 %call52, 0
  br i1 %cmp53, label %if.then55, label %if.else57

if.then55:                                        ; preds = %while.end
  %19 = load i8*, i8** %cp, align 8
  %add.ptr56 = getelementptr inbounds i8, i8* %19, i64 3
  store i8* %add.ptr56, i8** %cp, align 8
  store i32 4, i32* %kind, align 4
  store i8 1, i8* %spaceRequired, align 1
  store i8 1, i8* %qualified, align 1
  br label %if.end238

if.else57:                                        ; preds = %while.end
  %20 = load i8*, i8** %cp, align 8
  %call58 = call i32 @strncmp(i8* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0), i64 3)
  %cmp59 = icmp eq i32 %call58, 0
  br i1 %cmp59, label %if.then61, label %if.else132

if.then61:                                        ; preds = %if.else57
  %21 = load i8*, i8** %cp, align 8
  %add.ptr62 = getelementptr inbounds i8, i8* %21, i64 3
  store i8* %add.ptr62, i8** %cp, align 8
  %22 = load i8*, i8** %cp, align 8
  %23 = load i8, i8* %22, align 1
  %conv63 = zext i8 %23 to i32
  %call64 = call i32 @isspace(i32 %conv63) #3
  %tobool65 = icmp ne i32 %call64, 0
  br i1 %tobool65, label %if.end67, label %if.then66

if.then66:                                        ; preds = %if.then61
  br label %while.cond

if.end67:                                         ; preds = %if.then61
  br label %while.cond68

while.cond68:                                     ; preds = %while.body74, %if.end67
  %24 = load i8*, i8** %cp, align 8
  %25 = load i8, i8* %24, align 1
  %conv69 = zext i8 %25 to i32
  %tobool70 = icmp ne i32 %conv69, 0
  br i1 %tobool70, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond68
  %26 = load i8*, i8** %cp, align 8
  %27 = load i8, i8* %26, align 1
  %conv71 = zext i8 %27 to i32
  %call72 = call i32 @isspace(i32 %conv71) #3
  %tobool73 = icmp ne i32 %call72, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond68
  %28 = phi i1 [ false, %while.cond68 ], [ %tobool73, %land.rhs ]
  br i1 %28, label %while.body74, label %while.end76

while.body74:                                     ; preds = %land.end
  %29 = load i8*, i8** %cp, align 8
  %incdec.ptr75 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr75, i8** %cp, align 8
  br label %while.cond68

while.end76:                                      ; preds = %land.end
  %30 = load i8*, i8** %cp, align 8
  %call77 = call i32 @strncmp(i8* %30, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i64 0, i64 0), i64 10)
  %cmp78 = icmp eq i32 %call77, 0
  br i1 %cmp78, label %if.then80, label %if.end82

if.then80:                                        ; preds = %while.end76
  %31 = load i32, i32* %respect_token, align 4
  %and81 = and i32 %31, -2
  store i32 %and81, i32* %respect_token, align 4
  br label %while.cond

if.end82:                                         ; preds = %while.end76
  %32 = load i8*, i8** %cp, align 8
  %call83 = call i32 @strncmp(i8* %32, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0), i64 10)
  %cmp84 = icmp eq i32 %call83, 0
  br i1 %cmp84, label %if.then86, label %if.end88

if.then86:                                        ; preds = %if.end82
  %33 = load i32, i32* %respect_token, align 4
  %and87 = and i32 %33, -3
  store i32 %and87, i32* %respect_token, align 4
  br label %while.cond

if.end88:                                         ; preds = %if.end82
  %34 = load i8*, i8** %cp, align 8
  %call89 = call i32 @strncmp(i8* %34, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i64 8)
  %cmp90 = icmp ne i32 %call89, 0
  br i1 %cmp90, label %if.then92, label %if.end93

if.then92:                                        ; preds = %if.end88
  br label %while.cond

if.end93:                                         ; preds = %if.end88
  %35 = load i8*, i8** %cp, align 8
  %add.ptr94 = getelementptr inbounds i8, i8* %35, i64 8
  store i8* %add.ptr94, i8** %cp, align 8
  br label %while.cond95

while.cond95:                                     ; preds = %while.body99, %if.end93
  %36 = load i8*, i8** %cp, align 8
  %37 = load i8, i8* %36, align 1
  %conv96 = zext i8 %37 to i32
  %call97 = call i32 @isspace(i32 %conv96) #3
  %tobool98 = icmp ne i32 %call97, 0
  br i1 %tobool98, label %while.body99, label %while.end101

while.body99:                                     ; preds = %while.cond95
  %38 = load i8*, i8** %cp, align 8
  %incdec.ptr100 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %incdec.ptr100, i8** %cp, align 8
  br label %while.cond95

while.end101:                                     ; preds = %while.cond95
  br label %while.cond102

while.cond102:                                    ; preds = %while.end118, %while.end101
  %39 = load i8*, i8** %cp, align 8
  %40 = load i8, i8* %39, align 1
  %tobool103 = icmp ne i8 %40, 0
  br i1 %tobool103, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %while.cond102
  %41 = load i8*, i8** %cp, align 8
  %42 = load i8, i8* %41, align 1
  %conv104 = zext i8 %42 to i32
  %cmp105 = icmp eq i32 35, %conv104
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond102
  %43 = phi i1 [ true, %while.cond102 ], [ %cmp105, %lor.rhs ]
  br i1 %43, label %while.body107, label %while.end119

while.body107:                                    ; preds = %lor.end
  %call108 = call i8* @readLineFromInputFile()
  store i8* %call108, i8** %cp, align 8
  %44 = load i8*, i8** %cp, align 8
  %tobool109 = icmp ne i8* %44, null
  br i1 %tobool109, label %if.end111, label %if.then110

if.then110:                                       ; preds = %while.body107
  br label %END_MAIN_WHILE

if.end111:                                        ; preds = %while.body107
  br label %while.cond112

while.cond112:                                    ; preds = %while.body116, %if.end111
  %45 = load i8*, i8** %cp, align 8
  %46 = load i8, i8* %45, align 1
  %conv113 = zext i8 %46 to i32
  %call114 = call i32 @isspace(i32 %conv113) #3
  %tobool115 = icmp ne i32 %call114, 0
  br i1 %tobool115, label %while.body116, label %while.end118

while.body116:                                    ; preds = %while.cond112
  %47 = load i8*, i8** %cp, align 8
  %incdec.ptr117 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %incdec.ptr117, i8** %cp, align 8
  br label %while.cond112

while.end118:                                     ; preds = %while.cond112
  br label %while.cond102

while.end119:                                     ; preds = %lor.end
  %48 = load i8*, i8** %cp, align 8
  %49 = load i8, i8* %48, align 1
  %conv120 = zext i8 %49 to i32
  %cmp121 = icmp eq i32 123, %conv120
  br i1 %cmp121, label %if.then123, label %if.end131

if.then123:                                       ; preds = %while.end119
  %50 = load i8*, i8** %cp, align 8
  %incdec.ptr124 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %incdec.ptr124, i8** %cp, align 8
  %51 = load i8*, i8** %cp, align 8
  %52 = load %struct.sVString*, %struct.sVString** %name, align 8
  %53 = load %struct.sVString*, %struct.sVString** %package, align 8
  %call125 = call i32 @parseConstantsFromHashRef(i8* %51, %struct.sVString* %52, %struct.sVString* %53)
  %cmp126 = icmp eq i32 0, %call125
  br i1 %cmp126, label %if.then128, label %if.else130

if.then128:                                       ; preds = %if.then123
  br label %do.body

do.body:                                          ; preds = %if.then128
  %54 = load %struct.sVString*, %struct.sVString** %name, align 8
  store %struct.sVString* %54, %struct.sVString** %vStringClear_s, align 8
  %55 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %55, i32 0, i32 0
  store i64 0, i64* %length, align 8
  %56 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %56, i32 0, i32 2
  %57 = load i8*, i8** %buffer, align 8
  %arrayidx129 = getelementptr inbounds i8, i8* %57, i64 0
  store i8 0, i8* %arrayidx129, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %while.cond

if.else130:                                       ; preds = %if.then123
  br label %END_MAIN_WHILE

if.end131:                                        ; preds = %while.end119
  store i32 0, i32* %kind, align 4
  store i8 0, i8* %spaceRequired, align 1
  store i8 1, i8* %qualified, align 1
  br label %if.end237

if.else132:                                       ; preds = %if.else57
  %58 = load i8*, i8** %cp, align 8
  %call133 = call i32 @strncmp(i8* %58, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i64 7)
  %cmp134 = icmp eq i32 %call133, 0
  br i1 %cmp134, label %land.lhs.true, label %if.else201

land.lhs.true:                                    ; preds = %if.else132
  %59 = load i8*, i8** %cp, align 8
  %arrayidx136 = getelementptr inbounds i8, i8* %59, i64 7
  %60 = load i8, i8* %arrayidx136, align 1
  %conv137 = zext i8 %60 to i32
  %cmp138 = icmp eq i32 0, %conv137
  br i1 %cmp138, label %if.then144, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %61 = load i8*, i8** %cp, align 8
  %arrayidx140 = getelementptr inbounds i8, i8* %61, i64 7
  %62 = load i8, i8* %arrayidx140, align 1
  %conv141 = zext i8 %62 to i32
  %call142 = call i32 @isspace(i32 %conv141) #3
  %tobool143 = icmp ne i32 %call142, 0
  br i1 %tobool143, label %if.then144, label %if.else201

if.then144:                                       ; preds = %lor.lhs.false, %land.lhs.true
  %63 = load i8*, i8** %cp, align 8
  %add.ptr145 = getelementptr inbounds i8, i8* %63, i64 7
  store i8* %add.ptr145, i8** %cp, align 8
  br label %while.cond146

while.cond146:                                    ; preds = %while.body150, %if.then144
  %64 = load i8*, i8** %cp, align 8
  %65 = load i8, i8* %64, align 1
  %conv147 = zext i8 %65 to i32
  %call148 = call i32 @isspace(i32 %conv147) #3
  %tobool149 = icmp ne i32 %call148, 0
  br i1 %tobool149, label %while.body150, label %while.end152

while.body150:                                    ; preds = %while.cond146
  %66 = load i8*, i8** %cp, align 8
  %incdec.ptr151 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %incdec.ptr151, i8** %cp, align 8
  br label %while.cond146

while.end152:                                     ; preds = %while.cond146
  br label %while.cond153

while.cond153:                                    ; preds = %while.end171, %while.end152
  %67 = load i8*, i8** %cp, align 8
  %68 = load i8, i8* %67, align 1
  %tobool154 = icmp ne i8 %68, 0
  br i1 %tobool154, label %lor.rhs155, label %lor.end159

lor.rhs155:                                       ; preds = %while.cond153
  %69 = load i8*, i8** %cp, align 8
  %70 = load i8, i8* %69, align 1
  %conv156 = zext i8 %70 to i32
  %cmp157 = icmp eq i32 35, %conv156
  br label %lor.end159

lor.end159:                                       ; preds = %lor.rhs155, %while.cond153
  %71 = phi i1 [ true, %while.cond153 ], [ %cmp157, %lor.rhs155 ]
  br i1 %71, label %while.body160, label %while.end172

while.body160:                                    ; preds = %lor.end159
  %call161 = call i8* @readLineFromInputFile()
  store i8* %call161, i8** %cp, align 8
  %72 = load i8*, i8** %cp, align 8
  %tobool162 = icmp ne i8* %72, null
  br i1 %tobool162, label %if.end164, label %if.then163

if.then163:                                       ; preds = %while.body160
  br label %END_MAIN_WHILE

if.end164:                                        ; preds = %while.body160
  br label %while.cond165

while.cond165:                                    ; preds = %while.body169, %if.end164
  %73 = load i8*, i8** %cp, align 8
  %74 = load i8, i8* %73, align 1
  %conv166 = zext i8 %74 to i32
  %call167 = call i32 @isspace(i32 %conv166) #3
  %tobool168 = icmp ne i32 %call167, 0
  br i1 %tobool168, label %while.body169, label %while.end171

while.body169:                                    ; preds = %while.cond165
  %75 = load i8*, i8** %cp, align 8
  %incdec.ptr170 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %incdec.ptr170, i8** %cp, align 8
  br label %while.cond165

while.end171:                                     ; preds = %while.cond165
  br label %while.cond153

while.end172:                                     ; preds = %lor.end159
  %76 = load %struct.sVString*, %struct.sVString** %package, align 8
  %cmp173 = icmp eq %struct.sVString* %76, null
  br i1 %cmp173, label %if.then175, label %if.else177

if.then175:                                       ; preds = %while.end172
  %call176 = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call176, %struct.sVString** %package, align 8
  br label %if.end184

if.else177:                                       ; preds = %while.end172
  br label %do.body178

do.body178:                                       ; preds = %if.else177
  %77 = load %struct.sVString*, %struct.sVString** %package, align 8
  store %struct.sVString* %77, %struct.sVString** %vStringClear_s179, align 8
  %78 = load %struct.sVString*, %struct.sVString** %vStringClear_s179, align 8
  %length180 = getelementptr inbounds %struct.sVString, %struct.sVString* %78, i32 0, i32 0
  store i64 0, i64* %length180, align 8
  %79 = load %struct.sVString*, %struct.sVString** %vStringClear_s179, align 8
  %buffer181 = getelementptr inbounds %struct.sVString, %struct.sVString* %79, i32 0, i32 2
  %80 = load i8*, i8** %buffer181, align 8
  %arrayidx182 = getelementptr inbounds i8, i8* %80, i64 0
  store i8 0, i8* %arrayidx182, align 1
  br label %do.end183

do.end183:                                        ; preds = %do.body178
  br label %if.end184

if.end184:                                        ; preds = %do.end183, %if.then175
  %81 = load i8*, i8** %cp, align 8
  store i8* %81, i8** %first, align 8
  br label %while.cond185

while.cond185:                                    ; preds = %while.body197, %if.end184
  %82 = load i8*, i8** %cp, align 8
  %83 = load i8, i8* %82, align 1
  %conv186 = zext i8 %83 to i32
  %tobool187 = icmp ne i32 %conv186, 0
  br i1 %tobool187, label %land.lhs.true188, label %land.end196

land.lhs.true188:                                 ; preds = %while.cond185
  %84 = load i8*, i8** %cp, align 8
  %85 = load i8, i8* %84, align 1
  %conv189 = zext i8 %85 to i32
  %cmp190 = icmp ne i32 %conv189, 59
  br i1 %cmp190, label %land.rhs192, label %land.end196

land.rhs192:                                      ; preds = %land.lhs.true188
  %86 = load i8*, i8** %cp, align 8
  %87 = load i8, i8* %86, align 1
  %conv193 = zext i8 %87 to i32
  %call194 = call i32 @isspace(i32 %conv193) #3
  %tobool195 = icmp ne i32 %call194, 0
  %lnot = xor i1 %tobool195, true
  br label %land.end196

land.end196:                                      ; preds = %land.rhs192, %land.lhs.true188, %while.cond185
  %88 = phi i1 [ false, %land.lhs.true188 ], [ false, %while.cond185 ], [ %lnot, %land.rhs192 ]
  br i1 %88, label %while.body197, label %while.end200

while.body197:                                    ; preds = %land.end196
  %89 = load %struct.sVString*, %struct.sVString** %package, align 8
  %90 = load i8*, i8** %cp, align 8
  %91 = load i8, i8* %90, align 1
  %conv198 = zext i8 %91 to i32
  call void @vStringPut(%struct.sVString* %89, i32 %conv198)
  %92 = load i8*, i8** %cp, align 8
  %incdec.ptr199 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %incdec.ptr199, i8** %cp, align 8
  br label %while.cond185

while.end200:                                     ; preds = %land.end196
  %93 = load %struct.sVString*, %struct.sVString** %package, align 8
  call void @vStringCatS(%struct.sVString* %93, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i64 0, i64 0))
  %94 = load i8*, i8** %first, align 8
  store i8* %94, i8** %cp, align 8
  store i32 3, i32* %kind, align 4
  store i8 0, i8* %spaceRequired, align 1
  store i8 1, i8* %qualified, align 1
  br label %if.end236

if.else201:                                       ; preds = %lor.lhs.false, %if.else132
  %95 = load i8*, i8** %cp, align 8
  %call202 = call i32 @strncmp(i8* %95, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i64 6)
  %cmp203 = icmp eq i32 %call202, 0
  br i1 %cmp203, label %if.then205, label %if.else207

if.then205:                                       ; preds = %if.else201
  %96 = load i8*, i8** %cp, align 8
  %add.ptr206 = getelementptr inbounds i8, i8* %96, i64 6
  store i8* %add.ptr206, i8** %cp, align 8
  store i32 1, i32* %kind, align 4
  store i8 1, i8* %spaceRequired, align 1
  store i8 1, i8* %qualified, align 1
  br label %if.end235

if.else207:                                       ; preds = %if.else201
  %97 = load i8*, i8** %cp, align 8
  %98 = load i8, i8* %97, align 1
  %conv208 = zext i8 %98 to i32
  %call209 = call zeroext i1 @isIdentifier1(i32 %conv208)
  br i1 %call209, label %if.then210, label %if.end234

if.then210:                                       ; preds = %if.else207
  %99 = load i8*, i8** %cp, align 8
  store i8* %99, i8** %p, align 8
  br label %while.cond211

while.cond211:                                    ; preds = %while.body214, %if.then210
  %100 = load i8*, i8** %p, align 8
  %101 = load i8, i8* %100, align 1
  %conv212 = zext i8 %101 to i32
  %call213 = call zeroext i1 @isIdentifier(i32 %conv212)
  br i1 %call213, label %while.body214, label %while.end216

while.body214:                                    ; preds = %while.cond211
  %102 = load i8*, i8** %p, align 8
  %incdec.ptr215 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %incdec.ptr215, i8** %p, align 8
  br label %while.cond211

while.end216:                                     ; preds = %while.cond211
  br label %while.cond217

while.cond217:                                    ; preds = %while.body221, %while.end216
  %103 = load i8*, i8** %p, align 8
  %104 = load i8, i8* %103, align 1
  %conv218 = zext i8 %104 to i32
  %call219 = call i32 @isspace(i32 %conv218) #3
  %tobool220 = icmp ne i32 %call219, 0
  br i1 %tobool220, label %while.body221, label %while.end223

while.body221:                                    ; preds = %while.cond217
  %105 = load i8*, i8** %p, align 8
  %incdec.ptr222 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %incdec.ptr222, i8** %p, align 8
  br label %while.cond217

while.end223:                                     ; preds = %while.cond217
  %106 = load i8*, i8** %p, align 8
  %107 = load i8, i8* %106, align 1
  %conv224 = zext i8 %107 to i32
  %cmp225 = icmp eq i32 %conv224, 58
  br i1 %cmp225, label %land.lhs.true227, label %if.end233

land.lhs.true227:                                 ; preds = %while.end223
  %108 = load i8*, i8** %p, align 8
  %add.ptr228 = getelementptr inbounds i8, i8* %108, i64 1
  %109 = load i8, i8* %add.ptr228, align 1
  %conv229 = zext i8 %109 to i32
  %cmp230 = icmp ne i32 %conv229, 58
  br i1 %cmp230, label %if.then232, label %if.end233

if.then232:                                       ; preds = %land.lhs.true227
  store i32 2, i32* %kind, align 4
  br label %if.end233

if.end233:                                        ; preds = %if.then232, %land.lhs.true227, %while.end223
  br label %if.end234

if.end234:                                        ; preds = %if.end233, %if.else207
  br label %if.end235

if.end235:                                        ; preds = %if.end234, %if.then205
  br label %if.end236

if.end236:                                        ; preds = %if.end235, %while.end200
  br label %if.end237

if.end237:                                        ; preds = %if.end236, %if.end131
  br label %if.end238

if.end238:                                        ; preds = %if.end237, %if.then55
  %110 = load i32, i32* %kind, align 4
  %cmp239 = icmp ne i32 %110, -1
  br i1 %cmp239, label %if.then241, label %if.end402

if.then241:                                       ; preds = %if.end238
  %111 = load i8, i8* %spaceRequired, align 1
  %tobool242 = trunc i8 %111 to i1
  br i1 %tobool242, label %land.lhs.true244, label %if.end252

land.lhs.true244:                                 ; preds = %if.then241
  %112 = load i8*, i8** %cp, align 8
  %113 = load i8, i8* %112, align 1
  %conv245 = zext i8 %113 to i32
  %tobool246 = icmp ne i32 %conv245, 0
  br i1 %tobool246, label %land.lhs.true247, label %if.end252

land.lhs.true247:                                 ; preds = %land.lhs.true244
  %114 = load i8*, i8** %cp, align 8
  %115 = load i8, i8* %114, align 1
  %conv248 = zext i8 %115 to i32
  %call249 = call i32 @isspace(i32 %conv248) #3
  %tobool250 = icmp ne i32 %call249, 0
  br i1 %tobool250, label %if.end252, label %if.then251

if.then251:                                       ; preds = %land.lhs.true247
  br label %while.cond

if.end252:                                        ; preds = %land.lhs.true247, %land.lhs.true244, %if.then241
  br label %while.cond253

while.cond253:                                    ; preds = %while.body257, %if.end252
  %116 = load i8*, i8** %cp, align 8
  %117 = load i8, i8* %116, align 1
  %conv254 = zext i8 %117 to i32
  %call255 = call i32 @isspace(i32 %conv254) #3
  %tobool256 = icmp ne i32 %call255, 0
  br i1 %tobool256, label %while.body257, label %while.end259

while.body257:                                    ; preds = %while.cond253
  %118 = load i8*, i8** %cp, align 8
  %incdec.ptr258 = getelementptr inbounds i8, i8* %118, i32 1
  store i8* %incdec.ptr258, i8** %cp, align 8
  br label %while.cond253

while.end259:                                     ; preds = %while.cond253
  br label %while.cond260

while.cond260:                                    ; preds = %while.end278, %while.end259
  %119 = load i8*, i8** %cp, align 8
  %120 = load i8, i8* %119, align 1
  %tobool261 = icmp ne i8 %120, 0
  br i1 %tobool261, label %lor.rhs262, label %lor.end266

lor.rhs262:                                       ; preds = %while.cond260
  %121 = load i8*, i8** %cp, align 8
  %122 = load i8, i8* %121, align 1
  %conv263 = zext i8 %122 to i32
  %cmp264 = icmp eq i32 35, %conv263
  br label %lor.end266

lor.end266:                                       ; preds = %lor.rhs262, %while.cond260
  %123 = phi i1 [ true, %while.cond260 ], [ %cmp264, %lor.rhs262 ]
  br i1 %123, label %while.body267, label %while.end279

while.body267:                                    ; preds = %lor.end266
  %call268 = call i8* @readLineFromInputFile()
  store i8* %call268, i8** %cp, align 8
  %124 = load i8*, i8** %cp, align 8
  %tobool269 = icmp ne i8* %124, null
  br i1 %tobool269, label %if.end271, label %if.then270

if.then270:                                       ; preds = %while.body267
  br label %END_MAIN_WHILE

if.end271:                                        ; preds = %while.body267
  br label %while.cond272

while.cond272:                                    ; preds = %while.body276, %if.end271
  %125 = load i8*, i8** %cp, align 8
  %126 = load i8, i8* %125, align 1
  %conv273 = zext i8 %126 to i32
  %call274 = call i32 @isspace(i32 %conv273) #3
  %tobool275 = icmp ne i32 %call274, 0
  br i1 %tobool275, label %while.body276, label %while.end278

while.body276:                                    ; preds = %while.cond272
  %127 = load i8*, i8** %cp, align 8
  %incdec.ptr277 = getelementptr inbounds i8, i8* %127, i32 1
  store i8* %incdec.ptr277, i8** %cp, align 8
  br label %while.cond272

while.end278:                                     ; preds = %while.cond272
  br label %while.cond260

while.end279:                                     ; preds = %lor.end266
  br label %while.cond280

while.cond280:                                    ; preds = %while.body293, %while.end279
  %128 = load i8*, i8** %cp, align 8
  %129 = load i8, i8* %128, align 1
  %conv281 = zext i8 %129 to i32
  %call282 = call zeroext i1 @isIdentifier(i32 %conv281)
  br i1 %call282, label %lor.end292, label %lor.rhs284

lor.rhs284:                                       ; preds = %while.cond280
  %130 = load i32, i32* %kind, align 4
  %cmp285 = icmp eq i32 3, %130
  br i1 %cmp285, label %land.rhs287, label %land.end291

land.rhs287:                                      ; preds = %lor.rhs284
  %131 = load i8*, i8** %cp, align 8
  %132 = load i8, i8* %131, align 1
  %conv288 = zext i8 %132 to i32
  %cmp289 = icmp eq i32 58, %conv288
  br label %land.end291

land.end291:                                      ; preds = %land.rhs287, %lor.rhs284
  %133 = phi i1 [ false, %lor.rhs284 ], [ %cmp289, %land.rhs287 ]
  br label %lor.end292

lor.end292:                                       ; preds = %land.end291, %while.cond280
  %134 = phi i1 [ true, %while.cond280 ], [ %133, %land.end291 ]
  br i1 %134, label %while.body293, label %while.end296

while.body293:                                    ; preds = %lor.end292
  %135 = load %struct.sVString*, %struct.sVString** %name, align 8
  %136 = load i8*, i8** %cp, align 8
  %137 = load i8, i8* %136, align 1
  %conv294 = zext i8 %137 to i32
  call void @vStringPut(%struct.sVString* %135, i32 %conv294)
  %138 = load i8*, i8** %cp, align 8
  %incdec.ptr295 = getelementptr inbounds i8, i8* %138, i32 1
  store i8* %incdec.ptr295, i8** %cp, align 8
  br label %while.cond280

while.end296:                                     ; preds = %lor.end292
  %139 = load i32, i32* %kind, align 4
  %cmp297 = icmp eq i32 1, %139
  br i1 %cmp297, label %land.lhs.true299, label %if.end308

land.lhs.true299:                                 ; preds = %while.end296
  %140 = load %struct.sVString*, %struct.sVString** %name, align 8
  %length300 = getelementptr inbounds %struct.sVString, %struct.sVString* %140, i32 0, i32 0
  %141 = load i64, i64* %length300, align 8
  %cmp301 = icmp eq i64 %141, 0
  br i1 %cmp301, label %land.lhs.true303, label %if.end308

land.lhs.true303:                                 ; preds = %land.lhs.true299
  %142 = load i8*, i8** %cp, align 8
  %143 = load i8, i8* %142, align 1
  %conv304 = zext i8 %143 to i32
  %cmp305 = icmp eq i32 61, %conv304
  br i1 %cmp305, label %if.then307, label %if.end308

if.then307:                                       ; preds = %land.lhs.true303
  %144 = load %struct.sVString*, %struct.sVString** %name, align 8
  call void @vStringCatS(%struct.sVString* %144, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i64 0, i64 0))
  br label %if.end308

if.end308:                                        ; preds = %if.then307, %land.lhs.true303, %land.lhs.true299, %while.end296
  %145 = load %struct.sVString*, %struct.sVString** %name, align 8
  %length309 = getelementptr inbounds %struct.sVString, %struct.sVString* %145, i32 0, i32 0
  %146 = load i64, i64* %length309, align 8
  %cmp310 = icmp eq i64 0, %146
  br i1 %cmp310, label %if.then312, label %if.end319

if.then312:                                       ; preds = %if.end308
  br label %do.body313

do.body313:                                       ; preds = %if.then312
  %147 = load %struct.sVString*, %struct.sVString** %name, align 8
  store %struct.sVString* %147, %struct.sVString** %vStringClear_s314, align 8
  %148 = load %struct.sVString*, %struct.sVString** %vStringClear_s314, align 8
  %length315 = getelementptr inbounds %struct.sVString, %struct.sVString* %148, i32 0, i32 0
  store i64 0, i64* %length315, align 8
  %149 = load %struct.sVString*, %struct.sVString** %vStringClear_s314, align 8
  %buffer316 = getelementptr inbounds %struct.sVString, %struct.sVString* %149, i32 0, i32 2
  %150 = load i8*, i8** %buffer316, align 8
  %arrayidx317 = getelementptr inbounds i8, i8* %150, i64 0
  store i8 0, i8* %arrayidx317, align 1
  br label %do.end318

do.end318:                                        ; preds = %do.body313
  br label %while.cond

if.end319:                                        ; preds = %if.end308
  %151 = load i32, i32* %kind, align 4
  %cmp320 = icmp eq i32 4, %151
  br i1 %cmp320, label %if.then322, label %if.else367

if.then322:                                       ; preds = %if.end319
  %152 = load %struct.sVString*, %struct.sVString** %name, align 8
  %buffer323 = getelementptr inbounds %struct.sVString, %struct.sVString* %152, i32 0, i32 2
  %153 = load i8*, i8** %buffer323, align 8
  call void @initTagEntry(%struct.sTagEntryInfo* %e, i8* %153, i32 -1)
  %154 = load i8*, i8** %cp, align 8
  %call324 = call zeroext i1 @isSubroutineDeclaration(i8* %154)
  %conv325 = zext i1 %call324 to i32
  %cmp326 = icmp eq i32 1, %conv325
  br i1 %cmp326, label %if.then328, label %if.else342

if.then328:                                       ; preds = %if.then322
  %155 = load i8, i8* getelementptr inbounds ([6 x %struct.sKindDefinition], [6 x %struct.sKindDefinition]* @PerlKinds, i64 0, i64 5, i32 0), align 8
  %tobool329 = trunc i8 %155 to i1
  %conv330 = zext i1 %tobool329 to i32
  %cmp331 = icmp eq i32 1, %conv330
  br i1 %cmp331, label %if.then333, label %if.else334

if.then333:                                       ; preds = %if.then328
  store i32 5, i32* %kind, align 4
  br label %if.end341

if.else334:                                       ; preds = %if.then328
  br label %do.body335

do.body335:                                       ; preds = %if.else334
  %156 = load %struct.sVString*, %struct.sVString** %name, align 8
  store %struct.sVString* %156, %struct.sVString** %vStringClear_s336, align 8
  %157 = load %struct.sVString*, %struct.sVString** %vStringClear_s336, align 8
  %length337 = getelementptr inbounds %struct.sVString, %struct.sVString* %157, i32 0, i32 0
  store i64 0, i64* %length337, align 8
  %158 = load %struct.sVString*, %struct.sVString** %vStringClear_s336, align 8
  %buffer338 = getelementptr inbounds %struct.sVString, %struct.sVString* %158, i32 0, i32 2
  %159 = load i8*, i8** %buffer338, align 8
  %arrayidx339 = getelementptr inbounds i8, i8* %159, i64 0
  store i8 0, i8* %arrayidx339, align 1
  br label %do.end340

do.end340:                                        ; preds = %do.body335
  br label %while.cond

if.end341:                                        ; preds = %if.then333
  br label %if.end347

if.else342:                                       ; preds = %if.then322
  %160 = load i32, i32* %kind, align 4
  %idxprom = sext i32 %160 to i64
  %arrayidx343 = getelementptr inbounds [6 x %struct.sKindDefinition], [6 x %struct.sKindDefinition]* @PerlKinds, i64 0, i64 %idxprom
  %enabled = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %arrayidx343, i32 0, i32 0
  %161 = load i8, i8* %enabled, align 8
  %tobool344 = trunc i8 %161 to i1
  br i1 %tobool344, label %if.end346, label %if.then345

if.then345:                                       ; preds = %if.else342
  br label %while.cond

if.end346:                                        ; preds = %if.else342
  br label %if.end347

if.end347:                                        ; preds = %if.end346, %if.end341
  %162 = load i32, i32* %kind, align 4
  %kindIndex = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %e, i32 0, i32 8
  store i32 %162, i32* %kindIndex, align 8
  %call348 = call i32 @makeTagEntry(%struct.sTagEntryInfo* %e)
  %call349 = call zeroext i1 @isXtagEnabled(i32 3)
  br i1 %call349, label %land.lhs.true351, label %if.end366

land.lhs.true351:                                 ; preds = %if.end347
  %163 = load i8, i8* %qualified, align 1
  %tobool352 = trunc i8 %163 to i1
  br i1 %tobool352, label %land.lhs.true354, label %if.end366

land.lhs.true354:                                 ; preds = %land.lhs.true351
  %164 = load %struct.sVString*, %struct.sVString** %package, align 8
  %cmp355 = icmp ne %struct.sVString* %164, null
  br i1 %cmp355, label %land.lhs.true357, label %if.end366

land.lhs.true357:                                 ; preds = %land.lhs.true354
  %165 = load %struct.sVString*, %struct.sVString** %package, align 8
  %length358 = getelementptr inbounds %struct.sVString, %struct.sVString* %165, i32 0, i32 0
  %166 = load i64, i64* %length358, align 8
  %cmp359 = icmp ugt i64 %166, 0
  br i1 %cmp359, label %if.then361, label %if.end366

if.then361:                                       ; preds = %land.lhs.true357
  %call362 = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call362, %struct.sVString** %qualifiedName, align 8
  %167 = load %struct.sVString*, %struct.sVString** %qualifiedName, align 8
  %168 = load %struct.sVString*, %struct.sVString** %package, align 8
  call void @vStringCopy(%struct.sVString* %167, %struct.sVString* %168)
  %169 = load %struct.sVString*, %struct.sVString** %qualifiedName, align 8
  %170 = load %struct.sVString*, %struct.sVString** %name, align 8
  call void @vStringCat(%struct.sVString* %169, %struct.sVString* %170)
  %171 = load %struct.sVString*, %struct.sVString** %qualifiedName, align 8
  %buffer363 = getelementptr inbounds %struct.sVString, %struct.sVString* %171, i32 0, i32 2
  %172 = load i8*, i8** %buffer363, align 8
  %name364 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %e, i32 0, i32 7
  store i8* %172, i8** %name364, align 8
  call void @markTagExtraBit(%struct.sTagEntryInfo* %e, i32 3)
  %call365 = call i32 @makeTagEntry(%struct.sTagEntryInfo* %e)
  %173 = load %struct.sVString*, %struct.sVString** %qualifiedName, align 8
  call void @vStringDelete(%struct.sVString* %173)
  br label %if.end366

if.end366:                                        ; preds = %if.then361, %land.lhs.true357, %land.lhs.true354, %land.lhs.true351, %if.end347
  br label %if.end395

if.else367:                                       ; preds = %if.end319
  %174 = load %struct.sVString*, %struct.sVString** %name, align 8
  %length368 = getelementptr inbounds %struct.sVString, %struct.sVString* %174, i32 0, i32 0
  %175 = load i64, i64* %length368, align 8
  %cmp369 = icmp ugt i64 %175, 0
  br i1 %cmp369, label %if.then371, label %if.end394

if.then371:                                       ; preds = %if.else367
  %176 = load %struct.sVString*, %struct.sVString** %name, align 8
  %177 = load i32, i32* %kind, align 4
  %call372 = call i32 @makeSimpleTag(%struct.sVString* %176, i32 %177)
  %call373 = call zeroext i1 @isXtagEnabled(i32 3)
  br i1 %call373, label %land.lhs.true375, label %if.end393

land.lhs.true375:                                 ; preds = %if.then371
  %178 = load i8, i8* %qualified, align 1
  %tobool376 = trunc i8 %178 to i1
  br i1 %tobool376, label %land.lhs.true378, label %if.end393

land.lhs.true378:                                 ; preds = %land.lhs.true375
  %179 = load i32, i32* %kind, align 4
  %cmp379 = icmp ne i32 3, %179
  br i1 %cmp379, label %land.lhs.true381, label %if.end393

land.lhs.true381:                                 ; preds = %land.lhs.true378
  %180 = load %struct.sVString*, %struct.sVString** %package, align 8
  %cmp382 = icmp ne %struct.sVString* %180, null
  br i1 %cmp382, label %land.lhs.true384, label %if.end393

land.lhs.true384:                                 ; preds = %land.lhs.true381
  %181 = load %struct.sVString*, %struct.sVString** %package, align 8
  %length385 = getelementptr inbounds %struct.sVString, %struct.sVString* %181, i32 0, i32 0
  %182 = load i64, i64* %length385, align 8
  %cmp386 = icmp ugt i64 %182, 0
  br i1 %cmp386, label %if.then388, label %if.end393

if.then388:                                       ; preds = %land.lhs.true384
  %call390 = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call390, %struct.sVString** %qualifiedName389, align 8
  %183 = load %struct.sVString*, %struct.sVString** %qualifiedName389, align 8
  %184 = load %struct.sVString*, %struct.sVString** %package, align 8
  call void @vStringCopy(%struct.sVString* %183, %struct.sVString* %184)
  %185 = load %struct.sVString*, %struct.sVString** %qualifiedName389, align 8
  %186 = load %struct.sVString*, %struct.sVString** %name, align 8
  call void @vStringCat(%struct.sVString* %185, %struct.sVString* %186)
  %187 = load %struct.sVString*, %struct.sVString** %qualifiedName389, align 8
  %buffer391 = getelementptr inbounds %struct.sVString, %struct.sVString* %187, i32 0, i32 2
  %188 = load i8*, i8** %buffer391, align 8
  %189 = load i32, i32* %kind, align 4
  call void @initTagEntry(%struct.sTagEntryInfo* %fqe, i8* %188, i32 %189)
  call void @markTagExtraBit(%struct.sTagEntryInfo* %fqe, i32 3)
  %call392 = call i32 @makeTagEntry(%struct.sTagEntryInfo* %fqe)
  %190 = load %struct.sVString*, %struct.sVString** %qualifiedName389, align 8
  call void @vStringDelete(%struct.sVString* %190)
  br label %if.end393

if.end393:                                        ; preds = %if.then388, %land.lhs.true384, %land.lhs.true381, %land.lhs.true378, %land.lhs.true375, %if.then371
  br label %if.end394

if.end394:                                        ; preds = %if.end393, %if.else367
  br label %if.end395

if.end395:                                        ; preds = %if.end394, %if.end366
  br label %do.body396

do.body396:                                       ; preds = %if.end395
  %191 = load %struct.sVString*, %struct.sVString** %name, align 8
  store %struct.sVString* %191, %struct.sVString** %vStringClear_s397, align 8
  %192 = load %struct.sVString*, %struct.sVString** %vStringClear_s397, align 8
  %length398 = getelementptr inbounds %struct.sVString, %struct.sVString* %192, i32 0, i32 0
  store i64 0, i64* %length398, align 8
  %193 = load %struct.sVString*, %struct.sVString** %vStringClear_s397, align 8
  %buffer399 = getelementptr inbounds %struct.sVString, %struct.sVString* %193, i32 0, i32 2
  %194 = load i8*, i8** %buffer399, align 8
  %arrayidx400 = getelementptr inbounds i8, i8* %194, i64 0
  store i8 0, i8* %arrayidx400, align 1
  br label %do.end401

do.end401:                                        ; preds = %do.body396
  br label %if.end402

if.end402:                                        ; preds = %do.end401, %if.end238
  br label %while.cond

while.end403:                                     ; preds = %if.then34, %if.then25, %while.cond
  br label %END_MAIN_WHILE

END_MAIN_WHILE:                                   ; preds = %while.end403, %if.then270, %if.then163, %if.else130, %if.then110
  %195 = load %struct.sVString*, %struct.sVString** %name, align 8
  call void @vStringDelete(%struct.sVString* %195)
  %196 = load %struct.sVString*, %struct.sVString** %package, align 8
  %cmp404 = icmp ne %struct.sVString* %196, null
  br i1 %cmp404, label %if.then406, label %if.end407

if.then406:                                       ; preds = %END_MAIN_WHILE
  %197 = load %struct.sVString*, %struct.sVString** %package, align 8
  call void @vStringDelete(%struct.sVString* %197)
  br label %if.end407

if.end407:                                        ; preds = %if.then406, %END_MAIN_WHILE
  ret void
}

declare %struct.sVString* @vStringNew() #1

declare i8* @readLineFromInputFile() #1

declare i32 @strncmp(i8*, i8*, i64) #1

declare i32 @makePromise(i8*, i64, i64, i64, i64, i64) #1

declare i64 @getInputLineNumber() #1

declare i64 @getSourceLineNumber() #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @isPodWord(i8* %word) #0 {
entry:
  %retval = alloca i1, align 1
  %word.addr = alloca i8*, align 8
  %len = alloca i64, align 8
  store i8* %word, i8** %word.addr, align 8
  store i64 0, i64* %len, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %len, align 8
  %cmp = icmp ult i64 %0, 9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i8*, i8** %word.addr, align 8
  %2 = load i64, i64* %len, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %2
  %3 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %cmp1 = icmp eq i32 0, %conv
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %4 = load i8*, i8** %word.addr, align 8
  %5 = load i64, i64* %len, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %4, i64 %5
  %6 = load i8, i8* %arrayidx3, align 1
  %conv4 = sext i8 %6 to i32
  %cmp5 = icmp eq i32 32, %conv4
  br i1 %cmp5, label %if.then, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %7 = load i8*, i8** %word.addr, align 8
  %8 = load i64, i64* %len, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %7, i64 %8
  %9 = load i8, i8* %arrayidx8, align 1
  %conv9 = sext i8 %9 to i32
  %cmp10 = icmp eq i32 9, %conv9
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false7, %lor.lhs.false, %for.body
  br label %for.end

if.end:                                           ; preds = %lor.lhs.false7
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i64, i64* %len, align 8
  %inc = add i64 %10, 1
  store i64 %inc, i64* %len, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %11 = load i64, i64* %len, align 8
  switch i64 %11, label %sw.default [
    i64 3, label %sw.bb
    i64 4, label %sw.bb21
    i64 5, label %sw.bb34
    i64 8, label %sw.bb55
  ]

sw.bb:                                            ; preds = %for.end
  %12 = load i8*, i8** %word.addr, align 8
  %call = call i32 @strncmp(i8* %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i64 0, i64 0), i64 3)
  %cmp12 = icmp eq i32 0, %call
  br i1 %cmp12, label %lor.end, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %sw.bb
  %13 = load i8*, i8** %word.addr, align 8
  %call15 = call i32 @strncmp(i8* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i64 0, i64 0), i64 3)
  %cmp16 = icmp eq i32 0, %call15
  br i1 %cmp16, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false14
  %14 = load i8*, i8** %word.addr, align 8
  %call18 = call i32 @strncmp(i8* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i64 0, i64 0), i64 3)
  %cmp19 = icmp eq i32 0, %call18
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false14, %sw.bb
  %15 = phi i1 [ true, %lor.lhs.false14 ], [ true, %sw.bb ], [ %cmp19, %lor.rhs ]
  store i1 %15, i1* %retval, align 1
  br label %return

sw.bb21:                                          ; preds = %for.end
  %16 = load i8*, i8** %word.addr, align 8
  %call22 = call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0), i64 4)
  %cmp23 = icmp eq i32 0, %call22
  br i1 %cmp23, label %lor.end33, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %sw.bb21
  %17 = load i8*, i8** %word.addr, align 8
  %call26 = call i32 @strncmp(i8* %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i64 0, i64 0), i64 4)
  %cmp27 = icmp eq i32 0, %call26
  br i1 %cmp27, label %lor.end33, label %lor.rhs29

lor.rhs29:                                        ; preds = %lor.lhs.false25
  %18 = load i8*, i8** %word.addr, align 8
  %call30 = call i32 @strncmp(i8* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i64 0, i64 0), i64 4)
  %cmp31 = icmp eq i32 0, %call30
  br label %lor.end33

lor.end33:                                        ; preds = %lor.rhs29, %lor.lhs.false25, %sw.bb21
  %19 = phi i1 [ true, %lor.lhs.false25 ], [ true, %sw.bb21 ], [ %cmp31, %lor.rhs29 ]
  store i1 %19, i1* %retval, align 1
  br label %return

sw.bb34:                                          ; preds = %for.end
  %20 = load i8*, i8** %word.addr, align 8
  %call35 = call i32 @strncmp(i8* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i64 0, i64 0), i64 5)
  %cmp36 = icmp eq i32 0, %call35
  br i1 %cmp36, label %lor.end54, label %lor.lhs.false38

lor.lhs.false38:                                  ; preds = %sw.bb34
  %21 = load i8*, i8** %word.addr, align 8
  %call39 = call i32 @strncmp(i8* %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i64 0, i64 0), i64 5)
  %cmp40 = icmp eq i32 0, %call39
  br i1 %cmp40, label %lor.end54, label %lor.lhs.false42

lor.lhs.false42:                                  ; preds = %lor.lhs.false38
  %22 = load i8*, i8** %word.addr, align 8
  %call43 = call i32 @strncmp(i8* %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i64 0, i64 0), i64 5)
  %cmp44 = icmp eq i32 0, %call43
  br i1 %cmp44, label %lor.end54, label %lor.lhs.false46

lor.lhs.false46:                                  ; preds = %lor.lhs.false42
  %23 = load i8*, i8** %word.addr, align 8
  %call47 = call i32 @strncmp(i8* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i64 0, i64 0), i64 5)
  %cmp48 = icmp eq i32 0, %call47
  br i1 %cmp48, label %lor.end54, label %lor.rhs50

lor.rhs50:                                        ; preds = %lor.lhs.false46
  %24 = load i8*, i8** %word.addr, align 8
  %call51 = call i32 @strncmp(i8* %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i64 0, i64 0), i64 5)
  %cmp52 = icmp eq i32 0, %call51
  br label %lor.end54

lor.end54:                                        ; preds = %lor.rhs50, %lor.lhs.false46, %lor.lhs.false42, %lor.lhs.false38, %sw.bb34
  %25 = phi i1 [ true, %lor.lhs.false46 ], [ true, %lor.lhs.false42 ], [ true, %lor.lhs.false38 ], [ true, %sw.bb34 ], [ %cmp52, %lor.rhs50 ]
  store i1 %25, i1* %retval, align 1
  br label %return

sw.bb55:                                          ; preds = %for.end
  %26 = load i8*, i8** %word.addr, align 8
  %call56 = call i32 @strncmp(i8* %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.39, i64 0, i64 0), i64 8)
  %cmp57 = icmp eq i32 0, %call56
  store i1 %cmp57, i1* %retval, align 1
  br label %return

sw.default:                                       ; preds = %for.end
  store i1 false, i1* %retval, align 1
  br label %return

return:                                           ; preds = %sw.default, %sw.bb55, %lor.end54, %lor.end33, %lor.end
  %27 = load i1, i1* %retval, align 1
  ret i1 %27
}

declare i32 @strcmp(i8*, i8*) #1

; Function Attrs: nounwind readonly
declare i32 @isspace(i32) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @parseConstantsFromHashRef(i8* %cp, %struct.sVString* %name, %struct.sVString* %package) #0 {
entry:
  %retval = alloca i32, align 4
  %cp.addr = alloca i8*, align 8
  %name.addr = alloca %struct.sVString*, align 8
  %package.addr = alloca %struct.sVString*, align 8
  %state = alloca i32, align 4
  store i8* %cp, i8** %cp.addr, align 8
  store %struct.sVString* %name, %struct.sVString** %name.addr, align 8
  store %struct.sVString* %package, %struct.sVString** %package.addr, align 8
  br label %while.body

while.body:                                       ; preds = %entry, %sw.epilog
  %0 = load i8*, i8** %cp.addr, align 8
  %1 = load %struct.sVString*, %struct.sVString** %name.addr, align 8
  %2 = load %struct.sVString*, %struct.sVString** %package.addr, align 8
  %call = call i32 @parseConstantsFromLine(i8* %0, %struct.sVString* %1, %struct.sVString* %2)
  store i32 %call, i32* %state, align 4
  %3 = load i32, i32* %state, align 4
  switch i32 %3, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
  ]

sw.bb:                                            ; preds = %while.body
  %call1 = call i8* @readLineFromInputFile()
  store i8* %call1, i8** %cp.addr, align 8
  %4 = load i8*, i8** %cp.addr, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  store i32 -1, i32* %retval, align 4
  br label %return

sw.bb2:                                           ; preds = %while.body
  store i32 0, i32* %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %while.body, %if.then
  br label %while.body

return:                                           ; preds = %sw.bb2, %if.else
  %5 = load i32, i32* %retval, align 4
  ret i32 %5
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

declare void @vStringCatS(%struct.sVString*, i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @isIdentifier1(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %call = call i32 @isalpha(i32 %0) #3
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %1 = load i32, i32* %c.addr, align 4
  %cmp = icmp eq i32 %1, 95
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %cmp, %lor.rhs ]
  ret i1 %2
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @isIdentifier(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %call = call i32 @isalnum(i32 %0) #3
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %1 = load i32, i32* %c.addr, align 4
  %cmp = icmp eq i32 %1, 95
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %cmp, %lor.rhs ]
  ret i1 %2
}

declare void @initTagEntry(%struct.sTagEntryInfo*, i8*, i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @isSubroutineDeclaration(i8* %cp) #0 {
entry:
  %retval = alloca i1, align 1
  %cp.addr = alloca i8*, align 8
  %attr = alloca i8, align 1
  %nparens = alloca i32, align 4
  store i8* %cp, i8** %cp.addr, align 8
  store i8 0, i8* %attr, align 1
  store i32 0, i32* %nparens, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.body
  %0 = load i8*, i8** %cp.addr, align 8
  %1 = load i8, i8* %0, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %SUB_DECL_SWITCH

SUB_DECL_SWITCH:                                  ; preds = %while.end, %for.body
  %2 = load i8*, i8** %cp.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv = zext i8 %3 to i32
  switch i32 %conv, label %sw.default [
    i32 58, label %sw.bb
    i32 40, label %sw.bb8
    i32 41, label %sw.bb9
    i32 32, label %sw.bb10
    i32 9, label %sw.bb10
    i32 59, label %sw.bb11
    i32 123, label %sw.bb15
  ]

sw.bb:                                            ; preds = %SUB_DECL_SWITCH
  %4 = load i32, i32* %nparens, align 4
  %tobool1 = icmp ne i32 %4, 0
  br i1 %tobool1, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  %5 = load i8, i8* %attr, align 1
  %tobool2 = trunc i8 %5 to i1
  %conv3 = zext i1 %tobool2 to i32
  %cmp = icmp eq i32 1, %conv3
  br i1 %cmp, label %if.then5, label %if.else6

if.then5:                                         ; preds = %if.else
  store i1 false, i1* %retval, align 1
  br label %return

if.else6:                                         ; preds = %if.else
  store i8 1, i8* %attr, align 1
  br label %if.end

if.end:                                           ; preds = %if.else6
  br label %if.end7

if.end7:                                          ; preds = %if.end
  br label %sw.epilog

sw.bb8:                                           ; preds = %SUB_DECL_SWITCH
  %6 = load i32, i32* %nparens, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %nparens, align 4
  br label %sw.epilog

sw.bb9:                                           ; preds = %SUB_DECL_SWITCH
  %7 = load i32, i32* %nparens, align 4
  %dec = add nsw i32 %7, -1
  store i32 %dec, i32* %nparens, align 4
  br label %sw.epilog

sw.bb10:                                          ; preds = %SUB_DECL_SWITCH, %SUB_DECL_SWITCH
  br label %sw.epilog

sw.bb11:                                          ; preds = %SUB_DECL_SWITCH
  %8 = load i32, i32* %nparens, align 4
  %tobool12 = icmp ne i32 %8, 0
  br i1 %tobool12, label %if.end14, label %if.then13

if.then13:                                        ; preds = %sw.bb11
  store i1 true, i1* %retval, align 1
  br label %return

if.end14:                                         ; preds = %sw.bb11
  br label %sw.bb15

sw.bb15:                                          ; preds = %SUB_DECL_SWITCH, %if.end14
  %9 = load i32, i32* %nparens, align 4
  %tobool16 = icmp ne i32 %9, 0
  br i1 %tobool16, label %if.end18, label %if.then17

if.then17:                                        ; preds = %sw.bb15
  store i1 false, i1* %retval, align 1
  br label %return

if.end18:                                         ; preds = %sw.bb15
  br label %sw.default

sw.default:                                       ; preds = %SUB_DECL_SWITCH, %if.end18
  %10 = load i8, i8* %attr, align 1
  %tobool19 = trunc i8 %10 to i1
  br i1 %tobool19, label %if.then20, label %if.else27

if.then20:                                        ; preds = %sw.default
  %11 = load i8*, i8** %cp.addr, align 8
  %12 = load i8, i8* %11, align 1
  %conv21 = zext i8 %12 to i32
  %call = call zeroext i1 @isIdentifier1(i32 %conv21)
  br i1 %call, label %if.then22, label %if.else26

if.then22:                                        ; preds = %if.then20
  %13 = load i8*, i8** %cp.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr, i8** %cp.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then22
  %14 = load i8*, i8** %cp.addr, align 8
  %15 = load i8, i8* %14, align 1
  %conv23 = zext i8 %15 to i32
  %call24 = call zeroext i1 @isIdentifier(i32 %conv23)
  br i1 %call24, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %16 = load i8*, i8** %cp.addr, align 8
  %incdec.ptr25 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr25, i8** %cp.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i8 0, i8* %attr, align 1
  br label %SUB_DECL_SWITCH

if.else26:                                        ; preds = %if.then20
  store i1 false, i1* %retval, align 1
  br label %return

if.else27:                                        ; preds = %sw.default
  %17 = load i32, i32* %nparens, align 4
  %tobool28 = icmp ne i32 %17, 0
  br i1 %tobool28, label %if.then29, label %if.else30

if.then29:                                        ; preds = %if.else27
  br label %sw.epilog

if.else30:                                        ; preds = %if.else27
  store i1 false, i1* %retval, align 1
  br label %return

sw.epilog:                                        ; preds = %if.then29, %sw.bb10, %sw.bb9, %sw.bb8, %if.end7, %if.then
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %18 = load i8*, i8** %cp.addr, align 8
  %incdec.ptr31 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr31, i8** %cp.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %do.cond

do.cond:                                          ; preds = %for.end
  %call32 = call i8* @readLineFromInputFile()
  store i8* %call32, i8** %cp.addr, align 8
  %cmp33 = icmp ne i8* null, %call32
  br i1 %cmp33, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  store i1 false, i1* %retval, align 1
  br label %return

return:                                           ; preds = %do.end, %if.else30, %if.else26, %if.then17, %if.then13, %if.then5
  %19 = load i1, i1* %retval, align 1
  ret i1 %19
}

declare i32 @makeTagEntry(%struct.sTagEntryInfo*) #1

declare zeroext i1 @isXtagEnabled(i32) #1

declare void @vStringCopy(%struct.sVString*, %struct.sVString*) #1

declare void @vStringCat(%struct.sVString*, %struct.sVString*) #1

declare void @markTagExtraBit(%struct.sTagEntryInfo*, i32) #1

declare void @vStringDelete(%struct.sVString*) #1

declare i32 @makeSimpleTag(%struct.sVString*, i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @parseConstantsFromLine(i8* %cp, %struct.sVString* %name, %struct.sVString* %package) #0 {
entry:
  %retval = alloca i32, align 4
  %cp.addr = alloca i8*, align 8
  %name.addr = alloca %struct.sVString*, align 8
  %package.addr = alloca %struct.sVString*, align 8
  %sz = alloca i64, align 8
  store i8* %cp, i8** %cp.addr, align 8
  store %struct.sVString* %name, %struct.sVString** %name.addr, align 8
  store %struct.sVString* %package, %struct.sVString** %package.addr, align 8
  br label %while.body

while.body:                                       ; preds = %entry, %sw.epilog
  %0 = load i8*, i8** %cp.addr, align 8
  %call = call i64 @strcspn(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i64 0, i64 0))
  store i64 %call, i64* %sz, align 8
  %1 = load i8*, i8** %cp.addr, align 8
  %2 = load i64, i64* %sz, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %2
  %3 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %3 to i32
  switch i32 %conv, label %sw.epilog [
    i32 61, label %sw.bb
    i32 125, label %sw.bb4
    i32 0, label %sw.bb5
    i32 35, label %sw.bb5
  ]

sw.bb:                                            ; preds = %while.body
  %4 = load i8*, i8** %cp.addr, align 8
  %5 = load i64, i64* %sz, align 8
  %add = add i64 %5, 1
  %arrayidx1 = getelementptr inbounds i8, i8* %4, i64 %add
  %6 = load i8, i8* %arrayidx1, align 1
  %conv2 = sext i8 %6 to i32
  %cmp = icmp eq i32 62, %conv2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %7 = load i8*, i8** %cp.addr, align 8
  %8 = load i8*, i8** %cp.addr, align 8
  %9 = load i64, i64* %sz, align 8
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 %9
  %10 = load %struct.sVString*, %struct.sVString** %name.addr, align 8
  %11 = load %struct.sVString*, %struct.sVString** %package.addr, align 8
  call void @makeTagFromLeftSide(i8* %7, i8* %add.ptr, %struct.sVString* %10, %struct.sVString* %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  br label %sw.epilog

sw.bb4:                                           ; preds = %while.body
  store i32 1, i32* %retval, align 4
  br label %return

sw.bb5:                                           ; preds = %while.body, %while.body
  store i32 0, i32* %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %while.body, %if.end
  %12 = load i64, i64* %sz, align 8
  %add6 = add i64 %12, 1
  %13 = load i8*, i8** %cp.addr, align 8
  %add.ptr7 = getelementptr inbounds i8, i8* %13, i64 %add6
  store i8* %add.ptr7, i8** %cp.addr, align 8
  br label %while.body

return:                                           ; preds = %sw.bb5, %sw.bb4
  %14 = load i32, i32* %retval, align 4
  ret i32 %14
}

declare i64 @strcspn(i8*, i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @makeTagFromLeftSide(i8* %begin, i8* %end, %struct.sVString* %name, %struct.sVString* %package) #0 {
entry:
  %begin.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %name.addr = alloca %struct.sVString*, align 8
  %package.addr = alloca %struct.sVString*, align 8
  %entry1 = alloca %struct.sTagEntryInfo, align 8
  %b = alloca i8*, align 8
  %e = alloca i8*, align 8
  %vStringClear_s = alloca %struct.sVString*, align 8
  %vStringClear_s53 = alloca %struct.sVString*, align 8
  store i8* %begin, i8** %begin.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store %struct.sVString* %name, %struct.sVString** %name.addr, align 8
  store %struct.sVString* %package, %struct.sVString** %package.addr, align 8
  %0 = load i8, i8* getelementptr inbounds ([6 x %struct.sKindDefinition], [6 x %struct.sKindDefinition]* @PerlKinds, i64 0, i64 0, i32 0), align 8
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end64

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %end.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 -1
  store i8* %add.ptr, i8** %e, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i8*, i8** %e, align 8
  %3 = load i8*, i8** %begin.addr, align 8
  %cmp = icmp ugt i8* %2, %3
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %4 = load i8*, i8** %e, align 8
  %5 = load i8, i8* %4, align 1
  %conv = sext i8 %5 to i32
  %call = call i32 @isspace(i32 %conv) #3
  %tobool2 = icmp ne i32 %call, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %6 = phi i1 [ false, %for.cond ], [ %tobool2, %land.rhs ]
  br i1 %6, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i8*, i8** %e, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 -1
  store i8* %incdec.ptr, i8** %e, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %8 = load i8*, i8** %e, align 8
  %9 = load i8*, i8** %begin.addr, align 8
  %cmp3 = icmp ult i8* %8, %9
  br i1 %cmp3, label %if.then5, label %if.end6

if.then5:                                         ; preds = %for.end
  br label %if.end64

if.end6:                                          ; preds = %for.end
  %10 = load i8*, i8** %e, align 8
  store i8* %10, i8** %b, align 8
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc16, %if.end6
  %11 = load i8*, i8** %b, align 8
  %12 = load i8*, i8** %begin.addr, align 8
  %cmp8 = icmp uge i8* %11, %12
  br i1 %cmp8, label %land.rhs10, label %land.end14

land.rhs10:                                       ; preds = %for.cond7
  %13 = load i8*, i8** %b, align 8
  %14 = load i8, i8* %13, align 1
  %conv11 = sext i8 %14 to i32
  %call12 = call zeroext i1 @isIdentifier(i32 %conv11)
  br label %land.end14

land.end14:                                       ; preds = %land.rhs10, %for.cond7
  %15 = phi i1 [ false, %for.cond7 ], [ %call12, %land.rhs10 ]
  br i1 %15, label %for.body15, label %for.end18

for.body15:                                       ; preds = %land.end14
  br label %for.inc16

for.inc16:                                        ; preds = %for.body15
  %16 = load i8*, i8** %b, align 8
  %incdec.ptr17 = getelementptr inbounds i8, i8* %16, i32 -1
  store i8* %incdec.ptr17, i8** %b, align 8
  br label %for.cond7

for.end18:                                        ; preds = %land.end14
  %17 = load i8*, i8** %b, align 8
  %18 = load i8*, i8** %begin.addr, align 8
  %cmp19 = icmp ult i8* %17, %18
  br i1 %cmp19, label %if.then28, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end18
  %19 = load i8*, i8** %b, align 8
  %20 = load i8, i8* %19, align 1
  %conv21 = sext i8 %20 to i32
  %call22 = call i32 @isspace(i32 %conv21) #3
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.then28, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %lor.lhs.false
  %21 = load i8*, i8** %b, align 8
  %22 = load i8, i8* %21, align 1
  %conv25 = sext i8 %22 to i32
  %cmp26 = icmp eq i32 44, %conv25
  br i1 %cmp26, label %if.then28, label %if.else

if.then28:                                        ; preds = %lor.lhs.false24, %lor.lhs.false, %for.end18
  %23 = load i8*, i8** %b, align 8
  %incdec.ptr29 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr29, i8** %b, align 8
  br label %if.end34

if.else:                                          ; preds = %lor.lhs.false24
  %24 = load i8*, i8** %b, align 8
  %25 = load i8*, i8** %begin.addr, align 8
  %cmp30 = icmp ne i8* %24, %25
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.else
  br label %if.end64

if.end33:                                         ; preds = %if.else
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.then28
  %26 = load i8*, i8** %e, align 8
  %27 = load i8*, i8** %b, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %26 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %27 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add = add nsw i64 %sub.ptr.sub, 1
  %cmp35 = icmp sle i64 %add, 0
  br i1 %cmp35, label %if.then37, label %if.end38

if.then37:                                        ; preds = %if.end34
  br label %if.end64

if.end38:                                         ; preds = %if.end34
  br label %do.body

do.body:                                          ; preds = %if.end38
  %28 = load %struct.sVString*, %struct.sVString** %name.addr, align 8
  store %struct.sVString* %28, %struct.sVString** %vStringClear_s, align 8
  %29 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %29, i32 0, i32 0
  store i64 0, i64* %length, align 8
  %30 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %30, i32 0, i32 2
  %31 = load i8*, i8** %buffer, align 8
  %arrayidx = getelementptr inbounds i8, i8* %31, i64 0
  store i8 0, i8* %arrayidx, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  %32 = load %struct.sVString*, %struct.sVString** %name.addr, align 8
  %33 = load i8*, i8** %b, align 8
  %34 = load i8*, i8** %e, align 8
  %35 = load i8*, i8** %b, align 8
  %sub.ptr.lhs.cast39 = ptrtoint i8* %34 to i64
  %sub.ptr.rhs.cast40 = ptrtoint i8* %35 to i64
  %sub.ptr.sub41 = sub i64 %sub.ptr.lhs.cast39, %sub.ptr.rhs.cast40
  %add42 = add nsw i64 %sub.ptr.sub41, 1
  call void @vStringNCatS(%struct.sVString* %32, i8* %33, i64 %add42)
  %36 = load %struct.sVString*, %struct.sVString** %name.addr, align 8
  %buffer43 = getelementptr inbounds %struct.sVString, %struct.sVString* %36, i32 0, i32 2
  %37 = load i8*, i8** %buffer43, align 8
  call void @initTagEntry(%struct.sTagEntryInfo* %entry1, i8* %37, i32 0)
  %call44 = call i32 @makeTagEntry(%struct.sTagEntryInfo* %entry1)
  %call45 = call zeroext i1 @isXtagEnabled(i32 3)
  br i1 %call45, label %land.lhs.true, label %if.end64

land.lhs.true:                                    ; preds = %do.end
  %38 = load %struct.sVString*, %struct.sVString** %package.addr, align 8
  %tobool47 = icmp ne %struct.sVString* %38, null
  br i1 %tobool47, label %land.lhs.true48, label %if.end64

land.lhs.true48:                                  ; preds = %land.lhs.true
  %39 = load %struct.sVString*, %struct.sVString** %package.addr, align 8
  %length49 = getelementptr inbounds %struct.sVString, %struct.sVString* %39, i32 0, i32 0
  %40 = load i64, i64* %length49, align 8
  %tobool50 = icmp ne i64 %40, 0
  br i1 %tobool50, label %if.then51, label %if.end64

if.then51:                                        ; preds = %land.lhs.true48
  br label %do.body52

do.body52:                                        ; preds = %if.then51
  %41 = load %struct.sVString*, %struct.sVString** %name.addr, align 8
  store %struct.sVString* %41, %struct.sVString** %vStringClear_s53, align 8
  %42 = load %struct.sVString*, %struct.sVString** %vStringClear_s53, align 8
  %length54 = getelementptr inbounds %struct.sVString, %struct.sVString* %42, i32 0, i32 0
  store i64 0, i64* %length54, align 8
  %43 = load %struct.sVString*, %struct.sVString** %vStringClear_s53, align 8
  %buffer55 = getelementptr inbounds %struct.sVString, %struct.sVString* %43, i32 0, i32 2
  %44 = load i8*, i8** %buffer55, align 8
  %arrayidx56 = getelementptr inbounds i8, i8* %44, i64 0
  store i8 0, i8* %arrayidx56, align 1
  br label %do.end57

do.end57:                                         ; preds = %do.body52
  %45 = load %struct.sVString*, %struct.sVString** %name.addr, align 8
  %46 = load %struct.sVString*, %struct.sVString** %package.addr, align 8
  call void @vStringCopy(%struct.sVString* %45, %struct.sVString* %46)
  %47 = load %struct.sVString*, %struct.sVString** %name.addr, align 8
  %48 = load i8*, i8** %b, align 8
  %49 = load i8*, i8** %e, align 8
  %50 = load i8*, i8** %b, align 8
  %sub.ptr.lhs.cast58 = ptrtoint i8* %49 to i64
  %sub.ptr.rhs.cast59 = ptrtoint i8* %50 to i64
  %sub.ptr.sub60 = sub i64 %sub.ptr.lhs.cast58, %sub.ptr.rhs.cast59
  %add61 = add nsw i64 %sub.ptr.sub60, 1
  call void @vStringNCatS(%struct.sVString* %47, i8* %48, i64 %add61)
  %51 = load %struct.sVString*, %struct.sVString** %name.addr, align 8
  %buffer62 = getelementptr inbounds %struct.sVString, %struct.sVString* %51, i32 0, i32 2
  %52 = load i8*, i8** %buffer62, align 8
  call void @initTagEntry(%struct.sTagEntryInfo* %entry1, i8* %52, i32 0)
  call void @markTagExtraBit(%struct.sTagEntryInfo* %entry1, i32 3)
  %call63 = call i32 @makeTagEntry(%struct.sTagEntryInfo* %entry1)
  br label %if.end64

if.end64:                                         ; preds = %if.then, %if.then5, %if.then32, %if.then37, %do.end57, %land.lhs.true48, %land.lhs.true, %do.end
  ret void
}

declare void @vStringNCatS(%struct.sVString*, i8*, i64) #1

declare void @vStringResize(%struct.sVString*, i64) #1

; Function Attrs: nounwind readonly
declare i32 @isalpha(i32) #2

; Function Attrs: nounwind readonly
declare i32 @isalnum(i32) #2

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 10.0.0 (https://github.com/holzschu/clang.git 0cfc630fbdb62e96720b611a57123ef3eb13e297) (https://github.com/holzschu/llvm.git 0d8a71e39b28502c24718f7e74b5acbcfe36dfe0)"}
