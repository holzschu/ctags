; ModuleID = 'asm.c'
source_filename = "asm.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-ios11.0.0"

%struct.sKindDefinition = type { i8, i8, i8*, i8*, i8, i32, %struct.sRoleDesc*, %struct.sScopeSeparator*, i32, i32, i32, %struct.sKindDefinition*, %struct.sKindDefinition* }
%struct.sRoleDesc = type { i8, i8*, i8* }
%struct.sScopeSeparator = type { i32, i8* }
%struct.keywordTable = type { i8*, i32 }
%struct._MIO = type opaque
%struct.sVString = type { i64, i64, i8* }
%struct.opKind = type { i32, i32 }
%struct.sParserDefinition = type { i8*, %struct.sKindDefinition*, i32, i8**, i8**, i8**, void (i32)*, void (i32, i1)*, void ()*, i32 (i32)*, i8* (%struct._MIO*, i32*, i32)**, i32, i8, i8, i8, i8, %struct.tagRegexTable*, i32, %struct.keywordTable*, i32, %struct.sTagXpathTableTable*, i32, i8, %struct.sFieldDefinition*, i32, %struct.sXtagDefinition*, i32, %struct.sParserDependency*, i32, %struct.sParameterHandlerTable*, i32, %struct.sXpathFileSpec*, i32, i32, i8 }
%struct.tagRegexTable = type { i8*, i8*, i8*, i8*, i8*, i8 }
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
%struct.sXtagDefinition = type { i8, i8, i8*, i8*, i1 (%struct.sXtagDefinition*)*, i1 (%struct.sXtagDefinition*)*, i32 }
%struct.sParserDependency = type { i32, i8*, i8* }
%struct.sParameterHandlerTable = type { i8*, i8*, void (i32, i8*, i8*)* }
%struct.sXpathFileSpec = type { i8*, i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [4 x i8] c"Asm\00", align 1
@AsmKinds = internal global [5 x %struct.sKindDefinition] [%struct.sKindDefinition { i8 1, i8 100, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 108, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 109, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 116, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 115, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i8 1, i32 1, %struct.sRoleDesc* getelementptr inbounds ([1 x %struct.sRoleDesc], [1 x %struct.sRoleDesc]* @asmSectionRoles, i32 0, i32 0), %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }], align 8
@extensions = internal constant [5 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0), i8* null], align 8
@patterns = internal constant [5 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0), i8* null], align 8
@AsmKeywords = internal constant [19 x %struct.keywordTable] [%struct.keywordTable { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 0 }, %struct.keywordTable { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0), i32 4 }, %struct.keywordTable { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0), i32 3 }, %struct.keywordTable { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i32 0, i32 0), i32 2 }, %struct.keywordTable { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i32 5 }, %struct.keywordTable { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i32 0, i32 0), i32 6 }, %struct.keywordTable { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i32 0, i32 0), i32 7 }, %struct.keywordTable { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i32 9 }, %struct.keywordTable { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i32 10 }, %struct.keywordTable { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i32 0, i32 0), i32 1 }, %struct.keywordTable { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i32 0, i32 0), i32 8 }, %struct.keywordTable { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i32 0, i32 0), i32 11 }, %struct.keywordTable { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i32 0, i32 0), i32 12 }, %struct.keywordTable { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i32 13 }, %struct.keywordTable { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i32 14 }, %struct.keywordTable { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0), i32 7 }, %struct.keywordTable { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.36, i32 0, i32 0), i32 7 }, %struct.keywordTable { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i32 0, i32 0), i32 15 }, %struct.keywordTable { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i32 0, i32 0), i32 16 }], align 8
@selectors = internal global [2 x i8* (%struct._MIO*, i32*, i32)*] [i8* (%struct._MIO*, i32*, i32)* @selectByArrowOfR, i8* (%struct._MIO*, i32*, i32)* null], align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"define\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"defines\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"labels\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"macro\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"macros\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"types (structs and records)\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"section\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"sections\00", align 1
@asmSectionRoles = internal global [1 x %struct.sRoleDesc] [%struct.sRoleDesc { i8 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12, i32 0, i32 0) }], align 8
@.str.11 = private unnamed_addr constant [10 x i8] c"placement\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"placement where the assembled code goes\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"asm\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"ASM\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"*.A51\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"*.29[kK]\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"*.[68][68][kKsSxX]\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"*.[xX][68][68]\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c";*@\00", align 1
@asmReadLineFromInputFile.line = internal global %struct.sVString* null, align 8
@.str.22 = private unnamed_addr constant [3 x i8] c"_$\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"_$?\00", align 1
@OpKinds = internal constant [17 x %struct.opKind] [%struct.opKind { i32 0, i32 -1 }, %struct.opKind { i32 1, i32 0 }, %struct.opKind { i32 2, i32 -1 }, %struct.opKind { i32 3, i32 -2 }, %struct.opKind { i32 4, i32 -1 }, %struct.opKind { i32 5, i32 -1 }, %struct.opKind { i32 6, i32 -1 }, %struct.opKind { i32 7, i32 0 }, %struct.opKind { i32 8, i32 0 }, %struct.opKind { i32 9, i32 1 }, %struct.opKind { i32 10, i32 2 }, %struct.opKind { i32 11, i32 1 }, %struct.opKind { i32 12, i32 3 }, %struct.opKind { i32 13, i32 -1 }, %struct.opKind { i32 14, i32 4 }, %struct.opKind { i32 15, i32 0 }, %struct.opKind { i32 16, i32 3 }], align 4
@Lang_asm = internal global i32 0, align 4
@.str.24 = private unnamed_addr constant [6 x i8] c"align\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"endmacro\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"endm\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"end\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"endp\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"ends\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"equ\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c":=\00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"proc\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"record\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"equiv\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"eqv\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"struct\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sParserDefinition* @AsmParser() #0 {
entry:
  %def = alloca %struct.sParserDefinition*, align 8
  %call = call %struct.sParserDefinition* @parserNew(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store %struct.sParserDefinition* %call, %struct.sParserDefinition** %def, align 8
  %0 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %0, i32 0, i32 1
  store %struct.sKindDefinition* getelementptr inbounds ([5 x %struct.sKindDefinition], [5 x %struct.sKindDefinition]* @AsmKinds, i64 0, i64 0), %struct.sKindDefinition** %kindTable, align 8
  %1 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %1, i32 0, i32 2
  store i32 5, i32* %kindCount, align 8
  %2 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %extensions = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %2, i32 0, i32 3
  store i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @extensions, i64 0, i64 0), i8*** %extensions, align 8
  %3 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %patterns = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %3, i32 0, i32 4
  store i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @patterns, i64 0, i64 0), i8*** %patterns, align 8
  %4 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %parser = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %4, i32 0, i32 8
  store void ()* @findAsmTags, void ()** %parser, align 8
  %5 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %initialize = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %5, i32 0, i32 6
  store void (i32)* @initialize, void (i32)** %initialize, align 8
  %6 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %keywordTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %6, i32 0, i32 18
  store %struct.keywordTable* getelementptr inbounds ([19 x %struct.keywordTable], [19 x %struct.keywordTable]* @AsmKeywords, i64 0, i64 0), %struct.keywordTable** %keywordTable, align 8
  %7 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %keywordCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %7, i32 0, i32 19
  store i32 19, i32* %keywordCount, align 8
  %8 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %selectLanguage = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %8, i32 0, i32 10
  store i8* (%struct._MIO*, i32*, i32)** getelementptr inbounds ([2 x i8* (%struct._MIO*, i32*, i32)*], [2 x i8* (%struct._MIO*, i32*, i32)*]* @selectors, i64 0, i64 0), i8* (%struct._MIO*, i32*, i32)*** %selectLanguage, align 8
  %9 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %useCork = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %9, i32 0, i32 12
  store i8 1, i8* %useCork, align 4
  %10 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  ret %struct.sParserDefinition* %10
}

declare %struct.sParserDefinition* @parserNew(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @findAsmTags() #0 {
entry:
  %name = alloca %struct.sVString*, align 8
  %operator = alloca %struct.sVString*, align 8
  %line = alloca i8*, align 8
  %lastMacroCorkIndex = alloca i32, align 4
  %cp = alloca i8*, align 8
  %labelCandidate = alloca i8, align 1
  %nameFollows = alloca i8, align 1
  %directive = alloca i8, align 1
  %isComment = alloca i8, align 1
  %call = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call, %struct.sVString** %name, align 8
  %call1 = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call1, %struct.sVString** %operator, align 8
  call void @cppInit(i1 zeroext false, i1 zeroext false, i1 zeroext false, i1 zeroext false, i32 -1, i32 0, i32 -1, i32 0, i32 0)
  store i32 0, i32* %lastMacroCorkIndex, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end62, %if.then40, %if.then, %entry
  %call2 = call i8* @asmReadLineFromInputFile()
  store i8* %call2, i8** %line, align 8
  %cmp = icmp ne i8* %call2, null
  br i1 %cmp, label %while.body, label %while.end66

while.body:                                       ; preds = %while.cond
  %0 = load i8*, i8** %line, align 8
  store i8* %0, i8** %cp, align 8
  %1 = load i8*, i8** %cp, align 8
  %2 = load i8, i8* %1, align 1
  %conv = zext i8 %2 to i32
  %call3 = call i32 @isspace(i32 %conv) #3
  %tobool = icmp ne i32 %call3, 0
  %lnot = xor i1 %tobool, true
  %frombool = zext i1 %lnot to i8
  store i8 %frombool, i8* %labelCandidate, align 1
  store i8 0, i8* %nameFollows, align 1
  store i8 0, i8* %directive, align 1
  %3 = load i8*, i8** %cp, align 8
  %4 = load i8, i8* %3, align 1
  %conv4 = zext i8 %4 to i32
  %cmp5 = icmp ne i32 %conv4, 0
  br i1 %cmp5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.body
  %5 = load i8*, i8** %cp, align 8
  %6 = load i8, i8* %5, align 1
  %conv7 = zext i8 %6 to i32
  %call8 = call i8* @strchr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0), i32 %conv7)
  %cmp9 = icmp ne i8* %call8, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.body
  %7 = phi i1 [ false, %while.body ], [ %cmp9, %land.rhs ]
  %frombool11 = zext i1 %7 to i8
  store i8 %frombool11, i8* %isComment, align 1
  %8 = load i8, i8* %isComment, align 1
  %tobool12 = trunc i8 %8 to i1
  br i1 %tobool12, label %if.then, label %if.end

if.then:                                          ; preds = %land.end
  br label %while.cond

if.end:                                           ; preds = %land.end
  br label %while.cond13

while.cond13:                                     ; preds = %while.body17, %if.end
  %9 = load i8*, i8** %cp, align 8
  %10 = load i8, i8* %9, align 1
  %conv14 = zext i8 %10 to i32
  %call15 = call i32 @isspace(i32 %conv14) #3
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %while.body17, label %while.end

while.body17:                                     ; preds = %while.cond13
  %11 = load i8*, i8** %cp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr, i8** %cp, align 8
  br label %while.cond13

while.end:                                        ; preds = %while.cond13
  %12 = load i8*, i8** %cp, align 8
  %13 = load i8, i8* %12, align 1
  %conv18 = zext i8 %13 to i32
  %cmp19 = icmp eq i32 %conv18, 46
  br i1 %cmp19, label %if.then21, label %if.end23

if.then21:                                        ; preds = %while.end
  store i8 1, i8* %directive, align 1
  store i8 0, i8* %labelCandidate, align 1
  %14 = load i8*, i8** %cp, align 8
  %incdec.ptr22 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr22, i8** %cp, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %while.end
  %15 = load i8*, i8** %cp, align 8
  %16 = load %struct.sVString*, %struct.sVString** %name, align 8
  %call24 = call i8* @readSymbol(i8* %15, %struct.sVString* %16)
  store i8* %call24, i8** %cp, align 8
  %17 = load %struct.sVString*, %struct.sVString** %name, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %17, i32 0, i32 0
  %18 = load i64, i64* %length, align 8
  %cmp25 = icmp ugt i64 %18, 0
  br i1 %cmp25, label %land.lhs.true, label %if.end32

land.lhs.true:                                    ; preds = %if.end23
  %19 = load i8*, i8** %cp, align 8
  %20 = load i8, i8* %19, align 1
  %conv27 = zext i8 %20 to i32
  %cmp28 = icmp eq i32 %conv27, 58
  br i1 %cmp28, label %if.then30, label %if.end32

if.then30:                                        ; preds = %land.lhs.true
  store i8 1, i8* %labelCandidate, align 1
  %21 = load i8*, i8** %cp, align 8
  %incdec.ptr31 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr31, i8** %cp, align 8
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %land.lhs.true, %if.end23
  %22 = load i8*, i8** %cp, align 8
  %23 = load i8, i8* %22, align 1
  %conv33 = zext i8 %23 to i32
  %call34 = call i32 @isspace(i32 %conv33) #3
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.end41, label %land.lhs.true36

land.lhs.true36:                                  ; preds = %if.end32
  %24 = load i8*, i8** %cp, align 8
  %25 = load i8, i8* %24, align 1
  %conv37 = zext i8 %25 to i32
  %cmp38 = icmp ne i32 %conv37, 0
  br i1 %cmp38, label %if.then40, label %if.end41

if.then40:                                        ; preds = %land.lhs.true36
  br label %while.cond

if.end41:                                         ; preds = %land.lhs.true36, %if.end32
  br label %while.cond42

while.cond42:                                     ; preds = %while.body46, %if.end41
  %26 = load i8*, i8** %cp, align 8
  %27 = load i8, i8* %26, align 1
  %conv43 = zext i8 %27 to i32
  %call44 = call i32 @isspace(i32 %conv43) #3
  %tobool45 = icmp ne i32 %call44, 0
  br i1 %tobool45, label %while.body46, label %while.end48

while.body46:                                     ; preds = %while.cond42
  %28 = load i8*, i8** %cp, align 8
  %incdec.ptr47 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr47, i8** %cp, align 8
  br label %while.cond42

while.end48:                                      ; preds = %while.cond42
  %29 = load i8*, i8** %cp, align 8
  %30 = load %struct.sVString*, %struct.sVString** %operator, align 8
  %call49 = call i8* @readOperator(i8* %29, %struct.sVString* %30)
  store i8* %call49, i8** %cp, align 8
  %31 = load %struct.sVString*, %struct.sVString** %name, align 8
  %length50 = getelementptr inbounds %struct.sVString, %struct.sVString* %31, i32 0, i32 0
  %32 = load i64, i64* %length50, align 8
  %cmp51 = icmp eq i64 %32, 0
  br i1 %cmp51, label %if.then53, label %if.end62

if.then53:                                        ; preds = %while.end48
  br label %while.cond54

while.cond54:                                     ; preds = %while.body58, %if.then53
  %33 = load i8*, i8** %cp, align 8
  %34 = load i8, i8* %33, align 1
  %conv55 = zext i8 %34 to i32
  %call56 = call i32 @isspace(i32 %conv55) #3
  %tobool57 = icmp ne i32 %call56, 0
  br i1 %tobool57, label %while.body58, label %while.end60

while.body58:                                     ; preds = %while.cond54
  %35 = load i8*, i8** %cp, align 8
  %incdec.ptr59 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %incdec.ptr59, i8** %cp, align 8
  br label %while.cond54

while.end60:                                      ; preds = %while.cond54
  %36 = load i8*, i8** %cp, align 8
  %37 = load %struct.sVString*, %struct.sVString** %name, align 8
  %call61 = call i8* @readSymbol(i8* %36, %struct.sVString* %37)
  store i8* %call61, i8** %cp, align 8
  store i8 1, i8* %nameFollows, align 1
  br label %if.end62

if.end62:                                         ; preds = %while.end60, %while.end48
  %38 = load %struct.sVString*, %struct.sVString** %name, align 8
  %39 = load %struct.sVString*, %struct.sVString** %operator, align 8
  %40 = load i8, i8* %labelCandidate, align 1
  %tobool63 = trunc i8 %40 to i1
  %41 = load i8, i8* %nameFollows, align 1
  %tobool64 = trunc i8 %41 to i1
  %42 = load i8, i8* %directive, align 1
  %tobool65 = trunc i8 %42 to i1
  call void @makeAsmTag(%struct.sVString* %38, %struct.sVString* %39, i1 zeroext %tobool63, i1 zeroext %tobool64, i1 zeroext %tobool65, i32* %lastMacroCorkIndex)
  br label %while.cond

while.end66:                                      ; preds = %while.cond
  call void @cppTerminate()
  %43 = load %struct.sVString*, %struct.sVString** %name, align 8
  call void @vStringDelete(%struct.sVString* %43)
  %44 = load %struct.sVString*, %struct.sVString** %operator, align 8
  call void @vStringDelete(%struct.sVString* %44)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @initialize(i32 %language) #0 {
entry:
  %language.addr = alloca i32, align 4
  store i32 %language, i32* %language.addr, align 4
  %0 = load i32, i32* %language.addr, align 4
  store i32 %0, i32* @Lang_asm, align 4
  ret void
}

declare %struct.sVString* @vStringNew() #1

declare void @cppInit(i1 zeroext, i1 zeroext, i1 zeroext, i1 zeroext, i32, i32, i32, i32, i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @asmReadLineFromInputFile() #0 {
entry:
  %retval = alloca i8*, align 8
  %c = alloca i32, align 4
  %0 = load %struct.sVString*, %struct.sVString** @asmReadLineFromInputFile.line, align 8
  %call = call %struct.sVString* @vStringNewOrClear(%struct.sVString* %0)
  store %struct.sVString* %call, %struct.sVString** @asmReadLineFromInputFile.line, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %call1 = call i32 @cppGetc()
  store i32 %call1, i32* %c, align 4
  %cmp = icmp ne i32 %call1, -1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, i32* %c, align 4
  %cmp2 = icmp eq i32 %1, 10
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  %2 = load %struct.sVString*, %struct.sVString** @asmReadLineFromInputFile.line, align 8
  %3 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %2, i32 %3)
  br label %while.cond

while.end:                                        ; preds = %if.then, %while.cond
  %4 = load %struct.sVString*, %struct.sVString** @asmReadLineFromInputFile.line, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %4, i32 0, i32 0
  %5 = load i64, i64* %length, align 8
  %cmp3 = icmp eq i64 %5, 0
  br i1 %cmp3, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %while.end
  %6 = load i32, i32* %c, align 4
  %cmp4 = icmp eq i32 %6, -1
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %land.lhs.true
  store i8* null, i8** %retval, align 8
  br label %return

if.else:                                          ; preds = %land.lhs.true, %while.end
  %7 = load %struct.sVString*, %struct.sVString** @asmReadLineFromInputFile.line, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %7, i32 0, i32 2
  %8 = load i8*, i8** %buffer, align 8
  store i8* %8, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then5
  %9 = load i8*, i8** %retval, align 8
  ret i8* %9
}

; Function Attrs: nounwind readonly
declare i32 @isspace(i32) #2

declare i8* @strchr(i8*, i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @readSymbol(i8* %start, %struct.sVString* %sym) #0 {
entry:
  %start.addr = alloca i8*, align 8
  %sym.addr = alloca %struct.sVString*, align 8
  %cp = alloca i8*, align 8
  %vStringClear_s = alloca %struct.sVString*, align 8
  store i8* %start, i8** %start.addr, align 8
  store %struct.sVString* %sym, %struct.sVString** %sym.addr, align 8
  %0 = load i8*, i8** %start.addr, align 8
  store i8* %0, i8** %cp, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %1 = load %struct.sVString*, %struct.sVString** %sym.addr, align 8
  store %struct.sVString* %1, %struct.sVString** %vStringClear_s, align 8
  %2 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %2, i32 0, i32 0
  store i64 0, i64* %length, align 8
  %3 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %3, i32 0, i32 2
  %4 = load i8*, i8** %buffer, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 0
  store i8 0, i8* %arrayidx, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  %5 = load i8*, i8** %cp, align 8
  %6 = load i8, i8* %5, align 1
  %conv = zext i8 %6 to i32
  %call = call zeroext i1 @isInitialSymbolCharacter(i32 %conv)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %7 = load i8*, i8** %cp, align 8
  %8 = load i8, i8* %7, align 1
  %conv1 = zext i8 %8 to i32
  %call2 = call zeroext i1 @isSymbolCharacter(i32 %conv1)
  br i1 %call2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load %struct.sVString*, %struct.sVString** %sym.addr, align 8
  %10 = load i8*, i8** %cp, align 8
  %11 = load i8, i8* %10, align 1
  %conv3 = zext i8 %11 to i32
  call void @vStringPut(%struct.sVString* %9, i32 %conv3)
  %12 = load i8*, i8** %cp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr, i8** %cp, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end

if.end:                                           ; preds = %while.end, %do.end
  %13 = load i8*, i8** %cp, align 8
  ret i8* %13
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @readOperator(i8* %start, %struct.sVString* %operator) #0 {
entry:
  %start.addr = alloca i8*, align 8
  %operator.addr = alloca %struct.sVString*, align 8
  %cp = alloca i8*, align 8
  %vStringClear_s = alloca %struct.sVString*, align 8
  store i8* %start, i8** %start.addr, align 8
  store %struct.sVString* %operator, %struct.sVString** %operator.addr, align 8
  %0 = load i8*, i8** %start.addr, align 8
  store i8* %0, i8** %cp, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %1 = load %struct.sVString*, %struct.sVString** %operator.addr, align 8
  store %struct.sVString* %1, %struct.sVString** %vStringClear_s, align 8
  %2 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %2, i32 0, i32 0
  store i64 0, i64* %length, align 8
  %3 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %3, i32 0, i32 2
  %4 = load i8*, i8** %buffer, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 0
  store i8 0, i8* %arrayidx, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.end
  %5 = load i8*, i8** %cp, align 8
  %6 = load i8, i8* %5, align 1
  %conv = zext i8 %6 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %7 = load i8*, i8** %cp, align 8
  %8 = load i8, i8* %7, align 1
  %conv2 = zext i8 %8 to i32
  %call = call i32 @isspace(i32 %conv2) #3
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true
  %9 = load i8*, i8** %cp, align 8
  %10 = load i8, i8* %9, align 1
  %conv3 = zext i8 %10 to i32
  %cmp4 = icmp ne i32 %conv3, 44
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %11 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp4, %land.rhs ]
  br i1 %11, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %12 = load %struct.sVString*, %struct.sVString** %operator.addr, align 8
  %13 = load i8*, i8** %cp, align 8
  %14 = load i8, i8* %13, align 1
  %conv6 = zext i8 %14 to i32
  call void @vStringPut(%struct.sVString* %12, i32 %conv6)
  %15 = load i8*, i8** %cp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr, i8** %cp, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %16 = load i8*, i8** %cp, align 8
  ret i8* %16
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @makeAsmTag(%struct.sVString* %name, %struct.sVString* %operator, i1 zeroext %labelCandidate, i1 zeroext %nameFollows, i1 zeroext %directive, i32* %lastMacroCorkIndex) #0 {
entry:
  %name.addr = alloca %struct.sVString*, align 8
  %operator.addr = alloca %struct.sVString*, align 8
  %labelCandidate.addr = alloca i8, align 1
  %nameFollows.addr = alloca i8, align 1
  %directive.addr = alloca i8, align 1
  %lastMacroCorkIndex.addr = alloca i32*, align 8
  %found = alloca i8, align 1
  %kind = alloca i32, align 4
  %found_dummy = alloca i8, align 1
  %kind_for_directive = alloca i32, align 4
  %macro_tag = alloca %struct.sTagEntryInfo*, align 8
  store %struct.sVString* %name, %struct.sVString** %name.addr, align 8
  store %struct.sVString* %operator, %struct.sVString** %operator.addr, align 8
  %frombool = zext i1 %labelCandidate to i8
  store i8 %frombool, i8* %labelCandidate.addr, align 1
  %frombool1 = zext i1 %nameFollows to i8
  store i8 %frombool1, i8* %nameFollows.addr, align 1
  %frombool2 = zext i1 %directive to i8
  store i8 %frombool2, i8* %directive.addr, align 1
  store i32* %lastMacroCorkIndex, i32** %lastMacroCorkIndex.addr, align 8
  %0 = load %struct.sVString*, %struct.sVString** %name.addr, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %0, i32 0, i32 0
  %1 = load i64, i64* %length, align 8
  %cmp = icmp ugt i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end40

if.then:                                          ; preds = %entry
  %2 = load %struct.sVString*, %struct.sVString** %operator.addr, align 8
  %call = call i32 @operatorKind(%struct.sVString* %2, i8* %found)
  store i32 %call, i32* %kind, align 4
  %3 = load i8, i8* %found, align 1
  %tobool = trunc i8 %3 to i1
  br i1 %tobool, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  %4 = load i32, i32* %kind, align 4
  %cmp4 = icmp sgt i32 %4, -1
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then3
  %5 = load %struct.sVString*, %struct.sVString** %name.addr, align 8
  %6 = load i32, i32* %kind, align 4
  %call6 = call i32 @makeSimpleTag(%struct.sVString* %5, i32 %6)
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then3
  br label %if.end39

if.else:                                          ; preds = %if.then
  %7 = load %struct.sVString*, %struct.sVString** %operator.addr, align 8
  %call7 = call zeroext i1 @isDefineOperator(%struct.sVString* %7)
  br i1 %call7, label %if.then8, label %if.else13

if.then8:                                         ; preds = %if.else
  %8 = load i8, i8* %nameFollows.addr, align 1
  %tobool9 = trunc i8 %8 to i1
  br i1 %tobool9, label %if.end12, label %if.then10

if.then10:                                        ; preds = %if.then8
  %9 = load %struct.sVString*, %struct.sVString** %name.addr, align 8
  %call11 = call i32 @makeSimpleTag(%struct.sVString* %9, i32 0)
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.then8
  br label %if.end38

if.else13:                                        ; preds = %if.else
  %10 = load i8, i8* %labelCandidate.addr, align 1
  %tobool14 = trunc i8 %10 to i1
  br i1 %tobool14, label %if.then15, label %if.else21

if.then15:                                        ; preds = %if.else13
  %11 = load %struct.sVString*, %struct.sVString** %name.addr, align 8
  %call16 = call i32 @operatorKind(%struct.sVString* %11, i8* %found)
  %12 = load i8, i8* %found, align 1
  %tobool17 = trunc i8 %12 to i1
  br i1 %tobool17, label %if.end20, label %if.then18

if.then18:                                        ; preds = %if.then15
  %13 = load %struct.sVString*, %struct.sVString** %name.addr, align 8
  %call19 = call i32 @makeSimpleTag(%struct.sVString* %13, i32 1)
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.then15
  br label %if.end37

if.else21:                                        ; preds = %if.else13
  %14 = load i8, i8* %directive.addr, align 1
  %tobool22 = trunc i8 %14 to i1
  br i1 %tobool22, label %if.then23, label %if.end36

if.then23:                                        ; preds = %if.else21
  %15 = load %struct.sVString*, %struct.sVString** %name.addr, align 8
  %call24 = call i32 @operatorKind(%struct.sVString* %15, i8* %found_dummy)
  store i32 %call24, i32* %kind_for_directive, align 4
  %16 = load i32, i32* %kind_for_directive, align 4
  switch i32 %16, label %sw.default [
    i32 -1, label %sw.bb
    i32 2, label %sw.bb25
    i32 -2, label %sw.bb27
    i32 4, label %sw.bb33
  ]

sw.bb:                                            ; preds = %if.then23
  br label %sw.epilog

sw.bb25:                                          ; preds = %if.then23
  %17 = load %struct.sVString*, %struct.sVString** %operator.addr, align 8
  %18 = load i32, i32* %kind_for_directive, align 4
  %call26 = call i32 @makeSimpleTag(%struct.sVString* %17, i32 %18)
  %19 = load i32*, i32** %lastMacroCorkIndex.addr, align 8
  store i32 %call26, i32* %19, align 4
  br label %sw.epilog

sw.bb27:                                          ; preds = %if.then23
  %20 = load i32*, i32** %lastMacroCorkIndex.addr, align 8
  %21 = load i32, i32* %20, align 4
  %cmp28 = icmp ne i32 %21, 0
  br i1 %cmp28, label %if.then29, label %if.end32

if.then29:                                        ; preds = %sw.bb27
  %22 = load i32*, i32** %lastMacroCorkIndex.addr, align 8
  %23 = load i32, i32* %22, align 4
  %call30 = call %struct.sTagEntryInfo* @getEntryInCorkQueue(i32 %23)
  store %struct.sTagEntryInfo* %call30, %struct.sTagEntryInfo** %macro_tag, align 8
  %call31 = call i64 @getInputLineNumber()
  %24 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %macro_tag, align 8
  %extensionFields = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %24, i32 0, i32 11
  %endLine = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields, i32 0, i32 11
  store i64 %call31, i64* %endLine, align 8
  %25 = load i32*, i32** %lastMacroCorkIndex.addr, align 8
  store i32 0, i32* %25, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %sw.bb27
  br label %sw.epilog

sw.bb33:                                          ; preds = %if.then23
  %26 = load %struct.sVString*, %struct.sVString** %operator.addr, align 8
  %27 = load i32, i32* %kind_for_directive, align 4
  %call34 = call i32 @makeSimpleRefTag(%struct.sVString* %26, i32 %27, i32 0)
  br label %sw.epilog

sw.default:                                       ; preds = %if.then23
  %28 = load %struct.sVString*, %struct.sVString** %operator.addr, align 8
  %29 = load i32, i32* %kind_for_directive, align 4
  %call35 = call i32 @makeSimpleTag(%struct.sVString* %28, i32 %29)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb33, %if.end32, %sw.bb25, %sw.bb
  br label %if.end36

if.end36:                                         ; preds = %sw.epilog, %if.else21
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.end20
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %if.end12
  br label %if.end39

if.end39:                                         ; preds = %if.end38, %if.end
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %entry
  ret void
}

declare void @cppTerminate() #1

declare void @vStringDelete(%struct.sVString*) #1

declare %struct.sVString* @vStringNewOrClear(%struct.sVString*) #1

declare i32 @cppGetc() #1

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

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @isInitialSymbolCharacter(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %1 = load i32, i32* %c.addr, align 4
  %call = call i32 @isalpha(i32 %1) #3
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %2 = load i32, i32* %c.addr, align 4
  %call1 = call i8* @strchr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0), i32 %2)
  %cmp2 = icmp ne i8* %call1, null
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %3 = phi i1 [ true, %land.rhs ], [ %cmp2, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %entry
  %4 = phi i1 [ false, %entry ], [ %3, %lor.end ]
  ret i1 %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @isSymbolCharacter(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %1 = load i32, i32* %c.addr, align 4
  %call = call i32 @isalnum(i32 %1) #3
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %2 = load i32, i32* %c.addr, align 4
  %call1 = call i8* @strchr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0), i32 %2)
  %cmp2 = icmp ne i8* %call1, null
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %3 = phi i1 [ true, %land.rhs ], [ %cmp2, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %entry
  %4 = phi i1 [ false, %entry ], [ %3, %lor.end ]
  ret i1 %4
}

; Function Attrs: nounwind readonly
declare i32 @isalpha(i32) #2

; Function Attrs: nounwind readonly
declare i32 @isalnum(i32) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @operatorKind(%struct.sVString* %operator, i8* %found) #0 {
entry:
  %operator.addr = alloca %struct.sVString*, align 8
  %found.addr = alloca i8*, align 8
  %result = alloca i32, align 4
  %kw = alloca i32, align 4
  store %struct.sVString* %operator, %struct.sVString** %operator.addr, align 8
  store i8* %found, i8** %found.addr, align 8
  store i32 -1, i32* %result, align 4
  %0 = load %struct.sVString*, %struct.sVString** %operator.addr, align 8
  %call = call i32 @analyzeOperator(%struct.sVString* %0)
  store i32 %call, i32* %kw, align 4
  %1 = load i32, i32* %kw, align 4
  %cmp = icmp ne i32 %1, -1
  %2 = load i8*, i8** %found.addr, align 8
  %frombool = zext i1 %cmp to i8
  store i8 %frombool, i8* %2, align 1
  %3 = load i8*, i8** %found.addr, align 8
  %4 = load i8, i8* %3, align 1
  %tobool = trunc i8 %4 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %kw, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [17 x %struct.opKind], [17 x %struct.opKind]* @OpKinds, i64 0, i64 %idxprom
  %kind = getelementptr inbounds %struct.opKind, %struct.opKind* %arrayidx, i32 0, i32 1
  %6 = load i32, i32* %kind, align 4
  store i32 %6, i32* %result, align 4
  br label %do.body

do.body:                                          ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  %7 = load i32, i32* %result, align 4
  ret i32 %7
}

declare i32 @makeSimpleTag(%struct.sVString*, i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @isDefineOperator(%struct.sVString* %operator) #0 {
entry:
  %operator.addr = alloca %struct.sVString*, align 8
  %op = alloca i8*, align 8
  %length = alloca i64, align 8
  %result = alloca i8, align 1
  store %struct.sVString* %operator, %struct.sVString** %operator.addr, align 8
  %0 = load %struct.sVString*, %struct.sVString** %operator.addr, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %0, i32 0, i32 2
  %1 = load i8*, i8** %buffer, align 8
  store i8* %1, i8** %op, align 8
  %2 = load %struct.sVString*, %struct.sVString** %operator.addr, align 8
  %length1 = getelementptr inbounds %struct.sVString, %struct.sVString* %2, i32 0, i32 0
  %3 = load i64, i64* %length1, align 8
  store i64 %3, i64* %length, align 8
  %4 = load i64, i64* %length, align 8
  %cmp = icmp ugt i64 %4, 0
  br i1 %cmp, label %land.lhs.true, label %land.end19

land.lhs.true:                                    ; preds = %entry
  %5 = load i8*, i8** %op, align 8
  %6 = load i8, i8* %5, align 1
  %conv = zext i8 %6 to i32
  %call = call i32 @toupper(i32 %conv) #3
  %cmp2 = icmp eq i32 %call, 68
  br i1 %cmp2, label %land.rhs, label %land.end19

land.rhs:                                         ; preds = %land.lhs.true
  %7 = load i64, i64* %length, align 8
  %cmp4 = icmp eq i64 %7, 2
  br i1 %cmp4, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.rhs
  %8 = load i64, i64* %length, align 8
  %cmp6 = icmp eq i64 %8, 4
  br i1 %cmp6, label %land.lhs.true8, label %lor.rhs

land.lhs.true8:                                   ; preds = %lor.lhs.false
  %9 = load i8*, i8** %op, align 8
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 2
  %10 = load i8, i8* %arrayidx, align 1
  %conv9 = zext i8 %10 to i32
  %cmp10 = icmp eq i32 %conv9, 46
  br i1 %cmp10, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true8, %lor.lhs.false
  %11 = load i64, i64* %length, align 8
  %cmp12 = icmp eq i64 %11, 5
  br i1 %cmp12, label %land.rhs14, label %land.end

land.rhs14:                                       ; preds = %lor.rhs
  %12 = load i8*, i8** %op, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 3
  %13 = load i8, i8* %arrayidx15, align 1
  %conv16 = zext i8 %13 to i32
  %cmp17 = icmp eq i32 %conv16, 46
  br label %land.end

land.end:                                         ; preds = %land.rhs14, %lor.rhs
  %14 = phi i1 [ false, %lor.rhs ], [ %cmp17, %land.rhs14 ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %land.lhs.true8, %land.rhs
  %15 = phi i1 [ true, %land.lhs.true8 ], [ true, %land.rhs ], [ %14, %land.end ]
  br label %land.end19

land.end19:                                       ; preds = %lor.end, %land.lhs.true, %entry
  %16 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %15, %lor.end ]
  %frombool = zext i1 %16 to i8
  store i8 %frombool, i8* %result, align 1
  %17 = load i8, i8* %result, align 1
  %tobool = trunc i8 %17 to i1
  ret i1 %tobool
}

declare %struct.sTagEntryInfo* @getEntryInCorkQueue(i32) #1

declare i64 @getInputLineNumber() #1

declare i32 @makeSimpleRefTag(%struct.sVString*, i32, i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @analyzeOperator(%struct.sVString* %op) #0 {
entry:
  %op.addr = alloca %struct.sVString*, align 8
  %keyword = alloca %struct.sVString*, align 8
  %result = alloca i32, align 4
  store %struct.sVString* %op, %struct.sVString** %op.addr, align 8
  %call = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call, %struct.sVString** %keyword, align 8
  %0 = load %struct.sVString*, %struct.sVString** %keyword, align 8
  %1 = load %struct.sVString*, %struct.sVString** %op.addr, align 8
  call void @vStringCopyToLower(%struct.sVString* %0, %struct.sVString* %1)
  %2 = load %struct.sVString*, %struct.sVString** %keyword, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %2, i32 0, i32 2
  %3 = load i8*, i8** %buffer, align 8
  %4 = load i32, i32* @Lang_asm, align 4
  %call1 = call i32 @lookupKeyword(i8* %3, i32 %4)
  store i32 %call1, i32* %result, align 4
  %5 = load %struct.sVString*, %struct.sVString** %keyword, align 8
  call void @vStringDelete(%struct.sVString* %5)
  %6 = load i32, i32* %result, align 4
  ret i32 %6
}

declare void @vStringCopyToLower(%struct.sVString*, %struct.sVString*) #1

declare i32 @lookupKeyword(i8*, i32) #1

; Function Attrs: nounwind readonly
declare i32 @toupper(i32) #2

declare i8* @selectByArrowOfR(%struct._MIO*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 10.0.0 (https://github.com/holzschu/clang.git 0cfc630fbdb62e96720b611a57123ef3eb13e297) (https://github.com/holzschu/llvm.git 0d8a71e39b28502c24718f7e74b5acbcfe36dfe0)"}
