; ModuleID = 'cobol.c'
source_filename = "cobol.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-ios11.0.0"

%struct.tagRegexTable = type { i8*, i8*, i8*, i8*, i8*, i8 }
%struct.sKindDefinition = type { i8, i8, i8*, i8*, i8, i32, %struct.sRoleDesc*, %struct.sScopeSeparator*, i32, i32, i32, %struct.sKindDefinition*, %struct.sKindDefinition* }
%struct.sRoleDesc = type { i8, i8*, i8* }
%struct.sScopeSeparator = type { i32, i8* }
%struct.keywordTable = type { i8*, i32 }
%struct.sParserDefinition = type { i8*, %struct.sKindDefinition*, i32, i8**, i8**, i8**, void (i32)*, void (i32, i1)*, void ()*, i32 (i32)*, i8* (%struct._MIO*, i32*, i32)**, i32, i8, i8, i8, i8, %struct.tagRegexTable*, i32, %struct.keywordTable*, i32, %struct.sTagXpathTableTable*, i32, i8, %struct.sFieldDefinition*, i32, %struct.sXtagDefinition*, i32, %struct.sParserDependency*, i32, %struct.sParameterHandlerTable*, i32, %struct.sXpathFileSpec*, i32, i32, i8 }
%struct._MIO = type opaque
%struct.sTagXpathTableTable = type { %struct.sTagXpathTable*, i32 }
%struct.sTagXpathTable = type { i8*, i32, %union.anon, i8* }
%union.anon = type { %struct.sTagXpathMakeTagSpec }
%struct.sTagXpathMakeTagSpec = type { i32, i32, void (i8*, %struct.sTagXpathMakeTagSpec*, %struct.sTagEntryInfo*, i8*)* }
%struct.sTagEntryInfo = type opaque
%struct.sFieldDefinition = type { i8, i8*, i8*, i8, [5 x i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)*], i1 (%struct.sTagEntryInfo*)*, i32, i32 }
%struct.sVString = type { i64, i64, i8* }
%struct.sXtagDefinition = type { i8, i8, i8*, i8*, i1 (%struct.sXtagDefinition*)*, i1 (%struct.sXtagDefinition*)*, i32 }
%struct.sParserDependency = type { i32, i8*, i8* }
%struct.sParameterHandlerTable = type { i8*, i8*, void (i32, i8*, i8*)* }
%struct.sXpathFileSpec = type { i8*, i8*, i8*, i8*, i8*, i8* }
%struct.regexMatch = type { i64, i64 }

@.str = private unnamed_addr constant [6 x i8] c"Cobol\00", align 1
@extensions = internal constant [5 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* null], align 8
@cobolTagRegexTable = internal global [6 x %struct.tagRegexTable] [%struct.tagRegexTable { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0), i8* null, i8 0 }, %struct.tagRegexTable { i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), i8* null, i8 0 }, %struct.tagRegexTable { i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), i8* null, i8 0 }, %struct.tagRegexTable { i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), i8* null, i8 0 }, %struct.tagRegexTable { i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), i8* null, i8 0 }, %struct.tagRegexTable { i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), i8* null, i8 0 }], align 8
@CobolKinds = internal global [3 x %struct.sKindDefinition] [%struct.sKindDefinition { i8 1, i8 112, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 100, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 83, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.29, i32 0, i32 0), i8 1, i32 1, %struct.sRoleDesc* getelementptr inbounds ([1 x %struct.sRoleDesc], [1 x %struct.sRoleDesc]* @CobolSourcefileRoles, i32 0, i32 0), %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }], align 8
@cobolKeywordTable = internal constant [4 x %struct.keywordTable] [%struct.keywordTable { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i32 0, i32 0), i32 0 }, %struct.keywordTable { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i32 0, i32 0), i32 0 }, %struct.keywordTable { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0), i32 0 }, %struct.keywordTable { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i32 0, i32 0), i32 0 }], align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"cbl\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"cob\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"CBL\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"COB\00", align 1
@initializeCobolParser.cobol = internal global i32 0, align 4
@.str.5 = private unnamed_addr constant [116 x i8] c"^.......[ \09]*[0-9]+[ \09]+([A-Z0-9][A-Z0-9-]*)[ \09]+(BLANK|OCCURS|IS|JUST|PIC|REDEFINES|RENAMES|SIGN|SYNC|USAGE|VALUE)\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"{icase}\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"^.......[ \09]*([A-Z0-9][A-Z0-9-]*)\\.\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"^[ \09]*COPY[ \09]+([A-Z0-9][A-Z0-9-]*)\\.\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"......\\*.*\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"{exclusive}\00", align 1
@.str.12 = private unnamed_addr constant [47 x i8] c"^.......[ \09]*[FSR]D[ \09]+([A-Z0-9][A-Z0-9-]*)\\.\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"\\1\00", align 1
@.str.14 = private unnamed_addr constant [38 x i8] c"f,file,file descriptions (FD, SD, RD)\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.16 = private unnamed_addr constant [47 x i8] c"^.......[ \09]*[0-9]+[ \09]+([A-Z0-9][A-Z0-9-]*)\\.\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"g,group,group items\00", align 1
@.str.18 = private unnamed_addr constant [53 x i8] c"^.......[ \09]*PROGRAM-ID\\.[ \09]+([A-Z0-9][A-Z0-9-]*)\\.\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"P,program,program ids\00", align 1
@.str.20 = private unnamed_addr constant [48 x i8] c"^.......[ \09]*([A-Z0-9][A-Z0-9-]*)[ \09]+SECTION\\.\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"s,section,sections\00", align 1
@.str.22 = private unnamed_addr constant [49 x i8] c"^.......[ \09]*([A-Z0-9][A-Z0-9-]*)[ \09]+DIVISION\\.\00", align 1
@.str.23 = private unnamed_addr constant [21 x i8] c"D,division,divisions\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"paragraph\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"paragraphs\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"data items\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"sourcefile\00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c"source code file\00", align 1
@CobolSourcefileRoles = internal global [1 x %struct.sRoleDesc] [%struct.sRoleDesc { i8 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.31, i32 0, i32 0) }], align 8
@.str.30 = private unnamed_addr constant [7 x i8] c"copied\00", align 1
@.str.31 = private unnamed_addr constant [22 x i8] c"copied in source file\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"CONTINUE\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"END-EXEC\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"EXIT\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"FILLER\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sParserDefinition* @CobolParser() #0 {
entry:
  %def = alloca %struct.sParserDefinition*, align 8
  %call = call %struct.sParserDefinition* @parserNew(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store %struct.sParserDefinition* %call, %struct.sParserDefinition** %def, align 8
  %0 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %extensions = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %0, i32 0, i32 3
  store i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @extensions, i64 0, i64 0), i8*** %extensions, align 8
  %1 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %initialize = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %1, i32 0, i32 6
  store void (i32)* @initializeCobolParser, void (i32)** %initialize, align 8
  %2 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %tagRegexTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %2, i32 0, i32 16
  store %struct.tagRegexTable* getelementptr inbounds ([6 x %struct.tagRegexTable], [6 x %struct.tagRegexTable]* @cobolTagRegexTable, i64 0, i64 0), %struct.tagRegexTable** %tagRegexTable, align 8
  %3 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %tagRegexCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %3, i32 0, i32 17
  store i32 6, i32* %tagRegexCount, align 8
  %4 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %method = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %4, i32 0, i32 11
  store i32 3, i32* %method, align 8
  %5 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %5, i32 0, i32 1
  store %struct.sKindDefinition* getelementptr inbounds ([3 x %struct.sKindDefinition], [3 x %struct.sKindDefinition]* @CobolKinds, i64 0, i64 0), %struct.sKindDefinition** %kindTable, align 8
  %6 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %6, i32 0, i32 2
  store i32 3, i32* %kindCount, align 8
  %7 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %keywordTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %7, i32 0, i32 18
  store %struct.keywordTable* getelementptr inbounds ([4 x %struct.keywordTable], [4 x %struct.keywordTable]* @cobolKeywordTable, i64 0, i64 0), %struct.keywordTable** %keywordTable, align 8
  %8 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %keywordCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %8, i32 0, i32 19
  store i32 4, i32* %keywordCount, align 8
  %9 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  ret %struct.sParserDefinition* %9
}

declare %struct.sParserDefinition* @parserNew(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @initializeCobolParser(i32 %language) #0 {
entry:
  %language.addr = alloca i32, align 4
  store i32 %language, i32* %language.addr, align 4
  %0 = load i32, i32* %language.addr, align 4
  store i32 %0, i32* @initializeCobolParser.cobol, align 4
  %1 = load i32, i32* @initializeCobolParser.cobol, align 4
  call void @addLanguageCallbackRegex(i32 %1, i8* getelementptr inbounds ([116 x i8], [116 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i1 (i8*, %struct.regexMatch*, i32, i8*)* @make_tag_for_data_maybe, i8* null, i8* bitcast (i32* @initializeCobolParser.cobol to i8*))
  %2 = load i32, i32* @initializeCobolParser.cobol, align 4
  call void @addLanguageCallbackRegex(i32 %2, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i1 (i8*, %struct.regexMatch*, i32, i8*)* @make_tag_for_paragraph_maybe, i8* null, i8* bitcast (i32* @initializeCobolParser.cobol to i8*))
  %3 = load i32, i32* @initializeCobolParser.cobol, align 4
  call void @addLanguageCallbackRegex(i32 %3, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i1 (i8*, %struct.regexMatch*, i32, i8*)* @make_tag_for_copied_in_sourcefile, i8* null, i8* null)
  ret void
}

declare void @addLanguageCallbackRegex(i32, i8*, i8*, i1 (i8*, %struct.regexMatch*, i32, i8*)*, i8*, i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @make_tag_for_data_maybe(i8* %line, %struct.regexMatch* %matches, i32 %count, i8* %data) #0 {
entry:
  %line.addr = alloca i8*, align 8
  %matches.addr = alloca %struct.regexMatch*, align 8
  %count.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  store %struct.regexMatch* %matches, %struct.regexMatch** %matches.addr, align 8
  store i32 %count, i32* %count.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %line.addr, align 8
  %1 = load %struct.regexMatch*, %struct.regexMatch** %matches.addr, align 8
  %2 = load i32, i32* %count.addr, align 4
  %3 = load i8*, i8** %data.addr, align 8
  %4 = bitcast i8* %3 to i32*
  %5 = load i32, i32* %4, align 4
  call void @cobol_make_tag_maybe(i8* %0, %struct.regexMatch* %1, i32 %2, i32 %5, i32 1, i32 1)
  ret i1 true
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @make_tag_for_paragraph_maybe(i8* %line, %struct.regexMatch* %matches, i32 %count, i8* %data) #0 {
entry:
  %line.addr = alloca i8*, align 8
  %matches.addr = alloca %struct.regexMatch*, align 8
  %count.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  store %struct.regexMatch* %matches, %struct.regexMatch** %matches.addr, align 8
  store i32 %count, i32* %count.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %line.addr, align 8
  %1 = load %struct.regexMatch*, %struct.regexMatch** %matches.addr, align 8
  %2 = load i32, i32* %count.addr, align 4
  %3 = load i8*, i8** %data.addr, align 8
  %4 = bitcast i8* %3 to i32*
  %5 = load i32, i32* %4, align 4
  call void @cobol_make_tag_maybe(i8* %0, %struct.regexMatch* %1, i32 %2, i32 %5, i32 1, i32 0)
  ret i1 true
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @make_tag_for_copied_in_sourcefile(i8* %line, %struct.regexMatch* %matches, i32 %count, i8* %data) #0 {
entry:
  %line.addr = alloca i8*, align 8
  %matches.addr = alloca %struct.regexMatch*, align 8
  %count.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %name = alloca %struct.sVString*, align 8
  store i8* %line, i8** %line.addr, align 8
  store %struct.regexMatch* %matches, %struct.regexMatch** %matches.addr, align 8
  store i32 %count, i32* %count.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i32, i32* %count.addr, align 4
  %cmp = icmp ugt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call, %struct.sVString** %name, align 8
  %1 = load %struct.sVString*, %struct.sVString** %name, align 8
  %2 = load i8*, i8** %line.addr, align 8
  %3 = load %struct.regexMatch*, %struct.regexMatch** %matches.addr, align 8
  %arrayidx = getelementptr inbounds %struct.regexMatch, %struct.regexMatch* %3, i64 1
  %start = getelementptr inbounds %struct.regexMatch, %struct.regexMatch* %arrayidx, i32 0, i32 0
  %4 = load i64, i64* %start, align 8
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %4
  %5 = load %struct.regexMatch*, %struct.regexMatch** %matches.addr, align 8
  %arrayidx1 = getelementptr inbounds %struct.regexMatch, %struct.regexMatch* %5, i64 1
  %length = getelementptr inbounds %struct.regexMatch, %struct.regexMatch* %arrayidx1, i32 0, i32 1
  %6 = load i64, i64* %length, align 8
  call void @vStringNCopyS(%struct.sVString* %1, i8* %add.ptr, i64 %6)
  %7 = load %struct.sVString*, %struct.sVString** %name, align 8
  %call2 = call i32 @makeSimpleRefTag(%struct.sVString* %7, i32 2, i32 0)
  %8 = load %struct.sVString*, %struct.sVString** %name, align 8
  call void @vStringDelete(%struct.sVString* %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i1 true
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @cobol_make_tag_maybe(i8* %line, %struct.regexMatch* %matches, i32 %count, i32 %cobol, i32 %matchIndex, i32 %kindIndex) #0 {
entry:
  %line.addr = alloca i8*, align 8
  %matches.addr = alloca %struct.regexMatch*, align 8
  %count.addr = alloca i32, align 4
  %cobol.addr = alloca i32, align 4
  %matchIndex.addr = alloca i32, align 4
  %kindIndex.addr = alloca i32, align 4
  %name = alloca %struct.sVString*, align 8
  store i8* %line, i8** %line.addr, align 8
  store %struct.regexMatch* %matches, %struct.regexMatch** %matches.addr, align 8
  store i32 %count, i32* %count.addr, align 4
  store i32 %cobol, i32* %cobol.addr, align 4
  store i32 %matchIndex, i32* %matchIndex.addr, align 4
  store i32 %kindIndex, i32* %kindIndex.addr, align 4
  %0 = load i32, i32* %count.addr, align 4
  %cmp = icmp ugt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  %call = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call, %struct.sVString** %name, align 8
  %1 = load %struct.sVString*, %struct.sVString** %name, align 8
  %2 = load i8*, i8** %line.addr, align 8
  %3 = load %struct.regexMatch*, %struct.regexMatch** %matches.addr, align 8
  %4 = load i32, i32* %matchIndex.addr, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds %struct.regexMatch, %struct.regexMatch* %3, i64 %idxprom
  %start = getelementptr inbounds %struct.regexMatch, %struct.regexMatch* %arrayidx, i32 0, i32 0
  %5 = load i64, i64* %start, align 8
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %5
  %6 = load %struct.regexMatch*, %struct.regexMatch** %matches.addr, align 8
  %7 = load i32, i32* %matchIndex.addr, align 4
  %idxprom1 = sext i32 %7 to i64
  %arrayidx2 = getelementptr inbounds %struct.regexMatch, %struct.regexMatch* %6, i64 %idxprom1
  %length = getelementptr inbounds %struct.regexMatch, %struct.regexMatch* %arrayidx2, i32 0, i32 1
  %8 = load i64, i64* %length, align 8
  call void @vStringNCopyS(%struct.sVString* %1, i8* %add.ptr, i64 %8)
  %9 = load %struct.sVString*, %struct.sVString** %name, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %9, i32 0, i32 2
  %10 = load i8*, i8** %buffer, align 8
  %11 = load i32, i32* %cobol.addr, align 4
  %call3 = call i32 @lookupCaseKeyword(i8* %10, i32 %11)
  %cmp4 = icmp eq i32 %call3, -1
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  %12 = load %struct.sVString*, %struct.sVString** %name, align 8
  %13 = load i32, i32* %kindIndex.addr, align 4
  %call6 = call i32 @makeSimpleTag(%struct.sVString* %12, i32 %13)
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then
  %14 = load %struct.sVString*, %struct.sVString** %name, align 8
  call void @vStringDelete(%struct.sVString* %14)
  br label %if.end7

if.end7:                                          ; preds = %if.end, %entry
  ret void
}

declare %struct.sVString* @vStringNew() #1

declare void @vStringNCopyS(%struct.sVString*, i8*, i64) #1

declare i32 @lookupCaseKeyword(i8*, i32) #1

declare i32 @makeSimpleTag(%struct.sVString*, i32) #1

declare void @vStringDelete(%struct.sVString*) #1

declare i32 @makeSimpleRefTag(%struct.sVString*, i32, i32) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 10.0.0 (https://github.com/holzschu/clang.git 0cfc630fbdb62e96720b611a57123ef3eb13e297) (https://github.com/holzschu/llvm.git 0d8a71e39b28502c24718f7e74b5acbcfe36dfe0)"}
