; ModuleID = 'vim.c'
source_filename = "vim.c"
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

@.str = private unnamed_addr constant [4 x i8] c"Vim\00", align 1
@VimKinds = internal global [6 x %struct.sKindDefinition] [%struct.sKindDefinition { i8 1, i8 97, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 99, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 102, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 109, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 118, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 110, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }], align 8
@extensions = internal constant [3 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i8* null], align 8
@patterns = internal constant [5 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i32 0, i32 0), i8* null], align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"augroup\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"autocommand groups\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"command\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"user-defined commands\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"function\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"function definitions\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"map\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"maps\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"variable\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"variable definitions\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"vimball filename\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"vim\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"vba\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"vimrc\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"[._]vimrc\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"gvimrc\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"[._]gvimrc\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"UseVimball\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"let\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"nmap\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"vmap\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"xmap\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"smap\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"omap\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"imap\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"lmap\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"cmap\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"noremap\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"nnoremap\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"vnoremap\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"xnoremap\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"snoremap\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"onoremap\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"inoremap\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"lnoremap\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"cnoremap\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"<Leader>\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"<buffer>\00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"<nowait>\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"<silent>\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"<script>\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"<unique>\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"<expr>\00", align 1
@.str.45 = private unnamed_addr constant [10 x i8] c"<special>\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"endfunction\00", align 1
@.str.47 = private unnamed_addr constant [6 x i8] c"<SID>\00", align 1
@.str.48 = private unnamed_addr constant [4 x i8] c"end\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sParserDefinition* @VimParser() #0 {
entry:
  %def = alloca %struct.sParserDefinition*, align 8
  %call = call %struct.sParserDefinition* @parserNew(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store %struct.sParserDefinition* %call, %struct.sParserDefinition** %def, align 8
  %0 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %0, i32 0, i32 1
  store %struct.sKindDefinition* getelementptr inbounds ([6 x %struct.sKindDefinition], [6 x %struct.sKindDefinition]* @VimKinds, i64 0, i64 0), %struct.sKindDefinition** %kindTable, align 8
  %1 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %1, i32 0, i32 2
  store i32 6, i32* %kindCount, align 8
  %2 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %extensions = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %2, i32 0, i32 3
  store i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @extensions, i64 0, i64 0), i8*** %extensions, align 8
  %3 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %patterns = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %3, i32 0, i32 4
  store i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @patterns, i64 0, i64 0), i8*** %patterns, align 8
  %4 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %parser = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %4, i32 0, i32 8
  store void ()* @findVimTags, void ()** %parser, align 8
  %5 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %useCork = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %5, i32 0, i32 12
  store i8 1, i8* %useCork, align 4
  %6 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  ret %struct.sParserDefinition* %6
}

declare %struct.sParserDefinition* @parserNew(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @findVimTags() #0 {
entry:
  %line = alloca i8*, align 8
  %call = call i8* @readVimLine()
  store i8* %call, i8** %line, align 8
  %0 = load i8*, i8** %line, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end4

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %line, align 8
  %call1 = call i32 @strncmp(i8* %1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0), i64 10)
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %2 = load i8*, i8** %line, align 8
  call void @parseVimBallFile(i8* %2)
  br label %if.end4

if.else:                                          ; preds = %if.end
  %3 = load i8*, i8** %line, align 8
  call void @parseVimFile(i8* %3)
  br label %if.end4

if.end4:                                          ; preds = %if.then, %if.else, %if.then3
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @readVimLine() #0 {
entry:
  %line = alloca i8*, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.then, %entry
  %call = call i8* @readLineFromInputFile()
  store i8* %call, i8** %line, align 8
  %cmp = icmp ne i8* %call, null
  br i1 %cmp, label %while.body, label %while.end7

while.body:                                       ; preds = %while.cond
  br label %while.cond1

while.cond1:                                      ; preds = %while.body3, %while.body
  %0 = load i8*, i8** %line, align 8
  %1 = load i8, i8* %0, align 1
  %conv = zext i8 %1 to i32
  %call2 = call i32 @isspace(i32 %conv) #3
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %while.body3, label %while.end

while.body3:                                      ; preds = %while.cond1
  %2 = load i8*, i8** %line, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %line, align 8
  br label %while.cond1

while.end:                                        ; preds = %while.cond1
  %3 = load i8*, i8** %line, align 8
  %4 = load i8, i8* %3, align 1
  %conv4 = zext i8 %4 to i32
  %cmp5 = icmp eq i32 %conv4, 34
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  br label %while.cond

if.end:                                           ; preds = %while.end
  br label %while.end7

while.end7:                                       ; preds = %if.end, %while.cond
  %5 = load i8*, i8** %line, align 8
  ret i8* %5
}

declare i32 @strncmp(i8*, i8*, i64) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseVimBallFile(i8* %line) #0 {
entry:
  %line.addr = alloca i8*, align 8
  %fname = alloca %struct.sVString*, align 8
  %cp = alloca i8*, align 8
  %file_line_count = alloca i32, align 4
  %i = alloca i32, align 4
  %vStringClear_s = alloca %struct.sVString*, align 8
  store i8* %line, i8** %line.addr, align 8
  %call = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call, %struct.sVString** %fname, align 8
  %call1 = call i8* @readVimLine()
  store i8* %call1, i8** %line.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %0 = load i8*, i8** %line.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call2 = call i8* @readVimLine()
  store i8* %call2, i8** %line.addr, align 8
  %1 = load i8*, i8** %line.addr, align 8
  %cmp3 = icmp eq i8* %1, null
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  br label %cleanUp

if.else:                                          ; preds = %while.body
  %2 = load i8*, i8** %line.addr, align 8
  store i8* %2, i8** %cp, align 8
  br label %do.body

do.body:                                          ; preds = %lor.end, %if.else
  %3 = load %struct.sVString*, %struct.sVString** %fname, align 8
  %4 = load i8*, i8** %cp, align 8
  %5 = load i8, i8* %4, align 1
  %conv = zext i8 %5 to i32
  call void @vStringPut(%struct.sVString* %3, i32 %conv)
  %6 = load i8*, i8** %cp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %cp, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %7 = load i8*, i8** %cp, align 8
  %8 = load i8, i8* %7, align 1
  %conv4 = zext i8 %8 to i32
  %call5 = call i32 @isalnum(i32 %conv4) #3
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.cond
  %9 = load i8*, i8** %cp, align 8
  %10 = load i8, i8* %9, align 1
  %conv6 = zext i8 %10 to i32
  %cmp7 = icmp eq i32 %conv6, 46
  br i1 %cmp7, label %lor.end, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %11 = load i8*, i8** %cp, align 8
  %12 = load i8, i8* %11, align 1
  %conv10 = zext i8 %12 to i32
  %cmp11 = icmp eq i32 %conv10, 47
  br i1 %cmp11, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false9
  %13 = load i8*, i8** %cp, align 8
  %14 = load i8, i8* %13, align 1
  %conv13 = zext i8 %14 to i32
  %cmp14 = icmp eq i32 %conv13, 92
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false9, %lor.lhs.false, %do.cond
  %15 = phi i1 [ true, %lor.lhs.false9 ], [ true, %lor.lhs.false ], [ true, %do.cond ], [ %cmp14, %lor.rhs ]
  br i1 %15, label %do.body, label %do.end

do.end:                                           ; preds = %lor.end
  %16 = load %struct.sVString*, %struct.sVString** %fname, align 8
  %call16 = call i32 @makeSimpleTag(%struct.sVString* %16, i32 5)
  br label %do.body17

do.body17:                                        ; preds = %do.end
  %17 = load %struct.sVString*, %struct.sVString** %fname, align 8
  store %struct.sVString* %17, %struct.sVString** %vStringClear_s, align 8
  %18 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %18, i32 0, i32 0
  store i64 0, i64* %length, align 8
  %19 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %19, i32 0, i32 2
  %20 = load i8*, i8** %buffer, align 8
  %arrayidx = getelementptr inbounds i8, i8* %20, i64 0
  store i8 0, i8* %arrayidx, align 1
  br label %do.end19

do.end19:                                         ; preds = %do.body17
  br label %if.end

if.end:                                           ; preds = %do.end19
  store i32 0, i32* %file_line_count, align 4
  %call20 = call i8* @readVimLine()
  store i8* %call20, i8** %line.addr, align 8
  %21 = load i8*, i8** %line.addr, align 8
  %cmp21 = icmp eq i8* %21, null
  br i1 %cmp21, label %if.then23, label %if.else24

if.then23:                                        ; preds = %if.end
  br label %cleanUp

if.else24:                                        ; preds = %if.end
  %22 = load i8*, i8** %line.addr, align 8
  %call25 = call i32 @atoi(i8* %22)
  store i32 %call25, i32* %file_line_count, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.else24
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end26
  %23 = load i32, i32* %i, align 4
  %24 = load i32, i32* %file_line_count, align 4
  %cmp27 = icmp slt i32 %23, %24
  br i1 %cmp27, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call29 = call i8* @readVimballLine()
  store i8* %call29, i8** %line.addr, align 8
  %25 = load i8*, i8** %line.addr, align 8
  %cmp30 = icmp eq i8* %25, null
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %for.body
  br label %cleanUp

if.end33:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end33
  %26 = load i32, i32* %i, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %cleanUp

cleanUp:                                          ; preds = %while.end, %if.then32, %if.then23, %if.then
  %27 = load %struct.sVString*, %struct.sVString** %fname, align 8
  call void @vStringDelete(%struct.sVString* %27)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseVimFile(i8* %line) #0 {
entry:
  %line.addr = alloca i8*, align 8
  %readNextLine = alloca i8, align 1
  store i8* %line, i8** %line.addr, align 8
  store i8 1, i8* %readNextLine, align 1
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i8*, i8** %line.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i8*, i8** %line.addr, align 8
  %call = call zeroext i1 @parseVimLine(i8* %1, i32 0)
  %frombool = zext i1 %call to i8
  store i8 %frombool, i8* %readNextLine, align 1
  %2 = load i8, i8* %readNextLine, align 1
  %tobool = trunc i8 %2 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %call1 = call i8* @readVimLine()
  store i8* %call1, i8** %line.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

declare i8* @readLineFromInputFile() #1

; Function Attrs: nounwind readonly
declare i32 @isspace(i32) #2

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

; Function Attrs: nounwind readonly
declare i32 @isalnum(i32) #2

declare i32 @makeSimpleTag(%struct.sVString*, i32) #1

declare i32 @atoi(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @readVimballLine() #0 {
entry:
  %line = alloca i8*, align 8
  br label %while.cond

while.cond:                                       ; preds = %entry
  %call = call i8* @readLineFromInputFile()
  store i8* %call, i8** %line, align 8
  %cmp = icmp ne i8* %call, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.end

while.end:                                        ; preds = %while.body, %while.cond
  %0 = load i8*, i8** %line, align 8
  ret i8* %0
}

declare void @vStringDelete(%struct.sVString*) #1

declare void @vStringResize(%struct.sVString*, i64) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @parseVimLine(i8* %line, i32 %infunction) #0 {
entry:
  %line.addr = alloca i8*, align 8
  %infunction.addr = alloca i32, align 4
  %readNextLine = alloca i8, align 1
  store i8* %line, i8** %line.addr, align 8
  store i32 %infunction, i32* %infunction.addr, align 4
  store i8 1, i8* %readNextLine, align 1
  %0 = load i8*, i8** %line.addr, align 8
  %call = call zeroext i1 @wordMatchLen(i8* %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i64 3)
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8
  %call1 = call zeroext i1 @parseCommand(i8* %1)
  %frombool = zext i1 %call1 to i8
  store i8 %frombool, i8* %readNextLine, align 1
  br label %if.end21

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** %line.addr, align 8
  %call2 = call zeroext i1 @isMap(i8* %2)
  br i1 %call2, label %if.then3, label %if.else6

if.then3:                                         ; preds = %if.else
  %3 = load i8*, i8** %line.addr, align 8
  %call4 = call i8* @skipWord(i8* %3)
  %call5 = call zeroext i1 @parseMap(i8* %call4)
  br label %if.end20

if.else6:                                         ; preds = %if.else
  %4 = load i8*, i8** %line.addr, align 8
  %call7 = call zeroext i1 @wordMatchLen(i8* %4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i64 2)
  br i1 %call7, label %if.then8, label %if.else10

if.then8:                                         ; preds = %if.else6
  %5 = load i8*, i8** %line.addr, align 8
  %call9 = call i8* @skipWord(i8* %5)
  call void @parseFunction(i8* %call9)
  br label %if.end19

if.else10:                                        ; preds = %if.else6
  %6 = load i8*, i8** %line.addr, align 8
  %call11 = call zeroext i1 @wordMatchLen(i8* %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 3)
  br i1 %call11, label %if.then12, label %if.else14

if.then12:                                        ; preds = %if.else10
  %7 = load i8*, i8** %line.addr, align 8
  %call13 = call i8* @skipWord(i8* %7)
  call void @parseAutogroup(i8* %call13)
  br label %if.end18

if.else14:                                        ; preds = %if.else10
  %8 = load i8*, i8** %line.addr, align 8
  %call15 = call zeroext i1 @wordMatchLen(i8* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0), i64 3)
  br i1 %call15, label %if.then16, label %if.end

if.then16:                                        ; preds = %if.else14
  %9 = load i8*, i8** %line.addr, align 8
  %call17 = call i8* @skipWord(i8* %9)
  %10 = load i32, i32* %infunction.addr, align 4
  call void @parseLet(i8* %call17, i32 %10)
  br label %if.end

if.end:                                           ; preds = %if.then16, %if.else14
  br label %if.end18

if.end18:                                         ; preds = %if.end, %if.then12
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.then8
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.then3
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %if.then
  %11 = load i8, i8* %readNextLine, align 1
  %tobool = trunc i8 %11 to i1
  ret i1 %tobool
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @wordMatchLen(i8* %p, i8* %word, i64 %min_len) #0 {
entry:
  %retval = alloca i1, align 1
  %p.addr = alloca i8*, align 8
  %word.addr = alloca i8*, align 8
  %min_len.addr = alloca i64, align 8
  %w = alloca i8*, align 8
  %n = alloca i64, align 8
  store i8* %p, i8** %p.addr, align 8
  store i8* %word, i8** %word.addr, align 8
  store i64 %min_len, i64* %min_len.addr, align 8
  %0 = load i8*, i8** %word.addr, align 8
  store i8* %0, i8** %w, align 8
  store i64 0, i64* %n, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i8*, i8** %p.addr, align 8
  %2 = load i8, i8* %1, align 1
  %conv = zext i8 %2 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %3 = load i8*, i8** %p.addr, align 8
  %4 = load i8, i8* %3, align 1
  %conv1 = zext i8 %4 to i32
  %5 = load i8*, i8** %w, align 8
  %6 = load i8, i8* %5, align 1
  %conv2 = zext i8 %6 to i32
  %cmp = icmp eq i32 %conv1, %conv2
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %7 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ]
  br i1 %7, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %8 = load i8*, i8** %p.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr, i8** %p.addr, align 8
  %9 = load i8*, i8** %w, align 8
  %incdec.ptr4 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr4, i8** %w, align 8
  %10 = load i64, i64* %n, align 8
  %inc = add i64 %10, 1
  store i64 %inc, i64* %n, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %11 = load i8*, i8** %p.addr, align 8
  %12 = load i8, i8* %11, align 1
  %call = call zeroext i1 @isWordChar(i8 zeroext %12)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %while.end
  %13 = load i64, i64* %n, align 8
  %14 = load i64, i64* %min_len.addr, align 8
  %cmp5 = icmp uge i64 %13, %14
  store i1 %cmp5, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end, %if.then
  %15 = load i1, i1* %retval, align 1
  ret i1 %15
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @parseCommand(i8* %line) #0 {
entry:
  %line.addr = alloca i8*, align 8
  %name = alloca %struct.sVString*, align 8
  %cmdProcessed = alloca i8, align 1
  %cp = alloca i8*, align 8
  %vStringClear_s = alloca %struct.sVString*, align 8
  store i8* %line, i8** %line.addr, align 8
  %call = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call, %struct.sVString** %name, align 8
  store i8 1, i8* %cmdProcessed, align 1
  %0 = load i8*, i8** %line.addr, align 8
  store i8* %0, i8** %cp, align 8
  %1 = load i8*, i8** %cp, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load i8*, i8** %cp, align 8
  %3 = load i8, i8* %2, align 1
  %conv = zext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 92
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %4 = load i8*, i8** %cp, align 8
  %5 = load i8, i8* %4, align 1
  %conv2 = zext i8 %5 to i32
  %cmp3 = icmp eq i32 %conv2, 92
  br i1 %cmp3, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  %6 = load i8*, i8** %cp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %cp, align 8
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %7 = load i8*, i8** %cp, align 8
  %8 = load i8, i8* %7, align 1
  %conv6 = zext i8 %8 to i32
  %tobool7 = icmp ne i32 %conv6, 0
  br i1 %tobool7, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %9 = load i8*, i8** %cp, align 8
  %10 = load i8, i8* %9, align 1
  %conv8 = zext i8 %10 to i32
  %call9 = call i32 @isspace(i32 %conv8) #3
  %tobool10 = icmp ne i32 %call9, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %11 = phi i1 [ false, %while.cond ], [ %tobool10, %land.rhs ]
  br i1 %11, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %12 = load i8*, i8** %cp, align 8
  %incdec.ptr11 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr11, i8** %cp, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %if.end42

if.else:                                          ; preds = %land.lhs.true, %entry
  %13 = load i8*, i8** %line.addr, align 8
  %tobool12 = icmp ne i8* %13, null
  br i1 %tobool12, label %land.lhs.true13, label %if.else40

land.lhs.true13:                                  ; preds = %if.else
  %14 = load i8*, i8** %cp, align 8
  %call14 = call zeroext i1 @wordMatchLen(i8* %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i64 3)
  br i1 %call14, label %if.then16, label %if.else40

if.then16:                                        ; preds = %land.lhs.true13
  %15 = load i8*, i8** %cp, align 8
  %call17 = call i8* @skipWord(i8* %15)
  store i8* %call17, i8** %cp, align 8
  %16 = load i8*, i8** %cp, align 8
  %17 = load i8, i8* %16, align 1
  %conv18 = zext i8 %17 to i32
  %cmp19 = icmp eq i32 %conv18, 33
  br i1 %cmp19, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.then16
  %18 = load i8*, i8** %cp, align 8
  %incdec.ptr22 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr22, i8** %cp, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.then16
  %19 = load i8*, i8** %cp, align 8
  %20 = load i8, i8* %19, align 1
  %conv24 = zext i8 %20 to i32
  %cmp25 = icmp ne i32 %conv24, 32
  br i1 %cmp25, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end23
  store i8 1, i8* %cmdProcessed, align 1
  br label %cleanUp

if.end28:                                         ; preds = %if.end23
  br label %while.cond29

while.cond29:                                     ; preds = %while.body37, %if.end28
  %21 = load i8*, i8** %cp, align 8
  %22 = load i8, i8* %21, align 1
  %conv30 = zext i8 %22 to i32
  %tobool31 = icmp ne i32 %conv30, 0
  br i1 %tobool31, label %land.rhs32, label %land.end36

land.rhs32:                                       ; preds = %while.cond29
  %23 = load i8*, i8** %cp, align 8
  %24 = load i8, i8* %23, align 1
  %conv33 = zext i8 %24 to i32
  %call34 = call i32 @isspace(i32 %conv33) #3
  %tobool35 = icmp ne i32 %call34, 0
  br label %land.end36

land.end36:                                       ; preds = %land.rhs32, %while.cond29
  %25 = phi i1 [ false, %while.cond29 ], [ %tobool35, %land.rhs32 ]
  br i1 %25, label %while.body37, label %while.end39

while.body37:                                     ; preds = %land.end36
  %26 = load i8*, i8** %cp, align 8
  %incdec.ptr38 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr38, i8** %cp, align 8
  br label %while.cond29

while.end39:                                      ; preds = %land.end36
  br label %if.end41

if.else40:                                        ; preds = %land.lhs.true13, %if.else
  store i8 0, i8* %cmdProcessed, align 1
  br label %cleanUp

if.end41:                                         ; preds = %while.end39
  br label %if.end42

if.end42:                                         ; preds = %if.end41, %while.end
  br label %do.body

do.body:                                          ; preds = %land.end79, %if.end42
  %27 = load i8*, i8** %cp, align 8
  %28 = load i8, i8* %27, align 1
  %conv43 = zext i8 %28 to i32
  %call44 = call i32 @isspace(i32 %conv43) #3
  %tobool45 = icmp ne i32 %call44, 0
  br i1 %tobool45, label %if.then46, label %if.else48

if.then46:                                        ; preds = %do.body
  %29 = load i8*, i8** %cp, align 8
  %incdec.ptr47 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr47, i8** %cp, align 8
  br label %if.end71

if.else48:                                        ; preds = %do.body
  %30 = load i8*, i8** %cp, align 8
  %31 = load i8, i8* %30, align 1
  %conv49 = zext i8 %31 to i32
  %cmp50 = icmp eq i32 %conv49, 45
  br i1 %cmp50, label %if.then52, label %if.else64

if.then52:                                        ; preds = %if.else48
  br label %while.cond53

while.cond53:                                     ; preds = %while.body61, %if.then52
  %32 = load i8*, i8** %cp, align 8
  %33 = load i8, i8* %32, align 1
  %conv54 = zext i8 %33 to i32
  %tobool55 = icmp ne i32 %conv54, 0
  br i1 %tobool55, label %land.rhs56, label %land.end60

land.rhs56:                                       ; preds = %while.cond53
  %34 = load i8*, i8** %cp, align 8
  %35 = load i8, i8* %34, align 1
  %conv57 = zext i8 %35 to i32
  %call58 = call i32 @isspace(i32 %conv57) #3
  %tobool59 = icmp ne i32 %call58, 0
  %lnot = xor i1 %tobool59, true
  br label %land.end60

land.end60:                                       ; preds = %land.rhs56, %while.cond53
  %36 = phi i1 [ false, %while.cond53 ], [ %lnot, %land.rhs56 ]
  br i1 %36, label %while.body61, label %while.end63

while.body61:                                     ; preds = %land.end60
  %37 = load i8*, i8** %cp, align 8
  %incdec.ptr62 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %incdec.ptr62, i8** %cp, align 8
  br label %while.cond53

while.end63:                                      ; preds = %land.end60
  br label %if.end70

if.else64:                                        ; preds = %if.else48
  %38 = load i8*, i8** %cp, align 8
  %39 = load i8, i8* %38, align 1
  %conv65 = zext i8 %39 to i32
  %call66 = call i32 @isalnum(i32 %conv65) #3
  %tobool67 = icmp ne i32 %call66, 0
  br i1 %tobool67, label %if.end69, label %if.then68

if.then68:                                        ; preds = %if.else64
  store i8 1, i8* %cmdProcessed, align 1
  br label %cleanUp

if.end69:                                         ; preds = %if.else64
  br label %if.end70

if.end70:                                         ; preds = %if.end69, %while.end63
  br label %if.end71

if.end71:                                         ; preds = %if.end70, %if.then46
  br label %do.cond

do.cond:                                          ; preds = %if.end71
  %40 = load i8*, i8** %cp, align 8
  %41 = load i8, i8* %40, align 1
  %conv72 = zext i8 %41 to i32
  %tobool73 = icmp ne i32 %conv72, 0
  br i1 %tobool73, label %land.rhs74, label %land.end79

land.rhs74:                                       ; preds = %do.cond
  %42 = load i8*, i8** %cp, align 8
  %43 = load i8, i8* %42, align 1
  %conv75 = zext i8 %43 to i32
  %call76 = call i32 @isalnum(i32 %conv75) #3
  %tobool77 = icmp ne i32 %call76, 0
  %lnot78 = xor i1 %tobool77, true
  br label %land.end79

land.end79:                                       ; preds = %land.rhs74, %do.cond
  %44 = phi i1 [ false, %do.cond ], [ %lnot78, %land.rhs74 ]
  br i1 %44, label %do.body, label %do.end

do.end:                                           ; preds = %land.end79
  %45 = load i8*, i8** %cp, align 8
  %46 = load i8, i8* %45, align 1
  %tobool80 = icmp ne i8 %46, 0
  br i1 %tobool80, label %if.end89, label %if.then81

if.then81:                                        ; preds = %do.end
  %call82 = call i8* @readVimLine()
  store i8* %call82, i8** %line.addr, align 8
  %cmp83 = icmp ne i8* %call82, null
  br i1 %cmp83, label %if.then85, label %if.else87

if.then85:                                        ; preds = %if.then81
  %47 = load i8*, i8** %line.addr, align 8
  %call86 = call zeroext i1 @parseCommand(i8* %47)
  %frombool = zext i1 %call86 to i8
  store i8 %frombool, i8* %cmdProcessed, align 1
  br label %if.end88

if.else87:                                        ; preds = %if.then81
  store i8 0, i8* %cmdProcessed, align 1
  br label %if.end88

if.end88:                                         ; preds = %if.else87, %if.then85
  br label %cleanUp

if.end89:                                         ; preds = %do.end
  br label %do.body90

do.body90:                                        ; preds = %lor.end, %if.end89
  %48 = load %struct.sVString*, %struct.sVString** %name, align 8
  %49 = load i8*, i8** %cp, align 8
  %50 = load i8, i8* %49, align 1
  %conv91 = zext i8 %50 to i32
  call void @vStringPut(%struct.sVString* %48, i32 %conv91)
  %51 = load i8*, i8** %cp, align 8
  %incdec.ptr92 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %incdec.ptr92, i8** %cp, align 8
  br label %do.cond93

do.cond93:                                        ; preds = %do.body90
  %52 = load i8*, i8** %cp, align 8
  %53 = load i8, i8* %52, align 1
  %conv94 = zext i8 %53 to i32
  %call95 = call i32 @isalnum(i32 %conv94) #3
  %tobool96 = icmp ne i32 %call95, 0
  br i1 %tobool96, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %do.cond93
  %54 = load i8*, i8** %cp, align 8
  %55 = load i8, i8* %54, align 1
  %conv97 = zext i8 %55 to i32
  %cmp98 = icmp eq i32 %conv97, 95
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %do.cond93
  %56 = phi i1 [ true, %do.cond93 ], [ %cmp98, %lor.rhs ]
  br i1 %56, label %do.body90, label %do.end100

do.end100:                                        ; preds = %lor.end
  %57 = load %struct.sVString*, %struct.sVString** %name, align 8
  %call101 = call i32 @makeSimpleTag(%struct.sVString* %57, i32 1)
  br label %do.body102

do.body102:                                       ; preds = %do.end100
  %58 = load %struct.sVString*, %struct.sVString** %name, align 8
  store %struct.sVString* %58, %struct.sVString** %vStringClear_s, align 8
  %59 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %59, i32 0, i32 0
  store i64 0, i64* %length, align 8
  %60 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %60, i32 0, i32 2
  %61 = load i8*, i8** %buffer, align 8
  %arrayidx = getelementptr inbounds i8, i8* %61, i64 0
  store i8 0, i8* %arrayidx, align 1
  br label %do.end104

do.end104:                                        ; preds = %do.body102
  br label %cleanUp

cleanUp:                                          ; preds = %do.end104, %if.end88, %if.then68, %if.else40, %if.then27
  %62 = load %struct.sVString*, %struct.sVString** %name, align 8
  call void @vStringDelete(%struct.sVString* %62)
  %63 = load i8, i8* %cmdProcessed, align 1
  %tobool105 = trunc i8 %63 to i1
  ret i1 %tobool105
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @isMap(i8* %line) #0 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  %0 = load i8*, i8** %line.addr, align 8
  %call = call zeroext i1 @wordMatchLen(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i64 3)
  br i1 %call, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8
  %call1 = call zeroext i1 @wordMatchLen(i8* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), i64 2)
  br i1 %call1, label %lor.end, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load i8*, i8** %line.addr, align 8
  %call3 = call zeroext i1 @wordMatchLen(i8* %2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0), i64 2)
  br i1 %call3, label %lor.end, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %3 = load i8*, i8** %line.addr, align 8
  %call5 = call zeroext i1 @wordMatchLen(i8* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), i64 2)
  br i1 %call5, label %lor.end, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false4
  %4 = load i8*, i8** %line.addr, align 8
  %call7 = call zeroext i1 @wordMatchLen(i8* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i64 4)
  br i1 %call7, label %lor.end, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %lor.lhs.false6
  %5 = load i8*, i8** %line.addr, align 8
  %call9 = call zeroext i1 @wordMatchLen(i8* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0), i64 2)
  br i1 %call9, label %lor.end, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false8
  %6 = load i8*, i8** %line.addr, align 8
  %call11 = call zeroext i1 @wordMatchLen(i8* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0), i64 2)
  br i1 %call11, label %lor.end, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false10
  %7 = load i8*, i8** %line.addr, align 8
  %call13 = call zeroext i1 @wordMatchLen(i8* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), i64 2)
  br i1 %call13, label %lor.end, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false12
  %8 = load i8*, i8** %line.addr, align 8
  %call15 = call zeroext i1 @wordMatchLen(i8* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0), i64 2)
  br i1 %call15, label %lor.end, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %lor.lhs.false14
  %9 = load i8*, i8** %line.addr, align 8
  %call17 = call zeroext i1 @wordMatchLen(i8* %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i64 0, i64 0), i64 2)
  br i1 %call17, label %lor.end, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false16
  %10 = load i8*, i8** %line.addr, align 8
  %call19 = call zeroext i1 @wordMatchLen(i8* %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i64 0, i64 0), i64 2)
  br i1 %call19, label %lor.end, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %lor.lhs.false18
  %11 = load i8*, i8** %line.addr, align 8
  %call21 = call zeroext i1 @wordMatchLen(i8* %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i64 0, i64 0), i64 2)
  br i1 %call21, label %lor.end, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %lor.lhs.false20
  %12 = load i8*, i8** %line.addr, align 8
  %call23 = call zeroext i1 @wordMatchLen(i8* %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i64 0, i64 0), i64 2)
  br i1 %call23, label %lor.end, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %lor.lhs.false22
  %13 = load i8*, i8** %line.addr, align 8
  %call25 = call zeroext i1 @wordMatchLen(i8* %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i64 0, i64 0), i64 4)
  br i1 %call25, label %lor.end, label %lor.lhs.false26

lor.lhs.false26:                                  ; preds = %lor.lhs.false24
  %14 = load i8*, i8** %line.addr, align 8
  %call27 = call zeroext i1 @wordMatchLen(i8* %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i64 0, i64 0), i64 3)
  br i1 %call27, label %lor.end, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %lor.lhs.false26
  %15 = load i8*, i8** %line.addr, align 8
  %call29 = call zeroext i1 @wordMatchLen(i8* %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i64 0, i64 0), i64 3)
  br i1 %call29, label %lor.end, label %lor.lhs.false30

lor.lhs.false30:                                  ; preds = %lor.lhs.false28
  %16 = load i8*, i8** %line.addr, align 8
  %call31 = call zeroext i1 @wordMatchLen(i8* %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i64 0, i64 0), i64 2)
  br i1 %call31, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false30
  %17 = load i8*, i8** %line.addr, align 8
  %call32 = call zeroext i1 @wordMatchLen(i8* %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.37, i64 0, i64 0), i64 3)
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false30, %lor.lhs.false28, %lor.lhs.false26, %lor.lhs.false24, %lor.lhs.false22, %lor.lhs.false20, %lor.lhs.false18, %lor.lhs.false16, %lor.lhs.false14, %lor.lhs.false12, %lor.lhs.false10, %lor.lhs.false8, %lor.lhs.false6, %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %entry
  %18 = phi i1 [ true, %lor.lhs.false30 ], [ true, %lor.lhs.false28 ], [ true, %lor.lhs.false26 ], [ true, %lor.lhs.false24 ], [ true, %lor.lhs.false22 ], [ true, %lor.lhs.false20 ], [ true, %lor.lhs.false18 ], [ true, %lor.lhs.false16 ], [ true, %lor.lhs.false14 ], [ true, %lor.lhs.false12 ], [ true, %lor.lhs.false10 ], [ true, %lor.lhs.false8 ], [ true, %lor.lhs.false6 ], [ true, %lor.lhs.false4 ], [ true, %lor.lhs.false2 ], [ true, %lor.lhs.false ], [ true, %entry ], [ %call32, %lor.rhs ]
  ret i1 %18
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @parseMap(i8* %line) #0 {
entry:
  %line.addr = alloca i8*, align 8
  %name = alloca %struct.sVString*, align 8
  %cp = alloca i8*, align 8
  %vStringClear_s = alloca %struct.sVString*, align 8
  store i8* %line, i8** %line.addr, align 8
  %call = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call, %struct.sVString** %name, align 8
  %0 = load i8*, i8** %line.addr, align 8
  store i8* %0, i8** %cp, align 8
  %1 = load i8*, i8** %cp, align 8
  %2 = load i8, i8* %1, align 1
  %conv = zext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 33
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %cp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr, i8** %cp, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body
  %4 = load i8*, i8** %cp, align 8
  %5 = load i8, i8* %4, align 1
  %conv2 = zext i8 %5 to i32
  %tobool = icmp ne i32 %conv2, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %6 = load i8*, i8** %cp, align 8
  %7 = load i8, i8* %6, align 1
  %conv3 = zext i8 %7 to i32
  %call4 = call i32 @isspace(i32 %conv3) #3
  %tobool5 = icmp ne i32 %call4, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %8 = phi i1 [ false, %while.cond ], [ %tobool5, %land.rhs ]
  br i1 %8, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %9 = load i8*, i8** %cp, align 8
  %incdec.ptr6 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr6, i8** %cp, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %10 = load i8*, i8** %cp, align 8
  %call7 = call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.38, i64 0, i64 0), i64 8)
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %while.end
  br label %do.end

if.end11:                                         ; preds = %while.end
  %11 = load i8*, i8** %cp, align 8
  %call12 = call i32 @strncmp(i8* %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.39, i64 0, i64 0), i64 8)
  %cmp13 = icmp eq i32 %call12, 0
  br i1 %cmp13, label %if.then30, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end11
  %12 = load i8*, i8** %cp, align 8
  %call15 = call i32 @strncmp(i8* %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i64 0, i64 0), i64 8)
  %cmp16 = icmp eq i32 %call15, 0
  br i1 %cmp16, label %if.then30, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false
  %13 = load i8*, i8** %cp, align 8
  %call19 = call i32 @strncmp(i8* %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i64 0, i64 0), i64 8)
  %cmp20 = icmp eq i32 %call19, 0
  br i1 %cmp20, label %if.then30, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %lor.lhs.false18
  %14 = load i8*, i8** %cp, align 8
  %call23 = call i32 @strncmp(i8* %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.42, i64 0, i64 0), i64 8)
  %cmp24 = icmp eq i32 %call23, 0
  br i1 %cmp24, label %if.then30, label %lor.lhs.false26

lor.lhs.false26:                                  ; preds = %lor.lhs.false22
  %15 = load i8*, i8** %cp, align 8
  %call27 = call i32 @strncmp(i8* %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.43, i64 0, i64 0), i64 8)
  %cmp28 = icmp eq i32 %call27, 0
  br i1 %cmp28, label %if.then30, label %if.end31

if.then30:                                        ; preds = %lor.lhs.false26, %lor.lhs.false22, %lor.lhs.false18, %lor.lhs.false, %if.end11
  %16 = load i8*, i8** %cp, align 8
  %add.ptr = getelementptr inbounds i8, i8* %16, i64 8
  store i8* %add.ptr, i8** %cp, align 8
  br label %do.cond

if.end31:                                         ; preds = %lor.lhs.false26
  %17 = load i8*, i8** %cp, align 8
  %call32 = call i32 @strncmp(i8* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i64 0, i64 0), i64 6)
  %cmp33 = icmp eq i32 %call32, 0
  br i1 %cmp33, label %if.then35, label %if.end37

if.then35:                                        ; preds = %if.end31
  %18 = load i8*, i8** %cp, align 8
  %add.ptr36 = getelementptr inbounds i8, i8* %18, i64 6
  store i8* %add.ptr36, i8** %cp, align 8
  br label %do.cond

if.end37:                                         ; preds = %if.end31
  %19 = load i8*, i8** %cp, align 8
  %call38 = call i32 @strncmp(i8* %19, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.45, i64 0, i64 0), i64 9)
  %cmp39 = icmp eq i32 %call38, 0
  br i1 %cmp39, label %if.then41, label %if.end43

if.then41:                                        ; preds = %if.end37
  %20 = load i8*, i8** %cp, align 8
  %add.ptr42 = getelementptr inbounds i8, i8* %20, i64 9
  store i8* %add.ptr42, i8** %cp, align 8
  br label %do.cond

if.end43:                                         ; preds = %if.end37
  br label %do.end

do.cond:                                          ; preds = %if.then41, %if.then35, %if.then30
  %21 = load i8*, i8** %cp, align 8
  %22 = load i8, i8* %21, align 1
  %tobool44 = icmp ne i8 %22, 0
  br i1 %tobool44, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.end43, %if.then10
  br label %do.body45

do.body45:                                        ; preds = %land.end55, %do.end
  %23 = load %struct.sVString*, %struct.sVString** %name, align 8
  %24 = load i8*, i8** %cp, align 8
  %25 = load i8, i8* %24, align 1
  %conv46 = zext i8 %25 to i32
  call void @vStringPut(%struct.sVString* %23, i32 %conv46)
  %26 = load i8*, i8** %cp, align 8
  %incdec.ptr47 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr47, i8** %cp, align 8
  br label %do.cond48

do.cond48:                                        ; preds = %do.body45
  %27 = load i8*, i8** %cp, align 8
  %28 = load i8, i8* %27, align 1
  %conv49 = zext i8 %28 to i32
  %tobool50 = icmp ne i32 %conv49, 0
  br i1 %tobool50, label %land.rhs51, label %land.end55

land.rhs51:                                       ; preds = %do.cond48
  %29 = load i8*, i8** %cp, align 8
  %30 = load i8, i8* %29, align 1
  %conv52 = zext i8 %30 to i32
  %cmp53 = icmp ne i32 %conv52, 32
  br label %land.end55

land.end55:                                       ; preds = %land.rhs51, %do.cond48
  %31 = phi i1 [ false, %do.cond48 ], [ %cmp53, %land.rhs51 ]
  br i1 %31, label %do.body45, label %do.end56

do.end56:                                         ; preds = %land.end55
  %32 = load %struct.sVString*, %struct.sVString** %name, align 8
  %call57 = call i32 @makeSimpleTag(%struct.sVString* %32, i32 3)
  br label %do.body58

do.body58:                                        ; preds = %do.end56
  %33 = load %struct.sVString*, %struct.sVString** %name, align 8
  store %struct.sVString* %33, %struct.sVString** %vStringClear_s, align 8
  %34 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %34, i32 0, i32 0
  store i64 0, i64* %length, align 8
  %35 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %35, i32 0, i32 2
  %36 = load i8*, i8** %buffer, align 8
  %arrayidx = getelementptr inbounds i8, i8* %36, i64 0
  store i8 0, i8* %arrayidx, align 1
  br label %do.end60

do.end60:                                         ; preds = %do.body58
  %37 = load %struct.sVString*, %struct.sVString** %name, align 8
  call void @vStringDelete(%struct.sVString* %37)
  ret i1 true
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @skipWord(i8* %p) #0 {
entry:
  %p.addr = alloca i8*, align 8
  store i8* %p, i8** %p.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i8*, i8** %p.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = zext i8 %1 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %2 = load i8*, i8** %p.addr, align 8
  %3 = load i8, i8* %2, align 1
  %call = call zeroext i1 @isWordChar(i8 zeroext %3)
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %4 = phi i1 [ false, %while.cond ], [ %call, %land.rhs ]
  br i1 %4, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %5 = load i8*, i8** %p.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %p.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %6 = load i8*, i8** %p.addr, align 8
  ret i8* %6
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseFunction(i8* %line) #0 {
entry:
  %line.addr = alloca i8*, align 8
  %name = alloca %struct.sVString*, align 8
  %scope = alloca i32, align 4
  %cp = alloca i8*, align 8
  %index = alloca i32, align 4
  %prefix = alloca [3 x i8], align 1
  %vStringClear_s = alloca %struct.sVString*, align 8
  %e = alloca %struct.sTagEntryInfo*, align 8
  store i8* %line, i8** %line.addr, align 8
  %call = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call, %struct.sVString** %name, align 8
  %0 = load i8*, i8** %line.addr, align 8
  store i8* %0, i8** %cp, align 8
  store i32 0, i32* %index, align 4
  %1 = load i8*, i8** %cp, align 8
  %2 = load i8, i8* %1, align 1
  %conv = zext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 33
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %cp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr, i8** %cp, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i8*, i8** %cp, align 8
  %5 = load i8, i8* %4, align 1
  %conv2 = zext i8 %5 to i32
  %call3 = call i32 @isspace(i32 %conv2) #3
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then4, label %if.end57

if.then4:                                         ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then4
  %6 = load i8*, i8** %cp, align 8
  %7 = load i8, i8* %6, align 1
  %conv5 = zext i8 %7 to i32
  %tobool6 = icmp ne i32 %conv5, 0
  br i1 %tobool6, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %8 = load i8*, i8** %cp, align 8
  %9 = load i8, i8* %8, align 1
  %conv7 = zext i8 %9 to i32
  %call8 = call i32 @isspace(i32 %conv7) #3
  %tobool9 = icmp ne i32 %call8, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %10 = phi i1 [ false, %while.cond ], [ %tobool9, %land.rhs ]
  br i1 %10, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %11 = load i8*, i8** %cp, align 8
  %incdec.ptr10 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr10, i8** %cp, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %12 = load i8*, i8** %cp, align 8
  %13 = load i8, i8* %12, align 1
  %tobool11 = icmp ne i8 %13, 0
  br i1 %tobool11, label %if.then12, label %if.end56

if.then12:                                        ; preds = %while.end
  %14 = load i8*, i8** %cp, align 8
  %call13 = call i8* @skipPrefix(i8* %14, i32* %scope)
  store i8* %call13, i8** %cp, align 8
  %15 = load i8*, i8** %cp, align 8
  %16 = load i8, i8* %15, align 1
  %conv14 = zext i8 %16 to i32
  %call15 = call i32 @isupper(i32 %conv14) #3
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.then28, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then12
  %17 = load i32, i32* %scope, align 4
  %cmp17 = icmp eq i32 %17, 115
  br i1 %cmp17, label %if.then28, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %lor.lhs.false
  %18 = load i32, i32* %scope, align 4
  %cmp20 = icmp eq i32 %18, 60
  br i1 %cmp20, label %if.then28, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %lor.lhs.false19
  %19 = load i32, i32* %scope, align 4
  %cmp23 = icmp eq i32 %19, 100
  br i1 %cmp23, label %if.then28, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %lor.lhs.false22
  %20 = load i32, i32* %scope, align 4
  %cmp26 = icmp eq i32 %20, 97
  br i1 %cmp26, label %if.then28, label %if.end55

if.then28:                                        ; preds = %lor.lhs.false25, %lor.lhs.false22, %lor.lhs.false19, %lor.lhs.false, %if.then12
  %arrayinit.begin = getelementptr inbounds [3 x i8], [3 x i8]* %prefix, i64 0, i64 0
  %21 = load i32, i32* %scope, align 4
  %conv29 = trunc i32 %21 to i8
  store i8 %conv29, i8* %arrayinit.begin, align 1
  %arrayinit.element = getelementptr inbounds i8, i8* %arrayinit.begin, i64 1
  store i8 58, i8* %arrayinit.element, align 1
  %arrayinit.element30 = getelementptr inbounds i8, i8* %arrayinit.element, i64 1
  store i8 0, i8* %arrayinit.element30, align 1
  %22 = load i32, i32* %scope, align 4
  %cmp31 = icmp eq i32 %22, 115
  br i1 %cmp31, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.then28
  %23 = load %struct.sVString*, %struct.sVString** %name, align 8
  %arraydecay = getelementptr inbounds [3 x i8], [3 x i8]* %prefix, i64 0, i64 0
  call void @vStringCatS(%struct.sVString* %23, i8* %arraydecay)
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %if.then28
  br label %do.body

do.body:                                          ; preds = %lor.end, %if.end34
  %24 = load %struct.sVString*, %struct.sVString** %name, align 8
  %25 = load i8*, i8** %cp, align 8
  %26 = load i8, i8* %25, align 1
  %conv35 = zext i8 %26 to i32
  call void @vStringPut(%struct.sVString* %24, i32 %conv35)
  %27 = load i8*, i8** %cp, align 8
  %incdec.ptr36 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr36, i8** %cp, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %28 = load i8*, i8** %cp, align 8
  %29 = load i8, i8* %28, align 1
  %conv37 = zext i8 %29 to i32
  %call38 = call i32 @isalnum(i32 %conv37) #3
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %lor.end, label %lor.lhs.false40

lor.lhs.false40:                                  ; preds = %do.cond
  %30 = load i8*, i8** %cp, align 8
  %31 = load i8, i8* %30, align 1
  %conv41 = zext i8 %31 to i32
  %cmp42 = icmp eq i32 %conv41, 95
  br i1 %cmp42, label %lor.end, label %lor.lhs.false44

lor.lhs.false44:                                  ; preds = %lor.lhs.false40
  %32 = load i8*, i8** %cp, align 8
  %33 = load i8, i8* %32, align 1
  %conv45 = zext i8 %33 to i32
  %cmp46 = icmp eq i32 %conv45, 46
  br i1 %cmp46, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false44
  %34 = load i8*, i8** %cp, align 8
  %35 = load i8, i8* %34, align 1
  %conv48 = zext i8 %35 to i32
  %cmp49 = icmp eq i32 %conv48, 35
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false44, %lor.lhs.false40, %do.cond
  %36 = phi i1 [ true, %lor.lhs.false44 ], [ true, %lor.lhs.false40 ], [ true, %do.cond ], [ %cmp49, %lor.rhs ]
  br i1 %36, label %do.body, label %do.end

do.end:                                           ; preds = %lor.end
  %37 = load %struct.sVString*, %struct.sVString** %name, align 8
  %call51 = call i32 @makeSimpleTag(%struct.sVString* %37, i32 2)
  store i32 %call51, i32* %index, align 4
  br label %do.body52

do.body52:                                        ; preds = %do.end
  %38 = load %struct.sVString*, %struct.sVString** %name, align 8
  store %struct.sVString* %38, %struct.sVString** %vStringClear_s, align 8
  %39 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %39, i32 0, i32 0
  store i64 0, i64* %length, align 8
  %40 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %40, i32 0, i32 2
  %41 = load i8*, i8** %buffer, align 8
  %arrayidx = getelementptr inbounds i8, i8* %41, i64 0
  store i8 0, i8* %arrayidx, align 1
  br label %do.end54

do.end54:                                         ; preds = %do.body52
  br label %if.end55

if.end55:                                         ; preds = %do.end54, %lor.lhs.false25
  br label %if.end56

if.end56:                                         ; preds = %if.end55, %while.end
  br label %if.end57

if.end57:                                         ; preds = %if.end56, %if.end
  br label %while.cond58

while.cond58:                                     ; preds = %if.end71, %if.end57
  %call59 = call i8* @readVimLine()
  store i8* %call59, i8** %line.addr, align 8
  %cmp60 = icmp ne i8* %call59, null
  br i1 %cmp60, label %while.body62, label %while.end73

while.body62:                                     ; preds = %while.cond58
  %42 = load i8*, i8** %line.addr, align 8
  %call63 = call zeroext i1 @wordMatchLen(i8* %42, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i64 0, i64 0), i64 4)
  br i1 %call63, label %if.then64, label %if.end71

if.then64:                                        ; preds = %while.body62
  %43 = load i32, i32* %index, align 4
  %cmp65 = icmp ne i32 %43, 0
  br i1 %cmp65, label %if.then67, label %if.end70

if.then67:                                        ; preds = %if.then64
  %44 = load i32, i32* %index, align 4
  %call68 = call %struct.sTagEntryInfo* @getEntryInCorkQueue(i32 %44)
  store %struct.sTagEntryInfo* %call68, %struct.sTagEntryInfo** %e, align 8
  %call69 = call i64 @getInputLineNumber()
  %45 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %e, align 8
  %extensionFields = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %45, i32 0, i32 11
  %endLine = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields, i32 0, i32 11
  store i64 %call69, i64* %endLine, align 8
  br label %if.end70

if.end70:                                         ; preds = %if.then67, %if.then64
  br label %while.end73

if.end71:                                         ; preds = %while.body62
  %46 = load i8*, i8** %line.addr, align 8
  %call72 = call zeroext i1 @parseVimLine(i8* %46, i32 1)
  br label %while.cond58

while.end73:                                      ; preds = %if.end70, %while.cond58
  %47 = load %struct.sVString*, %struct.sVString** %name, align 8
  call void @vStringDelete(%struct.sVString* %47)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseAutogroup(i8* %line) #0 {
entry:
  %line.addr = alloca i8*, align 8
  %name = alloca %struct.sVString*, align 8
  %cp = alloca i8*, align 8
  %end = alloca i8*, align 8
  %vStringClear_s = alloca %struct.sVString*, align 8
  store i8* %line, i8** %line.addr, align 8
  %call = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call, %struct.sVString** %name, align 8
  %0 = load i8*, i8** %line.addr, align 8
  store i8* %0, i8** %cp, align 8
  %1 = load i8*, i8** %cp, align 8
  %2 = load i8, i8* %1, align 1
  %conv = zext i8 %2 to i32
  %call1 = call i32 @isspace(i32 %conv) #3
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end20

if.then:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %3 = load i8*, i8** %cp, align 8
  %4 = load i8, i8* %3, align 1
  %conv2 = zext i8 %4 to i32
  %tobool3 = icmp ne i32 %conv2, 0
  br i1 %tobool3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %5 = load i8*, i8** %cp, align 8
  %6 = load i8, i8* %5, align 1
  %conv4 = zext i8 %6 to i32
  %call5 = call i32 @isspace(i32 %conv4) #3
  %tobool6 = icmp ne i32 %call5, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %7 = phi i1 [ false, %while.cond ], [ %tobool6, %land.rhs ]
  br i1 %7, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %8 = load i8*, i8** %cp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr, i8** %cp, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %9 = load i8*, i8** %cp, align 8
  %10 = load i8, i8* %9, align 1
  %tobool7 = icmp ne i8 %10, 0
  br i1 %tobool7, label %if.then8, label %if.end19

if.then8:                                         ; preds = %while.end
  %11 = load i8*, i8** %cp, align 8
  %call9 = call i8* @skipWord(i8* %11)
  store i8* %call9, i8** %end, align 8
  %12 = load i8*, i8** %end, align 8
  %13 = load i8*, i8** %cp, align 8
  %cmp = icmp ugt i8* %12, %13
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then8
  %14 = load i8*, i8** %cp, align 8
  %15 = load i8*, i8** %end, align 8
  %16 = load i8*, i8** %cp, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %15 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %16 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call11 = call i32 @strncasecmp(i8* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.48, i64 0, i64 0), i64 %sub.ptr.sub)
  %cmp12 = icmp ne i32 %call11, 0
  br i1 %cmp12, label %if.then14, label %if.end

if.then14:                                        ; preds = %land.lhs.true
  %17 = load %struct.sVString*, %struct.sVString** %name, align 8
  %18 = load i8*, i8** %cp, align 8
  %19 = load i8*, i8** %end, align 8
  %20 = load i8*, i8** %cp, align 8
  %sub.ptr.lhs.cast15 = ptrtoint i8* %19 to i64
  %sub.ptr.rhs.cast16 = ptrtoint i8* %20 to i64
  %sub.ptr.sub17 = sub i64 %sub.ptr.lhs.cast15, %sub.ptr.rhs.cast16
  call void @vStringNCatS(%struct.sVString* %17, i8* %18, i64 %sub.ptr.sub17)
  %21 = load %struct.sVString*, %struct.sVString** %name, align 8
  %call18 = call i32 @makeSimpleTag(%struct.sVString* %21, i32 0)
  br label %do.body

do.body:                                          ; preds = %if.then14
  %22 = load %struct.sVString*, %struct.sVString** %name, align 8
  store %struct.sVString* %22, %struct.sVString** %vStringClear_s, align 8
  %23 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %23, i32 0, i32 0
  store i64 0, i64* %length, align 8
  %24 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %24, i32 0, i32 2
  %25 = load i8*, i8** %buffer, align 8
  %arrayidx = getelementptr inbounds i8, i8* %25, i64 0
  store i8 0, i8* %arrayidx, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %if.end

if.end:                                           ; preds = %do.end, %land.lhs.true, %if.then8
  br label %if.end19

if.end19:                                         ; preds = %if.end, %while.end
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %entry
  %26 = load %struct.sVString*, %struct.sVString** %name, align 8
  call void @vStringDelete(%struct.sVString* %26)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseLet(i8* %line, i32 %infunction) #0 {
entry:
  %line.addr = alloca i8*, align 8
  %infunction.addr = alloca i32, align 4
  %name = alloca %struct.sVString*, align 8
  %cp = alloca i8*, align 8
  %np = alloca i8*, align 8
  %vStringClear_s = alloca %struct.sVString*, align 8
  store i8* %line, i8** %line.addr, align 8
  store i32 %infunction, i32* %infunction.addr, align 4
  %call = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call, %struct.sVString** %name, align 8
  %0 = load i8*, i8** %line.addr, align 8
  store i8* %0, i8** %cp, align 8
  %1 = load i8*, i8** %line.addr, align 8
  store i8* %1, i8** %np, align 8
  %2 = load i8*, i8** %cp, align 8
  %3 = load i8, i8* %2, align 1
  %conv = zext i8 %3 to i32
  %call1 = call i32 @isspace(i32 %conv) #3
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end84

if.then:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %4 = load i8*, i8** %cp, align 8
  %5 = load i8, i8* %4, align 1
  %conv2 = zext i8 %5 to i32
  %tobool3 = icmp ne i32 %conv2, 0
  br i1 %tobool3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %6 = load i8*, i8** %cp, align 8
  %7 = load i8, i8* %6, align 1
  %conv4 = zext i8 %7 to i32
  %call5 = call i32 @isspace(i32 %conv4) #3
  %tobool6 = icmp ne i32 %call5, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %8 = phi i1 [ false, %while.cond ], [ %tobool6, %land.rhs ]
  br i1 %8, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %9 = load i8*, i8** %cp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr, i8** %cp, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %10 = load i8*, i8** %cp, align 8
  %11 = load i8, i8* %10, align 1
  %tobool7 = icmp ne i8 %11, 0
  br i1 %tobool7, label %lor.lhs.false, label %if.then18

lor.lhs.false:                                    ; preds = %while.end
  %12 = load i8*, i8** %cp, align 8
  %13 = load i8, i8* %12, align 1
  %conv8 = zext i8 %13 to i32
  %cmp = icmp eq i32 %conv8, 38
  br i1 %cmp, label %if.then18, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false
  %14 = load i8*, i8** %cp, align 8
  %15 = load i8, i8* %14, align 1
  %conv11 = zext i8 %15 to i32
  %cmp12 = icmp eq i32 %conv11, 64
  br i1 %cmp12, label %if.then18, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false10
  %16 = load i8*, i8** %cp, align 8
  %17 = load i8, i8* %16, align 1
  %conv15 = zext i8 %17 to i32
  %cmp16 = icmp eq i32 %conv15, 91
  br i1 %cmp16, label %if.then18, label %if.end

if.then18:                                        ; preds = %lor.lhs.false14, %lor.lhs.false10, %lor.lhs.false, %while.end
  br label %cleanUp

if.end:                                           ; preds = %lor.lhs.false14
  %18 = load i8*, i8** %cp, align 8
  store i8* %18, i8** %np, align 8
  %19 = load i8*, i8** %np, align 8
  %incdec.ptr19 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr19, i8** %np, align 8
  %20 = load i8*, i8** %cp, align 8
  %21 = load i8, i8* %20, align 1
  %conv20 = zext i8 %21 to i32
  %cmp21 = icmp eq i32 %conv20, 118
  br i1 %cmp21, label %land.lhs.true, label %if.end27

land.lhs.true:                                    ; preds = %if.end
  %22 = load i8*, i8** %np, align 8
  %23 = load i8, i8* %22, align 1
  %conv23 = zext i8 %23 to i32
  %cmp24 = icmp eq i32 %conv23, 58
  br i1 %cmp24, label %if.then26, label %if.end27

if.then26:                                        ; preds = %land.lhs.true
  br label %cleanUp

if.end27:                                         ; preds = %land.lhs.true, %if.end
  %24 = load i32, i32* %infunction.addr, align 4
  %tobool28 = icmp ne i32 %24, 0
  br i1 %tobool28, label %land.lhs.true29, label %if.end38

land.lhs.true29:                                  ; preds = %if.end27
  %25 = load i8*, i8** %np, align 8
  %26 = load i8, i8* %25, align 1
  %conv30 = zext i8 %26 to i32
  %cmp31 = icmp ne i32 %conv30, 58
  br i1 %cmp31, label %if.then37, label %lor.lhs.false33

lor.lhs.false33:                                  ; preds = %land.lhs.true29
  %27 = load i8*, i8** %cp, align 8
  %28 = load i8, i8* %27, align 1
  %conv34 = zext i8 %28 to i32
  %cmp35 = icmp ne i32 %conv34, 103
  br i1 %cmp35, label %if.then37, label %if.end38

if.then37:                                        ; preds = %lor.lhs.false33, %land.lhs.true29
  br label %cleanUp

if.end38:                                         ; preds = %lor.lhs.false33, %if.end27
  br label %while.cond39

while.cond39:                                     ; preds = %while.body51, %if.end38
  %29 = load i8*, i8** %cp, align 8
  %30 = load i8, i8* %29, align 1
  %conv40 = zext i8 %30 to i32
  %tobool41 = icmp ne i32 %conv40, 0
  br i1 %tobool41, label %land.lhs.true42, label %land.end50

land.lhs.true42:                                  ; preds = %while.cond39
  %31 = load i8*, i8** %cp, align 8
  %32 = load i8, i8* %31, align 1
  %conv43 = zext i8 %32 to i32
  %cmp44 = icmp ne i32 %conv43, 36
  br i1 %cmp44, label %land.rhs46, label %land.end50

land.rhs46:                                       ; preds = %land.lhs.true42
  %33 = load i8*, i8** %cp, align 8
  %34 = load i8, i8* %33, align 1
  %conv47 = zext i8 %34 to i32
  %call48 = call i32 @isalnum(i32 %conv47) #3
  %tobool49 = icmp ne i32 %call48, 0
  %lnot = xor i1 %tobool49, true
  br label %land.end50

land.end50:                                       ; preds = %land.rhs46, %land.lhs.true42, %while.cond39
  %35 = phi i1 [ false, %land.lhs.true42 ], [ false, %while.cond39 ], [ %lnot, %land.rhs46 ]
  br i1 %35, label %while.body51, label %while.end53

while.body51:                                     ; preds = %land.end50
  %36 = load i8*, i8** %cp, align 8
  %incdec.ptr52 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %incdec.ptr52, i8** %cp, align 8
  br label %while.cond39

while.end53:                                      ; preds = %land.end50
  %37 = load i8*, i8** %cp, align 8
  %38 = load i8, i8* %37, align 1
  %tobool54 = icmp ne i8 %38, 0
  br i1 %tobool54, label %if.end56, label %if.then55

if.then55:                                        ; preds = %while.end53
  br label %cleanUp

if.end56:                                         ; preds = %while.end53
  br label %do.body

do.body:                                          ; preds = %lor.end, %if.end56
  %39 = load i8*, i8** %cp, align 8
  %40 = load i8, i8* %39, align 1
  %tobool57 = icmp ne i8 %40, 0
  br i1 %tobool57, label %if.end59, label %if.then58

if.then58:                                        ; preds = %do.body
  br label %do.end

if.end59:                                         ; preds = %do.body
  %41 = load %struct.sVString*, %struct.sVString** %name, align 8
  %42 = load i8*, i8** %cp, align 8
  %43 = load i8, i8* %42, align 1
  %conv60 = zext i8 %43 to i32
  call void @vStringPut(%struct.sVString* %41, i32 %conv60)
  %44 = load i8*, i8** %cp, align 8
  %incdec.ptr61 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %incdec.ptr61, i8** %cp, align 8
  br label %do.cond

do.cond:                                          ; preds = %if.end59
  %45 = load i8*, i8** %cp, align 8
  %46 = load i8, i8* %45, align 1
  %conv62 = zext i8 %46 to i32
  %call63 = call i32 @isalnum(i32 %conv62) #3
  %tobool64 = icmp ne i32 %call63, 0
  br i1 %tobool64, label %lor.end, label %lor.lhs.false65

lor.lhs.false65:                                  ; preds = %do.cond
  %47 = load i8*, i8** %cp, align 8
  %48 = load i8, i8* %47, align 1
  %conv66 = zext i8 %48 to i32
  %cmp67 = icmp eq i32 %conv66, 95
  br i1 %cmp67, label %lor.end, label %lor.lhs.false69

lor.lhs.false69:                                  ; preds = %lor.lhs.false65
  %49 = load i8*, i8** %cp, align 8
  %50 = load i8, i8* %49, align 1
  %conv70 = zext i8 %50 to i32
  %cmp71 = icmp eq i32 %conv70, 35
  br i1 %cmp71, label %lor.end, label %lor.lhs.false73

lor.lhs.false73:                                  ; preds = %lor.lhs.false69
  %51 = load i8*, i8** %cp, align 8
  %52 = load i8, i8* %51, align 1
  %conv74 = zext i8 %52 to i32
  %cmp75 = icmp eq i32 %conv74, 58
  br i1 %cmp75, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false73
  %53 = load i8*, i8** %cp, align 8
  %54 = load i8, i8* %53, align 1
  %conv77 = zext i8 %54 to i32
  %cmp78 = icmp eq i32 %conv77, 36
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false73, %lor.lhs.false69, %lor.lhs.false65, %do.cond
  %55 = phi i1 [ true, %lor.lhs.false73 ], [ true, %lor.lhs.false69 ], [ true, %lor.lhs.false65 ], [ true, %do.cond ], [ %cmp78, %lor.rhs ]
  br i1 %55, label %do.body, label %do.end

do.end:                                           ; preds = %lor.end, %if.then58
  %56 = load %struct.sVString*, %struct.sVString** %name, align 8
  %call80 = call i32 @makeSimpleTag(%struct.sVString* %56, i32 4)
  br label %do.body81

do.body81:                                        ; preds = %do.end
  %57 = load %struct.sVString*, %struct.sVString** %name, align 8
  store %struct.sVString* %57, %struct.sVString** %vStringClear_s, align 8
  %58 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %58, i32 0, i32 0
  store i64 0, i64* %length, align 8
  %59 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %59, i32 0, i32 2
  %60 = load i8*, i8** %buffer, align 8
  %arrayidx = getelementptr inbounds i8, i8* %60, i64 0
  store i8 0, i8* %arrayidx, align 1
  br label %do.end83

do.end83:                                         ; preds = %do.body81
  br label %if.end84

if.end84:                                         ; preds = %do.end83, %entry
  br label %cleanUp

cleanUp:                                          ; preds = %if.end84, %if.then55, %if.then37, %if.then26, %if.then18
  %61 = load %struct.sVString*, %struct.sVString** %name, align 8
  call void @vStringDelete(%struct.sVString* %61)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @isWordChar(i8 zeroext %c) #0 {
entry:
  %c.addr = alloca i8, align 1
  store i8 %c, i8* %c.addr, align 1
  %0 = load i8, i8* %c.addr, align 1
  %conv = zext i8 %0 to i32
  %call = call i32 @isalnum(i32 %conv) #3
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %1 = load i8, i8* %c.addr, align 1
  %conv1 = zext i8 %1 to i32
  %cmp = icmp eq i32 %conv1, 95
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %cmp, %lor.rhs ]
  ret i1 %2
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @skipPrefix(i8* %name, i32* %scope) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %scope.addr = alloca i32*, align 8
  %result = alloca i8*, align 8
  %counter = alloca i32, align 4
  %length = alloca i64, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32* %scope, i32** %scope.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  store i8* %0, i8** %result, align 8
  %1 = load i8*, i8** %name.addr, align 8
  %call = call i64 @strlen(i8* %1)
  store i64 %call, i64* %length, align 8
  %2 = load i32*, i32** %scope.addr, align 8
  %cmp = icmp ne i32* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32*, i32** %scope.addr, align 8
  store i32 0, i32* %3, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i64, i64* %length, align 8
  %cmp1 = icmp ugt i64 %4, 3
  br i1 %cmp1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %5 = load i8*, i8** %name.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 1
  %6 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %6 to i32
  %cmp2 = icmp eq i32 %conv, 58
  br i1 %cmp2, label %if.then4, label %if.else

if.then4:                                         ; preds = %land.lhs.true
  %7 = load i32*, i32** %scope.addr, align 8
  %cmp5 = icmp ne i32* %7, null
  br i1 %cmp5, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.then4
  %8 = load i8*, i8** %name.addr, align 8
  %9 = load i8, i8* %8, align 1
  %conv8 = zext i8 %9 to i32
  %10 = load i32*, i32** %scope.addr, align 8
  store i32 %conv8, i32* %10, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.then4
  %11 = load i8*, i8** %name.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %11, i64 2
  store i8* %add.ptr, i8** %result, align 8
  br label %if.end48

if.else:                                          ; preds = %land.lhs.true, %if.end
  %12 = load i64, i64* %length, align 8
  %cmp10 = icmp ugt i64 %12, 5
  br i1 %cmp10, label %land.lhs.true12, label %if.else23

land.lhs.true12:                                  ; preds = %if.else
  %13 = load i8*, i8** %name.addr, align 8
  %call13 = call i32 @strncasecmp(i8* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.47, i64 0, i64 0), i64 5)
  %cmp14 = icmp eq i32 %call13, 0
  br i1 %cmp14, label %if.then16, label %if.else23

if.then16:                                        ; preds = %land.lhs.true12
  %14 = load i32*, i32** %scope.addr, align 8
  %cmp17 = icmp ne i32* %14, null
  br i1 %cmp17, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.then16
  %15 = load i8*, i8** %name.addr, align 8
  %16 = load i8, i8* %15, align 1
  %conv20 = zext i8 %16 to i32
  %17 = load i32*, i32** %scope.addr, align 8
  store i32 %conv20, i32* %17, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.then16
  %18 = load i8*, i8** %name.addr, align 8
  %add.ptr22 = getelementptr inbounds i8, i8* %18, i64 5
  store i8* %add.ptr22, i8** %result, align 8
  br label %if.end47

if.else23:                                        ; preds = %land.lhs.true12, %if.else
  store i32 0, i32* %counter, align 4
  br label %do.body

do.body:                                          ; preds = %lor.end, %if.else23
  %19 = load i8*, i8** %name.addr, align 8
  %20 = load i32, i32* %counter, align 4
  %idxprom = sext i32 %20 to i64
  %arrayidx24 = getelementptr inbounds i8, i8* %19, i64 %idxprom
  %21 = load i8, i8* %arrayidx24, align 1
  %conv25 = zext i8 %21 to i32
  switch i32 %conv25, label %sw.epilog [
    i32 46, label %sw.bb
    i32 35, label %sw.bb26
  ]

sw.bb:                                            ; preds = %do.body
  %22 = load i32*, i32** %scope.addr, align 8
  store i32 100, i32* %22, align 4
  br label %sw.epilog

sw.bb26:                                          ; preds = %do.body
  %23 = load i32*, i32** %scope.addr, align 8
  store i32 97, i32* %23, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body, %sw.bb26, %sw.bb
  %24 = load i32, i32* %counter, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %counter, align 4
  br label %do.cond

do.cond:                                          ; preds = %sw.epilog
  %25 = load i8*, i8** %name.addr, align 8
  %26 = load i32, i32* %counter, align 4
  %idxprom27 = sext i32 %26 to i64
  %arrayidx28 = getelementptr inbounds i8, i8* %25, i64 %idxprom27
  %27 = load i8, i8* %arrayidx28, align 1
  %conv29 = zext i8 %27 to i32
  %call30 = call i32 @isalnum(i32 %conv29) #3
  %tobool = icmp ne i32 %call30, 0
  br i1 %tobool, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.cond
  %28 = load i8*, i8** %name.addr, align 8
  %29 = load i32, i32* %counter, align 4
  %idxprom31 = sext i32 %29 to i64
  %arrayidx32 = getelementptr inbounds i8, i8* %28, i64 %idxprom31
  %30 = load i8, i8* %arrayidx32, align 1
  %conv33 = zext i8 %30 to i32
  %cmp34 = icmp eq i32 %conv33, 95
  br i1 %cmp34, label %lor.end, label %lor.lhs.false36

lor.lhs.false36:                                  ; preds = %lor.lhs.false
  %31 = load i8*, i8** %name.addr, align 8
  %32 = load i32, i32* %counter, align 4
  %idxprom37 = sext i32 %32 to i64
  %arrayidx38 = getelementptr inbounds i8, i8* %31, i64 %idxprom37
  %33 = load i8, i8* %arrayidx38, align 1
  %conv39 = zext i8 %33 to i32
  %cmp40 = icmp eq i32 %conv39, 46
  br i1 %cmp40, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false36
  %34 = load i8*, i8** %name.addr, align 8
  %35 = load i32, i32* %counter, align 4
  %idxprom42 = sext i32 %35 to i64
  %arrayidx43 = getelementptr inbounds i8, i8* %34, i64 %idxprom42
  %36 = load i8, i8* %arrayidx43, align 1
  %conv44 = zext i8 %36 to i32
  %cmp45 = icmp eq i32 %conv44, 35
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false36, %lor.lhs.false, %do.cond
  %37 = phi i1 [ true, %lor.lhs.false36 ], [ true, %lor.lhs.false ], [ true, %do.cond ], [ %cmp45, %lor.rhs ]
  br i1 %37, label %do.body, label %do.end

do.end:                                           ; preds = %lor.end
  br label %if.end47

if.end47:                                         ; preds = %do.end, %if.end21
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %if.end9
  %38 = load i8*, i8** %result, align 8
  ret i8* %38
}

; Function Attrs: nounwind readonly
declare i32 @isupper(i32) #2

declare void @vStringCatS(%struct.sVString*, i8*) #1

declare %struct.sTagEntryInfo* @getEntryInCorkQueue(i32) #1

declare i64 @getInputLineNumber() #1

declare i64 @strlen(i8*) #1

declare i32 @strncasecmp(i8*, i8*, i64) #1

declare void @vStringNCatS(%struct.sVString*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 10.0.0 (https://github.com/holzschu/clang.git 0cfc630fbdb62e96720b611a57123ef3eb13e297) (https://github.com/holzschu/llvm.git 0d8a71e39b28502c24718f7e74b5acbcfe36dfe0)"}
