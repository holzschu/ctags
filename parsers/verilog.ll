; ModuleID = 'verilog.c'
source_filename = "verilog.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-ios11.0.0"

%struct.sKindDefinition = type { i8, i8, i8*, i8*, i8, i32, %struct.sRoleDesc*, %struct.sScopeSeparator*, i32, i32, i32, %struct.sKindDefinition*, %struct.sKindDefinition* }
%struct.sRoleDesc = type { i8, i8*, i8* }
%struct.sScopeSeparator = type { i32, i8* }
%struct.sTokenInfo = type { i32, %struct.sVString*, i64, %struct._MIOPos, %struct.sTokenInfo*, i32, i32, %struct.sVString*, %struct.sVString*, i8, i8 }
%struct._MIOPos = type { i32, %union.anon.0 }
%union.anon.0 = type { i64 }
%struct.sVString = type { i64, i64, i8* }
%struct.keywordAssoc = type { i8*, i32, [2 x i16] }
%struct.sParserDefinition = type { i8*, %struct.sKindDefinition*, i32, i8**, i8**, i8**, void (i32)*, void (i32, i1)*, void ()*, i32 (i32)*, i8* (%struct._MIO*, i32*, i32)**, i32, i8, i8, i8, i8, %struct.tagRegexTable*, i32, %struct.keywordTable*, i32, %struct.sTagXpathTableTable*, i32, i8, %struct.sFieldDefinition*, i32, %struct.sXtagDefinition*, i32, %struct.sParserDependency*, i32, %struct.sParameterHandlerTable*, i32, %struct.sXpathFileSpec*, i32, i32, i8 }
%struct._MIO = type opaque
%struct.tagRegexTable = type { i8*, i8*, i8*, i8*, i8*, i8 }
%struct.keywordTable = type { i8*, i32 }
%struct.sTagXpathTableTable = type { %struct.sTagXpathTable*, i32 }
%struct.sTagXpathTable = type { i8*, i32, %union.anon, i8* }
%union.anon = type { %struct.sTagXpathMakeTagSpec }
%struct.sTagXpathMakeTagSpec = type { i32, i32, void (i8*, %struct.sTagXpathMakeTagSpec*, %struct.sTagEntryInfo*, i8*)* }
%struct.sTagEntryInfo = type { i8, i64, i8*, i32, %struct._MIOPos, i32, i8*, i8*, i32, [2 x i8], i8*, %struct.anon, i32, [5 x %struct.sTagField], %struct.sPtrArray*, i32, i8*, i64 }
%struct.anon = type { i8*, i8*, i8*, i8*, i32, i32, i8*, i32, i8*, [2 x i8*], i32, i64 }
%struct.sTagField = type { i32, i8*, i8 }
%struct.sPtrArray = type opaque
%struct.sFieldDefinition = type { i8, i8*, i8*, i8, [5 x i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)*], i1 (%struct.sTagEntryInfo*)*, i32, i32 }
%struct.sXtagDefinition = type { i8, i8, i8*, i8*, i1 (%struct.sXtagDefinition*)*, i1 (%struct.sXtagDefinition*)*, i32 }
%struct.sParserDependency = type { i32, i8*, i8* }
%struct.sParameterHandlerTable = type { i8*, i8*, void (i32, i8*, i8*)* }
%struct.sXpathFileSpec = type { i8*, i8*, i8*, i8*, i8*, i8* }

@VerilogParser.extensions = internal constant [2 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* null], align 8
@.str = private unnamed_addr constant [2 x i8] c"v\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Verilog\00", align 1
@VerilogKinds = internal global [9 x %struct.sKindDefinition] [%struct.sKindDefinition { i8 1, i8 99, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 101, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 102, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 109, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 110, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 112, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 114, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 116, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 98, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }], align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"SystemVerilog\00", align 1
@SystemVerilogKinds = internal global [21 x %struct.sKindDefinition] [%struct.sKindDefinition { i8 1, i8 99, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.113, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 101, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 102, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 109, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 110, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 112, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 114, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 116, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 98, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 65, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.114, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 67, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.115, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 86, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.116, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.117, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 73, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.118, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 77, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.119, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 75, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.120, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 80, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.99, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.121, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 0, i8 81, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.122, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.123, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 82, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.100, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.124, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 83, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.125, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 84, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.108, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.126, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }], align 8
@extensions = internal constant [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.127, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.128, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.129, i32 0, i32 0), i8* null], align 8
@.str.3 = private unnamed_addr constant [9 x i8] c"constant\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"constants (define, parameter, specparam)\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"event\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"events\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"function\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"functions\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"module\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"modules\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"net\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"net data types\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"ports\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"register\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"register data types\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"task\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"tasks\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"block\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"blocks\00", align 1
@currentContext = internal global %struct.sTokenInfo* null, align 8
@.str.21 = private unnamed_addr constant [3 x i8] c"()\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"Dropping context %s\0A\00", align 1
@tagContents = internal global %struct.sTokenInfo* null, align 8
@Ungetc = internal global i32 0, align 4
@.str.23 = private unnamed_addr constant [30 x i8] c"Checking token %s of kind %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [54 x i8] c"current context %s; context kind %0d; nest level %0d\0A\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"end\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"endgroup\00", align 1
@.str.27 = private unnamed_addr constant [27 x i8] c"Dropping local context %s\0A\00", align 1
@Lang_systemverilog = internal global i32 0, align 4
@.str.28 = private unnamed_addr constant [41 x i8] c"Unexpected empty token or kind disabled\0A\00", align 1
@.str.29 = private unnamed_addr constant [24 x i8] c"Adding tag %s (kind %d)\00", align 1
@.str.30 = private unnamed_addr constant [16 x i8] c" to context %s\0A\00", align 1
@.str.31 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.32 = private unnamed_addr constant [21 x i8] c"Class %s extends %s\0A\00", align 1
@.str.33 = private unnamed_addr constant [23 x i8] c"Including tagContents\0A\00", align 1
@.str.34 = private unnamed_addr constant [34 x i8] c"Created new context %s (kind %d)\0A\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"begin\00", align 1
@.str.36 = private unnamed_addr constant [17 x i8] c"Found block: %s\0A\00", align 1
@.str.37 = private unnamed_addr constant [20 x i8] c"Current context %s\0A\00", align 1
@.str.38 = private unnamed_addr constant [47 x i8] c"Found function declaration with class type %s\0A\00", align 1
@.str.39 = private unnamed_addr constant [20 x i8] c"Found function: %s\0A\00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c"[]\00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c"{}\00", align 1
@.str.42 = private unnamed_addr constant [14 x i8] c"Enum type %s\0A\00", align 1
@.str.43 = private unnamed_addr constant [27 x i8] c"Prototype enum found \22%s\22\0A\00", align 1
@.str.44 = private unnamed_addr constant [26 x i8] c"Pushed enum element \22%s\22\0A\00", align 1
@.str.45 = private unnamed_addr constant [34 x i8] c"Find enum tags. Token %s kind %d\0A\00", align 1
@.str.46 = private unnamed_addr constant [26 x i8] c"Found class parameter %s\0A\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"extends\00", align 1
@.str.48 = private unnamed_addr constant [16 x i8] c"Inheritance %s\0A\00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"extern\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"pure\00", align 1
@.str.51 = private unnamed_addr constant [6 x i8] c"ifdef\00", align 1
@.str.52 = private unnamed_addr constant [7 x i8] c"ifndef\00", align 1
@.str.53 = private unnamed_addr constant [6 x i8] c"elsif\00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c"%c\0A\00", align 1
@.str.55 = private unnamed_addr constant [31 x i8] c"Skipping conditional macro %s\0A\00", align 1
@.str.56 = private unnamed_addr constant [16 x i8] c"Found port: %s\0A\00", align 1
@Lang_verilog = internal global i32 0, align 4
@KeywordTable = internal constant [64 x %struct.keywordAssoc] [%struct.keywordAssoc { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.57, i32 0, i32 0), i32 0, [2 x i16] [i16 1, i16 1] }, %struct.keywordAssoc { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i32 1, [2 x i16] [i16 1, i16 1] }, %struct.keywordAssoc { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i32 2, [2 x i16] [i16 1, i16 1] }, %struct.keywordAssoc { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i32 0, i32 0), i32 5, [2 x i16] [i16 1, i16 1] }, %struct.keywordAssoc { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.59, i32 0, i32 0), i32 5, [2 x i16] [i16 1, i16 1] }, %struct.keywordAssoc { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.60, i32 0, i32 0), i32 6, [2 x i16] [i16 1, i16 1] }, %struct.keywordAssoc { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i32 3, [2 x i16] [i16 1, i16 1] }, %struct.keywordAssoc { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.61, i32 0, i32 0), i32 5, [2 x i16] [i16 1, i16 1] }, %struct.keywordAssoc { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i32 0, i32 0), i32 0, [2 x i16] [i16 1, i16 1] }, %struct.keywordAssoc { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.63, i32 0, i32 0), i32 0, [2 x i16] [i16 1, i16 1] }, %struct.keywordAssoc { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.64, i32 0, i32 0), i32 6, [2 x i16] [i16 1, i16 1] }, %struct.keywordAssoc { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.65, i32 0, i32 0), i32 6, [2 x i16] [i16 1, i16 1] }, %struct.keywordAssoc { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.66, i32 0, i32 0), i32 6, [2 x i16] [i16 1, i16 1] }, %struct.keywordAssoc { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.67, i32 0, i32 0), i32 6, [2 x i16] [i16 1, i16 1] }, %struct.keywordAssoc { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.68, i32 0, i32 0), i32 0, [2 x i16] [i16 1, i16 1] }, %struct.keywordAssoc { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.69, i32 0, i32 0), i32 4, [2 x i16] [i16 1, i16 1] }, %struct.keywordAssoc { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.70, i32 0, i32 0), i32 4, [2 x i16] [i16 1, i16 1] }, %struct.keywordAssoc { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i32 7, [2 x i16] [i16 1, i16 1] }, %struct.keywordAssoc { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.71, i32 0, i32 0), i32 6, [2 x i16] [i16 1, i16 1] }, %struct.keywordAssoc { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.72, i32 0, i32 0), i32 4, [2 x i16] [i16 1, i16 1] }, %struct.keywordAssoc { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.73, i32 0, i32 0), i32 4, [2 x i16] [i16 1, i16 1] }, %struct.keywordAssoc { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.74, i32 0, i32 0), i32 4, [2 x i16] [i16 1, i16 1] }, %struct.keywordAssoc { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.75, i32 0, i32 0), i32 4, [2 x i16] [i16 1, i16 1] }, %struct.keywordAssoc { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.76, i32 0, i32 0), i32 4, [2 x i16] [i16 1, i16 1] }, %struct.keywordAssoc { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.77, i32 0, i32 0), i32 4, [2 x i16] [i16 1, i16 1] }, %struct.keywordAssoc { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.78, i32 0, i32 0), i32 4, [2 x i16] [i16 1, i16 1] }, %struct.keywordAssoc { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.79, i32 0, i32 0), i32 4, [2 x i16] [i16 1, i16 1] }, %struct.keywordAssoc { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.80, i32 0, i32 0), i32 4, [2 x i16] [i16 1, i16 1] }, %struct.keywordAssoc { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.81, i32 0, i32 0), i32 4, [2 x i16] [i16 1, i16 1] }, %struct.keywordAssoc { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0), i32 8, [2 x i16] [i16 1, i16 1] }, %struct.keywordAssoc { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i32 0, i32 0), i32 8, [2 x i16] [i16 1, i16 1] }, %struct.keywordAssoc { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.82, i32 0, i32 0), i32 -2, [2 x i16] [i16 1, i16 1] }, %struct.keywordAssoc { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.83, i32 0, i32 0), i32 -2, [2 x i16] [i16 1, i16 0] }, %struct.keywordAssoc { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.84, i32 0, i32 0), i32 9, [2 x i16] [i16 1, i16 0] }, %struct.keywordAssoc { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.85, i32 0, i32 0), i32 9, [2 x i16] [i16 1, i16 0] }, %struct.keywordAssoc { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.86, i32 0, i32 0), i32 6, [2 x i16] [i16 1, i16 0] }, %struct.keywordAssoc { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.87, i32 0, i32 0), i32 6, [2 x i16] [i16 1, i16 0] }, %struct.keywordAssoc { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.88, i32 0, i32 0), i32 10, [2 x i16] [i16 1, i16 0] }, %struct.keywordAssoc { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.89, i32 0, i32 0), i32 9, [2 x i16] [i16 1, i16 0] }, %struct.keywordAssoc { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.90, i32 0, i32 0), i32 11, [2 x i16] [i16 1, i16 0] }, %struct.keywordAssoc { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.91, i32 0, i32 0), i32 12, [2 x i16] [i16 1, i16 0] }, %struct.keywordAssoc { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i32 0, i32 0), i32 -2, [2 x i16] [i16 1, i16 0] }, %struct.keywordAssoc { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.92, i32 0, i32 0), i32 6, [2 x i16] [i16 1, i16 0] }, %struct.keywordAssoc { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.93, i32 0, i32 0), i32 13, [2 x i16] [i16 1, i16 0] }, %struct.keywordAssoc { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.94, i32 0, i32 0), i32 -2, [2 x i16] [i16 1, i16 0] }, %struct.keywordAssoc { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.95, i32 0, i32 0), i32 6, [2 x i16] [i16 1, i16 0] }, %struct.keywordAssoc { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.96, i32 0, i32 0), i32 6, [2 x i16] [i16 1, i16 0] }, %struct.keywordAssoc { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.97, i32 0, i32 0), i32 14, [2 x i16] [i16 1, i16 0] }, %struct.keywordAssoc { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.98, i32 0, i32 0), i32 15, [2 x i16] [i16 1, i16 0] }, %struct.keywordAssoc { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.99, i32 0, i32 0), i32 16, [2 x i16] [i16 1, i16 0] }, %struct.keywordAssoc { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.100, i32 0, i32 0), i32 18, [2 x i16] [i16 1, i16 0] }, %struct.keywordAssoc { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.50, i32 0, i32 0), i32 -2, [2 x i16] [i16 1, i16 0] }, %struct.keywordAssoc { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.101, i32 0, i32 0), i32 5, [2 x i16] [i16 1, i16 0] }, %struct.keywordAssoc { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.102, i32 0, i32 0), i32 6, [2 x i16] [i16 1, i16 0] }, %struct.keywordAssoc { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 6, [2 x i16] [i16 1, i16 0] }, %struct.keywordAssoc { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.104, i32 0, i32 0), i32 -2, [2 x i16] [i16 1, i16 0] }, %struct.keywordAssoc { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.105, i32 0, i32 0), i32 6, [2 x i16] [i16 1, i16 0] }, %struct.keywordAssoc { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.106, i32 0, i32 0), i32 19, [2 x i16] [i16 1, i16 0] }, %struct.keywordAssoc { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.107, i32 0, i32 0), i32 -2, [2 x i16] [i16 1, i16 0] }, %struct.keywordAssoc { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.108, i32 0, i32 0), i32 20, [2 x i16] [i16 1, i16 0] }, %struct.keywordAssoc { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.109, i32 0, i32 0), i32 19, [2 x i16] [i16 1, i16 0] }, %struct.keywordAssoc { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.110, i32 0, i32 0), i32 -2, [2 x i16] [i16 1, i16 0] }, %struct.keywordAssoc { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.111, i32 0, i32 0), i32 -2, [2 x i16] [i16 1, i16 0] }, %struct.keywordAssoc { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.112, i32 0, i32 0), i32 -2, [2 x i16] [i16 1, i16 0] }], align 8
@.str.57 = private unnamed_addr constant [8 x i8] c"`define\00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"inout\00", align 1
@.str.59 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.60 = private unnamed_addr constant [8 x i8] c"integer\00", align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.62 = private unnamed_addr constant [10 x i8] c"parameter\00", align 1
@.str.63 = private unnamed_addr constant [11 x i8] c"localparam\00", align 1
@.str.64 = private unnamed_addr constant [7 x i8] c"genvar\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c"real\00", align 1
@.str.66 = private unnamed_addr constant [9 x i8] c"realtime\00", align 1
@.str.67 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.68 = private unnamed_addr constant [10 x i8] c"specparam\00", align 1
@.str.69 = private unnamed_addr constant [8 x i8] c"supply0\00", align 1
@.str.70 = private unnamed_addr constant [8 x i8] c"supply1\00", align 1
@.str.71 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@.str.72 = private unnamed_addr constant [5 x i8] c"tri0\00", align 1
@.str.73 = private unnamed_addr constant [5 x i8] c"tri1\00", align 1
@.str.74 = private unnamed_addr constant [7 x i8] c"triand\00", align 1
@.str.75 = private unnamed_addr constant [4 x i8] c"tri\00", align 1
@.str.76 = private unnamed_addr constant [6 x i8] c"trior\00", align 1
@.str.77 = private unnamed_addr constant [7 x i8] c"trireg\00", align 1
@.str.78 = private unnamed_addr constant [6 x i8] c"uwire\00", align 1
@.str.79 = private unnamed_addr constant [5 x i8] c"wand\00", align 1
@.str.80 = private unnamed_addr constant [5 x i8] c"wire\00", align 1
@.str.81 = private unnamed_addr constant [4 x i8] c"wor\00", align 1
@.str.82 = private unnamed_addr constant [7 x i8] c"signed\00", align 1
@.str.83 = private unnamed_addr constant [10 x i8] c"automatic\00", align 1
@.str.84 = private unnamed_addr constant [7 x i8] c"assert\00", align 1
@.str.85 = private unnamed_addr constant [7 x i8] c"assume\00", align 1
@.str.86 = private unnamed_addr constant [4 x i8] c"bit\00", align 1
@.str.87 = private unnamed_addr constant [5 x i8] c"byte\00", align 1
@.str.88 = private unnamed_addr constant [6 x i8] c"class\00", align 1
@.str.89 = private unnamed_addr constant [6 x i8] c"cover\00", align 1
@.str.90 = private unnamed_addr constant [11 x i8] c"covergroup\00", align 1
@.str.91 = private unnamed_addr constant [5 x i8] c"enum\00", align 1
@.str.92 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.93 = private unnamed_addr constant [10 x i8] c"interface\00", align 1
@.str.94 = private unnamed_addr constant [6 x i8] c"local\00", align 1
@.str.95 = private unnamed_addr constant [6 x i8] c"logic\00", align 1
@.str.96 = private unnamed_addr constant [8 x i8] c"longint\00", align 1
@.str.97 = private unnamed_addr constant [8 x i8] c"modport\00", align 1
@.str.98 = private unnamed_addr constant [8 x i8] c"package\00", align 1
@.str.99 = private unnamed_addr constant [8 x i8] c"program\00", align 1
@.str.100 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.101 = private unnamed_addr constant [4 x i8] c"ref\00", align 1
@.str.102 = private unnamed_addr constant [9 x i8] c"shortint\00", align 1
@.str.103 = private unnamed_addr constant [10 x i8] c"shortreal\00", align 1
@.str.104 = private unnamed_addr constant [7 x i8] c"static\00", align 1
@.str.105 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.106 = private unnamed_addr constant [7 x i8] c"struct\00", align 1
@.str.107 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.108 = private unnamed_addr constant [8 x i8] c"typedef\00", align 1
@.str.109 = private unnamed_addr constant [6 x i8] c"union\00", align 1
@.str.110 = private unnamed_addr constant [9 x i8] c"unsigned\00", align 1
@.str.111 = private unnamed_addr constant [8 x i8] c"virtual\00", align 1
@.str.112 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@.str.113 = private unnamed_addr constant [54 x i8] c"constants (define, parameter, specparam, enum values)\00", align 1
@.str.114 = private unnamed_addr constant [11 x i8] c"assertions\00", align 1
@.str.115 = private unnamed_addr constant [8 x i8] c"classes\00", align 1
@.str.116 = private unnamed_addr constant [12 x i8] c"covergroups\00", align 1
@.str.117 = private unnamed_addr constant [12 x i8] c"enumerators\00", align 1
@.str.118 = private unnamed_addr constant [11 x i8] c"interfaces\00", align 1
@.str.119 = private unnamed_addr constant [9 x i8] c"modports\00", align 1
@.str.120 = private unnamed_addr constant [9 x i8] c"packages\00", align 1
@.str.121 = private unnamed_addr constant [9 x i8] c"programs\00", align 1
@.str.122 = private unnamed_addr constant [10 x i8] c"prototype\00", align 1
@.str.123 = private unnamed_addr constant [11 x i8] c"prototypes\00", align 1
@.str.124 = private unnamed_addr constant [11 x i8] c"properties\00", align 1
@.str.125 = private unnamed_addr constant [19 x i8] c"structs and unions\00", align 1
@.str.126 = private unnamed_addr constant [18 x i8] c"type declarations\00", align 1
@.str.127 = private unnamed_addr constant [3 x i8] c"sv\00", align 1
@.str.128 = private unnamed_addr constant [4 x i8] c"svh\00", align 1
@.str.129 = private unnamed_addr constant [4 x i8] c"svi\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sParserDefinition* @VerilogParser() #0 {
entry:
  %def = alloca %struct.sParserDefinition*, align 8
  %call = call %struct.sParserDefinition* @parserNew(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store %struct.sParserDefinition* %call, %struct.sParserDefinition** %def, align 8
  %0 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %0, i32 0, i32 1
  store %struct.sKindDefinition* getelementptr inbounds ([9 x %struct.sKindDefinition], [9 x %struct.sKindDefinition]* @VerilogKinds, i64 0, i64 0), %struct.sKindDefinition** %kindTable, align 8
  %1 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %1, i32 0, i32 2
  store i32 9, i32* %kindCount, align 8
  %2 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %extensions = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %2, i32 0, i32 3
  store i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @VerilogParser.extensions, i64 0, i64 0), i8*** %extensions, align 8
  %3 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %parser = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %3, i32 0, i32 8
  store void ()* @findVerilogTags, void ()** %parser, align 8
  %4 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %initialize = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %4, i32 0, i32 6
  store void (i32)* @initializeVerilog, void (i32)** %initialize, align 8
  %5 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  ret %struct.sParserDefinition* %5
}

declare %struct.sParserDefinition* @parserNew(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @findVerilogTags() #0 {
entry:
  %token = alloca %struct.sTokenInfo*, align 8
  %c = alloca i32, align 4
  %call = call %struct.sTokenInfo* @newToken()
  store %struct.sTokenInfo* %call, %struct.sTokenInfo** %token, align 8
  store i32 0, i32* %c, align 4
  %call1 = call %struct.sTokenInfo* @newToken()
  store %struct.sTokenInfo* %call1, %struct.sTokenInfo** @currentContext, align 8
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %0 = load i32, i32* %c, align 4
  %cmp = icmp ne i32 %0, -1
  br i1 %cmp, label %while.body, label %while.end30

while.body:                                       ; preds = %while.cond
  %call2 = call i32 @vGetc()
  store i32 %call2, i32* %c, align 4
  %1 = load i32, i32* %c, align 4
  %call3 = call i32 @skipWhite(i32 %1)
  store i32 %call3, i32* %c, align 4
  %2 = load i32, i32* %c, align 4
  switch i32 %2, label %sw.default [
    i32 58, label %sw.bb
    i32 40, label %sw.bb4
    i32 59, label %sw.bb7
  ]

sw.bb:                                            ; preds = %while.body
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** @currentContext, align 8
  %blockName = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %3, i32 0, i32 7
  %4 = load %struct.sVString*, %struct.sVString** %blockName, align 8
  %5 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %name = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %5, i32 0, i32 1
  %6 = load %struct.sVString*, %struct.sVString** %name, align 8
  call void @vStringCopy(%struct.sVString* %4, %struct.sVString* %6)
  br label %sw.epilog

sw.bb4:                                           ; preds = %while.body
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** @currentContext, align 8
  %tobool = icmp ne %struct.sTokenInfo* %7, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %sw.bb4
  %8 = load %struct.sTokenInfo*, %struct.sTokenInfo** @currentContext, align 8
  %lastKind = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %8, i32 0, i32 6
  %9 = load i32, i32* %lastKind, align 4
  %cmp5 = icmp eq i32 %9, 14
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %call6 = call i32 @skipPastMatch(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %sw.bb4
  br label %sw.epilog

sw.bb7:                                           ; preds = %while.body
  %10 = load %struct.sTokenInfo*, %struct.sTokenInfo** @currentContext, align 8
  %scope = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %10, i32 0, i32 4
  %11 = load %struct.sTokenInfo*, %struct.sTokenInfo** %scope, align 8
  %tobool8 = icmp ne %struct.sTokenInfo* %11, null
  br i1 %tobool8, label %land.lhs.true9, label %if.end16

land.lhs.true9:                                   ; preds = %sw.bb7
  %12 = load %struct.sTokenInfo*, %struct.sTokenInfo** @currentContext, align 8
  %scope10 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %12, i32 0, i32 4
  %13 = load %struct.sTokenInfo*, %struct.sTokenInfo** %scope10, align 8
  %prototype = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %13, i32 0, i32 9
  %14 = load i8, i8* %prototype, align 8
  %tobool11 = trunc i8 %14 to i1
  br i1 %tobool11, label %if.then12, label %if.end16

if.then12:                                        ; preds = %land.lhs.true9
  %15 = load %struct.sTokenInfo*, %struct.sTokenInfo** @currentContext, align 8
  %name13 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %15, i32 0, i32 1
  %16 = load %struct.sVString*, %struct.sVString** %name13, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %16, i32 0, i32 2
  %17 = load i8*, i8** %buffer, align 8
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i64 0, i64 0), i8* %17)
  %18 = load %struct.sTokenInfo*, %struct.sTokenInfo** @currentContext, align 8
  %call14 = call %struct.sTokenInfo* @popToken(%struct.sTokenInfo* %18)
  store %struct.sTokenInfo* %call14, %struct.sTokenInfo** @currentContext, align 8
  %19 = load %struct.sTokenInfo*, %struct.sTokenInfo** @currentContext, align 8
  %prototype15 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %19, i32 0, i32 9
  store i8 0, i8* %prototype15, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %land.lhs.true9, %sw.bb7
  %20 = load %struct.sTokenInfo*, %struct.sTokenInfo** @currentContext, align 8
  %prototype17 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %20, i32 0, i32 9
  %21 = load i8, i8* %prototype17, align 8
  %tobool18 = trunc i8 %21 to i1
  br i1 %tobool18, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end16
  %22 = load %struct.sTokenInfo*, %struct.sTokenInfo** @currentContext, align 8
  %prototype20 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %22, i32 0, i32 9
  store i8 0, i8* %prototype20, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end16
  br label %while.cond22

while.cond22:                                     ; preds = %while.body24, %if.end21
  %23 = load %struct.sTokenInfo*, %struct.sTokenInfo** @tagContents, align 8
  %tobool23 = icmp ne %struct.sTokenInfo* %23, null
  br i1 %tobool23, label %while.body24, label %while.end

while.body24:                                     ; preds = %while.cond22
  %24 = load %struct.sTokenInfo*, %struct.sTokenInfo** @tagContents, align 8
  %call25 = call %struct.sTokenInfo* @popToken(%struct.sTokenInfo* %24)
  store %struct.sTokenInfo* %call25, %struct.sTokenInfo** @tagContents, align 8
  br label %while.cond22

while.end:                                        ; preds = %while.cond22
  br label %sw.default

sw.default:                                       ; preds = %while.body, %while.end
  %25 = load i32, i32* %c, align 4
  %call26 = call zeroext i1 @isIdentifierCharacter(i32 %25)
  br i1 %call26, label %if.then27, label %if.end29

if.then27:                                        ; preds = %sw.default
  %26 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %27 = load i32, i32* %c, align 4
  %call28 = call zeroext i1 @readIdentifier(%struct.sTokenInfo* %26, i32 %27)
  %28 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  call void @updateKind(%struct.sTokenInfo* %28)
  %29 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  call void @findTag(%struct.sTokenInfo* %29)
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %sw.default
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end29, %if.end, %sw.bb
  br label %while.cond

while.end30:                                      ; preds = %while.cond
  %30 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  call void @deleteToken(%struct.sTokenInfo* %30)
  %31 = load %struct.sTokenInfo*, %struct.sTokenInfo** @currentContext, align 8
  call void @pruneTokens(%struct.sTokenInfo* %31)
  store %struct.sTokenInfo* null, %struct.sTokenInfo** @currentContext, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @initializeVerilog(i32 %language) #0 {
entry:
  %language.addr = alloca i32, align 4
  store i32 %language, i32* %language.addr, align 4
  %0 = load i32, i32* %language.addr, align 4
  store i32 %0, i32* @Lang_verilog, align 4
  %1 = load i32, i32* %language.addr, align 4
  call void @buildKeywordHash(i32 %1, i32 1)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sParserDefinition* @SystemVerilogParser() #0 {
entry:
  %def = alloca %struct.sParserDefinition*, align 8
  %call = call %struct.sParserDefinition* @parserNew(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  store %struct.sParserDefinition* %call, %struct.sParserDefinition** %def, align 8
  %0 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %0, i32 0, i32 1
  store %struct.sKindDefinition* getelementptr inbounds ([21 x %struct.sKindDefinition], [21 x %struct.sKindDefinition]* @SystemVerilogKinds, i64 0, i64 0), %struct.sKindDefinition** %kindTable, align 8
  %1 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %1, i32 0, i32 2
  store i32 21, i32* %kindCount, align 8
  %2 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %extensions = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %2, i32 0, i32 3
  store i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @extensions, i64 0, i64 0), i8*** %extensions, align 8
  %3 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %parser = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %3, i32 0, i32 8
  store void ()* @findVerilogTags, void ()** %parser, align 8
  %4 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %initialize = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %4, i32 0, i32 6
  store void (i32)* @initializeSystemVerilog, void (i32)** %initialize, align 8
  %5 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  ret %struct.sParserDefinition* %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @initializeSystemVerilog(i32 %language) #0 {
entry:
  %language.addr = alloca i32, align 4
  store i32 %language, i32* %language.addr, align 4
  %0 = load i32, i32* %language.addr, align 4
  store i32 %0, i32* @Lang_systemverilog, align 4
  %1 = load i32, i32* %language.addr, align 4
  call void @buildKeywordHash(i32 %1, i32 0)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct.sTokenInfo* @newToken() #0 {
entry:
  %token = alloca %struct.sTokenInfo*, align 8
  %tmp = alloca %struct._MIOPos, align 8
  %call = call i8* @eMalloc(i64 80)
  %0 = bitcast i8* %call to %struct.sTokenInfo*
  store %struct.sTokenInfo* %0, %struct.sTokenInfo** %token, align 8
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %kind = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %1, i32 0, i32 0
  store i32 -1, i32* %kind, align 8
  %call1 = call %struct.sVString* @vStringNew()
  %2 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %name = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %2, i32 0, i32 1
  store %struct.sVString* %call1, %struct.sVString** %name, align 8
  %call2 = call i64 @getInputLineNumber()
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %lineNumber = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %3, i32 0, i32 2
  store i64 %call2, i64* %lineNumber, align 8
  %4 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %filePosition = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %4, i32 0, i32 3
  %call3 = call [2 x i64] @getInputFilePosition()
  %5 = bitcast %struct._MIOPos* %tmp to [2 x i64]*
  store [2 x i64] %call3, [2 x i64]* %5, align 8
  %6 = bitcast %struct._MIOPos* %filePosition to i8*
  %7 = bitcast %struct._MIOPos* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 %7, i64 16, i1 false)
  %8 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %scope = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %8, i32 0, i32 4
  store %struct.sTokenInfo* null, %struct.sTokenInfo** %scope, align 8
  %9 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %nestLevel = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %9, i32 0, i32 5
  store i32 0, i32* %nestLevel, align 8
  %10 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %lastKind = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %10, i32 0, i32 6
  store i32 -1, i32* %lastKind, align 4
  %call4 = call %struct.sVString* @vStringNew()
  %11 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %blockName = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %11, i32 0, i32 7
  store %struct.sVString* %call4, %struct.sVString** %blockName, align 8
  %call5 = call %struct.sVString* @vStringNew()
  %12 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %inheritance = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %12, i32 0, i32 8
  store %struct.sVString* %call5, %struct.sVString** %inheritance, align 8
  %13 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %prototype = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %13, i32 0, i32 9
  store i8 0, i8* %prototype, align 8
  %14 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %classScope = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %14, i32 0, i32 10
  store i8 0, i8* %classScope, align 1
  %15 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  ret %struct.sTokenInfo* %15
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @vGetc() #0 {
entry:
  %retval = alloca i32, align 4
  %c = alloca i32, align 4
  %c2 = alloca i32, align 4
  %c223 = alloca i32, align 4
  %0 = load i32, i32* @Ungetc, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call i32 @getcFromInputFile()
  store i32 %call, i32* %c, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %1 = load i32, i32* @Ungetc, align 4
  store i32 %1, i32* %c, align 4
  store i32 0, i32* @Ungetc, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %2 = load i32, i32* %c, align 4
  %cmp1 = icmp eq i32 %2, 47
  br i1 %cmp1, label %if.then2, label %if.else20

if.then2:                                         ; preds = %if.end
  %call3 = call i32 @getcFromInputFile()
  store i32 %call3, i32* %c2, align 4
  %3 = load i32, i32* %c2, align 4
  %cmp4 = icmp eq i32 %3, -1
  br i1 %cmp4, label %if.then5, label %if.else6

if.then5:                                         ; preds = %if.then2
  store i32 -1, i32* %retval, align 4
  br label %return

if.else6:                                         ; preds = %if.then2
  %4 = load i32, i32* %c2, align 4
  %cmp7 = icmp eq i32 %4, 47
  br i1 %cmp7, label %if.then8, label %if.else12

if.then8:                                         ; preds = %if.else6
  br label %do.body

do.body:                                          ; preds = %land.end, %if.then8
  %call9 = call i32 @getcFromInputFile()
  store i32 %call9, i32* %c, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %5 = load i32, i32* %c, align 4
  %cmp10 = icmp ne i32 %5, 10
  br i1 %cmp10, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %6 = load i32, i32* %c, align 4
  %cmp11 = icmp ne i32 %6, -1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %7 = phi i1 [ false, %do.cond ], [ %cmp11, %land.rhs ]
  br i1 %7, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  br label %if.end18

if.else12:                                        ; preds = %if.else6
  %8 = load i32, i32* %c2, align 4
  %cmp13 = icmp eq i32 %8, 42
  br i1 %cmp13, label %if.then14, label %if.else16

if.then14:                                        ; preds = %if.else12
  %call15 = call i32 @cppSkipOverCComment()
  store i32 %call15, i32* %c, align 4
  br label %if.end17

if.else16:                                        ; preds = %if.else12
  %9 = load i32, i32* %c2, align 4
  call void @ungetcToInputFile(i32 %9)
  br label %if.end17

if.end17:                                         ; preds = %if.else16, %if.then14
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %do.end
  br label %if.end19

if.end19:                                         ; preds = %if.end18
  br label %if.end33

if.else20:                                        ; preds = %if.end
  %10 = load i32, i32* %c, align 4
  %cmp21 = icmp eq i32 %10, 34
  br i1 %cmp21, label %if.then22, label %if.end32

if.then22:                                        ; preds = %if.else20
  br label %do.body24

do.body24:                                        ; preds = %land.end30, %if.then22
  %call25 = call i32 @getcFromInputFile()
  store i32 %call25, i32* %c223, align 4
  br label %do.cond26

do.cond26:                                        ; preds = %do.body24
  %11 = load i32, i32* %c223, align 4
  %cmp27 = icmp ne i32 %11, 34
  br i1 %cmp27, label %land.rhs28, label %land.end30

land.rhs28:                                       ; preds = %do.cond26
  %12 = load i32, i32* %c223, align 4
  %cmp29 = icmp ne i32 %12, -1
  br label %land.end30

land.end30:                                       ; preds = %land.rhs28, %do.cond26
  %13 = phi i1 [ false, %do.cond26 ], [ %cmp29, %land.rhs28 ]
  br i1 %13, label %do.body24, label %do.end31

do.end31:                                         ; preds = %land.end30
  store i32 64, i32* %c, align 4
  br label %if.end32

if.end32:                                         ; preds = %do.end31, %if.else20
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.end19
  %14 = load i32, i32* %c, align 4
  store i32 %14, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end33, %if.then5
  %15 = load i32, i32* %retval, align 4
  ret i32 %15
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @skipWhite(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* %c.addr, align 4
  %call = call i32 @isspace(i32 %0) #4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call1 = call i32 @vGetc()
  store i32 %call1, i32* %c.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %1 = load i32, i32* %c.addr, align 4
  ret i32 %1
}

declare void @vStringCopy(%struct.sVString*, %struct.sVString*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @skipPastMatch(i8* %pair) #0 {
entry:
  %pair.addr = alloca i8*, align 8
  %begin = alloca i32, align 4
  %end = alloca i32, align 4
  %matchLevel = alloca i32, align 4
  %c = alloca i32, align 4
  store i8* %pair, i8** %pair.addr, align 8
  %0 = load i8*, i8** %pair.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %1 to i32
  store i32 %conv, i32* %begin, align 4
  %2 = load i8*, i8** %pair.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %2, i64 1
  %3 = load i8, i8* %arrayidx1, align 1
  %conv2 = sext i8 %3 to i32
  store i32 %conv2, i32* %end, align 4
  store i32 1, i32* %matchLevel, align 4
  br label %do.body

do.body:                                          ; preds = %land.end, %entry
  %call = call i32 @vGetc()
  store i32 %call, i32* %c, align 4
  %4 = load i32, i32* %c, align 4
  %5 = load i32, i32* %begin, align 4
  %cmp = icmp eq i32 %4, %5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %6 = load i32, i32* %matchLevel, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %matchLevel, align 4
  br label %if.end7

if.else:                                          ; preds = %do.body
  %7 = load i32, i32* %c, align 4
  %8 = load i32, i32* %end, align 4
  %cmp4 = icmp eq i32 %7, %8
  br i1 %cmp4, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.else
  %9 = load i32, i32* %matchLevel, align 4
  %dec = add nsw i32 %9, -1
  store i32 %dec, i32* %matchLevel, align 4
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.else
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then
  br label %do.cond

do.cond:                                          ; preds = %if.end7
  %10 = load i32, i32* %c, align 4
  %cmp8 = icmp ne i32 %10, -1
  br i1 %cmp8, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %11 = load i32, i32* %matchLevel, align 4
  %cmp10 = icmp sgt i32 %11, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %12 = phi i1 [ false, %do.cond ], [ %cmp10, %land.rhs ]
  br i1 %12, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  %call12 = call i32 @vGetc()
  ret i32 %call12
}

declare void @verbose(i8*, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct.sTokenInfo* @popToken(%struct.sTokenInfo* %token) #0 {
entry:
  %retval = alloca %struct.sTokenInfo*, align 8
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %localToken = alloca %struct.sTokenInfo*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %cmp = icmp ne %struct.sTokenInfo* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %scope = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %1, i32 0, i32 4
  %2 = load %struct.sTokenInfo*, %struct.sTokenInfo** %scope, align 8
  store %struct.sTokenInfo* %2, %struct.sTokenInfo** %localToken, align 8
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @deleteToken(%struct.sTokenInfo* %3)
  %4 = load %struct.sTokenInfo*, %struct.sTokenInfo** %localToken, align 8
  store %struct.sTokenInfo* %4, %struct.sTokenInfo** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  store %struct.sTokenInfo* null, %struct.sTokenInfo** %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct.sTokenInfo*, %struct.sTokenInfo** %retval, align 8
  ret %struct.sTokenInfo* %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @isIdentifierCharacter(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %call = call i32 @isalnum(i32 %0) #4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %c.addr, align 4
  %cmp = icmp eq i32 %1, 95
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %2 = load i32, i32* %c.addr, align 4
  %cmp1 = icmp eq i32 %2, 96
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %entry
  %3 = phi i1 [ true, %lor.lhs.false ], [ true, %entry ], [ %cmp1, %lor.rhs ]
  ret i1 %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @readIdentifier(%struct.sTokenInfo* %token, i32 %c) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %c.addr = alloca i32, align 4
  %vStringClear_s = alloca %struct.sVString*, align 8
  %tmp = alloca %struct._MIOPos, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  store i32 %c, i32* %c.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %name = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 1
  %1 = load %struct.sVString*, %struct.sVString** %name, align 8
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
  %5 = load i32, i32* %c.addr, align 4
  %call = call zeroext i1 @isIdentifierCharacter(i32 %5)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %6 = load i32, i32* %c.addr, align 4
  %call1 = call zeroext i1 @isIdentifierCharacter(i32 %6)
  br i1 %call1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %name2 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %7, i32 0, i32 1
  %8 = load %struct.sVString*, %struct.sVString** %name2, align 8
  %9 = load i32, i32* %c.addr, align 4
  call void @vStringPut(%struct.sVString* %8, i32 %9)
  %call3 = call i32 @vGetc()
  store i32 %call3, i32* %c.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %10 = load i32, i32* %c.addr, align 4
  call void @vUngetc(i32 %10)
  %call4 = call i64 @getInputLineNumber()
  %11 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %lineNumber = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %11, i32 0, i32 2
  store i64 %call4, i64* %lineNumber, align 8
  %12 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %filePosition = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %12, i32 0, i32 3
  %call5 = call [2 x i64] @getInputFilePosition()
  %13 = bitcast %struct._MIOPos* %tmp to [2 x i64]*
  store [2 x i64] %call5, [2 x i64]* %13, align 8
  %14 = bitcast %struct._MIOPos* %filePosition to i8*
  %15 = bitcast %struct._MIOPos* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 %15, i64 16, i1 false)
  br label %if.end

if.end:                                           ; preds = %while.end, %do.end
  %16 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %name6 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %16, i32 0, i32 1
  %17 = load %struct.sVString*, %struct.sVString** %name6, align 8
  %length7 = getelementptr inbounds %struct.sVString, %struct.sVString* %17, i32 0, i32 0
  %18 = load i64, i64* %length7, align 8
  %cmp = icmp ugt i64 %18, 0
  ret i1 %cmp
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @updateKind(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call = call i32 @getKindForToken(%struct.sTokenInfo* %0)
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %kind = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %1, i32 0, i32 0
  store i32 %call, i32* %kind, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @findTag(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %c = alloca i32, align 4
  %c66 = alloca i32, align 4
  %c78 = alloca i32, align 4
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %name = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 1
  %1 = load %struct.sVString*, %struct.sVString** %name, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %1, i32 0, i32 2
  %2 = load i8*, i8** %buffer, align 8
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %kind = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %3, i32 0, i32 0
  %4 = load i32, i32* %kind, align 8
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.23, i64 0, i64 0), i8* %2, i32 %4)
  %5 = load %struct.sTokenInfo*, %struct.sTokenInfo** @currentContext, align 8
  %kind1 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %5, i32 0, i32 0
  %6 = load i32, i32* %kind1, align 8
  %cmp = icmp ne i32 %6, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @dropEndContext(%struct.sTokenInfo* %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %kind2 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %8, i32 0, i32 0
  %9 = load i32, i32* %kind2, align 8
  %cmp3 = icmp eq i32 %9, 0
  br i1 %cmp3, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %10 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %name4 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %10, i32 0, i32 1
  %11 = load %struct.sVString*, %struct.sVString** %name4, align 8
  %buffer5 = getelementptr inbounds %struct.sVString, %struct.sVString* %11, i32 0, i32 2
  %12 = load i8*, i8** %buffer5, align 8
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 0
  %13 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %13 to i32
  %cmp6 = icmp eq i32 %conv, 96
  br i1 %cmp6, label %if.then8, label %if.else

if.then8:                                         ; preds = %land.lhs.true
  %call = call i32 @vGetc()
  %call9 = call i32 @skipWhite(i32 %call)
  store i32 %call9, i32* %c, align 4
  %14 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %15 = load i32, i32* %c, align 4
  %call10 = call zeroext i1 @readIdentifier(%struct.sTokenInfo* %14, i32 %15)
  %16 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @createTag(%struct.sTokenInfo* %16)
  br label %do.body

do.body:                                          ; preds = %land.end, %if.then8
  %call11 = call i32 @vGetc()
  store i32 %call11, i32* %c, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %17 = load i32, i32* %c, align 4
  %cmp12 = icmp ne i32 %17, -1
  br i1 %cmp12, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %18 = load i32, i32* %c, align 4
  %cmp14 = icmp ne i32 %18, 10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %19 = phi i1 [ false, %do.cond ], [ %cmp14, %land.rhs ]
  br i1 %19, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  %20 = load i32, i32* %c, align 4
  call void @vUngetc(i32 %20)
  br label %if.end111

if.else:                                          ; preds = %land.lhs.true, %if.end
  %21 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %kind16 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %21, i32 0, i32 0
  %22 = load i32, i32* %kind16, align 8
  %cmp17 = icmp eq i32 %22, 8
  br i1 %cmp17, label %if.then19, label %if.else20

if.then19:                                        ; preds = %if.else
  %23 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @processBlock(%struct.sTokenInfo* %23)
  br label %if.end110

if.else20:                                        ; preds = %if.else
  %24 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %kind21 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %24, i32 0, i32 0
  %25 = load i32, i32* %kind21, align 8
  %cmp22 = icmp eq i32 %25, 2
  br i1 %cmp22, label %if.then27, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else20
  %26 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %kind24 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %26, i32 0, i32 0
  %27 = load i32, i32* %kind24, align 8
  %cmp25 = icmp eq i32 %27, 7
  br i1 %cmp25, label %if.then27, label %if.else28

if.then27:                                        ; preds = %lor.lhs.false, %if.else20
  %28 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @processFunction(%struct.sTokenInfo* %28)
  br label %if.end109

if.else28:                                        ; preds = %lor.lhs.false
  %29 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %kind29 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %29, i32 0, i32 0
  %30 = load i32, i32* %kind29, align 8
  %cmp30 = icmp eq i32 %30, 9
  br i1 %cmp30, label %if.then32, label %if.else39

if.then32:                                        ; preds = %if.else28
  %31 = load %struct.sTokenInfo*, %struct.sTokenInfo** @currentContext, align 8
  %blockName = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %31, i32 0, i32 7
  %32 = load %struct.sVString*, %struct.sVString** %blockName, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %32, i32 0, i32 0
  %33 = load i64, i64* %length, align 8
  %cmp33 = icmp ugt i64 %33, 0
  br i1 %cmp33, label %if.then35, label %if.end38

if.then35:                                        ; preds = %if.then32
  %34 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %name36 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %34, i32 0, i32 1
  %35 = load %struct.sVString*, %struct.sVString** %name36, align 8
  %36 = load %struct.sTokenInfo*, %struct.sTokenInfo** @currentContext, align 8
  %blockName37 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %36, i32 0, i32 7
  %37 = load %struct.sVString*, %struct.sVString** %blockName37, align 8
  call void @vStringCopy(%struct.sVString* %35, %struct.sVString* %37)
  %38 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @createTag(%struct.sTokenInfo* %38)
  call void @skipToSemiColon()
  br label %if.end38

if.end38:                                         ; preds = %if.then35, %if.then32
  br label %if.end108

if.else39:                                        ; preds = %if.else28
  %39 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %kind40 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %39, i32 0, i32 0
  %40 = load i32, i32* %kind40, align 8
  %cmp41 = icmp eq i32 %40, 20
  br i1 %cmp41, label %if.then43, label %if.else44

if.then43:                                        ; preds = %if.else39
  %41 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @processTypedef(%struct.sTokenInfo* %41)
  br label %if.end107

if.else44:                                        ; preds = %if.else39
  %42 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %kind45 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %42, i32 0, i32 0
  %43 = load i32, i32* %kind45, align 8
  %cmp46 = icmp eq i32 %43, 12
  br i1 %cmp46, label %if.then48, label %if.else49

if.then48:                                        ; preds = %if.else44
  %44 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @processEnum(%struct.sTokenInfo* %44)
  br label %if.end106

if.else49:                                        ; preds = %if.else44
  %45 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %kind50 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %45, i32 0, i32 0
  %46 = load i32, i32* %kind50, align 8
  %cmp51 = icmp eq i32 %46, 10
  br i1 %cmp51, label %if.then53, label %if.else54

if.then53:                                        ; preds = %if.else49
  %47 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @processClass(%struct.sTokenInfo* %47)
  br label %if.end105

if.else54:                                        ; preds = %if.else49
  %48 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %kind55 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %48, i32 0, i32 0
  %49 = load i32, i32* %kind55, align 8
  %cmp56 = icmp eq i32 %49, -2
  br i1 %cmp56, label %land.lhs.true58, label %if.else62

land.lhs.true58:                                  ; preds = %if.else54
  %50 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call59 = call signext i16 @isPrototype(%struct.sTokenInfo* %50)
  %conv60 = sext i16 %call59 to i32
  %tobool = icmp ne i32 %conv60, 0
  br i1 %tobool, label %if.then61, label %if.else62

if.then61:                                        ; preds = %land.lhs.true58
  %51 = load %struct.sTokenInfo*, %struct.sTokenInfo** @currentContext, align 8
  %prototype = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %51, i32 0, i32 9
  store i8 1, i8* %prototype, align 8
  br label %if.end104

if.else62:                                        ; preds = %land.lhs.true58, %if.else54
  %52 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call63 = call signext i16 @isVariable(%struct.sTokenInfo* %52)
  %tobool64 = icmp ne i16 %call63, 0
  br i1 %tobool64, label %if.then65, label %if.else69

if.then65:                                        ; preds = %if.else62
  %call67 = call i32 @vGetc()
  %call68 = call i32 @skipWhite(i32 %call67)
  store i32 %call68, i32* %c66, align 4
  %53 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %54 = load i32, i32* %c66, align 4
  call void @tagNameList(%struct.sTokenInfo* %53, i32 %54)
  br label %if.end103

if.else69:                                        ; preds = %if.else62
  %55 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %kind70 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %55, i32 0, i32 0
  %56 = load i32, i32* %kind70, align 8
  %cmp71 = icmp ne i32 %56, -1
  br i1 %cmp71, label %land.lhs.true73, label %if.end102

land.lhs.true73:                                  ; preds = %if.else69
  %57 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %kind74 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %57, i32 0, i32 0
  %58 = load i32, i32* %kind74, align 8
  %cmp75 = icmp ne i32 %58, -2
  br i1 %cmp75, label %if.then77, label %if.end102

if.then77:                                        ; preds = %land.lhs.true73
  %call79 = call i32 @vGetc()
  %call80 = call i32 @skipWhite(i32 %call79)
  store i32 %call80, i32* %c78, align 4
  %59 = load i32, i32* %c78, align 4
  %call81 = call zeroext i1 @isIdentifierCharacter(i32 %59)
  br i1 %call81, label %if.then82, label %if.end101

if.then82:                                        ; preds = %if.then77
  %60 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %61 = load i32, i32* %c78, align 4
  %call83 = call zeroext i1 @readIdentifier(%struct.sTokenInfo* %60, i32 %61)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then82
  %62 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call84 = call i32 @getKindForToken(%struct.sTokenInfo* %62)
  %cmp85 = icmp eq i32 %call84, -2
  br i1 %cmp85, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call87 = call i32 @vGetc()
  %call88 = call i32 @skipWhite(i32 %call87)
  store i32 %call88, i32* %c78, align 4
  %63 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %64 = load i32, i32* %c78, align 4
  %call89 = call zeroext i1 @readIdentifier(%struct.sTokenInfo* %63, i32 %64)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %65 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @createTag(%struct.sTokenInfo* %65)
  %call90 = call i32 @vGetc()
  %call91 = call i32 @skipWhite(i32 %call90)
  store i32 %call91, i32* %c78, align 4
  %66 = load i32, i32* %c78, align 4
  %cmp92 = icmp eq i32 %66, 40
  br i1 %cmp92, label %land.lhs.true94, label %if.else99

land.lhs.true94:                                  ; preds = %while.end
  %67 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call95 = call signext i16 @hasSimplePortList(%struct.sTokenInfo* %67)
  %conv96 = sext i16 %call95 to i32
  %tobool97 = icmp ne i32 %conv96, 0
  br i1 %tobool97, label %if.then98, label %if.else99

if.then98:                                        ; preds = %land.lhs.true94
  %68 = load i32, i32* %c78, align 4
  call void @processPortList(i32 %68)
  br label %if.end100

if.else99:                                        ; preds = %land.lhs.true94, %while.end
  %69 = load i32, i32* %c78, align 4
  call void @vUngetc(i32 %69)
  br label %if.end100

if.end100:                                        ; preds = %if.else99, %if.then98
  br label %if.end101

if.end101:                                        ; preds = %if.end100, %if.then77
  br label %if.end102

if.end102:                                        ; preds = %if.end101, %land.lhs.true73, %if.else69
  br label %if.end103

if.end103:                                        ; preds = %if.end102, %if.then65
  br label %if.end104

if.end104:                                        ; preds = %if.end103, %if.then61
  br label %if.end105

if.end105:                                        ; preds = %if.end104, %if.then53
  br label %if.end106

if.end106:                                        ; preds = %if.end105, %if.then48
  br label %if.end107

if.end107:                                        ; preds = %if.end106, %if.then43
  br label %if.end108

if.end108:                                        ; preds = %if.end107, %if.end38
  br label %if.end109

if.end109:                                        ; preds = %if.end108, %if.then27
  br label %if.end110

if.end110:                                        ; preds = %if.end109, %if.then19
  br label %if.end111

if.end111:                                        ; preds = %if.end110, %do.end
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @deleteToken(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %cmp = icmp ne %struct.sTokenInfo* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %name = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %1, i32 0, i32 1
  %2 = load %struct.sVString*, %struct.sVString** %name, align 8
  call void @vStringDelete(%struct.sVString* %2)
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %blockName = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %3, i32 0, i32 7
  %4 = load %struct.sVString*, %struct.sVString** %blockName, align 8
  call void @vStringDelete(%struct.sVString* %4)
  %5 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %inheritance = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %5, i32 0, i32 8
  %6 = load %struct.sVString*, %struct.sVString** %inheritance, align 8
  call void @vStringDelete(%struct.sVString* %6)
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %8 = bitcast %struct.sTokenInfo* %7 to i8*
  call void @eFree(i8* %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @pruneTokens(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call = call %struct.sTokenInfo* @popToken(%struct.sTokenInfo* %0)
  store %struct.sTokenInfo* %call, %struct.sTokenInfo** %token.addr, align 8
  %tobool = icmp ne %struct.sTokenInfo* %call, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

declare i8* @eMalloc(i64) #1

declare %struct.sVString* @vStringNew() #1

declare i64 @getInputLineNumber() #1

declare [2 x i64] @getInputFilePosition() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare i32 @getcFromInputFile() #1

declare i32 @cppSkipOverCComment() #1

declare void @ungetcToInputFile(i32) #1

; Function Attrs: nounwind readonly
declare i32 @isspace(i32) #3

; Function Attrs: nounwind readonly
declare i32 @isalnum(i32) #3

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

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @vUngetc(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load i32, i32* %c.addr, align 4
  store i32 %0, i32* @Ungetc, align 4
  ret void
}

declare void @vStringResize(%struct.sVString*, i64) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @getKindForToken(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %name = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 1
  %1 = load %struct.sVString*, %struct.sVString** %name, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %1, i32 0, i32 2
  %2 = load i8*, i8** %buffer, align 8
  %call = call i32 @getInputLanguage()
  %call1 = call i32 @lookupKeyword(i8* %2, i32 %call)
  ret i32 %call1
}

declare i32 @lookupKeyword(i8*, i32) #1

declare i32 @getInputLanguage() #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @dropEndContext(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %endTokenName = alloca %struct.sVString*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** @currentContext, align 8
  %name = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 1
  %1 = load %struct.sVString*, %struct.sVString** %name, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %1, i32 0, i32 2
  %2 = load i8*, i8** %buffer, align 8
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** @currentContext, align 8
  %kind = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %3, i32 0, i32 0
  %4 = load i32, i32* %kind, align 8
  %5 = load %struct.sTokenInfo*, %struct.sTokenInfo** @currentContext, align 8
  %nestLevel = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %5, i32 0, i32 5
  %6 = load i32, i32* %nestLevel, align 8
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.24, i64 0, i64 0), i8* %2, i32 %4, i32 %6)
  %call = call %struct.sVString* @vStringNewInit(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0))
  store %struct.sVString* %call, %struct.sVString** %endTokenName, align 8
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** @currentContext, align 8
  %kind1 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %7, i32 0, i32 0
  %8 = load i32, i32* %kind1, align 8
  %cmp = icmp eq i32 %8, 11
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %9 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %name2 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %9, i32 0, i32 1
  %10 = load %struct.sVString*, %struct.sVString** %name2, align 8
  %buffer3 = getelementptr inbounds %struct.sVString, %struct.sVString* %10, i32 0, i32 2
  %11 = load i8*, i8** %buffer3, align 8
  %call4 = call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i64 0, i64 0))
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %12 = load %struct.sTokenInfo*, %struct.sTokenInfo** @currentContext, align 8
  %kind6 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %12, i32 0, i32 0
  %13 = load i32, i32* %kind6, align 8
  %cmp7 = icmp eq i32 %13, 8
  br i1 %cmp7, label %land.lhs.true8, label %if.else

land.lhs.true8:                                   ; preds = %lor.lhs.false
  %14 = load %struct.sTokenInfo*, %struct.sTokenInfo** @currentContext, align 8
  %nestLevel9 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %14, i32 0, i32 5
  %15 = load i32, i32* %nestLevel9, align 8
  %cmp10 = icmp eq i32 %15, 0
  br i1 %cmp10, label %land.lhs.true11, label %if.else

land.lhs.true11:                                  ; preds = %land.lhs.true8
  %16 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %name12 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %16, i32 0, i32 1
  %17 = load %struct.sVString*, %struct.sVString** %name12, align 8
  %buffer13 = getelementptr inbounds %struct.sVString, %struct.sVString* %17, i32 0, i32 2
  %18 = load i8*, i8** %buffer13, align 8
  %19 = load %struct.sVString*, %struct.sVString** %endTokenName, align 8
  %buffer14 = getelementptr inbounds %struct.sVString, %struct.sVString* %19, i32 0, i32 2
  %20 = load i8*, i8** %buffer14, align 8
  %call15 = call i32 @strcmp(i8* %18, i8* %20)
  %cmp16 = icmp eq i32 %call15, 0
  br i1 %cmp16, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true11, %land.lhs.true
  %21 = load %struct.sTokenInfo*, %struct.sTokenInfo** @currentContext, align 8
  %name17 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %21, i32 0, i32 1
  %22 = load %struct.sVString*, %struct.sVString** %name17, align 8
  %buffer18 = getelementptr inbounds %struct.sVString, %struct.sVString* %22, i32 0, i32 2
  %23 = load i8*, i8** %buffer18, align 8
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i64 0, i64 0), i8* %23)
  %24 = load %struct.sTokenInfo*, %struct.sTokenInfo** @currentContext, align 8
  %call19 = call %struct.sTokenInfo* @popToken(%struct.sTokenInfo* %24)
  store %struct.sTokenInfo* %call19, %struct.sTokenInfo** @currentContext, align 8
  br label %if.end36

if.else:                                          ; preds = %land.lhs.true11, %land.lhs.true8, %lor.lhs.false
  %25 = load %struct.sVString*, %struct.sVString** %endTokenName, align 8
  %26 = load %struct.sTokenInfo*, %struct.sTokenInfo** @currentContext, align 8
  %kind20 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %26, i32 0, i32 0
  %27 = load i32, i32* %kind20, align 8
  %call21 = call i8* @getNameForKind(i32 %27)
  call void @vStringCatS(%struct.sVString* %25, i8* %call21)
  %28 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %name22 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %28, i32 0, i32 1
  %29 = load %struct.sVString*, %struct.sVString** %name22, align 8
  %buffer23 = getelementptr inbounds %struct.sVString, %struct.sVString* %29, i32 0, i32 2
  %30 = load i8*, i8** %buffer23, align 8
  %31 = load %struct.sVString*, %struct.sVString** %endTokenName, align 8
  %buffer24 = getelementptr inbounds %struct.sVString, %struct.sVString* %31, i32 0, i32 2
  %32 = load i8*, i8** %buffer24, align 8
  %call25 = call i32 @strcmp(i8* %30, i8* %32)
  %cmp26 = icmp eq i32 %call25, 0
  br i1 %cmp26, label %if.then27, label %if.end35

if.then27:                                        ; preds = %if.else
  %33 = load %struct.sTokenInfo*, %struct.sTokenInfo** @currentContext, align 8
  %name28 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %33, i32 0, i32 1
  %34 = load %struct.sVString*, %struct.sVString** %name28, align 8
  %buffer29 = getelementptr inbounds %struct.sVString, %struct.sVString* %34, i32 0, i32 2
  %35 = load i8*, i8** %buffer29, align 8
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i64 0, i64 0), i8* %35)
  %36 = load %struct.sTokenInfo*, %struct.sTokenInfo** @currentContext, align 8
  %call30 = call %struct.sTokenInfo* @popToken(%struct.sTokenInfo* %36)
  store %struct.sTokenInfo* %call30, %struct.sTokenInfo** @currentContext, align 8
  %37 = load %struct.sTokenInfo*, %struct.sTokenInfo** @currentContext, align 8
  %classScope = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %37, i32 0, i32 10
  %38 = load i8, i8* %classScope, align 1
  %tobool = trunc i8 %38 to i1
  br i1 %tobool, label %if.then31, label %if.end

if.then31:                                        ; preds = %if.then27
  %39 = load %struct.sTokenInfo*, %struct.sTokenInfo** @currentContext, align 8
  %name32 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %39, i32 0, i32 1
  %40 = load %struct.sVString*, %struct.sVString** %name32, align 8
  %buffer33 = getelementptr inbounds %struct.sVString, %struct.sVString* %40, i32 0, i32 2
  %41 = load i8*, i8** %buffer33, align 8
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.27, i64 0, i64 0), i8* %41)
  %42 = load %struct.sTokenInfo*, %struct.sTokenInfo** @currentContext, align 8
  %call34 = call %struct.sTokenInfo* @popToken(%struct.sTokenInfo* %42)
  store %struct.sTokenInfo* %call34, %struct.sTokenInfo** @currentContext, align 8
  br label %if.end

if.end:                                           ; preds = %if.then31, %if.then27
  br label %if.end35

if.end35:                                         ; preds = %if.end, %if.else
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.then
  %43 = load %struct.sVString*, %struct.sVString** %endTokenName, align 8
  call void @vStringDelete(%struct.sVString* %43)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @createTag(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %tag = alloca %struct.sTagEntryInfo, align 8
  %kind = alloca i32, align 4
  %scopedName = alloca %struct.sVString*, align 8
  %newScope = alloca %struct.sTokenInfo*, align 8
  %content = alloca %struct.sTokenInfo*, align 8
  %vStringClear_s = alloca %struct.sVString*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** @currentContext, align 8
  %prototype = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 9
  %1 = load i8, i8* %prototype, align 8
  %tobool = trunc i8 %1 to i1
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 17, i32* %kind, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %kind1 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %2, i32 0, i32 0
  %3 = load i32, i32* %kind1, align 8
  store i32 %3, i32* %kind, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %name = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %4, i32 0, i32 1
  %5 = load %struct.sVString*, %struct.sVString** %name, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %5, i32 0, i32 0
  %6 = load i64, i64* %length, align 8
  %cmp = icmp eq i64 %6, 0
  br i1 %cmp, label %if.then3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %7 = load i32, i32* %kind, align 4
  %call = call signext i8 @kindEnabled(i32 %7)
  %tobool2 = icmp ne i8 %call, 0
  br i1 %tobool2, label %if.end4, label %if.then3

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.28, i64 0, i64 0))
  br label %do.end69

if.end4:                                          ; preds = %lor.lhs.false
  %8 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %name5 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %8, i32 0, i32 1
  %9 = load %struct.sVString*, %struct.sVString** %name5, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %9, i32 0, i32 2
  %10 = load i8*, i8** %buffer, align 8
  %11 = load i32, i32* %kind, align 4
  call void @initTagEntry(%struct.sTagEntryInfo* %tag, i8* %10, i32 %11)
  %12 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %lineNumber = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %12, i32 0, i32 2
  %13 = load i64, i64* %lineNumber, align 8
  %lineNumber6 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %tag, i32 0, i32 1
  store i64 %13, i64* %lineNumber6, align 8
  %filePosition = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %tag, i32 0, i32 4
  %14 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %filePosition7 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %14, i32 0, i32 3
  %15 = bitcast %struct._MIOPos* %filePosition to i8*
  %16 = bitcast %struct._MIOPos* %filePosition7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 %16, i64 16, i1 false)
  %17 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %name8 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %17, i32 0, i32 1
  %18 = load %struct.sVString*, %struct.sVString** %name8, align 8
  %buffer9 = getelementptr inbounds %struct.sVString, %struct.sVString* %18, i32 0, i32 2
  %19 = load i8*, i8** %buffer9, align 8
  %20 = load i32, i32* %kind, align 4
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.29, i64 0, i64 0), i8* %19, i32 %20)
  %21 = load %struct.sTokenInfo*, %struct.sTokenInfo** @currentContext, align 8
  %kind10 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %21, i32 0, i32 0
  %22 = load i32, i32* %kind10, align 8
  %cmp11 = icmp ne i32 %22, -1
  br i1 %cmp11, label %if.then12, label %if.end19

if.then12:                                        ; preds = %if.end4
  %23 = load %struct.sTokenInfo*, %struct.sTokenInfo** @currentContext, align 8
  %name13 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %23, i32 0, i32 1
  %24 = load %struct.sVString*, %struct.sVString** %name13, align 8
  %buffer14 = getelementptr inbounds %struct.sVString, %struct.sVString* %24, i32 0, i32 2
  %25 = load i8*, i8** %buffer14, align 8
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.30, i64 0, i64 0), i8* %25)
  %26 = load i32, i32* %kind, align 4
  %27 = load %struct.sTokenInfo*, %struct.sTokenInfo** @currentContext, align 8
  %lastKind = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %27, i32 0, i32 6
  store i32 %26, i32* %lastKind, align 4
  %28 = load %struct.sTokenInfo*, %struct.sTokenInfo** @currentContext, align 8
  %kind15 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %28, i32 0, i32 0
  %29 = load i32, i32* %kind15, align 8
  %extensionFields = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %tag, i32 0, i32 11
  %scopeKindIndex = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields, i32 0, i32 5
  store i32 %29, i32* %scopeKindIndex, align 4
  %30 = load %struct.sTokenInfo*, %struct.sTokenInfo** @currentContext, align 8
  %name16 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %30, i32 0, i32 1
  %31 = load %struct.sVString*, %struct.sVString** %name16, align 8
  %buffer17 = getelementptr inbounds %struct.sVString, %struct.sVString* %31, i32 0, i32 2
  %32 = load i8*, i8** %buffer17, align 8
  %extensionFields18 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %tag, i32 0, i32 11
  %scopeName = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields18, i32 0, i32 6
  store i8* %32, i8** %scopeName, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.then12, %if.end4
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0))
  %33 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %inheritance = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %33, i32 0, i32 8
  %34 = load %struct.sVString*, %struct.sVString** %inheritance, align 8
  %length20 = getelementptr inbounds %struct.sVString, %struct.sVString* %34, i32 0, i32 0
  %35 = load i64, i64* %length20, align 8
  %cmp21 = icmp ugt i64 %35, 0
  br i1 %cmp21, label %if.then22, label %if.end31

if.then22:                                        ; preds = %if.end19
  %36 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %inheritance23 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %36, i32 0, i32 8
  %37 = load %struct.sVString*, %struct.sVString** %inheritance23, align 8
  %buffer24 = getelementptr inbounds %struct.sVString, %struct.sVString* %37, i32 0, i32 2
  %38 = load i8*, i8** %buffer24, align 8
  %extensionFields25 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %tag, i32 0, i32 11
  %inheritance26 = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields25, i32 0, i32 3
  store i8* %38, i8** %inheritance26, align 8
  %39 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %name27 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %39, i32 0, i32 1
  %40 = load %struct.sVString*, %struct.sVString** %name27, align 8
  %buffer28 = getelementptr inbounds %struct.sVString, %struct.sVString* %40, i32 0, i32 2
  %41 = load i8*, i8** %buffer28, align 8
  %extensionFields29 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %tag, i32 0, i32 11
  %inheritance30 = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields29, i32 0, i32 3
  %42 = load i8*, i8** %inheritance30, align 8
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.32, i64 0, i64 0), i8* %41, i8* %42)
  br label %if.end31

if.end31:                                         ; preds = %if.then22, %if.end19
  %call32 = call i32 @makeTagEntry(%struct.sTagEntryInfo* %tag)
  %call33 = call zeroext i1 @isXtagEnabled(i32 3)
  br i1 %call33, label %land.lhs.true, label %if.end44

land.lhs.true:                                    ; preds = %if.end31
  %43 = load %struct.sTokenInfo*, %struct.sTokenInfo** @currentContext, align 8
  %kind34 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %43, i32 0, i32 0
  %44 = load i32, i32* %kind34, align 8
  %cmp35 = icmp ne i32 %44, -1
  br i1 %cmp35, label %if.then36, label %if.end44

if.then36:                                        ; preds = %land.lhs.true
  %call37 = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call37, %struct.sVString** %scopedName, align 8
  %45 = load %struct.sVString*, %struct.sVString** %scopedName, align 8
  %46 = load %struct.sTokenInfo*, %struct.sTokenInfo** @currentContext, align 8
  %name38 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %46, i32 0, i32 1
  %47 = load %struct.sVString*, %struct.sVString** %name38, align 8
  call void @vStringCopy(%struct.sVString* %45, %struct.sVString* %47)
  %48 = load %struct.sVString*, %struct.sVString** %scopedName, align 8
  call void @vStringPut(%struct.sVString* %48, i32 46)
  %49 = load %struct.sVString*, %struct.sVString** %scopedName, align 8
  %50 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %name39 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %50, i32 0, i32 1
  %51 = load %struct.sVString*, %struct.sVString** %name39, align 8
  %buffer40 = getelementptr inbounds %struct.sVString, %struct.sVString* %51, i32 0, i32 2
  %52 = load i8*, i8** %buffer40, align 8
  call void @vStringCatS(%struct.sVString* %49, i8* %52)
  %53 = load %struct.sVString*, %struct.sVString** %scopedName, align 8
  %buffer41 = getelementptr inbounds %struct.sVString, %struct.sVString* %53, i32 0, i32 2
  %54 = load i8*, i8** %buffer41, align 8
  %name42 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %tag, i32 0, i32 7
  store i8* %54, i8** %name42, align 8
  call void @markTagExtraBit(%struct.sTagEntryInfo* %tag, i32 3)
  %call43 = call i32 @makeTagEntry(%struct.sTagEntryInfo* %tag)
  %55 = load %struct.sVString*, %struct.sVString** %scopedName, align 8
  call void @vStringDelete(%struct.sVString* %55)
  br label %if.end44

if.end44:                                         ; preds = %if.then36, %land.lhs.true, %if.end31
  %56 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call45 = call signext i16 @isContainer(%struct.sTokenInfo* %56)
  %tobool46 = icmp ne i16 %call45, 0
  br i1 %tobool46, label %if.then47, label %if.end63

if.then47:                                        ; preds = %if.end44
  %call48 = call %struct.sTokenInfo* @newToken()
  store %struct.sTokenInfo* %call48, %struct.sTokenInfo** %newScope, align 8
  %57 = load %struct.sTokenInfo*, %struct.sTokenInfo** %newScope, align 8
  %name49 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %57, i32 0, i32 1
  %58 = load %struct.sVString*, %struct.sVString** %name49, align 8
  %59 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %name50 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %59, i32 0, i32 1
  %60 = load %struct.sVString*, %struct.sVString** %name50, align 8
  call void @vStringCopy(%struct.sVString* %58, %struct.sVString* %60)
  %61 = load i32, i32* %kind, align 4
  %62 = load %struct.sTokenInfo*, %struct.sTokenInfo** %newScope, align 8
  %kind51 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %62, i32 0, i32 0
  store i32 %61, i32* %kind51, align 8
  %63 = load %struct.sTokenInfo*, %struct.sTokenInfo** %newScope, align 8
  call void @createContext(%struct.sTokenInfo* %63)
  %64 = load %struct.sTokenInfo*, %struct.sTokenInfo** @tagContents, align 8
  %cmp52 = icmp ne %struct.sTokenInfo* %64, null
  br i1 %cmp52, label %if.then53, label %if.end55

if.then53:                                        ; preds = %if.then47
  %65 = load %struct.sTokenInfo*, %struct.sTokenInfo** @tagContents, align 8
  store %struct.sTokenInfo* %65, %struct.sTokenInfo** %content, align 8
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.33, i64 0, i64 0))
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then53
  %66 = load %struct.sTokenInfo*, %struct.sTokenInfo** %content, align 8
  call void @createTag(%struct.sTokenInfo* %66)
  %67 = load %struct.sTokenInfo*, %struct.sTokenInfo** %content, align 8
  %scope = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %67, i32 0, i32 4
  %68 = load %struct.sTokenInfo*, %struct.sTokenInfo** %scope, align 8
  store %struct.sTokenInfo* %68, %struct.sTokenInfo** %content, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %69 = load %struct.sTokenInfo*, %struct.sTokenInfo** %content, align 8
  %tobool54 = icmp ne %struct.sTokenInfo* %69, null
  br i1 %tobool54, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end55

if.end55:                                         ; preds = %do.end, %if.then47
  %70 = load %struct.sTokenInfo*, %struct.sTokenInfo** @currentContext, align 8
  %call56 = call signext i16 @isTempContext(%struct.sTokenInfo* %70)
  %tobool57 = icmp ne i16 %call56, 0
  br i1 %tobool57, label %if.then58, label %if.end62

if.then58:                                        ; preds = %if.end55
  %71 = load %struct.sTokenInfo*, %struct.sTokenInfo** @currentContext, align 8
  %name59 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %71, i32 0, i32 1
  %72 = load %struct.sVString*, %struct.sVString** %name59, align 8
  %buffer60 = getelementptr inbounds %struct.sVString, %struct.sVString* %72, i32 0, i32 2
  %73 = load i8*, i8** %buffer60, align 8
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i64 0, i64 0), i8* %73)
  %74 = load %struct.sTokenInfo*, %struct.sTokenInfo** @currentContext, align 8
  %call61 = call %struct.sTokenInfo* @popToken(%struct.sTokenInfo* %74)
  store %struct.sTokenInfo* %call61, %struct.sTokenInfo** @currentContext, align 8
  br label %if.end62

if.end62:                                         ; preds = %if.then58, %if.end55
  br label %if.end63

if.end63:                                         ; preds = %if.end62, %if.end44
  br label %do.body64

do.body64:                                        ; preds = %if.end63
  %75 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %inheritance65 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %75, i32 0, i32 8
  %76 = load %struct.sVString*, %struct.sVString** %inheritance65, align 8
  store %struct.sVString* %76, %struct.sVString** %vStringClear_s, align 8
  %77 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %length66 = getelementptr inbounds %struct.sVString, %struct.sVString* %77, i32 0, i32 0
  store i64 0, i64* %length66, align 8
  %78 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %buffer67 = getelementptr inbounds %struct.sVString, %struct.sVString* %78, i32 0, i32 2
  %79 = load i8*, i8** %buffer67, align 8
  %arrayidx = getelementptr inbounds i8, i8* %79, i64 0
  store i8 0, i8* %arrayidx, align 1
  br label %do.end69

do.end69:                                         ; preds = %if.then3, %do.body64
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @processBlock(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %blockStart = alloca i8, align 1
  %blockEnd = alloca i8, align 1
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  store i8 0, i8* %blockStart, align 1
  store i8 0, i8* %blockEnd, align 1
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %name = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 1
  %1 = load %struct.sVString*, %struct.sVString** %name, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %1, i32 0, i32 2
  %2 = load i8*, i8** %buffer, align 8
  %call = call i32 @strcmp(i8* %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i64 0, i64 0))
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** @currentContext, align 8
  %nestLevel = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %3, i32 0, i32 5
  %4 = load i32, i32* %nestLevel, align 8
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %nestLevel, align 8
  store i8 1, i8* %blockStart, align 1
  br label %if.end7

if.else:                                          ; preds = %entry
  %5 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %name1 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %5, i32 0, i32 1
  %6 = load %struct.sVString*, %struct.sVString** %name1, align 8
  %buffer2 = getelementptr inbounds %struct.sVString, %struct.sVString* %6, i32 0, i32 2
  %7 = load i8*, i8** %buffer2, align 8
  %call3 = call i32 @strcmp(i8* %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0))
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.else
  %8 = load %struct.sTokenInfo*, %struct.sTokenInfo** @currentContext, align 8
  %nestLevel6 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %8, i32 0, i32 5
  %9 = load i32, i32* %nestLevel6, align 8
  %dec = add nsw i32 %9, -1
  store i32 %dec, i32* %nestLevel6, align 8
  store i8 1, i8* %blockEnd, align 1
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.else
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then
  %10 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call8 = call zeroext i1 @findBlockName(%struct.sTokenInfo* %10)
  br i1 %call8, label %if.then9, label %if.end26

if.then9:                                         ; preds = %if.end7
  %11 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %name10 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %11, i32 0, i32 1
  %12 = load %struct.sVString*, %struct.sVString** %name10, align 8
  %buffer11 = getelementptr inbounds %struct.sVString, %struct.sVString* %12, i32 0, i32 2
  %13 = load i8*, i8** %buffer11, align 8
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.36, i64 0, i64 0), i8* %13)
  %14 = load i8, i8* %blockStart, align 1
  %tobool = trunc i8 %14 to i1
  br i1 %tobool, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.then9
  %15 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @createTag(%struct.sTokenInfo* %15)
  %16 = load %struct.sTokenInfo*, %struct.sTokenInfo** @currentContext, align 8
  %name13 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %16, i32 0, i32 1
  %17 = load %struct.sVString*, %struct.sVString** %name13, align 8
  %buffer14 = getelementptr inbounds %struct.sVString, %struct.sVString* %17, i32 0, i32 2
  %18 = load i8*, i8** %buffer14, align 8
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.37, i64 0, i64 0), i8* %18)
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.then9
  %19 = load i8, i8* %blockEnd, align 1
  %tobool16 = trunc i8 %19 to i1
  br i1 %tobool16, label %land.lhs.true, label %if.end25

land.lhs.true:                                    ; preds = %if.end15
  %20 = load %struct.sTokenInfo*, %struct.sTokenInfo** @currentContext, align 8
  %kind = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %20, i32 0, i32 0
  %21 = load i32, i32* %kind, align 8
  %cmp17 = icmp eq i32 %21, 8
  br i1 %cmp17, label %land.lhs.true18, label %if.end25

land.lhs.true18:                                  ; preds = %land.lhs.true
  %22 = load %struct.sTokenInfo*, %struct.sTokenInfo** @currentContext, align 8
  %nestLevel19 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %22, i32 0, i32 5
  %23 = load i32, i32* %nestLevel19, align 8
  %cmp20 = icmp sle i32 %23, 1
  br i1 %cmp20, label %if.then21, label %if.end25

if.then21:                                        ; preds = %land.lhs.true18
  %24 = load %struct.sTokenInfo*, %struct.sTokenInfo** @currentContext, align 8
  %name22 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %24, i32 0, i32 1
  %25 = load %struct.sVString*, %struct.sVString** %name22, align 8
  %buffer23 = getelementptr inbounds %struct.sVString, %struct.sVString* %25, i32 0, i32 2
  %26 = load i8*, i8** %buffer23, align 8
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i64 0, i64 0), i8* %26)
  %27 = load %struct.sTokenInfo*, %struct.sTokenInfo** @currentContext, align 8
  %call24 = call %struct.sTokenInfo* @popToken(%struct.sTokenInfo* %27)
  store %struct.sTokenInfo* %call24, %struct.sTokenInfo** @currentContext, align 8
  br label %if.end25

if.end25:                                         ; preds = %if.then21, %land.lhs.true18, %land.lhs.true, %if.end15
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %if.end7
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @processFunction(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %c = alloca i32, align 4
  %classType = alloca %struct.sTokenInfo*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  %call = call i32 @vGetc()
  %call1 = call i32 @skipWhite(i32 %call)
  store i32 %call1, i32* %c, align 4
  br label %do.body

do.body:                                          ; preds = %land.end, %entry
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %1 = load i32, i32* %c, align 4
  %call2 = call zeroext i1 @readIdentifier(%struct.sTokenInfo* %0, i32 %1)
  %call3 = call i32 @vGetc()
  %call4 = call i32 @skipWhite(i32 %call3)
  store i32 %call4, i32* %c, align 4
  %2 = load i32, i32* @Lang_systemverilog, align 4
  %call5 = call zeroext i1 @isInputLanguage(i32 %2)
  br i1 %call5, label %land.lhs.true, label %if.end12

land.lhs.true:                                    ; preds = %do.body
  %3 = load i32, i32* %c, align 4
  %cmp = icmp eq i32 %3, 58
  br i1 %cmp, label %if.then, label %if.end12

if.then:                                          ; preds = %land.lhs.true
  %call6 = call i32 @vGetc()
  store i32 %call6, i32* %c, align 4
  %4 = load i32, i32* %c, align 4
  %cmp7 = icmp eq i32 %4, 58
  br i1 %cmp7, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.then
  %5 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %name = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %5, i32 0, i32 1
  %6 = load %struct.sVString*, %struct.sVString** %name, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %6, i32 0, i32 2
  %7 = load i8*, i8** %buffer, align 8
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.38, i64 0, i64 0), i8* %7)
  %call9 = call %struct.sTokenInfo* @newToken()
  store %struct.sTokenInfo* %call9, %struct.sTokenInfo** %classType, align 8
  %8 = load %struct.sTokenInfo*, %struct.sTokenInfo** %classType, align 8
  %name10 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %8, i32 0, i32 1
  %9 = load %struct.sVString*, %struct.sVString** %name10, align 8
  %10 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %name11 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %10, i32 0, i32 1
  %11 = load %struct.sVString*, %struct.sVString** %name11, align 8
  call void @vStringCopy(%struct.sVString* %9, %struct.sVString* %11)
  %12 = load %struct.sTokenInfo*, %struct.sTokenInfo** %classType, align 8
  %kind = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %12, i32 0, i32 0
  store i32 10, i32* %kind, align 8
  %13 = load %struct.sTokenInfo*, %struct.sTokenInfo** %classType, align 8
  call void @createContext(%struct.sTokenInfo* %13)
  %14 = load %struct.sTokenInfo*, %struct.sTokenInfo** @currentContext, align 8
  %classScope = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %14, i32 0, i32 10
  store i8 1, i8* %classScope, align 1
  br label %if.end

if.else:                                          ; preds = %if.then
  %15 = load i32, i32* %c, align 4
  call void @vUngetc(i32 %15)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then8
  br label %if.end12

if.end12:                                         ; preds = %if.end, %land.lhs.true, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end12
  %16 = load i32, i32* %c, align 4
  %cmp13 = icmp ne i32 %16, 40
  br i1 %cmp13, label %land.lhs.true14, label %land.end

land.lhs.true14:                                  ; preds = %do.cond
  %17 = load i32, i32* %c, align 4
  %cmp15 = icmp ne i32 %17, 59
  br i1 %cmp15, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true14
  %18 = load i32, i32* %c, align 4
  %cmp16 = icmp ne i32 %18, -1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true14, %do.cond
  %19 = phi i1 [ false, %land.lhs.true14 ], [ false, %do.cond ], [ %cmp16, %land.rhs ]
  br i1 %19, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  %20 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %name17 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %20, i32 0, i32 1
  %21 = load %struct.sVString*, %struct.sVString** %name17, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %21, i32 0, i32 0
  %22 = load i64, i64* %length, align 8
  %cmp18 = icmp ugt i64 %22, 0
  br i1 %cmp18, label %if.then19, label %if.end22

if.then19:                                        ; preds = %do.end
  %23 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %name20 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %23, i32 0, i32 1
  %24 = load %struct.sVString*, %struct.sVString** %name20, align 8
  %buffer21 = getelementptr inbounds %struct.sVString, %struct.sVString* %24, i32 0, i32 2
  %25 = load i8*, i8** %buffer21, align 8
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.39, i64 0, i64 0), i8* %25)
  %26 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @createTag(%struct.sTokenInfo* %26)
  %27 = load i32, i32* %c, align 4
  call void @processPortList(i32 %27)
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %do.end
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @skipToSemiColon() #0 {
entry:
  %c = alloca i32, align 4
  br label %do.body

do.body:                                          ; preds = %land.end, %entry
  %call = call i32 @vGetc()
  store i32 %call, i32* %c, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %0 = load i32, i32* %c, align 4
  %cmp = icmp ne i32 %0, -1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %1 = load i32, i32* %c, align 4
  %cmp1 = icmp ne i32 %1, 59
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %2 = phi i1 [ false, %do.cond ], [ %cmp1, %land.rhs ]
  br i1 %2, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @processTypedef(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %c = alloca i32, align 4
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  %call = call i32 @vGetc()
  %call1 = call i32 @skipWhite(i32 %call)
  store i32 %call1, i32* %c, align 4
  %0 = load i32, i32* %c, align 4
  %call2 = call zeroext i1 @isIdentifierCharacter(i32 %0)
  br i1 %call2, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %2 = load i32, i32* %c, align 4
  %call3 = call zeroext i1 @readIdentifier(%struct.sTokenInfo* %1, i32 %2)
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @updateKind(%struct.sTokenInfo* %3)
  %4 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %kind = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %4, i32 0, i32 0
  %5 = load i32, i32* %kind, align 8
  switch i32 %5, label %sw.default [
    i32 13, label %sw.bb
    i32 10, label %sw.bb7
    i32 12, label %sw.bb8
  ]

sw.bb:                                            ; preds = %if.then
  %call4 = call i32 @vGetc()
  %call5 = call i32 @skipWhite(i32 %call4)
  store i32 %call5, i32* %c, align 4
  %6 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %7 = load i32, i32* %c, align 4
  %call6 = call zeroext i1 @readIdentifier(%struct.sTokenInfo* %6, i32 %7)
  %8 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @updateKind(%struct.sTokenInfo* %8)
  br label %sw.bb7

sw.bb7:                                           ; preds = %if.then, %sw.bb
  %9 = load %struct.sTokenInfo*, %struct.sTokenInfo** @currentContext, align 8
  %prototype = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %9, i32 0, i32 9
  store i8 1, i8* %prototype, align 8
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.then
  %10 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %kind9 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %10, i32 0, i32 0
  store i32 20, i32* %kind9, align 8
  %11 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @processEnum(%struct.sTokenInfo* %11)
  br label %return

sw.default:                                       ; preds = %if.then
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb7
  %call10 = call i32 @vGetc()
  %call11 = call i32 @skipWhite(i32 %call10)
  store i32 %call11, i32* %c, align 4
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %entry
  %12 = load i32, i32* %c, align 4
  %cmp = icmp eq i32 %12, 91
  br i1 %cmp, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.end
  %call13 = call i32 @skipPastMatch(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i64 0, i64 0))
  %call14 = call i32 @skipWhite(i32 %call13)
  store i32 %call14, i32* %c, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end15
  %13 = load i32, i32* %c, align 4
  %call16 = call zeroext i1 @isIdentifierCharacter(i32 %13)
  br i1 %call16, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %14 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %15 = load i32, i32* %c, align 4
  %call17 = call zeroext i1 @readIdentifier(%struct.sTokenInfo* %14, i32 %15)
  %call18 = call i32 @vGetc()
  %call19 = call i32 @skipWhite(i32 %call18)
  store i32 %call19, i32* %c, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %16 = load i32, i32* %c, align 4
  %cmp20 = icmp eq i32 %16, 123
  br i1 %cmp20, label %if.then21, label %if.else

if.then21:                                        ; preds = %while.end
  %call22 = call i32 @skipPastMatch(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i64 0, i64 0))
  %call23 = call i32 @skipWhite(i32 %call22)
  store i32 %call23, i32* %c, align 4
  br label %if.end29

if.else:                                          ; preds = %while.end
  %17 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %kind24 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %17, i32 0, i32 0
  %18 = load i32, i32* %kind24, align 8
  %cmp25 = icmp eq i32 %18, 19
  br i1 %cmp25, label %if.then26, label %if.end28

if.then26:                                        ; preds = %if.else
  %19 = load %struct.sTokenInfo*, %struct.sTokenInfo** @currentContext, align 8
  %prototype27 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %19, i32 0, i32 9
  store i8 1, i8* %prototype27, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.else
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.then21
  %20 = load i32, i32* %c, align 4
  %cmp30 = icmp eq i32 %20, 35
  br i1 %cmp30, label %if.then31, label %if.end39

if.then31:                                        ; preds = %if.end29
  %call32 = call i32 @vGetc()
  %call33 = call i32 @skipWhite(i32 %call32)
  store i32 %call33, i32* %c, align 4
  %21 = load i32, i32* %c, align 4
  %cmp34 = icmp eq i32 %21, 40
  br i1 %cmp34, label %if.then35, label %if.end38

if.then35:                                        ; preds = %if.then31
  %call36 = call i32 @skipPastMatch(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0))
  %call37 = call i32 @skipWhite(i32 %call36)
  store i32 %call37, i32* %c, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then35, %if.then31
  br label %if.end39

if.end39:                                         ; preds = %if.end38, %if.end29
  %22 = load i32, i32* %c, align 4
  %call40 = call zeroext i1 @isIdentifierCharacter(i32 %22)
  br i1 %call40, label %if.then41, label %if.else43

if.then41:                                        ; preds = %if.end39
  %23 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %24 = load i32, i32* %c, align 4
  %call42 = call zeroext i1 @readIdentifier(%struct.sTokenInfo* %23, i32 %24)
  br label %if.end49

if.else43:                                        ; preds = %if.end39
  %25 = load i32, i32* %c, align 4
  call void @vUngetc(i32 %25)
  %26 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %kind44 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %26, i32 0, i32 0
  %27 = load i32, i32* %kind44, align 8
  %cmp45 = icmp eq i32 %27, -1
  br i1 %cmp45, label %if.then46, label %if.end48

if.then46:                                        ; preds = %if.else43
  %28 = load %struct.sTokenInfo*, %struct.sTokenInfo** @currentContext, align 8
  %prototype47 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %28, i32 0, i32 9
  store i8 1, i8* %prototype47, align 8
  br label %if.end48

if.end48:                                         ; preds = %if.then46, %if.else43
  br label %if.end49

if.end49:                                         ; preds = %if.end48, %if.then41
  %29 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %kind50 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %29, i32 0, i32 0
  store i32 20, i32* %kind50, align 8
  %30 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @createTag(%struct.sTokenInfo* %30)
  br label %return

return:                                           ; preds = %if.end49, %sw.bb8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @processEnum(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %c = alloca i32, align 4
  %typeQueue = alloca %struct.sTokenInfo*, align 8
  %type = alloca %struct.sTokenInfo*, align 8
  %content = alloca %struct.sTokenInfo*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  %call = call i32 @vGetc()
  %call1 = call i32 @skipWhite(i32 %call)
  store i32 %call1, i32* %c, align 4
  %0 = load i32, i32* %c, align 4
  %call2 = call zeroext i1 @isIdentifierCharacter(i32 %0)
  br i1 %call2, label %if.then, label %if.end17

if.then:                                          ; preds = %entry
  store %struct.sTokenInfo* null, %struct.sTokenInfo** %typeQueue, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then
  %call3 = call %struct.sTokenInfo* @newToken()
  store %struct.sTokenInfo* %call3, %struct.sTokenInfo** %type, align 8
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %type, align 8
  %2 = load i32, i32* %c, align 4
  %call4 = call zeroext i1 @readIdentifier(%struct.sTokenInfo* %1, i32 %2)
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %type, align 8
  call void @updateKind(%struct.sTokenInfo* %3)
  %4 = load %struct.sTokenInfo*, %struct.sTokenInfo** %typeQueue, align 8
  %5 = load %struct.sTokenInfo*, %struct.sTokenInfo** %type, align 8
  %call5 = call %struct.sTokenInfo* @pushToken(%struct.sTokenInfo* %4, %struct.sTokenInfo* %5)
  store %struct.sTokenInfo* %call5, %struct.sTokenInfo** %typeQueue, align 8
  %6 = load %struct.sTokenInfo*, %struct.sTokenInfo** %type, align 8
  %name = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %6, i32 0, i32 1
  %7 = load %struct.sVString*, %struct.sVString** %name, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %7, i32 0, i32 2
  %8 = load i8*, i8** %buffer, align 8
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.42, i64 0, i64 0), i8* %8)
  %call6 = call i32 @vGetc()
  %call7 = call i32 @skipWhite(i32 %call6)
  store i32 %call7, i32* %c, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %9 = load i32, i32* %c, align 4
  %call8 = call zeroext i1 @isIdentifierCharacter(i32 %9)
  br i1 %call8, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %10 = load %struct.sTokenInfo*, %struct.sTokenInfo** %type, align 8
  %kind = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %10, i32 0, i32 0
  %11 = load i32, i32* %kind, align 8
  %cmp = icmp eq i32 %11, -1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.end
  %12 = load %struct.sTokenInfo*, %struct.sTokenInfo** %typeQueue, align 8
  %scope = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %12, i32 0, i32 4
  %13 = load %struct.sTokenInfo*, %struct.sTokenInfo** %scope, align 8
  %cmp9 = icmp eq %struct.sTokenInfo* %13, null
  br i1 %cmp9, label %if.then13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %14 = load %struct.sTokenInfo*, %struct.sTokenInfo** %typeQueue, align 8
  %scope10 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %14, i32 0, i32 4
  %15 = load %struct.sTokenInfo*, %struct.sTokenInfo** %scope10, align 8
  %kind11 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %15, i32 0, i32 0
  %16 = load i32, i32* %kind11, align 8
  %cmp12 = icmp ne i32 %16, -1
  br i1 %cmp12, label %if.then13, label %if.end

if.then13:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %17 = load %struct.sTokenInfo*, %struct.sTokenInfo** %type, align 8
  %name14 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %17, i32 0, i32 1
  %18 = load %struct.sVString*, %struct.sVString** %name14, align 8
  %buffer15 = getelementptr inbounds %struct.sVString, %struct.sVString* %18, i32 0, i32 2
  %19 = load i8*, i8** %buffer15, align 8
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.43, i64 0, i64 0), i8* %19)
  %20 = load %struct.sTokenInfo*, %struct.sTokenInfo** %type, align 8
  %kind16 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %20, i32 0, i32 0
  store i32 17, i32* %kind16, align 8
  %21 = load %struct.sTokenInfo*, %struct.sTokenInfo** %type, align 8
  call void @createTag(%struct.sTokenInfo* %21)
  %22 = load %struct.sTokenInfo*, %struct.sTokenInfo** %typeQueue, align 8
  call void @pruneTokens(%struct.sTokenInfo* %22)
  br label %return

if.end:                                           ; preds = %lor.lhs.false, %do.end
  %23 = load %struct.sTokenInfo*, %struct.sTokenInfo** %typeQueue, align 8
  call void @pruneTokens(%struct.sTokenInfo* %23)
  br label %if.end17

if.end17:                                         ; preds = %if.end, %entry
  %24 = load i32, i32* %c, align 4
  %cmp18 = icmp eq i32 %24, 91
  br i1 %cmp18, label %if.then19, label %if.end22

if.then19:                                        ; preds = %if.end17
  %call20 = call i32 @skipPastMatch(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i64 0, i64 0))
  %call21 = call i32 @skipWhite(i32 %call20)
  store i32 %call21, i32* %c, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %if.end17
  %25 = load i32, i32* %c, align 4
  %cmp23 = icmp eq i32 %25, 123
  br i1 %cmp23, label %if.then24, label %if.end68

if.then24:                                        ; preds = %if.end22
  %call25 = call i32 @vGetc()
  %call26 = call i32 @skipWhite(i32 %call25)
  store i32 %call26, i32* %c, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end66, %if.then24
  %26 = load i32, i32* %c, align 4
  %call27 = call zeroext i1 @isIdentifierCharacter(i32 %26)
  br i1 %call27, label %while.body, label %while.end67

while.body:                                       ; preds = %while.cond
  %call28 = call %struct.sTokenInfo* @newToken()
  store %struct.sTokenInfo* %call28, %struct.sTokenInfo** %content, align 8
  %27 = load %struct.sTokenInfo*, %struct.sTokenInfo** %content, align 8
  %28 = load i32, i32* %c, align 4
  %call29 = call zeroext i1 @readIdentifier(%struct.sTokenInfo* %27, i32 %28)
  %29 = load %struct.sTokenInfo*, %struct.sTokenInfo** %content, align 8
  %kind30 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %29, i32 0, i32 0
  store i32 0, i32* %kind30, align 8
  %30 = load %struct.sTokenInfo*, %struct.sTokenInfo** @tagContents, align 8
  %31 = load %struct.sTokenInfo*, %struct.sTokenInfo** %content, align 8
  %call31 = call %struct.sTokenInfo* @pushToken(%struct.sTokenInfo* %30, %struct.sTokenInfo* %31)
  store %struct.sTokenInfo* %call31, %struct.sTokenInfo** @tagContents, align 8
  %32 = load %struct.sTokenInfo*, %struct.sTokenInfo** %content, align 8
  %name32 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %32, i32 0, i32 1
  %33 = load %struct.sVString*, %struct.sVString** %name32, align 8
  %buffer33 = getelementptr inbounds %struct.sVString, %struct.sVString* %33, i32 0, i32 2
  %34 = load i8*, i8** %buffer33, align 8
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.44, i64 0, i64 0), i8* %34)
  %call34 = call i32 @vGetc()
  %call35 = call i32 @skipWhite(i32 %call34)
  store i32 %call35, i32* %c, align 4
  %35 = load i32, i32* %c, align 4
  %cmp36 = icmp eq i32 %35, 91
  br i1 %cmp36, label %if.then37, label %if.end40

if.then37:                                        ; preds = %while.body
  %call38 = call i32 @skipPastMatch(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i64 0, i64 0))
  %call39 = call i32 @skipWhite(i32 %call38)
  store i32 %call39, i32* %c, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then37, %while.body
  %36 = load i32, i32* %c, align 4
  %cmp41 = icmp eq i32 %36, 61
  br i1 %cmp41, label %if.then42, label %if.end56

if.then42:                                        ; preds = %if.end40
  br label %while.cond43

while.cond43:                                     ; preds = %if.end55, %if.then42
  %37 = load i32, i32* %c, align 4
  %cmp44 = icmp ne i32 %37, 125
  br i1 %cmp44, label %land.lhs.true45, label %land.end

land.lhs.true45:                                  ; preds = %while.cond43
  %38 = load i32, i32* %c, align 4
  %cmp46 = icmp ne i32 %38, 44
  br i1 %cmp46, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true45
  %39 = load i32, i32* %c, align 4
  %cmp47 = icmp ne i32 %39, -1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true45, %while.cond43
  %40 = phi i1 [ false, %land.lhs.true45 ], [ false, %while.cond43 ], [ %cmp47, %land.rhs ]
  br i1 %40, label %while.body48, label %while.end

while.body48:                                     ; preds = %land.end
  %call49 = call i32 @vGetc()
  %call50 = call i32 @skipWhite(i32 %call49)
  store i32 %call50, i32* %c, align 4
  %41 = load i32, i32* %c, align 4
  %cmp51 = icmp eq i32 %41, 123
  br i1 %cmp51, label %if.then52, label %if.end55

if.then52:                                        ; preds = %while.body48
  %call53 = call i32 @skipPastMatch(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i64 0, i64 0))
  %call54 = call i32 @skipWhite(i32 %call53)
  store i32 %call54, i32* %c, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.then52, %while.body48
  br label %while.cond43

while.end:                                        ; preds = %land.end
  br label %if.end56

if.end56:                                         ; preds = %while.end, %if.end40
  %42 = load i32, i32* %c, align 4
  %cmp57 = icmp eq i32 %42, 44
  br i1 %cmp57, label %if.then58, label %if.end61

if.then58:                                        ; preds = %if.end56
  %call59 = call i32 @vGetc()
  %call60 = call i32 @skipWhite(i32 %call59)
  store i32 %call60, i32* %c, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.then58, %if.end56
  %43 = load i32, i32* %c, align 4
  %cmp62 = icmp eq i32 %43, 125
  br i1 %cmp62, label %if.then63, label %if.end66

if.then63:                                        ; preds = %if.end61
  %call64 = call i32 @vGetc()
  %call65 = call i32 @skipWhite(i32 %call64)
  store i32 %call65, i32* %c, align 4
  br label %while.end67

if.end66:                                         ; preds = %if.end61
  br label %while.cond

while.end67:                                      ; preds = %if.then63, %while.cond
  br label %if.end68

if.end68:                                         ; preds = %while.end67, %if.end22
  %44 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %name69 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %44, i32 0, i32 1
  %45 = load %struct.sVString*, %struct.sVString** %name69, align 8
  %buffer70 = getelementptr inbounds %struct.sVString, %struct.sVString* %45, i32 0, i32 2
  %46 = load i8*, i8** %buffer70, align 8
  %47 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %kind71 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %47, i32 0, i32 0
  %48 = load i32, i32* %kind71, align 8
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.45, i64 0, i64 0), i8* %46, i32 %48)
  %49 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %50 = load i32, i32* %c, align 4
  call void @tagNameList(%struct.sTokenInfo* %49, i32 %50)
  br label %return

return:                                           ; preds = %if.end68, %if.then13
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @processClass(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %c = alloca i32, align 4
  %extra = alloca %struct.sTokenInfo*, align 8
  %parameters = alloca %struct.sTokenInfo*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  store %struct.sTokenInfo* null, %struct.sTokenInfo** %parameters, align 8
  %call = call i32 @vGetc()
  %call1 = call i32 @skipWhite(i32 %call)
  store i32 %call1, i32* %c, align 4
  %0 = load i32, i32* %c, align 4
  %call2 = call zeroext i1 @isIdentifierCharacter(i32 %0)
  br i1 %call2, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %2 = load i32, i32* %c, align 4
  %call3 = call zeroext i1 @readIdentifier(%struct.sTokenInfo* %1, i32 %2)
  %call4 = call i32 @vGetc()
  %call5 = call i32 @skipWhite(i32 %call4)
  store i32 %call5, i32* %c, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %c, align 4
  %cmp = icmp eq i32 %3, 35
  br i1 %cmp, label %if.then6, label %if.end34

if.then6:                                         ; preds = %if.end
  %call7 = call i32 @vGetc()
  %call8 = call i32 @skipWhite(i32 %call7)
  store i32 %call8, i32* %c, align 4
  %4 = load i32, i32* %c, align 4
  %cmp9 = icmp eq i32 %4, 40
  br i1 %cmp9, label %if.then10, label %if.end33

if.then10:                                        ; preds = %if.then6
  %call11 = call %struct.sTokenInfo* @newToken()
  store %struct.sTokenInfo* %call11, %struct.sTokenInfo** %parameters, align 8
  br label %do.body

do.body:                                          ; preds = %land.end29, %if.then10
  %call12 = call i32 @vGetc()
  %call13 = call i32 @skipWhite(i32 %call12)
  store i32 %call13, i32* %c, align 4
  %5 = load %struct.sTokenInfo*, %struct.sTokenInfo** %parameters, align 8
  %6 = load i32, i32* %c, align 4
  %call14 = call zeroext i1 @readIdentifier(%struct.sTokenInfo* %5, i32 %6)
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %parameters, align 8
  call void @updateKind(%struct.sTokenInfo* %7)
  %8 = load %struct.sTokenInfo*, %struct.sTokenInfo** %parameters, align 8
  %name = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %8, i32 0, i32 1
  %9 = load %struct.sVString*, %struct.sVString** %name, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %9, i32 0, i32 2
  %10 = load i8*, i8** %buffer, align 8
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.46, i64 0, i64 0), i8* %10)
  %11 = load %struct.sTokenInfo*, %struct.sTokenInfo** %parameters, align 8
  %kind = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %11, i32 0, i32 0
  %12 = load i32, i32* %kind, align 8
  %cmp15 = icmp eq i32 %12, -1
  br i1 %cmp15, label %if.then16, label %if.end25

if.then16:                                        ; preds = %do.body
  %13 = load %struct.sTokenInfo*, %struct.sTokenInfo** %parameters, align 8
  %kind17 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %13, i32 0, i32 0
  store i32 0, i32* %kind17, align 8
  %14 = load %struct.sTokenInfo*, %struct.sTokenInfo** %parameters, align 8
  %call18 = call %struct.sTokenInfo* @newToken()
  %call19 = call %struct.sTokenInfo* @pushToken(%struct.sTokenInfo* %14, %struct.sTokenInfo* %call18)
  store %struct.sTokenInfo* %call19, %struct.sTokenInfo** %parameters, align 8
  %call20 = call i32 @vGetc()
  store i32 %call20, i32* %c, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then16
  %15 = load i32, i32* %c, align 4
  %cmp21 = icmp ne i32 %15, 44
  br i1 %cmp21, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %16 = load i32, i32* %c, align 4
  %cmp22 = icmp ne i32 %16, 41
  br i1 %cmp22, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %17 = load i32, i32* %c, align 4
  %cmp23 = icmp ne i32 %17, -1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %18 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp23, %land.rhs ]
  br i1 %18, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %call24 = call i32 @vGetc()
  store i32 %call24, i32* %c, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %if.end25

if.end25:                                         ; preds = %while.end, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end25
  %19 = load i32, i32* %c, align 4
  %cmp26 = icmp ne i32 %19, 41
  br i1 %cmp26, label %land.rhs27, label %land.end29

land.rhs27:                                       ; preds = %do.cond
  %20 = load i32, i32* %c, align 4
  %cmp28 = icmp ne i32 %20, -1
  br label %land.end29

land.end29:                                       ; preds = %land.rhs27, %do.cond
  %21 = phi i1 [ false, %do.cond ], [ %cmp28, %land.rhs27 ]
  br i1 %21, label %do.body, label %do.end

do.end:                                           ; preds = %land.end29
  %call30 = call i32 @vGetc()
  %call31 = call i32 @skipWhite(i32 %call30)
  store i32 %call31, i32* %c, align 4
  %22 = load %struct.sTokenInfo*, %struct.sTokenInfo** %parameters, align 8
  %call32 = call %struct.sTokenInfo* @popToken(%struct.sTokenInfo* %22)
  store %struct.sTokenInfo* %call32, %struct.sTokenInfo** %parameters, align 8
  br label %if.end33

if.end33:                                         ; preds = %do.end, %if.then6
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.end
  %23 = load i32, i32* %c, align 4
  %call35 = call zeroext i1 @isIdentifierCharacter(i32 %23)
  br i1 %call35, label %if.then36, label %if.end51

if.then36:                                        ; preds = %if.end34
  %call37 = call %struct.sTokenInfo* @newToken()
  store %struct.sTokenInfo* %call37, %struct.sTokenInfo** %extra, align 8
  %24 = load %struct.sTokenInfo*, %struct.sTokenInfo** %extra, align 8
  %25 = load i32, i32* %c, align 4
  %call38 = call zeroext i1 @readIdentifier(%struct.sTokenInfo* %24, i32 %25)
  %call39 = call i32 @vGetc()
  %call40 = call i32 @skipWhite(i32 %call39)
  store i32 %call40, i32* %c, align 4
  %26 = load %struct.sTokenInfo*, %struct.sTokenInfo** %extra, align 8
  %name41 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %26, i32 0, i32 1
  %27 = load %struct.sVString*, %struct.sVString** %name41, align 8
  %buffer42 = getelementptr inbounds %struct.sVString, %struct.sVString* %27, i32 0, i32 2
  %28 = load i8*, i8** %buffer42, align 8
  %call43 = call i32 @strcmp(i8* %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.47, i64 0, i64 0))
  %cmp44 = icmp eq i32 %call43, 0
  br i1 %cmp44, label %if.then45, label %if.end50

if.then45:                                        ; preds = %if.then36
  %29 = load %struct.sTokenInfo*, %struct.sTokenInfo** %extra, align 8
  %30 = load i32, i32* %c, align 4
  %call46 = call zeroext i1 @readIdentifier(%struct.sTokenInfo* %29, i32 %30)
  %31 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %inheritance = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %31, i32 0, i32 8
  %32 = load %struct.sVString*, %struct.sVString** %inheritance, align 8
  %33 = load %struct.sTokenInfo*, %struct.sTokenInfo** %extra, align 8
  %name47 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %33, i32 0, i32 1
  %34 = load %struct.sVString*, %struct.sVString** %name47, align 8
  call void @vStringCopy(%struct.sVString* %32, %struct.sVString* %34)
  %35 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %inheritance48 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %35, i32 0, i32 8
  %36 = load %struct.sVString*, %struct.sVString** %inheritance48, align 8
  %buffer49 = getelementptr inbounds %struct.sVString, %struct.sVString* %36, i32 0, i32 2
  %37 = load i8*, i8** %buffer49, align 8
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.48, i64 0, i64 0), i8* %37)
  br label %if.end50

if.end50:                                         ; preds = %if.then45, %if.then36
  %38 = load %struct.sTokenInfo*, %struct.sTokenInfo** %extra, align 8
  call void @deleteToken(%struct.sTokenInfo* %38)
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %if.end34
  %39 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @createTag(%struct.sTokenInfo* %39)
  br label %while.cond52

while.cond52:                                     ; preds = %while.body53, %if.end51
  %40 = load %struct.sTokenInfo*, %struct.sTokenInfo** %parameters, align 8
  %tobool = icmp ne %struct.sTokenInfo* %40, null
  br i1 %tobool, label %while.body53, label %while.end55

while.body53:                                     ; preds = %while.cond52
  %41 = load %struct.sTokenInfo*, %struct.sTokenInfo** %parameters, align 8
  call void @createTag(%struct.sTokenInfo* %41)
  %42 = load %struct.sTokenInfo*, %struct.sTokenInfo** %parameters, align 8
  %call54 = call %struct.sTokenInfo* @popToken(%struct.sTokenInfo* %42)
  store %struct.sTokenInfo* %call54, %struct.sTokenInfo** %parameters, align 8
  br label %while.cond52

while.end55:                                      ; preds = %while.cond52
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal signext i16 @isPrototype(%struct.sTokenInfo* %token) #0 {
entry:
  %retval = alloca i16, align 2
  %token.addr = alloca %struct.sTokenInfo*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %name = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 1
  %1 = load %struct.sVString*, %struct.sVString** %name, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %1, i32 0, i32 2
  %2 = load i8*, i8** %buffer, align 8
  %call = call i32 @strcmp(i8* %2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i64 0, i64 0))
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %name1 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %3, i32 0, i32 1
  %4 = load %struct.sVString*, %struct.sVString** %name1, align 8
  %buffer2 = getelementptr inbounds %struct.sVString, %struct.sVString* %4, i32 0, i32 2
  %5 = load i8*, i8** %buffer2, align 8
  %call3 = call i32 @strcmp(i8* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.50, i64 0, i64 0))
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i16 1, i16* %retval, align 2
  br label %return

if.else:                                          ; preds = %lor.lhs.false
  store i16 0, i16* %retval, align 2
  br label %return

return:                                           ; preds = %if.else, %if.then
  %6 = load i16, i16* %retval, align 2
  ret i16 %6
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal signext i16 @isVariable(%struct.sTokenInfo* %token) #0 {
entry:
  %retval = alloca i16, align 2
  %token.addr = alloca %struct.sTokenInfo*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %kind = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 0
  %1 = load i32, i32* %kind, align 8
  switch i32 %1, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 4, label %sw.bb
    i32 5, label %sw.bb
    i32 6, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry
  store i16 1, i16* %retval, align 2
  br label %return

sw.default:                                       ; preds = %entry
  store i16 0, i16* %retval, align 2
  br label %return

return:                                           ; preds = %sw.default, %sw.bb
  %2 = load i16, i16* %retval, align 2
  ret i16 %2
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @tagNameList(%struct.sTokenInfo* %token, i32 %c) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %c.addr = alloca i32, align 4
  %localKind = alloca i32, align 4
  %repeat = alloca i8, align 1
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %cmp = icmp eq i32 %0, 40
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 @skipPastMatch(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0))
  store i32 %call, i32* %c.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, i32* %c.addr, align 4
  %call1 = call i32 @skipWhite(i32 %1)
  store i32 %call1, i32* %c.addr, align 4
  %2 = load i32, i32* %c.addr, align 4
  %cmp2 = icmp eq i32 %2, 91
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %call4 = call i32 @skipPastMatch(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i64 0, i64 0))
  store i32 %call4, i32* %c.addr, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end
  %3 = load i32, i32* %c.addr, align 4
  %call6 = call i32 @skipWhite(i32 %3)
  store i32 %call6, i32* %c.addr, align 4
  %4 = load i32, i32* %c.addr, align 4
  %cmp7 = icmp eq i32 %4, 35
  br i1 %cmp7, label %if.then8, label %if.end14

if.then8:                                         ; preds = %if.end5
  %call9 = call i32 @vGetc()
  store i32 %call9, i32* %c.addr, align 4
  %5 = load i32, i32* %c.addr, align 4
  %cmp10 = icmp eq i32 %5, 40
  br i1 %cmp10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.then8
  %call12 = call i32 @skipPastMatch(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0))
  store i32 %call12, i32* %c.addr, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.then8
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.end5
  %6 = load i32, i32* %c.addr, align 4
  %call15 = call i32 @skipWhite(i32 %6)
  store i32 %call15, i32* %c.addr, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond73, %if.end14
  store i8 0, i8* %repeat, align 1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body
  %7 = load i32, i32* %c.addr, align 4
  %cmp16 = icmp eq i32 %7, 96
  br i1 %cmp16, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %8 = load i32, i32* %c.addr, align 4
  %cmp17 = icmp ne i32 %8, -1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %9 = phi i1 [ false, %while.cond ], [ %cmp17, %land.rhs ]
  br i1 %9, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %10 = load i32, i32* %c.addr, align 4
  %call18 = call i32 @skipMacro(i32 %10)
  store i32 %call18, i32* %c.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %11 = load i32, i32* %c.addr, align 4
  %call19 = call zeroext i1 @isIdentifierCharacter(i32 %11)
  br i1 %call19, label %if.then20, label %if.else31

if.then20:                                        ; preds = %while.end
  %12 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %13 = load i32, i32* %c.addr, align 4
  %call21 = call zeroext i1 @readIdentifier(%struct.sTokenInfo* %12, i32 %13)
  %14 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %call22 = call i32 @getKindForToken(%struct.sTokenInfo* %14)
  store i32 %call22, i32* %localKind, align 4
  %15 = load i32, i32* %localKind, align 4
  %cmp23 = icmp eq i32 %15, -1
  br i1 %cmp23, label %if.then24, label %if.else

if.then24:                                        ; preds = %if.then20
  %16 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @createTag(%struct.sTokenInfo* %16)
  br label %if.end30

if.else:                                          ; preds = %if.then20
  %17 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %kind = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %17, i32 0, i32 0
  %18 = load i32, i32* %kind, align 8
  %cmp25 = icmp ne i32 %18, 5
  br i1 %cmp25, label %land.lhs.true, label %if.end29

land.lhs.true:                                    ; preds = %if.else
  %19 = load i32, i32* %localKind, align 4
  %cmp26 = icmp ne i32 %19, -2
  br i1 %cmp26, label %if.then27, label %if.end29

if.then27:                                        ; preds = %land.lhs.true
  %20 = load i32, i32* %localKind, align 4
  %21 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %kind28 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %21, i32 0, i32 0
  store i32 %20, i32* %kind28, align 8
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %land.lhs.true, %if.else
  store i8 1, i8* %repeat, align 1
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.then24
  br label %if.end32

if.else31:                                        ; preds = %while.end
  br label %do.end74

if.end32:                                         ; preds = %if.end30
  %call33 = call i32 @vGetc()
  %call34 = call i32 @skipWhite(i32 %call33)
  store i32 %call34, i32* %c.addr, align 4
  %22 = load i32, i32* %c.addr, align 4
  %cmp35 = icmp eq i32 %22, 91
  br i1 %cmp35, label %if.then36, label %if.end38

if.then36:                                        ; preds = %if.end32
  %call37 = call i32 @skipPastMatch(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i64 0, i64 0))
  store i32 %call37, i32* %c.addr, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %if.end32
  %23 = load i32, i32* %c.addr, align 4
  %call39 = call i32 @skipWhite(i32 %23)
  store i32 %call39, i32* %c.addr, align 4
  %24 = load i32, i32* %c.addr, align 4
  %cmp40 = icmp eq i32 %24, 61
  br i1 %cmp40, label %if.then41, label %if.end67

if.then41:                                        ; preds = %if.end38
  %call42 = call i32 @vGetc()
  %call43 = call i32 @skipWhite(i32 %call42)
  store i32 %call43, i32* %c.addr, align 4
  %25 = load i32, i32* %c.addr, align 4
  %cmp44 = icmp eq i32 %25, 39
  br i1 %cmp44, label %if.then45, label %if.end51

if.then45:                                        ; preds = %if.then41
  %call46 = call i32 @vGetc()
  %call47 = call i32 @skipWhite(i32 %call46)
  store i32 %call47, i32* %c.addr, align 4
  %26 = load i32, i32* %c.addr, align 4
  %cmp48 = icmp ne i32 %26, 123
  br i1 %cmp48, label %if.then49, label %if.end50

if.then49:                                        ; preds = %if.then45
  %27 = load i32, i32* %c.addr, align 4
  call void @vUngetc(i32 %27)
  br label %if.end50

if.end50:                                         ; preds = %if.then49, %if.then45
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %if.then41
  %28 = load i32, i32* %c.addr, align 4
  %cmp52 = icmp eq i32 %28, 123
  br i1 %cmp52, label %if.then53, label %if.else55

if.then53:                                        ; preds = %if.end51
  %call54 = call i32 @skipPastMatch(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i64 0, i64 0))
  br label %if.end66

if.else55:                                        ; preds = %if.end51
  br label %do.body56

do.body56:                                        ; preds = %land.end65, %if.else55
  %call57 = call i32 @vGetc()
  store i32 %call57, i32* %c.addr, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body56
  %29 = load i32, i32* %c.addr, align 4
  %cmp58 = icmp ne i32 %29, -1
  br i1 %cmp58, label %land.lhs.true59, label %land.end65

land.lhs.true59:                                  ; preds = %do.cond
  %30 = load i32, i32* %c.addr, align 4
  %cmp60 = icmp ne i32 %30, 44
  br i1 %cmp60, label %land.lhs.true61, label %land.end65

land.lhs.true61:                                  ; preds = %land.lhs.true59
  %31 = load i32, i32* %c.addr, align 4
  %cmp62 = icmp ne i32 %31, 59
  br i1 %cmp62, label %land.rhs63, label %land.end65

land.rhs63:                                       ; preds = %land.lhs.true61
  %32 = load i32, i32* %c.addr, align 4
  %cmp64 = icmp ne i32 %32, 41
  br label %land.end65

land.end65:                                       ; preds = %land.rhs63, %land.lhs.true61, %land.lhs.true59, %do.cond
  %33 = phi i1 [ false, %land.lhs.true61 ], [ false, %land.lhs.true59 ], [ false, %do.cond ], [ %cmp64, %land.rhs63 ]
  br i1 %33, label %do.body56, label %do.end

do.end:                                           ; preds = %land.end65
  br label %if.end66

if.end66:                                         ; preds = %do.end, %if.then53
  br label %if.end67

if.end67:                                         ; preds = %if.end66, %if.end38
  %34 = load i32, i32* %c.addr, align 4
  %cmp68 = icmp eq i32 %34, 44
  br i1 %cmp68, label %if.then69, label %if.end72

if.then69:                                        ; preds = %if.end67
  %call70 = call i32 @vGetc()
  %call71 = call i32 @skipWhite(i32 %call70)
  store i32 %call71, i32* %c.addr, align 4
  store i8 1, i8* %repeat, align 1
  br label %if.end72

if.end72:                                         ; preds = %if.then69, %if.end67
  br label %do.cond73

do.cond73:                                        ; preds = %if.end72
  %35 = load i8, i8* %repeat, align 1
  %tobool = trunc i8 %35 to i1
  br i1 %tobool, label %do.body, label %do.end74

do.end74:                                         ; preds = %do.cond73, %if.else31
  %36 = load i32, i32* %c.addr, align 4
  call void @vUngetc(i32 %36)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal signext i16 @hasSimplePortList(%struct.sTokenInfo* %token) #0 {
entry:
  %retval = alloca i16, align 2
  %token.addr = alloca %struct.sTokenInfo*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %kind = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 0
  %1 = load i32, i32* %kind, align 8
  switch i32 %1, label %sw.default [
    i32 7, label %sw.bb
    i32 2, label %sw.bb
    i32 10, label %sw.bb
    i32 13, label %sw.bb
    i32 16, label %sw.bb
    i32 18, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry, %entry
  store i16 1, i16* %retval, align 2
  br label %return

sw.default:                                       ; preds = %entry
  store i16 0, i16* %retval, align 2
  br label %return

return:                                           ; preds = %sw.default, %sw.bb
  %2 = load i16, i16* %retval, align 2
  ret i16 %2
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @processPortList(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  %token = alloca %struct.sTokenInfo*, align 8
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %call = call i32 @skipWhite(i32 %0)
  store i32 %call, i32* %c.addr, align 4
  %cmp = icmp eq i32 %call, 40
  br i1 %cmp, label %if.then, label %if.else61

if.then:                                          ; preds = %entry
  %call1 = call %struct.sTokenInfo* @newToken()
  store %struct.sTokenInfo* %call1, %struct.sTokenInfo** %token, align 8
  %call2 = call i32 @vGetc()
  %call3 = call i32 @skipWhite(i32 %call2)
  store i32 %call3, i32* %c.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end56, %if.then
  %1 = load i32, i32* %c.addr, align 4
  %cmp4 = icmp ne i32 %1, 59
  br i1 %cmp4, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %2 = load i32, i32* %c.addr, align 4
  %cmp5 = icmp ne i32 %2, -1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %3 = phi i1 [ false, %while.cond ], [ %cmp5, %land.rhs ]
  br i1 %3, label %while.body, label %while.end57

while.body:                                       ; preds = %land.end
  %4 = load i32, i32* %c.addr, align 4
  %cmp6 = icmp eq i32 %4, 91
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %while.body
  %call8 = call i32 @skipPastMatch(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i64 0, i64 0))
  store i32 %call8, i32* %c.addr, align 4
  br label %if.end56

if.else:                                          ; preds = %while.body
  %5 = load i32, i32* %c.addr, align 4
  %cmp9 = icmp eq i32 %5, 40
  br i1 %cmp9, label %if.then10, label %if.else12

if.then10:                                        ; preds = %if.else
  %call11 = call i32 @skipPastMatch(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0))
  store i32 %call11, i32* %c.addr, align 4
  br label %if.end55

if.else12:                                        ; preds = %if.else
  %6 = load i32, i32* %c.addr, align 4
  %cmp13 = icmp eq i32 %6, 123
  br i1 %cmp13, label %if.then14, label %if.else16

if.then14:                                        ; preds = %if.else12
  %call15 = call i32 @skipPastMatch(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i64 0, i64 0))
  store i32 %call15, i32* %c.addr, align 4
  br label %if.end54

if.else16:                                        ; preds = %if.else12
  %7 = load i32, i32* %c.addr, align 4
  %cmp17 = icmp eq i32 %7, 96
  br i1 %cmp17, label %if.then18, label %if.else20

if.then18:                                        ; preds = %if.else16
  %8 = load i32, i32* %c.addr, align 4
  %call19 = call i32 @skipMacro(i32 %8)
  store i32 %call19, i32* %c.addr, align 4
  br label %if.end53

if.else20:                                        ; preds = %if.else16
  %9 = load i32, i32* %c.addr, align 4
  %cmp21 = icmp eq i32 %9, 61
  br i1 %cmp21, label %if.then22, label %if.else32

if.then22:                                        ; preds = %if.else20
  br label %while.cond23

while.cond23:                                     ; preds = %while.body29, %if.then22
  %10 = load i32, i32* %c.addr, align 4
  %cmp24 = icmp ne i32 %10, 44
  br i1 %cmp24, label %land.lhs.true, label %land.end28

land.lhs.true:                                    ; preds = %while.cond23
  %11 = load i32, i32* %c.addr, align 4
  %cmp25 = icmp ne i32 %11, 41
  br i1 %cmp25, label %land.rhs26, label %land.end28

land.rhs26:                                       ; preds = %land.lhs.true
  %12 = load i32, i32* %c.addr, align 4
  %cmp27 = icmp ne i32 %12, -1
  br label %land.end28

land.end28:                                       ; preds = %land.rhs26, %land.lhs.true, %while.cond23
  %13 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond23 ], [ %cmp27, %land.rhs26 ]
  br i1 %13, label %while.body29, label %while.end

while.body29:                                     ; preds = %land.end28
  %call30 = call i32 @vGetc()
  %call31 = call i32 @skipWhite(i32 %call30)
  store i32 %call31, i32* %c.addr, align 4
  br label %while.cond23

while.end:                                        ; preds = %land.end28
  br label %if.end52

if.else32:                                        ; preds = %if.else20
  %14 = load i32, i32* %c.addr, align 4
  %call33 = call zeroext i1 @isIdentifierCharacter(i32 %14)
  br i1 %call33, label %if.then34, label %if.else48

if.then34:                                        ; preds = %if.else32
  %15 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %16 = load i32, i32* %c.addr, align 4
  %call35 = call zeroext i1 @readIdentifier(%struct.sTokenInfo* %15, i32 %16)
  %17 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  call void @updateKind(%struct.sTokenInfo* %17)
  %18 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %kind = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %18, i32 0, i32 0
  %19 = load i32, i32* %kind, align 8
  %cmp36 = icmp eq i32 %19, -1
  br i1 %cmp36, label %if.then37, label %if.else44

if.then37:                                        ; preds = %if.then34
  %call38 = call i32 @vGetc()
  %call39 = call i32 @skipWhite(i32 %call38)
  store i32 %call39, i32* %c.addr, align 4
  %20 = load i32, i32* %c.addr, align 4
  %call40 = call zeroext i1 @isIdentifierCharacter(i32 %20)
  br i1 %call40, label %lor.lhs.false, label %if.then42

lor.lhs.false:                                    ; preds = %if.then37
  %21 = load i32, i32* %c.addr, align 4
  %cmp41 = icmp eq i32 %21, 96
  br i1 %cmp41, label %if.then42, label %if.end

if.then42:                                        ; preds = %lor.lhs.false, %if.then37
  %22 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %name = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %22, i32 0, i32 1
  %23 = load %struct.sVString*, %struct.sVString** %name, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %23, i32 0, i32 2
  %24 = load i8*, i8** %buffer, align 8
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.56, i64 0, i64 0), i8* %24)
  %25 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %kind43 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %25, i32 0, i32 0
  store i32 5, i32* %kind43, align 8
  %26 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  call void @createTag(%struct.sTokenInfo* %26)
  br label %if.end

if.end:                                           ; preds = %if.then42, %lor.lhs.false
  br label %if.end47

if.else44:                                        ; preds = %if.then34
  %call45 = call i32 @vGetc()
  %call46 = call i32 @skipWhite(i32 %call45)
  store i32 %call46, i32* %c.addr, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.else44, %if.end
  br label %if.end51

if.else48:                                        ; preds = %if.else32
  %call49 = call i32 @vGetc()
  %call50 = call i32 @skipWhite(i32 %call49)
  store i32 %call50, i32* %c.addr, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.else48, %if.end47
  br label %if.end52

if.end52:                                         ; preds = %if.end51, %while.end
  br label %if.end53

if.end53:                                         ; preds = %if.end52, %if.then18
  br label %if.end54

if.end54:                                         ; preds = %if.end53, %if.then14
  br label %if.end55

if.end55:                                         ; preds = %if.end54, %if.then10
  br label %if.end56

if.end56:                                         ; preds = %if.end55, %if.then7
  br label %while.cond

while.end57:                                      ; preds = %land.end
  %27 = load i32, i32* %c.addr, align 4
  %call58 = call zeroext i1 @isIdentifierCharacter(i32 %27)
  br i1 %call58, label %if.end60, label %if.then59

if.then59:                                        ; preds = %while.end57
  %28 = load i32, i32* %c.addr, align 4
  call void @vUngetc(i32 %28)
  br label %if.end60

if.end60:                                         ; preds = %if.then59, %while.end57
  %29 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  call void @deleteToken(%struct.sTokenInfo* %29)
  br label %if.end65

if.else61:                                        ; preds = %entry
  %30 = load i32, i32* %c.addr, align 4
  %cmp62 = icmp ne i32 %30, -1
  br i1 %cmp62, label %if.then63, label %if.end64

if.then63:                                        ; preds = %if.else61
  %31 = load i32, i32* %c.addr, align 4
  call void @vUngetc(i32 %31)
  br label %if.end64

if.end64:                                         ; preds = %if.then63, %if.else61
  br label %if.end65

if.end65:                                         ; preds = %if.end64, %if.end60
  ret void
}

declare %struct.sVString* @vStringNewInit(i8*) #1

declare i32 @strcmp(i8*, i8*) #1

declare void @vStringCatS(%struct.sVString*, i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @getNameForKind(i32 %kind) #0 {
entry:
  %retval = alloca i8*, align 8
  %kind.addr = alloca i32, align 4
  store i32 %kind, i32* %kind.addr, align 4
  %0 = load i32, i32* @Lang_systemverilog, align 4
  %call = call zeroext i1 @isInputLanguage(i32 %0)
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %kind.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [21 x %struct.sKindDefinition], [21 x %struct.sKindDefinition]* @SystemVerilogKinds, i64 0, i64 %idxprom
  %name = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %arrayidx, i32 0, i32 2
  %2 = load i8*, i8** %name, align 8
  store i8* %2, i8** %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %3 = load i32, i32* %kind.addr, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [9 x %struct.sKindDefinition], [9 x %struct.sKindDefinition]* @VerilogKinds, i64 0, i64 %idxprom1
  %name3 = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %arrayidx2, i32 0, i32 2
  %4 = load i8*, i8** %name3, align 8
  store i8* %4, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then
  %5 = load i8*, i8** %retval, align 8
  ret i8* %5
}

declare void @vStringDelete(%struct.sVString*) #1

declare zeroext i1 @isInputLanguage(i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal signext i8 @kindEnabled(i32 %kind) #0 {
entry:
  %retval = alloca i8, align 1
  %kind.addr = alloca i32, align 4
  store i32 %kind, i32* %kind.addr, align 4
  %0 = load i32, i32* @Lang_systemverilog, align 4
  %call = call zeroext i1 @isInputLanguage(i32 %0)
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %kind.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [21 x %struct.sKindDefinition], [21 x %struct.sKindDefinition]* @SystemVerilogKinds, i64 0, i64 %idxprom
  %enabled = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %arrayidx, i32 0, i32 0
  %2 = load i8, i8* %enabled, align 8
  %tobool = trunc i8 %2 to i1
  %conv = zext i1 %tobool to i8
  store i8 %conv, i8* %retval, align 1
  br label %return

if.else:                                          ; preds = %entry
  %3 = load i32, i32* %kind.addr, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [9 x %struct.sKindDefinition], [9 x %struct.sKindDefinition]* @VerilogKinds, i64 0, i64 %idxprom1
  %enabled3 = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %arrayidx2, i32 0, i32 0
  %4 = load i8, i8* %enabled3, align 8
  %tobool4 = trunc i8 %4 to i1
  %conv5 = zext i1 %tobool4 to i8
  store i8 %conv5, i8* %retval, align 1
  br label %return

return:                                           ; preds = %if.else, %if.then
  %5 = load i8, i8* %retval, align 1
  ret i8 %5
}

declare void @initTagEntry(%struct.sTagEntryInfo*, i8*, i32) #1

declare i32 @makeTagEntry(%struct.sTagEntryInfo*) #1

declare zeroext i1 @isXtagEnabled(i32) #1

declare void @markTagExtraBit(%struct.sTagEntryInfo*, i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal signext i16 @isContainer(%struct.sTokenInfo* %token) #0 {
entry:
  %retval = alloca i16, align 2
  %token.addr = alloca %struct.sTokenInfo*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %kind = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 0
  %1 = load i32, i32* %kind, align 8
  switch i32 %1, label %sw.default [
    i32 3, label %sw.bb
    i32 7, label %sw.bb
    i32 2, label %sw.bb
    i32 8, label %sw.bb
    i32 10, label %sw.bb
    i32 11, label %sw.bb
    i32 13, label %sw.bb
    i32 15, label %sw.bb
    i32 16, label %sw.bb
    i32 18, label %sw.bb
    i32 20, label %sw.bb
    i32 12, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  store i16 1, i16* %retval, align 2
  br label %return

sw.default:                                       ; preds = %entry
  store i16 0, i16* %retval, align 2
  br label %return

return:                                           ; preds = %sw.default, %sw.bb
  %2 = load i16, i16* %retval, align 2
  ret i16 %2
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @createContext(%struct.sTokenInfo* %scope) #0 {
entry:
  %scope.addr = alloca %struct.sTokenInfo*, align 8
  %contextName = alloca %struct.sVString*, align 8
  store %struct.sTokenInfo* %scope, %struct.sTokenInfo** %scope.addr, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %scope.addr, align 8
  %tobool = icmp ne %struct.sTokenInfo* %0, null
  br i1 %tobool, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  %call = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call, %struct.sVString** %contextName, align 8
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** @currentContext, align 8
  %kind = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %1, i32 0, i32 0
  %2 = load i32, i32* %kind, align 8
  %cmp = icmp ne i32 %2, -1
  br i1 %cmp, label %if.then1, label %if.end

if.then1:                                         ; preds = %if.then
  %3 = load %struct.sVString*, %struct.sVString** %contextName, align 8
  %4 = load %struct.sTokenInfo*, %struct.sTokenInfo** @currentContext, align 8
  %name = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %4, i32 0, i32 1
  %5 = load %struct.sVString*, %struct.sVString** %name, align 8
  call void @vStringCopy(%struct.sVString* %3, %struct.sVString* %5)
  %6 = load %struct.sVString*, %struct.sVString** %contextName, align 8
  call void @vStringPut(%struct.sVString* %6, i32 46)
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then
  %7 = load %struct.sVString*, %struct.sVString** %contextName, align 8
  %8 = load %struct.sTokenInfo*, %struct.sTokenInfo** %scope.addr, align 8
  %name2 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %8, i32 0, i32 1
  %9 = load %struct.sVString*, %struct.sVString** %name2, align 8
  call void @vStringCat(%struct.sVString* %7, %struct.sVString* %9)
  %10 = load %struct.sTokenInfo*, %struct.sTokenInfo** @currentContext, align 8
  %11 = load %struct.sTokenInfo*, %struct.sTokenInfo** %scope.addr, align 8
  %call3 = call %struct.sTokenInfo* @pushToken(%struct.sTokenInfo* %10, %struct.sTokenInfo* %11)
  store %struct.sTokenInfo* %call3, %struct.sTokenInfo** @currentContext, align 8
  %12 = load %struct.sTokenInfo*, %struct.sTokenInfo** @currentContext, align 8
  %name4 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %12, i32 0, i32 1
  %13 = load %struct.sVString*, %struct.sVString** %name4, align 8
  %14 = load %struct.sVString*, %struct.sVString** %contextName, align 8
  call void @vStringCopy(%struct.sVString* %13, %struct.sVString* %14)
  %15 = load %struct.sVString*, %struct.sVString** %contextName, align 8
  call void @vStringDelete(%struct.sVString* %15)
  %16 = load %struct.sTokenInfo*, %struct.sTokenInfo** @currentContext, align 8
  %name5 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %16, i32 0, i32 1
  %17 = load %struct.sVString*, %struct.sVString** %name5, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %17, i32 0, i32 2
  %18 = load i8*, i8** %buffer, align 8
  %19 = load %struct.sTokenInfo*, %struct.sTokenInfo** @currentContext, align 8
  %kind6 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %19, i32 0, i32 0
  %20 = load i32, i32* %kind6, align 8
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.34, i64 0, i64 0), i8* %18, i32 %20)
  br label %if.end7

if.end7:                                          ; preds = %if.end, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal signext i16 @isTempContext(%struct.sTokenInfo* %token) #0 {
entry:
  %retval = alloca i16, align 2
  %token.addr = alloca %struct.sTokenInfo*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %kind = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 0
  %1 = load i32, i32* %kind, align 8
  switch i32 %1, label %sw.default [
    i32 20, label %sw.bb
    i32 12, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry
  store i16 1, i16* %retval, align 2
  br label %return

sw.default:                                       ; preds = %entry
  store i16 0, i16* %retval, align 2
  br label %return

return:                                           ; preds = %sw.default, %sw.bb
  %2 = load i16, i16* %retval, align 2
  ret i16 %2
}

declare void @vStringCat(%struct.sVString*, %struct.sVString*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct.sTokenInfo* @pushToken(%struct.sTokenInfo* %token, %struct.sTokenInfo* %tokenPush) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %tokenPush.addr = alloca %struct.sTokenInfo*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  store %struct.sTokenInfo* %tokenPush, %struct.sTokenInfo** %tokenPush.addr, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %tokenPush.addr, align 8
  %scope = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %1, i32 0, i32 4
  store %struct.sTokenInfo* %0, %struct.sTokenInfo** %scope, align 8
  %2 = load %struct.sTokenInfo*, %struct.sTokenInfo** %tokenPush.addr, align 8
  ret %struct.sTokenInfo* %2
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @findBlockName(%struct.sTokenInfo* %token) #0 {
entry:
  %retval = alloca i1, align 1
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %c = alloca i32, align 4
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  %call = call i32 @vGetc()
  %call1 = call i32 @skipWhite(i32 %call)
  store i32 %call1, i32* %c, align 4
  %0 = load i32, i32* %c, align 4
  %cmp = icmp eq i32 %0, 58
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call2 = call i32 @vGetc()
  %call3 = call i32 @skipWhite(i32 %call2)
  store i32 %call3, i32* %c, align 4
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %2 = load i32, i32* %c, align 4
  %call4 = call zeroext i1 @readIdentifier(%struct.sTokenInfo* %1, i32 %2)
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %name = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %3, i32 0, i32 1
  %4 = load %struct.sVString*, %struct.sVString** %name, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %4, i32 0, i32 0
  %5 = load i64, i64* %length, align 8
  %cmp5 = icmp ugt i64 %5, 0
  store i1 %cmp5, i1* %retval, align 1
  br label %return

if.else:                                          ; preds = %entry
  %6 = load i32, i32* %c, align 4
  call void @vUngetc(i32 %6)
  br label %if.end

if.end:                                           ; preds = %if.else
  store i1 false, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i1, i1* %retval, align 1
  ret i1 %7
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @skipMacro(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  %token = alloca %struct.sTokenInfo*, align 8
  store i32 %c, i32* %c.addr, align 4
  %call = call %struct.sTokenInfo* @newToken()
  store %struct.sTokenInfo* %call, %struct.sTokenInfo** %token, align 8
  %0 = load i32, i32* %c.addr, align 4
  %cmp = icmp eq i32 %0, 96
  br i1 %cmp, label %if.then, label %if.end29

if.then:                                          ; preds = %entry
  %call1 = call i32 @vGetc()
  store i32 %call1, i32* %c.addr, align 4
  %call2 = call zeroext i1 @isIdentifierCharacter(i32 %call1)
  br i1 %call2, label %if.then3, label %if.end28

if.then3:                                         ; preds = %if.then
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %2 = load i32, i32* %c.addr, align 4
  %call4 = call zeroext i1 @readIdentifier(%struct.sTokenInfo* %1, i32 %2)
  %call5 = call i32 @vGetc()
  store i32 %call5, i32* %c.addr, align 4
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %name = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %3, i32 0, i32 1
  %4 = load %struct.sVString*, %struct.sVString** %name, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %4, i32 0, i32 2
  %5 = load i8*, i8** %buffer, align 8
  %call6 = call i32 @strcmp(i8* %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.51, i64 0, i64 0))
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %if.then17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then3
  %6 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %name8 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %6, i32 0, i32 1
  %7 = load %struct.sVString*, %struct.sVString** %name8, align 8
  %buffer9 = getelementptr inbounds %struct.sVString, %struct.sVString* %7, i32 0, i32 2
  %8 = load i8*, i8** %buffer9, align 8
  %call10 = call i32 @strcmp(i8* %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i64 0, i64 0))
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %if.then17, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false
  %9 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %name13 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %9, i32 0, i32 1
  %10 = load %struct.sVString*, %struct.sVString** %name13, align 8
  %buffer14 = getelementptr inbounds %struct.sVString, %struct.sVString* %10, i32 0, i32 2
  %11 = load i8*, i8** %buffer14, align 8
  %call15 = call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.53, i64 0, i64 0))
  %cmp16 = icmp eq i32 %call15, 0
  br i1 %cmp16, label %if.then17, label %if.else

if.then17:                                        ; preds = %lor.lhs.false12, %lor.lhs.false, %if.then3
  %12 = load i32, i32* %c.addr, align 4
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.54, i64 0, i64 0), i32 %12)
  %13 = load i32, i32* %c.addr, align 4
  %call18 = call i32 @skipWhite(i32 %13)
  store i32 %call18, i32* %c.addr, align 4
  %14 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %15 = load i32, i32* %c.addr, align 4
  %call19 = call zeroext i1 @readIdentifier(%struct.sTokenInfo* %14, i32 %15)
  %call20 = call i32 @vGetc()
  store i32 %call20, i32* %c.addr, align 4
  %16 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %name21 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %16, i32 0, i32 1
  %17 = load %struct.sVString*, %struct.sVString** %name21, align 8
  %buffer22 = getelementptr inbounds %struct.sVString, %struct.sVString* %17, i32 0, i32 2
  %18 = load i8*, i8** %buffer22, align 8
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.55, i64 0, i64 0), i8* %18)
  br label %if.end27

if.else:                                          ; preds = %lor.lhs.false12
  %19 = load i32, i32* %c.addr, align 4
  %call23 = call i32 @skipWhite(i32 %19)
  store i32 %call23, i32* %c.addr, align 4
  %20 = load i32, i32* %c.addr, align 4
  %cmp24 = icmp eq i32 %20, 40
  br i1 %cmp24, label %if.then25, label %if.end

if.then25:                                        ; preds = %if.else
  %call26 = call i32 @skipPastMatch(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0))
  store i32 %call26, i32* %c.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then25, %if.else
  br label %if.end27

if.end27:                                         ; preds = %if.end, %if.then17
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.then
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %entry
  %21 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  call void @deleteToken(%struct.sTokenInfo* %21)
  %22 = load i32, i32* %c.addr, align 4
  ret i32 %22
}

declare void @eFree(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @buildKeywordHash(i32 %language, i32 %idx) #0 {
entry:
  %language.addr = alloca i32, align 4
  %idx.addr = alloca i32, align 4
  %i = alloca i64, align 8
  %count = alloca i64, align 8
  %p = alloca %struct.keywordAssoc*, align 8
  store i32 %language, i32* %language.addr, align 4
  store i32 %idx, i32* %idx.addr, align 4
  store i64 64, i64* %count, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %cmp = icmp ult i64 %0, 64
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds [64 x %struct.keywordAssoc], [64 x %struct.keywordAssoc]* @KeywordTable, i64 0, i64 %1
  store %struct.keywordAssoc* %arrayidx, %struct.keywordAssoc** %p, align 8
  %2 = load %struct.keywordAssoc*, %struct.keywordAssoc** %p, align 8
  %isValid = getelementptr inbounds %struct.keywordAssoc, %struct.keywordAssoc* %2, i32 0, i32 2
  %3 = load i32, i32* %idx.addr, align 4
  %idxprom = zext i32 %3 to i64
  %arrayidx1 = getelementptr inbounds [2 x i16], [2 x i16]* %isValid, i64 0, i64 %idxprom
  %4 = load i16, i16* %arrayidx1, align 2
  %tobool = icmp ne i16 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load %struct.keywordAssoc*, %struct.keywordAssoc** %p, align 8
  %keyword = getelementptr inbounds %struct.keywordAssoc, %struct.keywordAssoc* %5, i32 0, i32 0
  %6 = load i8*, i8** %keyword, align 8
  %7 = load i32, i32* %language.addr, align 4
  %8 = load %struct.keywordAssoc*, %struct.keywordAssoc** %p, align 8
  %kind = getelementptr inbounds %struct.keywordAssoc, %struct.keywordAssoc* %8, i32 0, i32 1
  %9 = load i32, i32* %kind, align 8
  call void @addKeyword(i8* %6, i32 %7, i32 %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i64, i64* %i, align 8
  %inc = add i64 %10, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @addKeyword(i8*, i32, i32) #1

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
