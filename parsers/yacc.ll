; ModuleID = 'yacc.c'
source_filename = "yacc.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-ios11.0.0"

%struct.tagRegexTable = type { i8*, i8*, i8*, i8*, i8*, i8 }
%struct.yaccParserState = type { i8, i32 }
%struct.sParserDefinition = type { i8*, %struct.sKindDefinition*, i32, i8**, i8**, i8**, void (i32)*, void (i32, i1)*, void ()*, i32 (i32)*, i8* (%struct._MIO*, i32*, i32)**, i32, i8, i8, i8, i8, %struct.tagRegexTable*, i32, %struct.keywordTable*, i32, %struct.sTagXpathTableTable*, i32, i8, %struct.sFieldDefinition*, i32, %struct.sXtagDefinition*, i32, %struct.sParserDependency*, i32, %struct.sParameterHandlerTable*, i32, %struct.sXpathFileSpec*, i32, i32, i8 }
%struct.sKindDefinition = type { i8, i8, i8*, i8*, i8, i32, %struct.sRoleDesc*, %struct.sScopeSeparator*, i32, i32, i32, %struct.sKindDefinition*, %struct.sKindDefinition* }
%struct.sRoleDesc = type { i8, i8*, i8* }
%struct.sScopeSeparator = type { i32, i8* }
%struct._MIO = type opaque
%struct.keywordTable = type { i8*, i32 }
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

@.str = private unnamed_addr constant [5 x i8] c"YACC\00", align 1
@extensions = internal constant [2 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), i8* null], align 8
@yaccTagRegexTable = internal global [2 x %struct.tagRegexTable] [%struct.tagRegexTable { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0), i8* null, i8* getelementptr inbounds (%struct.yaccParserState, %struct.yaccParserState* @parserState, i32 0, i32 0), i8 0 }, %struct.tagRegexTable { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0), i8* null, i8* getelementptr inbounds (%struct.yaccParserState, %struct.yaccParserState* @parserState, i32 0, i32 0), i8 0 }], align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"^%\\{\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"{exclusive}\00", align 1
@parserState = internal global %struct.yaccParserState zeroinitializer, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"^%\\}\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"^%%\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"^%union\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"^}\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"^([A-Za-z][A-Za-z_0-9]+)[ \09]*:\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"\\1\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"l,label,labels\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"^([A-Za-z][A-Za-z_0-9]+)[ \09]*$\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sParserDefinition* @YaccParser() #0 {
entry:
  %def = alloca %struct.sParserDefinition*, align 8
  %call = call %struct.sParserDefinition* @parserNew(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.sParserDefinition* %call, %struct.sParserDefinition** %def, align 8
  %0 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %extensions = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %0, i32 0, i32 3
  store i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @extensions, i64 0, i64 0), i8*** %extensions, align 8
  %1 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %initialize = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %1, i32 0, i32 6
  store void (i32)* @initializeYaccParser, void (i32)** %initialize, align 8
  %2 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %method = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %2, i32 0, i32 11
  store i32 2, i32* %method, align 8
  %3 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %parser = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %3, i32 0, i32 8
  store void ()* @runYaccParser, void ()** %parser, align 8
  %4 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %tagRegexTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %4, i32 0, i32 16
  store %struct.tagRegexTable* getelementptr inbounds ([2 x %struct.tagRegexTable], [2 x %struct.tagRegexTable]* @yaccTagRegexTable, i64 0, i64 0), %struct.tagRegexTable** %tagRegexTable, align 8
  %5 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %tagRegexCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %5, i32 0, i32 17
  store i32 2, i32* %tagRegexCount, align 8
  %6 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  ret %struct.sParserDefinition* %6
}

declare %struct.sParserDefinition* @parserNew(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @initializeYaccParser(i32 %language) #0 {
entry:
  %language.addr = alloca i32, align 4
  store i32 %language, i32* %language.addr, align 4
  %0 = load i32, i32* %language.addr, align 4
  call void @addLanguageCallbackRegex(i32 %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i1 (i8*, %struct.regexMatch*, i32, i8*)* @enter_c_prologue, i8* null, i8* getelementptr inbounds (%struct.yaccParserState, %struct.yaccParserState* @parserState, i32 0, i32 0))
  %1 = load i32, i32* %language.addr, align 4
  call void @addLanguageCallbackRegex(i32 %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i1 (i8*, %struct.regexMatch*, i32, i8*)* @leave_c_prologue, i8* null, i8* getelementptr inbounds (%struct.yaccParserState, %struct.yaccParserState* @parserState, i32 0, i32 0))
  %2 = load i32, i32* %language.addr, align 4
  call void @addLanguageCallbackRegex(i32 %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i1 (i8*, %struct.regexMatch*, i32, i8*)* @change_section, i8* null, i8* getelementptr inbounds (%struct.yaccParserState, %struct.yaccParserState* @parserState, i32 0, i32 0))
  %3 = load i32, i32* %language.addr, align 4
  call void @addLanguageCallbackRegex(i32 %3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i1 (i8*, %struct.regexMatch*, i32, i8*)* @enter_union, i8* null, i8* getelementptr inbounds (%struct.yaccParserState, %struct.yaccParserState* @parserState, i32 0, i32 0))
  %4 = load i32, i32* %language.addr, align 4
  call void @addLanguageCallbackRegex(i32 %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i1 (i8*, %struct.regexMatch*, i32, i8*)* @leave_union, i8* null, i8* getelementptr inbounds (%struct.yaccParserState, %struct.yaccParserState* @parserState, i32 0, i32 0))
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @runYaccParser() #0 {
entry:
  %last_area = alloca i32, align 4
  %c_input = alloca i64, align 8
  %c_source = alloca i64, align 8
  %c_end = alloca i64, align 8
  %c_end25 = alloca i64, align 8
  store i64 0, i64* %c_input, align 8
  store i64 0, i64* %c_source, align 8
  store i8 1, i8* getelementptr inbounds (%struct.yaccParserState, %struct.yaccParserState* @parserState, i32 0, i32 0), align 4
  store i64 0, i64* %c_input, align 8
  store i64 0, i64* %c_source, align 8
  store i32 0, i32* getelementptr inbounds (%struct.yaccParserState, %struct.yaccParserState* @parserState, i32 0, i32 1), align 4
  %0 = load i32, i32* getelementptr inbounds (%struct.yaccParserState, %struct.yaccParserState* @parserState, i32 0, i32 1), align 4
  store i32 %0, i32* %last_area, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end39, %entry
  %call = call i8* @readLineFromInputFile()
  %cmp = icmp ne i8* %call, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, i32* %last_area, align 4
  %cmp1 = icmp eq i32 %1, 0
  br i1 %cmp1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %while.body
  %2 = load i32, i32* getelementptr inbounds (%struct.yaccParserState, %struct.yaccParserState* @parserState, i32 0, i32 1), align 4
  %cmp2 = icmp eq i32 %2, 1
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %call3 = call i8* @readLineFromInputFile()
  %tobool = icmp ne i8* %call3, null
  br i1 %tobool, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  %call5 = call i64 @getInputLineNumber()
  store i64 %call5, i64* %c_input, align 8
  %call6 = call i64 @getSourceLineNumber()
  store i64 %call6, i64* %c_source, align 8
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then
  br label %if.end39

if.else:                                          ; preds = %land.lhs.true, %while.body
  %3 = load i32, i32* %last_area, align 4
  %cmp7 = icmp eq i32 %3, 1
  br i1 %cmp7, label %land.lhs.true8, label %if.else13

land.lhs.true8:                                   ; preds = %if.else
  %4 = load i32, i32* getelementptr inbounds (%struct.yaccParserState, %struct.yaccParserState* @parserState, i32 0, i32 1), align 4
  %cmp9 = icmp eq i32 %4, 0
  br i1 %cmp9, label %if.then10, label %if.else13

if.then10:                                        ; preds = %land.lhs.true8
  %call11 = call i64 @getInputLineNumber()
  store i64 %call11, i64* %c_end, align 8
  %5 = load i64, i64* %c_input, align 8
  %6 = load i64, i64* %c_end, align 8
  %7 = load i64, i64* %c_source, align 8
  %call12 = call i32 @makePromise(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i64 %5, i64 0, i64 %6, i64 0, i64 %7)
  store i64 0, i64* %c_input, align 8
  store i64 0, i64* %c_source, align 8
  br label %if.end38

if.else13:                                        ; preds = %land.lhs.true8, %if.else
  %8 = load i32, i32* %last_area, align 4
  %cmp14 = icmp eq i32 %8, 0
  br i1 %cmp14, label %land.lhs.true15, label %if.else20

land.lhs.true15:                                  ; preds = %if.else13
  %9 = load i32, i32* getelementptr inbounds (%struct.yaccParserState, %struct.yaccParserState* @parserState, i32 0, i32 1), align 4
  %cmp16 = icmp eq i32 %9, 2
  br i1 %cmp16, label %if.then17, label %if.else20

if.then17:                                        ; preds = %land.lhs.true15
  %call18 = call i64 @getInputLineNumber()
  store i64 %call18, i64* %c_input, align 8
  %call19 = call i64 @getInputLineNumber()
  store i64 %call19, i64* %c_source, align 8
  br label %if.end37

if.else20:                                        ; preds = %land.lhs.true15, %if.else13
  %10 = load i32, i32* %last_area, align 4
  %cmp21 = icmp eq i32 %10, 2
  br i1 %cmp21, label %land.lhs.true22, label %if.else28

land.lhs.true22:                                  ; preds = %if.else20
  %11 = load i32, i32* getelementptr inbounds (%struct.yaccParserState, %struct.yaccParserState* @parserState, i32 0, i32 1), align 4
  %cmp23 = icmp eq i32 %11, 0
  br i1 %cmp23, label %if.then24, label %if.else28

if.then24:                                        ; preds = %land.lhs.true22
  %call26 = call i64 @getInputLineNumber()
  store i64 %call26, i64* %c_end25, align 8
  %12 = load i64, i64* %c_input, align 8
  %13 = load i64, i64* %c_end25, align 8
  %14 = load i64, i64* %c_source, align 8
  %call27 = call i32 @makePromise(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i64 %12, i64 1, i64 %13, i64 1, i64 %14)
  store i64 0, i64* %c_input, align 8
  store i64 0, i64* %c_source, align 8
  br label %if.end36

if.else28:                                        ; preds = %land.lhs.true22, %if.else20
  %15 = load i32, i32* getelementptr inbounds (%struct.yaccParserState, %struct.yaccParserState* @parserState, i32 0, i32 1), align 4
  %cmp29 = icmp eq i32 %15, 4
  br i1 %cmp29, label %if.then30, label %if.end35

if.then30:                                        ; preds = %if.else28
  %call31 = call i8* @readLineFromInputFile()
  %tobool32 = icmp ne i8* %call31, null
  br i1 %tobool32, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.then30
  call void @make_promise_for_epilogue()
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %if.then30
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.else28
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.then24
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.then17
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %if.then10
  br label %if.end39

if.end39:                                         ; preds = %if.end38, %if.end
  %16 = load i32, i32* getelementptr inbounds (%struct.yaccParserState, %struct.yaccParserState* @parserState, i32 0, i32 1), align 4
  store i32 %16, i32* %last_area, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

declare void @addLanguageCallbackRegex(i32, i8*, i8*, i1 (i8*, %struct.regexMatch*, i32, i8*)*, i8*, i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @enter_c_prologue(i8* %line, %struct.regexMatch* %matches, i32 %count, i8* %data) #0 {
entry:
  %line.addr = alloca i8*, align 8
  %matches.addr = alloca %struct.regexMatch*, align 8
  %count.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %state = alloca %struct.yaccParserState*, align 8
  store i8* %line, i8** %line.addr, align 8
  store %struct.regexMatch* %matches, %struct.regexMatch** %matches.addr, align 8
  store i32 %count, i32* %count.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.yaccParserState*
  store %struct.yaccParserState* %1, %struct.yaccParserState** %state, align 8
  %2 = load %struct.yaccParserState*, %struct.yaccParserState** %state, align 8
  %area = getelementptr inbounds %struct.yaccParserState, %struct.yaccParserState* %2, i32 0, i32 1
  store i32 1, i32* %area, align 4
  ret i1 true
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @leave_c_prologue(i8* %line, %struct.regexMatch* %matches, i32 %count, i8* %data) #0 {
entry:
  %line.addr = alloca i8*, align 8
  %matches.addr = alloca %struct.regexMatch*, align 8
  %count.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %state = alloca %struct.yaccParserState*, align 8
  store i8* %line, i8** %line.addr, align 8
  store %struct.regexMatch* %matches, %struct.regexMatch** %matches.addr, align 8
  store i32 %count, i32* %count.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.yaccParserState*
  store %struct.yaccParserState* %1, %struct.yaccParserState** %state, align 8
  %2 = load %struct.yaccParserState*, %struct.yaccParserState** %state, align 8
  %area = getelementptr inbounds %struct.yaccParserState, %struct.yaccParserState* %2, i32 0, i32 1
  store i32 0, i32* %area, align 4
  ret i1 true
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @change_section(i8* %line, %struct.regexMatch* %matches, i32 %count, i8* %data) #0 {
entry:
  %line.addr = alloca i8*, align 8
  %matches.addr = alloca %struct.regexMatch*, align 8
  %count.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %state = alloca %struct.yaccParserState*, align 8
  store i8* %line, i8** %line.addr, align 8
  store %struct.regexMatch* %matches, %struct.regexMatch** %matches.addr, align 8
  store i32 %count, i32* %count.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.yaccParserState*
  store %struct.yaccParserState* %1, %struct.yaccParserState** %state, align 8
  %2 = load %struct.yaccParserState*, %struct.yaccParserState** %state, align 8
  %not_in_grammar_rules = getelementptr inbounds %struct.yaccParserState, %struct.yaccParserState* %2, i32 0, i32 0
  %3 = load i8, i8* %not_in_grammar_rules, align 4
  %tobool = trunc i8 %3 to i1
  %lnot = xor i1 %tobool, true
  %4 = load %struct.yaccParserState*, %struct.yaccParserState** %state, align 8
  %not_in_grammar_rules1 = getelementptr inbounds %struct.yaccParserState, %struct.yaccParserState* %4, i32 0, i32 0
  %frombool = zext i1 %lnot to i8
  store i8 %frombool, i8* %not_in_grammar_rules1, align 4
  %5 = load %struct.yaccParserState*, %struct.yaccParserState** %state, align 8
  %area = getelementptr inbounds %struct.yaccParserState, %struct.yaccParserState* %5, i32 0, i32 1
  %6 = load i32, i32* %area, align 4
  %cmp = icmp eq i32 %6, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load %struct.yaccParserState*, %struct.yaccParserState** %state, align 8
  %area2 = getelementptr inbounds %struct.yaccParserState, %struct.yaccParserState* %7, i32 0, i32 1
  store i32 4, i32* %area2, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %8 = load %struct.yaccParserState*, %struct.yaccParserState** %state, align 8
  %area3 = getelementptr inbounds %struct.yaccParserState, %struct.yaccParserState* %8, i32 0, i32 1
  store i32 3, i32* %area3, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i1 true
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @enter_union(i8* %line, %struct.regexMatch* %matches, i32 %count, i8* %data) #0 {
entry:
  %line.addr = alloca i8*, align 8
  %matches.addr = alloca %struct.regexMatch*, align 8
  %count.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %state = alloca %struct.yaccParserState*, align 8
  store i8* %line, i8** %line.addr, align 8
  store %struct.regexMatch* %matches, %struct.regexMatch** %matches.addr, align 8
  store i32 %count, i32* %count.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.yaccParserState*
  store %struct.yaccParserState* %1, %struct.yaccParserState** %state, align 8
  %2 = load %struct.yaccParserState*, %struct.yaccParserState** %state, align 8
  %area = getelementptr inbounds %struct.yaccParserState, %struct.yaccParserState* %2, i32 0, i32 1
  %3 = load i32, i32* %area, align 4
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.yaccParserState*, %struct.yaccParserState** %state, align 8
  %area1 = getelementptr inbounds %struct.yaccParserState, %struct.yaccParserState* %4, i32 0, i32 1
  store i32 2, i32* %area1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i1 true
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @leave_union(i8* %line, %struct.regexMatch* %matches, i32 %count, i8* %data) #0 {
entry:
  %line.addr = alloca i8*, align 8
  %matches.addr = alloca %struct.regexMatch*, align 8
  %count.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %state = alloca %struct.yaccParserState*, align 8
  store i8* %line, i8** %line.addr, align 8
  store %struct.regexMatch* %matches, %struct.regexMatch** %matches.addr, align 8
  store i32 %count, i32* %count.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.yaccParserState*
  store %struct.yaccParserState* %1, %struct.yaccParserState** %state, align 8
  %2 = load %struct.yaccParserState*, %struct.yaccParserState** %state, align 8
  %area = getelementptr inbounds %struct.yaccParserState, %struct.yaccParserState* %2, i32 0, i32 1
  %3 = load i32, i32* %area, align 4
  %cmp = icmp eq i32 %3, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.yaccParserState*, %struct.yaccParserState** %state, align 8
  %area1 = getelementptr inbounds %struct.yaccParserState, %struct.yaccParserState* %4, i32 0, i32 1
  store i32 0, i32* %area1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i1 true
}

declare i8* @readLineFromInputFile() #1

declare i64 @getInputLineNumber() #1

declare i64 @getSourceLineNumber() #1

declare i32 @makePromise(i8*, i64, i64, i64, i64, i64) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @make_promise_for_epilogue() #0 {
entry:
  %tmp = alloca i8*, align 8
  %last = alloca i8*, align 8
  %endCharOffset = alloca i64, align 8
  %c_start = alloca i64, align 8
  %c_source_start = alloca i64, align 8
  %c_end = alloca i64, align 8
  %call = call i64 @getInputLineNumber()
  store i64 %call, i64* %c_start, align 8
  %call1 = call i64 @getSourceLineNumber()
  store i64 %call1, i64* %c_source_start, align 8
  store i64 0, i64* %endCharOffset, align 8
  store i8* null, i8** %last, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %call2 = call i8* @readLineFromInputFile()
  store i8* %call2, i8** %tmp, align 8
  %tobool = icmp ne i8* %call2, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %0 = load i8*, i8** %tmp, align 8
  store i8* %0, i8** %last, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %1 = load i8*, i8** %last, align 8
  %tobool3 = icmp ne i8* %1, null
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %2 = load i8*, i8** %last, align 8
  %call4 = call i64 @strlen(i8* %2)
  store i64 %call4, i64* %endCharOffset, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  %3 = load i64, i64* %endCharOffset, align 8
  %cmp = icmp slt i64 %3, 0
  br i1 %cmp, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  store i64 0, i64* %endCharOffset, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end
  %call7 = call i64 @getInputLineNumber()
  store i64 %call7, i64* %c_end, align 8
  %4 = load i64, i64* %c_start, align 8
  %5 = load i64, i64* %c_end, align 8
  %6 = load i64, i64* %endCharOffset, align 8
  %7 = load i64, i64* %c_source_start, align 8
  %call8 = call i32 @makePromise(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i64 %4, i64 0, i64 %5, i64 %6, i64 %7)
  ret void
}

declare i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 10.0.0 (https://github.com/holzschu/clang.git 0cfc630fbdb62e96720b611a57123ef3eb13e297) (https://github.com/holzschu/llvm.git 0d8a71e39b28502c24718f7e74b5acbcfe36dfe0)"}
